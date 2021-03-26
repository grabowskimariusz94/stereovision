-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Mar  3 22:37:30 2021
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Projects/Stereovision/stereo_fpga/sgm_4k_zc706/sgm_4k_zc706.gen/sources_1/ip/v_hdmi_rx_ss_0_1/bd_0/ip/ip_0/bd_2422_0_v_hdmi_rx_0_stub.vhdl
-- Design      : bd_2422_0_v_hdmi_rx_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_2422_0_v_hdmi_rx_0 is
  Port ( 
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

end bd_2422_0_v_hdmi_rx_0;

architecture stub of bd_2422_0_v_hdmi_rx_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,m_axis_video_aresetn_in,s_axi_awaddr[8:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,link_clk,link_data0[39:0],link_data1[39:0],link_data2[39:0],link_valid0,link_valid1,link_valid2,hpd,cable_detect,video_reset,m_axis_video_aresetn_out,axis_enable,sb_status_data[1:0],sb_status_valid,avmute,video_clk,m_axis_video_aclk,video_vs,video_hs,video_data[95:0],video_de,video_field,video_vs_arb[3:0],video_hs_arb[3:0],video_de_arb[3:0],video_data_arb[95:0],m_axis_audio_aresetn,m_axis_audio_aclk,m_axis_audio_tready,m_axis_audio_tid[7:0],m_axis_audio_tdata[31:0],m_axis_audio_tvalid,acr_cts[19:0],acr_n[19:0],acr_valid,m_axis_hdcp_aresetn,m_axis_hdcp_aclk,m_axis_hdcp_aclken,m_axis_hdcp_tid,m_axis_hdcp_tuser[31:0],m_axis_hdcp_tdata[95:0],m_axis_hdcp_tstrb[3:0],m_axis_hdcp_tvalid,m_axis_hdcp_tlast,m_axis_hdcp_tready,s_axis_hdcp_tid,s_axis_hdcp_tuser[31:0],s_axis_hdcp_tdata[95:0],s_axis_hdcp_tstrb[3:0],s_axis_hdcp_tvalid,s_axis_hdcp_tlast,s_axis_hdcp_tready,ddc_scl_i,ddc_scl_o,ddc_scl_t,ddc_sda_i,ddc_sda_o,ddc_sda_t,irq,bridge_yuv420,bridge_pixel_drop,bridge_overflow";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "v_hdmi_rx_v3_0_0,Vivado 2020.2";
begin
end;
