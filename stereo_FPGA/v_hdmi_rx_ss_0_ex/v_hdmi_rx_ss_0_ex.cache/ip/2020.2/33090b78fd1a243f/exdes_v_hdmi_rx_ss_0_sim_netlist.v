// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 18 22:58:58 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_v_hdmi_rx_ss_0_sim_netlist.v
// Design      : exdes_v_hdmi_rx_ss_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "exdes_v_hdmi_rx_ss_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1
   (AUDIO_OUT_tdata,
    AUDIO_OUT_tid,
    AUDIO_OUT_tready,
    AUDIO_OUT_tvalid,
    DDC_OUT_scl_i,
    DDC_OUT_scl_o,
    DDC_OUT_scl_t,
    DDC_OUT_sda_i,
    DDC_OUT_sda_o,
    DDC_OUT_sda_t,
    LINK_DATA0_IN_tdata,
    LINK_DATA0_IN_tvalid,
    LINK_DATA1_IN_tdata,
    LINK_DATA1_IN_tvalid,
    LINK_DATA2_IN_tdata,
    LINK_DATA2_IN_tvalid,
    SB_STATUS_IN_tdata,
    SB_STATUS_IN_tvalid,
    S_AXI_CPU_IN_araddr,
    S_AXI_CPU_IN_arprot,
    S_AXI_CPU_IN_arready,
    S_AXI_CPU_IN_arvalid,
    S_AXI_CPU_IN_awaddr,
    S_AXI_CPU_IN_awprot,
    S_AXI_CPU_IN_awready,
    S_AXI_CPU_IN_awvalid,
    S_AXI_CPU_IN_bready,
    S_AXI_CPU_IN_bresp,
    S_AXI_CPU_IN_bvalid,
    S_AXI_CPU_IN_rdata,
    S_AXI_CPU_IN_rready,
    S_AXI_CPU_IN_rresp,
    S_AXI_CPU_IN_rvalid,
    S_AXI_CPU_IN_wdata,
    S_AXI_CPU_IN_wready,
    S_AXI_CPU_IN_wstrb,
    S_AXI_CPU_IN_wvalid,
    VIDEO_OUT_tdata,
    VIDEO_OUT_tlast,
    VIDEO_OUT_tready,
    VIDEO_OUT_tuser,
    VIDEO_OUT_tvalid,
    acr_cts,
    acr_n,
    acr_valid,
    cable_detect,
    fid,
    hpd,
    irq,
    link_clk,
    s_axi_cpu_aclk,
    s_axi_cpu_aresetn,
    s_axis_audio_aclk,
    s_axis_audio_aresetn,
    s_axis_video_aclk,
    s_axis_video_aresetn,
    video_clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_OUT, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0" *) output [31:0]AUDIO_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TID" *) output [7:0]AUDIO_OUT_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY" *) input AUDIO_OUT_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID" *) output AUDIO_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *) input DDC_OUT_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *) output DDC_OUT_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *) output DDC_OUT_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *) input DDC_OUT_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *) output DDC_OUT_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *) output DDC_OUT_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA0_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [39:0]LINK_DATA0_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID" *) input LINK_DATA0_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA1_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [39:0]LINK_DATA1_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID" *) input LINK_DATA1_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA2_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [39:0]LINK_DATA2_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID" *) input LINK_DATA2_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SB_STATUS_IN, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [1:0]SB_STATUS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) input SB_STATUS_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CPU_IN, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]S_AXI_CPU_IN_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT" *) input [2:0]S_AXI_CPU_IN_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY" *) output S_AXI_CPU_IN_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID" *) input S_AXI_CPU_IN_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR" *) input [8:0]S_AXI_CPU_IN_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT" *) input [2:0]S_AXI_CPU_IN_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY" *) output S_AXI_CPU_IN_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID" *) input S_AXI_CPU_IN_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY" *) input S_AXI_CPU_IN_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP" *) output [1:0]S_AXI_CPU_IN_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID" *) output S_AXI_CPU_IN_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA" *) output [31:0]S_AXI_CPU_IN_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY" *) input S_AXI_CPU_IN_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP" *) output [1:0]S_AXI_CPU_IN_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID" *) output S_AXI_CPU_IN_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA" *) input [31:0]S_AXI_CPU_IN_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY" *) output S_AXI_CPU_IN_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB" *) input [3:0]S_AXI_CPU_IN_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID" *) input S_AXI_CPU_IN_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_OUT, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 150000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, PHASE 0.0, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [95:0]VIDEO_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST" *) output VIDEO_OUT_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY" *) input VIDEO_OUT_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER" *) output VIDEO_OUT_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID" *) output VIDEO_OUT_tvalid;
  output [19:0]acr_cts;
  output [19:0]acr_n;
  output acr_valid;
  input cable_detect;
  output fid;
  output [0:0]hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LINK_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LINK_CLK, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input link_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_CPU_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_CPU_ACLK, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_cpu_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_CPU_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_CPU_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_cpu_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_AUDIO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_AUDIO_ACLK, ASSOCIATED_BUSIF AUDIO_OUT, ASSOCIATED_RESET s_axis_audio_aresetn, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_audio_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_AUDIO_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_AUDIO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_audio_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_VIDEO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_VIDEO_ACLK, ASSOCIATED_BUSIF VIDEO_OUT, ASSOCIATED_RESET s_axis_video_aresetn, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_VIDEO_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_VIDEO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_CLK, CLK_DOMAIN exdes_vid_phy_controller_0_rx_video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input video_clk;

  wire [31:0]AUDIO_OUT_tdata;
  wire [7:0]AUDIO_OUT_tid;
  wire AUDIO_OUT_tready;
  wire AUDIO_OUT_tvalid;
  wire DDC_OUT_scl_i;
  wire DDC_OUT_scl_o;
  wire DDC_OUT_scl_t;
  wire DDC_OUT_sda_i;
  wire DDC_OUT_sda_o;
  wire DDC_OUT_sda_t;
  wire [39:0]LINK_DATA0_IN_tdata;
  wire LINK_DATA0_IN_tvalid;
  wire [39:0]LINK_DATA1_IN_tdata;
  wire LINK_DATA1_IN_tvalid;
  wire [39:0]LINK_DATA2_IN_tdata;
  wire LINK_DATA2_IN_tvalid;
  wire [1:0]SB_STATUS_IN_tdata;
  wire SB_STATUS_IN_tvalid;
  wire [8:0]S_AXI_CPU_IN_araddr;
  wire [2:0]S_AXI_CPU_IN_arprot;
  wire S_AXI_CPU_IN_arready;
  wire S_AXI_CPU_IN_arvalid;
  wire [8:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire S_AXI_CPU_IN_awready;
  wire S_AXI_CPU_IN_awvalid;
  wire S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire S_AXI_CPU_IN_bvalid;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire S_AXI_CPU_IN_rvalid;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire S_AXI_CPU_IN_wready;
  wire [3:0]S_AXI_CPU_IN_wstrb;
  wire S_AXI_CPU_IN_wvalid;
  wire [95:0]VIDEO_OUT_tdata;
  wire VIDEO_OUT_tlast;
  wire VIDEO_OUT_tready;
  wire VIDEO_OUT_tuser;
  wire VIDEO_OUT_tvalid;
  wire [19:0]acr_cts;
  wire [19:0]acr_n;
  wire acr_valid;
  wire cable_detect;
  wire fid;
  wire [0:0]hpd;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO;
  wire [95:0]intf_net_v_hdmi_rx_VIDEO_OUT_DATA;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_FIELD;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC;
  wire [95:0]intf_net_v_hdmi_rx_hdcp_out_TDATA;
  wire intf_net_v_hdmi_rx_hdcp_out_TID;
  wire intf_net_v_hdmi_rx_hdcp_out_TLAST;
  wire intf_net_v_hdmi_rx_hdcp_out_TREADY;
  wire [3:0]intf_net_v_hdmi_rx_hdcp_out_TSTRB;
  wire [31:0]intf_net_v_hdmi_rx_hdcp_out_TUSER;
  wire intf_net_v_hdmi_rx_hdcp_out_TVALID;
  wire irq;
  wire link_clk;
  wire net_inverter_1_Res;
  wire net_v_hdmi_rx_axis_enable;
  wire net_v_hdmi_rx_hpd;
  wire net_v_hdmi_rx_m_axis_video_aresetn_out;
  wire net_v_hdmi_rx_video_reset;
  wire net_v_vid_in_axi4s_overflow;
  wire s_axi_cpu_aclk;
  wire s_axi_cpu_aresetn;
  wire s_axis_audio_aclk;
  wire s_axis_audio_aresetn;
  wire s_axis_video_aclk;
  wire s_axis_video_aresetn;
  wire video_clk;
  wire NLW_v_hdmi_rx_avmute_UNCONNECTED;
  wire NLW_v_hdmi_rx_bridge_pixel_drop_UNCONNECTED;
  wire NLW_v_hdmi_rx_bridge_yuv420_UNCONNECTED;
  wire NLW_v_hdmi_rx_m_axis_hdcp_aclk_UNCONNECTED;
  wire NLW_v_hdmi_rx_m_axis_hdcp_aclken_UNCONNECTED;
  wire NLW_v_hdmi_rx_m_axis_hdcp_aresetn_UNCONNECTED;
  wire [95:0]NLW_v_hdmi_rx_video_data_arb_UNCONNECTED;
  wire [3:0]NLW_v_hdmi_rx_video_de_arb_UNCONNECTED;
  wire [3:0]NLW_v_hdmi_rx_video_hs_arb_UNCONNECTED;
  wire [3:0]NLW_v_hdmi_rx_video_vs_arb_UNCONNECTED;
  wire NLW_v_vid_in_axi4s_underflow_UNCONNECTED;
  wire NLW_v_vid_in_axi4s_vtd_active_video_UNCONNECTED;
  wire NLW_v_vid_in_axi4s_vtd_field_id_UNCONNECTED;
  wire NLW_v_vid_in_axi4s_vtd_hblank_UNCONNECTED;
  wire NLW_v_vid_in_axi4s_vtd_hsync_UNCONNECTED;
  wire NLW_v_vid_in_axi4s_vtd_vblank_UNCONNECTED;
  wire NLW_v_vid_in_axi4s_vtd_vsync_UNCONNECTED;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_0_0 inverter_0
       (.Op1(net_v_hdmi_rx_hpd),
        .Res(hpd));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_1_0 inverter_1
       (.Op1(cable_detect),
        .Res(net_inverter_1_Res));
  (* X_CORE_INFO = "v_hdmi_rx_v3_0_0,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_hdmi_rx_0 v_hdmi_rx
       (.acr_cts(acr_cts),
        .acr_n(acr_n),
        .acr_valid(acr_valid),
        .avmute(NLW_v_hdmi_rx_avmute_UNCONNECTED),
        .axis_enable(net_v_hdmi_rx_axis_enable),
        .bridge_overflow(net_v_vid_in_axi4s_overflow),
        .bridge_pixel_drop(NLW_v_hdmi_rx_bridge_pixel_drop_UNCONNECTED),
        .bridge_yuv420(NLW_v_hdmi_rx_bridge_yuv420_UNCONNECTED),
        .cable_detect(net_inverter_1_Res),
        .ddc_scl_i(DDC_OUT_scl_i),
        .ddc_scl_o(DDC_OUT_scl_o),
        .ddc_scl_t(DDC_OUT_scl_t),
        .ddc_sda_i(DDC_OUT_sda_i),
        .ddc_sda_o(DDC_OUT_sda_o),
        .ddc_sda_t(DDC_OUT_sda_t),
        .hpd(net_v_hdmi_rx_hpd),
        .irq(irq),
        .link_clk(link_clk),
        .link_data0(LINK_DATA0_IN_tdata),
        .link_data1(LINK_DATA1_IN_tdata),
        .link_data2(LINK_DATA2_IN_tdata),
        .link_valid0(LINK_DATA0_IN_tvalid),
        .link_valid1(LINK_DATA1_IN_tvalid),
        .link_valid2(LINK_DATA2_IN_tvalid),
        .m_axis_audio_aclk(s_axis_audio_aclk),
        .m_axis_audio_aresetn(s_axis_audio_aresetn),
        .m_axis_audio_tdata(AUDIO_OUT_tdata),
        .m_axis_audio_tid(AUDIO_OUT_tid),
        .m_axis_audio_tready(AUDIO_OUT_tready),
        .m_axis_audio_tvalid(AUDIO_OUT_tvalid),
        .m_axis_hdcp_aclk(NLW_v_hdmi_rx_m_axis_hdcp_aclk_UNCONNECTED),
        .m_axis_hdcp_aclken(NLW_v_hdmi_rx_m_axis_hdcp_aclken_UNCONNECTED),
        .m_axis_hdcp_aresetn(NLW_v_hdmi_rx_m_axis_hdcp_aresetn_UNCONNECTED),
        .m_axis_hdcp_tdata(intf_net_v_hdmi_rx_hdcp_out_TDATA),
        .m_axis_hdcp_tid(intf_net_v_hdmi_rx_hdcp_out_TID),
        .m_axis_hdcp_tlast(intf_net_v_hdmi_rx_hdcp_out_TLAST),
        .m_axis_hdcp_tready(intf_net_v_hdmi_rx_hdcp_out_TREADY),
        .m_axis_hdcp_tstrb(intf_net_v_hdmi_rx_hdcp_out_TSTRB),
        .m_axis_hdcp_tuser(intf_net_v_hdmi_rx_hdcp_out_TUSER),
        .m_axis_hdcp_tvalid(intf_net_v_hdmi_rx_hdcp_out_TVALID),
        .m_axis_video_aclk(s_axis_video_aclk),
        .m_axis_video_aresetn_in(s_axis_video_aresetn),
        .m_axis_video_aresetn_out(net_v_hdmi_rx_m_axis_video_aresetn_out),
        .s_axi_aclk(s_axi_cpu_aclk),
        .s_axi_araddr(S_AXI_CPU_IN_araddr),
        .s_axi_aresetn(s_axi_cpu_aresetn),
        .s_axi_arprot(S_AXI_CPU_IN_arprot),
        .s_axi_arready(S_AXI_CPU_IN_arready),
        .s_axi_arvalid(S_AXI_CPU_IN_arvalid),
        .s_axi_awaddr(S_AXI_CPU_IN_awaddr),
        .s_axi_awprot(S_AXI_CPU_IN_awprot),
        .s_axi_awready(S_AXI_CPU_IN_awready),
        .s_axi_awvalid(S_AXI_CPU_IN_awvalid),
        .s_axi_bready(S_AXI_CPU_IN_bready),
        .s_axi_bresp(S_AXI_CPU_IN_bresp),
        .s_axi_bvalid(S_AXI_CPU_IN_bvalid),
        .s_axi_rdata(S_AXI_CPU_IN_rdata),
        .s_axi_rready(S_AXI_CPU_IN_rready),
        .s_axi_rresp(S_AXI_CPU_IN_rresp),
        .s_axi_rvalid(S_AXI_CPU_IN_rvalid),
        .s_axi_wdata(S_AXI_CPU_IN_wdata),
        .s_axi_wready(S_AXI_CPU_IN_wready),
        .s_axi_wstrb(S_AXI_CPU_IN_wstrb),
        .s_axi_wvalid(S_AXI_CPU_IN_wvalid),
        .s_axis_hdcp_tdata(intf_net_v_hdmi_rx_hdcp_out_TDATA),
        .s_axis_hdcp_tid(intf_net_v_hdmi_rx_hdcp_out_TID),
        .s_axis_hdcp_tlast(intf_net_v_hdmi_rx_hdcp_out_TLAST),
        .s_axis_hdcp_tready(intf_net_v_hdmi_rx_hdcp_out_TREADY),
        .s_axis_hdcp_tstrb(intf_net_v_hdmi_rx_hdcp_out_TSTRB),
        .s_axis_hdcp_tuser(intf_net_v_hdmi_rx_hdcp_out_TUSER),
        .s_axis_hdcp_tvalid(intf_net_v_hdmi_rx_hdcp_out_TVALID),
        .sb_status_data(SB_STATUS_IN_tdata),
        .sb_status_valid(SB_STATUS_IN_tvalid),
        .video_clk(video_clk),
        .video_data(intf_net_v_hdmi_rx_VIDEO_OUT_DATA),
        .video_data_arb(NLW_v_hdmi_rx_video_data_arb_UNCONNECTED[95:0]),
        .video_de(intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO),
        .video_de_arb(NLW_v_hdmi_rx_video_de_arb_UNCONNECTED[3:0]),
        .video_field(intf_net_v_hdmi_rx_VIDEO_OUT_FIELD),
        .video_hs(intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC),
        .video_hs_arb(NLW_v_hdmi_rx_video_hs_arb_UNCONNECTED[3:0]),
        .video_reset(net_v_hdmi_rx_video_reset),
        .video_vs(intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC),
        .video_vs_arb(NLW_v_hdmi_rx_video_vs_arb_UNCONNECTED[3:0]));
  (* X_CORE_INFO = "v_vid_in_axi4s_v4_0_9,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_vid_in_axi4s_0 v_vid_in_axi4s
       (.aclk(s_axis_video_aclk),
        .aclken(1'b1),
        .aresetn(net_v_hdmi_rx_m_axis_video_aresetn_out),
        .axis_enable(net_v_hdmi_rx_axis_enable),
        .fid(fid),
        .m_axis_video_tdata(VIDEO_OUT_tdata),
        .m_axis_video_tlast(VIDEO_OUT_tlast),
        .m_axis_video_tready(VIDEO_OUT_tready),
        .m_axis_video_tuser(VIDEO_OUT_tuser),
        .m_axis_video_tvalid(VIDEO_OUT_tvalid),
        .overflow(net_v_vid_in_axi4s_overflow),
        .underflow(NLW_v_vid_in_axi4s_underflow_UNCONNECTED),
        .vid_active_video(intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO),
        .vid_data(intf_net_v_hdmi_rx_VIDEO_OUT_DATA),
        .vid_field_id(intf_net_v_hdmi_rx_VIDEO_OUT_FIELD),
        .vid_hblank(1'b0),
        .vid_hsync(intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC),
        .vid_io_in_ce(1'b1),
        .vid_io_in_clk(video_clk),
        .vid_io_in_reset(net_v_hdmi_rx_video_reset),
        .vid_vblank(1'b0),
        .vid_vsync(intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC),
        .vtd_active_video(NLW_v_vid_in_axi4s_vtd_active_video_UNCONNECTED),
        .vtd_field_id(NLW_v_vid_in_axi4s_vtd_field_id_UNCONNECTED),
        .vtd_hblank(NLW_v_vid_in_axi4s_vtd_hblank_UNCONNECTED),
        .vtd_hsync(NLW_v_vid_in_axi4s_vtd_hsync_UNCONNECTED),
        .vtd_vblank(NLW_v_vid_in_axi4s_vtd_vblank_UNCONNECTED),
        .vtd_vsync(NLW_v_vid_in_axi4s_vtd_vsync_UNCONNECTED));
endmodule

(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_0_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;


endmodule

(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_1_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;


endmodule

(* X_CORE_INFO = "v_hdmi_rx_v3_0_0,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_hdmi_rx_0
   (s_axi_aclk,
    s_axi_aresetn,
    m_axis_video_aresetn_in,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    link_clk,
    link_data0,
    link_data1,
    link_data2,
    link_valid0,
    link_valid1,
    link_valid2,
    hpd,
    cable_detect,
    video_reset,
    m_axis_video_aresetn_out,
    axis_enable,
    sb_status_data,
    sb_status_valid,
    avmute,
    video_clk,
    m_axis_video_aclk,
    video_vs,
    video_hs,
    video_data,
    video_de,
    video_field,
    video_vs_arb,
    video_hs_arb,
    video_de_arb,
    video_data_arb,
    m_axis_audio_aresetn,
    m_axis_audio_aclk,
    m_axis_audio_tready,
    m_axis_audio_tid,
    m_axis_audio_tdata,
    m_axis_audio_tvalid,
    acr_cts,
    acr_n,
    acr_valid,
    m_axis_hdcp_aresetn,
    m_axis_hdcp_aclk,
    m_axis_hdcp_aclken,
    m_axis_hdcp_tid,
    m_axis_hdcp_tuser,
    m_axis_hdcp_tdata,
    m_axis_hdcp_tstrb,
    m_axis_hdcp_tvalid,
    m_axis_hdcp_tlast,
    m_axis_hdcp_tready,
    s_axis_hdcp_tid,
    s_axis_hdcp_tuser,
    s_axis_hdcp_tdata,
    s_axis_hdcp_tstrb,
    s_axis_hdcp_tvalid,
    s_axis_hdcp_tlast,
    s_axis_hdcp_tready,
    ddc_scl_i,
    ddc_scl_o,
    ddc_scl_t,
    ddc_sda_i,
    ddc_sda_o,
    ddc_sda_t,
    irq,
    bridge_yuv420,
    bridge_pixel_drop,
    bridge_overflow);
  input s_axi_aclk;
  input s_axi_aresetn;
  input m_axis_video_aresetn_in;
  input [8:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input link_clk;
  input [39:0]link_data0;
  input [39:0]link_data1;
  input [39:0]link_data2;
  input link_valid0;
  input link_valid1;
  input link_valid2;
  output hpd;
  input cable_detect;
  output video_reset;
  output m_axis_video_aresetn_out;
  output axis_enable;
  input [1:0]sb_status_data;
  input sb_status_valid;
  output avmute;
  input video_clk;
  input m_axis_video_aclk;
  output video_vs;
  output video_hs;
  output [95:0]video_data;
  output video_de;
  output video_field;
  output [3:0]video_vs_arb;
  output [3:0]video_hs_arb;
  output [3:0]video_de_arb;
  output [95:0]video_data_arb;
  input m_axis_audio_aresetn;
  input m_axis_audio_aclk;
  input m_axis_audio_tready;
  output [7:0]m_axis_audio_tid;
  output [31:0]m_axis_audio_tdata;
  output m_axis_audio_tvalid;
  output [19:0]acr_cts;
  output [19:0]acr_n;
  output acr_valid;
  output m_axis_hdcp_aresetn;
  output m_axis_hdcp_aclk;
  output m_axis_hdcp_aclken;
  output m_axis_hdcp_tid;
  output [31:0]m_axis_hdcp_tuser;
  output [95:0]m_axis_hdcp_tdata;
  output [3:0]m_axis_hdcp_tstrb;
  output m_axis_hdcp_tvalid;
  output m_axis_hdcp_tlast;
  input m_axis_hdcp_tready;
  input s_axis_hdcp_tid;
  input [31:0]s_axis_hdcp_tuser;
  input [95:0]s_axis_hdcp_tdata;
  input [3:0]s_axis_hdcp_tstrb;
  input s_axis_hdcp_tvalid;
  input s_axis_hdcp_tlast;
  output s_axis_hdcp_tready;
  input ddc_scl_i;
  output ddc_scl_o;
  output ddc_scl_t;
  input ddc_sda_i;
  output ddc_sda_o;
  output ddc_sda_t;
  output irq;
  output bridge_yuv420;
  output bridge_pixel_drop;
  input bridge_overflow;


endmodule

(* X_CORE_INFO = "v_vid_in_axi4s_v4_0_9,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_vid_in_axi4s_0
   (vid_io_in_clk,
    vid_io_in_ce,
    vid_io_in_reset,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    fid,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    overflow,
    underflow,
    axis_enable);
  input vid_io_in_clk;
  input vid_io_in_ce;
  input vid_io_in_reset;
  input vid_active_video;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input [95:0]vid_data;
  input aclk;
  input aclken;
  input aresetn;
  output [95:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output fid;
  output vtd_active_video;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output overflow;
  output underflow;
  input axis_enable;


endmodule

(* CHECK_LICENSE_TYPE = "exdes_v_hdmi_rx_ss_0,bd_3ec1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_3ec1,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_cpu_aclk,
    s_axi_cpu_aresetn,
    cable_detect,
    link_clk,
    s_axis_audio_aclk,
    s_axis_audio_aresetn,
    acr_cts,
    acr_n,
    acr_valid,
    hpd,
    irq,
    video_clk,
    fid,
    s_axis_video_aresetn,
    s_axis_video_aclk,
    LINK_DATA1_IN_tdata,
    LINK_DATA1_IN_tvalid,
    LINK_DATA0_IN_tdata,
    LINK_DATA0_IN_tvalid,
    SB_STATUS_IN_tdata,
    SB_STATUS_IN_tvalid,
    LINK_DATA2_IN_tdata,
    LINK_DATA2_IN_tvalid,
    S_AXI_CPU_IN_araddr,
    S_AXI_CPU_IN_arprot,
    S_AXI_CPU_IN_arready,
    S_AXI_CPU_IN_arvalid,
    S_AXI_CPU_IN_awaddr,
    S_AXI_CPU_IN_awprot,
    S_AXI_CPU_IN_awready,
    S_AXI_CPU_IN_awvalid,
    S_AXI_CPU_IN_bready,
    S_AXI_CPU_IN_bresp,
    S_AXI_CPU_IN_bvalid,
    S_AXI_CPU_IN_rdata,
    S_AXI_CPU_IN_rready,
    S_AXI_CPU_IN_rresp,
    S_AXI_CPU_IN_rvalid,
    S_AXI_CPU_IN_wdata,
    S_AXI_CPU_IN_wready,
    S_AXI_CPU_IN_wstrb,
    S_AXI_CPU_IN_wvalid,
    AUDIO_OUT_tdata,
    AUDIO_OUT_tid,
    AUDIO_OUT_tready,
    AUDIO_OUT_tvalid,
    DDC_OUT_scl_i,
    DDC_OUT_scl_o,
    DDC_OUT_scl_t,
    DDC_OUT_sda_i,
    DDC_OUT_sda_o,
    DDC_OUT_sda_t,
    VIDEO_OUT_tdata,
    VIDEO_OUT_tlast,
    VIDEO_OUT_tready,
    VIDEO_OUT_tuser,
    VIDEO_OUT_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_cpu_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axi_cpu_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, INSERT_VIP 0" *) input s_axi_cpu_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_cpu_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_cpu_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_cpu_aresetn;
  input cable_detect;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.link_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.link_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, INSERT_VIP 0" *) input link_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_audio_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, ASSOCIATED_BUSIF AUDIO_OUT, ASSOCIATED_RESET s_axis_audio_aresetn, INSERT_VIP 0" *) input s_axis_audio_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_audio_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_audio_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_audio_aresetn;
  output [19:0]acr_cts;
  output [19:0]acr_n;
  output acr_valid;
  output [0:0]hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.video_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rx_video_clk, INSERT_VIP 0" *) input video_clk;
  output fid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_video_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_video_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_video_aclk, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, ASSOCIATED_BUSIF VIDEO_OUT, ASSOCIATED_RESET s_axis_video_aresetn, INSERT_VIP 0" *) input s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA" *) input [39:0]LINK_DATA1_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA1_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input LINK_DATA1_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA" *) input [39:0]LINK_DATA0_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA0_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input LINK_DATA0_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) input [1:0]SB_STATUS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SB_STATUS_IN, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input SB_STATUS_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA" *) input [39:0]LINK_DATA2_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA2_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input LINK_DATA2_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR" *) input [8:0]S_AXI_CPU_IN_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT" *) input [2:0]S_AXI_CPU_IN_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY" *) output S_AXI_CPU_IN_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID" *) input S_AXI_CPU_IN_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR" *) input [8:0]S_AXI_CPU_IN_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT" *) input [2:0]S_AXI_CPU_IN_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY" *) output S_AXI_CPU_IN_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID" *) input S_AXI_CPU_IN_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY" *) input S_AXI_CPU_IN_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP" *) output [1:0]S_AXI_CPU_IN_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID" *) output S_AXI_CPU_IN_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA" *) output [31:0]S_AXI_CPU_IN_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY" *) input S_AXI_CPU_IN_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP" *) output [1:0]S_AXI_CPU_IN_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID" *) output S_AXI_CPU_IN_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA" *) input [31:0]S_AXI_CPU_IN_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY" *) output S_AXI_CPU_IN_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB" *) input [3:0]S_AXI_CPU_IN_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CPU_IN, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_CPU_IN_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA" *) output [31:0]AUDIO_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TID" *) output [7:0]AUDIO_OUT_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY" *) input AUDIO_OUT_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_OUT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output AUDIO_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *) input DDC_OUT_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *) output DDC_OUT_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *) output DDC_OUT_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *) input DDC_OUT_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *) output DDC_OUT_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *) output DDC_OUT_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA" *) output [95:0]VIDEO_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST" *) output VIDEO_OUT_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY" *) input VIDEO_OUT_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER" *) output VIDEO_OUT_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_OUT, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0" *) output VIDEO_OUT_tvalid;

  wire [31:0]AUDIO_OUT_tdata;
  wire [7:0]AUDIO_OUT_tid;
  wire AUDIO_OUT_tready;
  wire AUDIO_OUT_tvalid;
  wire DDC_OUT_scl_i;
  wire DDC_OUT_scl_o;
  wire DDC_OUT_scl_t;
  wire DDC_OUT_sda_i;
  wire DDC_OUT_sda_o;
  wire DDC_OUT_sda_t;
  wire [39:0]LINK_DATA0_IN_tdata;
  wire LINK_DATA0_IN_tvalid;
  wire [39:0]LINK_DATA1_IN_tdata;
  wire LINK_DATA1_IN_tvalid;
  wire [39:0]LINK_DATA2_IN_tdata;
  wire LINK_DATA2_IN_tvalid;
  wire [1:0]SB_STATUS_IN_tdata;
  wire SB_STATUS_IN_tvalid;
  wire [8:0]S_AXI_CPU_IN_araddr;
  wire [2:0]S_AXI_CPU_IN_arprot;
  wire S_AXI_CPU_IN_arready;
  wire S_AXI_CPU_IN_arvalid;
  wire [8:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire S_AXI_CPU_IN_awready;
  wire S_AXI_CPU_IN_awvalid;
  wire S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire S_AXI_CPU_IN_bvalid;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire S_AXI_CPU_IN_rvalid;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire S_AXI_CPU_IN_wready;
  wire [3:0]S_AXI_CPU_IN_wstrb;
  wire S_AXI_CPU_IN_wvalid;
  wire [95:0]VIDEO_OUT_tdata;
  wire VIDEO_OUT_tlast;
  wire VIDEO_OUT_tready;
  wire VIDEO_OUT_tuser;
  wire VIDEO_OUT_tvalid;
  wire [19:0]acr_cts;
  wire [19:0]acr_n;
  wire acr_valid;
  wire cable_detect;
  wire fid;
  wire [0:0]hpd;
  wire irq;
  wire link_clk;
  wire s_axi_cpu_aclk;
  wire s_axi_cpu_aresetn;
  wire s_axis_audio_aclk;
  wire s_axis_audio_aresetn;
  wire s_axis_video_aclk;
  wire s_axis_video_aresetn;
  wire video_clk;

  (* HW_HANDOFF = "exdes_v_hdmi_rx_ss_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1 inst
       (.AUDIO_OUT_tdata(AUDIO_OUT_tdata),
        .AUDIO_OUT_tid(AUDIO_OUT_tid),
        .AUDIO_OUT_tready(AUDIO_OUT_tready),
        .AUDIO_OUT_tvalid(AUDIO_OUT_tvalid),
        .DDC_OUT_scl_i(DDC_OUT_scl_i),
        .DDC_OUT_scl_o(DDC_OUT_scl_o),
        .DDC_OUT_scl_t(DDC_OUT_scl_t),
        .DDC_OUT_sda_i(DDC_OUT_sda_i),
        .DDC_OUT_sda_o(DDC_OUT_sda_o),
        .DDC_OUT_sda_t(DDC_OUT_sda_t),
        .LINK_DATA0_IN_tdata(LINK_DATA0_IN_tdata),
        .LINK_DATA0_IN_tvalid(LINK_DATA0_IN_tvalid),
        .LINK_DATA1_IN_tdata(LINK_DATA1_IN_tdata),
        .LINK_DATA1_IN_tvalid(LINK_DATA1_IN_tvalid),
        .LINK_DATA2_IN_tdata(LINK_DATA2_IN_tdata),
        .LINK_DATA2_IN_tvalid(LINK_DATA2_IN_tvalid),
        .SB_STATUS_IN_tdata(SB_STATUS_IN_tdata),
        .SB_STATUS_IN_tvalid(SB_STATUS_IN_tvalid),
        .S_AXI_CPU_IN_araddr(S_AXI_CPU_IN_araddr),
        .S_AXI_CPU_IN_arprot(S_AXI_CPU_IN_arprot),
        .S_AXI_CPU_IN_arready(S_AXI_CPU_IN_arready),
        .S_AXI_CPU_IN_arvalid(S_AXI_CPU_IN_arvalid),
        .S_AXI_CPU_IN_awaddr(S_AXI_CPU_IN_awaddr),
        .S_AXI_CPU_IN_awprot(S_AXI_CPU_IN_awprot),
        .S_AXI_CPU_IN_awready(S_AXI_CPU_IN_awready),
        .S_AXI_CPU_IN_awvalid(S_AXI_CPU_IN_awvalid),
        .S_AXI_CPU_IN_bready(S_AXI_CPU_IN_bready),
        .S_AXI_CPU_IN_bresp(S_AXI_CPU_IN_bresp),
        .S_AXI_CPU_IN_bvalid(S_AXI_CPU_IN_bvalid),
        .S_AXI_CPU_IN_rdata(S_AXI_CPU_IN_rdata),
        .S_AXI_CPU_IN_rready(S_AXI_CPU_IN_rready),
        .S_AXI_CPU_IN_rresp(S_AXI_CPU_IN_rresp),
        .S_AXI_CPU_IN_rvalid(S_AXI_CPU_IN_rvalid),
        .S_AXI_CPU_IN_wdata(S_AXI_CPU_IN_wdata),
        .S_AXI_CPU_IN_wready(S_AXI_CPU_IN_wready),
        .S_AXI_CPU_IN_wstrb(S_AXI_CPU_IN_wstrb),
        .S_AXI_CPU_IN_wvalid(S_AXI_CPU_IN_wvalid),
        .VIDEO_OUT_tdata(VIDEO_OUT_tdata),
        .VIDEO_OUT_tlast(VIDEO_OUT_tlast),
        .VIDEO_OUT_tready(VIDEO_OUT_tready),
        .VIDEO_OUT_tuser(VIDEO_OUT_tuser),
        .VIDEO_OUT_tvalid(VIDEO_OUT_tvalid),
        .acr_cts(acr_cts),
        .acr_n(acr_n),
        .acr_valid(acr_valid),
        .cable_detect(cable_detect),
        .fid(fid),
        .hpd(hpd),
        .irq(irq),
        .link_clk(link_clk),
        .s_axi_cpu_aclk(s_axi_cpu_aclk),
        .s_axi_cpu_aresetn(s_axi_cpu_aresetn),
        .s_axis_audio_aclk(s_axis_audio_aclk),
        .s_axis_audio_aresetn(s_axis_audio_aresetn),
        .s_axis_video_aclk(s_axis_video_aclk),
        .s_axis_video_aresetn(s_axis_video_aresetn),
        .video_clk(video_clk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
