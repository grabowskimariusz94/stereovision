# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {General}]
  ipgui::add_param $IPINST -name "WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BPP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NPPC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_SHIFT_UP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_SHIFT_DOWN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PREC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PREC_INTER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_OF_DIST_COEFFS" -parent ${Page_0}

  #Adding Page
  set Camera_Matrices [ipgui::add_page $IPINST -name "Camera Matrices"]
  #Adding Group
  set Input_Camera_Matrices [ipgui::add_group $IPINST -name "Input Camera Matrices" -parent ${Camera_Matrices}]
  ipgui::add_param $IPINST -name "fxL" -parent ${Input_Camera_Matrices}
  ipgui::add_param $IPINST -name "fyL" -parent ${Input_Camera_Matrices}
  ipgui::add_param $IPINST -name "cxL" -parent ${Input_Camera_Matrices}
  ipgui::add_param $IPINST -name "cyL" -parent ${Input_Camera_Matrices}
  ipgui::add_param $IPINST -name "fxR" -parent ${Input_Camera_Matrices}
  ipgui::add_param $IPINST -name "fyR" -parent ${Input_Camera_Matrices}
  ipgui::add_param $IPINST -name "cxR" -parent ${Input_Camera_Matrices}
  ipgui::add_param $IPINST -name "cyR" -parent ${Input_Camera_Matrices}

  #Adding Group
  set New_Camera_Matrices [ipgui::add_group $IPINST -name "New Camera Matrices" -parent ${Camera_Matrices} -display_name {New Camera Matrix}]
  set_property tooltip {New Camera Matrix} ${New_Camera_Matrices}
  ipgui::add_param $IPINST -name "fxNewInv" -parent ${New_Camera_Matrices}
  ipgui::add_param $IPINST -name "fyNewInv" -parent ${New_Camera_Matrices}
  ipgui::add_param $IPINST -name "cxNew" -parent ${New_Camera_Matrices}
  ipgui::add_param $IPINST -name "cyNew" -parent ${New_Camera_Matrices}


  #Adding Page
  set left [ipgui::add_page $IPINST -name "left" -display_name {Distortion Coefficients}]
  ipgui::add_param $IPINST -name "distCoeffsL_0" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsL_1" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsL_2" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsL_3" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsL_4" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsR_0" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsR_1" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsR_2" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsR_3" -parent ${left}
  ipgui::add_param $IPINST -name "distCoeffsR_4" -parent ${left}

  #Adding Page
  set right [ipgui::add_page $IPINST -name "right" -display_name {Rectification Transformation}]
  ipgui::add_param $IPINST -name "RInvL_00" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_01" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_02" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_10" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_11" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_12" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_20" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_21" -parent ${right}
  ipgui::add_param $IPINST -name "RInvL_22" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_00" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_01" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_02" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_10" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_11" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_12" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_20" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_21" -parent ${right}
  ipgui::add_param $IPINST -name "RInvR_22" -parent ${right}


}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.BPP { PARAM_VALUE.BPP } {
	# Procedure called to update BPP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BPP { PARAM_VALUE.BPP } {
	# Procedure called to validate BPP
	return true
}

proc update_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to update HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to validate HEIGHT
	return true
}

proc update_PARAM_VALUE.MAX_SHIFT_DOWN { PARAM_VALUE.MAX_SHIFT_DOWN } {
	# Procedure called to update MAX_SHIFT_DOWN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_SHIFT_DOWN { PARAM_VALUE.MAX_SHIFT_DOWN } {
	# Procedure called to validate MAX_SHIFT_DOWN
	return true
}

proc update_PARAM_VALUE.MAX_SHIFT_UP { PARAM_VALUE.MAX_SHIFT_UP } {
	# Procedure called to update MAX_SHIFT_UP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_SHIFT_UP { PARAM_VALUE.MAX_SHIFT_UP } {
	# Procedure called to validate MAX_SHIFT_UP
	return true
}

proc update_PARAM_VALUE.NPPC { PARAM_VALUE.NPPC } {
	# Procedure called to update NPPC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NPPC { PARAM_VALUE.NPPC } {
	# Procedure called to validate NPPC
	return true
}

proc update_PARAM_VALUE.NUM_OF_DIST_COEFFS { PARAM_VALUE.NUM_OF_DIST_COEFFS } {
	# Procedure called to update NUM_OF_DIST_COEFFS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_OF_DIST_COEFFS { PARAM_VALUE.NUM_OF_DIST_COEFFS } {
	# Procedure called to validate NUM_OF_DIST_COEFFS
	return true
}

proc update_PARAM_VALUE.PREC { PARAM_VALUE.PREC } {
	# Procedure called to update PREC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PREC { PARAM_VALUE.PREC } {
	# Procedure called to validate PREC
	return true
}

proc update_PARAM_VALUE.PREC_INTER { PARAM_VALUE.PREC_INTER } {
	# Procedure called to update PREC_INTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PREC_INTER { PARAM_VALUE.PREC_INTER } {
	# Procedure called to validate PREC_INTER
	return true
}

proc update_PARAM_VALUE.RInvL_00 { PARAM_VALUE.RInvL_00 } {
	# Procedure called to update RInvL_00 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_00 { PARAM_VALUE.RInvL_00 } {
	# Procedure called to validate RInvL_00
	return true
}

proc update_PARAM_VALUE.RInvL_01 { PARAM_VALUE.RInvL_01 } {
	# Procedure called to update RInvL_01 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_01 { PARAM_VALUE.RInvL_01 } {
	# Procedure called to validate RInvL_01
	return true
}

proc update_PARAM_VALUE.RInvL_02 { PARAM_VALUE.RInvL_02 } {
	# Procedure called to update RInvL_02 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_02 { PARAM_VALUE.RInvL_02 } {
	# Procedure called to validate RInvL_02
	return true
}

proc update_PARAM_VALUE.RInvL_10 { PARAM_VALUE.RInvL_10 } {
	# Procedure called to update RInvL_10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_10 { PARAM_VALUE.RInvL_10 } {
	# Procedure called to validate RInvL_10
	return true
}

proc update_PARAM_VALUE.RInvL_11 { PARAM_VALUE.RInvL_11 } {
	# Procedure called to update RInvL_11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_11 { PARAM_VALUE.RInvL_11 } {
	# Procedure called to validate RInvL_11
	return true
}

proc update_PARAM_VALUE.RInvL_12 { PARAM_VALUE.RInvL_12 } {
	# Procedure called to update RInvL_12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_12 { PARAM_VALUE.RInvL_12 } {
	# Procedure called to validate RInvL_12
	return true
}

proc update_PARAM_VALUE.RInvL_20 { PARAM_VALUE.RInvL_20 } {
	# Procedure called to update RInvL_20 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_20 { PARAM_VALUE.RInvL_20 } {
	# Procedure called to validate RInvL_20
	return true
}

proc update_PARAM_VALUE.RInvL_21 { PARAM_VALUE.RInvL_21 } {
	# Procedure called to update RInvL_21 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_21 { PARAM_VALUE.RInvL_21 } {
	# Procedure called to validate RInvL_21
	return true
}

proc update_PARAM_VALUE.RInvL_22 { PARAM_VALUE.RInvL_22 } {
	# Procedure called to update RInvL_22 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvL_22 { PARAM_VALUE.RInvL_22 } {
	# Procedure called to validate RInvL_22
	return true
}

proc update_PARAM_VALUE.RInvR_00 { PARAM_VALUE.RInvR_00 } {
	# Procedure called to update RInvR_00 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_00 { PARAM_VALUE.RInvR_00 } {
	# Procedure called to validate RInvR_00
	return true
}

proc update_PARAM_VALUE.RInvR_01 { PARAM_VALUE.RInvR_01 } {
	# Procedure called to update RInvR_01 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_01 { PARAM_VALUE.RInvR_01 } {
	# Procedure called to validate RInvR_01
	return true
}

proc update_PARAM_VALUE.RInvR_02 { PARAM_VALUE.RInvR_02 } {
	# Procedure called to update RInvR_02 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_02 { PARAM_VALUE.RInvR_02 } {
	# Procedure called to validate RInvR_02
	return true
}

proc update_PARAM_VALUE.RInvR_10 { PARAM_VALUE.RInvR_10 } {
	# Procedure called to update RInvR_10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_10 { PARAM_VALUE.RInvR_10 } {
	# Procedure called to validate RInvR_10
	return true
}

proc update_PARAM_VALUE.RInvR_11 { PARAM_VALUE.RInvR_11 } {
	# Procedure called to update RInvR_11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_11 { PARAM_VALUE.RInvR_11 } {
	# Procedure called to validate RInvR_11
	return true
}

proc update_PARAM_VALUE.RInvR_12 { PARAM_VALUE.RInvR_12 } {
	# Procedure called to update RInvR_12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_12 { PARAM_VALUE.RInvR_12 } {
	# Procedure called to validate RInvR_12
	return true
}

proc update_PARAM_VALUE.RInvR_20 { PARAM_VALUE.RInvR_20 } {
	# Procedure called to update RInvR_20 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_20 { PARAM_VALUE.RInvR_20 } {
	# Procedure called to validate RInvR_20
	return true
}

proc update_PARAM_VALUE.RInvR_21 { PARAM_VALUE.RInvR_21 } {
	# Procedure called to update RInvR_21 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_21 { PARAM_VALUE.RInvR_21 } {
	# Procedure called to validate RInvR_21
	return true
}

proc update_PARAM_VALUE.RInvR_22 { PARAM_VALUE.RInvR_22 } {
	# Procedure called to update RInvR_22 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RInvR_22 { PARAM_VALUE.RInvR_22 } {
	# Procedure called to validate RInvR_22
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}

proc update_PARAM_VALUE.cxL { PARAM_VALUE.cxL } {
	# Procedure called to update cxL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cxL { PARAM_VALUE.cxL } {
	# Procedure called to validate cxL
	return true
}

proc update_PARAM_VALUE.cxNew { PARAM_VALUE.cxNew } {
	# Procedure called to update cxNew when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cxNew { PARAM_VALUE.cxNew } {
	# Procedure called to validate cxNew
	return true
}

proc update_PARAM_VALUE.cxR { PARAM_VALUE.cxR } {
	# Procedure called to update cxR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cxR { PARAM_VALUE.cxR } {
	# Procedure called to validate cxR
	return true
}

proc update_PARAM_VALUE.cyL { PARAM_VALUE.cyL } {
	# Procedure called to update cyL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cyL { PARAM_VALUE.cyL } {
	# Procedure called to validate cyL
	return true
}

proc update_PARAM_VALUE.cyNew { PARAM_VALUE.cyNew } {
	# Procedure called to update cyNew when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cyNew { PARAM_VALUE.cyNew } {
	# Procedure called to validate cyNew
	return true
}

proc update_PARAM_VALUE.cyR { PARAM_VALUE.cyR } {
	# Procedure called to update cyR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cyR { PARAM_VALUE.cyR } {
	# Procedure called to validate cyR
	return true
}

proc update_PARAM_VALUE.distCoeffsL_0 { PARAM_VALUE.distCoeffsL_0 } {
	# Procedure called to update distCoeffsL_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsL_0 { PARAM_VALUE.distCoeffsL_0 } {
	# Procedure called to validate distCoeffsL_0
	return true
}

proc update_PARAM_VALUE.distCoeffsL_1 { PARAM_VALUE.distCoeffsL_1 } {
	# Procedure called to update distCoeffsL_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsL_1 { PARAM_VALUE.distCoeffsL_1 } {
	# Procedure called to validate distCoeffsL_1
	return true
}

proc update_PARAM_VALUE.distCoeffsL_2 { PARAM_VALUE.distCoeffsL_2 } {
	# Procedure called to update distCoeffsL_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsL_2 { PARAM_VALUE.distCoeffsL_2 } {
	# Procedure called to validate distCoeffsL_2
	return true
}

proc update_PARAM_VALUE.distCoeffsL_3 { PARAM_VALUE.distCoeffsL_3 } {
	# Procedure called to update distCoeffsL_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsL_3 { PARAM_VALUE.distCoeffsL_3 } {
	# Procedure called to validate distCoeffsL_3
	return true
}

proc update_PARAM_VALUE.distCoeffsL_4 { PARAM_VALUE.distCoeffsL_4 } {
	# Procedure called to update distCoeffsL_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsL_4 { PARAM_VALUE.distCoeffsL_4 } {
	# Procedure called to validate distCoeffsL_4
	return true
}

proc update_PARAM_VALUE.distCoeffsR_0 { PARAM_VALUE.distCoeffsR_0 } {
	# Procedure called to update distCoeffsR_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsR_0 { PARAM_VALUE.distCoeffsR_0 } {
	# Procedure called to validate distCoeffsR_0
	return true
}

proc update_PARAM_VALUE.distCoeffsR_1 { PARAM_VALUE.distCoeffsR_1 } {
	# Procedure called to update distCoeffsR_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsR_1 { PARAM_VALUE.distCoeffsR_1 } {
	# Procedure called to validate distCoeffsR_1
	return true
}

proc update_PARAM_VALUE.distCoeffsR_2 { PARAM_VALUE.distCoeffsR_2 } {
	# Procedure called to update distCoeffsR_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsR_2 { PARAM_VALUE.distCoeffsR_2 } {
	# Procedure called to validate distCoeffsR_2
	return true
}

proc update_PARAM_VALUE.distCoeffsR_3 { PARAM_VALUE.distCoeffsR_3 } {
	# Procedure called to update distCoeffsR_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsR_3 { PARAM_VALUE.distCoeffsR_3 } {
	# Procedure called to validate distCoeffsR_3
	return true
}

proc update_PARAM_VALUE.distCoeffsR_4 { PARAM_VALUE.distCoeffsR_4 } {
	# Procedure called to update distCoeffsR_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.distCoeffsR_4 { PARAM_VALUE.distCoeffsR_4 } {
	# Procedure called to validate distCoeffsR_4
	return true
}

proc update_PARAM_VALUE.fxL { PARAM_VALUE.fxL } {
	# Procedure called to update fxL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fxL { PARAM_VALUE.fxL } {
	# Procedure called to validate fxL
	return true
}

proc update_PARAM_VALUE.fxNewInv { PARAM_VALUE.fxNewInv } {
	# Procedure called to update fxNewInv when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fxNewInv { PARAM_VALUE.fxNewInv } {
	# Procedure called to validate fxNewInv
	return true
}

proc update_PARAM_VALUE.fxR { PARAM_VALUE.fxR } {
	# Procedure called to update fxR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fxR { PARAM_VALUE.fxR } {
	# Procedure called to validate fxR
	return true
}

proc update_PARAM_VALUE.fyL { PARAM_VALUE.fyL } {
	# Procedure called to update fyL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fyL { PARAM_VALUE.fyL } {
	# Procedure called to validate fyL
	return true
}

proc update_PARAM_VALUE.fyNewInv { PARAM_VALUE.fyNewInv } {
	# Procedure called to update fyNewInv when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fyNewInv { PARAM_VALUE.fyNewInv } {
	# Procedure called to validate fyNewInv
	return true
}

proc update_PARAM_VALUE.fyR { PARAM_VALUE.fyR } {
	# Procedure called to update fyR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fyR { PARAM_VALUE.fyR } {
	# Procedure called to validate fyR
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

proc update_MODELPARAM_VALUE.BPP { MODELPARAM_VALUE.BPP PARAM_VALUE.BPP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BPP}] ${MODELPARAM_VALUE.BPP}
}

proc update_MODELPARAM_VALUE.NPPC { MODELPARAM_VALUE.NPPC PARAM_VALUE.NPPC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NPPC}] ${MODELPARAM_VALUE.NPPC}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.MAX_SHIFT_UP { MODELPARAM_VALUE.MAX_SHIFT_UP PARAM_VALUE.MAX_SHIFT_UP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_SHIFT_UP}] ${MODELPARAM_VALUE.MAX_SHIFT_UP}
}

proc update_MODELPARAM_VALUE.MAX_SHIFT_DOWN { MODELPARAM_VALUE.MAX_SHIFT_DOWN PARAM_VALUE.MAX_SHIFT_DOWN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_SHIFT_DOWN}] ${MODELPARAM_VALUE.MAX_SHIFT_DOWN}
}

proc update_MODELPARAM_VALUE.PREC { MODELPARAM_VALUE.PREC PARAM_VALUE.PREC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PREC}] ${MODELPARAM_VALUE.PREC}
}

proc update_MODELPARAM_VALUE.PREC_INTER { MODELPARAM_VALUE.PREC_INTER PARAM_VALUE.PREC_INTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PREC_INTER}] ${MODELPARAM_VALUE.PREC_INTER}
}

proc update_MODELPARAM_VALUE.NUM_OF_DIST_COEFFS { MODELPARAM_VALUE.NUM_OF_DIST_COEFFS PARAM_VALUE.NUM_OF_DIST_COEFFS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_OF_DIST_COEFFS}] ${MODELPARAM_VALUE.NUM_OF_DIST_COEFFS}
}

proc update_MODELPARAM_VALUE.fxL { MODELPARAM_VALUE.fxL PARAM_VALUE.fxL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fxL}] ${MODELPARAM_VALUE.fxL}
}

proc update_MODELPARAM_VALUE.fyL { MODELPARAM_VALUE.fyL PARAM_VALUE.fyL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fyL}] ${MODELPARAM_VALUE.fyL}
}

proc update_MODELPARAM_VALUE.fxR { MODELPARAM_VALUE.fxR PARAM_VALUE.fxR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fxR}] ${MODELPARAM_VALUE.fxR}
}

proc update_MODELPARAM_VALUE.fyR { MODELPARAM_VALUE.fyR PARAM_VALUE.fyR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fyR}] ${MODELPARAM_VALUE.fyR}
}

proc update_MODELPARAM_VALUE.cxL { MODELPARAM_VALUE.cxL PARAM_VALUE.cxL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cxL}] ${MODELPARAM_VALUE.cxL}
}

proc update_MODELPARAM_VALUE.cyL { MODELPARAM_VALUE.cyL PARAM_VALUE.cyL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cyL}] ${MODELPARAM_VALUE.cyL}
}

proc update_MODELPARAM_VALUE.cxR { MODELPARAM_VALUE.cxR PARAM_VALUE.cxR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cxR}] ${MODELPARAM_VALUE.cxR}
}

proc update_MODELPARAM_VALUE.cyR { MODELPARAM_VALUE.cyR PARAM_VALUE.cyR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cyR}] ${MODELPARAM_VALUE.cyR}
}

proc update_MODELPARAM_VALUE.fxNewInv { MODELPARAM_VALUE.fxNewInv PARAM_VALUE.fxNewInv } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fxNewInv}] ${MODELPARAM_VALUE.fxNewInv}
}

proc update_MODELPARAM_VALUE.fyNewInv { MODELPARAM_VALUE.fyNewInv PARAM_VALUE.fyNewInv } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fyNewInv}] ${MODELPARAM_VALUE.fyNewInv}
}

proc update_MODELPARAM_VALUE.cxNew { MODELPARAM_VALUE.cxNew PARAM_VALUE.cxNew } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cxNew}] ${MODELPARAM_VALUE.cxNew}
}

proc update_MODELPARAM_VALUE.cyNew { MODELPARAM_VALUE.cyNew PARAM_VALUE.cyNew } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cyNew}] ${MODELPARAM_VALUE.cyNew}
}

proc update_MODELPARAM_VALUE.distCoeffsL_0 { MODELPARAM_VALUE.distCoeffsL_0 PARAM_VALUE.distCoeffsL_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsL_0}] ${MODELPARAM_VALUE.distCoeffsL_0}
}

proc update_MODELPARAM_VALUE.distCoeffsL_1 { MODELPARAM_VALUE.distCoeffsL_1 PARAM_VALUE.distCoeffsL_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsL_1}] ${MODELPARAM_VALUE.distCoeffsL_1}
}

proc update_MODELPARAM_VALUE.distCoeffsL_2 { MODELPARAM_VALUE.distCoeffsL_2 PARAM_VALUE.distCoeffsL_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsL_2}] ${MODELPARAM_VALUE.distCoeffsL_2}
}

proc update_MODELPARAM_VALUE.distCoeffsL_3 { MODELPARAM_VALUE.distCoeffsL_3 PARAM_VALUE.distCoeffsL_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsL_3}] ${MODELPARAM_VALUE.distCoeffsL_3}
}

proc update_MODELPARAM_VALUE.distCoeffsL_4 { MODELPARAM_VALUE.distCoeffsL_4 PARAM_VALUE.distCoeffsL_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsL_4}] ${MODELPARAM_VALUE.distCoeffsL_4}
}

proc update_MODELPARAM_VALUE.distCoeffsR_0 { MODELPARAM_VALUE.distCoeffsR_0 PARAM_VALUE.distCoeffsR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsR_0}] ${MODELPARAM_VALUE.distCoeffsR_0}
}

proc update_MODELPARAM_VALUE.distCoeffsR_1 { MODELPARAM_VALUE.distCoeffsR_1 PARAM_VALUE.distCoeffsR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsR_1}] ${MODELPARAM_VALUE.distCoeffsR_1}
}

proc update_MODELPARAM_VALUE.distCoeffsR_2 { MODELPARAM_VALUE.distCoeffsR_2 PARAM_VALUE.distCoeffsR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsR_2}] ${MODELPARAM_VALUE.distCoeffsR_2}
}

proc update_MODELPARAM_VALUE.distCoeffsR_3 { MODELPARAM_VALUE.distCoeffsR_3 PARAM_VALUE.distCoeffsR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsR_3}] ${MODELPARAM_VALUE.distCoeffsR_3}
}

proc update_MODELPARAM_VALUE.distCoeffsR_4 { MODELPARAM_VALUE.distCoeffsR_4 PARAM_VALUE.distCoeffsR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.distCoeffsR_4}] ${MODELPARAM_VALUE.distCoeffsR_4}
}

proc update_MODELPARAM_VALUE.RInvL_00 { MODELPARAM_VALUE.RInvL_00 PARAM_VALUE.RInvL_00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_00}] ${MODELPARAM_VALUE.RInvL_00}
}

proc update_MODELPARAM_VALUE.RInvL_01 { MODELPARAM_VALUE.RInvL_01 PARAM_VALUE.RInvL_01 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_01}] ${MODELPARAM_VALUE.RInvL_01}
}

proc update_MODELPARAM_VALUE.RInvL_02 { MODELPARAM_VALUE.RInvL_02 PARAM_VALUE.RInvL_02 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_02}] ${MODELPARAM_VALUE.RInvL_02}
}

proc update_MODELPARAM_VALUE.RInvL_10 { MODELPARAM_VALUE.RInvL_10 PARAM_VALUE.RInvL_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_10}] ${MODELPARAM_VALUE.RInvL_10}
}

proc update_MODELPARAM_VALUE.RInvL_11 { MODELPARAM_VALUE.RInvL_11 PARAM_VALUE.RInvL_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_11}] ${MODELPARAM_VALUE.RInvL_11}
}

proc update_MODELPARAM_VALUE.RInvL_12 { MODELPARAM_VALUE.RInvL_12 PARAM_VALUE.RInvL_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_12}] ${MODELPARAM_VALUE.RInvL_12}
}

proc update_MODELPARAM_VALUE.RInvL_20 { MODELPARAM_VALUE.RInvL_20 PARAM_VALUE.RInvL_20 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_20}] ${MODELPARAM_VALUE.RInvL_20}
}

proc update_MODELPARAM_VALUE.RInvL_21 { MODELPARAM_VALUE.RInvL_21 PARAM_VALUE.RInvL_21 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_21}] ${MODELPARAM_VALUE.RInvL_21}
}

proc update_MODELPARAM_VALUE.RInvL_22 { MODELPARAM_VALUE.RInvL_22 PARAM_VALUE.RInvL_22 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvL_22}] ${MODELPARAM_VALUE.RInvL_22}
}

proc update_MODELPARAM_VALUE.RInvR_00 { MODELPARAM_VALUE.RInvR_00 PARAM_VALUE.RInvR_00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_00}] ${MODELPARAM_VALUE.RInvR_00}
}

proc update_MODELPARAM_VALUE.RInvR_01 { MODELPARAM_VALUE.RInvR_01 PARAM_VALUE.RInvR_01 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_01}] ${MODELPARAM_VALUE.RInvR_01}
}

proc update_MODELPARAM_VALUE.RInvR_02 { MODELPARAM_VALUE.RInvR_02 PARAM_VALUE.RInvR_02 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_02}] ${MODELPARAM_VALUE.RInvR_02}
}

proc update_MODELPARAM_VALUE.RInvR_10 { MODELPARAM_VALUE.RInvR_10 PARAM_VALUE.RInvR_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_10}] ${MODELPARAM_VALUE.RInvR_10}
}

proc update_MODELPARAM_VALUE.RInvR_11 { MODELPARAM_VALUE.RInvR_11 PARAM_VALUE.RInvR_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_11}] ${MODELPARAM_VALUE.RInvR_11}
}

proc update_MODELPARAM_VALUE.RInvR_12 { MODELPARAM_VALUE.RInvR_12 PARAM_VALUE.RInvR_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_12}] ${MODELPARAM_VALUE.RInvR_12}
}

proc update_MODELPARAM_VALUE.RInvR_20 { MODELPARAM_VALUE.RInvR_20 PARAM_VALUE.RInvR_20 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_20}] ${MODELPARAM_VALUE.RInvR_20}
}

proc update_MODELPARAM_VALUE.RInvR_21 { MODELPARAM_VALUE.RInvR_21 PARAM_VALUE.RInvR_21 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_21}] ${MODELPARAM_VALUE.RInvR_21}
}

proc update_MODELPARAM_VALUE.RInvR_22 { MODELPARAM_VALUE.RInvR_22 PARAM_VALUE.RInvR_22 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RInvR_22}] ${MODELPARAM_VALUE.RInvR_22}
}

