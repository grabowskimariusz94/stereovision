-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 25 20:57:52 2021
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision is
begin
\m_axis_disp_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_disp_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_disp_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_disp_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_disp_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_disp_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_disp_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_disp_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_disp_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_disp_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_disp_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_disp_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_disp_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_disp_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_disp_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_disp_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_disp_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\m_axis_disp_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\m_axis_disp_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\m_axis_disp_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\m_axis_disp_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\m_axis_disp_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\m_axis_disp_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_disp_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\m_axis_disp_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\m_axis_disp_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(32),
      Q => m_axis_tdata(32),
      R => '0'
    );
\m_axis_disp_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(33),
      Q => m_axis_tdata(33),
      R => '0'
    );
\m_axis_disp_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(34),
      Q => m_axis_tdata(34),
      R => '0'
    );
\m_axis_disp_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(35),
      Q => m_axis_tdata(35),
      R => '0'
    );
\m_axis_disp_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(36),
      Q => m_axis_tdata(36),
      R => '0'
    );
\m_axis_disp_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(37),
      Q => m_axis_tdata(37),
      R => '0'
    );
\m_axis_disp_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(38),
      Q => m_axis_tdata(38),
      R => '0'
    );
\m_axis_disp_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(39),
      Q => m_axis_tdata(39),
      R => '0'
    );
\m_axis_disp_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_disp_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(40),
      Q => m_axis_tdata(40),
      R => '0'
    );
\m_axis_disp_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(41),
      Q => m_axis_tdata(41),
      R => '0'
    );
\m_axis_disp_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(42),
      Q => m_axis_tdata(42),
      R => '0'
    );
\m_axis_disp_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(43),
      Q => m_axis_tdata(43),
      R => '0'
    );
\m_axis_disp_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(44),
      Q => m_axis_tdata(44),
      R => '0'
    );
\m_axis_disp_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(45),
      Q => m_axis_tdata(45),
      R => '0'
    );
\m_axis_disp_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(46),
      Q => m_axis_tdata(46),
      R => '0'
    );
\m_axis_disp_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(47),
      Q => m_axis_tdata(47),
      R => '0'
    );
\m_axis_disp_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(48),
      Q => m_axis_tdata(48),
      R => '0'
    );
\m_axis_disp_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(49),
      Q => m_axis_tdata(49),
      R => '0'
    );
\m_axis_disp_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_disp_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(50),
      Q => m_axis_tdata(50),
      R => '0'
    );
\m_axis_disp_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(51),
      Q => m_axis_tdata(51),
      R => '0'
    );
\m_axis_disp_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(52),
      Q => m_axis_tdata(52),
      R => '0'
    );
\m_axis_disp_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(53),
      Q => m_axis_tdata(53),
      R => '0'
    );
\m_axis_disp_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(54),
      Q => m_axis_tdata(54),
      R => '0'
    );
\m_axis_disp_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(55),
      Q => m_axis_tdata(55),
      R => '0'
    );
\m_axis_disp_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(56),
      Q => m_axis_tdata(56),
      R => '0'
    );
\m_axis_disp_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(57),
      Q => m_axis_tdata(57),
      R => '0'
    );
\m_axis_disp_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(58),
      Q => m_axis_tdata(58),
      R => '0'
    );
\m_axis_disp_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(59),
      Q => m_axis_tdata(59),
      R => '0'
    );
\m_axis_disp_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_disp_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(60),
      Q => m_axis_tdata(60),
      R => '0'
    );
\m_axis_disp_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(61),
      Q => m_axis_tdata(61),
      R => '0'
    );
\m_axis_disp_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(62),
      Q => m_axis_tdata(62),
      R => '0'
    );
\m_axis_disp_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(63),
      Q => m_axis_tdata(63),
      R => '0'
    );
\m_axis_disp_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(64),
      Q => m_axis_tdata(64),
      R => '0'
    );
\m_axis_disp_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(65),
      Q => m_axis_tdata(65),
      R => '0'
    );
\m_axis_disp_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(66),
      Q => m_axis_tdata(66),
      R => '0'
    );
\m_axis_disp_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(67),
      Q => m_axis_tdata(67),
      R => '0'
    );
\m_axis_disp_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(68),
      Q => m_axis_tdata(68),
      R => '0'
    );
\m_axis_disp_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(69),
      Q => m_axis_tdata(69),
      R => '0'
    );
\m_axis_disp_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_disp_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(70),
      Q => m_axis_tdata(70),
      R => '0'
    );
\m_axis_disp_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(71),
      Q => m_axis_tdata(71),
      R => '0'
    );
\m_axis_disp_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(72),
      Q => m_axis_tdata(72),
      R => '0'
    );
\m_axis_disp_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(73),
      Q => m_axis_tdata(73),
      R => '0'
    );
\m_axis_disp_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(74),
      Q => m_axis_tdata(74),
      R => '0'
    );
\m_axis_disp_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(75),
      Q => m_axis_tdata(75),
      R => '0'
    );
\m_axis_disp_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(76),
      Q => m_axis_tdata(76),
      R => '0'
    );
\m_axis_disp_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(77),
      Q => m_axis_tdata(77),
      R => '0'
    );
\m_axis_disp_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(78),
      Q => m_axis_tdata(78),
      R => '0'
    );
\m_axis_disp_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(79),
      Q => m_axis_tdata(79),
      R => '0'
    );
\m_axis_disp_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_disp_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(80),
      Q => m_axis_tdata(80),
      R => '0'
    );
\m_axis_disp_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(81),
      Q => m_axis_tdata(81),
      R => '0'
    );
\m_axis_disp_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(82),
      Q => m_axis_tdata(82),
      R => '0'
    );
\m_axis_disp_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(83),
      Q => m_axis_tdata(83),
      R => '0'
    );
\m_axis_disp_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(84),
      Q => m_axis_tdata(84),
      R => '0'
    );
\m_axis_disp_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(85),
      Q => m_axis_tdata(85),
      R => '0'
    );
\m_axis_disp_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(86),
      Q => m_axis_tdata(86),
      R => '0'
    );
\m_axis_disp_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(87),
      Q => m_axis_tdata(87),
      R => '0'
    );
\m_axis_disp_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(88),
      Q => m_axis_tdata(88),
      R => '0'
    );
\m_axis_disp_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(89),
      Q => m_axis_tdata(89),
      R => '0'
    );
\m_axis_disp_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_disp_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(90),
      Q => m_axis_tdata(90),
      R => '0'
    );
\m_axis_disp_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(91),
      Q => m_axis_tdata(91),
      R => '0'
    );
\m_axis_disp_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(92),
      Q => m_axis_tdata(92),
      R => '0'
    );
\m_axis_disp_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(93),
      Q => m_axis_tdata(93),
      R => '0'
    );
\m_axis_disp_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(94),
      Q => m_axis_tdata(94),
      R => '0'
    );
\m_axis_disp_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(95),
      Q => m_axis_tdata(95),
      R => '0'
    );
\m_axis_disp_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_disp_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => m_axis_tlast,
      R => '0'
    );
m_axis_disp_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tuser,
      Q => m_axis_tuser,
      R => '0'
    );
m_axis_disp_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tvalid,
      Q => m_axis_tvalid,
      R => '0'
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
    s_axis_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tuser : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
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
      s_axis_tvalid => s_axis_tvalid
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
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
