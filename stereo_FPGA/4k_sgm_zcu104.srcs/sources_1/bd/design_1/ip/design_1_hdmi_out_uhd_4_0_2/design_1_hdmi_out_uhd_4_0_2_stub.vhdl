-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Dec  4 21:31:51 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_hdmi_out_uhd_4_0_2/design_1_hdmi_out_uhd_4_0_2_stub.vhdl
-- Design      : design_1_hdmi_out_uhd_4_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_hdmi_out_uhd_4_0_2 is
  Port ( 
    s_axis_video_aclk : in STD_LOGIC;
    VIDEO_OUT_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VIDEO_OUT_tlast : in STD_LOGIC;
    VIDEO_OUT_tready : out STD_LOGIC;
    VIDEO_OUT_tuser : in STD_LOGIC;
    VIDEO_OUT_tvalid : in STD_LOGIC
  );

end design_1_hdmi_out_uhd_4_0_2;

architecture stub of design_1_hdmi_out_uhd_4_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_video_aclk,VIDEO_OUT_tdata[31:0],VIDEO_OUT_tlast,VIDEO_OUT_tready,VIDEO_OUT_tuser,VIDEO_OUT_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdmi_out_uhd_4,Vivado 2020.1";
begin
end;
