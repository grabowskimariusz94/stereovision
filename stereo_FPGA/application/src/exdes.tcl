
################################################################
# This is a generated script based on design: exdes
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
set scripts_vivado_version 2020.2
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
# source exdes_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# checkTready, checkTready, aud_pat_gen, hdmi_acr_ctrl

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1761-2
   set_property BOARD_PART xilinx.com:vc707:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name exdes

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

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:user:Stereovision:1.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:axis_register_slice:1.1\
xilinx.com:ip:v_hdmi_rx_ss:3.1\
xilinx.com:ip:v_hdmi_tx_ss:3.1\
xilinx.com:ip:vid_phy_controller:2.2\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:axi_intc:4.1\
xilinx.com:ip:axi_uartlite:2.0\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
xilinx.com:ip:lmb_v10:3.0\
xilinx.com:ip:axi_iic:2.0\
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:microblaze:11.0\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:v_tpg:8.1\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
checkTready\
checkTready\
aud_pat_gen\
hdmi_acr_ctrl\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: v_tpg_ss_0
proc create_hier_cell_v_tpg_ss_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_v_tpg_ss_0() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_GPIO

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_TPG

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_video

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_video


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst m_axi_aresetn

  # Create instance: axi_gpio, and set properties
  set axi_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio

  # Create instance: v_tpg, and set properties
  set v_tpg [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:8.1 v_tpg ]
  set_property -dict [ list \
   CONFIG.COLOR_SWEEP {0} \
   CONFIG.DISPLAY_PORT {0} \
   CONFIG.FOREGROUND {0} \
   CONFIG.HAS_AXI4S_SLAVE {1} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.RAMP {0} \
   CONFIG.SAMPLES_PER_CLOCK {4} \
   CONFIG.SOLID_COLOR {0} \
   CONFIG.ZONE_PLATE {0} \
 ] $v_tpg

  # Create interface connections
  connect_bd_intf_net -intf_net intf_net_bdry_in_S_AXI_GPIO [get_bd_intf_pins S_AXI_GPIO] [get_bd_intf_pins axi_gpio/S_AXI]
  connect_bd_intf_net -intf_net intf_net_bdry_in_S_AXI_TPG [get_bd_intf_pins S_AXI_TPG] [get_bd_intf_pins v_tpg/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_bdry_in_s_axis_video [get_bd_intf_pins s_axis_video] [get_bd_intf_pins v_tpg/s_axis_video]
  connect_bd_intf_net -intf_net intf_net_v_tpg_m_axis_video [get_bd_intf_pins m_axis_video] [get_bd_intf_pins v_tpg/m_axis_video]

  # Create port connections
  connect_bd_net -net net_axi_gpio_gpio_io_o [get_bd_pins axi_gpio/gpio_io_o] [get_bd_pins v_tpg/ap_rst_n]
  connect_bd_net -net net_bdry_in_ap_clk [get_bd_pins ap_clk] [get_bd_pins axi_gpio/s_axi_aclk] [get_bd_pins v_tpg/ap_clk]
  connect_bd_net -net net_bdry_in_m_axi_aresetn [get_bd_pins m_axi_aresetn] [get_bd_pins axi_gpio/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: mb_ss_0
proc create_hier_cell_mb_ss_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_mb_ss_0() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock


  # Create pins
  create_bd_pin -dir O -type clk clk_out2
  create_bd_pin -dir O -from 0 -to 0 dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I hdmi_rx_irq
  create_bd_pin -dir I hdmi_tx_irq
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -type clk s_axi_aclk
  create_bd_pin -dir I vphy_irq

  # Create instance: axi_intc, and set properties
  set axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc ]

  # Create instance: axi_interconnect, and set properties
  set axi_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {9} \
 ] $axi_interconnect

  # Create instance: axi_uartlite, and set properties
  set axi_uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.UARTLITE_BOARD_INTERFACE {rs232_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {50.0} \
   CONFIG.CLKOUT1_JITTER {112.316} \
   CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_JITTER {112.316} \
   CONFIG.CLKOUT2_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_diff_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {200.000} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]
  set_property -dict [ list \
   CONFIG.C_LMB_NUM_SLAVES {1} \
 ] $dlmb_v10

  # Create instance: fmch_axi_iic, and set properties
  set fmch_axi_iic [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 fmch_axi_iic ]
  set_property -dict [ list \
   CONFIG.IIC_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $fmch_axi_iic

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]
  set_property -dict [ list \
   CONFIG.C_LMB_NUM_SLAVES {1} \
 ] $ilmb_v10

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create instance: mblaze, and set properties
  set mblaze [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 mblaze ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_AXI {0} \
   CONFIG.C_I_LMB {1} \
 ] $mblaze

  # Create instance: mdm, and set properties
  set mdm [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm ]

  # Create instance: rst_processor_1_100M, and set properties
  set rst_processor_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processor_1_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_processor_1_100M

  # Create instance: rst_processor_1_300M, and set properties
  set rst_processor_1_300M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processor_1_300M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_processor_1_300M

  # Create instance: xlconcat, and set properties
  set xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins sys_diff_clock] [get_bd_intf_pins clk_wiz/CLK_IN1_D]
  connect_bd_intf_net -intf_net intf_net_axi_intc_interrupt [get_bd_intf_pins axi_intc/interrupt] [get_bd_intf_pins mblaze/INTERRUPT]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_interconnect/M00_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins axi_interconnect/M01_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M02_AXI [get_bd_intf_pins M02_AXI] [get_bd_intf_pins axi_interconnect/M02_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M03_AXI [get_bd_intf_pins axi_interconnect/M03_AXI] [get_bd_intf_pins axi_uartlite/S_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M04_AXI [get_bd_intf_pins axi_interconnect/M04_AXI] [get_bd_intf_pins fmch_axi_iic/S_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M05_AXI [get_bd_intf_pins M05_AXI] [get_bd_intf_pins axi_interconnect/M05_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M06_AXI [get_bd_intf_pins M06_AXI] [get_bd_intf_pins axi_interconnect/M06_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M07_AXI [get_bd_intf_pins axi_intc/s_axi] [get_bd_intf_pins axi_interconnect/M07_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M08_AXI [get_bd_intf_pins M08_AXI] [get_bd_intf_pins axi_interconnect/M08_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_uartlite_UART [get_bd_intf_pins UART] [get_bd_intf_pins axi_uartlite/UART]
  connect_bd_intf_net -intf_net intf_net_dlmb_bram_if_cntlr_BRAM_PORT [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net intf_net_dlmb_v10_LMB_Sl_0 [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net intf_net_fmch_axi_iic_IIC [get_bd_intf_pins IIC] [get_bd_intf_pins fmch_axi_iic/IIC]
  connect_bd_intf_net -intf_net intf_net_ilmb_bram_if_cntlr_BRAM_PORT [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net intf_net_ilmb_v10_LMB_Sl_0 [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net intf_net_mblaze_DLMB [get_bd_intf_pins dlmb_v10/LMB_M] [get_bd_intf_pins mblaze/DLMB]
  connect_bd_intf_net -intf_net intf_net_mblaze_ILMB [get_bd_intf_pins ilmb_v10/LMB_M] [get_bd_intf_pins mblaze/ILMB]
  connect_bd_intf_net -intf_net intf_net_mblaze_M_AXI_DP [get_bd_intf_pins axi_interconnect/S00_AXI] [get_bd_intf_pins mblaze/M_AXI_DP]
  connect_bd_intf_net -intf_net intf_net_mdm_MBDEBUG_0 [get_bd_intf_pins mblaze/DEBUG] [get_bd_intf_pins mdm/MBDEBUG_0]

  # Create port connections
  connect_bd_net -net net_bdry_in_ext_reset_in [get_bd_pins ext_reset_in] [get_bd_pins clk_wiz/reset] [get_bd_pins rst_processor_1_100M/ext_reset_in] [get_bd_pins rst_processor_1_300M/ext_reset_in]
  connect_bd_net -net net_bdry_in_hdmi_rx_irq [get_bd_pins hdmi_rx_irq] [get_bd_pins xlconcat/In1]
  connect_bd_net -net net_bdry_in_hdmi_tx_irq [get_bd_pins hdmi_tx_irq] [get_bd_pins xlconcat/In2]
  connect_bd_net -net net_bdry_in_vphy_irq [get_bd_pins vphy_irq] [get_bd_pins xlconcat/In0]
  connect_bd_net -net net_clk_wiz_clk_out1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_intc/s_axi_aclk] [get_bd_pins axi_interconnect/ACLK] [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins axi_interconnect/M01_ACLK] [get_bd_pins axi_interconnect/M02_ACLK] [get_bd_pins axi_interconnect/M03_ACLK] [get_bd_pins axi_interconnect/M04_ACLK] [get_bd_pins axi_interconnect/M06_ACLK] [get_bd_pins axi_interconnect/M07_ACLK] [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins axi_uartlite/s_axi_aclk] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins fmch_axi_iic/s_axi_aclk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk] [get_bd_pins mblaze/Clk] [get_bd_pins rst_processor_1_100M/slowest_sync_clk]
  connect_bd_net -net net_clk_wiz_clk_out2 [get_bd_pins clk_out2] [get_bd_pins axi_interconnect/M05_ACLK] [get_bd_pins axi_interconnect/M08_ACLK] [get_bd_pins clk_wiz/clk_out2] [get_bd_pins rst_processor_1_300M/slowest_sync_clk]
  connect_bd_net -net net_clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins rst_processor_1_100M/aux_reset_in] [get_bd_pins rst_processor_1_100M/dcm_locked] [get_bd_pins rst_processor_1_300M/aux_reset_in] [get_bd_pins rst_processor_1_300M/dcm_locked]
  connect_bd_net -net net_mdm_Debug_SYS_Rst [get_bd_pins mdm/Debug_SYS_Rst] [get_bd_pins rst_processor_1_100M/mb_debug_sys_rst]
  connect_bd_net -net net_rst_processor_1_100M_bus_struct_reset [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst] [get_bd_pins rst_processor_1_100M/bus_struct_reset]
  connect_bd_net -net net_rst_processor_1_100M_interconnect_aresetn [get_bd_pins axi_interconnect/ARESETN] [get_bd_pins rst_processor_1_100M/interconnect_aresetn]
  connect_bd_net -net net_rst_processor_1_100M_mb_reset [get_bd_pins mblaze/Reset] [get_bd_pins rst_processor_1_100M/mb_reset]
  connect_bd_net -net net_rst_processor_1_100M_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins axi_intc/s_axi_aresetn] [get_bd_pins axi_interconnect/M00_ARESETN] [get_bd_pins axi_interconnect/M01_ARESETN] [get_bd_pins axi_interconnect/M02_ARESETN] [get_bd_pins axi_interconnect/M03_ARESETN] [get_bd_pins axi_interconnect/M04_ARESETN] [get_bd_pins axi_interconnect/M06_ARESETN] [get_bd_pins axi_interconnect/M07_ARESETN] [get_bd_pins axi_interconnect/S00_ARESETN] [get_bd_pins axi_uartlite/s_axi_aresetn] [get_bd_pins fmch_axi_iic/s_axi_aresetn] [get_bd_pins rst_processor_1_100M/peripheral_aresetn]
  connect_bd_net -net net_rst_processor_1_300M_interconnect_aresetn [get_bd_pins axi_interconnect/M05_ARESETN] [get_bd_pins axi_interconnect/M08_ARESETN] [get_bd_pins rst_processor_1_300M/interconnect_aresetn]
  connect_bd_net -net net_rst_processor_1_300M_peripheral_aresetn [get_bd_pins dcm_locked] [get_bd_pins rst_processor_1_300M/peripheral_aresetn]
  connect_bd_net -net net_xlconcat_dout [get_bd_pins axi_intc/intr] [get_bd_pins xlconcat/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: audio_ss_0
proc create_hier_cell_audio_ss_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_audio_ss_0() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 axis_audio_in

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 axis_audio_out


  # Create pins
  create_bd_pin -dir I -type clk ACLK
  create_bd_pin -dir I -type rst ARESETN
  create_bd_pin -dir I -from 19 -to 0 aud_acr_cts_in
  create_bd_pin -dir O -from 19 -to 0 aud_acr_cts_out
  create_bd_pin -dir I -from 19 -to 0 aud_acr_n_in
  create_bd_pin -dir O -from 19 -to 0 aud_acr_n_out
  create_bd_pin -dir I aud_acr_valid_in
  create_bd_pin -dir O aud_acr_valid_out
  create_bd_pin -dir O -type rst aud_rstn
  create_bd_pin -dir O -type clk audio_clk
  create_bd_pin -dir I -type clk hdmi_clk

  # Create instance: aud_pat_gen, and set properties
  set block_name aud_pat_gen
  set block_cell_name aud_pat_gen
  if { [catch {set aud_pat_gen [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $aud_pat_gen eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_interconnect, and set properties
  set axi_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
 ] $axi_interconnect

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.USE_DYN_RECONFIG {true} \
 ] $clk_wiz

  # Create instance: hdmi_acr_ctrl, and set properties
  set block_name hdmi_acr_ctrl
  set block_cell_name hdmi_acr_ctrl
  if { [catch {set hdmi_acr_ctrl [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $hdmi_acr_ctrl eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net intf_net_aud_pat_gen_axis_audio_out [get_bd_intf_pins axis_audio_out] [get_bd_intf_pins aud_pat_gen/axis_audio_out]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M00_AXI [get_bd_intf_pins aud_pat_gen/axi] [get_bd_intf_pins axi_interconnect/M00_AXI]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M01_AXI [get_bd_intf_pins axi_interconnect/M01_AXI] [get_bd_intf_pins hdmi_acr_ctrl/axi]
  connect_bd_intf_net -intf_net intf_net_axi_interconnect_M02_AXI [get_bd_intf_pins axi_interconnect/M02_AXI] [get_bd_intf_pins clk_wiz/s_axi_lite]
  connect_bd_intf_net -intf_net intf_net_bdry_in_S00_AXI [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net intf_net_bdry_in_axis_audio_in [get_bd_intf_pins axis_audio_in] [get_bd_intf_pins aud_pat_gen/axis_audio_in]

  # Create port connections
  connect_bd_net -net net_bdry_in_ACLK [get_bd_pins ACLK] [get_bd_pins aud_pat_gen/axi_aclk] [get_bd_pins axi_interconnect/ACLK] [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins axi_interconnect/M01_ACLK] [get_bd_pins axi_interconnect/M02_ACLK] [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins clk_wiz/clk_in1] [get_bd_pins clk_wiz/s_axi_aclk] [get_bd_pins hdmi_acr_ctrl/axi_aclk]
  connect_bd_net -net net_bdry_in_ARESETN [get_bd_pins ARESETN] [get_bd_pins aud_pat_gen/axi_aresetn] [get_bd_pins axi_interconnect/ARESETN] [get_bd_pins axi_interconnect/M00_ARESETN] [get_bd_pins axi_interconnect/M01_ARESETN] [get_bd_pins axi_interconnect/M02_ARESETN] [get_bd_pins axi_interconnect/S00_ARESETN] [get_bd_pins clk_wiz/s_axi_aresetn] [get_bd_pins hdmi_acr_ctrl/axi_aresetn]
  connect_bd_net -net net_bdry_in_aud_acr_cts_in [get_bd_pins aud_acr_cts_in] [get_bd_pins hdmi_acr_ctrl/aud_acr_cts_in]
  connect_bd_net -net net_bdry_in_aud_acr_n_in [get_bd_pins aud_acr_n_in] [get_bd_pins hdmi_acr_ctrl/aud_acr_n_in]
  connect_bd_net -net net_bdry_in_aud_acr_valid_in [get_bd_pins aud_acr_valid_in] [get_bd_pins hdmi_acr_ctrl/aud_acr_valid_in]
  connect_bd_net -net net_bdry_in_hdmi_clk [get_bd_pins hdmi_clk] [get_bd_pins hdmi_acr_ctrl/hdmi_clk]
  connect_bd_net -net net_clk_wiz_clk_out1 [get_bd_pins audio_clk] [get_bd_pins aud_pat_gen/aud_clk] [get_bd_pins aud_pat_gen/axis_clk] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins hdmi_acr_ctrl/aud_clk]
  connect_bd_net -net net_clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins hdmi_acr_ctrl/pll_lock_in]
  connect_bd_net -net net_hdmi_acr_ctrl_aud_acr_cts_out [get_bd_pins aud_acr_cts_out] [get_bd_pins hdmi_acr_ctrl/aud_acr_cts_out]
  connect_bd_net -net net_hdmi_acr_ctrl_aud_acr_n_out [get_bd_pins aud_acr_n_out] [get_bd_pins hdmi_acr_ctrl/aud_acr_n_out]
  connect_bd_net -net net_hdmi_acr_ctrl_aud_acr_valid_out [get_bd_pins aud_acr_valid_out] [get_bd_pins hdmi_acr_ctrl/aud_acr_valid_out]
  connect_bd_net -net net_hdmi_acr_ctrl_aud_resetn_out [get_bd_pins aud_rstn] [get_bd_pins aud_pat_gen/axis_resetn] [get_bd_pins hdmi_acr_ctrl/aud_resetn_out]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set RX_DDC_OUT [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 RX_DDC_OUT ]

  set TX_DDC_OUT [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 TX_DDC_OUT ]

  set fmch_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 fmch_iic ]

  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]

  set sys_diff_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $sys_diff_clock


  # Create ports
  set GPIO_DIP_SW0 [ create_bd_port -dir I GPIO_DIP_SW0 ]
  set GPIO_DIP_SW1 [ create_bd_port -dir I GPIO_DIP_SW1 ]
  set GPIO_DIP_SW2 [ create_bd_port -dir I GPIO_DIP_SW2 ]
  set GPIO_DIP_SW3 [ create_bd_port -dir I GPIO_DIP_SW3 ]
  set HDMI_RX_CLK_N_IN [ create_bd_port -dir I HDMI_RX_CLK_N_IN ]
  set HDMI_RX_CLK_P_IN [ create_bd_port -dir I HDMI_RX_CLK_P_IN ]
  set HDMI_RX_DAT_N_IN [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_N_IN ]
  set HDMI_RX_DAT_P_IN [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_P_IN ]
  set HDMI_TX_CLK_N_OUT [ create_bd_port -dir O HDMI_TX_CLK_N_OUT ]
  set HDMI_TX_CLK_P_OUT [ create_bd_port -dir O HDMI_TX_CLK_P_OUT ]
  set HDMI_TX_DAT_N_OUT [ create_bd_port -dir O -from 2 -to 0 HDMI_TX_DAT_N_OUT ]
  set HDMI_TX_DAT_P_OUT [ create_bd_port -dir O -from 2 -to 0 HDMI_TX_DAT_P_OUT ]
  set LED0 [ create_bd_port -dir O LED0 ]
  set RX_DET_IN [ create_bd_port -dir I RX_DET_IN ]
  set RX_HPD_OUT [ create_bd_port -dir O -from 0 -to 0 RX_HPD_OUT ]
  set RX_I2C_EN_N_OUT [ create_bd_port -dir O -from 0 -to 0 RX_I2C_EN_N_OUT ]
  set RX_REFCLK_N_OUT [ create_bd_port -dir O RX_REFCLK_N_OUT ]
  set RX_REFCLK_P_OUT [ create_bd_port -dir O RX_REFCLK_P_OUT ]
  set SI5324_LOL_IN [ create_bd_port -dir I SI5324_LOL_IN ]
  set SI5324_RST_OUT [ create_bd_port -dir O -from 0 -to 0 SI5324_RST_OUT ]
  set TX_CLKSEL_OUT [ create_bd_port -dir O -from 0 -to 0 TX_CLKSEL_OUT ]
  set TX_EN_OUT [ create_bd_port -dir O -from 0 -to 0 TX_EN_OUT ]
  set TX_HPD_IN [ create_bd_port -dir I TX_HPD_IN ]
  set TX_REFCLK_N_IN [ create_bd_port -dir I TX_REFCLK_N_IN ]
  set TX_REFCLK_P_IN [ create_bd_port -dir I TX_REFCLK_P_IN ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: Stereovision_0, and set properties
  set Stereovision_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Stereovision:1.0 Stereovision_0 ]
  set_property -dict [ list \
   CONFIG.FORMAT {1} \
   CONFIG.MAX_DISP {64} \
 ] $Stereovision_0

  # Create instance: audio_ss_0
  create_hier_cell_audio_ss_0 [current_bd_instance .] audio_ss_0

  # Create instance: checkTready_0, and set properties
  set block_name checkTready
  set block_cell_name checkTready_0
  if { [catch {set checkTready_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $checkTready_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: checkTready_1, and set properties
  set block_name checkTready
  set block_cell_name checkTready_1
  if { [catch {set checkTready_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $checkTready_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: gnd_const, and set properties
  set gnd_const [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd_const ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $gnd_const

  # Create instance: mb_ss_0
  create_hier_cell_mb_ss_0 [current_bd_instance .] mb_ss_0

  # Create instance: rx_video_axis_reg_slice, and set properties
  set rx_video_axis_reg_slice [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 rx_video_axis_reg_slice ]

  # Create instance: tx_video_axis_reg_slice, and set properties
  set tx_video_axis_reg_slice [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 tx_video_axis_reg_slice ]

  # Create instance: v_hdmi_rx_ss, and set properties
  set v_hdmi_rx_ss [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hdmi_rx_ss:3.1 v_hdmi_rx_ss ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {10} \
   CONFIG.C_ADD_MARK_DBG {false} \
   CONFIG.C_CD_INVERT {true} \
   CONFIG.C_EDID_RAM_SIZE {256} \
   CONFIG.C_EXDES_AXILITE_FREQ {100} \
   CONFIG.C_EXDES_NIDRU {true} \
   CONFIG.C_EXDES_RX_PLL_SELECTION {0} \
   CONFIG.C_EXDES_TOPOLOGY {0} \
   CONFIG.C_EXDES_TX_PLL_SELECTION {3} \
   CONFIG.C_HDMI_FAST_SWITCH {true} \
   CONFIG.C_HDMI_VERSION {3} \
   CONFIG.C_HPD_INVERT {true} \
   CONFIG.C_INCLUDE_HDCP_1_4 {false} \
   CONFIG.C_INCLUDE_HDCP_2_2 {false} \
   CONFIG.C_INCLUDE_LOW_RESO_VID {false} \
   CONFIG.C_INCLUDE_YUV420_SUP {false} \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {4} \
   CONFIG.C_MAX_BITS_PER_COMPONENT {8} \
   CONFIG.C_VALIDATION_ENABLE {false} \
   CONFIG.C_VID_INTERFACE {0} \
 ] $v_hdmi_rx_ss

  # Create instance: v_hdmi_tx_ss, and set properties
  set v_hdmi_tx_ss [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hdmi_tx_ss:3.1 v_hdmi_tx_ss ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {13} \
   CONFIG.C_ADD_MARK_DBG {false} \
   CONFIG.C_EXDES_RX_PLL_SELECTION {3} \
   CONFIG.C_EXDES_TX_PLL_SELECTION {0} \
   CONFIG.C_HDMI_FAST_SWITCH {true} \
   CONFIG.C_HDMI_VERSION {3} \
   CONFIG.C_HPD_INVERT {false} \
   CONFIG.C_HYSTERESIS_LEVEL {1023} \
   CONFIG.C_INCLUDE_HDCP_1_4 {false} \
   CONFIG.C_INCLUDE_HDCP_2_2 {false} \
   CONFIG.C_INCLUDE_LOW_RESO_VID {false} \
   CONFIG.C_INCLUDE_YUV420_SUP {false} \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {4} \
   CONFIG.C_MAX_BITS_PER_COMPONENT {8} \
   CONFIG.C_VALIDATION_ENABLE {false} \
   CONFIG.C_VID_INTERFACE {0} \
 ] $v_hdmi_tx_ss

  # Create instance: v_tpg_ss_0
  create_hier_cell_v_tpg_ss_0 [current_bd_instance .] v_tpg_ss_0

  # Create instance: vcc_const, and set properties
  set vcc_const [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc_const ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $vcc_const

  # Create instance: vid_phy_controller, and set properties
  set vid_phy_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:vid_phy_controller:2.2 vid_phy_controller ]
  set_property -dict [ list \
   CONFIG.Adv_Clk_Mode {false} \
   CONFIG.CHANNEL_ENABLE {X0Y0 X0Y1 X0Y2} \
   CONFIG.CHANNEL_SITE {X0Y0} \
   CONFIG.C_FOR_UPGRADE_ARCHITECTURE {kintex7} \
   CONFIG.C_FOR_UPGRADE_DEVICE {xc7k325t} \
   CONFIG.C_FOR_UPGRADE_PACKAGE {ffg900} \
   CONFIG.C_FOR_UPGRADE_PART {xc7k325tffg900-2} \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {4} \
   CONFIG.C_INT_HDMI_VER_CMPTBLE {3} \
   CONFIG.C_NIDRU {true} \
   CONFIG.C_NIDRU_REFCLK_SEL {0} \
   CONFIG.C_RX_PLL_SELECTION {3} \
   CONFIG.C_RX_REFCLK_SEL {0} \
   CONFIG.C_Rx_No_Of_Channels {3} \
   CONFIG.C_Rx_Protocol {HDMI} \
   CONFIG.C_TX_PLL_SELECTION {0} \
   CONFIG.C_TX_REFCLK_SEL {0} \
   CONFIG.C_Tx_No_Of_Channels {3} \
   CONFIG.C_Tx_Protocol {HDMI} \
   CONFIG.C_Txrefclk_Rdy_Invert {true} \
   CONFIG.C_Use_GT_CH4_HDMI {false} \
   CONFIG.C_Use_Oddr_for_Tmds_Clkout {true} \
   CONFIG.C_vid_phy_rx_axi4s_ch_TDATA_WIDTH {40} \
   CONFIG.C_vid_phy_rx_axi4s_ch_TUSER_WIDTH {1} \
   CONFIG.C_vid_phy_tx_axi4s_ch_TDATA_WIDTH {40} \
   CONFIG.C_vid_phy_tx_axi4s_ch_TUSER_WIDTH {1} \
   CONFIG.DRPCLK_FREQ {100.0} \
   CONFIG.Rx_GT_Line_Rate {5.94} \
   CONFIG.Rx_GT_Ref_Clock_Freq {148.500} \
   CONFIG.Rx_Max_GT_Line_Rate {5.94} \
   CONFIG.Transceiver_Width {4} \
   CONFIG.Tx_Buffer_Bypass {true} \
   CONFIG.Tx_GT_Line_Rate {5.94} \
   CONFIG.Tx_GT_Ref_Clock_Freq {148.500} \
   CONFIG.Tx_Max_GT_Line_Rate {5.94} \
   CONFIG.check_pll_selection {0} \
 ] $vid_phy_controller

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net Stereovision_0_M_AXIS [get_bd_intf_pins Stereovision_0/M_AXIS] [get_bd_intf_pins checkTready_1/VIDEO_IN]
  connect_bd_intf_net -intf_net checkTready_1_VIDEO_OUT [get_bd_intf_pins checkTready_1/VIDEO_OUT] [get_bd_intf_pins v_hdmi_tx_ss/VIDEO_IN]
  connect_bd_intf_net -intf_net intf_net_audio_ss_0_axis_audio_out [get_bd_intf_pins audio_ss_0/axis_audio_out] [get_bd_intf_pins v_hdmi_tx_ss/AUDIO_IN]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_IIC [get_bd_intf_ports fmch_iic] [get_bd_intf_pins mb_ss_0/IIC]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M00_AXI [get_bd_intf_pins mb_ss_0/M00_AXI] [get_bd_intf_pins vid_phy_controller/vid_phy_axi4lite]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M01_AXI [get_bd_intf_pins mb_ss_0/M01_AXI] [get_bd_intf_pins v_hdmi_rx_ss/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M02_AXI [get_bd_intf_pins mb_ss_0/M02_AXI] [get_bd_intf_pins v_hdmi_tx_ss/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M05_AXI [get_bd_intf_pins mb_ss_0/M05_AXI] [get_bd_intf_pins v_tpg_ss_0/S_AXI_TPG]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M06_AXI [get_bd_intf_pins audio_ss_0/S00_AXI] [get_bd_intf_pins mb_ss_0/M06_AXI]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M08_AXI [get_bd_intf_pins mb_ss_0/M08_AXI] [get_bd_intf_pins v_tpg_ss_0/S_AXI_GPIO]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins mb_ss_0/UART]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_rx_ss_AUDIO_OUT [get_bd_intf_pins audio_ss_0/axis_audio_in] [get_bd_intf_pins v_hdmi_rx_ss/AUDIO_OUT]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_rx_ss_DDC_OUT [get_bd_intf_ports RX_DDC_OUT] [get_bd_intf_pins v_hdmi_rx_ss/DDC_OUT]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_rx_ss_VIDEO_OUT [get_bd_intf_pins rx_video_axis_reg_slice/S_AXIS] [get_bd_intf_pins v_hdmi_rx_ss/VIDEO_OUT]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_tx_ss_DDC_OUT [get_bd_intf_ports TX_DDC_OUT] [get_bd_intf_pins v_hdmi_tx_ss/DDC_OUT]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_tx_ss_LINK_DATA0_OUT [get_bd_intf_pins v_hdmi_tx_ss/LINK_DATA0_OUT] [get_bd_intf_pins vid_phy_controller/vid_phy_tx_axi4s_ch0]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_tx_ss_LINK_DATA1_OUT [get_bd_intf_pins v_hdmi_tx_ss/LINK_DATA1_OUT] [get_bd_intf_pins vid_phy_controller/vid_phy_tx_axi4s_ch1]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_tx_ss_LINK_DATA2_OUT [get_bd_intf_pins v_hdmi_tx_ss/LINK_DATA2_OUT] [get_bd_intf_pins vid_phy_controller/vid_phy_tx_axi4s_ch2]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_rx_axi4s_ch0 [get_bd_intf_pins v_hdmi_rx_ss/LINK_DATA0_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch0]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_rx_axi4s_ch1 [get_bd_intf_pins v_hdmi_rx_ss/LINK_DATA1_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch1]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_rx_axi4s_ch2 [get_bd_intf_pins v_hdmi_rx_ss/LINK_DATA2_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch2]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_status_sb_rx [get_bd_intf_pins v_hdmi_rx_ss/SB_STATUS_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_status_sb_rx]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_status_sb_tx [get_bd_intf_pins v_hdmi_tx_ss/SB_STATUS_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_status_sb_tx]
  connect_bd_intf_net -intf_net rx_video_axis_reg_slice_M_AXIS [get_bd_intf_pins rx_video_axis_reg_slice/M_AXIS] [get_bd_intf_pins v_tpg_ss_0/s_axis_video]
  connect_bd_intf_net -intf_net sys_diff_clock_1 [get_bd_intf_ports sys_diff_clock] [get_bd_intf_pins mb_ss_0/sys_diff_clock]
  connect_bd_intf_net -intf_net tx_video_axis_reg_slice_M_AXIS [get_bd_intf_pins Stereovision_0/S_AXIS] [get_bd_intf_pins checkTready_0/VIDEO_OUT]
  connect_bd_intf_net -intf_net tx_video_axis_reg_slice_M_AXIS1 [get_bd_intf_pins checkTready_0/VIDEO_IN] [get_bd_intf_pins tx_video_axis_reg_slice/M_AXIS]
  connect_bd_intf_net -intf_net v_tpg_ss_0_m_axis_video [get_bd_intf_pins tx_video_axis_reg_slice/S_AXIS] [get_bd_intf_pins v_tpg_ss_0/m_axis_video]

  # Create port connections
  connect_bd_net -net GPIO_DIP_SW0_1 [get_bd_ports GPIO_DIP_SW0] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net GPIO_DIP_SW1_1 [get_bd_ports GPIO_DIP_SW1] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net GPIO_DIP_SW2_1 [get_bd_ports GPIO_DIP_SW2] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net GPIO_DIP_SW3_1 [get_bd_ports GPIO_DIP_SW3] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net net_audio_ss_0_aud_acr_cts_out [get_bd_pins audio_ss_0/aud_acr_cts_out] [get_bd_pins v_hdmi_tx_ss/acr_cts]
  connect_bd_net -net net_audio_ss_0_aud_acr_n_out [get_bd_pins audio_ss_0/aud_acr_n_out] [get_bd_pins v_hdmi_tx_ss/acr_n]
  connect_bd_net -net net_audio_ss_0_aud_acr_valid_out [get_bd_pins audio_ss_0/aud_acr_valid_out] [get_bd_pins v_hdmi_tx_ss/acr_valid]
  connect_bd_net -net net_audio_ss_0_aud_rstn [get_bd_pins audio_ss_0/aud_rstn] [get_bd_pins v_hdmi_rx_ss/s_axis_audio_aresetn] [get_bd_pins v_hdmi_tx_ss/s_axis_audio_aresetn]
  connect_bd_net -net net_audio_ss_0_audio_clk [get_bd_pins audio_ss_0/audio_clk] [get_bd_pins v_hdmi_rx_ss/s_axis_audio_aclk] [get_bd_pins v_hdmi_tx_ss/s_axis_audio_aclk]
  connect_bd_net -net net_bdry_in_HDMI_RX_CLK_N_IN [get_bd_ports HDMI_RX_CLK_N_IN] [get_bd_pins vid_phy_controller/mgtrefclk0_pad_n_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_CLK_P_IN [get_bd_ports HDMI_RX_CLK_P_IN] [get_bd_pins vid_phy_controller/mgtrefclk0_pad_p_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_DAT_N_IN [get_bd_ports HDMI_RX_DAT_N_IN] [get_bd_pins vid_phy_controller/phy_rxn_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_DAT_P_IN [get_bd_ports HDMI_RX_DAT_P_IN] [get_bd_pins vid_phy_controller/phy_rxp_in]
  connect_bd_net -net net_bdry_in_RX_DET_IN [get_bd_ports RX_DET_IN] [get_bd_pins v_hdmi_rx_ss/cable_detect]
  connect_bd_net -net net_bdry_in_SI5324_LOL_IN [get_bd_ports SI5324_LOL_IN] [get_bd_pins vid_phy_controller/tx_refclk_rdy]
  connect_bd_net -net net_bdry_in_TX_HPD_IN [get_bd_ports TX_HPD_IN] [get_bd_pins v_hdmi_tx_ss/hpd]
  connect_bd_net -net net_bdry_in_reset [get_bd_ports reset] [get_bd_pins mb_ss_0/ext_reset_in]
  connect_bd_net -net net_gnd_const_dout [get_bd_ports RX_I2C_EN_N_OUT] [get_bd_pins gnd_const/dout]
  connect_bd_net -net net_mb_ss_0_clk_out2 [get_bd_pins Stereovision_0/aclk] [get_bd_pins checkTready_0/s_axis_video_aclk] [get_bd_pins checkTready_1/s_axis_video_aclk] [get_bd_pins mb_ss_0/clk_out2] [get_bd_pins rx_video_axis_reg_slice/aclk] [get_bd_pins tx_video_axis_reg_slice/aclk] [get_bd_pins v_hdmi_rx_ss/s_axis_video_aclk] [get_bd_pins v_hdmi_tx_ss/s_axis_video_aclk] [get_bd_pins v_tpg_ss_0/ap_clk]
  connect_bd_net -net net_mb_ss_0_dcm_locked [get_bd_pins Stereovision_0/aresetn] [get_bd_pins mb_ss_0/dcm_locked] [get_bd_pins rx_video_axis_reg_slice/aresetn] [get_bd_pins tx_video_axis_reg_slice/aresetn] [get_bd_pins v_hdmi_rx_ss/s_axis_video_aresetn] [get_bd_pins v_hdmi_tx_ss/s_axis_video_aresetn] [get_bd_pins v_tpg_ss_0/m_axi_aresetn]
  connect_bd_net -net net_mb_ss_0_peripheral_aresetn [get_bd_ports SI5324_RST_OUT] [get_bd_pins audio_ss_0/ARESETN] [get_bd_pins mb_ss_0/peripheral_aresetn] [get_bd_pins v_hdmi_rx_ss/s_axi_cpu_aresetn] [get_bd_pins v_hdmi_tx_ss/s_axi_cpu_aresetn] [get_bd_pins vid_phy_controller/vid_phy_axi4lite_aresetn] [get_bd_pins vid_phy_controller/vid_phy_sb_aresetn]
  connect_bd_net -net net_mb_ss_0_s_axi_aclk [get_bd_pins audio_ss_0/ACLK] [get_bd_pins mb_ss_0/s_axi_aclk] [get_bd_pins v_hdmi_rx_ss/s_axi_cpu_aclk] [get_bd_pins v_hdmi_tx_ss/s_axi_cpu_aclk] [get_bd_pins vid_phy_controller/vid_phy_axi4lite_aclk] [get_bd_pins vid_phy_controller/vid_phy_sb_aclk]
  connect_bd_net -net net_v_hdmi_rx_ss_acr_cts [get_bd_pins audio_ss_0/aud_acr_cts_in] [get_bd_pins v_hdmi_rx_ss/acr_cts]
  connect_bd_net -net net_v_hdmi_rx_ss_acr_n [get_bd_pins audio_ss_0/aud_acr_n_in] [get_bd_pins v_hdmi_rx_ss/acr_n]
  connect_bd_net -net net_v_hdmi_rx_ss_acr_valid [get_bd_pins audio_ss_0/aud_acr_valid_in] [get_bd_pins v_hdmi_rx_ss/acr_valid]
  connect_bd_net -net net_v_hdmi_rx_ss_fid [get_bd_pins v_hdmi_rx_ss/fid] [get_bd_pins v_hdmi_tx_ss/fid]
  connect_bd_net -net net_v_hdmi_rx_ss_hpd [get_bd_ports RX_HPD_OUT] [get_bd_pins v_hdmi_rx_ss/hpd]
  connect_bd_net -net net_v_hdmi_rx_ss_irq [get_bd_pins mb_ss_0/hdmi_rx_irq] [get_bd_pins v_hdmi_rx_ss/irq]
  connect_bd_net -net net_v_hdmi_tx_ss_irq [get_bd_pins mb_ss_0/hdmi_tx_irq] [get_bd_pins v_hdmi_tx_ss/irq]
  connect_bd_net -net net_v_hdmi_tx_ss_locked [get_bd_ports LED0] [get_bd_pins v_hdmi_tx_ss/locked]
  connect_bd_net -net net_vcc_const_dout [get_bd_ports TX_CLKSEL_OUT] [get_bd_ports TX_EN_OUT] [get_bd_pins vcc_const/dout] [get_bd_pins vid_phy_controller/vid_phy_rx_axi4s_aresetn] [get_bd_pins vid_phy_controller/vid_phy_tx_axi4s_aresetn]
  connect_bd_net -net net_vid_phy_controller_irq [get_bd_pins mb_ss_0/vphy_irq] [get_bd_pins vid_phy_controller/irq]
  connect_bd_net -net net_vid_phy_controller_phy_txn_out [get_bd_ports HDMI_TX_DAT_N_OUT] [get_bd_pins vid_phy_controller/phy_txn_out]
  connect_bd_net -net net_vid_phy_controller_phy_txp_out [get_bd_ports HDMI_TX_DAT_P_OUT] [get_bd_pins vid_phy_controller/phy_txp_out]
  connect_bd_net -net net_vid_phy_controller_rx_tmds_clk_n [get_bd_ports RX_REFCLK_N_OUT] [get_bd_pins vid_phy_controller/rx_tmds_clk_n]
  connect_bd_net -net net_vid_phy_controller_rx_tmds_clk_p [get_bd_ports RX_REFCLK_P_OUT] [get_bd_pins vid_phy_controller/rx_tmds_clk_p]
  connect_bd_net -net net_vid_phy_controller_rx_video_clk [get_bd_pins v_hdmi_rx_ss/video_clk] [get_bd_pins vid_phy_controller/rx_video_clk]
  connect_bd_net -net net_vid_phy_controller_rxoutclk [get_bd_pins v_hdmi_rx_ss/link_clk] [get_bd_pins vid_phy_controller/rxoutclk] [get_bd_pins vid_phy_controller/vid_phy_rx_axi4s_aclk]
  connect_bd_net -net net_vid_phy_controller_tx_tmds_clk [get_bd_pins audio_ss_0/hdmi_clk] [get_bd_pins vid_phy_controller/tx_tmds_clk]
  connect_bd_net -net net_vid_phy_controller_tx_tmds_clk_n [get_bd_ports HDMI_TX_CLK_N_OUT] [get_bd_pins vid_phy_controller/tx_tmds_clk_n]
  connect_bd_net -net net_vid_phy_controller_tx_tmds_clk_p [get_bd_ports HDMI_TX_CLK_P_OUT] [get_bd_pins vid_phy_controller/tx_tmds_clk_p]
  connect_bd_net -net net_vid_phy_controller_tx_video_clk [get_bd_pins v_hdmi_tx_ss/video_clk] [get_bd_pins vid_phy_controller/tx_video_clk]
  connect_bd_net -net net_vid_phy_controller_txoutclk [get_bd_pins v_hdmi_tx_ss/link_clk] [get_bd_pins vid_phy_controller/txoutclk] [get_bd_pins vid_phy_controller/vid_phy_tx_axi4s_aclk]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Stereovision_0/switch_img] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins checkTready_0/PauseEnable] [get_bd_pins checkTready_1/PauseEnable] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  assign_bd_address -offset 0x80000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs audio_ss_0/aud_pat_gen/axi/reg0] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs v_tpg_ss_0/axi_gpio/S_AXI/Reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/axi_uartlite/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs audio_ss_0/clk_wiz/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/fmch_axi_iic/S_AXI/Reg] -force
  assign_bd_address -offset 0xC0000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs audio_ss_0/hdmi_acr_ctrl/axi/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Instruction] [get_bd_addr_segs mb_ss_0/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs v_hdmi_rx_ss/S_AXI_CPU_IN/Reg] -force
  assign_bd_address -offset 0x44A20000 -range 0x00020000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs v_hdmi_tx_ss/S_AXI_CPU_IN/Reg] -force
  assign_bd_address -offset 0x44A40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs v_tpg_ss_0/v_tpg/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0x44A50000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs vid_phy_controller/vid_phy_axi4lite/Reg] -force


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


