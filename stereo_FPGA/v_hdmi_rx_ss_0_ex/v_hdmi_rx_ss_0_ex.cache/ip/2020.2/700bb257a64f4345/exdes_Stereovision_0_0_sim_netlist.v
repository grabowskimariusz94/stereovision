// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar 26 11:18:32 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_Stereovision_0_0_sim_netlist.v
// Design      : exdes_Stereovision_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0
   (\tlast_reg[1]_0 ,
    \switch_img[3] ,
    \tvalid_reg[1]_0 ,
    \tuser_reg[1]_0 ,
    Q,
    aclk,
    switch_img,
    m_axis_disp_tlast_reg,
    s_axis_tlast,
    D,
    s_axis_tdata,
    \m_axis_disp_tdata_reg[16] ,
    \m_axis_disp_tdata_reg[40] ,
    \m_axis_disp_tdata_reg[64] ,
    \tdataL_reg[3]_0 ,
    \tuser_reg[0]_0 ,
    s_axis_lr_tdata);
  output \tlast_reg[1]_0 ;
  output [95:0]\switch_img[3] ;
  output \tvalid_reg[1]_0 ;
  output \tuser_reg[1]_0 ;
  input [0:0]Q;
  input aclk;
  input [3:0]switch_img;
  input m_axis_disp_tlast_reg;
  input s_axis_tlast;
  input [0:0]D;
  input [95:0]s_axis_tdata;
  input [8:0]\m_axis_disp_tdata_reg[16] ;
  input [8:0]\m_axis_disp_tdata_reg[40] ;
  input [8:0]\m_axis_disp_tdata_reg[64] ;
  input [8:0]\tdataL_reg[3]_0 ;
  input [0:0]\tuser_reg[0]_0 ;
  input [31:0]s_axis_lr_tdata;

  wire [0:0]D;
  wire [0:0]Q;
  wire aclk;
  wire \lastLR[0][31]_i_1_n_0 ;
  wire \lastLR_reg_n_0_[0][0] ;
  wire \lastLR_reg_n_0_[0][16] ;
  wire \lastLR_reg_n_0_[0][17] ;
  wire \lastLR_reg_n_0_[0][18] ;
  wire \lastLR_reg_n_0_[0][19] ;
  wire \lastLR_reg_n_0_[0][20] ;
  wire \lastLR_reg_n_0_[0][21] ;
  wire \lastLR_reg_n_0_[0][22] ;
  wire \lastLR_reg_n_0_[0][23] ;
  wire \lastLR_reg_n_0_[0][24] ;
  wire \lastLR_reg_n_0_[0][8] ;
  wire \m_axis_disp_tdata[16]_i_2_n_0 ;
  wire \m_axis_disp_tdata[17]_i_2_n_0 ;
  wire \m_axis_disp_tdata[18]_i_2_n_0 ;
  wire \m_axis_disp_tdata[19]_i_2_n_0 ;
  wire \m_axis_disp_tdata[20]_i_2_n_0 ;
  wire \m_axis_disp_tdata[21]_i_2_n_0 ;
  wire \m_axis_disp_tdata[22]_i_2_n_0 ;
  wire \m_axis_disp_tdata[23]_i_2_n_0 ;
  wire \m_axis_disp_tdata[40]_i_2_n_0 ;
  wire \m_axis_disp_tdata[41]_i_2_n_0 ;
  wire \m_axis_disp_tdata[42]_i_2_n_0 ;
  wire \m_axis_disp_tdata[43]_i_2_n_0 ;
  wire \m_axis_disp_tdata[44]_i_2_n_0 ;
  wire \m_axis_disp_tdata[45]_i_2_n_0 ;
  wire \m_axis_disp_tdata[46]_i_2_n_0 ;
  wire \m_axis_disp_tdata[47]_i_2_n_0 ;
  wire \m_axis_disp_tdata[64]_i_2_n_0 ;
  wire \m_axis_disp_tdata[65]_i_2_n_0 ;
  wire \m_axis_disp_tdata[66]_i_2_n_0 ;
  wire \m_axis_disp_tdata[67]_i_2_n_0 ;
  wire \m_axis_disp_tdata[68]_i_2_n_0 ;
  wire \m_axis_disp_tdata[69]_i_2_n_0 ;
  wire \m_axis_disp_tdata[70]_i_2_n_0 ;
  wire \m_axis_disp_tdata[71]_i_2_n_0 ;
  wire \m_axis_disp_tdata[88]_i_2_n_0 ;
  wire \m_axis_disp_tdata[89]_i_2_n_0 ;
  wire \m_axis_disp_tdata[90]_i_2_n_0 ;
  wire \m_axis_disp_tdata[91]_i_2_n_0 ;
  wire \m_axis_disp_tdata[92]_i_2_n_0 ;
  wire \m_axis_disp_tdata[93]_i_2_n_0 ;
  wire \m_axis_disp_tdata[94]_i_2_n_0 ;
  wire \m_axis_disp_tdata[95]_i_2_n_0 ;
  wire [8:0]\m_axis_disp_tdata_reg[16] ;
  wire [8:0]\m_axis_disp_tdata_reg[40] ;
  wire [8:0]\m_axis_disp_tdata_reg[64] ;
  wire m_axis_disp_tlast_reg;
  wire p_0_in;
  wire p_0_in0_in;
  wire [6:0]p_0_in3_in;
  wire [6:0]p_1_in;
  wire [6:0]p_1_in1_in;
  wire [6:0]p_1_in5_in;
  wire [31:0]s_axis_lr_tdata;
  wire s_axis_lr_tvalid_buf;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire [3:0]switch_img;
  wire [95:0]\switch_img[3] ;
  wire [31:0]tdataL;
  wire [7:0]tdataL0;
  wire [7:0]tdataL02_out;
  wire \tdataL[19]_i_2_n_0 ;
  wire \tdataL[19]_i_3_n_0 ;
  wire \tdataL[19]_i_4_n_0 ;
  wire \tdataL[19]_i_5_n_0 ;
  wire \tdataL[23]_i_2_n_0 ;
  wire \tdataL[23]_i_3_n_0 ;
  wire \tdataL[23]_i_4_n_0 ;
  wire \tdataL[3]_i_2_n_0 ;
  wire \tdataL[3]_i_3_n_0 ;
  wire \tdataL[3]_i_4_n_0 ;
  wire \tdataL[3]_i_5_n_0 ;
  wire \tdataL[7]_i_2_n_0 ;
  wire \tdataL[7]_i_3_n_0 ;
  wire \tdataL[7]_i_4_n_0 ;
  wire \tdataL_reg[19]_i_1_n_0 ;
  wire \tdataL_reg[19]_i_1_n_1 ;
  wire \tdataL_reg[19]_i_1_n_2 ;
  wire \tdataL_reg[19]_i_1_n_3 ;
  wire \tdataL_reg[23]_i_1_n_2 ;
  wire \tdataL_reg[23]_i_1_n_3 ;
  wire [8:0]\tdataL_reg[3]_0 ;
  wire \tdataL_reg[3]_i_1_n_0 ;
  wire \tdataL_reg[3]_i_1_n_1 ;
  wire \tdataL_reg[3]_i_1_n_2 ;
  wire \tdataL_reg[3]_i_1_n_3 ;
  wire \tdataL_reg[7]_i_1_n_2 ;
  wire \tdataL_reg[7]_i_1_n_3 ;
  wire [31:0]tdataR;
  wire [7:0]tdataR0;
  wire [7:0]tdataR06_out;
  wire \tdataR[11]_i_2_n_0 ;
  wire \tdataR[11]_i_3_n_0 ;
  wire \tdataR[11]_i_4_n_0 ;
  wire \tdataR[11]_i_5_n_0 ;
  wire \tdataR[15]_i_2_n_0 ;
  wire \tdataR[15]_i_3_n_0 ;
  wire \tdataR[15]_i_4_n_0 ;
  wire \tdataR[27]_i_2_n_0 ;
  wire \tdataR[27]_i_3_n_0 ;
  wire \tdataR[27]_i_4_n_0 ;
  wire \tdataR[27]_i_5_n_0 ;
  wire \tdataR[31]_i_2_n_0 ;
  wire \tdataR[31]_i_3_n_0 ;
  wire \tdataR[31]_i_4_n_0 ;
  wire \tdataR_reg[11]_i_1_n_0 ;
  wire \tdataR_reg[11]_i_1_n_1 ;
  wire \tdataR_reg[11]_i_1_n_2 ;
  wire \tdataR_reg[11]_i_1_n_3 ;
  wire \tdataR_reg[15]_i_1_n_2 ;
  wire \tdataR_reg[15]_i_1_n_3 ;
  wire \tdataR_reg[27]_i_1_n_0 ;
  wire \tdataR_reg[27]_i_1_n_1 ;
  wire \tdataR_reg[27]_i_1_n_2 ;
  wire \tdataR_reg[27]_i_1_n_3 ;
  wire \tdataR_reg[31]_i_1_n_2 ;
  wire \tdataR_reg[31]_i_1_n_3 ;
  wire \tlast_reg[1]_0 ;
  wire \tlast_reg_n_0_[0] ;
  wire [1:1]tuser;
  wire [0:0]\tuser_reg[0]_0 ;
  wire \tuser_reg[1]_0 ;
  wire \tuser_reg_n_0_[0] ;
  wire tvalid0;
  wire \tvalid_reg[1]_0 ;
  wire \tvalid_reg_n_0_[0] ;
  wire [2:2]\NLW_tdataL_reg[23]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tdataL_reg[23]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_tdataL_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tdataL_reg[7]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_tdataR_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tdataR_reg[15]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_tdataR_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tdataR_reg[31]_i_1_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h0E)) 
    \lastLR[0][31]_i_1 
       (.I0(\tlast_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(Q),
        .O(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][0] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[0]),
        .Q(\lastLR_reg_n_0_[0][0] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][10] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[10]),
        .Q(p_1_in[1]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][11] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[11]),
        .Q(p_1_in[2]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][12] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[12]),
        .Q(p_1_in[3]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][13] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[13]),
        .Q(p_1_in[4]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][14] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[14]),
        .Q(p_1_in[5]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][15] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[15]),
        .Q(p_1_in[6]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][16] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[16]),
        .Q(\lastLR_reg_n_0_[0][16] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][17] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[17]),
        .Q(\lastLR_reg_n_0_[0][17] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][18] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[18]),
        .Q(\lastLR_reg_n_0_[0][18] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][19] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[19]),
        .Q(\lastLR_reg_n_0_[0][19] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][1] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[1]),
        .Q(p_0_in3_in[0]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][20] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[20]),
        .Q(\lastLR_reg_n_0_[0][20] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][21] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[21]),
        .Q(\lastLR_reg_n_0_[0][21] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][22] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[22]),
        .Q(\lastLR_reg_n_0_[0][22] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][23] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[23]),
        .Q(\lastLR_reg_n_0_[0][23] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][24] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[24]),
        .Q(\lastLR_reg_n_0_[0][24] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][25] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[25]),
        .Q(p_1_in1_in[0]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][26] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[26]),
        .Q(p_1_in1_in[1]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][27] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[27]),
        .Q(p_1_in1_in[2]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][28] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[28]),
        .Q(p_1_in1_in[3]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][29] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[29]),
        .Q(p_1_in1_in[4]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][2] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[2]),
        .Q(p_0_in3_in[1]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][30] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[30]),
        .Q(p_1_in1_in[5]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][31] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[31]),
        .Q(p_1_in1_in[6]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][3] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[3]),
        .Q(p_0_in3_in[2]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][4] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[4]),
        .Q(p_0_in3_in[3]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][5] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[5]),
        .Q(p_0_in3_in[4]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][6] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[6]),
        .Q(p_0_in3_in[5]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][7] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[7]),
        .Q(p_0_in3_in[6]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][8] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[8]),
        .Q(\lastLR_reg_n_0_[0][8] ),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[0][9] 
       (.C(aclk),
        .CE(tvalid0),
        .D(s_axis_lr_tdata[9]),
        .Q(p_1_in[0]),
        .R(\lastLR[0][31]_i_1_n_0 ));
  FDRE \lastLR_reg[1][1] 
       (.C(aclk),
        .CE(tvalid0),
        .D(p_0_in3_in[0]),
        .Q(p_1_in5_in[0]),
        .R(1'b0));
  FDRE \lastLR_reg[1][2] 
       (.C(aclk),
        .CE(tvalid0),
        .D(p_0_in3_in[1]),
        .Q(p_1_in5_in[1]),
        .R(1'b0));
  FDRE \lastLR_reg[1][3] 
       (.C(aclk),
        .CE(tvalid0),
        .D(p_0_in3_in[2]),
        .Q(p_1_in5_in[2]),
        .R(1'b0));
  FDRE \lastLR_reg[1][4] 
       (.C(aclk),
        .CE(tvalid0),
        .D(p_0_in3_in[3]),
        .Q(p_1_in5_in[3]),
        .R(1'b0));
  FDRE \lastLR_reg[1][5] 
       (.C(aclk),
        .CE(tvalid0),
        .D(p_0_in3_in[4]),
        .Q(p_1_in5_in[4]),
        .R(1'b0));
  FDRE \lastLR_reg[1][6] 
       (.C(aclk),
        .CE(tvalid0),
        .D(p_0_in3_in[5]),
        .Q(p_1_in5_in[5]),
        .R(1'b0));
  FDRE \lastLR_reg[1][7] 
       (.C(aclk),
        .CE(tvalid0),
        .D(p_0_in3_in[6]),
        .Q(p_1_in5_in[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[0]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[0]),
        .I5(\m_axis_disp_tdata[16]_i_2_n_0 ),
        .O(\switch_img[3] [0]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[10]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[10]),
        .I5(\m_axis_disp_tdata[18]_i_2_n_0 ),
        .O(\switch_img[3] [10]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[11]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[11]),
        .I5(\m_axis_disp_tdata[19]_i_2_n_0 ),
        .O(\switch_img[3] [11]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[12]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[12]),
        .I5(\m_axis_disp_tdata[20]_i_2_n_0 ),
        .O(\switch_img[3] [12]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[13]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[13]),
        .I5(\m_axis_disp_tdata[21]_i_2_n_0 ),
        .O(\switch_img[3] [13]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[14]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[14]),
        .I5(\m_axis_disp_tdata[22]_i_2_n_0 ),
        .O(\switch_img[3] [14]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[15]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[15]),
        .I5(\m_axis_disp_tdata[23]_i_2_n_0 ),
        .O(\switch_img[3] [15]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[16]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[16]),
        .I5(\m_axis_disp_tdata[16]_i_2_n_0 ),
        .O(\switch_img[3] [16]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[16]_i_2 
       (.I0(tdataL[0]),
        .I1(tdataR[0]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [0]),
        .O(\m_axis_disp_tdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[17]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[17]),
        .I5(\m_axis_disp_tdata[17]_i_2_n_0 ),
        .O(\switch_img[3] [17]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[17]_i_2 
       (.I0(tdataL[1]),
        .I1(tdataR[1]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [1]),
        .O(\m_axis_disp_tdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[18]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[18]),
        .I5(\m_axis_disp_tdata[18]_i_2_n_0 ),
        .O(\switch_img[3] [18]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[18]_i_2 
       (.I0(tdataL[2]),
        .I1(tdataR[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [2]),
        .O(\m_axis_disp_tdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[19]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[19]),
        .I5(\m_axis_disp_tdata[19]_i_2_n_0 ),
        .O(\switch_img[3] [19]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[19]_i_2 
       (.I0(tdataL[3]),
        .I1(tdataR[3]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [3]),
        .O(\m_axis_disp_tdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[1]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[1]),
        .I5(\m_axis_disp_tdata[17]_i_2_n_0 ),
        .O(\switch_img[3] [1]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[20]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[20]),
        .I5(\m_axis_disp_tdata[20]_i_2_n_0 ),
        .O(\switch_img[3] [20]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[20]_i_2 
       (.I0(tdataL[4]),
        .I1(tdataR[4]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [4]),
        .O(\m_axis_disp_tdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[21]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[21]),
        .I5(\m_axis_disp_tdata[21]_i_2_n_0 ),
        .O(\switch_img[3] [21]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[21]_i_2 
       (.I0(tdataL[5]),
        .I1(tdataR[5]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [5]),
        .O(\m_axis_disp_tdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[22]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[22]),
        .I5(\m_axis_disp_tdata[22]_i_2_n_0 ),
        .O(\switch_img[3] [22]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[22]_i_2 
       (.I0(tdataL[6]),
        .I1(tdataR[6]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [6]),
        .O(\m_axis_disp_tdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[23]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_disp_tdata[23]_i_2_n_0 ),
        .O(\switch_img[3] [23]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[23]_i_2 
       (.I0(tdataL[7]),
        .I1(tdataR[7]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[16] [8]),
        .I5(\m_axis_disp_tdata_reg[16] [7]),
        .O(\m_axis_disp_tdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[24]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[24]),
        .I5(\m_axis_disp_tdata[40]_i_2_n_0 ),
        .O(\switch_img[3] [24]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[25]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[25]),
        .I5(\m_axis_disp_tdata[41]_i_2_n_0 ),
        .O(\switch_img[3] [25]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[26]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[26]),
        .I5(\m_axis_disp_tdata[42]_i_2_n_0 ),
        .O(\switch_img[3] [26]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[27]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[27]),
        .I5(\m_axis_disp_tdata[43]_i_2_n_0 ),
        .O(\switch_img[3] [27]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[28]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[28]),
        .I5(\m_axis_disp_tdata[44]_i_2_n_0 ),
        .O(\switch_img[3] [28]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[29]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[29]),
        .I5(\m_axis_disp_tdata[45]_i_2_n_0 ),
        .O(\switch_img[3] [29]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[2]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[2]),
        .I5(\m_axis_disp_tdata[18]_i_2_n_0 ),
        .O(\switch_img[3] [2]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[30]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[30]),
        .I5(\m_axis_disp_tdata[46]_i_2_n_0 ),
        .O(\switch_img[3] [30]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[31]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[31]),
        .I5(\m_axis_disp_tdata[47]_i_2_n_0 ),
        .O(\switch_img[3] [31]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[32]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[32]),
        .I5(\m_axis_disp_tdata[40]_i_2_n_0 ),
        .O(\switch_img[3] [32]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[33]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[33]),
        .I5(\m_axis_disp_tdata[41]_i_2_n_0 ),
        .O(\switch_img[3] [33]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[34]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[34]),
        .I5(\m_axis_disp_tdata[42]_i_2_n_0 ),
        .O(\switch_img[3] [34]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[35]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[35]),
        .I5(\m_axis_disp_tdata[43]_i_2_n_0 ),
        .O(\switch_img[3] [35]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[36]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[36]),
        .I5(\m_axis_disp_tdata[44]_i_2_n_0 ),
        .O(\switch_img[3] [36]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[37]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[37]),
        .I5(\m_axis_disp_tdata[45]_i_2_n_0 ),
        .O(\switch_img[3] [37]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[38]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[38]),
        .I5(\m_axis_disp_tdata[46]_i_2_n_0 ),
        .O(\switch_img[3] [38]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[39]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[39]),
        .I5(\m_axis_disp_tdata[47]_i_2_n_0 ),
        .O(\switch_img[3] [39]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[3]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[3]),
        .I5(\m_axis_disp_tdata[19]_i_2_n_0 ),
        .O(\switch_img[3] [3]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[40]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[40]),
        .I5(\m_axis_disp_tdata[40]_i_2_n_0 ),
        .O(\switch_img[3] [40]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[40]_i_2 
       (.I0(tdataL[8]),
        .I1(tdataR[8]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [0]),
        .O(\m_axis_disp_tdata[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[41]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[41]),
        .I5(\m_axis_disp_tdata[41]_i_2_n_0 ),
        .O(\switch_img[3] [41]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[41]_i_2 
       (.I0(tdataL[9]),
        .I1(tdataR[9]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [1]),
        .O(\m_axis_disp_tdata[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[42]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[42]),
        .I5(\m_axis_disp_tdata[42]_i_2_n_0 ),
        .O(\switch_img[3] [42]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[42]_i_2 
       (.I0(tdataL[10]),
        .I1(tdataR[10]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [2]),
        .O(\m_axis_disp_tdata[42]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[43]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[43]),
        .I5(\m_axis_disp_tdata[43]_i_2_n_0 ),
        .O(\switch_img[3] [43]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[43]_i_2 
       (.I0(tdataL[11]),
        .I1(tdataR[11]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [3]),
        .O(\m_axis_disp_tdata[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[44]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[44]),
        .I5(\m_axis_disp_tdata[44]_i_2_n_0 ),
        .O(\switch_img[3] [44]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[44]_i_2 
       (.I0(tdataL[12]),
        .I1(tdataR[12]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [4]),
        .O(\m_axis_disp_tdata[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[45]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[45]),
        .I5(\m_axis_disp_tdata[45]_i_2_n_0 ),
        .O(\switch_img[3] [45]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[45]_i_2 
       (.I0(tdataL[13]),
        .I1(tdataR[13]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [5]),
        .O(\m_axis_disp_tdata[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[46]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[46]),
        .I5(\m_axis_disp_tdata[46]_i_2_n_0 ),
        .O(\switch_img[3] [46]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[46]_i_2 
       (.I0(tdataL[14]),
        .I1(tdataR[14]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [6]),
        .O(\m_axis_disp_tdata[46]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[47]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[47]),
        .I5(\m_axis_disp_tdata[47]_i_2_n_0 ),
        .O(\switch_img[3] [47]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[47]_i_2 
       (.I0(tdataL[15]),
        .I1(tdataR[15]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[40] [8]),
        .I5(\m_axis_disp_tdata_reg[40] [7]),
        .O(\m_axis_disp_tdata[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[48]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[48]),
        .I5(\m_axis_disp_tdata[64]_i_2_n_0 ),
        .O(\switch_img[3] [48]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[49]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[49]),
        .I5(\m_axis_disp_tdata[65]_i_2_n_0 ),
        .O(\switch_img[3] [49]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[4]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[4]),
        .I5(\m_axis_disp_tdata[20]_i_2_n_0 ),
        .O(\switch_img[3] [4]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[50]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[50]),
        .I5(\m_axis_disp_tdata[66]_i_2_n_0 ),
        .O(\switch_img[3] [50]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[51]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[51]),
        .I5(\m_axis_disp_tdata[67]_i_2_n_0 ),
        .O(\switch_img[3] [51]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[52]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[52]),
        .I5(\m_axis_disp_tdata[68]_i_2_n_0 ),
        .O(\switch_img[3] [52]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[53]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[53]),
        .I5(\m_axis_disp_tdata[69]_i_2_n_0 ),
        .O(\switch_img[3] [53]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[54]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[54]),
        .I5(\m_axis_disp_tdata[70]_i_2_n_0 ),
        .O(\switch_img[3] [54]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[55]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[55]),
        .I5(\m_axis_disp_tdata[71]_i_2_n_0 ),
        .O(\switch_img[3] [55]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[56]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[56]),
        .I5(\m_axis_disp_tdata[64]_i_2_n_0 ),
        .O(\switch_img[3] [56]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[57]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[57]),
        .I5(\m_axis_disp_tdata[65]_i_2_n_0 ),
        .O(\switch_img[3] [57]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[58]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[58]),
        .I5(\m_axis_disp_tdata[66]_i_2_n_0 ),
        .O(\switch_img[3] [58]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[59]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[59]),
        .I5(\m_axis_disp_tdata[67]_i_2_n_0 ),
        .O(\switch_img[3] [59]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[5]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[5]),
        .I5(\m_axis_disp_tdata[21]_i_2_n_0 ),
        .O(\switch_img[3] [5]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[60]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[60]),
        .I5(\m_axis_disp_tdata[68]_i_2_n_0 ),
        .O(\switch_img[3] [60]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[61]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[61]),
        .I5(\m_axis_disp_tdata[69]_i_2_n_0 ),
        .O(\switch_img[3] [61]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[62]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[62]),
        .I5(\m_axis_disp_tdata[70]_i_2_n_0 ),
        .O(\switch_img[3] [62]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[63]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[63]),
        .I5(\m_axis_disp_tdata[71]_i_2_n_0 ),
        .O(\switch_img[3] [63]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[64]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[64]),
        .I5(\m_axis_disp_tdata[64]_i_2_n_0 ),
        .O(\switch_img[3] [64]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[64]_i_2 
       (.I0(tdataL[16]),
        .I1(tdataR[16]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [0]),
        .O(\m_axis_disp_tdata[64]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[65]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[65]),
        .I5(\m_axis_disp_tdata[65]_i_2_n_0 ),
        .O(\switch_img[3] [65]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[65]_i_2 
       (.I0(tdataL[17]),
        .I1(tdataR[17]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [1]),
        .O(\m_axis_disp_tdata[65]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[66]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[66]),
        .I5(\m_axis_disp_tdata[66]_i_2_n_0 ),
        .O(\switch_img[3] [66]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[66]_i_2 
       (.I0(tdataL[18]),
        .I1(tdataR[18]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [2]),
        .O(\m_axis_disp_tdata[66]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[67]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[67]),
        .I5(\m_axis_disp_tdata[67]_i_2_n_0 ),
        .O(\switch_img[3] [67]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[67]_i_2 
       (.I0(tdataL[19]),
        .I1(tdataR[19]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [3]),
        .O(\m_axis_disp_tdata[67]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[68]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[68]),
        .I5(\m_axis_disp_tdata[68]_i_2_n_0 ),
        .O(\switch_img[3] [68]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[68]_i_2 
       (.I0(tdataL[20]),
        .I1(tdataR[20]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [4]),
        .O(\m_axis_disp_tdata[68]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[69]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[69]),
        .I5(\m_axis_disp_tdata[69]_i_2_n_0 ),
        .O(\switch_img[3] [69]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[69]_i_2 
       (.I0(tdataL[21]),
        .I1(tdataR[21]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [5]),
        .O(\m_axis_disp_tdata[69]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[6]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[6]),
        .I5(\m_axis_disp_tdata[22]_i_2_n_0 ),
        .O(\switch_img[3] [6]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[70]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[70]),
        .I5(\m_axis_disp_tdata[70]_i_2_n_0 ),
        .O(\switch_img[3] [70]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[70]_i_2 
       (.I0(tdataL[22]),
        .I1(tdataR[22]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [6]),
        .O(\m_axis_disp_tdata[70]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[71]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[71]),
        .I5(\m_axis_disp_tdata[71]_i_2_n_0 ),
        .O(\switch_img[3] [71]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[71]_i_2 
       (.I0(tdataL[23]),
        .I1(tdataR[23]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\m_axis_disp_tdata_reg[64] [8]),
        .I5(\m_axis_disp_tdata_reg[64] [7]),
        .O(\m_axis_disp_tdata[71]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[72]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[72]),
        .I5(\m_axis_disp_tdata[88]_i_2_n_0 ),
        .O(\switch_img[3] [72]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[73]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[73]),
        .I5(\m_axis_disp_tdata[89]_i_2_n_0 ),
        .O(\switch_img[3] [73]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[74]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[74]),
        .I5(\m_axis_disp_tdata[90]_i_2_n_0 ),
        .O(\switch_img[3] [74]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[75]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[75]),
        .I5(\m_axis_disp_tdata[91]_i_2_n_0 ),
        .O(\switch_img[3] [75]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[76]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[76]),
        .I5(\m_axis_disp_tdata[92]_i_2_n_0 ),
        .O(\switch_img[3] [76]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[77]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[77]),
        .I5(\m_axis_disp_tdata[93]_i_2_n_0 ),
        .O(\switch_img[3] [77]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[78]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[78]),
        .I5(\m_axis_disp_tdata[94]_i_2_n_0 ),
        .O(\switch_img[3] [78]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[79]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[79]),
        .I5(\m_axis_disp_tdata[95]_i_2_n_0 ),
        .O(\switch_img[3] [79]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[7]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[7]),
        .I5(\m_axis_disp_tdata[23]_i_2_n_0 ),
        .O(\switch_img[3] [7]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[80]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[80]),
        .I5(\m_axis_disp_tdata[88]_i_2_n_0 ),
        .O(\switch_img[3] [80]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[81]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[81]),
        .I5(\m_axis_disp_tdata[89]_i_2_n_0 ),
        .O(\switch_img[3] [81]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[82]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[82]),
        .I5(\m_axis_disp_tdata[90]_i_2_n_0 ),
        .O(\switch_img[3] [82]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[83]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[83]),
        .I5(\m_axis_disp_tdata[91]_i_2_n_0 ),
        .O(\switch_img[3] [83]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[84]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[84]),
        .I5(\m_axis_disp_tdata[92]_i_2_n_0 ),
        .O(\switch_img[3] [84]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[85]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[85]),
        .I5(\m_axis_disp_tdata[93]_i_2_n_0 ),
        .O(\switch_img[3] [85]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[86]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[86]),
        .I5(\m_axis_disp_tdata[94]_i_2_n_0 ),
        .O(\switch_img[3] [86]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[87]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[87]),
        .I5(\m_axis_disp_tdata[95]_i_2_n_0 ),
        .O(\switch_img[3] [87]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[88]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[88]),
        .I5(\m_axis_disp_tdata[88]_i_2_n_0 ),
        .O(\switch_img[3] [88]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[88]_i_2 
       (.I0(tdataL[24]),
        .I1(tdataR[24]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [0]),
        .O(\m_axis_disp_tdata[88]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[89]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[89]),
        .I5(\m_axis_disp_tdata[89]_i_2_n_0 ),
        .O(\switch_img[3] [89]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[89]_i_2 
       (.I0(tdataL[25]),
        .I1(tdataR[25]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [1]),
        .O(\m_axis_disp_tdata[89]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[8]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[8]),
        .I5(\m_axis_disp_tdata[16]_i_2_n_0 ),
        .O(\switch_img[3] [8]));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[90]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[90]),
        .I5(\m_axis_disp_tdata[90]_i_2_n_0 ),
        .O(\switch_img[3] [90]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[90]_i_2 
       (.I0(tdataL[26]),
        .I1(tdataR[26]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [2]),
        .O(\m_axis_disp_tdata[90]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[91]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[91]),
        .I5(\m_axis_disp_tdata[91]_i_2_n_0 ),
        .O(\switch_img[3] [91]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[91]_i_2 
       (.I0(tdataL[27]),
        .I1(tdataR[27]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [3]),
        .O(\m_axis_disp_tdata[91]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[92]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[92]),
        .I5(\m_axis_disp_tdata[92]_i_2_n_0 ),
        .O(\switch_img[3] [92]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[92]_i_2 
       (.I0(tdataL[28]),
        .I1(tdataR[28]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [4]),
        .O(\m_axis_disp_tdata[92]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[93]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[93]),
        .I5(\m_axis_disp_tdata[93]_i_2_n_0 ),
        .O(\switch_img[3] [93]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[93]_i_2 
       (.I0(tdataL[29]),
        .I1(tdataR[29]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [5]),
        .O(\m_axis_disp_tdata[93]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[94]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[94]),
        .I5(\m_axis_disp_tdata[94]_i_2_n_0 ),
        .O(\switch_img[3] [94]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[94]_i_2 
       (.I0(tdataL[30]),
        .I1(tdataR[30]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [6]),
        .O(\m_axis_disp_tdata[94]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[95]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[95]),
        .I5(\m_axis_disp_tdata[95]_i_2_n_0 ),
        .O(\switch_img[3] [95]));
  LUT6 #(
    .INIT(64'hCAF0CAF0CAF0CA00)) 
    \m_axis_disp_tdata[95]_i_2 
       (.I0(tdataL[31]),
        .I1(tdataR[31]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(\tdataL_reg[3]_0 [8]),
        .I5(\tdataL_reg[3]_0 [7]),
        .O(\m_axis_disp_tdata[95]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111EEEF0000)) 
    \m_axis_disp_tdata[9]_i_1 
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .I2(switch_img[0]),
        .I3(switch_img[1]),
        .I4(s_axis_tdata[9]),
        .I5(\m_axis_disp_tdata[17]_i_2_n_0 ),
        .O(\switch_img[3] [9]));
  LUT6 #(
    .INIT(64'hFB0BFB08F808FB08)) 
    m_axis_disp_tlast_i_1
       (.I0(p_0_in),
        .I1(switch_img[1]),
        .I2(m_axis_disp_tlast_reg),
        .I3(s_axis_tlast),
        .I4(switch_img[0]),
        .I5(D),
        .O(\tlast_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    m_axis_disp_tuser_i_2
       (.I0(tuser),
        .I1(p_0_in),
        .I2(\tlast_reg_n_0_[0] ),
        .I3(s_axis_lr_tvalid_buf),
        .I4(switch_img[1]),
        .O(\tuser_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    m_axis_disp_tvalid_i_3
       (.I0(p_0_in0_in),
        .I1(p_0_in),
        .I2(\tlast_reg_n_0_[0] ),
        .I3(s_axis_lr_tvalid_buf),
        .I4(switch_img[1]),
        .O(\tvalid_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_lr_tvalid_buf_reg
       (.C(aclk),
        .CE(1'b1),
        .D(Q),
        .Q(s_axis_lr_tvalid_buf),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[19]_i_2 
       (.I0(p_1_in1_in[3]),
        .I1(p_1_in[3]),
        .O(\tdataL[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[19]_i_3 
       (.I0(p_1_in1_in[2]),
        .I1(p_1_in[2]),
        .O(\tdataL[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[19]_i_4 
       (.I0(p_1_in1_in[1]),
        .I1(p_1_in[1]),
        .O(\tdataL[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[19]_i_5 
       (.I0(p_1_in1_in[0]),
        .I1(p_1_in[0]),
        .O(\tdataL[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[23]_i_2 
       (.I0(p_1_in1_in[6]),
        .I1(p_1_in[6]),
        .O(\tdataL[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[23]_i_3 
       (.I0(p_1_in1_in[5]),
        .I1(p_1_in[5]),
        .O(\tdataL[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[23]_i_4 
       (.I0(p_1_in1_in[4]),
        .I1(p_1_in[4]),
        .O(\tdataL[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h56AA56AA56AA5656)) 
    \tdataL[3]_i_2 
       (.I0(p_1_in[3]),
        .I1(\tdataL_reg[3]_0 [8]),
        .I2(\tdataL_reg[3]_0 [4]),
        .I3(Q),
        .I4(p_0_in),
        .I5(\tlast_reg_n_0_[0] ),
        .O(\tdataL[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h56AA56AA56AA5656)) 
    \tdataL[3]_i_3 
       (.I0(p_1_in[2]),
        .I1(\tdataL_reg[3]_0 [8]),
        .I2(\tdataL_reg[3]_0 [3]),
        .I3(Q),
        .I4(p_0_in),
        .I5(\tlast_reg_n_0_[0] ),
        .O(\tdataL[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h56AA56AA56AA5656)) 
    \tdataL[3]_i_4 
       (.I0(p_1_in[1]),
        .I1(\tdataL_reg[3]_0 [8]),
        .I2(\tdataL_reg[3]_0 [2]),
        .I3(Q),
        .I4(p_0_in),
        .I5(\tlast_reg_n_0_[0] ),
        .O(\tdataL[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h56AA56AA56AA5656)) 
    \tdataL[3]_i_5 
       (.I0(p_1_in[0]),
        .I1(\tdataL_reg[3]_0 [8]),
        .I2(\tdataL_reg[3]_0 [1]),
        .I3(Q),
        .I4(p_0_in),
        .I5(\tlast_reg_n_0_[0] ),
        .O(\tdataL[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56AA56AA56AA5656)) 
    \tdataL[7]_i_2 
       (.I0(p_1_in[6]),
        .I1(\tdataL_reg[3]_0 [8]),
        .I2(\tdataL_reg[3]_0 [7]),
        .I3(Q),
        .I4(p_0_in),
        .I5(\tlast_reg_n_0_[0] ),
        .O(\tdataL[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h56AA56AA56AA5656)) 
    \tdataL[7]_i_3 
       (.I0(p_1_in[5]),
        .I1(\tdataL_reg[3]_0 [8]),
        .I2(\tdataL_reg[3]_0 [6]),
        .I3(Q),
        .I4(p_0_in),
        .I5(\tlast_reg_n_0_[0] ),
        .O(\tdataL[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h56AA56AA56AA5656)) 
    \tdataL[7]_i_4 
       (.I0(p_1_in[4]),
        .I1(\tdataL_reg[3]_0 [8]),
        .I2(\tdataL_reg[3]_0 [5]),
        .I3(Q),
        .I4(p_0_in),
        .I5(\tlast_reg_n_0_[0] ),
        .O(\tdataL[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[0]),
        .Q(tdataL[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(tdataL[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(tdataL[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(tdataL[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(tdataL[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(tdataL[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(tdataL[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[0]),
        .Q(tdataL[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[1]),
        .Q(tdataL[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[2]),
        .Q(tdataL[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[3]),
        .Q(tdataL[19]),
        .R(1'b0));
  CARRY4 \tdataL_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\tdataL_reg[19]_i_1_n_0 ,\tdataL_reg[19]_i_1_n_1 ,\tdataL_reg[19]_i_1_n_2 ,\tdataL_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in1_in[3:0]),
        .O(tdataL02_out[3:0]),
        .S({\tdataL[19]_i_2_n_0 ,\tdataL[19]_i_3_n_0 ,\tdataL[19]_i_4_n_0 ,\tdataL[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[1]),
        .Q(tdataL[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[4]),
        .Q(tdataL[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[5]),
        .Q(tdataL[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[6]),
        .Q(tdataL[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL02_out[7]),
        .Q(tdataL[23]),
        .R(1'b0));
  CARRY4 \tdataL_reg[23]_i_1 
       (.CI(\tdataL_reg[19]_i_1_n_0 ),
        .CO({tdataL02_out[7],\NLW_tdataL_reg[23]_i_1_CO_UNCONNECTED [2],\tdataL_reg[23]_i_1_n_2 ,\tdataL_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in1_in[6:4]}),
        .O({\NLW_tdataL_reg[23]_i_1_O_UNCONNECTED [3],tdataL02_out[6:4]}),
        .S({1'b1,\tdataL[23]_i_2_n_0 ,\tdataL[23]_i_3_n_0 ,\tdataL[23]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][24] ),
        .Q(tdataL[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in1_in[0]),
        .Q(tdataL[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in1_in[1]),
        .Q(tdataL[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in1_in[2]),
        .Q(tdataL[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in1_in[3]),
        .Q(tdataL[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in1_in[4]),
        .Q(tdataL[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[2]),
        .Q(tdataL[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in1_in[5]),
        .Q(tdataL[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in1_in[6]),
        .Q(tdataL[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[3]),
        .Q(tdataL[3]),
        .R(1'b0));
  CARRY4 \tdataL_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tdataL_reg[3]_i_1_n_0 ,\tdataL_reg[3]_i_1_n_1 ,\tdataL_reg[3]_i_1_n_2 ,\tdataL_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in[3:0]),
        .O(tdataL0[3:0]),
        .S({\tdataL[3]_i_2_n_0 ,\tdataL[3]_i_3_n_0 ,\tdataL[3]_i_4_n_0 ,\tdataL[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[4]),
        .Q(tdataL[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[5]),
        .Q(tdataL[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[6]),
        .Q(tdataL[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataL0[7]),
        .Q(tdataL[7]),
        .R(1'b0));
  CARRY4 \tdataL_reg[7]_i_1 
       (.CI(\tdataL_reg[3]_i_1_n_0 ),
        .CO({tdataL0[7],\NLW_tdataL_reg[7]_i_1_CO_UNCONNECTED [2],\tdataL_reg[7]_i_1_n_2 ,\tdataL_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[6:4]}),
        .O({\NLW_tdataL_reg[7]_i_1_O_UNCONNECTED [3],tdataL0[6:4]}),
        .S({1'b1,\tdataL[7]_i_2_n_0 ,\tdataL[7]_i_3_n_0 ,\tdataL[7]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][8] ),
        .Q(tdataL[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(tdataL[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[11]_i_2 
       (.I0(\lastLR_reg_n_0_[0][20] ),
        .I1(p_0_in3_in[3]),
        .O(\tdataR[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[11]_i_3 
       (.I0(\lastLR_reg_n_0_[0][19] ),
        .I1(p_0_in3_in[2]),
        .O(\tdataR[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[11]_i_4 
       (.I0(\lastLR_reg_n_0_[0][18] ),
        .I1(p_0_in3_in[1]),
        .O(\tdataR[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[11]_i_5 
       (.I0(\lastLR_reg_n_0_[0][17] ),
        .I1(p_0_in3_in[0]),
        .O(\tdataR[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[15]_i_2 
       (.I0(\lastLR_reg_n_0_[0][23] ),
        .I1(p_0_in3_in[6]),
        .O(\tdataR[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[15]_i_3 
       (.I0(\lastLR_reg_n_0_[0][22] ),
        .I1(p_0_in3_in[5]),
        .O(\tdataR[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[15]_i_4 
       (.I0(\lastLR_reg_n_0_[0][21] ),
        .I1(p_0_in3_in[4]),
        .O(\tdataR[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[27]_i_2 
       (.I0(p_1_in5_in[3]),
        .I1(\lastLR_reg_n_0_[0][20] ),
        .O(\tdataR[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[27]_i_3 
       (.I0(p_1_in5_in[2]),
        .I1(\lastLR_reg_n_0_[0][19] ),
        .O(\tdataR[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[27]_i_4 
       (.I0(p_1_in5_in[1]),
        .I1(\lastLR_reg_n_0_[0][18] ),
        .O(\tdataR[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[27]_i_5 
       (.I0(p_1_in5_in[0]),
        .I1(\lastLR_reg_n_0_[0][17] ),
        .O(\tdataR[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[31]_i_2 
       (.I0(p_1_in5_in[6]),
        .I1(\lastLR_reg_n_0_[0][23] ),
        .O(\tdataR[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[31]_i_3 
       (.I0(p_1_in5_in[5]),
        .I1(\lastLR_reg_n_0_[0][22] ),
        .O(\tdataR[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[31]_i_4 
       (.I0(p_1_in5_in[4]),
        .I1(\lastLR_reg_n_0_[0][21] ),
        .O(\tdataR[31]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][0] ),
        .Q(tdataR[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[2]),
        .Q(tdataR[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[3]),
        .Q(tdataR[11]),
        .R(1'b0));
  CARRY4 \tdataR_reg[11]_i_1 
       (.CI(1'b0),
        .CO({\tdataR_reg[11]_i_1_n_0 ,\tdataR_reg[11]_i_1_n_1 ,\tdataR_reg[11]_i_1_n_2 ,\tdataR_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\lastLR_reg_n_0_[0][20] ,\lastLR_reg_n_0_[0][19] ,\lastLR_reg_n_0_[0][18] ,\lastLR_reg_n_0_[0][17] }),
        .O(tdataR0[3:0]),
        .S({\tdataR[11]_i_2_n_0 ,\tdataR[11]_i_3_n_0 ,\tdataR[11]_i_4_n_0 ,\tdataR[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[4]),
        .Q(tdataR[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[5]),
        .Q(tdataR[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[6]),
        .Q(tdataR[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[7]),
        .Q(tdataR[15]),
        .R(1'b0));
  CARRY4 \tdataR_reg[15]_i_1 
       (.CI(\tdataR_reg[11]_i_1_n_0 ),
        .CO({tdataR0[7],\NLW_tdataR_reg[15]_i_1_CO_UNCONNECTED [2],\tdataR_reg[15]_i_1_n_2 ,\tdataR_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\lastLR_reg_n_0_[0][23] ,\lastLR_reg_n_0_[0][22] ,\lastLR_reg_n_0_[0][21] }),
        .O({\NLW_tdataR_reg[15]_i_1_O_UNCONNECTED [3],tdataR0[6:4]}),
        .S({1'b1,\tdataR[15]_i_2_n_0 ,\tdataR[15]_i_3_n_0 ,\tdataR[15]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][16] ),
        .Q(tdataR[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][17] ),
        .Q(tdataR[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][18] ),
        .Q(tdataR[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][19] ),
        .Q(tdataR[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in3_in[0]),
        .Q(tdataR[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][20] ),
        .Q(tdataR[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][21] ),
        .Q(tdataR[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][22] ),
        .Q(tdataR[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][23] ),
        .Q(tdataR[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[0]),
        .Q(tdataR[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[1]),
        .Q(tdataR[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[2]),
        .Q(tdataR[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[3]),
        .Q(tdataR[27]),
        .R(1'b0));
  CARRY4 \tdataR_reg[27]_i_1 
       (.CI(1'b0),
        .CO({\tdataR_reg[27]_i_1_n_0 ,\tdataR_reg[27]_i_1_n_1 ,\tdataR_reg[27]_i_1_n_2 ,\tdataR_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in5_in[3:0]),
        .O(tdataR06_out[3:0]),
        .S({\tdataR[27]_i_2_n_0 ,\tdataR[27]_i_3_n_0 ,\tdataR[27]_i_4_n_0 ,\tdataR[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[4]),
        .Q(tdataR[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[5]),
        .Q(tdataR[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in3_in[1]),
        .Q(tdataR[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[6]),
        .Q(tdataR[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR06_out[7]),
        .Q(tdataR[31]),
        .R(1'b0));
  CARRY4 \tdataR_reg[31]_i_1 
       (.CI(\tdataR_reg[27]_i_1_n_0 ),
        .CO({tdataR06_out[7],\NLW_tdataR_reg[31]_i_1_CO_UNCONNECTED [2],\tdataR_reg[31]_i_1_n_2 ,\tdataR_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in5_in[6:4]}),
        .O({\NLW_tdataR_reg[31]_i_1_O_UNCONNECTED [3],tdataR06_out[6:4]}),
        .S({1'b1,\tdataR[31]_i_2_n_0 ,\tdataR[31]_i_3_n_0 ,\tdataR[31]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in3_in[2]),
        .Q(tdataR[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in3_in[3]),
        .Q(tdataR[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in3_in[4]),
        .Q(tdataR[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in3_in[5]),
        .Q(tdataR[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in3_in[6]),
        .Q(tdataR[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[0]),
        .Q(tdataR[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(tdataR0[1]),
        .Q(tdataR[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \tlast[1]_i_1 
       (.I0(p_0_in),
        .I1(\tlast_reg_n_0_[0] ),
        .I2(Q),
        .O(tvalid0));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_reg[0] 
       (.C(aclk),
        .CE(tvalid0),
        .D(D),
        .Q(\tlast_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_reg[1] 
       (.C(aclk),
        .CE(tvalid0),
        .D(\tlast_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tuser_reg[0] 
       (.C(aclk),
        .CE(tvalid0),
        .D(\tuser_reg[0]_0 ),
        .Q(\tuser_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tuser_reg[1] 
       (.C(aclk),
        .CE(tvalid0),
        .D(\tuser_reg_n_0_[0] ),
        .Q(tuser),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tvalid_reg[0] 
       (.C(aclk),
        .CE(tvalid0),
        .D(Q),
        .Q(\tvalid_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tvalid_reg[1] 
       (.C(aclk),
        .CE(tvalid0),
        .D(\tvalid_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0
   (s_axis_tvalid_0,
    Q,
    s_axis_tuser_0,
    \tuser_reg[1]_0 ,
    s_axis_lr_tdata,
    \sum4_reg[16]_0 ,
    \sum3_reg[16]_0 ,
    \sum2_reg[16]_0 ,
    \sum1_reg[16]_0 ,
    \tlast_reg[1]_0 ,
    s_axis_tdata,
    m_axis_disp_tvalid_reg,
    s_axis_tvalid,
    switch_img,
    m_axis_disp_tvalid_reg_0,
    s_axis_tuser,
    m_axis_disp_tuser_reg,
    aclk,
    s_axis_tlast);
  output s_axis_tvalid_0;
  output [0:0]Q;
  output s_axis_tuser_0;
  output [0:0]\tuser_reg[1]_0 ;
  output [31:0]s_axis_lr_tdata;
  output [8:0]\sum4_reg[16]_0 ;
  output [8:0]\sum3_reg[16]_0 ;
  output [8:0]\sum2_reg[16]_0 ;
  output [8:0]\sum1_reg[16]_0 ;
  output [0:0]\tlast_reg[1]_0 ;
  input [95:0]s_axis_tdata;
  input m_axis_disp_tvalid_reg;
  input s_axis_tvalid;
  input [1:0]switch_img;
  input m_axis_disp_tvalid_reg_0;
  input s_axis_tuser;
  input m_axis_disp_tuser_reg;
  input aclk;
  input s_axis_tlast;

  wire [14:1]C;
  wire CEP;
  wire [14:1]C__0;
  wire [14:1]C__1;
  wire [14:1]C__2;
  wire [0:0]Q;
  wire aclk;
  wire [12:0]b1;
  wire [12:1]b10;
  wire b10__24_carry__0_i_1_n_0;
  wire b10__24_carry__0_i_2_n_0;
  wire b10__24_carry__0_i_3_n_0;
  wire b10__24_carry__0_i_4_n_0;
  wire b10__24_carry__0_i_5_n_0;
  wire b10__24_carry__0_i_6_n_0;
  wire b10__24_carry__0_i_7_n_0;
  wire b10__24_carry__0_i_8_n_0;
  wire b10__24_carry__0_n_0;
  wire b10__24_carry__0_n_1;
  wire b10__24_carry__0_n_2;
  wire b10__24_carry__0_n_3;
  wire b10__24_carry__1_i_1_n_0;
  wire b10__24_carry__1_i_2_n_0;
  wire b10__24_carry__1_i_3_n_0;
  wire b10__24_carry__1_n_3;
  wire b10__24_carry_i_1_n_0;
  wire b10__24_carry_i_2_n_0;
  wire b10__24_carry_i_3_n_0;
  wire b10__24_carry_i_4_n_0;
  wire b10__24_carry_i_5_n_0;
  wire b10__24_carry_i_6_n_0;
  wire b10__24_carry_i_7_n_0;
  wire b10__24_carry_n_0;
  wire b10__24_carry_n_1;
  wire b10__24_carry_n_2;
  wire b10__24_carry_n_3;
  wire b10_carry__0_i_1_n_0;
  wire b10_carry__0_i_2_n_0;
  wire b10_carry__0_i_3_n_0;
  wire b10_carry__0_n_0;
  wire b10_carry__0_n_1;
  wire b10_carry__0_n_2;
  wire b10_carry__0_n_3;
  wire b10_carry__0_n_4;
  wire b10_carry__0_n_5;
  wire b10_carry__0_n_6;
  wire b10_carry__0_n_7;
  wire b10_carry__1_n_2;
  wire b10_carry__1_n_7;
  wire b10_carry_i_1_n_0;
  wire b10_carry_i_2_n_0;
  wire b10_carry_i_3_n_0;
  wire b10_carry_n_0;
  wire b10_carry_n_1;
  wire b10_carry_n_2;
  wire b10_carry_n_3;
  wire b10_carry_n_4;
  wire b10_carry_n_5;
  wire [12:0]b2;
  wire [12:1]b20;
  wire b20__24_carry__0_i_1_n_0;
  wire b20__24_carry__0_i_2_n_0;
  wire b20__24_carry__0_i_3_n_0;
  wire b20__24_carry__0_i_4_n_0;
  wire b20__24_carry__0_i_5_n_0;
  wire b20__24_carry__0_i_6_n_0;
  wire b20__24_carry__0_i_7_n_0;
  wire b20__24_carry__0_i_8_n_0;
  wire b20__24_carry__0_n_0;
  wire b20__24_carry__0_n_1;
  wire b20__24_carry__0_n_2;
  wire b20__24_carry__0_n_3;
  wire b20__24_carry__1_i_1_n_0;
  wire b20__24_carry__1_i_2_n_0;
  wire b20__24_carry__1_i_3_n_0;
  wire b20__24_carry__1_n_3;
  wire b20__24_carry_i_1_n_0;
  wire b20__24_carry_i_2_n_0;
  wire b20__24_carry_i_3_n_0;
  wire b20__24_carry_i_4_n_0;
  wire b20__24_carry_i_5_n_0;
  wire b20__24_carry_i_6_n_0;
  wire b20__24_carry_i_7_n_0;
  wire b20__24_carry_n_0;
  wire b20__24_carry_n_1;
  wire b20__24_carry_n_2;
  wire b20__24_carry_n_3;
  wire b20_carry__0_i_1_n_0;
  wire b20_carry__0_i_2_n_0;
  wire b20_carry__0_i_3_n_0;
  wire b20_carry__0_n_0;
  wire b20_carry__0_n_1;
  wire b20_carry__0_n_2;
  wire b20_carry__0_n_3;
  wire b20_carry__0_n_4;
  wire b20_carry__0_n_5;
  wire b20_carry__0_n_6;
  wire b20_carry__0_n_7;
  wire b20_carry__1_n_2;
  wire b20_carry__1_n_7;
  wire b20_carry_i_1_n_0;
  wire b20_carry_i_2_n_0;
  wire b20_carry_i_3_n_0;
  wire b20_carry_n_0;
  wire b20_carry_n_1;
  wire b20_carry_n_2;
  wire b20_carry_n_3;
  wire b20_carry_n_4;
  wire b20_carry_n_5;
  wire [12:0]b3;
  wire [12:1]b30;
  wire b30__24_carry__0_i_1_n_0;
  wire b30__24_carry__0_i_2_n_0;
  wire b30__24_carry__0_i_3_n_0;
  wire b30__24_carry__0_i_4_n_0;
  wire b30__24_carry__0_i_5_n_0;
  wire b30__24_carry__0_i_6_n_0;
  wire b30__24_carry__0_i_7_n_0;
  wire b30__24_carry__0_i_8_n_0;
  wire b30__24_carry__0_n_0;
  wire b30__24_carry__0_n_1;
  wire b30__24_carry__0_n_2;
  wire b30__24_carry__0_n_3;
  wire b30__24_carry__1_i_1_n_0;
  wire b30__24_carry__1_i_2_n_0;
  wire b30__24_carry__1_i_3_n_0;
  wire b30__24_carry__1_n_3;
  wire b30__24_carry_i_1_n_0;
  wire b30__24_carry_i_2_n_0;
  wire b30__24_carry_i_3_n_0;
  wire b30__24_carry_i_4_n_0;
  wire b30__24_carry_i_5_n_0;
  wire b30__24_carry_i_6_n_0;
  wire b30__24_carry_i_7_n_0;
  wire b30__24_carry_n_0;
  wire b30__24_carry_n_1;
  wire b30__24_carry_n_2;
  wire b30__24_carry_n_3;
  wire b30_carry__0_i_1_n_0;
  wire b30_carry__0_i_2_n_0;
  wire b30_carry__0_i_3_n_0;
  wire b30_carry__0_n_0;
  wire b30_carry__0_n_1;
  wire b30_carry__0_n_2;
  wire b30_carry__0_n_3;
  wire b30_carry__0_n_4;
  wire b30_carry__0_n_5;
  wire b30_carry__0_n_6;
  wire b30_carry__0_n_7;
  wire b30_carry__1_n_2;
  wire b30_carry__1_n_7;
  wire b30_carry_i_1_n_0;
  wire b30_carry_i_2_n_0;
  wire b30_carry_i_3_n_0;
  wire b30_carry_n_0;
  wire b30_carry_n_1;
  wire b30_carry_n_2;
  wire b30_carry_n_3;
  wire b30_carry_n_4;
  wire b30_carry_n_5;
  wire [12:0]b4;
  wire [12:1]b40;
  wire b40__24_carry__0_i_1_n_0;
  wire b40__24_carry__0_i_2_n_0;
  wire b40__24_carry__0_i_3_n_0;
  wire b40__24_carry__0_i_4_n_0;
  wire b40__24_carry__0_i_5_n_0;
  wire b40__24_carry__0_i_6_n_0;
  wire b40__24_carry__0_i_7_n_0;
  wire b40__24_carry__0_i_8_n_0;
  wire b40__24_carry__0_n_0;
  wire b40__24_carry__0_n_1;
  wire b40__24_carry__0_n_2;
  wire b40__24_carry__0_n_3;
  wire b40__24_carry__1_i_1_n_0;
  wire b40__24_carry__1_i_2_n_0;
  wire b40__24_carry__1_i_3_n_0;
  wire b40__24_carry__1_n_3;
  wire b40__24_carry_i_1_n_0;
  wire b40__24_carry_i_2_n_0;
  wire b40__24_carry_i_3_n_0;
  wire b40__24_carry_i_4_n_0;
  wire b40__24_carry_i_5_n_0;
  wire b40__24_carry_i_6_n_0;
  wire b40__24_carry_i_7_n_0;
  wire b40__24_carry_n_0;
  wire b40__24_carry_n_1;
  wire b40__24_carry_n_2;
  wire b40__24_carry_n_3;
  wire b40_carry__0_i_1_n_0;
  wire b40_carry__0_i_2_n_0;
  wire b40_carry__0_i_3_n_0;
  wire b40_carry__0_n_0;
  wire b40_carry__0_n_1;
  wire b40_carry__0_n_2;
  wire b40_carry__0_n_3;
  wire b40_carry__0_n_4;
  wire b40_carry__0_n_5;
  wire b40_carry__0_n_6;
  wire b40_carry__0_n_7;
  wire b40_carry__1_n_2;
  wire b40_carry__1_n_7;
  wire b40_carry_i_1_n_0;
  wire b40_carry_i_2_n_0;
  wire b40_carry_i_3_n_0;
  wire b40_carry_n_0;
  wire b40_carry_n_1;
  wire b40_carry_n_2;
  wire b40_carry_n_3;
  wire b40_carry_n_4;
  wire b40_carry_n_5;
  wire [15:1]g1;
  wire [15:1]g10;
  wire g10__27_carry__0_i_1_n_0;
  wire g10__27_carry__0_i_2_n_0;
  wire g10__27_carry__0_i_3_n_0;
  wire g10__27_carry__0_i_4_n_0;
  wire g10__27_carry__0_i_5_n_0;
  wire g10__27_carry__0_i_6_n_0;
  wire g10__27_carry__0_i_7_n_0;
  wire g10__27_carry__0_n_0;
  wire g10__27_carry__0_n_1;
  wire g10__27_carry__0_n_2;
  wire g10__27_carry__0_n_3;
  wire g10__27_carry__1_i_1_n_0;
  wire g10__27_carry__1_i_2_n_0;
  wire g10__27_carry__1_i_3_n_0;
  wire g10__27_carry__1_i_4_n_0;
  wire g10__27_carry__1_i_5_n_0;
  wire g10__27_carry__1_i_6_n_0;
  wire g10__27_carry__1_i_7_n_0;
  wire g10__27_carry__1_i_8_n_0;
  wire g10__27_carry__1_n_0;
  wire g10__27_carry__1_n_1;
  wire g10__27_carry__1_n_2;
  wire g10__27_carry__1_n_3;
  wire g10__27_carry__2_i_1_n_0;
  wire g10__27_carry_i_1_n_0;
  wire g10__27_carry_i_2_n_0;
  wire g10__27_carry_i_3_n_0;
  wire g10__27_carry_n_0;
  wire g10__27_carry_n_1;
  wire g10__27_carry_n_2;
  wire g10__27_carry_n_3;
  wire g10_carry__0_i_1_n_0;
  wire g10_carry__0_i_2_n_0;
  wire g10_carry__0_i_3_n_0;
  wire g10_carry__0_i_4_n_0;
  wire g10_carry__0_n_0;
  wire g10_carry__0_n_1;
  wire g10_carry__0_n_2;
  wire g10_carry__0_n_3;
  wire g10_carry__0_n_4;
  wire g10_carry__0_n_5;
  wire g10_carry__0_n_6;
  wire g10_carry__0_n_7;
  wire g10_carry__1_i_1_n_0;
  wire g10_carry__1_i_2_n_0;
  wire g10_carry__1_n_1;
  wire g10_carry__1_n_3;
  wire g10_carry__1_n_6;
  wire g10_carry__1_n_7;
  wire g10_carry_i_1_n_0;
  wire g10_carry_i_2_n_0;
  wire g10_carry_i_3_n_0;
  wire g10_carry_n_0;
  wire g10_carry_n_1;
  wire g10_carry_n_2;
  wire g10_carry_n_3;
  wire g10_carry_n_4;
  wire g10_carry_n_5;
  wire [15:1]g2;
  wire [15:1]g20;
  wire g20__27_carry__0_i_1_n_0;
  wire g20__27_carry__0_i_2_n_0;
  wire g20__27_carry__0_i_3_n_0;
  wire g20__27_carry__0_i_4_n_0;
  wire g20__27_carry__0_i_5_n_0;
  wire g20__27_carry__0_i_6_n_0;
  wire g20__27_carry__0_i_7_n_0;
  wire g20__27_carry__0_n_0;
  wire g20__27_carry__0_n_1;
  wire g20__27_carry__0_n_2;
  wire g20__27_carry__0_n_3;
  wire g20__27_carry__1_i_1_n_0;
  wire g20__27_carry__1_i_2_n_0;
  wire g20__27_carry__1_i_3_n_0;
  wire g20__27_carry__1_i_4_n_0;
  wire g20__27_carry__1_i_5_n_0;
  wire g20__27_carry__1_i_6_n_0;
  wire g20__27_carry__1_i_7_n_0;
  wire g20__27_carry__1_i_8_n_0;
  wire g20__27_carry__1_n_0;
  wire g20__27_carry__1_n_1;
  wire g20__27_carry__1_n_2;
  wire g20__27_carry__1_n_3;
  wire g20__27_carry__2_i_1_n_0;
  wire g20__27_carry_i_1_n_0;
  wire g20__27_carry_i_2_n_0;
  wire g20__27_carry_i_3_n_0;
  wire g20__27_carry_n_0;
  wire g20__27_carry_n_1;
  wire g20__27_carry_n_2;
  wire g20__27_carry_n_3;
  wire g20_carry__0_i_1_n_0;
  wire g20_carry__0_i_2_n_0;
  wire g20_carry__0_i_3_n_0;
  wire g20_carry__0_i_4_n_0;
  wire g20_carry__0_n_0;
  wire g20_carry__0_n_1;
  wire g20_carry__0_n_2;
  wire g20_carry__0_n_3;
  wire g20_carry__0_n_4;
  wire g20_carry__0_n_5;
  wire g20_carry__0_n_6;
  wire g20_carry__0_n_7;
  wire g20_carry__1_i_1_n_0;
  wire g20_carry__1_i_2_n_0;
  wire g20_carry__1_n_1;
  wire g20_carry__1_n_3;
  wire g20_carry__1_n_6;
  wire g20_carry__1_n_7;
  wire g20_carry_i_1_n_0;
  wire g20_carry_i_2_n_0;
  wire g20_carry_i_3_n_0;
  wire g20_carry_n_0;
  wire g20_carry_n_1;
  wire g20_carry_n_2;
  wire g20_carry_n_3;
  wire g20_carry_n_4;
  wire g20_carry_n_5;
  wire [15:1]g3;
  wire [15:1]g30;
  wire g30__27_carry__0_i_1_n_0;
  wire g30__27_carry__0_i_2_n_0;
  wire g30__27_carry__0_i_3_n_0;
  wire g30__27_carry__0_i_4_n_0;
  wire g30__27_carry__0_i_5_n_0;
  wire g30__27_carry__0_i_6_n_0;
  wire g30__27_carry__0_i_7_n_0;
  wire g30__27_carry__0_n_0;
  wire g30__27_carry__0_n_1;
  wire g30__27_carry__0_n_2;
  wire g30__27_carry__0_n_3;
  wire g30__27_carry__1_i_1_n_0;
  wire g30__27_carry__1_i_2_n_0;
  wire g30__27_carry__1_i_3_n_0;
  wire g30__27_carry__1_i_4_n_0;
  wire g30__27_carry__1_i_5_n_0;
  wire g30__27_carry__1_i_6_n_0;
  wire g30__27_carry__1_i_7_n_0;
  wire g30__27_carry__1_i_8_n_0;
  wire g30__27_carry__1_n_0;
  wire g30__27_carry__1_n_1;
  wire g30__27_carry__1_n_2;
  wire g30__27_carry__1_n_3;
  wire g30__27_carry__2_i_1_n_0;
  wire g30__27_carry_i_1_n_0;
  wire g30__27_carry_i_2_n_0;
  wire g30__27_carry_i_3_n_0;
  wire g30__27_carry_n_0;
  wire g30__27_carry_n_1;
  wire g30__27_carry_n_2;
  wire g30__27_carry_n_3;
  wire g30_carry__0_i_1_n_0;
  wire g30_carry__0_i_2_n_0;
  wire g30_carry__0_i_3_n_0;
  wire g30_carry__0_i_4_n_0;
  wire g30_carry__0_n_0;
  wire g30_carry__0_n_1;
  wire g30_carry__0_n_2;
  wire g30_carry__0_n_3;
  wire g30_carry__0_n_4;
  wire g30_carry__0_n_5;
  wire g30_carry__0_n_6;
  wire g30_carry__0_n_7;
  wire g30_carry__1_i_1_n_0;
  wire g30_carry__1_i_2_n_0;
  wire g30_carry__1_n_1;
  wire g30_carry__1_n_3;
  wire g30_carry__1_n_6;
  wire g30_carry__1_n_7;
  wire g30_carry_i_1_n_0;
  wire g30_carry_i_2_n_0;
  wire g30_carry_i_3_n_0;
  wire g30_carry_n_0;
  wire g30_carry_n_1;
  wire g30_carry_n_2;
  wire g30_carry_n_3;
  wire g30_carry_n_4;
  wire g30_carry_n_5;
  wire [15:1]g4;
  wire [15:1]g40;
  wire g40__27_carry__0_i_1_n_0;
  wire g40__27_carry__0_i_2_n_0;
  wire g40__27_carry__0_i_3_n_0;
  wire g40__27_carry__0_i_4_n_0;
  wire g40__27_carry__0_i_5_n_0;
  wire g40__27_carry__0_i_6_n_0;
  wire g40__27_carry__0_i_7_n_0;
  wire g40__27_carry__0_n_0;
  wire g40__27_carry__0_n_1;
  wire g40__27_carry__0_n_2;
  wire g40__27_carry__0_n_3;
  wire g40__27_carry__1_i_1_n_0;
  wire g40__27_carry__1_i_2_n_0;
  wire g40__27_carry__1_i_3_n_0;
  wire g40__27_carry__1_i_4_n_0;
  wire g40__27_carry__1_i_5_n_0;
  wire g40__27_carry__1_i_6_n_0;
  wire g40__27_carry__1_i_7_n_0;
  wire g40__27_carry__1_i_8_n_0;
  wire g40__27_carry__1_n_0;
  wire g40__27_carry__1_n_1;
  wire g40__27_carry__1_n_2;
  wire g40__27_carry__1_n_3;
  wire g40__27_carry__2_i_1_n_0;
  wire g40__27_carry_i_1_n_0;
  wire g40__27_carry_i_2_n_0;
  wire g40__27_carry_i_3_n_0;
  wire g40__27_carry_n_0;
  wire g40__27_carry_n_1;
  wire g40__27_carry_n_2;
  wire g40__27_carry_n_3;
  wire g40_carry__0_i_1_n_0;
  wire g40_carry__0_i_2_n_0;
  wire g40_carry__0_i_3_n_0;
  wire g40_carry__0_i_4_n_0;
  wire g40_carry__0_n_0;
  wire g40_carry__0_n_1;
  wire g40_carry__0_n_2;
  wire g40_carry__0_n_3;
  wire g40_carry__0_n_4;
  wire g40_carry__0_n_5;
  wire g40_carry__0_n_6;
  wire g40_carry__0_n_7;
  wire g40_carry__1_i_1_n_0;
  wire g40_carry__1_i_2_n_0;
  wire g40_carry__1_n_1;
  wire g40_carry__1_n_3;
  wire g40_carry__1_n_6;
  wire g40_carry__1_n_7;
  wire g40_carry_i_1_n_0;
  wire g40_carry_i_2_n_0;
  wire g40_carry_i_3_n_0;
  wire g40_carry_n_0;
  wire g40_carry_n_1;
  wire g40_carry_n_2;
  wire g40_carry_n_3;
  wire g40_carry_n_4;
  wire g40_carry_n_5;
  wire m_axis_disp_tuser_reg;
  wire m_axis_disp_tvalid_reg;
  wire m_axis_disp_tvalid_reg_0;
  wire [14:0]r1;
  wire [14:1]r10;
  wire r10__25_carry__0_i_1_n_0;
  wire r10__25_carry__0_i_2_n_0;
  wire r10__25_carry__0_i_3_n_0;
  wire r10__25_carry__0_i_4_n_0;
  wire r10__25_carry__0_i_5_n_0;
  wire r10__25_carry__0_i_6_n_0;
  wire r10__25_carry__0_i_7_n_0;
  wire r10__25_carry__0_n_0;
  wire r10__25_carry__0_n_1;
  wire r10__25_carry__0_n_2;
  wire r10__25_carry__0_n_3;
  wire r10__25_carry__1_i_1_n_0;
  wire r10__25_carry__1_i_2_n_0;
  wire r10__25_carry__1_i_3_n_0;
  wire r10__25_carry__1_n_0;
  wire r10__25_carry__1_n_1;
  wire r10__25_carry__1_n_2;
  wire r10__25_carry__1_n_3;
  wire r10__25_carry_i_1_n_0;
  wire r10__25_carry_i_2_n_0;
  wire r10__25_carry_i_3_n_0;
  wire r10__25_carry_n_0;
  wire r10__25_carry_n_1;
  wire r10__25_carry_n_2;
  wire r10__25_carry_n_3;
  wire r10_carry__0_i_1_n_0;
  wire r10_carry__0_i_2_n_0;
  wire r10_carry__0_i_3_n_0;
  wire r10_carry__0_n_0;
  wire r10_carry__0_n_1;
  wire r10_carry__0_n_2;
  wire r10_carry__0_n_3;
  wire r10_carry__0_n_4;
  wire r10_carry__0_n_5;
  wire r10_carry__0_n_6;
  wire r10_carry__0_n_7;
  wire r10_carry__1_n_2;
  wire r10_carry__1_n_7;
  wire r10_carry_i_1_n_0;
  wire r10_carry_i_2_n_0;
  wire r10_carry_i_3_n_0;
  wire r10_carry_n_0;
  wire r10_carry_n_1;
  wire r10_carry_n_2;
  wire r10_carry_n_3;
  wire r10_carry_n_4;
  wire r10_carry_n_5;
  wire r10_carry_n_6;
  wire [14:0]r2;
  wire [14:1]r20;
  wire r20__25_carry__0_i_1_n_0;
  wire r20__25_carry__0_i_2_n_0;
  wire r20__25_carry__0_i_3_n_0;
  wire r20__25_carry__0_i_4_n_0;
  wire r20__25_carry__0_i_5_n_0;
  wire r20__25_carry__0_i_6_n_0;
  wire r20__25_carry__0_i_7_n_0;
  wire r20__25_carry__0_n_0;
  wire r20__25_carry__0_n_1;
  wire r20__25_carry__0_n_2;
  wire r20__25_carry__0_n_3;
  wire r20__25_carry__1_i_1_n_0;
  wire r20__25_carry__1_i_2_n_0;
  wire r20__25_carry__1_i_3_n_0;
  wire r20__25_carry__1_n_0;
  wire r20__25_carry__1_n_1;
  wire r20__25_carry__1_n_2;
  wire r20__25_carry__1_n_3;
  wire r20__25_carry_i_1_n_0;
  wire r20__25_carry_i_2_n_0;
  wire r20__25_carry_i_3_n_0;
  wire r20__25_carry_n_0;
  wire r20__25_carry_n_1;
  wire r20__25_carry_n_2;
  wire r20__25_carry_n_3;
  wire r20_carry__0_i_1_n_0;
  wire r20_carry__0_i_2_n_0;
  wire r20_carry__0_i_3_n_0;
  wire r20_carry__0_n_0;
  wire r20_carry__0_n_1;
  wire r20_carry__0_n_2;
  wire r20_carry__0_n_3;
  wire r20_carry__0_n_4;
  wire r20_carry__0_n_5;
  wire r20_carry__0_n_6;
  wire r20_carry__0_n_7;
  wire r20_carry__1_n_2;
  wire r20_carry__1_n_7;
  wire r20_carry_i_1_n_0;
  wire r20_carry_i_2_n_0;
  wire r20_carry_i_3_n_0;
  wire r20_carry_n_0;
  wire r20_carry_n_1;
  wire r20_carry_n_2;
  wire r20_carry_n_3;
  wire r20_carry_n_4;
  wire r20_carry_n_5;
  wire r20_carry_n_6;
  wire [14:0]r3;
  wire [14:1]r30;
  wire r30__25_carry__0_i_1_n_0;
  wire r30__25_carry__0_i_2_n_0;
  wire r30__25_carry__0_i_3_n_0;
  wire r30__25_carry__0_i_4_n_0;
  wire r30__25_carry__0_i_5_n_0;
  wire r30__25_carry__0_i_6_n_0;
  wire r30__25_carry__0_i_7_n_0;
  wire r30__25_carry__0_n_0;
  wire r30__25_carry__0_n_1;
  wire r30__25_carry__0_n_2;
  wire r30__25_carry__0_n_3;
  wire r30__25_carry__1_i_1_n_0;
  wire r30__25_carry__1_i_2_n_0;
  wire r30__25_carry__1_i_3_n_0;
  wire r30__25_carry__1_n_0;
  wire r30__25_carry__1_n_1;
  wire r30__25_carry__1_n_2;
  wire r30__25_carry__1_n_3;
  wire r30__25_carry_i_1_n_0;
  wire r30__25_carry_i_2_n_0;
  wire r30__25_carry_i_3_n_0;
  wire r30__25_carry_n_0;
  wire r30__25_carry_n_1;
  wire r30__25_carry_n_2;
  wire r30__25_carry_n_3;
  wire r30_carry__0_i_1_n_0;
  wire r30_carry__0_i_2_n_0;
  wire r30_carry__0_i_3_n_0;
  wire r30_carry__0_n_0;
  wire r30_carry__0_n_1;
  wire r30_carry__0_n_2;
  wire r30_carry__0_n_3;
  wire r30_carry__0_n_4;
  wire r30_carry__0_n_5;
  wire r30_carry__0_n_6;
  wire r30_carry__0_n_7;
  wire r30_carry__1_n_2;
  wire r30_carry__1_n_7;
  wire r30_carry_i_1_n_0;
  wire r30_carry_i_2_n_0;
  wire r30_carry_i_3_n_0;
  wire r30_carry_n_0;
  wire r30_carry_n_1;
  wire r30_carry_n_2;
  wire r30_carry_n_3;
  wire r30_carry_n_4;
  wire r30_carry_n_5;
  wire r30_carry_n_6;
  wire [14:0]r4;
  wire [14:1]r40;
  wire r40__25_carry__0_i_1_n_0;
  wire r40__25_carry__0_i_2_n_0;
  wire r40__25_carry__0_i_3_n_0;
  wire r40__25_carry__0_i_4_n_0;
  wire r40__25_carry__0_i_5_n_0;
  wire r40__25_carry__0_i_6_n_0;
  wire r40__25_carry__0_i_7_n_0;
  wire r40__25_carry__0_n_0;
  wire r40__25_carry__0_n_1;
  wire r40__25_carry__0_n_2;
  wire r40__25_carry__0_n_3;
  wire r40__25_carry__1_i_1_n_0;
  wire r40__25_carry__1_i_2_n_0;
  wire r40__25_carry__1_i_3_n_0;
  wire r40__25_carry__1_n_0;
  wire r40__25_carry__1_n_1;
  wire r40__25_carry__1_n_2;
  wire r40__25_carry__1_n_3;
  wire r40__25_carry_i_1_n_0;
  wire r40__25_carry_i_2_n_0;
  wire r40__25_carry_i_3_n_0;
  wire r40__25_carry_n_0;
  wire r40__25_carry_n_1;
  wire r40__25_carry_n_2;
  wire r40__25_carry_n_3;
  wire r40_carry__0_i_1_n_0;
  wire r40_carry__0_i_2_n_0;
  wire r40_carry__0_i_3_n_0;
  wire r40_carry__0_n_0;
  wire r40_carry__0_n_1;
  wire r40_carry__0_n_2;
  wire r40_carry__0_n_3;
  wire r40_carry__0_n_4;
  wire r40_carry__0_n_5;
  wire r40_carry__0_n_6;
  wire r40_carry__0_n_7;
  wire r40_carry__1_n_2;
  wire r40_carry__1_n_7;
  wire r40_carry_i_1_n_0;
  wire r40_carry_i_2_n_0;
  wire r40_carry_i_3_n_0;
  wire r40_carry_n_0;
  wire r40_carry_n_1;
  wire r40_carry_n_2;
  wire r40_carry_n_3;
  wire r40_carry_n_4;
  wire r40_carry_n_5;
  wire r40_carry_n_6;
  wire [31:0]s_axis_lr_tdata;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tuser_0;
  wire s_axis_tvalid;
  wire s_axis_tvalid_0;
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
  wire [8:0]\sum1_reg[16]_0 ;
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
  wire [8:0]\sum2_reg[16]_0 ;
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
  wire [8:0]\sum3_reg[16]_0 ;
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
  wire [8:0]\sum4_reg[16]_0 ;
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
  wire [1:0]switch_img;
  wire [0:0]\tlast_reg[1]_0 ;
  wire \tlast_reg_n_0_[0] ;
  wire [0:0]\tuser_reg[1]_0 ;
  wire \tuser_reg_n_0_[0] ;
  wire [3:1]NLW_b10__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_b10__24_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_b10_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_b10_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_b20__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_b20__24_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_b20_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_b20_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_b30__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_b30__24_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_b30_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_b30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_b40__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_b40__24_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_b40_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_b40_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_g10__27_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_g10__27_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_g10_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_g10_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_g20__27_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_g20__27_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_g20_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_g20_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_g30__27_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_g30__27_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_g30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_g30_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_g40__27_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_g40__27_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_g40_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_g40_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_r10_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_r10_carry__1_O_UNCONNECTED;
  wire [3:1]\NLW_r1_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r1_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_r20_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_r20_carry__1_O_UNCONNECTED;
  wire [3:1]\NLW_r2_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r2_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_r30_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_r30_carry__1_O_UNCONNECTED;
  wire [3:1]\NLW_r3_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r3_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_r40_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_r40_carry__1_O_UNCONNECTED;
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

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b10__24_carry
       (.CI(1'b0),
        .CO({b10__24_carry_n_0,b10__24_carry_n_1,b10__24_carry_n_2,b10__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({b10__24_carry_i_1_n_0,b10__24_carry_i_2_n_0,b10__24_carry_i_3_n_0,1'b0}),
        .O(b10[6:3]),
        .S({b10__24_carry_i_4_n_0,b10__24_carry_i_5_n_0,b10__24_carry_i_6_n_0,b10__24_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b10__24_carry__0
       (.CI(b10__24_carry_n_0),
        .CO({b10__24_carry__0_n_0,b10__24_carry__0_n_1,b10__24_carry__0_n_2,b10__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({b10__24_carry__0_i_1_n_0,b10__24_carry__0_i_2_n_0,b10__24_carry__0_i_3_n_0,b10__24_carry__0_i_4_n_0}),
        .O(b10[10:7]),
        .S({b10__24_carry__0_i_5_n_0,b10__24_carry__0_i_6_n_0,b10__24_carry__0_i_7_n_0,b10__24_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b10__24_carry__0_i_1
       (.I0(s_axis_tdata[12]),
        .I1(b10_carry__1_n_7),
        .I2(s_axis_tdata[14]),
        .O(b10__24_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b10__24_carry__0_i_2
       (.I0(s_axis_tdata[11]),
        .I1(b10_carry__0_n_4),
        .I2(s_axis_tdata[13]),
        .O(b10__24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b10__24_carry__0_i_3
       (.I0(s_axis_tdata[10]),
        .I1(b10_carry__0_n_5),
        .I2(s_axis_tdata[12]),
        .O(b10__24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b10__24_carry__0_i_4
       (.I0(s_axis_tdata[9]),
        .I1(b10_carry__0_n_6),
        .I2(s_axis_tdata[11]),
        .O(b10__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b10__24_carry__0_i_5
       (.I0(s_axis_tdata[14]),
        .I1(b10_carry__1_n_7),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[15]),
        .I4(b10_carry__1_n_2),
        .I5(s_axis_tdata[13]),
        .O(b10__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b10__24_carry__0_i_6
       (.I0(s_axis_tdata[13]),
        .I1(b10_carry__0_n_4),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[14]),
        .I4(b10_carry__1_n_7),
        .I5(s_axis_tdata[12]),
        .O(b10__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b10__24_carry__0_i_7
       (.I0(s_axis_tdata[12]),
        .I1(b10_carry__0_n_5),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[13]),
        .I4(b10_carry__0_n_4),
        .I5(s_axis_tdata[11]),
        .O(b10__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b10__24_carry__0_i_8
       (.I0(s_axis_tdata[11]),
        .I1(b10_carry__0_n_6),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[12]),
        .I4(b10_carry__0_n_5),
        .I5(s_axis_tdata[10]),
        .O(b10__24_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b10__24_carry__1
       (.CI(b10__24_carry__0_n_0),
        .CO({NLW_b10__24_carry__1_CO_UNCONNECTED[3:1],b10__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b10__24_carry__1_i_1_n_0}),
        .O({NLW_b10__24_carry__1_O_UNCONNECTED[3:2],b10[12:11]}),
        .S({1'b0,1'b0,b10__24_carry__1_i_2_n_0,b10__24_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b10__24_carry__1_i_1
       (.I0(s_axis_tdata[13]),
        .I1(b10_carry__1_n_2),
        .I2(s_axis_tdata[15]),
        .O(b10__24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    b10__24_carry__1_i_2
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[15]),
        .O(b10__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hD42B)) 
    b10__24_carry__1_i_3
       (.I0(s_axis_tdata[15]),
        .I1(b10_carry__1_n_2),
        .I2(s_axis_tdata[13]),
        .I3(s_axis_tdata[14]),
        .O(b10__24_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b10__24_carry_i_1
       (.I0(s_axis_tdata[8]),
        .I1(b10_carry__0_n_7),
        .I2(s_axis_tdata[10]),
        .O(b10__24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    b10__24_carry_i_2
       (.I0(s_axis_tdata[8]),
        .I1(b10_carry__0_n_7),
        .I2(s_axis_tdata[10]),
        .O(b10__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    b10__24_carry_i_3
       (.I0(b10_carry_n_5),
        .I1(s_axis_tdata[8]),
        .O(b10__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b10__24_carry_i_4
       (.I0(s_axis_tdata[10]),
        .I1(b10_carry__0_n_7),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[11]),
        .I4(b10_carry__0_n_6),
        .I5(s_axis_tdata[9]),
        .O(b10__24_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    b10__24_carry_i_5
       (.I0(s_axis_tdata[10]),
        .I1(b10_carry__0_n_7),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(b10_carry_n_4),
        .O(b10__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    b10__24_carry_i_6
       (.I0(s_axis_tdata[8]),
        .I1(b10_carry_n_5),
        .I2(b10_carry_n_4),
        .I3(s_axis_tdata[9]),
        .O(b10__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b10__24_carry_i_7
       (.I0(s_axis_tdata[8]),
        .I1(b10_carry_n_5),
        .O(b10__24_carry_i_7_n_0));
  CARRY4 b10_carry
       (.CI(1'b0),
        .CO({b10_carry_n_0,b10_carry_n_1,b10_carry_n_2,b10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[12:10],1'b0}),
        .O({b10_carry_n_4,b10_carry_n_5,b10[2:1]}),
        .S({b10_carry_i_1_n_0,b10_carry_i_2_n_0,b10_carry_i_3_n_0,s_axis_tdata[9]}));
  CARRY4 b10_carry__0
       (.CI(b10_carry_n_0),
        .CO({b10_carry__0_n_0,b10_carry__0_n_1,b10_carry__0_n_2,b10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[15:13]}),
        .O({b10_carry__0_n_4,b10_carry__0_n_5,b10_carry__0_n_6,b10_carry__0_n_7}),
        .S({s_axis_tdata[14],b10_carry__0_i_1_n_0,b10_carry__0_i_2_n_0,b10_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    b10_carry__0_i_1
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[13]),
        .O(b10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b10_carry__0_i_2
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[12]),
        .O(b10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b10_carry__0_i_3
       (.I0(s_axis_tdata[13]),
        .I1(s_axis_tdata[11]),
        .O(b10_carry__0_i_3_n_0));
  CARRY4 b10_carry__1
       (.CI(b10_carry__0_n_0),
        .CO({NLW_b10_carry__1_CO_UNCONNECTED[3:2],b10_carry__1_n_2,NLW_b10_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_b10_carry__1_O_UNCONNECTED[3:1],b10_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[15]}));
  LUT2 #(
    .INIT(4'h6)) 
    b10_carry_i_1
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[10]),
        .O(b10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b10_carry_i_2
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[9]),
        .O(b10_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b10_carry_i_3
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[8]),
        .O(b10_carry_i_3_n_0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b20__24_carry
       (.CI(1'b0),
        .CO({b20__24_carry_n_0,b20__24_carry_n_1,b20__24_carry_n_2,b20__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({b20__24_carry_i_1_n_0,b20__24_carry_i_2_n_0,b20__24_carry_i_3_n_0,1'b0}),
        .O(b20[6:3]),
        .S({b20__24_carry_i_4_n_0,b20__24_carry_i_5_n_0,b20__24_carry_i_6_n_0,b20__24_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b20__24_carry__0
       (.CI(b20__24_carry_n_0),
        .CO({b20__24_carry__0_n_0,b20__24_carry__0_n_1,b20__24_carry__0_n_2,b20__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({b20__24_carry__0_i_1_n_0,b20__24_carry__0_i_2_n_0,b20__24_carry__0_i_3_n_0,b20__24_carry__0_i_4_n_0}),
        .O(b20[10:7]),
        .S({b20__24_carry__0_i_5_n_0,b20__24_carry__0_i_6_n_0,b20__24_carry__0_i_7_n_0,b20__24_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b20__24_carry__0_i_1
       (.I0(s_axis_tdata[36]),
        .I1(b20_carry__1_n_7),
        .I2(s_axis_tdata[38]),
        .O(b20__24_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b20__24_carry__0_i_2
       (.I0(s_axis_tdata[35]),
        .I1(b20_carry__0_n_4),
        .I2(s_axis_tdata[37]),
        .O(b20__24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b20__24_carry__0_i_3
       (.I0(s_axis_tdata[34]),
        .I1(b20_carry__0_n_5),
        .I2(s_axis_tdata[36]),
        .O(b20__24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b20__24_carry__0_i_4
       (.I0(s_axis_tdata[33]),
        .I1(b20_carry__0_n_6),
        .I2(s_axis_tdata[35]),
        .O(b20__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b20__24_carry__0_i_5
       (.I0(s_axis_tdata[38]),
        .I1(b20_carry__1_n_7),
        .I2(s_axis_tdata[36]),
        .I3(s_axis_tdata[39]),
        .I4(b20_carry__1_n_2),
        .I5(s_axis_tdata[37]),
        .O(b20__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b20__24_carry__0_i_6
       (.I0(s_axis_tdata[37]),
        .I1(b20_carry__0_n_4),
        .I2(s_axis_tdata[35]),
        .I3(s_axis_tdata[38]),
        .I4(b20_carry__1_n_7),
        .I5(s_axis_tdata[36]),
        .O(b20__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b20__24_carry__0_i_7
       (.I0(s_axis_tdata[36]),
        .I1(b20_carry__0_n_5),
        .I2(s_axis_tdata[34]),
        .I3(s_axis_tdata[37]),
        .I4(b20_carry__0_n_4),
        .I5(s_axis_tdata[35]),
        .O(b20__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b20__24_carry__0_i_8
       (.I0(s_axis_tdata[35]),
        .I1(b20_carry__0_n_6),
        .I2(s_axis_tdata[33]),
        .I3(s_axis_tdata[36]),
        .I4(b20_carry__0_n_5),
        .I5(s_axis_tdata[34]),
        .O(b20__24_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b20__24_carry__1
       (.CI(b20__24_carry__0_n_0),
        .CO({NLW_b20__24_carry__1_CO_UNCONNECTED[3:1],b20__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b20__24_carry__1_i_1_n_0}),
        .O({NLW_b20__24_carry__1_O_UNCONNECTED[3:2],b20[12:11]}),
        .S({1'b0,1'b0,b20__24_carry__1_i_2_n_0,b20__24_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b20__24_carry__1_i_1
       (.I0(s_axis_tdata[37]),
        .I1(b20_carry__1_n_2),
        .I2(s_axis_tdata[39]),
        .O(b20__24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    b20__24_carry__1_i_2
       (.I0(s_axis_tdata[38]),
        .I1(s_axis_tdata[39]),
        .O(b20__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hD42B)) 
    b20__24_carry__1_i_3
       (.I0(s_axis_tdata[39]),
        .I1(b20_carry__1_n_2),
        .I2(s_axis_tdata[37]),
        .I3(s_axis_tdata[38]),
        .O(b20__24_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b20__24_carry_i_1
       (.I0(s_axis_tdata[32]),
        .I1(b20_carry__0_n_7),
        .I2(s_axis_tdata[34]),
        .O(b20__24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    b20__24_carry_i_2
       (.I0(s_axis_tdata[32]),
        .I1(b20_carry__0_n_7),
        .I2(s_axis_tdata[34]),
        .O(b20__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    b20__24_carry_i_3
       (.I0(b20_carry_n_5),
        .I1(s_axis_tdata[32]),
        .O(b20__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b20__24_carry_i_4
       (.I0(s_axis_tdata[34]),
        .I1(b20_carry__0_n_7),
        .I2(s_axis_tdata[32]),
        .I3(s_axis_tdata[35]),
        .I4(b20_carry__0_n_6),
        .I5(s_axis_tdata[33]),
        .O(b20__24_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    b20__24_carry_i_5
       (.I0(s_axis_tdata[34]),
        .I1(b20_carry__0_n_7),
        .I2(s_axis_tdata[32]),
        .I3(s_axis_tdata[33]),
        .I4(b20_carry_n_4),
        .O(b20__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    b20__24_carry_i_6
       (.I0(s_axis_tdata[32]),
        .I1(b20_carry_n_5),
        .I2(b20_carry_n_4),
        .I3(s_axis_tdata[33]),
        .O(b20__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b20__24_carry_i_7
       (.I0(s_axis_tdata[32]),
        .I1(b20_carry_n_5),
        .O(b20__24_carry_i_7_n_0));
  CARRY4 b20_carry
       (.CI(1'b0),
        .CO({b20_carry_n_0,b20_carry_n_1,b20_carry_n_2,b20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[36:34],1'b0}),
        .O({b20_carry_n_4,b20_carry_n_5,b20[2:1]}),
        .S({b20_carry_i_1_n_0,b20_carry_i_2_n_0,b20_carry_i_3_n_0,s_axis_tdata[33]}));
  CARRY4 b20_carry__0
       (.CI(b20_carry_n_0),
        .CO({b20_carry__0_n_0,b20_carry__0_n_1,b20_carry__0_n_2,b20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[39:37]}),
        .O({b20_carry__0_n_4,b20_carry__0_n_5,b20_carry__0_n_6,b20_carry__0_n_7}),
        .S({s_axis_tdata[38],b20_carry__0_i_1_n_0,b20_carry__0_i_2_n_0,b20_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    b20_carry__0_i_1
       (.I0(s_axis_tdata[39]),
        .I1(s_axis_tdata[37]),
        .O(b20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b20_carry__0_i_2
       (.I0(s_axis_tdata[38]),
        .I1(s_axis_tdata[36]),
        .O(b20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b20_carry__0_i_3
       (.I0(s_axis_tdata[37]),
        .I1(s_axis_tdata[35]),
        .O(b20_carry__0_i_3_n_0));
  CARRY4 b20_carry__1
       (.CI(b20_carry__0_n_0),
        .CO({NLW_b20_carry__1_CO_UNCONNECTED[3:2],b20_carry__1_n_2,NLW_b20_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_b20_carry__1_O_UNCONNECTED[3:1],b20_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[39]}));
  LUT2 #(
    .INIT(4'h6)) 
    b20_carry_i_1
       (.I0(s_axis_tdata[36]),
        .I1(s_axis_tdata[34]),
        .O(b20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b20_carry_i_2
       (.I0(s_axis_tdata[35]),
        .I1(s_axis_tdata[33]),
        .O(b20_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b20_carry_i_3
       (.I0(s_axis_tdata[34]),
        .I1(s_axis_tdata[32]),
        .O(b20_carry_i_3_n_0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b30__24_carry
       (.CI(1'b0),
        .CO({b30__24_carry_n_0,b30__24_carry_n_1,b30__24_carry_n_2,b30__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({b30__24_carry_i_1_n_0,b30__24_carry_i_2_n_0,b30__24_carry_i_3_n_0,1'b0}),
        .O(b30[6:3]),
        .S({b30__24_carry_i_4_n_0,b30__24_carry_i_5_n_0,b30__24_carry_i_6_n_0,b30__24_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b30__24_carry__0
       (.CI(b30__24_carry_n_0),
        .CO({b30__24_carry__0_n_0,b30__24_carry__0_n_1,b30__24_carry__0_n_2,b30__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({b30__24_carry__0_i_1_n_0,b30__24_carry__0_i_2_n_0,b30__24_carry__0_i_3_n_0,b30__24_carry__0_i_4_n_0}),
        .O(b30[10:7]),
        .S({b30__24_carry__0_i_5_n_0,b30__24_carry__0_i_6_n_0,b30__24_carry__0_i_7_n_0,b30__24_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b30__24_carry__0_i_1
       (.I0(s_axis_tdata[60]),
        .I1(b30_carry__1_n_7),
        .I2(s_axis_tdata[62]),
        .O(b30__24_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b30__24_carry__0_i_2
       (.I0(s_axis_tdata[59]),
        .I1(b30_carry__0_n_4),
        .I2(s_axis_tdata[61]),
        .O(b30__24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b30__24_carry__0_i_3
       (.I0(s_axis_tdata[58]),
        .I1(b30_carry__0_n_5),
        .I2(s_axis_tdata[60]),
        .O(b30__24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b30__24_carry__0_i_4
       (.I0(s_axis_tdata[57]),
        .I1(b30_carry__0_n_6),
        .I2(s_axis_tdata[59]),
        .O(b30__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b30__24_carry__0_i_5
       (.I0(s_axis_tdata[62]),
        .I1(b30_carry__1_n_7),
        .I2(s_axis_tdata[60]),
        .I3(s_axis_tdata[63]),
        .I4(b30_carry__1_n_2),
        .I5(s_axis_tdata[61]),
        .O(b30__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b30__24_carry__0_i_6
       (.I0(s_axis_tdata[61]),
        .I1(b30_carry__0_n_4),
        .I2(s_axis_tdata[59]),
        .I3(s_axis_tdata[62]),
        .I4(b30_carry__1_n_7),
        .I5(s_axis_tdata[60]),
        .O(b30__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b30__24_carry__0_i_7
       (.I0(s_axis_tdata[60]),
        .I1(b30_carry__0_n_5),
        .I2(s_axis_tdata[58]),
        .I3(s_axis_tdata[61]),
        .I4(b30_carry__0_n_4),
        .I5(s_axis_tdata[59]),
        .O(b30__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b30__24_carry__0_i_8
       (.I0(s_axis_tdata[59]),
        .I1(b30_carry__0_n_6),
        .I2(s_axis_tdata[57]),
        .I3(s_axis_tdata[60]),
        .I4(b30_carry__0_n_5),
        .I5(s_axis_tdata[58]),
        .O(b30__24_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b30__24_carry__1
       (.CI(b30__24_carry__0_n_0),
        .CO({NLW_b30__24_carry__1_CO_UNCONNECTED[3:1],b30__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b30__24_carry__1_i_1_n_0}),
        .O({NLW_b30__24_carry__1_O_UNCONNECTED[3:2],b30[12:11]}),
        .S({1'b0,1'b0,b30__24_carry__1_i_2_n_0,b30__24_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b30__24_carry__1_i_1
       (.I0(s_axis_tdata[61]),
        .I1(b30_carry__1_n_2),
        .I2(s_axis_tdata[63]),
        .O(b30__24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    b30__24_carry__1_i_2
       (.I0(s_axis_tdata[62]),
        .I1(s_axis_tdata[63]),
        .O(b30__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hD42B)) 
    b30__24_carry__1_i_3
       (.I0(s_axis_tdata[63]),
        .I1(b30_carry__1_n_2),
        .I2(s_axis_tdata[61]),
        .I3(s_axis_tdata[62]),
        .O(b30__24_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b30__24_carry_i_1
       (.I0(s_axis_tdata[56]),
        .I1(b30_carry__0_n_7),
        .I2(s_axis_tdata[58]),
        .O(b30__24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    b30__24_carry_i_2
       (.I0(s_axis_tdata[56]),
        .I1(b30_carry__0_n_7),
        .I2(s_axis_tdata[58]),
        .O(b30__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    b30__24_carry_i_3
       (.I0(b30_carry_n_5),
        .I1(s_axis_tdata[56]),
        .O(b30__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b30__24_carry_i_4
       (.I0(s_axis_tdata[58]),
        .I1(b30_carry__0_n_7),
        .I2(s_axis_tdata[56]),
        .I3(s_axis_tdata[59]),
        .I4(b30_carry__0_n_6),
        .I5(s_axis_tdata[57]),
        .O(b30__24_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    b30__24_carry_i_5
       (.I0(s_axis_tdata[58]),
        .I1(b30_carry__0_n_7),
        .I2(s_axis_tdata[56]),
        .I3(s_axis_tdata[57]),
        .I4(b30_carry_n_4),
        .O(b30__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    b30__24_carry_i_6
       (.I0(s_axis_tdata[56]),
        .I1(b30_carry_n_5),
        .I2(b30_carry_n_4),
        .I3(s_axis_tdata[57]),
        .O(b30__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b30__24_carry_i_7
       (.I0(s_axis_tdata[56]),
        .I1(b30_carry_n_5),
        .O(b30__24_carry_i_7_n_0));
  CARRY4 b30_carry
       (.CI(1'b0),
        .CO({b30_carry_n_0,b30_carry_n_1,b30_carry_n_2,b30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[60:58],1'b0}),
        .O({b30_carry_n_4,b30_carry_n_5,b30[2:1]}),
        .S({b30_carry_i_1_n_0,b30_carry_i_2_n_0,b30_carry_i_3_n_0,s_axis_tdata[57]}));
  CARRY4 b30_carry__0
       (.CI(b30_carry_n_0),
        .CO({b30_carry__0_n_0,b30_carry__0_n_1,b30_carry__0_n_2,b30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[63:61]}),
        .O({b30_carry__0_n_4,b30_carry__0_n_5,b30_carry__0_n_6,b30_carry__0_n_7}),
        .S({s_axis_tdata[62],b30_carry__0_i_1_n_0,b30_carry__0_i_2_n_0,b30_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    b30_carry__0_i_1
       (.I0(s_axis_tdata[63]),
        .I1(s_axis_tdata[61]),
        .O(b30_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b30_carry__0_i_2
       (.I0(s_axis_tdata[62]),
        .I1(s_axis_tdata[60]),
        .O(b30_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b30_carry__0_i_3
       (.I0(s_axis_tdata[61]),
        .I1(s_axis_tdata[59]),
        .O(b30_carry__0_i_3_n_0));
  CARRY4 b30_carry__1
       (.CI(b30_carry__0_n_0),
        .CO({NLW_b30_carry__1_CO_UNCONNECTED[3:2],b30_carry__1_n_2,NLW_b30_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_b30_carry__1_O_UNCONNECTED[3:1],b30_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[63]}));
  LUT2 #(
    .INIT(4'h6)) 
    b30_carry_i_1
       (.I0(s_axis_tdata[60]),
        .I1(s_axis_tdata[58]),
        .O(b30_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b30_carry_i_2
       (.I0(s_axis_tdata[59]),
        .I1(s_axis_tdata[57]),
        .O(b30_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b30_carry_i_3
       (.I0(s_axis_tdata[58]),
        .I1(s_axis_tdata[56]),
        .O(b30_carry_i_3_n_0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b40__24_carry
       (.CI(1'b0),
        .CO({b40__24_carry_n_0,b40__24_carry_n_1,b40__24_carry_n_2,b40__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({b40__24_carry_i_1_n_0,b40__24_carry_i_2_n_0,b40__24_carry_i_3_n_0,1'b0}),
        .O(b40[6:3]),
        .S({b40__24_carry_i_4_n_0,b40__24_carry_i_5_n_0,b40__24_carry_i_6_n_0,b40__24_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b40__24_carry__0
       (.CI(b40__24_carry_n_0),
        .CO({b40__24_carry__0_n_0,b40__24_carry__0_n_1,b40__24_carry__0_n_2,b40__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({b40__24_carry__0_i_1_n_0,b40__24_carry__0_i_2_n_0,b40__24_carry__0_i_3_n_0,b40__24_carry__0_i_4_n_0}),
        .O(b40[10:7]),
        .S({b40__24_carry__0_i_5_n_0,b40__24_carry__0_i_6_n_0,b40__24_carry__0_i_7_n_0,b40__24_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b40__24_carry__0_i_1
       (.I0(s_axis_tdata[84]),
        .I1(b40_carry__1_n_7),
        .I2(s_axis_tdata[86]),
        .O(b40__24_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b40__24_carry__0_i_2
       (.I0(s_axis_tdata[83]),
        .I1(b40_carry__0_n_4),
        .I2(s_axis_tdata[85]),
        .O(b40__24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b40__24_carry__0_i_3
       (.I0(s_axis_tdata[82]),
        .I1(b40_carry__0_n_5),
        .I2(s_axis_tdata[84]),
        .O(b40__24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b40__24_carry__0_i_4
       (.I0(s_axis_tdata[81]),
        .I1(b40_carry__0_n_6),
        .I2(s_axis_tdata[83]),
        .O(b40__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b40__24_carry__0_i_5
       (.I0(s_axis_tdata[86]),
        .I1(b40_carry__1_n_7),
        .I2(s_axis_tdata[84]),
        .I3(s_axis_tdata[87]),
        .I4(b40_carry__1_n_2),
        .I5(s_axis_tdata[85]),
        .O(b40__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b40__24_carry__0_i_6
       (.I0(s_axis_tdata[85]),
        .I1(b40_carry__0_n_4),
        .I2(s_axis_tdata[83]),
        .I3(s_axis_tdata[86]),
        .I4(b40_carry__1_n_7),
        .I5(s_axis_tdata[84]),
        .O(b40__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b40__24_carry__0_i_7
       (.I0(s_axis_tdata[84]),
        .I1(b40_carry__0_n_5),
        .I2(s_axis_tdata[82]),
        .I3(s_axis_tdata[85]),
        .I4(b40_carry__0_n_4),
        .I5(s_axis_tdata[83]),
        .O(b40__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b40__24_carry__0_i_8
       (.I0(s_axis_tdata[83]),
        .I1(b40_carry__0_n_6),
        .I2(s_axis_tdata[81]),
        .I3(s_axis_tdata[84]),
        .I4(b40_carry__0_n_5),
        .I5(s_axis_tdata[82]),
        .O(b40__24_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b40__24_carry__1
       (.CI(b40__24_carry__0_n_0),
        .CO({NLW_b40__24_carry__1_CO_UNCONNECTED[3:1],b40__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b40__24_carry__1_i_1_n_0}),
        .O({NLW_b40__24_carry__1_O_UNCONNECTED[3:2],b40[12:11]}),
        .S({1'b0,1'b0,b40__24_carry__1_i_2_n_0,b40__24_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'h8E)) 
    b40__24_carry__1_i_1
       (.I0(s_axis_tdata[85]),
        .I1(b40_carry__1_n_2),
        .I2(s_axis_tdata[87]),
        .O(b40__24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    b40__24_carry__1_i_2
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_tdata[87]),
        .O(b40__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hD42B)) 
    b40__24_carry__1_i_3
       (.I0(s_axis_tdata[87]),
        .I1(b40_carry__1_n_2),
        .I2(s_axis_tdata[85]),
        .I3(s_axis_tdata[86]),
        .O(b40__24_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    b40__24_carry_i_1
       (.I0(s_axis_tdata[80]),
        .I1(b40_carry__0_n_7),
        .I2(s_axis_tdata[82]),
        .O(b40__24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    b40__24_carry_i_2
       (.I0(s_axis_tdata[80]),
        .I1(b40_carry__0_n_7),
        .I2(s_axis_tdata[82]),
        .O(b40__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    b40__24_carry_i_3
       (.I0(b40_carry_n_5),
        .I1(s_axis_tdata[80]),
        .O(b40__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    b40__24_carry_i_4
       (.I0(s_axis_tdata[82]),
        .I1(b40_carry__0_n_7),
        .I2(s_axis_tdata[80]),
        .I3(s_axis_tdata[83]),
        .I4(b40_carry__0_n_6),
        .I5(s_axis_tdata[81]),
        .O(b40__24_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    b40__24_carry_i_5
       (.I0(s_axis_tdata[82]),
        .I1(b40_carry__0_n_7),
        .I2(s_axis_tdata[80]),
        .I3(s_axis_tdata[81]),
        .I4(b40_carry_n_4),
        .O(b40__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    b40__24_carry_i_6
       (.I0(s_axis_tdata[80]),
        .I1(b40_carry_n_5),
        .I2(b40_carry_n_4),
        .I3(s_axis_tdata[81]),
        .O(b40__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b40__24_carry_i_7
       (.I0(s_axis_tdata[80]),
        .I1(b40_carry_n_5),
        .O(b40__24_carry_i_7_n_0));
  CARRY4 b40_carry
       (.CI(1'b0),
        .CO({b40_carry_n_0,b40_carry_n_1,b40_carry_n_2,b40_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[84:82],1'b0}),
        .O({b40_carry_n_4,b40_carry_n_5,b40[2:1]}),
        .S({b40_carry_i_1_n_0,b40_carry_i_2_n_0,b40_carry_i_3_n_0,s_axis_tdata[81]}));
  CARRY4 b40_carry__0
       (.CI(b40_carry_n_0),
        .CO({b40_carry__0_n_0,b40_carry__0_n_1,b40_carry__0_n_2,b40_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[87:85]}),
        .O({b40_carry__0_n_4,b40_carry__0_n_5,b40_carry__0_n_6,b40_carry__0_n_7}),
        .S({s_axis_tdata[86],b40_carry__0_i_1_n_0,b40_carry__0_i_2_n_0,b40_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    b40_carry__0_i_1
       (.I0(s_axis_tdata[87]),
        .I1(s_axis_tdata[85]),
        .O(b40_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b40_carry__0_i_2
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_tdata[84]),
        .O(b40_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b40_carry__0_i_3
       (.I0(s_axis_tdata[85]),
        .I1(s_axis_tdata[83]),
        .O(b40_carry__0_i_3_n_0));
  CARRY4 b40_carry__1
       (.CI(b40_carry__0_n_0),
        .CO({NLW_b40_carry__1_CO_UNCONNECTED[3:2],b40_carry__1_n_2,NLW_b40_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_b40_carry__1_O_UNCONNECTED[3:1],b40_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[87]}));
  LUT2 #(
    .INIT(4'h6)) 
    b40_carry_i_1
       (.I0(s_axis_tdata[84]),
        .I1(s_axis_tdata[82]),
        .O(b40_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b40_carry_i_2
       (.I0(s_axis_tdata[83]),
        .I1(s_axis_tdata[81]),
        .O(b40_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b40_carry_i_3
       (.I0(s_axis_tdata[82]),
        .I1(s_axis_tdata[80]),
        .O(b40_carry_i_3_n_0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g10__27_carry
       (.CI(1'b0),
        .CO({g10__27_carry_n_0,g10__27_carry_n_1,g10__27_carry_n_2,g10__27_carry_n_3}),
        .CYINIT(1'b0),
        .DI({g10_carry__0_n_6,g10_carry__0_n_7,g10_carry_n_4,1'b0}),
        .O(g10[6:3]),
        .S({g10__27_carry_i_1_n_0,g10__27_carry_i_2_n_0,g10__27_carry_i_3_n_0,g10_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g10__27_carry__0
       (.CI(g10__27_carry_n_0),
        .CO({g10__27_carry__0_n_0,g10__27_carry__0_n_1,g10__27_carry__0_n_2,g10__27_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({g10__27_carry__0_i_1_n_0,g10__27_carry__0_i_2_n_0,g10__27_carry__0_i_3_n_0,s_axis_tdata[0]}),
        .O(g10[10:7]),
        .S({g10__27_carry__0_i_4_n_0,g10__27_carry__0_i_5_n_0,g10__27_carry__0_i_6_n_0,g10__27_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g10__27_carry__0_i_1
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[5]),
        .I2(g10_carry__1_n_7),
        .O(g10__27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g10__27_carry__0_i_2
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[4]),
        .I2(g10_carry__0_n_4),
        .O(g10__27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g10__27_carry__0_i_3
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[4]),
        .I2(g10_carry__0_n_4),
        .O(g10__27_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    g10__27_carry__0_i_4
       (.I0(g10__27_carry__0_i_1_n_0),
        .I1(g10_carry__1_n_6),
        .I2(s_axis_tdata[6]),
        .I3(s_axis_tdata[3]),
        .O(g10__27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    g10__27_carry__0_i_5
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[5]),
        .I2(g10_carry__1_n_7),
        .I3(g10__27_carry__0_i_2_n_0),
        .O(g10__27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    g10__27_carry__0_i_6
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[4]),
        .I2(g10_carry__0_n_4),
        .I3(g10_carry__0_n_5),
        .I4(s_axis_tdata[3]),
        .O(g10__27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g10__27_carry__0_i_7
       (.I0(s_axis_tdata[3]),
        .I1(g10_carry__0_n_5),
        .I2(s_axis_tdata[0]),
        .O(g10__27_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g10__27_carry__1
       (.CI(g10__27_carry__0_n_0),
        .CO({g10__27_carry__1_n_0,g10__27_carry__1_n_1,g10__27_carry__1_n_2,g10__27_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({g10__27_carry__1_i_1_n_0,g10__27_carry__1_i_2_n_0,g10__27_carry__1_i_3_n_0,g10__27_carry__1_i_4_n_0}),
        .O(g10[14:11]),
        .S({g10__27_carry__1_i_5_n_0,g10__27_carry__1_i_6_n_0,g10__27_carry__1_i_7_n_0,g10__27_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g10__27_carry__1_i_1
       (.I0(s_axis_tdata[7]),
        .I1(g10_carry__1_n_1),
        .O(g10__27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    g10__27_carry__1_i_2
       (.I0(s_axis_tdata[5]),
        .I1(g10_carry__1_n_1),
        .O(g10__27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    g10__27_carry__1_i_3
       (.I0(g10_carry__1_n_1),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[7]),
        .O(g10__27_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    g10__27_carry__1_i_4
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_tdata[6]),
        .I2(g10_carry__1_n_6),
        .O(g10__27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g10__27_carry__1_i_5
       (.I0(s_axis_tdata[6]),
        .I1(g10_carry__1_n_1),
        .I2(s_axis_tdata[7]),
        .O(g10__27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g10__27_carry__1_i_6
       (.I0(s_axis_tdata[5]),
        .I1(g10_carry__1_n_1),
        .I2(s_axis_tdata[6]),
        .O(g10__27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    g10__27_carry__1_i_7
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_tdata[4]),
        .I2(g10_carry__1_n_1),
        .I3(s_axis_tdata[5]),
        .O(g10__27_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    g10__27_carry__1_i_8
       (.I0(g10_carry__1_n_6),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[7]),
        .I4(g10_carry__1_n_1),
        .I5(s_axis_tdata[4]),
        .O(g10__27_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g10__27_carry__2
       (.CI(g10__27_carry__1_n_0),
        .CO(NLW_g10__27_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_g10__27_carry__2_O_UNCONNECTED[3:1],g10[15]}),
        .S({1'b0,1'b0,1'b0,g10__27_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    g10__27_carry__2_i_1
       (.I0(s_axis_tdata[7]),
        .I1(g10_carry__1_n_1),
        .O(g10__27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g10__27_carry_i_1
       (.I0(g10_carry__0_n_6),
        .I1(s_axis_tdata[2]),
        .O(g10__27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g10__27_carry_i_2
       (.I0(g10_carry__0_n_7),
        .I1(s_axis_tdata[1]),
        .O(g10__27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g10__27_carry_i_3
       (.I0(g10_carry_n_4),
        .I1(s_axis_tdata[0]),
        .O(g10__27_carry_i_3_n_0));
  CARRY4 g10_carry
       (.CI(1'b0),
        .CO({g10_carry_n_0,g10_carry_n_1,g10_carry_n_2,g10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[1:0],1'b0,1'b1}),
        .O({g10_carry_n_4,g10_carry_n_5,g10[2:1]}),
        .S({g10_carry_i_1_n_0,g10_carry_i_2_n_0,g10_carry_i_3_n_0,s_axis_tdata[0]}));
  CARRY4 g10_carry__0
       (.CI(g10_carry_n_0),
        .CO({g10_carry__0_n_0,g10_carry__0_n_1,g10_carry__0_n_2,g10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[5:2]),
        .O({g10_carry__0_n_4,g10_carry__0_n_5,g10_carry__0_n_6,g10_carry__0_n_7}),
        .S({g10_carry__0_i_1_n_0,g10_carry__0_i_2_n_0,g10_carry__0_i_3_n_0,g10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g10_carry__0_i_1
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_tdata[7]),
        .O(g10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g10_carry__0_i_2
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[6]),
        .O(g10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g10_carry__0_i_3
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_tdata[5]),
        .O(g10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g10_carry__0_i_4
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[4]),
        .O(g10_carry__0_i_4_n_0));
  CARRY4 g10_carry__1
       (.CI(g10_carry__0_n_0),
        .CO({NLW_g10_carry__1_CO_UNCONNECTED[3],g10_carry__1_n_1,NLW_g10_carry__1_CO_UNCONNECTED[1],g10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[7:6]}),
        .O({NLW_g10_carry__1_O_UNCONNECTED[3:2],g10_carry__1_n_6,g10_carry__1_n_7}),
        .S({1'b0,1'b1,g10_carry__1_i_1_n_0,g10_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    g10_carry__1_i_1
       (.I0(s_axis_tdata[7]),
        .O(g10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g10_carry__1_i_2
       (.I0(s_axis_tdata[6]),
        .O(g10_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g10_carry_i_1
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[3]),
        .O(g10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g10_carry_i_2
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[2]),
        .O(g10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g10_carry_i_3
       (.I0(s_axis_tdata[1]),
        .O(g10_carry_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[10]),
        .Q(g1[10]),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b0)) 
    \g1_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g10[15]),
        .Q(g1[15]),
        .R(1'b0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g20__27_carry
       (.CI(1'b0),
        .CO({g20__27_carry_n_0,g20__27_carry_n_1,g20__27_carry_n_2,g20__27_carry_n_3}),
        .CYINIT(1'b0),
        .DI({g20_carry__0_n_6,g20_carry__0_n_7,g20_carry_n_4,1'b0}),
        .O(g20[6:3]),
        .S({g20__27_carry_i_1_n_0,g20__27_carry_i_2_n_0,g20__27_carry_i_3_n_0,g20_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g20__27_carry__0
       (.CI(g20__27_carry_n_0),
        .CO({g20__27_carry__0_n_0,g20__27_carry__0_n_1,g20__27_carry__0_n_2,g20__27_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({g20__27_carry__0_i_1_n_0,g20__27_carry__0_i_2_n_0,g20__27_carry__0_i_3_n_0,s_axis_tdata[24]}),
        .O(g20[10:7]),
        .S({g20__27_carry__0_i_4_n_0,g20__27_carry__0_i_5_n_0,g20__27_carry__0_i_6_n_0,g20__27_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g20__27_carry__0_i_1
       (.I0(s_axis_tdata[26]),
        .I1(s_axis_tdata[29]),
        .I2(g20_carry__1_n_7),
        .O(g20__27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g20__27_carry__0_i_2
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[28]),
        .I2(g20_carry__0_n_4),
        .O(g20__27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g20__27_carry__0_i_3
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[28]),
        .I2(g20_carry__0_n_4),
        .O(g20__27_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    g20__27_carry__0_i_4
       (.I0(g20__27_carry__0_i_1_n_0),
        .I1(g20_carry__1_n_6),
        .I2(s_axis_tdata[30]),
        .I3(s_axis_tdata[27]),
        .O(g20__27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    g20__27_carry__0_i_5
       (.I0(s_axis_tdata[26]),
        .I1(s_axis_tdata[29]),
        .I2(g20_carry__1_n_7),
        .I3(g20__27_carry__0_i_2_n_0),
        .O(g20__27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    g20__27_carry__0_i_6
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[28]),
        .I2(g20_carry__0_n_4),
        .I3(g20_carry__0_n_5),
        .I4(s_axis_tdata[27]),
        .O(g20__27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g20__27_carry__0_i_7
       (.I0(s_axis_tdata[27]),
        .I1(g20_carry__0_n_5),
        .I2(s_axis_tdata[24]),
        .O(g20__27_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g20__27_carry__1
       (.CI(g20__27_carry__0_n_0),
        .CO({g20__27_carry__1_n_0,g20__27_carry__1_n_1,g20__27_carry__1_n_2,g20__27_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({g20__27_carry__1_i_1_n_0,g20__27_carry__1_i_2_n_0,g20__27_carry__1_i_3_n_0,g20__27_carry__1_i_4_n_0}),
        .O(g20[14:11]),
        .S({g20__27_carry__1_i_5_n_0,g20__27_carry__1_i_6_n_0,g20__27_carry__1_i_7_n_0,g20__27_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g20__27_carry__1_i_1
       (.I0(s_axis_tdata[31]),
        .I1(g20_carry__1_n_1),
        .O(g20__27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    g20__27_carry__1_i_2
       (.I0(s_axis_tdata[29]),
        .I1(g20_carry__1_n_1),
        .O(g20__27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    g20__27_carry__1_i_3
       (.I0(g20_carry__1_n_1),
        .I1(s_axis_tdata[28]),
        .I2(s_axis_tdata[31]),
        .O(g20__27_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    g20__27_carry__1_i_4
       (.I0(s_axis_tdata[27]),
        .I1(s_axis_tdata[30]),
        .I2(g20_carry__1_n_6),
        .O(g20__27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g20__27_carry__1_i_5
       (.I0(s_axis_tdata[30]),
        .I1(g20_carry__1_n_1),
        .I2(s_axis_tdata[31]),
        .O(g20__27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g20__27_carry__1_i_6
       (.I0(s_axis_tdata[29]),
        .I1(g20_carry__1_n_1),
        .I2(s_axis_tdata[30]),
        .O(g20__27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    g20__27_carry__1_i_7
       (.I0(s_axis_tdata[31]),
        .I1(s_axis_tdata[28]),
        .I2(g20_carry__1_n_1),
        .I3(s_axis_tdata[29]),
        .O(g20__27_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    g20__27_carry__1_i_8
       (.I0(g20_carry__1_n_6),
        .I1(s_axis_tdata[30]),
        .I2(s_axis_tdata[27]),
        .I3(s_axis_tdata[31]),
        .I4(g20_carry__1_n_1),
        .I5(s_axis_tdata[28]),
        .O(g20__27_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g20__27_carry__2
       (.CI(g20__27_carry__1_n_0),
        .CO(NLW_g20__27_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_g20__27_carry__2_O_UNCONNECTED[3:1],g20[15]}),
        .S({1'b0,1'b0,1'b0,g20__27_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    g20__27_carry__2_i_1
       (.I0(s_axis_tdata[31]),
        .I1(g20_carry__1_n_1),
        .O(g20__27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g20__27_carry_i_1
       (.I0(g20_carry__0_n_6),
        .I1(s_axis_tdata[26]),
        .O(g20__27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g20__27_carry_i_2
       (.I0(g20_carry__0_n_7),
        .I1(s_axis_tdata[25]),
        .O(g20__27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g20__27_carry_i_3
       (.I0(g20_carry_n_4),
        .I1(s_axis_tdata[24]),
        .O(g20__27_carry_i_3_n_0));
  CARRY4 g20_carry
       (.CI(1'b0),
        .CO({g20_carry_n_0,g20_carry_n_1,g20_carry_n_2,g20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[25:24],1'b0,1'b1}),
        .O({g20_carry_n_4,g20_carry_n_5,g20[2:1]}),
        .S({g20_carry_i_1_n_0,g20_carry_i_2_n_0,g20_carry_i_3_n_0,s_axis_tdata[24]}));
  CARRY4 g20_carry__0
       (.CI(g20_carry_n_0),
        .CO({g20_carry__0_n_0,g20_carry__0_n_1,g20_carry__0_n_2,g20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[29:26]),
        .O({g20_carry__0_n_4,g20_carry__0_n_5,g20_carry__0_n_6,g20_carry__0_n_7}),
        .S({g20_carry__0_i_1_n_0,g20_carry__0_i_2_n_0,g20_carry__0_i_3_n_0,g20_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g20_carry__0_i_1
       (.I0(s_axis_tdata[29]),
        .I1(s_axis_tdata[31]),
        .O(g20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g20_carry__0_i_2
       (.I0(s_axis_tdata[28]),
        .I1(s_axis_tdata[30]),
        .O(g20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g20_carry__0_i_3
       (.I0(s_axis_tdata[27]),
        .I1(s_axis_tdata[29]),
        .O(g20_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g20_carry__0_i_4
       (.I0(s_axis_tdata[26]),
        .I1(s_axis_tdata[28]),
        .O(g20_carry__0_i_4_n_0));
  CARRY4 g20_carry__1
       (.CI(g20_carry__0_n_0),
        .CO({NLW_g20_carry__1_CO_UNCONNECTED[3],g20_carry__1_n_1,NLW_g20_carry__1_CO_UNCONNECTED[1],g20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[31:30]}),
        .O({NLW_g20_carry__1_O_UNCONNECTED[3:2],g20_carry__1_n_6,g20_carry__1_n_7}),
        .S({1'b0,1'b1,g20_carry__1_i_1_n_0,g20_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    g20_carry__1_i_1
       (.I0(s_axis_tdata[31]),
        .O(g20_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g20_carry__1_i_2
       (.I0(s_axis_tdata[30]),
        .O(g20_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g20_carry_i_1
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_tdata[27]),
        .O(g20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g20_carry_i_2
       (.I0(s_axis_tdata[24]),
        .I1(s_axis_tdata[26]),
        .O(g20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g20_carry_i_3
       (.I0(s_axis_tdata[25]),
        .O(g20_carry_i_3_n_0));
  FDRE \g2_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[10]),
        .Q(g2[10]),
        .R(1'b0));
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
  FDRE \g2_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g20[15]),
        .Q(g2[15]),
        .R(1'b0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g30__27_carry
       (.CI(1'b0),
        .CO({g30__27_carry_n_0,g30__27_carry_n_1,g30__27_carry_n_2,g30__27_carry_n_3}),
        .CYINIT(1'b0),
        .DI({g30_carry__0_n_6,g30_carry__0_n_7,g30_carry_n_4,1'b0}),
        .O(g30[6:3]),
        .S({g30__27_carry_i_1_n_0,g30__27_carry_i_2_n_0,g30__27_carry_i_3_n_0,g30_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g30__27_carry__0
       (.CI(g30__27_carry_n_0),
        .CO({g30__27_carry__0_n_0,g30__27_carry__0_n_1,g30__27_carry__0_n_2,g30__27_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({g30__27_carry__0_i_1_n_0,g30__27_carry__0_i_2_n_0,g30__27_carry__0_i_3_n_0,s_axis_tdata[48]}),
        .O(g30[10:7]),
        .S({g30__27_carry__0_i_4_n_0,g30__27_carry__0_i_5_n_0,g30__27_carry__0_i_6_n_0,g30__27_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g30__27_carry__0_i_1
       (.I0(s_axis_tdata[50]),
        .I1(s_axis_tdata[53]),
        .I2(g30_carry__1_n_7),
        .O(g30__27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g30__27_carry__0_i_2
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_tdata[52]),
        .I2(g30_carry__0_n_4),
        .O(g30__27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g30__27_carry__0_i_3
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_tdata[52]),
        .I2(g30_carry__0_n_4),
        .O(g30__27_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    g30__27_carry__0_i_4
       (.I0(g30__27_carry__0_i_1_n_0),
        .I1(g30_carry__1_n_6),
        .I2(s_axis_tdata[54]),
        .I3(s_axis_tdata[51]),
        .O(g30__27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    g30__27_carry__0_i_5
       (.I0(s_axis_tdata[50]),
        .I1(s_axis_tdata[53]),
        .I2(g30_carry__1_n_7),
        .I3(g30__27_carry__0_i_2_n_0),
        .O(g30__27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    g30__27_carry__0_i_6
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_tdata[52]),
        .I2(g30_carry__0_n_4),
        .I3(g30_carry__0_n_5),
        .I4(s_axis_tdata[51]),
        .O(g30__27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g30__27_carry__0_i_7
       (.I0(s_axis_tdata[51]),
        .I1(g30_carry__0_n_5),
        .I2(s_axis_tdata[48]),
        .O(g30__27_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g30__27_carry__1
       (.CI(g30__27_carry__0_n_0),
        .CO({g30__27_carry__1_n_0,g30__27_carry__1_n_1,g30__27_carry__1_n_2,g30__27_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({g30__27_carry__1_i_1_n_0,g30__27_carry__1_i_2_n_0,g30__27_carry__1_i_3_n_0,g30__27_carry__1_i_4_n_0}),
        .O(g30[14:11]),
        .S({g30__27_carry__1_i_5_n_0,g30__27_carry__1_i_6_n_0,g30__27_carry__1_i_7_n_0,g30__27_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g30__27_carry__1_i_1
       (.I0(s_axis_tdata[55]),
        .I1(g30_carry__1_n_1),
        .O(g30__27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    g30__27_carry__1_i_2
       (.I0(s_axis_tdata[53]),
        .I1(g30_carry__1_n_1),
        .O(g30__27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    g30__27_carry__1_i_3
       (.I0(g30_carry__1_n_1),
        .I1(s_axis_tdata[52]),
        .I2(s_axis_tdata[55]),
        .O(g30__27_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    g30__27_carry__1_i_4
       (.I0(s_axis_tdata[51]),
        .I1(s_axis_tdata[54]),
        .I2(g30_carry__1_n_6),
        .O(g30__27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g30__27_carry__1_i_5
       (.I0(s_axis_tdata[54]),
        .I1(g30_carry__1_n_1),
        .I2(s_axis_tdata[55]),
        .O(g30__27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g30__27_carry__1_i_6
       (.I0(s_axis_tdata[53]),
        .I1(g30_carry__1_n_1),
        .I2(s_axis_tdata[54]),
        .O(g30__27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    g30__27_carry__1_i_7
       (.I0(s_axis_tdata[55]),
        .I1(s_axis_tdata[52]),
        .I2(g30_carry__1_n_1),
        .I3(s_axis_tdata[53]),
        .O(g30__27_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    g30__27_carry__1_i_8
       (.I0(g30_carry__1_n_6),
        .I1(s_axis_tdata[54]),
        .I2(s_axis_tdata[51]),
        .I3(s_axis_tdata[55]),
        .I4(g30_carry__1_n_1),
        .I5(s_axis_tdata[52]),
        .O(g30__27_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g30__27_carry__2
       (.CI(g30__27_carry__1_n_0),
        .CO(NLW_g30__27_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_g30__27_carry__2_O_UNCONNECTED[3:1],g30[15]}),
        .S({1'b0,1'b0,1'b0,g30__27_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    g30__27_carry__2_i_1
       (.I0(s_axis_tdata[55]),
        .I1(g30_carry__1_n_1),
        .O(g30__27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g30__27_carry_i_1
       (.I0(g30_carry__0_n_6),
        .I1(s_axis_tdata[50]),
        .O(g30__27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g30__27_carry_i_2
       (.I0(g30_carry__0_n_7),
        .I1(s_axis_tdata[49]),
        .O(g30__27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g30__27_carry_i_3
       (.I0(g30_carry_n_4),
        .I1(s_axis_tdata[48]),
        .O(g30__27_carry_i_3_n_0));
  CARRY4 g30_carry
       (.CI(1'b0),
        .CO({g30_carry_n_0,g30_carry_n_1,g30_carry_n_2,g30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[49:48],1'b0,1'b1}),
        .O({g30_carry_n_4,g30_carry_n_5,g30[2:1]}),
        .S({g30_carry_i_1_n_0,g30_carry_i_2_n_0,g30_carry_i_3_n_0,s_axis_tdata[48]}));
  CARRY4 g30_carry__0
       (.CI(g30_carry_n_0),
        .CO({g30_carry__0_n_0,g30_carry__0_n_1,g30_carry__0_n_2,g30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[53:50]),
        .O({g30_carry__0_n_4,g30_carry__0_n_5,g30_carry__0_n_6,g30_carry__0_n_7}),
        .S({g30_carry__0_i_1_n_0,g30_carry__0_i_2_n_0,g30_carry__0_i_3_n_0,g30_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g30_carry__0_i_1
       (.I0(s_axis_tdata[53]),
        .I1(s_axis_tdata[55]),
        .O(g30_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g30_carry__0_i_2
       (.I0(s_axis_tdata[52]),
        .I1(s_axis_tdata[54]),
        .O(g30_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g30_carry__0_i_3
       (.I0(s_axis_tdata[51]),
        .I1(s_axis_tdata[53]),
        .O(g30_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g30_carry__0_i_4
       (.I0(s_axis_tdata[50]),
        .I1(s_axis_tdata[52]),
        .O(g30_carry__0_i_4_n_0));
  CARRY4 g30_carry__1
       (.CI(g30_carry__0_n_0),
        .CO({NLW_g30_carry__1_CO_UNCONNECTED[3],g30_carry__1_n_1,NLW_g30_carry__1_CO_UNCONNECTED[1],g30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[55:54]}),
        .O({NLW_g30_carry__1_O_UNCONNECTED[3:2],g30_carry__1_n_6,g30_carry__1_n_7}),
        .S({1'b0,1'b1,g30_carry__1_i_1_n_0,g30_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    g30_carry__1_i_1
       (.I0(s_axis_tdata[55]),
        .O(g30_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g30_carry__1_i_2
       (.I0(s_axis_tdata[54]),
        .O(g30_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g30_carry_i_1
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_tdata[51]),
        .O(g30_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g30_carry_i_2
       (.I0(s_axis_tdata[48]),
        .I1(s_axis_tdata[50]),
        .O(g30_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g30_carry_i_3
       (.I0(s_axis_tdata[49]),
        .O(g30_carry_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[10]),
        .Q(g3[10]),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b0)) 
    \g3_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g30[15]),
        .Q(g3[15]),
        .R(1'b0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g40__27_carry
       (.CI(1'b0),
        .CO({g40__27_carry_n_0,g40__27_carry_n_1,g40__27_carry_n_2,g40__27_carry_n_3}),
        .CYINIT(1'b0),
        .DI({g40_carry__0_n_6,g40_carry__0_n_7,g40_carry_n_4,1'b0}),
        .O(g40[6:3]),
        .S({g40__27_carry_i_1_n_0,g40__27_carry_i_2_n_0,g40__27_carry_i_3_n_0,g40_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g40__27_carry__0
       (.CI(g40__27_carry_n_0),
        .CO({g40__27_carry__0_n_0,g40__27_carry__0_n_1,g40__27_carry__0_n_2,g40__27_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({g40__27_carry__0_i_1_n_0,g40__27_carry__0_i_2_n_0,g40__27_carry__0_i_3_n_0,s_axis_tdata[72]}),
        .O(g40[10:7]),
        .S({g40__27_carry__0_i_4_n_0,g40__27_carry__0_i_5_n_0,g40__27_carry__0_i_6_n_0,g40__27_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g40__27_carry__0_i_1
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[77]),
        .I2(g40_carry__1_n_7),
        .O(g40__27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    g40__27_carry__0_i_2
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[76]),
        .I2(g40_carry__0_n_4),
        .O(g40__27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g40__27_carry__0_i_3
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[76]),
        .I2(g40_carry__0_n_4),
        .O(g40__27_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    g40__27_carry__0_i_4
       (.I0(g40__27_carry__0_i_1_n_0),
        .I1(g40_carry__1_n_6),
        .I2(s_axis_tdata[78]),
        .I3(s_axis_tdata[75]),
        .O(g40__27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    g40__27_carry__0_i_5
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[77]),
        .I2(g40_carry__1_n_7),
        .I3(g40__27_carry__0_i_2_n_0),
        .O(g40__27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    g40__27_carry__0_i_6
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[76]),
        .I2(g40_carry__0_n_4),
        .I3(g40_carry__0_n_5),
        .I4(s_axis_tdata[75]),
        .O(g40__27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    g40__27_carry__0_i_7
       (.I0(s_axis_tdata[75]),
        .I1(g40_carry__0_n_5),
        .I2(s_axis_tdata[72]),
        .O(g40__27_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g40__27_carry__1
       (.CI(g40__27_carry__0_n_0),
        .CO({g40__27_carry__1_n_0,g40__27_carry__1_n_1,g40__27_carry__1_n_2,g40__27_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({g40__27_carry__1_i_1_n_0,g40__27_carry__1_i_2_n_0,g40__27_carry__1_i_3_n_0,g40__27_carry__1_i_4_n_0}),
        .O(g40[14:11]),
        .S({g40__27_carry__1_i_5_n_0,g40__27_carry__1_i_6_n_0,g40__27_carry__1_i_7_n_0,g40__27_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g40__27_carry__1_i_1
       (.I0(s_axis_tdata[79]),
        .I1(g40_carry__1_n_1),
        .O(g40__27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    g40__27_carry__1_i_2
       (.I0(s_axis_tdata[77]),
        .I1(g40_carry__1_n_1),
        .O(g40__27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    g40__27_carry__1_i_3
       (.I0(g40_carry__1_n_1),
        .I1(s_axis_tdata[76]),
        .I2(s_axis_tdata[79]),
        .O(g40__27_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    g40__27_carry__1_i_4
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_tdata[78]),
        .I2(g40_carry__1_n_6),
        .O(g40__27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g40__27_carry__1_i_5
       (.I0(s_axis_tdata[78]),
        .I1(g40_carry__1_n_1),
        .I2(s_axis_tdata[79]),
        .O(g40__27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    g40__27_carry__1_i_6
       (.I0(s_axis_tdata[77]),
        .I1(g40_carry__1_n_1),
        .I2(s_axis_tdata[78]),
        .O(g40__27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    g40__27_carry__1_i_7
       (.I0(s_axis_tdata[79]),
        .I1(s_axis_tdata[76]),
        .I2(g40_carry__1_n_1),
        .I3(s_axis_tdata[77]),
        .O(g40__27_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    g40__27_carry__1_i_8
       (.I0(g40_carry__1_n_6),
        .I1(s_axis_tdata[78]),
        .I2(s_axis_tdata[75]),
        .I3(s_axis_tdata[79]),
        .I4(g40_carry__1_n_1),
        .I5(s_axis_tdata[76]),
        .O(g40__27_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 g40__27_carry__2
       (.CI(g40__27_carry__1_n_0),
        .CO(NLW_g40__27_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_g40__27_carry__2_O_UNCONNECTED[3:1],g40[15]}),
        .S({1'b0,1'b0,1'b0,g40__27_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    g40__27_carry__2_i_1
       (.I0(s_axis_tdata[79]),
        .I1(g40_carry__1_n_1),
        .O(g40__27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g40__27_carry_i_1
       (.I0(g40_carry__0_n_6),
        .I1(s_axis_tdata[74]),
        .O(g40__27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g40__27_carry_i_2
       (.I0(g40_carry__0_n_7),
        .I1(s_axis_tdata[73]),
        .O(g40__27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g40__27_carry_i_3
       (.I0(g40_carry_n_4),
        .I1(s_axis_tdata[72]),
        .O(g40__27_carry_i_3_n_0));
  CARRY4 g40_carry
       (.CI(1'b0),
        .CO({g40_carry_n_0,g40_carry_n_1,g40_carry_n_2,g40_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[73:72],1'b0,1'b1}),
        .O({g40_carry_n_4,g40_carry_n_5,g40[2:1]}),
        .S({g40_carry_i_1_n_0,g40_carry_i_2_n_0,g40_carry_i_3_n_0,s_axis_tdata[72]}));
  CARRY4 g40_carry__0
       (.CI(g40_carry_n_0),
        .CO({g40_carry__0_n_0,g40_carry__0_n_1,g40_carry__0_n_2,g40_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[77:74]),
        .O({g40_carry__0_n_4,g40_carry__0_n_5,g40_carry__0_n_6,g40_carry__0_n_7}),
        .S({g40_carry__0_i_1_n_0,g40_carry__0_i_2_n_0,g40_carry__0_i_3_n_0,g40_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    g40_carry__0_i_1
       (.I0(s_axis_tdata[77]),
        .I1(s_axis_tdata[79]),
        .O(g40_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g40_carry__0_i_2
       (.I0(s_axis_tdata[76]),
        .I1(s_axis_tdata[78]),
        .O(g40_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g40_carry__0_i_3
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_tdata[77]),
        .O(g40_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g40_carry__0_i_4
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[76]),
        .O(g40_carry__0_i_4_n_0));
  CARRY4 g40_carry__1
       (.CI(g40_carry__0_n_0),
        .CO({NLW_g40_carry__1_CO_UNCONNECTED[3],g40_carry__1_n_1,NLW_g40_carry__1_CO_UNCONNECTED[1],g40_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[79:78]}),
        .O({NLW_g40_carry__1_O_UNCONNECTED[3:2],g40_carry__1_n_6,g40_carry__1_n_7}),
        .S({1'b0,1'b1,g40_carry__1_i_1_n_0,g40_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    g40_carry__1_i_1
       (.I0(s_axis_tdata[79]),
        .O(g40_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g40_carry__1_i_2
       (.I0(s_axis_tdata[78]),
        .O(g40_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g40_carry_i_1
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[75]),
        .O(g40_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    g40_carry_i_2
       (.I0(s_axis_tdata[72]),
        .I1(s_axis_tdata[74]),
        .O(g40_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    g40_carry_i_3
       (.I0(s_axis_tdata[73]),
        .O(g40_carry_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[10]),
        .Q(g4[10]),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b0)) 
    \g4_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(g40[15]),
        .Q(g4[15]),
        .R(1'b0));
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][0]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [0]),
        .O(s_axis_lr_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][10]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [2]),
        .O(s_axis_lr_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][11]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [3]),
        .O(s_axis_lr_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][12]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [4]),
        .O(s_axis_lr_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][13]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [5]),
        .O(s_axis_lr_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][14]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [6]),
        .O(s_axis_lr_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][15]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [7]),
        .O(s_axis_lr_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][16]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [0]),
        .O(s_axis_lr_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][17]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [1]),
        .O(s_axis_lr_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][18]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [2]),
        .O(s_axis_lr_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][19]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [3]),
        .O(s_axis_lr_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][1]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [1]),
        .O(s_axis_lr_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][20]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [4]),
        .O(s_axis_lr_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][21]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [5]),
        .O(s_axis_lr_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][22]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [6]),
        .O(s_axis_lr_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][23]_i_1 
       (.I0(\sum3_reg[16]_0 [8]),
        .I1(\sum3_reg[16]_0 [7]),
        .O(s_axis_lr_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][24]_i_1 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [0]),
        .O(s_axis_lr_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][25]_i_1 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [1]),
        .O(s_axis_lr_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][26]_i_1 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [2]),
        .O(s_axis_lr_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][27]_i_1 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [3]),
        .O(s_axis_lr_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][28]_i_1 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [4]),
        .O(s_axis_lr_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][29]_i_1 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [5]),
        .O(s_axis_lr_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][2]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [2]),
        .O(s_axis_lr_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][30]_i_1 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [6]),
        .O(s_axis_lr_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][31]_i_2 
       (.I0(\sum4_reg[16]_0 [8]),
        .I1(\sum4_reg[16]_0 [7]),
        .O(s_axis_lr_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][3]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [3]),
        .O(s_axis_lr_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][4]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [4]),
        .O(s_axis_lr_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][5]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [5]),
        .O(s_axis_lr_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][6]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [6]),
        .O(s_axis_lr_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][7]_i_1 
       (.I0(\sum1_reg[16]_0 [8]),
        .I1(\sum1_reg[16]_0 [7]),
        .O(s_axis_lr_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][8]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [0]),
        .O(s_axis_lr_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lastLR[0][9]_i_1 
       (.I0(\sum2_reg[16]_0 [8]),
        .I1(\sum2_reg[16]_0 [1]),
        .O(s_axis_lr_tdata[9]));
  LUT6 #(
    .INIT(64'hDDDDDDDD8D8C888C)) 
    m_axis_disp_tuser_i_1
       (.I0(m_axis_disp_tvalid_reg),
        .I1(s_axis_tuser),
        .I2(switch_img[1]),
        .I3(switch_img[0]),
        .I4(\tuser_reg[1]_0 ),
        .I5(m_axis_disp_tuser_reg),
        .O(s_axis_tuser_0));
  LUT6 #(
    .INIT(64'hDDDDDDDD8D8C888C)) 
    m_axis_disp_tvalid_i_1
       (.I0(m_axis_disp_tvalid_reg),
        .I1(s_axis_tvalid),
        .I2(switch_img[1]),
        .I3(switch_img[0]),
        .I4(Q),
        .I5(m_axis_disp_tvalid_reg_0),
        .O(s_axis_tvalid_0));
  CARRY4 r10__25_carry
       (.CI(1'b0),
        .CO({r10__25_carry_n_0,r10__25_carry_n_1,r10__25_carry_n_2,r10__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r10_carry__0_n_7,r10_carry_n_4,r10_carry_n_5,1'b0}),
        .O(r10[5:2]),
        .S({r10__25_carry_i_1_n_0,r10__25_carry_i_2_n_0,r10__25_carry_i_3_n_0,r10_carry_n_6}));
  CARRY4 r10__25_carry__0
       (.CI(r10__25_carry_n_0),
        .CO({r10__25_carry__0_n_0,r10__25_carry__0_n_1,r10__25_carry__0_n_2,r10__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({r10__25_carry__0_i_1_n_0,r10__25_carry__0_i_2_n_0,r10__25_carry__0_i_3_n_0,s_axis_tdata[16]}),
        .O(r10[9:6]),
        .S({r10__25_carry__0_i_4_n_0,r10__25_carry__0_i_5_n_0,r10__25_carry__0_i_6_n_0,r10__25_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r10__25_carry__0_i_1
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[21]),
        .I2(r10_carry__0_n_4),
        .O(r10__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r10__25_carry__0_i_2
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[20]),
        .I2(r10_carry__0_n_5),
        .O(r10__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r10__25_carry__0_i_3
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[20]),
        .I2(r10_carry__0_n_5),
        .O(r10__25_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r10__25_carry__0_i_4
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[22]),
        .I2(r10_carry__1_n_7),
        .I3(r10__25_carry__0_i_1_n_0),
        .O(r10__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    r10__25_carry__0_i_5
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[21]),
        .I2(r10_carry__0_n_4),
        .I3(r10__25_carry__0_i_2_n_0),
        .O(r10__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    r10__25_carry__0_i_6
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[20]),
        .I2(r10_carry__0_n_5),
        .I3(r10_carry__0_n_6),
        .I4(s_axis_tdata[19]),
        .O(r10__25_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r10__25_carry__0_i_7
       (.I0(s_axis_tdata[19]),
        .I1(r10_carry__0_n_6),
        .I2(s_axis_tdata[16]),
        .O(r10__25_carry__0_i_7_n_0));
  CARRY4 r10__25_carry__1
       (.CI(r10__25_carry__0_n_0),
        .CO({r10__25_carry__1_n_0,r10__25_carry__1_n_1,r10__25_carry__1_n_2,r10__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[21],r10__25_carry__1_i_1_n_0}),
        .O(r10[13:10]),
        .S({s_axis_tdata[23:22],r10__25_carry__1_i_2_n_0,r10__25_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    r10__25_carry__1_i_1
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[22]),
        .I2(r10_carry__1_n_7),
        .O(r10__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    r10__25_carry__1_i_2
       (.I0(r10_carry__1_n_2),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[21]),
        .O(r10__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r10__25_carry__1_i_3
       (.I0(r10__25_carry__1_i_1_n_0),
        .I1(r10_carry__1_n_2),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[20]),
        .O(r10__25_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r10__25_carry_i_1
       (.I0(r10_carry__0_n_7),
        .I1(s_axis_tdata[18]),
        .O(r10__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r10__25_carry_i_2
       (.I0(r10_carry_n_4),
        .I1(s_axis_tdata[17]),
        .O(r10__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r10__25_carry_i_3
       (.I0(r10_carry_n_5),
        .I1(s_axis_tdata[16]),
        .O(r10__25_carry_i_3_n_0));
  CARRY4 r10_carry
       (.CI(1'b0),
        .CO({r10_carry_n_0,r10_carry_n_1,r10_carry_n_2,r10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[20:18],1'b0}),
        .O({r10_carry_n_4,r10_carry_n_5,r10_carry_n_6,r10[1]}),
        .S({r10_carry_i_1_n_0,r10_carry_i_2_n_0,r10_carry_i_3_n_0,s_axis_tdata[17]}));
  CARRY4 r10_carry__0
       (.CI(r10_carry_n_0),
        .CO({r10_carry__0_n_0,r10_carry__0_n_1,r10_carry__0_n_2,r10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[23:21]}),
        .O({r10_carry__0_n_4,r10_carry__0_n_5,r10_carry__0_n_6,r10_carry__0_n_7}),
        .S({s_axis_tdata[22],r10_carry__0_i_1_n_0,r10_carry__0_i_2_n_0,r10_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    r10_carry__0_i_1
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[21]),
        .O(r10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r10_carry__0_i_2
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[20]),
        .O(r10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r10_carry__0_i_3
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[19]),
        .O(r10_carry__0_i_3_n_0));
  CARRY4 r10_carry__1
       (.CI(r10_carry__0_n_0),
        .CO({NLW_r10_carry__1_CO_UNCONNECTED[3:2],r10_carry__1_n_2,NLW_r10_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r10_carry__1_O_UNCONNECTED[3:1],r10_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[23]}));
  LUT2 #(
    .INIT(4'h6)) 
    r10_carry_i_1
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[18]),
        .O(r10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r10_carry_i_2
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[17]),
        .O(r10_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r10_carry_i_3
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[16]),
        .O(r10_carry_i_3_n_0));
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
  FDRE #(
    .INIT(1'b0)) 
    \r1_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r10[14]),
        .Q(r1[14]),
        .R(1'b0));
  CARRY4 \r1_reg[14]_i_1 
       (.CI(r10__25_carry__1_n_0),
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
  CARRY4 r20__25_carry
       (.CI(1'b0),
        .CO({r20__25_carry_n_0,r20__25_carry_n_1,r20__25_carry_n_2,r20__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r20_carry__0_n_7,r20_carry_n_4,r20_carry_n_5,1'b0}),
        .O(r20[5:2]),
        .S({r20__25_carry_i_1_n_0,r20__25_carry_i_2_n_0,r20__25_carry_i_3_n_0,r20_carry_n_6}));
  CARRY4 r20__25_carry__0
       (.CI(r20__25_carry_n_0),
        .CO({r20__25_carry__0_n_0,r20__25_carry__0_n_1,r20__25_carry__0_n_2,r20__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({r20__25_carry__0_i_1_n_0,r20__25_carry__0_i_2_n_0,r20__25_carry__0_i_3_n_0,s_axis_tdata[40]}),
        .O(r20[9:6]),
        .S({r20__25_carry__0_i_4_n_0,r20__25_carry__0_i_5_n_0,r20__25_carry__0_i_6_n_0,r20__25_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r20__25_carry__0_i_1
       (.I0(s_axis_tdata[42]),
        .I1(s_axis_tdata[45]),
        .I2(r20_carry__0_n_4),
        .O(r20__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r20__25_carry__0_i_2
       (.I0(s_axis_tdata[41]),
        .I1(s_axis_tdata[44]),
        .I2(r20_carry__0_n_5),
        .O(r20__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r20__25_carry__0_i_3
       (.I0(s_axis_tdata[41]),
        .I1(s_axis_tdata[44]),
        .I2(r20_carry__0_n_5),
        .O(r20__25_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r20__25_carry__0_i_4
       (.I0(s_axis_tdata[43]),
        .I1(s_axis_tdata[46]),
        .I2(r20_carry__1_n_7),
        .I3(r20__25_carry__0_i_1_n_0),
        .O(r20__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    r20__25_carry__0_i_5
       (.I0(s_axis_tdata[42]),
        .I1(s_axis_tdata[45]),
        .I2(r20_carry__0_n_4),
        .I3(r20__25_carry__0_i_2_n_0),
        .O(r20__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    r20__25_carry__0_i_6
       (.I0(s_axis_tdata[41]),
        .I1(s_axis_tdata[44]),
        .I2(r20_carry__0_n_5),
        .I3(r20_carry__0_n_6),
        .I4(s_axis_tdata[43]),
        .O(r20__25_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r20__25_carry__0_i_7
       (.I0(s_axis_tdata[43]),
        .I1(r20_carry__0_n_6),
        .I2(s_axis_tdata[40]),
        .O(r20__25_carry__0_i_7_n_0));
  CARRY4 r20__25_carry__1
       (.CI(r20__25_carry__0_n_0),
        .CO({r20__25_carry__1_n_0,r20__25_carry__1_n_1,r20__25_carry__1_n_2,r20__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[45],r20__25_carry__1_i_1_n_0}),
        .O(r20[13:10]),
        .S({s_axis_tdata[47:46],r20__25_carry__1_i_2_n_0,r20__25_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    r20__25_carry__1_i_1
       (.I0(s_axis_tdata[43]),
        .I1(s_axis_tdata[46]),
        .I2(r20_carry__1_n_7),
        .O(r20__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    r20__25_carry__1_i_2
       (.I0(r20_carry__1_n_2),
        .I1(s_axis_tdata[47]),
        .I2(s_axis_tdata[44]),
        .I3(s_axis_tdata[45]),
        .O(r20__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r20__25_carry__1_i_3
       (.I0(r20__25_carry__1_i_1_n_0),
        .I1(r20_carry__1_n_2),
        .I2(s_axis_tdata[47]),
        .I3(s_axis_tdata[44]),
        .O(r20__25_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r20__25_carry_i_1
       (.I0(r20_carry__0_n_7),
        .I1(s_axis_tdata[42]),
        .O(r20__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r20__25_carry_i_2
       (.I0(r20_carry_n_4),
        .I1(s_axis_tdata[41]),
        .O(r20__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r20__25_carry_i_3
       (.I0(r20_carry_n_5),
        .I1(s_axis_tdata[40]),
        .O(r20__25_carry_i_3_n_0));
  CARRY4 r20_carry
       (.CI(1'b0),
        .CO({r20_carry_n_0,r20_carry_n_1,r20_carry_n_2,r20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[44:42],1'b0}),
        .O({r20_carry_n_4,r20_carry_n_5,r20_carry_n_6,r20[1]}),
        .S({r20_carry_i_1_n_0,r20_carry_i_2_n_0,r20_carry_i_3_n_0,s_axis_tdata[41]}));
  CARRY4 r20_carry__0
       (.CI(r20_carry_n_0),
        .CO({r20_carry__0_n_0,r20_carry__0_n_1,r20_carry__0_n_2,r20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[47:45]}),
        .O({r20_carry__0_n_4,r20_carry__0_n_5,r20_carry__0_n_6,r20_carry__0_n_7}),
        .S({s_axis_tdata[46],r20_carry__0_i_1_n_0,r20_carry__0_i_2_n_0,r20_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    r20_carry__0_i_1
       (.I0(s_axis_tdata[47]),
        .I1(s_axis_tdata[45]),
        .O(r20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r20_carry__0_i_2
       (.I0(s_axis_tdata[46]),
        .I1(s_axis_tdata[44]),
        .O(r20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r20_carry__0_i_3
       (.I0(s_axis_tdata[45]),
        .I1(s_axis_tdata[43]),
        .O(r20_carry__0_i_3_n_0));
  CARRY4 r20_carry__1
       (.CI(r20_carry__0_n_0),
        .CO({NLW_r20_carry__1_CO_UNCONNECTED[3:2],r20_carry__1_n_2,NLW_r20_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r20_carry__1_O_UNCONNECTED[3:1],r20_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[47]}));
  LUT2 #(
    .INIT(4'h6)) 
    r20_carry_i_1
       (.I0(s_axis_tdata[44]),
        .I1(s_axis_tdata[42]),
        .O(r20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r20_carry_i_2
       (.I0(s_axis_tdata[43]),
        .I1(s_axis_tdata[41]),
        .O(r20_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r20_carry_i_3
       (.I0(s_axis_tdata[42]),
        .I1(s_axis_tdata[40]),
        .O(r20_carry_i_3_n_0));
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
  FDRE #(
    .INIT(1'b0)) 
    \r2_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r20[14]),
        .Q(r2[14]),
        .R(1'b0));
  CARRY4 \r2_reg[14]_i_1 
       (.CI(r20__25_carry__1_n_0),
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
  CARRY4 r30__25_carry
       (.CI(1'b0),
        .CO({r30__25_carry_n_0,r30__25_carry_n_1,r30__25_carry_n_2,r30__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r30_carry__0_n_7,r30_carry_n_4,r30_carry_n_5,1'b0}),
        .O(r30[5:2]),
        .S({r30__25_carry_i_1_n_0,r30__25_carry_i_2_n_0,r30__25_carry_i_3_n_0,r30_carry_n_6}));
  CARRY4 r30__25_carry__0
       (.CI(r30__25_carry_n_0),
        .CO({r30__25_carry__0_n_0,r30__25_carry__0_n_1,r30__25_carry__0_n_2,r30__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({r30__25_carry__0_i_1_n_0,r30__25_carry__0_i_2_n_0,r30__25_carry__0_i_3_n_0,s_axis_tdata[64]}),
        .O(r30[9:6]),
        .S({r30__25_carry__0_i_4_n_0,r30__25_carry__0_i_5_n_0,r30__25_carry__0_i_6_n_0,r30__25_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r30__25_carry__0_i_1
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_tdata[69]),
        .I2(r30_carry__0_n_4),
        .O(r30__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r30__25_carry__0_i_2
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[68]),
        .I2(r30_carry__0_n_5),
        .O(r30__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r30__25_carry__0_i_3
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[68]),
        .I2(r30_carry__0_n_5),
        .O(r30__25_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r30__25_carry__0_i_4
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_tdata[70]),
        .I2(r30_carry__1_n_7),
        .I3(r30__25_carry__0_i_1_n_0),
        .O(r30__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    r30__25_carry__0_i_5
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_tdata[69]),
        .I2(r30_carry__0_n_4),
        .I3(r30__25_carry__0_i_2_n_0),
        .O(r30__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    r30__25_carry__0_i_6
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[68]),
        .I2(r30_carry__0_n_5),
        .I3(r30_carry__0_n_6),
        .I4(s_axis_tdata[67]),
        .O(r30__25_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r30__25_carry__0_i_7
       (.I0(s_axis_tdata[67]),
        .I1(r30_carry__0_n_6),
        .I2(s_axis_tdata[64]),
        .O(r30__25_carry__0_i_7_n_0));
  CARRY4 r30__25_carry__1
       (.CI(r30__25_carry__0_n_0),
        .CO({r30__25_carry__1_n_0,r30__25_carry__1_n_1,r30__25_carry__1_n_2,r30__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[69],r30__25_carry__1_i_1_n_0}),
        .O(r30[13:10]),
        .S({s_axis_tdata[71:70],r30__25_carry__1_i_2_n_0,r30__25_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    r30__25_carry__1_i_1
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_tdata[70]),
        .I2(r30_carry__1_n_7),
        .O(r30__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    r30__25_carry__1_i_2
       (.I0(r30_carry__1_n_2),
        .I1(s_axis_tdata[71]),
        .I2(s_axis_tdata[68]),
        .I3(s_axis_tdata[69]),
        .O(r30__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r30__25_carry__1_i_3
       (.I0(r30__25_carry__1_i_1_n_0),
        .I1(r30_carry__1_n_2),
        .I2(s_axis_tdata[71]),
        .I3(s_axis_tdata[68]),
        .O(r30__25_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r30__25_carry_i_1
       (.I0(r30_carry__0_n_7),
        .I1(s_axis_tdata[66]),
        .O(r30__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r30__25_carry_i_2
       (.I0(r30_carry_n_4),
        .I1(s_axis_tdata[65]),
        .O(r30__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r30__25_carry_i_3
       (.I0(r30_carry_n_5),
        .I1(s_axis_tdata[64]),
        .O(r30__25_carry_i_3_n_0));
  CARRY4 r30_carry
       (.CI(1'b0),
        .CO({r30_carry_n_0,r30_carry_n_1,r30_carry_n_2,r30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[68:66],1'b0}),
        .O({r30_carry_n_4,r30_carry_n_5,r30_carry_n_6,r30[1]}),
        .S({r30_carry_i_1_n_0,r30_carry_i_2_n_0,r30_carry_i_3_n_0,s_axis_tdata[65]}));
  CARRY4 r30_carry__0
       (.CI(r30_carry_n_0),
        .CO({r30_carry__0_n_0,r30_carry__0_n_1,r30_carry__0_n_2,r30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[71:69]}),
        .O({r30_carry__0_n_4,r30_carry__0_n_5,r30_carry__0_n_6,r30_carry__0_n_7}),
        .S({s_axis_tdata[70],r30_carry__0_i_1_n_0,r30_carry__0_i_2_n_0,r30_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    r30_carry__0_i_1
       (.I0(s_axis_tdata[71]),
        .I1(s_axis_tdata[69]),
        .O(r30_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r30_carry__0_i_2
       (.I0(s_axis_tdata[70]),
        .I1(s_axis_tdata[68]),
        .O(r30_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r30_carry__0_i_3
       (.I0(s_axis_tdata[69]),
        .I1(s_axis_tdata[67]),
        .O(r30_carry__0_i_3_n_0));
  CARRY4 r30_carry__1
       (.CI(r30_carry__0_n_0),
        .CO({NLW_r30_carry__1_CO_UNCONNECTED[3:2],r30_carry__1_n_2,NLW_r30_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r30_carry__1_O_UNCONNECTED[3:1],r30_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[71]}));
  LUT2 #(
    .INIT(4'h6)) 
    r30_carry_i_1
       (.I0(s_axis_tdata[68]),
        .I1(s_axis_tdata[66]),
        .O(r30_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r30_carry_i_2
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_tdata[65]),
        .O(r30_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r30_carry_i_3
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_tdata[64]),
        .O(r30_carry_i_3_n_0));
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
  FDRE #(
    .INIT(1'b0)) 
    \r3_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r30[14]),
        .Q(r3[14]),
        .R(1'b0));
  CARRY4 \r3_reg[14]_i_1 
       (.CI(r30__25_carry__1_n_0),
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
  CARRY4 r40__25_carry
       (.CI(1'b0),
        .CO({r40__25_carry_n_0,r40__25_carry_n_1,r40__25_carry_n_2,r40__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({r40_carry__0_n_7,r40_carry_n_4,r40_carry_n_5,1'b0}),
        .O(r40[5:2]),
        .S({r40__25_carry_i_1_n_0,r40__25_carry_i_2_n_0,r40__25_carry_i_3_n_0,r40_carry_n_6}));
  CARRY4 r40__25_carry__0
       (.CI(r40__25_carry_n_0),
        .CO({r40__25_carry__0_n_0,r40__25_carry__0_n_1,r40__25_carry__0_n_2,r40__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({r40__25_carry__0_i_1_n_0,r40__25_carry__0_i_2_n_0,r40__25_carry__0_i_3_n_0,s_axis_tdata[88]}),
        .O(r40[9:6]),
        .S({r40__25_carry__0_i_4_n_0,r40__25_carry__0_i_5_n_0,r40__25_carry__0_i_6_n_0,r40__25_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r40__25_carry__0_i_1
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_tdata[93]),
        .I2(r40_carry__0_n_4),
        .O(r40__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    r40__25_carry__0_i_2
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[92]),
        .I2(r40_carry__0_n_5),
        .O(r40__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r40__25_carry__0_i_3
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[92]),
        .I2(r40_carry__0_n_5),
        .O(r40__25_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r40__25_carry__0_i_4
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[94]),
        .I2(r40_carry__1_n_7),
        .I3(r40__25_carry__0_i_1_n_0),
        .O(r40__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    r40__25_carry__0_i_5
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_tdata[93]),
        .I2(r40_carry__0_n_4),
        .I3(r40__25_carry__0_i_2_n_0),
        .O(r40__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    r40__25_carry__0_i_6
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[92]),
        .I2(r40_carry__0_n_5),
        .I3(r40_carry__0_n_6),
        .I4(s_axis_tdata[91]),
        .O(r40__25_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    r40__25_carry__0_i_7
       (.I0(s_axis_tdata[91]),
        .I1(r40_carry__0_n_6),
        .I2(s_axis_tdata[88]),
        .O(r40__25_carry__0_i_7_n_0));
  CARRY4 r40__25_carry__1
       (.CI(r40__25_carry__0_n_0),
        .CO({r40__25_carry__1_n_0,r40__25_carry__1_n_1,r40__25_carry__1_n_2,r40__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[93],r40__25_carry__1_i_1_n_0}),
        .O(r40[13:10]),
        .S({s_axis_tdata[95:94],r40__25_carry__1_i_2_n_0,r40__25_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    r40__25_carry__1_i_1
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[94]),
        .I2(r40_carry__1_n_7),
        .O(r40__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    r40__25_carry__1_i_2
       (.I0(r40_carry__1_n_2),
        .I1(s_axis_tdata[95]),
        .I2(s_axis_tdata[92]),
        .I3(s_axis_tdata[93]),
        .O(r40__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r40__25_carry__1_i_3
       (.I0(r40__25_carry__1_i_1_n_0),
        .I1(r40_carry__1_n_2),
        .I2(s_axis_tdata[95]),
        .I3(s_axis_tdata[92]),
        .O(r40__25_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r40__25_carry_i_1
       (.I0(r40_carry__0_n_7),
        .I1(s_axis_tdata[90]),
        .O(r40__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r40__25_carry_i_2
       (.I0(r40_carry_n_4),
        .I1(s_axis_tdata[89]),
        .O(r40__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r40__25_carry_i_3
       (.I0(r40_carry_n_5),
        .I1(s_axis_tdata[88]),
        .O(r40__25_carry_i_3_n_0));
  CARRY4 r40_carry
       (.CI(1'b0),
        .CO({r40_carry_n_0,r40_carry_n_1,r40_carry_n_2,r40_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[92:90],1'b0}),
        .O({r40_carry_n_4,r40_carry_n_5,r40_carry_n_6,r40[1]}),
        .S({r40_carry_i_1_n_0,r40_carry_i_2_n_0,r40_carry_i_3_n_0,s_axis_tdata[89]}));
  CARRY4 r40_carry__0
       (.CI(r40_carry_n_0),
        .CO({r40_carry__0_n_0,r40_carry__0_n_1,r40_carry__0_n_2,r40_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[95:93]}),
        .O({r40_carry__0_n_4,r40_carry__0_n_5,r40_carry__0_n_6,r40_carry__0_n_7}),
        .S({s_axis_tdata[94],r40_carry__0_i_1_n_0,r40_carry__0_i_2_n_0,r40_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    r40_carry__0_i_1
       (.I0(s_axis_tdata[95]),
        .I1(s_axis_tdata[93]),
        .O(r40_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r40_carry__0_i_2
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_tdata[92]),
        .O(r40_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r40_carry__0_i_3
       (.I0(s_axis_tdata[93]),
        .I1(s_axis_tdata[91]),
        .O(r40_carry__0_i_3_n_0));
  CARRY4 r40_carry__1
       (.CI(r40_carry__0_n_0),
        .CO({NLW_r40_carry__1_CO_UNCONNECTED[3:2],r40_carry__1_n_2,NLW_r40_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r40_carry__1_O_UNCONNECTED[3:1],r40_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[95]}));
  LUT2 #(
    .INIT(4'h6)) 
    r40_carry_i_1
       (.I0(s_axis_tdata[92]),
        .I1(s_axis_tdata[90]),
        .O(r40_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r40_carry_i_2
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[89]),
        .O(r40_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    r40_carry_i_3
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_tdata[88]),
        .O(r40_carry_i_3_n_0));
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
  FDRE #(
    .INIT(1'b0)) 
    \r4_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(r40[14]),
        .Q(r4[14]),
        .R(1'b0));
  CARRY4 \r4_reg[14]_i_1 
       (.CI(r40__25_carry__1_n_0),
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
        .Q(\sum1_reg[16]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[11]),
        .Q(\sum1_reg[16]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[12]),
        .Q(\sum1_reg[16]_0 [4]),
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
        .Q(\sum1_reg[16]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[14]),
        .Q(\sum1_reg[16]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[15]),
        .Q(\sum1_reg[16]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum10[16]),
        .Q(\sum1_reg[16]_0 [8]),
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
        .Q(\sum1_reg[16]_0 [0]),
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
        .Q(\sum1_reg[16]_0 [1]),
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
        .Q(\sum2_reg[16]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[11]),
        .Q(\sum2_reg[16]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[12]),
        .Q(\sum2_reg[16]_0 [4]),
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
        .Q(\sum2_reg[16]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[14]),
        .Q(\sum2_reg[16]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[15]),
        .Q(\sum2_reg[16]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum20[16]),
        .Q(\sum2_reg[16]_0 [8]),
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
        .Q(\sum2_reg[16]_0 [0]),
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
        .Q(\sum2_reg[16]_0 [1]),
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
        .Q(\sum3_reg[16]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[11]),
        .Q(\sum3_reg[16]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[12]),
        .Q(\sum3_reg[16]_0 [4]),
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
        .Q(\sum3_reg[16]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[14]),
        .Q(\sum3_reg[16]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[15]),
        .Q(\sum3_reg[16]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum30[16]),
        .Q(\sum3_reg[16]_0 [8]),
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
        .Q(\sum3_reg[16]_0 [0]),
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
        .Q(\sum3_reg[16]_0 [1]),
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
        .Q(\sum4_reg[16]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[11] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[11]),
        .Q(\sum4_reg[16]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[12] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[12]),
        .Q(\sum4_reg[16]_0 [4]),
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
        .Q(\sum4_reg[16]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[14] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[14]),
        .Q(\sum4_reg[16]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[15] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[15]),
        .Q(\sum4_reg[16]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum4_reg[16] 
       (.C(aclk),
        .CE(CEP),
        .D(sum40[16]),
        .Q(\sum4_reg[16]_0 [8]),
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
        .Q(\sum4_reg[16]_0 [0]),
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
        .Q(\sum4_reg[16]_0 [1]),
        .R(1'b0));
  FDRE \tlast_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(\tlast_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tlast_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tlast_reg_n_0_[0] ),
        .Q(\tlast_reg[1]_0 ),
        .R(1'b0));
  FDRE \tuser_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tuser),
        .Q(\tuser_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tuser_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tuser_reg_n_0_[0] ),
        .Q(\tuser_reg[1]_0 ),
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
        .Q(Q),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tdata,
    switch_img,
    s_axis_tlast,
    aclk,
    s_axis_tvalid,
    s_axis_tuser);
  output m_axis_tvalid;
  output [95:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input [95:0]s_axis_tdata;
  input [3:0]switch_img;
  input s_axis_tlast;
  input aclk;
  input s_axis_tvalid;
  input s_axis_tuser;

  wire aclk;
  wire gray_tlast;
  wire gray_tuser;
  wire gray_tvalid;
  wire m_axis_disp_tvalid_i_2_n_0;
  wire [95:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire rgb2gray_n_0;
  wire rgb2gray_n_2;
  wire [31:0]s_axis_lr_tdata;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire [16:8]sum1;
  wire [16:8]sum2;
  wire [16:8]sum3;
  wire [16:8]sum4;
  wire [3:0]switch_img;
  wire unfold_n_0;
  wire unfold_n_1;
  wire unfold_n_10;
  wire unfold_n_11;
  wire unfold_n_12;
  wire unfold_n_13;
  wire unfold_n_14;
  wire unfold_n_15;
  wire unfold_n_16;
  wire unfold_n_17;
  wire unfold_n_18;
  wire unfold_n_19;
  wire unfold_n_2;
  wire unfold_n_20;
  wire unfold_n_21;
  wire unfold_n_22;
  wire unfold_n_23;
  wire unfold_n_24;
  wire unfold_n_25;
  wire unfold_n_26;
  wire unfold_n_27;
  wire unfold_n_28;
  wire unfold_n_29;
  wire unfold_n_3;
  wire unfold_n_30;
  wire unfold_n_31;
  wire unfold_n_32;
  wire unfold_n_33;
  wire unfold_n_34;
  wire unfold_n_35;
  wire unfold_n_36;
  wire unfold_n_37;
  wire unfold_n_38;
  wire unfold_n_39;
  wire unfold_n_4;
  wire unfold_n_40;
  wire unfold_n_41;
  wire unfold_n_42;
  wire unfold_n_43;
  wire unfold_n_44;
  wire unfold_n_45;
  wire unfold_n_46;
  wire unfold_n_47;
  wire unfold_n_48;
  wire unfold_n_49;
  wire unfold_n_5;
  wire unfold_n_50;
  wire unfold_n_51;
  wire unfold_n_52;
  wire unfold_n_53;
  wire unfold_n_54;
  wire unfold_n_55;
  wire unfold_n_56;
  wire unfold_n_57;
  wire unfold_n_58;
  wire unfold_n_59;
  wire unfold_n_6;
  wire unfold_n_60;
  wire unfold_n_61;
  wire unfold_n_62;
  wire unfold_n_63;
  wire unfold_n_64;
  wire unfold_n_65;
  wire unfold_n_66;
  wire unfold_n_67;
  wire unfold_n_68;
  wire unfold_n_69;
  wire unfold_n_7;
  wire unfold_n_70;
  wire unfold_n_71;
  wire unfold_n_72;
  wire unfold_n_73;
  wire unfold_n_74;
  wire unfold_n_75;
  wire unfold_n_76;
  wire unfold_n_77;
  wire unfold_n_78;
  wire unfold_n_79;
  wire unfold_n_8;
  wire unfold_n_80;
  wire unfold_n_81;
  wire unfold_n_82;
  wire unfold_n_83;
  wire unfold_n_84;
  wire unfold_n_85;
  wire unfold_n_86;
  wire unfold_n_87;
  wire unfold_n_88;
  wire unfold_n_89;
  wire unfold_n_9;
  wire unfold_n_90;
  wire unfold_n_91;
  wire unfold_n_92;
  wire unfold_n_93;
  wire unfold_n_94;
  wire unfold_n_95;
  wire unfold_n_96;
  wire unfold_n_97;
  wire unfold_n_98;

  FDRE \m_axis_disp_tdata_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_96),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_86),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_85),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_84),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_83),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_82),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_81),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_80),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_79),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_78),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_77),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_95),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_76),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_75),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_74),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_73),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_72),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_71),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_70),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_69),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_68),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_67),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_94),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_66),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_65),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_64),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_63),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_62),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_61),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_60),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_59),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_58),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_57),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_93),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_56),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_55),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_54),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_53),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_52),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_51),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_50),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_49),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_48),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_47),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_92),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_46),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_45),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_44),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_43),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_42),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_41),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_40),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_39),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_38),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_37),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_91),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_36),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_35),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_34),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_33),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_32),
        .Q(m_axis_tdata[64]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_31),
        .Q(m_axis_tdata[65]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_30),
        .Q(m_axis_tdata[66]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_29),
        .Q(m_axis_tdata[67]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_28),
        .Q(m_axis_tdata[68]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_27),
        .Q(m_axis_tdata[69]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_90),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_26),
        .Q(m_axis_tdata[70]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_25),
        .Q(m_axis_tdata[71]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_24),
        .Q(m_axis_tdata[72]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_23),
        .Q(m_axis_tdata[73]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_22),
        .Q(m_axis_tdata[74]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_21),
        .Q(m_axis_tdata[75]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_20),
        .Q(m_axis_tdata[76]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_19),
        .Q(m_axis_tdata[77]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_18),
        .Q(m_axis_tdata[78]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_17),
        .Q(m_axis_tdata[79]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_89),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_16),
        .Q(m_axis_tdata[80]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_15),
        .Q(m_axis_tdata[81]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_14),
        .Q(m_axis_tdata[82]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_13),
        .Q(m_axis_tdata[83]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_12),
        .Q(m_axis_tdata[84]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_11),
        .Q(m_axis_tdata[85]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_10),
        .Q(m_axis_tdata[86]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_9),
        .Q(m_axis_tdata[87]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_8),
        .Q(m_axis_tdata[88]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_7),
        .Q(m_axis_tdata[89]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_88),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_6),
        .Q(m_axis_tdata[90]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_5),
        .Q(m_axis_tdata[91]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_4),
        .Q(m_axis_tdata[92]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_3),
        .Q(m_axis_tdata[93]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_2),
        .Q(m_axis_tdata[94]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_1),
        .Q(m_axis_tdata[95]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_87),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  FDRE m_axis_disp_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(unfold_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  FDRE m_axis_disp_tuser_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rgb2gray_n_2),
        .Q(m_axis_tuser),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    m_axis_disp_tvalid_i_2
       (.I0(switch_img[3]),
        .I1(switch_img[2]),
        .O(m_axis_disp_tvalid_i_2_n_0));
  FDRE m_axis_disp_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rgb2gray_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_to_Grayscale_v1_0 rgb2gray
       (.Q(gray_tvalid),
        .aclk(aclk),
        .m_axis_disp_tuser_reg(unfold_n_98),
        .m_axis_disp_tvalid_reg(m_axis_disp_tvalid_i_2_n_0),
        .m_axis_disp_tvalid_reg_0(unfold_n_97),
        .s_axis_lr_tdata(s_axis_lr_tdata),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tuser_0(rgb2gray_n_2),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tvalid_0(rgb2gray_n_0),
        .\sum1_reg[16]_0 (sum1),
        .\sum2_reg[16]_0 (sum2),
        .\sum3_reg[16]_0 (sum3),
        .\sum4_reg[16]_0 (sum4),
        .switch_img(switch_img[1:0]),
        .\tlast_reg[1]_0 (gray_tlast),
        .\tuser_reg[1]_0 (gray_tuser));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0 unfold
       (.D(gray_tlast),
        .Q(gray_tvalid),
        .aclk(aclk),
        .\m_axis_disp_tdata_reg[16] (sum1),
        .\m_axis_disp_tdata_reg[40] (sum2),
        .\m_axis_disp_tdata_reg[64] (sum3),
        .m_axis_disp_tlast_reg(m_axis_disp_tvalid_i_2_n_0),
        .s_axis_lr_tdata(s_axis_lr_tdata),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .switch_img(switch_img),
        .\switch_img[3] ({unfold_n_1,unfold_n_2,unfold_n_3,unfold_n_4,unfold_n_5,unfold_n_6,unfold_n_7,unfold_n_8,unfold_n_9,unfold_n_10,unfold_n_11,unfold_n_12,unfold_n_13,unfold_n_14,unfold_n_15,unfold_n_16,unfold_n_17,unfold_n_18,unfold_n_19,unfold_n_20,unfold_n_21,unfold_n_22,unfold_n_23,unfold_n_24,unfold_n_25,unfold_n_26,unfold_n_27,unfold_n_28,unfold_n_29,unfold_n_30,unfold_n_31,unfold_n_32,unfold_n_33,unfold_n_34,unfold_n_35,unfold_n_36,unfold_n_37,unfold_n_38,unfold_n_39,unfold_n_40,unfold_n_41,unfold_n_42,unfold_n_43,unfold_n_44,unfold_n_45,unfold_n_46,unfold_n_47,unfold_n_48,unfold_n_49,unfold_n_50,unfold_n_51,unfold_n_52,unfold_n_53,unfold_n_54,unfold_n_55,unfold_n_56,unfold_n_57,unfold_n_58,unfold_n_59,unfold_n_60,unfold_n_61,unfold_n_62,unfold_n_63,unfold_n_64,unfold_n_65,unfold_n_66,unfold_n_67,unfold_n_68,unfold_n_69,unfold_n_70,unfold_n_71,unfold_n_72,unfold_n_73,unfold_n_74,unfold_n_75,unfold_n_76,unfold_n_77,unfold_n_78,unfold_n_79,unfold_n_80,unfold_n_81,unfold_n_82,unfold_n_83,unfold_n_84,unfold_n_85,unfold_n_86,unfold_n_87,unfold_n_88,unfold_n_89,unfold_n_90,unfold_n_91,unfold_n_92,unfold_n_93,unfold_n_94,unfold_n_95,unfold_n_96}),
        .\tdataL_reg[3]_0 (sum4),
        .\tlast_reg[1]_0 (unfold_n_0),
        .\tuser_reg[0]_0 (gray_tuser),
        .\tuser_reg[1]_0 (unfold_n_98),
        .\tvalid_reg[1]_0 (unfold_n_97));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tdata,
    switch_img,
    s_axis_tlast,
    aclk,
    s_axis_tvalid,
    s_axis_tuser);
  output m_axis_tvalid;
  output [95:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input [95:0]s_axis_tdata;
  input [3:0]switch_img;
  input s_axis_tlast;
  input aclk;
  input s_axis_tvalid;
  input s_axis_tuser;

  wire aclk;
  wire [95:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire [3:0]switch_img;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision stereo
       (.aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .switch_img(switch_img));
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
    m_axis_tready,
    switch_img);
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
  input [3:0]switch_img;

  wire \<const1> ;
  wire aclk;
  wire [95:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire [3:0]switch_img;

  assign s_axis_tready = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0 inst
       (.aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .switch_img(switch_img));
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
