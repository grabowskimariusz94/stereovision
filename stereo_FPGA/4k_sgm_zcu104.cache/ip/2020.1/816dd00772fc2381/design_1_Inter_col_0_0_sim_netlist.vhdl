-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Nov 28 10:16:42 2020
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Inter_col_0_0_sim_netlist.vhdl
-- Design      : design_1_Inter_col_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0 is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0 is
  signal \lastLR_reg_n_0_[16]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[17]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[18]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[19]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[20]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[21]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[22]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[23]\ : STD_LOGIC;
  signal \lastLR_reg_n_0_[24]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal tdataL0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tdataL05_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tdataL[12]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[15]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[28]_i_2_n_0\ : STD_LOGIC;
  signal \tdataL[31]_i_2_n_0\ : STD_LOGIC;
  signal tdataR0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tdataR01_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tdataR[20]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[23]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[4]_i_2_n_0\ : STD_LOGIC;
  signal \tdataR[7]_i_2_n_0\ : STD_LOGIC;
  signal tlast : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tuser : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tvalid : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tdataL[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdataL[12]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdataL[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdataL[14]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tdataL[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tdataL[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdataL[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdataL[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdataL[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tdataL[28]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdataL[29]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tdataL[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdataL[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdataL[31]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdataL[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tdataL[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tdataR[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdataR[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdataR[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdataR[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdataR[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdataR[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdataR[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdataR[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdataR[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdataR[23]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdataR[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdataR[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tdataR[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdataR[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdataR[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdataR[7]_i_2\ : label is "soft_lutpair5";
begin
\lastLR_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(10),
      Q => p_0_in(1),
      R => '0'
    );
\lastLR_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(11),
      Q => p_0_in(2),
      R => '0'
    );
\lastLR_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(12),
      Q => p_0_in(3),
      R => '0'
    );
\lastLR_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(13),
      Q => p_0_in(4),
      R => '0'
    );
\lastLR_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(14),
      Q => p_0_in(5),
      R => '0'
    );
\lastLR_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(15),
      Q => p_0_in(6),
      R => '0'
    );
\lastLR_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(16),
      Q => \lastLR_reg_n_0_[16]\,
      R => '0'
    );
\lastLR_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(17),
      Q => \lastLR_reg_n_0_[17]\,
      R => '0'
    );
\lastLR_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(18),
      Q => \lastLR_reg_n_0_[18]\,
      R => '0'
    );
\lastLR_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(19),
      Q => \lastLR_reg_n_0_[19]\,
      R => '0'
    );
\lastLR_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(20),
      Q => \lastLR_reg_n_0_[20]\,
      R => '0'
    );
\lastLR_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(21),
      Q => \lastLR_reg_n_0_[21]\,
      R => '0'
    );
\lastLR_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(22),
      Q => \lastLR_reg_n_0_[22]\,
      R => '0'
    );
\lastLR_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(23),
      Q => \lastLR_reg_n_0_[23]\,
      R => '0'
    );
\lastLR_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(24),
      Q => \lastLR_reg_n_0_[24]\,
      R => '0'
    );
\lastLR_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(25),
      Q => p_1_in(0),
      R => '0'
    );
\lastLR_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(26),
      Q => p_1_in(1),
      R => '0'
    );
\lastLR_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(27),
      Q => p_1_in(2),
      R => '0'
    );
\lastLR_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(28),
      Q => p_1_in(3),
      R => '0'
    );
\lastLR_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(29),
      Q => p_1_in(4),
      R => '0'
    );
\lastLR_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(30),
      Q => p_1_in(5),
      R => '0'
    );
\lastLR_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(31),
      Q => p_1_in(6),
      R => '0'
    );
\lastLR_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => s_axis_lr_tvalid,
      D => s_axis_lr_tdata(9),
      Q => p_0_in(0),
      R => '0'
    );
\tdataL[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \lastLR_reg_n_0_[17]\,
      I1 => s_axis_lr_tdata(1),
      I2 => s_axis_lr_tdata(2),
      I3 => \lastLR_reg_n_0_[18]\,
      I4 => \lastLR_reg_n_0_[19]\,
      I5 => s_axis_lr_tdata(3),
      O => tdataL0(2)
    );
\tdataL[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataL[12]_i_2_n_0\,
      I1 => \lastLR_reg_n_0_[20]\,
      I2 => s_axis_lr_tdata(4),
      O => tdataL0(3)
    );
\tdataL[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[12]_i_2_n_0\,
      I1 => s_axis_lr_tdata(4),
      I2 => \lastLR_reg_n_0_[20]\,
      I3 => \lastLR_reg_n_0_[21]\,
      I4 => s_axis_lr_tdata(5),
      O => tdataL0(4)
    );
\tdataL[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \lastLR_reg_n_0_[19]\,
      I1 => s_axis_lr_tdata(3),
      I2 => \lastLR_reg_n_0_[17]\,
      I3 => s_axis_lr_tdata(1),
      I4 => s_axis_lr_tdata(2),
      I5 => \lastLR_reg_n_0_[18]\,
      O => \tdataL[12]_i_2_n_0\
    );
\tdataL[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataL[15]_i_2_n_0\,
      I1 => \lastLR_reg_n_0_[22]\,
      I2 => s_axis_lr_tdata(6),
      O => tdataL0(5)
    );
\tdataL[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[15]_i_2_n_0\,
      I1 => s_axis_lr_tdata(6),
      I2 => \lastLR_reg_n_0_[22]\,
      I3 => \lastLR_reg_n_0_[23]\,
      I4 => s_axis_lr_tdata(7),
      O => tdataL0(6)
    );
\tdataL[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \lastLR_reg_n_0_[23]\,
      I1 => s_axis_lr_tdata(7),
      I2 => \tdataL[15]_i_2_n_0\,
      I3 => s_axis_lr_tdata(6),
      I4 => \lastLR_reg_n_0_[22]\,
      O => tdataL0(7)
    );
\tdataL[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \lastLR_reg_n_0_[21]\,
      I1 => s_axis_lr_tdata(5),
      I2 => \tdataL[12]_i_2_n_0\,
      I3 => s_axis_lr_tdata(4),
      I4 => \lastLR_reg_n_0_[20]\,
      O => \tdataL[15]_i_2_n_0\
    );
\tdataL[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_lr_tdata(17),
      I1 => s_axis_lr_tdata(1),
      O => tdataL05_out(0)
    );
\tdataL[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => s_axis_lr_tdata(17),
      I1 => s_axis_lr_tdata(1),
      I2 => s_axis_lr_tdata(2),
      I3 => s_axis_lr_tdata(18),
      O => tdataL05_out(1)
    );
\tdataL[26]_i_1\: unisim.vcomponents.LUT6
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
      O => tdataL05_out(2)
    );
\tdataL[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataL[28]_i_2_n_0\,
      I1 => s_axis_lr_tdata(4),
      I2 => s_axis_lr_tdata(20),
      O => tdataL05_out(3)
    );
\tdataL[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[28]_i_2_n_0\,
      I1 => s_axis_lr_tdata(20),
      I2 => s_axis_lr_tdata(4),
      I3 => s_axis_lr_tdata(5),
      I4 => s_axis_lr_tdata(21),
      O => tdataL05_out(4)
    );
\tdataL[28]_i_2\: unisim.vcomponents.LUT6
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
      O => \tdataL[28]_i_2_n_0\
    );
\tdataL[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataL[31]_i_2_n_0\,
      I1 => s_axis_lr_tdata(6),
      I2 => s_axis_lr_tdata(22),
      O => tdataL05_out(5)
    );
\tdataL[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataL[31]_i_2_n_0\,
      I1 => s_axis_lr_tdata(22),
      I2 => s_axis_lr_tdata(6),
      I3 => s_axis_lr_tdata(7),
      I4 => s_axis_lr_tdata(23),
      O => tdataL05_out(6)
    );
\tdataL[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => s_axis_lr_tdata(7),
      I1 => s_axis_lr_tdata(23),
      I2 => \tdataL[31]_i_2_n_0\,
      I3 => s_axis_lr_tdata(22),
      I4 => s_axis_lr_tdata(6),
      O => tdataL05_out(7)
    );
\tdataL[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => s_axis_lr_tdata(5),
      I1 => s_axis_lr_tdata(21),
      I2 => \tdataL[28]_i_2_n_0\,
      I3 => s_axis_lr_tdata(20),
      I4 => s_axis_lr_tdata(4),
      O => \tdataL[31]_i_2_n_0\
    );
\tdataL[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_lr_tdata(1),
      I1 => \lastLR_reg_n_0_[17]\,
      O => tdataL0(0)
    );
\tdataL[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => s_axis_lr_tdata(1),
      I1 => \lastLR_reg_n_0_[17]\,
      I2 => \lastLR_reg_n_0_[18]\,
      I3 => s_axis_lr_tdata(2),
      O => tdataL0(1)
    );
\tdataL_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[16]\,
      Q => m_axis_l_tdata(0),
      R => '0'
    );
\tdataL_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(2),
      Q => m_axis_l_tdata(10),
      R => '0'
    );
\tdataL_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(3),
      Q => m_axis_l_tdata(11),
      R => '0'
    );
\tdataL_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(4),
      Q => m_axis_l_tdata(12),
      R => '0'
    );
\tdataL_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(5),
      Q => m_axis_l_tdata(13),
      R => '0'
    );
\tdataL_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(6),
      Q => m_axis_l_tdata(14),
      R => '0'
    );
\tdataL_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(7),
      Q => m_axis_l_tdata(15),
      R => '0'
    );
\tdataL_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(0),
      Q => m_axis_l_tdata(16),
      R => '0'
    );
\tdataL_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(1),
      Q => m_axis_l_tdata(17),
      R => '0'
    );
\tdataL_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(2),
      Q => m_axis_l_tdata(18),
      R => '0'
    );
\tdataL_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(3),
      Q => m_axis_l_tdata(19),
      R => '0'
    );
\tdataL_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[17]\,
      Q => m_axis_l_tdata(1),
      R => '0'
    );
\tdataL_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(4),
      Q => m_axis_l_tdata(20),
      R => '0'
    );
\tdataL_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(5),
      Q => m_axis_l_tdata(21),
      R => '0'
    );
\tdataL_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(6),
      Q => m_axis_l_tdata(22),
      R => '0'
    );
\tdataL_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(7),
      Q => m_axis_l_tdata(23),
      R => '0'
    );
\tdataL_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(0),
      Q => m_axis_l_tdata(24),
      R => '0'
    );
\tdataL_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(1),
      Q => m_axis_l_tdata(25),
      R => '0'
    );
\tdataL_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(2),
      Q => m_axis_l_tdata(26),
      R => '0'
    );
\tdataL_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(3),
      Q => m_axis_l_tdata(27),
      R => '0'
    );
\tdataL_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(4),
      Q => m_axis_l_tdata(28),
      R => '0'
    );
\tdataL_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(5),
      Q => m_axis_l_tdata(29),
      R => '0'
    );
\tdataL_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[18]\,
      Q => m_axis_l_tdata(2),
      R => '0'
    );
\tdataL_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(6),
      Q => m_axis_l_tdata(30),
      R => '0'
    );
\tdataL_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL05_out(7),
      Q => m_axis_l_tdata(31),
      R => '0'
    );
\tdataL_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[19]\,
      Q => m_axis_l_tdata(3),
      R => '0'
    );
\tdataL_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[20]\,
      Q => m_axis_l_tdata(4),
      R => '0'
    );
\tdataL_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[21]\,
      Q => m_axis_l_tdata(5),
      R => '0'
    );
\tdataL_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[22]\,
      Q => m_axis_l_tdata(6),
      R => '0'
    );
\tdataL_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[23]\,
      Q => m_axis_l_tdata(7),
      R => '0'
    );
\tdataL_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(0),
      Q => m_axis_l_tdata(8),
      R => '0'
    );
\tdataL_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataL0(1),
      Q => m_axis_l_tdata(9),
      R => '0'
    );
\tdataR[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(0),
      I1 => p_0_in(0),
      O => tdataR0(0)
    );
\tdataR[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_lr_tdata(9),
      I1 => p_1_in(0),
      O => tdataR01_out(0)
    );
\tdataR[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => s_axis_lr_tdata(9),
      I1 => p_1_in(0),
      I2 => p_1_in(1),
      I3 => s_axis_lr_tdata(10),
      O => tdataR01_out(1)
    );
\tdataR[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_1_in(0),
      I1 => s_axis_lr_tdata(9),
      I2 => s_axis_lr_tdata(10),
      I3 => p_1_in(1),
      I4 => p_1_in(2),
      I5 => s_axis_lr_tdata(11),
      O => tdataR01_out(2)
    );
\tdataR[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataR[20]_i_2_n_0\,
      I1 => p_1_in(3),
      I2 => s_axis_lr_tdata(12),
      O => tdataR01_out(3)
    );
\tdataR[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_1_in(1),
      O => tdataR0(1)
    );
\tdataR[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[20]_i_2_n_0\,
      I1 => s_axis_lr_tdata(12),
      I2 => p_1_in(3),
      I3 => p_1_in(4),
      I4 => s_axis_lr_tdata(13),
      O => tdataR01_out(4)
    );
\tdataR[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_1_in(2),
      I1 => s_axis_lr_tdata(11),
      I2 => p_1_in(0),
      I3 => s_axis_lr_tdata(9),
      I4 => s_axis_lr_tdata(10),
      I5 => p_1_in(1),
      O => \tdataR[20]_i_2_n_0\
    );
\tdataR[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataR[23]_i_2_n_0\,
      I1 => p_1_in(5),
      I2 => s_axis_lr_tdata(14),
      O => tdataR01_out(5)
    );
\tdataR[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[23]_i_2_n_0\,
      I1 => s_axis_lr_tdata(14),
      I2 => p_1_in(5),
      I3 => p_1_in(6),
      I4 => s_axis_lr_tdata(15),
      O => tdataR01_out(6)
    );
\tdataR[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_1_in(6),
      I1 => s_axis_lr_tdata(15),
      I2 => \tdataR[23]_i_2_n_0\,
      I3 => s_axis_lr_tdata(14),
      I4 => p_1_in(5),
      O => tdataR01_out(7)
    );
\tdataR[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_1_in(4),
      I1 => s_axis_lr_tdata(13),
      I2 => \tdataR[20]_i_2_n_0\,
      I3 => s_axis_lr_tdata(12),
      I4 => p_1_in(3),
      O => \tdataR[23]_i_2_n_0\
    );
\tdataR[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_1_in(0),
      I2 => p_1_in(1),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => p_1_in(2),
      O => tdataR0(2)
    );
\tdataR[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataR[4]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_1_in(3),
      O => tdataR0(3)
    );
\tdataR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[4]_i_2_n_0\,
      I1 => p_1_in(3),
      I2 => p_0_in(3),
      I3 => p_0_in(4),
      I4 => p_1_in(4),
      O => tdataR0(4)
    );
\tdataR[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_1_in(2),
      I2 => p_0_in(0),
      I3 => p_1_in(0),
      I4 => p_1_in(1),
      I5 => p_0_in(1),
      O => \tdataR[4]_i_2_n_0\
    );
\tdataR[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \tdataR[7]_i_2_n_0\,
      I1 => p_0_in(5),
      I2 => p_1_in(5),
      O => tdataR0(5)
    );
\tdataR[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \tdataR[7]_i_2_n_0\,
      I1 => p_1_in(5),
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_1_in(6),
      O => tdataR0(6)
    );
\tdataR[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_1_in(6),
      I2 => \tdataR[7]_i_2_n_0\,
      I3 => p_1_in(5),
      I4 => p_0_in(5),
      O => tdataR0(7)
    );
\tdataR[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_1_in(4),
      I2 => \tdataR[4]_i_2_n_0\,
      I3 => p_1_in(3),
      I4 => p_0_in(3),
      O => \tdataR[7]_i_2_n_0\
    );
\tdataR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(0),
      Q => m_axis_r_tdata(0),
      R => '0'
    );
\tdataR_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => p_1_in(1),
      Q => m_axis_r_tdata(10),
      R => '0'
    );
\tdataR_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => p_1_in(2),
      Q => m_axis_r_tdata(11),
      R => '0'
    );
\tdataR_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => p_1_in(3),
      Q => m_axis_r_tdata(12),
      R => '0'
    );
\tdataR_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => p_1_in(4),
      Q => m_axis_r_tdata(13),
      R => '0'
    );
\tdataR_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => p_1_in(5),
      Q => m_axis_r_tdata(14),
      R => '0'
    );
\tdataR_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => p_1_in(6),
      Q => m_axis_r_tdata(15),
      R => '0'
    );
\tdataR_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(0),
      Q => m_axis_r_tdata(16),
      R => '0'
    );
\tdataR_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(1),
      Q => m_axis_r_tdata(17),
      R => '0'
    );
\tdataR_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(2),
      Q => m_axis_r_tdata(18),
      R => '0'
    );
\tdataR_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(3),
      Q => m_axis_r_tdata(19),
      R => '0'
    );
\tdataR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(1),
      Q => m_axis_r_tdata(1),
      R => '0'
    );
\tdataR_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(4),
      Q => m_axis_r_tdata(20),
      R => '0'
    );
\tdataR_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(5),
      Q => m_axis_r_tdata(21),
      R => '0'
    );
\tdataR_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(6),
      Q => m_axis_r_tdata(22),
      R => '0'
    );
\tdataR_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR01_out(7),
      Q => m_axis_r_tdata(23),
      R => '0'
    );
\tdataR_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(8),
      Q => m_axis_r_tdata(24),
      R => '0'
    );
\tdataR_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(9),
      Q => m_axis_r_tdata(25),
      R => '0'
    );
\tdataR_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(10),
      Q => m_axis_r_tdata(26),
      R => '0'
    );
\tdataR_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(11),
      Q => m_axis_r_tdata(27),
      R => '0'
    );
\tdataR_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(12),
      Q => m_axis_r_tdata(28),
      R => '0'
    );
\tdataR_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(13),
      Q => m_axis_r_tdata(29),
      R => '0'
    );
\tdataR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(2),
      Q => m_axis_r_tdata(2),
      R => '0'
    );
\tdataR_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(14),
      Q => m_axis_r_tdata(30),
      R => '0'
    );
\tdataR_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => s_axis_lr_tdata(15),
      Q => m_axis_r_tdata(31),
      R => '0'
    );
\tdataR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(3),
      Q => m_axis_r_tdata(3),
      R => '0'
    );
\tdataR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(4),
      Q => m_axis_r_tdata(4),
      R => '0'
    );
\tdataR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(5),
      Q => m_axis_r_tdata(5),
      R => '0'
    );
\tdataR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(6),
      Q => m_axis_r_tdata(6),
      R => '0'
    );
\tdataR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => tdataR0(7),
      Q => m_axis_r_tdata(7),
      R => '0'
    );
\tdataR_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => \lastLR_reg_n_0_[24]\,
      Q => m_axis_r_tdata(8),
      R => '0'
    );
\tdataR_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tvalid,
      D => p_1_in(0),
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
      Q => m_axis_r_tuser,
      R => '0'
    );
\tvalid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_lr_tvalid,
      Q => tvalid,
      R => '0'
    );
\tvalid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tvalid,
      Q => m_axis_r_tvalid,
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Inter_col_0_0,Inter_col_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Inter_col_v1_0,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_r_tlast\ : STD_LOGIC;
  signal \^m_axis_r_tuser\ : STD_LOGIC;
  signal \^m_axis_r_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF S_AXIS_LR:M_AXIS_L:M_AXIS_R, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_l_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_L TLAST";
  attribute X_INTERFACE_INFO of m_axis_l_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_L TREADY";
  attribute X_INTERFACE_INFO of m_axis_l_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS_L TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_l_tuser : signal is "XIL_INTERFACENAME M_AXIS_L, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_l_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_L TVALID";
  attribute X_INTERFACE_INFO of m_axis_r_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_R TLAST";
  attribute X_INTERFACE_INFO of m_axis_r_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_R TREADY";
  attribute X_INTERFACE_INFO of m_axis_r_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS_R TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_r_tuser : signal is "XIL_INTERFACENAME M_AXIS_R, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_r_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_R TVALID";
  attribute X_INTERFACE_INFO of s_axis_lr_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_LR TLAST";
  attribute X_INTERFACE_INFO of s_axis_lr_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_LR TREADY";
  attribute X_INTERFACE_INFO of s_axis_lr_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS_LR TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_lr_tuser : signal is "XIL_INTERFACENAME S_AXIS_LR, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_lr_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_LR TVALID";
  attribute X_INTERFACE_INFO of m_axis_l_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_L TDATA";
  attribute X_INTERFACE_INFO of m_axis_r_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_R TDATA";
  attribute X_INTERFACE_INFO of s_axis_lr_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_LR TDATA";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0
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
