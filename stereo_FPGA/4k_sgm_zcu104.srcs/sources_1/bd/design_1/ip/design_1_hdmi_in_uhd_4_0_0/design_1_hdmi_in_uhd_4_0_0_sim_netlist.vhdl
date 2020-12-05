-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Dec  4 21:30:30 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_hdmi_in_uhd_4_0_0/design_1_hdmi_in_uhd_4_0_0_sim_netlist.vhdl
-- Design      : design_1_hdmi_in_uhd_4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_hdmi_in_uhd_4_0_0 is
  port (
    s_axis_video_aclk : out STD_LOGIC;
    s_axis_video_aresetn : out STD_LOGIC;
    VIDEO_IN_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    VIDEO_IN_tlast : out STD_LOGIC;
    VIDEO_IN_tready : in STD_LOGIC;
    VIDEO_IN_tuser : out STD_LOGIC;
    VIDEO_IN_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_hdmi_in_uhd_4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_hdmi_in_uhd_4_0_0 : entity is "design_1_hdmi_in_uhd_4_0_0,hdmi_in_uhd_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_hdmi_in_uhd_4_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_hdmi_in_uhd_4_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_hdmi_in_uhd_4_0_0 : entity is "hdmi_in_uhd_4,Vivado 2020.1";
end design_1_hdmi_in_uhd_4_0_0;

architecture STRUCTURE of design_1_hdmi_in_uhd_4_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of VIDEO_IN_tlast : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TLAST";
  attribute X_INTERFACE_INFO of VIDEO_IN_tready : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TREADY";
  attribute X_INTERFACE_INFO of VIDEO_IN_tuser : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TUSER";
  attribute X_INTERFACE_INFO of VIDEO_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of VIDEO_IN_tvalid : signal is "XIL_INTERFACENAME VIDEO_IN, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_video_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aclk : signal is "XIL_INTERFACENAME s_axis_video_aclk, ASSOCIATED_RESET s_axis_video_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axis_video_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aresetn : signal is "XIL_INTERFACENAME s_axis_video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of VIDEO_IN_tdata : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TDATA";
begin
  VIDEO_IN_tdata(95) <= \<const0>\;
  VIDEO_IN_tdata(94) <= \<const0>\;
  VIDEO_IN_tdata(93) <= \<const0>\;
  VIDEO_IN_tdata(92) <= \<const0>\;
  VIDEO_IN_tdata(91) <= \<const0>\;
  VIDEO_IN_tdata(90) <= \<const0>\;
  VIDEO_IN_tdata(89) <= \<const0>\;
  VIDEO_IN_tdata(88) <= \<const0>\;
  VIDEO_IN_tdata(87) <= \<const0>\;
  VIDEO_IN_tdata(86) <= \<const0>\;
  VIDEO_IN_tdata(85) <= \<const0>\;
  VIDEO_IN_tdata(84) <= \<const0>\;
  VIDEO_IN_tdata(83) <= \<const0>\;
  VIDEO_IN_tdata(82) <= \<const0>\;
  VIDEO_IN_tdata(81) <= \<const0>\;
  VIDEO_IN_tdata(80) <= \<const0>\;
  VIDEO_IN_tdata(79) <= \<const0>\;
  VIDEO_IN_tdata(78) <= \<const0>\;
  VIDEO_IN_tdata(77) <= \<const0>\;
  VIDEO_IN_tdata(76) <= \<const0>\;
  VIDEO_IN_tdata(75) <= \<const0>\;
  VIDEO_IN_tdata(74) <= \<const0>\;
  VIDEO_IN_tdata(73) <= \<const0>\;
  VIDEO_IN_tdata(72) <= \<const0>\;
  VIDEO_IN_tdata(71) <= \<const0>\;
  VIDEO_IN_tdata(70) <= \<const0>\;
  VIDEO_IN_tdata(69) <= \<const0>\;
  VIDEO_IN_tdata(68) <= \<const0>\;
  VIDEO_IN_tdata(67) <= \<const0>\;
  VIDEO_IN_tdata(66) <= \<const0>\;
  VIDEO_IN_tdata(65) <= \<const0>\;
  VIDEO_IN_tdata(64) <= \<const0>\;
  VIDEO_IN_tdata(63) <= \<const0>\;
  VIDEO_IN_tdata(62) <= \<const0>\;
  VIDEO_IN_tdata(61) <= \<const0>\;
  VIDEO_IN_tdata(60) <= \<const0>\;
  VIDEO_IN_tdata(59) <= \<const0>\;
  VIDEO_IN_tdata(58) <= \<const0>\;
  VIDEO_IN_tdata(57) <= \<const0>\;
  VIDEO_IN_tdata(56) <= \<const0>\;
  VIDEO_IN_tdata(55) <= \<const0>\;
  VIDEO_IN_tdata(54) <= \<const0>\;
  VIDEO_IN_tdata(53) <= \<const0>\;
  VIDEO_IN_tdata(52) <= \<const0>\;
  VIDEO_IN_tdata(51) <= \<const0>\;
  VIDEO_IN_tdata(50) <= \<const0>\;
  VIDEO_IN_tdata(49) <= \<const0>\;
  VIDEO_IN_tdata(48) <= \<const0>\;
  VIDEO_IN_tdata(47) <= \<const0>\;
  VIDEO_IN_tdata(46) <= \<const0>\;
  VIDEO_IN_tdata(45) <= \<const0>\;
  VIDEO_IN_tdata(44) <= \<const0>\;
  VIDEO_IN_tdata(43) <= \<const0>\;
  VIDEO_IN_tdata(42) <= \<const0>\;
  VIDEO_IN_tdata(41) <= \<const0>\;
  VIDEO_IN_tdata(40) <= \<const0>\;
  VIDEO_IN_tdata(39) <= \<const0>\;
  VIDEO_IN_tdata(38) <= \<const0>\;
  VIDEO_IN_tdata(37) <= \<const0>\;
  VIDEO_IN_tdata(36) <= \<const0>\;
  VIDEO_IN_tdata(35) <= \<const0>\;
  VIDEO_IN_tdata(34) <= \<const0>\;
  VIDEO_IN_tdata(33) <= \<const0>\;
  VIDEO_IN_tdata(32) <= \<const0>\;
  VIDEO_IN_tdata(31) <= \<const0>\;
  VIDEO_IN_tdata(30) <= \<const0>\;
  VIDEO_IN_tdata(29) <= \<const0>\;
  VIDEO_IN_tdata(28) <= \<const0>\;
  VIDEO_IN_tdata(27) <= \<const0>\;
  VIDEO_IN_tdata(26) <= \<const0>\;
  VIDEO_IN_tdata(25) <= \<const0>\;
  VIDEO_IN_tdata(24) <= \<const0>\;
  VIDEO_IN_tdata(23) <= \<const0>\;
  VIDEO_IN_tdata(22) <= \<const0>\;
  VIDEO_IN_tdata(21) <= \<const0>\;
  VIDEO_IN_tdata(20) <= \<const0>\;
  VIDEO_IN_tdata(19) <= \<const0>\;
  VIDEO_IN_tdata(18) <= \<const0>\;
  VIDEO_IN_tdata(17) <= \<const0>\;
  VIDEO_IN_tdata(16) <= \<const0>\;
  VIDEO_IN_tdata(15) <= \<const0>\;
  VIDEO_IN_tdata(14) <= \<const0>\;
  VIDEO_IN_tdata(13) <= \<const0>\;
  VIDEO_IN_tdata(12) <= \<const0>\;
  VIDEO_IN_tdata(11) <= \<const0>\;
  VIDEO_IN_tdata(10) <= \<const0>\;
  VIDEO_IN_tdata(9) <= \<const0>\;
  VIDEO_IN_tdata(8) <= \<const0>\;
  VIDEO_IN_tdata(7) <= \<const0>\;
  VIDEO_IN_tdata(6) <= \<const0>\;
  VIDEO_IN_tdata(5) <= \<const0>\;
  VIDEO_IN_tdata(4) <= \<const0>\;
  VIDEO_IN_tdata(3) <= \<const0>\;
  VIDEO_IN_tdata(2) <= \<const0>\;
  VIDEO_IN_tdata(1) <= \<const0>\;
  VIDEO_IN_tdata(0) <= \<const0>\;
  VIDEO_IN_tlast <= \<const0>\;
  VIDEO_IN_tuser <= \<const0>\;
  VIDEO_IN_tvalid <= \<const0>\;
  s_axis_video_aclk <= \<const0>\;
  s_axis_video_aresetn <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
