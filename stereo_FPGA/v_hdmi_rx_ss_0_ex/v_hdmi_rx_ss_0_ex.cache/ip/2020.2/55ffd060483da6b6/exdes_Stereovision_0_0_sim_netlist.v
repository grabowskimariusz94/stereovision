// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 18 22:52:51 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_Stereovision_0_0_sim_netlist.v
// Design      : exdes_Stereovision_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tdata,
    aclk,
    s_axis_tvalid,
    s_axis_tuser,
    s_axis_tlast);
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input [95:0]s_axis_tdata;
  input aclk;
  input s_axis_tvalid;
  input s_axis_tuser;
  input s_axis_tlast;

  wire [14:1]C;
  wire CEP;
  wire [14:1]C__0;
  wire [14:1]C__1;
  wire [14:1]C__2;
  wire aclk;
  wire [12:0]b1;
  wire [12:1]b10;
  wire \b1[10]_i_11_n_0 ;
  wire \b1[10]_i_12_n_0 ;
  wire \b1[10]_i_13_n_0 ;
  wire \b1[10]_i_2_n_0 ;
  wire \b1[10]_i_3_n_0 ;
  wire \b1[10]_i_4_n_0 ;
  wire \b1[10]_i_5_n_0 ;
  wire \b1[10]_i_6_n_0 ;
  wire \b1[10]_i_7_n_0 ;
  wire \b1[10]_i_8_n_0 ;
  wire \b1[10]_i_9_n_0 ;
  wire \b1[12]_i_2_n_0 ;
  wire \b1[12]_i_3_n_0 ;
  wire \b1[12]_i_4_n_0 ;
  wire \b1[2]_i_2_n_0 ;
  wire \b1[2]_i_3_n_0 ;
  wire \b1[2]_i_4_n_0 ;
  wire \b1[6]_i_2_n_0 ;
  wire \b1[6]_i_3_n_0 ;
  wire \b1[6]_i_4_n_0 ;
  wire \b1[6]_i_5_n_0 ;
  wire \b1[6]_i_6_n_0 ;
  wire \b1[6]_i_7_n_0 ;
  wire \b1[6]_i_8_n_0 ;
  wire \b1_reg[10]_i_10_n_0 ;
  wire \b1_reg[10]_i_10_n_1 ;
  wire \b1_reg[10]_i_10_n_2 ;
  wire \b1_reg[10]_i_10_n_3 ;
  wire \b1_reg[10]_i_10_n_4 ;
  wire \b1_reg[10]_i_10_n_5 ;
  wire \b1_reg[10]_i_10_n_6 ;
  wire \b1_reg[10]_i_10_n_7 ;
  wire \b1_reg[10]_i_1_n_0 ;
  wire \b1_reg[10]_i_1_n_1 ;
  wire \b1_reg[10]_i_1_n_2 ;
  wire \b1_reg[10]_i_1_n_3 ;
  wire \b1_reg[12]_i_1_n_3 ;
  wire \b1_reg[12]_i_5_n_2 ;
  wire \b1_reg[12]_i_5_n_7 ;
  wire \b1_reg[2]_i_1_n_0 ;
  wire \b1_reg[2]_i_1_n_1 ;
  wire \b1_reg[2]_i_1_n_2 ;
  wire \b1_reg[2]_i_1_n_3 ;
  wire \b1_reg[2]_i_1_n_4 ;
  wire \b1_reg[2]_i_1_n_5 ;
  wire \b1_reg[6]_i_1_n_0 ;
  wire \b1_reg[6]_i_1_n_1 ;
  wire \b1_reg[6]_i_1_n_2 ;
  wire \b1_reg[6]_i_1_n_3 ;
  wire [12:0]b2;
  wire [12:1]b20;
  wire \b2[10]_i_11_n_0 ;
  wire \b2[10]_i_12_n_0 ;
  wire \b2[10]_i_13_n_0 ;
  wire \b2[10]_i_2_n_0 ;
  wire \b2[10]_i_3_n_0 ;
  wire \b2[10]_i_4_n_0 ;
  wire \b2[10]_i_5_n_0 ;
  wire \b2[10]_i_6_n_0 ;
  wire \b2[10]_i_7_n_0 ;
  wire \b2[10]_i_8_n_0 ;
  wire \b2[10]_i_9_n_0 ;
  wire \b2[12]_i_2_n_0 ;
  wire \b2[12]_i_3_n_0 ;
  wire \b2[12]_i_4_n_0 ;
  wire \b2[2]_i_2_n_0 ;
  wire \b2[2]_i_3_n_0 ;
  wire \b2[2]_i_4_n_0 ;
  wire \b2[6]_i_2_n_0 ;
  wire \b2[6]_i_3_n_0 ;
  wire \b2[6]_i_4_n_0 ;
  wire \b2[6]_i_5_n_0 ;
  wire \b2[6]_i_6_n_0 ;
  wire \b2[6]_i_7_n_0 ;
  wire \b2[6]_i_8_n_0 ;
  wire \b2_reg[10]_i_10_n_0 ;
  wire \b2_reg[10]_i_10_n_1 ;
  wire \b2_reg[10]_i_10_n_2 ;
  wire \b2_reg[10]_i_10_n_3 ;
  wire \b2_reg[10]_i_10_n_4 ;
  wire \b2_reg[10]_i_10_n_5 ;
  wire \b2_reg[10]_i_10_n_6 ;
  wire \b2_reg[10]_i_10_n_7 ;
  wire \b2_reg[10]_i_1_n_0 ;
  wire \b2_reg[10]_i_1_n_1 ;
  wire \b2_reg[10]_i_1_n_2 ;
  wire \b2_reg[10]_i_1_n_3 ;
  wire \b2_reg[12]_i_1_n_3 ;
  wire \b2_reg[12]_i_5_n_2 ;
  wire \b2_reg[12]_i_5_n_7 ;
  wire \b2_reg[2]_i_1_n_0 ;
  wire \b2_reg[2]_i_1_n_1 ;
  wire \b2_reg[2]_i_1_n_2 ;
  wire \b2_reg[2]_i_1_n_3 ;
  wire \b2_reg[2]_i_1_n_4 ;
  wire \b2_reg[2]_i_1_n_5 ;
  wire \b2_reg[6]_i_1_n_0 ;
  wire \b2_reg[6]_i_1_n_1 ;
  wire \b2_reg[6]_i_1_n_2 ;
  wire \b2_reg[6]_i_1_n_3 ;
  wire [12:0]b3;
  wire [12:1]b30;
  wire \b3[10]_i_11_n_0 ;
  wire \b3[10]_i_12_n_0 ;
  wire \b3[10]_i_13_n_0 ;
  wire \b3[10]_i_2_n_0 ;
  wire \b3[10]_i_3_n_0 ;
  wire \b3[10]_i_4_n_0 ;
  wire \b3[10]_i_5_n_0 ;
  wire \b3[10]_i_6_n_0 ;
  wire \b3[10]_i_7_n_0 ;
  wire \b3[10]_i_8_n_0 ;
  wire \b3[10]_i_9_n_0 ;
  wire \b3[12]_i_2_n_0 ;
  wire \b3[12]_i_3_n_0 ;
  wire \b3[12]_i_4_n_0 ;
  wire \b3[2]_i_2_n_0 ;
  wire \b3[2]_i_3_n_0 ;
  wire \b3[2]_i_4_n_0 ;
  wire \b3[6]_i_2_n_0 ;
  wire \b3[6]_i_3_n_0 ;
  wire \b3[6]_i_4_n_0 ;
  wire \b3[6]_i_5_n_0 ;
  wire \b3[6]_i_6_n_0 ;
  wire \b3[6]_i_7_n_0 ;
  wire \b3[6]_i_8_n_0 ;
  wire \b3_reg[10]_i_10_n_0 ;
  wire \b3_reg[10]_i_10_n_1 ;
  wire \b3_reg[10]_i_10_n_2 ;
  wire \b3_reg[10]_i_10_n_3 ;
  wire \b3_reg[10]_i_10_n_4 ;
  wire \b3_reg[10]_i_10_n_5 ;
  wire \b3_reg[10]_i_10_n_6 ;
  wire \b3_reg[10]_i_10_n_7 ;
  wire \b3_reg[10]_i_1_n_0 ;
  wire \b3_reg[10]_i_1_n_1 ;
  wire \b3_reg[10]_i_1_n_2 ;
  wire \b3_reg[10]_i_1_n_3 ;
  wire \b3_reg[12]_i_1_n_3 ;
  wire \b3_reg[12]_i_5_n_2 ;
  wire \b3_reg[12]_i_5_n_7 ;
  wire \b3_reg[2]_i_1_n_0 ;
  wire \b3_reg[2]_i_1_n_1 ;
  wire \b3_reg[2]_i_1_n_2 ;
  wire \b3_reg[2]_i_1_n_3 ;
  wire \b3_reg[2]_i_1_n_4 ;
  wire \b3_reg[2]_i_1_n_5 ;
  wire \b3_reg[6]_i_1_n_0 ;
  wire \b3_reg[6]_i_1_n_1 ;
  wire \b3_reg[6]_i_1_n_2 ;
  wire \b3_reg[6]_i_1_n_3 ;
  wire [12:0]b4;
  wire [12:1]b40;
  wire \b4[10]_i_11_n_0 ;
  wire \b4[10]_i_12_n_0 ;
  wire \b4[10]_i_13_n_0 ;
  wire \b4[10]_i_2_n_0 ;
  wire \b4[10]_i_3_n_0 ;
  wire \b4[10]_i_4_n_0 ;
  wire \b4[10]_i_5_n_0 ;
  wire \b4[10]_i_6_n_0 ;
  wire \b4[10]_i_7_n_0 ;
  wire \b4[10]_i_8_n_0 ;
  wire \b4[10]_i_9_n_0 ;
  wire \b4[12]_i_2_n_0 ;
  wire \b4[12]_i_3_n_0 ;
  wire \b4[12]_i_4_n_0 ;
  wire \b4[2]_i_2_n_0 ;
  wire \b4[2]_i_3_n_0 ;
  wire \b4[2]_i_4_n_0 ;
  wire \b4[6]_i_2_n_0 ;
  wire \b4[6]_i_3_n_0 ;
  wire \b4[6]_i_4_n_0 ;
  wire \b4[6]_i_5_n_0 ;
  wire \b4[6]_i_6_n_0 ;
  wire \b4[6]_i_7_n_0 ;
  wire \b4[6]_i_8_n_0 ;
  wire \b4_reg[10]_i_10_n_0 ;
  wire \b4_reg[10]_i_10_n_1 ;
  wire \b4_reg[10]_i_10_n_2 ;
  wire \b4_reg[10]_i_10_n_3 ;
  wire \b4_reg[10]_i_10_n_4 ;
  wire \b4_reg[10]_i_10_n_5 ;
  wire \b4_reg[10]_i_10_n_6 ;
  wire \b4_reg[10]_i_10_n_7 ;
  wire \b4_reg[10]_i_1_n_0 ;
  wire \b4_reg[10]_i_1_n_1 ;
  wire \b4_reg[10]_i_1_n_2 ;
  wire \b4_reg[10]_i_1_n_3 ;
  wire \b4_reg[12]_i_1_n_3 ;
  wire \b4_reg[12]_i_5_n_2 ;
  wire \b4_reg[12]_i_5_n_7 ;
  wire \b4_reg[2]_i_1_n_0 ;
  wire \b4_reg[2]_i_1_n_1 ;
  wire \b4_reg[2]_i_1_n_2 ;
  wire \b4_reg[2]_i_1_n_3 ;
  wire \b4_reg[2]_i_1_n_4 ;
  wire \b4_reg[2]_i_1_n_5 ;
  wire \b4_reg[6]_i_1_n_0 ;
  wire \b4_reg[6]_i_1_n_1 ;
  wire \b4_reg[6]_i_1_n_2 ;
  wire \b4_reg[6]_i_1_n_3 ;
  wire [15:1]g1;
  wire [15:1]g10;
  wire \g1[10]_i_2_n_0 ;
  wire \g1[10]_i_3_n_0 ;
  wire \g1[10]_i_4_n_0 ;
  wire \g1[10]_i_5_n_0 ;
  wire \g1[10]_i_6_n_0 ;
  wire \g1[10]_i_7_n_0 ;
  wire \g1[10]_i_8_n_0 ;
  wire \g1[14]_i_2_n_0 ;
  wire \g1[14]_i_3_n_0 ;
  wire \g1[14]_i_4_n_0 ;
  wire \g1[14]_i_5_n_0 ;
  wire \g1[14]_i_6_n_0 ;
  wire \g1[14]_i_7_n_0 ;
  wire \g1[14]_i_8_n_0 ;
  wire \g1[14]_i_9_n_0 ;
  wire \g1[15]_i_2_n_0 ;
  wire \g1[15]_i_4_n_0 ;
  wire \g1[15]_i_5_n_0 ;
  wire \g1[2]_i_2_n_0 ;
  wire \g1[2]_i_3_n_0 ;
  wire \g1[2]_i_4_n_0 ;
  wire \g1[6]_i_3_n_0 ;
  wire \g1[6]_i_4_n_0 ;
  wire \g1[6]_i_5_n_0 ;
  wire \g1[6]_i_6_n_0 ;
  wire \g1[6]_i_7_n_0 ;
  wire \g1[6]_i_8_n_0 ;
  wire \g1[6]_i_9_n_0 ;
  wire \g1_reg[10]_i_1_n_0 ;
  wire \g1_reg[10]_i_1_n_1 ;
  wire \g1_reg[10]_i_1_n_2 ;
  wire \g1_reg[10]_i_1_n_3 ;
  wire \g1_reg[14]_i_1_n_0 ;
  wire \g1_reg[14]_i_1_n_1 ;
  wire \g1_reg[14]_i_1_n_2 ;
  wire \g1_reg[14]_i_1_n_3 ;
  wire \g1_reg[15]_i_3_n_1 ;
  wire \g1_reg[15]_i_3_n_3 ;
  wire \g1_reg[15]_i_3_n_6 ;
  wire \g1_reg[15]_i_3_n_7 ;
  wire \g1_reg[2]_i_1_n_0 ;
  wire \g1_reg[2]_i_1_n_1 ;
  wire \g1_reg[2]_i_1_n_2 ;
  wire \g1_reg[2]_i_1_n_3 ;
  wire \g1_reg[2]_i_1_n_4 ;
  wire \g1_reg[2]_i_1_n_5 ;
  wire \g1_reg[6]_i_1_n_0 ;
  wire \g1_reg[6]_i_1_n_1 ;
  wire \g1_reg[6]_i_1_n_2 ;
  wire \g1_reg[6]_i_1_n_3 ;
  wire \g1_reg[6]_i_2_n_0 ;
  wire \g1_reg[6]_i_2_n_1 ;
  wire \g1_reg[6]_i_2_n_2 ;
  wire \g1_reg[6]_i_2_n_3 ;
  wire \g1_reg[6]_i_2_n_4 ;
  wire \g1_reg[6]_i_2_n_5 ;
  wire \g1_reg[6]_i_2_n_6 ;
  wire \g1_reg[6]_i_2_n_7 ;
  wire [15:1]g2;
  wire [15:1]g20;
  wire \g2[10]_i_2_n_0 ;
  wire \g2[10]_i_3_n_0 ;
  wire \g2[10]_i_4_n_0 ;
  wire \g2[10]_i_5_n_0 ;
  wire \g2[10]_i_6_n_0 ;
  wire \g2[10]_i_7_n_0 ;
  wire \g2[10]_i_8_n_0 ;
  wire \g2[14]_i_2_n_0 ;
  wire \g2[14]_i_3_n_0 ;
  wire \g2[14]_i_4_n_0 ;
  wire \g2[14]_i_5_n_0 ;
  wire \g2[14]_i_6_n_0 ;
  wire \g2[14]_i_7_n_0 ;
  wire \g2[14]_i_8_n_0 ;
  wire \g2[14]_i_9_n_0 ;
  wire \g2[15]_i_2_n_0 ;
  wire \g2[15]_i_4_n_0 ;
  wire \g2[15]_i_5_n_0 ;
  wire \g2[2]_i_2_n_0 ;
  wire \g2[2]_i_3_n_0 ;
  wire \g2[2]_i_4_n_0 ;
  wire \g2[6]_i_3_n_0 ;
  wire \g2[6]_i_4_n_0 ;
  wire \g2[6]_i_5_n_0 ;
  wire \g2[6]_i_6_n_0 ;
  wire \g2[6]_i_7_n_0 ;
  wire \g2[6]_i_8_n_0 ;
  wire \g2[6]_i_9_n_0 ;
  wire \g2_reg[10]_i_1_n_0 ;
  wire \g2_reg[10]_i_1_n_1 ;
  wire \g2_reg[10]_i_1_n_2 ;
  wire \g2_reg[10]_i_1_n_3 ;
  wire \g2_reg[14]_i_1_n_0 ;
  wire \g2_reg[14]_i_1_n_1 ;
  wire \g2_reg[14]_i_1_n_2 ;
  wire \g2_reg[14]_i_1_n_3 ;
  wire \g2_reg[15]_i_3_n_1 ;
  wire \g2_reg[15]_i_3_n_3 ;
  wire \g2_reg[15]_i_3_n_6 ;
  wire \g2_reg[15]_i_3_n_7 ;
  wire \g2_reg[2]_i_1_n_0 ;
  wire \g2_reg[2]_i_1_n_1 ;
  wire \g2_reg[2]_i_1_n_2 ;
  wire \g2_reg[2]_i_1_n_3 ;
  wire \g2_reg[2]_i_1_n_4 ;
  wire \g2_reg[2]_i_1_n_5 ;
  wire \g2_reg[6]_i_1_n_0 ;
  wire \g2_reg[6]_i_1_n_1 ;
  wire \g2_reg[6]_i_1_n_2 ;
  wire \g2_reg[6]_i_1_n_3 ;
  wire \g2_reg[6]_i_2_n_0 ;
  wire \g2_reg[6]_i_2_n_1 ;
  wire \g2_reg[6]_i_2_n_2 ;
  wire \g2_reg[6]_i_2_n_3 ;
  wire \g2_reg[6]_i_2_n_4 ;
  wire \g2_reg[6]_i_2_n_5 ;
  wire \g2_reg[6]_i_2_n_6 ;
  wire \g2_reg[6]_i_2_n_7 ;
  wire [15:1]g3;
  wire [15:1]g30;
  wire \g3[10]_i_2_n_0 ;
  wire \g3[10]_i_3_n_0 ;
  wire \g3[10]_i_4_n_0 ;
  wire \g3[10]_i_5_n_0 ;
  wire \g3[10]_i_6_n_0 ;
  wire \g3[10]_i_7_n_0 ;
  wire \g3[10]_i_8_n_0 ;
  wire \g3[14]_i_2_n_0 ;
  wire \g3[14]_i_3_n_0 ;
  wire \g3[14]_i_4_n_0 ;
  wire \g3[14]_i_5_n_0 ;
  wire \g3[14]_i_6_n_0 ;
  wire \g3[14]_i_7_n_0 ;
  wire \g3[14]_i_8_n_0 ;
  wire \g3[14]_i_9_n_0 ;
  wire \g3[15]_i_2_n_0 ;
  wire \g3[15]_i_4_n_0 ;
  wire \g3[15]_i_5_n_0 ;
  wire \g3[2]_i_2_n_0 ;
  wire \g3[2]_i_3_n_0 ;
  wire \g3[2]_i_4_n_0 ;
  wire \g3[6]_i_3_n_0 ;
  wire \g3[6]_i_4_n_0 ;
  wire \g3[6]_i_5_n_0 ;
  wire \g3[6]_i_6_n_0 ;
  wire \g3[6]_i_7_n_0 ;
  wire \g3[6]_i_8_n_0 ;
  wire \g3[6]_i_9_n_0 ;
  wire \g3_reg[10]_i_1_n_0 ;
  wire \g3_reg[10]_i_1_n_1 ;
  wire \g3_reg[10]_i_1_n_2 ;
  wire \g3_reg[10]_i_1_n_3 ;
  wire \g3_reg[14]_i_1_n_0 ;
  wire \g3_reg[14]_i_1_n_1 ;
  wire \g3_reg[14]_i_1_n_2 ;
  wire \g3_reg[14]_i_1_n_3 ;
  wire \g3_reg[15]_i_3_n_1 ;
  wire \g3_reg[15]_i_3_n_3 ;
  wire \g3_reg[15]_i_3_n_6 ;
  wire \g3_reg[15]_i_3_n_7 ;
  wire \g3_reg[2]_i_1_n_0 ;
  wire \g3_reg[2]_i_1_n_1 ;
  wire \g3_reg[2]_i_1_n_2 ;
  wire \g3_reg[2]_i_1_n_3 ;
  wire \g3_reg[2]_i_1_n_4 ;
  wire \g3_reg[2]_i_1_n_5 ;
  wire \g3_reg[6]_i_1_n_0 ;
  wire \g3_reg[6]_i_1_n_1 ;
  wire \g3_reg[6]_i_1_n_2 ;
  wire \g3_reg[6]_i_1_n_3 ;
  wire \g3_reg[6]_i_2_n_0 ;
  wire \g3_reg[6]_i_2_n_1 ;
  wire \g3_reg[6]_i_2_n_2 ;
  wire \g3_reg[6]_i_2_n_3 ;
  wire \g3_reg[6]_i_2_n_4 ;
  wire \g3_reg[6]_i_2_n_5 ;
  wire \g3_reg[6]_i_2_n_6 ;
  wire \g3_reg[6]_i_2_n_7 ;
  wire [15:1]g4;
  wire [15:1]g40;
  wire \g4[10]_i_2_n_0 ;
  wire \g4[10]_i_3_n_0 ;
  wire \g4[10]_i_4_n_0 ;
  wire \g4[10]_i_5_n_0 ;
  wire \g4[10]_i_6_n_0 ;
  wire \g4[10]_i_7_n_0 ;
  wire \g4[10]_i_8_n_0 ;
  wire \g4[14]_i_2_n_0 ;
  wire \g4[14]_i_3_n_0 ;
  wire \g4[14]_i_4_n_0 ;
  wire \g4[14]_i_5_n_0 ;
  wire \g4[14]_i_6_n_0 ;
  wire \g4[14]_i_7_n_0 ;
  wire \g4[14]_i_8_n_0 ;
  wire \g4[14]_i_9_n_0 ;
  wire \g4[15]_i_2_n_0 ;
  wire \g4[15]_i_4_n_0 ;
  wire \g4[15]_i_5_n_0 ;
  wire \g4[2]_i_2_n_0 ;
  wire \g4[2]_i_3_n_0 ;
  wire \g4[2]_i_4_n_0 ;
  wire \g4[6]_i_3_n_0 ;
  wire \g4[6]_i_4_n_0 ;
  wire \g4[6]_i_5_n_0 ;
  wire \g4[6]_i_6_n_0 ;
  wire \g4[6]_i_7_n_0 ;
  wire \g4[6]_i_8_n_0 ;
  wire \g4[6]_i_9_n_0 ;
  wire \g4_reg[10]_i_1_n_0 ;
  wire \g4_reg[10]_i_1_n_1 ;
  wire \g4_reg[10]_i_1_n_2 ;
  wire \g4_reg[10]_i_1_n_3 ;
  wire \g4_reg[14]_i_1_n_0 ;
  wire \g4_reg[14]_i_1_n_1 ;
  wire \g4_reg[14]_i_1_n_2 ;
  wire \g4_reg[14]_i_1_n_3 ;
  wire \g4_reg[15]_i_3_n_1 ;
  wire \g4_reg[15]_i_3_n_3 ;
  wire \g4_reg[15]_i_3_n_6 ;
  wire \g4_reg[15]_i_3_n_7 ;
  wire \g4_reg[2]_i_1_n_0 ;
  wire \g4_reg[2]_i_1_n_1 ;
  wire \g4_reg[2]_i_1_n_2 ;
  wire \g4_reg[2]_i_1_n_3 ;
  wire \g4_reg[2]_i_1_n_4 ;
  wire \g4_reg[2]_i_1_n_5 ;
  wire \g4_reg[6]_i_1_n_0 ;
  wire \g4_reg[6]_i_1_n_1 ;
  wire \g4_reg[6]_i_1_n_2 ;
  wire \g4_reg[6]_i_1_n_3 ;
  wire \g4_reg[6]_i_2_n_0 ;
  wire \g4_reg[6]_i_2_n_1 ;
  wire \g4_reg[6]_i_2_n_2 ;
  wire \g4_reg[6]_i_2_n_3 ;
  wire \g4_reg[6]_i_2_n_4 ;
  wire \g4_reg[6]_i_2_n_5 ;
  wire \g4_reg[6]_i_2_n_6 ;
  wire \g4_reg[6]_i_2_n_7 ;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [14:0]r1;
  wire [14:1]r10;
  wire \r1[13]_i_2_n_0 ;
  wire \r1[13]_i_3_n_0 ;
  wire \r1[13]_i_4_n_0 ;
  wire \r1[1]_i_2_n_0 ;
  wire \r1[1]_i_3_n_0 ;
  wire \r1[1]_i_4_n_0 ;
  wire \r1[5]_i_3_n_0 ;
  wire \r1[5]_i_4_n_0 ;
  wire \r1[5]_i_5_n_0 ;
  wire \r1[5]_i_6_n_0 ;
  wire \r1[5]_i_7_n_0 ;
  wire \r1[5]_i_8_n_0 ;
  wire \r1[9]_i_2_n_0 ;
  wire \r1[9]_i_3_n_0 ;
  wire \r1[9]_i_4_n_0 ;
  wire \r1[9]_i_5_n_0 ;
  wire \r1[9]_i_6_n_0 ;
  wire \r1[9]_i_7_n_0 ;
  wire \r1[9]_i_8_n_0 ;
  wire \r1_reg[13]_i_1_n_0 ;
  wire \r1_reg[13]_i_1_n_1 ;
  wire \r1_reg[13]_i_1_n_2 ;
  wire \r1_reg[13]_i_1_n_3 ;
  wire \r1_reg[13]_i_5_n_2 ;
  wire \r1_reg[13]_i_5_n_7 ;
  wire \r1_reg[1]_i_1_n_0 ;
  wire \r1_reg[1]_i_1_n_1 ;
  wire \r1_reg[1]_i_1_n_2 ;
  wire \r1_reg[1]_i_1_n_3 ;
  wire \r1_reg[1]_i_1_n_4 ;
  wire \r1_reg[1]_i_1_n_5 ;
  wire \r1_reg[1]_i_1_n_6 ;
  wire \r1_reg[5]_i_1_n_0 ;
  wire \r1_reg[5]_i_1_n_1 ;
  wire \r1_reg[5]_i_1_n_2 ;
  wire \r1_reg[5]_i_1_n_3 ;
  wire \r1_reg[5]_i_2_n_0 ;
  wire \r1_reg[5]_i_2_n_1 ;
  wire \r1_reg[5]_i_2_n_2 ;
  wire \r1_reg[5]_i_2_n_3 ;
  wire \r1_reg[5]_i_2_n_4 ;
  wire \r1_reg[5]_i_2_n_5 ;
  wire \r1_reg[5]_i_2_n_6 ;
  wire \r1_reg[5]_i_2_n_7 ;
  wire \r1_reg[9]_i_1_n_0 ;
  wire \r1_reg[9]_i_1_n_1 ;
  wire \r1_reg[9]_i_1_n_2 ;
  wire \r1_reg[9]_i_1_n_3 ;
  wire [14:0]r2;
  wire [14:1]r20;
  wire \r2[13]_i_2_n_0 ;
  wire \r2[13]_i_3_n_0 ;
  wire \r2[13]_i_4_n_0 ;
  wire \r2[1]_i_2_n_0 ;
  wire \r2[1]_i_3_n_0 ;
  wire \r2[1]_i_4_n_0 ;
  wire \r2[5]_i_3_n_0 ;
  wire \r2[5]_i_4_n_0 ;
  wire \r2[5]_i_5_n_0 ;
  wire \r2[5]_i_6_n_0 ;
  wire \r2[5]_i_7_n_0 ;
  wire \r2[5]_i_8_n_0 ;
  wire \r2[9]_i_2_n_0 ;
  wire \r2[9]_i_3_n_0 ;
  wire \r2[9]_i_4_n_0 ;
  wire \r2[9]_i_5_n_0 ;
  wire \r2[9]_i_6_n_0 ;
  wire \r2[9]_i_7_n_0 ;
  wire \r2[9]_i_8_n_0 ;
  wire \r2_reg[13]_i_1_n_0 ;
  wire \r2_reg[13]_i_1_n_1 ;
  wire \r2_reg[13]_i_1_n_2 ;
  wire \r2_reg[13]_i_1_n_3 ;
  wire \r2_reg[13]_i_5_n_2 ;
  wire \r2_reg[13]_i_5_n_7 ;
  wire \r2_reg[1]_i_1_n_0 ;
  wire \r2_reg[1]_i_1_n_1 ;
  wire \r2_reg[1]_i_1_n_2 ;
  wire \r2_reg[1]_i_1_n_3 ;
  wire \r2_reg[1]_i_1_n_4 ;
  wire \r2_reg[1]_i_1_n_5 ;
  wire \r2_reg[1]_i_1_n_6 ;
  wire \r2_reg[5]_i_1_n_0 ;
  wire \r2_reg[5]_i_1_n_1 ;
  wire \r2_reg[5]_i_1_n_2 ;
  wire \r2_reg[5]_i_1_n_3 ;
  wire \r2_reg[5]_i_2_n_0 ;
  wire \r2_reg[5]_i_2_n_1 ;
  wire \r2_reg[5]_i_2_n_2 ;
  wire \r2_reg[5]_i_2_n_3 ;
  wire \r2_reg[5]_i_2_n_4 ;
  wire \r2_reg[5]_i_2_n_5 ;
  wire \r2_reg[5]_i_2_n_6 ;
  wire \r2_reg[5]_i_2_n_7 ;
  wire \r2_reg[9]_i_1_n_0 ;
  wire \r2_reg[9]_i_1_n_1 ;
  wire \r2_reg[9]_i_1_n_2 ;
  wire \r2_reg[9]_i_1_n_3 ;
  wire [14:0]r3;
  wire [14:1]r30;
  wire \r3[13]_i_2_n_0 ;
  wire \r3[13]_i_3_n_0 ;
  wire \r3[13]_i_4_n_0 ;
  wire \r3[1]_i_2_n_0 ;
  wire \r3[1]_i_3_n_0 ;
  wire \r3[1]_i_4_n_0 ;
  wire \r3[5]_i_3_n_0 ;
  wire \r3[5]_i_4_n_0 ;
  wire \r3[5]_i_5_n_0 ;
  wire \r3[5]_i_6_n_0 ;
  wire \r3[5]_i_7_n_0 ;
  wire \r3[5]_i_8_n_0 ;
  wire \r3[9]_i_2_n_0 ;
  wire \r3[9]_i_3_n_0 ;
  wire \r3[9]_i_4_n_0 ;
  wire \r3[9]_i_5_n_0 ;
  wire \r3[9]_i_6_n_0 ;
  wire \r3[9]_i_7_n_0 ;
  wire \r3[9]_i_8_n_0 ;
  wire \r3_reg[13]_i_1_n_0 ;
  wire \r3_reg[13]_i_1_n_1 ;
  wire \r3_reg[13]_i_1_n_2 ;
  wire \r3_reg[13]_i_1_n_3 ;
  wire \r3_reg[13]_i_5_n_2 ;
  wire \r3_reg[13]_i_5_n_7 ;
  wire \r3_reg[1]_i_1_n_0 ;
  wire \r3_reg[1]_i_1_n_1 ;
  wire \r3_reg[1]_i_1_n_2 ;
  wire \r3_reg[1]_i_1_n_3 ;
  wire \r3_reg[1]_i_1_n_4 ;
  wire \r3_reg[1]_i_1_n_5 ;
  wire \r3_reg[1]_i_1_n_6 ;
  wire \r3_reg[5]_i_1_n_0 ;
  wire \r3_reg[5]_i_1_n_1 ;
  wire \r3_reg[5]_i_1_n_2 ;
  wire \r3_reg[5]_i_1_n_3 ;
  wire \r3_reg[5]_i_2_n_0 ;
  wire \r3_reg[5]_i_2_n_1 ;
  wire \r3_reg[5]_i_2_n_2 ;
  wire \r3_reg[5]_i_2_n_3 ;
  wire \r3_reg[5]_i_2_n_4 ;
  wire \r3_reg[5]_i_2_n_5 ;
  wire \r3_reg[5]_i_2_n_6 ;
  wire \r3_reg[5]_i_2_n_7 ;
  wire \r3_reg[9]_i_1_n_0 ;
  wire \r3_reg[9]_i_1_n_1 ;
  wire \r3_reg[9]_i_1_n_2 ;
  wire \r3_reg[9]_i_1_n_3 ;
  wire [14:0]r4;
  wire [14:1]r40;
  wire \r4[13]_i_2_n_0 ;
  wire \r4[13]_i_3_n_0 ;
  wire \r4[13]_i_4_n_0 ;
  wire \r4[1]_i_2_n_0 ;
  wire \r4[1]_i_3_n_0 ;
  wire \r4[1]_i_4_n_0 ;
  wire \r4[5]_i_3_n_0 ;
  wire \r4[5]_i_4_n_0 ;
  wire \r4[5]_i_5_n_0 ;
  wire \r4[5]_i_6_n_0 ;
  wire \r4[5]_i_7_n_0 ;
  wire \r4[5]_i_8_n_0 ;
  wire \r4[9]_i_2_n_0 ;
  wire \r4[9]_i_3_n_0 ;
  wire \r4[9]_i_4_n_0 ;
  wire \r4[9]_i_5_n_0 ;
  wire \r4[9]_i_6_n_0 ;
  wire \r4[9]_i_7_n_0 ;
  wire \r4[9]_i_8_n_0 ;
  wire \r4_reg[13]_i_1_n_0 ;
  wire \r4_reg[13]_i_1_n_1 ;
  wire \r4_reg[13]_i_1_n_2 ;
  wire \r4_reg[13]_i_1_n_3 ;
  wire \r4_reg[13]_i_5_n_2 ;
  wire \r4_reg[13]_i_5_n_7 ;
  wire \r4_reg[1]_i_1_n_0 ;
  wire \r4_reg[1]_i_1_n_1 ;
  wire \r4_reg[1]_i_1_n_2 ;
  wire \r4_reg[1]_i_1_n_3 ;
  wire \r4_reg[1]_i_1_n_4 ;
  wire \r4_reg[1]_i_1_n_5 ;
  wire \r4_reg[1]_i_1_n_6 ;
  wire \r4_reg[5]_i_1_n_0 ;
  wire \r4_reg[5]_i_1_n_1 ;
  wire \r4_reg[5]_i_1_n_2 ;
  wire \r4_reg[5]_i_1_n_3 ;
  wire \r4_reg[5]_i_2_n_0 ;
  wire \r4_reg[5]_i_2_n_1 ;
  wire \r4_reg[5]_i_2_n_2 ;
  wire \r4_reg[5]_i_2_n_3 ;
  wire \r4_reg[5]_i_2_n_4 ;
  wire \r4_reg[5]_i_2_n_5 ;
  wire \r4_reg[5]_i_2_n_6 ;
  wire \r4_reg[5]_i_2_n_7 ;
  wire \r4_reg[9]_i_1_n_0 ;
  wire \r4_reg[9]_i_1_n_1 ;
  wire \r4_reg[9]_i_1_n_2 ;
  wire \r4_reg[9]_i_1_n_3 ;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire [16:8]sum1;
  wire [16:8]sum10;
  wire \sum1[12]_i_10_n_0 ;
  wire \sum1[12]_i_2_n_0 ;
  wire \sum1[12]_i_3_n_0 ;
  wire \sum1[12]_i_4_n_0 ;
  wire \sum1[12]_i_5_n_0 ;
  wire \sum1[12]_i_7_n_0 ;
  wire \sum1[12]_i_8_n_0 ;
  wire \sum1[12]_i_9_n_0 ;
  wire \sum1[16]_i_2_n_0 ;
  wire \sum1[16]_i_3_n_0 ;
  wire \sum1[16]_i_4_n_0 ;
  wire \sum1[16]_i_6_n_0 ;
  wire \sum1[8]_i_10_n_0 ;
  wire \sum1[8]_i_13_n_0 ;
  wire \sum1[8]_i_14_n_0 ;
  wire \sum1[8]_i_15_n_0 ;
  wire \sum1[8]_i_16_n_0 ;
  wire \sum1[8]_i_17_n_0 ;
  wire \sum1[8]_i_18_n_0 ;
  wire \sum1[8]_i_19_n_0 ;
  wire \sum1[8]_i_20_n_0 ;
  wire \sum1[8]_i_3_n_0 ;
  wire \sum1[8]_i_4_n_0 ;
  wire \sum1[8]_i_5_n_0 ;
  wire \sum1[8]_i_6_n_0 ;
  wire \sum1[8]_i_7_n_0 ;
  wire \sum1[8]_i_8_n_0 ;
  wire \sum1[8]_i_9_n_0 ;
  wire \sum1_reg[12]_i_1_n_0 ;
  wire \sum1_reg[12]_i_1_n_1 ;
  wire \sum1_reg[12]_i_1_n_2 ;
  wire \sum1_reg[12]_i_1_n_3 ;
  wire \sum1_reg[12]_i_6_n_0 ;
  wire \sum1_reg[12]_i_6_n_1 ;
  wire \sum1_reg[12]_i_6_n_2 ;
  wire \sum1_reg[12]_i_6_n_3 ;
  wire \sum1_reg[16]_i_1_n_2 ;
  wire \sum1_reg[16]_i_1_n_3 ;
  wire \sum1_reg[16]_i_5_n_0 ;
  wire \sum1_reg[16]_i_5_n_2 ;
  wire \sum1_reg[16]_i_5_n_3 ;
  wire \sum1_reg[8]_i_11_n_0 ;
  wire \sum1_reg[8]_i_11_n_1 ;
  wire \sum1_reg[8]_i_11_n_2 ;
  wire \sum1_reg[8]_i_11_n_3 ;
  wire \sum1_reg[8]_i_12_n_0 ;
  wire \sum1_reg[8]_i_12_n_1 ;
  wire \sum1_reg[8]_i_12_n_2 ;
  wire \sum1_reg[8]_i_12_n_3 ;
  wire \sum1_reg[8]_i_1_n_0 ;
  wire \sum1_reg[8]_i_1_n_1 ;
  wire \sum1_reg[8]_i_1_n_2 ;
  wire \sum1_reg[8]_i_1_n_3 ;
  wire \sum1_reg[8]_i_2_n_0 ;
  wire \sum1_reg[8]_i_2_n_1 ;
  wire \sum1_reg[8]_i_2_n_2 ;
  wire \sum1_reg[8]_i_2_n_3 ;
  wire [16:8]sum2;
  wire [16:8]sum20;
  wire \sum2[12]_i_10_n_0 ;
  wire \sum2[12]_i_2_n_0 ;
  wire \sum2[12]_i_3_n_0 ;
  wire \sum2[12]_i_4_n_0 ;
  wire \sum2[12]_i_5_n_0 ;
  wire \sum2[12]_i_7_n_0 ;
  wire \sum2[12]_i_8_n_0 ;
  wire \sum2[12]_i_9_n_0 ;
  wire \sum2[16]_i_2_n_0 ;
  wire \sum2[16]_i_3_n_0 ;
  wire \sum2[16]_i_4_n_0 ;
  wire \sum2[16]_i_6_n_0 ;
  wire \sum2[8]_i_10_n_0 ;
  wire \sum2[8]_i_13_n_0 ;
  wire \sum2[8]_i_14_n_0 ;
  wire \sum2[8]_i_15_n_0 ;
  wire \sum2[8]_i_16_n_0 ;
  wire \sum2[8]_i_17_n_0 ;
  wire \sum2[8]_i_18_n_0 ;
  wire \sum2[8]_i_19_n_0 ;
  wire \sum2[8]_i_20_n_0 ;
  wire \sum2[8]_i_3_n_0 ;
  wire \sum2[8]_i_4_n_0 ;
  wire \sum2[8]_i_5_n_0 ;
  wire \sum2[8]_i_6_n_0 ;
  wire \sum2[8]_i_7_n_0 ;
  wire \sum2[8]_i_8_n_0 ;
  wire \sum2[8]_i_9_n_0 ;
  wire \sum2_reg[12]_i_1_n_0 ;
  wire \sum2_reg[12]_i_1_n_1 ;
  wire \sum2_reg[12]_i_1_n_2 ;
  wire \sum2_reg[12]_i_1_n_3 ;
  wire \sum2_reg[12]_i_6_n_0 ;
  wire \sum2_reg[12]_i_6_n_1 ;
  wire \sum2_reg[12]_i_6_n_2 ;
  wire \sum2_reg[12]_i_6_n_3 ;
  wire \sum2_reg[16]_i_1_n_2 ;
  wire \sum2_reg[16]_i_1_n_3 ;
  wire \sum2_reg[16]_i_5_n_0 ;
  wire \sum2_reg[16]_i_5_n_2 ;
  wire \sum2_reg[16]_i_5_n_3 ;
  wire \sum2_reg[8]_i_11_n_0 ;
  wire \sum2_reg[8]_i_11_n_1 ;
  wire \sum2_reg[8]_i_11_n_2 ;
  wire \sum2_reg[8]_i_11_n_3 ;
  wire \sum2_reg[8]_i_12_n_0 ;
  wire \sum2_reg[8]_i_12_n_1 ;
  wire \sum2_reg[8]_i_12_n_2 ;
  wire \sum2_reg[8]_i_12_n_3 ;
  wire \sum2_reg[8]_i_1_n_0 ;
  wire \sum2_reg[8]_i_1_n_1 ;
  wire \sum2_reg[8]_i_1_n_2 ;
  wire \sum2_reg[8]_i_1_n_3 ;
  wire \sum2_reg[8]_i_2_n_0 ;
  wire \sum2_reg[8]_i_2_n_1 ;
  wire \sum2_reg[8]_i_2_n_2 ;
  wire \sum2_reg[8]_i_2_n_3 ;
  wire [16:8]sum3;
  wire [16:8]sum30;
  wire \sum3[12]_i_10_n_0 ;
  wire \sum3[12]_i_2_n_0 ;
  wire \sum3[12]_i_3_n_0 ;
  wire \sum3[12]_i_4_n_0 ;
  wire \sum3[12]_i_5_n_0 ;
  wire \sum3[12]_i_7_n_0 ;
  wire \sum3[12]_i_8_n_0 ;
  wire \sum3[12]_i_9_n_0 ;
  wire \sum3[16]_i_2_n_0 ;
  wire \sum3[16]_i_3_n_0 ;
  wire \sum3[16]_i_4_n_0 ;
  wire \sum3[16]_i_6_n_0 ;
  wire \sum3[8]_i_10_n_0 ;
  wire \sum3[8]_i_13_n_0 ;
  wire \sum3[8]_i_14_n_0 ;
  wire \sum3[8]_i_15_n_0 ;
  wire \sum3[8]_i_16_n_0 ;
  wire \sum3[8]_i_17_n_0 ;
  wire \sum3[8]_i_18_n_0 ;
  wire \sum3[8]_i_19_n_0 ;
  wire \sum3[8]_i_20_n_0 ;
  wire \sum3[8]_i_3_n_0 ;
  wire \sum3[8]_i_4_n_0 ;
  wire \sum3[8]_i_5_n_0 ;
  wire \sum3[8]_i_6_n_0 ;
  wire \sum3[8]_i_7_n_0 ;
  wire \sum3[8]_i_8_n_0 ;
  wire \sum3[8]_i_9_n_0 ;
  wire \sum3_reg[12]_i_1_n_0 ;
  wire \sum3_reg[12]_i_1_n_1 ;
  wire \sum3_reg[12]_i_1_n_2 ;
  wire \sum3_reg[12]_i_1_n_3 ;
  wire \sum3_reg[12]_i_6_n_0 ;
  wire \sum3_reg[12]_i_6_n_1 ;
  wire \sum3_reg[12]_i_6_n_2 ;
  wire \sum3_reg[12]_i_6_n_3 ;
  wire \sum3_reg[16]_i_1_n_2 ;
  wire \sum3_reg[16]_i_1_n_3 ;
  wire \sum3_reg[16]_i_5_n_0 ;
  wire \sum3_reg[16]_i_5_n_2 ;
  wire \sum3_reg[16]_i_5_n_3 ;
  wire \sum3_reg[8]_i_11_n_0 ;
  wire \sum3_reg[8]_i_11_n_1 ;
  wire \sum3_reg[8]_i_11_n_2 ;
  wire \sum3_reg[8]_i_11_n_3 ;
  wire \sum3_reg[8]_i_12_n_0 ;
  wire \sum3_reg[8]_i_12_n_1 ;
  wire \sum3_reg[8]_i_12_n_2 ;
  wire \sum3_reg[8]_i_12_n_3 ;
  wire \sum3_reg[8]_i_1_n_0 ;
  wire \sum3_reg[8]_i_1_n_1 ;
  wire \sum3_reg[8]_i_1_n_2 ;
  wire \sum3_reg[8]_i_1_n_3 ;
  wire \sum3_reg[8]_i_2_n_0 ;
  wire \sum3_reg[8]_i_2_n_1 ;
  wire \sum3_reg[8]_i_2_n_2 ;
  wire \sum3_reg[8]_i_2_n_3 ;
  wire [16:8]sum4;
  wire [16:8]sum40;
  wire \sum4[12]_i_10_n_0 ;
  wire \sum4[12]_i_2_n_0 ;
  wire \sum4[12]_i_3_n_0 ;
  wire \sum4[12]_i_4_n_0 ;
  wire \sum4[12]_i_5_n_0 ;
  wire \sum4[12]_i_7_n_0 ;
  wire \sum4[12]_i_8_n_0 ;
  wire \sum4[12]_i_9_n_0 ;
  wire \sum4[16]_i_2_n_0 ;
  wire \sum4[16]_i_3_n_0 ;
  wire \sum4[16]_i_4_n_0 ;
  wire \sum4[16]_i_6_n_0 ;
  wire \sum4[8]_i_10_n_0 ;
  wire \sum4[8]_i_13_n_0 ;
  wire \sum4[8]_i_14_n_0 ;
  wire \sum4[8]_i_15_n_0 ;
  wire \sum4[8]_i_16_n_0 ;
  wire \sum4[8]_i_17_n_0 ;
  wire \sum4[8]_i_18_n_0 ;
  wire \sum4[8]_i_19_n_0 ;
  wire \sum4[8]_i_20_n_0 ;
  wire \sum4[8]_i_3_n_0 ;
  wire \sum4[8]_i_4_n_0 ;
  wire \sum4[8]_i_5_n_0 ;
  wire \sum4[8]_i_6_n_0 ;
  wire \sum4[8]_i_7_n_0 ;
  wire \sum4[8]_i_8_n_0 ;
  wire \sum4[8]_i_9_n_0 ;
  wire \sum4_reg[12]_i_1_n_0 ;
  wire \sum4_reg[12]_i_1_n_1 ;
  wire \sum4_reg[12]_i_1_n_2 ;
  wire \sum4_reg[12]_i_1_n_3 ;
  wire \sum4_reg[12]_i_6_n_0 ;
  wire \sum4_reg[12]_i_6_n_1 ;
  wire \sum4_reg[12]_i_6_n_2 ;
  wire \sum4_reg[12]_i_6_n_3 ;
  wire \sum4_reg[16]_i_1_n_2 ;
  wire \sum4_reg[16]_i_1_n_3 ;
  wire \sum4_reg[16]_i_5_n_0 ;
  wire \sum4_reg[16]_i_5_n_2 ;
  wire \sum4_reg[16]_i_5_n_3 ;
  wire \sum4_reg[8]_i_11_n_0 ;
  wire \sum4_reg[8]_i_11_n_1 ;
  wire \sum4_reg[8]_i_11_n_2 ;
  wire \sum4_reg[8]_i_11_n_3 ;
  wire \sum4_reg[8]_i_12_n_0 ;
  wire \sum4_reg[8]_i_12_n_1 ;
  wire \sum4_reg[8]_i_12_n_2 ;
  wire \sum4_reg[8]_i_12_n_3 ;
  wire \sum4_reg[8]_i_1_n_0 ;
  wire \sum4_reg[8]_i_1_n_1 ;
  wire \sum4_reg[8]_i_1_n_2 ;
  wire \sum4_reg[8]_i_1_n_3 ;
  wire \sum4_reg[8]_i_2_n_0 ;
  wire \sum4_reg[8]_i_2_n_1 ;
  wire \sum4_reg[8]_i_2_n_2 ;
  wire \sum4_reg[8]_i_2_n_3 ;
  wire [0:0]tlast;
  wire [0:0]tuser;
  wire [3:1]\NLW_b1_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_b1_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_b1_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_b1_reg[12]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_b2_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_b2_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_b2_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_b2_reg[12]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_b3_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_b3_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_b3_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_b3_reg[12]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_b4_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_b4_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_b4_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_b4_reg[12]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_g1_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_g1_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_g1_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_g1_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_g2_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_g2_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_g2_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_g2_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_g3_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_g3_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_g3_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_g3_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_g4_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_g4_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_g4_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_g4_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_r1_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_r1_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_r1_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r1_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_r2_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_r2_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_r2_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r2_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_r3_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_r3_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_r3_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r3_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_r4_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_r4_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_r4_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r4_reg[14]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_sum1_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum1_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_sum1_reg[16]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum1_reg[16]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_sum1_reg[8]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_sum1_reg[8]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_sum1_reg[8]_i_2_O_UNCONNECTED ;
  wire [2:2]\NLW_sum2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum2_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_sum2_reg[16]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum2_reg[16]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_sum2_reg[8]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_sum2_reg[8]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_sum2_reg[8]_i_2_O_UNCONNECTED ;
  wire [2:2]\NLW_sum3_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum3_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_sum3_reg[16]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum3_reg[16]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_sum3_reg[8]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_sum3_reg[8]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_sum3_reg[8]_i_2_O_UNCONNECTED ;
  wire [2:2]\NLW_sum4_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum4_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_sum4_reg[16]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum4_reg[16]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_sum4_reg[8]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_sum4_reg[8]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_sum4_reg[8]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \b1[10]_i_11 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[13]),
        .O(\b1[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b1[10]_i_12 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[12]),
        .O(\b1[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b1[10]_i_13 
       (.I0(s_axis_tdata[13]),
        .I1(s_axis_tdata[11]),
        .O(\b1[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b1[10]_i_2 
       (.I0(s_axis_tdata[14]),
        .I1(\b1_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[12]),
        .O(\b1[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b1[10]_i_3 
       (.I0(s_axis_tdata[13]),
        .I1(\b1_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[11]),
        .O(\b1[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b1[10]_i_4 
       (.I0(s_axis_tdata[12]),
        .I1(\b1_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[10]),
        .O(\b1[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b1[10]_i_5 
       (.I0(s_axis_tdata[11]),
        .I1(\b1_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[9]),
        .O(\b1[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b1[10]_i_6 
       (.I0(s_axis_tdata[12]),
        .I1(\b1_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[14]),
        .I3(s_axis_tdata[15]),
        .I4(\b1_reg[12]_i_5_n_2 ),
        .I5(s_axis_tdata[13]),
        .O(\b1[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b1[10]_i_7 
       (.I0(s_axis_tdata[11]),
        .I1(\b1_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[13]),
        .I3(s_axis_tdata[14]),
        .I4(\b1_reg[12]_i_5_n_7 ),
        .I5(s_axis_tdata[12]),
        .O(\b1[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b1[10]_i_8 
       (.I0(s_axis_tdata[10]),
        .I1(\b1_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[13]),
        .I4(\b1_reg[10]_i_10_n_4 ),
        .I5(s_axis_tdata[11]),
        .O(\b1[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b1[10]_i_9 
       (.I0(s_axis_tdata[9]),
        .I1(\b1_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[12]),
        .I4(\b1_reg[10]_i_10_n_5 ),
        .I5(s_axis_tdata[10]),
        .O(\b1[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b1[12]_i_2 
       (.I0(s_axis_tdata[15]),
        .I1(\b1_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[13]),
        .O(\b1[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \b1[12]_i_3 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[15]),
        .O(\b1[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \b1[12]_i_4 
       (.I0(s_axis_tdata[13]),
        .I1(\b1_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[15]),
        .I3(s_axis_tdata[14]),
        .O(\b1[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b1[2]_i_2 
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[10]),
        .O(\b1[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b1[2]_i_3 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[9]),
        .O(\b1[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b1[2]_i_4 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[8]),
        .O(\b1[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b1[6]_i_2 
       (.I0(s_axis_tdata[10]),
        .I1(\b1_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[8]),
        .O(\b1[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \b1[6]_i_3 
       (.I0(s_axis_tdata[10]),
        .I1(\b1_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[8]),
        .O(\b1[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \b1[6]_i_4 
       (.I0(\b1_reg[2]_i_1_n_5 ),
        .I1(s_axis_tdata[8]),
        .O(\b1[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b1[6]_i_5 
       (.I0(s_axis_tdata[8]),
        .I1(\b1_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[11]),
        .I4(\b1_reg[10]_i_10_n_6 ),
        .I5(s_axis_tdata[9]),
        .O(\b1[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \b1[6]_i_6 
       (.I0(s_axis_tdata[10]),
        .I1(\b1_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(\b1_reg[2]_i_1_n_4 ),
        .O(\b1[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \b1[6]_i_7 
       (.I0(s_axis_tdata[8]),
        .I1(\b1_reg[2]_i_1_n_5 ),
        .I2(\b1_reg[2]_i_1_n_4 ),
        .I3(s_axis_tdata[9]),
        .O(\b1[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b1[6]_i_8 
       (.I0(s_axis_tdata[8]),
        .I1(\b1_reg[2]_i_1_n_5 ),
        .O(\b1[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[8]),
        .Q(b1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[10]),
        .Q(b1[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b1_reg[10]_i_1 
       (.CI(\b1_reg[6]_i_1_n_0 ),
        .CO({\b1_reg[10]_i_1_n_0 ,\b1_reg[10]_i_1_n_1 ,\b1_reg[10]_i_1_n_2 ,\b1_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b1[10]_i_2_n_0 ,\b1[10]_i_3_n_0 ,\b1[10]_i_4_n_0 ,\b1[10]_i_5_n_0 }),
        .O(b10[10:7]),
        .S({\b1[10]_i_6_n_0 ,\b1[10]_i_7_n_0 ,\b1[10]_i_8_n_0 ,\b1[10]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b1_reg[10]_i_10 
       (.CI(\b1_reg[2]_i_1_n_0 ),
        .CO({\b1_reg[10]_i_10_n_0 ,\b1_reg[10]_i_10_n_1 ,\b1_reg[10]_i_10_n_2 ,\b1_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[15:13]}),
        .O({\b1_reg[10]_i_10_n_4 ,\b1_reg[10]_i_10_n_5 ,\b1_reg[10]_i_10_n_6 ,\b1_reg[10]_i_10_n_7 }),
        .S({s_axis_tdata[14],\b1[10]_i_11_n_0 ,\b1[10]_i_12_n_0 ,\b1[10]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[11]),
        .Q(b1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[12]),
        .Q(b1[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b1_reg[12]_i_1 
       (.CI(\b1_reg[10]_i_1_n_0 ),
        .CO({\NLW_b1_reg[12]_i_1_CO_UNCONNECTED [3:1],\b1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\b1[12]_i_2_n_0 }),
        .O({\NLW_b1_reg[12]_i_1_O_UNCONNECTED [3:2],b10[12:11]}),
        .S({1'b0,1'b0,\b1[12]_i_3_n_0 ,\b1[12]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b1_reg[12]_i_5 
       (.CI(\b1_reg[10]_i_10_n_0 ),
        .CO({\NLW_b1_reg[12]_i_5_CO_UNCONNECTED [3:2],\b1_reg[12]_i_5_n_2 ,\NLW_b1_reg[12]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_b1_reg[12]_i_5_O_UNCONNECTED [3:1],\b1_reg[12]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[15]}));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[1]),
        .Q(b1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[2]),
        .Q(b1[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b1_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\b1_reg[2]_i_1_n_0 ,\b1_reg[2]_i_1_n_1 ,\b1_reg[2]_i_1_n_2 ,\b1_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[12:10],1'b0}),
        .O({\b1_reg[2]_i_1_n_4 ,\b1_reg[2]_i_1_n_5 ,b10[2:1]}),
        .S({\b1[2]_i_2_n_0 ,\b1[2]_i_3_n_0 ,\b1[2]_i_4_n_0 ,s_axis_tdata[9]}));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[3]),
        .Q(b1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[4]),
        .Q(b1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[5]),
        .Q(b1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[6]),
        .Q(b1[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b1_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\b1_reg[6]_i_1_n_0 ,\b1_reg[6]_i_1_n_1 ,\b1_reg[6]_i_1_n_2 ,\b1_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b1[6]_i_2_n_0 ,\b1[6]_i_3_n_0 ,\b1[6]_i_4_n_0 ,1'b0}),
        .O(b10[6:3]),
        .S({\b1[6]_i_5_n_0 ,\b1[6]_i_6_n_0 ,\b1[6]_i_7_n_0 ,\b1[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[7]),
        .Q(b1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[8]),
        .Q(b1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b10[9]),
        .Q(b1[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \b2[10]_i_11 
       (.I0(s_axis_tdata[39]),
        .I1(s_axis_tdata[37]),
        .O(\b2[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b2[10]_i_12 
       (.I0(s_axis_tdata[38]),
        .I1(s_axis_tdata[36]),
        .O(\b2[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b2[10]_i_13 
       (.I0(s_axis_tdata[37]),
        .I1(s_axis_tdata[35]),
        .O(\b2[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b2[10]_i_2 
       (.I0(s_axis_tdata[38]),
        .I1(\b2_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[36]),
        .O(\b2[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b2[10]_i_3 
       (.I0(s_axis_tdata[37]),
        .I1(\b2_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[35]),
        .O(\b2[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b2[10]_i_4 
       (.I0(s_axis_tdata[36]),
        .I1(\b2_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[34]),
        .O(\b2[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b2[10]_i_5 
       (.I0(s_axis_tdata[35]),
        .I1(\b2_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[33]),
        .O(\b2[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b2[10]_i_6 
       (.I0(s_axis_tdata[36]),
        .I1(\b2_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[38]),
        .I3(s_axis_tdata[39]),
        .I4(\b2_reg[12]_i_5_n_2 ),
        .I5(s_axis_tdata[37]),
        .O(\b2[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b2[10]_i_7 
       (.I0(s_axis_tdata[35]),
        .I1(\b2_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[37]),
        .I3(s_axis_tdata[38]),
        .I4(\b2_reg[12]_i_5_n_7 ),
        .I5(s_axis_tdata[36]),
        .O(\b2[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b2[10]_i_8 
       (.I0(s_axis_tdata[34]),
        .I1(\b2_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[36]),
        .I3(s_axis_tdata[37]),
        .I4(\b2_reg[10]_i_10_n_4 ),
        .I5(s_axis_tdata[35]),
        .O(\b2[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b2[10]_i_9 
       (.I0(s_axis_tdata[33]),
        .I1(\b2_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[35]),
        .I3(s_axis_tdata[36]),
        .I4(\b2_reg[10]_i_10_n_5 ),
        .I5(s_axis_tdata[34]),
        .O(\b2[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b2[12]_i_2 
       (.I0(s_axis_tdata[39]),
        .I1(\b2_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[37]),
        .O(\b2[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \b2[12]_i_3 
       (.I0(s_axis_tdata[38]),
        .I1(s_axis_tdata[39]),
        .O(\b2[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \b2[12]_i_4 
       (.I0(s_axis_tdata[37]),
        .I1(\b2_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[39]),
        .I3(s_axis_tdata[38]),
        .O(\b2[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b2[2]_i_2 
       (.I0(s_axis_tdata[36]),
        .I1(s_axis_tdata[34]),
        .O(\b2[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b2[2]_i_3 
       (.I0(s_axis_tdata[35]),
        .I1(s_axis_tdata[33]),
        .O(\b2[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b2[2]_i_4 
       (.I0(s_axis_tdata[34]),
        .I1(s_axis_tdata[32]),
        .O(\b2[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b2[6]_i_2 
       (.I0(s_axis_tdata[34]),
        .I1(\b2_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[32]),
        .O(\b2[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \b2[6]_i_3 
       (.I0(s_axis_tdata[34]),
        .I1(\b2_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[32]),
        .O(\b2[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \b2[6]_i_4 
       (.I0(\b2_reg[2]_i_1_n_5 ),
        .I1(s_axis_tdata[32]),
        .O(\b2[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b2[6]_i_5 
       (.I0(s_axis_tdata[32]),
        .I1(\b2_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[34]),
        .I3(s_axis_tdata[35]),
        .I4(\b2_reg[10]_i_10_n_6 ),
        .I5(s_axis_tdata[33]),
        .O(\b2[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \b2[6]_i_6 
       (.I0(s_axis_tdata[34]),
        .I1(\b2_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[32]),
        .I3(s_axis_tdata[33]),
        .I4(\b2_reg[2]_i_1_n_4 ),
        .O(\b2[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \b2[6]_i_7 
       (.I0(s_axis_tdata[32]),
        .I1(\b2_reg[2]_i_1_n_5 ),
        .I2(\b2_reg[2]_i_1_n_4 ),
        .I3(s_axis_tdata[33]),
        .O(\b2[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b2[6]_i_8 
       (.I0(s_axis_tdata[32]),
        .I1(\b2_reg[2]_i_1_n_5 ),
        .O(\b2[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[32]),
        .Q(b2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[10]),
        .Q(b2[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b2_reg[10]_i_1 
       (.CI(\b2_reg[6]_i_1_n_0 ),
        .CO({\b2_reg[10]_i_1_n_0 ,\b2_reg[10]_i_1_n_1 ,\b2_reg[10]_i_1_n_2 ,\b2_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b2[10]_i_2_n_0 ,\b2[10]_i_3_n_0 ,\b2[10]_i_4_n_0 ,\b2[10]_i_5_n_0 }),
        .O(b20[10:7]),
        .S({\b2[10]_i_6_n_0 ,\b2[10]_i_7_n_0 ,\b2[10]_i_8_n_0 ,\b2[10]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b2_reg[10]_i_10 
       (.CI(\b2_reg[2]_i_1_n_0 ),
        .CO({\b2_reg[10]_i_10_n_0 ,\b2_reg[10]_i_10_n_1 ,\b2_reg[10]_i_10_n_2 ,\b2_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[39:37]}),
        .O({\b2_reg[10]_i_10_n_4 ,\b2_reg[10]_i_10_n_5 ,\b2_reg[10]_i_10_n_6 ,\b2_reg[10]_i_10_n_7 }),
        .S({s_axis_tdata[38],\b2[10]_i_11_n_0 ,\b2[10]_i_12_n_0 ,\b2[10]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[11]),
        .Q(b2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[12]),
        .Q(b2[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b2_reg[12]_i_1 
       (.CI(\b2_reg[10]_i_1_n_0 ),
        .CO({\NLW_b2_reg[12]_i_1_CO_UNCONNECTED [3:1],\b2_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\b2[12]_i_2_n_0 }),
        .O({\NLW_b2_reg[12]_i_1_O_UNCONNECTED [3:2],b20[12:11]}),
        .S({1'b0,1'b0,\b2[12]_i_3_n_0 ,\b2[12]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b2_reg[12]_i_5 
       (.CI(\b2_reg[10]_i_10_n_0 ),
        .CO({\NLW_b2_reg[12]_i_5_CO_UNCONNECTED [3:2],\b2_reg[12]_i_5_n_2 ,\NLW_b2_reg[12]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_b2_reg[12]_i_5_O_UNCONNECTED [3:1],\b2_reg[12]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[39]}));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[1]),
        .Q(b2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[2]),
        .Q(b2[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b2_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\b2_reg[2]_i_1_n_0 ,\b2_reg[2]_i_1_n_1 ,\b2_reg[2]_i_1_n_2 ,\b2_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[36:34],1'b0}),
        .O({\b2_reg[2]_i_1_n_4 ,\b2_reg[2]_i_1_n_5 ,b20[2:1]}),
        .S({\b2[2]_i_2_n_0 ,\b2[2]_i_3_n_0 ,\b2[2]_i_4_n_0 ,s_axis_tdata[33]}));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[3]),
        .Q(b2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[4]),
        .Q(b2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[5]),
        .Q(b2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[6]),
        .Q(b2[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b2_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\b2_reg[6]_i_1_n_0 ,\b2_reg[6]_i_1_n_1 ,\b2_reg[6]_i_1_n_2 ,\b2_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b2[6]_i_2_n_0 ,\b2[6]_i_3_n_0 ,\b2[6]_i_4_n_0 ,1'b0}),
        .O(b20[6:3]),
        .S({\b2[6]_i_5_n_0 ,\b2[6]_i_6_n_0 ,\b2[6]_i_7_n_0 ,\b2[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[7]),
        .Q(b2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[8]),
        .Q(b2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b2_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b20[9]),
        .Q(b2[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \b3[10]_i_11 
       (.I0(s_axis_tdata[63]),
        .I1(s_axis_tdata[61]),
        .O(\b3[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b3[10]_i_12 
       (.I0(s_axis_tdata[62]),
        .I1(s_axis_tdata[60]),
        .O(\b3[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b3[10]_i_13 
       (.I0(s_axis_tdata[61]),
        .I1(s_axis_tdata[59]),
        .O(\b3[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b3[10]_i_2 
       (.I0(s_axis_tdata[62]),
        .I1(\b3_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[60]),
        .O(\b3[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b3[10]_i_3 
       (.I0(s_axis_tdata[61]),
        .I1(\b3_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[59]),
        .O(\b3[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b3[10]_i_4 
       (.I0(s_axis_tdata[60]),
        .I1(\b3_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[58]),
        .O(\b3[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b3[10]_i_5 
       (.I0(s_axis_tdata[59]),
        .I1(\b3_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[57]),
        .O(\b3[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b3[10]_i_6 
       (.I0(s_axis_tdata[60]),
        .I1(\b3_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[62]),
        .I3(s_axis_tdata[63]),
        .I4(\b3_reg[12]_i_5_n_2 ),
        .I5(s_axis_tdata[61]),
        .O(\b3[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b3[10]_i_7 
       (.I0(s_axis_tdata[59]),
        .I1(\b3_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[61]),
        .I3(s_axis_tdata[62]),
        .I4(\b3_reg[12]_i_5_n_7 ),
        .I5(s_axis_tdata[60]),
        .O(\b3[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b3[10]_i_8 
       (.I0(s_axis_tdata[58]),
        .I1(\b3_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[60]),
        .I3(s_axis_tdata[61]),
        .I4(\b3_reg[10]_i_10_n_4 ),
        .I5(s_axis_tdata[59]),
        .O(\b3[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b3[10]_i_9 
       (.I0(s_axis_tdata[57]),
        .I1(\b3_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[59]),
        .I3(s_axis_tdata[60]),
        .I4(\b3_reg[10]_i_10_n_5 ),
        .I5(s_axis_tdata[58]),
        .O(\b3[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b3[12]_i_2 
       (.I0(s_axis_tdata[63]),
        .I1(\b3_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[61]),
        .O(\b3[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \b3[12]_i_3 
       (.I0(s_axis_tdata[62]),
        .I1(s_axis_tdata[63]),
        .O(\b3[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \b3[12]_i_4 
       (.I0(s_axis_tdata[61]),
        .I1(\b3_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[63]),
        .I3(s_axis_tdata[62]),
        .O(\b3[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b3[2]_i_2 
       (.I0(s_axis_tdata[60]),
        .I1(s_axis_tdata[58]),
        .O(\b3[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b3[2]_i_3 
       (.I0(s_axis_tdata[59]),
        .I1(s_axis_tdata[57]),
        .O(\b3[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b3[2]_i_4 
       (.I0(s_axis_tdata[58]),
        .I1(s_axis_tdata[56]),
        .O(\b3[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b3[6]_i_2 
       (.I0(s_axis_tdata[58]),
        .I1(\b3_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[56]),
        .O(\b3[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \b3[6]_i_3 
       (.I0(s_axis_tdata[58]),
        .I1(\b3_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[56]),
        .O(\b3[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \b3[6]_i_4 
       (.I0(\b3_reg[2]_i_1_n_5 ),
        .I1(s_axis_tdata[56]),
        .O(\b3[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b3[6]_i_5 
       (.I0(s_axis_tdata[56]),
        .I1(\b3_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[58]),
        .I3(s_axis_tdata[59]),
        .I4(\b3_reg[10]_i_10_n_6 ),
        .I5(s_axis_tdata[57]),
        .O(\b3[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \b3[6]_i_6 
       (.I0(s_axis_tdata[58]),
        .I1(\b3_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[56]),
        .I3(s_axis_tdata[57]),
        .I4(\b3_reg[2]_i_1_n_4 ),
        .O(\b3[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \b3[6]_i_7 
       (.I0(s_axis_tdata[56]),
        .I1(\b3_reg[2]_i_1_n_5 ),
        .I2(\b3_reg[2]_i_1_n_4 ),
        .I3(s_axis_tdata[57]),
        .O(\b3[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b3[6]_i_8 
       (.I0(s_axis_tdata[56]),
        .I1(\b3_reg[2]_i_1_n_5 ),
        .O(\b3[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[56]),
        .Q(b3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[10]),
        .Q(b3[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b3_reg[10]_i_1 
       (.CI(\b3_reg[6]_i_1_n_0 ),
        .CO({\b3_reg[10]_i_1_n_0 ,\b3_reg[10]_i_1_n_1 ,\b3_reg[10]_i_1_n_2 ,\b3_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b3[10]_i_2_n_0 ,\b3[10]_i_3_n_0 ,\b3[10]_i_4_n_0 ,\b3[10]_i_5_n_0 }),
        .O(b30[10:7]),
        .S({\b3[10]_i_6_n_0 ,\b3[10]_i_7_n_0 ,\b3[10]_i_8_n_0 ,\b3[10]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b3_reg[10]_i_10 
       (.CI(\b3_reg[2]_i_1_n_0 ),
        .CO({\b3_reg[10]_i_10_n_0 ,\b3_reg[10]_i_10_n_1 ,\b3_reg[10]_i_10_n_2 ,\b3_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[63:61]}),
        .O({\b3_reg[10]_i_10_n_4 ,\b3_reg[10]_i_10_n_5 ,\b3_reg[10]_i_10_n_6 ,\b3_reg[10]_i_10_n_7 }),
        .S({s_axis_tdata[62],\b3[10]_i_11_n_0 ,\b3[10]_i_12_n_0 ,\b3[10]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[11]),
        .Q(b3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[12]),
        .Q(b3[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b3_reg[12]_i_1 
       (.CI(\b3_reg[10]_i_1_n_0 ),
        .CO({\NLW_b3_reg[12]_i_1_CO_UNCONNECTED [3:1],\b3_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\b3[12]_i_2_n_0 }),
        .O({\NLW_b3_reg[12]_i_1_O_UNCONNECTED [3:2],b30[12:11]}),
        .S({1'b0,1'b0,\b3[12]_i_3_n_0 ,\b3[12]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b3_reg[12]_i_5 
       (.CI(\b3_reg[10]_i_10_n_0 ),
        .CO({\NLW_b3_reg[12]_i_5_CO_UNCONNECTED [3:2],\b3_reg[12]_i_5_n_2 ,\NLW_b3_reg[12]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_b3_reg[12]_i_5_O_UNCONNECTED [3:1],\b3_reg[12]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[63]}));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[1]),
        .Q(b3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[2]),
        .Q(b3[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b3_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\b3_reg[2]_i_1_n_0 ,\b3_reg[2]_i_1_n_1 ,\b3_reg[2]_i_1_n_2 ,\b3_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[60:58],1'b0}),
        .O({\b3_reg[2]_i_1_n_4 ,\b3_reg[2]_i_1_n_5 ,b30[2:1]}),
        .S({\b3[2]_i_2_n_0 ,\b3[2]_i_3_n_0 ,\b3[2]_i_4_n_0 ,s_axis_tdata[57]}));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[3]),
        .Q(b3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[4]),
        .Q(b3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[5]),
        .Q(b3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[6]),
        .Q(b3[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b3_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\b3_reg[6]_i_1_n_0 ,\b3_reg[6]_i_1_n_1 ,\b3_reg[6]_i_1_n_2 ,\b3_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b3[6]_i_2_n_0 ,\b3[6]_i_3_n_0 ,\b3[6]_i_4_n_0 ,1'b0}),
        .O(b30[6:3]),
        .S({\b3[6]_i_5_n_0 ,\b3[6]_i_6_n_0 ,\b3[6]_i_7_n_0 ,\b3[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[7]),
        .Q(b3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[8]),
        .Q(b3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b3_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b30[9]),
        .Q(b3[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \b4[10]_i_11 
       (.I0(s_axis_tdata[87]),
        .I1(s_axis_tdata[85]),
        .O(\b4[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b4[10]_i_12 
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_tdata[84]),
        .O(\b4[10]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b4[10]_i_13 
       (.I0(s_axis_tdata[85]),
        .I1(s_axis_tdata[83]),
        .O(\b4[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b4[10]_i_2 
       (.I0(s_axis_tdata[86]),
        .I1(\b4_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[84]),
        .O(\b4[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b4[10]_i_3 
       (.I0(s_axis_tdata[85]),
        .I1(\b4_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[83]),
        .O(\b4[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b4[10]_i_4 
       (.I0(s_axis_tdata[84]),
        .I1(\b4_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[82]),
        .O(\b4[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b4[10]_i_5 
       (.I0(s_axis_tdata[83]),
        .I1(\b4_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[81]),
        .O(\b4[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b4[10]_i_6 
       (.I0(s_axis_tdata[84]),
        .I1(\b4_reg[12]_i_5_n_7 ),
        .I2(s_axis_tdata[86]),
        .I3(s_axis_tdata[87]),
        .I4(\b4_reg[12]_i_5_n_2 ),
        .I5(s_axis_tdata[85]),
        .O(\b4[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b4[10]_i_7 
       (.I0(s_axis_tdata[83]),
        .I1(\b4_reg[10]_i_10_n_4 ),
        .I2(s_axis_tdata[85]),
        .I3(s_axis_tdata[86]),
        .I4(\b4_reg[12]_i_5_n_7 ),
        .I5(s_axis_tdata[84]),
        .O(\b4[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b4[10]_i_8 
       (.I0(s_axis_tdata[82]),
        .I1(\b4_reg[10]_i_10_n_5 ),
        .I2(s_axis_tdata[84]),
        .I3(s_axis_tdata[85]),
        .I4(\b4_reg[10]_i_10_n_4 ),
        .I5(s_axis_tdata[83]),
        .O(\b4[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b4[10]_i_9 
       (.I0(s_axis_tdata[81]),
        .I1(\b4_reg[10]_i_10_n_6 ),
        .I2(s_axis_tdata[83]),
        .I3(s_axis_tdata[84]),
        .I4(\b4_reg[10]_i_10_n_5 ),
        .I5(s_axis_tdata[82]),
        .O(\b4[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b4[12]_i_2 
       (.I0(s_axis_tdata[87]),
        .I1(\b4_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[85]),
        .O(\b4[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \b4[12]_i_3 
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_tdata[87]),
        .O(\b4[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8E71)) 
    \b4[12]_i_4 
       (.I0(s_axis_tdata[85]),
        .I1(\b4_reg[12]_i_5_n_2 ),
        .I2(s_axis_tdata[87]),
        .I3(s_axis_tdata[86]),
        .O(\b4[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b4[2]_i_2 
       (.I0(s_axis_tdata[84]),
        .I1(s_axis_tdata[82]),
        .O(\b4[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b4[2]_i_3 
       (.I0(s_axis_tdata[83]),
        .I1(s_axis_tdata[81]),
        .O(\b4[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b4[2]_i_4 
       (.I0(s_axis_tdata[82]),
        .I1(s_axis_tdata[80]),
        .O(\b4[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \b4[6]_i_2 
       (.I0(s_axis_tdata[82]),
        .I1(\b4_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[80]),
        .O(\b4[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \b4[6]_i_3 
       (.I0(s_axis_tdata[82]),
        .I1(\b4_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[80]),
        .O(\b4[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \b4[6]_i_4 
       (.I0(\b4_reg[2]_i_1_n_5 ),
        .I1(s_axis_tdata[80]),
        .O(\b4[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \b4[6]_i_5 
       (.I0(s_axis_tdata[80]),
        .I1(\b4_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[82]),
        .I3(s_axis_tdata[83]),
        .I4(\b4_reg[10]_i_10_n_6 ),
        .I5(s_axis_tdata[81]),
        .O(\b4[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \b4[6]_i_6 
       (.I0(s_axis_tdata[82]),
        .I1(\b4_reg[10]_i_10_n_7 ),
        .I2(s_axis_tdata[80]),
        .I3(s_axis_tdata[81]),
        .I4(\b4_reg[2]_i_1_n_4 ),
        .O(\b4[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \b4[6]_i_7 
       (.I0(s_axis_tdata[80]),
        .I1(\b4_reg[2]_i_1_n_5 ),
        .I2(\b4_reg[2]_i_1_n_4 ),
        .I3(s_axis_tdata[81]),
        .O(\b4[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \b4[6]_i_8 
       (.I0(s_axis_tdata[80]),
        .I1(\b4_reg[2]_i_1_n_5 ),
        .O(\b4[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[80]),
        .Q(b4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[10]),
        .Q(b4[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b4_reg[10]_i_1 
       (.CI(\b4_reg[6]_i_1_n_0 ),
        .CO({\b4_reg[10]_i_1_n_0 ,\b4_reg[10]_i_1_n_1 ,\b4_reg[10]_i_1_n_2 ,\b4_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b4[10]_i_2_n_0 ,\b4[10]_i_3_n_0 ,\b4[10]_i_4_n_0 ,\b4[10]_i_5_n_0 }),
        .O(b40[10:7]),
        .S({\b4[10]_i_6_n_0 ,\b4[10]_i_7_n_0 ,\b4[10]_i_8_n_0 ,\b4[10]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b4_reg[10]_i_10 
       (.CI(\b4_reg[2]_i_1_n_0 ),
        .CO({\b4_reg[10]_i_10_n_0 ,\b4_reg[10]_i_10_n_1 ,\b4_reg[10]_i_10_n_2 ,\b4_reg[10]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[87:85]}),
        .O({\b4_reg[10]_i_10_n_4 ,\b4_reg[10]_i_10_n_5 ,\b4_reg[10]_i_10_n_6 ,\b4_reg[10]_i_10_n_7 }),
        .S({s_axis_tdata[86],\b4[10]_i_11_n_0 ,\b4[10]_i_12_n_0 ,\b4[10]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[11]),
        .Q(b4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[12]),
        .Q(b4[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b4_reg[12]_i_1 
       (.CI(\b4_reg[10]_i_1_n_0 ),
        .CO({\NLW_b4_reg[12]_i_1_CO_UNCONNECTED [3:1],\b4_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\b4[12]_i_2_n_0 }),
        .O({\NLW_b4_reg[12]_i_1_O_UNCONNECTED [3:2],b40[12:11]}),
        .S({1'b0,1'b0,\b4[12]_i_3_n_0 ,\b4[12]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b4_reg[12]_i_5 
       (.CI(\b4_reg[10]_i_10_n_0 ),
        .CO({\NLW_b4_reg[12]_i_5_CO_UNCONNECTED [3:2],\b4_reg[12]_i_5_n_2 ,\NLW_b4_reg[12]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_b4_reg[12]_i_5_O_UNCONNECTED [3:1],\b4_reg[12]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[87]}));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[1]),
        .Q(b4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[2]),
        .Q(b4[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b4_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\b4_reg[2]_i_1_n_0 ,\b4_reg[2]_i_1_n_1 ,\b4_reg[2]_i_1_n_2 ,\b4_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[84:82],1'b0}),
        .O({\b4_reg[2]_i_1_n_4 ,\b4_reg[2]_i_1_n_5 ,b40[2:1]}),
        .S({\b4[2]_i_2_n_0 ,\b4[2]_i_3_n_0 ,\b4[2]_i_4_n_0 ,s_axis_tdata[81]}));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[3]),
        .Q(b4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[4]),
        .Q(b4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[5]),
        .Q(b4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[6]),
        .Q(b4[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b4_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\b4_reg[6]_i_1_n_0 ,\b4_reg[6]_i_1_n_1 ,\b4_reg[6]_i_1_n_2 ,\b4_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\b4[6]_i_2_n_0 ,\b4[6]_i_3_n_0 ,\b4[6]_i_4_n_0 ,1'b0}),
        .O(b40[6:3]),
        .S({\b4[6]_i_5_n_0 ,\b4[6]_i_6_n_0 ,\b4[6]_i_7_n_0 ,\b4[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[7]),
        .Q(b4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[8]),
        .Q(b4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b4_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(b40[9]),
        .Q(b4[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g1[10]_i_2 
       (.I0(s_axis_tdata[5]),
        .I1(\g1_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[2]),
        .O(\g1[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g1[10]_i_3 
       (.I0(s_axis_tdata[4]),
        .I1(\g1_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[1]),
        .O(\g1[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g1[10]_i_4 
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[4]),
        .I2(\g1_reg[6]_i_2_n_4 ),
        .O(\g1[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g1[10]_i_5 
       (.I0(s_axis_tdata[6]),
        .I1(\g1_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[3]),
        .I3(\g1[10]_i_2_n_0 ),
        .O(\g1[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g1[10]_i_6 
       (.I0(s_axis_tdata[5]),
        .I1(\g1_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[2]),
        .I3(\g1[10]_i_3_n_0 ),
        .O(\g1[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \g1[10]_i_7 
       (.I0(s_axis_tdata[4]),
        .I1(\g1_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[1]),
        .I3(\g1_reg[6]_i_2_n_5 ),
        .I4(s_axis_tdata[3]),
        .O(\g1[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g1[10]_i_8 
       (.I0(s_axis_tdata[3]),
        .I1(\g1_reg[6]_i_2_n_5 ),
        .I2(s_axis_tdata[0]),
        .O(\g1[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g1[14]_i_2 
       (.I0(s_axis_tdata[6]),
        .I1(\g1_reg[15]_i_3_n_1 ),
        .O(\g1[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g1[14]_i_3 
       (.I0(s_axis_tdata[5]),
        .I1(\g1_reg[15]_i_3_n_1 ),
        .O(\g1[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \g1[14]_i_4 
       (.I0(s_axis_tdata[7]),
        .I1(\g1_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[4]),
        .O(\g1[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g1[14]_i_5 
       (.I0(s_axis_tdata[6]),
        .I1(\g1_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[3]),
        .O(\g1[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g1[14]_i_6 
       (.I0(s_axis_tdata[6]),
        .I1(\g1_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[7]),
        .O(\g1[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g1[14]_i_7 
       (.I0(s_axis_tdata[5]),
        .I1(\g1_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[6]),
        .O(\g1[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \g1[14]_i_8 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[7]),
        .I2(\g1_reg[15]_i_3_n_1 ),
        .I3(s_axis_tdata[5]),
        .O(\g1[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \g1[14]_i_9 
       (.I0(\g1[14]_i_5_n_0 ),
        .I1(\g1_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[7]),
        .I3(s_axis_tdata[4]),
        .O(\g1[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \g1[15]_i_2 
       (.I0(s_axis_tdata[7]),
        .I1(\g1_reg[15]_i_3_n_1 ),
        .O(\g1[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g1[15]_i_4 
       (.I0(s_axis_tdata[7]),
        .O(\g1[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g1[15]_i_5 
       (.I0(s_axis_tdata[6]),
        .O(\g1[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g1[2]_i_2 
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[3]),
        .O(\g1[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g1[2]_i_3 
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[2]),
        .O(\g1[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g1[2]_i_4 
       (.I0(s_axis_tdata[1]),
        .O(\g1[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g1[6]_i_3 
       (.I0(\g1_reg[6]_i_2_n_6 ),
        .I1(s_axis_tdata[2]),
        .O(\g1[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g1[6]_i_4 
       (.I0(\g1_reg[6]_i_2_n_7 ),
        .I1(s_axis_tdata[1]),
        .O(\g1[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g1[6]_i_5 
       (.I0(\g1_reg[2]_i_1_n_4 ),
        .I1(s_axis_tdata[0]),
        .O(\g1[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g1[6]_i_6 
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_tdata[7]),
        .O(\g1[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g1[6]_i_7 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[6]),
        .O(\g1[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g1[6]_i_8 
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_tdata[5]),
        .O(\g1[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g1[6]_i_9 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[4]),
        .O(\g1[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[10]),
        .Q(g1[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g1_reg[10]_i_1 
       (.CI(\g1_reg[6]_i_1_n_0 ),
        .CO({\g1_reg[10]_i_1_n_0 ,\g1_reg[10]_i_1_n_1 ,\g1_reg[10]_i_1_n_2 ,\g1_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g1[10]_i_2_n_0 ,\g1[10]_i_3_n_0 ,\g1[10]_i_4_n_0 ,s_axis_tdata[0]}),
        .O(g10[10:7]),
        .S({\g1[10]_i_5_n_0 ,\g1[10]_i_6_n_0 ,\g1[10]_i_7_n_0 ,\g1[10]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[11]),
        .Q(g1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[12]),
        .Q(g1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[13]),
        .Q(g1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[14]),
        .Q(g1[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g1_reg[14]_i_1 
       (.CI(\g1_reg[10]_i_1_n_0 ),
        .CO({\g1_reg[14]_i_1_n_0 ,\g1_reg[14]_i_1_n_1 ,\g1_reg[14]_i_1_n_2 ,\g1_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g1[14]_i_2_n_0 ,\g1[14]_i_3_n_0 ,\g1[14]_i_4_n_0 ,\g1[14]_i_5_n_0 }),
        .O(g10[14:11]),
        .S({\g1[14]_i_6_n_0 ,\g1[14]_i_7_n_0 ,\g1[14]_i_8_n_0 ,\g1[14]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[15]),
        .Q(g1[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g1_reg[15]_i_1 
       (.CI(\g1_reg[14]_i_1_n_0 ),
        .CO(\NLW_g1_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g1_reg[15]_i_1_O_UNCONNECTED [3:1],g10[15]}),
        .S({1'b0,1'b0,1'b0,\g1[15]_i_2_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g1_reg[15]_i_3 
       (.CI(\g1_reg[6]_i_2_n_0 ),
        .CO({\NLW_g1_reg[15]_i_3_CO_UNCONNECTED [3],\g1_reg[15]_i_3_n_1 ,\NLW_g1_reg[15]_i_3_CO_UNCONNECTED [1],\g1_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[7:6]}),
        .O({\NLW_g1_reg[15]_i_3_O_UNCONNECTED [3:2],\g1_reg[15]_i_3_n_6 ,\g1_reg[15]_i_3_n_7 }),
        .S({1'b0,1'b1,\g1[15]_i_4_n_0 ,\g1[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[1]),
        .Q(g1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[2]),
        .Q(g1[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g1_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g1_reg[2]_i_1_n_0 ,\g1_reg[2]_i_1_n_1 ,\g1_reg[2]_i_1_n_2 ,\g1_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[1:0],1'b0,1'b1}),
        .O({\g1_reg[2]_i_1_n_4 ,\g1_reg[2]_i_1_n_5 ,g10[2:1]}),
        .S({\g1[2]_i_2_n_0 ,\g1[2]_i_3_n_0 ,\g1[2]_i_4_n_0 ,s_axis_tdata[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[3]),
        .Q(g1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[4]),
        .Q(g1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[5]),
        .Q(g1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[6]),
        .Q(g1[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g1_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g1_reg[6]_i_1_n_0 ,\g1_reg[6]_i_1_n_1 ,\g1_reg[6]_i_1_n_2 ,\g1_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g1_reg[6]_i_2_n_6 ,\g1_reg[6]_i_2_n_7 ,\g1_reg[2]_i_1_n_4 ,1'b0}),
        .O(g10[6:3]),
        .S({\g1[6]_i_3_n_0 ,\g1[6]_i_4_n_0 ,\g1[6]_i_5_n_0 ,\g1_reg[2]_i_1_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g1_reg[6]_i_2 
       (.CI(\g1_reg[2]_i_1_n_0 ),
        .CO({\g1_reg[6]_i_2_n_0 ,\g1_reg[6]_i_2_n_1 ,\g1_reg[6]_i_2_n_2 ,\g1_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[5:2]),
        .O({\g1_reg[6]_i_2_n_4 ,\g1_reg[6]_i_2_n_5 ,\g1_reg[6]_i_2_n_6 ,\g1_reg[6]_i_2_n_7 }),
        .S({\g1[6]_i_6_n_0 ,\g1[6]_i_7_n_0 ,\g1[6]_i_8_n_0 ,\g1[6]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[7]),
        .Q(g1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[8]),
        .Q(g1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[9]),
        .Q(g1[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g2[10]_i_2 
       (.I0(s_axis_tdata[29]),
        .I1(\g2_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[26]),
        .O(\g2[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g2[10]_i_3 
       (.I0(s_axis_tdata[28]),
        .I1(\g2_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[25]),
        .O(\g2[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g2[10]_i_4 
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[28]),
        .I2(\g2_reg[6]_i_2_n_4 ),
        .O(\g2[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g2[10]_i_5 
       (.I0(s_axis_tdata[30]),
        .I1(\g2_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[27]),
        .I3(\g2[10]_i_2_n_0 ),
        .O(\g2[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g2[10]_i_6 
       (.I0(s_axis_tdata[29]),
        .I1(\g2_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[26]),
        .I3(\g2[10]_i_3_n_0 ),
        .O(\g2[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \g2[10]_i_7 
       (.I0(s_axis_tdata[28]),
        .I1(\g2_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[25]),
        .I3(\g2_reg[6]_i_2_n_5 ),
        .I4(s_axis_tdata[27]),
        .O(\g2[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g2[10]_i_8 
       (.I0(s_axis_tdata[27]),
        .I1(\g2_reg[6]_i_2_n_5 ),
        .I2(s_axis_tdata[24]),
        .O(\g2[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g2[14]_i_2 
       (.I0(s_axis_tdata[30]),
        .I1(\g2_reg[15]_i_3_n_1 ),
        .O(\g2[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g2[14]_i_3 
       (.I0(s_axis_tdata[29]),
        .I1(\g2_reg[15]_i_3_n_1 ),
        .O(\g2[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \g2[14]_i_4 
       (.I0(s_axis_tdata[31]),
        .I1(\g2_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[28]),
        .O(\g2[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g2[14]_i_5 
       (.I0(s_axis_tdata[30]),
        .I1(\g2_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[27]),
        .O(\g2[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g2[14]_i_6 
       (.I0(s_axis_tdata[30]),
        .I1(\g2_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[31]),
        .O(\g2[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g2[14]_i_7 
       (.I0(s_axis_tdata[29]),
        .I1(\g2_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[30]),
        .O(\g2[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \g2[14]_i_8 
       (.I0(s_axis_tdata[28]),
        .I1(s_axis_tdata[31]),
        .I2(\g2_reg[15]_i_3_n_1 ),
        .I3(s_axis_tdata[29]),
        .O(\g2[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \g2[14]_i_9 
       (.I0(\g2[14]_i_5_n_0 ),
        .I1(\g2_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[31]),
        .I3(s_axis_tdata[28]),
        .O(\g2[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \g2[15]_i_2 
       (.I0(s_axis_tdata[31]),
        .I1(\g2_reg[15]_i_3_n_1 ),
        .O(\g2[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g2[15]_i_4 
       (.I0(s_axis_tdata[31]),
        .O(\g2[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g2[15]_i_5 
       (.I0(s_axis_tdata[30]),
        .O(\g2[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g2[2]_i_2 
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[27]),
        .O(\g2[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g2[2]_i_3 
       (.I0(s_axis_tdata[24]),
        .I1(s_axis_tdata[26]),
        .O(\g2[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g2[2]_i_4 
       (.I0(s_axis_tdata[25]),
        .O(\g2[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g2[6]_i_3 
       (.I0(\g2_reg[6]_i_2_n_6 ),
        .I1(s_axis_tdata[26]),
        .O(\g2[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g2[6]_i_4 
       (.I0(\g2_reg[6]_i_2_n_7 ),
        .I1(s_axis_tdata[25]),
        .O(\g2[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g2[6]_i_5 
       (.I0(\g2_reg[2]_i_1_n_4 ),
        .I1(s_axis_tdata[24]),
        .O(\g2[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g2[6]_i_6 
       (.I0(s_axis_tdata[29]),
        .I1(s_axis_tdata[31]),
        .O(\g2[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g2[6]_i_7 
       (.I0(s_axis_tdata[28]),
        .I1(s_axis_tdata[30]),
        .O(\g2[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g2[6]_i_8 
       (.I0(s_axis_tdata[27]),
        .I1(s_axis_tdata[29]),
        .O(\g2[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g2[6]_i_9 
       (.I0(s_axis_tdata[26]),
        .I1(s_axis_tdata[28]),
        .O(\g2[6]_i_9_n_0 ));
  FDRE \g2_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[10]),
        .Q(g2[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g2_reg[10]_i_1 
       (.CI(\g2_reg[6]_i_1_n_0 ),
        .CO({\g2_reg[10]_i_1_n_0 ,\g2_reg[10]_i_1_n_1 ,\g2_reg[10]_i_1_n_2 ,\g2_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g2[10]_i_2_n_0 ,\g2[10]_i_3_n_0 ,\g2[10]_i_4_n_0 ,s_axis_tdata[24]}),
        .O(g20[10:7]),
        .S({\g2[10]_i_5_n_0 ,\g2[10]_i_6_n_0 ,\g2[10]_i_7_n_0 ,\g2[10]_i_8_n_0 }));
  FDRE \g2_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[11]),
        .Q(g2[11]),
        .R(1'b0));
  FDRE \g2_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[12]),
        .Q(g2[12]),
        .R(1'b0));
  FDRE \g2_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[13]),
        .Q(g2[13]),
        .R(1'b0));
  FDRE \g2_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[14]),
        .Q(g2[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g2_reg[14]_i_1 
       (.CI(\g2_reg[10]_i_1_n_0 ),
        .CO({\g2_reg[14]_i_1_n_0 ,\g2_reg[14]_i_1_n_1 ,\g2_reg[14]_i_1_n_2 ,\g2_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g2[14]_i_2_n_0 ,\g2[14]_i_3_n_0 ,\g2[14]_i_4_n_0 ,\g2[14]_i_5_n_0 }),
        .O(g20[14:11]),
        .S({\g2[14]_i_6_n_0 ,\g2[14]_i_7_n_0 ,\g2[14]_i_8_n_0 ,\g2[14]_i_9_n_0 }));
  FDRE \g2_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[15]),
        .Q(g2[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g2_reg[15]_i_1 
       (.CI(\g2_reg[14]_i_1_n_0 ),
        .CO(\NLW_g2_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g2_reg[15]_i_1_O_UNCONNECTED [3:1],g20[15]}),
        .S({1'b0,1'b0,1'b0,\g2[15]_i_2_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g2_reg[15]_i_3 
       (.CI(\g2_reg[6]_i_2_n_0 ),
        .CO({\NLW_g2_reg[15]_i_3_CO_UNCONNECTED [3],\g2_reg[15]_i_3_n_1 ,\NLW_g2_reg[15]_i_3_CO_UNCONNECTED [1],\g2_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[31:30]}),
        .O({\NLW_g2_reg[15]_i_3_O_UNCONNECTED [3:2],\g2_reg[15]_i_3_n_6 ,\g2_reg[15]_i_3_n_7 }),
        .S({1'b0,1'b1,\g2[15]_i_4_n_0 ,\g2[15]_i_5_n_0 }));
  FDRE \g2_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[1]),
        .Q(g2[1]),
        .R(1'b0));
  FDRE \g2_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[2]),
        .Q(g2[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g2_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g2_reg[2]_i_1_n_0 ,\g2_reg[2]_i_1_n_1 ,\g2_reg[2]_i_1_n_2 ,\g2_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[25:24],1'b0,1'b1}),
        .O({\g2_reg[2]_i_1_n_4 ,\g2_reg[2]_i_1_n_5 ,g20[2:1]}),
        .S({\g2[2]_i_2_n_0 ,\g2[2]_i_3_n_0 ,\g2[2]_i_4_n_0 ,s_axis_tdata[24]}));
  FDRE \g2_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[3]),
        .Q(g2[3]),
        .R(1'b0));
  FDRE \g2_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[4]),
        .Q(g2[4]),
        .R(1'b0));
  FDRE \g2_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[5]),
        .Q(g2[5]),
        .R(1'b0));
  FDRE \g2_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[6]),
        .Q(g2[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g2_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g2_reg[6]_i_1_n_0 ,\g2_reg[6]_i_1_n_1 ,\g2_reg[6]_i_1_n_2 ,\g2_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g2_reg[6]_i_2_n_6 ,\g2_reg[6]_i_2_n_7 ,\g2_reg[2]_i_1_n_4 ,1'b0}),
        .O(g20[6:3]),
        .S({\g2[6]_i_3_n_0 ,\g2[6]_i_4_n_0 ,\g2[6]_i_5_n_0 ,\g2_reg[2]_i_1_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g2_reg[6]_i_2 
       (.CI(\g2_reg[2]_i_1_n_0 ),
        .CO({\g2_reg[6]_i_2_n_0 ,\g2_reg[6]_i_2_n_1 ,\g2_reg[6]_i_2_n_2 ,\g2_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[29:26]),
        .O({\g2_reg[6]_i_2_n_4 ,\g2_reg[6]_i_2_n_5 ,\g2_reg[6]_i_2_n_6 ,\g2_reg[6]_i_2_n_7 }),
        .S({\g2[6]_i_6_n_0 ,\g2[6]_i_7_n_0 ,\g2[6]_i_8_n_0 ,\g2[6]_i_9_n_0 }));
  FDRE \g2_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[7]),
        .Q(g2[7]),
        .R(1'b0));
  FDRE \g2_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[8]),
        .Q(g2[8]),
        .R(1'b0));
  FDRE \g2_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[9]),
        .Q(g2[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g3[10]_i_2 
       (.I0(s_axis_tdata[53]),
        .I1(\g3_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[50]),
        .O(\g3[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g3[10]_i_3 
       (.I0(s_axis_tdata[52]),
        .I1(\g3_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[49]),
        .O(\g3[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g3[10]_i_4 
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_tdata[52]),
        .I2(\g3_reg[6]_i_2_n_4 ),
        .O(\g3[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g3[10]_i_5 
       (.I0(s_axis_tdata[54]),
        .I1(\g3_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[51]),
        .I3(\g3[10]_i_2_n_0 ),
        .O(\g3[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g3[10]_i_6 
       (.I0(s_axis_tdata[53]),
        .I1(\g3_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[50]),
        .I3(\g3[10]_i_3_n_0 ),
        .O(\g3[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \g3[10]_i_7 
       (.I0(s_axis_tdata[52]),
        .I1(\g3_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[49]),
        .I3(\g3_reg[6]_i_2_n_5 ),
        .I4(s_axis_tdata[51]),
        .O(\g3[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g3[10]_i_8 
       (.I0(s_axis_tdata[51]),
        .I1(\g3_reg[6]_i_2_n_5 ),
        .I2(s_axis_tdata[48]),
        .O(\g3[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g3[14]_i_2 
       (.I0(s_axis_tdata[54]),
        .I1(\g3_reg[15]_i_3_n_1 ),
        .O(\g3[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g3[14]_i_3 
       (.I0(s_axis_tdata[53]),
        .I1(\g3_reg[15]_i_3_n_1 ),
        .O(\g3[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \g3[14]_i_4 
       (.I0(s_axis_tdata[55]),
        .I1(\g3_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[52]),
        .O(\g3[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g3[14]_i_5 
       (.I0(s_axis_tdata[54]),
        .I1(\g3_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[51]),
        .O(\g3[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g3[14]_i_6 
       (.I0(s_axis_tdata[54]),
        .I1(\g3_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[55]),
        .O(\g3[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g3[14]_i_7 
       (.I0(s_axis_tdata[53]),
        .I1(\g3_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[54]),
        .O(\g3[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \g3[14]_i_8 
       (.I0(s_axis_tdata[52]),
        .I1(s_axis_tdata[55]),
        .I2(\g3_reg[15]_i_3_n_1 ),
        .I3(s_axis_tdata[53]),
        .O(\g3[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \g3[14]_i_9 
       (.I0(\g3[14]_i_5_n_0 ),
        .I1(\g3_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[55]),
        .I3(s_axis_tdata[52]),
        .O(\g3[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \g3[15]_i_2 
       (.I0(s_axis_tdata[55]),
        .I1(\g3_reg[15]_i_3_n_1 ),
        .O(\g3[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g3[15]_i_4 
       (.I0(s_axis_tdata[55]),
        .O(\g3[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g3[15]_i_5 
       (.I0(s_axis_tdata[54]),
        .O(\g3[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g3[2]_i_2 
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_tdata[51]),
        .O(\g3[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g3[2]_i_3 
       (.I0(s_axis_tdata[48]),
        .I1(s_axis_tdata[50]),
        .O(\g3[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g3[2]_i_4 
       (.I0(s_axis_tdata[49]),
        .O(\g3[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g3[6]_i_3 
       (.I0(\g3_reg[6]_i_2_n_6 ),
        .I1(s_axis_tdata[50]),
        .O(\g3[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g3[6]_i_4 
       (.I0(\g3_reg[6]_i_2_n_7 ),
        .I1(s_axis_tdata[49]),
        .O(\g3[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g3[6]_i_5 
       (.I0(\g3_reg[2]_i_1_n_4 ),
        .I1(s_axis_tdata[48]),
        .O(\g3[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g3[6]_i_6 
       (.I0(s_axis_tdata[53]),
        .I1(s_axis_tdata[55]),
        .O(\g3[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g3[6]_i_7 
       (.I0(s_axis_tdata[52]),
        .I1(s_axis_tdata[54]),
        .O(\g3[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g3[6]_i_8 
       (.I0(s_axis_tdata[51]),
        .I1(s_axis_tdata[53]),
        .O(\g3[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g3[6]_i_9 
       (.I0(s_axis_tdata[50]),
        .I1(s_axis_tdata[52]),
        .O(\g3[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[10]),
        .Q(g3[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g3_reg[10]_i_1 
       (.CI(\g3_reg[6]_i_1_n_0 ),
        .CO({\g3_reg[10]_i_1_n_0 ,\g3_reg[10]_i_1_n_1 ,\g3_reg[10]_i_1_n_2 ,\g3_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g3[10]_i_2_n_0 ,\g3[10]_i_3_n_0 ,\g3[10]_i_4_n_0 ,s_axis_tdata[48]}),
        .O(g30[10:7]),
        .S({\g3[10]_i_5_n_0 ,\g3[10]_i_6_n_0 ,\g3[10]_i_7_n_0 ,\g3[10]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[11]),
        .Q(g3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[12]),
        .Q(g3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[13]),
        .Q(g3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[14]),
        .Q(g3[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g3_reg[14]_i_1 
       (.CI(\g3_reg[10]_i_1_n_0 ),
        .CO({\g3_reg[14]_i_1_n_0 ,\g3_reg[14]_i_1_n_1 ,\g3_reg[14]_i_1_n_2 ,\g3_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g3[14]_i_2_n_0 ,\g3[14]_i_3_n_0 ,\g3[14]_i_4_n_0 ,\g3[14]_i_5_n_0 }),
        .O(g30[14:11]),
        .S({\g3[14]_i_6_n_0 ,\g3[14]_i_7_n_0 ,\g3[14]_i_8_n_0 ,\g3[14]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[15]),
        .Q(g3[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g3_reg[15]_i_1 
       (.CI(\g3_reg[14]_i_1_n_0 ),
        .CO(\NLW_g3_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g3_reg[15]_i_1_O_UNCONNECTED [3:1],g30[15]}),
        .S({1'b0,1'b0,1'b0,\g3[15]_i_2_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g3_reg[15]_i_3 
       (.CI(\g3_reg[6]_i_2_n_0 ),
        .CO({\NLW_g3_reg[15]_i_3_CO_UNCONNECTED [3],\g3_reg[15]_i_3_n_1 ,\NLW_g3_reg[15]_i_3_CO_UNCONNECTED [1],\g3_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[55:54]}),
        .O({\NLW_g3_reg[15]_i_3_O_UNCONNECTED [3:2],\g3_reg[15]_i_3_n_6 ,\g3_reg[15]_i_3_n_7 }),
        .S({1'b0,1'b1,\g3[15]_i_4_n_0 ,\g3[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[1]),
        .Q(g3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[2]),
        .Q(g3[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g3_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g3_reg[2]_i_1_n_0 ,\g3_reg[2]_i_1_n_1 ,\g3_reg[2]_i_1_n_2 ,\g3_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[49:48],1'b0,1'b1}),
        .O({\g3_reg[2]_i_1_n_4 ,\g3_reg[2]_i_1_n_5 ,g30[2:1]}),
        .S({\g3[2]_i_2_n_0 ,\g3[2]_i_3_n_0 ,\g3[2]_i_4_n_0 ,s_axis_tdata[48]}));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[3]),
        .Q(g3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[4]),
        .Q(g3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[5]),
        .Q(g3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[6]),
        .Q(g3[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g3_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g3_reg[6]_i_1_n_0 ,\g3_reg[6]_i_1_n_1 ,\g3_reg[6]_i_1_n_2 ,\g3_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g3_reg[6]_i_2_n_6 ,\g3_reg[6]_i_2_n_7 ,\g3_reg[2]_i_1_n_4 ,1'b0}),
        .O(g30[6:3]),
        .S({\g3[6]_i_3_n_0 ,\g3[6]_i_4_n_0 ,\g3[6]_i_5_n_0 ,\g3_reg[2]_i_1_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g3_reg[6]_i_2 
       (.CI(\g3_reg[2]_i_1_n_0 ),
        .CO({\g3_reg[6]_i_2_n_0 ,\g3_reg[6]_i_2_n_1 ,\g3_reg[6]_i_2_n_2 ,\g3_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[53:50]),
        .O({\g3_reg[6]_i_2_n_4 ,\g3_reg[6]_i_2_n_5 ,\g3_reg[6]_i_2_n_6 ,\g3_reg[6]_i_2_n_7 }),
        .S({\g3[6]_i_6_n_0 ,\g3[6]_i_7_n_0 ,\g3[6]_i_8_n_0 ,\g3[6]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[7]),
        .Q(g3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[8]),
        .Q(g3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[9]),
        .Q(g3[9]),
        .R(1'b0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g4[10]_i_2 
       (.I0(s_axis_tdata[77]),
        .I1(\g4_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[74]),
        .O(\g4[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g4[10]_i_3 
       (.I0(s_axis_tdata[76]),
        .I1(\g4_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[73]),
        .O(\g4[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g4[10]_i_4 
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[76]),
        .I2(\g4_reg[6]_i_2_n_4 ),
        .O(\g4[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g4[10]_i_5 
       (.I0(s_axis_tdata[78]),
        .I1(\g4_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[75]),
        .I3(\g4[10]_i_2_n_0 ),
        .O(\g4[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g4[10]_i_6 
       (.I0(s_axis_tdata[77]),
        .I1(\g4_reg[15]_i_3_n_7 ),
        .I2(s_axis_tdata[74]),
        .I3(\g4[10]_i_3_n_0 ),
        .O(\g4[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \g4[10]_i_7 
       (.I0(s_axis_tdata[76]),
        .I1(\g4_reg[6]_i_2_n_4 ),
        .I2(s_axis_tdata[73]),
        .I3(\g4_reg[6]_i_2_n_5 ),
        .I4(s_axis_tdata[75]),
        .O(\g4[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \g4[10]_i_8 
       (.I0(s_axis_tdata[75]),
        .I1(\g4_reg[6]_i_2_n_5 ),
        .I2(s_axis_tdata[72]),
        .O(\g4[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g4[14]_i_2 
       (.I0(s_axis_tdata[78]),
        .I1(\g4_reg[15]_i_3_n_1 ),
        .O(\g4[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g4[14]_i_3 
       (.I0(s_axis_tdata[77]),
        .I1(\g4_reg[15]_i_3_n_1 ),
        .O(\g4[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \g4[14]_i_4 
       (.I0(s_axis_tdata[79]),
        .I1(\g4_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[76]),
        .O(\g4[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g4[14]_i_5 
       (.I0(s_axis_tdata[78]),
        .I1(\g4_reg[15]_i_3_n_6 ),
        .I2(s_axis_tdata[75]),
        .O(\g4[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g4[14]_i_6 
       (.I0(s_axis_tdata[78]),
        .I1(\g4_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[79]),
        .O(\g4[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \g4[14]_i_7 
       (.I0(s_axis_tdata[77]),
        .I1(\g4_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[78]),
        .O(\g4[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7E81)) 
    \g4[14]_i_8 
       (.I0(s_axis_tdata[76]),
        .I1(s_axis_tdata[79]),
        .I2(\g4_reg[15]_i_3_n_1 ),
        .I3(s_axis_tdata[77]),
        .O(\g4[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \g4[14]_i_9 
       (.I0(\g4[14]_i_5_n_0 ),
        .I1(\g4_reg[15]_i_3_n_1 ),
        .I2(s_axis_tdata[79]),
        .I3(s_axis_tdata[76]),
        .O(\g4[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \g4[15]_i_2 
       (.I0(s_axis_tdata[79]),
        .I1(\g4_reg[15]_i_3_n_1 ),
        .O(\g4[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g4[15]_i_4 
       (.I0(s_axis_tdata[79]),
        .O(\g4[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g4[15]_i_5 
       (.I0(s_axis_tdata[78]),
        .O(\g4[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g4[2]_i_2 
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[75]),
        .O(\g4[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g4[2]_i_3 
       (.I0(s_axis_tdata[72]),
        .I1(s_axis_tdata[74]),
        .O(\g4[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g4[2]_i_4 
       (.I0(s_axis_tdata[73]),
        .O(\g4[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g4[6]_i_3 
       (.I0(\g4_reg[6]_i_2_n_6 ),
        .I1(s_axis_tdata[74]),
        .O(\g4[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g4[6]_i_4 
       (.I0(\g4_reg[6]_i_2_n_7 ),
        .I1(s_axis_tdata[73]),
        .O(\g4[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g4[6]_i_5 
       (.I0(\g4_reg[2]_i_1_n_4 ),
        .I1(s_axis_tdata[72]),
        .O(\g4[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g4[6]_i_6 
       (.I0(s_axis_tdata[77]),
        .I1(s_axis_tdata[79]),
        .O(\g4[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g4[6]_i_7 
       (.I0(s_axis_tdata[76]),
        .I1(s_axis_tdata[78]),
        .O(\g4[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g4[6]_i_8 
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_tdata[77]),
        .O(\g4[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g4[6]_i_9 
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[76]),
        .O(\g4[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[10]),
        .Q(g4[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g4_reg[10]_i_1 
       (.CI(\g4_reg[6]_i_1_n_0 ),
        .CO({\g4_reg[10]_i_1_n_0 ,\g4_reg[10]_i_1_n_1 ,\g4_reg[10]_i_1_n_2 ,\g4_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g4[10]_i_2_n_0 ,\g4[10]_i_3_n_0 ,\g4[10]_i_4_n_0 ,s_axis_tdata[72]}),
        .O(g40[10:7]),
        .S({\g4[10]_i_5_n_0 ,\g4[10]_i_6_n_0 ,\g4[10]_i_7_n_0 ,\g4[10]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[11]),
        .Q(g4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[12]),
        .Q(g4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[13]),
        .Q(g4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[14]),
        .Q(g4[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g4_reg[14]_i_1 
       (.CI(\g4_reg[10]_i_1_n_0 ),
        .CO({\g4_reg[14]_i_1_n_0 ,\g4_reg[14]_i_1_n_1 ,\g4_reg[14]_i_1_n_2 ,\g4_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g4[14]_i_2_n_0 ,\g4[14]_i_3_n_0 ,\g4[14]_i_4_n_0 ,\g4[14]_i_5_n_0 }),
        .O(g40[14:11]),
        .S({\g4[14]_i_6_n_0 ,\g4[14]_i_7_n_0 ,\g4[14]_i_8_n_0 ,\g4[14]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[15]),
        .Q(g4[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g4_reg[15]_i_1 
       (.CI(\g4_reg[14]_i_1_n_0 ),
        .CO(\NLW_g4_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g4_reg[15]_i_1_O_UNCONNECTED [3:1],g40[15]}),
        .S({1'b0,1'b0,1'b0,\g4[15]_i_2_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g4_reg[15]_i_3 
       (.CI(\g4_reg[6]_i_2_n_0 ),
        .CO({\NLW_g4_reg[15]_i_3_CO_UNCONNECTED [3],\g4_reg[15]_i_3_n_1 ,\NLW_g4_reg[15]_i_3_CO_UNCONNECTED [1],\g4_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[79:78]}),
        .O({\NLW_g4_reg[15]_i_3_O_UNCONNECTED [3:2],\g4_reg[15]_i_3_n_6 ,\g4_reg[15]_i_3_n_7 }),
        .S({1'b0,1'b1,\g4[15]_i_4_n_0 ,\g4[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[1]),
        .Q(g4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[2]),
        .Q(g4[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g4_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g4_reg[2]_i_1_n_0 ,\g4_reg[2]_i_1_n_1 ,\g4_reg[2]_i_1_n_2 ,\g4_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[73:72],1'b0,1'b1}),
        .O({\g4_reg[2]_i_1_n_4 ,\g4_reg[2]_i_1_n_5 ,g40[2:1]}),
        .S({\g4[2]_i_2_n_0 ,\g4[2]_i_3_n_0 ,\g4[2]_i_4_n_0 ,s_axis_tdata[72]}));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[3]),
        .Q(g4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[4]),
        .Q(g4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[5]),
        .Q(g4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[6]),
        .Q(g4[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g4_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g4_reg[6]_i_1_n_0 ,\g4_reg[6]_i_1_n_1 ,\g4_reg[6]_i_1_n_2 ,\g4_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\g4_reg[6]_i_2_n_6 ,\g4_reg[6]_i_2_n_7 ,\g4_reg[2]_i_1_n_4 ,1'b0}),
        .O(g40[6:3]),
        .S({\g4[6]_i_3_n_0 ,\g4[6]_i_4_n_0 ,\g4[6]_i_5_n_0 ,\g4_reg[2]_i_1_n_5 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g4_reg[6]_i_2 
       (.CI(\g4_reg[2]_i_1_n_0 ),
        .CO({\g4_reg[6]_i_2_n_0 ,\g4_reg[6]_i_2_n_1 ,\g4_reg[6]_i_2_n_2 ,\g4_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[77:74]),
        .O({\g4_reg[6]_i_2_n_4 ,\g4_reg[6]_i_2_n_5 ,\g4_reg[6]_i_2_n_6 ,\g4_reg[6]_i_2_n_7 }),
        .S({\g4[6]_i_6_n_0 ,\g4[6]_i_7_n_0 ,\g4[6]_i_8_n_0 ,\g4[6]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[7]),
        .Q(g4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[8]),
        .Q(g4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[9]),
        .Q(g4[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(sum1[8]),
        .I1(sum1[16]),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(sum1[9]),
        .I1(sum1[16]),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(sum2[8]),
        .I1(sum2[16]),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(sum2[9]),
        .I1(sum2[16]),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(sum2[10]),
        .I1(sum2[16]),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(sum2[11]),
        .I1(sum2[16]),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(sum2[12]),
        .I1(sum2[16]),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(sum2[13]),
        .I1(sum2[16]),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(sum1[10]),
        .I1(sum1[16]),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(sum2[14]),
        .I1(sum2[16]),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(sum2[15]),
        .I1(sum2[16]),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(sum1[11]),
        .I1(sum1[16]),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(sum3[8]),
        .I1(sum3[16]),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(sum3[9]),
        .I1(sum3[16]),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(sum1[12]),
        .I1(sum1[16]),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(sum3[10]),
        .I1(sum3[16]),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(sum3[11]),
        .I1(sum3[16]),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(sum3[12]),
        .I1(sum3[16]),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(sum3[13]),
        .I1(sum3[16]),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(sum3[14]),
        .I1(sum3[16]),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(sum3[15]),
        .I1(sum3[16]),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(sum1[13]),
        .I1(sum1[16]),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(sum1[14]),
        .I1(sum1[16]),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(sum4[8]),
        .I1(sum4[16]),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(sum4[9]),
        .I1(sum4[16]),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(sum4[10]),
        .I1(sum4[16]),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(sum4[11]),
        .I1(sum4[16]),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(sum4[12]),
        .I1(sum4[16]),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(sum4[13]),
        .I1(sum4[16]),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(sum4[14]),
        .I1(sum4[16]),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(sum4[15]),
        .I1(sum4[16]),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(sum1[15]),
        .I1(sum1[16]),
        .O(m_axis_tdata[7]));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r1[13]_i_2 
       (.I0(s_axis_tdata[22]),
        .I1(\r1_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[19]),
        .O(\r1[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \r1[13]_i_3 
       (.I0(s_axis_tdata[20]),
        .I1(\r1_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[21]),
        .O(\r1[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \r1[13]_i_4 
       (.I0(\r1[13]_i_2_n_0 ),
        .I1(\r1_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[20]),
        .O(\r1[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[1]_i_2 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[18]),
        .O(\r1[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[1]_i_3 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[17]),
        .O(\r1[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[1]_i_4 
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[16]),
        .O(\r1[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[5]_i_3 
       (.I0(\r1_reg[5]_i_2_n_7 ),
        .I1(s_axis_tdata[18]),
        .O(\r1[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[5]_i_4 
       (.I0(\r1_reg[1]_i_1_n_4 ),
        .I1(s_axis_tdata[17]),
        .O(\r1[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[5]_i_5 
       (.I0(\r1_reg[1]_i_1_n_5 ),
        .I1(s_axis_tdata[16]),
        .O(\r1[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[5]_i_6 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[21]),
        .O(\r1[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[5]_i_7 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[20]),
        .O(\r1[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r1[5]_i_8 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[19]),
        .O(\r1[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r1[9]_i_2 
       (.I0(s_axis_tdata[21]),
        .I1(\r1_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[18]),
        .O(\r1[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r1[9]_i_3 
       (.I0(s_axis_tdata[20]),
        .I1(\r1_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[17]),
        .O(\r1[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r1[9]_i_4 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[20]),
        .I2(\r1_reg[5]_i_2_n_5 ),
        .O(\r1[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r1[9]_i_5 
       (.I0(s_axis_tdata[22]),
        .I1(\r1_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[19]),
        .I3(\r1[9]_i_2_n_0 ),
        .O(\r1[9]_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r1[9]_i_6 
       (.I0(s_axis_tdata[21]),
        .I1(\r1_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[18]),
        .I3(\r1[9]_i_3_n_0 ),
        .O(\r1[9]_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \r1[9]_i_7 
       (.I0(s_axis_tdata[20]),
        .I1(\r1_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[17]),
        .I3(\r1_reg[5]_i_2_n_6 ),
        .I4(s_axis_tdata[19]),
        .O(\r1[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r1[9]_i_8 
       (.I0(s_axis_tdata[19]),
        .I1(\r1_reg[5]_i_2_n_6 ),
        .I2(s_axis_tdata[16]),
        .O(\r1[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[16]),
        .Q(r1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[10]),
        .Q(r1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[11]),
        .Q(r1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[12]),
        .Q(r1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[13]),
        .Q(r1[13]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r1_reg[13]_i_1 
       (.CI(\r1_reg[9]_i_1_n_0 ),
        .CO({\r1_reg[13]_i_1_n_0 ,\r1_reg[13]_i_1_n_1 ,\r1_reg[13]_i_1_n_2 ,\r1_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[21],\r1[13]_i_2_n_0 }),
        .O(r10[13:10]),
        .S({s_axis_tdata[23:22],\r1[13]_i_3_n_0 ,\r1[13]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r1_reg[13]_i_5 
       (.CI(\r1_reg[5]_i_2_n_0 ),
        .CO({\NLW_r1_reg[13]_i_5_CO_UNCONNECTED [3:2],\r1_reg[13]_i_5_n_2 ,\NLW_r1_reg[13]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r1_reg[13]_i_5_O_UNCONNECTED [3:1],\r1_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[23]}));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[14]),
        .Q(r1[14]),
        .R(1'b0));
  CARRY4 \r1_reg[14]_i_1 
       (.CI(\r1_reg[13]_i_1_n_0 ),
        .CO({\NLW_r1_reg[14]_i_1_CO_UNCONNECTED [3:1],r10[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r1_reg[14]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[1]),
        .Q(r1[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r1_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\r1_reg[1]_i_1_n_0 ,\r1_reg[1]_i_1_n_1 ,\r1_reg[1]_i_1_n_2 ,\r1_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[20:18],1'b0}),
        .O({\r1_reg[1]_i_1_n_4 ,\r1_reg[1]_i_1_n_5 ,\r1_reg[1]_i_1_n_6 ,r10[1]}),
        .S({\r1[1]_i_2_n_0 ,\r1[1]_i_3_n_0 ,\r1[1]_i_4_n_0 ,s_axis_tdata[17]}));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[2]),
        .Q(r1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[3]),
        .Q(r1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[4]),
        .Q(r1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[5]),
        .Q(r1[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r1_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\r1_reg[5]_i_1_n_0 ,\r1_reg[5]_i_1_n_1 ,\r1_reg[5]_i_1_n_2 ,\r1_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r1_reg[5]_i_2_n_7 ,\r1_reg[1]_i_1_n_4 ,\r1_reg[1]_i_1_n_5 ,1'b0}),
        .O(r10[5:2]),
        .S({\r1[5]_i_3_n_0 ,\r1[5]_i_4_n_0 ,\r1[5]_i_5_n_0 ,\r1_reg[1]_i_1_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r1_reg[5]_i_2 
       (.CI(\r1_reg[1]_i_1_n_0 ),
        .CO({\r1_reg[5]_i_2_n_0 ,\r1_reg[5]_i_2_n_1 ,\r1_reg[5]_i_2_n_2 ,\r1_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[23:21]}),
        .O({\r1_reg[5]_i_2_n_4 ,\r1_reg[5]_i_2_n_5 ,\r1_reg[5]_i_2_n_6 ,\r1_reg[5]_i_2_n_7 }),
        .S({s_axis_tdata[22],\r1[5]_i_6_n_0 ,\r1[5]_i_7_n_0 ,\r1[5]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[6]),
        .Q(r1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[7]),
        .Q(r1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[8]),
        .Q(r1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[9]),
        .Q(r1[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r1_reg[9]_i_1 
       (.CI(\r1_reg[5]_i_1_n_0 ),
        .CO({\r1_reg[9]_i_1_n_0 ,\r1_reg[9]_i_1_n_1 ,\r1_reg[9]_i_1_n_2 ,\r1_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r1[9]_i_2_n_0 ,\r1[9]_i_3_n_0 ,\r1[9]_i_4_n_0 ,s_axis_tdata[16]}),
        .O(r10[9:6]),
        .S({\r1[9]_i_5_n_0 ,\r1[9]_i_6_n_0 ,\r1[9]_i_7_n_0 ,\r1[9]_i_8_n_0 }));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[13]_i_2 
       (.I0(s_axis_tdata[46]),
        .I1(\r2_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[43]),
        .O(\r2[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \r2[13]_i_3 
       (.I0(s_axis_tdata[44]),
        .I1(\r2_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[47]),
        .I3(s_axis_tdata[45]),
        .O(\r2[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[13]_i_4 
       (.I0(\r2[13]_i_2_n_0 ),
        .I1(\r2_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[47]),
        .I3(s_axis_tdata[44]),
        .O(\r2[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[1]_i_2 
       (.I0(s_axis_tdata[44]),
        .I1(s_axis_tdata[42]),
        .O(\r2[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[1]_i_3 
       (.I0(s_axis_tdata[43]),
        .I1(s_axis_tdata[41]),
        .O(\r2[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[1]_i_4 
       (.I0(s_axis_tdata[42]),
        .I1(s_axis_tdata[40]),
        .O(\r2[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[5]_i_3 
       (.I0(\r2_reg[5]_i_2_n_7 ),
        .I1(s_axis_tdata[42]),
        .O(\r2[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[5]_i_4 
       (.I0(\r2_reg[1]_i_1_n_4 ),
        .I1(s_axis_tdata[41]),
        .O(\r2[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[5]_i_5 
       (.I0(\r2_reg[1]_i_1_n_5 ),
        .I1(s_axis_tdata[40]),
        .O(\r2[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[5]_i_6 
       (.I0(s_axis_tdata[47]),
        .I1(s_axis_tdata[45]),
        .O(\r2[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[5]_i_7 
       (.I0(s_axis_tdata[46]),
        .I1(s_axis_tdata[44]),
        .O(\r2[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r2[5]_i_8 
       (.I0(s_axis_tdata[45]),
        .I1(s_axis_tdata[43]),
        .O(\r2[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[9]_i_2 
       (.I0(s_axis_tdata[45]),
        .I1(\r2_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[42]),
        .O(\r2[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r2[9]_i_3 
       (.I0(s_axis_tdata[44]),
        .I1(\r2_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[41]),
        .O(\r2[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r2[9]_i_4 
       (.I0(s_axis_tdata[41]),
        .I1(s_axis_tdata[44]),
        .I2(\r2_reg[5]_i_2_n_5 ),
        .O(\r2[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[9]_i_5 
       (.I0(s_axis_tdata[46]),
        .I1(\r2_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[43]),
        .I3(\r2[9]_i_2_n_0 ),
        .O(\r2[9]_i_5_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r2[9]_i_6 
       (.I0(s_axis_tdata[45]),
        .I1(\r2_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[42]),
        .I3(\r2[9]_i_3_n_0 ),
        .O(\r2[9]_i_6_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \r2[9]_i_7 
       (.I0(s_axis_tdata[44]),
        .I1(\r2_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[41]),
        .I3(\r2_reg[5]_i_2_n_6 ),
        .I4(s_axis_tdata[43]),
        .O(\r2[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r2[9]_i_8 
       (.I0(s_axis_tdata[43]),
        .I1(\r2_reg[5]_i_2_n_6 ),
        .I2(s_axis_tdata[40]),
        .O(\r2[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[40]),
        .Q(r2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[10]),
        .Q(r2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[11]),
        .Q(r2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[12]),
        .Q(r2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[13]),
        .Q(r2[13]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r2_reg[13]_i_1 
       (.CI(\r2_reg[9]_i_1_n_0 ),
        .CO({\r2_reg[13]_i_1_n_0 ,\r2_reg[13]_i_1_n_1 ,\r2_reg[13]_i_1_n_2 ,\r2_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[45],\r2[13]_i_2_n_0 }),
        .O(r20[13:10]),
        .S({s_axis_tdata[47:46],\r2[13]_i_3_n_0 ,\r2[13]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r2_reg[13]_i_5 
       (.CI(\r2_reg[5]_i_2_n_0 ),
        .CO({\NLW_r2_reg[13]_i_5_CO_UNCONNECTED [3:2],\r2_reg[13]_i_5_n_2 ,\NLW_r2_reg[13]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r2_reg[13]_i_5_O_UNCONNECTED [3:1],\r2_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[47]}));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[14]),
        .Q(r2[14]),
        .R(1'b0));
  CARRY4 \r2_reg[14]_i_1 
       (.CI(\r2_reg[13]_i_1_n_0 ),
        .CO({\NLW_r2_reg[14]_i_1_CO_UNCONNECTED [3:1],r20[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r2_reg[14]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[1]),
        .Q(r2[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r2_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\r2_reg[1]_i_1_n_0 ,\r2_reg[1]_i_1_n_1 ,\r2_reg[1]_i_1_n_2 ,\r2_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[44:42],1'b0}),
        .O({\r2_reg[1]_i_1_n_4 ,\r2_reg[1]_i_1_n_5 ,\r2_reg[1]_i_1_n_6 ,r20[1]}),
        .S({\r2[1]_i_2_n_0 ,\r2[1]_i_3_n_0 ,\r2[1]_i_4_n_0 ,s_axis_tdata[41]}));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[2]),
        .Q(r2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[3]),
        .Q(r2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[4]),
        .Q(r2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[5]),
        .Q(r2[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r2_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\r2_reg[5]_i_1_n_0 ,\r2_reg[5]_i_1_n_1 ,\r2_reg[5]_i_1_n_2 ,\r2_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r2_reg[5]_i_2_n_7 ,\r2_reg[1]_i_1_n_4 ,\r2_reg[1]_i_1_n_5 ,1'b0}),
        .O(r20[5:2]),
        .S({\r2[5]_i_3_n_0 ,\r2[5]_i_4_n_0 ,\r2[5]_i_5_n_0 ,\r2_reg[1]_i_1_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r2_reg[5]_i_2 
       (.CI(\r2_reg[1]_i_1_n_0 ),
        .CO({\r2_reg[5]_i_2_n_0 ,\r2_reg[5]_i_2_n_1 ,\r2_reg[5]_i_2_n_2 ,\r2_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[47:45]}),
        .O({\r2_reg[5]_i_2_n_4 ,\r2_reg[5]_i_2_n_5 ,\r2_reg[5]_i_2_n_6 ,\r2_reg[5]_i_2_n_7 }),
        .S({s_axis_tdata[46],\r2[5]_i_6_n_0 ,\r2[5]_i_7_n_0 ,\r2[5]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[6]),
        .Q(r2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[7]),
        .Q(r2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[8]),
        .Q(r2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[9]),
        .Q(r2[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r2_reg[9]_i_1 
       (.CI(\r2_reg[5]_i_1_n_0 ),
        .CO({\r2_reg[9]_i_1_n_0 ,\r2_reg[9]_i_1_n_1 ,\r2_reg[9]_i_1_n_2 ,\r2_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r2[9]_i_2_n_0 ,\r2[9]_i_3_n_0 ,\r2[9]_i_4_n_0 ,s_axis_tdata[40]}),
        .O(r20[9:6]),
        .S({\r2[9]_i_5_n_0 ,\r2[9]_i_6_n_0 ,\r2[9]_i_7_n_0 ,\r2[9]_i_8_n_0 }));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r3[13]_i_2 
       (.I0(s_axis_tdata[70]),
        .I1(\r3_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[67]),
        .O(\r3[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \r3[13]_i_3 
       (.I0(s_axis_tdata[68]),
        .I1(\r3_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[71]),
        .I3(s_axis_tdata[69]),
        .O(\r3[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \r3[13]_i_4 
       (.I0(\r3[13]_i_2_n_0 ),
        .I1(\r3_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[71]),
        .I3(s_axis_tdata[68]),
        .O(\r3[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[1]_i_2 
       (.I0(s_axis_tdata[68]),
        .I1(s_axis_tdata[66]),
        .O(\r3[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[1]_i_3 
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_tdata[65]),
        .O(\r3[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[1]_i_4 
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_tdata[64]),
        .O(\r3[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[5]_i_3 
       (.I0(\r3_reg[5]_i_2_n_7 ),
        .I1(s_axis_tdata[66]),
        .O(\r3[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[5]_i_4 
       (.I0(\r3_reg[1]_i_1_n_4 ),
        .I1(s_axis_tdata[65]),
        .O(\r3[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[5]_i_5 
       (.I0(\r3_reg[1]_i_1_n_5 ),
        .I1(s_axis_tdata[64]),
        .O(\r3[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[5]_i_6 
       (.I0(s_axis_tdata[71]),
        .I1(s_axis_tdata[69]),
        .O(\r3[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[5]_i_7 
       (.I0(s_axis_tdata[70]),
        .I1(s_axis_tdata[68]),
        .O(\r3[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r3[5]_i_8 
       (.I0(s_axis_tdata[69]),
        .I1(s_axis_tdata[67]),
        .O(\r3[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r3[9]_i_2 
       (.I0(s_axis_tdata[69]),
        .I1(\r3_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[66]),
        .O(\r3[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r3[9]_i_3 
       (.I0(s_axis_tdata[68]),
        .I1(\r3_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[65]),
        .O(\r3[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r3[9]_i_4 
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[68]),
        .I2(\r3_reg[5]_i_2_n_5 ),
        .O(\r3[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r3[9]_i_5 
       (.I0(s_axis_tdata[70]),
        .I1(\r3_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[67]),
        .I3(\r3[9]_i_2_n_0 ),
        .O(\r3[9]_i_5_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r3[9]_i_6 
       (.I0(s_axis_tdata[69]),
        .I1(\r3_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[66]),
        .I3(\r3[9]_i_3_n_0 ),
        .O(\r3[9]_i_6_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \r3[9]_i_7 
       (.I0(s_axis_tdata[68]),
        .I1(\r3_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[65]),
        .I3(\r3_reg[5]_i_2_n_6 ),
        .I4(s_axis_tdata[67]),
        .O(\r3[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r3[9]_i_8 
       (.I0(s_axis_tdata[67]),
        .I1(\r3_reg[5]_i_2_n_6 ),
        .I2(s_axis_tdata[64]),
        .O(\r3[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[64]),
        .Q(r3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[10]),
        .Q(r3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[11]),
        .Q(r3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[12]),
        .Q(r3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[13]),
        .Q(r3[13]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r3_reg[13]_i_1 
       (.CI(\r3_reg[9]_i_1_n_0 ),
        .CO({\r3_reg[13]_i_1_n_0 ,\r3_reg[13]_i_1_n_1 ,\r3_reg[13]_i_1_n_2 ,\r3_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[69],\r3[13]_i_2_n_0 }),
        .O(r30[13:10]),
        .S({s_axis_tdata[71:70],\r3[13]_i_3_n_0 ,\r3[13]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r3_reg[13]_i_5 
       (.CI(\r3_reg[5]_i_2_n_0 ),
        .CO({\NLW_r3_reg[13]_i_5_CO_UNCONNECTED [3:2],\r3_reg[13]_i_5_n_2 ,\NLW_r3_reg[13]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r3_reg[13]_i_5_O_UNCONNECTED [3:1],\r3_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[71]}));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[14]),
        .Q(r3[14]),
        .R(1'b0));
  CARRY4 \r3_reg[14]_i_1 
       (.CI(\r3_reg[13]_i_1_n_0 ),
        .CO({\NLW_r3_reg[14]_i_1_CO_UNCONNECTED [3:1],r30[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r3_reg[14]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[1]),
        .Q(r3[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r3_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\r3_reg[1]_i_1_n_0 ,\r3_reg[1]_i_1_n_1 ,\r3_reg[1]_i_1_n_2 ,\r3_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[68:66],1'b0}),
        .O({\r3_reg[1]_i_1_n_4 ,\r3_reg[1]_i_1_n_5 ,\r3_reg[1]_i_1_n_6 ,r30[1]}),
        .S({\r3[1]_i_2_n_0 ,\r3[1]_i_3_n_0 ,\r3[1]_i_4_n_0 ,s_axis_tdata[65]}));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[2]),
        .Q(r3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[3]),
        .Q(r3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[4]),
        .Q(r3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[5]),
        .Q(r3[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r3_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\r3_reg[5]_i_1_n_0 ,\r3_reg[5]_i_1_n_1 ,\r3_reg[5]_i_1_n_2 ,\r3_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r3_reg[5]_i_2_n_7 ,\r3_reg[1]_i_1_n_4 ,\r3_reg[1]_i_1_n_5 ,1'b0}),
        .O(r30[5:2]),
        .S({\r3[5]_i_3_n_0 ,\r3[5]_i_4_n_0 ,\r3[5]_i_5_n_0 ,\r3_reg[1]_i_1_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r3_reg[5]_i_2 
       (.CI(\r3_reg[1]_i_1_n_0 ),
        .CO({\r3_reg[5]_i_2_n_0 ,\r3_reg[5]_i_2_n_1 ,\r3_reg[5]_i_2_n_2 ,\r3_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[71:69]}),
        .O({\r3_reg[5]_i_2_n_4 ,\r3_reg[5]_i_2_n_5 ,\r3_reg[5]_i_2_n_6 ,\r3_reg[5]_i_2_n_7 }),
        .S({s_axis_tdata[70],\r3[5]_i_6_n_0 ,\r3[5]_i_7_n_0 ,\r3[5]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[6]),
        .Q(r3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[7]),
        .Q(r3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[8]),
        .Q(r3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[9]),
        .Q(r3[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r3_reg[9]_i_1 
       (.CI(\r3_reg[5]_i_1_n_0 ),
        .CO({\r3_reg[9]_i_1_n_0 ,\r3_reg[9]_i_1_n_1 ,\r3_reg[9]_i_1_n_2 ,\r3_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r3[9]_i_2_n_0 ,\r3[9]_i_3_n_0 ,\r3[9]_i_4_n_0 ,s_axis_tdata[64]}),
        .O(r30[9:6]),
        .S({\r3[9]_i_5_n_0 ,\r3[9]_i_6_n_0 ,\r3[9]_i_7_n_0 ,\r3[9]_i_8_n_0 }));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r4[13]_i_2 
       (.I0(s_axis_tdata[94]),
        .I1(\r4_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[91]),
        .O(\r4[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h17E8)) 
    \r4[13]_i_3 
       (.I0(s_axis_tdata[92]),
        .I1(\r4_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[95]),
        .I3(s_axis_tdata[93]),
        .O(\r4[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \r4[13]_i_4 
       (.I0(\r4[13]_i_2_n_0 ),
        .I1(\r4_reg[13]_i_5_n_2 ),
        .I2(s_axis_tdata[95]),
        .I3(s_axis_tdata[92]),
        .O(\r4[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[1]_i_2 
       (.I0(s_axis_tdata[92]),
        .I1(s_axis_tdata[90]),
        .O(\r4[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[1]_i_3 
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[89]),
        .O(\r4[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[1]_i_4 
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_tdata[88]),
        .O(\r4[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[5]_i_3 
       (.I0(\r4_reg[5]_i_2_n_7 ),
        .I1(s_axis_tdata[90]),
        .O(\r4[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[5]_i_4 
       (.I0(\r4_reg[1]_i_1_n_4 ),
        .I1(s_axis_tdata[89]),
        .O(\r4[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[5]_i_5 
       (.I0(\r4_reg[1]_i_1_n_5 ),
        .I1(s_axis_tdata[88]),
        .O(\r4[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[5]_i_6 
       (.I0(s_axis_tdata[95]),
        .I1(s_axis_tdata[93]),
        .O(\r4[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[5]_i_7 
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_tdata[92]),
        .O(\r4[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r4[5]_i_8 
       (.I0(s_axis_tdata[93]),
        .I1(s_axis_tdata[91]),
        .O(\r4[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r4[9]_i_2 
       (.I0(s_axis_tdata[93]),
        .I1(\r4_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[90]),
        .O(\r4[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \r4[9]_i_3 
       (.I0(s_axis_tdata[92]),
        .I1(\r4_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[89]),
        .O(\r4[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r4[9]_i_4 
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[92]),
        .I2(\r4_reg[5]_i_2_n_5 ),
        .O(\r4[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r4[9]_i_5 
       (.I0(s_axis_tdata[94]),
        .I1(\r4_reg[13]_i_5_n_7 ),
        .I2(s_axis_tdata[91]),
        .I3(\r4[9]_i_2_n_0 ),
        .O(\r4[9]_i_5_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \r4[9]_i_6 
       (.I0(s_axis_tdata[93]),
        .I1(\r4_reg[5]_i_2_n_4 ),
        .I2(s_axis_tdata[90]),
        .I3(\r4[9]_i_3_n_0 ),
        .O(\r4[9]_i_6_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \r4[9]_i_7 
       (.I0(s_axis_tdata[92]),
        .I1(\r4_reg[5]_i_2_n_5 ),
        .I2(s_axis_tdata[89]),
        .I3(\r4_reg[5]_i_2_n_6 ),
        .I4(s_axis_tdata[91]),
        .O(\r4[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \r4[9]_i_8 
       (.I0(s_axis_tdata[91]),
        .I1(\r4_reg[5]_i_2_n_6 ),
        .I2(s_axis_tdata[88]),
        .O(\r4[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[88]),
        .Q(r4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[10]),
        .Q(r4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[11]),
        .Q(r4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[12]),
        .Q(r4[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[13]),
        .Q(r4[13]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r4_reg[13]_i_1 
       (.CI(\r4_reg[9]_i_1_n_0 ),
        .CO({\r4_reg[13]_i_1_n_0 ,\r4_reg[13]_i_1_n_1 ,\r4_reg[13]_i_1_n_2 ,\r4_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[93],\r4[13]_i_2_n_0 }),
        .O(r40[13:10]),
        .S({s_axis_tdata[95:94],\r4[13]_i_3_n_0 ,\r4[13]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r4_reg[13]_i_5 
       (.CI(\r4_reg[5]_i_2_n_0 ),
        .CO({\NLW_r4_reg[13]_i_5_CO_UNCONNECTED [3:2],\r4_reg[13]_i_5_n_2 ,\NLW_r4_reg[13]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r4_reg[13]_i_5_O_UNCONNECTED [3:1],\r4_reg[13]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[95]}));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[14]),
        .Q(r4[14]),
        .R(1'b0));
  CARRY4 \r4_reg[14]_i_1 
       (.CI(\r4_reg[13]_i_1_n_0 ),
        .CO({\NLW_r4_reg[14]_i_1_CO_UNCONNECTED [3:1],r40[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r4_reg[14]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[1]),
        .Q(r4[1]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r4_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\r4_reg[1]_i_1_n_0 ,\r4_reg[1]_i_1_n_1 ,\r4_reg[1]_i_1_n_2 ,\r4_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[92:90],1'b0}),
        .O({\r4_reg[1]_i_1_n_4 ,\r4_reg[1]_i_1_n_5 ,\r4_reg[1]_i_1_n_6 ,r40[1]}),
        .S({\r4[1]_i_2_n_0 ,\r4[1]_i_3_n_0 ,\r4[1]_i_4_n_0 ,s_axis_tdata[89]}));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[2]),
        .Q(r4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[3]),
        .Q(r4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[4]),
        .Q(r4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[5]),
        .Q(r4[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r4_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\r4_reg[5]_i_1_n_0 ,\r4_reg[5]_i_1_n_1 ,\r4_reg[5]_i_1_n_2 ,\r4_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r4_reg[5]_i_2_n_7 ,\r4_reg[1]_i_1_n_4 ,\r4_reg[1]_i_1_n_5 ,1'b0}),
        .O(r40[5:2]),
        .S({\r4[5]_i_3_n_0 ,\r4[5]_i_4_n_0 ,\r4[5]_i_5_n_0 ,\r4_reg[1]_i_1_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r4_reg[5]_i_2 
       (.CI(\r4_reg[1]_i_1_n_0 ),
        .CO({\r4_reg[5]_i_2_n_0 ,\r4_reg[5]_i_2_n_1 ,\r4_reg[5]_i_2_n_2 ,\r4_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[95:93]}),
        .O({\r4_reg[5]_i_2_n_4 ,\r4_reg[5]_i_2_n_5 ,\r4_reg[5]_i_2_n_6 ,\r4_reg[5]_i_2_n_7 }),
        .S({s_axis_tdata[94],\r4[5]_i_6_n_0 ,\r4[5]_i_7_n_0 ,\r4[5]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[6]),
        .Q(r4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[7]),
        .Q(r4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[8]),
        .Q(r4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[9]),
        .Q(r4[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r4_reg[9]_i_1 
       (.CI(\r4_reg[5]_i_1_n_0 ),
        .CO({\r4_reg[9]_i_1_n_0 ,\r4_reg[9]_i_1_n_1 ,\r4_reg[9]_i_1_n_2 ,\r4_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r4[9]_i_2_n_0 ,\r4[9]_i_3_n_0 ,\r4[9]_i_4_n_0 ,s_axis_tdata[88]}),
        .O(r40[9:6]),
        .S({\r4[9]_i_5_n_0 ,\r4[9]_i_6_n_0 ,\r4[9]_i_7_n_0 ,\r4[9]_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_10 
       (.I0(b1[8]),
        .I1(r1[8]),
        .O(\sum1[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_2 
       (.I0(g1[12]),
        .I1(C[12]),
        .O(\sum1[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_3 
       (.I0(g1[11]),
        .I1(C[11]),
        .O(\sum1[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_4 
       (.I0(g1[10]),
        .I1(C[10]),
        .O(\sum1[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_5 
       (.I0(g1[9]),
        .I1(C[9]),
        .O(\sum1[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_7 
       (.I0(b1[11]),
        .I1(r1[11]),
        .O(\sum1[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_8 
       (.I0(b1[10]),
        .I1(r1[10]),
        .O(\sum1[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[12]_i_9 
       (.I0(b1[9]),
        .I1(r1[9]),
        .O(\sum1[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[16]_i_2 
       (.I0(g1[15]),
        .I1(\sum1_reg[16]_i_5_n_0 ),
        .O(\sum1[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[16]_i_3 
       (.I0(g1[14]),
        .I1(C[14]),
        .O(\sum1[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[16]_i_4 
       (.I0(g1[13]),
        .I1(C[13]),
        .O(\sum1[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[16]_i_6 
       (.I0(b1[12]),
        .I1(r1[12]),
        .O(\sum1[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_10 
       (.I0(g1[1]),
        .I1(C[1]),
        .O(\sum1[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_13 
       (.I0(b1[7]),
        .I1(r1[7]),
        .O(\sum1[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_14 
       (.I0(b1[6]),
        .I1(r1[6]),
        .O(\sum1[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_15 
       (.I0(b1[5]),
        .I1(r1[5]),
        .O(\sum1[8]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_16 
       (.I0(b1[4]),
        .I1(r1[4]),
        .O(\sum1[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_17 
       (.I0(b1[3]),
        .I1(r1[3]),
        .O(\sum1[8]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_18 
       (.I0(b1[2]),
        .I1(r1[2]),
        .O(\sum1[8]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_19 
       (.I0(b1[1]),
        .I1(r1[1]),
        .O(\sum1[8]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_20 
       (.I0(b1[0]),
        .I1(r1[0]),
        .O(\sum1[8]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_3 
       (.I0(g1[8]),
        .I1(C[8]),
        .O(\sum1[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_4 
       (.I0(g1[7]),
        .I1(C[7]),
        .O(\sum1[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_5 
       (.I0(g1[6]),
        .I1(C[6]),
        .O(\sum1[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_6 
       (.I0(g1[5]),
        .I1(C[5]),
        .O(\sum1[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_7 
       (.I0(g1[4]),
        .I1(C[4]),
        .O(\sum1[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_8 
       (.I0(g1[3]),
        .I1(C[3]),
        .O(\sum1[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum1[8]_i_9 
       (.I0(g1[2]),
        .I1(C[2]),
        .O(\sum1[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[10] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[10]),
        .Q(sum1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[11]),
        .Q(sum1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[12]),
        .Q(sum1[12]),
        .R(1'b0));
  CARRY4 \sum1_reg[12]_i_1 
       (.CI(\sum1_reg[8]_i_1_n_0 ),
        .CO({\sum1_reg[12]_i_1_n_0 ,\sum1_reg[12]_i_1_n_1 ,\sum1_reg[12]_i_1_n_2 ,\sum1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g1[12:9]),
        .O(sum10[12:9]),
        .S({\sum1[12]_i_2_n_0 ,\sum1[12]_i_3_n_0 ,\sum1[12]_i_4_n_0 ,\sum1[12]_i_5_n_0 }));
  CARRY4 \sum1_reg[12]_i_6 
       (.CI(\sum1_reg[8]_i_11_n_0 ),
        .CO({\sum1_reg[12]_i_6_n_0 ,\sum1_reg[12]_i_6_n_1 ,\sum1_reg[12]_i_6_n_2 ,\sum1_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(b1[11:8]),
        .O(C[11:8]),
        .S({\sum1[12]_i_7_n_0 ,\sum1[12]_i_8_n_0 ,\sum1[12]_i_9_n_0 ,\sum1[12]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[13] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[13]),
        .Q(sum1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[14]),
        .Q(sum1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[15]),
        .Q(sum1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[16]),
        .Q(sum1[16]),
        .R(1'b0));
  CARRY4 \sum1_reg[16]_i_1 
       (.CI(\sum1_reg[12]_i_1_n_0 ),
        .CO({sum10[16],\NLW_sum1_reg[16]_i_1_CO_UNCONNECTED [2],\sum1_reg[16]_i_1_n_2 ,\sum1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,g1[15:13]}),
        .O({\NLW_sum1_reg[16]_i_1_O_UNCONNECTED [3],sum10[15:13]}),
        .S({1'b1,\sum1[16]_i_2_n_0 ,\sum1[16]_i_3_n_0 ,\sum1[16]_i_4_n_0 }));
  CARRY4 \sum1_reg[16]_i_5 
       (.CI(\sum1_reg[12]_i_6_n_0 ),
        .CO({\sum1_reg[16]_i_5_n_0 ,\NLW_sum1_reg[16]_i_5_CO_UNCONNECTED [2],\sum1_reg[16]_i_5_n_2 ,\sum1_reg[16]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b1[12]}),
        .O({\NLW_sum1_reg[16]_i_5_O_UNCONNECTED [3],C[14:12]}),
        .S({1'b1,r1[14:13],\sum1[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[8] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[8]),
        .Q(sum1[8]),
        .R(1'b0));
  CARRY4 \sum1_reg[8]_i_1 
       (.CI(\sum1_reg[8]_i_2_n_0 ),
        .CO({\sum1_reg[8]_i_1_n_0 ,\sum1_reg[8]_i_1_n_1 ,\sum1_reg[8]_i_1_n_2 ,\sum1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g1[8:5]),
        .O({sum10[8],\NLW_sum1_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\sum1[8]_i_3_n_0 ,\sum1[8]_i_4_n_0 ,\sum1[8]_i_5_n_0 ,\sum1[8]_i_6_n_0 }));
  CARRY4 \sum1_reg[8]_i_11 
       (.CI(\sum1_reg[8]_i_12_n_0 ),
        .CO({\sum1_reg[8]_i_11_n_0 ,\sum1_reg[8]_i_11_n_1 ,\sum1_reg[8]_i_11_n_2 ,\sum1_reg[8]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(b1[7:4]),
        .O(C[7:4]),
        .S({\sum1[8]_i_13_n_0 ,\sum1[8]_i_14_n_0 ,\sum1[8]_i_15_n_0 ,\sum1[8]_i_16_n_0 }));
  CARRY4 \sum1_reg[8]_i_12 
       (.CI(1'b0),
        .CO({\sum1_reg[8]_i_12_n_0 ,\sum1_reg[8]_i_12_n_1 ,\sum1_reg[8]_i_12_n_2 ,\sum1_reg[8]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(b1[3:0]),
        .O({C[3:1],\NLW_sum1_reg[8]_i_12_O_UNCONNECTED [0]}),
        .S({\sum1[8]_i_17_n_0 ,\sum1[8]_i_18_n_0 ,\sum1[8]_i_19_n_0 ,\sum1[8]_i_20_n_0 }));
  CARRY4 \sum1_reg[8]_i_2 
       (.CI(1'b0),
        .CO({\sum1_reg[8]_i_2_n_0 ,\sum1_reg[8]_i_2_n_1 ,\sum1_reg[8]_i_2_n_2 ,\sum1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(g1[4:1]),
        .O(\NLW_sum1_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({\sum1[8]_i_7_n_0 ,\sum1[8]_i_8_n_0 ,\sum1[8]_i_9_n_0 ,\sum1[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[9] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[9]),
        .Q(sum1[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_10 
       (.I0(b2[8]),
        .I1(r2[8]),
        .O(\sum2[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_2 
       (.I0(g2[12]),
        .I1(C__0[12]),
        .O(\sum2[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_3 
       (.I0(g2[11]),
        .I1(C__0[11]),
        .O(\sum2[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_4 
       (.I0(g2[10]),
        .I1(C__0[10]),
        .O(\sum2[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_5 
       (.I0(g2[9]),
        .I1(C__0[9]),
        .O(\sum2[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_7 
       (.I0(b2[11]),
        .I1(r2[11]),
        .O(\sum2[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_8 
       (.I0(b2[10]),
        .I1(r2[10]),
        .O(\sum2[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[12]_i_9 
       (.I0(b2[9]),
        .I1(r2[9]),
        .O(\sum2[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[16]_i_2 
       (.I0(g2[15]),
        .I1(\sum2_reg[16]_i_5_n_0 ),
        .O(\sum2[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[16]_i_3 
       (.I0(g2[14]),
        .I1(C__0[14]),
        .O(\sum2[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[16]_i_4 
       (.I0(g2[13]),
        .I1(C__0[13]),
        .O(\sum2[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[16]_i_6 
       (.I0(b2[12]),
        .I1(r2[12]),
        .O(\sum2[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_10 
       (.I0(g2[1]),
        .I1(C__0[1]),
        .O(\sum2[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_13 
       (.I0(b2[7]),
        .I1(r2[7]),
        .O(\sum2[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_14 
       (.I0(b2[6]),
        .I1(r2[6]),
        .O(\sum2[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_15 
       (.I0(b2[5]),
        .I1(r2[5]),
        .O(\sum2[8]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_16 
       (.I0(b2[4]),
        .I1(r2[4]),
        .O(\sum2[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_17 
       (.I0(b2[3]),
        .I1(r2[3]),
        .O(\sum2[8]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_18 
       (.I0(b2[2]),
        .I1(r2[2]),
        .O(\sum2[8]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_19 
       (.I0(b2[1]),
        .I1(r2[1]),
        .O(\sum2[8]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_20 
       (.I0(b2[0]),
        .I1(r2[0]),
        .O(\sum2[8]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_3 
       (.I0(g2[8]),
        .I1(C__0[8]),
        .O(\sum2[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_4 
       (.I0(g2[7]),
        .I1(C__0[7]),
        .O(\sum2[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_5 
       (.I0(g2[6]),
        .I1(C__0[6]),
        .O(\sum2[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_6 
       (.I0(g2[5]),
        .I1(C__0[5]),
        .O(\sum2[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_7 
       (.I0(g2[4]),
        .I1(C__0[4]),
        .O(\sum2[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_8 
       (.I0(g2[3]),
        .I1(C__0[3]),
        .O(\sum2[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum2[8]_i_9 
       (.I0(g2[2]),
        .I1(C__0[2]),
        .O(\sum2[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[10] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[10]),
        .Q(sum2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[11]),
        .Q(sum2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[12]),
        .Q(sum2[12]),
        .R(1'b0));
  CARRY4 \sum2_reg[12]_i_1 
       (.CI(\sum2_reg[8]_i_1_n_0 ),
        .CO({\sum2_reg[12]_i_1_n_0 ,\sum2_reg[12]_i_1_n_1 ,\sum2_reg[12]_i_1_n_2 ,\sum2_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g2[12:9]),
        .O(sum20[12:9]),
        .S({\sum2[12]_i_2_n_0 ,\sum2[12]_i_3_n_0 ,\sum2[12]_i_4_n_0 ,\sum2[12]_i_5_n_0 }));
  CARRY4 \sum2_reg[12]_i_6 
       (.CI(\sum2_reg[8]_i_11_n_0 ),
        .CO({\sum2_reg[12]_i_6_n_0 ,\sum2_reg[12]_i_6_n_1 ,\sum2_reg[12]_i_6_n_2 ,\sum2_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(b2[11:8]),
        .O(C__0[11:8]),
        .S({\sum2[12]_i_7_n_0 ,\sum2[12]_i_8_n_0 ,\sum2[12]_i_9_n_0 ,\sum2[12]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[13] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[13]),
        .Q(sum2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[14]),
        .Q(sum2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[15]),
        .Q(sum2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[16]),
        .Q(sum2[16]),
        .R(1'b0));
  CARRY4 \sum2_reg[16]_i_1 
       (.CI(\sum2_reg[12]_i_1_n_0 ),
        .CO({sum20[16],\NLW_sum2_reg[16]_i_1_CO_UNCONNECTED [2],\sum2_reg[16]_i_1_n_2 ,\sum2_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,g2[15:13]}),
        .O({\NLW_sum2_reg[16]_i_1_O_UNCONNECTED [3],sum20[15:13]}),
        .S({1'b1,\sum2[16]_i_2_n_0 ,\sum2[16]_i_3_n_0 ,\sum2[16]_i_4_n_0 }));
  CARRY4 \sum2_reg[16]_i_5 
       (.CI(\sum2_reg[12]_i_6_n_0 ),
        .CO({\sum2_reg[16]_i_5_n_0 ,\NLW_sum2_reg[16]_i_5_CO_UNCONNECTED [2],\sum2_reg[16]_i_5_n_2 ,\sum2_reg[16]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b2[12]}),
        .O({\NLW_sum2_reg[16]_i_5_O_UNCONNECTED [3],C__0[14:12]}),
        .S({1'b1,r2[14:13],\sum2[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[8] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[8]),
        .Q(sum2[8]),
        .R(1'b0));
  CARRY4 \sum2_reg[8]_i_1 
       (.CI(\sum2_reg[8]_i_2_n_0 ),
        .CO({\sum2_reg[8]_i_1_n_0 ,\sum2_reg[8]_i_1_n_1 ,\sum2_reg[8]_i_1_n_2 ,\sum2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g2[8:5]),
        .O({sum20[8],\NLW_sum2_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\sum2[8]_i_3_n_0 ,\sum2[8]_i_4_n_0 ,\sum2[8]_i_5_n_0 ,\sum2[8]_i_6_n_0 }));
  CARRY4 \sum2_reg[8]_i_11 
       (.CI(\sum2_reg[8]_i_12_n_0 ),
        .CO({\sum2_reg[8]_i_11_n_0 ,\sum2_reg[8]_i_11_n_1 ,\sum2_reg[8]_i_11_n_2 ,\sum2_reg[8]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(b2[7:4]),
        .O(C__0[7:4]),
        .S({\sum2[8]_i_13_n_0 ,\sum2[8]_i_14_n_0 ,\sum2[8]_i_15_n_0 ,\sum2[8]_i_16_n_0 }));
  CARRY4 \sum2_reg[8]_i_12 
       (.CI(1'b0),
        .CO({\sum2_reg[8]_i_12_n_0 ,\sum2_reg[8]_i_12_n_1 ,\sum2_reg[8]_i_12_n_2 ,\sum2_reg[8]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(b2[3:0]),
        .O({C__0[3:1],\NLW_sum2_reg[8]_i_12_O_UNCONNECTED [0]}),
        .S({\sum2[8]_i_17_n_0 ,\sum2[8]_i_18_n_0 ,\sum2[8]_i_19_n_0 ,\sum2[8]_i_20_n_0 }));
  CARRY4 \sum2_reg[8]_i_2 
       (.CI(1'b0),
        .CO({\sum2_reg[8]_i_2_n_0 ,\sum2_reg[8]_i_2_n_1 ,\sum2_reg[8]_i_2_n_2 ,\sum2_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(g2[4:1]),
        .O(\NLW_sum2_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({\sum2[8]_i_7_n_0 ,\sum2[8]_i_8_n_0 ,\sum2[8]_i_9_n_0 ,\sum2[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[9] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[9]),
        .Q(sum2[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_10 
       (.I0(b3[8]),
        .I1(r3[8]),
        .O(\sum3[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_2 
       (.I0(g3[12]),
        .I1(C__1[12]),
        .O(\sum3[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_3 
       (.I0(g3[11]),
        .I1(C__1[11]),
        .O(\sum3[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_4 
       (.I0(g3[10]),
        .I1(C__1[10]),
        .O(\sum3[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_5 
       (.I0(g3[9]),
        .I1(C__1[9]),
        .O(\sum3[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_7 
       (.I0(b3[11]),
        .I1(r3[11]),
        .O(\sum3[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_8 
       (.I0(b3[10]),
        .I1(r3[10]),
        .O(\sum3[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[12]_i_9 
       (.I0(b3[9]),
        .I1(r3[9]),
        .O(\sum3[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[16]_i_2 
       (.I0(g3[15]),
        .I1(\sum3_reg[16]_i_5_n_0 ),
        .O(\sum3[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[16]_i_3 
       (.I0(g3[14]),
        .I1(C__1[14]),
        .O(\sum3[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[16]_i_4 
       (.I0(g3[13]),
        .I1(C__1[13]),
        .O(\sum3[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[16]_i_6 
       (.I0(b3[12]),
        .I1(r3[12]),
        .O(\sum3[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_10 
       (.I0(g3[1]),
        .I1(C__1[1]),
        .O(\sum3[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_13 
       (.I0(b3[7]),
        .I1(r3[7]),
        .O(\sum3[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_14 
       (.I0(b3[6]),
        .I1(r3[6]),
        .O(\sum3[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_15 
       (.I0(b3[5]),
        .I1(r3[5]),
        .O(\sum3[8]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_16 
       (.I0(b3[4]),
        .I1(r3[4]),
        .O(\sum3[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_17 
       (.I0(b3[3]),
        .I1(r3[3]),
        .O(\sum3[8]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_18 
       (.I0(b3[2]),
        .I1(r3[2]),
        .O(\sum3[8]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_19 
       (.I0(b3[1]),
        .I1(r3[1]),
        .O(\sum3[8]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_20 
       (.I0(b3[0]),
        .I1(r3[0]),
        .O(\sum3[8]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_3 
       (.I0(g3[8]),
        .I1(C__1[8]),
        .O(\sum3[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_4 
       (.I0(g3[7]),
        .I1(C__1[7]),
        .O(\sum3[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_5 
       (.I0(g3[6]),
        .I1(C__1[6]),
        .O(\sum3[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_6 
       (.I0(g3[5]),
        .I1(C__1[5]),
        .O(\sum3[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_7 
       (.I0(g3[4]),
        .I1(C__1[4]),
        .O(\sum3[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_8 
       (.I0(g3[3]),
        .I1(C__1[3]),
        .O(\sum3[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum3[8]_i_9 
       (.I0(g3[2]),
        .I1(C__1[2]),
        .O(\sum3[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[10] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[10]),
        .Q(sum3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[11]),
        .Q(sum3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[12]),
        .Q(sum3[12]),
        .R(1'b0));
  CARRY4 \sum3_reg[12]_i_1 
       (.CI(\sum3_reg[8]_i_1_n_0 ),
        .CO({\sum3_reg[12]_i_1_n_0 ,\sum3_reg[12]_i_1_n_1 ,\sum3_reg[12]_i_1_n_2 ,\sum3_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g3[12:9]),
        .O(sum30[12:9]),
        .S({\sum3[12]_i_2_n_0 ,\sum3[12]_i_3_n_0 ,\sum3[12]_i_4_n_0 ,\sum3[12]_i_5_n_0 }));
  CARRY4 \sum3_reg[12]_i_6 
       (.CI(\sum3_reg[8]_i_11_n_0 ),
        .CO({\sum3_reg[12]_i_6_n_0 ,\sum3_reg[12]_i_6_n_1 ,\sum3_reg[12]_i_6_n_2 ,\sum3_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(b3[11:8]),
        .O(C__1[11:8]),
        .S({\sum3[12]_i_7_n_0 ,\sum3[12]_i_8_n_0 ,\sum3[12]_i_9_n_0 ,\sum3[12]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[13] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[13]),
        .Q(sum3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[14]),
        .Q(sum3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[15]),
        .Q(sum3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[16]),
        .Q(sum3[16]),
        .R(1'b0));
  CARRY4 \sum3_reg[16]_i_1 
       (.CI(\sum3_reg[12]_i_1_n_0 ),
        .CO({sum30[16],\NLW_sum3_reg[16]_i_1_CO_UNCONNECTED [2],\sum3_reg[16]_i_1_n_2 ,\sum3_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,g3[15:13]}),
        .O({\NLW_sum3_reg[16]_i_1_O_UNCONNECTED [3],sum30[15:13]}),
        .S({1'b1,\sum3[16]_i_2_n_0 ,\sum3[16]_i_3_n_0 ,\sum3[16]_i_4_n_0 }));
  CARRY4 \sum3_reg[16]_i_5 
       (.CI(\sum3_reg[12]_i_6_n_0 ),
        .CO({\sum3_reg[16]_i_5_n_0 ,\NLW_sum3_reg[16]_i_5_CO_UNCONNECTED [2],\sum3_reg[16]_i_5_n_2 ,\sum3_reg[16]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b3[12]}),
        .O({\NLW_sum3_reg[16]_i_5_O_UNCONNECTED [3],C__1[14:12]}),
        .S({1'b1,r3[14:13],\sum3[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[8] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[8]),
        .Q(sum3[8]),
        .R(1'b0));
  CARRY4 \sum3_reg[8]_i_1 
       (.CI(\sum3_reg[8]_i_2_n_0 ),
        .CO({\sum3_reg[8]_i_1_n_0 ,\sum3_reg[8]_i_1_n_1 ,\sum3_reg[8]_i_1_n_2 ,\sum3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g3[8:5]),
        .O({sum30[8],\NLW_sum3_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\sum3[8]_i_3_n_0 ,\sum3[8]_i_4_n_0 ,\sum3[8]_i_5_n_0 ,\sum3[8]_i_6_n_0 }));
  CARRY4 \sum3_reg[8]_i_11 
       (.CI(\sum3_reg[8]_i_12_n_0 ),
        .CO({\sum3_reg[8]_i_11_n_0 ,\sum3_reg[8]_i_11_n_1 ,\sum3_reg[8]_i_11_n_2 ,\sum3_reg[8]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(b3[7:4]),
        .O(C__1[7:4]),
        .S({\sum3[8]_i_13_n_0 ,\sum3[8]_i_14_n_0 ,\sum3[8]_i_15_n_0 ,\sum3[8]_i_16_n_0 }));
  CARRY4 \sum3_reg[8]_i_12 
       (.CI(1'b0),
        .CO({\sum3_reg[8]_i_12_n_0 ,\sum3_reg[8]_i_12_n_1 ,\sum3_reg[8]_i_12_n_2 ,\sum3_reg[8]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(b3[3:0]),
        .O({C__1[3:1],\NLW_sum3_reg[8]_i_12_O_UNCONNECTED [0]}),
        .S({\sum3[8]_i_17_n_0 ,\sum3[8]_i_18_n_0 ,\sum3[8]_i_19_n_0 ,\sum3[8]_i_20_n_0 }));
  CARRY4 \sum3_reg[8]_i_2 
       (.CI(1'b0),
        .CO({\sum3_reg[8]_i_2_n_0 ,\sum3_reg[8]_i_2_n_1 ,\sum3_reg[8]_i_2_n_2 ,\sum3_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(g3[4:1]),
        .O(\NLW_sum3_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({\sum3[8]_i_7_n_0 ,\sum3[8]_i_8_n_0 ,\sum3[8]_i_9_n_0 ,\sum3[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[9] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[9]),
        .Q(sum3[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_10 
       (.I0(b4[8]),
        .I1(r4[8]),
        .O(\sum4[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_2 
       (.I0(g4[12]),
        .I1(C__2[12]),
        .O(\sum4[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_3 
       (.I0(g4[11]),
        .I1(C__2[11]),
        .O(\sum4[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_4 
       (.I0(g4[10]),
        .I1(C__2[10]),
        .O(\sum4[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_5 
       (.I0(g4[9]),
        .I1(C__2[9]),
        .O(\sum4[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_7 
       (.I0(b4[11]),
        .I1(r4[11]),
        .O(\sum4[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_8 
       (.I0(b4[10]),
        .I1(r4[10]),
        .O(\sum4[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[12]_i_9 
       (.I0(b4[9]),
        .I1(r4[9]),
        .O(\sum4[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[16]_i_2 
       (.I0(g4[15]),
        .I1(\sum4_reg[16]_i_5_n_0 ),
        .O(\sum4[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[16]_i_3 
       (.I0(g4[14]),
        .I1(C__2[14]),
        .O(\sum4[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[16]_i_4 
       (.I0(g4[13]),
        .I1(C__2[13]),
        .O(\sum4[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[16]_i_6 
       (.I0(b4[12]),
        .I1(r4[12]),
        .O(\sum4[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_10 
       (.I0(g4[1]),
        .I1(C__2[1]),
        .O(\sum4[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_13 
       (.I0(b4[7]),
        .I1(r4[7]),
        .O(\sum4[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_14 
       (.I0(b4[6]),
        .I1(r4[6]),
        .O(\sum4[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_15 
       (.I0(b4[5]),
        .I1(r4[5]),
        .O(\sum4[8]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_16 
       (.I0(b4[4]),
        .I1(r4[4]),
        .O(\sum4[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_17 
       (.I0(b4[3]),
        .I1(r4[3]),
        .O(\sum4[8]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_18 
       (.I0(b4[2]),
        .I1(r4[2]),
        .O(\sum4[8]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_19 
       (.I0(b4[1]),
        .I1(r4[1]),
        .O(\sum4[8]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_20 
       (.I0(b4[0]),
        .I1(r4[0]),
        .O(\sum4[8]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_3 
       (.I0(g4[8]),
        .I1(C__2[8]),
        .O(\sum4[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_4 
       (.I0(g4[7]),
        .I1(C__2[7]),
        .O(\sum4[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_5 
       (.I0(g4[6]),
        .I1(C__2[6]),
        .O(\sum4[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_6 
       (.I0(g4[5]),
        .I1(C__2[5]),
        .O(\sum4[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_7 
       (.I0(g4[4]),
        .I1(C__2[4]),
        .O(\sum4[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_8 
       (.I0(g4[3]),
        .I1(C__2[3]),
        .O(\sum4[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum4[8]_i_9 
       (.I0(g4[2]),
        .I1(C__2[2]),
        .O(\sum4[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[10] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[10]),
        .Q(sum4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[11]),
        .Q(sum4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[12]),
        .Q(sum4[12]),
        .R(1'b0));
  CARRY4 \sum4_reg[12]_i_1 
       (.CI(\sum4_reg[8]_i_1_n_0 ),
        .CO({\sum4_reg[12]_i_1_n_0 ,\sum4_reg[12]_i_1_n_1 ,\sum4_reg[12]_i_1_n_2 ,\sum4_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g4[12:9]),
        .O(sum40[12:9]),
        .S({\sum4[12]_i_2_n_0 ,\sum4[12]_i_3_n_0 ,\sum4[12]_i_4_n_0 ,\sum4[12]_i_5_n_0 }));
  CARRY4 \sum4_reg[12]_i_6 
       (.CI(\sum4_reg[8]_i_11_n_0 ),
        .CO({\sum4_reg[12]_i_6_n_0 ,\sum4_reg[12]_i_6_n_1 ,\sum4_reg[12]_i_6_n_2 ,\sum4_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(b4[11:8]),
        .O(C__2[11:8]),
        .S({\sum4[12]_i_7_n_0 ,\sum4[12]_i_8_n_0 ,\sum4[12]_i_9_n_0 ,\sum4[12]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[13] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[13]),
        .Q(sum4[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[14]),
        .Q(sum4[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[15]),
        .Q(sum4[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[16]),
        .Q(sum4[16]),
        .R(1'b0));
  CARRY4 \sum4_reg[16]_i_1 
       (.CI(\sum4_reg[12]_i_1_n_0 ),
        .CO({sum40[16],\NLW_sum4_reg[16]_i_1_CO_UNCONNECTED [2],\sum4_reg[16]_i_1_n_2 ,\sum4_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,g4[15:13]}),
        .O({\NLW_sum4_reg[16]_i_1_O_UNCONNECTED [3],sum40[15:13]}),
        .S({1'b1,\sum4[16]_i_2_n_0 ,\sum4[16]_i_3_n_0 ,\sum4[16]_i_4_n_0 }));
  CARRY4 \sum4_reg[16]_i_5 
       (.CI(\sum4_reg[12]_i_6_n_0 ),
        .CO({\sum4_reg[16]_i_5_n_0 ,\NLW_sum4_reg[16]_i_5_CO_UNCONNECTED [2],\sum4_reg[16]_i_5_n_2 ,\sum4_reg[16]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b4[12]}),
        .O({\NLW_sum4_reg[16]_i_5_O_UNCONNECTED [3],C__2[14:12]}),
        .S({1'b1,r4[14:13],\sum4[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[8] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[8]),
        .Q(sum4[8]),
        .R(1'b0));
  CARRY4 \sum4_reg[8]_i_1 
       (.CI(\sum4_reg[8]_i_2_n_0 ),
        .CO({\sum4_reg[8]_i_1_n_0 ,\sum4_reg[8]_i_1_n_1 ,\sum4_reg[8]_i_1_n_2 ,\sum4_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(g4[8:5]),
        .O({sum40[8],\NLW_sum4_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\sum4[8]_i_3_n_0 ,\sum4[8]_i_4_n_0 ,\sum4[8]_i_5_n_0 ,\sum4[8]_i_6_n_0 }));
  CARRY4 \sum4_reg[8]_i_11 
       (.CI(\sum4_reg[8]_i_12_n_0 ),
        .CO({\sum4_reg[8]_i_11_n_0 ,\sum4_reg[8]_i_11_n_1 ,\sum4_reg[8]_i_11_n_2 ,\sum4_reg[8]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(b4[7:4]),
        .O(C__2[7:4]),
        .S({\sum4[8]_i_13_n_0 ,\sum4[8]_i_14_n_0 ,\sum4[8]_i_15_n_0 ,\sum4[8]_i_16_n_0 }));
  CARRY4 \sum4_reg[8]_i_12 
       (.CI(1'b0),
        .CO({\sum4_reg[8]_i_12_n_0 ,\sum4_reg[8]_i_12_n_1 ,\sum4_reg[8]_i_12_n_2 ,\sum4_reg[8]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(b4[3:0]),
        .O({C__2[3:1],\NLW_sum4_reg[8]_i_12_O_UNCONNECTED [0]}),
        .S({\sum4[8]_i_17_n_0 ,\sum4[8]_i_18_n_0 ,\sum4[8]_i_19_n_0 ,\sum4[8]_i_20_n_0 }));
  CARRY4 \sum4_reg[8]_i_2 
       (.CI(1'b0),
        .CO({\sum4_reg[8]_i_2_n_0 ,\sum4_reg[8]_i_2_n_1 ,\sum4_reg[8]_i_2_n_2 ,\sum4_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(g4[4:1]),
        .O(\NLW_sum4_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({\sum4[8]_i_7_n_0 ,\sum4[8]_i_8_n_0 ,\sum4[8]_i_9_n_0 ,\sum4[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[9] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[9]),
        .Q(sum4[9]),
        .R(1'b0));
  FDRE \tlast_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(tlast),
        .R(1'b0));
  FDRE \tlast_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tlast),
        .Q(m_axis_tlast),
        .R(1'b0));
  FDRE \tuser_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tuser),
        .Q(tuser),
        .R(1'b0));
  FDRE \tuser_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tuser),
        .Q(m_axis_tuser),
        .R(1'b0));
  FDRE \tvalid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(CEP),
        .R(1'b0));
  FDRE \tvalid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(CEP),
        .Q(m_axis_tvalid),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tdata,
    aclk,
    s_axis_tvalid,
    s_axis_tuser,
    s_axis_tlast);
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input [95:0]s_axis_tdata;
  input aclk;
  input s_axis_tvalid;
  input s_axis_tuser;
  input s_axis_tlast;

  wire aclk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0 rgb2gray
       (.aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tdata,
    aclk,
    s_axis_tvalid,
    s_axis_tuser,
    s_axis_tlast);
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input [95:0]s_axis_tdata;
  input aclk;
  input s_axis_tvalid;
  input s_axis_tuser;
  input s_axis_tlast;

  wire aclk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision stereo
       (.aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "exdes_Stereovision_0_0,Stereovision_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Stereovision_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tuser,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [95:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) input s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [95:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) output m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;

  wire \<const1> ;
  wire aclk;
  wire [79:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  assign m_axis_tdata[95:88] = \^m_axis_tdata [79:72];
  assign m_axis_tdata[87:80] = \^m_axis_tdata [79:72];
  assign m_axis_tdata[79:72] = \^m_axis_tdata [79:72];
  assign m_axis_tdata[71:64] = \^m_axis_tdata [55:48];
  assign m_axis_tdata[63:56] = \^m_axis_tdata [55:48];
  assign m_axis_tdata[55:48] = \^m_axis_tdata [55:48];
  assign m_axis_tdata[47:40] = \^m_axis_tdata [31:24];
  assign m_axis_tdata[39:32] = \^m_axis_tdata [31:24];
  assign m_axis_tdata[31:24] = \^m_axis_tdata [31:24];
  assign m_axis_tdata[23:16] = \^m_axis_tdata [7:0];
  assign m_axis_tdata[15:8] = \^m_axis_tdata [7:0];
  assign m_axis_tdata[7:0] = \^m_axis_tdata [7:0];
  assign s_axis_tready = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0 inst
       (.aclk(aclk),
        .m_axis_tdata({\^m_axis_tdata [79:72],\^m_axis_tdata [55:48],\^m_axis_tdata [31:24],\^m_axis_tdata [7:0]}),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
