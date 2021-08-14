proc get_timestamp_value { inp_file_name inp_board_name inp_ident } {
	set done_ifile 0
	set line_idx 0
	set ifile [open "$inp_file_name" r]

	set _board ""
	set _timestamp ""
	set _ident ""
	set _found 0

	set _ret_timestamp "FFFFFFFF"

	while {$done_ifile == 0} {
		if { [eof $ifile] } {
			close $ifile
			set done_ifile 1
		} else {
			gets $ifile line
			if { [regexp {^([\w_-]+):([a-fA-F0-9]{8}):([\w_]{3}-[\w_]{3}-[\w_]{3})\s*$} $line match _board _timestamp _ident] } {
				#puts stdout "  GOT MATCH LINE --> BOARD : $_board TIME : $_timestamp IDENT : $_ident"
				if { $_ident == $inp_ident && $inp_board_name == $_board } {
					#puts stdout "   REQUESTED IDENT = $inp_ident FOUND!"
					#puts stdout "   GET TIMESTAMP FOR BOARD $_board FROM FILE : $_timestamp "
					set _ret_timestamp $_timestamp
					set _found 1
				}
			}
			set line_idx [expr $line_idx+1]
		}
	}

	if { $_found == 0 } {
		puts stdout "\[get_timestamp_value\] ERROR : REQUESTED IDENT = $inp_ident NOT FOUND!"
	}

	return $_ret_timestamp
}

	global env


proc add_xdc {} {
	global env
	#add xdc file
	read_xdc {./../xdc/AudioGen.xdc}
	read_xdc {./../xdc/hdmi_acr_ctrl.xdc}
	read_xdc {./../xdc/hdmi_example_vc707.xdc}
	read_xdc {./../xdc/VC707_rev_2.0.ucf.xdc}
}

proc add_sources {} {
	global env
	
	import_files -norecurse {./../src/verilog/checkTready.v}
	import_files -norecurse ./../src/imports
	source ./../src/exdes.tcl
	make_wrapper -files [get_files vivado_prj/stereovision.srcs/sources_1/bd/exdes/exdes.bd] -top
	add_files -norecurse vivado_prj/stereovision.srcs/sources_1/bd/exdes/hdl/exdes_wrapper.v
	update_compile_order -fileset sources_1

}



proc add_netlists {} {
	global env

}

proc initProc {} {
	set_param messaging.defaultLimit 100
	set_param sta.maxSourcesPerClock 128
	set_param general.maxThreads 4
}

proc parseTimingLogProc {path} {
	if {[catch {open $path} f]} {
		error "Cannot parse log $path: $f"
	}
	set data [read $f [file size $path]]
	close $f
	foreach line [split $data "\n"] {
		if {[string match "Timing constraints are not met." $line]} {
			write_checkpoint route_timing.dcp -force
			error $line
		}
	}
}

proc synthesisProc { {verilog 1} } {
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : vivsynthesisProc started!"
	initProc
	create_project stereovision vivado_prj -part xc7vx485tffg1761-2 -force 
	set_property top exdes_wrapper [get_property srcset [current_run]] 
	set_property design_mode RTL [current_fileset]
	set_property board_part xilinx.com:vc707:part0:1.4 [current_project]

	add_sources
	add_netlists
	

	update_ip_catalog
	set_property synth_checkpoint_mode Singular [get_files  vivado_prj/stereovision.srcs/sources_1/bd/exdes/exdes.bd]
	generate_target all [get_files  vivado_prj/stereovision.srcs/sources_1/bd/exdes/exdes.bd]
	export_ip_user_files -of_objects [get_files vivado_prj/stereovision.srcs/sources_1/bd/exdes/exdes.bd] -no_script -sync -force -quiet	
	create_ip_run [get_files -of_objects [get_fileset sources_1] vivado_prj/stereovision.srcs/sources_1/bd/exdes/exdes.bd]	
	launch_runs -jobs 4 exdes_synth_1
	wait_on_run exdes_synth_1


	open_rtl_design -part xc7vx485tffg1761-2

	if {[catch { synth_design   -no_iobuf -fanout_limit 50 } err ] } {
		write_checkpoint synthesis.dcp -force
		puts "ERROR : SYNTHESIS FAILED!"
		return 0;
	}

	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : vivsynthesisProc finished!"
}


proc optimizeProc { } {
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : optimizeProc started!"
	initProc
	add_xdc
	set_power_opt -cell_types none

	if {[catch { opt_design -directive Explore } err ] } {
		write_checkpoint optimize.dcp -force
		puts "ERROR : OPTIMIZE FAILED!"
		return 0;
	}

	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : optimizeProc finished!"
}

proc placeProc { } {
	initProc
	if {[catch { place_design -verbose } err ] } {
		write_checkpoint place.dcp -force
		puts "ERROR : PLACE FAILED!"
		return 0;
	}
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : placeProc finished!"
}


proc routeProc { {dontReadCheckpoint 0} } {
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : routeProc started!"
	initProc
	phys_opt_design -verbose

	if {[catch { route_design -directive Explore } err ] } {
		write_checkpoint route.dcp -force
		puts "ERROR : ROUTE FAILED!"
		return 0;
	}

	for {set i 0} {$i < 3} {incr i} {
		if { ( [get_property SLACK [get_timing_paths ]]  >= 0   ) & ( [get_property SLACK [get_timing_paths -hold ]]  >= 0   ) } {break}; #stop if timing is met
		if { ( [get_property SLACK [get_timing_paths ]]  < -0.5 ) & ( [get_property SLACK [get_timing_paths -hold ]]  < -0.5 ) } {break}; #stop if timing is met
		report_timing_summary -file report_timing_summary_iter_${i}.rpt
		write_checkpoint route_iter${i}.dcp -force
		puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : routeProc iter ${i}"
		if {[catch {
			place_design -post_place_opt
			phys_opt_design -directive Explore
			route_design -directive Explore -tns_cleanup
			phys_opt_design -directive AggressiveExplore
		} err ] } {
			write_checkpoint route_error_iter${i}.dcp -force
			puts "ERROR : ROUTE FAILED!"
			return 0;
		}
	}

	report_timing_summary -file report_timing_summary.rpt
	parseTimingLogProc "report_timing_summary.rpt"
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : routeProc finished!"
}

proc reportProc { } {
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : reportProc started!"
	initProc
	report_drc -file report_design_rules.rpt
	report_clocks -file report_design_clocks.rpt
	report_utilization -file report_utilization_summary.rpt
	report_utilization -file report_utilization_hierarchical.rpt -hierarchical -hierarchical_depth 32
	report_route_status -file report_route_status.rpt
	report_timing_summary -file report_timing_summary.rpt
	report_clock_utilization -file report_clock_utilization.rpt
	report_clock_interaction -file report_clock_interaction.rpt
	parseTimingLogProc "report_timing_summary.rpt"
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : reportProc finished!"
}

proc bitgenProc { } {
	global env
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : bitgenProc started!"
	initProc
	set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
	
	if {[catch {
		write_bitstream -bin_file -verbose -force  {./../bitfiles/stereovision.bit} 
	} err ] } {
		write_checkpoint bitgenProc.dcp -force
		puts "ERROR : BITGEN FAILED!"
		return 0;
	}

	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : bitgenProc finished!"
}

proc writeCheckpoint { } {
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : writeCheckpoint started!"
	initProc
	write_checkpoint stereovision_impl.dcp -force
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : writeCheckpoint finished!"
}

proc openCheckpoing { } {
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : openCheckpoing started!"
	initProc
	open_checkpoint stereovision_impl.dcp
	puts "\[INFO\] [clock format [clock seconds] -format {%d-%m-%Y %H:%M:%S}] : openCheckpoing finished!"
}

proc fullProc  { {verilog 1 } } {
	synthesisProc $verilog
	optimizeProc
	placeProc
	routeProc
	bitgenProc
	writeCheckpoint
}

if {$argc > 0} {
	set verilog [lindex $argv 0]
	fullProc $verilog
}
