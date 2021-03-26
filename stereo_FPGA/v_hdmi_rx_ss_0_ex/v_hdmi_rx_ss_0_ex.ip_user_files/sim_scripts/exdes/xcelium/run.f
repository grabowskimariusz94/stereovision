-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/vhd/nidru_20_v_7.vhd" \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/vhd/bs_flex_v_2.vhd" \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/vhd/nidru_20_wrapper.vhd" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 -sv \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_lib.sv" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_sync_block.v" \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_sync_pulse.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gtxe2_hdmi_txaln.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gtxe2_hdmi_xcvr.v" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_cpll_railing.v" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 -sv \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_datawidth_conv.sv" \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_gt_tx_tmdsclk_patgen.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_clkdet.sv" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 -sv \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_dru.sv" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_axi4lite.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gt_usrclk_source.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_gt_usrclk_source_8series.v" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_drp_control.v" \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_drp_control_8series.v" \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_drp_control_hdmi.v" \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_interrupts.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_CLOCK_MODULE.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_CLOCK_MODULE_8series.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_plle2_drp.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_mmcme2_drp.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/hdl/src/verilog/exdes_vid_phy_controller_0_mmcme3_drp.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/exdes_vid_phy_controller_0_gtwizard_0_common.v" \
-endlib
-makelib xcelium_lib/vid_phy_controller_v2_2_7 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/9640/hdl/src/verilog/vid_phy_controller_v2_2_gtp_common.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/synth/exdes_vid_phy_controller_0_top.v" \
  "../../../bd/exdes/ip/exdes_vid_phy_controller_0/sim/exdes_vid_phy_controller_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_vcc_const_0/sim/exdes_vcc_const_0.v" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_register_slice_v1_1_22 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_tx_video_axis_reg_slice_0/sim/exdes_tx_video_axis_reg_slice_0.v" \
-endlib
-makelib xcelium_lib/v_hdmi_tx_v3_0_0 -sv \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/2142/hdl/v_hdmi_tx_v3_0_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_0/sim/bd_3ea7_v_hdmi_tx_0.sv" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_tc_v6_2_1 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_1/sim/bd_3ea7_v_tc_0.vhd" \
-endlib
-makelib xcelium_lib/v_tc_v6_1_13 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/v_axi4s_vid_out_v4_0_11 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_2/sim/bd_3ea7_v_axi4s_vid_out_0.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_3/sim/bd_3ea7_util_vector_logic_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_22 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_21 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_23 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/ip/ip_4/sim/bd_3ea7_axi_crossbar_0.v" \
  "../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/bd_0/sim/bd_3ea7.v" \
  "../../../bd/exdes/ip/exdes_v_hdmi_tx_ss_0/sim/exdes_v_hdmi_tx_ss_0.v" \
-endlib
-makelib xcelium_lib/v_hdmi_rx_v3_0_0 -sv \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/a2bc/hdl/v_hdmi_rx_v3_0_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_0/sim/bd_3ec1_v_hdmi_rx_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_1/sim/bd_3ec1_v_vid_in_axi4s_0.v" \
  "../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_2/sim/bd_3ec1_inverter_0_0.v" \
  "../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/ip/ip_3/sim/bd_3ec1_inverter_1_0.v" \
  "../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/bd_0/sim/bd_3ec1.v" \
  "../../../bd/exdes/ip/exdes_v_hdmi_rx_ss_0/sim/exdes_v_hdmi_rx_ss_0.v" \
  "../../../bd/exdes/ip/exdes_rx_video_axis_reg_slice_0/sim/exdes_rx_video_axis_reg_slice_0.v" \
  "../../../bd/exdes/ip/exdes_gnd_const_0/sim/exdes_gnd_const_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_gt_refclk_buf1_0/util_ds_buf.vhd" \
  "../../../bd/exdes/ip/exdes_gt_refclk_buf1_0/sim/exdes_gt_refclk_buf1_0.vhd" \
  "../../../bd/exdes/ip/exdes_gt_refclk_buf0_0/sim/exdes_gt_refclk_buf0_0.vhd" \
-endlib
-makelib xcelium_lib/v_tpg_v8_1_0 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_v_tpg_0/hdl/v_tpg_v8_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_v_tpg_0/sim/exdes_v_tpg_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_24 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_axi_gpio_0/sim/exdes_axi_gpio_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_xbar_0/sim/exdes_xbar_0.v" \
  "../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0_mmcm_pll_drp.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0_clk_wiz.v" \
  "../../../bd/exdes/ip/exdes_clk_wiz_0/exdes_clk_wiz_0.v" \
  "../../../bd/exdes/ip/exdes_aud_pat_gen_0/sim/exdes_aud_pat_gen_0.v" \
  "../../../bd/exdes/ip/exdes_hdmi_acr_ctrl_0/sim/exdes_hdmi_acr_ctrl_0.v" \
  "../../../bd/exdes/ip/exdes_xbar_1/sim/exdes_xbar_1.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_xlconcat_0/sim/exdes_xlconcat_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_rst_processor_1_100M_0/sim/exdes_rst_processor_1_100M_0.vhd" \
  "../../../bd/exdes/ip/exdes_rst_processor_1_300M_0/sim/exdes_rst_processor_1_300M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_clk_wiz_1/exdes_clk_wiz_1_clk_wiz.v" \
  "../../../bd/exdes/ip/exdes_clk_wiz_1/exdes_clk_wiz_1.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_iic_v2_0_25 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/1529/hdl/axi_iic_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_fmch_axi_iic_0/sim/exdes_fmch_axi_iic_0.vhd" \
  "../../../bd/exdes/ip/exdes_onbrd_axi_iic_0/sim/exdes_onbrd_axi_iic_0.vhd" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_8 -sv \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_zynq_0/sim/exdes_zynq_0.v" \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/Inter_col_v1_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/Ncntx_Xppc.sv" \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/SAD/SAD.sv" \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/SAD/SAD_v1_0.sv" \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/new/Stereovision.sv" \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/delay.sv" \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/delayLineBRAM_Xppc.sv" \
  "../../../bd/exdes/ipshared/edit_Stereovision_v1_0.srcs/sources_1/imports/sources_1/imports/Ncnx_Xppc/delay_line.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ipshared/43ae/src/RGB_to_Grayscale_v1_0.v" \
  "../../../bd/exdes/ipshared/43ae/hdl/Stereovision_v1_0.v" \
  "../../../bd/exdes/ip/exdes_Stereovision_0_0/sim/exdes_Stereovision_0_0.v" \
  "../../../bd/exdes/ip/exdes_xlconcat_0_0/sim/exdes_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_22 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_auto_pc_0/sim/exdes_auto_pc_0.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_8/sim/exdes_auto_pc_8.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_1/sim/exdes_auto_pc_1.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_2/sim/exdes_auto_pc_2.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_3/sim/exdes_auto_pc_3.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_4/sim/exdes_auto_pc_4.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_5/sim/exdes_auto_pc_5.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_21 \
  "../../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/exdes/ip/exdes_auto_cc_0/sim/exdes_auto_cc_0.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_6/sim/exdes_auto_pc_6.v" \
  "../../../bd/exdes/ip/exdes_auto_cc_1/sim/exdes_auto_cc_1.v" \
  "../../../bd/exdes/ip/exdes_auto_pc_7/sim/exdes_auto_pc_7.v" \
  "../../../bd/exdes/sim/exdes.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

