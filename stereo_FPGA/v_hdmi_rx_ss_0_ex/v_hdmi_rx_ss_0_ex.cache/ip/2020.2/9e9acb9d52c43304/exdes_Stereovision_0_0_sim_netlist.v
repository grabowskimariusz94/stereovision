// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 25 20:57:52 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_Stereovision_0_0_sim_netlist.v
// Design      : exdes_Stereovision_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tvalid,
    aclk,
    s_axis_tdata,
    s_axis_tuser,
    s_axis_tlast);
  output m_axis_tvalid;
  output [95:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input s_axis_tvalid;
  input aclk;
  input [95:0]s_axis_tdata;
  input s_axis_tuser;
  input s_axis_tlast;

  wire aclk;
  wire [95:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [95:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  FDRE \m_axis_disp_tdata_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[32]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[33]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[34]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[35]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[36]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[37]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[38]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[39]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[40]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[41]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[42]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[43]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[44]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[45]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[46]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[47]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[48]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[49]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[50]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[51]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[52]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[53]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[54]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[55]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[56]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[57]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[58]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[59]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[60]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[61]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[62]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[63]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[64]),
        .Q(m_axis_tdata[64]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[65]),
        .Q(m_axis_tdata[65]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[66]),
        .Q(m_axis_tdata[66]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[67]),
        .Q(m_axis_tdata[67]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[68]),
        .Q(m_axis_tdata[68]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[69]),
        .Q(m_axis_tdata[69]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[70]),
        .Q(m_axis_tdata[70]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[71]),
        .Q(m_axis_tdata[71]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[72]),
        .Q(m_axis_tdata[72]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[73]),
        .Q(m_axis_tdata[73]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[74]),
        .Q(m_axis_tdata[74]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[75]),
        .Q(m_axis_tdata[75]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[76]),
        .Q(m_axis_tdata[76]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[77]),
        .Q(m_axis_tdata[77]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[78]),
        .Q(m_axis_tdata[78]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[79]),
        .Q(m_axis_tdata[79]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[80]),
        .Q(m_axis_tdata[80]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[81]),
        .Q(m_axis_tdata[81]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[82]),
        .Q(m_axis_tdata[82]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[83]),
        .Q(m_axis_tdata[83]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[84]),
        .Q(m_axis_tdata[84]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[85]),
        .Q(m_axis_tdata[85]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[86]),
        .Q(m_axis_tdata[86]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[87]),
        .Q(m_axis_tdata[87]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[88]),
        .Q(m_axis_tdata[88]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[89]),
        .Q(m_axis_tdata[89]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[90]),
        .Q(m_axis_tdata[90]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[91]),
        .Q(m_axis_tdata[91]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[92]),
        .Q(m_axis_tdata[92]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[93]),
        .Q(m_axis_tdata[93]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[94]),
        .Q(m_axis_tdata[94]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[95]),
        .Q(m_axis_tdata[95]),
        .R(1'b0));
  FDRE \m_axis_disp_tdata_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  FDRE m_axis_disp_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(m_axis_tlast),
        .R(1'b0));
  FDRE m_axis_disp_tuser_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tuser),
        .Q(m_axis_tuser),
        .R(1'b0));
  FDRE m_axis_disp_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(m_axis_tvalid),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Stereovision_v1_0
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast,
    s_axis_tvalid,
    aclk,
    s_axis_tdata,
    s_axis_tuser,
    s_axis_tlast);
  output m_axis_tvalid;
  output [95:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input s_axis_tvalid;
  input aclk;
  input [95:0]s_axis_tdata;
  input s_axis_tuser;
  input s_axis_tlast;

  wire aclk;
  wire [95:0]m_axis_tdata;
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
  input switch_img;

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
