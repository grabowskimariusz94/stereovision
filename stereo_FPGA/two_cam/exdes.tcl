
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
# checkTready, aud_pat_gen, hdmi_acr_ctrl

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
xilinx.com:user:UART_Mux:1.0\
xilinx.com:user:Video_Mux:1.0\
xilinx.com:user:Video_Synch:1.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:mig_7series:4.2\
xilinx.com:ip:axis_register_slice:1.1\
xilinx.com:ip:system_ila:1.1\
xilinx.com:ip:v_hdmi_rx_ss:3.1\
xilinx.com:ip:v_hdmi_tx_ss:3.1\
xilinx.com:ip:vid_phy_controller:2.2\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:axi_intc:4.1\
xilinx.com:ip:axi_uartlite:2.0\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
xilinx.com:ip:lmb_v10:3.0\
xilinx.com:ip:axi_iic:2.0\
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:microblaze:11.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:xlconcat:2.1\
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
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_exdes_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {﻿<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  }
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>exdes_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7vx485t-ffg1761/-2</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>Differential</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>Use System Clock</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE HIGH</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>0</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <FPGADevice>}
   puts $mig_prj_file {    <selected>7v/xc7v585t-ffg1761</selected>}
   puts $mig_prj_file {    <selected>7v/xc7vx330t-ffg1761</selected>}
   puts $mig_prj_file {    <selected>7v/xc7vx690t-ffg1761</selected>}
   puts $mig_prj_file {    <selected>7v/xc7vx690t_CIV-ffg1761</selected>}
   puts $mig_prj_file {  </FPGADevice>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41J128M8XX-125</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>1250</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>200</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 8.000</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>8</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>64</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Normal</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName/>}
   puts $mig_prj_file {    <RowAddress>14</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>1073741824</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>ROW_BANK_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A20" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B21" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B17" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A21" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="B19" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="C20" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A19" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A17" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D20" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="C18" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D17" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="C19" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D21" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="C21" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D18" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K17" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="G18" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="H19" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K19" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J17" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_cs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F12" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="A14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="C23" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="D25" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="C31" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F31" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dm[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="N14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="H13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="J13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="L16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="L15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="H14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="J15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[16]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[17]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="F15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[18]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[19]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="N13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="G13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[20]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="G12" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[21]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="F14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[22]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="G14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[23]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="B14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[24]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="C13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[25]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="B16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[26]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[27]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[28]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E12" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[29]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="L14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="C16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[30]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[31]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="A24" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[32]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="B23" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[33]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="B27" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[34]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="B26" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[35]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="A22" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[36]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="B22" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[37]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="A25" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[38]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="C24" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[39]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="M14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E24" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[40]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D23" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[41]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D26" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[42]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="C25" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[43]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E23" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[44]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D22" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[45]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="F22" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[46]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E22" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[47]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="A30" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[48]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D27" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[49]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="M12" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="A29" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[50]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="C28" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[51]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D28" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[52]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="B31" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[53]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="A31" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[54]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="A32" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[55]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E30" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[56]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="F29" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[57]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="F30" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[58]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="F27" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[59]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="N15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="C30" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[60]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="E29" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[61]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="F26" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[62]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="D30" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[63]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="M11" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="L12" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="K14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15_T_DCI" PADName="K13" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="M16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="J12" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="G16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="C14" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="A27" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="E25" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="B29" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="E28" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_n[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="N16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="K12" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="H16" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="C15" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="A26" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="F25" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="B28" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="E27" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_dqs_p[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H20" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="E20" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="LVCMOS15" PADName="C29" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="F20" SLEW="FAST" VCCAUX_IO="NORMAL" name="ddr3_we_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="E18" SLEW="" VCCAUX_IO="DONTCARE" name="sys_clk_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="E19" SLEW="" VCCAUX_IO="DONTCARE" name="sys_clk_p"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="LVCMOS18" PADName="AV40" SLEW="" VCCAUX_IO="DONTCARE" name="sys_rst"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Clock>}
   puts $mig_prj_file {      <Pin Bank="38" PADName="E19/E18(CC_P/N)" name="sys_clk_p/n"/>}
   puts $mig_prj_file {    </System_Clock>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5" tfaw="30" tras="35" trcd="13.75" trefi="7.8" trfc="110" trp="13.75" trrd="6" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">11</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/7</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Enable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/4</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">8</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>30</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>128</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>6</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>1</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_exdes_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: v_tpg_ss_1
proc create_hier_cell_v_tpg_ss_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_v_tpg_ss_1() - Empty argument(s)!"}
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

# Hierarchical cell: mb_ss_1
proc create_hier_cell_mb_ss_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_mb_ss_1() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:mbdebug_rtl:3.0 DEBUG

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART


  # Create pins
  create_bd_pin -dir O -type clk clk_out2
  create_bd_pin -dir I clk_out_in1
  create_bd_pin -dir I clk_out_in2
  create_bd_pin -dir O -from 0 -to 0 dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I hdmi_rx_irq
  create_bd_pin -dir I hdmi_tx_irq
  create_bd_pin -dir I locked
  create_bd_pin -dir I -type rst mb_debug_sys_rst
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
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins DEBUG] [get_bd_intf_pins mblaze/DEBUG]
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

  # Create port connections
  connect_bd_net -net mb_debug_sys_rst_1 [get_bd_pins mb_debug_sys_rst] [get_bd_pins rst_processor_1_100M/mb_debug_sys_rst]
  connect_bd_net -net net_bdry_in_ext_reset_in [get_bd_pins ext_reset_in] [get_bd_pins rst_processor_1_100M/ext_reset_in] [get_bd_pins rst_processor_1_300M/ext_reset_in]
  connect_bd_net -net net_bdry_in_hdmi_rx_irq [get_bd_pins hdmi_rx_irq] [get_bd_pins xlconcat/In1]
  connect_bd_net -net net_bdry_in_hdmi_tx_irq [get_bd_pins hdmi_tx_irq] [get_bd_pins xlconcat/In2]
  connect_bd_net -net net_bdry_in_vphy_irq [get_bd_pins vphy_irq] [get_bd_pins xlconcat/In0]
  connect_bd_net -net net_clk_wiz_clk_out1 [get_bd_pins clk_out_in1] [get_bd_pins s_axi_aclk] [get_bd_pins axi_intc/s_axi_aclk] [get_bd_pins axi_interconnect/ACLK] [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins axi_interconnect/M01_ACLK] [get_bd_pins axi_interconnect/M02_ACLK] [get_bd_pins axi_interconnect/M03_ACLK] [get_bd_pins axi_interconnect/M04_ACLK] [get_bd_pins axi_interconnect/M06_ACLK] [get_bd_pins axi_interconnect/M07_ACLK] [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins axi_uartlite/s_axi_aclk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins fmch_axi_iic/s_axi_aclk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk] [get_bd_pins mblaze/Clk] [get_bd_pins rst_processor_1_100M/slowest_sync_clk]
  connect_bd_net -net net_clk_wiz_clk_out2 [get_bd_pins clk_out2] [get_bd_pins clk_out_in2] [get_bd_pins axi_interconnect/M05_ACLK] [get_bd_pins axi_interconnect/M08_ACLK] [get_bd_pins rst_processor_1_300M/slowest_sync_clk]
  connect_bd_net -net net_clk_wiz_locked [get_bd_pins locked] [get_bd_pins rst_processor_1_100M/aux_reset_in] [get_bd_pins rst_processor_1_100M/dcm_locked] [get_bd_pins rst_processor_1_300M/aux_reset_in] [get_bd_pins rst_processor_1_300M/dcm_locked]
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:mbdebug_rtl:3.0 DEBUG

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART


  # Create pins
  create_bd_pin -dir O -type clk clk_out2
  create_bd_pin -dir I clk_out_in1
  create_bd_pin -dir I clk_out_in2
  create_bd_pin -dir O -from 0 -to 0 dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I hdmi_rx_irq
  create_bd_pin -dir I hdmi_tx_irq
  create_bd_pin -dir I locked
  create_bd_pin -dir I -type rst mb_debug_sys_rst
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
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins DEBUG] [get_bd_intf_pins mblaze/DEBUG]
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

  # Create port connections
  connect_bd_net -net mb_debug_sys_rst_1 [get_bd_pins mb_debug_sys_rst] [get_bd_pins rst_processor_1_100M/mb_debug_sys_rst]
  connect_bd_net -net net_bdry_in_ext_reset_in [get_bd_pins ext_reset_in] [get_bd_pins rst_processor_1_100M/ext_reset_in] [get_bd_pins rst_processor_1_300M/ext_reset_in]
  connect_bd_net -net net_bdry_in_hdmi_rx_irq [get_bd_pins hdmi_rx_irq] [get_bd_pins xlconcat/In1]
  connect_bd_net -net net_bdry_in_hdmi_tx_irq [get_bd_pins hdmi_tx_irq] [get_bd_pins xlconcat/In2]
  connect_bd_net -net net_bdry_in_vphy_irq [get_bd_pins vphy_irq] [get_bd_pins xlconcat/In0]
  connect_bd_net -net net_clk_wiz_clk_out1 [get_bd_pins clk_out_in1] [get_bd_pins s_axi_aclk] [get_bd_pins axi_intc/s_axi_aclk] [get_bd_pins axi_interconnect/ACLK] [get_bd_pins axi_interconnect/M00_ACLK] [get_bd_pins axi_interconnect/M01_ACLK] [get_bd_pins axi_interconnect/M02_ACLK] [get_bd_pins axi_interconnect/M03_ACLK] [get_bd_pins axi_interconnect/M04_ACLK] [get_bd_pins axi_interconnect/M06_ACLK] [get_bd_pins axi_interconnect/M07_ACLK] [get_bd_pins axi_interconnect/S00_ACLK] [get_bd_pins axi_uartlite/s_axi_aclk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins fmch_axi_iic/s_axi_aclk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk] [get_bd_pins mblaze/Clk] [get_bd_pins rst_processor_1_100M/slowest_sync_clk]
  connect_bd_net -net net_clk_wiz_clk_out2 [get_bd_pins clk_out2] [get_bd_pins clk_out_in2] [get_bd_pins axi_interconnect/M05_ACLK] [get_bd_pins axi_interconnect/M08_ACLK] [get_bd_pins rst_processor_1_300M/slowest_sync_clk]
  connect_bd_net -net net_clk_wiz_locked [get_bd_pins locked] [get_bd_pins rst_processor_1_100M/aux_reset_in] [get_bd_pins rst_processor_1_100M/dcm_locked] [get_bd_pins rst_processor_1_300M/aux_reset_in] [get_bd_pins rst_processor_1_300M/dcm_locked]
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

# Hierarchical cell: audio_ss_1
proc create_hier_cell_audio_ss_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_audio_ss_1() - Empty argument(s)!"}
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
  set RX_DDC_OUT_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 RX_DDC_OUT_1 ]

  set RX_DDC_OUT_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 RX_DDC_OUT_2 ]

  set TX_DDC_OUT_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 TX_DDC_OUT_1 ]

  set TX_DDC_OUT_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 TX_DDC_OUT_2 ]

  set ddr3_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr3_sdram ]

  set fmch_iic_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 fmch_iic_1 ]

  set fmch_iic_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 fmch_iic_2 ]

  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]

  set sys_diff_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   ] $sys_diff_clock


  # Create ports
  set GPIO_DIP_SW0 [ create_bd_port -dir I GPIO_DIP_SW0 ]
  set GPIO_DIP_SW1 [ create_bd_port -dir I GPIO_DIP_SW1 ]
  set GPIO_DIP_SW2 [ create_bd_port -dir I GPIO_DIP_SW2 ]
  set GPIO_DIP_SW3 [ create_bd_port -dir I GPIO_DIP_SW3 ]
  set GPIO_DIP_SW7 [ create_bd_port -dir I GPIO_DIP_SW7 ]
  set HDMI_RX_CLK_N_IN_1 [ create_bd_port -dir I HDMI_RX_CLK_N_IN_1 ]
  set HDMI_RX_CLK_N_IN_2 [ create_bd_port -dir I HDMI_RX_CLK_N_IN_2 ]
  set HDMI_RX_CLK_P_IN_1 [ create_bd_port -dir I HDMI_RX_CLK_P_IN_1 ]
  set HDMI_RX_CLK_P_IN_2 [ create_bd_port -dir I HDMI_RX_CLK_P_IN_2 ]
  set HDMI_RX_DAT_N_IN_1 [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_N_IN_1 ]
  set HDMI_RX_DAT_N_IN_2 [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_N_IN_2 ]
  set HDMI_RX_DAT_P_IN_1 [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_P_IN_1 ]
  set HDMI_RX_DAT_P_IN_2 [ create_bd_port -dir I -from 2 -to 0 HDMI_RX_DAT_P_IN_2 ]
  set HDMI_TX_CLK_N_OUT_1 [ create_bd_port -dir O HDMI_TX_CLK_N_OUT_1 ]
  set HDMI_TX_CLK_P_OUT_1 [ create_bd_port -dir O HDMI_TX_CLK_P_OUT_1 ]
  set HDMI_TX_DAT_N_OUT_1 [ create_bd_port -dir O -from 2 -to 0 HDMI_TX_DAT_N_OUT_1 ]
  set HDMI_TX_DAT_P_OUT_1 [ create_bd_port -dir O -from 2 -to 0 HDMI_TX_DAT_P_OUT_1 ]
  set LED0 [ create_bd_port -dir O LED0 ]
  set LED1 [ create_bd_port -dir O LED1 ]
  set RX_DET_IN_1 [ create_bd_port -dir I RX_DET_IN_1 ]
  set RX_DET_IN_2 [ create_bd_port -dir I RX_DET_IN_2 ]
  set RX_HPD_OUT_1 [ create_bd_port -dir O -from 0 -to 0 RX_HPD_OUT_1 ]
  set RX_HPD_OUT_2 [ create_bd_port -dir O -from 0 -to 0 RX_HPD_OUT_2 ]
  set RX_I2C_EN_N_OUT_1 [ create_bd_port -dir O -from 0 -to 0 RX_I2C_EN_N_OUT_1 ]
  set RX_I2C_EN_N_OUT_2 [ create_bd_port -dir O -from 0 -to 0 RX_I2C_EN_N_OUT_2 ]
  set RX_REFCLK_N_OUT_1 [ create_bd_port -dir O RX_REFCLK_N_OUT_1 ]
  set RX_REFCLK_N_OUT_2 [ create_bd_port -dir O RX_REFCLK_N_OUT_2 ]
  set RX_REFCLK_P_OUT_1 [ create_bd_port -dir O RX_REFCLK_P_OUT_1 ]
  set RX_REFCLK_P_OUT_2 [ create_bd_port -dir O RX_REFCLK_P_OUT_2 ]
  set SI5324_LOL_IN_1 [ create_bd_port -dir I SI5324_LOL_IN_1 ]
  set SI5324_LOL_IN_2 [ create_bd_port -dir I SI5324_LOL_IN_2 ]
  set SI5324_RST_OUT_1 [ create_bd_port -dir O -from 0 -to 0 SI5324_RST_OUT_1 ]
  set SI5324_RST_OUT_2 [ create_bd_port -dir O -from 0 -to 0 SI5324_RST_OUT_2 ]
  set TX_CLKSEL_OUT_1 [ create_bd_port -dir O -from 0 -to 0 TX_CLKSEL_OUT_1 ]
  set TX_CLKSEL_OUT_2 [ create_bd_port -dir O -from 0 -to 0 TX_CLKSEL_OUT_2 ]
  set TX_EN_OUT_1 [ create_bd_port -dir O -from 0 -to 0 TX_EN_OUT_1 ]
  set TX_EN_OUT_2 [ create_bd_port -dir O -from 0 -to 0 TX_EN_OUT_2 ]
  set TX_HPD_IN_1 [ create_bd_port -dir I TX_HPD_IN_1 ]
  set TX_HPD_IN_2 [ create_bd_port -dir I TX_HPD_IN_2 ]
  set TX_REFCLK_N_IN_1 [ create_bd_port -dir I TX_REFCLK_N_IN_1 ]
  set TX_REFCLK_N_IN_2 [ create_bd_port -dir I TX_REFCLK_N_IN_2 ]
  set TX_REFCLK_P_IN_1 [ create_bd_port -dir I TX_REFCLK_P_IN_1 ]
  set TX_REFCLK_P_IN_2 [ create_bd_port -dir I TX_REFCLK_P_IN_2 ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: UART_Multiplexer, and set properties
  set UART_Multiplexer [ create_bd_cell -type ip -vlnv xilinx.com:user:UART_Mux:1.0 UART_Multiplexer ]

  # Create instance: Video_Mux_0, and set properties
  set Video_Mux_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Video_Mux:1.0 Video_Mux_0 ]

  # Create instance: Video_Synch_0, and set properties
  set Video_Synch_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Video_Synch:1.0 Video_Synch_0 ]

  # Create instance: audio_ss_1
  create_hier_cell_audio_ss_1 [current_bd_instance .] audio_ss_1

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
  
  # Create instance: gnd_const, and set properties
  set gnd_const [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd_const ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $gnd_const

  # Create instance: gnd_const1, and set properties
  set gnd_const1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd_const1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $gnd_const1

  # Create instance: mb_ss_0
  create_hier_cell_mb_ss_0 [current_bd_instance .] mb_ss_0

  # Create instance: mb_ss_1
  create_hier_cell_mb_ss_1 [current_bd_instance .] mb_ss_1

  # Create instance: mdm, and set properties
  set mdm [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm ]
  set_property -dict [ list \
   CONFIG.C_ADDR_SIZE {32} \
   CONFIG.C_MB_DBG_PORTS {2} \
   CONFIG.C_M_AXI_ADDR_WIDTH {32} \
 ] $mdm

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_exdes_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {ddr3_sdram} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $mig_7series_0

  # Create instance: rx_video_axis_reg_slice, and set properties
  set rx_video_axis_reg_slice [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 rx_video_axis_reg_slice ]

  # Create instance: rx_video_axis_reg_slice1, and set properties
  set rx_video_axis_reg_slice1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 rx_video_axis_reg_slice1 ]

  # Create instance: system_ila_1, and set properties
  set system_ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_1 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {383.5} \
   CONFIG.C_DATA_DEPTH {32768} \
   CONFIG.C_MON_TYPE {MIX} \
   CONFIG.C_NUM_MONITOR_SLOTS {1} \
   CONFIG.C_NUM_OF_PROBES {5} \
   CONFIG.C_SLOT {0} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_2_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_3_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_1

  # Create instance: tx_video_axis_reg_slice, and set properties
  set tx_video_axis_reg_slice [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 tx_video_axis_reg_slice ]

  # Create instance: tx_video_axis_reg_slice1, and set properties
  set tx_video_axis_reg_slice1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 tx_video_axis_reg_slice1 ]

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
   CONFIG.C_EXDES_TOPOLOGY {2} \
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

  # Create instance: v_hdmi_rx_ss1, and set properties
  set v_hdmi_rx_ss1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hdmi_rx_ss:3.1 v_hdmi_rx_ss1 ]
  set_property -dict [ list \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {4} \
 ] $v_hdmi_rx_ss1

  # Create instance: v_hdmi_tx_ss3, and set properties
  set v_hdmi_tx_ss3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hdmi_tx_ss:3.1 v_hdmi_tx_ss3 ]
  set_property -dict [ list \
   CONFIG.C_INPUT_PIXELS_PER_CLOCK {4} \
 ] $v_hdmi_tx_ss3

  # Create instance: v_tpg_ss_1
  create_hier_cell_v_tpg_ss_1 [current_bd_instance .] v_tpg_ss_1

  # Create instance: vcc_const, and set properties
  set vcc_const [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc_const ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $vcc_const

  # Create instance: vcc_const1, and set properties
  set vcc_const1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc_const1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $vcc_const1

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
   CONFIG.C_TX_REFCLK_SEL {1} \
   CONFIG.C_Tx_No_Of_Channels {3} \
   CONFIG.C_Tx_Protocol {None} \
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

  # Create instance: vid_phy_controller1, and set properties
  set vid_phy_controller1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vid_phy_controller:2.2 vid_phy_controller1 ]
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
 ] $vid_phy_controller1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net DEBUG_1 [get_bd_intf_pins mb_ss_1/DEBUG] [get_bd_intf_pins mdm/MBDEBUG_1]
  connect_bd_intf_net -intf_net UART_Mux_0_UART_Out2 [get_bd_intf_ports rs232_uart] [get_bd_intf_pins UART_Multiplexer/UART_Out2]
  connect_bd_intf_net -intf_net Video_Mux_0_m_axis_video [get_bd_intf_pins Video_Mux_0/m_axis_video] [get_bd_intf_pins checkTready_0/VIDEO_IN]
connect_bd_intf_net -intf_net [get_bd_intf_nets Video_Mux_0_m_axis_video] [get_bd_intf_pins checkTready_0/VIDEO_IN] [get_bd_intf_pins system_ila_1/SLOT_0_AXIS]
  connect_bd_intf_net -intf_net Video_Synch_0_M0_AXI [get_bd_intf_pins Video_Synch_0/M0_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net Video_Synch_0_m_axis_video0 [get_bd_intf_pins checkTready_0/VIDEO_OUT] [get_bd_intf_pins v_hdmi_tx_ss3/VIDEO_IN]
  connect_bd_intf_net -intf_net Video_Synch_0_m_axis_video1 [get_bd_intf_pins Video_Mux_0/s_axis_video0] [get_bd_intf_pins Video_Synch_0/m_axis_video0]
  connect_bd_intf_net -intf_net Video_Synch_0_m_axis_video2 [get_bd_intf_pins Video_Mux_0/s_axis_video1] [get_bd_intf_pins Video_Synch_0/m_axis_video1]
  connect_bd_intf_net -intf_net audio_ss_1_axis_audio_out [get_bd_intf_pins audio_ss_1/axis_audio_out] [get_bd_intf_pins v_hdmi_tx_ss3/AUDIO_IN]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_IIC [get_bd_intf_ports fmch_iic_2] [get_bd_intf_pins mb_ss_0/IIC]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_IIC1 [get_bd_intf_ports fmch_iic_1] [get_bd_intf_pins mb_ss_1/IIC]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M00_AXI [get_bd_intf_pins mb_ss_0/M00_AXI] [get_bd_intf_pins vid_phy_controller/vid_phy_axi4lite]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M00_AXI1 [get_bd_intf_pins mb_ss_1/M00_AXI] [get_bd_intf_pins vid_phy_controller1/vid_phy_axi4lite]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M01_AXI [get_bd_intf_pins mb_ss_0/M01_AXI] [get_bd_intf_pins v_hdmi_rx_ss/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M05_AXI1 [get_bd_intf_pins mb_ss_1/M05_AXI] [get_bd_intf_pins v_tpg_ss_1/S_AXI_TPG]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M06_AXI1 [get_bd_intf_pins audio_ss_1/S00_AXI] [get_bd_intf_pins mb_ss_1/M06_AXI]
  connect_bd_intf_net -intf_net intf_net_mb_ss_0_M08_AXI1 [get_bd_intf_pins mb_ss_1/M08_AXI] [get_bd_intf_pins v_tpg_ss_1/S_AXI_GPIO]
  connect_bd_intf_net -intf_net intf_net_rx_video_axis_reg_slice_M_AXIS1 [get_bd_intf_pins rx_video_axis_reg_slice1/M_AXIS] [get_bd_intf_pins v_tpg_ss_1/s_axis_video]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_rx_ss_DDC_OUT [get_bd_intf_ports RX_DDC_OUT_2] [get_bd_intf_pins v_hdmi_rx_ss/DDC_OUT]
  connect_bd_intf_net -intf_net intf_net_v_hdmi_rx_ss_VIDEO_OUT [get_bd_intf_pins rx_video_axis_reg_slice/S_AXIS] [get_bd_intf_pins v_hdmi_rx_ss/VIDEO_OUT]
  connect_bd_intf_net -intf_net intf_net_v_tpg_ss_0_m_axis_video1 [get_bd_intf_pins tx_video_axis_reg_slice1/S_AXIS] [get_bd_intf_pins v_tpg_ss_1/m_axis_video]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_rx_axi4s_ch0 [get_bd_intf_pins v_hdmi_rx_ss/LINK_DATA0_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch0]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_rx_axi4s_ch1 [get_bd_intf_pins v_hdmi_rx_ss/LINK_DATA1_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch1]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_rx_axi4s_ch2 [get_bd_intf_pins v_hdmi_rx_ss/LINK_DATA2_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_rx_axi4s_ch2]
  connect_bd_intf_net -intf_net intf_net_vid_phy_controller_vid_phy_status_sb_rx [get_bd_intf_pins v_hdmi_rx_ss/SB_STATUS_IN] [get_bd_intf_pins vid_phy_controller/vid_phy_status_sb_rx]
  connect_bd_intf_net -intf_net mb_ss_0_UART [get_bd_intf_pins UART_Multiplexer/UART_In1] [get_bd_intf_pins mb_ss_0/UART]
  connect_bd_intf_net -intf_net mb_ss_1_M01_AXI [get_bd_intf_pins mb_ss_1/M01_AXI] [get_bd_intf_pins v_hdmi_rx_ss1/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net mb_ss_1_M02_AXI [get_bd_intf_pins mb_ss_1/M02_AXI] [get_bd_intf_pins v_hdmi_tx_ss3/S_AXI_CPU_IN]
  connect_bd_intf_net -intf_net mb_ss_1_UART [get_bd_intf_pins UART_Multiplexer/UART_In0] [get_bd_intf_pins mb_ss_1/UART]
  connect_bd_intf_net -intf_net mdm_MBDEBUG_0 [get_bd_intf_pins mb_ss_0/DEBUG] [get_bd_intf_pins mdm/MBDEBUG_0]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports ddr3_sdram] [get_bd_intf_pins mig_7series_0/DDR3]
  connect_bd_intf_net -intf_net rx_video_axis_reg_slice_M_AXIS [get_bd_intf_pins rx_video_axis_reg_slice/M_AXIS] [get_bd_intf_pins tx_video_axis_reg_slice/S_AXIS]
  connect_bd_intf_net -intf_net sys_diff_clock_1 [get_bd_intf_ports sys_diff_clock] [get_bd_intf_pins mig_7series_0/SYS_CLK]
  connect_bd_intf_net -intf_net tx_video_axis_reg_slice1_M_AXIS [get_bd_intf_pins Video_Synch_0/s_axis_video0] [get_bd_intf_pins tx_video_axis_reg_slice1/M_AXIS]
  connect_bd_intf_net -intf_net tx_video_axis_reg_slice_M_AXIS [get_bd_intf_pins Video_Synch_0/s_axis_video1] [get_bd_intf_pins tx_video_axis_reg_slice/M_AXIS]
  connect_bd_intf_net -intf_net v_hdmi_rx_ss_0_AUDIO_OUT [get_bd_intf_pins audio_ss_1/axis_audio_in] [get_bd_intf_pins v_hdmi_rx_ss1/AUDIO_OUT]
  connect_bd_intf_net -intf_net v_hdmi_rx_ss_0_DDC_OUT [get_bd_intf_ports RX_DDC_OUT_1] [get_bd_intf_pins v_hdmi_rx_ss1/DDC_OUT]
  connect_bd_intf_net -intf_net v_hdmi_rx_ss_0_VIDEO_OUT [get_bd_intf_pins rx_video_axis_reg_slice1/S_AXIS] [get_bd_intf_pins v_hdmi_rx_ss1/VIDEO_OUT]
  connect_bd_intf_net -intf_net v_hdmi_tx_ss3_DDC_OUT [get_bd_intf_ports TX_DDC_OUT_1] [get_bd_intf_pins v_hdmi_tx_ss3/DDC_OUT]
  connect_bd_intf_net -intf_net v_hdmi_tx_ss3_LINK_DATA0_OUT [get_bd_intf_pins v_hdmi_tx_ss3/LINK_DATA0_OUT] [get_bd_intf_pins vid_phy_controller1/vid_phy_tx_axi4s_ch0]
  connect_bd_intf_net -intf_net v_hdmi_tx_ss3_LINK_DATA1_OUT [get_bd_intf_pins v_hdmi_tx_ss3/LINK_DATA1_OUT] [get_bd_intf_pins vid_phy_controller1/vid_phy_tx_axi4s_ch1]
  connect_bd_intf_net -intf_net v_hdmi_tx_ss3_LINK_DATA2_OUT [get_bd_intf_pins v_hdmi_tx_ss3/LINK_DATA2_OUT] [get_bd_intf_pins vid_phy_controller1/vid_phy_tx_axi4s_ch2]
  connect_bd_intf_net -intf_net vid_phy_controller1_vid_phy_rx_axi4s_ch0 [get_bd_intf_pins v_hdmi_rx_ss1/LINK_DATA0_IN] [get_bd_intf_pins vid_phy_controller1/vid_phy_rx_axi4s_ch0]
  connect_bd_intf_net -intf_net vid_phy_controller1_vid_phy_rx_axi4s_ch1 [get_bd_intf_pins v_hdmi_rx_ss1/LINK_DATA1_IN] [get_bd_intf_pins vid_phy_controller1/vid_phy_rx_axi4s_ch1]
  connect_bd_intf_net -intf_net vid_phy_controller1_vid_phy_rx_axi4s_ch2 [get_bd_intf_pins v_hdmi_rx_ss1/LINK_DATA2_IN] [get_bd_intf_pins vid_phy_controller1/vid_phy_rx_axi4s_ch2]
  connect_bd_intf_net -intf_net vid_phy_controller1_vid_phy_status_sb_rx [get_bd_intf_pins v_hdmi_rx_ss1/SB_STATUS_IN] [get_bd_intf_pins vid_phy_controller1/vid_phy_status_sb_rx]
  connect_bd_intf_net -intf_net vid_phy_controller1_vid_phy_status_sb_tx [get_bd_intf_pins v_hdmi_tx_ss3/SB_STATUS_IN] [get_bd_intf_pins vid_phy_controller1/vid_phy_status_sb_tx]

  # Create port connections
  connect_bd_net -net GPIO_DIP_SW0_1 [get_bd_ports GPIO_DIP_SW0] [get_bd_pins Video_Mux_0/sw]
  connect_bd_net -net GPIO_DIP_SW7_1 [get_bd_ports GPIO_DIP_SW7] [get_bd_pins UART_Multiplexer/select]
  connect_bd_net -net checkTready_0_FrameOut [get_bd_pins checkTready_0/FrameOut] [get_bd_pins system_ila_1/probe2]
  connect_bd_net -net checkTready_0_LineOut [get_bd_pins checkTready_0/LineOut] [get_bd_pins system_ila_1/probe1]
  connect_bd_net -net checkTready_0_OUT_pause [get_bd_pins checkTready_0/OUT_pause] [get_bd_pins system_ila_1/probe0]
  connect_bd_net -net checkTready_0_PixelsOut [get_bd_pins checkTready_0/PixelsOut] [get_bd_pins system_ila_1/probe4]
  connect_bd_net -net checkTready_0_TicksOut [get_bd_pins checkTready_0/TicksOut] [get_bd_pins system_ila_1/probe3]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins mb_ss_0/clk_out_in1] [get_bd_pins mb_ss_1/clk_out_in1] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins mb_ss_0/clk_out_in2] [get_bd_pins mb_ss_1/clk_out_in2] [get_bd_pins mig_7series_0/ui_addn_clk_1]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins mb_ss_0/locked] [get_bd_pins mb_ss_1/locked] [get_bd_pins mig_7series_0/mmcm_locked]
  connect_bd_net -net mdm_Debug_SYS_Rst [get_bd_pins mb_ss_0/mb_debug_sys_rst] [get_bd_pins mb_ss_1/mb_debug_sys_rst] [get_bd_pins mdm/Debug_SYS_Rst]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins Video_Synch_0/m_axis_memory_aclk] [get_bd_pins mig_7series_0/ui_clk]
  connect_bd_net -net net_audio_ss_0_aud_acr_cts_out1 [get_bd_pins audio_ss_1/aud_acr_cts_out] [get_bd_pins v_hdmi_tx_ss3/acr_cts]
  connect_bd_net -net net_audio_ss_0_aud_acr_n_out1 [get_bd_pins audio_ss_1/aud_acr_n_out] [get_bd_pins v_hdmi_tx_ss3/acr_n]
  connect_bd_net -net net_audio_ss_0_aud_acr_valid_out1 [get_bd_pins audio_ss_1/aud_acr_valid_out] [get_bd_pins v_hdmi_tx_ss3/acr_valid]
  connect_bd_net -net net_audio_ss_0_aud_rstn1 [get_bd_pins audio_ss_1/aud_rstn] [get_bd_pins v_hdmi_rx_ss1/s_axis_audio_aresetn] [get_bd_pins v_hdmi_tx_ss3/s_axis_audio_aresetn]
  connect_bd_net -net net_audio_ss_0_audio_clk1 [get_bd_pins audio_ss_1/audio_clk] [get_bd_pins v_hdmi_rx_ss1/s_axis_audio_aclk] [get_bd_pins v_hdmi_tx_ss3/s_axis_audio_aclk]
  connect_bd_net -net net_bdry_in_HDMI_RX_CLK_N_IN [get_bd_ports HDMI_RX_CLK_N_IN_2] [get_bd_pins vid_phy_controller/mgtrefclk0_pad_n_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_CLK_N_IN1 [get_bd_ports HDMI_RX_CLK_N_IN_1] [get_bd_pins vid_phy_controller1/mgtrefclk0_pad_n_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_CLK_P_IN [get_bd_ports HDMI_RX_CLK_P_IN_2] [get_bd_pins vid_phy_controller/mgtrefclk0_pad_p_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_CLK_P_IN1 [get_bd_ports HDMI_RX_CLK_P_IN_1] [get_bd_pins vid_phy_controller1/mgtrefclk0_pad_p_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_DAT_N_IN [get_bd_ports HDMI_RX_DAT_N_IN_2] [get_bd_pins vid_phy_controller/phy_rxn_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_DAT_N_IN1 [get_bd_ports HDMI_RX_DAT_N_IN_1] [get_bd_pins vid_phy_controller1/phy_rxn_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_DAT_P_IN [get_bd_ports HDMI_RX_DAT_P_IN_2] [get_bd_pins vid_phy_controller/phy_rxp_in]
  connect_bd_net -net net_bdry_in_HDMI_RX_DAT_P_IN1 [get_bd_ports HDMI_RX_DAT_P_IN_1] [get_bd_pins vid_phy_controller1/phy_rxp_in]
  connect_bd_net -net net_bdry_in_RX_DET_IN [get_bd_ports RX_DET_IN_2] [get_bd_pins v_hdmi_rx_ss/cable_detect]
  connect_bd_net -net net_bdry_in_RX_DET_IN1 [get_bd_ports RX_DET_IN_1] [get_bd_pins v_hdmi_rx_ss1/cable_detect]
  connect_bd_net -net net_bdry_in_SI5324_LOL_IN1 [get_bd_ports SI5324_LOL_IN_1] [get_bd_pins vid_phy_controller1/tx_refclk_rdy]
  connect_bd_net -net net_bdry_in_TX_HPD_IN1 [get_bd_ports TX_HPD_IN_1] [get_bd_pins v_hdmi_tx_ss3/hpd]
  connect_bd_net -net net_bdry_in_reset [get_bd_ports reset] [get_bd_pins mb_ss_0/ext_reset_in] [get_bd_pins mb_ss_1/ext_reset_in] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net net_gnd_const_dout [get_bd_ports RX_I2C_EN_N_OUT_2] [get_bd_pins gnd_const/dout]
  connect_bd_net -net net_gnd_const_dout1 [get_bd_ports RX_I2C_EN_N_OUT_1] [get_bd_pins gnd_const1/dout]
  connect_bd_net -net net_mb_ss_0_clk_out2 [get_bd_pins Video_Mux_0/aclk] [get_bd_pins Video_Synch_0/s_axis_video_aclk] [get_bd_pins checkTready_0/s_axis_video_aclk] [get_bd_pins mb_ss_0/clk_out2] [get_bd_pins rx_video_axis_reg_slice/aclk] [get_bd_pins system_ila_1/clk] [get_bd_pins tx_video_axis_reg_slice/aclk] [get_bd_pins v_hdmi_rx_ss/s_axis_audio_aclk] [get_bd_pins v_hdmi_rx_ss/s_axis_video_aclk]
  connect_bd_net -net net_mb_ss_0_clk_out3 [get_bd_pins mb_ss_1/clk_out2] [get_bd_pins rx_video_axis_reg_slice1/aclk] [get_bd_pins tx_video_axis_reg_slice1/aclk] [get_bd_pins v_hdmi_rx_ss1/s_axis_video_aclk] [get_bd_pins v_hdmi_tx_ss3/s_axis_video_aclk] [get_bd_pins v_tpg_ss_1/ap_clk]
  connect_bd_net -net net_mb_ss_0_dcm_locked [get_bd_pins Video_Mux_0/aresetn] [get_bd_pins Video_Synch_0/s_axis_video_aresetn] [get_bd_pins mb_ss_0/dcm_locked] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins rx_video_axis_reg_slice/aresetn] [get_bd_pins system_ila_1/resetn] [get_bd_pins tx_video_axis_reg_slice/aresetn] [get_bd_pins v_hdmi_rx_ss/s_axis_audio_aresetn] [get_bd_pins v_hdmi_rx_ss/s_axis_video_aresetn]
  connect_bd_net -net net_mb_ss_0_dcm_locked1 [get_bd_pins mb_ss_1/dcm_locked] [get_bd_pins rx_video_axis_reg_slice1/aresetn] [get_bd_pins tx_video_axis_reg_slice1/aresetn] [get_bd_pins v_hdmi_rx_ss1/s_axis_video_aresetn] [get_bd_pins v_hdmi_tx_ss3/s_axis_video_aresetn] [get_bd_pins v_tpg_ss_1/m_axi_aresetn]
  connect_bd_net -net net_mb_ss_0_peripheral_aresetn [get_bd_ports SI5324_RST_OUT_2] [get_bd_pins mb_ss_0/peripheral_aresetn] [get_bd_pins v_hdmi_rx_ss/s_axi_cpu_aresetn] [get_bd_pins vid_phy_controller/vid_phy_axi4lite_aresetn] [get_bd_pins vid_phy_controller/vid_phy_sb_aresetn]
  connect_bd_net -net net_mb_ss_0_peripheral_aresetn1 [get_bd_ports SI5324_RST_OUT_1] [get_bd_pins audio_ss_1/ARESETN] [get_bd_pins mb_ss_1/peripheral_aresetn] [get_bd_pins v_hdmi_rx_ss1/s_axi_cpu_aresetn] [get_bd_pins v_hdmi_tx_ss3/s_axi_cpu_aresetn] [get_bd_pins vid_phy_controller1/vid_phy_axi4lite_aresetn] [get_bd_pins vid_phy_controller1/vid_phy_sb_aresetn]
  connect_bd_net -net net_mb_ss_0_s_axi_aclk [get_bd_pins mb_ss_0/s_axi_aclk] [get_bd_pins v_hdmi_rx_ss/s_axi_cpu_aclk] [get_bd_pins vid_phy_controller/vid_phy_axi4lite_aclk] [get_bd_pins vid_phy_controller/vid_phy_sb_aclk]
  connect_bd_net -net net_mb_ss_0_s_axi_aclk1 [get_bd_pins audio_ss_1/ACLK] [get_bd_pins mb_ss_1/s_axi_aclk] [get_bd_pins v_hdmi_rx_ss1/s_axi_cpu_aclk] [get_bd_pins v_hdmi_tx_ss3/s_axi_cpu_aclk] [get_bd_pins vid_phy_controller1/vid_phy_axi4lite_aclk] [get_bd_pins vid_phy_controller1/vid_phy_sb_aclk]
  connect_bd_net -net net_v_hdmi_rx_ss_hpd [get_bd_ports RX_HPD_OUT_2] [get_bd_pins v_hdmi_rx_ss/hpd]
  connect_bd_net -net net_v_hdmi_rx_ss_irq [get_bd_pins mb_ss_0/hdmi_rx_irq] [get_bd_pins v_hdmi_rx_ss/irq]
  connect_bd_net -net net_vcc_const_dout [get_bd_ports TX_CLKSEL_OUT_2] [get_bd_ports TX_EN_OUT_2] [get_bd_pins vcc_const/dout] [get_bd_pins vid_phy_controller/vid_phy_rx_axi4s_aresetn]
  connect_bd_net -net net_vcc_const_dout1 [get_bd_ports TX_CLKSEL_OUT_1] [get_bd_ports TX_EN_OUT_1] [get_bd_pins vcc_const1/dout] [get_bd_pins vid_phy_controller1/vid_phy_rx_axi4s_aresetn] [get_bd_pins vid_phy_controller1/vid_phy_tx_axi4s_aresetn]
  connect_bd_net -net net_vid_phy_controller_irq [get_bd_pins mb_ss_0/vphy_irq] [get_bd_pins vid_phy_controller/irq]
  connect_bd_net -net net_vid_phy_controller_irq1 [get_bd_pins mb_ss_1/vphy_irq] [get_bd_pins vid_phy_controller1/irq]
  connect_bd_net -net net_vid_phy_controller_phy_txn_out1 [get_bd_ports HDMI_TX_DAT_N_OUT_1] [get_bd_pins vid_phy_controller1/phy_txn_out]
  connect_bd_net -net net_vid_phy_controller_phy_txp_out1 [get_bd_ports HDMI_TX_DAT_P_OUT_1] [get_bd_pins vid_phy_controller1/phy_txp_out]
  connect_bd_net -net net_vid_phy_controller_rx_tmds_clk_n [get_bd_ports RX_REFCLK_N_OUT_2] [get_bd_pins vid_phy_controller/rx_tmds_clk_n]
  connect_bd_net -net net_vid_phy_controller_rx_tmds_clk_n1 [get_bd_ports RX_REFCLK_N_OUT_1] [get_bd_pins vid_phy_controller1/rx_tmds_clk_n]
  connect_bd_net -net net_vid_phy_controller_rx_tmds_clk_p [get_bd_ports RX_REFCLK_P_OUT_2] [get_bd_pins vid_phy_controller/rx_tmds_clk_p]
  connect_bd_net -net net_vid_phy_controller_rx_tmds_clk_p1 [get_bd_ports RX_REFCLK_P_OUT_1] [get_bd_pins vid_phy_controller1/rx_tmds_clk_p]
  connect_bd_net -net net_vid_phy_controller_rx_video_clk [get_bd_pins v_hdmi_rx_ss/video_clk] [get_bd_pins vid_phy_controller/rx_video_clk]
  connect_bd_net -net net_vid_phy_controller_rx_video_clk1 [get_bd_pins v_hdmi_rx_ss1/video_clk] [get_bd_pins vid_phy_controller1/rx_video_clk]
  connect_bd_net -net net_vid_phy_controller_rxoutclk [get_bd_pins v_hdmi_rx_ss/link_clk] [get_bd_pins vid_phy_controller/rxoutclk] [get_bd_pins vid_phy_controller/vid_phy_rx_axi4s_aclk]
  connect_bd_net -net net_vid_phy_controller_rxoutclk1 [get_bd_pins v_hdmi_rx_ss1/link_clk] [get_bd_pins vid_phy_controller1/rxoutclk] [get_bd_pins vid_phy_controller1/vid_phy_rx_axi4s_aclk]
  connect_bd_net -net net_vid_phy_controller_tx_tmds_clk1 [get_bd_pins audio_ss_1/hdmi_clk] [get_bd_pins vid_phy_controller1/tx_tmds_clk]
  connect_bd_net -net net_vid_phy_controller_tx_tmds_clk_n1 [get_bd_ports HDMI_TX_CLK_N_OUT_1] [get_bd_pins vid_phy_controller1/tx_tmds_clk_n]
  connect_bd_net -net net_vid_phy_controller_tx_tmds_clk_p1 [get_bd_ports HDMI_TX_CLK_P_OUT_1] [get_bd_pins vid_phy_controller1/tx_tmds_clk_p]
  connect_bd_net -net net_vid_phy_controller_tx_video_clk1 [get_bd_pins v_hdmi_tx_ss3/video_clk] [get_bd_pins vid_phy_controller1/tx_video_clk]
  connect_bd_net -net net_vid_phy_controller_txoutclk1 [get_bd_pins v_hdmi_tx_ss3/link_clk] [get_bd_pins vid_phy_controller1/txoutclk] [get_bd_pins vid_phy_controller1/vid_phy_tx_axi4s_aclk]
  connect_bd_net -net v_hdmi_rx_ss_0_acr_cts [get_bd_pins audio_ss_1/aud_acr_cts_in] [get_bd_pins v_hdmi_rx_ss1/acr_cts]
  connect_bd_net -net v_hdmi_rx_ss_0_acr_n [get_bd_pins audio_ss_1/aud_acr_n_in] [get_bd_pins v_hdmi_rx_ss1/acr_n]
  connect_bd_net -net v_hdmi_rx_ss_0_acr_valid [get_bd_pins audio_ss_1/aud_acr_valid_in] [get_bd_pins v_hdmi_rx_ss1/acr_valid]
  connect_bd_net -net v_hdmi_rx_ss_0_fid [get_bd_pins v_hdmi_rx_ss1/fid] [get_bd_pins v_hdmi_tx_ss3/fid]
  connect_bd_net -net v_hdmi_rx_ss_0_hpd [get_bd_ports RX_HPD_OUT_1] [get_bd_pins v_hdmi_rx_ss1/hpd]
  connect_bd_net -net v_hdmi_rx_ss_0_irq [get_bd_pins mb_ss_1/hdmi_rx_irq] [get_bd_pins v_hdmi_rx_ss1/irq]
  connect_bd_net -net v_hdmi_tx_ss3_irq [get_bd_pins mb_ss_1/hdmi_tx_irq] [get_bd_pins v_hdmi_tx_ss3/irq]
  connect_bd_net -net v_hdmi_tx_ss3_locked [get_bd_ports LED1] [get_bd_pins v_hdmi_tx_ss3/locked]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Video_Synch_0/m_axis_video0_tready] [get_bd_pins Video_Synch_0/m_axis_video1_tready] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins checkTready_0/PauseEnable] [get_bd_pins xlconstant_1/dout]

  # Create address segments
  assign_bd_address -offset 0x80000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces Video_Synch_0/M0_AXI] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/axi_uartlite/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs mb_ss_0/fmch_axi_iic/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Instruction] [get_bd_addr_segs mb_ss_0/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs v_hdmi_rx_ss/S_AXI_CPU_IN/Reg] -force
  assign_bd_address -offset 0x44A50000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_0/mblaze/Data] [get_bd_addr_segs vid_phy_controller/vid_phy_axi4lite/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs audio_ss_1/aud_pat_gen/axi/reg0] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs v_tpg_ss_1/axi_gpio/S_AXI/Reg] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs mb_ss_1/axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs mb_ss_1/axi_uartlite/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs audio_ss_1/clk_wiz/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs mb_ss_1/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs mb_ss_1/fmch_axi_iic/S_AXI/Reg] -force
  assign_bd_address -offset 0xC0000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs audio_ss_1/hdmi_acr_ctrl/axi/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Instruction] [get_bd_addr_segs mb_ss_1/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs v_hdmi_rx_ss1/S_AXI_CPU_IN/Reg] -force
  assign_bd_address -offset 0x44A20000 -range 0x00020000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs v_hdmi_tx_ss3/S_AXI_CPU_IN/Reg] -force
  assign_bd_address -offset 0x44A40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs v_tpg_ss_1/v_tpg/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0x44A50000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mb_ss_1/mblaze/Data] [get_bd_addr_segs vid_phy_controller1/vid_phy_axi4lite/Reg] -force


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


