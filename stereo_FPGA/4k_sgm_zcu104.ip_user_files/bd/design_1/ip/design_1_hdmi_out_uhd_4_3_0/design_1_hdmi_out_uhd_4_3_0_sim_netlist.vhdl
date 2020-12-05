-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Dec  5 20:09:24 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_hdmi_out_uhd_4_3_0/design_1_hdmi_out_uhd_4_3_0_sim_netlist.vhdl
-- Design      : design_1_hdmi_out_uhd_4_3_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hdmi_out_uhd_4_3_0 is
  port (
    s_axis_video_aclk : in STD_LOGIC;
    VIDEO_OUT_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VIDEO_OUT_tlast : in STD_LOGIC;
    VIDEO_OUT_tready : out STD_LOGIC;
    VIDEO_OUT_tuser : in STD_LOGIC;
    VIDEO_OUT_tvalid : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_hdmi_out_uhd_4_3_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_hdmi_out_uhd_4_3_0 : entity is "design_1_hdmi_out_uhd_4_3_0,hdmi_out_uhd_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_hdmi_out_uhd_4_3_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_hdmi_out_uhd_4_3_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_hdmi_out_uhd_4_3_0 : entity is "hdmi_out_uhd_4,Vivado 2020.1";
end design_1_hdmi_out_uhd_4_3_0;

architecture STRUCTURE of design_1_hdmi_out_uhd_4_3_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of VIDEO_OUT_tlast : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tready : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tuser : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of VIDEO_OUT_tvalid : signal is "XIL_INTERFACENAME VIDEO_OUT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_video_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aclk : signal is "XIL_INTERFACENAME s_axis_video_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA";
begin
  VIDEO_OUT_tready <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
