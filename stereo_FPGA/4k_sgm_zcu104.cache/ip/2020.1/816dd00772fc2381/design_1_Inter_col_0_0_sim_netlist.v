// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Nov 28 10:16:42 2020
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Inter_col_0_0_sim_netlist.v
// Design      : design_1_Inter_col_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0
   (m_axis_r_tvalid,
    m_axis_l_tdata,
    m_axis_r_tlast,
    m_axis_r_tuser,
    m_axis_r_tdata,
    aclk,
    s_axis_lr_tvalid,
    s_axis_lr_tdata,
    s_axis_lr_tlast,
    s_axis_lr_tuser);
  output m_axis_r_tvalid;
  output [31:0]m_axis_l_tdata;
  output m_axis_r_tlast;
  output m_axis_r_tuser;
  output [31:0]m_axis_r_tdata;
  input aclk;
  input s_axis_lr_tvalid;
  input [31:0]s_axis_lr_tdata;
  input s_axis_lr_tlast;
  input s_axis_lr_tuser;

  wire aclk;
  wire \lastLR_reg_n_0_[16] ;
  wire \lastLR_reg_n_0_[17] ;
  wire \lastLR_reg_n_0_[18] ;
  wire \lastLR_reg_n_0_[19] ;
  wire \lastLR_reg_n_0_[20] ;
  wire \lastLR_reg_n_0_[21] ;
  wire \lastLR_reg_n_0_[22] ;
  wire \lastLR_reg_n_0_[23] ;
  wire \lastLR_reg_n_0_[24] ;
  wire [31:0]m_axis_l_tdata;
  wire [31:0]m_axis_r_tdata;
  wire m_axis_r_tlast;
  wire m_axis_r_tuser;
  wire m_axis_r_tvalid;
  wire [6:0]p_0_in;
  wire [6:0]p_1_in;
  wire [31:0]s_axis_lr_tdata;
  wire s_axis_lr_tlast;
  wire s_axis_lr_tuser;
  wire s_axis_lr_tvalid;
  wire [7:0]tdataL0;
  wire [7:0]tdataL05_out;
  wire \tdataL[12]_i_2_n_0 ;
  wire \tdataL[15]_i_2_n_0 ;
  wire \tdataL[28]_i_2_n_0 ;
  wire \tdataL[31]_i_2_n_0 ;
  wire [7:0]tdataR0;
  wire [7:0]tdataR01_out;
  wire \tdataR[20]_i_2_n_0 ;
  wire \tdataR[23]_i_2_n_0 ;
  wire \tdataR[4]_i_2_n_0 ;
  wire \tdataR[7]_i_2_n_0 ;
  wire [0:0]tlast;
  wire [0:0]tuser;
  wire tvalid;

  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[10] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[10]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[11] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[11]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[12] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[12]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[13] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[13]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[14] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[14]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[15] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[15]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[16] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[16]),
        .Q(\lastLR_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[17] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[17]),
        .Q(\lastLR_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[18] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[18]),
        .Q(\lastLR_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[19] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[19]),
        .Q(\lastLR_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[20] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[20]),
        .Q(\lastLR_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[21] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[21]),
        .Q(\lastLR_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[22] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[22]),
        .Q(\lastLR_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[23] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[23]),
        .Q(\lastLR_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[24] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[24]),
        .Q(\lastLR_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[25] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[25]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[26] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[26]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[27] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[27]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[28] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[28]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[29] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[29]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[30] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[30]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[31] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[31]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[9] 
       (.C(aclk),
        .CE(s_axis_lr_tvalid),
        .D(s_axis_lr_tdata[9]),
        .Q(p_0_in[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \tdataL[10]_i_1 
       (.I0(\lastLR_reg_n_0_[17] ),
        .I1(s_axis_lr_tdata[1]),
        .I2(s_axis_lr_tdata[2]),
        .I3(\lastLR_reg_n_0_[18] ),
        .I4(\lastLR_reg_n_0_[19] ),
        .I5(s_axis_lr_tdata[3]),
        .O(tdataL0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataL[11]_i_1 
       (.I0(\tdataL[12]_i_2_n_0 ),
        .I1(\lastLR_reg_n_0_[20] ),
        .I2(s_axis_lr_tdata[4]),
        .O(tdataL0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[12]_i_1 
       (.I0(\tdataL[12]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[4]),
        .I2(\lastLR_reg_n_0_[20] ),
        .I3(\lastLR_reg_n_0_[21] ),
        .I4(s_axis_lr_tdata[5]),
        .O(tdataL0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataL[12]_i_2 
       (.I0(\lastLR_reg_n_0_[19] ),
        .I1(s_axis_lr_tdata[3]),
        .I2(\lastLR_reg_n_0_[17] ),
        .I3(s_axis_lr_tdata[1]),
        .I4(s_axis_lr_tdata[2]),
        .I5(\lastLR_reg_n_0_[18] ),
        .O(\tdataL[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataL[13]_i_1 
       (.I0(\tdataL[15]_i_2_n_0 ),
        .I1(\lastLR_reg_n_0_[22] ),
        .I2(s_axis_lr_tdata[6]),
        .O(tdataL0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[14]_i_1 
       (.I0(\tdataL[15]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[6]),
        .I2(\lastLR_reg_n_0_[22] ),
        .I3(\lastLR_reg_n_0_[23] ),
        .I4(s_axis_lr_tdata[7]),
        .O(tdataL0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[15]_i_1 
       (.I0(\lastLR_reg_n_0_[23] ),
        .I1(s_axis_lr_tdata[7]),
        .I2(\tdataL[15]_i_2_n_0 ),
        .I3(s_axis_lr_tdata[6]),
        .I4(\lastLR_reg_n_0_[22] ),
        .O(tdataL0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[15]_i_2 
       (.I0(\lastLR_reg_n_0_[21] ),
        .I1(s_axis_lr_tdata[5]),
        .I2(\tdataL[12]_i_2_n_0 ),
        .I3(s_axis_lr_tdata[4]),
        .I4(\lastLR_reg_n_0_[20] ),
        .O(\tdataL[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[24]_i_1 
       (.I0(s_axis_lr_tdata[17]),
        .I1(s_axis_lr_tdata[1]),
        .O(tdataL05_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tdataL[25]_i_1 
       (.I0(s_axis_lr_tdata[17]),
        .I1(s_axis_lr_tdata[1]),
        .I2(s_axis_lr_tdata[2]),
        .I3(s_axis_lr_tdata[18]),
        .O(tdataL05_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \tdataL[26]_i_1 
       (.I0(s_axis_lr_tdata[1]),
        .I1(s_axis_lr_tdata[17]),
        .I2(s_axis_lr_tdata[18]),
        .I3(s_axis_lr_tdata[2]),
        .I4(s_axis_lr_tdata[3]),
        .I5(s_axis_lr_tdata[19]),
        .O(tdataL05_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataL[27]_i_1 
       (.I0(\tdataL[28]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[4]),
        .I2(s_axis_lr_tdata[20]),
        .O(tdataL05_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[28]_i_1 
       (.I0(\tdataL[28]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[20]),
        .I2(s_axis_lr_tdata[4]),
        .I3(s_axis_lr_tdata[5]),
        .I4(s_axis_lr_tdata[21]),
        .O(tdataL05_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataL[28]_i_2 
       (.I0(s_axis_lr_tdata[3]),
        .I1(s_axis_lr_tdata[19]),
        .I2(s_axis_lr_tdata[1]),
        .I3(s_axis_lr_tdata[17]),
        .I4(s_axis_lr_tdata[18]),
        .I5(s_axis_lr_tdata[2]),
        .O(\tdataL[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataL[29]_i_1 
       (.I0(\tdataL[31]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[6]),
        .I2(s_axis_lr_tdata[22]),
        .O(tdataL05_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[30]_i_1 
       (.I0(\tdataL[31]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[22]),
        .I2(s_axis_lr_tdata[6]),
        .I3(s_axis_lr_tdata[7]),
        .I4(s_axis_lr_tdata[23]),
        .O(tdataL05_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[31]_i_1 
       (.I0(s_axis_lr_tdata[7]),
        .I1(s_axis_lr_tdata[23]),
        .I2(\tdataL[31]_i_2_n_0 ),
        .I3(s_axis_lr_tdata[22]),
        .I4(s_axis_lr_tdata[6]),
        .O(tdataL05_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[31]_i_2 
       (.I0(s_axis_lr_tdata[5]),
        .I1(s_axis_lr_tdata[21]),
        .I2(\tdataL[28]_i_2_n_0 ),
        .I3(s_axis_lr_tdata[20]),
        .I4(s_axis_lr_tdata[4]),
        .O(\tdataL[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[8]_i_1 
       (.I0(s_axis_lr_tdata[1]),
        .I1(\lastLR_reg_n_0_[17] ),
        .O(tdataL0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tdataL[9]_i_1 
       (.I0(s_axis_lr_tdata[1]),
        .I1(\lastLR_reg_n_0_[17] ),
        .I2(\lastLR_reg_n_0_[18] ),
        .I3(s_axis_lr_tdata[2]),
        .O(tdataL0[1]));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[0] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[16] ),
        .Q(m_axis_l_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[10] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[2]),
        .Q(m_axis_l_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[11] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[3]),
        .Q(m_axis_l_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[12] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[4]),
        .Q(m_axis_l_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[13] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[5]),
        .Q(m_axis_l_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[14] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[6]),
        .Q(m_axis_l_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[15] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[7]),
        .Q(m_axis_l_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[16] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[0]),
        .Q(m_axis_l_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[17] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[1]),
        .Q(m_axis_l_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[18] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[2]),
        .Q(m_axis_l_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[19] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[3]),
        .Q(m_axis_l_tdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[1] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[17] ),
        .Q(m_axis_l_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[20] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[4]),
        .Q(m_axis_l_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[21] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[5]),
        .Q(m_axis_l_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[22] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[6]),
        .Q(m_axis_l_tdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[23] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[7]),
        .Q(m_axis_l_tdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[24] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[0]),
        .Q(m_axis_l_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[25] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[1]),
        .Q(m_axis_l_tdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[26] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[2]),
        .Q(m_axis_l_tdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[27] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[3]),
        .Q(m_axis_l_tdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[28] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[4]),
        .Q(m_axis_l_tdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[29] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[5]),
        .Q(m_axis_l_tdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[2] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[18] ),
        .Q(m_axis_l_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[30] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[6]),
        .Q(m_axis_l_tdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[31] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL05_out[7]),
        .Q(m_axis_l_tdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[3] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[19] ),
        .Q(m_axis_l_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[4] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[20] ),
        .Q(m_axis_l_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[5] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[21] ),
        .Q(m_axis_l_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[6] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[22] ),
        .Q(m_axis_l_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[7] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[23] ),
        .Q(m_axis_l_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[8] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[0]),
        .Q(m_axis_l_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[9] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataL0[1]),
        .Q(m_axis_l_tdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[0]_i_1 
       (.I0(p_1_in[0]),
        .I1(p_0_in[0]),
        .O(tdataR0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[16]_i_1 
       (.I0(s_axis_lr_tdata[9]),
        .I1(p_1_in[0]),
        .O(tdataR01_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tdataR[17]_i_1 
       (.I0(s_axis_lr_tdata[9]),
        .I1(p_1_in[0]),
        .I2(p_1_in[1]),
        .I3(s_axis_lr_tdata[10]),
        .O(tdataR01_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \tdataR[18]_i_1 
       (.I0(p_1_in[0]),
        .I1(s_axis_lr_tdata[9]),
        .I2(s_axis_lr_tdata[10]),
        .I3(p_1_in[1]),
        .I4(p_1_in[2]),
        .I5(s_axis_lr_tdata[11]),
        .O(tdataR01_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataR[19]_i_1 
       (.I0(\tdataR[20]_i_2_n_0 ),
        .I1(p_1_in[3]),
        .I2(s_axis_lr_tdata[12]),
        .O(tdataR01_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tdataR[1]_i_1 
       (.I0(p_1_in[0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_1_in[1]),
        .O(tdataR0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[20]_i_1 
       (.I0(\tdataR[20]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[12]),
        .I2(p_1_in[3]),
        .I3(p_1_in[4]),
        .I4(s_axis_lr_tdata[13]),
        .O(tdataR01_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataR[20]_i_2 
       (.I0(p_1_in[2]),
        .I1(s_axis_lr_tdata[11]),
        .I2(p_1_in[0]),
        .I3(s_axis_lr_tdata[9]),
        .I4(s_axis_lr_tdata[10]),
        .I5(p_1_in[1]),
        .O(\tdataR[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataR[21]_i_1 
       (.I0(\tdataR[23]_i_2_n_0 ),
        .I1(p_1_in[5]),
        .I2(s_axis_lr_tdata[14]),
        .O(tdataR01_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[22]_i_1 
       (.I0(\tdataR[23]_i_2_n_0 ),
        .I1(s_axis_lr_tdata[14]),
        .I2(p_1_in[5]),
        .I3(p_1_in[6]),
        .I4(s_axis_lr_tdata[15]),
        .O(tdataR01_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[23]_i_1 
       (.I0(p_1_in[6]),
        .I1(s_axis_lr_tdata[15]),
        .I2(\tdataR[23]_i_2_n_0 ),
        .I3(s_axis_lr_tdata[14]),
        .I4(p_1_in[5]),
        .O(tdataR01_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[23]_i_2 
       (.I0(p_1_in[4]),
        .I1(s_axis_lr_tdata[13]),
        .I2(\tdataR[20]_i_2_n_0 ),
        .I3(s_axis_lr_tdata[12]),
        .I4(p_1_in[3]),
        .O(\tdataR[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \tdataR[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_1_in[0]),
        .I2(p_1_in[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_1_in[2]),
        .O(tdataR0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataR[3]_i_1 
       (.I0(\tdataR[4]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_1_in[3]),
        .O(tdataR0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[4]_i_1 
       (.I0(\tdataR[4]_i_2_n_0 ),
        .I1(p_1_in[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_1_in[4]),
        .O(tdataR0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataR[4]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_1_in[2]),
        .I2(p_0_in[0]),
        .I3(p_1_in[0]),
        .I4(p_1_in[1]),
        .I5(p_0_in[1]),
        .O(\tdataR[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tdataR[5]_i_1 
       (.I0(\tdataR[7]_i_2_n_0 ),
        .I1(p_0_in[5]),
        .I2(p_1_in[5]),
        .O(tdataR0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[6]_i_1 
       (.I0(\tdataR[7]_i_2_n_0 ),
        .I1(p_1_in[5]),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(p_1_in[6]),
        .O(tdataR0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[7]_i_1 
       (.I0(p_0_in[6]),
        .I1(p_1_in[6]),
        .I2(\tdataR[7]_i_2_n_0 ),
        .I3(p_1_in[5]),
        .I4(p_0_in[5]),
        .O(tdataR0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[7]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_1_in[4]),
        .I2(\tdataR[4]_i_2_n_0 ),
        .I3(p_1_in[3]),
        .I4(p_0_in[3]),
        .O(\tdataR[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[0] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[0]),
        .Q(m_axis_r_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[10] 
       (.C(aclk),
        .CE(tvalid),
        .D(p_1_in[1]),
        .Q(m_axis_r_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[11] 
       (.C(aclk),
        .CE(tvalid),
        .D(p_1_in[2]),
        .Q(m_axis_r_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[12] 
       (.C(aclk),
        .CE(tvalid),
        .D(p_1_in[3]),
        .Q(m_axis_r_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[13] 
       (.C(aclk),
        .CE(tvalid),
        .D(p_1_in[4]),
        .Q(m_axis_r_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[14] 
       (.C(aclk),
        .CE(tvalid),
        .D(p_1_in[5]),
        .Q(m_axis_r_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[15] 
       (.C(aclk),
        .CE(tvalid),
        .D(p_1_in[6]),
        .Q(m_axis_r_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[16] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[0]),
        .Q(m_axis_r_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[17] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[1]),
        .Q(m_axis_r_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[18] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[2]),
        .Q(m_axis_r_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[19] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[3]),
        .Q(m_axis_r_tdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[1] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[1]),
        .Q(m_axis_r_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[20] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[4]),
        .Q(m_axis_r_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[21] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[5]),
        .Q(m_axis_r_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[22] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[6]),
        .Q(m_axis_r_tdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[23] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR01_out[7]),
        .Q(m_axis_r_tdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[24] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[8]),
        .Q(m_axis_r_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[25] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[9]),
        .Q(m_axis_r_tdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[26] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[10]),
        .Q(m_axis_r_tdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[27] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[11]),
        .Q(m_axis_r_tdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[28] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[12]),
        .Q(m_axis_r_tdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[29] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[13]),
        .Q(m_axis_r_tdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[2] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[2]),
        .Q(m_axis_r_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[30] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[14]),
        .Q(m_axis_r_tdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[31] 
       (.C(aclk),
        .CE(tvalid),
        .D(s_axis_lr_tdata[15]),
        .Q(m_axis_r_tdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[3] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[3]),
        .Q(m_axis_r_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[4] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[4]),
        .Q(m_axis_r_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[5] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[5]),
        .Q(m_axis_r_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[6] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[6]),
        .Q(m_axis_r_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[7] 
       (.C(aclk),
        .CE(tvalid),
        .D(tdataR0[7]),
        .Q(m_axis_r_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[8] 
       (.C(aclk),
        .CE(tvalid),
        .D(\lastLR_reg_n_0_[24] ),
        .Q(m_axis_r_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[9] 
       (.C(aclk),
        .CE(tvalid),
        .D(p_1_in[0]),
        .Q(m_axis_r_tdata[9]),
        .R(1'b0));
  FDRE \tlast_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tlast),
        .Q(tlast),
        .R(1'b0));
  FDRE \tlast_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tlast),
        .Q(m_axis_r_tlast),
        .R(1'b0));
  FDRE \tuser_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tuser),
        .Q(tuser),
        .R(1'b0));
  FDRE \tuser_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tuser),
        .Q(m_axis_r_tuser),
        .R(1'b0));
  FDRE \tvalid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tvalid),
        .Q(tvalid),
        .R(1'b0));
  FDRE \tvalid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tvalid),
        .Q(m_axis_r_tvalid),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Inter_col_0_0,Inter_col_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Inter_col_v1_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_lr_tready,
    s_axis_lr_tdata,
    s_axis_lr_tvalid,
    s_axis_lr_tlast,
    s_axis_lr_tuser,
    m_axis_l_tvalid,
    m_axis_l_tdata,
    m_axis_l_tready,
    m_axis_l_tlast,
    m_axis_l_tuser,
    m_axis_r_tvalid,
    m_axis_r_tdata,
    m_axis_r_tready,
    m_axis_r_tlast,
    m_axis_r_tuser);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF S_AXIS_LR:M_AXIS_L:M_AXIS_R, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LR TREADY" *) output s_axis_lr_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LR TDATA" *) input [31:0]s_axis_lr_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LR TVALID" *) input s_axis_lr_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LR TLAST" *) input s_axis_lr_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_LR TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_LR, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_lr_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TVALID" *) output m_axis_l_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TDATA" *) output [31:0]m_axis_l_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TREADY" *) input m_axis_l_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TLAST" *) output m_axis_l_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_L, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_l_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TVALID" *) output m_axis_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TDATA" *) output [31:0]m_axis_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TREADY" *) input m_axis_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TLAST" *) output m_axis_r_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_R, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_r_tuser;

  wire \<const1> ;
  wire aclk;
  wire [31:0]m_axis_l_tdata;
  wire [31:0]m_axis_r_tdata;
  wire m_axis_r_tlast;
  wire m_axis_r_tuser;
  wire m_axis_r_tvalid;
  wire [31:0]s_axis_lr_tdata;
  wire s_axis_lr_tlast;
  wire s_axis_lr_tuser;
  wire s_axis_lr_tvalid;

  assign m_axis_l_tlast = m_axis_r_tlast;
  assign m_axis_l_tuser = m_axis_r_tuser;
  assign m_axis_l_tvalid = m_axis_r_tvalid;
  assign s_axis_lr_tready = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inter_col_v1_0 inst
       (.aclk(aclk),
        .m_axis_l_tdata(m_axis_l_tdata),
        .m_axis_r_tdata(m_axis_r_tdata),
        .m_axis_r_tlast(m_axis_r_tlast),
        .m_axis_r_tuser(m_axis_r_tuser),
        .m_axis_r_tvalid(m_axis_r_tvalid),
        .s_axis_lr_tdata(s_axis_lr_tdata),
        .s_axis_lr_tlast(s_axis_lr_tlast),
        .s_axis_lr_tuser(s_axis_lr_tuser),
        .s_axis_lr_tvalid(s_axis_lr_tvalid));
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
