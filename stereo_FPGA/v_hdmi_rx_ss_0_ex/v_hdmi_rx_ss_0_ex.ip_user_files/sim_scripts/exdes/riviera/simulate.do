onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+exdes -L xilinx_vip -L xpm -L vid_phy_controller_v2_2_7 -L xil_defaultlib -L xlconstant_v1_1_7 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_22 -L v_hdmi_tx_v3_0_0 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_1 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_11 -L util_vector_logic_v2_0_1 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_22 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_21 -L axi_crossbar_v2_1_23 -L v_hdmi_rx_v3_0_0 -L v_tpg_v8_1_0 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_24 -L xlconcat_v2_1_4 -L proc_sys_reset_v5_0_13 -L lib_pkg_v1_0_2 -L axi_iic_v2_0_25 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L axi_protocol_converter_v2_1_22 -L axi_clock_converter_v2_1_21 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.exdes xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {exdes.udo}

run -all

endsim

quit -force
