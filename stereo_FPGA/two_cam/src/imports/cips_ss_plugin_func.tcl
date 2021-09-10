
# Sourcing helper functions
# set srcFile [get_files ss_plugin_util.tcl]
# source $srcFile

# source ./ss_plugin_util.tcl
source ${srcIpDir}/exdes/bd/framework/ss_plugin_util.tcl

# BELOW ARE ALL SD SPECIFIC FUNCTIONS

    # NOT APPLICABLE FOR EXDES. Just for HIP generation
    # proc to remap params, manipulate params and return post generation param [optional] list that required for data structures generation
    proc ss_param_assignment {varlist} {

        # fix and do not change
        variable ss_xgui_varlist
        set ss_xgui_varlist $varlist

        ############################## Developer define start here ############################

        # internal use variable
        variable var_c_placeholder
        variable var_debug_en
        variable var_exdes_topology

        # remapping the ss_xgui_varlist into usable variable within this proc
        set var_c_include_hdcp_1_4 [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_HDCP_1_4] + 1]]
        set var_c_include_hdcp_2_2 [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_HDCP_2_2] + 1]]
        set var_c_max_bits_per_component [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_MAX_BITS_PER_COMPONENT] + 1]]
        set var_c_input_pixels_per_clock [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INPUT_PIXELS_PER_CLOCK] + 1]]
        set var_c_addr_width [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_ADDR_WIDTH] + 1]]
        set var_c_hysteresis [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_HYSTERESIS_LEVEL] + 1]]
        set var_c_vid_interface [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_VID_INTERFACE] + 1]]
        set var_c_include_low_reso_vid [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_LOW_RESO_VID] + 1]]
        set var_c_include_yuv420_sup [lindex $ss_xgui_varlist [expr [lsearch $ss_xgui_varlist CONFIG.C_INCLUDE_YUV420_SUP] + 1]]

        # enable debug mode (Developer define required value: 0 - disable; 1 - enable)
        set var_debug_en 0

        # initialize and assign internal use variables - NA

        # print debug msg -  variable with its value
        if {$var_debug_en == 1} {
            puts "DBG_MSG - data structure - ss_param_assignment:"
            puts "include_hdcp_1_4           =  $var_c_include_hdcp_1_4"
            puts "include_hdcp_2_2           =  $var_c_include_hdcp_2_2"
            puts "max_bits_per_component     =  $var_c_max_bits_per_component"
            puts "input_pixels_per_clock     =  $var_c_input_pixels_per_clock"
            puts "addr_width                 =  $var_c_addr_width"
            puts "hysteresis                 =  $var_c_hysteresis"
            puts "vid_interface              =  $var_c_vid_interface"
            puts "include_low_reso_vid       =  $var_c_include_low_reso_vid"
            puts "include_yuv420_sup         =  $var_c_include_yuv420_sup"
            puts ""
        }

        ############################## Developer define end here ############################

    }

    # FOR UPDATE_BOUNDARY USAGE
    # proc to generate the bdry pins data struc that will be used for subsystem generation
    proc get_bdry_pinlist {var_connect var_topology {upvar_num 1}} {
        upvar $upvar_num $var_connect var_con
        upvar $upvar_num $var_topology var_topo

        # only define variables that needed in this proc
        variable ss_connect
        variable ss_topology

        ############################## Developer define start here ############################

        # insert required variable to be used in this proc
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2

        variable var_include_val
        variable var_has_frame_crc

        variable var_debug_en

        variable pin_cmd
        variable var_exdes_topology

        # reset the data structure and assign topology
        rst_data_struc ss_connect 1
        set ss_topology versal_cips_ss_topo

        # ss_connect(<topology>,bdry,pinlist) [<all boundary pins for one topology>]
        if {$var_debug_en == 1} {
            puts "include_hdcp_1_4           =  $var_c_include_hdcp_1_4"
            puts "include_hdcp_2_2           =  $var_c_include_hdcp_2_2"
        }

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            set ss_connect($ss_topology,bdry,pinlist) [list CLK_IN1_D hdmi_rx_irq hdmi_tx_irq vphy_irq vfbwr_irq vfbrd_irq vfbwr_arstn vfbrd_arstn\
                                                            IIC clk_out2 dcm_locked peripheral_aresetn s_axi_aclk CH_DDR]
        } elseif {$var_exdes_topology == 4} {
            set ss_connect($ss_topology,bdry,pinlist) [list CLK_IN1_D hdmi_rx_irq hdmi_tx_irq vphy_irq i2s_rx_irq i2s_tx_irq\
                                                            IIC clk_out2 dcm_locked peripheral_aresetn s_axi_aclk CH_DDR]
        } else {
            set ss_connect($ss_topology,bdry,pinlist) [list CLK_IN1_D hdmi_rx_irq hdmi_tx_irq vphy_irq \
                                                            IIC clk_out2 dcm_locked peripheral_aresetn s_axi_aclk CH_DDR]
        }

        #===================================
        set var_axi_intercon_num_mi 9

        if {[string match -nocase $var_c_include_hdcp_1_4 true]} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+2]
        }

        if {[string match -nocase $var_include_val true]} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+4]
        }

        if {$var_has_frame_crc == 1} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+1]
        }

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            set var_axi_intercon_num_si 2
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+2]
        }

        # TODO:mmo:For Audio I2S
        if {$var_exdes_topology == 4} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi]
        }

        #===================================
        set var_num_irq_ports 3

        if {[string match -nocase $var_c_include_hdcp_1_4 true]} {
            set var_num_irq_ports [expr $var_num_irq_ports+4]
        }

        if {[string match -nocase $var_c_include_hdcp_2_2 true]} {
            set var_num_irq_ports [expr $var_num_irq_ports+4]
        }

        for {set i 0} {$i < $var_axi_intercon_num_mi} {incr i} {
            if {$i < 10 && $i != 3 && $i != 4 && $i != 7} {
                set ss_connect($ss_topology,bdry,pinlist)    [concat [set ss_connect($ss_topology,bdry,pinlist)] \
                                                                     M0${i}_AXI]
            } elseif {$i > 9} {
                set ss_connect($ss_topology,bdry,pinlist)    [concat [set ss_connect($ss_topology,bdry,pinlist)] \
                                                                     M${i}_AXI]
            }
        }

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            for {set i 0} {$i < $var_axi_intercon_num_si} {incr i} {
                set ss_connect($ss_topology,bdry,pinlist)    [concat [set ss_connect($ss_topology,bdry,pinlist)] \
                                                                     S0${i}_AXI]
            }
        }

        for {set i 0} {$i < $var_num_irq_ports} {incr i} {
            if {$i >= 3} {
                set ss_connect($ss_topology,bdry,pinlist)    [concat [set ss_connect($ss_topology,bdry,pinlist)] \
                                                                     In${i}]
            }
        }

        # display debug msg
        if {$var_debug_en == 1} {
            puts "DBG_MSG - data structure - get_bdry_pinlist: [set ss_connect($ss_topology,bdry,pinlist)]"
            puts ""
        }

        ############################## Developer define end here #############################

        # transfer the result from local namespace var into common namespace var
        array set var_con  [array get ss_connect]
        set var_topo $ss_topology

    }

    # NOT APPLICABLE FOR EXDES. Just for HIP generation
    # proc to manipulate the config port table for all configurable boundary ports
    proc config_obj_port_property {tobe_config_obj_port tobe_config_obj_port_path} {

        variable ss_xgui_varlist

        ############################## Developer define start here ############################
        variable var_c_placeholder
        variable var_debug_en

        ## ** not applicable for hier

    }

    # FOR UPDATE_BD USAGE
    # proc to generate the leaf objs data struc that will be used for subsystem generation
    proc get_leaf_blocks {var_connect var_topology {upvar_num 1} {shadow_copy 1}} {
        upvar $upvar_num $var_connect var_con
        upvar $upvar_num $var_topology var_topo

        ############################## Developer define start here ############################
        # only define variables that needed in this proc
        variable var_PROCESSOR_TYPE
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_c_placeholder
        variable var_debug_en
        variable var_exdes_topology

        # reset the data structure and assign topology
        # rst_data_struc ss_connect 1
        set ss_topology versal_cips_ss_topo

        if {$var_exdes_topology == 3} {
            # ss_connect(<topology>,leaf) [<all the needed leaf object per topology>]   -- bug, cannot use common word
            set sys_block_list [list axi_noc_0 axi_smartconnect_0 versal_cips fmch_axi_iic xlslice0 xlslice1\
                                     rst_processor_1_100M rst_processor_1_300M]
        } else {
            # ss_connect(<topology>,leaf) [<all the needed leaf object per topology>]   -- bug, cannot use common word
            set sys_block_list [list axi_noc_0 axi_smartconnect_0 versal_cips fmch_axi_iic \
                                     rst_processor_1_100M rst_processor_1_300M]
        }



        #if {[string match -nocase $var_c_include_hdcp_1_4 true] || \
        #    [string match -nocase $var_c_include_hdcp_2_2 true]} {
        #    lappend sys_block_list  xlconcat1
        #}
        set ss_connect($ss_topology,leaf) $sys_block_list

        # display debug msg
        if {$var_debug_en == 1} {
            puts "DBG_MSG - data structure - get_leaf_blocks: [set ss_connect($ss_topology,leaf)]"
            puts ""
        }

        ############################## Developer define end here #############################

        # transfer the result from local namespace var into common namespace var
        array set var_con  [array get ss_connect]
        set var_topo $ss_topology

    }

    # proc to generate the source2target and net data strucs that will be used for subsystem generation
    proc get_ss_connectivity {var_connect var_topology {upvar_num 1}} {
        upvar $upvar_num $var_connect var_con
        upvar $upvar_num $var_topology var_topo
        variable ss_connect
        variable ss_topology

        ############################## Developer define start here ############################

        # only define variables that needed in this proc
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_include_val
        variable var_has_frame_crc
        variable var_debug_en
        variable var_exdes_topology

        #===================================
        variable var_axi_intercon_num_mi
        variable var_axi_intercon_num_si
        variable var_num_irq_ports

        set var_axi_intercon_num_mi 9

        # For Video Frame Buffer Read and Video Framer Buffer Write
        set var_axi_intercon_num_si 0

        if {[string match -nocase $var_c_include_hdcp_1_4 true]} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+2]
        }

        if {[string match -nocase $var_include_val true]} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+4]
        }

        if {$var_has_frame_crc == 1} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+1]
        }

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            set var_axi_intercon_num_si 2
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+2]
        }

        # TODO:mmo:For Audio I2S
        if {$var_exdes_topology == 4} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi]
        }
        #===================================
        set var_num_irq_ports 3

        if {[string match -nocase $var_c_include_hdcp_1_4 true]} {
            set var_num_irq_ports [expr $var_num_irq_ports+4]
        }

        if {[string match -nocase $var_c_include_hdcp_2_2 true]} {
            set var_num_irq_ports [expr $var_num_irq_ports+4]
        }

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            set var_num_irq_ports [expr $var_num_irq_ports+2]
        }

        # TODO:mmo:For Audio I2S
        if {$var_exdes_topology == 4} {
            set var_num_irq_ports [expr $var_num_irq_ports]
        }
        # reset the data structure and assign topology
        # rst_data_struc ss_connect 1
        set ss_topology versal_cips_ss_topo
        set source_objs [list]
        set ss_connect($ss_topology,sourceIsInterfacePin) [list]

        lappend source_objs bdry_in
        set ss_connect($ss_topology,source2target,bdry_in,CLK_IN1_D)             [list axi_noc_0              sys_clk0]
        set ss_connect($ss_topology,source2target,bdry_in,vphy_irq)             [list versal_cips            pl_ps_irq0]

        set ss_connect($ss_topology,source2target,bdry_in,hdmi_rx_irq)          [list versal_cips            pl_ps_irq1]
        set ss_connect($ss_topology,source2target,bdry_in,hdmi_tx_irq)          [list versal_cips            pl_ps_irq2]
        if {$var_exdes_topology == 3} {
             set ss_connect($ss_topology,source2target,bdry_in,vfbwr_irq)               [list versal_cips            pl_ps_irq3]
             set ss_connect($ss_topology,source2target,bdry_in,vfbrd_irq)               [list versal_cips            pl_ps_irq4]
             set ss_connect($ss_topology,source2target,fmch_axi_iic,iic2intc_irpt)      [list versal_cips            pl_ps_irq5]
        }
        if {$var_exdes_topology == 4} {
             set ss_connect($ss_topology,source2target,bdry_in,i2s_rx_irq)      [list versal_cips            pl_ps_irq3]
             set ss_connect($ss_topology,source2target,bdry_in,i2s_tx_irq)      [list versal_cips            pl_ps_irq4]
        }
        for {set i 3} {$i < $var_num_irq_ports} {incr i} {

            set j [expr $i + 3]
            set ss_connect($ss_topology,source2target,bdry_in,In${i})       [list versal_cips              pl_ps_irq${j}]

        }

        #lappend source_objs xlconcat0
        #set ss_connect($ss_topology,source2target,xlconcat0,dout)           [list versal_cips                pl_ps_irq0]
        #if {[string match -nocase $var_c_include_hdcp_1_4 true] || \
        #    [string match -nocase $var_c_include_hdcp_2_2 true]} {
        #    lappend source_objs xlconcat1
        #    set ss_connect($ss_topology,source2target,xlconcat1,dout)       [list versal_cips                pl_ps_irq1]
        #}

        lappend source_objs rst_processor_1_100M
        set ss_connect($ss_topology,source2target,rst_processor_1_100M,peripheral_aresetn)      [list fmch_axi_iic           s_axi_aresetn \
                                                                                                      bdry_out               peripheral_aresetn]
        set ss_connect($ss_topology,source2target,rst_processor_1_100M,interconnect_aresetn)    [list axi_smartconnect_0     aresetn]

        #for {set i 0} {$i < $var_axi_intercon_num_mi} {incr i} {
        #    if {$i < 10 && $i != 5 && $i != 8} {
        #    set ss_connect($ss_topology,source2target,rst_processor_1_100M,peripheral_aresetn)    [concat [set ss_connect($ss_topology,source2target,rst_processor_1_100M,peripheral_aresetn)] \
        #                                                                                                     axi_smartconnect_0    M0${i}_ARESETN]
        #    } elseif {$i > 9 && $i != 5 && $i != 8} {
        #    set ss_connect($ss_topology,source2target,rst_processor_1_100M,peripheral_aresetn)    [concat [set ss_connect($ss_topology,source2target,rst_processor_1_100M,peripheral_aresetn)] \
        #                                                                                                     axi_smartconnect_0    M${i}_ARESETN]
        #    }
        #}

        lappend source_objs fmch_axi_iic
        set ss_connect($ss_topology,source2target,fmch_axi_iic,IIC)         [list bdry_out     IIC]

        lappend source_objs versal_cips
        set ss_connect($ss_topology,source2target,versal_cips,pl0_resetn)       [list rst_processor_1_100M  aux_reset_in \
                                                                                      rst_processor_1_100M  dcm_locked \
                                                                                      rst_processor_1_300M  aux_reset_in \
                                                                                      rst_processor_1_300M  dcm_locked \
                                                                                      rst_processor_1_100M  ext_reset_in \
                                                                                      rst_processor_1_300M  ext_reset_in]
        set ss_connect($ss_topology,source2target,versal_cips,M_AXI_FPD)            [list axi_smartconnect_0    S00_AXI]
        set ss_connect($ss_topology,source2target,versal_cips,pl0_ref_clk)          [list rst_processor_1_100M  slowest_sync_clk \
                                                                                      versal_cips           m_axi_fpd_aclk \
                                                                                      fmch_axi_iic          s_axi_aclk \
                                                                                      bdry_out              s_axi_aclk \
                                                                                      axi_smartconnect_0    aclk]

        #AXI NOC Clocks
        set ss_connect($ss_topology,source2target,versal_cips,pmc_axi_noc_axi0_clk)           [list axi_noc_0             aclk0]
        set ss_connect($ss_topology,source2target,versal_cips,fpd_cci_noc_axi0_clk)           [list axi_noc_0             aclk1]
        set ss_connect($ss_topology,source2target,versal_cips,fpd_cci_noc_axi1_clk)           [list axi_noc_0             aclk2]
        set ss_connect($ss_topology,source2target,versal_cips,fpd_cci_noc_axi2_clk)           [list axi_noc_0             aclk3]
        set ss_connect($ss_topology,source2target,versal_cips,fpd_cci_noc_axi3_clk)           [list axi_noc_0             aclk4]

        #AXI NOC Connection
        set ss_connect($ss_topology,source2target,versal_cips,PMC_NOC_AXI_0)  [list axi_noc_0             S00_AXI]
        set ss_connect($ss_topology,source2target,versal_cips,FPD_CCI_NOC_0)  [list axi_noc_0             S01_AXI]
        set ss_connect($ss_topology,source2target,versal_cips,FPD_CCI_NOC_1)  [list axi_noc_0             S02_AXI]
        set ss_connect($ss_topology,source2target,versal_cips,FPD_CCI_NOC_2)  [list axi_noc_0             S03_AXI]
        set ss_connect($ss_topology,source2target,versal_cips,FPD_CCI_NOC_3)  [list axi_noc_0             S04_AXI]

 
	
        #for {set i 0} {$i < $var_axi_intercon_num_mi} {incr i} {
        #    if {$i < 10 && $i != 5 && $i != 8} {
        #    set ss_connect($ss_topology,source2target,versal_cips,pl_clk0)      [concat [set ss_connect($ss_topology,source2target,versal_cips,pl_clk0)] \
        #                                                                                axi_smartconnect_0     M0${i}_ACLK]
        #    } elseif {$i > 9 && $i != 5 && $i != 8} {
        #    set ss_connect($ss_topology,source2target,versal_cips,pl_clk0)      [concat [set ss_connect($ss_topology,source2target,versal_cips,pl_clk0)] \
        #                                                                                axi_smartconnect_0     M${i}_ACLK]
        #    }
        #}

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            set ss_connect($ss_topology,source2target,versal_cips,pl1_ref_clk)          [list rst_processor_1_300M    slowest_sync_clk \
                                                                                          axi_smartconnect_0      aclk1 \
                                                                                          bdry_out                clk_out2]

            set ss_connect($ss_topology,source2target,versal_cips,emio_ps_gpio_2o)          [list xlslice0  Din \
                                                                                                  xlslice1  Din]
        } else {
            set ss_connect($ss_topology,source2target,versal_cips,pl1_ref_clk)          [list rst_processor_1_300M  slowest_sync_clk \
                                                                                          axi_smartconnect_0      aclk1 \
                                                                                          bdry_out              clk_out2]
        }

        lappend source_objs rst_processor_1_300M
        ## For Video Frame Buffer Read and Video Framer Buffer Write
        #if {$var_exdes_topology == 3} {
        #   set ss_connect($ss_topology,source2target,rst_processor_1_300M,interconnect_aresetn)  [list axi_smartconnect_0      M05_ARESETN \
        #                                                                                               axi_smartconnect_0      M08_ARESETN \
        #                                                                                               axi_interconnect_1      ARESETN \
        #                                                                                               axi_interconnect_1      M00_ARESETN \
        #                                                                                               axi_interconnect_1      S00_ARESETN \
        #                                                                                               axi_interconnect_1      S01_ARESETN]
        #} else {
        #   set ss_connect($ss_topology,source2target,rst_processor_1_300M,interconnect_aresetn)  [list axi_smartconnect_0      M05_ARESETN \
        #                                                                                               axi_smartconnect_0      M08_ARESETN]
        #}

        set ss_connect($ss_topology,source2target,rst_processor_1_300M,peripheral_aresetn)    [list bdry_out              dcm_locked]


        lappend source_objs axi_smartconnect_0
        set ss_connect($ss_topology,source2target,axi_smartconnect_0,M04_AXI)    [list fmch_axi_iic     S_AXI]

        for {set i 0} {$i < $var_axi_intercon_num_mi} {incr i} {
            if {$i < 10 && $i != 3 && $i != 4 && $i != 7} {
            set ss_connect($ss_topology,source2target,axi_smartconnect_0,M0${i}_AXI)    [list bdry_out     M0${i}_AXI]
            } elseif {$i > 9 && $i != 3 && $i != 4 && $i != 7} {
            set ss_connect($ss_topology,source2target,axi_smartconnect_0,M${i}_AXI)     [list bdry_out     M${i}_AXI]
            }
        }

        lappend source_objs axi_noc_0
        set_property -dict [ list \
          CONFIG.CONNECTIONS {MC_0 { read_bw {5} write_bw {5} read_avg_burst {4} write_avg_burst {4}} } \
          CONFIG.CATEGORY {ps_pmc} \
        ] [get_bd_intf_pins /*/axi_noc_0/S00_AXI]
    
        set_property -dict [ list \
          CONFIG.CONNECTIONS {MC_0 { read_bw {5} write_bw {5} read_avg_burst {4} write_avg_burst {4}} } \
          CONFIG.CATEGORY {ps_cci} \
        ] [get_bd_intf_pins /*/axi_noc_0/S01_AXI]
    
        set_property -dict [ list \
          CONFIG.CONNECTIONS {MC_0 { read_bw {5} write_bw {5} read_avg_burst {4} write_avg_burst {4}} } \
          CONFIG.CATEGORY {ps_cci} \
        ] [get_bd_intf_pins /*/axi_noc_0/S02_AXI]
    
        set_property -dict [ list \
          CONFIG.CONNECTIONS {MC_0 { read_bw {5} write_bw {5} read_avg_burst {4} write_avg_burst {4}} } \
          CONFIG.CATEGORY {ps_cci} \
        ] [get_bd_intf_pins /*/axi_noc_0/S03_AXI]
    
        set_property -dict [ list \
          CONFIG.CONNECTIONS {MC_0 { read_bw {5} write_bw {5} read_avg_burst {4} write_avg_burst {4}} } \
          CONFIG.CATEGORY {ps_cci} \
        ] [get_bd_intf_pins /*/axi_noc_0/S04_AXI]
    	
        set_property -dict [ list \
         CONFIG.ASSOCIATED_BUSIF {S00_AXI} \
        ] [get_bd_pins /*/axi_noc_0/aclk0]
      
        set_property -dict [ list \
         CONFIG.ASSOCIATED_BUSIF {S01_AXI} \
        ] [get_bd_pins /*/axi_noc_0/aclk1]
      
        set_property -dict [ list \
         CONFIG.ASSOCIATED_BUSIF {S02_AXI} \
        ] [get_bd_pins /*/axi_noc_0/aclk2]
      
        set_property -dict [ list \
         CONFIG.ASSOCIATED_BUSIF {S03_AXI} \
        ] [get_bd_pins /*/axi_noc_0/aclk3]
      
        set_property -dict [ list \
         CONFIG.ASSOCIATED_BUSIF {S04_AXI} \
        ] [get_bd_pins /*/axi_noc_0/aclk4]
 
 
        set ss_connect($ss_topology,source2target,axi_noc_0,CH0_DDR4_0)    [list bdry_out     CH_DDR]

        ## For Video Frame Buffer Read and Video Framer Buffer Write
        #if {$var_exdes_topology == 3} {
        #    lappend source_objs axi_interconnect_1
        #    for {set i 0} {$i < $var_axi_intercon_num_si} {incr i} {
        #        set ss_connect($ss_topology,source2target,bdry_in,S0${i}_AXI)    [list axi_interconnect_1     S0${i}_AXI]
        #    }
        #    set ss_connect($ss_topology,source2target,axi_interconnect_1,M00_AXI)    [list versal_cips     S_AXI_HP0_FPD]
		#
        #    lappend source_objs xlslice0
        #    set ss_connect($ss_topology,source2target,xlslice0,Dout)    [list bdry_out     vfbwr_arstn]
        #    lappend source_objs xlslice1
        #    set ss_connect($ss_topology,source2target,xlslice1,Dout)    [list bdry_out     vfbrd_arstn]
        #}
        ## remove any numbering exist in the interface signal name for the source list e,g S01_AXI, S02_AXI,...S0*_AXI will be tagged as S_AXI
        set ss_connect($ss_topology,sourceIsInterfacePin) [list CLK_IN_D M_AXI_HPM_LPD IIC M_AXI S_AXI PMC_NOC_AXI_ FPD_CCI_NOC_ CH_DDR CH_DDR_ M_AXI_FPD]

        set ss_connect($ss_topology,source) $source_objs
        generate_net_list $var_debug_en $source_objs
        ############################## Developer define end here ############################

        # transfer the result from local namespace var into common namespace var
        array set var_con  [array get ss_connect]
        set var_topo $ss_topology

    }

    # proc to manipulate the config table for all leaf objects - DEFINE BY SUBSYSTEM DEVELOPER \
        - before going this proc, make sure the set_ss_param_varlist proc ocmpleted
    proc config_obj_property {tobe_config_obj tobe_config_obj_path} {

        variable ss_xgui_varlist

        ############################## Developer define start here ############################
        # only define variables that needed in this proc
        variable var_c_include_hdcp_1_4
        variable var_c_include_hdcp_2_2
        variable var_BOARD_SYS_CLK_NAME
        variable var_BOARD_SYS_CLK_FREQ
        variable var_BOARD_AXILITE_FREQ
        variable var_BOARD_SYS_RESET_NAME
        variable var_include_val
        variable var_has_frame_crc
        variable var_board_name
        variable var_exdes_topology

        variable var_debug_en

        variable config_fmch_axi_iic
        variable config_versal_cips
        variable config_axi_smartconnect_0
        variable config_axi_interconnect_1
        variable config_axi_noc_0
        variable config_rst_processor_1_100M
        variable config_rst_processor_1_300M
        variable config_xlconcat0
        variable config_xlconcat1
        variable config_xlslice0
        variable config_xlslice1

        variable use_irq3
        variable use_irq4
        variable use_irq5
        variable use_irq6
        variable use_irq7
        variable use_irq8
        variable use_irq9
        variable use_irq10
        variable use_irq11
        variable use_irq12
        variable use_irq13
        variable use_irq14
        variable use_irq15

        set use_irq3  0
        set use_irq4  0
        set use_irq5  0
        set use_irq6  0
        set use_irq7  0
        set use_irq8  0
        set use_irq9  0
        set use_irq10 0
        set use_irq11 0
        set use_irq12 0
        set use_irq13 0
        set use_irq14 0
        set use_irq15 0

        #===================================
        variable var_axi_intercon_num_mi
        variable var_num_irq_ports

        set var_axi_intercon_num_mi 9

        if {[string match -nocase $var_c_include_hdcp_1_4 true]} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+2]
        }

        if {[string match -nocase $var_include_val true]} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+4]
        }

        if {$var_has_frame_crc == 1} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+1]
        }

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi+2]
        }

        # TODO:mmo:For Audio I2S
        if {$var_exdes_topology == 4} {
            set var_axi_intercon_num_mi [expr $var_axi_intercon_num_mi]
        }
        #===================================
        set var_num_irq0_ports 3

        set var_num_irq1_ports 0
        if {[string match -nocase $var_c_include_hdcp_1_4 true]} {
            set var_num_irq1_ports [expr $var_num_irq1_ports+4]
        }

        if {[string match -nocase $var_c_include_hdcp_2_2 true]} {
            set var_num_irq1_ports [expr $var_num_irq1_ports+4]
        }

        # For Video Frame Buffer Read and Video Framer Buffer Write
        if {$var_exdes_topology == 3} {
            set var_num_irq0_ports [expr $var_num_irq0_ports+3]
        }

        if {[string match -nocase $var_c_include_hdcp_2_2 true] && [string match -nocase $var_c_include_hdcp_1_4 true]} {
            set use_irq6  1
            set use_irq7  1
            set use_irq8  1
            set use_irq9  1
            set use_irq10 1
            set use_irq11 1
            set use_irq12 1
            set use_irq13 1
        } elseif {[string match -nocase $var_c_include_hdcp_2_2 true] && [string match -nocase $var_c_include_hdcp_1_4 false]} {
            set use_irq6  1
            set use_irq7  1
            set use_irq8  1
            set use_irq9  1
            set use_irq10 0
            set use_irq11 0
            set use_irq12 0
            set use_irq13 0
        } elseif {[string match -nocase $var_c_include_hdcp_2_2 false] && [string match -nocase $var_c_include_hdcp_1_4 true]} {
            set use_irq6  1
            set use_irq7  1
            set use_irq8  1
            set use_irq9  1
            set use_irq10 0
            set use_irq11 0
            set use_irq12 0
            set use_irq13 0
        } elseif {[string match -nocase $var_c_include_hdcp_2_2 false] && [string match -nocase $var_c_include_hdcp_1_4 false]} {
            set use_irq6  0
            set use_irq7  0
            set use_irq8  0
            set use_irq9  0
            set use_irq10 0
            set use_irq11 0
            set use_irq12 0
            set use_irq13 0
        }

        # TODO:mmo:For Audio I2S
        if {$var_exdes_topology == 4} {
            set var_num_irq0_ports [expr $var_num_irq0_ports+2]
        }

        switch -regexp -matchvar varlist -- $tobe_config_obj {
                ^fmch_axi_iic       {
                                      ::ss_common::go_config $tobe_config_obj_path config_fmch_axi_iic
                                    }
                ^versal_cips        {
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_3)  $use_irq3
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_4)  $use_irq4
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_5)  $use_irq5
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_6)  $use_irq6
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_7)  $use_irq7
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_8)  $use_irq8
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_9)  $use_irq9
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_10) $use_irq10
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_11) $use_irq11
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_12) $use_irq12
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_13) $use_irq13
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_14) $use_irq14
                                      set config_versal_cips(CONFIG.PS_USE_IRQ_15) $use_irq15
                                      ::ss_common::go_config $tobe_config_obj_path config_versal_cips
                                    }
                ^axi_smartconnect_0   {
                                        set config_axi_smartconnect_0(CONFIG.NUM_MI) $var_axi_intercon_num_mi
                                        ::ss_common::go_config $tobe_config_obj_path config_axi_smartconnect_0
                                    }
                ^axi_interconnect_1 {
                                        if {$var_exdes_topology == 3} {
                                             set config_axi_interconnect_1(CONFIG.NUM_MI) 1
                                             set config_axi_interconnect_1(CONFIG.NUM_SI) 2
                                        }
                                        ::ss_common::go_config $tobe_config_obj_path config_axi_interconnect_1
                                    }
                ^axi_noc_0   {
                                        ::ss_common::go_config $tobe_config_obj_path config_axi_noc_0
                                    }
                ^xlconcat0          {
                                        set config_xlconcat0(CONFIG.NUM_PORTS) $var_num_irq0_ports
                                        ::ss_common::go_config $tobe_config_obj_path config_xlconcat0
                                    }
                ^xlconcat1          {
                                        set config_xlconcat1(CONFIG.NUM_PORTS) $var_num_irq1_ports
                                        ::ss_common::go_config $tobe_config_obj_path config_xlconcat1
                                    }
                ^xlslice0           {
                                        set config_xlslice0(CONFIG.DIN_FROM) 0
                                        set config_xlslice0(CONFIG.DIN_TO) 0
                                        set config_xlslice0(CONFIG.DIN_WIDTH) 95
                                        set config_xlslice0(CONFIG.DOUT_WIDTH) 1
                                        ::ss_common::go_config $tobe_config_obj_path config_xlslice0
                                    }
                ^xlslice1           {
                                        set config_xlslice1(CONFIG.DIN_FROM) 1
                                        set config_xlslice1(CONFIG.DIN_TO) 1
                                        set config_xlslice1(CONFIG.DIN_WIDTH) 95
                                        set config_xlslice1(CONFIG.DOUT_WIDTH) 1
                                        ::ss_common::go_config $tobe_config_obj_path config_xlslice1
                                    }
                ^rst_processor_1_100M {
                                      ::ss_common::go_config $tobe_config_obj_path config_rst_processor_1_100M
                                    }
                ^rst_processor_1_300M {
                                      ::ss_common::go_config $tobe_config_obj_path config_rst_processor_1_300M
                                    }
        }

        ############################## Developer define end here ############################

    }

    # NOT APPLICABLE FOR EXDES. Just for HIP generation
    proc config_pin_property {ss_pin_name} {

        # placeholder

    }

    # TBD for EXDEES
    # new for HIP - 25Nov2014 - proc to configure the axi-lite address mapping
    # 16 Dec 2015 - Obsolete and use tool auto address assignment
    proc assign_address_properties {} {

        ############################## Developer define start here ############################
        variable var_c_placeholder
        variable var_debug_en

        variable top_addr_axi_lite_space
        variable top_addr_axi_mm_space
        variable cur_addr_space
        variable addr_reg_index
        variable addr_reg_index_axi_mm

        variable config_addr_mapping_axi_lite
        variable config_addr_mapping_axi_mm
        variable var_exdes_topology

        ## format listing per line: leaf_object<space>AXILITE_PORT<space>addr_range<space>addr_base
        set config_addr_mapping_axi_lite [list  v_hdmi_tx   S_AXI   64k 0x10000 \
                                                v_tc        ctrl    64k 0x20000]


            # set config_addr_mapping_axi_mm [list \
            #   axi_vdma    Data_S2MM       1G  0x80000000 \
            #   axi_vdma    Data_MM2S       1G  0x80000000 \
            #   v_deinterlacer  Data_m_axi_gmem     1G  0x80000000 \
            # ]

            ## axi-mm address mapping - only needed in full-fledged
            ## ::ss_common::get_top_addr_space_axi_mm top_addr_axi_mm_space cur_addr_space
            ## ::ss_common::go_assign_address_axi_mm top_addr_axi_mm_space cur_addr_space config_addr_mapping_axi_mm addr_reg_index_axi_mm

        ## axi-lite address space mapping - needed in both topologies
        ::ss_common::get_top_addr_space top_addr_axi_lite_space cur_addr_space
        ::ss_common::go_assign_address top_addr_axi_lite_space cur_addr_space config_addr_mapping_axi_lite addr_reg_index

        ############################## Developer define end here ############################

    }

