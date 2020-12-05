-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Dec  4 21:31:53 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_RGB_to_Grayscale_v1_0_0_0/design_1_RGB_to_Grayscale_v1_0_0_0_stub.vhdl
-- Design      : design_1_RGB_to_Grayscale_v1_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_RGB_to_Grayscale_v1_0_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_rgb_tready : out STD_LOGIC;
    s_axis_rgb_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_rgb_tuser : in STD_LOGIC;
    s_axis_rgb_tlast : in STD_LOGIC;
    s_axis_rgb_tvalid : in STD_LOGIC;
    m_axis_gray_tvalid : out STD_LOGIC;
    m_axis_gray_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_gray_tuser : out STD_LOGIC;
    m_axis_gray_tlast : out STD_LOGIC;
    m_axis_gray_tready : in STD_LOGIC
  );

end design_1_RGB_to_Grayscale_v1_0_0_0;

architecture stub of design_1_RGB_to_Grayscale_v1_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_rgb_tready,s_axis_rgb_tdata[95:0],s_axis_rgb_tuser,s_axis_rgb_tlast,s_axis_rgb_tvalid,m_axis_gray_tvalid,m_axis_gray_tdata[31:0],m_axis_gray_tuser,m_axis_gray_tlast,m_axis_gray_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "RGB_to_Grayscale_v1_0,Vivado 2020.1";
begin
end;
