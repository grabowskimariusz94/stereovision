# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "SAMPLES_PER_CLOCK"
  ipgui::add_param $IPINST -name "BITS_PER_PIXEL"

}

proc update_PARAM_VALUE.BITS_PER_PIXEL { PARAM_VALUE.BITS_PER_PIXEL } {
	# Procedure called to update BITS_PER_PIXEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BITS_PER_PIXEL { PARAM_VALUE.BITS_PER_PIXEL } {
	# Procedure called to validate BITS_PER_PIXEL
	return true
}

proc update_PARAM_VALUE.BURST_SIZE { PARAM_VALUE.BURST_SIZE } {
	# Procedure called to update BURST_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BURST_SIZE { PARAM_VALUE.BURST_SIZE } {
	# Procedure called to validate BURST_SIZE
	return true
}

proc update_PARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING { PARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING } {
	# Procedure called to update C_INTERCONNECT_M_AXI_WRITE_ISSUING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING { PARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING } {
	# Procedure called to validate C_INTERCONNECT_M_AXI_WRITE_ISSUING
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BURST_LEN { PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to update C_M_AXI_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BURST_LEN { PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to validate C_M_AXI_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_PROTOCOL { PARAM_VALUE.C_M_AXI_PROTOCOL } {
	# Procedure called to update C_M_AXI_PROTOCOL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_PROTOCOL { PARAM_VALUE.C_M_AXI_PROTOCOL } {
	# Procedure called to validate C_M_AXI_PROTOCOL
	return true
}

proc update_PARAM_VALUE.C_M_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SUPPORTS_READ { PARAM_VALUE.C_M_AXI_SUPPORTS_READ } {
	# Procedure called to update C_M_AXI_SUPPORTS_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SUPPORTS_READ { PARAM_VALUE.C_M_AXI_SUPPORTS_READ } {
	# Procedure called to validate C_M_AXI_SUPPORTS_READ
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SUPPORTS_WRITE { PARAM_VALUE.C_M_AXI_SUPPORTS_WRITE } {
	# Procedure called to update C_M_AXI_SUPPORTS_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SUPPORTS_WRITE { PARAM_VALUE.C_M_AXI_SUPPORTS_WRITE } {
	# Procedure called to validate C_M_AXI_SUPPORTS_WRITE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_TARGET { PARAM_VALUE.C_M_AXI_TARGET } {
	# Procedure called to update C_M_AXI_TARGET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_TARGET { PARAM_VALUE.C_M_AXI_TARGET } {
	# Procedure called to validate C_M_AXI_TARGET
	return true
}

proc update_PARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH { PARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH } {
	# Procedure called to update C_M_AXI_THREAD_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH { PARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_THREAD_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_OFFSET_WIDTH { PARAM_VALUE.C_OFFSET_WIDTH } {
	# Procedure called to update C_OFFSET_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_OFFSET_WIDTH { PARAM_VALUE.C_OFFSET_WIDTH } {
	# Procedure called to validate C_OFFSET_WIDTH
	return true
}

proc update_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to update HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to validate HEIGHT
	return true
}

proc update_PARAM_VALUE.H_POSITION_WIDTH { PARAM_VALUE.H_POSITION_WIDTH } {
	# Procedure called to update H_POSITION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_POSITION_WIDTH { PARAM_VALUE.H_POSITION_WIDTH } {
	# Procedure called to validate H_POSITION_WIDTH
	return true
}

proc update_PARAM_VALUE.SAMPLES_PER_CLOCK { PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to update SAMPLES_PER_CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLES_PER_CLOCK { PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to validate SAMPLES_PER_CLOCK
	return true
}

proc update_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to update TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_WIDTH { PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to validate TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}

proc update_PARAM_VALUE.W_POSITION_WIDTH { PARAM_VALUE.W_POSITION_WIDTH } {
	# Procedure called to update W_POSITION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_POSITION_WIDTH { PARAM_VALUE.W_POSITION_WIDTH } {
	# Procedure called to validate W_POSITION_WIDTH
	return true
}

proc update_PARAM_VALUE.img_size { PARAM_VALUE.img_size } {
	# Procedure called to update img_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.img_size { PARAM_VALUE.img_size } {
	# Procedure called to validate img_size
	return true
}


proc update_MODELPARAM_VALUE.img_size { MODELPARAM_VALUE.img_size PARAM_VALUE.img_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.img_size}] ${MODELPARAM_VALUE.img_size}
}

proc update_MODELPARAM_VALUE.BURST_SIZE { MODELPARAM_VALUE.BURST_SIZE PARAM_VALUE.BURST_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BURST_SIZE}] ${MODELPARAM_VALUE.BURST_SIZE}
}

proc update_MODELPARAM_VALUE.SAMPLES_PER_CLOCK { MODELPARAM_VALUE.SAMPLES_PER_CLOCK PARAM_VALUE.SAMPLES_PER_CLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLES_PER_CLOCK}] ${MODELPARAM_VALUE.SAMPLES_PER_CLOCK}
}

proc update_MODELPARAM_VALUE.BITS_PER_PIXEL { MODELPARAM_VALUE.BITS_PER_PIXEL PARAM_VALUE.BITS_PER_PIXEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BITS_PER_PIXEL}] ${MODELPARAM_VALUE.BITS_PER_PIXEL}
}

proc update_MODELPARAM_VALUE.TDATA_WIDTH { MODELPARAM_VALUE.TDATA_WIDTH PARAM_VALUE.TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDATA_WIDTH}] ${MODELPARAM_VALUE.TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

proc update_MODELPARAM_VALUE.HEIGHT { MODELPARAM_VALUE.HEIGHT PARAM_VALUE.HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HEIGHT}] ${MODELPARAM_VALUE.HEIGHT}
}

proc update_MODELPARAM_VALUE.W_POSITION_WIDTH { MODELPARAM_VALUE.W_POSITION_WIDTH PARAM_VALUE.W_POSITION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_POSITION_WIDTH}] ${MODELPARAM_VALUE.W_POSITION_WIDTH}
}

proc update_MODELPARAM_VALUE.H_POSITION_WIDTH { MODELPARAM_VALUE.H_POSITION_WIDTH PARAM_VALUE.H_POSITION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_POSITION_WIDTH}] ${MODELPARAM_VALUE.H_POSITION_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_PROTOCOL { MODELPARAM_VALUE.C_M_AXI_PROTOCOL PARAM_VALUE.C_M_AXI_PROTOCOL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_PROTOCOL}] ${MODELPARAM_VALUE.C_M_AXI_PROTOCOL}
}

proc update_MODELPARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH PARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_THREAD_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SUPPORTS_WRITE { MODELPARAM_VALUE.C_M_AXI_SUPPORTS_WRITE PARAM_VALUE.C_M_AXI_SUPPORTS_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SUPPORTS_WRITE}] ${MODELPARAM_VALUE.C_M_AXI_SUPPORTS_WRITE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SUPPORTS_READ { MODELPARAM_VALUE.C_M_AXI_SUPPORTS_READ PARAM_VALUE.C_M_AXI_SUPPORTS_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SUPPORTS_READ}] ${MODELPARAM_VALUE.C_M_AXI_SUPPORTS_READ}
}

proc update_MODELPARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING { MODELPARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING PARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING}] ${MODELPARAM_VALUE.C_INTERCONNECT_M_AXI_WRITE_ISSUING}
}

proc update_MODELPARAM_VALUE.C_M_AXI_TARGET { MODELPARAM_VALUE.C_M_AXI_TARGET PARAM_VALUE.C_M_AXI_TARGET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_TARGET}] ${MODELPARAM_VALUE.C_M_AXI_TARGET}
}

proc update_MODELPARAM_VALUE.C_OFFSET_WIDTH { MODELPARAM_VALUE.C_OFFSET_WIDTH PARAM_VALUE.C_OFFSET_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_OFFSET_WIDTH}] ${MODELPARAM_VALUE.C_OFFSET_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BURST_LEN { MODELPARAM_VALUE.C_M_AXI_BURST_LEN PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BURST_LEN}] ${MODELPARAM_VALUE.C_M_AXI_BURST_LEN}
}

