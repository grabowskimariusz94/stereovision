# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S_AXIS_L_TDATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S_AXIS_R_TDATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXIS_L_TDATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXIS_R_TDATA_WIDTH" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.height { PARAM_VALUE.height } {
	# Procedure called to update height when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.height { PARAM_VALUE.height } {
	# Procedure called to validate height
	return true
}

proc update_PARAM_VALUE.log_width { PARAM_VALUE.log_width } {
	# Procedure called to update log_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.log_width { PARAM_VALUE.log_width } {
	# Procedure called to validate log_width
	return true
}

proc update_PARAM_VALUE.width { PARAM_VALUE.width } {
	# Procedure called to update width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width { PARAM_VALUE.width } {
	# Procedure called to validate width
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_L_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_L_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_R_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_R_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_L_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_L_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_R_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_R_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_L_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_R_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_L_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_R_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.height { MODELPARAM_VALUE.height PARAM_VALUE.height } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.height}] ${MODELPARAM_VALUE.height}
}

proc update_MODELPARAM_VALUE.width { MODELPARAM_VALUE.width PARAM_VALUE.width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width}] ${MODELPARAM_VALUE.width}
}

proc update_MODELPARAM_VALUE.log_width { MODELPARAM_VALUE.log_width PARAM_VALUE.log_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.log_width}] ${MODELPARAM_VALUE.log_width}
}

