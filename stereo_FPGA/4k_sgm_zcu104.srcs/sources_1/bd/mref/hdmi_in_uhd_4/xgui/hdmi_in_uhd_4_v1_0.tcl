# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "no_valid_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "valid_step" -parent ${Page_0}


}

proc update_PARAM_VALUE.no_valid_width { PARAM_VALUE.no_valid_width } {
	# Procedure called to update no_valid_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.no_valid_width { PARAM_VALUE.no_valid_width } {
	# Procedure called to validate no_valid_width
	return true
}

proc update_PARAM_VALUE.valid_step { PARAM_VALUE.valid_step } {
	# Procedure called to update valid_step when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.valid_step { PARAM_VALUE.valid_step } {
	# Procedure called to validate valid_step
	return true
}


proc update_MODELPARAM_VALUE.no_valid_width { MODELPARAM_VALUE.no_valid_width PARAM_VALUE.no_valid_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.no_valid_width}] ${MODELPARAM_VALUE.no_valid_width}
}

proc update_MODELPARAM_VALUE.valid_step { MODELPARAM_VALUE.valid_step PARAM_VALUE.valid_step } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.valid_step}] ${MODELPARAM_VALUE.valid_step}
}

