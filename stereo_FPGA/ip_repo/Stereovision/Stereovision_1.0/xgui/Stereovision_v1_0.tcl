# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "WIDTH"
  ipgui::add_param $IPINST -name "HEIGHT"
  ipgui::add_param $IPINST -name "MAX_DISP"
  ipgui::add_param $IPINST -name "CNTX_SIZE"
  ipgui::add_param $IPINST -name "MAX_SAMPLES_PER_CLOCK"
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH"
  ipgui::add_param $IPINST -name "DATA_WIDTH"
  ipgui::add_param $IPINST -name "P1"
  ipgui::add_param $IPINST -name "P2"
  ipgui::add_param $IPINST -name "TLAST_CYCLES"

}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.CNTX_SIZE { PARAM_VALUE.CNTX_SIZE } {
	# Procedure called to update CNTX_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CNTX_SIZE { PARAM_VALUE.CNTX_SIZE } {
	# Procedure called to validate CNTX_SIZE
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to update HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to validate HEIGHT
	return true
}

proc update_PARAM_VALUE.MAX_DISP { PARAM_VALUE.MAX_DISP } {
	# Procedure called to update MAX_DISP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_DISP { PARAM_VALUE.MAX_DISP } {
	# Procedure called to validate MAX_DISP
	return true
}

proc update_PARAM_VALUE.MAX_SAMPLES_PER_CLOCK { PARAM_VALUE.MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to update MAX_SAMPLES_PER_CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_SAMPLES_PER_CLOCK { PARAM_VALUE.MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to validate MAX_SAMPLES_PER_CLOCK
	return true
}

proc update_PARAM_VALUE.P1 { PARAM_VALUE.P1 } {
	# Procedure called to update P1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P1 { PARAM_VALUE.P1 } {
	# Procedure called to validate P1
	return true
}

proc update_PARAM_VALUE.P2 { PARAM_VALUE.P2 } {
	# Procedure called to update P2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P2 { PARAM_VALUE.P2 } {
	# Procedure called to validate P2
	return true
}

proc update_PARAM_VALUE.TLAST_CYCLES { PARAM_VALUE.TLAST_CYCLES } {
	# Procedure called to update TLAST_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TLAST_CYCLES { PARAM_VALUE.TLAST_CYCLES } {
	# Procedure called to validate TLAST_CYCLES
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}


proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

proc update_MODELPARAM_VALUE.HEIGHT { MODELPARAM_VALUE.HEIGHT PARAM_VALUE.HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HEIGHT}] ${MODELPARAM_VALUE.HEIGHT}
}

proc update_MODELPARAM_VALUE.MAX_DISP { MODELPARAM_VALUE.MAX_DISP PARAM_VALUE.MAX_DISP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_DISP}] ${MODELPARAM_VALUE.MAX_DISP}
}

proc update_MODELPARAM_VALUE.CNTX_SIZE { MODELPARAM_VALUE.CNTX_SIZE PARAM_VALUE.CNTX_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CNTX_SIZE}] ${MODELPARAM_VALUE.CNTX_SIZE}
}

proc update_MODELPARAM_VALUE.MAX_SAMPLES_PER_CLOCK { MODELPARAM_VALUE.MAX_SAMPLES_PER_CLOCK PARAM_VALUE.MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_SAMPLES_PER_CLOCK}] ${MODELPARAM_VALUE.MAX_SAMPLES_PER_CLOCK}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.P1 { MODELPARAM_VALUE.P1 PARAM_VALUE.P1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P1}] ${MODELPARAM_VALUE.P1}
}

proc update_MODELPARAM_VALUE.P2 { MODELPARAM_VALUE.P2 PARAM_VALUE.P2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P2}] ${MODELPARAM_VALUE.P2}
}

proc update_MODELPARAM_VALUE.TLAST_CYCLES { MODELPARAM_VALUE.TLAST_CYCLES PARAM_VALUE.TLAST_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TLAST_CYCLES}] ${MODELPARAM_VALUE.TLAST_CYCLES}
}

