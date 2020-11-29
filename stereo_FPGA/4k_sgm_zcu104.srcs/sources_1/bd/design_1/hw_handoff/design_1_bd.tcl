
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Inter_col_v1_0, RGB_to_Grayscale_v1_0, hdmi_in_uhd_4, hdmi_out_uhd_4, hdmi_out_uhd_4, hdmi_out_uhd_4

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu7ev-ffvc1156-2-e
   set_property BOARD_PART xilinx.com:zcu104:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create instance: Inter_col_v1_0_0, and set properties
  set block_name Inter_col_v1_0
  set block_cell_name Inter_col_v1_0_0
  if { [catch {set Inter_col_v1_0_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Inter_col_v1_0_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RGB_to_Grayscale_v1_0_0, and set properties
  set block_name RGB_to_Grayscale_v1_0
  set block_cell_name RGB_to_Grayscale_v1_0_0
  if { [catch {set RGB_to_Grayscale_v1_0_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RGB_to_Grayscale_v1_0_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hdmi_in_uhd_4_0, and set properties
  set block_name hdmi_in_uhd_4
  set block_cell_name hdmi_in_uhd_4_0
  if { [catch {set hdmi_in_uhd_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hdmi_in_uhd_4_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hdmi_out_uhd_4_0, and set properties
  set block_name hdmi_out_uhd_4
  set block_cell_name hdmi_out_uhd_4_0
  if { [catch {set hdmi_out_uhd_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hdmi_out_uhd_4_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.name {outL} \
 ] $hdmi_out_uhd_4_0

  # Create instance: hdmi_out_uhd_4_1, and set properties
  set block_name hdmi_out_uhd_4
  set block_cell_name hdmi_out_uhd_4_1
  if { [catch {set hdmi_out_uhd_4_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hdmi_out_uhd_4_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.name {outR} \
 ] $hdmi_out_uhd_4_1

  # Create instance: hdmi_out_uhd_4_2, and set properties
  set block_name hdmi_out_uhd_4
  set block_cell_name hdmi_out_uhd_4_2
  if { [catch {set hdmi_out_uhd_4_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hdmi_out_uhd_4_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.name {gray} \
 ] $hdmi_out_uhd_4_2

  # Create interface connections
  connect_bd_intf_net -intf_net Inter_col_v1_0_0_m_axis_l [get_bd_intf_pins Inter_col_v1_0_0/m_axis_l] [get_bd_intf_pins hdmi_out_uhd_4_0/VIDEO_OUT]
  connect_bd_intf_net -intf_net Inter_col_v1_0_0_m_axis_r [get_bd_intf_pins Inter_col_v1_0_0/m_axis_r] [get_bd_intf_pins hdmi_out_uhd_4_1/VIDEO_OUT]
  connect_bd_intf_net -intf_net hdmi_in_uhd_4_0_VIDEO_IN [get_bd_intf_pins RGB_to_Grayscale_v1_0_0/s_axis_rgb] [get_bd_intf_pins hdmi_in_uhd_4_0/VIDEO_IN]

  # Create port connections
  connect_bd_net -net Inter_col_v1_0_0_s_axis_lr_tready [get_bd_pins Inter_col_v1_0_0/s_axis_lr_tready] [get_bd_pins RGB_to_Grayscale_v1_0_0/m_axis_gray_tready]
  connect_bd_net -net RGB_to_Grayscale_v1_0_0_m_axis_gray_tdata [get_bd_pins Inter_col_v1_0_0/s_axis_lr_tdata] [get_bd_pins RGB_to_Grayscale_v1_0_0/m_axis_gray_tdata] [get_bd_pins hdmi_out_uhd_4_2/VIDEO_OUT_tdata]
  connect_bd_net -net RGB_to_Grayscale_v1_0_0_m_axis_gray_tlast [get_bd_pins Inter_col_v1_0_0/s_axis_lr_tlast] [get_bd_pins RGB_to_Grayscale_v1_0_0/m_axis_gray_tlast] [get_bd_pins hdmi_out_uhd_4_2/VIDEO_OUT_tlast]
  connect_bd_net -net RGB_to_Grayscale_v1_0_0_m_axis_gray_tuser [get_bd_pins Inter_col_v1_0_0/s_axis_lr_tuser] [get_bd_pins RGB_to_Grayscale_v1_0_0/m_axis_gray_tuser] [get_bd_pins hdmi_out_uhd_4_2/VIDEO_OUT_tuser]
  connect_bd_net -net RGB_to_Grayscale_v1_0_0_m_axis_gray_tvalid [get_bd_pins Inter_col_v1_0_0/s_axis_lr_tvalid] [get_bd_pins RGB_to_Grayscale_v1_0_0/m_axis_gray_tvalid] [get_bd_pins hdmi_out_uhd_4_2/VIDEO_OUT_tvalid]
  connect_bd_net -net hdmi_in_uhd_4_0_s_axis_video_aclk [get_bd_pins Inter_col_v1_0_0/aclk] [get_bd_pins RGB_to_Grayscale_v1_0_0/aclk] [get_bd_pins hdmi_in_uhd_4_0/s_axis_video_aclk] [get_bd_pins hdmi_out_uhd_4_0/s_axis_video_aclk] [get_bd_pins hdmi_out_uhd_4_1/s_axis_video_aclk] [get_bd_pins hdmi_out_uhd_4_2/s_axis_video_aclk]
  connect_bd_net -net hdmi_in_uhd_4_0_s_axis_video_aresetn [get_bd_pins Inter_col_v1_0_0/aresetn] [get_bd_pins RGB_to_Grayscale_v1_0_0/aresetn] [get_bd_pins hdmi_in_uhd_4_0/s_axis_video_aresetn]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


