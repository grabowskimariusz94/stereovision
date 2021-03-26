-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 18 22:58:58 2021
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_v_hdmi_rx_ss_0_sim_netlist.vhdl
-- Design      : exdes_v_hdmi_rx_ss_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1 is
  port (
    AUDIO_OUT_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AUDIO_OUT_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    AUDIO_OUT_tready : in STD_LOGIC;
    AUDIO_OUT_tvalid : out STD_LOGIC;
    DDC_OUT_scl_i : in STD_LOGIC;
    DDC_OUT_scl_o : out STD_LOGIC;
    DDC_OUT_scl_t : out STD_LOGIC;
    DDC_OUT_sda_i : in STD_LOGIC;
    DDC_OUT_sda_o : out STD_LOGIC;
    DDC_OUT_sda_t : out STD_LOGIC;
    LINK_DATA0_IN_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA0_IN_tvalid : in STD_LOGIC;
    LINK_DATA1_IN_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA1_IN_tvalid : in STD_LOGIC;
    LINK_DATA2_IN_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA2_IN_tvalid : in STD_LOGIC;
    SB_STATUS_IN_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SB_STATUS_IN_tvalid : in STD_LOGIC;
    S_AXI_CPU_IN_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_CPU_IN_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_arready : out STD_LOGIC;
    S_AXI_CPU_IN_arvalid : in STD_LOGIC;
    S_AXI_CPU_IN_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_CPU_IN_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_awready : out STD_LOGIC;
    S_AXI_CPU_IN_awvalid : in STD_LOGIC;
    S_AXI_CPU_IN_bready : in STD_LOGIC;
    S_AXI_CPU_IN_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_bvalid : out STD_LOGIC;
    S_AXI_CPU_IN_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_rready : in STD_LOGIC;
    S_AXI_CPU_IN_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_rvalid : out STD_LOGIC;
    S_AXI_CPU_IN_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_wready : out STD_LOGIC;
    S_AXI_CPU_IN_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CPU_IN_wvalid : in STD_LOGIC;
    VIDEO_OUT_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    VIDEO_OUT_tlast : out STD_LOGIC;
    VIDEO_OUT_tready : in STD_LOGIC;
    VIDEO_OUT_tuser : out STD_LOGIC;
    VIDEO_OUT_tvalid : out STD_LOGIC;
    acr_cts : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : out STD_LOGIC;
    cable_detect : in STD_LOGIC;
    fid : out STD_LOGIC;
    hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    link_clk : in STD_LOGIC;
    s_axi_cpu_aclk : in STD_LOGIC;
    s_axi_cpu_aresetn : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    s_axis_video_aresetn : in STD_LOGIC;
    video_clk : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1 : entity is "exdes_v_hdmi_rx_ss_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_hdmi_rx_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axis_video_aresetn_in : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    link_data0 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    link_data1 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    link_data2 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    link_valid0 : in STD_LOGIC;
    link_valid1 : in STD_LOGIC;
    link_valid2 : in STD_LOGIC;
    hpd : out STD_LOGIC;
    cable_detect : in STD_LOGIC;
    video_reset : out STD_LOGIC;
    m_axis_video_aresetn_out : out STD_LOGIC;
    axis_enable : out STD_LOGIC;
    sb_status_data : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sb_status_valid : in STD_LOGIC;
    avmute : out STD_LOGIC;
    video_clk : in STD_LOGIC;
    m_axis_video_aclk : in STD_LOGIC;
    video_vs : out STD_LOGIC;
    video_hs : out STD_LOGIC;
    video_data : out STD_LOGIC_VECTOR ( 95 downto 0 );
    video_de : out STD_LOGIC;
    video_field : out STD_LOGIC;
    video_vs_arb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_hs_arb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_de_arb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_data_arb : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_audio_aresetn : in STD_LOGIC;
    m_axis_audio_aclk : in STD_LOGIC;
    m_axis_audio_tready : in STD_LOGIC;
    m_axis_audio_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_audio_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_audio_tvalid : out STD_LOGIC;
    acr_cts : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : out STD_LOGIC;
    m_axis_hdcp_aresetn : out STD_LOGIC;
    m_axis_hdcp_aclk : out STD_LOGIC;
    m_axis_hdcp_aclken : out STD_LOGIC;
    m_axis_hdcp_tid : out STD_LOGIC;
    m_axis_hdcp_tuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_hdcp_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_hdcp_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_hdcp_tvalid : out STD_LOGIC;
    m_axis_hdcp_tlast : out STD_LOGIC;
    m_axis_hdcp_tready : in STD_LOGIC;
    s_axis_hdcp_tid : in STD_LOGIC;
    s_axis_hdcp_tuser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_hdcp_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_hdcp_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_hdcp_tvalid : in STD_LOGIC;
    s_axis_hdcp_tlast : in STD_LOGIC;
    s_axis_hdcp_tready : out STD_LOGIC;
    ddc_scl_i : in STD_LOGIC;
    ddc_scl_o : out STD_LOGIC;
    ddc_scl_t : out STD_LOGIC;
    ddc_sda_i : in STD_LOGIC;
    ddc_sda_o : out STD_LOGIC;
    ddc_sda_t : out STD_LOGIC;
    irq : out STD_LOGIC;
    bridge_yuv420 : out STD_LOGIC;
    bridge_pixel_drop : out STD_LOGIC;
    bridge_overflow : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_hdmi_rx_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_vid_in_axi4s_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_vid_in_axi4s_0;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO : STD_LOGIC;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_DATA : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal intf_net_v_hdmi_rx_VIDEO_OUT_FIELD : STD_LOGIC;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC : STD_LOGIC;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TDATA : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal intf_net_v_hdmi_rx_hdcp_out_TID : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TLAST : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TREADY : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_v_hdmi_rx_hdcp_out_TUSER : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_v_hdmi_rx_hdcp_out_TVALID : STD_LOGIC;
  signal net_inverter_1_Res : STD_LOGIC;
  signal net_v_hdmi_rx_axis_enable : STD_LOGIC;
  signal net_v_hdmi_rx_hpd : STD_LOGIC;
  signal net_v_hdmi_rx_m_axis_video_aresetn_out : STD_LOGIC;
  signal net_v_hdmi_rx_video_reset : STD_LOGIC;
  signal net_v_vid_in_axi4s_overflow : STD_LOGIC;
  signal NLW_v_hdmi_rx_avmute_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_bridge_pixel_drop_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_bridge_yuv420_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_m_axis_hdcp_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_m_axis_hdcp_aclken_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_m_axis_hdcp_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_video_data_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal NLW_v_hdmi_rx_video_de_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_hdmi_rx_video_hs_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_hdmi_rx_video_vs_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_vid_in_axi4s_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_active_video_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_hsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_vsync_UNCONNECTED : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of inverter_0 : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2";
  attribute X_CORE_INFO of inverter_1 : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2";
  attribute X_CORE_INFO of v_hdmi_rx : label is "v_hdmi_rx_v3_0_0,Vivado 2020.2";
  attribute X_CORE_INFO of v_vid_in_axi4s : label is "v_vid_in_axi4s_v4_0_9,Vivado 2020.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AUDIO_OUT_tready : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T";
  attribute X_INTERFACE_INFO of LINK_DATA0_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID";
  attribute X_INTERFACE_INFO of LINK_DATA1_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID";
  attribute X_INTERFACE_INFO of LINK_DATA2_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tlast : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tready : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tuser : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME INTR.IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of link_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LINK_CLK CLK";
  attribute X_INTERFACE_PARAMETER of link_clk : signal is "XIL_INTERFACENAME CLK.LINK_CLK, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_cpu_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_CPU_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_CPU_ACLK, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of s_axi_cpu_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_CPU_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_CPU_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axis_audio_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXIS_AUDIO_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aclk : signal is "XIL_INTERFACENAME CLK.S_AXIS_AUDIO_ACLK, ASSOCIATED_BUSIF AUDIO_OUT, ASSOCIATED_RESET s_axis_audio_aresetn, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of s_axis_audio_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_AUDIO_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aresetn : signal is "XIL_INTERFACENAME RST.S_AXIS_AUDIO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axis_video_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXIS_VIDEO_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aclk : signal is "XIL_INTERFACENAME CLK.S_AXIS_VIDEO_ACLK, ASSOCIATED_BUSIF VIDEO_OUT, ASSOCIATED_RESET s_axis_video_aresetn, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of s_axis_video_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_VIDEO_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aresetn : signal is "XIL_INTERFACENAME RST.S_AXIS_VIDEO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of video_clk : signal is "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK CLK";
  attribute X_INTERFACE_PARAMETER of video_clk : signal is "XIL_INTERFACENAME CLK.VIDEO_CLK, CLK_DOMAIN exdes_vid_phy_controller_0_rx_video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA";
  attribute X_INTERFACE_PARAMETER of AUDIO_OUT_tdata : signal is "XIL_INTERFACENAME AUDIO_OUT, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tid : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TID";
  attribute X_INTERFACE_INFO of LINK_DATA0_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA";
  attribute X_INTERFACE_PARAMETER of LINK_DATA0_IN_tdata : signal is "XIL_INTERFACENAME LINK_DATA0_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of LINK_DATA1_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA";
  attribute X_INTERFACE_PARAMETER of LINK_DATA1_IN_tdata : signal is "XIL_INTERFACENAME LINK_DATA1_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of LINK_DATA2_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA";
  attribute X_INTERFACE_PARAMETER of LINK_DATA2_IN_tdata : signal is "XIL_INTERFACENAME LINK_DATA2_IN, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tdata : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA";
  attribute X_INTERFACE_PARAMETER of SB_STATUS_IN_tdata : signal is "XIL_INTERFACENAME SB_STATUS_IN, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_CPU_IN_araddr : signal is "XIL_INTERFACENAME S_AXI_CPU_IN, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA";
  attribute X_INTERFACE_PARAMETER of VIDEO_OUT_tdata : signal is "XIL_INTERFACENAME VIDEO_OUT, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, FREQ_HZ 150000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, PHASE 0.0, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
begin
inverter_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_0_0
     port map (
      Op1(0) => net_v_hdmi_rx_hpd,
      Res(0) => hpd(0)
    );
inverter_1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_inverter_1_0
     port map (
      Op1(0) => cable_detect,
      Res(0) => net_inverter_1_Res
    );
v_hdmi_rx: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_hdmi_rx_0
     port map (
      acr_cts(19 downto 0) => acr_cts(19 downto 0),
      acr_n(19 downto 0) => acr_n(19 downto 0),
      acr_valid => acr_valid,
      avmute => NLW_v_hdmi_rx_avmute_UNCONNECTED,
      axis_enable => net_v_hdmi_rx_axis_enable,
      bridge_overflow => net_v_vid_in_axi4s_overflow,
      bridge_pixel_drop => NLW_v_hdmi_rx_bridge_pixel_drop_UNCONNECTED,
      bridge_yuv420 => NLW_v_hdmi_rx_bridge_yuv420_UNCONNECTED,
      cable_detect => net_inverter_1_Res,
      ddc_scl_i => DDC_OUT_scl_i,
      ddc_scl_o => DDC_OUT_scl_o,
      ddc_scl_t => DDC_OUT_scl_t,
      ddc_sda_i => DDC_OUT_sda_i,
      ddc_sda_o => DDC_OUT_sda_o,
      ddc_sda_t => DDC_OUT_sda_t,
      hpd => net_v_hdmi_rx_hpd,
      irq => irq,
      link_clk => link_clk,
      link_data0(39 downto 0) => LINK_DATA0_IN_tdata(39 downto 0),
      link_data1(39 downto 0) => LINK_DATA1_IN_tdata(39 downto 0),
      link_data2(39 downto 0) => LINK_DATA2_IN_tdata(39 downto 0),
      link_valid0 => LINK_DATA0_IN_tvalid,
      link_valid1 => LINK_DATA1_IN_tvalid,
      link_valid2 => LINK_DATA2_IN_tvalid,
      m_axis_audio_aclk => s_axis_audio_aclk,
      m_axis_audio_aresetn => s_axis_audio_aresetn,
      m_axis_audio_tdata(31 downto 0) => AUDIO_OUT_tdata(31 downto 0),
      m_axis_audio_tid(7 downto 0) => AUDIO_OUT_tid(7 downto 0),
      m_axis_audio_tready => AUDIO_OUT_tready,
      m_axis_audio_tvalid => AUDIO_OUT_tvalid,
      m_axis_hdcp_aclk => NLW_v_hdmi_rx_m_axis_hdcp_aclk_UNCONNECTED,
      m_axis_hdcp_aclken => NLW_v_hdmi_rx_m_axis_hdcp_aclken_UNCONNECTED,
      m_axis_hdcp_aresetn => NLW_v_hdmi_rx_m_axis_hdcp_aresetn_UNCONNECTED,
      m_axis_hdcp_tdata(95 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TDATA(95 downto 0),
      m_axis_hdcp_tid => intf_net_v_hdmi_rx_hdcp_out_TID,
      m_axis_hdcp_tlast => intf_net_v_hdmi_rx_hdcp_out_TLAST,
      m_axis_hdcp_tready => intf_net_v_hdmi_rx_hdcp_out_TREADY,
      m_axis_hdcp_tstrb(3 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TSTRB(3 downto 0),
      m_axis_hdcp_tuser(31 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TUSER(31 downto 0),
      m_axis_hdcp_tvalid => intf_net_v_hdmi_rx_hdcp_out_TVALID,
      m_axis_video_aclk => s_axis_video_aclk,
      m_axis_video_aresetn_in => s_axis_video_aresetn,
      m_axis_video_aresetn_out => net_v_hdmi_rx_m_axis_video_aresetn_out,
      s_axi_aclk => s_axi_cpu_aclk,
      s_axi_araddr(8 downto 0) => S_AXI_CPU_IN_araddr(8 downto 0),
      s_axi_aresetn => s_axi_cpu_aresetn,
      s_axi_arprot(2 downto 0) => S_AXI_CPU_IN_arprot(2 downto 0),
      s_axi_arready => S_AXI_CPU_IN_arready,
      s_axi_arvalid => S_AXI_CPU_IN_arvalid,
      s_axi_awaddr(8 downto 0) => S_AXI_CPU_IN_awaddr(8 downto 0),
      s_axi_awprot(2 downto 0) => S_AXI_CPU_IN_awprot(2 downto 0),
      s_axi_awready => S_AXI_CPU_IN_awready,
      s_axi_awvalid => S_AXI_CPU_IN_awvalid,
      s_axi_bready => S_AXI_CPU_IN_bready,
      s_axi_bresp(1 downto 0) => S_AXI_CPU_IN_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_CPU_IN_bvalid,
      s_axi_rdata(31 downto 0) => S_AXI_CPU_IN_rdata(31 downto 0),
      s_axi_rready => S_AXI_CPU_IN_rready,
      s_axi_rresp(1 downto 0) => S_AXI_CPU_IN_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_CPU_IN_rvalid,
      s_axi_wdata(31 downto 0) => S_AXI_CPU_IN_wdata(31 downto 0),
      s_axi_wready => S_AXI_CPU_IN_wready,
      s_axi_wstrb(3 downto 0) => S_AXI_CPU_IN_wstrb(3 downto 0),
      s_axi_wvalid => S_AXI_CPU_IN_wvalid,
      s_axis_hdcp_tdata(95 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TDATA(95 downto 0),
      s_axis_hdcp_tid => intf_net_v_hdmi_rx_hdcp_out_TID,
      s_axis_hdcp_tlast => intf_net_v_hdmi_rx_hdcp_out_TLAST,
      s_axis_hdcp_tready => intf_net_v_hdmi_rx_hdcp_out_TREADY,
      s_axis_hdcp_tstrb(3 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TSTRB(3 downto 0),
      s_axis_hdcp_tuser(31 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TUSER(31 downto 0),
      s_axis_hdcp_tvalid => intf_net_v_hdmi_rx_hdcp_out_TVALID,
      sb_status_data(1 downto 0) => SB_STATUS_IN_tdata(1 downto 0),
      sb_status_valid => SB_STATUS_IN_tvalid,
      video_clk => video_clk,
      video_data(95 downto 0) => intf_net_v_hdmi_rx_VIDEO_OUT_DATA(95 downto 0),
      video_data_arb(95 downto 0) => NLW_v_hdmi_rx_video_data_arb_UNCONNECTED(95 downto 0),
      video_de => intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO,
      video_de_arb(3 downto 0) => NLW_v_hdmi_rx_video_de_arb_UNCONNECTED(3 downto 0),
      video_field => intf_net_v_hdmi_rx_VIDEO_OUT_FIELD,
      video_hs => intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC,
      video_hs_arb(3 downto 0) => NLW_v_hdmi_rx_video_hs_arb_UNCONNECTED(3 downto 0),
      video_reset => net_v_hdmi_rx_video_reset,
      video_vs => intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC,
      video_vs_arb(3 downto 0) => NLW_v_hdmi_rx_video_vs_arb_UNCONNECTED(3 downto 0)
    );
v_vid_in_axi4s: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1_v_vid_in_axi4s_0
     port map (
      aclk => s_axis_video_aclk,
      aclken => '1',
      aresetn => net_v_hdmi_rx_m_axis_video_aresetn_out,
      axis_enable => net_v_hdmi_rx_axis_enable,
      fid => fid,
      m_axis_video_tdata(95 downto 0) => VIDEO_OUT_tdata(95 downto 0),
      m_axis_video_tlast => VIDEO_OUT_tlast,
      m_axis_video_tready => VIDEO_OUT_tready,
      m_axis_video_tuser => VIDEO_OUT_tuser,
      m_axis_video_tvalid => VIDEO_OUT_tvalid,
      overflow => net_v_vid_in_axi4s_overflow,
      underflow => NLW_v_vid_in_axi4s_underflow_UNCONNECTED,
      vid_active_video => intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO,
      vid_data(95 downto 0) => intf_net_v_hdmi_rx_VIDEO_OUT_DATA(95 downto 0),
      vid_field_id => intf_net_v_hdmi_rx_VIDEO_OUT_FIELD,
      vid_hblank => '0',
      vid_hsync => intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC,
      vid_io_in_ce => '1',
      vid_io_in_clk => video_clk,
      vid_io_in_reset => net_v_hdmi_rx_video_reset,
      vid_vblank => '0',
      vid_vsync => intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC,
      vtd_active_video => NLW_v_vid_in_axi4s_vtd_active_video_UNCONNECTED,
      vtd_field_id => NLW_v_vid_in_axi4s_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_vtd_hblank_UNCONNECTED,
      vtd_hsync => NLW_v_vid_in_axi4s_vtd_hsync_UNCONNECTED,
      vtd_vblank => NLW_v_vid_in_axi4s_vtd_vblank_UNCONNECTED,
      vtd_vsync => NLW_v_vid_in_axi4s_vtd_vsync_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_cpu_aclk : in STD_LOGIC;
    s_axi_cpu_aresetn : in STD_LOGIC;
    cable_detect : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    acr_cts : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : out STD_LOGIC;
    hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    video_clk : in STD_LOGIC;
    fid : out STD_LOGIC;
    s_axis_video_aresetn : in STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    LINK_DATA1_IN_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA1_IN_tvalid : in STD_LOGIC;
    LINK_DATA0_IN_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA0_IN_tvalid : in STD_LOGIC;
    SB_STATUS_IN_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SB_STATUS_IN_tvalid : in STD_LOGIC;
    LINK_DATA2_IN_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA2_IN_tvalid : in STD_LOGIC;
    S_AXI_CPU_IN_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_CPU_IN_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_arready : out STD_LOGIC;
    S_AXI_CPU_IN_arvalid : in STD_LOGIC;
    S_AXI_CPU_IN_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_CPU_IN_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_awready : out STD_LOGIC;
    S_AXI_CPU_IN_awvalid : in STD_LOGIC;
    S_AXI_CPU_IN_bready : in STD_LOGIC;
    S_AXI_CPU_IN_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_bvalid : out STD_LOGIC;
    S_AXI_CPU_IN_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_rready : in STD_LOGIC;
    S_AXI_CPU_IN_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_rvalid : out STD_LOGIC;
    S_AXI_CPU_IN_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_wready : out STD_LOGIC;
    S_AXI_CPU_IN_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CPU_IN_wvalid : in STD_LOGIC;
    AUDIO_OUT_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AUDIO_OUT_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    AUDIO_OUT_tready : in STD_LOGIC;
    AUDIO_OUT_tvalid : out STD_LOGIC;
    DDC_OUT_scl_i : in STD_LOGIC;
    DDC_OUT_scl_o : out STD_LOGIC;
    DDC_OUT_scl_t : out STD_LOGIC;
    DDC_OUT_sda_i : in STD_LOGIC;
    DDC_OUT_sda_o : out STD_LOGIC;
    DDC_OUT_sda_t : out STD_LOGIC;
    VIDEO_OUT_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    VIDEO_OUT_tlast : out STD_LOGIC;
    VIDEO_OUT_tready : in STD_LOGIC;
    VIDEO_OUT_tuser : out STD_LOGIC;
    VIDEO_OUT_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "exdes_v_hdmi_rx_ss_0,bd_3ec1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_3ec1,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "exdes_v_hdmi_rx_ss_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AUDIO_OUT_tready : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of AUDIO_OUT_tvalid : signal is "XIL_INTERFACENAME AUDIO_OUT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T";
  attribute X_INTERFACE_INFO of LINK_DATA0_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID";
  attribute X_INTERFACE_PARAMETER of LINK_DATA0_IN_tvalid : signal is "XIL_INTERFACENAME LINK_DATA0_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of LINK_DATA1_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID";
  attribute X_INTERFACE_PARAMETER of LINK_DATA1_IN_tvalid : signal is "XIL_INTERFACENAME LINK_DATA1_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of LINK_DATA2_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID";
  attribute X_INTERFACE_PARAMETER of LINK_DATA2_IN_tvalid : signal is "XIL_INTERFACENAME LINK_DATA2_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID";
  attribute X_INTERFACE_PARAMETER of SB_STATUS_IN_tvalid : signal is "XIL_INTERFACENAME SB_STATUS_IN, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID";
  attribute X_INTERFACE_PARAMETER of S_AXI_CPU_IN_wvalid : signal is "XIL_INTERFACENAME S_AXI_CPU_IN, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tlast : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tready : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tuser : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID";
  attribute X_INTERFACE_PARAMETER of VIDEO_OUT_tvalid : signal is "XIL_INTERFACENAME VIDEO_OUT, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME INTR.irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of link_clk : signal is "xilinx.com:signal:clock:1.0 CLK.link_clk CLK";
  attribute X_INTERFACE_PARAMETER of link_clk : signal is "XIL_INTERFACENAME CLK.link_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rxoutclk, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_cpu_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axi_cpu_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aclk : signal is "XIL_INTERFACENAME CLK.s_axi_cpu_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_cpu_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axi_cpu_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aresetn : signal is "XIL_INTERFACENAME RST.s_axi_cpu_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_audio_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aclk : signal is "XIL_INTERFACENAME CLK.s_axis_audio_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, ASSOCIATED_BUSIF AUDIO_OUT, ASSOCIATED_RESET s_axis_audio_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_audio_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axis_audio_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aresetn : signal is "XIL_INTERFACENAME RST.s_axis_audio_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axis_video_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aclk : signal is "XIL_INTERFACENAME CLK.s_axis_video_aclk, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, ASSOCIATED_BUSIF VIDEO_OUT, ASSOCIATED_RESET s_axis_video_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axis_video_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aresetn : signal is "XIL_INTERFACENAME RST.s_axis_video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of video_clk : signal is "xilinx.com:signal:clock:1.0 CLK.video_clk CLK";
  attribute X_INTERFACE_PARAMETER of video_clk : signal is "XIL_INTERFACENAME CLK.video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_rx_video_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tid : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TID";
  attribute X_INTERFACE_INFO of LINK_DATA0_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA";
  attribute X_INTERFACE_INFO of LINK_DATA1_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA";
  attribute X_INTERFACE_INFO of LINK_DATA2_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tdata : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3ec1
     port map (
      AUDIO_OUT_tdata(31 downto 0) => AUDIO_OUT_tdata(31 downto 0),
      AUDIO_OUT_tid(7 downto 0) => AUDIO_OUT_tid(7 downto 0),
      AUDIO_OUT_tready => AUDIO_OUT_tready,
      AUDIO_OUT_tvalid => AUDIO_OUT_tvalid,
      DDC_OUT_scl_i => DDC_OUT_scl_i,
      DDC_OUT_scl_o => DDC_OUT_scl_o,
      DDC_OUT_scl_t => DDC_OUT_scl_t,
      DDC_OUT_sda_i => DDC_OUT_sda_i,
      DDC_OUT_sda_o => DDC_OUT_sda_o,
      DDC_OUT_sda_t => DDC_OUT_sda_t,
      LINK_DATA0_IN_tdata(39 downto 0) => LINK_DATA0_IN_tdata(39 downto 0),
      LINK_DATA0_IN_tvalid => LINK_DATA0_IN_tvalid,
      LINK_DATA1_IN_tdata(39 downto 0) => LINK_DATA1_IN_tdata(39 downto 0),
      LINK_DATA1_IN_tvalid => LINK_DATA1_IN_tvalid,
      LINK_DATA2_IN_tdata(39 downto 0) => LINK_DATA2_IN_tdata(39 downto 0),
      LINK_DATA2_IN_tvalid => LINK_DATA2_IN_tvalid,
      SB_STATUS_IN_tdata(1 downto 0) => SB_STATUS_IN_tdata(1 downto 0),
      SB_STATUS_IN_tvalid => SB_STATUS_IN_tvalid,
      S_AXI_CPU_IN_araddr(8 downto 0) => S_AXI_CPU_IN_araddr(8 downto 0),
      S_AXI_CPU_IN_arprot(2 downto 0) => S_AXI_CPU_IN_arprot(2 downto 0),
      S_AXI_CPU_IN_arready => S_AXI_CPU_IN_arready,
      S_AXI_CPU_IN_arvalid => S_AXI_CPU_IN_arvalid,
      S_AXI_CPU_IN_awaddr(8 downto 0) => S_AXI_CPU_IN_awaddr(8 downto 0),
      S_AXI_CPU_IN_awprot(2 downto 0) => S_AXI_CPU_IN_awprot(2 downto 0),
      S_AXI_CPU_IN_awready => S_AXI_CPU_IN_awready,
      S_AXI_CPU_IN_awvalid => S_AXI_CPU_IN_awvalid,
      S_AXI_CPU_IN_bready => S_AXI_CPU_IN_bready,
      S_AXI_CPU_IN_bresp(1 downto 0) => S_AXI_CPU_IN_bresp(1 downto 0),
      S_AXI_CPU_IN_bvalid => S_AXI_CPU_IN_bvalid,
      S_AXI_CPU_IN_rdata(31 downto 0) => S_AXI_CPU_IN_rdata(31 downto 0),
      S_AXI_CPU_IN_rready => S_AXI_CPU_IN_rready,
      S_AXI_CPU_IN_rresp(1 downto 0) => S_AXI_CPU_IN_rresp(1 downto 0),
      S_AXI_CPU_IN_rvalid => S_AXI_CPU_IN_rvalid,
      S_AXI_CPU_IN_wdata(31 downto 0) => S_AXI_CPU_IN_wdata(31 downto 0),
      S_AXI_CPU_IN_wready => S_AXI_CPU_IN_wready,
      S_AXI_CPU_IN_wstrb(3 downto 0) => S_AXI_CPU_IN_wstrb(3 downto 0),
      S_AXI_CPU_IN_wvalid => S_AXI_CPU_IN_wvalid,
      VIDEO_OUT_tdata(95 downto 0) => VIDEO_OUT_tdata(95 downto 0),
      VIDEO_OUT_tlast => VIDEO_OUT_tlast,
      VIDEO_OUT_tready => VIDEO_OUT_tready,
      VIDEO_OUT_tuser => VIDEO_OUT_tuser,
      VIDEO_OUT_tvalid => VIDEO_OUT_tvalid,
      acr_cts(19 downto 0) => acr_cts(19 downto 0),
      acr_n(19 downto 0) => acr_n(19 downto 0),
      acr_valid => acr_valid,
      cable_detect => cable_detect,
      fid => fid,
      hpd(0) => hpd(0),
      irq => irq,
      link_clk => link_clk,
      s_axi_cpu_aclk => s_axi_cpu_aclk,
      s_axi_cpu_aresetn => s_axi_cpu_aresetn,
      s_axis_audio_aclk => s_axis_audio_aclk,
      s_axis_audio_aresetn => s_axis_audio_aresetn,
      s_axis_video_aclk => s_axis_video_aclk,
      s_axis_video_aresetn => s_axis_video_aresetn,
      video_clk => video_clk
    );
end STRUCTURE;
