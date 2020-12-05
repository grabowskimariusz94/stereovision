vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../bd/design_1/ip/design_1_hdmi_in_uhd_4_0_0/sim/design_1_hdmi_in_uhd_4_0_0.v" \
"../../../bd/design_1/ip/design_1_hdmi_out_uhd_4_0_0/sim/design_1_hdmi_out_uhd_4_0_0.v" \
"../../../bd/design_1/ip/design_1_hdmi_out_uhd_4_0_1/sim/design_1_hdmi_out_uhd_4_0_1.v" \
"../../../bd/design_1/ip/design_1_Inter_col_v1_0_0_0/sim/design_1_Inter_col_v1_0_0_0.v" \
"../../../bd/design_1/ip/design_1_RGB_to_Grayscale_v1_0_0_0/sim/design_1_RGB_to_Grayscale_v1_0_0_0.v" \
"../../../bd/design_1/ip/design_1_hdmi_out_uhd_4_0_2/sim/design_1_hdmi_out_uhd_4_0_2.v" \
"../../../bd/design_1/ipshared/ebb5/src/LB_Control.v" \
"../../../bd/design_1/ipshared/ebb5/src/Line_Buffer.v" \
"../../../bd/design_1/ipshared/edit_SAD_v1_0.srcs/sources_1/new/Min_SAD.v" \
"../../../bd/design_1/ipshared/ebb5/src/SAD.v" \
"../../../bd/design_1/ipshared/ebb5/hdl/SAD_v1_0.v" \
"../../../bd/design_1/ip/design_1_SAD_0_0/sim/design_1_SAD_0_0.v" \
"../../../bd/design_1/ip/design_1_hdmi_out_uhd_4_3_0/sim/design_1_hdmi_out_uhd_4_3_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

