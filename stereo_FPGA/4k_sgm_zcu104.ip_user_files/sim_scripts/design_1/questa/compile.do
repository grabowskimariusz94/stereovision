vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../bd/design_1/ip/design_1_hdmi_in_uhd_4_0_0/sim/design_1_hdmi_in_uhd_4_0_0.v" \
"../../../bd/design_1/ip/design_1_hdmi_out_uhd_4_0_0/sim/design_1_hdmi_out_uhd_4_0_0.v" \
"../../../bd/design_1/ip/design_1_hdmi_out_uhd_4_0_1/sim/design_1_hdmi_out_uhd_4_0_1.v" \
"../../../bd/design_1/ip/design_1_Inter_col_v1_0_0_0/sim/design_1_Inter_col_v1_0_0_0.v" \
"../../../bd/design_1/ip/design_1_RGB_to_Grayscale_v1_0_0_0/sim/design_1_RGB_to_Grayscale_v1_0_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"
