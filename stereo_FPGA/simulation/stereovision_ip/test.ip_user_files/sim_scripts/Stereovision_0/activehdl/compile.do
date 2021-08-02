vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../ip/Stereovision_0/src/RGB_to_Grayscale_v1_0.v" \
"../../../ip/Stereovision_0/hdl/Stereovision_v1_0.v" \

vlog -work xil_defaultlib  -sv2k12 \
"../../../ip/Stereovision_0/src/Ncnx_Xppc/delayLineBRAM_Xppc.sv" \
"../../../ip/Stereovision_0/src/Inter_col_v2_0.sv" \
"../../../ip/Stereovision_0/src/Ncnx_Xppc/delay_line.sv" \
"../../../ip/Stereovision_0/src/Stereovision.sv" \
"../../../ip/Stereovision_0/src/Ncnx_Xppc/Ncntx_Xppc.sv" \
"../../../ip/Stereovision_0/src/SAD/SAD.sv" \
"../../../ip/Stereovision_0/src/SAD/SAD_v1_0.sv" \
"../../../ip/Stereovision_0/src/Ncnx_Xppc/delay.sv" \
"../../../ip/Stereovision_0/src/Min_disp.sv" \
"../../../ip/Stereovision_0/src/Min_Val.sv" \
"../../../ip/Stereovision_0/src/Min_Arg.sv" \
"../../../ip/Stereovision_0/src/Out_Synch.sv" \
"../../../ip/Stereovision_0/sim/Stereovision_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"

