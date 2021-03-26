# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Projects\Stereovision\stereo_fpga\v_hdmi_rx_ss_0_ex\vitis_workspace\hdmi20_exdes\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Projects\Stereovision\stereo_fpga\v_hdmi_rx_ss_0_ex\vitis_workspace\hdmi20_exdes\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {hdmi20_exdes}\
-hw {C:\Projects\Stereovision\stereo_fpga\v_hdmi_rx_ss_0_ex\exdes_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/vitis_workspace}

platform write
platform generate -domains 
platform active {hdmi20_exdes}
platform generate
bsp reload
platform active {hdmi20_exdes}
platform config -updatehw {C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform active {hdmi20_exdes}
platform config -updatehw {C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
