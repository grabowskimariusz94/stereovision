-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 25 21:03:18 2021
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_hdmi_acr_ctrl_0/exdes_hdmi_acr_ctrl_0_stub.vhdl
-- Design      : exdes_hdmi_acr_ctrl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exdes_hdmi_acr_ctrl_0 is
  Port ( 
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_wready : out STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_bvalid : out STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_rready : in STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aud_clk : in STD_LOGIC;
    hdmi_clk : in STD_LOGIC;
    pll_lock_in : in STD_LOGIC;
    aud_resetn_out : out STD_LOGIC;
    aud_acr_valid_in : in STD_LOGIC;
    aud_acr_cts_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_valid_out : out STD_LOGIC;
    aud_acr_cts_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_out : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end exdes_hdmi_acr_ctrl_0;

architecture stub of exdes_hdmi_acr_ctrl_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axi_aclk,axi_aresetn,axi_awvalid,axi_awready,axi_awaddr[31:0],axi_wvalid,axi_wready,axi_wdata[31:0],axi_wstrb[3:0],axi_bvalid,axi_bready,axi_bresp[1:0],axi_arvalid,axi_arready,axi_araddr[31:0],axi_rvalid,axi_rready,axi_rdata[31:0],axi_rresp[1:0],aud_clk,hdmi_clk,pll_lock_in,aud_resetn_out,aud_acr_valid_in,aud_acr_cts_in[19:0],aud_acr_n_in[19:0],aud_acr_valid_out,aud_acr_cts_out[19:0],aud_acr_n_out[19:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdmi_acr_ctrl,Vivado 2020.2";
begin
end;
