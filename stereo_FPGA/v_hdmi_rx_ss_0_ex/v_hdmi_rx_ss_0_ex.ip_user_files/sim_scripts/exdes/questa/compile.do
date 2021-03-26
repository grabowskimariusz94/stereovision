vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/vid_phy_controller_v2_2_7
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_register_slice_v1_1_22
vlib questa_lib/msim/v_hdmi_tx_v3_0_0
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_2_1
vlib questa_lib/msim/v_tc_v6_1_13
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_9
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_11
vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_crossbar_v2_1_23
vlib questa_lib/msim/v_hdmi_rx_v3_0_0
vlib questa_lib/msim/v_tpg_v8_1_0
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_24
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/axi_iic_v2_0_25
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/axi_protocol_converter_v2_1_22
vlib questa_lib/msim/axi_clock_converter_v2_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap vid_phy_controller_v2_2_7 questa_lib/msim/vid_phy_controller_v2_2_7
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_22 questa_lib/msim/axis_register_slice_v1_1_22
vmap v_hdmi_tx_v3_0_0 questa_lib/msim/v_hdmi_tx_v3_0_0
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_1 questa_lib/msim/v_tc_v6_2_1
vmap v_tc_v6_1_13 questa_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 questa_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_11 questa_lib/msim/v_axi4s_vid_out_v4_0_11
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 questa_lib/msim/axi_crossbar_v2_1_23
vmap v_hdmi_rx_v3_0_0 questa_lib/msim/v_hdmi_rx_v3_0_0
vmap v_tpg_v8_1_0 questa_lib/msim/v_tpg_v8_1_0
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 questa_lib/msim/axi_gpio_v2_0_24
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap axi_iic_v2_0_25 questa_lib/msim/axi_iic_v2_0_25
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 questa_lib/msim/axi_clock_converter_v2_1_21

vlog -work xilinx_vip  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work vid_phy_controller_v2_2_7  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/vhd/nidru_20_v_7.vhd" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/vhd/bs_flex_v_2.vhd" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/vhd/nidru_20_wrapper.vhd" \

vlog -work vid_phy_controller_v2_2_7  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_lib.sv" \

vlog -work vid_phy_controller_v2_2_7  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_sync_block.v" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_sync_pulse.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gtxe2_hdmi_txaln.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gtxe2_hdmi_xcvr.v" \

vlog -work vid_phy_controller_v2_2_7  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_cpll_railing.v" \

vlog -work vid_phy_controller_v2_2_7  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_datawidth_conv.sv" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_gt_tx_tmdsclk_patgen.sv" \

vlog -work xil_defaultlib  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_clkdet.sv" \

vlog -work vid_phy_controller_v2_2_7  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_dru.sv" \

vlog -work vid_phy_controller_v2_2_7  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_axi4lite.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gt_usrclk_source.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gt_usrclk_source_8series.v" \

vlog -work vid_phy_controller_v2_2_7  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_drp_control.v" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_drp_control_8series.v" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_drp_control_hdmi.v" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_interrupts.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_CLOCK_MODULE.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_CLOCK_MODULE_8series.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_plle2_drp.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_mmcme2_drp.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_mmcme3_drp.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/exdes_vid_phy_controller_0_gtwizard_0_common.v" \

vlog -work vid_phy_controller_v2_2_7  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_gtp_common.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/synth/exdes_vid_phy_controller_0_top.v" \
"../../../bd/exdes/ip/exdes_vid_phy_controller_0/sim/exdes_vid_phy_controller_0.v" \

vlog -work xlconstant_v1_1_7  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_vcc_const_0/sim/exdes_vcc_const_0.v" \

vlog -work axis_infrastructure_v1_1_0  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_22  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_tx_video_axis_reg_slice_0/sim/exdes_tx_video_axis_reg_slice_0.v" \

vlog -work v_hdmi_tx_v3_0_0  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/2142/hdl/v_hdmi_tx_v3_0_rfs.sv" \

vlog -work xil_defaultlib  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_0/sim/bd_3ea7_v_hdmi_tx_0.sv" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_1  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_1/sim/bd_3ea7_v_tc_0.vhd" \

vcom -work v_tc_v6_1_13  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_11  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_2/sim/bd_3ea7_v_axi4s_vid_out_0.v" \

vlog -work util_vector_logic_v2_0_1  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_3/sim/bd_3ea7_util_vector_logic_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_4/sim/bd_3ea7_axi_crossbar_0.v" \
"../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/sim/bd_3ea7.v" \
"../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/sim/exdes_v_hdmi_tx_ss_0.v" \

vlog -work v_hdmi_rx_v3_0_0  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/a2bc/hdl/v_hdmi_rx_v3_0_rfs.sv" \

vlog -work xil_defaultlib  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_0/sim/bd_3ec1_v_hdmi_rx_0.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_1/sim/bd_3ec1_v_vid_in_axi4s_0.v" \
"../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_2/sim/bd_3ec1_inverter_0_0.v" \
"../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_3/sim/bd_3ec1_inverter_1_0.v" \
"../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/sim/bd_3ec1.v" \
"../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/sim/exdes_v_hdmi_rx_ss_0.v" \
"../../../bd/exdes/ip/exdes_rx_video_axis_reg_slice_0/sim/exdes_rx_video_axis_reg_slice_0.v" \
"../../../bd/exdes/ip/exdes_gnd_const_0/sim/exdes_gnd_const_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/exdes/ip/exdes_gt_refclk_buf1_0/util_ds_buf.vhd" \
"../../../bd/exdes/ip/exdes_gt_refclk_buf1_0/sim/exdes_gt_refclk_buf1_0.vhd" \
"../../../bd/exdes/ip/exdes_gt_refclk_buf0_0/sim/exdes_gt_refclk_buf0_0.vhd" \

vlog -work v_tpg_v8_1_0  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_v_tpg_0/hdl/v_tpg_v8_1_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_v_tpg_0/sim/exdes_v_tpg_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/exdes/ip/exdes_axi_gpio_0/sim/exdes_axi_gpio_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_xbar_0/sim/exdes_xbar_0.v" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/exdes/ip/exdes_clk_wiz_0/proc_common_v3_00_a/hdl/src/vhdl/exdes_clk_wiz_0_conv_funs_pkg.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/proc_common_v3_00_a/hdl/src/vhdl/exdes_clk_wiz_0_proc_common_pkg.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/proc_common_v3_00_a/hdl/src/vhdl/exdes_clk_wiz_0_ipif_pkg.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/proc_common_v3_00_a/hdl/src/vhdl/exdes_clk_wiz_0_family_support.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/proc_common_v3_00_a/hdl/src/vhdl/exdes_clk_wiz_0_family.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/proc_common_v3_00_a/hdl/src/vhdl/exdes_clk_wiz_0_soft_reset.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/proc_common_v3_00_a/hdl/src/vhdl/exdes_clk_wiz_0_pselect_f.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/exdes_clk_wiz_0_address_decoder.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/exdes_clk_wiz_0_slave_attachment.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/exdes_clk_wiz_0_axi_lite_ipif.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0_clk_wiz_drp.vhd" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0_clk_wiz.v" \
"../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0.v" \
"../../../bd/exdes/ip/exdes_aud_pat_gen_0/sim/exdes_aud_pat_gen_0.v" \
"../../../bd/exdes/ip/exdes_hdmi_acr_ctrl_0/sim/exdes_hdmi_acr_ctrl_0.v" \
"../../../bd/exdes/ip/exdes_xbar_1/sim/exdes_xbar_1.v" \

vlog -work xlconcat_v2_1_4  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_xlconcat_0/sim/exdes_xlconcat_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/exdes/ip/exdes_rst_processor_1_100M_0/sim/exdes_rst_processor_1_100M_0.vhd" \
"../../../bd/exdes/ip/exdes_rst_processor_1_300M_0/sim/exdes_rst_processor_1_300M_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_clk_wiz_1/exdes_clk_wiz_1_clk_wiz.v" \
"../../../bd/exdes/ip/exdes_clk_wiz_1/exdes_clk_wiz_1.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_iic_v2_0_25  -93 \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/1529/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/exdes/ip/exdes_fmch_axi_iic_0/sim/exdes_fmch_axi_iic_0.vhd" \
"../../../bd/exdes/ip/exdes_onbrd_axi_iic_0/sim/exdes_onbrd_axi_iic_0.vhd" \

vlog -work axi_vip_v1_1_8  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_zynq_0/sim/exdes_zynq_0.v" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/Inter_col_v1_0.v" \

vlog -work xil_defaultlib  -sv -L vid_phy_controller_v2_2_7 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L v_hdmi_tx_v3_0_0 -L v_hdmi_rx_v3_0_0 -L xilinx_vip "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/Ncntx_Xppc.sv" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/SAD/SAD.sv" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/SAD/SAD_v1_0.sv" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/Stereovision.sv" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/delay.sv" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/delayLineBRAM_Xppc.sv" \
"../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/delay_line.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ipshared/43ae/src/RGB_to_Grayscale_v1_0.v" \
"../../../bd/exdes/ipshared/43ae/hdl/Stereovision_v1_0.v" \
"../../../bd/exdes/ip/exdes_Stereovision_0_0/sim/exdes_Stereovision_0_0.v" \
"../../../bd/exdes/ip/exdes_xlconcat_0_0/sim/exdes_xlconcat_0_0.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_auto_pc_0/sim/exdes_auto_pc_0.v" \
"../../../bd/exdes/ip/exdes_auto_pc_8/sim/exdes_auto_pc_8.v" \
"../../../bd/exdes/ip/exdes_auto_pc_1/sim/exdes_auto_pc_1.v" \
"../../../bd/exdes/ip/exdes_auto_pc_2/sim/exdes_auto_pc_2.v" \
"../../../bd/exdes/ip/exdes_auto_pc_3/sim/exdes_auto_pc_3.v" \
"../../../bd/exdes/ip/exdes_auto_pc_4/sim/exdes_auto_pc_4.v" \
"../../../bd/exdes/ip/exdes_auto_pc_5/sim/exdes_auto_pc_5.v" \

vlog -work axi_clock_converter_v2_1_21  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/d0f7" "+incdir+../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/exdes/ip/exdes_auto_cc_0/sim/exdes_auto_cc_0.v" \
"../../../bd/exdes/ip/exdes_auto_pc_6/sim/exdes_auto_pc_6.v" \
"../../../bd/exdes/ip/exdes_auto_cc_1/sim/exdes_auto_cc_1.v" \
"../../../bd/exdes/ip/exdes_auto_pc_7/sim/exdes_auto_pc_7.v" \
"../../../bd/exdes/sim/exdes.v" \

vlog -work xil_defaultlib \
"glbl.v"

