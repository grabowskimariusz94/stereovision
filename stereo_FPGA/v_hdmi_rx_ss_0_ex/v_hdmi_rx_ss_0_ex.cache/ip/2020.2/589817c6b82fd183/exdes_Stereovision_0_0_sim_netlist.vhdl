-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 25 22:43:36 2021
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_Stereovision_0_0_sim_netlist.vhdl
-- Design      : exdes_Stereovision_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0 is
  port (
    \tuser_reg[1]_0\ : out STD_LOGIC;
    \tlast_reg[1]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \sum2_reg[16]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \sum3_reg[16]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \sum4_reg[16]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    switch_img : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0 is
  signal C : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal CEP : STD_LOGIC;
  signal \C__0\ : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \C__1\ : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \C__2\ : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal b1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b10 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \b10__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_n_0\ : STD_LOGIC;
  signal \b10__24_carry__0_n_1\ : STD_LOGIC;
  signal \b10__24_carry__0_n_2\ : STD_LOGIC;
  signal \b10__24_carry__0_n_3\ : STD_LOGIC;
  signal \b10__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \b10__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \b10__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \b10__24_carry__1_n_3\ : STD_LOGIC;
  signal \b10__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \b10__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \b10__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \b10__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \b10__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \b10__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \b10__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \b10__24_carry_n_0\ : STD_LOGIC;
  signal \b10__24_carry_n_1\ : STD_LOGIC;
  signal \b10__24_carry_n_2\ : STD_LOGIC;
  signal \b10__24_carry_n_3\ : STD_LOGIC;
  signal \b10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b10_carry__0_n_0\ : STD_LOGIC;
  signal \b10_carry__0_n_1\ : STD_LOGIC;
  signal \b10_carry__0_n_2\ : STD_LOGIC;
  signal \b10_carry__0_n_3\ : STD_LOGIC;
  signal \b10_carry__0_n_4\ : STD_LOGIC;
  signal \b10_carry__0_n_5\ : STD_LOGIC;
  signal \b10_carry__0_n_6\ : STD_LOGIC;
  signal \b10_carry__0_n_7\ : STD_LOGIC;
  signal \b10_carry__1_n_2\ : STD_LOGIC;
  signal \b10_carry__1_n_7\ : STD_LOGIC;
  signal b10_carry_i_1_n_0 : STD_LOGIC;
  signal b10_carry_i_2_n_0 : STD_LOGIC;
  signal b10_carry_i_3_n_0 : STD_LOGIC;
  signal b10_carry_n_0 : STD_LOGIC;
  signal b10_carry_n_1 : STD_LOGIC;
  signal b10_carry_n_2 : STD_LOGIC;
  signal b10_carry_n_3 : STD_LOGIC;
  signal b10_carry_n_4 : STD_LOGIC;
  signal b10_carry_n_5 : STD_LOGIC;
  signal b2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b20 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \b20__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_n_0\ : STD_LOGIC;
  signal \b20__24_carry__0_n_1\ : STD_LOGIC;
  signal \b20__24_carry__0_n_2\ : STD_LOGIC;
  signal \b20__24_carry__0_n_3\ : STD_LOGIC;
  signal \b20__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \b20__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \b20__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \b20__24_carry__1_n_3\ : STD_LOGIC;
  signal \b20__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \b20__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \b20__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \b20__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \b20__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \b20__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \b20__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \b20__24_carry_n_0\ : STD_LOGIC;
  signal \b20__24_carry_n_1\ : STD_LOGIC;
  signal \b20__24_carry_n_2\ : STD_LOGIC;
  signal \b20__24_carry_n_3\ : STD_LOGIC;
  signal \b20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b20_carry__0_n_0\ : STD_LOGIC;
  signal \b20_carry__0_n_1\ : STD_LOGIC;
  signal \b20_carry__0_n_2\ : STD_LOGIC;
  signal \b20_carry__0_n_3\ : STD_LOGIC;
  signal \b20_carry__0_n_4\ : STD_LOGIC;
  signal \b20_carry__0_n_5\ : STD_LOGIC;
  signal \b20_carry__0_n_6\ : STD_LOGIC;
  signal \b20_carry__0_n_7\ : STD_LOGIC;
  signal \b20_carry__1_n_2\ : STD_LOGIC;
  signal \b20_carry__1_n_7\ : STD_LOGIC;
  signal b20_carry_i_1_n_0 : STD_LOGIC;
  signal b20_carry_i_2_n_0 : STD_LOGIC;
  signal b20_carry_i_3_n_0 : STD_LOGIC;
  signal b20_carry_n_0 : STD_LOGIC;
  signal b20_carry_n_1 : STD_LOGIC;
  signal b20_carry_n_2 : STD_LOGIC;
  signal b20_carry_n_3 : STD_LOGIC;
  signal b20_carry_n_4 : STD_LOGIC;
  signal b20_carry_n_5 : STD_LOGIC;
  signal b3 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b30 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \b30__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_n_0\ : STD_LOGIC;
  signal \b30__24_carry__0_n_1\ : STD_LOGIC;
  signal \b30__24_carry__0_n_2\ : STD_LOGIC;
  signal \b30__24_carry__0_n_3\ : STD_LOGIC;
  signal \b30__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \b30__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \b30__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \b30__24_carry__1_n_3\ : STD_LOGIC;
  signal \b30__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \b30__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \b30__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \b30__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \b30__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \b30__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \b30__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \b30__24_carry_n_0\ : STD_LOGIC;
  signal \b30__24_carry_n_1\ : STD_LOGIC;
  signal \b30__24_carry_n_2\ : STD_LOGIC;
  signal \b30__24_carry_n_3\ : STD_LOGIC;
  signal \b30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b30_carry__0_n_0\ : STD_LOGIC;
  signal \b30_carry__0_n_1\ : STD_LOGIC;
  signal \b30_carry__0_n_2\ : STD_LOGIC;
  signal \b30_carry__0_n_3\ : STD_LOGIC;
  signal \b30_carry__0_n_4\ : STD_LOGIC;
  signal \b30_carry__0_n_5\ : STD_LOGIC;
  signal \b30_carry__0_n_6\ : STD_LOGIC;
  signal \b30_carry__0_n_7\ : STD_LOGIC;
  signal \b30_carry__1_n_2\ : STD_LOGIC;
  signal \b30_carry__1_n_7\ : STD_LOGIC;
  signal b30_carry_i_1_n_0 : STD_LOGIC;
  signal b30_carry_i_2_n_0 : STD_LOGIC;
  signal b30_carry_i_3_n_0 : STD_LOGIC;
  signal b30_carry_n_0 : STD_LOGIC;
  signal b30_carry_n_1 : STD_LOGIC;
  signal b30_carry_n_2 : STD_LOGIC;
  signal b30_carry_n_3 : STD_LOGIC;
  signal b30_carry_n_4 : STD_LOGIC;
  signal b30_carry_n_5 : STD_LOGIC;
  signal b4 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal b40 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \b40__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_n_0\ : STD_LOGIC;
  signal \b40__24_carry__0_n_1\ : STD_LOGIC;
  signal \b40__24_carry__0_n_2\ : STD_LOGIC;
  signal \b40__24_carry__0_n_3\ : STD_LOGIC;
  signal \b40__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \b40__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \b40__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \b40__24_carry__1_n_3\ : STD_LOGIC;
  signal \b40__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \b40__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \b40__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \b40__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \b40__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \b40__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \b40__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \b40__24_carry_n_0\ : STD_LOGIC;
  signal \b40__24_carry_n_1\ : STD_LOGIC;
  signal \b40__24_carry_n_2\ : STD_LOGIC;
  signal \b40__24_carry_n_3\ : STD_LOGIC;
  signal \b40_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \b40_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \b40_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \b40_carry__0_n_0\ : STD_LOGIC;
  signal \b40_carry__0_n_1\ : STD_LOGIC;
  signal \b40_carry__0_n_2\ : STD_LOGIC;
  signal \b40_carry__0_n_3\ : STD_LOGIC;
  signal \b40_carry__0_n_4\ : STD_LOGIC;
  signal \b40_carry__0_n_5\ : STD_LOGIC;
  signal \b40_carry__0_n_6\ : STD_LOGIC;
  signal \b40_carry__0_n_7\ : STD_LOGIC;
  signal \b40_carry__1_n_2\ : STD_LOGIC;
  signal \b40_carry__1_n_7\ : STD_LOGIC;
  signal b40_carry_i_1_n_0 : STD_LOGIC;
  signal b40_carry_i_2_n_0 : STD_LOGIC;
  signal b40_carry_i_3_n_0 : STD_LOGIC;
  signal b40_carry_n_0 : STD_LOGIC;
  signal b40_carry_n_1 : STD_LOGIC;
  signal b40_carry_n_2 : STD_LOGIC;
  signal b40_carry_n_3 : STD_LOGIC;
  signal b40_carry_n_4 : STD_LOGIC;
  signal b40_carry_n_5 : STD_LOGIC;
  signal g1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g10 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \g10__27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_n_0\ : STD_LOGIC;
  signal \g10__27_carry__0_n_1\ : STD_LOGIC;
  signal \g10__27_carry__0_n_2\ : STD_LOGIC;
  signal \g10__27_carry__0_n_3\ : STD_LOGIC;
  signal \g10__27_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_n_0\ : STD_LOGIC;
  signal \g10__27_carry__1_n_1\ : STD_LOGIC;
  signal \g10__27_carry__1_n_2\ : STD_LOGIC;
  signal \g10__27_carry__1_n_3\ : STD_LOGIC;
  signal \g10__27_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \g10__27_carry_i_1_n_0\ : STD_LOGIC;
  signal \g10__27_carry_i_2_n_0\ : STD_LOGIC;
  signal \g10__27_carry_i_3_n_0\ : STD_LOGIC;
  signal \g10__27_carry_n_0\ : STD_LOGIC;
  signal \g10__27_carry_n_1\ : STD_LOGIC;
  signal \g10__27_carry_n_2\ : STD_LOGIC;
  signal \g10__27_carry_n_3\ : STD_LOGIC;
  signal \g10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g10_carry__0_n_0\ : STD_LOGIC;
  signal \g10_carry__0_n_1\ : STD_LOGIC;
  signal \g10_carry__0_n_2\ : STD_LOGIC;
  signal \g10_carry__0_n_3\ : STD_LOGIC;
  signal \g10_carry__0_n_4\ : STD_LOGIC;
  signal \g10_carry__0_n_5\ : STD_LOGIC;
  signal \g10_carry__0_n_6\ : STD_LOGIC;
  signal \g10_carry__0_n_7\ : STD_LOGIC;
  signal \g10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g10_carry__1_n_1\ : STD_LOGIC;
  signal \g10_carry__1_n_3\ : STD_LOGIC;
  signal \g10_carry__1_n_6\ : STD_LOGIC;
  signal \g10_carry__1_n_7\ : STD_LOGIC;
  signal g10_carry_i_1_n_0 : STD_LOGIC;
  signal g10_carry_i_2_n_0 : STD_LOGIC;
  signal g10_carry_i_3_n_0 : STD_LOGIC;
  signal g10_carry_n_0 : STD_LOGIC;
  signal g10_carry_n_1 : STD_LOGIC;
  signal g10_carry_n_2 : STD_LOGIC;
  signal g10_carry_n_3 : STD_LOGIC;
  signal g10_carry_n_4 : STD_LOGIC;
  signal g10_carry_n_5 : STD_LOGIC;
  signal g2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g20 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \g20__27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_n_0\ : STD_LOGIC;
  signal \g20__27_carry__0_n_1\ : STD_LOGIC;
  signal \g20__27_carry__0_n_2\ : STD_LOGIC;
  signal \g20__27_carry__0_n_3\ : STD_LOGIC;
  signal \g20__27_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_n_0\ : STD_LOGIC;
  signal \g20__27_carry__1_n_1\ : STD_LOGIC;
  signal \g20__27_carry__1_n_2\ : STD_LOGIC;
  signal \g20__27_carry__1_n_3\ : STD_LOGIC;
  signal \g20__27_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \g20__27_carry_i_1_n_0\ : STD_LOGIC;
  signal \g20__27_carry_i_2_n_0\ : STD_LOGIC;
  signal \g20__27_carry_i_3_n_0\ : STD_LOGIC;
  signal \g20__27_carry_n_0\ : STD_LOGIC;
  signal \g20__27_carry_n_1\ : STD_LOGIC;
  signal \g20__27_carry_n_2\ : STD_LOGIC;
  signal \g20__27_carry_n_3\ : STD_LOGIC;
  signal \g20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g20_carry__0_n_0\ : STD_LOGIC;
  signal \g20_carry__0_n_1\ : STD_LOGIC;
  signal \g20_carry__0_n_2\ : STD_LOGIC;
  signal \g20_carry__0_n_3\ : STD_LOGIC;
  signal \g20_carry__0_n_4\ : STD_LOGIC;
  signal \g20_carry__0_n_5\ : STD_LOGIC;
  signal \g20_carry__0_n_6\ : STD_LOGIC;
  signal \g20_carry__0_n_7\ : STD_LOGIC;
  signal \g20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g20_carry__1_n_1\ : STD_LOGIC;
  signal \g20_carry__1_n_3\ : STD_LOGIC;
  signal \g20_carry__1_n_6\ : STD_LOGIC;
  signal \g20_carry__1_n_7\ : STD_LOGIC;
  signal g20_carry_i_1_n_0 : STD_LOGIC;
  signal g20_carry_i_2_n_0 : STD_LOGIC;
  signal g20_carry_i_3_n_0 : STD_LOGIC;
  signal g20_carry_n_0 : STD_LOGIC;
  signal g20_carry_n_1 : STD_LOGIC;
  signal g20_carry_n_2 : STD_LOGIC;
  signal g20_carry_n_3 : STD_LOGIC;
  signal g20_carry_n_4 : STD_LOGIC;
  signal g20_carry_n_5 : STD_LOGIC;
  signal g3 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g30 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \g30__27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_n_0\ : STD_LOGIC;
  signal \g30__27_carry__0_n_1\ : STD_LOGIC;
  signal \g30__27_carry__0_n_2\ : STD_LOGIC;
  signal \g30__27_carry__0_n_3\ : STD_LOGIC;
  signal \g30__27_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_n_0\ : STD_LOGIC;
  signal \g30__27_carry__1_n_1\ : STD_LOGIC;
  signal \g30__27_carry__1_n_2\ : STD_LOGIC;
  signal \g30__27_carry__1_n_3\ : STD_LOGIC;
  signal \g30__27_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \g30__27_carry_i_1_n_0\ : STD_LOGIC;
  signal \g30__27_carry_i_2_n_0\ : STD_LOGIC;
  signal \g30__27_carry_i_3_n_0\ : STD_LOGIC;
  signal \g30__27_carry_n_0\ : STD_LOGIC;
  signal \g30__27_carry_n_1\ : STD_LOGIC;
  signal \g30__27_carry_n_2\ : STD_LOGIC;
  signal \g30__27_carry_n_3\ : STD_LOGIC;
  signal \g30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g30_carry__0_n_0\ : STD_LOGIC;
  signal \g30_carry__0_n_1\ : STD_LOGIC;
  signal \g30_carry__0_n_2\ : STD_LOGIC;
  signal \g30_carry__0_n_3\ : STD_LOGIC;
  signal \g30_carry__0_n_4\ : STD_LOGIC;
  signal \g30_carry__0_n_5\ : STD_LOGIC;
  signal \g30_carry__0_n_6\ : STD_LOGIC;
  signal \g30_carry__0_n_7\ : STD_LOGIC;
  signal \g30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g30_carry__1_n_1\ : STD_LOGIC;
  signal \g30_carry__1_n_3\ : STD_LOGIC;
  signal \g30_carry__1_n_6\ : STD_LOGIC;
  signal \g30_carry__1_n_7\ : STD_LOGIC;
  signal g30_carry_i_1_n_0 : STD_LOGIC;
  signal g30_carry_i_2_n_0 : STD_LOGIC;
  signal g30_carry_i_3_n_0 : STD_LOGIC;
  signal g30_carry_n_0 : STD_LOGIC;
  signal g30_carry_n_1 : STD_LOGIC;
  signal g30_carry_n_2 : STD_LOGIC;
  signal g30_carry_n_3 : STD_LOGIC;
  signal g30_carry_n_4 : STD_LOGIC;
  signal g30_carry_n_5 : STD_LOGIC;
  signal g4 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal g40 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \g40__27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_n_0\ : STD_LOGIC;
  signal \g40__27_carry__0_n_1\ : STD_LOGIC;
  signal \g40__27_carry__0_n_2\ : STD_LOGIC;
  signal \g40__27_carry__0_n_3\ : STD_LOGIC;
  signal \g40__27_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_n_0\ : STD_LOGIC;
  signal \g40__27_carry__1_n_1\ : STD_LOGIC;
  signal \g40__27_carry__1_n_2\ : STD_LOGIC;
  signal \g40__27_carry__1_n_3\ : STD_LOGIC;
  signal \g40__27_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \g40__27_carry_i_1_n_0\ : STD_LOGIC;
  signal \g40__27_carry_i_2_n_0\ : STD_LOGIC;
  signal \g40__27_carry_i_3_n_0\ : STD_LOGIC;
  signal \g40__27_carry_n_0\ : STD_LOGIC;
  signal \g40__27_carry_n_1\ : STD_LOGIC;
  signal \g40__27_carry_n_2\ : STD_LOGIC;
  signal \g40__27_carry_n_3\ : STD_LOGIC;
  signal \g40_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \g40_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \g40_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \g40_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \g40_carry__0_n_0\ : STD_LOGIC;
  signal \g40_carry__0_n_1\ : STD_LOGIC;
  signal \g40_carry__0_n_2\ : STD_LOGIC;
  signal \g40_carry__0_n_3\ : STD_LOGIC;
  signal \g40_carry__0_n_4\ : STD_LOGIC;
  signal \g40_carry__0_n_5\ : STD_LOGIC;
  signal \g40_carry__0_n_6\ : STD_LOGIC;
  signal \g40_carry__0_n_7\ : STD_LOGIC;
  signal \g40_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \g40_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \g40_carry__1_n_1\ : STD_LOGIC;
  signal \g40_carry__1_n_3\ : STD_LOGIC;
  signal \g40_carry__1_n_6\ : STD_LOGIC;
  signal \g40_carry__1_n_7\ : STD_LOGIC;
  signal g40_carry_i_1_n_0 : STD_LOGIC;
  signal g40_carry_i_2_n_0 : STD_LOGIC;
  signal g40_carry_i_3_n_0 : STD_LOGIC;
  signal g40_carry_n_0 : STD_LOGIC;
  signal g40_carry_n_1 : STD_LOGIC;
  signal g40_carry_n_2 : STD_LOGIC;
  signal g40_carry_n_3 : STD_LOGIC;
  signal g40_carry_n_4 : STD_LOGIC;
  signal g40_carry_n_5 : STD_LOGIC;
  signal m_axis_gray_tlast : STD_LOGIC;
  signal m_axis_gray_tuser : STD_LOGIC;
  signal r1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r10 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \r10__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_n_0\ : STD_LOGIC;
  signal \r10__25_carry__0_n_1\ : STD_LOGIC;
  signal \r10__25_carry__0_n_2\ : STD_LOGIC;
  signal \r10__25_carry__0_n_3\ : STD_LOGIC;
  signal \r10__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r10__25_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r10__25_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r10__25_carry__1_n_0\ : STD_LOGIC;
  signal \r10__25_carry__1_n_1\ : STD_LOGIC;
  signal \r10__25_carry__1_n_2\ : STD_LOGIC;
  signal \r10__25_carry__1_n_3\ : STD_LOGIC;
  signal \r10__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \r10__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \r10__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \r10__25_carry_n_0\ : STD_LOGIC;
  signal \r10__25_carry_n_1\ : STD_LOGIC;
  signal \r10__25_carry_n_2\ : STD_LOGIC;
  signal \r10__25_carry_n_3\ : STD_LOGIC;
  signal \r10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r10_carry__0_n_0\ : STD_LOGIC;
  signal \r10_carry__0_n_1\ : STD_LOGIC;
  signal \r10_carry__0_n_2\ : STD_LOGIC;
  signal \r10_carry__0_n_3\ : STD_LOGIC;
  signal \r10_carry__0_n_4\ : STD_LOGIC;
  signal \r10_carry__0_n_5\ : STD_LOGIC;
  signal \r10_carry__0_n_6\ : STD_LOGIC;
  signal \r10_carry__0_n_7\ : STD_LOGIC;
  signal \r10_carry__1_n_2\ : STD_LOGIC;
  signal \r10_carry__1_n_7\ : STD_LOGIC;
  signal r10_carry_i_1_n_0 : STD_LOGIC;
  signal r10_carry_i_2_n_0 : STD_LOGIC;
  signal r10_carry_i_3_n_0 : STD_LOGIC;
  signal r10_carry_n_0 : STD_LOGIC;
  signal r10_carry_n_1 : STD_LOGIC;
  signal r10_carry_n_2 : STD_LOGIC;
  signal r10_carry_n_3 : STD_LOGIC;
  signal r10_carry_n_4 : STD_LOGIC;
  signal r10_carry_n_5 : STD_LOGIC;
  signal r10_carry_n_6 : STD_LOGIC;
  signal r2 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r20 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \r20__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_n_0\ : STD_LOGIC;
  signal \r20__25_carry__0_n_1\ : STD_LOGIC;
  signal \r20__25_carry__0_n_2\ : STD_LOGIC;
  signal \r20__25_carry__0_n_3\ : STD_LOGIC;
  signal \r20__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r20__25_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r20__25_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r20__25_carry__1_n_0\ : STD_LOGIC;
  signal \r20__25_carry__1_n_1\ : STD_LOGIC;
  signal \r20__25_carry__1_n_2\ : STD_LOGIC;
  signal \r20__25_carry__1_n_3\ : STD_LOGIC;
  signal \r20__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \r20__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \r20__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \r20__25_carry_n_0\ : STD_LOGIC;
  signal \r20__25_carry_n_1\ : STD_LOGIC;
  signal \r20__25_carry_n_2\ : STD_LOGIC;
  signal \r20__25_carry_n_3\ : STD_LOGIC;
  signal \r20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r20_carry__0_n_0\ : STD_LOGIC;
  signal \r20_carry__0_n_1\ : STD_LOGIC;
  signal \r20_carry__0_n_2\ : STD_LOGIC;
  signal \r20_carry__0_n_3\ : STD_LOGIC;
  signal \r20_carry__0_n_4\ : STD_LOGIC;
  signal \r20_carry__0_n_5\ : STD_LOGIC;
  signal \r20_carry__0_n_6\ : STD_LOGIC;
  signal \r20_carry__0_n_7\ : STD_LOGIC;
  signal \r20_carry__1_n_2\ : STD_LOGIC;
  signal \r20_carry__1_n_7\ : STD_LOGIC;
  signal r20_carry_i_1_n_0 : STD_LOGIC;
  signal r20_carry_i_2_n_0 : STD_LOGIC;
  signal r20_carry_i_3_n_0 : STD_LOGIC;
  signal r20_carry_n_0 : STD_LOGIC;
  signal r20_carry_n_1 : STD_LOGIC;
  signal r20_carry_n_2 : STD_LOGIC;
  signal r20_carry_n_3 : STD_LOGIC;
  signal r20_carry_n_4 : STD_LOGIC;
  signal r20_carry_n_5 : STD_LOGIC;
  signal r20_carry_n_6 : STD_LOGIC;
  signal r3 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r30 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \r30__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_n_0\ : STD_LOGIC;
  signal \r30__25_carry__0_n_1\ : STD_LOGIC;
  signal \r30__25_carry__0_n_2\ : STD_LOGIC;
  signal \r30__25_carry__0_n_3\ : STD_LOGIC;
  signal \r30__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r30__25_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r30__25_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r30__25_carry__1_n_0\ : STD_LOGIC;
  signal \r30__25_carry__1_n_1\ : STD_LOGIC;
  signal \r30__25_carry__1_n_2\ : STD_LOGIC;
  signal \r30__25_carry__1_n_3\ : STD_LOGIC;
  signal \r30__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \r30__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \r30__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \r30__25_carry_n_0\ : STD_LOGIC;
  signal \r30__25_carry_n_1\ : STD_LOGIC;
  signal \r30__25_carry_n_2\ : STD_LOGIC;
  signal \r30__25_carry_n_3\ : STD_LOGIC;
  signal \r30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r30_carry__0_n_0\ : STD_LOGIC;
  signal \r30_carry__0_n_1\ : STD_LOGIC;
  signal \r30_carry__0_n_2\ : STD_LOGIC;
  signal \r30_carry__0_n_3\ : STD_LOGIC;
  signal \r30_carry__0_n_4\ : STD_LOGIC;
  signal \r30_carry__0_n_5\ : STD_LOGIC;
  signal \r30_carry__0_n_6\ : STD_LOGIC;
  signal \r30_carry__0_n_7\ : STD_LOGIC;
  signal \r30_carry__1_n_2\ : STD_LOGIC;
  signal \r30_carry__1_n_7\ : STD_LOGIC;
  signal r30_carry_i_1_n_0 : STD_LOGIC;
  signal r30_carry_i_2_n_0 : STD_LOGIC;
  signal r30_carry_i_3_n_0 : STD_LOGIC;
  signal r30_carry_n_0 : STD_LOGIC;
  signal r30_carry_n_1 : STD_LOGIC;
  signal r30_carry_n_2 : STD_LOGIC;
  signal r30_carry_n_3 : STD_LOGIC;
  signal r30_carry_n_4 : STD_LOGIC;
  signal r30_carry_n_5 : STD_LOGIC;
  signal r30_carry_n_6 : STD_LOGIC;
  signal r4 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal r40 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \r40__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_n_0\ : STD_LOGIC;
  signal \r40__25_carry__0_n_1\ : STD_LOGIC;
  signal \r40__25_carry__0_n_2\ : STD_LOGIC;
  signal \r40__25_carry__0_n_3\ : STD_LOGIC;
  signal \r40__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r40__25_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r40__25_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r40__25_carry__1_n_0\ : STD_LOGIC;
  signal \r40__25_carry__1_n_1\ : STD_LOGIC;
  signal \r40__25_carry__1_n_2\ : STD_LOGIC;
  signal \r40__25_carry__1_n_3\ : STD_LOGIC;
  signal \r40__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \r40__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \r40__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \r40__25_carry_n_0\ : STD_LOGIC;
  signal \r40__25_carry_n_1\ : STD_LOGIC;
  signal \r40__25_carry_n_2\ : STD_LOGIC;
  signal \r40__25_carry_n_3\ : STD_LOGIC;
  signal \r40_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r40_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r40_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r40_carry__0_n_0\ : STD_LOGIC;
  signal \r40_carry__0_n_1\ : STD_LOGIC;
  signal \r40_carry__0_n_2\ : STD_LOGIC;
  signal \r40_carry__0_n_3\ : STD_LOGIC;
  signal \r40_carry__0_n_4\ : STD_LOGIC;
  signal \r40_carry__0_n_5\ : STD_LOGIC;
  signal \r40_carry__0_n_6\ : STD_LOGIC;
  signal \r40_carry__0_n_7\ : STD_LOGIC;
  signal \r40_carry__1_n_2\ : STD_LOGIC;
  signal \r40_carry__1_n_7\ : STD_LOGIC;
  signal r40_carry_i_1_n_0 : STD_LOGIC;
  signal r40_carry_i_2_n_0 : STD_LOGIC;
  signal r40_carry_i_3_n_0 : STD_LOGIC;
  signal r40_carry_n_0 : STD_LOGIC;
  signal r40_carry_n_1 : STD_LOGIC;
  signal r40_carry_n_2 : STD_LOGIC;
  signal r40_carry_n_3 : STD_LOGIC;
  signal r40_carry_n_4 : STD_LOGIC;
  signal r40_carry_n_5 : STD_LOGIC;
  signal r40_carry_n_6 : STD_LOGIC;
  signal sum10 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum1[12]_i_10_n_0\ : STD_LOGIC;
  signal \sum1[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum1[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum1[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum1[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum1[12]_i_7_n_0\ : STD_LOGIC;
  signal \sum1[12]_i_8_n_0\ : STD_LOGIC;
  signal \sum1[12]_i_9_n_0\ : STD_LOGIC;
  signal \sum1[16]_i_2_n_0\ : STD_LOGIC;
  signal \sum1[16]_i_3_n_0\ : STD_LOGIC;
  signal \sum1[16]_i_4_n_0\ : STD_LOGIC;
  signal \sum1[16]_i_6_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_10_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_13_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_14_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_15_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_16_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_17_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_18_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_19_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_20_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_5_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_6_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_7_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_8_n_0\ : STD_LOGIC;
  signal \sum1[8]_i_9_n_0\ : STD_LOGIC;
  signal \sum1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum1_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \sum1_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \sum1_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \sum1_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \sum1_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum1_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum1_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \sum1_reg[16]_i_5_n_2\ : STD_LOGIC;
  signal \sum1_reg[16]_i_5_n_3\ : STD_LOGIC;
  signal \sum1_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \sum1_reg[8]_i_11_n_1\ : STD_LOGIC;
  signal \sum1_reg[8]_i_11_n_2\ : STD_LOGIC;
  signal \sum1_reg[8]_i_11_n_3\ : STD_LOGIC;
  signal \sum1_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \sum1_reg[8]_i_12_n_1\ : STD_LOGIC;
  signal \sum1_reg[8]_i_12_n_2\ : STD_LOGIC;
  signal \sum1_reg[8]_i_12_n_3\ : STD_LOGIC;
  signal \sum1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sum1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sum1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal sum20 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum2[12]_i_10_n_0\ : STD_LOGIC;
  signal \sum2[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum2[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum2[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum2[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum2[12]_i_7_n_0\ : STD_LOGIC;
  signal \sum2[12]_i_8_n_0\ : STD_LOGIC;
  signal \sum2[12]_i_9_n_0\ : STD_LOGIC;
  signal \sum2[16]_i_2_n_0\ : STD_LOGIC;
  signal \sum2[16]_i_3_n_0\ : STD_LOGIC;
  signal \sum2[16]_i_4_n_0\ : STD_LOGIC;
  signal \sum2[16]_i_6_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_10_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_13_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_14_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_15_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_16_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_17_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_18_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_19_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_20_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_5_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_6_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_7_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_8_n_0\ : STD_LOGIC;
  signal \sum2[8]_i_9_n_0\ : STD_LOGIC;
  signal \sum2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum2_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \sum2_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \sum2_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \sum2_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \sum2_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum2_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum2_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \sum2_reg[16]_i_5_n_2\ : STD_LOGIC;
  signal \sum2_reg[16]_i_5_n_3\ : STD_LOGIC;
  signal \sum2_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \sum2_reg[8]_i_11_n_1\ : STD_LOGIC;
  signal \sum2_reg[8]_i_11_n_2\ : STD_LOGIC;
  signal \sum2_reg[8]_i_11_n_3\ : STD_LOGIC;
  signal \sum2_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \sum2_reg[8]_i_12_n_1\ : STD_LOGIC;
  signal \sum2_reg[8]_i_12_n_2\ : STD_LOGIC;
  signal \sum2_reg[8]_i_12_n_3\ : STD_LOGIC;
  signal \sum2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum2_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum2_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sum2_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sum2_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal sum30 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum3[12]_i_10_n_0\ : STD_LOGIC;
  signal \sum3[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum3[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum3[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum3[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum3[12]_i_7_n_0\ : STD_LOGIC;
  signal \sum3[12]_i_8_n_0\ : STD_LOGIC;
  signal \sum3[12]_i_9_n_0\ : STD_LOGIC;
  signal \sum3[16]_i_2_n_0\ : STD_LOGIC;
  signal \sum3[16]_i_3_n_0\ : STD_LOGIC;
  signal \sum3[16]_i_4_n_0\ : STD_LOGIC;
  signal \sum3[16]_i_6_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_10_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_13_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_14_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_15_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_16_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_17_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_18_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_19_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_20_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_5_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_6_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_7_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_8_n_0\ : STD_LOGIC;
  signal \sum3[8]_i_9_n_0\ : STD_LOGIC;
  signal \sum3_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum3_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum3_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum3_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum3_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \sum3_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \sum3_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \sum3_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \sum3_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum3_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum3_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \sum3_reg[16]_i_5_n_2\ : STD_LOGIC;
  signal \sum3_reg[16]_i_5_n_3\ : STD_LOGIC;
  signal \sum3_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \sum3_reg[8]_i_11_n_1\ : STD_LOGIC;
  signal \sum3_reg[8]_i_11_n_2\ : STD_LOGIC;
  signal \sum3_reg[8]_i_11_n_3\ : STD_LOGIC;
  signal \sum3_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \sum3_reg[8]_i_12_n_1\ : STD_LOGIC;
  signal \sum3_reg[8]_i_12_n_2\ : STD_LOGIC;
  signal \sum3_reg[8]_i_12_n_3\ : STD_LOGIC;
  signal \sum3_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum3_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum3_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sum3_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sum3_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal sum40 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \sum4[12]_i_10_n_0\ : STD_LOGIC;
  signal \sum4[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum4[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum4[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum4[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum4[12]_i_7_n_0\ : STD_LOGIC;
  signal \sum4[12]_i_8_n_0\ : STD_LOGIC;
  signal \sum4[12]_i_9_n_0\ : STD_LOGIC;
  signal \sum4[16]_i_2_n_0\ : STD_LOGIC;
  signal \sum4[16]_i_3_n_0\ : STD_LOGIC;
  signal \sum4[16]_i_4_n_0\ : STD_LOGIC;
  signal \sum4[16]_i_6_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_10_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_13_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_14_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_15_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_16_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_17_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_18_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_19_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_20_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_5_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_6_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_7_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_8_n_0\ : STD_LOGIC;
  signal \sum4[8]_i_9_n_0\ : STD_LOGIC;
  signal \sum4_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum4_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum4_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum4_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum4_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \sum4_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \sum4_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \sum4_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \sum4_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum4_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum4_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \sum4_reg[16]_i_5_n_2\ : STD_LOGIC;
  signal \sum4_reg[16]_i_5_n_3\ : STD_LOGIC;
  signal \sum4_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \sum4_reg[8]_i_11_n_1\ : STD_LOGIC;
  signal \sum4_reg[8]_i_11_n_2\ : STD_LOGIC;
  signal \sum4_reg[8]_i_11_n_3\ : STD_LOGIC;
  signal \sum4_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \sum4_reg[8]_i_12_n_1\ : STD_LOGIC;
  signal \sum4_reg[8]_i_12_n_2\ : STD_LOGIC;
  signal \sum4_reg[8]_i_12_n_3\ : STD_LOGIC;
  signal \sum4_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum4_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum4_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum4_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum4_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum4_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sum4_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sum4_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal tlast : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tuser : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \tvalid_reg_n_0_[1]\ : STD_LOGIC;
  signal \NLW_b10__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_b10__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_b10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_b10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_b20__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_b20__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_b20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_b20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_b30__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_b30__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_b30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_b30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_b40__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_b40__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_b40_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_b40_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g10__27_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g10__27_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_g20__27_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g20__27_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_g30__27_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g30__27_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_g40__27_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_g40__27_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g40_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_g40_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r1_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r1_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r2_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r2_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r3_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r3_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r40_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r40_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r4_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r4_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum1_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum1_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum1_reg[16]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum1_reg[16]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum1_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum1_reg[8]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_sum1_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum2_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum2_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum2_reg[16]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum2_reg[16]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum2_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum2_reg[8]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_sum2_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum3_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum3_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum3_reg[16]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum3_reg[16]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum3_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum3_reg[8]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_sum3_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum4_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum4_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum4_reg[16]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sum4_reg[16]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum4_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum4_reg[8]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_sum4_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \b10__24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \b10__24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \b10__24_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \b20__24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \b20__24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \b20__24_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \b30__24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \b30__24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \b30__24_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \b40__24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \b40__24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \b40__24_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \g10__27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \g10__27_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \g10__27_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \g10__27_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \g10__27_carry__0_i_5\ : label is "lutpair4";
  attribute HLUTNM of \g10__27_carry__0_i_6\ : label is "lutpair3";
  attribute ADDER_THRESHOLD of \g10__27_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \g10__27_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \g20__27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \g20__27_carry__0\ : label is 35;
  attribute HLUTNM of \g20__27_carry__0_i_1\ : label is "lutpair9";
  attribute HLUTNM of \g20__27_carry__0_i_2\ : label is "lutpair8";
  attribute HLUTNM of \g20__27_carry__0_i_5\ : label is "lutpair9";
  attribute HLUTNM of \g20__27_carry__0_i_6\ : label is "lutpair8";
  attribute ADDER_THRESHOLD of \g20__27_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \g20__27_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \g30__27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \g30__27_carry__0\ : label is 35;
  attribute HLUTNM of \g30__27_carry__0_i_1\ : label is "lutpair14";
  attribute HLUTNM of \g30__27_carry__0_i_2\ : label is "lutpair13";
  attribute HLUTNM of \g30__27_carry__0_i_5\ : label is "lutpair14";
  attribute HLUTNM of \g30__27_carry__0_i_6\ : label is "lutpair13";
  attribute ADDER_THRESHOLD of \g30__27_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \g30__27_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \g40__27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \g40__27_carry__0\ : label is 35;
  attribute HLUTNM of \g40__27_carry__0_i_1\ : label is "lutpair19";
  attribute HLUTNM of \g40__27_carry__0_i_2\ : label is "lutpair18";
  attribute HLUTNM of \g40__27_carry__0_i_5\ : label is "lutpair19";
  attribute HLUTNM of \g40__27_carry__0_i_6\ : label is "lutpair18";
  attribute ADDER_THRESHOLD of \g40__27_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \g40__27_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_disp_tlast_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_disp_tuser_i_1 : label is "soft_lutpair0";
  attribute HLUTNM of \r10__25_carry__0_i_1\ : label is "lutpair1";
  attribute HLUTNM of \r10__25_carry__0_i_2\ : label is "lutpair0";
  attribute HLUTNM of \r10__25_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \r10__25_carry__0_i_5\ : label is "lutpair1";
  attribute HLUTNM of \r10__25_carry__0_i_6\ : label is "lutpair0";
  attribute HLUTNM of \r10__25_carry__1_i_1\ : label is "lutpair2";
  attribute HLUTNM of \r20__25_carry__0_i_1\ : label is "lutpair6";
  attribute HLUTNM of \r20__25_carry__0_i_2\ : label is "lutpair5";
  attribute HLUTNM of \r20__25_carry__0_i_4\ : label is "lutpair7";
  attribute HLUTNM of \r20__25_carry__0_i_5\ : label is "lutpair6";
  attribute HLUTNM of \r20__25_carry__0_i_6\ : label is "lutpair5";
  attribute HLUTNM of \r20__25_carry__1_i_1\ : label is "lutpair7";
  attribute HLUTNM of \r30__25_carry__0_i_1\ : label is "lutpair11";
  attribute HLUTNM of \r30__25_carry__0_i_2\ : label is "lutpair10";
  attribute HLUTNM of \r30__25_carry__0_i_4\ : label is "lutpair12";
  attribute HLUTNM of \r30__25_carry__0_i_5\ : label is "lutpair11";
  attribute HLUTNM of \r30__25_carry__0_i_6\ : label is "lutpair10";
  attribute HLUTNM of \r30__25_carry__1_i_1\ : label is "lutpair12";
  attribute HLUTNM of \r40__25_carry__0_i_1\ : label is "lutpair16";
  attribute HLUTNM of \r40__25_carry__0_i_2\ : label is "lutpair15";
  attribute HLUTNM of \r40__25_carry__0_i_4\ : label is "lutpair17";
  attribute HLUTNM of \r40__25_carry__0_i_5\ : label is "lutpair16";
  attribute HLUTNM of \r40__25_carry__0_i_6\ : label is "lutpair15";
  attribute HLUTNM of \r40__25_carry__1_i_1\ : label is "lutpair17";
begin
\b10__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \b10__24_carry_n_0\,
      CO(2) => \b10__24_carry_n_1\,
      CO(1) => \b10__24_carry_n_2\,
      CO(0) => \b10__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \b10__24_carry_i_1_n_0\,
      DI(2) => \b10__24_carry_i_2_n_0\,
      DI(1) => \b10__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => b10(6 downto 3),
      S(3) => \b10__24_carry_i_4_n_0\,
      S(2) => \b10__24_carry_i_5_n_0\,
      S(1) => \b10__24_carry_i_6_n_0\,
      S(0) => \b10__24_carry_i_7_n_0\
    );
\b10__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \b10__24_carry_n_0\,
      CO(3) => \b10__24_carry__0_n_0\,
      CO(2) => \b10__24_carry__0_n_1\,
      CO(1) => \b10__24_carry__0_n_2\,
      CO(0) => \b10__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \b10__24_carry__0_i_1_n_0\,
      DI(2) => \b10__24_carry__0_i_2_n_0\,
      DI(1) => \b10__24_carry__0_i_3_n_0\,
      DI(0) => \b10__24_carry__0_i_4_n_0\,
      O(3 downto 0) => b10(10 downto 7),
      S(3) => \b10__24_carry__0_i_5_n_0\,
      S(2) => \b10__24_carry__0_i_6_n_0\,
      S(1) => \b10__24_carry__0_i_7_n_0\,
      S(0) => \b10__24_carry__0_i_8_n_0\
    );
\b10__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \b10_carry__1_n_7\,
      I2 => s_axis_tdata(12),
      O => \b10__24_carry__0_i_1_n_0\
    );
\b10__24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \b10_carry__0_n_4\,
      I2 => s_axis_tdata(11),
      O => \b10__24_carry__0_i_2_n_0\
    );
\b10__24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \b10_carry__0_n_5\,
      I2 => s_axis_tdata(10),
      O => \b10__24_carry__0_i_3_n_0\
    );
\b10__24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \b10_carry__0_n_6\,
      I2 => s_axis_tdata(9),
      O => \b10__24_carry__0_i_4_n_0\
    );
\b10__24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \b10_carry__1_n_7\,
      I2 => s_axis_tdata(14),
      I3 => s_axis_tdata(15),
      I4 => \b10_carry__1_n_2\,
      I5 => s_axis_tdata(13),
      O => \b10__24_carry__0_i_5_n_0\
    );
\b10__24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \b10_carry__0_n_4\,
      I2 => s_axis_tdata(13),
      I3 => s_axis_tdata(14),
      I4 => \b10_carry__1_n_7\,
      I5 => s_axis_tdata(12),
      O => \b10__24_carry__0_i_6_n_0\
    );
\b10__24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \b10_carry__0_n_5\,
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(13),
      I4 => \b10_carry__0_n_4\,
      I5 => s_axis_tdata(11),
      O => \b10__24_carry__0_i_7_n_0\
    );
\b10__24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \b10_carry__0_n_6\,
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(12),
      I4 => \b10_carry__0_n_5\,
      I5 => s_axis_tdata(10),
      O => \b10__24_carry__0_i_8_n_0\
    );
\b10__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b10__24_carry__0_n_0\,
      CO(3 downto 1) => \NLW_b10__24_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \b10__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \b10__24_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_b10__24_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => b10(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \b10__24_carry__1_i_2_n_0\,
      S(0) => \b10__24_carry__1_i_3_n_0\
    );
\b10__24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \b10_carry__1_n_2\,
      I2 => s_axis_tdata(13),
      O => \b10__24_carry__1_i_1_n_0\
    );
\b10__24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(15),
      O => \b10__24_carry__1_i_2_n_0\
    );
\b10__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \b10_carry__1_n_2\,
      I2 => s_axis_tdata(15),
      I3 => s_axis_tdata(14),
      O => \b10__24_carry__1_i_3_n_0\
    );
\b10__24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \b10_carry__0_n_7\,
      I2 => s_axis_tdata(8),
      O => \b10__24_carry_i_1_n_0\
    );
\b10__24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \b10_carry__0_n_7\,
      I2 => s_axis_tdata(8),
      O => \b10__24_carry_i_2_n_0\
    );
\b10__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => b10_carry_n_5,
      I1 => s_axis_tdata(8),
      O => \b10__24_carry_i_3_n_0\
    );
\b10__24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \b10_carry__0_n_7\,
      I2 => s_axis_tdata(10),
      I3 => s_axis_tdata(11),
      I4 => \b10_carry__0_n_6\,
      I5 => s_axis_tdata(9),
      O => \b10__24_carry_i_4_n_0\
    );
\b10__24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \b10_carry__0_n_7\,
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(9),
      I4 => b10_carry_n_4,
      O => \b10__24_carry_i_5_n_0\
    );
\b10__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => b10_carry_n_5,
      I2 => b10_carry_n_4,
      I3 => s_axis_tdata(9),
      O => \b10__24_carry_i_6_n_0\
    );
\b10__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => b10_carry_n_5,
      O => \b10__24_carry_i_7_n_0\
    );
b10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => b10_carry_n_0,
      CO(2) => b10_carry_n_1,
      CO(1) => b10_carry_n_2,
      CO(0) => b10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(12 downto 10),
      DI(0) => '0',
      O(3) => b10_carry_n_4,
      O(2) => b10_carry_n_5,
      O(1 downto 0) => b10(2 downto 1),
      S(3) => b10_carry_i_1_n_0,
      S(2) => b10_carry_i_2_n_0,
      S(1) => b10_carry_i_3_n_0,
      S(0) => s_axis_tdata(9)
    );
\b10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => b10_carry_n_0,
      CO(3) => \b10_carry__0_n_0\,
      CO(2) => \b10_carry__0_n_1\,
      CO(1) => \b10_carry__0_n_2\,
      CO(0) => \b10_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(15 downto 13),
      O(3) => \b10_carry__0_n_4\,
      O(2) => \b10_carry__0_n_5\,
      O(1) => \b10_carry__0_n_6\,
      O(0) => \b10_carry__0_n_7\,
      S(3) => s_axis_tdata(14),
      S(2) => \b10_carry__0_i_1_n_0\,
      S(1) => \b10_carry__0_i_2_n_0\,
      S(0) => \b10_carry__0_i_3_n_0\
    );
\b10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(13),
      O => \b10_carry__0_i_1_n_0\
    );
\b10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(12),
      O => \b10_carry__0_i_2_n_0\
    );
\b10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => s_axis_tdata(11),
      O => \b10_carry__0_i_3_n_0\
    );
\b10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b10_carry__0_n_0\,
      CO(3 downto 2) => \NLW_b10_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \b10_carry__1_n_2\,
      CO(0) => \NLW_b10_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_b10_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \b10_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(15)
    );
b10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => s_axis_tdata(10),
      O => b10_carry_i_1_n_0
    );
b10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(9),
      O => b10_carry_i_2_n_0
    );
b10_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => s_axis_tdata(8),
      O => b10_carry_i_3_n_0
    );
\b1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(8),
      Q => b1(0),
      R => '0'
    );
\b1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b10(10),
      Q => b1(10),
      R => '0'
    );
\b1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b10(12),
      Q => b1(12),
      R => '0'
    );
\b1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b10(1),
      Q => b1(1),
      R => '0'
    );
\b1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b10(9),
      Q => b1(9),
      R => '0'
    );
\b20__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \b20__24_carry_n_0\,
      CO(2) => \b20__24_carry_n_1\,
      CO(1) => \b20__24_carry_n_2\,
      CO(0) => \b20__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \b20__24_carry_i_1_n_0\,
      DI(2) => \b20__24_carry_i_2_n_0\,
      DI(1) => \b20__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => b20(6 downto 3),
      S(3) => \b20__24_carry_i_4_n_0\,
      S(2) => \b20__24_carry_i_5_n_0\,
      S(1) => \b20__24_carry_i_6_n_0\,
      S(0) => \b20__24_carry_i_7_n_0\
    );
\b20__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \b20__24_carry_n_0\,
      CO(3) => \b20__24_carry__0_n_0\,
      CO(2) => \b20__24_carry__0_n_1\,
      CO(1) => \b20__24_carry__0_n_2\,
      CO(0) => \b20__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \b20__24_carry__0_i_1_n_0\,
      DI(2) => \b20__24_carry__0_i_2_n_0\,
      DI(1) => \b20__24_carry__0_i_3_n_0\,
      DI(0) => \b20__24_carry__0_i_4_n_0\,
      O(3 downto 0) => b20(10 downto 7),
      S(3) => \b20__24_carry__0_i_5_n_0\,
      S(2) => \b20__24_carry__0_i_6_n_0\,
      S(1) => \b20__24_carry__0_i_7_n_0\,
      S(0) => \b20__24_carry__0_i_8_n_0\
    );
\b20__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(38),
      I1 => \b20_carry__1_n_7\,
      I2 => s_axis_tdata(36),
      O => \b20__24_carry__0_i_1_n_0\
    );
\b20__24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(37),
      I1 => \b20_carry__0_n_4\,
      I2 => s_axis_tdata(35),
      O => \b20__24_carry__0_i_2_n_0\
    );
\b20__24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(36),
      I1 => \b20_carry__0_n_5\,
      I2 => s_axis_tdata(34),
      O => \b20__24_carry__0_i_3_n_0\
    );
\b20__24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(35),
      I1 => \b20_carry__0_n_6\,
      I2 => s_axis_tdata(33),
      O => \b20__24_carry__0_i_4_n_0\
    );
\b20__24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(36),
      I1 => \b20_carry__1_n_7\,
      I2 => s_axis_tdata(38),
      I3 => s_axis_tdata(39),
      I4 => \b20_carry__1_n_2\,
      I5 => s_axis_tdata(37),
      O => \b20__24_carry__0_i_5_n_0\
    );
\b20__24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(35),
      I1 => \b20_carry__0_n_4\,
      I2 => s_axis_tdata(37),
      I3 => s_axis_tdata(38),
      I4 => \b20_carry__1_n_7\,
      I5 => s_axis_tdata(36),
      O => \b20__24_carry__0_i_6_n_0\
    );
\b20__24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(34),
      I1 => \b20_carry__0_n_5\,
      I2 => s_axis_tdata(36),
      I3 => s_axis_tdata(37),
      I4 => \b20_carry__0_n_4\,
      I5 => s_axis_tdata(35),
      O => \b20__24_carry__0_i_7_n_0\
    );
\b20__24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(33),
      I1 => \b20_carry__0_n_6\,
      I2 => s_axis_tdata(35),
      I3 => s_axis_tdata(36),
      I4 => \b20_carry__0_n_5\,
      I5 => s_axis_tdata(34),
      O => \b20__24_carry__0_i_8_n_0\
    );
\b20__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b20__24_carry__0_n_0\,
      CO(3 downto 1) => \NLW_b20__24_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \b20__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \b20__24_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_b20__24_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => b20(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \b20__24_carry__1_i_2_n_0\,
      S(0) => \b20__24_carry__1_i_3_n_0\
    );
\b20__24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(39),
      I1 => \b20_carry__1_n_2\,
      I2 => s_axis_tdata(37),
      O => \b20__24_carry__1_i_1_n_0\
    );
\b20__24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(38),
      I1 => s_axis_tdata(39),
      O => \b20__24_carry__1_i_2_n_0\
    );
\b20__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => s_axis_tdata(37),
      I1 => \b20_carry__1_n_2\,
      I2 => s_axis_tdata(39),
      I3 => s_axis_tdata(38),
      O => \b20__24_carry__1_i_3_n_0\
    );
\b20__24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(34),
      I1 => \b20_carry__0_n_7\,
      I2 => s_axis_tdata(32),
      O => \b20__24_carry_i_1_n_0\
    );
\b20__24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_axis_tdata(34),
      I1 => \b20_carry__0_n_7\,
      I2 => s_axis_tdata(32),
      O => \b20__24_carry_i_2_n_0\
    );
\b20__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => b20_carry_n_5,
      I1 => s_axis_tdata(32),
      O => \b20__24_carry_i_3_n_0\
    );
\b20__24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(32),
      I1 => \b20_carry__0_n_7\,
      I2 => s_axis_tdata(34),
      I3 => s_axis_tdata(35),
      I4 => \b20_carry__0_n_6\,
      I5 => s_axis_tdata(33),
      O => \b20__24_carry_i_4_n_0\
    );
\b20__24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => s_axis_tdata(34),
      I1 => \b20_carry__0_n_7\,
      I2 => s_axis_tdata(32),
      I3 => s_axis_tdata(33),
      I4 => b20_carry_n_4,
      O => \b20__24_carry_i_5_n_0\
    );
\b20__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s_axis_tdata(32),
      I1 => b20_carry_n_5,
      I2 => b20_carry_n_4,
      I3 => s_axis_tdata(33),
      O => \b20__24_carry_i_6_n_0\
    );
\b20__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(32),
      I1 => b20_carry_n_5,
      O => \b20__24_carry_i_7_n_0\
    );
b20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => b20_carry_n_0,
      CO(2) => b20_carry_n_1,
      CO(1) => b20_carry_n_2,
      CO(0) => b20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(36 downto 34),
      DI(0) => '0',
      O(3) => b20_carry_n_4,
      O(2) => b20_carry_n_5,
      O(1 downto 0) => b20(2 downto 1),
      S(3) => b20_carry_i_1_n_0,
      S(2) => b20_carry_i_2_n_0,
      S(1) => b20_carry_i_3_n_0,
      S(0) => s_axis_tdata(33)
    );
\b20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => b20_carry_n_0,
      CO(3) => \b20_carry__0_n_0\,
      CO(2) => \b20_carry__0_n_1\,
      CO(1) => \b20_carry__0_n_2\,
      CO(0) => \b20_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(39 downto 37),
      O(3) => \b20_carry__0_n_4\,
      O(2) => \b20_carry__0_n_5\,
      O(1) => \b20_carry__0_n_6\,
      O(0) => \b20_carry__0_n_7\,
      S(3) => s_axis_tdata(38),
      S(2) => \b20_carry__0_i_1_n_0\,
      S(1) => \b20_carry__0_i_2_n_0\,
      S(0) => \b20_carry__0_i_3_n_0\
    );
\b20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(39),
      I1 => s_axis_tdata(37),
      O => \b20_carry__0_i_1_n_0\
    );
\b20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(38),
      I1 => s_axis_tdata(36),
      O => \b20_carry__0_i_2_n_0\
    );
\b20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(37),
      I1 => s_axis_tdata(35),
      O => \b20_carry__0_i_3_n_0\
    );
\b20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b20_carry__0_n_0\,
      CO(3 downto 2) => \NLW_b20_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \b20_carry__1_n_2\,
      CO(0) => \NLW_b20_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_b20_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \b20_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(39)
    );
b20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(36),
      I1 => s_axis_tdata(34),
      O => b20_carry_i_1_n_0
    );
b20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(35),
      I1 => s_axis_tdata(33),
      O => b20_carry_i_2_n_0
    );
b20_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(34),
      I1 => s_axis_tdata(32),
      O => b20_carry_i_3_n_0
    );
\b2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(32),
      Q => b2(0),
      R => '0'
    );
\b2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b20(10),
      Q => b2(10),
      R => '0'
    );
\b2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b20(12),
      Q => b2(12),
      R => '0'
    );
\b2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b20(1),
      Q => b2(1),
      R => '0'
    );
\b2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b20(9),
      Q => b2(9),
      R => '0'
    );
\b30__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \b30__24_carry_n_0\,
      CO(2) => \b30__24_carry_n_1\,
      CO(1) => \b30__24_carry_n_2\,
      CO(0) => \b30__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \b30__24_carry_i_1_n_0\,
      DI(2) => \b30__24_carry_i_2_n_0\,
      DI(1) => \b30__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => b30(6 downto 3),
      S(3) => \b30__24_carry_i_4_n_0\,
      S(2) => \b30__24_carry_i_5_n_0\,
      S(1) => \b30__24_carry_i_6_n_0\,
      S(0) => \b30__24_carry_i_7_n_0\
    );
\b30__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \b30__24_carry_n_0\,
      CO(3) => \b30__24_carry__0_n_0\,
      CO(2) => \b30__24_carry__0_n_1\,
      CO(1) => \b30__24_carry__0_n_2\,
      CO(0) => \b30__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \b30__24_carry__0_i_1_n_0\,
      DI(2) => \b30__24_carry__0_i_2_n_0\,
      DI(1) => \b30__24_carry__0_i_3_n_0\,
      DI(0) => \b30__24_carry__0_i_4_n_0\,
      O(3 downto 0) => b30(10 downto 7),
      S(3) => \b30__24_carry__0_i_5_n_0\,
      S(2) => \b30__24_carry__0_i_6_n_0\,
      S(1) => \b30__24_carry__0_i_7_n_0\,
      S(0) => \b30__24_carry__0_i_8_n_0\
    );
\b30__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(62),
      I1 => \b30_carry__1_n_7\,
      I2 => s_axis_tdata(60),
      O => \b30__24_carry__0_i_1_n_0\
    );
\b30__24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(61),
      I1 => \b30_carry__0_n_4\,
      I2 => s_axis_tdata(59),
      O => \b30__24_carry__0_i_2_n_0\
    );
\b30__24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(60),
      I1 => \b30_carry__0_n_5\,
      I2 => s_axis_tdata(58),
      O => \b30__24_carry__0_i_3_n_0\
    );
\b30__24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(59),
      I1 => \b30_carry__0_n_6\,
      I2 => s_axis_tdata(57),
      O => \b30__24_carry__0_i_4_n_0\
    );
\b30__24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(60),
      I1 => \b30_carry__1_n_7\,
      I2 => s_axis_tdata(62),
      I3 => s_axis_tdata(63),
      I4 => \b30_carry__1_n_2\,
      I5 => s_axis_tdata(61),
      O => \b30__24_carry__0_i_5_n_0\
    );
\b30__24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(59),
      I1 => \b30_carry__0_n_4\,
      I2 => s_axis_tdata(61),
      I3 => s_axis_tdata(62),
      I4 => \b30_carry__1_n_7\,
      I5 => s_axis_tdata(60),
      O => \b30__24_carry__0_i_6_n_0\
    );
\b30__24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(58),
      I1 => \b30_carry__0_n_5\,
      I2 => s_axis_tdata(60),
      I3 => s_axis_tdata(61),
      I4 => \b30_carry__0_n_4\,
      I5 => s_axis_tdata(59),
      O => \b30__24_carry__0_i_7_n_0\
    );
\b30__24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(57),
      I1 => \b30_carry__0_n_6\,
      I2 => s_axis_tdata(59),
      I3 => s_axis_tdata(60),
      I4 => \b30_carry__0_n_5\,
      I5 => s_axis_tdata(58),
      O => \b30__24_carry__0_i_8_n_0\
    );
\b30__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b30__24_carry__0_n_0\,
      CO(3 downto 1) => \NLW_b30__24_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \b30__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \b30__24_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_b30__24_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => b30(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \b30__24_carry__1_i_2_n_0\,
      S(0) => \b30__24_carry__1_i_3_n_0\
    );
\b30__24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(63),
      I1 => \b30_carry__1_n_2\,
      I2 => s_axis_tdata(61),
      O => \b30__24_carry__1_i_1_n_0\
    );
\b30__24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(62),
      I1 => s_axis_tdata(63),
      O => \b30__24_carry__1_i_2_n_0\
    );
\b30__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => s_axis_tdata(61),
      I1 => \b30_carry__1_n_2\,
      I2 => s_axis_tdata(63),
      I3 => s_axis_tdata(62),
      O => \b30__24_carry__1_i_3_n_0\
    );
\b30__24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(58),
      I1 => \b30_carry__0_n_7\,
      I2 => s_axis_tdata(56),
      O => \b30__24_carry_i_1_n_0\
    );
\b30__24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_axis_tdata(58),
      I1 => \b30_carry__0_n_7\,
      I2 => s_axis_tdata(56),
      O => \b30__24_carry_i_2_n_0\
    );
\b30__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => b30_carry_n_5,
      I1 => s_axis_tdata(56),
      O => \b30__24_carry_i_3_n_0\
    );
\b30__24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(56),
      I1 => \b30_carry__0_n_7\,
      I2 => s_axis_tdata(58),
      I3 => s_axis_tdata(59),
      I4 => \b30_carry__0_n_6\,
      I5 => s_axis_tdata(57),
      O => \b30__24_carry_i_4_n_0\
    );
\b30__24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => s_axis_tdata(58),
      I1 => \b30_carry__0_n_7\,
      I2 => s_axis_tdata(56),
      I3 => s_axis_tdata(57),
      I4 => b30_carry_n_4,
      O => \b30__24_carry_i_5_n_0\
    );
\b30__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s_axis_tdata(56),
      I1 => b30_carry_n_5,
      I2 => b30_carry_n_4,
      I3 => s_axis_tdata(57),
      O => \b30__24_carry_i_6_n_0\
    );
\b30__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(56),
      I1 => b30_carry_n_5,
      O => \b30__24_carry_i_7_n_0\
    );
b30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => b30_carry_n_0,
      CO(2) => b30_carry_n_1,
      CO(1) => b30_carry_n_2,
      CO(0) => b30_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(60 downto 58),
      DI(0) => '0',
      O(3) => b30_carry_n_4,
      O(2) => b30_carry_n_5,
      O(1 downto 0) => b30(2 downto 1),
      S(3) => b30_carry_i_1_n_0,
      S(2) => b30_carry_i_2_n_0,
      S(1) => b30_carry_i_3_n_0,
      S(0) => s_axis_tdata(57)
    );
\b30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => b30_carry_n_0,
      CO(3) => \b30_carry__0_n_0\,
      CO(2) => \b30_carry__0_n_1\,
      CO(1) => \b30_carry__0_n_2\,
      CO(0) => \b30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(63 downto 61),
      O(3) => \b30_carry__0_n_4\,
      O(2) => \b30_carry__0_n_5\,
      O(1) => \b30_carry__0_n_6\,
      O(0) => \b30_carry__0_n_7\,
      S(3) => s_axis_tdata(62),
      S(2) => \b30_carry__0_i_1_n_0\,
      S(1) => \b30_carry__0_i_2_n_0\,
      S(0) => \b30_carry__0_i_3_n_0\
    );
\b30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(63),
      I1 => s_axis_tdata(61),
      O => \b30_carry__0_i_1_n_0\
    );
\b30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(62),
      I1 => s_axis_tdata(60),
      O => \b30_carry__0_i_2_n_0\
    );
\b30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(61),
      I1 => s_axis_tdata(59),
      O => \b30_carry__0_i_3_n_0\
    );
\b30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b30_carry__0_n_0\,
      CO(3 downto 2) => \NLW_b30_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \b30_carry__1_n_2\,
      CO(0) => \NLW_b30_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_b30_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \b30_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(63)
    );
b30_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(60),
      I1 => s_axis_tdata(58),
      O => b30_carry_i_1_n_0
    );
b30_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(59),
      I1 => s_axis_tdata(57),
      O => b30_carry_i_2_n_0
    );
b30_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(58),
      I1 => s_axis_tdata(56),
      O => b30_carry_i_3_n_0
    );
\b3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(56),
      Q => b3(0),
      R => '0'
    );
\b3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b30(10),
      Q => b3(10),
      R => '0'
    );
\b3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b30(12),
      Q => b3(12),
      R => '0'
    );
\b3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b30(1),
      Q => b3(1),
      R => '0'
    );
\b3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b30(9),
      Q => b3(9),
      R => '0'
    );
\b40__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \b40__24_carry_n_0\,
      CO(2) => \b40__24_carry_n_1\,
      CO(1) => \b40__24_carry_n_2\,
      CO(0) => \b40__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \b40__24_carry_i_1_n_0\,
      DI(2) => \b40__24_carry_i_2_n_0\,
      DI(1) => \b40__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => b40(6 downto 3),
      S(3) => \b40__24_carry_i_4_n_0\,
      S(2) => \b40__24_carry_i_5_n_0\,
      S(1) => \b40__24_carry_i_6_n_0\,
      S(0) => \b40__24_carry_i_7_n_0\
    );
\b40__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \b40__24_carry_n_0\,
      CO(3) => \b40__24_carry__0_n_0\,
      CO(2) => \b40__24_carry__0_n_1\,
      CO(1) => \b40__24_carry__0_n_2\,
      CO(0) => \b40__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \b40__24_carry__0_i_1_n_0\,
      DI(2) => \b40__24_carry__0_i_2_n_0\,
      DI(1) => \b40__24_carry__0_i_3_n_0\,
      DI(0) => \b40__24_carry__0_i_4_n_0\,
      O(3 downto 0) => b40(10 downto 7),
      S(3) => \b40__24_carry__0_i_5_n_0\,
      S(2) => \b40__24_carry__0_i_6_n_0\,
      S(1) => \b40__24_carry__0_i_7_n_0\,
      S(0) => \b40__24_carry__0_i_8_n_0\
    );
\b40__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(86),
      I1 => \b40_carry__1_n_7\,
      I2 => s_axis_tdata(84),
      O => \b40__24_carry__0_i_1_n_0\
    );
\b40__24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(85),
      I1 => \b40_carry__0_n_4\,
      I2 => s_axis_tdata(83),
      O => \b40__24_carry__0_i_2_n_0\
    );
\b40__24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(84),
      I1 => \b40_carry__0_n_5\,
      I2 => s_axis_tdata(82),
      O => \b40__24_carry__0_i_3_n_0\
    );
\b40__24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(83),
      I1 => \b40_carry__0_n_6\,
      I2 => s_axis_tdata(81),
      O => \b40__24_carry__0_i_4_n_0\
    );
\b40__24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(84),
      I1 => \b40_carry__1_n_7\,
      I2 => s_axis_tdata(86),
      I3 => s_axis_tdata(87),
      I4 => \b40_carry__1_n_2\,
      I5 => s_axis_tdata(85),
      O => \b40__24_carry__0_i_5_n_0\
    );
\b40__24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(83),
      I1 => \b40_carry__0_n_4\,
      I2 => s_axis_tdata(85),
      I3 => s_axis_tdata(86),
      I4 => \b40_carry__1_n_7\,
      I5 => s_axis_tdata(84),
      O => \b40__24_carry__0_i_6_n_0\
    );
\b40__24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(82),
      I1 => \b40_carry__0_n_5\,
      I2 => s_axis_tdata(84),
      I3 => s_axis_tdata(85),
      I4 => \b40_carry__0_n_4\,
      I5 => s_axis_tdata(83),
      O => \b40__24_carry__0_i_7_n_0\
    );
\b40__24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(81),
      I1 => \b40_carry__0_n_6\,
      I2 => s_axis_tdata(83),
      I3 => s_axis_tdata(84),
      I4 => \b40_carry__0_n_5\,
      I5 => s_axis_tdata(82),
      O => \b40__24_carry__0_i_8_n_0\
    );
\b40__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b40__24_carry__0_n_0\,
      CO(3 downto 1) => \NLW_b40__24_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \b40__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \b40__24_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_b40__24_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => b40(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \b40__24_carry__1_i_2_n_0\,
      S(0) => \b40__24_carry__1_i_3_n_0\
    );
\b40__24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(87),
      I1 => \b40_carry__1_n_2\,
      I2 => s_axis_tdata(85),
      O => \b40__24_carry__1_i_1_n_0\
    );
\b40__24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(86),
      I1 => s_axis_tdata(87),
      O => \b40__24_carry__1_i_2_n_0\
    );
\b40__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => s_axis_tdata(85),
      I1 => \b40_carry__1_n_2\,
      I2 => s_axis_tdata(87),
      I3 => s_axis_tdata(86),
      O => \b40__24_carry__1_i_3_n_0\
    );
\b40__24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(82),
      I1 => \b40_carry__0_n_7\,
      I2 => s_axis_tdata(80),
      O => \b40__24_carry_i_1_n_0\
    );
\b40__24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_axis_tdata(82),
      I1 => \b40_carry__0_n_7\,
      I2 => s_axis_tdata(80),
      O => \b40__24_carry_i_2_n_0\
    );
\b40__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => b40_carry_n_5,
      I1 => s_axis_tdata(80),
      O => \b40__24_carry_i_3_n_0\
    );
\b40__24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(80),
      I1 => \b40_carry__0_n_7\,
      I2 => s_axis_tdata(82),
      I3 => s_axis_tdata(83),
      I4 => \b40_carry__0_n_6\,
      I5 => s_axis_tdata(81),
      O => \b40__24_carry_i_4_n_0\
    );
\b40__24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => s_axis_tdata(82),
      I1 => \b40_carry__0_n_7\,
      I2 => s_axis_tdata(80),
      I3 => s_axis_tdata(81),
      I4 => b40_carry_n_4,
      O => \b40__24_carry_i_5_n_0\
    );
\b40__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s_axis_tdata(80),
      I1 => b40_carry_n_5,
      I2 => b40_carry_n_4,
      I3 => s_axis_tdata(81),
      O => \b40__24_carry_i_6_n_0\
    );
\b40__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(80),
      I1 => b40_carry_n_5,
      O => \b40__24_carry_i_7_n_0\
    );
b40_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => b40_carry_n_0,
      CO(2) => b40_carry_n_1,
      CO(1) => b40_carry_n_2,
      CO(0) => b40_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(84 downto 82),
      DI(0) => '0',
      O(3) => b40_carry_n_4,
      O(2) => b40_carry_n_5,
      O(1 downto 0) => b40(2 downto 1),
      S(3) => b40_carry_i_1_n_0,
      S(2) => b40_carry_i_2_n_0,
      S(1) => b40_carry_i_3_n_0,
      S(0) => s_axis_tdata(81)
    );
\b40_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => b40_carry_n_0,
      CO(3) => \b40_carry__0_n_0\,
      CO(2) => \b40_carry__0_n_1\,
      CO(1) => \b40_carry__0_n_2\,
      CO(0) => \b40_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(87 downto 85),
      O(3) => \b40_carry__0_n_4\,
      O(2) => \b40_carry__0_n_5\,
      O(1) => \b40_carry__0_n_6\,
      O(0) => \b40_carry__0_n_7\,
      S(3) => s_axis_tdata(86),
      S(2) => \b40_carry__0_i_1_n_0\,
      S(1) => \b40_carry__0_i_2_n_0\,
      S(0) => \b40_carry__0_i_3_n_0\
    );
\b40_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(87),
      I1 => s_axis_tdata(85),
      O => \b40_carry__0_i_1_n_0\
    );
\b40_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(86),
      I1 => s_axis_tdata(84),
      O => \b40_carry__0_i_2_n_0\
    );
\b40_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(85),
      I1 => s_axis_tdata(83),
      O => \b40_carry__0_i_3_n_0\
    );
\b40_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \b40_carry__0_n_0\,
      CO(3 downto 2) => \NLW_b40_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \b40_carry__1_n_2\,
      CO(0) => \NLW_b40_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_b40_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \b40_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(87)
    );
b40_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(84),
      I1 => s_axis_tdata(82),
      O => b40_carry_i_1_n_0
    );
b40_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(83),
      I1 => s_axis_tdata(81),
      O => b40_carry_i_2_n_0
    );
b40_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(82),
      I1 => s_axis_tdata(80),
      O => b40_carry_i_3_n_0
    );
\b4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(80),
      Q => b4(0),
      R => '0'
    );
\b4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b40(10),
      Q => b4(10),
      R => '0'
    );
\b4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b40(12),
      Q => b4(12),
      R => '0'
    );
\b4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => b40(1),
      Q => b4(1),
      R => '0'
    );
\b4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => b40(9),
      Q => b4(9),
      R => '0'
    );
\g10__27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \g10__27_carry_n_0\,
      CO(2) => \g10__27_carry_n_1\,
      CO(1) => \g10__27_carry_n_2\,
      CO(0) => \g10__27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \g10_carry__0_n_6\,
      DI(2) => \g10_carry__0_n_7\,
      DI(1) => g10_carry_n_4,
      DI(0) => '0',
      O(3 downto 0) => g10(6 downto 3),
      S(3) => \g10__27_carry_i_1_n_0\,
      S(2) => \g10__27_carry_i_2_n_0\,
      S(1) => \g10__27_carry_i_3_n_0\,
      S(0) => g10_carry_n_5
    );
\g10__27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \g10__27_carry_n_0\,
      CO(3) => \g10__27_carry__0_n_0\,
      CO(2) => \g10__27_carry__0_n_1\,
      CO(1) => \g10__27_carry__0_n_2\,
      CO(0) => \g10__27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \g10__27_carry__0_i_1_n_0\,
      DI(2) => \g10__27_carry__0_i_2_n_0\,
      DI(1) => \g10__27_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(0),
      O(3 downto 0) => g10(10 downto 7),
      S(3) => \g10__27_carry__0_i_4_n_0\,
      S(2) => \g10__27_carry__0_i_5_n_0\,
      S(1) => \g10__27_carry__0_i_6_n_0\,
      S(0) => \g10__27_carry__0_i_7_n_0\
    );
\g10__27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \g10_carry__1_n_7\,
      I2 => s_axis_tdata(2),
      O => \g10__27_carry__0_i_1_n_0\
    );
\g10__27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \g10_carry__0_n_4\,
      I2 => s_axis_tdata(1),
      O => \g10__27_carry__0_i_2_n_0\
    );
\g10__27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(4),
      I2 => \g10_carry__0_n_4\,
      O => \g10__27_carry__0_i_3_n_0\
    );
\g10__27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \g10_carry__1_n_6\,
      I2 => s_axis_tdata(3),
      I3 => \g10__27_carry__0_i_1_n_0\,
      O => \g10__27_carry__0_i_4_n_0\
    );
\g10__27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \g10_carry__1_n_7\,
      I2 => s_axis_tdata(2),
      I3 => \g10__27_carry__0_i_2_n_0\,
      O => \g10__27_carry__0_i_5_n_0\
    );
\g10__27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \g10_carry__0_n_4\,
      I2 => s_axis_tdata(1),
      I3 => \g10_carry__0_n_5\,
      I4 => s_axis_tdata(3),
      O => \g10__27_carry__0_i_6_n_0\
    );
\g10__27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \g10_carry__0_n_5\,
      I2 => s_axis_tdata(0),
      O => \g10__27_carry__0_i_7_n_0\
    );
\g10__27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g10__27_carry__0_n_0\,
      CO(3) => \g10__27_carry__1_n_0\,
      CO(2) => \g10__27_carry__1_n_1\,
      CO(1) => \g10__27_carry__1_n_2\,
      CO(0) => \g10__27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \g10__27_carry__1_i_1_n_0\,
      DI(2) => \g10__27_carry__1_i_2_n_0\,
      DI(1) => \g10__27_carry__1_i_3_n_0\,
      DI(0) => \g10__27_carry__1_i_4_n_0\,
      O(3 downto 0) => g10(14 downto 11),
      S(3) => \g10__27_carry__1_i_5_n_0\,
      S(2) => \g10__27_carry__1_i_6_n_0\,
      S(1) => \g10__27_carry__1_i_7_n_0\,
      S(0) => \g10__27_carry__1_i_8_n_0\
    );
\g10__27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \g10_carry__1_n_1\,
      O => \g10__27_carry__1_i_1_n_0\
    );
\g10__27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \g10_carry__1_n_1\,
      O => \g10__27_carry__1_i_2_n_0\
    );
\g10__27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \g10_carry__1_n_1\,
      I2 => s_axis_tdata(4),
      O => \g10__27_carry__1_i_3_n_0\
    );
\g10__27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \g10_carry__1_n_6\,
      I2 => s_axis_tdata(3),
      O => \g10__27_carry__1_i_4_n_0\
    );
\g10__27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \g10_carry__1_n_1\,
      I2 => s_axis_tdata(7),
      O => \g10__27_carry__1_i_5_n_0\
    );
\g10__27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \g10_carry__1_n_1\,
      I2 => s_axis_tdata(6),
      O => \g10__27_carry__1_i_6_n_0\
    );
\g10__27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(7),
      I2 => \g10_carry__1_n_1\,
      I3 => s_axis_tdata(5),
      O => \g10__27_carry__1_i_7_n_0\
    );
\g10__27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g10__27_carry__1_i_4_n_0\,
      I1 => \g10_carry__1_n_1\,
      I2 => s_axis_tdata(7),
      I3 => s_axis_tdata(4),
      O => \g10__27_carry__1_i_8_n_0\
    );
\g10__27_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \g10__27_carry__1_n_0\,
      CO(3 downto 0) => \NLW_g10__27_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_g10__27_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => g10(15),
      S(3 downto 1) => B"000",
      S(0) => \g10__27_carry__2_i_1_n_0\
    );
\g10__27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \g10_carry__1_n_1\,
      O => \g10__27_carry__2_i_1_n_0\
    );
\g10__27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g10_carry__0_n_6\,
      I1 => s_axis_tdata(2),
      O => \g10__27_carry_i_1_n_0\
    );
\g10__27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g10_carry__0_n_7\,
      I1 => s_axis_tdata(1),
      O => \g10__27_carry_i_2_n_0\
    );
\g10__27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g10_carry_n_4,
      I1 => s_axis_tdata(0),
      O => \g10__27_carry_i_3_n_0\
    );
g10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => g10_carry_n_0,
      CO(2) => g10_carry_n_1,
      CO(1) => g10_carry_n_2,
      CO(0) => g10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => s_axis_tdata(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => g10_carry_n_4,
      O(2) => g10_carry_n_5,
      O(1 downto 0) => g10(2 downto 1),
      S(3) => g10_carry_i_1_n_0,
      S(2) => g10_carry_i_2_n_0,
      S(1) => g10_carry_i_3_n_0,
      S(0) => s_axis_tdata(0)
    );
\g10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => g10_carry_n_0,
      CO(3) => \g10_carry__0_n_0\,
      CO(2) => \g10_carry__0_n_1\,
      CO(1) => \g10_carry__0_n_2\,
      CO(0) => \g10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(5 downto 2),
      O(3) => \g10_carry__0_n_4\,
      O(2) => \g10_carry__0_n_5\,
      O(1) => \g10_carry__0_n_6\,
      O(0) => \g10_carry__0_n_7\,
      S(3) => \g10_carry__0_i_1_n_0\,
      S(2) => \g10_carry__0_i_2_n_0\,
      S(1) => \g10_carry__0_i_3_n_0\,
      S(0) => \g10_carry__0_i_4_n_0\
    );
\g10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => s_axis_tdata(7),
      O => \g10_carry__0_i_1_n_0\
    );
\g10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(6),
      O => \g10_carry__0_i_2_n_0\
    );
\g10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => s_axis_tdata(5),
      O => \g10_carry__0_i_3_n_0\
    );
\g10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_axis_tdata(4),
      O => \g10_carry__0_i_4_n_0\
    );
\g10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g10_carry__0_n_0\,
      CO(3) => \NLW_g10_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \g10_carry__1_n_1\,
      CO(1) => \NLW_g10_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \g10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => s_axis_tdata(7 downto 6),
      O(3 downto 2) => \NLW_g10_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \g10_carry__1_n_6\,
      O(0) => \g10_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \g10_carry__1_i_1_n_0\,
      S(0) => \g10_carry__1_i_2_n_0\
    );
\g10_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(7),
      O => \g10_carry__1_i_1_n_0\
    );
\g10_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(6),
      O => \g10_carry__1_i_2_n_0\
    );
g10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(3),
      O => g10_carry_i_1_n_0
    );
g10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => s_axis_tdata(2),
      O => g10_carry_i_2_n_0
    );
g10_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(1),
      O => g10_carry_i_3_n_0
    );
\g1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g10(10),
      Q => g1(10),
      R => '0'
    );
\g1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => g10(15),
      Q => g1(15),
      R => '0'
    );
\g1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g10(1),
      Q => g1(1),
      R => '0'
    );
\g1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => g10(9),
      Q => g1(9),
      R => '0'
    );
\g20__27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \g20__27_carry_n_0\,
      CO(2) => \g20__27_carry_n_1\,
      CO(1) => \g20__27_carry_n_2\,
      CO(0) => \g20__27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \g20_carry__0_n_6\,
      DI(2) => \g20_carry__0_n_7\,
      DI(1) => g20_carry_n_4,
      DI(0) => '0',
      O(3 downto 0) => g20(6 downto 3),
      S(3) => \g20__27_carry_i_1_n_0\,
      S(2) => \g20__27_carry_i_2_n_0\,
      S(1) => \g20__27_carry_i_3_n_0\,
      S(0) => g20_carry_n_5
    );
\g20__27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \g20__27_carry_n_0\,
      CO(3) => \g20__27_carry__0_n_0\,
      CO(2) => \g20__27_carry__0_n_1\,
      CO(1) => \g20__27_carry__0_n_2\,
      CO(0) => \g20__27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \g20__27_carry__0_i_1_n_0\,
      DI(2) => \g20__27_carry__0_i_2_n_0\,
      DI(1) => \g20__27_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(24),
      O(3 downto 0) => g20(10 downto 7),
      S(3) => \g20__27_carry__0_i_4_n_0\,
      S(2) => \g20__27_carry__0_i_5_n_0\,
      S(1) => \g20__27_carry__0_i_6_n_0\,
      S(0) => \g20__27_carry__0_i_7_n_0\
    );
\g20__27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => \g20_carry__1_n_7\,
      I2 => s_axis_tdata(26),
      O => \g20__27_carry__0_i_1_n_0\
    );
\g20__27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => \g20_carry__0_n_4\,
      I2 => s_axis_tdata(25),
      O => \g20__27_carry__0_i_2_n_0\
    );
\g20__27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => s_axis_tdata(28),
      I2 => \g20_carry__0_n_4\,
      O => \g20__27_carry__0_i_3_n_0\
    );
\g20__27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => \g20_carry__1_n_6\,
      I2 => s_axis_tdata(27),
      I3 => \g20__27_carry__0_i_1_n_0\,
      O => \g20__27_carry__0_i_4_n_0\
    );
\g20__27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => \g20_carry__1_n_7\,
      I2 => s_axis_tdata(26),
      I3 => \g20__27_carry__0_i_2_n_0\,
      O => \g20__27_carry__0_i_5_n_0\
    );
\g20__27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => \g20_carry__0_n_4\,
      I2 => s_axis_tdata(25),
      I3 => \g20_carry__0_n_5\,
      I4 => s_axis_tdata(27),
      O => \g20__27_carry__0_i_6_n_0\
    );
\g20__27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => \g20_carry__0_n_5\,
      I2 => s_axis_tdata(24),
      O => \g20__27_carry__0_i_7_n_0\
    );
\g20__27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g20__27_carry__0_n_0\,
      CO(3) => \g20__27_carry__1_n_0\,
      CO(2) => \g20__27_carry__1_n_1\,
      CO(1) => \g20__27_carry__1_n_2\,
      CO(0) => \g20__27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \g20__27_carry__1_i_1_n_0\,
      DI(2) => \g20__27_carry__1_i_2_n_0\,
      DI(1) => \g20__27_carry__1_i_3_n_0\,
      DI(0) => \g20__27_carry__1_i_4_n_0\,
      O(3 downto 0) => g20(14 downto 11),
      S(3) => \g20__27_carry__1_i_5_n_0\,
      S(2) => \g20__27_carry__1_i_6_n_0\,
      S(1) => \g20__27_carry__1_i_7_n_0\,
      S(0) => \g20__27_carry__1_i_8_n_0\
    );
\g20__27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => \g20_carry__1_n_1\,
      O => \g20__27_carry__1_i_1_n_0\
    );
\g20__27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => \g20_carry__1_n_1\,
      O => \g20__27_carry__1_i_2_n_0\
    );
\g20__27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => \g20_carry__1_n_1\,
      I2 => s_axis_tdata(28),
      O => \g20__27_carry__1_i_3_n_0\
    );
\g20__27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => \g20_carry__1_n_6\,
      I2 => s_axis_tdata(27),
      O => \g20__27_carry__1_i_4_n_0\
    );
\g20__27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => \g20_carry__1_n_1\,
      I2 => s_axis_tdata(31),
      O => \g20__27_carry__1_i_5_n_0\
    );
\g20__27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => \g20_carry__1_n_1\,
      I2 => s_axis_tdata(30),
      O => \g20__27_carry__1_i_6_n_0\
    );
\g20__27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => s_axis_tdata(31),
      I2 => \g20_carry__1_n_1\,
      I3 => s_axis_tdata(29),
      O => \g20__27_carry__1_i_7_n_0\
    );
\g20__27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g20__27_carry__1_i_4_n_0\,
      I1 => \g20_carry__1_n_1\,
      I2 => s_axis_tdata(31),
      I3 => s_axis_tdata(28),
      O => \g20__27_carry__1_i_8_n_0\
    );
\g20__27_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \g20__27_carry__1_n_0\,
      CO(3 downto 0) => \NLW_g20__27_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_g20__27_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => g20(15),
      S(3 downto 1) => B"000",
      S(0) => \g20__27_carry__2_i_1_n_0\
    );
\g20__27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => \g20_carry__1_n_1\,
      O => \g20__27_carry__2_i_1_n_0\
    );
\g20__27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g20_carry__0_n_6\,
      I1 => s_axis_tdata(26),
      O => \g20__27_carry_i_1_n_0\
    );
\g20__27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g20_carry__0_n_7\,
      I1 => s_axis_tdata(25),
      O => \g20__27_carry_i_2_n_0\
    );
\g20__27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g20_carry_n_4,
      I1 => s_axis_tdata(24),
      O => \g20__27_carry_i_3_n_0\
    );
g20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => g20_carry_n_0,
      CO(2) => g20_carry_n_1,
      CO(1) => g20_carry_n_2,
      CO(0) => g20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => s_axis_tdata(25 downto 24),
      DI(1 downto 0) => B"01",
      O(3) => g20_carry_n_4,
      O(2) => g20_carry_n_5,
      O(1 downto 0) => g20(2 downto 1),
      S(3) => g20_carry_i_1_n_0,
      S(2) => g20_carry_i_2_n_0,
      S(1) => g20_carry_i_3_n_0,
      S(0) => s_axis_tdata(24)
    );
\g20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => g20_carry_n_0,
      CO(3) => \g20_carry__0_n_0\,
      CO(2) => \g20_carry__0_n_1\,
      CO(1) => \g20_carry__0_n_2\,
      CO(0) => \g20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(29 downto 26),
      O(3) => \g20_carry__0_n_4\,
      O(2) => \g20_carry__0_n_5\,
      O(1) => \g20_carry__0_n_6\,
      O(0) => \g20_carry__0_n_7\,
      S(3) => \g20_carry__0_i_1_n_0\,
      S(2) => \g20_carry__0_i_2_n_0\,
      S(1) => \g20_carry__0_i_3_n_0\,
      S(0) => \g20_carry__0_i_4_n_0\
    );
\g20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => s_axis_tdata(31),
      O => \g20_carry__0_i_1_n_0\
    );
\g20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => s_axis_tdata(30),
      O => \g20_carry__0_i_2_n_0\
    );
\g20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => s_axis_tdata(29),
      O => \g20_carry__0_i_3_n_0\
    );
\g20_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(26),
      I1 => s_axis_tdata(28),
      O => \g20_carry__0_i_4_n_0\
    );
\g20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g20_carry__0_n_0\,
      CO(3) => \NLW_g20_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \g20_carry__1_n_1\,
      CO(1) => \NLW_g20_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \g20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => s_axis_tdata(31 downto 30),
      O(3 downto 2) => \NLW_g20_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \g20_carry__1_n_6\,
      O(0) => \g20_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \g20_carry__1_i_1_n_0\,
      S(0) => \g20_carry__1_i_2_n_0\
    );
\g20_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(31),
      O => \g20_carry__1_i_1_n_0\
    );
\g20_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(30),
      O => \g20_carry__1_i_2_n_0\
    );
g20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => s_axis_tdata(27),
      O => g20_carry_i_1_n_0
    );
g20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => s_axis_tdata(26),
      O => g20_carry_i_2_n_0
    );
g20_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(25),
      O => g20_carry_i_3_n_0
    );
\g2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(10),
      Q => g2(10),
      R => '0'
    );
\g2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(11),
      Q => g2(11),
      R => '0'
    );
\g2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(12),
      Q => g2(12),
      R => '0'
    );
\g2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(13),
      Q => g2(13),
      R => '0'
    );
\g2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(14),
      Q => g2(14),
      R => '0'
    );
\g2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(15),
      Q => g2(15),
      R => '0'
    );
\g2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(1),
      Q => g2(1),
      R => '0'
    );
\g2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(2),
      Q => g2(2),
      R => '0'
    );
\g2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(3),
      Q => g2(3),
      R => '0'
    );
\g2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(4),
      Q => g2(4),
      R => '0'
    );
\g2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(5),
      Q => g2(5),
      R => '0'
    );
\g2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(6),
      Q => g2(6),
      R => '0'
    );
\g2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(7),
      Q => g2(7),
      R => '0'
    );
\g2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(8),
      Q => g2(8),
      R => '0'
    );
\g2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g20(9),
      Q => g2(9),
      R => '0'
    );
\g30__27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \g30__27_carry_n_0\,
      CO(2) => \g30__27_carry_n_1\,
      CO(1) => \g30__27_carry_n_2\,
      CO(0) => \g30__27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \g30_carry__0_n_6\,
      DI(2) => \g30_carry__0_n_7\,
      DI(1) => g30_carry_n_4,
      DI(0) => '0',
      O(3 downto 0) => g30(6 downto 3),
      S(3) => \g30__27_carry_i_1_n_0\,
      S(2) => \g30__27_carry_i_2_n_0\,
      S(1) => \g30__27_carry_i_3_n_0\,
      S(0) => g30_carry_n_5
    );
\g30__27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \g30__27_carry_n_0\,
      CO(3) => \g30__27_carry__0_n_0\,
      CO(2) => \g30__27_carry__0_n_1\,
      CO(1) => \g30__27_carry__0_n_2\,
      CO(0) => \g30__27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \g30__27_carry__0_i_1_n_0\,
      DI(2) => \g30__27_carry__0_i_2_n_0\,
      DI(1) => \g30__27_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(48),
      O(3 downto 0) => g30(10 downto 7),
      S(3) => \g30__27_carry__0_i_4_n_0\,
      S(2) => \g30__27_carry__0_i_5_n_0\,
      S(1) => \g30__27_carry__0_i_6_n_0\,
      S(0) => \g30__27_carry__0_i_7_n_0\
    );
\g30__27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(53),
      I1 => \g30_carry__1_n_7\,
      I2 => s_axis_tdata(50),
      O => \g30__27_carry__0_i_1_n_0\
    );
\g30__27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(52),
      I1 => \g30_carry__0_n_4\,
      I2 => s_axis_tdata(49),
      O => \g30__27_carry__0_i_2_n_0\
    );
\g30__27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(49),
      I1 => s_axis_tdata(52),
      I2 => \g30_carry__0_n_4\,
      O => \g30__27_carry__0_i_3_n_0\
    );
\g30__27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(54),
      I1 => \g30_carry__1_n_6\,
      I2 => s_axis_tdata(51),
      I3 => \g30__27_carry__0_i_1_n_0\,
      O => \g30__27_carry__0_i_4_n_0\
    );
\g30__27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(53),
      I1 => \g30_carry__1_n_7\,
      I2 => s_axis_tdata(50),
      I3 => \g30__27_carry__0_i_2_n_0\,
      O => \g30__27_carry__0_i_5_n_0\
    );
\g30__27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(52),
      I1 => \g30_carry__0_n_4\,
      I2 => s_axis_tdata(49),
      I3 => \g30_carry__0_n_5\,
      I4 => s_axis_tdata(51),
      O => \g30__27_carry__0_i_6_n_0\
    );
\g30__27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(51),
      I1 => \g30_carry__0_n_5\,
      I2 => s_axis_tdata(48),
      O => \g30__27_carry__0_i_7_n_0\
    );
\g30__27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g30__27_carry__0_n_0\,
      CO(3) => \g30__27_carry__1_n_0\,
      CO(2) => \g30__27_carry__1_n_1\,
      CO(1) => \g30__27_carry__1_n_2\,
      CO(0) => \g30__27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \g30__27_carry__1_i_1_n_0\,
      DI(2) => \g30__27_carry__1_i_2_n_0\,
      DI(1) => \g30__27_carry__1_i_3_n_0\,
      DI(0) => \g30__27_carry__1_i_4_n_0\,
      O(3 downto 0) => g30(14 downto 11),
      S(3) => \g30__27_carry__1_i_5_n_0\,
      S(2) => \g30__27_carry__1_i_6_n_0\,
      S(1) => \g30__27_carry__1_i_7_n_0\,
      S(0) => \g30__27_carry__1_i_8_n_0\
    );
\g30__27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(54),
      I1 => \g30_carry__1_n_1\,
      O => \g30__27_carry__1_i_1_n_0\
    );
\g30__27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(53),
      I1 => \g30_carry__1_n_1\,
      O => \g30__27_carry__1_i_2_n_0\
    );
\g30__27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(55),
      I1 => \g30_carry__1_n_1\,
      I2 => s_axis_tdata(52),
      O => \g30__27_carry__1_i_3_n_0\
    );
\g30__27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(54),
      I1 => \g30_carry__1_n_6\,
      I2 => s_axis_tdata(51),
      O => \g30__27_carry__1_i_4_n_0\
    );
\g30__27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(54),
      I1 => \g30_carry__1_n_1\,
      I2 => s_axis_tdata(55),
      O => \g30__27_carry__1_i_5_n_0\
    );
\g30__27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(53),
      I1 => \g30_carry__1_n_1\,
      I2 => s_axis_tdata(54),
      O => \g30__27_carry__1_i_6_n_0\
    );
\g30__27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => s_axis_tdata(52),
      I1 => s_axis_tdata(55),
      I2 => \g30_carry__1_n_1\,
      I3 => s_axis_tdata(53),
      O => \g30__27_carry__1_i_7_n_0\
    );
\g30__27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g30__27_carry__1_i_4_n_0\,
      I1 => \g30_carry__1_n_1\,
      I2 => s_axis_tdata(55),
      I3 => s_axis_tdata(52),
      O => \g30__27_carry__1_i_8_n_0\
    );
\g30__27_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \g30__27_carry__1_n_0\,
      CO(3 downto 0) => \NLW_g30__27_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_g30__27_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => g30(15),
      S(3 downto 1) => B"000",
      S(0) => \g30__27_carry__2_i_1_n_0\
    );
\g30__27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(55),
      I1 => \g30_carry__1_n_1\,
      O => \g30__27_carry__2_i_1_n_0\
    );
\g30__27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g30_carry__0_n_6\,
      I1 => s_axis_tdata(50),
      O => \g30__27_carry_i_1_n_0\
    );
\g30__27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g30_carry__0_n_7\,
      I1 => s_axis_tdata(49),
      O => \g30__27_carry_i_2_n_0\
    );
\g30__27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g30_carry_n_4,
      I1 => s_axis_tdata(48),
      O => \g30__27_carry_i_3_n_0\
    );
g30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => g30_carry_n_0,
      CO(2) => g30_carry_n_1,
      CO(1) => g30_carry_n_2,
      CO(0) => g30_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => s_axis_tdata(49 downto 48),
      DI(1 downto 0) => B"01",
      O(3) => g30_carry_n_4,
      O(2) => g30_carry_n_5,
      O(1 downto 0) => g30(2 downto 1),
      S(3) => g30_carry_i_1_n_0,
      S(2) => g30_carry_i_2_n_0,
      S(1) => g30_carry_i_3_n_0,
      S(0) => s_axis_tdata(48)
    );
\g30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => g30_carry_n_0,
      CO(3) => \g30_carry__0_n_0\,
      CO(2) => \g30_carry__0_n_1\,
      CO(1) => \g30_carry__0_n_2\,
      CO(0) => \g30_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(53 downto 50),
      O(3) => \g30_carry__0_n_4\,
      O(2) => \g30_carry__0_n_5\,
      O(1) => \g30_carry__0_n_6\,
      O(0) => \g30_carry__0_n_7\,
      S(3) => \g30_carry__0_i_1_n_0\,
      S(2) => \g30_carry__0_i_2_n_0\,
      S(1) => \g30_carry__0_i_3_n_0\,
      S(0) => \g30_carry__0_i_4_n_0\
    );
\g30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(53),
      I1 => s_axis_tdata(55),
      O => \g30_carry__0_i_1_n_0\
    );
\g30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(52),
      I1 => s_axis_tdata(54),
      O => \g30_carry__0_i_2_n_0\
    );
\g30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(51),
      I1 => s_axis_tdata(53),
      O => \g30_carry__0_i_3_n_0\
    );
\g30_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(50),
      I1 => s_axis_tdata(52),
      O => \g30_carry__0_i_4_n_0\
    );
\g30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g30_carry__0_n_0\,
      CO(3) => \NLW_g30_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \g30_carry__1_n_1\,
      CO(1) => \NLW_g30_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \g30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => s_axis_tdata(55 downto 54),
      O(3 downto 2) => \NLW_g30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \g30_carry__1_n_6\,
      O(0) => \g30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \g30_carry__1_i_1_n_0\,
      S(0) => \g30_carry__1_i_2_n_0\
    );
\g30_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(55),
      O => \g30_carry__1_i_1_n_0\
    );
\g30_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(54),
      O => \g30_carry__1_i_2_n_0\
    );
g30_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(49),
      I1 => s_axis_tdata(51),
      O => g30_carry_i_1_n_0
    );
g30_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(48),
      I1 => s_axis_tdata(50),
      O => g30_carry_i_2_n_0
    );
g30_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(49),
      O => g30_carry_i_3_n_0
    );
\g3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g30(10),
      Q => g3(10),
      R => '0'
    );
\g3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => g30(15),
      Q => g3(15),
      R => '0'
    );
\g3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g30(1),
      Q => g3(1),
      R => '0'
    );
\g3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => g30(9),
      Q => g3(9),
      R => '0'
    );
\g40__27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \g40__27_carry_n_0\,
      CO(2) => \g40__27_carry_n_1\,
      CO(1) => \g40__27_carry_n_2\,
      CO(0) => \g40__27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \g40_carry__0_n_6\,
      DI(2) => \g40_carry__0_n_7\,
      DI(1) => g40_carry_n_4,
      DI(0) => '0',
      O(3 downto 0) => g40(6 downto 3),
      S(3) => \g40__27_carry_i_1_n_0\,
      S(2) => \g40__27_carry_i_2_n_0\,
      S(1) => \g40__27_carry_i_3_n_0\,
      S(0) => g40_carry_n_5
    );
\g40__27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \g40__27_carry_n_0\,
      CO(3) => \g40__27_carry__0_n_0\,
      CO(2) => \g40__27_carry__0_n_1\,
      CO(1) => \g40__27_carry__0_n_2\,
      CO(0) => \g40__27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \g40__27_carry__0_i_1_n_0\,
      DI(2) => \g40__27_carry__0_i_2_n_0\,
      DI(1) => \g40__27_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(72),
      O(3 downto 0) => g40(10 downto 7),
      S(3) => \g40__27_carry__0_i_4_n_0\,
      S(2) => \g40__27_carry__0_i_5_n_0\,
      S(1) => \g40__27_carry__0_i_6_n_0\,
      S(0) => \g40__27_carry__0_i_7_n_0\
    );
\g40__27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(77),
      I1 => \g40_carry__1_n_7\,
      I2 => s_axis_tdata(74),
      O => \g40__27_carry__0_i_1_n_0\
    );
\g40__27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(76),
      I1 => \g40_carry__0_n_4\,
      I2 => s_axis_tdata(73),
      O => \g40__27_carry__0_i_2_n_0\
    );
\g40__27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(73),
      I1 => s_axis_tdata(76),
      I2 => \g40_carry__0_n_4\,
      O => \g40__27_carry__0_i_3_n_0\
    );
\g40__27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(78),
      I1 => \g40_carry__1_n_6\,
      I2 => s_axis_tdata(75),
      I3 => \g40__27_carry__0_i_1_n_0\,
      O => \g40__27_carry__0_i_4_n_0\
    );
\g40__27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(77),
      I1 => \g40_carry__1_n_7\,
      I2 => s_axis_tdata(74),
      I3 => \g40__27_carry__0_i_2_n_0\,
      O => \g40__27_carry__0_i_5_n_0\
    );
\g40__27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(76),
      I1 => \g40_carry__0_n_4\,
      I2 => s_axis_tdata(73),
      I3 => \g40_carry__0_n_5\,
      I4 => s_axis_tdata(75),
      O => \g40__27_carry__0_i_6_n_0\
    );
\g40__27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(75),
      I1 => \g40_carry__0_n_5\,
      I2 => s_axis_tdata(72),
      O => \g40__27_carry__0_i_7_n_0\
    );
\g40__27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g40__27_carry__0_n_0\,
      CO(3) => \g40__27_carry__1_n_0\,
      CO(2) => \g40__27_carry__1_n_1\,
      CO(1) => \g40__27_carry__1_n_2\,
      CO(0) => \g40__27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \g40__27_carry__1_i_1_n_0\,
      DI(2) => \g40__27_carry__1_i_2_n_0\,
      DI(1) => \g40__27_carry__1_i_3_n_0\,
      DI(0) => \g40__27_carry__1_i_4_n_0\,
      O(3 downto 0) => g40(14 downto 11),
      S(3) => \g40__27_carry__1_i_5_n_0\,
      S(2) => \g40__27_carry__1_i_6_n_0\,
      S(1) => \g40__27_carry__1_i_7_n_0\,
      S(0) => \g40__27_carry__1_i_8_n_0\
    );
\g40__27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(78),
      I1 => \g40_carry__1_n_1\,
      O => \g40__27_carry__1_i_1_n_0\
    );
\g40__27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(77),
      I1 => \g40_carry__1_n_1\,
      O => \g40__27_carry__1_i_2_n_0\
    );
\g40__27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(79),
      I1 => \g40_carry__1_n_1\,
      I2 => s_axis_tdata(76),
      O => \g40__27_carry__1_i_3_n_0\
    );
\g40__27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(78),
      I1 => \g40_carry__1_n_6\,
      I2 => s_axis_tdata(75),
      O => \g40__27_carry__1_i_4_n_0\
    );
\g40__27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(78),
      I1 => \g40_carry__1_n_1\,
      I2 => s_axis_tdata(79),
      O => \g40__27_carry__1_i_5_n_0\
    );
\g40__27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(77),
      I1 => \g40_carry__1_n_1\,
      I2 => s_axis_tdata(78),
      O => \g40__27_carry__1_i_6_n_0\
    );
\g40__27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => s_axis_tdata(76),
      I1 => s_axis_tdata(79),
      I2 => \g40_carry__1_n_1\,
      I3 => s_axis_tdata(77),
      O => \g40__27_carry__1_i_7_n_0\
    );
\g40__27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \g40__27_carry__1_i_4_n_0\,
      I1 => \g40_carry__1_n_1\,
      I2 => s_axis_tdata(79),
      I3 => s_axis_tdata(76),
      O => \g40__27_carry__1_i_8_n_0\
    );
\g40__27_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \g40__27_carry__1_n_0\,
      CO(3 downto 0) => \NLW_g40__27_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_g40__27_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => g40(15),
      S(3 downto 1) => B"000",
      S(0) => \g40__27_carry__2_i_1_n_0\
    );
\g40__27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(79),
      I1 => \g40_carry__1_n_1\,
      O => \g40__27_carry__2_i_1_n_0\
    );
\g40__27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g40_carry__0_n_6\,
      I1 => s_axis_tdata(74),
      O => \g40__27_carry_i_1_n_0\
    );
\g40__27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \g40_carry__0_n_7\,
      I1 => s_axis_tdata(73),
      O => \g40__27_carry_i_2_n_0\
    );
\g40__27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g40_carry_n_4,
      I1 => s_axis_tdata(72),
      O => \g40__27_carry_i_3_n_0\
    );
g40_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => g40_carry_n_0,
      CO(2) => g40_carry_n_1,
      CO(1) => g40_carry_n_2,
      CO(0) => g40_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => s_axis_tdata(73 downto 72),
      DI(1 downto 0) => B"01",
      O(3) => g40_carry_n_4,
      O(2) => g40_carry_n_5,
      O(1 downto 0) => g40(2 downto 1),
      S(3) => g40_carry_i_1_n_0,
      S(2) => g40_carry_i_2_n_0,
      S(1) => g40_carry_i_3_n_0,
      S(0) => s_axis_tdata(72)
    );
\g40_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => g40_carry_n_0,
      CO(3) => \g40_carry__0_n_0\,
      CO(2) => \g40_carry__0_n_1\,
      CO(1) => \g40_carry__0_n_2\,
      CO(0) => \g40_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(77 downto 74),
      O(3) => \g40_carry__0_n_4\,
      O(2) => \g40_carry__0_n_5\,
      O(1) => \g40_carry__0_n_6\,
      O(0) => \g40_carry__0_n_7\,
      S(3) => \g40_carry__0_i_1_n_0\,
      S(2) => \g40_carry__0_i_2_n_0\,
      S(1) => \g40_carry__0_i_3_n_0\,
      S(0) => \g40_carry__0_i_4_n_0\
    );
\g40_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(77),
      I1 => s_axis_tdata(79),
      O => \g40_carry__0_i_1_n_0\
    );
\g40_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(76),
      I1 => s_axis_tdata(78),
      O => \g40_carry__0_i_2_n_0\
    );
\g40_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(75),
      I1 => s_axis_tdata(77),
      O => \g40_carry__0_i_3_n_0\
    );
\g40_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(74),
      I1 => s_axis_tdata(76),
      O => \g40_carry__0_i_4_n_0\
    );
\g40_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \g40_carry__0_n_0\,
      CO(3) => \NLW_g40_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \g40_carry__1_n_1\,
      CO(1) => \NLW_g40_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \g40_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => s_axis_tdata(79 downto 78),
      O(3 downto 2) => \NLW_g40_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \g40_carry__1_n_6\,
      O(0) => \g40_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \g40_carry__1_i_1_n_0\,
      S(0) => \g40_carry__1_i_2_n_0\
    );
\g40_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(79),
      O => \g40_carry__1_i_1_n_0\
    );
\g40_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(78),
      O => \g40_carry__1_i_2_n_0\
    );
g40_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(73),
      I1 => s_axis_tdata(75),
      O => g40_carry_i_1_n_0
    );
g40_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(72),
      I1 => s_axis_tdata(74),
      O => g40_carry_i_2_n_0
    );
g40_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(73),
      O => g40_carry_i_3_n_0
    );
\g4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g40(10),
      Q => g4(10),
      R => '0'
    );
\g4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => g40(15),
      Q => g4(15),
      R => '0'
    );
\g4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => g40(1),
      Q => g4(1),
      R => '0'
    );
\g4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => g40(9),
      Q => g4(9),
      R => '0'
    );
m_axis_disp_tlast_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_gray_tlast,
      I1 => switch_img,
      I2 => s_axis_tlast,
      O => \tlast_reg[1]_0\
    );
m_axis_disp_tuser_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_gray_tuser,
      I1 => switch_img,
      I2 => s_axis_tuser,
      O => \tuser_reg[1]_0\
    );
m_axis_disp_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tvalid_reg_n_0_[1]\,
      I1 => switch_img,
      I2 => s_axis_tvalid,
      O => p_0_in
    );
\r10__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r10__25_carry_n_0\,
      CO(2) => \r10__25_carry_n_1\,
      CO(1) => \r10__25_carry_n_2\,
      CO(0) => \r10__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r10_carry__0_n_7\,
      DI(2) => r10_carry_n_4,
      DI(1) => r10_carry_n_5,
      DI(0) => '0',
      O(3 downto 0) => r10(5 downto 2),
      S(3) => \r10__25_carry_i_1_n_0\,
      S(2) => \r10__25_carry_i_2_n_0\,
      S(1) => \r10__25_carry_i_3_n_0\,
      S(0) => r10_carry_n_6
    );
\r10__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r10__25_carry_n_0\,
      CO(3) => \r10__25_carry__0_n_0\,
      CO(2) => \r10__25_carry__0_n_1\,
      CO(1) => \r10__25_carry__0_n_2\,
      CO(0) => \r10__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r10__25_carry__0_i_1_n_0\,
      DI(2) => \r10__25_carry__0_i_2_n_0\,
      DI(1) => \r10__25_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(16),
      O(3 downto 0) => r10(9 downto 6),
      S(3) => \r10__25_carry__0_i_4_n_0\,
      S(2) => \r10__25_carry__0_i_5_n_0\,
      S(1) => \r10__25_carry__0_i_6_n_0\,
      S(0) => \r10__25_carry__0_i_7_n_0\
    );
\r10__25_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \r10_carry__0_n_4\,
      I2 => s_axis_tdata(18),
      O => \r10__25_carry__0_i_1_n_0\
    );
\r10__25_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \r10_carry__0_n_5\,
      I2 => s_axis_tdata(17),
      O => \r10__25_carry__0_i_2_n_0\
    );
\r10__25_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => s_axis_tdata(20),
      I2 => \r10_carry__0_n_5\,
      O => \r10__25_carry__0_i_3_n_0\
    );
\r10__25_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \r10_carry__1_n_7\,
      I2 => s_axis_tdata(19),
      I3 => \r10__25_carry__0_i_1_n_0\,
      O => \r10__25_carry__0_i_4_n_0\
    );
\r10__25_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \r10_carry__0_n_4\,
      I2 => s_axis_tdata(18),
      I3 => \r10__25_carry__0_i_2_n_0\,
      O => \r10__25_carry__0_i_5_n_0\
    );
\r10__25_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \r10_carry__0_n_5\,
      I2 => s_axis_tdata(17),
      I3 => \r10_carry__0_n_6\,
      I4 => s_axis_tdata(19),
      O => \r10__25_carry__0_i_6_n_0\
    );
\r10__25_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \r10_carry__0_n_6\,
      I2 => s_axis_tdata(16),
      O => \r10__25_carry__0_i_7_n_0\
    );
\r10__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r10__25_carry__0_n_0\,
      CO(3) => \r10__25_carry__1_n_0\,
      CO(2) => \r10__25_carry__1_n_1\,
      CO(1) => \r10__25_carry__1_n_2\,
      CO(0) => \r10__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_axis_tdata(21),
      DI(0) => \r10__25_carry__1_i_1_n_0\,
      O(3 downto 0) => r10(13 downto 10),
      S(3 downto 2) => s_axis_tdata(23 downto 22),
      S(1) => \r10__25_carry__1_i_2_n_0\,
      S(0) => \r10__25_carry__1_i_3_n_0\
    );
\r10__25_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \r10_carry__1_n_7\,
      I2 => s_axis_tdata(19),
      O => \r10__25_carry__1_i_1_n_0\
    );
\r10__25_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \r10_carry__1_n_2\,
      I2 => s_axis_tdata(23),
      I3 => s_axis_tdata(21),
      O => \r10__25_carry__1_i_2_n_0\
    );
\r10__25_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r10__25_carry__1_i_1_n_0\,
      I1 => \r10_carry__1_n_2\,
      I2 => s_axis_tdata(23),
      I3 => s_axis_tdata(20),
      O => \r10__25_carry__1_i_3_n_0\
    );
\r10__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r10_carry__0_n_7\,
      I1 => s_axis_tdata(18),
      O => \r10__25_carry_i_1_n_0\
    );
\r10__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r10_carry_n_4,
      I1 => s_axis_tdata(17),
      O => \r10__25_carry_i_2_n_0\
    );
\r10__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r10_carry_n_5,
      I1 => s_axis_tdata(16),
      O => \r10__25_carry_i_3_n_0\
    );
r10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r10_carry_n_0,
      CO(2) => r10_carry_n_1,
      CO(1) => r10_carry_n_2,
      CO(0) => r10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(20 downto 18),
      DI(0) => '0',
      O(3) => r10_carry_n_4,
      O(2) => r10_carry_n_5,
      O(1) => r10_carry_n_6,
      O(0) => r10(1),
      S(3) => r10_carry_i_1_n_0,
      S(2) => r10_carry_i_2_n_0,
      S(1) => r10_carry_i_3_n_0,
      S(0) => s_axis_tdata(17)
    );
\r10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r10_carry_n_0,
      CO(3) => \r10_carry__0_n_0\,
      CO(2) => \r10_carry__0_n_1\,
      CO(1) => \r10_carry__0_n_2\,
      CO(0) => \r10_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(23 downto 21),
      O(3) => \r10_carry__0_n_4\,
      O(2) => \r10_carry__0_n_5\,
      O(1) => \r10_carry__0_n_6\,
      O(0) => \r10_carry__0_n_7\,
      S(3) => s_axis_tdata(22),
      S(2) => \r10_carry__0_i_1_n_0\,
      S(1) => \r10_carry__0_i_2_n_0\,
      S(0) => \r10_carry__0_i_3_n_0\
    );
\r10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(21),
      O => \r10_carry__0_i_1_n_0\
    );
\r10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => s_axis_tdata(20),
      O => \r10_carry__0_i_2_n_0\
    );
\r10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(19),
      O => \r10_carry__0_i_3_n_0\
    );
\r10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r10_carry__0_n_0\,
      CO(3 downto 2) => \NLW_r10_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r10_carry__1_n_2\,
      CO(0) => \NLW_r10_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r10_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r10_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(23)
    );
r10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(18),
      O => r10_carry_i_1_n_0
    );
r10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(17),
      O => r10_carry_i_2_n_0
    );
r10_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => s_axis_tdata(16),
      O => r10_carry_i_3_n_0
    );
\r1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(16),
      Q => r1(0),
      R => '0'
    );
\r1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r10(14),
      Q => r1(14),
      R => '0'
    );
\r1_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r10__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_r1_reg[14]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => r10(14),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r1_reg[14]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\r1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => r10(1),
      Q => r1(1),
      R => '0'
    );
\r1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r10(9),
      Q => r1(9),
      R => '0'
    );
\r20__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r20__25_carry_n_0\,
      CO(2) => \r20__25_carry_n_1\,
      CO(1) => \r20__25_carry_n_2\,
      CO(0) => \r20__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r20_carry__0_n_7\,
      DI(2) => r20_carry_n_4,
      DI(1) => r20_carry_n_5,
      DI(0) => '0',
      O(3 downto 0) => r20(5 downto 2),
      S(3) => \r20__25_carry_i_1_n_0\,
      S(2) => \r20__25_carry_i_2_n_0\,
      S(1) => \r20__25_carry_i_3_n_0\,
      S(0) => r20_carry_n_6
    );
\r20__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r20__25_carry_n_0\,
      CO(3) => \r20__25_carry__0_n_0\,
      CO(2) => \r20__25_carry__0_n_1\,
      CO(1) => \r20__25_carry__0_n_2\,
      CO(0) => \r20__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r20__25_carry__0_i_1_n_0\,
      DI(2) => \r20__25_carry__0_i_2_n_0\,
      DI(1) => \r20__25_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(40),
      O(3 downto 0) => r20(9 downto 6),
      S(3) => \r20__25_carry__0_i_4_n_0\,
      S(2) => \r20__25_carry__0_i_5_n_0\,
      S(1) => \r20__25_carry__0_i_6_n_0\,
      S(0) => \r20__25_carry__0_i_7_n_0\
    );
\r20__25_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(45),
      I1 => \r20_carry__0_n_4\,
      I2 => s_axis_tdata(42),
      O => \r20__25_carry__0_i_1_n_0\
    );
\r20__25_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(44),
      I1 => \r20_carry__0_n_5\,
      I2 => s_axis_tdata(41),
      O => \r20__25_carry__0_i_2_n_0\
    );
\r20__25_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(41),
      I1 => s_axis_tdata(44),
      I2 => \r20_carry__0_n_5\,
      O => \r20__25_carry__0_i_3_n_0\
    );
\r20__25_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(46),
      I1 => \r20_carry__1_n_7\,
      I2 => s_axis_tdata(43),
      I3 => \r20__25_carry__0_i_1_n_0\,
      O => \r20__25_carry__0_i_4_n_0\
    );
\r20__25_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(45),
      I1 => \r20_carry__0_n_4\,
      I2 => s_axis_tdata(42),
      I3 => \r20__25_carry__0_i_2_n_0\,
      O => \r20__25_carry__0_i_5_n_0\
    );
\r20__25_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(44),
      I1 => \r20_carry__0_n_5\,
      I2 => s_axis_tdata(41),
      I3 => \r20_carry__0_n_6\,
      I4 => s_axis_tdata(43),
      O => \r20__25_carry__0_i_6_n_0\
    );
\r20__25_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(43),
      I1 => \r20_carry__0_n_6\,
      I2 => s_axis_tdata(40),
      O => \r20__25_carry__0_i_7_n_0\
    );
\r20__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r20__25_carry__0_n_0\,
      CO(3) => \r20__25_carry__1_n_0\,
      CO(2) => \r20__25_carry__1_n_1\,
      CO(1) => \r20__25_carry__1_n_2\,
      CO(0) => \r20__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_axis_tdata(45),
      DI(0) => \r20__25_carry__1_i_1_n_0\,
      O(3 downto 0) => r20(13 downto 10),
      S(3 downto 2) => s_axis_tdata(47 downto 46),
      S(1) => \r20__25_carry__1_i_2_n_0\,
      S(0) => \r20__25_carry__1_i_3_n_0\
    );
\r20__25_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(46),
      I1 => \r20_carry__1_n_7\,
      I2 => s_axis_tdata(43),
      O => \r20__25_carry__1_i_1_n_0\
    );
\r20__25_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => s_axis_tdata(44),
      I1 => \r20_carry__1_n_2\,
      I2 => s_axis_tdata(47),
      I3 => s_axis_tdata(45),
      O => \r20__25_carry__1_i_2_n_0\
    );
\r20__25_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r20__25_carry__1_i_1_n_0\,
      I1 => \r20_carry__1_n_2\,
      I2 => s_axis_tdata(47),
      I3 => s_axis_tdata(44),
      O => \r20__25_carry__1_i_3_n_0\
    );
\r20__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r20_carry__0_n_7\,
      I1 => s_axis_tdata(42),
      O => \r20__25_carry_i_1_n_0\
    );
\r20__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r20_carry_n_4,
      I1 => s_axis_tdata(41),
      O => \r20__25_carry_i_2_n_0\
    );
\r20__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r20_carry_n_5,
      I1 => s_axis_tdata(40),
      O => \r20__25_carry_i_3_n_0\
    );
r20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r20_carry_n_0,
      CO(2) => r20_carry_n_1,
      CO(1) => r20_carry_n_2,
      CO(0) => r20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(44 downto 42),
      DI(0) => '0',
      O(3) => r20_carry_n_4,
      O(2) => r20_carry_n_5,
      O(1) => r20_carry_n_6,
      O(0) => r20(1),
      S(3) => r20_carry_i_1_n_0,
      S(2) => r20_carry_i_2_n_0,
      S(1) => r20_carry_i_3_n_0,
      S(0) => s_axis_tdata(41)
    );
\r20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r20_carry_n_0,
      CO(3) => \r20_carry__0_n_0\,
      CO(2) => \r20_carry__0_n_1\,
      CO(1) => \r20_carry__0_n_2\,
      CO(0) => \r20_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(47 downto 45),
      O(3) => \r20_carry__0_n_4\,
      O(2) => \r20_carry__0_n_5\,
      O(1) => \r20_carry__0_n_6\,
      O(0) => \r20_carry__0_n_7\,
      S(3) => s_axis_tdata(46),
      S(2) => \r20_carry__0_i_1_n_0\,
      S(1) => \r20_carry__0_i_2_n_0\,
      S(0) => \r20_carry__0_i_3_n_0\
    );
\r20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(47),
      I1 => s_axis_tdata(45),
      O => \r20_carry__0_i_1_n_0\
    );
\r20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(46),
      I1 => s_axis_tdata(44),
      O => \r20_carry__0_i_2_n_0\
    );
\r20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(45),
      I1 => s_axis_tdata(43),
      O => \r20_carry__0_i_3_n_0\
    );
\r20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r20_carry__0_n_0\,
      CO(3 downto 2) => \NLW_r20_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r20_carry__1_n_2\,
      CO(0) => \NLW_r20_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r20_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r20_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(47)
    );
r20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(44),
      I1 => s_axis_tdata(42),
      O => r20_carry_i_1_n_0
    );
r20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(43),
      I1 => s_axis_tdata(41),
      O => r20_carry_i_2_n_0
    );
r20_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(42),
      I1 => s_axis_tdata(40),
      O => r20_carry_i_3_n_0
    );
\r2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(40),
      Q => r2(0),
      R => '0'
    );
\r2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r20(14),
      Q => r2(14),
      R => '0'
    );
\r2_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r20__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_r2_reg[14]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => r20(14),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r2_reg[14]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\r2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => r20(1),
      Q => r2(1),
      R => '0'
    );
\r2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r20(9),
      Q => r2(9),
      R => '0'
    );
\r30__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r30__25_carry_n_0\,
      CO(2) => \r30__25_carry_n_1\,
      CO(1) => \r30__25_carry_n_2\,
      CO(0) => \r30__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r30_carry__0_n_7\,
      DI(2) => r30_carry_n_4,
      DI(1) => r30_carry_n_5,
      DI(0) => '0',
      O(3 downto 0) => r30(5 downto 2),
      S(3) => \r30__25_carry_i_1_n_0\,
      S(2) => \r30__25_carry_i_2_n_0\,
      S(1) => \r30__25_carry_i_3_n_0\,
      S(0) => r30_carry_n_6
    );
\r30__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r30__25_carry_n_0\,
      CO(3) => \r30__25_carry__0_n_0\,
      CO(2) => \r30__25_carry__0_n_1\,
      CO(1) => \r30__25_carry__0_n_2\,
      CO(0) => \r30__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r30__25_carry__0_i_1_n_0\,
      DI(2) => \r30__25_carry__0_i_2_n_0\,
      DI(1) => \r30__25_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(64),
      O(3 downto 0) => r30(9 downto 6),
      S(3) => \r30__25_carry__0_i_4_n_0\,
      S(2) => \r30__25_carry__0_i_5_n_0\,
      S(1) => \r30__25_carry__0_i_6_n_0\,
      S(0) => \r30__25_carry__0_i_7_n_0\
    );
\r30__25_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(69),
      I1 => \r30_carry__0_n_4\,
      I2 => s_axis_tdata(66),
      O => \r30__25_carry__0_i_1_n_0\
    );
\r30__25_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(68),
      I1 => \r30_carry__0_n_5\,
      I2 => s_axis_tdata(65),
      O => \r30__25_carry__0_i_2_n_0\
    );
\r30__25_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(65),
      I1 => s_axis_tdata(68),
      I2 => \r30_carry__0_n_5\,
      O => \r30__25_carry__0_i_3_n_0\
    );
\r30__25_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(70),
      I1 => \r30_carry__1_n_7\,
      I2 => s_axis_tdata(67),
      I3 => \r30__25_carry__0_i_1_n_0\,
      O => \r30__25_carry__0_i_4_n_0\
    );
\r30__25_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(69),
      I1 => \r30_carry__0_n_4\,
      I2 => s_axis_tdata(66),
      I3 => \r30__25_carry__0_i_2_n_0\,
      O => \r30__25_carry__0_i_5_n_0\
    );
\r30__25_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(68),
      I1 => \r30_carry__0_n_5\,
      I2 => s_axis_tdata(65),
      I3 => \r30_carry__0_n_6\,
      I4 => s_axis_tdata(67),
      O => \r30__25_carry__0_i_6_n_0\
    );
\r30__25_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(67),
      I1 => \r30_carry__0_n_6\,
      I2 => s_axis_tdata(64),
      O => \r30__25_carry__0_i_7_n_0\
    );
\r30__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r30__25_carry__0_n_0\,
      CO(3) => \r30__25_carry__1_n_0\,
      CO(2) => \r30__25_carry__1_n_1\,
      CO(1) => \r30__25_carry__1_n_2\,
      CO(0) => \r30__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_axis_tdata(69),
      DI(0) => \r30__25_carry__1_i_1_n_0\,
      O(3 downto 0) => r30(13 downto 10),
      S(3 downto 2) => s_axis_tdata(71 downto 70),
      S(1) => \r30__25_carry__1_i_2_n_0\,
      S(0) => \r30__25_carry__1_i_3_n_0\
    );
\r30__25_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(70),
      I1 => \r30_carry__1_n_7\,
      I2 => s_axis_tdata(67),
      O => \r30__25_carry__1_i_1_n_0\
    );
\r30__25_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => s_axis_tdata(68),
      I1 => \r30_carry__1_n_2\,
      I2 => s_axis_tdata(71),
      I3 => s_axis_tdata(69),
      O => \r30__25_carry__1_i_2_n_0\
    );
\r30__25_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r30__25_carry__1_i_1_n_0\,
      I1 => \r30_carry__1_n_2\,
      I2 => s_axis_tdata(71),
      I3 => s_axis_tdata(68),
      O => \r30__25_carry__1_i_3_n_0\
    );
\r30__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r30_carry__0_n_7\,
      I1 => s_axis_tdata(66),
      O => \r30__25_carry_i_1_n_0\
    );
\r30__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r30_carry_n_4,
      I1 => s_axis_tdata(65),
      O => \r30__25_carry_i_2_n_0\
    );
\r30__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r30_carry_n_5,
      I1 => s_axis_tdata(64),
      O => \r30__25_carry_i_3_n_0\
    );
r30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r30_carry_n_0,
      CO(2) => r30_carry_n_1,
      CO(1) => r30_carry_n_2,
      CO(0) => r30_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(68 downto 66),
      DI(0) => '0',
      O(3) => r30_carry_n_4,
      O(2) => r30_carry_n_5,
      O(1) => r30_carry_n_6,
      O(0) => r30(1),
      S(3) => r30_carry_i_1_n_0,
      S(2) => r30_carry_i_2_n_0,
      S(1) => r30_carry_i_3_n_0,
      S(0) => s_axis_tdata(65)
    );
\r30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r30_carry_n_0,
      CO(3) => \r30_carry__0_n_0\,
      CO(2) => \r30_carry__0_n_1\,
      CO(1) => \r30_carry__0_n_2\,
      CO(0) => \r30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(71 downto 69),
      O(3) => \r30_carry__0_n_4\,
      O(2) => \r30_carry__0_n_5\,
      O(1) => \r30_carry__0_n_6\,
      O(0) => \r30_carry__0_n_7\,
      S(3) => s_axis_tdata(70),
      S(2) => \r30_carry__0_i_1_n_0\,
      S(1) => \r30_carry__0_i_2_n_0\,
      S(0) => \r30_carry__0_i_3_n_0\
    );
\r30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(71),
      I1 => s_axis_tdata(69),
      O => \r30_carry__0_i_1_n_0\
    );
\r30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(70),
      I1 => s_axis_tdata(68),
      O => \r30_carry__0_i_2_n_0\
    );
\r30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(69),
      I1 => s_axis_tdata(67),
      O => \r30_carry__0_i_3_n_0\
    );
\r30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r30_carry__0_n_0\,
      CO(3 downto 2) => \NLW_r30_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r30_carry__1_n_2\,
      CO(0) => \NLW_r30_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r30_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r30_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(71)
    );
r30_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(68),
      I1 => s_axis_tdata(66),
      O => r30_carry_i_1_n_0
    );
r30_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(67),
      I1 => s_axis_tdata(65),
      O => r30_carry_i_2_n_0
    );
r30_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(66),
      I1 => s_axis_tdata(64),
      O => r30_carry_i_3_n_0
    );
\r3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(64),
      Q => r3(0),
      R => '0'
    );
\r3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r30(14),
      Q => r3(14),
      R => '0'
    );
\r3_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r30__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_r3_reg[14]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => r30(14),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r3_reg[14]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\r3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => r30(1),
      Q => r3(1),
      R => '0'
    );
\r3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r30(9),
      Q => r3(9),
      R => '0'
    );
\r40__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r40__25_carry_n_0\,
      CO(2) => \r40__25_carry_n_1\,
      CO(1) => \r40__25_carry_n_2\,
      CO(0) => \r40__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \r40_carry__0_n_7\,
      DI(2) => r40_carry_n_4,
      DI(1) => r40_carry_n_5,
      DI(0) => '0',
      O(3 downto 0) => r40(5 downto 2),
      S(3) => \r40__25_carry_i_1_n_0\,
      S(2) => \r40__25_carry_i_2_n_0\,
      S(1) => \r40__25_carry_i_3_n_0\,
      S(0) => r40_carry_n_6
    );
\r40__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r40__25_carry_n_0\,
      CO(3) => \r40__25_carry__0_n_0\,
      CO(2) => \r40__25_carry__0_n_1\,
      CO(1) => \r40__25_carry__0_n_2\,
      CO(0) => \r40__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r40__25_carry__0_i_1_n_0\,
      DI(2) => \r40__25_carry__0_i_2_n_0\,
      DI(1) => \r40__25_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(88),
      O(3 downto 0) => r40(9 downto 6),
      S(3) => \r40__25_carry__0_i_4_n_0\,
      S(2) => \r40__25_carry__0_i_5_n_0\,
      S(1) => \r40__25_carry__0_i_6_n_0\,
      S(0) => \r40__25_carry__0_i_7_n_0\
    );
\r40__25_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(93),
      I1 => \r40_carry__0_n_4\,
      I2 => s_axis_tdata(90),
      O => \r40__25_carry__0_i_1_n_0\
    );
\r40__25_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(92),
      I1 => \r40_carry__0_n_5\,
      I2 => s_axis_tdata(89),
      O => \r40__25_carry__0_i_2_n_0\
    );
\r40__25_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(89),
      I1 => s_axis_tdata(92),
      I2 => \r40_carry__0_n_5\,
      O => \r40__25_carry__0_i_3_n_0\
    );
\r40__25_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(94),
      I1 => \r40_carry__1_n_7\,
      I2 => s_axis_tdata(91),
      I3 => \r40__25_carry__0_i_1_n_0\,
      O => \r40__25_carry__0_i_4_n_0\
    );
\r40__25_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(93),
      I1 => \r40_carry__0_n_4\,
      I2 => s_axis_tdata(90),
      I3 => \r40__25_carry__0_i_2_n_0\,
      O => \r40__25_carry__0_i_5_n_0\
    );
\r40__25_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(92),
      I1 => \r40_carry__0_n_5\,
      I2 => s_axis_tdata(89),
      I3 => \r40_carry__0_n_6\,
      I4 => s_axis_tdata(91),
      O => \r40__25_carry__0_i_6_n_0\
    );
\r40__25_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(91),
      I1 => \r40_carry__0_n_6\,
      I2 => s_axis_tdata(88),
      O => \r40__25_carry__0_i_7_n_0\
    );
\r40__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r40__25_carry__0_n_0\,
      CO(3) => \r40__25_carry__1_n_0\,
      CO(2) => \r40__25_carry__1_n_1\,
      CO(1) => \r40__25_carry__1_n_2\,
      CO(0) => \r40__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_axis_tdata(93),
      DI(0) => \r40__25_carry__1_i_1_n_0\,
      O(3 downto 0) => r40(13 downto 10),
      S(3 downto 2) => s_axis_tdata(95 downto 94),
      S(1) => \r40__25_carry__1_i_2_n_0\,
      S(0) => \r40__25_carry__1_i_3_n_0\
    );
\r40__25_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(94),
      I1 => \r40_carry__1_n_7\,
      I2 => s_axis_tdata(91),
      O => \r40__25_carry__1_i_1_n_0\
    );
\r40__25_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => s_axis_tdata(92),
      I1 => \r40_carry__1_n_2\,
      I2 => s_axis_tdata(95),
      I3 => s_axis_tdata(93),
      O => \r40__25_carry__1_i_2_n_0\
    );
\r40__25_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \r40__25_carry__1_i_1_n_0\,
      I1 => \r40_carry__1_n_2\,
      I2 => s_axis_tdata(95),
      I3 => s_axis_tdata(92),
      O => \r40__25_carry__1_i_3_n_0\
    );
\r40__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r40_carry__0_n_7\,
      I1 => s_axis_tdata(90),
      O => \r40__25_carry_i_1_n_0\
    );
\r40__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r40_carry_n_4,
      I1 => s_axis_tdata(89),
      O => \r40__25_carry_i_2_n_0\
    );
\r40__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r40_carry_n_5,
      I1 => s_axis_tdata(88),
      O => \r40__25_carry_i_3_n_0\
    );
r40_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r40_carry_n_0,
      CO(2) => r40_carry_n_1,
      CO(1) => r40_carry_n_2,
      CO(0) => r40_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(92 downto 90),
      DI(0) => '0',
      O(3) => r40_carry_n_4,
      O(2) => r40_carry_n_5,
      O(1) => r40_carry_n_6,
      O(0) => r40(1),
      S(3) => r40_carry_i_1_n_0,
      S(2) => r40_carry_i_2_n_0,
      S(1) => r40_carry_i_3_n_0,
      S(0) => s_axis_tdata(89)
    );
\r40_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r40_carry_n_0,
      CO(3) => \r40_carry__0_n_0\,
      CO(2) => \r40_carry__0_n_1\,
      CO(1) => \r40_carry__0_n_2\,
      CO(0) => \r40_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(95 downto 93),
      O(3) => \r40_carry__0_n_4\,
      O(2) => \r40_carry__0_n_5\,
      O(1) => \r40_carry__0_n_6\,
      O(0) => \r40_carry__0_n_7\,
      S(3) => s_axis_tdata(94),
      S(2) => \r40_carry__0_i_1_n_0\,
      S(1) => \r40_carry__0_i_2_n_0\,
      S(0) => \r40_carry__0_i_3_n_0\
    );
\r40_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(95),
      I1 => s_axis_tdata(93),
      O => \r40_carry__0_i_1_n_0\
    );
\r40_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(94),
      I1 => s_axis_tdata(92),
      O => \r40_carry__0_i_2_n_0\
    );
\r40_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(93),
      I1 => s_axis_tdata(91),
      O => \r40_carry__0_i_3_n_0\
    );
\r40_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r40_carry__0_n_0\,
      CO(3 downto 2) => \NLW_r40_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r40_carry__1_n_2\,
      CO(0) => \NLW_r40_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r40_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r40_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(95)
    );
r40_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(92),
      I1 => s_axis_tdata(90),
      O => r40_carry_i_1_n_0
    );
r40_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(91),
      I1 => s_axis_tdata(89),
      O => r40_carry_i_2_n_0
    );
r40_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(90),
      I1 => s_axis_tdata(88),
      O => r40_carry_i_3_n_0
    );
\r4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => s_axis_tdata(88),
      Q => r4(0),
      R => '0'
    );
\r4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r40(14),
      Q => r4(14),
      R => '0'
    );
\r4_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r40__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_r4_reg[14]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => r40(14),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r4_reg[14]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\r4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => r40(1),
      Q => r4(1),
      R => '0'
    );
\r4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
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
      CE => s_axis_tvalid,
      D => r40(9),
      Q => r4(9),
      R => '0'
    );
\sum1[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(8),
      I1 => r1(8),
      O => \sum1[12]_i_10_n_0\
    );
\sum1[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(12),
      I1 => C(12),
      O => \sum1[12]_i_2_n_0\
    );
\sum1[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(11),
      I1 => C(11),
      O => \sum1[12]_i_3_n_0\
    );
\sum1[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(10),
      I1 => C(10),
      O => \sum1[12]_i_4_n_0\
    );
\sum1[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(9),
      I1 => C(9),
      O => \sum1[12]_i_5_n_0\
    );
\sum1[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(11),
      I1 => r1(11),
      O => \sum1[12]_i_7_n_0\
    );
\sum1[12]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(10),
      I1 => r1(10),
      O => \sum1[12]_i_8_n_0\
    );
\sum1[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(9),
      I1 => r1(9),
      O => \sum1[12]_i_9_n_0\
    );
\sum1[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(15),
      I1 => \sum1_reg[16]_i_5_n_0\,
      O => \sum1[16]_i_2_n_0\
    );
\sum1[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(14),
      I1 => C(14),
      O => \sum1[16]_i_3_n_0\
    );
\sum1[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(13),
      I1 => C(13),
      O => \sum1[16]_i_4_n_0\
    );
\sum1[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(12),
      I1 => r1(12),
      O => \sum1[16]_i_6_n_0\
    );
\sum1[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(1),
      I1 => C(1),
      O => \sum1[8]_i_10_n_0\
    );
\sum1[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(7),
      I1 => r1(7),
      O => \sum1[8]_i_13_n_0\
    );
\sum1[8]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(6),
      I1 => r1(6),
      O => \sum1[8]_i_14_n_0\
    );
\sum1[8]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(5),
      I1 => r1(5),
      O => \sum1[8]_i_15_n_0\
    );
\sum1[8]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(4),
      I1 => r1(4),
      O => \sum1[8]_i_16_n_0\
    );
\sum1[8]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(3),
      I1 => r1(3),
      O => \sum1[8]_i_17_n_0\
    );
\sum1[8]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(2),
      I1 => r1(2),
      O => \sum1[8]_i_18_n_0\
    );
\sum1[8]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(1),
      I1 => r1(1),
      O => \sum1[8]_i_19_n_0\
    );
\sum1[8]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b1(0),
      I1 => r1(0),
      O => \sum1[8]_i_20_n_0\
    );
\sum1[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(8),
      I1 => C(8),
      O => \sum1[8]_i_3_n_0\
    );
\sum1[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(7),
      I1 => C(7),
      O => \sum1[8]_i_4_n_0\
    );
\sum1[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(6),
      I1 => C(6),
      O => \sum1[8]_i_5_n_0\
    );
\sum1[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(5),
      I1 => C(5),
      O => \sum1[8]_i_6_n_0\
    );
\sum1[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(4),
      I1 => C(4),
      O => \sum1[8]_i_7_n_0\
    );
\sum1[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(3),
      I1 => C(3),
      O => \sum1[8]_i_8_n_0\
    );
\sum1[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g1(2),
      I1 => C(2),
      O => \sum1[8]_i_9_n_0\
    );
\sum1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(10),
      Q => Q(2),
      R => '0'
    );
\sum1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(11),
      Q => Q(3),
      R => '0'
    );
\sum1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(12),
      Q => Q(4),
      R => '0'
    );
\sum1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum1_reg[8]_i_1_n_0\,
      CO(3) => \sum1_reg[12]_i_1_n_0\,
      CO(2) => \sum1_reg[12]_i_1_n_1\,
      CO(1) => \sum1_reg[12]_i_1_n_2\,
      CO(0) => \sum1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g1(12 downto 9),
      O(3 downto 0) => sum10(12 downto 9),
      S(3) => \sum1[12]_i_2_n_0\,
      S(2) => \sum1[12]_i_3_n_0\,
      S(1) => \sum1[12]_i_4_n_0\,
      S(0) => \sum1[12]_i_5_n_0\
    );
\sum1_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum1_reg[8]_i_11_n_0\,
      CO(3) => \sum1_reg[12]_i_6_n_0\,
      CO(2) => \sum1_reg[12]_i_6_n_1\,
      CO(1) => \sum1_reg[12]_i_6_n_2\,
      CO(0) => \sum1_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b1(11 downto 8),
      O(3 downto 0) => C(11 downto 8),
      S(3) => \sum1[12]_i_7_n_0\,
      S(2) => \sum1[12]_i_8_n_0\,
      S(1) => \sum1[12]_i_9_n_0\,
      S(0) => \sum1[12]_i_10_n_0\
    );
\sum1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(13),
      Q => Q(5),
      R => '0'
    );
\sum1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(14),
      Q => Q(6),
      R => '0'
    );
\sum1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(15),
      Q => Q(7),
      R => '0'
    );
\sum1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(16),
      Q => Q(8),
      R => '0'
    );
\sum1_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum1_reg[12]_i_1_n_0\,
      CO(3) => sum10(16),
      CO(2) => \NLW_sum1_reg[16]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \sum1_reg[16]_i_1_n_2\,
      CO(0) => \sum1_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => g1(15 downto 13),
      O(3) => \NLW_sum1_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sum10(15 downto 13),
      S(3) => '1',
      S(2) => \sum1[16]_i_2_n_0\,
      S(1) => \sum1[16]_i_3_n_0\,
      S(0) => \sum1[16]_i_4_n_0\
    );
\sum1_reg[16]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum1_reg[12]_i_6_n_0\,
      CO(3) => \sum1_reg[16]_i_5_n_0\,
      CO(2) => \NLW_sum1_reg[16]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \sum1_reg[16]_i_5_n_2\,
      CO(0) => \sum1_reg[16]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => b1(12),
      O(3) => \NLW_sum1_reg[16]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => C(14 downto 12),
      S(3) => '1',
      S(2 downto 1) => r1(14 downto 13),
      S(0) => \sum1[16]_i_6_n_0\
    );
\sum1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(8),
      Q => Q(0),
      R => '0'
    );
\sum1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum1_reg[8]_i_2_n_0\,
      CO(3) => \sum1_reg[8]_i_1_n_0\,
      CO(2) => \sum1_reg[8]_i_1_n_1\,
      CO(1) => \sum1_reg[8]_i_1_n_2\,
      CO(0) => \sum1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g1(8 downto 5),
      O(3) => sum10(8),
      O(2 downto 0) => \NLW_sum1_reg[8]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \sum1[8]_i_3_n_0\,
      S(2) => \sum1[8]_i_4_n_0\,
      S(1) => \sum1[8]_i_5_n_0\,
      S(0) => \sum1[8]_i_6_n_0\
    );
\sum1_reg[8]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum1_reg[8]_i_12_n_0\,
      CO(3) => \sum1_reg[8]_i_11_n_0\,
      CO(2) => \sum1_reg[8]_i_11_n_1\,
      CO(1) => \sum1_reg[8]_i_11_n_2\,
      CO(0) => \sum1_reg[8]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b1(7 downto 4),
      O(3 downto 0) => C(7 downto 4),
      S(3) => \sum1[8]_i_13_n_0\,
      S(2) => \sum1[8]_i_14_n_0\,
      S(1) => \sum1[8]_i_15_n_0\,
      S(0) => \sum1[8]_i_16_n_0\
    );
\sum1_reg[8]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum1_reg[8]_i_12_n_0\,
      CO(2) => \sum1_reg[8]_i_12_n_1\,
      CO(1) => \sum1_reg[8]_i_12_n_2\,
      CO(0) => \sum1_reg[8]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b1(3 downto 0),
      O(3 downto 1) => C(3 downto 1),
      O(0) => \NLW_sum1_reg[8]_i_12_O_UNCONNECTED\(0),
      S(3) => \sum1[8]_i_17_n_0\,
      S(2) => \sum1[8]_i_18_n_0\,
      S(1) => \sum1[8]_i_19_n_0\,
      S(0) => \sum1[8]_i_20_n_0\
    );
\sum1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum1_reg[8]_i_2_n_0\,
      CO(2) => \sum1_reg[8]_i_2_n_1\,
      CO(1) => \sum1_reg[8]_i_2_n_2\,
      CO(0) => \sum1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g1(4 downto 1),
      O(3 downto 0) => \NLW_sum1_reg[8]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \sum1[8]_i_7_n_0\,
      S(2) => \sum1[8]_i_8_n_0\,
      S(1) => \sum1[8]_i_9_n_0\,
      S(0) => \sum1[8]_i_10_n_0\
    );
\sum1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum10(9),
      Q => Q(1),
      R => '0'
    );
\sum2[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(8),
      I1 => r2(8),
      O => \sum2[12]_i_10_n_0\
    );
\sum2[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(12),
      I1 => \C__0\(12),
      O => \sum2[12]_i_2_n_0\
    );
\sum2[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(11),
      I1 => \C__0\(11),
      O => \sum2[12]_i_3_n_0\
    );
\sum2[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(10),
      I1 => \C__0\(10),
      O => \sum2[12]_i_4_n_0\
    );
\sum2[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(9),
      I1 => \C__0\(9),
      O => \sum2[12]_i_5_n_0\
    );
\sum2[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(11),
      I1 => r2(11),
      O => \sum2[12]_i_7_n_0\
    );
\sum2[12]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(10),
      I1 => r2(10),
      O => \sum2[12]_i_8_n_0\
    );
\sum2[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(9),
      I1 => r2(9),
      O => \sum2[12]_i_9_n_0\
    );
\sum2[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(15),
      I1 => \sum2_reg[16]_i_5_n_0\,
      O => \sum2[16]_i_2_n_0\
    );
\sum2[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(14),
      I1 => \C__0\(14),
      O => \sum2[16]_i_3_n_0\
    );
\sum2[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(13),
      I1 => \C__0\(13),
      O => \sum2[16]_i_4_n_0\
    );
\sum2[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(12),
      I1 => r2(12),
      O => \sum2[16]_i_6_n_0\
    );
\sum2[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(1),
      I1 => \C__0\(1),
      O => \sum2[8]_i_10_n_0\
    );
\sum2[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(7),
      I1 => r2(7),
      O => \sum2[8]_i_13_n_0\
    );
\sum2[8]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(6),
      I1 => r2(6),
      O => \sum2[8]_i_14_n_0\
    );
\sum2[8]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(5),
      I1 => r2(5),
      O => \sum2[8]_i_15_n_0\
    );
\sum2[8]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(4),
      I1 => r2(4),
      O => \sum2[8]_i_16_n_0\
    );
\sum2[8]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(3),
      I1 => r2(3),
      O => \sum2[8]_i_17_n_0\
    );
\sum2[8]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(2),
      I1 => r2(2),
      O => \sum2[8]_i_18_n_0\
    );
\sum2[8]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(1),
      I1 => r2(1),
      O => \sum2[8]_i_19_n_0\
    );
\sum2[8]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b2(0),
      I1 => r2(0),
      O => \sum2[8]_i_20_n_0\
    );
\sum2[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(8),
      I1 => \C__0\(8),
      O => \sum2[8]_i_3_n_0\
    );
\sum2[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(7),
      I1 => \C__0\(7),
      O => \sum2[8]_i_4_n_0\
    );
\sum2[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(6),
      I1 => \C__0\(6),
      O => \sum2[8]_i_5_n_0\
    );
\sum2[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(5),
      I1 => \C__0\(5),
      O => \sum2[8]_i_6_n_0\
    );
\sum2[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(4),
      I1 => \C__0\(4),
      O => \sum2[8]_i_7_n_0\
    );
\sum2[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(3),
      I1 => \C__0\(3),
      O => \sum2[8]_i_8_n_0\
    );
\sum2[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g2(2),
      I1 => \C__0\(2),
      O => \sum2[8]_i_9_n_0\
    );
\sum2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(10),
      Q => \sum2_reg[16]_0\(2),
      R => '0'
    );
\sum2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(11),
      Q => \sum2_reg[16]_0\(3),
      R => '0'
    );
\sum2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(12),
      Q => \sum2_reg[16]_0\(4),
      R => '0'
    );
\sum2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum2_reg[8]_i_1_n_0\,
      CO(3) => \sum2_reg[12]_i_1_n_0\,
      CO(2) => \sum2_reg[12]_i_1_n_1\,
      CO(1) => \sum2_reg[12]_i_1_n_2\,
      CO(0) => \sum2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g2(12 downto 9),
      O(3 downto 0) => sum20(12 downto 9),
      S(3) => \sum2[12]_i_2_n_0\,
      S(2) => \sum2[12]_i_3_n_0\,
      S(1) => \sum2[12]_i_4_n_0\,
      S(0) => \sum2[12]_i_5_n_0\
    );
\sum2_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum2_reg[8]_i_11_n_0\,
      CO(3) => \sum2_reg[12]_i_6_n_0\,
      CO(2) => \sum2_reg[12]_i_6_n_1\,
      CO(1) => \sum2_reg[12]_i_6_n_2\,
      CO(0) => \sum2_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b2(11 downto 8),
      O(3 downto 0) => \C__0\(11 downto 8),
      S(3) => \sum2[12]_i_7_n_0\,
      S(2) => \sum2[12]_i_8_n_0\,
      S(1) => \sum2[12]_i_9_n_0\,
      S(0) => \sum2[12]_i_10_n_0\
    );
\sum2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(13),
      Q => \sum2_reg[16]_0\(5),
      R => '0'
    );
\sum2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(14),
      Q => \sum2_reg[16]_0\(6),
      R => '0'
    );
\sum2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(15),
      Q => \sum2_reg[16]_0\(7),
      R => '0'
    );
\sum2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(16),
      Q => \sum2_reg[16]_0\(8),
      R => '0'
    );
\sum2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum2_reg[12]_i_1_n_0\,
      CO(3) => sum20(16),
      CO(2) => \NLW_sum2_reg[16]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \sum2_reg[16]_i_1_n_2\,
      CO(0) => \sum2_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => g2(15 downto 13),
      O(3) => \NLW_sum2_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sum20(15 downto 13),
      S(3) => '1',
      S(2) => \sum2[16]_i_2_n_0\,
      S(1) => \sum2[16]_i_3_n_0\,
      S(0) => \sum2[16]_i_4_n_0\
    );
\sum2_reg[16]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum2_reg[12]_i_6_n_0\,
      CO(3) => \sum2_reg[16]_i_5_n_0\,
      CO(2) => \NLW_sum2_reg[16]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \sum2_reg[16]_i_5_n_2\,
      CO(0) => \sum2_reg[16]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => b2(12),
      O(3) => \NLW_sum2_reg[16]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => \C__0\(14 downto 12),
      S(3) => '1',
      S(2 downto 1) => r2(14 downto 13),
      S(0) => \sum2[16]_i_6_n_0\
    );
\sum2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(8),
      Q => \sum2_reg[16]_0\(0),
      R => '0'
    );
\sum2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum2_reg[8]_i_2_n_0\,
      CO(3) => \sum2_reg[8]_i_1_n_0\,
      CO(2) => \sum2_reg[8]_i_1_n_1\,
      CO(1) => \sum2_reg[8]_i_1_n_2\,
      CO(0) => \sum2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g2(8 downto 5),
      O(3) => sum20(8),
      O(2 downto 0) => \NLW_sum2_reg[8]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \sum2[8]_i_3_n_0\,
      S(2) => \sum2[8]_i_4_n_0\,
      S(1) => \sum2[8]_i_5_n_0\,
      S(0) => \sum2[8]_i_6_n_0\
    );
\sum2_reg[8]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum2_reg[8]_i_12_n_0\,
      CO(3) => \sum2_reg[8]_i_11_n_0\,
      CO(2) => \sum2_reg[8]_i_11_n_1\,
      CO(1) => \sum2_reg[8]_i_11_n_2\,
      CO(0) => \sum2_reg[8]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b2(7 downto 4),
      O(3 downto 0) => \C__0\(7 downto 4),
      S(3) => \sum2[8]_i_13_n_0\,
      S(2) => \sum2[8]_i_14_n_0\,
      S(1) => \sum2[8]_i_15_n_0\,
      S(0) => \sum2[8]_i_16_n_0\
    );
\sum2_reg[8]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum2_reg[8]_i_12_n_0\,
      CO(2) => \sum2_reg[8]_i_12_n_1\,
      CO(1) => \sum2_reg[8]_i_12_n_2\,
      CO(0) => \sum2_reg[8]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b2(3 downto 0),
      O(3 downto 1) => \C__0\(3 downto 1),
      O(0) => \NLW_sum2_reg[8]_i_12_O_UNCONNECTED\(0),
      S(3) => \sum2[8]_i_17_n_0\,
      S(2) => \sum2[8]_i_18_n_0\,
      S(1) => \sum2[8]_i_19_n_0\,
      S(0) => \sum2[8]_i_20_n_0\
    );
\sum2_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum2_reg[8]_i_2_n_0\,
      CO(2) => \sum2_reg[8]_i_2_n_1\,
      CO(1) => \sum2_reg[8]_i_2_n_2\,
      CO(0) => \sum2_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g2(4 downto 1),
      O(3 downto 0) => \NLW_sum2_reg[8]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \sum2[8]_i_7_n_0\,
      S(2) => \sum2[8]_i_8_n_0\,
      S(1) => \sum2[8]_i_9_n_0\,
      S(0) => \sum2[8]_i_10_n_0\
    );
\sum2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum20(9),
      Q => \sum2_reg[16]_0\(1),
      R => '0'
    );
\sum3[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(8),
      I1 => r3(8),
      O => \sum3[12]_i_10_n_0\
    );
\sum3[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(12),
      I1 => \C__1\(12),
      O => \sum3[12]_i_2_n_0\
    );
\sum3[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(11),
      I1 => \C__1\(11),
      O => \sum3[12]_i_3_n_0\
    );
\sum3[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(10),
      I1 => \C__1\(10),
      O => \sum3[12]_i_4_n_0\
    );
\sum3[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(9),
      I1 => \C__1\(9),
      O => \sum3[12]_i_5_n_0\
    );
\sum3[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(11),
      I1 => r3(11),
      O => \sum3[12]_i_7_n_0\
    );
\sum3[12]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(10),
      I1 => r3(10),
      O => \sum3[12]_i_8_n_0\
    );
\sum3[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(9),
      I1 => r3(9),
      O => \sum3[12]_i_9_n_0\
    );
\sum3[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(15),
      I1 => \sum3_reg[16]_i_5_n_0\,
      O => \sum3[16]_i_2_n_0\
    );
\sum3[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(14),
      I1 => \C__1\(14),
      O => \sum3[16]_i_3_n_0\
    );
\sum3[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(13),
      I1 => \C__1\(13),
      O => \sum3[16]_i_4_n_0\
    );
\sum3[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(12),
      I1 => r3(12),
      O => \sum3[16]_i_6_n_0\
    );
\sum3[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(1),
      I1 => \C__1\(1),
      O => \sum3[8]_i_10_n_0\
    );
\sum3[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(7),
      I1 => r3(7),
      O => \sum3[8]_i_13_n_0\
    );
\sum3[8]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(6),
      I1 => r3(6),
      O => \sum3[8]_i_14_n_0\
    );
\sum3[8]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(5),
      I1 => r3(5),
      O => \sum3[8]_i_15_n_0\
    );
\sum3[8]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(4),
      I1 => r3(4),
      O => \sum3[8]_i_16_n_0\
    );
\sum3[8]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(3),
      I1 => r3(3),
      O => \sum3[8]_i_17_n_0\
    );
\sum3[8]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(2),
      I1 => r3(2),
      O => \sum3[8]_i_18_n_0\
    );
\sum3[8]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(1),
      I1 => r3(1),
      O => \sum3[8]_i_19_n_0\
    );
\sum3[8]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b3(0),
      I1 => r3(0),
      O => \sum3[8]_i_20_n_0\
    );
\sum3[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(8),
      I1 => \C__1\(8),
      O => \sum3[8]_i_3_n_0\
    );
\sum3[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(7),
      I1 => \C__1\(7),
      O => \sum3[8]_i_4_n_0\
    );
\sum3[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(6),
      I1 => \C__1\(6),
      O => \sum3[8]_i_5_n_0\
    );
\sum3[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(5),
      I1 => \C__1\(5),
      O => \sum3[8]_i_6_n_0\
    );
\sum3[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(4),
      I1 => \C__1\(4),
      O => \sum3[8]_i_7_n_0\
    );
\sum3[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(3),
      I1 => \C__1\(3),
      O => \sum3[8]_i_8_n_0\
    );
\sum3[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g3(2),
      I1 => \C__1\(2),
      O => \sum3[8]_i_9_n_0\
    );
\sum3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(10),
      Q => \sum3_reg[16]_0\(2),
      R => '0'
    );
\sum3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(11),
      Q => \sum3_reg[16]_0\(3),
      R => '0'
    );
\sum3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(12),
      Q => \sum3_reg[16]_0\(4),
      R => '0'
    );
\sum3_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum3_reg[8]_i_1_n_0\,
      CO(3) => \sum3_reg[12]_i_1_n_0\,
      CO(2) => \sum3_reg[12]_i_1_n_1\,
      CO(1) => \sum3_reg[12]_i_1_n_2\,
      CO(0) => \sum3_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g3(12 downto 9),
      O(3 downto 0) => sum30(12 downto 9),
      S(3) => \sum3[12]_i_2_n_0\,
      S(2) => \sum3[12]_i_3_n_0\,
      S(1) => \sum3[12]_i_4_n_0\,
      S(0) => \sum3[12]_i_5_n_0\
    );
\sum3_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum3_reg[8]_i_11_n_0\,
      CO(3) => \sum3_reg[12]_i_6_n_0\,
      CO(2) => \sum3_reg[12]_i_6_n_1\,
      CO(1) => \sum3_reg[12]_i_6_n_2\,
      CO(0) => \sum3_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b3(11 downto 8),
      O(3 downto 0) => \C__1\(11 downto 8),
      S(3) => \sum3[12]_i_7_n_0\,
      S(2) => \sum3[12]_i_8_n_0\,
      S(1) => \sum3[12]_i_9_n_0\,
      S(0) => \sum3[12]_i_10_n_0\
    );
\sum3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(13),
      Q => \sum3_reg[16]_0\(5),
      R => '0'
    );
\sum3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(14),
      Q => \sum3_reg[16]_0\(6),
      R => '0'
    );
\sum3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(15),
      Q => \sum3_reg[16]_0\(7),
      R => '0'
    );
\sum3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(16),
      Q => \sum3_reg[16]_0\(8),
      R => '0'
    );
\sum3_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum3_reg[12]_i_1_n_0\,
      CO(3) => sum30(16),
      CO(2) => \NLW_sum3_reg[16]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \sum3_reg[16]_i_1_n_2\,
      CO(0) => \sum3_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => g3(15 downto 13),
      O(3) => \NLW_sum3_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sum30(15 downto 13),
      S(3) => '1',
      S(2) => \sum3[16]_i_2_n_0\,
      S(1) => \sum3[16]_i_3_n_0\,
      S(0) => \sum3[16]_i_4_n_0\
    );
\sum3_reg[16]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum3_reg[12]_i_6_n_0\,
      CO(3) => \sum3_reg[16]_i_5_n_0\,
      CO(2) => \NLW_sum3_reg[16]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \sum3_reg[16]_i_5_n_2\,
      CO(0) => \sum3_reg[16]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => b3(12),
      O(3) => \NLW_sum3_reg[16]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => \C__1\(14 downto 12),
      S(3) => '1',
      S(2 downto 1) => r3(14 downto 13),
      S(0) => \sum3[16]_i_6_n_0\
    );
\sum3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(8),
      Q => \sum3_reg[16]_0\(0),
      R => '0'
    );
\sum3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum3_reg[8]_i_2_n_0\,
      CO(3) => \sum3_reg[8]_i_1_n_0\,
      CO(2) => \sum3_reg[8]_i_1_n_1\,
      CO(1) => \sum3_reg[8]_i_1_n_2\,
      CO(0) => \sum3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g3(8 downto 5),
      O(3) => sum30(8),
      O(2 downto 0) => \NLW_sum3_reg[8]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \sum3[8]_i_3_n_0\,
      S(2) => \sum3[8]_i_4_n_0\,
      S(1) => \sum3[8]_i_5_n_0\,
      S(0) => \sum3[8]_i_6_n_0\
    );
\sum3_reg[8]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum3_reg[8]_i_12_n_0\,
      CO(3) => \sum3_reg[8]_i_11_n_0\,
      CO(2) => \sum3_reg[8]_i_11_n_1\,
      CO(1) => \sum3_reg[8]_i_11_n_2\,
      CO(0) => \sum3_reg[8]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b3(7 downto 4),
      O(3 downto 0) => \C__1\(7 downto 4),
      S(3) => \sum3[8]_i_13_n_0\,
      S(2) => \sum3[8]_i_14_n_0\,
      S(1) => \sum3[8]_i_15_n_0\,
      S(0) => \sum3[8]_i_16_n_0\
    );
\sum3_reg[8]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum3_reg[8]_i_12_n_0\,
      CO(2) => \sum3_reg[8]_i_12_n_1\,
      CO(1) => \sum3_reg[8]_i_12_n_2\,
      CO(0) => \sum3_reg[8]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b3(3 downto 0),
      O(3 downto 1) => \C__1\(3 downto 1),
      O(0) => \NLW_sum3_reg[8]_i_12_O_UNCONNECTED\(0),
      S(3) => \sum3[8]_i_17_n_0\,
      S(2) => \sum3[8]_i_18_n_0\,
      S(1) => \sum3[8]_i_19_n_0\,
      S(0) => \sum3[8]_i_20_n_0\
    );
\sum3_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum3_reg[8]_i_2_n_0\,
      CO(2) => \sum3_reg[8]_i_2_n_1\,
      CO(1) => \sum3_reg[8]_i_2_n_2\,
      CO(0) => \sum3_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g3(4 downto 1),
      O(3 downto 0) => \NLW_sum3_reg[8]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \sum3[8]_i_7_n_0\,
      S(2) => \sum3[8]_i_8_n_0\,
      S(1) => \sum3[8]_i_9_n_0\,
      S(0) => \sum3[8]_i_10_n_0\
    );
\sum3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum30(9),
      Q => \sum3_reg[16]_0\(1),
      R => '0'
    );
\sum4[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(8),
      I1 => r4(8),
      O => \sum4[12]_i_10_n_0\
    );
\sum4[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(12),
      I1 => \C__2\(12),
      O => \sum4[12]_i_2_n_0\
    );
\sum4[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(11),
      I1 => \C__2\(11),
      O => \sum4[12]_i_3_n_0\
    );
\sum4[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(10),
      I1 => \C__2\(10),
      O => \sum4[12]_i_4_n_0\
    );
\sum4[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(9),
      I1 => \C__2\(9),
      O => \sum4[12]_i_5_n_0\
    );
\sum4[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(11),
      I1 => r4(11),
      O => \sum4[12]_i_7_n_0\
    );
\sum4[12]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(10),
      I1 => r4(10),
      O => \sum4[12]_i_8_n_0\
    );
\sum4[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(9),
      I1 => r4(9),
      O => \sum4[12]_i_9_n_0\
    );
\sum4[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(15),
      I1 => \sum4_reg[16]_i_5_n_0\,
      O => \sum4[16]_i_2_n_0\
    );
\sum4[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(14),
      I1 => \C__2\(14),
      O => \sum4[16]_i_3_n_0\
    );
\sum4[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(13),
      I1 => \C__2\(13),
      O => \sum4[16]_i_4_n_0\
    );
\sum4[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(12),
      I1 => r4(12),
      O => \sum4[16]_i_6_n_0\
    );
\sum4[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(1),
      I1 => \C__2\(1),
      O => \sum4[8]_i_10_n_0\
    );
\sum4[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(7),
      I1 => r4(7),
      O => \sum4[8]_i_13_n_0\
    );
\sum4[8]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(6),
      I1 => r4(6),
      O => \sum4[8]_i_14_n_0\
    );
\sum4[8]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(5),
      I1 => r4(5),
      O => \sum4[8]_i_15_n_0\
    );
\sum4[8]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(4),
      I1 => r4(4),
      O => \sum4[8]_i_16_n_0\
    );
\sum4[8]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(3),
      I1 => r4(3),
      O => \sum4[8]_i_17_n_0\
    );
\sum4[8]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(2),
      I1 => r4(2),
      O => \sum4[8]_i_18_n_0\
    );
\sum4[8]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(1),
      I1 => r4(1),
      O => \sum4[8]_i_19_n_0\
    );
\sum4[8]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b4(0),
      I1 => r4(0),
      O => \sum4[8]_i_20_n_0\
    );
\sum4[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(8),
      I1 => \C__2\(8),
      O => \sum4[8]_i_3_n_0\
    );
\sum4[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(7),
      I1 => \C__2\(7),
      O => \sum4[8]_i_4_n_0\
    );
\sum4[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(6),
      I1 => \C__2\(6),
      O => \sum4[8]_i_5_n_0\
    );
\sum4[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(5),
      I1 => \C__2\(5),
      O => \sum4[8]_i_6_n_0\
    );
\sum4[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(4),
      I1 => \C__2\(4),
      O => \sum4[8]_i_7_n_0\
    );
\sum4[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(3),
      I1 => \C__2\(3),
      O => \sum4[8]_i_8_n_0\
    );
\sum4[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g4(2),
      I1 => \C__2\(2),
      O => \sum4[8]_i_9_n_0\
    );
\sum4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(10),
      Q => \sum4_reg[16]_0\(2),
      R => '0'
    );
\sum4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(11),
      Q => \sum4_reg[16]_0\(3),
      R => '0'
    );
\sum4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(12),
      Q => \sum4_reg[16]_0\(4),
      R => '0'
    );
\sum4_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum4_reg[8]_i_1_n_0\,
      CO(3) => \sum4_reg[12]_i_1_n_0\,
      CO(2) => \sum4_reg[12]_i_1_n_1\,
      CO(1) => \sum4_reg[12]_i_1_n_2\,
      CO(0) => \sum4_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g4(12 downto 9),
      O(3 downto 0) => sum40(12 downto 9),
      S(3) => \sum4[12]_i_2_n_0\,
      S(2) => \sum4[12]_i_3_n_0\,
      S(1) => \sum4[12]_i_4_n_0\,
      S(0) => \sum4[12]_i_5_n_0\
    );
\sum4_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum4_reg[8]_i_11_n_0\,
      CO(3) => \sum4_reg[12]_i_6_n_0\,
      CO(2) => \sum4_reg[12]_i_6_n_1\,
      CO(1) => \sum4_reg[12]_i_6_n_2\,
      CO(0) => \sum4_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b4(11 downto 8),
      O(3 downto 0) => \C__2\(11 downto 8),
      S(3) => \sum4[12]_i_7_n_0\,
      S(2) => \sum4[12]_i_8_n_0\,
      S(1) => \sum4[12]_i_9_n_0\,
      S(0) => \sum4[12]_i_10_n_0\
    );
\sum4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(13),
      Q => \sum4_reg[16]_0\(5),
      R => '0'
    );
\sum4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(14),
      Q => \sum4_reg[16]_0\(6),
      R => '0'
    );
\sum4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(15),
      Q => \sum4_reg[16]_0\(7),
      R => '0'
    );
\sum4_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(16),
      Q => \sum4_reg[16]_0\(8),
      R => '0'
    );
\sum4_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum4_reg[12]_i_1_n_0\,
      CO(3) => sum40(16),
      CO(2) => \NLW_sum4_reg[16]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \sum4_reg[16]_i_1_n_2\,
      CO(0) => \sum4_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => g4(15 downto 13),
      O(3) => \NLW_sum4_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sum40(15 downto 13),
      S(3) => '1',
      S(2) => \sum4[16]_i_2_n_0\,
      S(1) => \sum4[16]_i_3_n_0\,
      S(0) => \sum4[16]_i_4_n_0\
    );
\sum4_reg[16]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum4_reg[12]_i_6_n_0\,
      CO(3) => \sum4_reg[16]_i_5_n_0\,
      CO(2) => \NLW_sum4_reg[16]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \sum4_reg[16]_i_5_n_2\,
      CO(0) => \sum4_reg[16]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => b4(12),
      O(3) => \NLW_sum4_reg[16]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => \C__2\(14 downto 12),
      S(3) => '1',
      S(2 downto 1) => r4(14 downto 13),
      S(0) => \sum4[16]_i_6_n_0\
    );
\sum4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(8),
      Q => \sum4_reg[16]_0\(0),
      R => '0'
    );
\sum4_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum4_reg[8]_i_2_n_0\,
      CO(3) => \sum4_reg[8]_i_1_n_0\,
      CO(2) => \sum4_reg[8]_i_1_n_1\,
      CO(1) => \sum4_reg[8]_i_1_n_2\,
      CO(0) => \sum4_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g4(8 downto 5),
      O(3) => sum40(8),
      O(2 downto 0) => \NLW_sum4_reg[8]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \sum4[8]_i_3_n_0\,
      S(2) => \sum4[8]_i_4_n_0\,
      S(1) => \sum4[8]_i_5_n_0\,
      S(0) => \sum4[8]_i_6_n_0\
    );
\sum4_reg[8]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum4_reg[8]_i_12_n_0\,
      CO(3) => \sum4_reg[8]_i_11_n_0\,
      CO(2) => \sum4_reg[8]_i_11_n_1\,
      CO(1) => \sum4_reg[8]_i_11_n_2\,
      CO(0) => \sum4_reg[8]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b4(7 downto 4),
      O(3 downto 0) => \C__2\(7 downto 4),
      S(3) => \sum4[8]_i_13_n_0\,
      S(2) => \sum4[8]_i_14_n_0\,
      S(1) => \sum4[8]_i_15_n_0\,
      S(0) => \sum4[8]_i_16_n_0\
    );
\sum4_reg[8]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum4_reg[8]_i_12_n_0\,
      CO(2) => \sum4_reg[8]_i_12_n_1\,
      CO(1) => \sum4_reg[8]_i_12_n_2\,
      CO(0) => \sum4_reg[8]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b4(3 downto 0),
      O(3 downto 1) => \C__2\(3 downto 1),
      O(0) => \NLW_sum4_reg[8]_i_12_O_UNCONNECTED\(0),
      S(3) => \sum4[8]_i_17_n_0\,
      S(2) => \sum4[8]_i_18_n_0\,
      S(1) => \sum4[8]_i_19_n_0\,
      S(0) => \sum4[8]_i_20_n_0\
    );
\sum4_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum4_reg[8]_i_2_n_0\,
      CO(2) => \sum4_reg[8]_i_2_n_1\,
      CO(1) => \sum4_reg[8]_i_2_n_2\,
      CO(0) => \sum4_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => g4(4 downto 1),
      O(3 downto 0) => \NLW_sum4_reg[8]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \sum4[8]_i_7_n_0\,
      S(2) => \sum4[8]_i_8_n_0\,
      S(1) => \sum4[8]_i_9_n_0\,
      S(0) => \sum4[8]_i_10_n_0\
    );
\sum4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => CEP,
      D => sum40(9),
      Q => \sum4_reg[16]_0\(1),
      R => '0'
    );
\tlast_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => tlast(0),
      R => '0'
    );
\tlast_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tlast(0),
      Q => m_axis_gray_tlast,
      R => '0'
    );
\tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tuser,
      Q => tuser(0),
      R => '0'
    );
\tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tuser(0),
      Q => m_axis_gray_tuser,
      R => '0'
    );
\tvalid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tvalid,
      Q => CEP,
      R => '0'
    );
\tvalid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => CEP,
      Q => \tvalid_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    switch_img : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision is
  signal \m_axis_disp_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[32]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[33]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[34]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[35]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[36]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[37]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[38]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[39]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[40]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[41]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[42]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[43]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[44]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[45]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[46]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[47]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[48]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[49]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[50]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[51]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[52]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[53]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[54]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[55]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[56]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[57]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[58]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[59]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[60]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[61]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[62]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[63]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[64]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[65]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[66]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[67]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[68]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[69]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[70]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[71]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[72]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[73]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[74]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[75]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[76]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[77]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[78]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[79]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[80]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[81]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[82]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[83]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[84]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[85]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[86]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[87]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[88]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[89]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[90]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[91]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[92]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[93]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[94]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[95]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_disp_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rgb2gray_n_0 : STD_LOGIC;
  signal rgb2gray_n_1 : STD_LOGIC;
  signal sum1 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal sum2 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal sum3 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal sum4 : STD_LOGIC_VECTOR ( 16 downto 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[25]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[26]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[28]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[32]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[33]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[34]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[35]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[36]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[37]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[38]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[39]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[48]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[49]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[50]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[51]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[52]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[53]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[54]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[55]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[56]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[57]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[58]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[59]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[60]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[61]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[62]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[63]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[72]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[73]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[74]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[75]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[76]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[77]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[78]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[79]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[80]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[81]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[82]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[83]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[84]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[85]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[86]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[87]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_disp_tdata[9]_i_1\ : label is "soft_lutpair2";
begin
\m_axis_disp_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(8),
      I2 => s_axis_tdata(0),
      I3 => switch_img,
      O => \m_axis_disp_tdata[0]_i_1_n_0\
    );
\m_axis_disp_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(10),
      I2 => s_axis_tdata(10),
      I3 => switch_img,
      O => \m_axis_disp_tdata[10]_i_1_n_0\
    );
\m_axis_disp_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(11),
      I2 => s_axis_tdata(11),
      I3 => switch_img,
      O => \m_axis_disp_tdata[11]_i_1_n_0\
    );
\m_axis_disp_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(12),
      I2 => s_axis_tdata(12),
      I3 => switch_img,
      O => \m_axis_disp_tdata[12]_i_1_n_0\
    );
\m_axis_disp_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(13),
      I2 => s_axis_tdata(13),
      I3 => switch_img,
      O => \m_axis_disp_tdata[13]_i_1_n_0\
    );
\m_axis_disp_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(14),
      I2 => s_axis_tdata(14),
      I3 => switch_img,
      O => \m_axis_disp_tdata[14]_i_1_n_0\
    );
\m_axis_disp_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(15),
      I2 => s_axis_tdata(15),
      I3 => switch_img,
      O => \m_axis_disp_tdata[15]_i_1_n_0\
    );
\m_axis_disp_tdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(8),
      I2 => s_axis_tdata(16),
      I3 => switch_img,
      O => \m_axis_disp_tdata[16]_i_1_n_0\
    );
\m_axis_disp_tdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(9),
      I2 => s_axis_tdata(17),
      I3 => switch_img,
      O => \m_axis_disp_tdata[17]_i_1_n_0\
    );
\m_axis_disp_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(10),
      I2 => s_axis_tdata(18),
      I3 => switch_img,
      O => \m_axis_disp_tdata[18]_i_1_n_0\
    );
\m_axis_disp_tdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(11),
      I2 => s_axis_tdata(19),
      I3 => switch_img,
      O => \m_axis_disp_tdata[19]_i_1_n_0\
    );
\m_axis_disp_tdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(9),
      I2 => s_axis_tdata(1),
      I3 => switch_img,
      O => \m_axis_disp_tdata[1]_i_1_n_0\
    );
\m_axis_disp_tdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(12),
      I2 => s_axis_tdata(20),
      I3 => switch_img,
      O => \m_axis_disp_tdata[20]_i_1_n_0\
    );
\m_axis_disp_tdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(13),
      I2 => s_axis_tdata(21),
      I3 => switch_img,
      O => \m_axis_disp_tdata[21]_i_1_n_0\
    );
\m_axis_disp_tdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(14),
      I2 => s_axis_tdata(22),
      I3 => switch_img,
      O => \m_axis_disp_tdata[22]_i_1_n_0\
    );
\m_axis_disp_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(15),
      I2 => s_axis_tdata(23),
      I3 => switch_img,
      O => \m_axis_disp_tdata[23]_i_1_n_0\
    );
\m_axis_disp_tdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(8),
      I2 => s_axis_tdata(24),
      I3 => switch_img,
      O => \m_axis_disp_tdata[24]_i_1_n_0\
    );
\m_axis_disp_tdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(9),
      I2 => s_axis_tdata(25),
      I3 => switch_img,
      O => \m_axis_disp_tdata[25]_i_1_n_0\
    );
\m_axis_disp_tdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(10),
      I2 => s_axis_tdata(26),
      I3 => switch_img,
      O => \m_axis_disp_tdata[26]_i_1_n_0\
    );
\m_axis_disp_tdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(11),
      I2 => s_axis_tdata(27),
      I3 => switch_img,
      O => \m_axis_disp_tdata[27]_i_1_n_0\
    );
\m_axis_disp_tdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(12),
      I2 => s_axis_tdata(28),
      I3 => switch_img,
      O => \m_axis_disp_tdata[28]_i_1_n_0\
    );
\m_axis_disp_tdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(13),
      I2 => s_axis_tdata(29),
      I3 => switch_img,
      O => \m_axis_disp_tdata[29]_i_1_n_0\
    );
\m_axis_disp_tdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(10),
      I2 => s_axis_tdata(2),
      I3 => switch_img,
      O => \m_axis_disp_tdata[2]_i_1_n_0\
    );
\m_axis_disp_tdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(14),
      I2 => s_axis_tdata(30),
      I3 => switch_img,
      O => \m_axis_disp_tdata[30]_i_1_n_0\
    );
\m_axis_disp_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(15),
      I2 => s_axis_tdata(31),
      I3 => switch_img,
      O => \m_axis_disp_tdata[31]_i_1_n_0\
    );
\m_axis_disp_tdata[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(8),
      I2 => s_axis_tdata(32),
      I3 => switch_img,
      O => \m_axis_disp_tdata[32]_i_1_n_0\
    );
\m_axis_disp_tdata[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(9),
      I2 => s_axis_tdata(33),
      I3 => switch_img,
      O => \m_axis_disp_tdata[33]_i_1_n_0\
    );
\m_axis_disp_tdata[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(10),
      I2 => s_axis_tdata(34),
      I3 => switch_img,
      O => \m_axis_disp_tdata[34]_i_1_n_0\
    );
\m_axis_disp_tdata[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(11),
      I2 => s_axis_tdata(35),
      I3 => switch_img,
      O => \m_axis_disp_tdata[35]_i_1_n_0\
    );
\m_axis_disp_tdata[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(12),
      I2 => s_axis_tdata(36),
      I3 => switch_img,
      O => \m_axis_disp_tdata[36]_i_1_n_0\
    );
\m_axis_disp_tdata[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(13),
      I2 => s_axis_tdata(37),
      I3 => switch_img,
      O => \m_axis_disp_tdata[37]_i_1_n_0\
    );
\m_axis_disp_tdata[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(14),
      I2 => s_axis_tdata(38),
      I3 => switch_img,
      O => \m_axis_disp_tdata[38]_i_1_n_0\
    );
\m_axis_disp_tdata[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(15),
      I2 => s_axis_tdata(39),
      I3 => switch_img,
      O => \m_axis_disp_tdata[39]_i_1_n_0\
    );
\m_axis_disp_tdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(11),
      I2 => s_axis_tdata(3),
      I3 => switch_img,
      O => \m_axis_disp_tdata[3]_i_1_n_0\
    );
\m_axis_disp_tdata[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(8),
      I2 => s_axis_tdata(40),
      I3 => switch_img,
      O => \m_axis_disp_tdata[40]_i_1_n_0\
    );
\m_axis_disp_tdata[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(9),
      I2 => s_axis_tdata(41),
      I3 => switch_img,
      O => \m_axis_disp_tdata[41]_i_1_n_0\
    );
\m_axis_disp_tdata[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(10),
      I2 => s_axis_tdata(42),
      I3 => switch_img,
      O => \m_axis_disp_tdata[42]_i_1_n_0\
    );
\m_axis_disp_tdata[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(11),
      I2 => s_axis_tdata(43),
      I3 => switch_img,
      O => \m_axis_disp_tdata[43]_i_1_n_0\
    );
\m_axis_disp_tdata[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(12),
      I2 => s_axis_tdata(44),
      I3 => switch_img,
      O => \m_axis_disp_tdata[44]_i_1_n_0\
    );
\m_axis_disp_tdata[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(13),
      I2 => s_axis_tdata(45),
      I3 => switch_img,
      O => \m_axis_disp_tdata[45]_i_1_n_0\
    );
\m_axis_disp_tdata[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(14),
      I2 => s_axis_tdata(46),
      I3 => switch_img,
      O => \m_axis_disp_tdata[46]_i_1_n_0\
    );
\m_axis_disp_tdata[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum2(16),
      I1 => sum2(15),
      I2 => s_axis_tdata(47),
      I3 => switch_img,
      O => \m_axis_disp_tdata[47]_i_1_n_0\
    );
\m_axis_disp_tdata[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(8),
      I2 => s_axis_tdata(48),
      I3 => switch_img,
      O => \m_axis_disp_tdata[48]_i_1_n_0\
    );
\m_axis_disp_tdata[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(9),
      I2 => s_axis_tdata(49),
      I3 => switch_img,
      O => \m_axis_disp_tdata[49]_i_1_n_0\
    );
\m_axis_disp_tdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(12),
      I2 => s_axis_tdata(4),
      I3 => switch_img,
      O => \m_axis_disp_tdata[4]_i_1_n_0\
    );
\m_axis_disp_tdata[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(10),
      I2 => s_axis_tdata(50),
      I3 => switch_img,
      O => \m_axis_disp_tdata[50]_i_1_n_0\
    );
\m_axis_disp_tdata[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(11),
      I2 => s_axis_tdata(51),
      I3 => switch_img,
      O => \m_axis_disp_tdata[51]_i_1_n_0\
    );
\m_axis_disp_tdata[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(12),
      I2 => s_axis_tdata(52),
      I3 => switch_img,
      O => \m_axis_disp_tdata[52]_i_1_n_0\
    );
\m_axis_disp_tdata[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(13),
      I2 => s_axis_tdata(53),
      I3 => switch_img,
      O => \m_axis_disp_tdata[53]_i_1_n_0\
    );
\m_axis_disp_tdata[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(14),
      I2 => s_axis_tdata(54),
      I3 => switch_img,
      O => \m_axis_disp_tdata[54]_i_1_n_0\
    );
\m_axis_disp_tdata[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(15),
      I2 => s_axis_tdata(55),
      I3 => switch_img,
      O => \m_axis_disp_tdata[55]_i_1_n_0\
    );
\m_axis_disp_tdata[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(8),
      I2 => s_axis_tdata(56),
      I3 => switch_img,
      O => \m_axis_disp_tdata[56]_i_1_n_0\
    );
\m_axis_disp_tdata[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(9),
      I2 => s_axis_tdata(57),
      I3 => switch_img,
      O => \m_axis_disp_tdata[57]_i_1_n_0\
    );
\m_axis_disp_tdata[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(10),
      I2 => s_axis_tdata(58),
      I3 => switch_img,
      O => \m_axis_disp_tdata[58]_i_1_n_0\
    );
\m_axis_disp_tdata[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(11),
      I2 => s_axis_tdata(59),
      I3 => switch_img,
      O => \m_axis_disp_tdata[59]_i_1_n_0\
    );
\m_axis_disp_tdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(13),
      I2 => s_axis_tdata(5),
      I3 => switch_img,
      O => \m_axis_disp_tdata[5]_i_1_n_0\
    );
\m_axis_disp_tdata[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(12),
      I2 => s_axis_tdata(60),
      I3 => switch_img,
      O => \m_axis_disp_tdata[60]_i_1_n_0\
    );
\m_axis_disp_tdata[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(13),
      I2 => s_axis_tdata(61),
      I3 => switch_img,
      O => \m_axis_disp_tdata[61]_i_1_n_0\
    );
\m_axis_disp_tdata[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(14),
      I2 => s_axis_tdata(62),
      I3 => switch_img,
      O => \m_axis_disp_tdata[62]_i_1_n_0\
    );
\m_axis_disp_tdata[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(15),
      I2 => s_axis_tdata(63),
      I3 => switch_img,
      O => \m_axis_disp_tdata[63]_i_1_n_0\
    );
\m_axis_disp_tdata[64]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(8),
      I2 => s_axis_tdata(64),
      I3 => switch_img,
      O => \m_axis_disp_tdata[64]_i_1_n_0\
    );
\m_axis_disp_tdata[65]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(9),
      I2 => s_axis_tdata(65),
      I3 => switch_img,
      O => \m_axis_disp_tdata[65]_i_1_n_0\
    );
\m_axis_disp_tdata[66]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(10),
      I2 => s_axis_tdata(66),
      I3 => switch_img,
      O => \m_axis_disp_tdata[66]_i_1_n_0\
    );
\m_axis_disp_tdata[67]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(11),
      I2 => s_axis_tdata(67),
      I3 => switch_img,
      O => \m_axis_disp_tdata[67]_i_1_n_0\
    );
\m_axis_disp_tdata[68]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(12),
      I2 => s_axis_tdata(68),
      I3 => switch_img,
      O => \m_axis_disp_tdata[68]_i_1_n_0\
    );
\m_axis_disp_tdata[69]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(13),
      I2 => s_axis_tdata(69),
      I3 => switch_img,
      O => \m_axis_disp_tdata[69]_i_1_n_0\
    );
\m_axis_disp_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(14),
      I2 => s_axis_tdata(6),
      I3 => switch_img,
      O => \m_axis_disp_tdata[6]_i_1_n_0\
    );
\m_axis_disp_tdata[70]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(14),
      I2 => s_axis_tdata(70),
      I3 => switch_img,
      O => \m_axis_disp_tdata[70]_i_1_n_0\
    );
\m_axis_disp_tdata[71]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum3(16),
      I1 => sum3(15),
      I2 => s_axis_tdata(71),
      I3 => switch_img,
      O => \m_axis_disp_tdata[71]_i_1_n_0\
    );
\m_axis_disp_tdata[72]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(8),
      I2 => s_axis_tdata(72),
      I3 => switch_img,
      O => \m_axis_disp_tdata[72]_i_1_n_0\
    );
\m_axis_disp_tdata[73]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(9),
      I2 => s_axis_tdata(73),
      I3 => switch_img,
      O => \m_axis_disp_tdata[73]_i_1_n_0\
    );
\m_axis_disp_tdata[74]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(10),
      I2 => s_axis_tdata(74),
      I3 => switch_img,
      O => \m_axis_disp_tdata[74]_i_1_n_0\
    );
\m_axis_disp_tdata[75]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(11),
      I2 => s_axis_tdata(75),
      I3 => switch_img,
      O => \m_axis_disp_tdata[75]_i_1_n_0\
    );
\m_axis_disp_tdata[76]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(12),
      I2 => s_axis_tdata(76),
      I3 => switch_img,
      O => \m_axis_disp_tdata[76]_i_1_n_0\
    );
\m_axis_disp_tdata[77]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(13),
      I2 => s_axis_tdata(77),
      I3 => switch_img,
      O => \m_axis_disp_tdata[77]_i_1_n_0\
    );
\m_axis_disp_tdata[78]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(14),
      I2 => s_axis_tdata(78),
      I3 => switch_img,
      O => \m_axis_disp_tdata[78]_i_1_n_0\
    );
\m_axis_disp_tdata[79]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(15),
      I2 => s_axis_tdata(79),
      I3 => switch_img,
      O => \m_axis_disp_tdata[79]_i_1_n_0\
    );
\m_axis_disp_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(15),
      I2 => s_axis_tdata(7),
      I3 => switch_img,
      O => \m_axis_disp_tdata[7]_i_1_n_0\
    );
\m_axis_disp_tdata[80]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(8),
      I2 => s_axis_tdata(80),
      I3 => switch_img,
      O => \m_axis_disp_tdata[80]_i_1_n_0\
    );
\m_axis_disp_tdata[81]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(9),
      I2 => s_axis_tdata(81),
      I3 => switch_img,
      O => \m_axis_disp_tdata[81]_i_1_n_0\
    );
\m_axis_disp_tdata[82]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(10),
      I2 => s_axis_tdata(82),
      I3 => switch_img,
      O => \m_axis_disp_tdata[82]_i_1_n_0\
    );
\m_axis_disp_tdata[83]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(11),
      I2 => s_axis_tdata(83),
      I3 => switch_img,
      O => \m_axis_disp_tdata[83]_i_1_n_0\
    );
\m_axis_disp_tdata[84]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(12),
      I2 => s_axis_tdata(84),
      I3 => switch_img,
      O => \m_axis_disp_tdata[84]_i_1_n_0\
    );
\m_axis_disp_tdata[85]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(13),
      I2 => s_axis_tdata(85),
      I3 => switch_img,
      O => \m_axis_disp_tdata[85]_i_1_n_0\
    );
\m_axis_disp_tdata[86]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(14),
      I2 => s_axis_tdata(86),
      I3 => switch_img,
      O => \m_axis_disp_tdata[86]_i_1_n_0\
    );
\m_axis_disp_tdata[87]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(15),
      I2 => s_axis_tdata(87),
      I3 => switch_img,
      O => \m_axis_disp_tdata[87]_i_1_n_0\
    );
\m_axis_disp_tdata[88]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(8),
      I2 => s_axis_tdata(88),
      I3 => switch_img,
      O => \m_axis_disp_tdata[88]_i_1_n_0\
    );
\m_axis_disp_tdata[89]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(9),
      I2 => s_axis_tdata(89),
      I3 => switch_img,
      O => \m_axis_disp_tdata[89]_i_1_n_0\
    );
\m_axis_disp_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(8),
      I2 => s_axis_tdata(8),
      I3 => switch_img,
      O => \m_axis_disp_tdata[8]_i_1_n_0\
    );
\m_axis_disp_tdata[90]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(10),
      I2 => s_axis_tdata(90),
      I3 => switch_img,
      O => \m_axis_disp_tdata[90]_i_1_n_0\
    );
\m_axis_disp_tdata[91]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(11),
      I2 => s_axis_tdata(91),
      I3 => switch_img,
      O => \m_axis_disp_tdata[91]_i_1_n_0\
    );
\m_axis_disp_tdata[92]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(12),
      I2 => s_axis_tdata(92),
      I3 => switch_img,
      O => \m_axis_disp_tdata[92]_i_1_n_0\
    );
\m_axis_disp_tdata[93]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(13),
      I2 => s_axis_tdata(93),
      I3 => switch_img,
      O => \m_axis_disp_tdata[93]_i_1_n_0\
    );
\m_axis_disp_tdata[94]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(14),
      I2 => s_axis_tdata(94),
      I3 => switch_img,
      O => \m_axis_disp_tdata[94]_i_1_n_0\
    );
\m_axis_disp_tdata[95]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum4(16),
      I1 => sum4(15),
      I2 => s_axis_tdata(95),
      I3 => switch_img,
      O => \m_axis_disp_tdata[95]_i_1_n_0\
    );
\m_axis_disp_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEF0"
    )
        port map (
      I0 => sum1(16),
      I1 => sum1(9),
      I2 => s_axis_tdata(9),
      I3 => switch_img,
      O => \m_axis_disp_tdata[9]_i_1_n_0\
    );
\m_axis_disp_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_disp_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[10]_i_1_n_0\,
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_disp_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[11]_i_1_n_0\,
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_disp_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[12]_i_1_n_0\,
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_disp_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[13]_i_1_n_0\,
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_disp_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[14]_i_1_n_0\,
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_disp_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[15]_i_1_n_0\,
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_disp_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[16]_i_1_n_0\,
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_disp_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[17]_i_1_n_0\,
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_disp_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[18]_i_1_n_0\,
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_disp_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[19]_i_1_n_0\,
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_disp_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_disp_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[20]_i_1_n_0\,
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_disp_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[21]_i_1_n_0\,
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_disp_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[22]_i_1_n_0\,
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_disp_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[23]_i_1_n_0\,
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_disp_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[24]_i_1_n_0\,
      Q => m_axis_tdata(24),
      R => '0'
    );
\m_axis_disp_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[25]_i_1_n_0\,
      Q => m_axis_tdata(25),
      R => '0'
    );
\m_axis_disp_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[26]_i_1_n_0\,
      Q => m_axis_tdata(26),
      R => '0'
    );
\m_axis_disp_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[27]_i_1_n_0\,
      Q => m_axis_tdata(27),
      R => '0'
    );
\m_axis_disp_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[28]_i_1_n_0\,
      Q => m_axis_tdata(28),
      R => '0'
    );
\m_axis_disp_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[29]_i_1_n_0\,
      Q => m_axis_tdata(29),
      R => '0'
    );
\m_axis_disp_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_disp_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[30]_i_1_n_0\,
      Q => m_axis_tdata(30),
      R => '0'
    );
\m_axis_disp_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[31]_i_1_n_0\,
      Q => m_axis_tdata(31),
      R => '0'
    );
\m_axis_disp_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[32]_i_1_n_0\,
      Q => m_axis_tdata(32),
      R => '0'
    );
\m_axis_disp_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[33]_i_1_n_0\,
      Q => m_axis_tdata(33),
      R => '0'
    );
\m_axis_disp_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[34]_i_1_n_0\,
      Q => m_axis_tdata(34),
      R => '0'
    );
\m_axis_disp_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[35]_i_1_n_0\,
      Q => m_axis_tdata(35),
      R => '0'
    );
\m_axis_disp_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[36]_i_1_n_0\,
      Q => m_axis_tdata(36),
      R => '0'
    );
\m_axis_disp_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[37]_i_1_n_0\,
      Q => m_axis_tdata(37),
      R => '0'
    );
\m_axis_disp_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[38]_i_1_n_0\,
      Q => m_axis_tdata(38),
      R => '0'
    );
\m_axis_disp_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[39]_i_1_n_0\,
      Q => m_axis_tdata(39),
      R => '0'
    );
\m_axis_disp_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_disp_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[40]_i_1_n_0\,
      Q => m_axis_tdata(40),
      R => '0'
    );
\m_axis_disp_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[41]_i_1_n_0\,
      Q => m_axis_tdata(41),
      R => '0'
    );
\m_axis_disp_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[42]_i_1_n_0\,
      Q => m_axis_tdata(42),
      R => '0'
    );
\m_axis_disp_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[43]_i_1_n_0\,
      Q => m_axis_tdata(43),
      R => '0'
    );
\m_axis_disp_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[44]_i_1_n_0\,
      Q => m_axis_tdata(44),
      R => '0'
    );
\m_axis_disp_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[45]_i_1_n_0\,
      Q => m_axis_tdata(45),
      R => '0'
    );
\m_axis_disp_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[46]_i_1_n_0\,
      Q => m_axis_tdata(46),
      R => '0'
    );
\m_axis_disp_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[47]_i_1_n_0\,
      Q => m_axis_tdata(47),
      R => '0'
    );
\m_axis_disp_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[48]_i_1_n_0\,
      Q => m_axis_tdata(48),
      R => '0'
    );
\m_axis_disp_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[49]_i_1_n_0\,
      Q => m_axis_tdata(49),
      R => '0'
    );
\m_axis_disp_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_disp_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[50]_i_1_n_0\,
      Q => m_axis_tdata(50),
      R => '0'
    );
\m_axis_disp_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[51]_i_1_n_0\,
      Q => m_axis_tdata(51),
      R => '0'
    );
\m_axis_disp_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[52]_i_1_n_0\,
      Q => m_axis_tdata(52),
      R => '0'
    );
\m_axis_disp_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[53]_i_1_n_0\,
      Q => m_axis_tdata(53),
      R => '0'
    );
\m_axis_disp_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[54]_i_1_n_0\,
      Q => m_axis_tdata(54),
      R => '0'
    );
\m_axis_disp_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[55]_i_1_n_0\,
      Q => m_axis_tdata(55),
      R => '0'
    );
\m_axis_disp_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[56]_i_1_n_0\,
      Q => m_axis_tdata(56),
      R => '0'
    );
\m_axis_disp_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[57]_i_1_n_0\,
      Q => m_axis_tdata(57),
      R => '0'
    );
\m_axis_disp_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[58]_i_1_n_0\,
      Q => m_axis_tdata(58),
      R => '0'
    );
\m_axis_disp_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[59]_i_1_n_0\,
      Q => m_axis_tdata(59),
      R => '0'
    );
\m_axis_disp_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_disp_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[60]_i_1_n_0\,
      Q => m_axis_tdata(60),
      R => '0'
    );
\m_axis_disp_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[61]_i_1_n_0\,
      Q => m_axis_tdata(61),
      R => '0'
    );
\m_axis_disp_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[62]_i_1_n_0\,
      Q => m_axis_tdata(62),
      R => '0'
    );
\m_axis_disp_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[63]_i_1_n_0\,
      Q => m_axis_tdata(63),
      R => '0'
    );
\m_axis_disp_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[64]_i_1_n_0\,
      Q => m_axis_tdata(64),
      R => '0'
    );
\m_axis_disp_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[65]_i_1_n_0\,
      Q => m_axis_tdata(65),
      R => '0'
    );
\m_axis_disp_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[66]_i_1_n_0\,
      Q => m_axis_tdata(66),
      R => '0'
    );
\m_axis_disp_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[67]_i_1_n_0\,
      Q => m_axis_tdata(67),
      R => '0'
    );
\m_axis_disp_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[68]_i_1_n_0\,
      Q => m_axis_tdata(68),
      R => '0'
    );
\m_axis_disp_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[69]_i_1_n_0\,
      Q => m_axis_tdata(69),
      R => '0'
    );
\m_axis_disp_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_disp_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[70]_i_1_n_0\,
      Q => m_axis_tdata(70),
      R => '0'
    );
\m_axis_disp_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[71]_i_1_n_0\,
      Q => m_axis_tdata(71),
      R => '0'
    );
\m_axis_disp_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[72]_i_1_n_0\,
      Q => m_axis_tdata(72),
      R => '0'
    );
\m_axis_disp_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[73]_i_1_n_0\,
      Q => m_axis_tdata(73),
      R => '0'
    );
\m_axis_disp_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[74]_i_1_n_0\,
      Q => m_axis_tdata(74),
      R => '0'
    );
\m_axis_disp_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[75]_i_1_n_0\,
      Q => m_axis_tdata(75),
      R => '0'
    );
\m_axis_disp_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[76]_i_1_n_0\,
      Q => m_axis_tdata(76),
      R => '0'
    );
\m_axis_disp_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[77]_i_1_n_0\,
      Q => m_axis_tdata(77),
      R => '0'
    );
\m_axis_disp_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[78]_i_1_n_0\,
      Q => m_axis_tdata(78),
      R => '0'
    );
\m_axis_disp_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[79]_i_1_n_0\,
      Q => m_axis_tdata(79),
      R => '0'
    );
\m_axis_disp_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[7]_i_1_n_0\,
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_disp_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[80]_i_1_n_0\,
      Q => m_axis_tdata(80),
      R => '0'
    );
\m_axis_disp_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[81]_i_1_n_0\,
      Q => m_axis_tdata(81),
      R => '0'
    );
\m_axis_disp_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[82]_i_1_n_0\,
      Q => m_axis_tdata(82),
      R => '0'
    );
\m_axis_disp_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[83]_i_1_n_0\,
      Q => m_axis_tdata(83),
      R => '0'
    );
\m_axis_disp_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[84]_i_1_n_0\,
      Q => m_axis_tdata(84),
      R => '0'
    );
\m_axis_disp_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[85]_i_1_n_0\,
      Q => m_axis_tdata(85),
      R => '0'
    );
\m_axis_disp_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[86]_i_1_n_0\,
      Q => m_axis_tdata(86),
      R => '0'
    );
\m_axis_disp_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[87]_i_1_n_0\,
      Q => m_axis_tdata(87),
      R => '0'
    );
\m_axis_disp_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[88]_i_1_n_0\,
      Q => m_axis_tdata(88),
      R => '0'
    );
\m_axis_disp_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[89]_i_1_n_0\,
      Q => m_axis_tdata(89),
      R => '0'
    );
\m_axis_disp_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[8]_i_1_n_0\,
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_disp_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[90]_i_1_n_0\,
      Q => m_axis_tdata(90),
      R => '0'
    );
\m_axis_disp_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[91]_i_1_n_0\,
      Q => m_axis_tdata(91),
      R => '0'
    );
\m_axis_disp_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[92]_i_1_n_0\,
      Q => m_axis_tdata(92),
      R => '0'
    );
\m_axis_disp_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[93]_i_1_n_0\,
      Q => m_axis_tdata(93),
      R => '0'
    );
\m_axis_disp_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[94]_i_1_n_0\,
      Q => m_axis_tdata(94),
      R => '0'
    );
\m_axis_disp_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[95]_i_1_n_0\,
      Q => m_axis_tdata(95),
      R => '0'
    );
\m_axis_disp_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_disp_tdata[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_disp_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rgb2gray_n_1,
      Q => m_axis_tlast,
      R => '0'
    );
m_axis_disp_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rgb2gray_n_0,
      Q => m_axis_tuser,
      R => '0'
    );
m_axis_disp_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => m_axis_tvalid,
      R => '0'
    );
rgb2gray: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0
     port map (
      Q(8 downto 0) => sum1(16 downto 8),
      aclk => aclk,
      p_0_in => p_0_in,
      s_axis_tdata(95 downto 0) => s_axis_tdata(95 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser => s_axis_tuser,
      s_axis_tvalid => s_axis_tvalid,
      \sum2_reg[16]_0\(8 downto 0) => sum2(16 downto 8),
      \sum3_reg[16]_0\(8 downto 0) => sum3(16 downto 8),
      \sum4_reg[16]_0\(8 downto 0) => sum4(16 downto 8),
      switch_img => switch_img,
      \tlast_reg[1]_0\ => rgb2gray_n_1,
      \tuser_reg[1]_0\ => rgb2gray_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0 is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    switch_img : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0 is
begin
stereo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision
     port map (
      aclk => aclk,
      m_axis_tdata(95 downto 0) => m_axis_tdata(95 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(95 downto 0) => s_axis_tdata(95 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser => s_axis_tuser,
      s_axis_tvalid => s_axis_tvalid,
      switch_img => switch_img
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
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    switch_img : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "exdes_Stereovision_0_0,Stereovision_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Stereovision_v1_0,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
begin
  s_axis_tready <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0
     port map (
      aclk => aclk,
      m_axis_tdata(95 downto 0) => m_axis_tdata(95 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(95 downto 0) => s_axis_tdata(95 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser => s_axis_tuser,
      s_axis_tvalid => s_axis_tvalid,
      switch_img => switch_img
    );
end STRUCTURE;
