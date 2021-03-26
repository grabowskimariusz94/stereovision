-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 18 22:58:58 2021
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_v_hdmi_rx_ss_0_stub.vhdl
-- Design      : exdes_v_hdmi_rx_ss_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_cpu_aclk,s_axi_cpu_aresetn,cable_detect,link_clk,s_axis_audio_aclk,s_axis_audio_aresetn,acr_cts[19:0],acr_n[19:0],acr_valid,hpd[0:0],irq,video_clk,fid,s_axis_video_aresetn,s_axis_video_aclk,LINK_DATA1_IN_tdata[39:0],LINK_DATA1_IN_tvalid,LINK_DATA0_IN_tdata[39:0],LINK_DATA0_IN_tvalid,SB_STATUS_IN_tdata[1:0],SB_STATUS_IN_tvalid,LINK_DATA2_IN_tdata[39:0],LINK_DATA2_IN_tvalid,S_AXI_CPU_IN_araddr[8:0],S_AXI_CPU_IN_arprot[2:0],S_AXI_CPU_IN_arready,S_AXI_CPU_IN_arvalid,S_AXI_CPU_IN_awaddr[8:0],S_AXI_CPU_IN_awprot[2:0],S_AXI_CPU_IN_awready,S_AXI_CPU_IN_awvalid,S_AXI_CPU_IN_bready,S_AXI_CPU_IN_bresp[1:0],S_AXI_CPU_IN_bvalid,S_AXI_CPU_IN_rdata[31:0],S_AXI_CPU_IN_rready,S_AXI_CPU_IN_rresp[1:0],S_AXI_CPU_IN_rvalid,S_AXI_CPU_IN_wdata[31:0],S_AXI_CPU_IN_wready,S_AXI_CPU_IN_wstrb[3:0],S_AXI_CPU_IN_wvalid,AUDIO_OUT_tdata[31:0],AUDIO_OUT_tid[7:0],AUDIO_OUT_tready,AUDIO_OUT_tvalid,DDC_OUT_scl_i,DDC_OUT_scl_o,DDC_OUT_scl_t,DDC_OUT_sda_i,DDC_OUT_sda_o,DDC_OUT_sda_t,VIDEO_OUT_tdata[95:0],VIDEO_OUT_tlast,VIDEO_OUT_tready,VIDEO_OUT_tuser,VIDEO_OUT_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_3ec1,Vivado 2020.2";
begin
end;
