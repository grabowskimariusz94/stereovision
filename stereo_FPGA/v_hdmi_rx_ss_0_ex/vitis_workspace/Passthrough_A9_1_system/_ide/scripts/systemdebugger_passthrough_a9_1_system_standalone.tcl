# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Projects\Stereovision\stereo_fpga\v_hdmi_rx_ss_0_ex\vitis_workspace\Passthrough_A9_1_system\_ide\scripts\systemdebugger_passthrough_a9_1_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Projects\Stereovision\stereo_fpga\v_hdmi_rx_ss_0_ex\vitis_workspace\Passthrough_A9_1_system\_ide\scripts\systemdebugger_passthrough_a9_1_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A076C0" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A076C0-23731093-0"}
fpga -file C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/vitis_workspace/Passthrough_A9_1/_ide/bitstream/exdes_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/vitis_workspace/hdmi20_exdes/export/hdmi20_exdes/hw/exdes_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/vitis_workspace/Passthrough_A9_1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/vitis_workspace/Passthrough_A9_1/Debug/Passthrough_A9_1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
