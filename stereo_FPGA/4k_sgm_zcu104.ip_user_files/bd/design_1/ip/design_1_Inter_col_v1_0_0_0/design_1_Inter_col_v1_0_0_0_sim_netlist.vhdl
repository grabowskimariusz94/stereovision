-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Dec  4 21:30:30 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_Inter_col_v1_0_0_0/design_1_Inter_col_v1_0_0_0_sim_netlist.vhdl
-- Design      : design_1_Inter_col_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Inter_col_v1_0_0_0_Inter_col_v1_0 is
  port (
    m_axis_r_tvalid : out STD_LOGIC;
    m_axis_l_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_r_tlast : out STD_LOGIC;
    m_axis_r_tuser : out STD_LOGIC;
    m_axis_r_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_lr_tvalid : in STD_LOGIC;
    s_axis_lr_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lr_tlast : in STD_LOGIC;
    s_axis_lr_tuser : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Inter_col_v1_0_0_0_Inter_col_v1_0 : entity is "Inter_col_v1_0";
end design_1_Inter_col_v1_0_0_0_Inter_col_v1_0;

architecture STRUCTURE of design_1_Inter_col_v1_0_0_0_Inter_col_v1_0 is
  signal \lastLR_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][17]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][18]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][19]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][20]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][21]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][22]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][23]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][24]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][25]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][26]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][27]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][28]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][29]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][30]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][31]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[0][8]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal p_1_in2_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_1_in8_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_3_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tdataL0 : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal tdataL011_out : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal tdataL07_out : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal tdataL09_out : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \tdataL[10]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[10]_i_3_n_0\ : STD_LOGIC;
  signal \tdataL[11]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[11]_i_3_n_0\ : STD_LOGIC;
  signal \tdataL[12]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[12]_i_3_n_0\ : STD_LOGIC;
  signal \tdataL[13]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[13]_i_3_n_0\ : STD_LOGIC;
  signal \tdataL[27]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[27]_i_3_n_0\ : STD_LOGIC;
  signal \tdataL[27]_i_4_n_0\ : STD_LOGIC;
  signal \tdataL[29]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[29]_i_3_n_0\ : STD_LOGIC;
  signal \tdataL[29]_i_4_n_0\ : STD_LOGIC;
  signal \tdataL[9]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[9]_i_3_n_0\ : STD_LOGIC;
  signal tdataR0 : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal tdataR01_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tdataR03_out : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \tdataR[16]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[17]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[17]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[17]_i_3_n_0\ : STD_LOGIC;
  signal \tdataR[18]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[18]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[18]_i_3_n_0\ : STD_LOGIC;
  signal \tdataR[19]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[19]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[19]_i_3_n_0\ : STD_LOGIC;
  signal \tdataR[20]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[20]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[20]_i_3_n_0\ : STD_LOGIC;
  signal \tdataR[21]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[21]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[21]_i_3_n_0\ : STD_LOGIC;
  signal \tdataR[24]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[25]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[26]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[27]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[28]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[29]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[30]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[31]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR[4]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[7]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \tdataR_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal tlast : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tuser : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tvalid_reg_n_0_[0]\ : STD_LOGIC;
  signal \tvalid_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tdataL[10]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdataL[12]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdataL[12]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tdataL[13]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdataL[13]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tdataL[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdataL[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdataL[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdataL[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdataL[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdataL[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tdataL[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tdataL[23]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tdataL[24]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdataL[27]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdataL[29]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdataL[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tdataL[9]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdataL[9]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tdataR[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdataR[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdataR[17]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdataR[17]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdataR[18]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdataR[18]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdataR[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdataR[20]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdataR[20]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdataR[21]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdataR[21]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdataR[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tdataR[25]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdataR[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tdataR[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tdataR[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tdataR[29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tdataR[30]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tdataR[31]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tdataR[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tdataR[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdataR[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdataR[7]_i_2\ : label is "soft_lutpair5";
begin
\lastLR_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(0),
      Q => \lastLR_reg_n_0_[0][0]\,
      R => '0'
    );
\lastLR_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(10),
      Q => p_1_in2_in(1),
      R => '0'
    );
\lastLR_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(11),
      Q => p_1_in2_in(2),
      R => '0'
    );
\lastLR_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(12),
      Q => p_1_in2_in(3),
      R => '0'
    );
\lastLR_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(13),
      Q => p_1_in2_in(4),
      R => '0'
    );
\lastLR_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(14),
      Q => p_1_in2_in(5),
      R => '0'
    );
\lastLR_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(15),
      Q => p_1_in2_in(6),
      R => '0'
    );
\lastLR_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(16),
      Q => \lastLR_reg_n_0_[0][16]\,
      R => '0'
    );
\lastLR_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(17),
      Q => \lastLR_reg_n_0_[0][17]\,
      R => '0'
    );
\lastLR_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(18),
      Q => \lastLR_reg_n_0_[0][18]\,
      R => '0'
    );
\lastLR_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(19),
      Q => \lastLR_reg_n_0_[0][19]\,
      R => '0'
    );
\lastLR_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(1),
      Q => p_1_in8_in(0),
      R => '0'
    );
\lastLR_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(20),
      Q => \lastLR_reg_n_0_[0][20]\,
      R => '0'
    );
\lastLR_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(21),
      Q => \lastLR_reg_n_0_[0][21]\,
      R => '0'
    );
\lastLR_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(22),
      Q => \lastLR_reg_n_0_[0][22]\,
      R => '0'
    );
\lastLR_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(23),
      Q => \lastLR_reg_n_0_[0][23]\,
      R => '0'
    );
\lastLR_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(24),
      Q => \lastLR_reg_n_0_[0][24]\,
      R => '0'
    );
\lastLR_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(25),
      Q => \lastLR_reg_n_0_[0][25]\,
      R => '0'
    );
\lastLR_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(26),
      Q => \lastLR_reg_n_0_[0][26]\,
      R => '0'
    );
\lastLR_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(27),
      Q => \lastLR_reg_n_0_[0][27]\,
      R => '0'
    );
\lastLR_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(28),
      Q => \lastLR_reg_n_0_[0][28]\,
      R => '0'
    );
\lastLR_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(29),
      Q => \lastLR_reg_n_0_[0][29]\,
      R => '0'
    );
\lastLR_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(2),
      Q => p_1_in8_in(1),
      R => '0'
    );
\lastLR_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(30),
      Q => \lastLR_reg_n_0_[0][30]\,
      R => '0'
    );
\lastLR_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(31),
      Q => \lastLR_reg_n_0_[0][31]\,
      R => '0'
    );
\lastLR_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(3),
      Q => p_1_in8_in(2),
      R => '0'
    );
\lastLR_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(4),
      Q => p_1_in8_in(3),
      R => '0'
    );
\lastLR_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(5),
      Q => p_1_in8_in(4),
      R => '0'
    );
\lastLR_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(6),
      Q => p_1_in8_in(5),
      R => '0'
    );
\lastLR_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(7),
      Q => p_1_in8_in(6),
      R => '0'
    );
\lastLR_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(8),
      Q => \lastLR_reg_n_0_[0][8]\,
      R => '0'
    );
\lastLR_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tdata(9),
      Q => p_1_in2_in(0),
      R => '0'
    );
\lastLR_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in2_in(1),
      Q => p_0_in0_in(1),
      R => '0'
    );
\lastLR_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in2_in(2),
      Q => p_0_in0_in(2),
      R => '0'
    );
\lastLR_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in2_in(3),
      Q => p_0_in0_in(3),
      R => '0'
    );
\lastLR_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in2_in(4),
      Q => p_0_in0_in(4),
      R => '0'
    );
\lastLR_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in2_in(5),
      Q => p_0_in0_in(5),
      R => '0'
    );
\lastLR_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in2_in(6),
      Q => p_0_in0_in(6),
      R => '0'
    );
\lastLR_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][16]\,
      Q => p_0_in(0),
      R => '0'
    );
\lastLR_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][17]\,
      Q => p_0_in(1),
      R => '0'
    );
\lastLR_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][18]\,
      Q => p_0_in(2),
      R => '0'
    );
\lastLR_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][19]\,
      Q => p_0_in(3),
      R => '0'
    );
\lastLR_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][20]\,
      Q => p_0_in(4),
      R => '0'
    );
\lastLR_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][21]\,
      Q => p_0_in(5),
      R => '0'
    );
\lastLR_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][22]\,
      Q => p_0_in(6),
      R => '0'
    );
\lastLR_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][23]\,
      Q => p_0_in(7),
      R => '0'
    );
\lastLR_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][24]\,
      Q => p_3_in(0),
      R => '0'
    );
\lastLR_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][25]\,
      Q => p_3_in(1),
      R => '0'
    );
\lastLR_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][26]\,
      Q => p_3_in(2),
      R => '0'
    );
\lastLR_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][27]\,
      Q => p_3_in(3),
      R => '0'
    );
\lastLR_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][28]\,
      Q => p_3_in(4),
      R => '0'
    );
\lastLR_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][29]\,
      Q => p_3_in(5),
      R => '0'
    );
\lastLR_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][30]\,
      Q => p_3_in(6),
      R => '0'
    );
\lastLR_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \lastLR_reg_n_0_[0][31]\,
      Q => p_3_in(7),
      R => '0'
    );
\lastLR_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in2_in(0),
      Q => p_0_in0_in(0),
      R => '0'
    );
\tdataL[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataL[10]_i_2_n_0\,
      I1 => p_1_in8_in(2),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataL[10]_i_3_n_0\,
      I4 => p_0_in(3),
      I5 => s_axis_lr_tdata(3),
      O => p_1_in(10)
    );
\tdataL[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_1_in8_in(1),
      I2 => p_1_in8_in(0),
      I3 => p_0_in(1),
      O => \tdataL[10]_i_2_n_0\
    );
\tdataL[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => p_0_in(2),
      I1 => s_axis_lr_tdata(2),
      I2 => s_axis_lr_tdata(1),
      I3 => p_0_in(1),
      O => \tdataL[10]_i_3_n_0\
    );
\tdataL[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataL[11]_i_2_n_0\,
      I1 => p_1_in8_in(3),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataL[11]_i_3_n_0\,
      I4 => p_0_in(4),
      I5 => s_axis_lr_tdata(4),
      O => p_1_in(11)
    );
\tdataL[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_1_in8_in(2),
      I2 => p_0_in(1),
      I3 => p_1_in8_in(0),
      I4 => p_1_in8_in(1),
      I5 => p_0_in(2),
      O => \tdataL[11]_i_2_n_0\
    );
\tdataL[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in(3),
      I1 => s_axis_lr_tdata(3),
      I2 => p_0_in(1),
      I3 => s_axis_lr_tdata(1),
      I4 => s_axis_lr_tdata(2),
      I5 => p_0_in(2),
      O => \tdataL[11]_i_3_n_0\
    );
\tdataL[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataL[12]_i_2_n_0\,
      I1 => p_1_in8_in(4),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataL[12]_i_3_n_0\,
      I4 => p_0_in(5),
      I5 => s_axis_lr_tdata(5),
      O => p_1_in(12)
    );
\tdataL[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_1_in8_in(3),
      I2 => \tdataL[11]_i_2_n_0\,
      O => \tdataL[12]_i_2_n_0\
    );
\tdataL[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => s_axis_lr_tdata(4),
      I2 => \tdataL[11]_i_3_n_0\,
      O => \tdataL[12]_i_3_n_0\
    );
\tdataL[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataL[13]_i_2_n_0\,
      I1 => p_1_in8_in(5),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataL[13]_i_3_n_0\,
      I4 => p_0_in(6),
      I5 => s_axis_lr_tdata(6),
      O => p_1_in(13)
    );
\tdataL[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_1_in8_in(4),
      I2 => \tdataL[11]_i_2_n_0\,
      I3 => p_1_in8_in(3),
      I4 => p_0_in(4),
      O => \tdataL[13]_i_2_n_0\
    );
\tdataL[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in(5),
      I1 => s_axis_lr_tdata(5),
      I2 => \tdataL[11]_i_3_n_0\,
      I3 => s_axis_lr_tdata(4),
      I4 => p_0_in(4),
      O => \tdataL[13]_i_3_n_0\
    );
\tdataL[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[13]_i_3_n_0\,
      I1 => s_axis_lr_tdata(6),
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => s_axis_lr_tdata(7),
      O => tdataL0(6)
    );
\tdataL[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[13]_i_2_n_0\,
      I1 => p_1_in8_in(5),
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_1_in8_in(6),
      O => tdataL09_out(6)
    );
\tdataL[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in(7),
      I1 => s_axis_lr_tdata(7),
      I2 => \tdataL[13]_i_3_n_0\,
      I3 => s_axis_lr_tdata(6),
      I4 => p_0_in(6),
      O => tdataL0(7)
    );
\tdataL[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_1_in8_in(6),
      I2 => \tdataL[13]_i_2_n_0\,
      I3 => p_1_in8_in(5),
      I4 => p_0_in(6),
      O => tdataL09_out(7)
    );
\tdataL[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lastLR_reg_n_0_[0][0]\,
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(0),
      O => p_1_in(16)
    );
\tdataL[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in8_in(0),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(1),
      O => p_1_in(17)
    );
\tdataL[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in8_in(1),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(2),
      O => p_1_in(18)
    );
\tdataL[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in8_in(2),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(3),
      O => p_1_in(19)
    );
\tdataL[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in8_in(3),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(4),
      O => p_1_in(20)
    );
\tdataL[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in8_in(4),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(5),
      O => p_1_in(21)
    );
\tdataL[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in8_in(5),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(6),
      O => p_1_in(22)
    );
\tdataL[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in8_in(6),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(7),
      O => p_1_in(23)
    );
\tdataL[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \lastLR_reg_n_0_[0][17]\,
      I1 => p_1_in8_in(0),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => s_axis_lr_tdata(17),
      I4 => s_axis_lr_tdata(1),
      O => p_1_in(24)
    );
\tdataL[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778FFFF87780000"
    )
        port map (
      I0 => \lastLR_reg_n_0_[0][17]\,
      I1 => p_1_in8_in(0),
      I2 => p_1_in8_in(1),
      I3 => \lastLR_reg_n_0_[0][18]\,
      I4 => \tvalid_reg_n_0_[0]\,
      I5 => tdataL07_out(1),
      O => p_1_in(25)
    );
\tdataL[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => s_axis_lr_tdata(17),
      I1 => s_axis_lr_tdata(1),
      I2 => s_axis_lr_tdata(2),
      I3 => s_axis_lr_tdata(18),
      O => tdataL07_out(1)
    );
\tdataL[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => s_axis_lr_tdata(1),
      I1 => s_axis_lr_tdata(17),
      I2 => s_axis_lr_tdata(18),
      I3 => s_axis_lr_tdata(2),
      I4 => s_axis_lr_tdata(3),
      I5 => s_axis_lr_tdata(19),
      O => tdataL07_out(2)
    );
\tdataL[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_1_in8_in(0),
      I1 => \lastLR_reg_n_0_[0][17]\,
      I2 => \lastLR_reg_n_0_[0][18]\,
      I3 => p_1_in8_in(1),
      I4 => p_1_in8_in(2),
      I5 => \lastLR_reg_n_0_[0][19]\,
      O => tdataL011_out(2)
    );
\tdataL[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"960096FF96FF9600"
    )
        port map (
      I0 => \tdataL[27]_i_2_n_0\,
      I1 => p_1_in8_in(3),
      I2 => \lastLR_reg_n_0_[0][20]\,
      I3 => \tvalid_reg_n_0_[0]\,
      I4 => \tdataL[27]_i_3_n_0\,
      I5 => \tdataL[27]_i_4_n_0\,
      O => p_1_in(27)
    );
\tdataL[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_1_in8_in(2),
      I1 => \lastLR_reg_n_0_[0][19]\,
      I2 => p_1_in8_in(0),
      I3 => \lastLR_reg_n_0_[0][17]\,
      I4 => \lastLR_reg_n_0_[0][18]\,
      I5 => p_1_in8_in(1),
      O => \tdataL[27]_i_2_n_0\
    );
\tdataL[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => s_axis_lr_tdata(3),
      I1 => s_axis_lr_tdata(19),
      I2 => s_axis_lr_tdata(1),
      I3 => s_axis_lr_tdata(17),
      I4 => s_axis_lr_tdata(18),
      I5 => s_axis_lr_tdata(2),
      O => \tdataL[27]_i_3_n_0\
    );
\tdataL[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_lr_tdata(20),
      I1 => s_axis_lr_tdata(4),
      O => \tdataL[27]_i_4_n_0\
    );
\tdataL[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[27]_i_3_n_0\,
      I1 => s_axis_lr_tdata(20),
      I2 => s_axis_lr_tdata(4),
      I3 => s_axis_lr_tdata(5),
      I4 => s_axis_lr_tdata(21),
      O => tdataL07_out(4)
    );
\tdataL[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[27]_i_2_n_0\,
      I1 => \lastLR_reg_n_0_[0][20]\,
      I2 => p_1_in8_in(3),
      I3 => p_1_in8_in(4),
      I4 => \lastLR_reg_n_0_[0][21]\,
      O => tdataL011_out(4)
    );
\tdataL[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"960096FF96FF9600"
    )
        port map (
      I0 => \tdataL[29]_i_2_n_0\,
      I1 => p_1_in8_in(5),
      I2 => \lastLR_reg_n_0_[0][22]\,
      I3 => \tvalid_reg_n_0_[0]\,
      I4 => \tdataL[29]_i_3_n_0\,
      I5 => \tdataL[29]_i_4_n_0\,
      O => p_1_in(29)
    );
\tdataL[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_1_in8_in(4),
      I1 => \lastLR_reg_n_0_[0][21]\,
      I2 => \tdataL[27]_i_2_n_0\,
      I3 => \lastLR_reg_n_0_[0][20]\,
      I4 => p_1_in8_in(3),
      O => \tdataL[29]_i_2_n_0\
    );
\tdataL[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => s_axis_lr_tdata(5),
      I1 => s_axis_lr_tdata(21),
      I2 => \tdataL[27]_i_3_n_0\,
      I3 => s_axis_lr_tdata(20),
      I4 => s_axis_lr_tdata(4),
      O => \tdataL[29]_i_3_n_0\
    );
\tdataL[29]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_lr_tdata(22),
      I1 => s_axis_lr_tdata(6),
      O => \tdataL[29]_i_4_n_0\
    );
\tdataL[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[29]_i_3_n_0\,
      I1 => s_axis_lr_tdata(22),
      I2 => s_axis_lr_tdata(6),
      I3 => s_axis_lr_tdata(7),
      I4 => s_axis_lr_tdata(23),
      O => tdataL07_out(6)
    );
\tdataL[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[29]_i_2_n_0\,
      I1 => \lastLR_reg_n_0_[0][22]\,
      I2 => p_1_in8_in(5),
      I3 => p_1_in8_in(6),
      I4 => \lastLR_reg_n_0_[0][23]\,
      O => tdataL011_out(6)
    );
\tdataL[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => s_axis_lr_tdata(7),
      I1 => s_axis_lr_tdata(23),
      I2 => \tdataL[29]_i_3_n_0\,
      I3 => s_axis_lr_tdata(22),
      I4 => s_axis_lr_tdata(6),
      O => tdataL07_out(7)
    );
\tdataL[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_1_in8_in(6),
      I1 => \lastLR_reg_n_0_[0][23]\,
      I2 => \tdataL[29]_i_2_n_0\,
      I3 => \lastLR_reg_n_0_[0][22]\,
      I4 => p_1_in8_in(5),
      O => tdataL011_out(7)
    );
\tdataL[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => p_1_in8_in(0),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(1),
      I3 => p_0_in(1),
      O => p_1_in(8)
    );
\tdataL[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataL[9]_i_2_n_0\,
      I1 => p_1_in8_in(1),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataL[9]_i_3_n_0\,
      I4 => p_0_in(2),
      I5 => s_axis_lr_tdata(2),
      O => p_1_in(9)
    );
\tdataL[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_1_in8_in(0),
      O => \tdataL[9]_i_2_n_0\
    );
\tdataL[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s_axis_lr_tdata(1),
      O => \tdataL[9]_i_3_n_0\
    );
\tdataL_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(0),
      Q => m_axis_l_tdata(0),
      R => '0'
    );
\tdataL_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(10),
      Q => m_axis_l_tdata(10),
      R => '0'
    );
\tdataL_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(11),
      Q => m_axis_l_tdata(11),
      R => '0'
    );
\tdataL_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(12),
      Q => m_axis_l_tdata(12),
      R => '0'
    );
\tdataL_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(13),
      Q => m_axis_l_tdata(13),
      R => '0'
    );
\tdataL_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(14),
      Q => m_axis_l_tdata(14),
      R => '0'
    );
\tdataL_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataL0(6),
      I1 => tdataL09_out(6),
      O => p_1_in(14),
      S => \tvalid_reg_n_0_[0]\
    );
\tdataL_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(15),
      Q => m_axis_l_tdata(15),
      R => '0'
    );
\tdataL_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataL0(7),
      I1 => tdataL09_out(7),
      O => p_1_in(15),
      S => \tvalid_reg_n_0_[0]\
    );
\tdataL_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(16),
      Q => m_axis_l_tdata(16),
      R => '0'
    );
\tdataL_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(17),
      Q => m_axis_l_tdata(17),
      R => '0'
    );
\tdataL_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(18),
      Q => m_axis_l_tdata(18),
      R => '0'
    );
\tdataL_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(19),
      Q => m_axis_l_tdata(19),
      R => '0'
    );
\tdataL_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(1),
      Q => m_axis_l_tdata(1),
      R => '0'
    );
\tdataL_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(20),
      Q => m_axis_l_tdata(20),
      R => '0'
    );
\tdataL_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(21),
      Q => m_axis_l_tdata(21),
      R => '0'
    );
\tdataL_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(22),
      Q => m_axis_l_tdata(22),
      R => '0'
    );
\tdataL_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(23),
      Q => m_axis_l_tdata(23),
      R => '0'
    );
\tdataL_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(24),
      Q => m_axis_l_tdata(24),
      R => '0'
    );
\tdataL_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(25),
      Q => m_axis_l_tdata(25),
      R => '0'
    );
\tdataL_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(26),
      Q => m_axis_l_tdata(26),
      R => '0'
    );
\tdataL_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataL07_out(2),
      I1 => tdataL011_out(2),
      O => p_1_in(26),
      S => \tvalid_reg_n_0_[0]\
    );
\tdataL_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(27),
      Q => m_axis_l_tdata(27),
      R => '0'
    );
\tdataL_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(28),
      Q => m_axis_l_tdata(28),
      R => '0'
    );
\tdataL_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataL07_out(4),
      I1 => tdataL011_out(4),
      O => p_1_in(28),
      S => \tvalid_reg_n_0_[0]\
    );
\tdataL_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(29),
      Q => m_axis_l_tdata(29),
      R => '0'
    );
\tdataL_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(2),
      Q => m_axis_l_tdata(2),
      R => '0'
    );
\tdataL_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(30),
      Q => m_axis_l_tdata(30),
      R => '0'
    );
\tdataL_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataL07_out(6),
      I1 => tdataL011_out(6),
      O => p_1_in(30),
      S => \tvalid_reg_n_0_[0]\
    );
\tdataL_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(31),
      Q => m_axis_l_tdata(31),
      R => '0'
    );
\tdataL_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataL07_out(7),
      I1 => tdataL011_out(7),
      O => p_1_in(31),
      S => \tvalid_reg_n_0_[0]\
    );
\tdataL_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(3),
      Q => m_axis_l_tdata(3),
      R => '0'
    );
\tdataL_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(4),
      Q => m_axis_l_tdata(4),
      R => '0'
    );
\tdataL_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(5),
      Q => m_axis_l_tdata(5),
      R => '0'
    );
\tdataL_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(6),
      Q => m_axis_l_tdata(6),
      R => '0'
    );
\tdataL_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_0_in(7),
      Q => m_axis_l_tdata(7),
      R => '0'
    );
\tdataL_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(8),
      Q => m_axis_l_tdata(8),
      R => '0'
    );
\tdataL_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_1_in(9),
      Q => m_axis_l_tdata(9),
      R => '0'
    );
\tdataR[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_3_in(1),
      I1 => p_0_in0_in(0),
      O => tdataR01_out(0)
    );
\tdataR[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => p_1_in2_in(0),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(9),
      I3 => p_3_in(1),
      O => \tdataR[16]_i_1_n_0\
    );
\tdataR[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataR[17]_i_2_n_0\,
      I1 => p_1_in2_in(1),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataR[17]_i_3_n_0\,
      I4 => p_3_in(2),
      I5 => s_axis_lr_tdata(10),
      O => \tdataR[17]_i_1_n_0\
    );
\tdataR[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_3_in(1),
      I1 => p_1_in2_in(0),
      O => \tdataR[17]_i_2_n_0\
    );
\tdataR[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_3_in(1),
      I1 => s_axis_lr_tdata(9),
      O => \tdataR[17]_i_3_n_0\
    );
\tdataR[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataR[18]_i_2_n_0\,
      I1 => p_1_in2_in(2),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataR[18]_i_3_n_0\,
      I4 => p_3_in(3),
      I5 => s_axis_lr_tdata(11),
      O => \tdataR[18]_i_1_n_0\
    );
\tdataR[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => p_3_in(2),
      I1 => p_1_in2_in(1),
      I2 => p_1_in2_in(0),
      I3 => p_3_in(1),
      O => \tdataR[18]_i_2_n_0\
    );
\tdataR[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => p_3_in(2),
      I1 => s_axis_lr_tdata(10),
      I2 => s_axis_lr_tdata(9),
      I3 => p_3_in(1),
      O => \tdataR[18]_i_3_n_0\
    );
\tdataR[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataR[19]_i_2_n_0\,
      I1 => p_1_in2_in(3),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataR[19]_i_3_n_0\,
      I4 => p_3_in(4),
      I5 => s_axis_lr_tdata(12),
      O => \tdataR[19]_i_1_n_0\
    );
\tdataR[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_3_in(3),
      I1 => p_1_in2_in(2),
      I2 => p_3_in(1),
      I3 => p_1_in2_in(0),
      I4 => p_1_in2_in(1),
      I5 => p_3_in(2),
      O => \tdataR[19]_i_2_n_0\
    );
\tdataR[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_3_in(3),
      I1 => s_axis_lr_tdata(11),
      I2 => p_3_in(1),
      I3 => s_axis_lr_tdata(9),
      I4 => s_axis_lr_tdata(10),
      I5 => p_3_in(2),
      O => \tdataR[19]_i_3_n_0\
    );
\tdataR[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_3_in(1),
      I1 => p_0_in0_in(0),
      I2 => p_0_in0_in(1),
      I3 => p_3_in(2),
      O => tdataR01_out(1)
    );
\tdataR[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataR[20]_i_2_n_0\,
      I1 => p_1_in2_in(4),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataR[20]_i_3_n_0\,
      I4 => p_3_in(5),
      I5 => s_axis_lr_tdata(13),
      O => \tdataR[20]_i_1_n_0\
    );
\tdataR[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in(4),
      I1 => p_1_in2_in(3),
      I2 => \tdataR[19]_i_2_n_0\,
      O => \tdataR[20]_i_2_n_0\
    );
\tdataR[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in(4),
      I1 => s_axis_lr_tdata(12),
      I2 => \tdataR[19]_i_3_n_0\,
      O => \tdataR[20]_i_3_n_0\
    );
\tdataR[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90606F909F6F60"
    )
        port map (
      I0 => \tdataR[21]_i_2_n_0\,
      I1 => p_1_in2_in(5),
      I2 => \tvalid_reg_n_0_[0]\,
      I3 => \tdataR[21]_i_3_n_0\,
      I4 => p_3_in(6),
      I5 => s_axis_lr_tdata(14),
      O => \tdataR[21]_i_1_n_0\
    );
\tdataR[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_3_in(5),
      I1 => p_1_in2_in(4),
      I2 => \tdataR[19]_i_2_n_0\,
      I3 => p_1_in2_in(3),
      I4 => p_3_in(4),
      O => \tdataR[21]_i_2_n_0\
    );
\tdataR[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_3_in(5),
      I1 => s_axis_lr_tdata(13),
      I2 => \tdataR[19]_i_3_n_0\,
      I3 => s_axis_lr_tdata(12),
      I4 => p_3_in(4),
      O => \tdataR[21]_i_3_n_0\
    );
\tdataR[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[21]_i_3_n_0\,
      I1 => s_axis_lr_tdata(14),
      I2 => p_3_in(6),
      I3 => p_3_in(7),
      I4 => s_axis_lr_tdata(15),
      O => tdataR0(6)
    );
\tdataR[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[21]_i_2_n_0\,
      I1 => p_1_in2_in(5),
      I2 => p_3_in(6),
      I3 => p_3_in(7),
      I4 => p_1_in2_in(6),
      O => tdataR03_out(6)
    );
\tdataR[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_3_in(7),
      I1 => s_axis_lr_tdata(15),
      I2 => \tdataR[21]_i_3_n_0\,
      I3 => s_axis_lr_tdata(14),
      I4 => p_3_in(6),
      O => tdataR0(7)
    );
\tdataR[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_3_in(7),
      I1 => p_1_in2_in(6),
      I2 => \tdataR[21]_i_2_n_0\,
      I3 => p_1_in2_in(5),
      I4 => p_3_in(6),
      O => tdataR03_out(7)
    );
\tdataR[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \lastLR_reg_n_0_[0][8]\,
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(8),
      O => \tdataR[24]_i_1_n_0\
    );
\tdataR[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in2_in(0),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(9),
      O => \tdataR[25]_i_1_n_0\
    );
\tdataR[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in2_in(1),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(10),
      O => \tdataR[26]_i_1_n_0\
    );
\tdataR[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in2_in(2),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(11),
      O => \tdataR[27]_i_1_n_0\
    );
\tdataR[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in2_in(3),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(12),
      O => \tdataR[28]_i_1_n_0\
    );
\tdataR[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in2_in(4),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(13),
      O => \tdataR[29]_i_1_n_0\
    );
\tdataR[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in0_in(0),
      I1 => p_3_in(1),
      I2 => p_3_in(2),
      I3 => p_0_in0_in(1),
      I4 => p_0_in0_in(2),
      I5 => p_3_in(3),
      O => tdataR01_out(2)
    );
\tdataR[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in2_in(5),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(14),
      O => \tdataR[30]_i_1_n_0\
    );
\tdataR[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in2_in(6),
      I1 => \tvalid_reg_n_0_[0]\,
      I2 => s_axis_lr_tdata(15),
      O => \tdataR[31]_i_1_n_0\
    );
\tdataR[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataR[4]_i_2_n_0\,
      I1 => p_0_in0_in(3),
      I2 => p_3_in(4),
      O => tdataR01_out(3)
    );
\tdataR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[4]_i_2_n_0\,
      I1 => p_3_in(4),
      I2 => p_0_in0_in(3),
      I3 => p_0_in0_in(4),
      I4 => p_3_in(5),
      O => tdataR01_out(4)
    );
\tdataR[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in0_in(2),
      I1 => p_3_in(3),
      I2 => p_0_in0_in(0),
      I3 => p_3_in(1),
      I4 => p_3_in(2),
      I5 => p_0_in0_in(1),
      O => \tdataR[4]_i_2_n_0\
    );
\tdataR[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataR[7]_i_2_n_0\,
      I1 => p_0_in0_in(5),
      I2 => p_3_in(6),
      O => tdataR01_out(5)
    );
\tdataR[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[7]_i_2_n_0\,
      I1 => p_3_in(6),
      I2 => p_0_in0_in(5),
      I3 => p_0_in0_in(6),
      I4 => p_3_in(7),
      O => tdataR01_out(6)
    );
\tdataR[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in0_in(6),
      I1 => p_3_in(7),
      I2 => \tdataR[7]_i_2_n_0\,
      I3 => p_3_in(6),
      I4 => p_0_in0_in(5),
      O => tdataR01_out(7)
    );
\tdataR[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in0_in(4),
      I1 => p_3_in(5),
      I2 => \tdataR[4]_i_2_n_0\,
      I3 => p_3_in(4),
      I4 => p_0_in0_in(3),
      O => \tdataR[7]_i_2_n_0\
    );
\tdataR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(0),
      Q => m_axis_r_tdata(0),
      R => '0'
    );
\tdataR_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(2),
      Q => m_axis_r_tdata(10),
      R => '0'
    );
\tdataR_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(3),
      Q => m_axis_r_tdata(11),
      R => '0'
    );
\tdataR_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(4),
      Q => m_axis_r_tdata(12),
      R => '0'
    );
\tdataR_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(5),
      Q => m_axis_r_tdata(13),
      R => '0'
    );
\tdataR_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(6),
      Q => m_axis_r_tdata(14),
      R => '0'
    );
\tdataR_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(7),
      Q => m_axis_r_tdata(15),
      R => '0'
    );
\tdataR_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[16]_i_1_n_0\,
      Q => m_axis_r_tdata(16),
      R => '0'
    );
\tdataR_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[17]_i_1_n_0\,
      Q => m_axis_r_tdata(17),
      R => '0'
    );
\tdataR_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[18]_i_1_n_0\,
      Q => m_axis_r_tdata(18),
      R => '0'
    );
\tdataR_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[19]_i_1_n_0\,
      Q => m_axis_r_tdata(19),
      R => '0'
    );
\tdataR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(1),
      Q => m_axis_r_tdata(1),
      R => '0'
    );
\tdataR_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[20]_i_1_n_0\,
      Q => m_axis_r_tdata(20),
      R => '0'
    );
\tdataR_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[21]_i_1_n_0\,
      Q => m_axis_r_tdata(21),
      R => '0'
    );
\tdataR_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR_reg[22]_i_1_n_0\,
      Q => m_axis_r_tdata(22),
      R => '0'
    );
\tdataR_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataR0(6),
      I1 => tdataR03_out(6),
      O => \tdataR_reg[22]_i_1_n_0\,
      S => \tvalid_reg_n_0_[0]\
    );
\tdataR_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR_reg[23]_i_1_n_0\,
      Q => m_axis_r_tdata(23),
      R => '0'
    );
\tdataR_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => tdataR0(7),
      I1 => tdataR03_out(7),
      O => \tdataR_reg[23]_i_1_n_0\,
      S => \tvalid_reg_n_0_[0]\
    );
\tdataR_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[24]_i_1_n_0\,
      Q => m_axis_r_tdata(24),
      R => '0'
    );
\tdataR_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[25]_i_1_n_0\,
      Q => m_axis_r_tdata(25),
      R => '0'
    );
\tdataR_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[26]_i_1_n_0\,
      Q => m_axis_r_tdata(26),
      R => '0'
    );
\tdataR_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[27]_i_1_n_0\,
      Q => m_axis_r_tdata(27),
      R => '0'
    );
\tdataR_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[28]_i_1_n_0\,
      Q => m_axis_r_tdata(28),
      R => '0'
    );
\tdataR_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[29]_i_1_n_0\,
      Q => m_axis_r_tdata(29),
      R => '0'
    );
\tdataR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(2),
      Q => m_axis_r_tdata(2),
      R => '0'
    );
\tdataR_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[30]_i_1_n_0\,
      Q => m_axis_r_tdata(30),
      R => '0'
    );
\tdataR_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => \tdataR[31]_i_1_n_0\,
      Q => m_axis_r_tdata(31),
      R => '0'
    );
\tdataR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(3),
      Q => m_axis_r_tdata(3),
      R => '0'
    );
\tdataR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(4),
      Q => m_axis_r_tdata(4),
      R => '0'
    );
\tdataR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(5),
      Q => m_axis_r_tdata(5),
      R => '0'
    );
\tdataR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(6),
      Q => m_axis_r_tdata(6),
      R => '0'
    );
\tdataR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => tdataR01_out(7),
      Q => m_axis_r_tdata(7),
      R => '0'
    );
\tdataR_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(0),
      Q => m_axis_r_tdata(8),
      R => '0'
    );
\tdataR_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tvalid_reg_n_0_[1]\,
      D => p_3_in(1),
      Q => m_axis_r_tdata(9),
      R => '0'
    );
\tlast_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tlast,
      Q => tlast(0),
      R => '0'
    );
\tlast_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tlast(0),
      Q => tlast(1),
      R => '0'
    );
\tlast_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tlast(1),
      Q => m_axis_r_tlast,
      R => '0'
    );
\tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tuser,
      Q => tuser(0),
      R => '0'
    );
\tuser_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tuser(0),
      Q => tuser(1),
      R => '0'
    );
\tuser_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tuser(1),
      Q => m_axis_r_tuser,
      R => '0'
    );
\tvalid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tvalid,
      Q => \tvalid_reg_n_0_[0]\,
      R => '0'
    );
\tvalid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tvalid_reg_n_0_[0]\,
      Q => \tvalid_reg_n_0_[1]\,
      R => '0'
    );
\tvalid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tvalid_reg_n_0_[1]\,
      Q => m_axis_r_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Inter_col_v1_0_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_lr_tready : out STD_LOGIC;
    s_axis_lr_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lr_tvalid : in STD_LOGIC;
    s_axis_lr_tlast : in STD_LOGIC;
    s_axis_lr_tuser : in STD_LOGIC;
    m_axis_l_tvalid : out STD_LOGIC;
    m_axis_l_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_l_tready : in STD_LOGIC;
    m_axis_l_tlast : out STD_LOGIC;
    m_axis_l_tuser : out STD_LOGIC;
    m_axis_r_tvalid : out STD_LOGIC;
    m_axis_r_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_r_tready : in STD_LOGIC;
    m_axis_r_tlast : out STD_LOGIC;
    m_axis_r_tuser : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Inter_col_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Inter_col_v1_0_0_0 : entity is "design_1_Inter_col_v1_0_0_0,Inter_col_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Inter_col_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Inter_col_v1_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Inter_col_v1_0_0_0 : entity is "Inter_col_v1_0,Vivado 2020.1";
end design_1_Inter_col_v1_0_0_0;

architecture STRUCTURE of design_1_Inter_col_v1_0_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_r_tlast\ : STD_LOGIC;
  signal \^m_axis_r_tuser\ : STD_LOGIC;
  signal \^m_axis_r_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_l:m_axis_r:s_axis_lr, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_l_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_l TLAST";
  attribute X_INTERFACE_INFO of m_axis_l_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_l TREADY";
  attribute X_INTERFACE_INFO of m_axis_l_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_l TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_l_tuser : signal is "XIL_INTERFACENAME m_axis_l, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_l_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_l TVALID";
  attribute X_INTERFACE_INFO of m_axis_r_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_r TLAST";
  attribute X_INTERFACE_INFO of m_axis_r_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_r TREADY";
  attribute X_INTERFACE_INFO of m_axis_r_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_r TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_r_tuser : signal is "XIL_INTERFACENAME m_axis_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_r_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_r TVALID";
  attribute X_INTERFACE_INFO of s_axis_lr_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_lr TLAST";
  attribute X_INTERFACE_INFO of s_axis_lr_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_lr TREADY";
  attribute X_INTERFACE_INFO of s_axis_lr_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_lr TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_lr_tuser : signal is "XIL_INTERFACENAME s_axis_lr, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_lr_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_lr TVALID";
  attribute X_INTERFACE_INFO of m_axis_l_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_l TDATA";
  attribute X_INTERFACE_INFO of m_axis_r_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_r TDATA";
  attribute X_INTERFACE_INFO of s_axis_lr_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_lr TDATA";
begin
  m_axis_l_tlast <= \^m_axis_r_tlast\;
  m_axis_l_tuser <= \^m_axis_r_tuser\;
  m_axis_l_tvalid <= \^m_axis_r_tvalid\;
  m_axis_r_tlast <= \^m_axis_r_tlast\;
  m_axis_r_tuser <= \^m_axis_r_tuser\;
  m_axis_r_tvalid <= \^m_axis_r_tvalid\;
  s_axis_lr_tready <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_Inter_col_v1_0_0_0_Inter_col_v1_0
     port map (
      aclk => aclk,
      m_axis_l_tdata(31 downto 0) => m_axis_l_tdata(31 downto 0),
      m_axis_r_tdata(31 downto 0) => m_axis_r_tdata(31 downto 0),
      m_axis_r_tlast => \^m_axis_r_tlast\,
      m_axis_r_tuser => \^m_axis_r_tuser\,
      m_axis_r_tvalid => \^m_axis_r_tvalid\,
      s_axis_lr_tdata(31 downto 0) => s_axis_lr_tdata(31 downto 0),
      s_axis_lr_tlast => s_axis_lr_tlast,
      s_axis_lr_tuser => s_axis_lr_tuser,
      s_axis_lr_tvalid => s_axis_lr_tvalid
    );
end STRUCTURE;
