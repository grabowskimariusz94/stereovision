-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Nov 28 09:31:09 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_RGB_to_Grayscale_0_1_sim_netlist.vhdl
-- Design      : design_1_RGB_to_Grayscale_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_gray_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_gray_tuser : out STD_LOGIC;
    m_axis_gray_tlast : out STD_LOGIC;
    s_axis_rgb_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_rgb_tvalid : in STD_LOGIC;
    s_axis_rgb_tuser : in STD_LOGIC;
    s_axis_rgb_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal b1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b10 : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \b1[10]_i_10_n_0\ : STD_LOGIC;
  signal \b1[10]_i_11_n_0\ : STD_LOGIC;
  signal \b1[10]_i_12_n_0\ : STD_LOGIC;
  signal \b1[10]_i_13_n_0\ : STD_LOGIC;
  signal \b1[10]_i_14_n_0\ : STD_LOGIC;
  signal \b1[10]_i_15_n_0\ : STD_LOGIC;
  signal \b1[10]_i_16_n_0\ : STD_LOGIC;
  signal \b1[10]_i_17_n_0\ : STD_LOGIC;
  signal \b1[10]_i_18_n_0\ : STD_LOGIC;
  signal \b1[10]_i_19_n_0\ : STD_LOGIC;
  signal \b1[10]_i_20_n_0\ : STD_LOGIC;
  signal \b1[10]_i_21_n_0\ : STD_LOGIC;
  signal \b1[10]_i_2_n_0\ : STD_LOGIC;
  signal \b1[10]_i_3_n_0\ : STD_LOGIC;
  signal \b1[10]_i_4_n_0\ : STD_LOGIC;
  signal \b1[10]_i_5_n_0\ : STD_LOGIC;
  signal \b1[10]_i_6_n_0\ : STD_LOGIC;
  signal \b1[10]_i_7_n_0\ : STD_LOGIC;
  signal \b1[10]_i_8_n_0\ : STD_LOGIC;
  signal \b1[10]_i_9_n_0\ : STD_LOGIC;
  signal \b1[12]_i_2_n_0\ : STD_LOGIC;
  signal \b1[12]_i_3_n_0\ : STD_LOGIC;
  signal \b1[12]_i_4_n_0\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \b1_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \b1_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal b2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b20 : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \b2[10]_i_10_n_0\ : STD_LOGIC;
  signal \b2[10]_i_11_n_0\ : STD_LOGIC;
  signal \b2[10]_i_12_n_0\ : STD_LOGIC;
  signal \b2[10]_i_13_n_0\ : STD_LOGIC;
  signal \b2[10]_i_14_n_0\ : STD_LOGIC;
  signal \b2[10]_i_15_n_0\ : STD_LOGIC;
  signal \b2[10]_i_16_n_0\ : STD_LOGIC;
  signal \b2[10]_i_17_n_0\ : STD_LOGIC;
  signal \b2[10]_i_18_n_0\ : STD_LOGIC;
  signal \b2[10]_i_19_n_0\ : STD_LOGIC;
  signal \b2[10]_i_20_n_0\ : STD_LOGIC;
  signal \b2[10]_i_21_n_0\ : STD_LOGIC;
  signal \b2[10]_i_2_n_0\ : STD_LOGIC;
  signal \b2[10]_i_3_n_0\ : STD_LOGIC;
  signal \b2[10]_i_4_n_0\ : STD_LOGIC;
  signal \b2[10]_i_5_n_0\ : STD_LOGIC;
  signal \b2[10]_i_6_n_0\ : STD_LOGIC;
  signal \b2[10]_i_7_n_0\ : STD_LOGIC;
  signal \b2[10]_i_8_n_0\ : STD_LOGIC;
  signal \b2[10]_i_9_n_0\ : STD_LOGIC;
  signal \b2[12]_i_2_n_0\ : STD_LOGIC;
  signal \b2[12]_i_3_n_0\ : STD_LOGIC;
  signal \b2[12]_i_4_n_0\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \b2_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \b2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal b3 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b30 : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \b3[10]_i_10_n_0\ : STD_LOGIC;
  signal \b3[10]_i_11_n_0\ : STD_LOGIC;
  signal \b3[10]_i_12_n_0\ : STD_LOGIC;
  signal \b3[10]_i_13_n_0\ : STD_LOGIC;
  signal \b3[10]_i_14_n_0\ : STD_LOGIC;
  signal \b3[10]_i_15_n_0\ : STD_LOGIC;
  signal \b3[10]_i_16_n_0\ : STD_LOGIC;
  signal \b3[10]_i_17_n_0\ : STD_LOGIC;
  signal \b3[10]_i_18_n_0\ : STD_LOGIC;
  signal \b3[10]_i_19_n_0\ : STD_LOGIC;
  signal \b3[10]_i_20_n_0\ : STD_LOGIC;
  signal \b3[10]_i_21_n_0\ : STD_LOGIC;
  signal \b3[10]_i_2_n_0\ : STD_LOGIC;
  signal \b3[10]_i_3_n_0\ : STD_LOGIC;
  signal \b3[10]_i_4_n_0\ : STD_LOGIC;
  signal \b3[10]_i_5_n_0\ : STD_LOGIC;
  signal \b3[10]_i_6_n_0\ : STD_LOGIC;
  signal \b3[10]_i_7_n_0\ : STD_LOGIC;
  signal \b3[10]_i_8_n_0\ : STD_LOGIC;
  signal \b3[10]_i_9_n_0\ : STD_LOGIC;
  signal \b3[12]_i_2_n_0\ : STD_LOGIC;
  signal \b3[12]_i_3_n_0\ : STD_LOGIC;
  signal \b3[12]_i_4_n_0\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \b3_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \b3_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal b4 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b40 : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \b4[10]_i_10_n_0\ : STD_LOGIC;
  signal \b4[10]_i_11_n_0\ : STD_LOGIC;
  signal \b4[10]_i_12_n_0\ : STD_LOGIC;
  signal \b4[10]_i_13_n_0\ : STD_LOGIC;
  signal \b4[10]_i_14_n_0\ : STD_LOGIC;
  signal \b4[10]_i_15_n_0\ : STD_LOGIC;
  signal \b4[10]_i_16_n_0\ : STD_LOGIC;
  signal \b4[10]_i_17_n_0\ : STD_LOGIC;
  signal \b4[10]_i_18_n_0\ : STD_LOGIC;
  signal \b4[10]_i_19_n_0\ : STD_LOGIC;
  signal \b4[10]_i_20_n_0\ : STD_LOGIC;
  signal \b4[10]_i_21_n_0\ : STD_LOGIC;
  signal \b4[10]_i_2_n_0\ : STD_LOGIC;
  signal \b4[10]_i_3_n_0\ : STD_LOGIC;
  signal \b4[10]_i_4_n_0\ : STD_LOGIC;
  signal \b4[10]_i_5_n_0\ : STD_LOGIC;
  signal \b4[10]_i_6_n_0\ : STD_LOGIC;
  signal \b4[10]_i_7_n_0\ : STD_LOGIC;
  signal \b4[10]_i_8_n_0\ : STD_LOGIC;
  signal \b4[10]_i_9_n_0\ : STD_LOGIC;
  signal \b4[12]_i_2_n_0\ : STD_LOGIC;
  signal \b4[12]_i_3_n_0\ : STD_LOGIC;
  signal \b4[12]_i_4_n_0\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \b4_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \b4_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal g1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g10 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \g1[10]_i_10_n_0\ : STD_LOGIC;
  signal \g1[10]_i_11_n_0\ : STD_LOGIC;
  signal \g1[10]_i_12_n_0\ : STD_LOGIC;
  signal \g1[10]_i_13_n_0\ : STD_LOGIC;
  signal \g1[10]_i_14_n_0\ : STD_LOGIC;
  signal \g1[10]_i_15_n_0\ : STD_LOGIC;
  signal \g1[10]_i_2_n_0\ : STD_LOGIC;
  signal \g1[10]_i_3_n_0\ : STD_LOGIC;
  signal \g1[10]_i_4_n_0\ : STD_LOGIC;
  signal \g1[10]_i_5_n_0\ : STD_LOGIC;
  signal \g1[10]_i_6_n_0\ : STD_LOGIC;
  signal \g1[10]_i_7_n_0\ : STD_LOGIC;
  signal \g1[10]_i_8_n_0\ : STD_LOGIC;
  signal \g1[10]_i_9_n_0\ : STD_LOGIC;
  signal \g1[15]_i_2_n_0\ : STD_LOGIC;
  signal \g1[15]_i_3_n_0\ : STD_LOGIC;
  signal \g1[15]_i_4_n_0\ : STD_LOGIC;
  signal \g1[15]_i_5_n_0\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \g1_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \g1_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \g1_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \g1_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal g2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g20 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \g2[10]_i_10_n_0\ : STD_LOGIC;
  signal \g2[10]_i_11_n_0\ : STD_LOGIC;
  signal \g2[10]_i_12_n_0\ : STD_LOGIC;
  signal \g2[10]_i_13_n_0\ : STD_LOGIC;
  signal \g2[10]_i_14_n_0\ : STD_LOGIC;
  signal \g2[10]_i_15_n_0\ : STD_LOGIC;
  signal \g2[10]_i_2_n_0\ : STD_LOGIC;
  signal \g2[10]_i_3_n_0\ : STD_LOGIC;
  signal \g2[10]_i_4_n_0\ : STD_LOGIC;
  signal \g2[10]_i_5_n_0\ : STD_LOGIC;
  signal \g2[10]_i_6_n_0\ : STD_LOGIC;
  signal \g2[10]_i_7_n_0\ : STD_LOGIC;
  signal \g2[10]_i_8_n_0\ : STD_LOGIC;
  signal \g2[10]_i_9_n_0\ : STD_LOGIC;
  signal \g2[15]_i_2_n_0\ : STD_LOGIC;
  signal \g2[15]_i_3_n_0\ : STD_LOGIC;
  signal \g2[15]_i_4_n_0\ : STD_LOGIC;
  signal \g2[15]_i_5_n_0\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \g2_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \g2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \g2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \g2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal g3 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g30 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \g3[10]_i_10_n_0\ : STD_LOGIC;
  signal \g3[10]_i_11_n_0\ : STD_LOGIC;
  signal \g3[10]_i_12_n_0\ : STD_LOGIC;
  signal \g3[10]_i_13_n_0\ : STD_LOGIC;
  signal \g3[10]_i_14_n_0\ : STD_LOGIC;
  signal \g3[10]_i_15_n_0\ : STD_LOGIC;
  signal \g3[10]_i_2_n_0\ : STD_LOGIC;
  signal \g3[10]_i_3_n_0\ : STD_LOGIC;
  signal \g3[10]_i_4_n_0\ : STD_LOGIC;
  signal \g3[10]_i_5_n_0\ : STD_LOGIC;
  signal \g3[10]_i_6_n_0\ : STD_LOGIC;
  signal \g3[10]_i_7_n_0\ : STD_LOGIC;
  signal \g3[10]_i_8_n_0\ : STD_LOGIC;
  signal \g3[10]_i_9_n_0\ : STD_LOGIC;
  signal \g3[15]_i_2_n_0\ : STD_LOGIC;
  signal \g3[15]_i_3_n_0\ : STD_LOGIC;
  signal \g3[15]_i_4_n_0\ : STD_LOGIC;
  signal \g3[15]_i_5_n_0\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \g3_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \g3_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \g3_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \g3_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal g4 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g40 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \g4[10]_i_10_n_0\ : STD_LOGIC;
  signal \g4[10]_i_11_n_0\ : STD_LOGIC;
  signal \g4[10]_i_12_n_0\ : STD_LOGIC;
  signal \g4[10]_i_13_n_0\ : STD_LOGIC;
  signal \g4[10]_i_14_n_0\ : STD_LOGIC;
  signal \g4[10]_i_15_n_0\ : STD_LOGIC;
  signal \g4[10]_i_2_n_0\ : STD_LOGIC;
  signal \g4[10]_i_3_n_0\ : STD_LOGIC;
  signal \g4[10]_i_4_n_0\ : STD_LOGIC;
  signal \g4[10]_i_5_n_0\ : STD_LOGIC;
  signal \g4[10]_i_6_n_0\ : STD_LOGIC;
  signal \g4[10]_i_7_n_0\ : STD_LOGIC;
  signal \g4[10]_i_8_n_0\ : STD_LOGIC;
  signal \g4[10]_i_9_n_0\ : STD_LOGIC;
  signal \g4[15]_i_2_n_0\ : STD_LOGIC;
  signal \g4[15]_i_3_n_0\ : STD_LOGIC;
  signal \g4[15]_i_4_n_0\ : STD_LOGIC;
  signal \g4[15]_i_5_n_0\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \g4_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \g4_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \g4_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \g4_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal r1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r10 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \r1[14]_i_2_n_0\ : STD_LOGIC;
  signal \r1[14]_i_3_n_0\ : STD_LOGIC;
  signal \r1[14]_i_4_n_0\ : STD_LOGIC;
  signal \r1[14]_i_5_n_0\ : STD_LOGIC;
  signal \r1[9]_i_10_n_0\ : STD_LOGIC;
  signal \r1[9]_i_11_n_0\ : STD_LOGIC;
  signal \r1[9]_i_12_n_0\ : STD_LOGIC;
  signal \r1[9]_i_13_n_0\ : STD_LOGIC;
  signal \r1[9]_i_14_n_0\ : STD_LOGIC;
  signal \r1[9]_i_15_n_0\ : STD_LOGIC;
  signal \r1[9]_i_2_n_0\ : STD_LOGIC;
  signal \r1[9]_i_3_n_0\ : STD_LOGIC;
  signal \r1[9]_i_4_n_0\ : STD_LOGIC;
  signal \r1[9]_i_5_n_0\ : STD_LOGIC;
  signal \r1[9]_i_6_n_0\ : STD_LOGIC;
  signal \r1[9]_i_7_n_0\ : STD_LOGIC;
  signal \r1[9]_i_8_n_0\ : STD_LOGIC;
  signal \r1[9]_i_9_n_0\ : STD_LOGIC;
  signal \r1_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \r1_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \r1_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \r1_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal r2 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r20 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \r2[14]_i_2_n_0\ : STD_LOGIC;
  signal \r2[14]_i_3_n_0\ : STD_LOGIC;
  signal \r2[14]_i_4_n_0\ : STD_LOGIC;
  signal \r2[14]_i_5_n_0\ : STD_LOGIC;
  signal \r2[9]_i_10_n_0\ : STD_LOGIC;
  signal \r2[9]_i_11_n_0\ : STD_LOGIC;
  signal \r2[9]_i_12_n_0\ : STD_LOGIC;
  signal \r2[9]_i_13_n_0\ : STD_LOGIC;
  signal \r2[9]_i_14_n_0\ : STD_LOGIC;
  signal \r2[9]_i_15_n_0\ : STD_LOGIC;
  signal \r2[9]_i_2_n_0\ : STD_LOGIC;
  signal \r2[9]_i_3_n_0\ : STD_LOGIC;
  signal \r2[9]_i_4_n_0\ : STD_LOGIC;
  signal \r2[9]_i_5_n_0\ : STD_LOGIC;
  signal \r2[9]_i_6_n_0\ : STD_LOGIC;
  signal \r2[9]_i_7_n_0\ : STD_LOGIC;
  signal \r2[9]_i_8_n_0\ : STD_LOGIC;
  signal \r2[9]_i_9_n_0\ : STD_LOGIC;
  signal \r2_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \r2_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \r2_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \r2_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal r3 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r30 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \r3[14]_i_2_n_0\ : STD_LOGIC;
  signal \r3[14]_i_3_n_0\ : STD_LOGIC;
  signal \r3[14]_i_4_n_0\ : STD_LOGIC;
  signal \r3[14]_i_5_n_0\ : STD_LOGIC;
  signal \r3[9]_i_10_n_0\ : STD_LOGIC;
  signal \r3[9]_i_11_n_0\ : STD_LOGIC;
  signal \r3[9]_i_12_n_0\ : STD_LOGIC;
  signal \r3[9]_i_13_n_0\ : STD_LOGIC;
  signal \r3[9]_i_14_n_0\ : STD_LOGIC;
  signal \r3[9]_i_15_n_0\ : STD_LOGIC;
  signal \r3[9]_i_2_n_0\ : STD_LOGIC;
  signal \r3[9]_i_3_n_0\ : STD_LOGIC;
  signal \r3[9]_i_4_n_0\ : STD_LOGIC;
  signal \r3[9]_i_5_n_0\ : STD_LOGIC;
  signal \r3[9]_i_6_n_0\ : STD_LOGIC;
  signal \r3[9]_i_7_n_0\ : STD_LOGIC;
  signal \r3[9]_i_8_n_0\ : STD_LOGIC;
  signal \r3[9]_i_9_n_0\ : STD_LOGIC;
  signal \r3_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \r3_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \r3_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \r3_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal r4 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r40 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \r4[14]_i_2_n_0\ : STD_LOGIC;
  signal \r4[14]_i_3_n_0\ : STD_LOGIC;
  signal \r4[14]_i_4_n_0\ : STD_LOGIC;
  signal \r4[14]_i_5_n_0\ : STD_LOGIC;
  signal \r4[9]_i_10_n_0\ : STD_LOGIC;
  signal \r4[9]_i_11_n_0\ : STD_LOGIC;
  signal \r4[9]_i_12_n_0\ : STD_LOGIC;
  signal \r4[9]_i_13_n_0\ : STD_LOGIC;
  signal \r4[9]_i_14_n_0\ : STD_LOGIC;
  signal \r4[9]_i_15_n_0\ : STD_LOGIC;
  signal \r4[9]_i_2_n_0\ : STD_LOGIC;
  signal \r4[9]_i_3_n_0\ : STD_LOGIC;
  signal \r4[9]_i_4_n_0\ : STD_LOGIC;
  signal \r4[9]_i_5_n_0\ : STD_LOGIC;
  signal \r4[9]_i_6_n_0\ : STD_LOGIC;
  signal \r4[9]_i_7_n_0\ : STD_LOGIC;
  signal \r4[9]_i_8_n_0\ : STD_LOGIC;
  signal \r4[9]_i_9_n_0\ : STD_LOGIC;
  signal \r4_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \r4_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \r4_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \r4_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal sum1 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum1[15]_i_10_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_11_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_12_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_13_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_14_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_15_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_16_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_17_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_18_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_19_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_20_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_21_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_22_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_23_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_24_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_25_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_26_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_27_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_28_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_29_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_30_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_31_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_32_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_7_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_8_n_0\ : STD_LOGIC;
  signal \sum1[15]_i_9_n_0\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sum1_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \sum1_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal sum2 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum2[15]_i_10_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_11_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_12_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_13_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_14_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_15_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_16_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_17_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_18_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_19_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_20_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_21_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_22_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_23_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_24_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_25_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_26_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_27_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_28_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_29_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_30_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_31_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_32_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_7_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_8_n_0\ : STD_LOGIC;
  signal \sum2[15]_i_9_n_0\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \sum2_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \sum2_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \sum2_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal sum3 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum3[15]_i_10_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_11_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_12_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_13_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_14_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_15_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_16_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_17_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_18_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_19_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_20_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_21_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_22_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_23_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_24_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_25_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_26_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_27_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_28_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_29_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_30_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_31_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_32_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_7_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_8_n_0\ : STD_LOGIC;
  signal \sum3[15]_i_9_n_0\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \sum3_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \sum3_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \sum3_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal sum4 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum4[15]_i_10_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_11_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_12_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_13_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_14_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_15_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_16_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_17_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_18_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_19_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_20_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_21_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_22_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_23_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_24_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_25_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_26_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_27_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_28_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_29_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_30_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_31_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_32_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_7_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_8_n_0\ : STD_LOGIC;
  signal \sum4[15]_i_9_n_0\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \sum4_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \sum4_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \sum4_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_b1_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_b1_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_b2_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_b2_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_b3_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_b3_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_b4_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_b4_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_g1_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_g1_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_g2_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_g2_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_g3_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_g3_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_g4_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_g4_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_r1_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_r1_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_r2_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_r2_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_r3_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_r3_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_r4_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_r4_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_sum1_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sum1_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sum1_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sum2_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sum2_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sum2_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sum3_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sum3_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sum3_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sum4_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_sum4_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sum4_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \b1[10]_i_18\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b1[10]_i_19\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \b1_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \b1_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \b1_reg[12]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \b1_reg[12]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute SOFT_HLUTNM of \b2[10]_i_18\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \b2[10]_i_19\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of \b2_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \b2_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \b2_reg[12]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \b2_reg[12]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute SOFT_HLUTNM of \b3[10]_i_18\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \b3[10]_i_19\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of \b3_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \b3_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \b3_reg[12]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \b3_reg[12]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute SOFT_HLUTNM of \b4[10]_i_18\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \b4[10]_i_19\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \b4_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \b4_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute ADDER_THRESHOLD of \b4_reg[12]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \b4_reg[12]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x5}}";
  attribute SOFT_HLUTNM of \g1[10]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g1[10]_i_14\ : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS of \g1_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \g1_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute SOFT_HLUTNM of \g2[10]_i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g2[10]_i_14\ : label is "soft_lutpair3";
  attribute METHODOLOGY_DRC_VIOS of \g2_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \g2_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute SOFT_HLUTNM of \g3[10]_i_13\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g3[10]_i_14\ : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS of \g3_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \g3_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute SOFT_HLUTNM of \g4[10]_i_13\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g4[10]_i_14\ : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS of \g4_reg[10]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of \g4_reg[15]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[10]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[11]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[12]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[13]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[14]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[15]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[16]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[17]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[18]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[19]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[20]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[21]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[22]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[23]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[24]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[25]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[26]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[27]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[28]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[29]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[2]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[30]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[31]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[3]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[5]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[6]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_gray_tdata[9]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r1[9]_i_13\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r1[9]_i_14\ : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS of \r1_reg[14]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \r1_reg[9]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute SOFT_HLUTNM of \r2[9]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r2[9]_i_14\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS of \r2_reg[14]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \r2_reg[9]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute SOFT_HLUTNM of \r3[9]_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r3[9]_i_14\ : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS of \r3_reg[14]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \r3_reg[9]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute SOFT_HLUTNM of \r4[9]_i_13\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r4[9]_i_14\ : label is "soft_lutpair11";
  attribute METHODOLOGY_DRC_VIOS of \r4_reg[14]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute METHODOLOGY_DRC_VIOS of \r4_reg[9]_i_1\ : label is "{SYNTH-9 {cell *THIS*} {string 8x7}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \sum1[15]_i_14\ : label is "lutpair11";
  attribute HLUTNM of \sum1[15]_i_15\ : label is "lutpair10";
  attribute HLUTNM of \sum1[15]_i_16\ : label is "lutpair9";
  attribute HLUTNM of \sum1[15]_i_17\ : label is "lutpair8";
  attribute HLUTNM of \sum1[15]_i_18\ : label is "lutpair6";
  attribute HLUTNM of \sum1[15]_i_19\ : label is "lutpair5";
  attribute HLUTNM of \sum1[15]_i_20\ : label is "lutpair4";
  attribute HLUTNM of \sum1[15]_i_21\ : label is "lutpair3";
  attribute HLUTNM of \sum1[15]_i_22\ : label is "lutpair2";
  attribute HLUTNM of \sum1[15]_i_23\ : label is "lutpair1";
  attribute HLUTNM of \sum1[15]_i_24\ : label is "lutpair0";
  attribute HLUTNM of \sum1[15]_i_25\ : label is "lutpair7";
  attribute HLUTNM of \sum1[15]_i_26\ : label is "lutpair6";
  attribute HLUTNM of \sum1[15]_i_27\ : label is "lutpair5";
  attribute HLUTNM of \sum1[15]_i_28\ : label is "lutpair4";
  attribute HLUTNM of \sum1[15]_i_29\ : label is "lutpair3";
  attribute HLUTNM of \sum1[15]_i_30\ : label is "lutpair2";
  attribute HLUTNM of \sum1[15]_i_31\ : label is "lutpair1";
  attribute HLUTNM of \sum1[15]_i_32\ : label is "lutpair0";
  attribute HLUTNM of \sum1[15]_i_5\ : label is "lutpair11";
  attribute HLUTNM of \sum1[15]_i_6\ : label is "lutpair10";
  attribute HLUTNM of \sum1[15]_i_7\ : label is "lutpair9";
  attribute HLUTNM of \sum1[15]_i_8\ : label is "lutpair8";
  attribute HLUTNM of \sum1[15]_i_9\ : label is "lutpair7";
  attribute HLUTNM of \sum2[15]_i_14\ : label is "lutpair23";
  attribute HLUTNM of \sum2[15]_i_15\ : label is "lutpair22";
  attribute HLUTNM of \sum2[15]_i_16\ : label is "lutpair21";
  attribute HLUTNM of \sum2[15]_i_17\ : label is "lutpair20";
  attribute HLUTNM of \sum2[15]_i_18\ : label is "lutpair18";
  attribute HLUTNM of \sum2[15]_i_19\ : label is "lutpair17";
  attribute HLUTNM of \sum2[15]_i_20\ : label is "lutpair16";
  attribute HLUTNM of \sum2[15]_i_21\ : label is "lutpair15";
  attribute HLUTNM of \sum2[15]_i_22\ : label is "lutpair14";
  attribute HLUTNM of \sum2[15]_i_23\ : label is "lutpair13";
  attribute HLUTNM of \sum2[15]_i_24\ : label is "lutpair12";
  attribute HLUTNM of \sum2[15]_i_25\ : label is "lutpair19";
  attribute HLUTNM of \sum2[15]_i_26\ : label is "lutpair18";
  attribute HLUTNM of \sum2[15]_i_27\ : label is "lutpair17";
  attribute HLUTNM of \sum2[15]_i_28\ : label is "lutpair16";
  attribute HLUTNM of \sum2[15]_i_29\ : label is "lutpair15";
  attribute HLUTNM of \sum2[15]_i_30\ : label is "lutpair14";
  attribute HLUTNM of \sum2[15]_i_31\ : label is "lutpair13";
  attribute HLUTNM of \sum2[15]_i_32\ : label is "lutpair12";
  attribute HLUTNM of \sum2[15]_i_5\ : label is "lutpair23";
  attribute HLUTNM of \sum2[15]_i_6\ : label is "lutpair22";
  attribute HLUTNM of \sum2[15]_i_7\ : label is "lutpair21";
  attribute HLUTNM of \sum2[15]_i_8\ : label is "lutpair20";
  attribute HLUTNM of \sum2[15]_i_9\ : label is "lutpair19";
  attribute HLUTNM of \sum3[15]_i_14\ : label is "lutpair35";
  attribute HLUTNM of \sum3[15]_i_15\ : label is "lutpair34";
  attribute HLUTNM of \sum3[15]_i_16\ : label is "lutpair33";
  attribute HLUTNM of \sum3[15]_i_17\ : label is "lutpair32";
  attribute HLUTNM of \sum3[15]_i_18\ : label is "lutpair30";
  attribute HLUTNM of \sum3[15]_i_19\ : label is "lutpair29";
  attribute HLUTNM of \sum3[15]_i_20\ : label is "lutpair28";
  attribute HLUTNM of \sum3[15]_i_21\ : label is "lutpair27";
  attribute HLUTNM of \sum3[15]_i_22\ : label is "lutpair26";
  attribute HLUTNM of \sum3[15]_i_23\ : label is "lutpair25";
  attribute HLUTNM of \sum3[15]_i_24\ : label is "lutpair24";
  attribute HLUTNM of \sum3[15]_i_25\ : label is "lutpair31";
  attribute HLUTNM of \sum3[15]_i_26\ : label is "lutpair30";
  attribute HLUTNM of \sum3[15]_i_27\ : label is "lutpair29";
  attribute HLUTNM of \sum3[15]_i_28\ : label is "lutpair28";
  attribute HLUTNM of \sum3[15]_i_29\ : label is "lutpair27";
  attribute HLUTNM of \sum3[15]_i_30\ : label is "lutpair26";
  attribute HLUTNM of \sum3[15]_i_31\ : label is "lutpair25";
  attribute HLUTNM of \sum3[15]_i_32\ : label is "lutpair24";
  attribute HLUTNM of \sum3[15]_i_5\ : label is "lutpair35";
  attribute HLUTNM of \sum3[15]_i_6\ : label is "lutpair34";
  attribute HLUTNM of \sum3[15]_i_7\ : label is "lutpair33";
  attribute HLUTNM of \sum3[15]_i_8\ : label is "lutpair32";
  attribute HLUTNM of \sum3[15]_i_9\ : label is "lutpair31";
  attribute HLUTNM of \sum4[15]_i_14\ : label is "lutpair47";
  attribute HLUTNM of \sum4[15]_i_15\ : label is "lutpair46";
  attribute HLUTNM of \sum4[15]_i_16\ : label is "lutpair45";
  attribute HLUTNM of \sum4[15]_i_17\ : label is "lutpair44";
  attribute HLUTNM of \sum4[15]_i_18\ : label is "lutpair42";
  attribute HLUTNM of \sum4[15]_i_19\ : label is "lutpair41";
  attribute HLUTNM of \sum4[15]_i_20\ : label is "lutpair40";
  attribute HLUTNM of \sum4[15]_i_21\ : label is "lutpair39";
  attribute HLUTNM of \sum4[15]_i_22\ : label is "lutpair38";
  attribute HLUTNM of \sum4[15]_i_23\ : label is "lutpair37";
  attribute HLUTNM of \sum4[15]_i_24\ : label is "lutpair36";
  attribute HLUTNM of \sum4[15]_i_25\ : label is "lutpair43";
  attribute HLUTNM of \sum4[15]_i_26\ : label is "lutpair42";
  attribute HLUTNM of \sum4[15]_i_27\ : label is "lutpair41";
  attribute HLUTNM of \sum4[15]_i_28\ : label is "lutpair40";
  attribute HLUTNM of \sum4[15]_i_29\ : label is "lutpair39";
  attribute HLUTNM of \sum4[15]_i_30\ : label is "lutpair38";
  attribute HLUTNM of \sum4[15]_i_31\ : label is "lutpair37";
  attribute HLUTNM of \sum4[15]_i_32\ : label is "lutpair36";
  attribute HLUTNM of \sum4[15]_i_5\ : label is "lutpair47";
  attribute HLUTNM of \sum4[15]_i_6\ : label is "lutpair46";
  attribute HLUTNM of \sum4[15]_i_7\ : label is "lutpair45";
  attribute HLUTNM of \sum4[15]_i_8\ : label is "lutpair44";
  attribute HLUTNM of \sum4[15]_i_9\ : label is "lutpair43";
begin
  Q(0) <= \^q\(0);
\b1[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C36BC24B4B294369"
    )
        port map (
      I0 => s_axis_rgb_tdata(11),
      I1 => s_axis_rgb_tdata(15),
      I2 => s_axis_rgb_tdata(12),
      I3 => s_axis_rgb_tdata(14),
      I4 => \b1[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(13),
      O => \b1[10]_i_10_n_0\
    );
\b1[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(10),
      I1 => \b1[10]_i_18_n_0\,
      I2 => s_axis_rgb_tdata(12),
      I3 => s_axis_rgb_tdata(13),
      I4 => \b1[10]_i_19_n_0\,
      I5 => s_axis_rgb_tdata(11),
      O => \b1[10]_i_11_n_0\
    );
\b1[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(9),
      I1 => \b1[10]_i_20_n_0\,
      I2 => s_axis_rgb_tdata(11),
      I3 => s_axis_rgb_tdata(12),
      I4 => \b1[10]_i_18_n_0\,
      I5 => s_axis_rgb_tdata(10),
      O => \b1[10]_i_12_n_0\
    );
\b1[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(8),
      I1 => \b1[10]_i_21_n_0\,
      I2 => s_axis_rgb_tdata(10),
      I3 => s_axis_rgb_tdata(11),
      I4 => \b1[10]_i_20_n_0\,
      I5 => s_axis_rgb_tdata(9),
      O => \b1[10]_i_13_n_0\
    );
\b1[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA5A5965AA95AA5"
    )
        port map (
      I0 => s_axis_rgb_tdata(13),
      I1 => s_axis_rgb_tdata(9),
      I2 => s_axis_rgb_tdata(8),
      I3 => s_axis_rgb_tdata(11),
      I4 => s_axis_rgb_tdata(10),
      I5 => s_axis_rgb_tdata(12),
      O => \b1[10]_i_14_n_0\
    );
\b1[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"304DCFB2"
    )
        port map (
      I0 => s_axis_rgb_tdata(8),
      I1 => s_axis_rgb_tdata(11),
      I2 => s_axis_rgb_tdata(9),
      I3 => s_axis_rgb_tdata(10),
      I4 => s_axis_rgb_tdata(12),
      O => \b1[10]_i_15_n_0\
    );
\b1[10]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => s_axis_rgb_tdata(11),
      I1 => s_axis_rgb_tdata(9),
      I2 => s_axis_rgb_tdata(8),
      I3 => s_axis_rgb_tdata(10),
      O => \b1[10]_i_16_n_0\
    );
\b1[10]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(11),
      I1 => s_axis_rgb_tdata(13),
      I2 => s_axis_rgb_tdata(9),
      I3 => s_axis_rgb_tdata(8),
      I4 => s_axis_rgb_tdata(12),
      I5 => s_axis_rgb_tdata(10),
      O => \b1[10]_i_17_n_0\
    );
\b1[10]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \b1[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(14),
      I2 => s_axis_rgb_tdata(12),
      I3 => s_axis_rgb_tdata(13),
      I4 => s_axis_rgb_tdata(15),
      O => \b1[10]_i_18_n_0\
    );
\b1[10]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(12),
      I1 => \b1[10]_i_17_n_0\,
      I2 => s_axis_rgb_tdata(15),
      I3 => s_axis_rgb_tdata(13),
      I4 => s_axis_rgb_tdata(14),
      O => \b1[10]_i_19_n_0\
    );
\b1[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4E0E"
    )
        port map (
      I0 => s_axis_rgb_tdata(15),
      I1 => s_axis_rgb_tdata(12),
      I2 => s_axis_rgb_tdata(14),
      I3 => s_axis_rgb_tdata(13),
      O => \b1[10]_i_2_n_0\
    );
\b1[10]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \b1[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(12),
      I2 => s_axis_rgb_tdata(14),
      O => \b1[10]_i_20_n_0\
    );
\b1[10]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEA007FF015FF800"
    )
        port map (
      I0 => s_axis_rgb_tdata(9),
      I1 => s_axis_rgb_tdata(8),
      I2 => s_axis_rgb_tdata(12),
      I3 => s_axis_rgb_tdata(10),
      I4 => s_axis_rgb_tdata(11),
      I5 => s_axis_rgb_tdata(13),
      O => \b1[10]_i_21_n_0\
    );
\b1[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7773737B12020222"
    )
        port map (
      I0 => s_axis_rgb_tdata(14),
      I1 => s_axis_rgb_tdata(13),
      I2 => s_axis_rgb_tdata(15),
      I3 => \b1[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(12),
      I5 => s_axis_rgb_tdata(11),
      O => \b1[10]_i_3_n_0\
    );
\b1[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F6F09060606"
    )
        port map (
      I0 => s_axis_rgb_tdata(15),
      I1 => s_axis_rgb_tdata(13),
      I2 => s_axis_rgb_tdata(12),
      I3 => s_axis_rgb_tdata(14),
      I4 => \b1[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(10),
      O => \b1[10]_i_4_n_0\
    );
\b1[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77D4114"
    )
        port map (
      I0 => s_axis_rgb_tdata(11),
      I1 => s_axis_rgb_tdata(14),
      I2 => s_axis_rgb_tdata(12),
      I3 => \b1[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(9),
      O => \b1[10]_i_5_n_0\
    );
\b1[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F0A069FAF0606"
    )
        port map (
      I0 => s_axis_rgb_tdata(13),
      I1 => s_axis_rgb_tdata(11),
      I2 => s_axis_rgb_tdata(10),
      I3 => s_axis_rgb_tdata(12),
      I4 => s_axis_rgb_tdata(8),
      I5 => s_axis_rgb_tdata(9),
      O => \b1[10]_i_6_n_0\
    );
\b1[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6695A966569969"
    )
        port map (
      I0 => s_axis_rgb_tdata(13),
      I1 => s_axis_rgb_tdata(11),
      I2 => s_axis_rgb_tdata(10),
      I3 => s_axis_rgb_tdata(12),
      I4 => s_axis_rgb_tdata(8),
      I5 => s_axis_rgb_tdata(9),
      O => \b1[10]_i_7_n_0\
    );
\b1[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => s_axis_rgb_tdata(11),
      I1 => s_axis_rgb_tdata(9),
      I2 => s_axis_rgb_tdata(10),
      I3 => s_axis_rgb_tdata(8),
      O => \b1[10]_i_8_n_0\
    );
\b1[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAFBDD"
    )
        port map (
      I0 => s_axis_rgb_tdata(12),
      I1 => s_axis_rgb_tdata(14),
      I2 => \b1[10]_i_17_n_0\,
      I3 => s_axis_rgb_tdata(15),
      I4 => s_axis_rgb_tdata(13),
      O => \b1[10]_i_9_n_0\
    );
\b1[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => s_axis_rgb_tdata(14),
      I1 => s_axis_rgb_tdata(15),
      I2 => s_axis_rgb_tdata(13),
      O => \b1[12]_i_2_n_0\
    );
\b1[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_rgb_tdata(14),
      I1 => s_axis_rgb_tdata(15),
      O => \b1[12]_i_3_n_0\
    );
\b1[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AD"
    )
        port map (
      I0 => s_axis_rgb_tdata(13),
      I1 => s_axis_rgb_tdata(15),
      I2 => s_axis_rgb_tdata(14),
      O => \b1[12]_i_4_n_0\
    );
\b1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(10),
      I1 => s_axis_rgb_tdata(8),
      O => b10(2)
    );
\b1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(8),
      Q => b1(0),
      R => '0'
    );
\b1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(10),
      Q => b1(10),
      R => '0'
    );
\b1_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \b1_reg[10]_i_1_n_0\,
      CO(6) => \b1_reg[10]_i_1_n_1\,
      CO(5) => \b1_reg[10]_i_1_n_2\,
      CO(4) => \b1_reg[10]_i_1_n_3\,
      CO(3) => \b1_reg[10]_i_1_n_4\,
      CO(2) => \b1_reg[10]_i_1_n_5\,
      CO(1) => \b1_reg[10]_i_1_n_6\,
      CO(0) => \b1_reg[10]_i_1_n_7\,
      DI(7) => \b1[10]_i_2_n_0\,
      DI(6) => \b1[10]_i_3_n_0\,
      DI(5) => \b1[10]_i_4_n_0\,
      DI(4) => \b1[10]_i_5_n_0\,
      DI(3) => \b1[10]_i_6_n_0\,
      DI(2) => \b1[10]_i_7_n_0\,
      DI(1) => \b1[10]_i_8_n_0\,
      DI(0) => '0',
      O(7 downto 0) => b10(10 downto 3),
      S(7) => \b1[10]_i_9_n_0\,
      S(6) => \b1[10]_i_10_n_0\,
      S(5) => \b1[10]_i_11_n_0\,
      S(4) => \b1[10]_i_12_n_0\,
      S(3) => \b1[10]_i_13_n_0\,
      S(2) => \b1[10]_i_14_n_0\,
      S(1) => \b1[10]_i_15_n_0\,
      S(0) => \b1[10]_i_16_n_0\
    );
\b1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(11),
      Q => b1(11),
      R => '0'
    );
\b1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(12),
      Q => b1(12),
      R => '0'
    );
\b1_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \b1_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_b1_reg[12]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \b1_reg[12]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \b1[12]_i_2_n_0\,
      O(7 downto 2) => \NLW_b1_reg[12]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => b10(12 downto 11),
      S(7 downto 2) => B"000000",
      S(1) => \b1[12]_i_3_n_0\,
      S(0) => \b1[12]_i_4_n_0\
    );
\b1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(9),
      Q => b1(1),
      R => '0'
    );
\b1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(2),
      Q => b1(2),
      R => '0'
    );
\b1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(3),
      Q => b1(3),
      R => '0'
    );
\b1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(4),
      Q => b1(4),
      R => '0'
    );
\b1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(5),
      Q => b1(5),
      R => '0'
    );
\b1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(6),
      Q => b1(6),
      R => '0'
    );
\b1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(7),
      Q => b1(7),
      R => '0'
    );
\b1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(8),
      Q => b1(8),
      R => '0'
    );
\b1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b10(9),
      Q => b1(9),
      R => '0'
    );
\b2[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C36BC24B4B294369"
    )
        port map (
      I0 => s_axis_rgb_tdata(35),
      I1 => s_axis_rgb_tdata(39),
      I2 => s_axis_rgb_tdata(36),
      I3 => s_axis_rgb_tdata(38),
      I4 => \b2[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(37),
      O => \b2[10]_i_10_n_0\
    );
\b2[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(34),
      I1 => \b2[10]_i_18_n_0\,
      I2 => s_axis_rgb_tdata(36),
      I3 => s_axis_rgb_tdata(37),
      I4 => \b2[10]_i_19_n_0\,
      I5 => s_axis_rgb_tdata(35),
      O => \b2[10]_i_11_n_0\
    );
\b2[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(33),
      I1 => \b2[10]_i_20_n_0\,
      I2 => s_axis_rgb_tdata(35),
      I3 => s_axis_rgb_tdata(36),
      I4 => \b2[10]_i_18_n_0\,
      I5 => s_axis_rgb_tdata(34),
      O => \b2[10]_i_12_n_0\
    );
\b2[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(32),
      I1 => \b2[10]_i_21_n_0\,
      I2 => s_axis_rgb_tdata(34),
      I3 => s_axis_rgb_tdata(35),
      I4 => \b2[10]_i_20_n_0\,
      I5 => s_axis_rgb_tdata(33),
      O => \b2[10]_i_13_n_0\
    );
\b2[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA5A5965AA95AA5"
    )
        port map (
      I0 => s_axis_rgb_tdata(37),
      I1 => s_axis_rgb_tdata(33),
      I2 => s_axis_rgb_tdata(32),
      I3 => s_axis_rgb_tdata(35),
      I4 => s_axis_rgb_tdata(34),
      I5 => s_axis_rgb_tdata(36),
      O => \b2[10]_i_14_n_0\
    );
\b2[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"304DCFB2"
    )
        port map (
      I0 => s_axis_rgb_tdata(32),
      I1 => s_axis_rgb_tdata(35),
      I2 => s_axis_rgb_tdata(33),
      I3 => s_axis_rgb_tdata(34),
      I4 => s_axis_rgb_tdata(36),
      O => \b2[10]_i_15_n_0\
    );
\b2[10]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => s_axis_rgb_tdata(35),
      I1 => s_axis_rgb_tdata(33),
      I2 => s_axis_rgb_tdata(32),
      I3 => s_axis_rgb_tdata(34),
      O => \b2[10]_i_16_n_0\
    );
\b2[10]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(35),
      I1 => s_axis_rgb_tdata(37),
      I2 => s_axis_rgb_tdata(33),
      I3 => s_axis_rgb_tdata(32),
      I4 => s_axis_rgb_tdata(36),
      I5 => s_axis_rgb_tdata(34),
      O => \b2[10]_i_17_n_0\
    );
\b2[10]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \b2[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(38),
      I2 => s_axis_rgb_tdata(36),
      I3 => s_axis_rgb_tdata(37),
      I4 => s_axis_rgb_tdata(39),
      O => \b2[10]_i_18_n_0\
    );
\b2[10]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(36),
      I1 => \b2[10]_i_17_n_0\,
      I2 => s_axis_rgb_tdata(39),
      I3 => s_axis_rgb_tdata(37),
      I4 => s_axis_rgb_tdata(38),
      O => \b2[10]_i_19_n_0\
    );
\b2[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4E0E"
    )
        port map (
      I0 => s_axis_rgb_tdata(39),
      I1 => s_axis_rgb_tdata(36),
      I2 => s_axis_rgb_tdata(38),
      I3 => s_axis_rgb_tdata(37),
      O => \b2[10]_i_2_n_0\
    );
\b2[10]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \b2[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(36),
      I2 => s_axis_rgb_tdata(38),
      O => \b2[10]_i_20_n_0\
    );
\b2[10]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEA007FF015FF800"
    )
        port map (
      I0 => s_axis_rgb_tdata(33),
      I1 => s_axis_rgb_tdata(32),
      I2 => s_axis_rgb_tdata(36),
      I3 => s_axis_rgb_tdata(34),
      I4 => s_axis_rgb_tdata(35),
      I5 => s_axis_rgb_tdata(37),
      O => \b2[10]_i_21_n_0\
    );
\b2[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7773737B12020222"
    )
        port map (
      I0 => s_axis_rgb_tdata(38),
      I1 => s_axis_rgb_tdata(37),
      I2 => s_axis_rgb_tdata(39),
      I3 => \b2[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(36),
      I5 => s_axis_rgb_tdata(35),
      O => \b2[10]_i_3_n_0\
    );
\b2[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F6F09060606"
    )
        port map (
      I0 => s_axis_rgb_tdata(39),
      I1 => s_axis_rgb_tdata(37),
      I2 => s_axis_rgb_tdata(36),
      I3 => s_axis_rgb_tdata(38),
      I4 => \b2[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(34),
      O => \b2[10]_i_4_n_0\
    );
\b2[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77D4114"
    )
        port map (
      I0 => s_axis_rgb_tdata(35),
      I1 => s_axis_rgb_tdata(38),
      I2 => s_axis_rgb_tdata(36),
      I3 => \b2[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(33),
      O => \b2[10]_i_5_n_0\
    );
\b2[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F0A069FAF0606"
    )
        port map (
      I0 => s_axis_rgb_tdata(37),
      I1 => s_axis_rgb_tdata(35),
      I2 => s_axis_rgb_tdata(34),
      I3 => s_axis_rgb_tdata(36),
      I4 => s_axis_rgb_tdata(32),
      I5 => s_axis_rgb_tdata(33),
      O => \b2[10]_i_6_n_0\
    );
\b2[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6695A966569969"
    )
        port map (
      I0 => s_axis_rgb_tdata(37),
      I1 => s_axis_rgb_tdata(35),
      I2 => s_axis_rgb_tdata(34),
      I3 => s_axis_rgb_tdata(36),
      I4 => s_axis_rgb_tdata(32),
      I5 => s_axis_rgb_tdata(33),
      O => \b2[10]_i_7_n_0\
    );
\b2[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => s_axis_rgb_tdata(35),
      I1 => s_axis_rgb_tdata(33),
      I2 => s_axis_rgb_tdata(34),
      I3 => s_axis_rgb_tdata(32),
      O => \b2[10]_i_8_n_0\
    );
\b2[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAFBDD"
    )
        port map (
      I0 => s_axis_rgb_tdata(36),
      I1 => s_axis_rgb_tdata(38),
      I2 => \b2[10]_i_17_n_0\,
      I3 => s_axis_rgb_tdata(39),
      I4 => s_axis_rgb_tdata(37),
      O => \b2[10]_i_9_n_0\
    );
\b2[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => s_axis_rgb_tdata(38),
      I1 => s_axis_rgb_tdata(39),
      I2 => s_axis_rgb_tdata(37),
      O => \b2[12]_i_2_n_0\
    );
\b2[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_rgb_tdata(38),
      I1 => s_axis_rgb_tdata(39),
      O => \b2[12]_i_3_n_0\
    );
\b2[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AD"
    )
        port map (
      I0 => s_axis_rgb_tdata(37),
      I1 => s_axis_rgb_tdata(39),
      I2 => s_axis_rgb_tdata(38),
      O => \b2[12]_i_4_n_0\
    );
\b2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(34),
      I1 => s_axis_rgb_tdata(32),
      O => b20(2)
    );
\b2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(32),
      Q => b2(0),
      R => '0'
    );
\b2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(10),
      Q => b2(10),
      R => '0'
    );
\b2_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \b2_reg[10]_i_1_n_0\,
      CO(6) => \b2_reg[10]_i_1_n_1\,
      CO(5) => \b2_reg[10]_i_1_n_2\,
      CO(4) => \b2_reg[10]_i_1_n_3\,
      CO(3) => \b2_reg[10]_i_1_n_4\,
      CO(2) => \b2_reg[10]_i_1_n_5\,
      CO(1) => \b2_reg[10]_i_1_n_6\,
      CO(0) => \b2_reg[10]_i_1_n_7\,
      DI(7) => \b2[10]_i_2_n_0\,
      DI(6) => \b2[10]_i_3_n_0\,
      DI(5) => \b2[10]_i_4_n_0\,
      DI(4) => \b2[10]_i_5_n_0\,
      DI(3) => \b2[10]_i_6_n_0\,
      DI(2) => \b2[10]_i_7_n_0\,
      DI(1) => \b2[10]_i_8_n_0\,
      DI(0) => '0',
      O(7 downto 0) => b20(10 downto 3),
      S(7) => \b2[10]_i_9_n_0\,
      S(6) => \b2[10]_i_10_n_0\,
      S(5) => \b2[10]_i_11_n_0\,
      S(4) => \b2[10]_i_12_n_0\,
      S(3) => \b2[10]_i_13_n_0\,
      S(2) => \b2[10]_i_14_n_0\,
      S(1) => \b2[10]_i_15_n_0\,
      S(0) => \b2[10]_i_16_n_0\
    );
\b2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(11),
      Q => b2(11),
      R => '0'
    );
\b2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(12),
      Q => b2(12),
      R => '0'
    );
\b2_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \b2_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_b2_reg[12]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \b2_reg[12]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \b2[12]_i_2_n_0\,
      O(7 downto 2) => \NLW_b2_reg[12]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => b20(12 downto 11),
      S(7 downto 2) => B"000000",
      S(1) => \b2[12]_i_3_n_0\,
      S(0) => \b2[12]_i_4_n_0\
    );
\b2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(33),
      Q => b2(1),
      R => '0'
    );
\b2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(2),
      Q => b2(2),
      R => '0'
    );
\b2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(3),
      Q => b2(3),
      R => '0'
    );
\b2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(4),
      Q => b2(4),
      R => '0'
    );
\b2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(5),
      Q => b2(5),
      R => '0'
    );
\b2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(6),
      Q => b2(6),
      R => '0'
    );
\b2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(7),
      Q => b2(7),
      R => '0'
    );
\b2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(8),
      Q => b2(8),
      R => '0'
    );
\b2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b20(9),
      Q => b2(9),
      R => '0'
    );
\b3[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C36BC24B4B294369"
    )
        port map (
      I0 => s_axis_rgb_tdata(59),
      I1 => s_axis_rgb_tdata(63),
      I2 => s_axis_rgb_tdata(60),
      I3 => s_axis_rgb_tdata(62),
      I4 => \b3[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(61),
      O => \b3[10]_i_10_n_0\
    );
\b3[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(58),
      I1 => \b3[10]_i_18_n_0\,
      I2 => s_axis_rgb_tdata(60),
      I3 => s_axis_rgb_tdata(61),
      I4 => \b3[10]_i_19_n_0\,
      I5 => s_axis_rgb_tdata(59),
      O => \b3[10]_i_11_n_0\
    );
\b3[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(57),
      I1 => \b3[10]_i_20_n_0\,
      I2 => s_axis_rgb_tdata(59),
      I3 => s_axis_rgb_tdata(60),
      I4 => \b3[10]_i_18_n_0\,
      I5 => s_axis_rgb_tdata(58),
      O => \b3[10]_i_12_n_0\
    );
\b3[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(56),
      I1 => \b3[10]_i_21_n_0\,
      I2 => s_axis_rgb_tdata(58),
      I3 => s_axis_rgb_tdata(59),
      I4 => \b3[10]_i_20_n_0\,
      I5 => s_axis_rgb_tdata(57),
      O => \b3[10]_i_13_n_0\
    );
\b3[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA5A5965AA95AA5"
    )
        port map (
      I0 => s_axis_rgb_tdata(61),
      I1 => s_axis_rgb_tdata(57),
      I2 => s_axis_rgb_tdata(56),
      I3 => s_axis_rgb_tdata(59),
      I4 => s_axis_rgb_tdata(58),
      I5 => s_axis_rgb_tdata(60),
      O => \b3[10]_i_14_n_0\
    );
\b3[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"304DCFB2"
    )
        port map (
      I0 => s_axis_rgb_tdata(56),
      I1 => s_axis_rgb_tdata(59),
      I2 => s_axis_rgb_tdata(57),
      I3 => s_axis_rgb_tdata(58),
      I4 => s_axis_rgb_tdata(60),
      O => \b3[10]_i_15_n_0\
    );
\b3[10]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => s_axis_rgb_tdata(59),
      I1 => s_axis_rgb_tdata(57),
      I2 => s_axis_rgb_tdata(56),
      I3 => s_axis_rgb_tdata(58),
      O => \b3[10]_i_16_n_0\
    );
\b3[10]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(59),
      I1 => s_axis_rgb_tdata(61),
      I2 => s_axis_rgb_tdata(57),
      I3 => s_axis_rgb_tdata(56),
      I4 => s_axis_rgb_tdata(60),
      I5 => s_axis_rgb_tdata(58),
      O => \b3[10]_i_17_n_0\
    );
\b3[10]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \b3[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(62),
      I2 => s_axis_rgb_tdata(60),
      I3 => s_axis_rgb_tdata(61),
      I4 => s_axis_rgb_tdata(63),
      O => \b3[10]_i_18_n_0\
    );
\b3[10]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(60),
      I1 => \b3[10]_i_17_n_0\,
      I2 => s_axis_rgb_tdata(63),
      I3 => s_axis_rgb_tdata(61),
      I4 => s_axis_rgb_tdata(62),
      O => \b3[10]_i_19_n_0\
    );
\b3[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4E0E"
    )
        port map (
      I0 => s_axis_rgb_tdata(63),
      I1 => s_axis_rgb_tdata(60),
      I2 => s_axis_rgb_tdata(62),
      I3 => s_axis_rgb_tdata(61),
      O => \b3[10]_i_2_n_0\
    );
\b3[10]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \b3[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(60),
      I2 => s_axis_rgb_tdata(62),
      O => \b3[10]_i_20_n_0\
    );
\b3[10]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEA007FF015FF800"
    )
        port map (
      I0 => s_axis_rgb_tdata(57),
      I1 => s_axis_rgb_tdata(56),
      I2 => s_axis_rgb_tdata(60),
      I3 => s_axis_rgb_tdata(58),
      I4 => s_axis_rgb_tdata(59),
      I5 => s_axis_rgb_tdata(61),
      O => \b3[10]_i_21_n_0\
    );
\b3[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7773737B12020222"
    )
        port map (
      I0 => s_axis_rgb_tdata(62),
      I1 => s_axis_rgb_tdata(61),
      I2 => s_axis_rgb_tdata(63),
      I3 => \b3[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(60),
      I5 => s_axis_rgb_tdata(59),
      O => \b3[10]_i_3_n_0\
    );
\b3[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F6F09060606"
    )
        port map (
      I0 => s_axis_rgb_tdata(63),
      I1 => s_axis_rgb_tdata(61),
      I2 => s_axis_rgb_tdata(60),
      I3 => s_axis_rgb_tdata(62),
      I4 => \b3[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(58),
      O => \b3[10]_i_4_n_0\
    );
\b3[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77D4114"
    )
        port map (
      I0 => s_axis_rgb_tdata(59),
      I1 => s_axis_rgb_tdata(62),
      I2 => s_axis_rgb_tdata(60),
      I3 => \b3[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(57),
      O => \b3[10]_i_5_n_0\
    );
\b3[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F0A069FAF0606"
    )
        port map (
      I0 => s_axis_rgb_tdata(61),
      I1 => s_axis_rgb_tdata(59),
      I2 => s_axis_rgb_tdata(58),
      I3 => s_axis_rgb_tdata(60),
      I4 => s_axis_rgb_tdata(56),
      I5 => s_axis_rgb_tdata(57),
      O => \b3[10]_i_6_n_0\
    );
\b3[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6695A966569969"
    )
        port map (
      I0 => s_axis_rgb_tdata(61),
      I1 => s_axis_rgb_tdata(59),
      I2 => s_axis_rgb_tdata(58),
      I3 => s_axis_rgb_tdata(60),
      I4 => s_axis_rgb_tdata(56),
      I5 => s_axis_rgb_tdata(57),
      O => \b3[10]_i_7_n_0\
    );
\b3[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => s_axis_rgb_tdata(59),
      I1 => s_axis_rgb_tdata(57),
      I2 => s_axis_rgb_tdata(58),
      I3 => s_axis_rgb_tdata(56),
      O => \b3[10]_i_8_n_0\
    );
\b3[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAFBDD"
    )
        port map (
      I0 => s_axis_rgb_tdata(60),
      I1 => s_axis_rgb_tdata(62),
      I2 => \b3[10]_i_17_n_0\,
      I3 => s_axis_rgb_tdata(63),
      I4 => s_axis_rgb_tdata(61),
      O => \b3[10]_i_9_n_0\
    );
\b3[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => s_axis_rgb_tdata(62),
      I1 => s_axis_rgb_tdata(63),
      I2 => s_axis_rgb_tdata(61),
      O => \b3[12]_i_2_n_0\
    );
\b3[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_rgb_tdata(62),
      I1 => s_axis_rgb_tdata(63),
      O => \b3[12]_i_3_n_0\
    );
\b3[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AD"
    )
        port map (
      I0 => s_axis_rgb_tdata(61),
      I1 => s_axis_rgb_tdata(63),
      I2 => s_axis_rgb_tdata(62),
      O => \b3[12]_i_4_n_0\
    );
\b3[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(58),
      I1 => s_axis_rgb_tdata(56),
      O => b30(2)
    );
\b3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(56),
      Q => b3(0),
      R => '0'
    );
\b3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(10),
      Q => b3(10),
      R => '0'
    );
\b3_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \b3_reg[10]_i_1_n_0\,
      CO(6) => \b3_reg[10]_i_1_n_1\,
      CO(5) => \b3_reg[10]_i_1_n_2\,
      CO(4) => \b3_reg[10]_i_1_n_3\,
      CO(3) => \b3_reg[10]_i_1_n_4\,
      CO(2) => \b3_reg[10]_i_1_n_5\,
      CO(1) => \b3_reg[10]_i_1_n_6\,
      CO(0) => \b3_reg[10]_i_1_n_7\,
      DI(7) => \b3[10]_i_2_n_0\,
      DI(6) => \b3[10]_i_3_n_0\,
      DI(5) => \b3[10]_i_4_n_0\,
      DI(4) => \b3[10]_i_5_n_0\,
      DI(3) => \b3[10]_i_6_n_0\,
      DI(2) => \b3[10]_i_7_n_0\,
      DI(1) => \b3[10]_i_8_n_0\,
      DI(0) => '0',
      O(7 downto 0) => b30(10 downto 3),
      S(7) => \b3[10]_i_9_n_0\,
      S(6) => \b3[10]_i_10_n_0\,
      S(5) => \b3[10]_i_11_n_0\,
      S(4) => \b3[10]_i_12_n_0\,
      S(3) => \b3[10]_i_13_n_0\,
      S(2) => \b3[10]_i_14_n_0\,
      S(1) => \b3[10]_i_15_n_0\,
      S(0) => \b3[10]_i_16_n_0\
    );
\b3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(11),
      Q => b3(11),
      R => '0'
    );
\b3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(12),
      Q => b3(12),
      R => '0'
    );
\b3_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \b3_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_b3_reg[12]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \b3_reg[12]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \b3[12]_i_2_n_0\,
      O(7 downto 2) => \NLW_b3_reg[12]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => b30(12 downto 11),
      S(7 downto 2) => B"000000",
      S(1) => \b3[12]_i_3_n_0\,
      S(0) => \b3[12]_i_4_n_0\
    );
\b3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(57),
      Q => b3(1),
      R => '0'
    );
\b3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(2),
      Q => b3(2),
      R => '0'
    );
\b3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(3),
      Q => b3(3),
      R => '0'
    );
\b3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(4),
      Q => b3(4),
      R => '0'
    );
\b3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(5),
      Q => b3(5),
      R => '0'
    );
\b3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(6),
      Q => b3(6),
      R => '0'
    );
\b3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(7),
      Q => b3(7),
      R => '0'
    );
\b3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(8),
      Q => b3(8),
      R => '0'
    );
\b3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b30(9),
      Q => b3(9),
      R => '0'
    );
\b4[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C36BC24B4B294369"
    )
        port map (
      I0 => s_axis_rgb_tdata(83),
      I1 => s_axis_rgb_tdata(87),
      I2 => s_axis_rgb_tdata(84),
      I3 => s_axis_rgb_tdata(86),
      I4 => \b4[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(85),
      O => \b4[10]_i_10_n_0\
    );
\b4[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(82),
      I1 => \b4[10]_i_18_n_0\,
      I2 => s_axis_rgb_tdata(84),
      I3 => s_axis_rgb_tdata(85),
      I4 => \b4[10]_i_19_n_0\,
      I5 => s_axis_rgb_tdata(83),
      O => \b4[10]_i_11_n_0\
    );
\b4[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(81),
      I1 => \b4[10]_i_20_n_0\,
      I2 => s_axis_rgb_tdata(83),
      I3 => s_axis_rgb_tdata(84),
      I4 => \b4[10]_i_18_n_0\,
      I5 => s_axis_rgb_tdata(82),
      O => \b4[10]_i_12_n_0\
    );
\b4[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_rgb_tdata(80),
      I1 => \b4[10]_i_21_n_0\,
      I2 => s_axis_rgb_tdata(82),
      I3 => s_axis_rgb_tdata(83),
      I4 => \b4[10]_i_20_n_0\,
      I5 => s_axis_rgb_tdata(81),
      O => \b4[10]_i_13_n_0\
    );
\b4[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA5A5965AA95AA5"
    )
        port map (
      I0 => s_axis_rgb_tdata(85),
      I1 => s_axis_rgb_tdata(81),
      I2 => s_axis_rgb_tdata(80),
      I3 => s_axis_rgb_tdata(83),
      I4 => s_axis_rgb_tdata(82),
      I5 => s_axis_rgb_tdata(84),
      O => \b4[10]_i_14_n_0\
    );
\b4[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"304DCFB2"
    )
        port map (
      I0 => s_axis_rgb_tdata(80),
      I1 => s_axis_rgb_tdata(83),
      I2 => s_axis_rgb_tdata(81),
      I3 => s_axis_rgb_tdata(82),
      I4 => s_axis_rgb_tdata(84),
      O => \b4[10]_i_15_n_0\
    );
\b4[10]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => s_axis_rgb_tdata(83),
      I1 => s_axis_rgb_tdata(81),
      I2 => s_axis_rgb_tdata(80),
      I3 => s_axis_rgb_tdata(82),
      O => \b4[10]_i_16_n_0\
    );
\b4[10]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(83),
      I1 => s_axis_rgb_tdata(85),
      I2 => s_axis_rgb_tdata(81),
      I3 => s_axis_rgb_tdata(80),
      I4 => s_axis_rgb_tdata(84),
      I5 => s_axis_rgb_tdata(82),
      O => \b4[10]_i_17_n_0\
    );
\b4[10]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \b4[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(86),
      I2 => s_axis_rgb_tdata(84),
      I3 => s_axis_rgb_tdata(85),
      I4 => s_axis_rgb_tdata(87),
      O => \b4[10]_i_18_n_0\
    );
\b4[10]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(84),
      I1 => \b4[10]_i_17_n_0\,
      I2 => s_axis_rgb_tdata(87),
      I3 => s_axis_rgb_tdata(85),
      I4 => s_axis_rgb_tdata(86),
      O => \b4[10]_i_19_n_0\
    );
\b4[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4E0E"
    )
        port map (
      I0 => s_axis_rgb_tdata(87),
      I1 => s_axis_rgb_tdata(84),
      I2 => s_axis_rgb_tdata(86),
      I3 => s_axis_rgb_tdata(85),
      O => \b4[10]_i_2_n_0\
    );
\b4[10]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \b4[10]_i_17_n_0\,
      I1 => s_axis_rgb_tdata(84),
      I2 => s_axis_rgb_tdata(86),
      O => \b4[10]_i_20_n_0\
    );
\b4[10]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEA007FF015FF800"
    )
        port map (
      I0 => s_axis_rgb_tdata(81),
      I1 => s_axis_rgb_tdata(80),
      I2 => s_axis_rgb_tdata(84),
      I3 => s_axis_rgb_tdata(82),
      I4 => s_axis_rgb_tdata(83),
      I5 => s_axis_rgb_tdata(85),
      O => \b4[10]_i_21_n_0\
    );
\b4[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7773737B12020222"
    )
        port map (
      I0 => s_axis_rgb_tdata(86),
      I1 => s_axis_rgb_tdata(85),
      I2 => s_axis_rgb_tdata(87),
      I3 => \b4[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(84),
      I5 => s_axis_rgb_tdata(83),
      O => \b4[10]_i_3_n_0\
    );
\b4[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F9F6F09060606"
    )
        port map (
      I0 => s_axis_rgb_tdata(87),
      I1 => s_axis_rgb_tdata(85),
      I2 => s_axis_rgb_tdata(84),
      I3 => s_axis_rgb_tdata(86),
      I4 => \b4[10]_i_17_n_0\,
      I5 => s_axis_rgb_tdata(82),
      O => \b4[10]_i_4_n_0\
    );
\b4[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77D4114"
    )
        port map (
      I0 => s_axis_rgb_tdata(83),
      I1 => s_axis_rgb_tdata(86),
      I2 => s_axis_rgb_tdata(84),
      I3 => \b4[10]_i_17_n_0\,
      I4 => s_axis_rgb_tdata(81),
      O => \b4[10]_i_5_n_0\
    );
\b4[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F0A069FAF0606"
    )
        port map (
      I0 => s_axis_rgb_tdata(85),
      I1 => s_axis_rgb_tdata(83),
      I2 => s_axis_rgb_tdata(82),
      I3 => s_axis_rgb_tdata(84),
      I4 => s_axis_rgb_tdata(80),
      I5 => s_axis_rgb_tdata(81),
      O => \b4[10]_i_6_n_0\
    );
\b4[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6695A966569969"
    )
        port map (
      I0 => s_axis_rgb_tdata(85),
      I1 => s_axis_rgb_tdata(83),
      I2 => s_axis_rgb_tdata(82),
      I3 => s_axis_rgb_tdata(84),
      I4 => s_axis_rgb_tdata(80),
      I5 => s_axis_rgb_tdata(81),
      O => \b4[10]_i_7_n_0\
    );
\b4[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => s_axis_rgb_tdata(83),
      I1 => s_axis_rgb_tdata(81),
      I2 => s_axis_rgb_tdata(82),
      I3 => s_axis_rgb_tdata(80),
      O => \b4[10]_i_8_n_0\
    );
\b4[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAFBDD"
    )
        port map (
      I0 => s_axis_rgb_tdata(84),
      I1 => s_axis_rgb_tdata(86),
      I2 => \b4[10]_i_17_n_0\,
      I3 => s_axis_rgb_tdata(87),
      I4 => s_axis_rgb_tdata(85),
      O => \b4[10]_i_9_n_0\
    );
\b4[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => s_axis_rgb_tdata(86),
      I1 => s_axis_rgb_tdata(87),
      I2 => s_axis_rgb_tdata(85),
      O => \b4[12]_i_2_n_0\
    );
\b4[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_rgb_tdata(86),
      I1 => s_axis_rgb_tdata(87),
      O => \b4[12]_i_3_n_0\
    );
\b4[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AD"
    )
        port map (
      I0 => s_axis_rgb_tdata(85),
      I1 => s_axis_rgb_tdata(87),
      I2 => s_axis_rgb_tdata(86),
      O => \b4[12]_i_4_n_0\
    );
\b4[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(82),
      I1 => s_axis_rgb_tdata(80),
      O => b40(2)
    );
\b4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(80),
      Q => b4(0),
      R => '0'
    );
\b4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(10),
      Q => b4(10),
      R => '0'
    );
\b4_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \b4_reg[10]_i_1_n_0\,
      CO(6) => \b4_reg[10]_i_1_n_1\,
      CO(5) => \b4_reg[10]_i_1_n_2\,
      CO(4) => \b4_reg[10]_i_1_n_3\,
      CO(3) => \b4_reg[10]_i_1_n_4\,
      CO(2) => \b4_reg[10]_i_1_n_5\,
      CO(1) => \b4_reg[10]_i_1_n_6\,
      CO(0) => \b4_reg[10]_i_1_n_7\,
      DI(7) => \b4[10]_i_2_n_0\,
      DI(6) => \b4[10]_i_3_n_0\,
      DI(5) => \b4[10]_i_4_n_0\,
      DI(4) => \b4[10]_i_5_n_0\,
      DI(3) => \b4[10]_i_6_n_0\,
      DI(2) => \b4[10]_i_7_n_0\,
      DI(1) => \b4[10]_i_8_n_0\,
      DI(0) => '0',
      O(7 downto 0) => b40(10 downto 3),
      S(7) => \b4[10]_i_9_n_0\,
      S(6) => \b4[10]_i_10_n_0\,
      S(5) => \b4[10]_i_11_n_0\,
      S(4) => \b4[10]_i_12_n_0\,
      S(3) => \b4[10]_i_13_n_0\,
      S(2) => \b4[10]_i_14_n_0\,
      S(1) => \b4[10]_i_15_n_0\,
      S(0) => \b4[10]_i_16_n_0\
    );
\b4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(11),
      Q => b4(11),
      R => '0'
    );
\b4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(12),
      Q => b4(12),
      R => '0'
    );
\b4_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \b4_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_b4_reg[12]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \b4_reg[12]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \b4[12]_i_2_n_0\,
      O(7 downto 2) => \NLW_b4_reg[12]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => b40(12 downto 11),
      S(7 downto 2) => B"000000",
      S(1) => \b4[12]_i_3_n_0\,
      S(0) => \b4[12]_i_4_n_0\
    );
\b4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(81),
      Q => b4(1),
      R => '0'
    );
\b4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(2),
      Q => b4(2),
      R => '0'
    );
\b4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(3),
      Q => b4(3),
      R => '0'
    );
\b4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(4),
      Q => b4(4),
      R => '0'
    );
\b4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(5),
      Q => b4(5),
      R => '0'
    );
\b4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(6),
      Q => b4(6),
      R => '0'
    );
\b4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(7),
      Q => b4(7),
      R => '0'
    );
\b4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(8),
      Q => b4(8),
      R => '0'
    );
\b4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => b40(9),
      Q => b4(9),
      R => '0'
    );
\g1[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CE3CF30"
    )
        port map (
      I0 => s_axis_rgb_tdata(0),
      I1 => s_axis_rgb_tdata(2),
      I2 => s_axis_rgb_tdata(3),
      I3 => s_axis_rgb_tdata(4),
      I4 => s_axis_rgb_tdata(1),
      O => \g1[10]_i_10_n_0\
    );
\g1[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69B4"
    )
        port map (
      I0 => s_axis_rgb_tdata(1),
      I1 => s_axis_rgb_tdata(2),
      I2 => s_axis_rgb_tdata(3),
      I3 => s_axis_rgb_tdata(0),
      O => \g1[10]_i_11_n_0\
    );
\g1[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => s_axis_rgb_tdata(1),
      I1 => s_axis_rgb_tdata(2),
      I2 => s_axis_rgb_tdata(0),
      O => \g1[10]_i_12_n_0\
    );
\g1[10]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC88CC80"
    )
        port map (
      I0 => s_axis_rgb_tdata(5),
      I1 => s_axis_rgb_tdata(7),
      I2 => \g1[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(6),
      I4 => s_axis_rgb_tdata(4),
      O => \g1[10]_i_13_n_0\
    );
\g1[10]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E33CC7E"
    )
        port map (
      I0 => s_axis_rgb_tdata(4),
      I1 => s_axis_rgb_tdata(6),
      I2 => \g1[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(7),
      I4 => s_axis_rgb_tdata(5),
      O => \g1[10]_i_14_n_0\
    );
\g1[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => s_axis_rgb_tdata(7),
      I1 => s_axis_rgb_tdata(5),
      I2 => s_axis_rgb_tdata(4),
      I3 => s_axis_rgb_tdata(6),
      I4 => \g1[15]_i_5_n_0\,
      O => \g1[10]_i_15_n_0\
    );
\g1[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEEAAEFA2002208"
    )
        port map (
      I0 => s_axis_rgb_tdata(5),
      I1 => s_axis_rgb_tdata(7),
      I2 => \g1[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(6),
      I4 => s_axis_rgb_tdata(4),
      I5 => s_axis_rgb_tdata(2),
      O => \g1[10]_i_2_n_0\
    );
\g1[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD22D4BB40000"
    )
        port map (
      I0 => \g1[15]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(6),
      I2 => s_axis_rgb_tdata(5),
      I3 => s_axis_rgb_tdata(7),
      I4 => s_axis_rgb_tdata(4),
      I5 => s_axis_rgb_tdata(1),
      O => \g1[10]_i_3_n_0\
    );
\g1[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696696969"
    )
        port map (
      I0 => s_axis_rgb_tdata(1),
      I1 => s_axis_rgb_tdata(7),
      I2 => s_axis_rgb_tdata(5),
      I3 => s_axis_rgb_tdata(4),
      I4 => s_axis_rgb_tdata(6),
      I5 => \g1[15]_i_5_n_0\,
      O => \g1[10]_i_4_n_0\
    );
\g1[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \g1[10]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(3),
      I2 => \g1[10]_i_13_n_0\,
      I3 => s_axis_rgb_tdata(6),
      O => \g1[10]_i_5_n_0\
    );
\g1[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g1[10]_i_3_n_0\,
      I1 => s_axis_rgb_tdata(5),
      I2 => \g1[10]_i_14_n_0\,
      I3 => s_axis_rgb_tdata(2),
      O => \g1[10]_i_6_n_0\
    );
\g1[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696699996669969"
    )
        port map (
      I0 => \g1[10]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(1),
      I2 => s_axis_rgb_tdata(3),
      I3 => s_axis_rgb_tdata(6),
      I4 => s_axis_rgb_tdata(4),
      I5 => \g1[15]_i_5_n_0\,
      O => \g1[10]_i_7_n_0\
    );
\g1[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => s_axis_rgb_tdata(3),
      I1 => s_axis_rgb_tdata(6),
      I2 => s_axis_rgb_tdata(4),
      I3 => \g1[15]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(0),
      O => \g1[10]_i_8_n_0\
    );
\g1[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F0FC0FF07F0F80"
    )
        port map (
      I0 => s_axis_rgb_tdata(0),
      I1 => s_axis_rgb_tdata(1),
      I2 => s_axis_rgb_tdata(3),
      I3 => s_axis_rgb_tdata(4),
      I4 => s_axis_rgb_tdata(5),
      I5 => s_axis_rgb_tdata(2),
      O => \g1[10]_i_9_n_0\
    );
\g1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA800FF000000"
    )
        port map (
      I0 => s_axis_rgb_tdata(5),
      I1 => \g1[15]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(4),
      I3 => s_axis_rgb_tdata(3),
      I4 => s_axis_rgb_tdata(6),
      I5 => s_axis_rgb_tdata(7),
      O => \g1[15]_i_2_n_0\
    );
\g1[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_rgb_tdata(7),
      I1 => s_axis_rgb_tdata(4),
      I2 => s_axis_rgb_tdata(5),
      O => \g1[15]_i_3_n_0\
    );
\g1[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAA777715558888"
    )
        port map (
      I0 => s_axis_rgb_tdata(6),
      I1 => s_axis_rgb_tdata(3),
      I2 => \g1[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(5),
      I4 => s_axis_rgb_tdata(7),
      I5 => s_axis_rgb_tdata(4),
      O => \g1[15]_i_4_n_0\
    );
\g1[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F800FFC0FFFF"
    )
        port map (
      I0 => s_axis_rgb_tdata(0),
      I1 => s_axis_rgb_tdata(1),
      I2 => s_axis_rgb_tdata(2),
      I3 => s_axis_rgb_tdata(3),
      I4 => s_axis_rgb_tdata(4),
      I5 => s_axis_rgb_tdata(5),
      O => \g1[15]_i_5_n_0\
    );
\g1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(0),
      I1 => s_axis_rgb_tdata(1),
      O => g10(2)
    );
\g1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(10),
      Q => g1(10),
      R => '0'
    );
\g1_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \g1_reg[10]_i_1_n_0\,
      CO(6) => \g1_reg[10]_i_1_n_1\,
      CO(5) => \g1_reg[10]_i_1_n_2\,
      CO(4) => \g1_reg[10]_i_1_n_3\,
      CO(3) => \g1_reg[10]_i_1_n_4\,
      CO(2) => \g1_reg[10]_i_1_n_5\,
      CO(1) => \g1_reg[10]_i_1_n_6\,
      CO(0) => \g1_reg[10]_i_1_n_7\,
      DI(7) => \g1[10]_i_2_n_0\,
      DI(6) => \g1[10]_i_3_n_0\,
      DI(5) => \g1[10]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(0),
      DI(3 downto 1) => s_axis_rgb_tdata(2 downto 0),
      DI(0) => '0',
      O(7 downto 0) => g10(10 downto 3),
      S(7) => \g1[10]_i_5_n_0\,
      S(6) => \g1[10]_i_6_n_0\,
      S(5) => \g1[10]_i_7_n_0\,
      S(4) => \g1[10]_i_8_n_0\,
      S(3) => \g1[10]_i_9_n_0\,
      S(2) => \g1[10]_i_10_n_0\,
      S(1) => \g1[10]_i_11_n_0\,
      S(0) => \g1[10]_i_12_n_0\
    );
\g1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(11),
      Q => g1(11),
      R => '0'
    );
\g1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(12),
      Q => g1(12),
      R => '0'
    );
\g1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(13),
      Q => g1(13),
      R => '0'
    );
\g1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(14),
      Q => g1(14),
      R => '0'
    );
\g1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(15),
      Q => g1(15),
      R => '0'
    );
\g1_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \g1_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_g1_reg[15]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => g10(15),
      CO(3) => \NLW_g1_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \g1_reg[15]_i_1_n_5\,
      CO(1) => \g1_reg[15]_i_1_n_6\,
      CO(0) => \g1_reg[15]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(5),
      DI(0) => \g1[15]_i_2_n_0\,
      O(7 downto 4) => \NLW_g1_reg[15]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => g10(14 downto 11),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(7 downto 6),
      S(1) => \g1[15]_i_3_n_0\,
      S(0) => \g1[15]_i_4_n_0\
    );
\g1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(0),
      Q => g1(1),
      R => '0'
    );
\g1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(2),
      Q => g1(2),
      R => '0'
    );
\g1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(3),
      Q => g1(3),
      R => '0'
    );
\g1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(4),
      Q => g1(4),
      R => '0'
    );
\g1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(5),
      Q => g1(5),
      R => '0'
    );
\g1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(6),
      Q => g1(6),
      R => '0'
    );
\g1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(7),
      Q => g1(7),
      R => '0'
    );
\g1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(8),
      Q => g1(8),
      R => '0'
    );
\g1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g10(9),
      Q => g1(9),
      R => '0'
    );
\g2[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CE3CF30"
    )
        port map (
      I0 => s_axis_rgb_tdata(24),
      I1 => s_axis_rgb_tdata(26),
      I2 => s_axis_rgb_tdata(27),
      I3 => s_axis_rgb_tdata(28),
      I4 => s_axis_rgb_tdata(25),
      O => \g2[10]_i_10_n_0\
    );
\g2[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69B4"
    )
        port map (
      I0 => s_axis_rgb_tdata(25),
      I1 => s_axis_rgb_tdata(26),
      I2 => s_axis_rgb_tdata(27),
      I3 => s_axis_rgb_tdata(24),
      O => \g2[10]_i_11_n_0\
    );
\g2[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => s_axis_rgb_tdata(25),
      I1 => s_axis_rgb_tdata(26),
      I2 => s_axis_rgb_tdata(24),
      O => \g2[10]_i_12_n_0\
    );
\g2[10]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC88CC80"
    )
        port map (
      I0 => s_axis_rgb_tdata(29),
      I1 => s_axis_rgb_tdata(31),
      I2 => \g2[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(30),
      I4 => s_axis_rgb_tdata(28),
      O => \g2[10]_i_13_n_0\
    );
\g2[10]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E33CC7E"
    )
        port map (
      I0 => s_axis_rgb_tdata(28),
      I1 => s_axis_rgb_tdata(30),
      I2 => \g2[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(31),
      I4 => s_axis_rgb_tdata(29),
      O => \g2[10]_i_14_n_0\
    );
\g2[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => s_axis_rgb_tdata(31),
      I1 => s_axis_rgb_tdata(29),
      I2 => s_axis_rgb_tdata(28),
      I3 => s_axis_rgb_tdata(30),
      I4 => \g2[15]_i_5_n_0\,
      O => \g2[10]_i_15_n_0\
    );
\g2[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEEAAEFA2002208"
    )
        port map (
      I0 => s_axis_rgb_tdata(29),
      I1 => s_axis_rgb_tdata(31),
      I2 => \g2[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(30),
      I4 => s_axis_rgb_tdata(28),
      I5 => s_axis_rgb_tdata(26),
      O => \g2[10]_i_2_n_0\
    );
\g2[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD22D4BB40000"
    )
        port map (
      I0 => \g2[15]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(30),
      I2 => s_axis_rgb_tdata(29),
      I3 => s_axis_rgb_tdata(31),
      I4 => s_axis_rgb_tdata(28),
      I5 => s_axis_rgb_tdata(25),
      O => \g2[10]_i_3_n_0\
    );
\g2[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696696969"
    )
        port map (
      I0 => s_axis_rgb_tdata(25),
      I1 => s_axis_rgb_tdata(31),
      I2 => s_axis_rgb_tdata(29),
      I3 => s_axis_rgb_tdata(28),
      I4 => s_axis_rgb_tdata(30),
      I5 => \g2[15]_i_5_n_0\,
      O => \g2[10]_i_4_n_0\
    );
\g2[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \g2[10]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(27),
      I2 => \g2[10]_i_13_n_0\,
      I3 => s_axis_rgb_tdata(30),
      O => \g2[10]_i_5_n_0\
    );
\g2[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g2[10]_i_3_n_0\,
      I1 => s_axis_rgb_tdata(29),
      I2 => \g2[10]_i_14_n_0\,
      I3 => s_axis_rgb_tdata(26),
      O => \g2[10]_i_6_n_0\
    );
\g2[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696699996669969"
    )
        port map (
      I0 => \g2[10]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(25),
      I2 => s_axis_rgb_tdata(27),
      I3 => s_axis_rgb_tdata(30),
      I4 => s_axis_rgb_tdata(28),
      I5 => \g2[15]_i_5_n_0\,
      O => \g2[10]_i_7_n_0\
    );
\g2[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => s_axis_rgb_tdata(27),
      I1 => s_axis_rgb_tdata(30),
      I2 => s_axis_rgb_tdata(28),
      I3 => \g2[15]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(24),
      O => \g2[10]_i_8_n_0\
    );
\g2[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F0FC0FF07F0F80"
    )
        port map (
      I0 => s_axis_rgb_tdata(24),
      I1 => s_axis_rgb_tdata(25),
      I2 => s_axis_rgb_tdata(27),
      I3 => s_axis_rgb_tdata(28),
      I4 => s_axis_rgb_tdata(29),
      I5 => s_axis_rgb_tdata(26),
      O => \g2[10]_i_9_n_0\
    );
\g2[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA800FF000000"
    )
        port map (
      I0 => s_axis_rgb_tdata(29),
      I1 => \g2[15]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(28),
      I3 => s_axis_rgb_tdata(27),
      I4 => s_axis_rgb_tdata(30),
      I5 => s_axis_rgb_tdata(31),
      O => \g2[15]_i_2_n_0\
    );
\g2[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_rgb_tdata(31),
      I1 => s_axis_rgb_tdata(28),
      I2 => s_axis_rgb_tdata(29),
      O => \g2[15]_i_3_n_0\
    );
\g2[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAA777715558888"
    )
        port map (
      I0 => s_axis_rgb_tdata(30),
      I1 => s_axis_rgb_tdata(27),
      I2 => \g2[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(29),
      I4 => s_axis_rgb_tdata(31),
      I5 => s_axis_rgb_tdata(28),
      O => \g2[15]_i_4_n_0\
    );
\g2[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F800FFC0FFFF"
    )
        port map (
      I0 => s_axis_rgb_tdata(24),
      I1 => s_axis_rgb_tdata(25),
      I2 => s_axis_rgb_tdata(26),
      I3 => s_axis_rgb_tdata(27),
      I4 => s_axis_rgb_tdata(28),
      I5 => s_axis_rgb_tdata(29),
      O => \g2[15]_i_5_n_0\
    );
\g2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(24),
      I1 => s_axis_rgb_tdata(25),
      O => g20(2)
    );
\g2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(10),
      Q => g2(10),
      R => '0'
    );
\g2_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \g2_reg[10]_i_1_n_0\,
      CO(6) => \g2_reg[10]_i_1_n_1\,
      CO(5) => \g2_reg[10]_i_1_n_2\,
      CO(4) => \g2_reg[10]_i_1_n_3\,
      CO(3) => \g2_reg[10]_i_1_n_4\,
      CO(2) => \g2_reg[10]_i_1_n_5\,
      CO(1) => \g2_reg[10]_i_1_n_6\,
      CO(0) => \g2_reg[10]_i_1_n_7\,
      DI(7) => \g2[10]_i_2_n_0\,
      DI(6) => \g2[10]_i_3_n_0\,
      DI(5) => \g2[10]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(24),
      DI(3 downto 1) => s_axis_rgb_tdata(26 downto 24),
      DI(0) => '0',
      O(7 downto 0) => g20(10 downto 3),
      S(7) => \g2[10]_i_5_n_0\,
      S(6) => \g2[10]_i_6_n_0\,
      S(5) => \g2[10]_i_7_n_0\,
      S(4) => \g2[10]_i_8_n_0\,
      S(3) => \g2[10]_i_9_n_0\,
      S(2) => \g2[10]_i_10_n_0\,
      S(1) => \g2[10]_i_11_n_0\,
      S(0) => \g2[10]_i_12_n_0\
    );
\g2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(11),
      Q => g2(11),
      R => '0'
    );
\g2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(12),
      Q => g2(12),
      R => '0'
    );
\g2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(13),
      Q => g2(13),
      R => '0'
    );
\g2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(14),
      Q => g2(14),
      R => '0'
    );
\g2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(15),
      Q => g2(15),
      R => '0'
    );
\g2_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \g2_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_g2_reg[15]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => g20(15),
      CO(3) => \NLW_g2_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \g2_reg[15]_i_1_n_5\,
      CO(1) => \g2_reg[15]_i_1_n_6\,
      CO(0) => \g2_reg[15]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(29),
      DI(0) => \g2[15]_i_2_n_0\,
      O(7 downto 4) => \NLW_g2_reg[15]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => g20(14 downto 11),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(31 downto 30),
      S(1) => \g2[15]_i_3_n_0\,
      S(0) => \g2[15]_i_4_n_0\
    );
\g2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(24),
      Q => g2(1),
      R => '0'
    );
\g2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(2),
      Q => g2(2),
      R => '0'
    );
\g2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(3),
      Q => g2(3),
      R => '0'
    );
\g2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(4),
      Q => g2(4),
      R => '0'
    );
\g2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(5),
      Q => g2(5),
      R => '0'
    );
\g2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(6),
      Q => g2(6),
      R => '0'
    );
\g2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(7),
      Q => g2(7),
      R => '0'
    );
\g2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(8),
      Q => g2(8),
      R => '0'
    );
\g2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => g20(9),
      Q => g2(9),
      R => '0'
    );
\g3[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CE3CF30"
    )
        port map (
      I0 => s_axis_rgb_tdata(48),
      I1 => s_axis_rgb_tdata(50),
      I2 => s_axis_rgb_tdata(51),
      I3 => s_axis_rgb_tdata(52),
      I4 => s_axis_rgb_tdata(49),
      O => \g3[10]_i_10_n_0\
    );
\g3[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69B4"
    )
        port map (
      I0 => s_axis_rgb_tdata(49),
      I1 => s_axis_rgb_tdata(50),
      I2 => s_axis_rgb_tdata(51),
      I3 => s_axis_rgb_tdata(48),
      O => \g3[10]_i_11_n_0\
    );
\g3[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => s_axis_rgb_tdata(49),
      I1 => s_axis_rgb_tdata(50),
      I2 => s_axis_rgb_tdata(48),
      O => \g3[10]_i_12_n_0\
    );
\g3[10]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC88CC80"
    )
        port map (
      I0 => s_axis_rgb_tdata(53),
      I1 => s_axis_rgb_tdata(55),
      I2 => \g3[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(54),
      I4 => s_axis_rgb_tdata(52),
      O => \g3[10]_i_13_n_0\
    );
\g3[10]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E33CC7E"
    )
        port map (
      I0 => s_axis_rgb_tdata(52),
      I1 => s_axis_rgb_tdata(54),
      I2 => \g3[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(55),
      I4 => s_axis_rgb_tdata(53),
      O => \g3[10]_i_14_n_0\
    );
\g3[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => s_axis_rgb_tdata(55),
      I1 => s_axis_rgb_tdata(53),
      I2 => s_axis_rgb_tdata(52),
      I3 => s_axis_rgb_tdata(54),
      I4 => \g3[15]_i_5_n_0\,
      O => \g3[10]_i_15_n_0\
    );
\g3[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEEAAEFA2002208"
    )
        port map (
      I0 => s_axis_rgb_tdata(53),
      I1 => s_axis_rgb_tdata(55),
      I2 => \g3[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(54),
      I4 => s_axis_rgb_tdata(52),
      I5 => s_axis_rgb_tdata(50),
      O => \g3[10]_i_2_n_0\
    );
\g3[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD22D4BB40000"
    )
        port map (
      I0 => \g3[15]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(54),
      I2 => s_axis_rgb_tdata(53),
      I3 => s_axis_rgb_tdata(55),
      I4 => s_axis_rgb_tdata(52),
      I5 => s_axis_rgb_tdata(49),
      O => \g3[10]_i_3_n_0\
    );
\g3[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696696969"
    )
        port map (
      I0 => s_axis_rgb_tdata(49),
      I1 => s_axis_rgb_tdata(55),
      I2 => s_axis_rgb_tdata(53),
      I3 => s_axis_rgb_tdata(52),
      I4 => s_axis_rgb_tdata(54),
      I5 => \g3[15]_i_5_n_0\,
      O => \g3[10]_i_4_n_0\
    );
\g3[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \g3[10]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(51),
      I2 => \g3[10]_i_13_n_0\,
      I3 => s_axis_rgb_tdata(54),
      O => \g3[10]_i_5_n_0\
    );
\g3[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g3[10]_i_3_n_0\,
      I1 => s_axis_rgb_tdata(53),
      I2 => \g3[10]_i_14_n_0\,
      I3 => s_axis_rgb_tdata(50),
      O => \g3[10]_i_6_n_0\
    );
\g3[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696699996669969"
    )
        port map (
      I0 => \g3[10]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(49),
      I2 => s_axis_rgb_tdata(51),
      I3 => s_axis_rgb_tdata(54),
      I4 => s_axis_rgb_tdata(52),
      I5 => \g3[15]_i_5_n_0\,
      O => \g3[10]_i_7_n_0\
    );
\g3[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => s_axis_rgb_tdata(51),
      I1 => s_axis_rgb_tdata(54),
      I2 => s_axis_rgb_tdata(52),
      I3 => \g3[15]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(48),
      O => \g3[10]_i_8_n_0\
    );
\g3[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F0FC0FF07F0F80"
    )
        port map (
      I0 => s_axis_rgb_tdata(48),
      I1 => s_axis_rgb_tdata(49),
      I2 => s_axis_rgb_tdata(51),
      I3 => s_axis_rgb_tdata(52),
      I4 => s_axis_rgb_tdata(53),
      I5 => s_axis_rgb_tdata(50),
      O => \g3[10]_i_9_n_0\
    );
\g3[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA800FF000000"
    )
        port map (
      I0 => s_axis_rgb_tdata(53),
      I1 => \g3[15]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(52),
      I3 => s_axis_rgb_tdata(51),
      I4 => s_axis_rgb_tdata(54),
      I5 => s_axis_rgb_tdata(55),
      O => \g3[15]_i_2_n_0\
    );
\g3[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_rgb_tdata(55),
      I1 => s_axis_rgb_tdata(52),
      I2 => s_axis_rgb_tdata(53),
      O => \g3[15]_i_3_n_0\
    );
\g3[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAA777715558888"
    )
        port map (
      I0 => s_axis_rgb_tdata(54),
      I1 => s_axis_rgb_tdata(51),
      I2 => \g3[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(53),
      I4 => s_axis_rgb_tdata(55),
      I5 => s_axis_rgb_tdata(52),
      O => \g3[15]_i_4_n_0\
    );
\g3[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F800FFC0FFFF"
    )
        port map (
      I0 => s_axis_rgb_tdata(48),
      I1 => s_axis_rgb_tdata(49),
      I2 => s_axis_rgb_tdata(50),
      I3 => s_axis_rgb_tdata(51),
      I4 => s_axis_rgb_tdata(52),
      I5 => s_axis_rgb_tdata(53),
      O => \g3[15]_i_5_n_0\
    );
\g3[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(48),
      I1 => s_axis_rgb_tdata(49),
      O => g30(2)
    );
\g3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(10),
      Q => g3(10),
      R => '0'
    );
\g3_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \g3_reg[10]_i_1_n_0\,
      CO(6) => \g3_reg[10]_i_1_n_1\,
      CO(5) => \g3_reg[10]_i_1_n_2\,
      CO(4) => \g3_reg[10]_i_1_n_3\,
      CO(3) => \g3_reg[10]_i_1_n_4\,
      CO(2) => \g3_reg[10]_i_1_n_5\,
      CO(1) => \g3_reg[10]_i_1_n_6\,
      CO(0) => \g3_reg[10]_i_1_n_7\,
      DI(7) => \g3[10]_i_2_n_0\,
      DI(6) => \g3[10]_i_3_n_0\,
      DI(5) => \g3[10]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(48),
      DI(3 downto 1) => s_axis_rgb_tdata(50 downto 48),
      DI(0) => '0',
      O(7 downto 0) => g30(10 downto 3),
      S(7) => \g3[10]_i_5_n_0\,
      S(6) => \g3[10]_i_6_n_0\,
      S(5) => \g3[10]_i_7_n_0\,
      S(4) => \g3[10]_i_8_n_0\,
      S(3) => \g3[10]_i_9_n_0\,
      S(2) => \g3[10]_i_10_n_0\,
      S(1) => \g3[10]_i_11_n_0\,
      S(0) => \g3[10]_i_12_n_0\
    );
\g3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(11),
      Q => g3(11),
      R => '0'
    );
\g3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(12),
      Q => g3(12),
      R => '0'
    );
\g3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(13),
      Q => g3(13),
      R => '0'
    );
\g3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(14),
      Q => g3(14),
      R => '0'
    );
\g3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(15),
      Q => g3(15),
      R => '0'
    );
\g3_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \g3_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_g3_reg[15]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => g30(15),
      CO(3) => \NLW_g3_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \g3_reg[15]_i_1_n_5\,
      CO(1) => \g3_reg[15]_i_1_n_6\,
      CO(0) => \g3_reg[15]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(53),
      DI(0) => \g3[15]_i_2_n_0\,
      O(7 downto 4) => \NLW_g3_reg[15]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => g30(14 downto 11),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(55 downto 54),
      S(1) => \g3[15]_i_3_n_0\,
      S(0) => \g3[15]_i_4_n_0\
    );
\g3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(48),
      Q => g3(1),
      R => '0'
    );
\g3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(2),
      Q => g3(2),
      R => '0'
    );
\g3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(3),
      Q => g3(3),
      R => '0'
    );
\g3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(4),
      Q => g3(4),
      R => '0'
    );
\g3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(5),
      Q => g3(5),
      R => '0'
    );
\g3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(6),
      Q => g3(6),
      R => '0'
    );
\g3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(7),
      Q => g3(7),
      R => '0'
    );
\g3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(8),
      Q => g3(8),
      R => '0'
    );
\g3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g30(9),
      Q => g3(9),
      R => '0'
    );
\g4[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CE3CF30"
    )
        port map (
      I0 => s_axis_rgb_tdata(72),
      I1 => s_axis_rgb_tdata(74),
      I2 => s_axis_rgb_tdata(75),
      I3 => s_axis_rgb_tdata(76),
      I4 => s_axis_rgb_tdata(73),
      O => \g4[10]_i_10_n_0\
    );
\g4[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69B4"
    )
        port map (
      I0 => s_axis_rgb_tdata(73),
      I1 => s_axis_rgb_tdata(74),
      I2 => s_axis_rgb_tdata(75),
      I3 => s_axis_rgb_tdata(72),
      O => \g4[10]_i_11_n_0\
    );
\g4[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => s_axis_rgb_tdata(73),
      I1 => s_axis_rgb_tdata(74),
      I2 => s_axis_rgb_tdata(72),
      O => \g4[10]_i_12_n_0\
    );
\g4[10]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC88CC80"
    )
        port map (
      I0 => s_axis_rgb_tdata(77),
      I1 => s_axis_rgb_tdata(79),
      I2 => \g4[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(78),
      I4 => s_axis_rgb_tdata(76),
      O => \g4[10]_i_13_n_0\
    );
\g4[10]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E33CC7E"
    )
        port map (
      I0 => s_axis_rgb_tdata(76),
      I1 => s_axis_rgb_tdata(78),
      I2 => \g4[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(79),
      I4 => s_axis_rgb_tdata(77),
      O => \g4[10]_i_14_n_0\
    );
\g4[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => s_axis_rgb_tdata(79),
      I1 => s_axis_rgb_tdata(77),
      I2 => s_axis_rgb_tdata(76),
      I3 => s_axis_rgb_tdata(78),
      I4 => \g4[15]_i_5_n_0\,
      O => \g4[10]_i_15_n_0\
    );
\g4[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEEAAEFA2002208"
    )
        port map (
      I0 => s_axis_rgb_tdata(77),
      I1 => s_axis_rgb_tdata(79),
      I2 => \g4[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(78),
      I4 => s_axis_rgb_tdata(76),
      I5 => s_axis_rgb_tdata(74),
      O => \g4[10]_i_2_n_0\
    );
\g4[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD22D4BB40000"
    )
        port map (
      I0 => \g4[15]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(78),
      I2 => s_axis_rgb_tdata(77),
      I3 => s_axis_rgb_tdata(79),
      I4 => s_axis_rgb_tdata(76),
      I5 => s_axis_rgb_tdata(73),
      O => \g4[10]_i_3_n_0\
    );
\g4[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696696969"
    )
        port map (
      I0 => s_axis_rgb_tdata(73),
      I1 => s_axis_rgb_tdata(79),
      I2 => s_axis_rgb_tdata(77),
      I3 => s_axis_rgb_tdata(76),
      I4 => s_axis_rgb_tdata(78),
      I5 => \g4[15]_i_5_n_0\,
      O => \g4[10]_i_4_n_0\
    );
\g4[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \g4[10]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(75),
      I2 => \g4[10]_i_13_n_0\,
      I3 => s_axis_rgb_tdata(78),
      O => \g4[10]_i_5_n_0\
    );
\g4[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g4[10]_i_3_n_0\,
      I1 => s_axis_rgb_tdata(77),
      I2 => \g4[10]_i_14_n_0\,
      I3 => s_axis_rgb_tdata(74),
      O => \g4[10]_i_6_n_0\
    );
\g4[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696699996669969"
    )
        port map (
      I0 => \g4[10]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(73),
      I2 => s_axis_rgb_tdata(75),
      I3 => s_axis_rgb_tdata(78),
      I4 => s_axis_rgb_tdata(76),
      I5 => \g4[15]_i_5_n_0\,
      O => \g4[10]_i_7_n_0\
    );
\g4[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => s_axis_rgb_tdata(75),
      I1 => s_axis_rgb_tdata(78),
      I2 => s_axis_rgb_tdata(76),
      I3 => \g4[15]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(72),
      O => \g4[10]_i_8_n_0\
    );
\g4[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F0FC0FF07F0F80"
    )
        port map (
      I0 => s_axis_rgb_tdata(72),
      I1 => s_axis_rgb_tdata(73),
      I2 => s_axis_rgb_tdata(75),
      I3 => s_axis_rgb_tdata(76),
      I4 => s_axis_rgb_tdata(77),
      I5 => s_axis_rgb_tdata(74),
      O => \g4[10]_i_9_n_0\
    );
\g4[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA800FF000000"
    )
        port map (
      I0 => s_axis_rgb_tdata(77),
      I1 => \g4[15]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(76),
      I3 => s_axis_rgb_tdata(75),
      I4 => s_axis_rgb_tdata(78),
      I5 => s_axis_rgb_tdata(79),
      O => \g4[15]_i_2_n_0\
    );
\g4[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_rgb_tdata(79),
      I1 => s_axis_rgb_tdata(76),
      I2 => s_axis_rgb_tdata(77),
      O => \g4[15]_i_3_n_0\
    );
\g4[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAA777715558888"
    )
        port map (
      I0 => s_axis_rgb_tdata(78),
      I1 => s_axis_rgb_tdata(75),
      I2 => \g4[15]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(77),
      I4 => s_axis_rgb_tdata(79),
      I5 => s_axis_rgb_tdata(76),
      O => \g4[15]_i_4_n_0\
    );
\g4[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F800FFC0FFFF"
    )
        port map (
      I0 => s_axis_rgb_tdata(72),
      I1 => s_axis_rgb_tdata(73),
      I2 => s_axis_rgb_tdata(74),
      I3 => s_axis_rgb_tdata(75),
      I4 => s_axis_rgb_tdata(76),
      I5 => s_axis_rgb_tdata(77),
      O => \g4[15]_i_5_n_0\
    );
\g4[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(72),
      I1 => s_axis_rgb_tdata(73),
      O => g40(2)
    );
\g4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(10),
      Q => g4(10),
      R => '0'
    );
\g4_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \g4_reg[10]_i_1_n_0\,
      CO(6) => \g4_reg[10]_i_1_n_1\,
      CO(5) => \g4_reg[10]_i_1_n_2\,
      CO(4) => \g4_reg[10]_i_1_n_3\,
      CO(3) => \g4_reg[10]_i_1_n_4\,
      CO(2) => \g4_reg[10]_i_1_n_5\,
      CO(1) => \g4_reg[10]_i_1_n_6\,
      CO(0) => \g4_reg[10]_i_1_n_7\,
      DI(7) => \g4[10]_i_2_n_0\,
      DI(6) => \g4[10]_i_3_n_0\,
      DI(5) => \g4[10]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(72),
      DI(3 downto 1) => s_axis_rgb_tdata(74 downto 72),
      DI(0) => '0',
      O(7 downto 0) => g40(10 downto 3),
      S(7) => \g4[10]_i_5_n_0\,
      S(6) => \g4[10]_i_6_n_0\,
      S(5) => \g4[10]_i_7_n_0\,
      S(4) => \g4[10]_i_8_n_0\,
      S(3) => \g4[10]_i_9_n_0\,
      S(2) => \g4[10]_i_10_n_0\,
      S(1) => \g4[10]_i_11_n_0\,
      S(0) => \g4[10]_i_12_n_0\
    );
\g4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(11),
      Q => g4(11),
      R => '0'
    );
\g4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(12),
      Q => g4(12),
      R => '0'
    );
\g4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(13),
      Q => g4(13),
      R => '0'
    );
\g4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(14),
      Q => g4(14),
      R => '0'
    );
\g4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(15),
      Q => g4(15),
      R => '0'
    );
\g4_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \g4_reg[10]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_g4_reg[15]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => g40(15),
      CO(3) => \NLW_g4_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \g4_reg[15]_i_1_n_5\,
      CO(1) => \g4_reg[15]_i_1_n_6\,
      CO(0) => \g4_reg[15]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(77),
      DI(0) => \g4[15]_i_2_n_0\,
      O(7 downto 4) => \NLW_g4_reg[15]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => g40(14 downto 11),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(79 downto 78),
      S(1) => \g4[15]_i_3_n_0\,
      S(0) => \g4[15]_i_4_n_0\
    );
\g4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(72),
      Q => g4(1),
      R => '0'
    );
\g4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(2),
      Q => g4(2),
      R => '0'
    );
\g4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(3),
      Q => g4(3),
      R => '0'
    );
\g4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(4),
      Q => g4(4),
      R => '0'
    );
\g4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(5),
      Q => g4(5),
      R => '0'
    );
\g4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(6),
      Q => g4(6),
      R => '0'
    );
\g4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(7),
      Q => g4(7),
      R => '0'
    );
\g4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(8),
      Q => g4(8),
      R => '0'
    );
\g4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => g40(9),
      Q => g4(9),
      R => '0'
    );
\m_axis_gray_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(8),
      I1 => sum1(16),
      O => m_axis_gray_tdata(0)
    );
\m_axis_gray_tdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(10),
      I1 => sum2(16),
      O => m_axis_gray_tdata(10)
    );
\m_axis_gray_tdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(11),
      I1 => sum2(16),
      O => m_axis_gray_tdata(11)
    );
\m_axis_gray_tdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(12),
      I1 => sum2(16),
      O => m_axis_gray_tdata(12)
    );
\m_axis_gray_tdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(13),
      I1 => sum2(16),
      O => m_axis_gray_tdata(13)
    );
\m_axis_gray_tdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(14),
      I1 => sum2(16),
      O => m_axis_gray_tdata(14)
    );
\m_axis_gray_tdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(15),
      I1 => sum2(16),
      O => m_axis_gray_tdata(15)
    );
\m_axis_gray_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(8),
      I1 => sum3(16),
      O => m_axis_gray_tdata(16)
    );
\m_axis_gray_tdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(9),
      I1 => sum3(16),
      O => m_axis_gray_tdata(17)
    );
\m_axis_gray_tdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(10),
      I1 => sum3(16),
      O => m_axis_gray_tdata(18)
    );
\m_axis_gray_tdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(11),
      I1 => sum3(16),
      O => m_axis_gray_tdata(19)
    );
\m_axis_gray_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(9),
      I1 => sum1(16),
      O => m_axis_gray_tdata(1)
    );
\m_axis_gray_tdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(12),
      I1 => sum3(16),
      O => m_axis_gray_tdata(20)
    );
\m_axis_gray_tdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(13),
      I1 => sum3(16),
      O => m_axis_gray_tdata(21)
    );
\m_axis_gray_tdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(14),
      I1 => sum3(16),
      O => m_axis_gray_tdata(22)
    );
\m_axis_gray_tdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum3(15),
      I1 => sum3(16),
      O => m_axis_gray_tdata(23)
    );
\m_axis_gray_tdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(8),
      I1 => sum4(16),
      O => m_axis_gray_tdata(24)
    );
\m_axis_gray_tdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(9),
      I1 => sum4(16),
      O => m_axis_gray_tdata(25)
    );
\m_axis_gray_tdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(10),
      I1 => sum4(16),
      O => m_axis_gray_tdata(26)
    );
\m_axis_gray_tdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(11),
      I1 => sum4(16),
      O => m_axis_gray_tdata(27)
    );
\m_axis_gray_tdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(12),
      I1 => sum4(16),
      O => m_axis_gray_tdata(28)
    );
\m_axis_gray_tdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(13),
      I1 => sum4(16),
      O => m_axis_gray_tdata(29)
    );
\m_axis_gray_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(10),
      I1 => sum1(16),
      O => m_axis_gray_tdata(2)
    );
\m_axis_gray_tdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(14),
      I1 => sum4(16),
      O => m_axis_gray_tdata(30)
    );
\m_axis_gray_tdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum4(15),
      I1 => sum4(16),
      O => m_axis_gray_tdata(31)
    );
\m_axis_gray_tdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(11),
      I1 => sum1(16),
      O => m_axis_gray_tdata(3)
    );
\m_axis_gray_tdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(12),
      I1 => sum1(16),
      O => m_axis_gray_tdata(4)
    );
\m_axis_gray_tdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(13),
      I1 => sum1(16),
      O => m_axis_gray_tdata(5)
    );
\m_axis_gray_tdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(14),
      I1 => sum1(16),
      O => m_axis_gray_tdata(6)
    );
\m_axis_gray_tdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum1(15),
      I1 => sum1(16),
      O => m_axis_gray_tdata(7)
    );
\m_axis_gray_tdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(8),
      I1 => sum2(16),
      O => m_axis_gray_tdata(8)
    );
\m_axis_gray_tdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum2(9),
      I1 => sum2(16),
      O => m_axis_gray_tdata(9)
    );
\r1[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFA50400020"
    )
        port map (
      I0 => s_axis_rgb_tdata(23),
      I1 => s_axis_rgb_tdata(20),
      I2 => s_axis_rgb_tdata(22),
      I3 => \r1[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(21),
      I5 => s_axis_rgb_tdata(19),
      O => \r1[14]_i_2_n_0\
    );
\r1[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555FAA80"
    )
        port map (
      I0 => s_axis_rgb_tdata(23),
      I1 => \r1[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(22),
      I3 => s_axis_rgb_tdata(20),
      I4 => s_axis_rgb_tdata(21),
      O => \r1[14]_i_3_n_0\
    );
\r1[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969695966666666"
    )
        port map (
      I0 => \r1[14]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(20),
      I2 => s_axis_rgb_tdata(22),
      I3 => \r1[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(21),
      I5 => s_axis_rgb_tdata(23),
      O => \r1[14]_i_4_n_0\
    );
\r1[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(19),
      I1 => s_axis_rgb_tdata(21),
      I2 => s_axis_rgb_tdata(17),
      I3 => s_axis_rgb_tdata(16),
      I4 => s_axis_rgb_tdata(20),
      I5 => s_axis_rgb_tdata(18),
      O => \r1[14]_i_5_n_0\
    );
\r1[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6569A666"
    )
        port map (
      I0 => s_axis_rgb_tdata(20),
      I1 => s_axis_rgb_tdata(18),
      I2 => s_axis_rgb_tdata(19),
      I3 => s_axis_rgb_tdata(16),
      I4 => s_axis_rgb_tdata(17),
      O => \r1[9]_i_10_n_0\
    );
\r1[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => s_axis_rgb_tdata(19),
      I1 => s_axis_rgb_tdata(17),
      I2 => s_axis_rgb_tdata(18),
      I3 => s_axis_rgb_tdata(16),
      O => \r1[9]_i_11_n_0\
    );
\r1[9]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(18),
      I1 => s_axis_rgb_tdata(16),
      O => \r1[9]_i_12_n_0\
    );
\r1[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1FA080"
    )
        port map (
      I0 => s_axis_rgb_tdata(21),
      I1 => \r1[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(22),
      I3 => s_axis_rgb_tdata(20),
      I4 => s_axis_rgb_tdata(23),
      O => \r1[9]_i_13_n_0\
    );
\r1[9]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(20),
      I1 => \r1[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(23),
      I3 => s_axis_rgb_tdata(21),
      I4 => s_axis_rgb_tdata(22),
      O => \r1[9]_i_14_n_0\
    );
\r1[9]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \r1[14]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(22),
      I2 => s_axis_rgb_tdata(20),
      I3 => s_axis_rgb_tdata(21),
      I4 => s_axis_rgb_tdata(23),
      O => \r1[9]_i_15_n_0\
    );
\r1[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DECECEEE44404048"
    )
        port map (
      I0 => s_axis_rgb_tdata(22),
      I1 => s_axis_rgb_tdata(21),
      I2 => s_axis_rgb_tdata(23),
      I3 => \r1[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(20),
      I5 => s_axis_rgb_tdata(18),
      O => \r1[9]_i_2_n_0\
    );
\r1[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F6F6F690909060"
    )
        port map (
      I0 => s_axis_rgb_tdata(23),
      I1 => s_axis_rgb_tdata(21),
      I2 => s_axis_rgb_tdata(20),
      I3 => s_axis_rgb_tdata(22),
      I4 => \r1[14]_i_5_n_0\,
      I5 => s_axis_rgb_tdata(17),
      O => \r1[9]_i_3_n_0\
    );
\r1[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA6655965599AA6"
    )
        port map (
      I0 => s_axis_rgb_tdata(17),
      I1 => s_axis_rgb_tdata(20),
      I2 => \r1[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(22),
      I4 => s_axis_rgb_tdata(21),
      I5 => s_axis_rgb_tdata(23),
      O => \r1[9]_i_4_n_0\
    );
\r1[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r1[9]_i_2_n_0\,
      I1 => \r1[9]_i_13_n_0\,
      I2 => s_axis_rgb_tdata(22),
      I3 => s_axis_rgb_tdata(19),
      O => \r1[9]_i_5_n_0\
    );
\r1[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r1[9]_i_3_n_0\,
      I1 => \r1[9]_i_14_n_0\,
      I2 => s_axis_rgb_tdata(21),
      I3 => s_axis_rgb_tdata(18),
      O => \r1[9]_i_6_n_0\
    );
\r1[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969969699669966"
    )
        port map (
      I0 => \r1[9]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(17),
      I2 => \r1[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(20),
      I4 => s_axis_rgb_tdata(22),
      I5 => s_axis_rgb_tdata(19),
      O => \r1[9]_i_7_n_0\
    );
\r1[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => s_axis_rgb_tdata(19),
      I1 => \r1[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(20),
      I3 => s_axis_rgb_tdata(22),
      I4 => s_axis_rgb_tdata(16),
      O => \r1[9]_i_8_n_0\
    );
\r1[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66656569A6A66666"
    )
        port map (
      I0 => s_axis_rgb_tdata(21),
      I1 => s_axis_rgb_tdata(19),
      I2 => s_axis_rgb_tdata(20),
      I3 => s_axis_rgb_tdata(16),
      I4 => s_axis_rgb_tdata(17),
      I5 => s_axis_rgb_tdata(18),
      O => \r1[9]_i_9_n_0\
    );
\r1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(16),
      Q => r1(0),
      R => '0'
    );
\r1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(10),
      Q => r1(10),
      R => '0'
    );
\r1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(11),
      Q => r1(11),
      R => '0'
    );
\r1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(12),
      Q => r1(12),
      R => '0'
    );
\r1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(13),
      Q => r1(13),
      R => '0'
    );
\r1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(14),
      Q => r1(14),
      R => '0'
    );
\r1_reg[14]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \r1_reg[9]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_r1_reg[14]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => r10(14),
      CO(3) => \NLW_r1_reg[14]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r1_reg[14]_i_1_n_5\,
      CO(1) => \r1_reg[14]_i_1_n_6\,
      CO(0) => \r1_reg[14]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(21),
      DI(0) => \r1[14]_i_2_n_0\,
      O(7 downto 4) => \NLW_r1_reg[14]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => r10(13 downto 10),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(23 downto 22),
      S(1) => \r1[14]_i_3_n_0\,
      S(0) => \r1[14]_i_4_n_0\
    );
\r1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(17),
      Q => r1(1),
      R => '0'
    );
\r1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(2),
      Q => r1(2),
      R => '0'
    );
\r1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(3),
      Q => r1(3),
      R => '0'
    );
\r1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(4),
      Q => r1(4),
      R => '0'
    );
\r1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(5),
      Q => r1(5),
      R => '0'
    );
\r1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(6),
      Q => r1(6),
      R => '0'
    );
\r1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(7),
      Q => r1(7),
      R => '0'
    );
\r1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(8),
      Q => r1(8),
      R => '0'
    );
\r1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r10(9),
      Q => r1(9),
      R => '0'
    );
\r1_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \r1_reg[9]_i_1_n_0\,
      CO(6) => \r1_reg[9]_i_1_n_1\,
      CO(5) => \r1_reg[9]_i_1_n_2\,
      CO(4) => \r1_reg[9]_i_1_n_3\,
      CO(3) => \r1_reg[9]_i_1_n_4\,
      CO(2) => \r1_reg[9]_i_1_n_5\,
      CO(1) => \r1_reg[9]_i_1_n_6\,
      CO(0) => \r1_reg[9]_i_1_n_7\,
      DI(7) => \r1[9]_i_2_n_0\,
      DI(6) => \r1[9]_i_3_n_0\,
      DI(5) => \r1[9]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(16),
      DI(3 downto 1) => s_axis_rgb_tdata(18 downto 16),
      DI(0) => '0',
      O(7 downto 0) => r10(9 downto 2),
      S(7) => \r1[9]_i_5_n_0\,
      S(6) => \r1[9]_i_6_n_0\,
      S(5) => \r1[9]_i_7_n_0\,
      S(4) => \r1[9]_i_8_n_0\,
      S(3) => \r1[9]_i_9_n_0\,
      S(2) => \r1[9]_i_10_n_0\,
      S(1) => \r1[9]_i_11_n_0\,
      S(0) => \r1[9]_i_12_n_0\
    );
\r2[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFA50400020"
    )
        port map (
      I0 => s_axis_rgb_tdata(47),
      I1 => s_axis_rgb_tdata(44),
      I2 => s_axis_rgb_tdata(46),
      I3 => \r2[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(45),
      I5 => s_axis_rgb_tdata(43),
      O => \r2[14]_i_2_n_0\
    );
\r2[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555FAA80"
    )
        port map (
      I0 => s_axis_rgb_tdata(47),
      I1 => \r2[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(46),
      I3 => s_axis_rgb_tdata(44),
      I4 => s_axis_rgb_tdata(45),
      O => \r2[14]_i_3_n_0\
    );
\r2[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969695966666666"
    )
        port map (
      I0 => \r2[14]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(44),
      I2 => s_axis_rgb_tdata(46),
      I3 => \r2[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(45),
      I5 => s_axis_rgb_tdata(47),
      O => \r2[14]_i_4_n_0\
    );
\r2[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(43),
      I1 => s_axis_rgb_tdata(45),
      I2 => s_axis_rgb_tdata(41),
      I3 => s_axis_rgb_tdata(40),
      I4 => s_axis_rgb_tdata(44),
      I5 => s_axis_rgb_tdata(42),
      O => \r2[14]_i_5_n_0\
    );
\r2[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6569A666"
    )
        port map (
      I0 => s_axis_rgb_tdata(44),
      I1 => s_axis_rgb_tdata(42),
      I2 => s_axis_rgb_tdata(43),
      I3 => s_axis_rgb_tdata(40),
      I4 => s_axis_rgb_tdata(41),
      O => \r2[9]_i_10_n_0\
    );
\r2[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => s_axis_rgb_tdata(43),
      I1 => s_axis_rgb_tdata(41),
      I2 => s_axis_rgb_tdata(42),
      I3 => s_axis_rgb_tdata(40),
      O => \r2[9]_i_11_n_0\
    );
\r2[9]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(42),
      I1 => s_axis_rgb_tdata(40),
      O => \r2[9]_i_12_n_0\
    );
\r2[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1FA080"
    )
        port map (
      I0 => s_axis_rgb_tdata(45),
      I1 => \r2[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(46),
      I3 => s_axis_rgb_tdata(44),
      I4 => s_axis_rgb_tdata(47),
      O => \r2[9]_i_13_n_0\
    );
\r2[9]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(44),
      I1 => \r2[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(47),
      I3 => s_axis_rgb_tdata(45),
      I4 => s_axis_rgb_tdata(46),
      O => \r2[9]_i_14_n_0\
    );
\r2[9]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \r2[14]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(46),
      I2 => s_axis_rgb_tdata(44),
      I3 => s_axis_rgb_tdata(45),
      I4 => s_axis_rgb_tdata(47),
      O => \r2[9]_i_15_n_0\
    );
\r2[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DECECEEE44404048"
    )
        port map (
      I0 => s_axis_rgb_tdata(46),
      I1 => s_axis_rgb_tdata(45),
      I2 => s_axis_rgb_tdata(47),
      I3 => \r2[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(44),
      I5 => s_axis_rgb_tdata(42),
      O => \r2[9]_i_2_n_0\
    );
\r2[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F6F6F690909060"
    )
        port map (
      I0 => s_axis_rgb_tdata(47),
      I1 => s_axis_rgb_tdata(45),
      I2 => s_axis_rgb_tdata(44),
      I3 => s_axis_rgb_tdata(46),
      I4 => \r2[14]_i_5_n_0\,
      I5 => s_axis_rgb_tdata(41),
      O => \r2[9]_i_3_n_0\
    );
\r2[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA6655965599AA6"
    )
        port map (
      I0 => s_axis_rgb_tdata(41),
      I1 => s_axis_rgb_tdata(44),
      I2 => \r2[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(46),
      I4 => s_axis_rgb_tdata(45),
      I5 => s_axis_rgb_tdata(47),
      O => \r2[9]_i_4_n_0\
    );
\r2[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r2[9]_i_2_n_0\,
      I1 => \r2[9]_i_13_n_0\,
      I2 => s_axis_rgb_tdata(46),
      I3 => s_axis_rgb_tdata(43),
      O => \r2[9]_i_5_n_0\
    );
\r2[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r2[9]_i_3_n_0\,
      I1 => \r2[9]_i_14_n_0\,
      I2 => s_axis_rgb_tdata(45),
      I3 => s_axis_rgb_tdata(42),
      O => \r2[9]_i_6_n_0\
    );
\r2[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969969699669966"
    )
        port map (
      I0 => \r2[9]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(41),
      I2 => \r2[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(44),
      I4 => s_axis_rgb_tdata(46),
      I5 => s_axis_rgb_tdata(43),
      O => \r2[9]_i_7_n_0\
    );
\r2[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => s_axis_rgb_tdata(43),
      I1 => \r2[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(44),
      I3 => s_axis_rgb_tdata(46),
      I4 => s_axis_rgb_tdata(40),
      O => \r2[9]_i_8_n_0\
    );
\r2[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66656569A6A66666"
    )
        port map (
      I0 => s_axis_rgb_tdata(45),
      I1 => s_axis_rgb_tdata(43),
      I2 => s_axis_rgb_tdata(44),
      I3 => s_axis_rgb_tdata(40),
      I4 => s_axis_rgb_tdata(41),
      I5 => s_axis_rgb_tdata(42),
      O => \r2[9]_i_9_n_0\
    );
\r2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(40),
      Q => r2(0),
      R => '0'
    );
\r2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(10),
      Q => r2(10),
      R => '0'
    );
\r2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(11),
      Q => r2(11),
      R => '0'
    );
\r2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(12),
      Q => r2(12),
      R => '0'
    );
\r2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(13),
      Q => r2(13),
      R => '0'
    );
\r2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(14),
      Q => r2(14),
      R => '0'
    );
\r2_reg[14]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \r2_reg[9]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_r2_reg[14]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => r20(14),
      CO(3) => \NLW_r2_reg[14]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r2_reg[14]_i_1_n_5\,
      CO(1) => \r2_reg[14]_i_1_n_6\,
      CO(0) => \r2_reg[14]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(45),
      DI(0) => \r2[14]_i_2_n_0\,
      O(7 downto 4) => \NLW_r2_reg[14]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => r20(13 downto 10),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(47 downto 46),
      S(1) => \r2[14]_i_3_n_0\,
      S(0) => \r2[14]_i_4_n_0\
    );
\r2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(41),
      Q => r2(1),
      R => '0'
    );
\r2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(2),
      Q => r2(2),
      R => '0'
    );
\r2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(3),
      Q => r2(3),
      R => '0'
    );
\r2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(4),
      Q => r2(4),
      R => '0'
    );
\r2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(5),
      Q => r2(5),
      R => '0'
    );
\r2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(6),
      Q => r2(6),
      R => '0'
    );
\r2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(7),
      Q => r2(7),
      R => '0'
    );
\r2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(8),
      Q => r2(8),
      R => '0'
    );
\r2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r20(9),
      Q => r2(9),
      R => '0'
    );
\r2_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \r2_reg[9]_i_1_n_0\,
      CO(6) => \r2_reg[9]_i_1_n_1\,
      CO(5) => \r2_reg[9]_i_1_n_2\,
      CO(4) => \r2_reg[9]_i_1_n_3\,
      CO(3) => \r2_reg[9]_i_1_n_4\,
      CO(2) => \r2_reg[9]_i_1_n_5\,
      CO(1) => \r2_reg[9]_i_1_n_6\,
      CO(0) => \r2_reg[9]_i_1_n_7\,
      DI(7) => \r2[9]_i_2_n_0\,
      DI(6) => \r2[9]_i_3_n_0\,
      DI(5) => \r2[9]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(40),
      DI(3 downto 1) => s_axis_rgb_tdata(42 downto 40),
      DI(0) => '0',
      O(7 downto 0) => r20(9 downto 2),
      S(7) => \r2[9]_i_5_n_0\,
      S(6) => \r2[9]_i_6_n_0\,
      S(5) => \r2[9]_i_7_n_0\,
      S(4) => \r2[9]_i_8_n_0\,
      S(3) => \r2[9]_i_9_n_0\,
      S(2) => \r2[9]_i_10_n_0\,
      S(1) => \r2[9]_i_11_n_0\,
      S(0) => \r2[9]_i_12_n_0\
    );
\r3[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFA50400020"
    )
        port map (
      I0 => s_axis_rgb_tdata(71),
      I1 => s_axis_rgb_tdata(68),
      I2 => s_axis_rgb_tdata(70),
      I3 => \r3[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(69),
      I5 => s_axis_rgb_tdata(67),
      O => \r3[14]_i_2_n_0\
    );
\r3[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555FAA80"
    )
        port map (
      I0 => s_axis_rgb_tdata(71),
      I1 => \r3[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(70),
      I3 => s_axis_rgb_tdata(68),
      I4 => s_axis_rgb_tdata(69),
      O => \r3[14]_i_3_n_0\
    );
\r3[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969695966666666"
    )
        port map (
      I0 => \r3[14]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(68),
      I2 => s_axis_rgb_tdata(70),
      I3 => \r3[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(69),
      I5 => s_axis_rgb_tdata(71),
      O => \r3[14]_i_4_n_0\
    );
\r3[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(67),
      I1 => s_axis_rgb_tdata(69),
      I2 => s_axis_rgb_tdata(65),
      I3 => s_axis_rgb_tdata(64),
      I4 => s_axis_rgb_tdata(68),
      I5 => s_axis_rgb_tdata(66),
      O => \r3[14]_i_5_n_0\
    );
\r3[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6569A666"
    )
        port map (
      I0 => s_axis_rgb_tdata(68),
      I1 => s_axis_rgb_tdata(66),
      I2 => s_axis_rgb_tdata(67),
      I3 => s_axis_rgb_tdata(64),
      I4 => s_axis_rgb_tdata(65),
      O => \r3[9]_i_10_n_0\
    );
\r3[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => s_axis_rgb_tdata(67),
      I1 => s_axis_rgb_tdata(65),
      I2 => s_axis_rgb_tdata(66),
      I3 => s_axis_rgb_tdata(64),
      O => \r3[9]_i_11_n_0\
    );
\r3[9]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(66),
      I1 => s_axis_rgb_tdata(64),
      O => \r3[9]_i_12_n_0\
    );
\r3[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1FA080"
    )
        port map (
      I0 => s_axis_rgb_tdata(69),
      I1 => \r3[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(70),
      I3 => s_axis_rgb_tdata(68),
      I4 => s_axis_rgb_tdata(71),
      O => \r3[9]_i_13_n_0\
    );
\r3[9]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(68),
      I1 => \r3[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(71),
      I3 => s_axis_rgb_tdata(69),
      I4 => s_axis_rgb_tdata(70),
      O => \r3[9]_i_14_n_0\
    );
\r3[9]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \r3[14]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(70),
      I2 => s_axis_rgb_tdata(68),
      I3 => s_axis_rgb_tdata(69),
      I4 => s_axis_rgb_tdata(71),
      O => \r3[9]_i_15_n_0\
    );
\r3[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DECECEEE44404048"
    )
        port map (
      I0 => s_axis_rgb_tdata(70),
      I1 => s_axis_rgb_tdata(69),
      I2 => s_axis_rgb_tdata(71),
      I3 => \r3[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(68),
      I5 => s_axis_rgb_tdata(66),
      O => \r3[9]_i_2_n_0\
    );
\r3[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F6F6F690909060"
    )
        port map (
      I0 => s_axis_rgb_tdata(71),
      I1 => s_axis_rgb_tdata(69),
      I2 => s_axis_rgb_tdata(68),
      I3 => s_axis_rgb_tdata(70),
      I4 => \r3[14]_i_5_n_0\,
      I5 => s_axis_rgb_tdata(65),
      O => \r3[9]_i_3_n_0\
    );
\r3[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA6655965599AA6"
    )
        port map (
      I0 => s_axis_rgb_tdata(65),
      I1 => s_axis_rgb_tdata(68),
      I2 => \r3[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(70),
      I4 => s_axis_rgb_tdata(69),
      I5 => s_axis_rgb_tdata(71),
      O => \r3[9]_i_4_n_0\
    );
\r3[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r3[9]_i_2_n_0\,
      I1 => \r3[9]_i_13_n_0\,
      I2 => s_axis_rgb_tdata(70),
      I3 => s_axis_rgb_tdata(67),
      O => \r3[9]_i_5_n_0\
    );
\r3[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r3[9]_i_3_n_0\,
      I1 => \r3[9]_i_14_n_0\,
      I2 => s_axis_rgb_tdata(69),
      I3 => s_axis_rgb_tdata(66),
      O => \r3[9]_i_6_n_0\
    );
\r3[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969969699669966"
    )
        port map (
      I0 => \r3[9]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(65),
      I2 => \r3[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(68),
      I4 => s_axis_rgb_tdata(70),
      I5 => s_axis_rgb_tdata(67),
      O => \r3[9]_i_7_n_0\
    );
\r3[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => s_axis_rgb_tdata(67),
      I1 => \r3[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(68),
      I3 => s_axis_rgb_tdata(70),
      I4 => s_axis_rgb_tdata(64),
      O => \r3[9]_i_8_n_0\
    );
\r3[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66656569A6A66666"
    )
        port map (
      I0 => s_axis_rgb_tdata(69),
      I1 => s_axis_rgb_tdata(67),
      I2 => s_axis_rgb_tdata(68),
      I3 => s_axis_rgb_tdata(64),
      I4 => s_axis_rgb_tdata(65),
      I5 => s_axis_rgb_tdata(66),
      O => \r3[9]_i_9_n_0\
    );
\r3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(64),
      Q => r3(0),
      R => '0'
    );
\r3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(10),
      Q => r3(10),
      R => '0'
    );
\r3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(11),
      Q => r3(11),
      R => '0'
    );
\r3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(12),
      Q => r3(12),
      R => '0'
    );
\r3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(13),
      Q => r3(13),
      R => '0'
    );
\r3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(14),
      Q => r3(14),
      R => '0'
    );
\r3_reg[14]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \r3_reg[9]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_r3_reg[14]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => r30(14),
      CO(3) => \NLW_r3_reg[14]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r3_reg[14]_i_1_n_5\,
      CO(1) => \r3_reg[14]_i_1_n_6\,
      CO(0) => \r3_reg[14]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(69),
      DI(0) => \r3[14]_i_2_n_0\,
      O(7 downto 4) => \NLW_r3_reg[14]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => r30(13 downto 10),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(71 downto 70),
      S(1) => \r3[14]_i_3_n_0\,
      S(0) => \r3[14]_i_4_n_0\
    );
\r3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(65),
      Q => r3(1),
      R => '0'
    );
\r3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(2),
      Q => r3(2),
      R => '0'
    );
\r3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(3),
      Q => r3(3),
      R => '0'
    );
\r3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(4),
      Q => r3(4),
      R => '0'
    );
\r3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(5),
      Q => r3(5),
      R => '0'
    );
\r3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(6),
      Q => r3(6),
      R => '0'
    );
\r3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(7),
      Q => r3(7),
      R => '0'
    );
\r3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(8),
      Q => r3(8),
      R => '0'
    );
\r3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r30(9),
      Q => r3(9),
      R => '0'
    );
\r3_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \r3_reg[9]_i_1_n_0\,
      CO(6) => \r3_reg[9]_i_1_n_1\,
      CO(5) => \r3_reg[9]_i_1_n_2\,
      CO(4) => \r3_reg[9]_i_1_n_3\,
      CO(3) => \r3_reg[9]_i_1_n_4\,
      CO(2) => \r3_reg[9]_i_1_n_5\,
      CO(1) => \r3_reg[9]_i_1_n_6\,
      CO(0) => \r3_reg[9]_i_1_n_7\,
      DI(7) => \r3[9]_i_2_n_0\,
      DI(6) => \r3[9]_i_3_n_0\,
      DI(5) => \r3[9]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(64),
      DI(3 downto 1) => s_axis_rgb_tdata(66 downto 64),
      DI(0) => '0',
      O(7 downto 0) => r30(9 downto 2),
      S(7) => \r3[9]_i_5_n_0\,
      S(6) => \r3[9]_i_6_n_0\,
      S(5) => \r3[9]_i_7_n_0\,
      S(4) => \r3[9]_i_8_n_0\,
      S(3) => \r3[9]_i_9_n_0\,
      S(2) => \r3[9]_i_10_n_0\,
      S(1) => \r3[9]_i_11_n_0\,
      S(0) => \r3[9]_i_12_n_0\
    );
\r4[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFA50400020"
    )
        port map (
      I0 => s_axis_rgb_tdata(95),
      I1 => s_axis_rgb_tdata(92),
      I2 => s_axis_rgb_tdata(94),
      I3 => \r4[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(93),
      I5 => s_axis_rgb_tdata(91),
      O => \r4[14]_i_2_n_0\
    );
\r4[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555FAA80"
    )
        port map (
      I0 => s_axis_rgb_tdata(95),
      I1 => \r4[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(94),
      I3 => s_axis_rgb_tdata(92),
      I4 => s_axis_rgb_tdata(93),
      O => \r4[14]_i_3_n_0\
    );
\r4[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969695966666666"
    )
        port map (
      I0 => \r4[14]_i_2_n_0\,
      I1 => s_axis_rgb_tdata(92),
      I2 => s_axis_rgb_tdata(94),
      I3 => \r4[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(93),
      I5 => s_axis_rgb_tdata(95),
      O => \r4[14]_i_4_n_0\
    );
\r4[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAA8A8A88888"
    )
        port map (
      I0 => s_axis_rgb_tdata(91),
      I1 => s_axis_rgb_tdata(93),
      I2 => s_axis_rgb_tdata(89),
      I3 => s_axis_rgb_tdata(88),
      I4 => s_axis_rgb_tdata(92),
      I5 => s_axis_rgb_tdata(90),
      O => \r4[14]_i_5_n_0\
    );
\r4[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6569A666"
    )
        port map (
      I0 => s_axis_rgb_tdata(92),
      I1 => s_axis_rgb_tdata(90),
      I2 => s_axis_rgb_tdata(91),
      I3 => s_axis_rgb_tdata(88),
      I4 => s_axis_rgb_tdata(89),
      O => \r4[9]_i_10_n_0\
    );
\r4[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => s_axis_rgb_tdata(91),
      I1 => s_axis_rgb_tdata(89),
      I2 => s_axis_rgb_tdata(90),
      I3 => s_axis_rgb_tdata(88),
      O => \r4[9]_i_11_n_0\
    );
\r4[9]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_rgb_tdata(90),
      I1 => s_axis_rgb_tdata(88),
      O => \r4[9]_i_12_n_0\
    );
\r4[9]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1FA080"
    )
        port map (
      I0 => s_axis_rgb_tdata(93),
      I1 => \r4[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(94),
      I3 => s_axis_rgb_tdata(92),
      I4 => s_axis_rgb_tdata(95),
      O => \r4[9]_i_13_n_0\
    );
\r4[9]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"011FF880"
    )
        port map (
      I0 => s_axis_rgb_tdata(92),
      I1 => \r4[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(95),
      I3 => s_axis_rgb_tdata(93),
      I4 => s_axis_rgb_tdata(94),
      O => \r4[9]_i_14_n_0\
    );
\r4[9]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \r4[14]_i_5_n_0\,
      I1 => s_axis_rgb_tdata(94),
      I2 => s_axis_rgb_tdata(92),
      I3 => s_axis_rgb_tdata(93),
      I4 => s_axis_rgb_tdata(95),
      O => \r4[9]_i_15_n_0\
    );
\r4[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DECECEEE44404048"
    )
        port map (
      I0 => s_axis_rgb_tdata(94),
      I1 => s_axis_rgb_tdata(93),
      I2 => s_axis_rgb_tdata(95),
      I3 => \r4[14]_i_5_n_0\,
      I4 => s_axis_rgb_tdata(92),
      I5 => s_axis_rgb_tdata(90),
      O => \r4[9]_i_2_n_0\
    );
\r4[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F6F6F690909060"
    )
        port map (
      I0 => s_axis_rgb_tdata(95),
      I1 => s_axis_rgb_tdata(93),
      I2 => s_axis_rgb_tdata(92),
      I3 => s_axis_rgb_tdata(94),
      I4 => \r4[14]_i_5_n_0\,
      I5 => s_axis_rgb_tdata(89),
      O => \r4[9]_i_3_n_0\
    );
\r4[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA6655965599AA6"
    )
        port map (
      I0 => s_axis_rgb_tdata(89),
      I1 => s_axis_rgb_tdata(92),
      I2 => \r4[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(94),
      I4 => s_axis_rgb_tdata(93),
      I5 => s_axis_rgb_tdata(95),
      O => \r4[9]_i_4_n_0\
    );
\r4[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r4[9]_i_2_n_0\,
      I1 => \r4[9]_i_13_n_0\,
      I2 => s_axis_rgb_tdata(94),
      I3 => s_axis_rgb_tdata(91),
      O => \r4[9]_i_5_n_0\
    );
\r4[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r4[9]_i_3_n_0\,
      I1 => \r4[9]_i_14_n_0\,
      I2 => s_axis_rgb_tdata(93),
      I3 => s_axis_rgb_tdata(90),
      O => \r4[9]_i_6_n_0\
    );
\r4[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969969699669966"
    )
        port map (
      I0 => \r4[9]_i_15_n_0\,
      I1 => s_axis_rgb_tdata(89),
      I2 => \r4[14]_i_5_n_0\,
      I3 => s_axis_rgb_tdata(92),
      I4 => s_axis_rgb_tdata(94),
      I5 => s_axis_rgb_tdata(91),
      O => \r4[9]_i_7_n_0\
    );
\r4[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => s_axis_rgb_tdata(91),
      I1 => \r4[14]_i_5_n_0\,
      I2 => s_axis_rgb_tdata(92),
      I3 => s_axis_rgb_tdata(94),
      I4 => s_axis_rgb_tdata(88),
      O => \r4[9]_i_8_n_0\
    );
\r4[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66656569A6A66666"
    )
        port map (
      I0 => s_axis_rgb_tdata(93),
      I1 => s_axis_rgb_tdata(91),
      I2 => s_axis_rgb_tdata(92),
      I3 => s_axis_rgb_tdata(88),
      I4 => s_axis_rgb_tdata(89),
      I5 => s_axis_rgb_tdata(90),
      O => \r4[9]_i_9_n_0\
    );
\r4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(88),
      Q => r4(0),
      R => '0'
    );
\r4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(10),
      Q => r4(10),
      R => '0'
    );
\r4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(11),
      Q => r4(11),
      R => '0'
    );
\r4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(12),
      Q => r4(12),
      R => '0'
    );
\r4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(13),
      Q => r4(13),
      R => '0'
    );
\r4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(14),
      Q => r4(14),
      R => '0'
    );
\r4_reg[14]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \r4_reg[9]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_r4_reg[14]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => r40(14),
      CO(3) => \NLW_r4_reg[14]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r4_reg[14]_i_1_n_5\,
      CO(1) => \r4_reg[14]_i_1_n_6\,
      CO(0) => \r4_reg[14]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => s_axis_rgb_tdata(93),
      DI(0) => \r4[14]_i_2_n_0\,
      O(7 downto 4) => \NLW_r4_reg[14]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => r40(13 downto 10),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => s_axis_rgb_tdata(95 downto 94),
      S(1) => \r4[14]_i_3_n_0\,
      S(0) => \r4[14]_i_4_n_0\
    );
\r4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_rgb_tdata(89),
      Q => r4(1),
      R => '0'
    );
\r4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(2),
      Q => r4(2),
      R => '0'
    );
\r4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(3),
      Q => r4(3),
      R => '0'
    );
\r4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(4),
      Q => r4(4),
      R => '0'
    );
\r4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(5),
      Q => r4(5),
      R => '0'
    );
\r4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(6),
      Q => r4(6),
      R => '0'
    );
\r4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(7),
      Q => r4(7),
      R => '0'
    );
\r4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(8),
      Q => r4(8),
      R => '0'
    );
\r4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^q\(0),
      D => r40(9),
      Q => r4(9),
      R => '0'
    );
\r4_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \r4_reg[9]_i_1_n_0\,
      CO(6) => \r4_reg[9]_i_1_n_1\,
      CO(5) => \r4_reg[9]_i_1_n_2\,
      CO(4) => \r4_reg[9]_i_1_n_3\,
      CO(3) => \r4_reg[9]_i_1_n_4\,
      CO(2) => \r4_reg[9]_i_1_n_5\,
      CO(1) => \r4_reg[9]_i_1_n_6\,
      CO(0) => \r4_reg[9]_i_1_n_7\,
      DI(7) => \r4[9]_i_2_n_0\,
      DI(6) => \r4[9]_i_3_n_0\,
      DI(5) => \r4[9]_i_4_n_0\,
      DI(4) => s_axis_rgb_tdata(88),
      DI(3 downto 1) => s_axis_rgb_tdata(90 downto 88),
      DI(0) => '0',
      O(7 downto 0) => r40(9 downto 2),
      S(7) => \r4[9]_i_5_n_0\,
      S(6) => \r4[9]_i_6_n_0\,
      S(5) => \r4[9]_i_7_n_0\,
      S(4) => \r4[9]_i_8_n_0\,
      S(3) => \r4[9]_i_9_n_0\,
      S(2) => \r4[9]_i_10_n_0\,
      S(1) => \r4[9]_i_11_n_0\,
      S(0) => \r4[9]_i_12_n_0\
    );
\sum1[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r1(14),
      I1 => g1(14),
      I2 => g1(15),
      O => \sum1[15]_i_10_n_0\
    );
\sum1[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => r1(13),
      I1 => g1(13),
      I2 => g1(14),
      I3 => r1(14),
      O => \sum1[15]_i_11_n_0\
    );
\sum1[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => r1(12),
      I1 => b1(12),
      I2 => g1(12),
      I3 => g1(13),
      I4 => r1(13),
      O => \sum1[15]_i_12_n_0\
    );
\sum1[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum1[15]_i_5_n_0\,
      I1 => b1(12),
      I2 => g1(12),
      I3 => r1(12),
      O => \sum1[15]_i_13_n_0\
    );
\sum1[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(11),
      I1 => b1(11),
      I2 => r1(11),
      I3 => \sum1[15]_i_6_n_0\,
      O => \sum1[15]_i_14_n_0\
    );
\sum1[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(10),
      I1 => b1(10),
      I2 => r1(10),
      I3 => \sum1[15]_i_7_n_0\,
      O => \sum1[15]_i_15_n_0\
    );
\sum1[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(9),
      I1 => b1(9),
      I2 => r1(9),
      I3 => \sum1[15]_i_8_n_0\,
      O => \sum1[15]_i_16_n_0\
    );
\sum1[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(8),
      I1 => b1(8),
      I2 => r1(8),
      I3 => \sum1[15]_i_9_n_0\,
      O => \sum1[15]_i_17_n_0\
    );
\sum1[15]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(6),
      I1 => b1(6),
      I2 => r1(6),
      O => \sum1[15]_i_18_n_0\
    );
\sum1[15]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(5),
      I1 => b1(5),
      I2 => r1(5),
      O => \sum1[15]_i_19_n_0\
    );
\sum1[15]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(4),
      I1 => b1(4),
      I2 => r1(4),
      O => \sum1[15]_i_20_n_0\
    );
\sum1[15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(3),
      I1 => b1(3),
      I2 => r1(3),
      O => \sum1[15]_i_21_n_0\
    );
\sum1[15]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(2),
      I1 => b1(2),
      I2 => r1(2),
      O => \sum1[15]_i_22_n_0\
    );
\sum1[15]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(1),
      I1 => b1(1),
      I2 => r1(1),
      O => \sum1[15]_i_23_n_0\
    );
\sum1[15]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => b1(0),
      I1 => r1(0),
      O => \sum1[15]_i_24_n_0\
    );
\sum1[15]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(7),
      I1 => b1(7),
      I2 => r1(7),
      I3 => \sum1[15]_i_18_n_0\,
      O => \sum1[15]_i_25_n_0\
    );
\sum1[15]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(6),
      I1 => b1(6),
      I2 => r1(6),
      I3 => \sum1[15]_i_19_n_0\,
      O => \sum1[15]_i_26_n_0\
    );
\sum1[15]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(5),
      I1 => b1(5),
      I2 => r1(5),
      I3 => \sum1[15]_i_20_n_0\,
      O => \sum1[15]_i_27_n_0\
    );
\sum1[15]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(4),
      I1 => b1(4),
      I2 => r1(4),
      I3 => \sum1[15]_i_21_n_0\,
      O => \sum1[15]_i_28_n_0\
    );
\sum1[15]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(3),
      I1 => b1(3),
      I2 => r1(3),
      I3 => \sum1[15]_i_22_n_0\,
      O => \sum1[15]_i_29_n_0\
    );
\sum1[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => g1(13),
      I1 => r1(13),
      O => \sum1[15]_i_3_n_0\
    );
\sum1[15]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(2),
      I1 => b1(2),
      I2 => r1(2),
      I3 => \sum1[15]_i_23_n_0\,
      O => \sum1[15]_i_30_n_0\
    );
\sum1[15]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g1(1),
      I1 => b1(1),
      I2 => r1(1),
      I3 => \sum1[15]_i_24_n_0\,
      O => \sum1[15]_i_31_n_0\
    );
\sum1[15]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(0),
      I1 => r1(0),
      O => \sum1[15]_i_32_n_0\
    );
\sum1[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(12),
      I1 => b1(12),
      I2 => r1(12),
      O => \sum1[15]_i_4_n_0\
    );
\sum1[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(11),
      I1 => b1(11),
      I2 => r1(11),
      O => \sum1[15]_i_5_n_0\
    );
\sum1[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(10),
      I1 => b1(10),
      I2 => r1(10),
      O => \sum1[15]_i_6_n_0\
    );
\sum1[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(9),
      I1 => b1(9),
      I2 => r1(9),
      O => \sum1[15]_i_7_n_0\
    );
\sum1[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(8),
      I1 => b1(8),
      I2 => r1(8),
      O => \sum1[15]_i_8_n_0\
    );
\sum1[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g1(7),
      I1 => b1(7),
      I2 => r1(7),
      O => \sum1[15]_i_9_n_0\
    );
\sum1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(10),
      Q => sum1(10),
      R => '0'
    );
\sum1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(11),
      Q => sum1(11),
      R => '0'
    );
\sum1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(12),
      Q => sum1(12),
      R => '0'
    );
\sum1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(13),
      Q => sum1(13),
      R => '0'
    );
\sum1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(14),
      Q => sum1(14),
      R => '0'
    );
\sum1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(15),
      Q => sum1(15),
      R => '0'
    );
\sum1_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum1_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sum1_reg[15]_i_1_n_0\,
      CO(6) => \sum1_reg[15]_i_1_n_1\,
      CO(5) => \sum1_reg[15]_i_1_n_2\,
      CO(4) => \sum1_reg[15]_i_1_n_3\,
      CO(3) => \sum1_reg[15]_i_1_n_4\,
      CO(2) => \sum1_reg[15]_i_1_n_5\,
      CO(1) => \sum1_reg[15]_i_1_n_6\,
      CO(0) => \sum1_reg[15]_i_1_n_7\,
      DI(7) => g1(15),
      DI(6) => \sum1[15]_i_3_n_0\,
      DI(5) => \sum1[15]_i_4_n_0\,
      DI(4) => \sum1[15]_i_5_n_0\,
      DI(3) => \sum1[15]_i_6_n_0\,
      DI(2) => \sum1[15]_i_7_n_0\,
      DI(1) => \sum1[15]_i_8_n_0\,
      DI(0) => \sum1[15]_i_9_n_0\,
      O(7 downto 0) => p_1_in(15 downto 8),
      S(7) => \sum1[15]_i_10_n_0\,
      S(6) => \sum1[15]_i_11_n_0\,
      S(5) => \sum1[15]_i_12_n_0\,
      S(4) => \sum1[15]_i_13_n_0\,
      S(3) => \sum1[15]_i_14_n_0\,
      S(2) => \sum1[15]_i_15_n_0\,
      S(1) => \sum1[15]_i_16_n_0\,
      S(0) => \sum1[15]_i_17_n_0\
    );
\sum1_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sum1_reg[15]_i_2_n_0\,
      CO(6) => \sum1_reg[15]_i_2_n_1\,
      CO(5) => \sum1_reg[15]_i_2_n_2\,
      CO(4) => \sum1_reg[15]_i_2_n_3\,
      CO(3) => \sum1_reg[15]_i_2_n_4\,
      CO(2) => \sum1_reg[15]_i_2_n_5\,
      CO(1) => \sum1_reg[15]_i_2_n_6\,
      CO(0) => \sum1_reg[15]_i_2_n_7\,
      DI(7) => \sum1[15]_i_18_n_0\,
      DI(6) => \sum1[15]_i_19_n_0\,
      DI(5) => \sum1[15]_i_20_n_0\,
      DI(4) => \sum1[15]_i_21_n_0\,
      DI(3) => \sum1[15]_i_22_n_0\,
      DI(2) => \sum1[15]_i_23_n_0\,
      DI(1) => \sum1[15]_i_24_n_0\,
      DI(0) => '0',
      O(7 downto 0) => \NLW_sum1_reg[15]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \sum1[15]_i_25_n_0\,
      S(6) => \sum1[15]_i_26_n_0\,
      S(5) => \sum1[15]_i_27_n_0\,
      S(4) => \sum1[15]_i_28_n_0\,
      S(3) => \sum1[15]_i_29_n_0\,
      S(2) => \sum1[15]_i_30_n_0\,
      S(1) => \sum1[15]_i_31_n_0\,
      S(0) => \sum1[15]_i_32_n_0\
    );
\sum1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(16),
      Q => sum1(16),
      R => '0'
    );
\sum1_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum1_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sum1_reg[16]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => p_1_in(16),
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_sum1_reg[16]_i_1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 0) => B"00000001"
    );
\sum1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(8),
      Q => sum1(8),
      R => '0'
    );
\sum1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_1_in(9),
      Q => sum1(9),
      R => '0'
    );
\sum2[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r2(14),
      I1 => g2(14),
      I2 => g2(15),
      O => \sum2[15]_i_10_n_0\
    );
\sum2[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => r2(13),
      I1 => g2(13),
      I2 => g2(14),
      I3 => r2(14),
      O => \sum2[15]_i_11_n_0\
    );
\sum2[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => r2(12),
      I1 => b2(12),
      I2 => g2(12),
      I3 => g2(13),
      I4 => r2(13),
      O => \sum2[15]_i_12_n_0\
    );
\sum2[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum2[15]_i_5_n_0\,
      I1 => b2(12),
      I2 => g2(12),
      I3 => r2(12),
      O => \sum2[15]_i_13_n_0\
    );
\sum2[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(11),
      I1 => b2(11),
      I2 => r2(11),
      I3 => \sum2[15]_i_6_n_0\,
      O => \sum2[15]_i_14_n_0\
    );
\sum2[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(10),
      I1 => b2(10),
      I2 => r2(10),
      I3 => \sum2[15]_i_7_n_0\,
      O => \sum2[15]_i_15_n_0\
    );
\sum2[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(9),
      I1 => b2(9),
      I2 => r2(9),
      I3 => \sum2[15]_i_8_n_0\,
      O => \sum2[15]_i_16_n_0\
    );
\sum2[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(8),
      I1 => b2(8),
      I2 => r2(8),
      I3 => \sum2[15]_i_9_n_0\,
      O => \sum2[15]_i_17_n_0\
    );
\sum2[15]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(6),
      I1 => b2(6),
      I2 => r2(6),
      O => \sum2[15]_i_18_n_0\
    );
\sum2[15]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(5),
      I1 => b2(5),
      I2 => r2(5),
      O => \sum2[15]_i_19_n_0\
    );
\sum2[15]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(4),
      I1 => b2(4),
      I2 => r2(4),
      O => \sum2[15]_i_20_n_0\
    );
\sum2[15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(3),
      I1 => b2(3),
      I2 => r2(3),
      O => \sum2[15]_i_21_n_0\
    );
\sum2[15]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(2),
      I1 => b2(2),
      I2 => r2(2),
      O => \sum2[15]_i_22_n_0\
    );
\sum2[15]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(1),
      I1 => b2(1),
      I2 => r2(1),
      O => \sum2[15]_i_23_n_0\
    );
\sum2[15]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => b2(0),
      I1 => r2(0),
      O => \sum2[15]_i_24_n_0\
    );
\sum2[15]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(7),
      I1 => b2(7),
      I2 => r2(7),
      I3 => \sum2[15]_i_18_n_0\,
      O => \sum2[15]_i_25_n_0\
    );
\sum2[15]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(6),
      I1 => b2(6),
      I2 => r2(6),
      I3 => \sum2[15]_i_19_n_0\,
      O => \sum2[15]_i_26_n_0\
    );
\sum2[15]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(5),
      I1 => b2(5),
      I2 => r2(5),
      I3 => \sum2[15]_i_20_n_0\,
      O => \sum2[15]_i_27_n_0\
    );
\sum2[15]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(4),
      I1 => b2(4),
      I2 => r2(4),
      I3 => \sum2[15]_i_21_n_0\,
      O => \sum2[15]_i_28_n_0\
    );
\sum2[15]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(3),
      I1 => b2(3),
      I2 => r2(3),
      I3 => \sum2[15]_i_22_n_0\,
      O => \sum2[15]_i_29_n_0\
    );
\sum2[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => g2(13),
      I1 => r2(13),
      O => \sum2[15]_i_3_n_0\
    );
\sum2[15]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(2),
      I1 => b2(2),
      I2 => r2(2),
      I3 => \sum2[15]_i_23_n_0\,
      O => \sum2[15]_i_30_n_0\
    );
\sum2[15]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g2(1),
      I1 => b2(1),
      I2 => r2(1),
      I3 => \sum2[15]_i_24_n_0\,
      O => \sum2[15]_i_31_n_0\
    );
\sum2[15]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(0),
      I1 => r2(0),
      O => \sum2[15]_i_32_n_0\
    );
\sum2[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(12),
      I1 => b2(12),
      I2 => r2(12),
      O => \sum2[15]_i_4_n_0\
    );
\sum2[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(11),
      I1 => b2(11),
      I2 => r2(11),
      O => \sum2[15]_i_5_n_0\
    );
\sum2[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(10),
      I1 => b2(10),
      I2 => r2(10),
      O => \sum2[15]_i_6_n_0\
    );
\sum2[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(9),
      I1 => b2(9),
      I2 => r2(9),
      O => \sum2[15]_i_7_n_0\
    );
\sum2[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(8),
      I1 => b2(8),
      I2 => r2(8),
      O => \sum2[15]_i_8_n_0\
    );
\sum2[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g2(7),
      I1 => b2(7),
      I2 => r2(7),
      O => \sum2[15]_i_9_n_0\
    );
\sum2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_13\,
      Q => sum2(10),
      R => '0'
    );
\sum2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_12\,
      Q => sum2(11),
      R => '0'
    );
\sum2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_11\,
      Q => sum2(12),
      R => '0'
    );
\sum2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_10\,
      Q => sum2(13),
      R => '0'
    );
\sum2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_9\,
      Q => sum2(14),
      R => '0'
    );
\sum2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_8\,
      Q => sum2(15),
      R => '0'
    );
\sum2_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum2_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sum2_reg[15]_i_1_n_0\,
      CO(6) => \sum2_reg[15]_i_1_n_1\,
      CO(5) => \sum2_reg[15]_i_1_n_2\,
      CO(4) => \sum2_reg[15]_i_1_n_3\,
      CO(3) => \sum2_reg[15]_i_1_n_4\,
      CO(2) => \sum2_reg[15]_i_1_n_5\,
      CO(1) => \sum2_reg[15]_i_1_n_6\,
      CO(0) => \sum2_reg[15]_i_1_n_7\,
      DI(7) => g2(15),
      DI(6) => \sum2[15]_i_3_n_0\,
      DI(5) => \sum2[15]_i_4_n_0\,
      DI(4) => \sum2[15]_i_5_n_0\,
      DI(3) => \sum2[15]_i_6_n_0\,
      DI(2) => \sum2[15]_i_7_n_0\,
      DI(1) => \sum2[15]_i_8_n_0\,
      DI(0) => \sum2[15]_i_9_n_0\,
      O(7) => \sum2_reg[15]_i_1_n_8\,
      O(6) => \sum2_reg[15]_i_1_n_9\,
      O(5) => \sum2_reg[15]_i_1_n_10\,
      O(4) => \sum2_reg[15]_i_1_n_11\,
      O(3) => \sum2_reg[15]_i_1_n_12\,
      O(2) => \sum2_reg[15]_i_1_n_13\,
      O(1) => \sum2_reg[15]_i_1_n_14\,
      O(0) => \sum2_reg[15]_i_1_n_15\,
      S(7) => \sum2[15]_i_10_n_0\,
      S(6) => \sum2[15]_i_11_n_0\,
      S(5) => \sum2[15]_i_12_n_0\,
      S(4) => \sum2[15]_i_13_n_0\,
      S(3) => \sum2[15]_i_14_n_0\,
      S(2) => \sum2[15]_i_15_n_0\,
      S(1) => \sum2[15]_i_16_n_0\,
      S(0) => \sum2[15]_i_17_n_0\
    );
\sum2_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sum2_reg[15]_i_2_n_0\,
      CO(6) => \sum2_reg[15]_i_2_n_1\,
      CO(5) => \sum2_reg[15]_i_2_n_2\,
      CO(4) => \sum2_reg[15]_i_2_n_3\,
      CO(3) => \sum2_reg[15]_i_2_n_4\,
      CO(2) => \sum2_reg[15]_i_2_n_5\,
      CO(1) => \sum2_reg[15]_i_2_n_6\,
      CO(0) => \sum2_reg[15]_i_2_n_7\,
      DI(7) => \sum2[15]_i_18_n_0\,
      DI(6) => \sum2[15]_i_19_n_0\,
      DI(5) => \sum2[15]_i_20_n_0\,
      DI(4) => \sum2[15]_i_21_n_0\,
      DI(3) => \sum2[15]_i_22_n_0\,
      DI(2) => \sum2[15]_i_23_n_0\,
      DI(1) => \sum2[15]_i_24_n_0\,
      DI(0) => '0',
      O(7 downto 0) => \NLW_sum2_reg[15]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \sum2[15]_i_25_n_0\,
      S(6) => \sum2[15]_i_26_n_0\,
      S(5) => \sum2[15]_i_27_n_0\,
      S(4) => \sum2[15]_i_28_n_0\,
      S(3) => \sum2[15]_i_29_n_0\,
      S(2) => \sum2[15]_i_30_n_0\,
      S(1) => \sum2[15]_i_31_n_0\,
      S(0) => \sum2[15]_i_32_n_0\
    );
\sum2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[16]_i_1_n_7\,
      Q => sum2(16),
      R => '0'
    );
\sum2_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum2_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sum2_reg[16]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \sum2_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_sum2_reg[16]_i_1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 0) => B"00000001"
    );
\sum2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_15\,
      Q => sum2(8),
      R => '0'
    );
\sum2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum2_reg[15]_i_1_n_14\,
      Q => sum2(9),
      R => '0'
    );
\sum3[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r3(14),
      I1 => g3(14),
      I2 => g3(15),
      O => \sum3[15]_i_10_n_0\
    );
\sum3[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => r3(13),
      I1 => g3(13),
      I2 => g3(14),
      I3 => r3(14),
      O => \sum3[15]_i_11_n_0\
    );
\sum3[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => r3(12),
      I1 => b3(12),
      I2 => g3(12),
      I3 => g3(13),
      I4 => r3(13),
      O => \sum3[15]_i_12_n_0\
    );
\sum3[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum3[15]_i_5_n_0\,
      I1 => b3(12),
      I2 => g3(12),
      I3 => r3(12),
      O => \sum3[15]_i_13_n_0\
    );
\sum3[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(11),
      I1 => b3(11),
      I2 => r3(11),
      I3 => \sum3[15]_i_6_n_0\,
      O => \sum3[15]_i_14_n_0\
    );
\sum3[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(10),
      I1 => b3(10),
      I2 => r3(10),
      I3 => \sum3[15]_i_7_n_0\,
      O => \sum3[15]_i_15_n_0\
    );
\sum3[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(9),
      I1 => b3(9),
      I2 => r3(9),
      I3 => \sum3[15]_i_8_n_0\,
      O => \sum3[15]_i_16_n_0\
    );
\sum3[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(8),
      I1 => b3(8),
      I2 => r3(8),
      I3 => \sum3[15]_i_9_n_0\,
      O => \sum3[15]_i_17_n_0\
    );
\sum3[15]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(6),
      I1 => b3(6),
      I2 => r3(6),
      O => \sum3[15]_i_18_n_0\
    );
\sum3[15]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(5),
      I1 => b3(5),
      I2 => r3(5),
      O => \sum3[15]_i_19_n_0\
    );
\sum3[15]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(4),
      I1 => b3(4),
      I2 => r3(4),
      O => \sum3[15]_i_20_n_0\
    );
\sum3[15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(3),
      I1 => b3(3),
      I2 => r3(3),
      O => \sum3[15]_i_21_n_0\
    );
\sum3[15]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(2),
      I1 => b3(2),
      I2 => r3(2),
      O => \sum3[15]_i_22_n_0\
    );
\sum3[15]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(1),
      I1 => b3(1),
      I2 => r3(1),
      O => \sum3[15]_i_23_n_0\
    );
\sum3[15]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => b3(0),
      I1 => r3(0),
      O => \sum3[15]_i_24_n_0\
    );
\sum3[15]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(7),
      I1 => b3(7),
      I2 => r3(7),
      I3 => \sum3[15]_i_18_n_0\,
      O => \sum3[15]_i_25_n_0\
    );
\sum3[15]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(6),
      I1 => b3(6),
      I2 => r3(6),
      I3 => \sum3[15]_i_19_n_0\,
      O => \sum3[15]_i_26_n_0\
    );
\sum3[15]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(5),
      I1 => b3(5),
      I2 => r3(5),
      I3 => \sum3[15]_i_20_n_0\,
      O => \sum3[15]_i_27_n_0\
    );
\sum3[15]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(4),
      I1 => b3(4),
      I2 => r3(4),
      I3 => \sum3[15]_i_21_n_0\,
      O => \sum3[15]_i_28_n_0\
    );
\sum3[15]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(3),
      I1 => b3(3),
      I2 => r3(3),
      I3 => \sum3[15]_i_22_n_0\,
      O => \sum3[15]_i_29_n_0\
    );
\sum3[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => g3(13),
      I1 => r3(13),
      O => \sum3[15]_i_3_n_0\
    );
\sum3[15]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(2),
      I1 => b3(2),
      I2 => r3(2),
      I3 => \sum3[15]_i_23_n_0\,
      O => \sum3[15]_i_30_n_0\
    );
\sum3[15]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g3(1),
      I1 => b3(1),
      I2 => r3(1),
      I3 => \sum3[15]_i_24_n_0\,
      O => \sum3[15]_i_31_n_0\
    );
\sum3[15]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(0),
      I1 => r3(0),
      O => \sum3[15]_i_32_n_0\
    );
\sum3[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(12),
      I1 => b3(12),
      I2 => r3(12),
      O => \sum3[15]_i_4_n_0\
    );
\sum3[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(11),
      I1 => b3(11),
      I2 => r3(11),
      O => \sum3[15]_i_5_n_0\
    );
\sum3[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(10),
      I1 => b3(10),
      I2 => r3(10),
      O => \sum3[15]_i_6_n_0\
    );
\sum3[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(9),
      I1 => b3(9),
      I2 => r3(9),
      O => \sum3[15]_i_7_n_0\
    );
\sum3[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(8),
      I1 => b3(8),
      I2 => r3(8),
      O => \sum3[15]_i_8_n_0\
    );
\sum3[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g3(7),
      I1 => b3(7),
      I2 => r3(7),
      O => \sum3[15]_i_9_n_0\
    );
\sum3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_13\,
      Q => sum3(10),
      R => '0'
    );
\sum3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_12\,
      Q => sum3(11),
      R => '0'
    );
\sum3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_11\,
      Q => sum3(12),
      R => '0'
    );
\sum3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_10\,
      Q => sum3(13),
      R => '0'
    );
\sum3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_9\,
      Q => sum3(14),
      R => '0'
    );
\sum3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_8\,
      Q => sum3(15),
      R => '0'
    );
\sum3_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum3_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sum3_reg[15]_i_1_n_0\,
      CO(6) => \sum3_reg[15]_i_1_n_1\,
      CO(5) => \sum3_reg[15]_i_1_n_2\,
      CO(4) => \sum3_reg[15]_i_1_n_3\,
      CO(3) => \sum3_reg[15]_i_1_n_4\,
      CO(2) => \sum3_reg[15]_i_1_n_5\,
      CO(1) => \sum3_reg[15]_i_1_n_6\,
      CO(0) => \sum3_reg[15]_i_1_n_7\,
      DI(7) => g3(15),
      DI(6) => \sum3[15]_i_3_n_0\,
      DI(5) => \sum3[15]_i_4_n_0\,
      DI(4) => \sum3[15]_i_5_n_0\,
      DI(3) => \sum3[15]_i_6_n_0\,
      DI(2) => \sum3[15]_i_7_n_0\,
      DI(1) => \sum3[15]_i_8_n_0\,
      DI(0) => \sum3[15]_i_9_n_0\,
      O(7) => \sum3_reg[15]_i_1_n_8\,
      O(6) => \sum3_reg[15]_i_1_n_9\,
      O(5) => \sum3_reg[15]_i_1_n_10\,
      O(4) => \sum3_reg[15]_i_1_n_11\,
      O(3) => \sum3_reg[15]_i_1_n_12\,
      O(2) => \sum3_reg[15]_i_1_n_13\,
      O(1) => \sum3_reg[15]_i_1_n_14\,
      O(0) => \sum3_reg[15]_i_1_n_15\,
      S(7) => \sum3[15]_i_10_n_0\,
      S(6) => \sum3[15]_i_11_n_0\,
      S(5) => \sum3[15]_i_12_n_0\,
      S(4) => \sum3[15]_i_13_n_0\,
      S(3) => \sum3[15]_i_14_n_0\,
      S(2) => \sum3[15]_i_15_n_0\,
      S(1) => \sum3[15]_i_16_n_0\,
      S(0) => \sum3[15]_i_17_n_0\
    );
\sum3_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sum3_reg[15]_i_2_n_0\,
      CO(6) => \sum3_reg[15]_i_2_n_1\,
      CO(5) => \sum3_reg[15]_i_2_n_2\,
      CO(4) => \sum3_reg[15]_i_2_n_3\,
      CO(3) => \sum3_reg[15]_i_2_n_4\,
      CO(2) => \sum3_reg[15]_i_2_n_5\,
      CO(1) => \sum3_reg[15]_i_2_n_6\,
      CO(0) => \sum3_reg[15]_i_2_n_7\,
      DI(7) => \sum3[15]_i_18_n_0\,
      DI(6) => \sum3[15]_i_19_n_0\,
      DI(5) => \sum3[15]_i_20_n_0\,
      DI(4) => \sum3[15]_i_21_n_0\,
      DI(3) => \sum3[15]_i_22_n_0\,
      DI(2) => \sum3[15]_i_23_n_0\,
      DI(1) => \sum3[15]_i_24_n_0\,
      DI(0) => '0',
      O(7 downto 0) => \NLW_sum3_reg[15]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \sum3[15]_i_25_n_0\,
      S(6) => \sum3[15]_i_26_n_0\,
      S(5) => \sum3[15]_i_27_n_0\,
      S(4) => \sum3[15]_i_28_n_0\,
      S(3) => \sum3[15]_i_29_n_0\,
      S(2) => \sum3[15]_i_30_n_0\,
      S(1) => \sum3[15]_i_31_n_0\,
      S(0) => \sum3[15]_i_32_n_0\
    );
\sum3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[16]_i_1_n_7\,
      Q => sum3(16),
      R => '0'
    );
\sum3_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum3_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sum3_reg[16]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \sum3_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_sum3_reg[16]_i_1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 0) => B"00000001"
    );
\sum3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_15\,
      Q => sum3(8),
      R => '0'
    );
\sum3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum3_reg[15]_i_1_n_14\,
      Q => sum3(9),
      R => '0'
    );
\sum4[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r4(14),
      I1 => g4(14),
      I2 => g4(15),
      O => \sum4[15]_i_10_n_0\
    );
\sum4[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => r4(13),
      I1 => g4(13),
      I2 => g4(14),
      I3 => r4(14),
      O => \sum4[15]_i_11_n_0\
    );
\sum4[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => r4(12),
      I1 => b4(12),
      I2 => g4(12),
      I3 => g4(13),
      I4 => r4(13),
      O => \sum4[15]_i_12_n_0\
    );
\sum4[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum4[15]_i_5_n_0\,
      I1 => b4(12),
      I2 => g4(12),
      I3 => r4(12),
      O => \sum4[15]_i_13_n_0\
    );
\sum4[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(11),
      I1 => b4(11),
      I2 => r4(11),
      I3 => \sum4[15]_i_6_n_0\,
      O => \sum4[15]_i_14_n_0\
    );
\sum4[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(10),
      I1 => b4(10),
      I2 => r4(10),
      I3 => \sum4[15]_i_7_n_0\,
      O => \sum4[15]_i_15_n_0\
    );
\sum4[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(9),
      I1 => b4(9),
      I2 => r4(9),
      I3 => \sum4[15]_i_8_n_0\,
      O => \sum4[15]_i_16_n_0\
    );
\sum4[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(8),
      I1 => b4(8),
      I2 => r4(8),
      I3 => \sum4[15]_i_9_n_0\,
      O => \sum4[15]_i_17_n_0\
    );
\sum4[15]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(6),
      I1 => b4(6),
      I2 => r4(6),
      O => \sum4[15]_i_18_n_0\
    );
\sum4[15]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(5),
      I1 => b4(5),
      I2 => r4(5),
      O => \sum4[15]_i_19_n_0\
    );
\sum4[15]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(4),
      I1 => b4(4),
      I2 => r4(4),
      O => \sum4[15]_i_20_n_0\
    );
\sum4[15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(3),
      I1 => b4(3),
      I2 => r4(3),
      O => \sum4[15]_i_21_n_0\
    );
\sum4[15]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(2),
      I1 => b4(2),
      I2 => r4(2),
      O => \sum4[15]_i_22_n_0\
    );
\sum4[15]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(1),
      I1 => b4(1),
      I2 => r4(1),
      O => \sum4[15]_i_23_n_0\
    );
\sum4[15]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => b4(0),
      I1 => r4(0),
      O => \sum4[15]_i_24_n_0\
    );
\sum4[15]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(7),
      I1 => b4(7),
      I2 => r4(7),
      I3 => \sum4[15]_i_18_n_0\,
      O => \sum4[15]_i_25_n_0\
    );
\sum4[15]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(6),
      I1 => b4(6),
      I2 => r4(6),
      I3 => \sum4[15]_i_19_n_0\,
      O => \sum4[15]_i_26_n_0\
    );
\sum4[15]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(5),
      I1 => b4(5),
      I2 => r4(5),
      I3 => \sum4[15]_i_20_n_0\,
      O => \sum4[15]_i_27_n_0\
    );
\sum4[15]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(4),
      I1 => b4(4),
      I2 => r4(4),
      I3 => \sum4[15]_i_21_n_0\,
      O => \sum4[15]_i_28_n_0\
    );
\sum4[15]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(3),
      I1 => b4(3),
      I2 => r4(3),
      I3 => \sum4[15]_i_22_n_0\,
      O => \sum4[15]_i_29_n_0\
    );
\sum4[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => g4(13),
      I1 => r4(13),
      O => \sum4[15]_i_3_n_0\
    );
\sum4[15]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(2),
      I1 => b4(2),
      I2 => r4(2),
      I3 => \sum4[15]_i_23_n_0\,
      O => \sum4[15]_i_30_n_0\
    );
\sum4[15]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => g4(1),
      I1 => b4(1),
      I2 => r4(1),
      I3 => \sum4[15]_i_24_n_0\,
      O => \sum4[15]_i_31_n_0\
    );
\sum4[15]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(0),
      I1 => r4(0),
      O => \sum4[15]_i_32_n_0\
    );
\sum4[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(12),
      I1 => b4(12),
      I2 => r4(12),
      O => \sum4[15]_i_4_n_0\
    );
\sum4[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(11),
      I1 => b4(11),
      I2 => r4(11),
      O => \sum4[15]_i_5_n_0\
    );
\sum4[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(10),
      I1 => b4(10),
      I2 => r4(10),
      O => \sum4[15]_i_6_n_0\
    );
\sum4[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(9),
      I1 => b4(9),
      I2 => r4(9),
      O => \sum4[15]_i_7_n_0\
    );
\sum4[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(8),
      I1 => b4(8),
      I2 => r4(8),
      O => \sum4[15]_i_8_n_0\
    );
\sum4[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => g4(7),
      I1 => b4(7),
      I2 => r4(7),
      O => \sum4[15]_i_9_n_0\
    );
\sum4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_13\,
      Q => sum4(10),
      R => '0'
    );
\sum4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_12\,
      Q => sum4(11),
      R => '0'
    );
\sum4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_11\,
      Q => sum4(12),
      R => '0'
    );
\sum4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_10\,
      Q => sum4(13),
      R => '0'
    );
\sum4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_9\,
      Q => sum4(14),
      R => '0'
    );
\sum4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_8\,
      Q => sum4(15),
      R => '0'
    );
\sum4_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum4_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sum4_reg[15]_i_1_n_0\,
      CO(6) => \sum4_reg[15]_i_1_n_1\,
      CO(5) => \sum4_reg[15]_i_1_n_2\,
      CO(4) => \sum4_reg[15]_i_1_n_3\,
      CO(3) => \sum4_reg[15]_i_1_n_4\,
      CO(2) => \sum4_reg[15]_i_1_n_5\,
      CO(1) => \sum4_reg[15]_i_1_n_6\,
      CO(0) => \sum4_reg[15]_i_1_n_7\,
      DI(7) => g4(15),
      DI(6) => \sum4[15]_i_3_n_0\,
      DI(5) => \sum4[15]_i_4_n_0\,
      DI(4) => \sum4[15]_i_5_n_0\,
      DI(3) => \sum4[15]_i_6_n_0\,
      DI(2) => \sum4[15]_i_7_n_0\,
      DI(1) => \sum4[15]_i_8_n_0\,
      DI(0) => \sum4[15]_i_9_n_0\,
      O(7) => \sum4_reg[15]_i_1_n_8\,
      O(6) => \sum4_reg[15]_i_1_n_9\,
      O(5) => \sum4_reg[15]_i_1_n_10\,
      O(4) => \sum4_reg[15]_i_1_n_11\,
      O(3) => \sum4_reg[15]_i_1_n_12\,
      O(2) => \sum4_reg[15]_i_1_n_13\,
      O(1) => \sum4_reg[15]_i_1_n_14\,
      O(0) => \sum4_reg[15]_i_1_n_15\,
      S(7) => \sum4[15]_i_10_n_0\,
      S(6) => \sum4[15]_i_11_n_0\,
      S(5) => \sum4[15]_i_12_n_0\,
      S(4) => \sum4[15]_i_13_n_0\,
      S(3) => \sum4[15]_i_14_n_0\,
      S(2) => \sum4[15]_i_15_n_0\,
      S(1) => \sum4[15]_i_16_n_0\,
      S(0) => \sum4[15]_i_17_n_0\
    );
\sum4_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sum4_reg[15]_i_2_n_0\,
      CO(6) => \sum4_reg[15]_i_2_n_1\,
      CO(5) => \sum4_reg[15]_i_2_n_2\,
      CO(4) => \sum4_reg[15]_i_2_n_3\,
      CO(3) => \sum4_reg[15]_i_2_n_4\,
      CO(2) => \sum4_reg[15]_i_2_n_5\,
      CO(1) => \sum4_reg[15]_i_2_n_6\,
      CO(0) => \sum4_reg[15]_i_2_n_7\,
      DI(7) => \sum4[15]_i_18_n_0\,
      DI(6) => \sum4[15]_i_19_n_0\,
      DI(5) => \sum4[15]_i_20_n_0\,
      DI(4) => \sum4[15]_i_21_n_0\,
      DI(3) => \sum4[15]_i_22_n_0\,
      DI(2) => \sum4[15]_i_23_n_0\,
      DI(1) => \sum4[15]_i_24_n_0\,
      DI(0) => '0',
      O(7 downto 0) => \NLW_sum4_reg[15]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \sum4[15]_i_25_n_0\,
      S(6) => \sum4[15]_i_26_n_0\,
      S(5) => \sum4[15]_i_27_n_0\,
      S(4) => \sum4[15]_i_28_n_0\,
      S(3) => \sum4[15]_i_29_n_0\,
      S(2) => \sum4[15]_i_30_n_0\,
      S(1) => \sum4[15]_i_31_n_0\,
      S(0) => \sum4[15]_i_32_n_0\
    );
\sum4_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[16]_i_1_n_7\,
      Q => sum4(16),
      R => '0'
    );
\sum4_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum4_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sum4_reg[16]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \sum4_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_sum4_reg[16]_i_1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 0) => B"00000001"
    );
\sum4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_15\,
      Q => sum4(8),
      R => '0'
    );
\sum4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => \sum4_reg[15]_i_1_n_14\,
      Q => sum4(9),
      R => '0'
    );
tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_rgb_tlast,
      Q => m_axis_gray_tlast,
      R => '0'
    );
tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => s_axis_rgb_tuser,
      Q => m_axis_gray_tuser,
      R => '0'
    );
\tvalid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_rgb_tvalid,
      Q => \^q\(0),
      R => '0'
    );
\tvalid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^q\(0),
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_RGB_to_Grayscale_0_1,RGB_to_Grayscale_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RGB_to_Grayscale_v1_0,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF S_AXIS_RGB:M_AXIS_Gray, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_gray_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_Gray TLAST";
  attribute X_INTERFACE_INFO of m_axis_gray_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_Gray TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_gray_tready : signal is "XIL_INTERFACENAME M_AXIS_Gray, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_gray_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS_Gray TUSER";
  attribute X_INTERFACE_INFO of m_axis_gray_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_Gray TVALID";
  attribute X_INTERFACE_INFO of s_axis_rgb_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_RGB TLAST";
  attribute X_INTERFACE_INFO of s_axis_rgb_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_RGB TREADY";
  attribute X_INTERFACE_INFO of s_axis_rgb_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS_RGB TUSER";
  attribute X_INTERFACE_INFO of s_axis_rgb_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_RGB TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_rgb_tvalid : signal is "XIL_INTERFACENAME S_AXIS_RGB, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_gray_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_Gray TDATA";
  attribute X_INTERFACE_INFO of s_axis_rgb_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_RGB TDATA";
begin
  s_axis_rgb_tready <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0
     port map (
      Q(0) => m_axis_gray_tvalid,
      aclk => aclk,
      m_axis_gray_tdata(31 downto 0) => m_axis_gray_tdata(31 downto 0),
      m_axis_gray_tlast => m_axis_gray_tlast,
      m_axis_gray_tuser => m_axis_gray_tuser,
      s_axis_rgb_tdata(95 downto 0) => s_axis_rgb_tdata(95 downto 0),
      s_axis_rgb_tlast => s_axis_rgb_tlast,
      s_axis_rgb_tuser => s_axis_rgb_tuser,
      s_axis_rgb_tvalid => s_axis_rgb_tvalid
    );
end STRUCTURE;
