-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Dec  4 21:30:30 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_hdmi_in_uhd_4_0_0/design_1_hdmi_in_uhd_4_0_0_stub.vhdl
-- Design      : design_1_hdmi_in_uhd_4_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_hdmi_in_uhd_4_0_0 is
  Port ( 
    s_axis_video_aclk : out STD_LOGIC;
    s_axis_video_aresetn : out STD_LOGIC;
    VIDEO_IN_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    VIDEO_IN_tlast : out STD_LOGIC;
    VIDEO_IN_tready : in STD_LOGIC;
    VIDEO_IN_tuser : out STD_LOGIC;
    VIDEO_IN_tvalid : out STD_LOGIC
  );

end design_1_hdmi_in_uhd_4_0_0;

architecture stub of design_1_hdmi_in_uhd_4_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_video_aclk,s_axis_video_aresetn,VIDEO_IN_tdata[95:0],VIDEO_IN_tlast,VIDEO_IN_tready,VIDEO_IN_tuser,VIDEO_IN_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdmi_in_uhd_4,Vivado 2020.1";
begin
end;
