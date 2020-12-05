// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Dec  4 21:30:30 2020
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_Inter_col_v1_0_0_0/design_1_Inter_col_v1_0_0_0_sim_netlist.v
// Design      : design_1_Inter_col_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Inter_col_v1_0_0_0,Inter_col_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Inter_col_v1_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_Inter_col_v1_0_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_l:m_axis_r:s_axis_lr, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lr TREADY" *) output s_axis_lr_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lr TDATA" *) input [31:0]s_axis_lr_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lr TVALID" *) input s_axis_lr_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lr TLAST" *) input s_axis_lr_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lr TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_lr, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_lr_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_l TVALID" *) output m_axis_l_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_l TDATA" *) output [31:0]m_axis_l_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_l TREADY" *) input m_axis_l_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_l TLAST" *) output m_axis_l_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_l TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_l, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_l_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_r TVALID" *) output m_axis_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_r TDATA" *) output [31:0]m_axis_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_r TREADY" *) input m_axis_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_r TLAST" *) output m_axis_r_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_r TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_r_tuser;

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
  design_1_Inter_col_v1_0_0_0_Inter_col_v1_0 inst
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

(* ORIG_REF_NAME = "Inter_col_v1_0" *) 
module design_1_Inter_col_v1_0_0_0_Inter_col_v1_0
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
  wire \lastLR_reg_n_0_[0][25] ;
  wire \lastLR_reg_n_0_[0][26] ;
  wire \lastLR_reg_n_0_[0][27] ;
  wire \lastLR_reg_n_0_[0][28] ;
  wire \lastLR_reg_n_0_[0][29] ;
  wire \lastLR_reg_n_0_[0][30] ;
  wire \lastLR_reg_n_0_[0][31] ;
  wire \lastLR_reg_n_0_[0][8] ;
  wire [31:0]m_axis_l_tdata;
  wire [31:0]m_axis_r_tdata;
  wire m_axis_r_tlast;
  wire m_axis_r_tuser;
  wire m_axis_r_tvalid;
  wire [7:0]p_0_in;
  wire [6:0]p_0_in0_in;
  wire [31:8]p_1_in;
  wire [6:0]p_1_in2_in;
  wire [6:0]p_1_in8_in;
  wire [7:0]p_3_in;
  wire [31:0]s_axis_lr_tdata;
  wire s_axis_lr_tlast;
  wire s_axis_lr_tuser;
  wire s_axis_lr_tvalid;
  wire [7:6]tdataL0;
  wire [7:2]tdataL011_out;
  wire [7:1]tdataL07_out;
  wire [7:6]tdataL09_out;
  wire \tdataL[10]_i_2_n_0 ;
  wire \tdataL[10]_i_3_n_0 ;
  wire \tdataL[11]_i_2_n_0 ;
  wire \tdataL[11]_i_3_n_0 ;
  wire \tdataL[12]_i_2_n_0 ;
  wire \tdataL[12]_i_3_n_0 ;
  wire \tdataL[13]_i_2_n_0 ;
  wire \tdataL[13]_i_3_n_0 ;
  wire \tdataL[27]_i_2_n_0 ;
  wire \tdataL[27]_i_3_n_0 ;
  wire \tdataL[27]_i_4_n_0 ;
  wire \tdataL[29]_i_2_n_0 ;
  wire \tdataL[29]_i_3_n_0 ;
  wire \tdataL[29]_i_4_n_0 ;
  wire \tdataL[9]_i_2_n_0 ;
  wire \tdataL[9]_i_3_n_0 ;
  wire [7:6]tdataR0;
  wire [7:0]tdataR01_out;
  wire [7:6]tdataR03_out;
  wire \tdataR[16]_i_1_n_0 ;
  wire \tdataR[17]_i_1_n_0 ;
  wire \tdataR[17]_i_2_n_0 ;
  wire \tdataR[17]_i_3_n_0 ;
  wire \tdataR[18]_i_1_n_0 ;
  wire \tdataR[18]_i_2_n_0 ;
  wire \tdataR[18]_i_3_n_0 ;
  wire \tdataR[19]_i_1_n_0 ;
  wire \tdataR[19]_i_2_n_0 ;
  wire \tdataR[19]_i_3_n_0 ;
  wire \tdataR[20]_i_1_n_0 ;
  wire \tdataR[20]_i_2_n_0 ;
  wire \tdataR[20]_i_3_n_0 ;
  wire \tdataR[21]_i_1_n_0 ;
  wire \tdataR[21]_i_2_n_0 ;
  wire \tdataR[21]_i_3_n_0 ;
  wire \tdataR[24]_i_1_n_0 ;
  wire \tdataR[25]_i_1_n_0 ;
  wire \tdataR[26]_i_1_n_0 ;
  wire \tdataR[27]_i_1_n_0 ;
  wire \tdataR[28]_i_1_n_0 ;
  wire \tdataR[29]_i_1_n_0 ;
  wire \tdataR[30]_i_1_n_0 ;
  wire \tdataR[31]_i_1_n_0 ;
  wire \tdataR[4]_i_2_n_0 ;
  wire \tdataR[7]_i_2_n_0 ;
  wire \tdataR_reg[22]_i_1_n_0 ;
  wire \tdataR_reg[23]_i_1_n_0 ;
  wire [1:0]tlast;
  wire [1:0]tuser;
  wire \tvalid_reg_n_0_[0] ;
  wire \tvalid_reg_n_0_[1] ;

  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[0]),
        .Q(\lastLR_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][10] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[10]),
        .Q(p_1_in2_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][11] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[11]),
        .Q(p_1_in2_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][12] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[12]),
        .Q(p_1_in2_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][13] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[13]),
        .Q(p_1_in2_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][14] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[14]),
        .Q(p_1_in2_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][15] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[15]),
        .Q(p_1_in2_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][16] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[16]),
        .Q(\lastLR_reg_n_0_[0][16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][17] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[17]),
        .Q(\lastLR_reg_n_0_[0][17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][18] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[18]),
        .Q(\lastLR_reg_n_0_[0][18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][19] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[19]),
        .Q(\lastLR_reg_n_0_[0][19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[1]),
        .Q(p_1_in8_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][20] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[20]),
        .Q(\lastLR_reg_n_0_[0][20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][21] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[21]),
        .Q(\lastLR_reg_n_0_[0][21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][22] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[22]),
        .Q(\lastLR_reg_n_0_[0][22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][23] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[23]),
        .Q(\lastLR_reg_n_0_[0][23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][24] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[24]),
        .Q(\lastLR_reg_n_0_[0][24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][25] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[25]),
        .Q(\lastLR_reg_n_0_[0][25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][26] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[26]),
        .Q(\lastLR_reg_n_0_[0][26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][27] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[27]),
        .Q(\lastLR_reg_n_0_[0][27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][28] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[28]),
        .Q(\lastLR_reg_n_0_[0][28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][29] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[29]),
        .Q(\lastLR_reg_n_0_[0][29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][2] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[2]),
        .Q(p_1_in8_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][30] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[30]),
        .Q(\lastLR_reg_n_0_[0][30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][31] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[31]),
        .Q(\lastLR_reg_n_0_[0][31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[3]),
        .Q(p_1_in8_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][4] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[4]),
        .Q(p_1_in8_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][5] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[5]),
        .Q(p_1_in8_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][6] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[6]),
        .Q(p_1_in8_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][7] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[7]),
        .Q(p_1_in8_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][8] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[8]),
        .Q(\lastLR_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[0][9] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tdata[9]),
        .Q(p_1_in2_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][10] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in2_in[1]),
        .Q(p_0_in0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][11] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in2_in[2]),
        .Q(p_0_in0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][12] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in2_in[3]),
        .Q(p_0_in0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][13] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in2_in[4]),
        .Q(p_0_in0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][14] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in2_in[5]),
        .Q(p_0_in0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][15] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in2_in[6]),
        .Q(p_0_in0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][16] ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][17] ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][18] ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][19] ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][20] ),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][21] ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][22] ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][23] ),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][24] ),
        .Q(p_3_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][25] ),
        .Q(p_3_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][26] ),
        .Q(p_3_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][27] ),
        .Q(p_3_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][28] ),
        .Q(p_3_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][29] ),
        .Q(p_3_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][30] ),
        .Q(p_3_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\lastLR_reg_n_0_[0][31] ),
        .Q(p_3_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lastLR_reg[1][9] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in2_in[0]),
        .Q(p_0_in0_in[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataL[10]_i_1 
       (.I0(\tdataL[10]_i_2_n_0 ),
        .I1(p_1_in8_in[2]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataL[10]_i_3_n_0 ),
        .I4(p_0_in[3]),
        .I5(s_axis_lr_tdata[3]),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hE888)) 
    \tdataL[10]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_1_in8_in[1]),
        .I2(p_1_in8_in[0]),
        .I3(p_0_in[1]),
        .O(\tdataL[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \tdataL[10]_i_3 
       (.I0(p_0_in[2]),
        .I1(s_axis_lr_tdata[2]),
        .I2(s_axis_lr_tdata[1]),
        .I3(p_0_in[1]),
        .O(\tdataL[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataL[11]_i_1 
       (.I0(\tdataL[11]_i_2_n_0 ),
        .I1(p_1_in8_in[3]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataL[11]_i_3_n_0 ),
        .I4(p_0_in[4]),
        .I5(s_axis_lr_tdata[4]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataL[11]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_1_in8_in[2]),
        .I2(p_0_in[1]),
        .I3(p_1_in8_in[0]),
        .I4(p_1_in8_in[1]),
        .I5(p_0_in[2]),
        .O(\tdataL[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataL[11]_i_3 
       (.I0(p_0_in[3]),
        .I1(s_axis_lr_tdata[3]),
        .I2(p_0_in[1]),
        .I3(s_axis_lr_tdata[1]),
        .I4(s_axis_lr_tdata[2]),
        .I5(p_0_in[2]),
        .O(\tdataL[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataL[12]_i_1 
       (.I0(\tdataL[12]_i_2_n_0 ),
        .I1(p_1_in8_in[4]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataL[12]_i_3_n_0 ),
        .I4(p_0_in[5]),
        .I5(s_axis_lr_tdata[5]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tdataL[12]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_1_in8_in[3]),
        .I2(\tdataL[11]_i_2_n_0 ),
        .O(\tdataL[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tdataL[12]_i_3 
       (.I0(p_0_in[4]),
        .I1(s_axis_lr_tdata[4]),
        .I2(\tdataL[11]_i_3_n_0 ),
        .O(\tdataL[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataL[13]_i_1 
       (.I0(\tdataL[13]_i_2_n_0 ),
        .I1(p_1_in8_in[5]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataL[13]_i_3_n_0 ),
        .I4(p_0_in[6]),
        .I5(s_axis_lr_tdata[6]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[13]_i_2 
       (.I0(p_0_in[5]),
        .I1(p_1_in8_in[4]),
        .I2(\tdataL[11]_i_2_n_0 ),
        .I3(p_1_in8_in[3]),
        .I4(p_0_in[4]),
        .O(\tdataL[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[13]_i_3 
       (.I0(p_0_in[5]),
        .I1(s_axis_lr_tdata[5]),
        .I2(\tdataL[11]_i_3_n_0 ),
        .I3(s_axis_lr_tdata[4]),
        .I4(p_0_in[4]),
        .O(\tdataL[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[14]_i_2 
       (.I0(\tdataL[13]_i_3_n_0 ),
        .I1(s_axis_lr_tdata[6]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .I4(s_axis_lr_tdata[7]),
        .O(tdataL0[6]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[14]_i_3 
       (.I0(\tdataL[13]_i_2_n_0 ),
        .I1(p_1_in8_in[5]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .I4(p_1_in8_in[6]),
        .O(tdataL09_out[6]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[15]_i_2 
       (.I0(p_0_in[7]),
        .I1(s_axis_lr_tdata[7]),
        .I2(\tdataL[13]_i_3_n_0 ),
        .I3(s_axis_lr_tdata[6]),
        .I4(p_0_in[6]),
        .O(tdataL0[7]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[15]_i_3 
       (.I0(p_0_in[7]),
        .I1(p_1_in8_in[6]),
        .I2(\tdataL[13]_i_2_n_0 ),
        .I3(p_1_in8_in[5]),
        .I4(p_0_in[6]),
        .O(tdataL09_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[16]_i_1 
       (.I0(\lastLR_reg_n_0_[0][0] ),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[0]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[17]_i_1 
       (.I0(p_1_in8_in[0]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[1]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[18]_i_1 
       (.I0(p_1_in8_in[1]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[2]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[19]_i_1 
       (.I0(p_1_in8_in[2]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[3]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[20]_i_1 
       (.I0(p_1_in8_in[3]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[4]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[21]_i_1 
       (.I0(p_1_in8_in[4]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[5]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[22]_i_1 
       (.I0(p_1_in8_in[5]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[6]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataL[23]_i_1 
       (.I0(p_1_in8_in[6]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[7]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \tdataL[24]_i_1 
       (.I0(\lastLR_reg_n_0_[0][17] ),
        .I1(p_1_in8_in[0]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(s_axis_lr_tdata[17]),
        .I4(s_axis_lr_tdata[1]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h8778FFFF87780000)) 
    \tdataL[25]_i_1 
       (.I0(\lastLR_reg_n_0_[0][17] ),
        .I1(p_1_in8_in[0]),
        .I2(p_1_in8_in[1]),
        .I3(\lastLR_reg_n_0_[0][18] ),
        .I4(\tvalid_reg_n_0_[0] ),
        .I5(tdataL07_out[1]),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'h8778)) 
    \tdataL[25]_i_2 
       (.I0(s_axis_lr_tdata[17]),
        .I1(s_axis_lr_tdata[1]),
        .I2(s_axis_lr_tdata[2]),
        .I3(s_axis_lr_tdata[18]),
        .O(tdataL07_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \tdataL[26]_i_2 
       (.I0(s_axis_lr_tdata[1]),
        .I1(s_axis_lr_tdata[17]),
        .I2(s_axis_lr_tdata[18]),
        .I3(s_axis_lr_tdata[2]),
        .I4(s_axis_lr_tdata[3]),
        .I5(s_axis_lr_tdata[19]),
        .O(tdataL07_out[2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \tdataL[26]_i_3 
       (.I0(p_1_in8_in[0]),
        .I1(\lastLR_reg_n_0_[0][17] ),
        .I2(\lastLR_reg_n_0_[0][18] ),
        .I3(p_1_in8_in[1]),
        .I4(p_1_in8_in[2]),
        .I5(\lastLR_reg_n_0_[0][19] ),
        .O(tdataL011_out[2]));
  LUT6 #(
    .INIT(64'h960096FF96FF9600)) 
    \tdataL[27]_i_1 
       (.I0(\tdataL[27]_i_2_n_0 ),
        .I1(p_1_in8_in[3]),
        .I2(\lastLR_reg_n_0_[0][20] ),
        .I3(\tvalid_reg_n_0_[0] ),
        .I4(\tdataL[27]_i_3_n_0 ),
        .I5(\tdataL[27]_i_4_n_0 ),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataL[27]_i_2 
       (.I0(p_1_in8_in[2]),
        .I1(\lastLR_reg_n_0_[0][19] ),
        .I2(p_1_in8_in[0]),
        .I3(\lastLR_reg_n_0_[0][17] ),
        .I4(\lastLR_reg_n_0_[0][18] ),
        .I5(p_1_in8_in[1]),
        .O(\tdataL[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataL[27]_i_3 
       (.I0(s_axis_lr_tdata[3]),
        .I1(s_axis_lr_tdata[19]),
        .I2(s_axis_lr_tdata[1]),
        .I3(s_axis_lr_tdata[17]),
        .I4(s_axis_lr_tdata[18]),
        .I5(s_axis_lr_tdata[2]),
        .O(\tdataL[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[27]_i_4 
       (.I0(s_axis_lr_tdata[20]),
        .I1(s_axis_lr_tdata[4]),
        .O(\tdataL[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[28]_i_2 
       (.I0(\tdataL[27]_i_3_n_0 ),
        .I1(s_axis_lr_tdata[20]),
        .I2(s_axis_lr_tdata[4]),
        .I3(s_axis_lr_tdata[5]),
        .I4(s_axis_lr_tdata[21]),
        .O(tdataL07_out[4]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[28]_i_3 
       (.I0(\tdataL[27]_i_2_n_0 ),
        .I1(\lastLR_reg_n_0_[0][20] ),
        .I2(p_1_in8_in[3]),
        .I3(p_1_in8_in[4]),
        .I4(\lastLR_reg_n_0_[0][21] ),
        .O(tdataL011_out[4]));
  LUT6 #(
    .INIT(64'h960096FF96FF9600)) 
    \tdataL[29]_i_1 
       (.I0(\tdataL[29]_i_2_n_0 ),
        .I1(p_1_in8_in[5]),
        .I2(\lastLR_reg_n_0_[0][22] ),
        .I3(\tvalid_reg_n_0_[0] ),
        .I4(\tdataL[29]_i_3_n_0 ),
        .I5(\tdataL[29]_i_4_n_0 ),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[29]_i_2 
       (.I0(p_1_in8_in[4]),
        .I1(\lastLR_reg_n_0_[0][21] ),
        .I2(\tdataL[27]_i_2_n_0 ),
        .I3(\lastLR_reg_n_0_[0][20] ),
        .I4(p_1_in8_in[3]),
        .O(\tdataL[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[29]_i_3 
       (.I0(s_axis_lr_tdata[5]),
        .I1(s_axis_lr_tdata[21]),
        .I2(\tdataL[27]_i_3_n_0 ),
        .I3(s_axis_lr_tdata[20]),
        .I4(s_axis_lr_tdata[4]),
        .O(\tdataL[29]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdataL[29]_i_4 
       (.I0(s_axis_lr_tdata[22]),
        .I1(s_axis_lr_tdata[6]),
        .O(\tdataL[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[30]_i_2 
       (.I0(\tdataL[29]_i_3_n_0 ),
        .I1(s_axis_lr_tdata[22]),
        .I2(s_axis_lr_tdata[6]),
        .I3(s_axis_lr_tdata[7]),
        .I4(s_axis_lr_tdata[23]),
        .O(tdataL07_out[6]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataL[30]_i_3 
       (.I0(\tdataL[29]_i_2_n_0 ),
        .I1(\lastLR_reg_n_0_[0][22] ),
        .I2(p_1_in8_in[5]),
        .I3(p_1_in8_in[6]),
        .I4(\lastLR_reg_n_0_[0][23] ),
        .O(tdataL011_out[6]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[31]_i_2 
       (.I0(s_axis_lr_tdata[7]),
        .I1(s_axis_lr_tdata[23]),
        .I2(\tdataL[29]_i_3_n_0 ),
        .I3(s_axis_lr_tdata[22]),
        .I4(s_axis_lr_tdata[6]),
        .O(tdataL07_out[7]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataL[31]_i_3 
       (.I0(p_1_in8_in[6]),
        .I1(\lastLR_reg_n_0_[0][23] ),
        .I2(\tdataL[29]_i_2_n_0 ),
        .I3(\lastLR_reg_n_0_[0][22] ),
        .I4(p_1_in8_in[5]),
        .O(tdataL011_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h47B8)) 
    \tdataL[8]_i_1 
       (.I0(p_1_in8_in[0]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[1]),
        .I3(p_0_in[1]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataL[9]_i_1 
       (.I0(\tdataL[9]_i_2_n_0 ),
        .I1(p_1_in8_in[1]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataL[9]_i_3_n_0 ),
        .I4(p_0_in[2]),
        .I5(s_axis_lr_tdata[2]),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdataL[9]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_1_in8_in[0]),
        .O(\tdataL[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdataL[9]_i_3 
       (.I0(p_0_in[1]),
        .I1(s_axis_lr_tdata[1]),
        .O(\tdataL[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[0] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[0]),
        .Q(m_axis_l_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[10] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[10]),
        .Q(m_axis_l_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[11] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[11]),
        .Q(m_axis_l_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[12] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[12]),
        .Q(m_axis_l_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[13] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[13]),
        .Q(m_axis_l_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[14] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[14]),
        .Q(m_axis_l_tdata[14]),
        .R(1'b0));
  MUXF7 \tdataL_reg[14]_i_1 
       (.I0(tdataL0[6]),
        .I1(tdataL09_out[6]),
        .O(p_1_in[14]),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[15] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[15]),
        .Q(m_axis_l_tdata[15]),
        .R(1'b0));
  MUXF7 \tdataL_reg[15]_i_1 
       (.I0(tdataL0[7]),
        .I1(tdataL09_out[7]),
        .O(p_1_in[15]),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[16] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[16]),
        .Q(m_axis_l_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[17] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[17]),
        .Q(m_axis_l_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[18] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[18]),
        .Q(m_axis_l_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[19] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[19]),
        .Q(m_axis_l_tdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[1] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[1]),
        .Q(m_axis_l_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[20] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[20]),
        .Q(m_axis_l_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[21] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[21]),
        .Q(m_axis_l_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[22] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[22]),
        .Q(m_axis_l_tdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[23] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[23]),
        .Q(m_axis_l_tdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[24] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[24]),
        .Q(m_axis_l_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[25] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[25]),
        .Q(m_axis_l_tdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[26] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[26]),
        .Q(m_axis_l_tdata[26]),
        .R(1'b0));
  MUXF7 \tdataL_reg[26]_i_1 
       (.I0(tdataL07_out[2]),
        .I1(tdataL011_out[2]),
        .O(p_1_in[26]),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[27] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[27]),
        .Q(m_axis_l_tdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[28] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[28]),
        .Q(m_axis_l_tdata[28]),
        .R(1'b0));
  MUXF7 \tdataL_reg[28]_i_1 
       (.I0(tdataL07_out[4]),
        .I1(tdataL011_out[4]),
        .O(p_1_in[28]),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[29] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[29]),
        .Q(m_axis_l_tdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[2] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[2]),
        .Q(m_axis_l_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[30] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[30]),
        .Q(m_axis_l_tdata[30]),
        .R(1'b0));
  MUXF7 \tdataL_reg[30]_i_1 
       (.I0(tdataL07_out[6]),
        .I1(tdataL011_out[6]),
        .O(p_1_in[30]),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[31] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[31]),
        .Q(m_axis_l_tdata[31]),
        .R(1'b0));
  MUXF7 \tdataL_reg[31]_i_1 
       (.I0(tdataL07_out[7]),
        .I1(tdataL011_out[7]),
        .O(p_1_in[31]),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[3] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[3]),
        .Q(m_axis_l_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[4] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[4]),
        .Q(m_axis_l_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[5] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[5]),
        .Q(m_axis_l_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[6] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[6]),
        .Q(m_axis_l_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[7] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_0_in[7]),
        .Q(m_axis_l_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[8] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[8]),
        .Q(m_axis_l_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataL_reg[9] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_1_in[9]),
        .Q(m_axis_l_tdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tdataR[0]_i_1 
       (.I0(p_3_in[1]),
        .I1(p_0_in0_in[0]),
        .O(tdataR01_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h47B8)) 
    \tdataR[16]_i_1 
       (.I0(p_1_in2_in[0]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[9]),
        .I3(p_3_in[1]),
        .O(\tdataR[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataR[17]_i_1 
       (.I0(\tdataR[17]_i_2_n_0 ),
        .I1(p_1_in2_in[1]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataR[17]_i_3_n_0 ),
        .I4(p_3_in[2]),
        .I5(s_axis_lr_tdata[10]),
        .O(\tdataR[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdataR[17]_i_2 
       (.I0(p_3_in[1]),
        .I1(p_1_in2_in[0]),
        .O(\tdataR[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdataR[17]_i_3 
       (.I0(p_3_in[1]),
        .I1(s_axis_lr_tdata[9]),
        .O(\tdataR[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataR[18]_i_1 
       (.I0(\tdataR[18]_i_2_n_0 ),
        .I1(p_1_in2_in[2]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataR[18]_i_3_n_0 ),
        .I4(p_3_in[3]),
        .I5(s_axis_lr_tdata[11]),
        .O(\tdataR[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \tdataR[18]_i_2 
       (.I0(p_3_in[2]),
        .I1(p_1_in2_in[1]),
        .I2(p_1_in2_in[0]),
        .I3(p_3_in[1]),
        .O(\tdataR[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \tdataR[18]_i_3 
       (.I0(p_3_in[2]),
        .I1(s_axis_lr_tdata[10]),
        .I2(s_axis_lr_tdata[9]),
        .I3(p_3_in[1]),
        .O(\tdataR[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataR[19]_i_1 
       (.I0(\tdataR[19]_i_2_n_0 ),
        .I1(p_1_in2_in[3]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataR[19]_i_3_n_0 ),
        .I4(p_3_in[4]),
        .I5(s_axis_lr_tdata[12]),
        .O(\tdataR[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataR[19]_i_2 
       (.I0(p_3_in[3]),
        .I1(p_1_in2_in[2]),
        .I2(p_3_in[1]),
        .I3(p_1_in2_in[0]),
        .I4(p_1_in2_in[1]),
        .I5(p_3_in[2]),
        .O(\tdataR[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataR[19]_i_3 
       (.I0(p_3_in[3]),
        .I1(s_axis_lr_tdata[11]),
        .I2(p_3_in[1]),
        .I3(s_axis_lr_tdata[9]),
        .I4(s_axis_lr_tdata[10]),
        .I5(p_3_in[2]),
        .O(\tdataR[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tdataR[1]_i_1 
       (.I0(p_3_in[1]),
        .I1(p_0_in0_in[0]),
        .I2(p_0_in0_in[1]),
        .I3(p_3_in[2]),
        .O(tdataR01_out[1]));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataR[20]_i_1 
       (.I0(\tdataR[20]_i_2_n_0 ),
        .I1(p_1_in2_in[4]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataR[20]_i_3_n_0 ),
        .I4(p_3_in[5]),
        .I5(s_axis_lr_tdata[13]),
        .O(\tdataR[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tdataR[20]_i_2 
       (.I0(p_3_in[4]),
        .I1(p_1_in2_in[3]),
        .I2(\tdataR[19]_i_2_n_0 ),
        .O(\tdataR[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tdataR[20]_i_3 
       (.I0(p_3_in[4]),
        .I1(s_axis_lr_tdata[12]),
        .I2(\tdataR[19]_i_3_n_0 ),
        .O(\tdataR[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F90606F909F6F60)) 
    \tdataR[21]_i_1 
       (.I0(\tdataR[21]_i_2_n_0 ),
        .I1(p_1_in2_in[5]),
        .I2(\tvalid_reg_n_0_[0] ),
        .I3(\tdataR[21]_i_3_n_0 ),
        .I4(p_3_in[6]),
        .I5(s_axis_lr_tdata[14]),
        .O(\tdataR[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[21]_i_2 
       (.I0(p_3_in[5]),
        .I1(p_1_in2_in[4]),
        .I2(\tdataR[19]_i_2_n_0 ),
        .I3(p_1_in2_in[3]),
        .I4(p_3_in[4]),
        .O(\tdataR[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[21]_i_3 
       (.I0(p_3_in[5]),
        .I1(s_axis_lr_tdata[13]),
        .I2(\tdataR[19]_i_3_n_0 ),
        .I3(s_axis_lr_tdata[12]),
        .I4(p_3_in[4]),
        .O(\tdataR[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[22]_i_2 
       (.I0(\tdataR[21]_i_3_n_0 ),
        .I1(s_axis_lr_tdata[14]),
        .I2(p_3_in[6]),
        .I3(p_3_in[7]),
        .I4(s_axis_lr_tdata[15]),
        .O(tdataR0[6]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[22]_i_3 
       (.I0(\tdataR[21]_i_2_n_0 ),
        .I1(p_1_in2_in[5]),
        .I2(p_3_in[6]),
        .I3(p_3_in[7]),
        .I4(p_1_in2_in[6]),
        .O(tdataR03_out[6]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[23]_i_2 
       (.I0(p_3_in[7]),
        .I1(s_axis_lr_tdata[15]),
        .I2(\tdataR[21]_i_3_n_0 ),
        .I3(s_axis_lr_tdata[14]),
        .I4(p_3_in[6]),
        .O(tdataR0[7]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[23]_i_3 
       (.I0(p_3_in[7]),
        .I1(p_1_in2_in[6]),
        .I2(\tdataR[21]_i_2_n_0 ),
        .I3(p_1_in2_in[5]),
        .I4(p_3_in[6]),
        .O(tdataR03_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[24]_i_1 
       (.I0(\lastLR_reg_n_0_[0][8] ),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[8]),
        .O(\tdataR[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[25]_i_1 
       (.I0(p_1_in2_in[0]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[9]),
        .O(\tdataR[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[26]_i_1 
       (.I0(p_1_in2_in[1]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[10]),
        .O(\tdataR[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[27]_i_1 
       (.I0(p_1_in2_in[2]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[11]),
        .O(\tdataR[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[28]_i_1 
       (.I0(p_1_in2_in[3]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[12]),
        .O(\tdataR[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[29]_i_1 
       (.I0(p_1_in2_in[4]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[13]),
        .O(\tdataR[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \tdataR[2]_i_1 
       (.I0(p_0_in0_in[0]),
        .I1(p_3_in[1]),
        .I2(p_3_in[2]),
        .I3(p_0_in0_in[1]),
        .I4(p_0_in0_in[2]),
        .I5(p_3_in[3]),
        .O(tdataR01_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[30]_i_1 
       (.I0(p_1_in2_in[5]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[14]),
        .O(\tdataR[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tdataR[31]_i_1 
       (.I0(p_1_in2_in[6]),
        .I1(\tvalid_reg_n_0_[0] ),
        .I2(s_axis_lr_tdata[15]),
        .O(\tdataR[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tdataR[3]_i_1 
       (.I0(\tdataR[4]_i_2_n_0 ),
        .I1(p_0_in0_in[3]),
        .I2(p_3_in[4]),
        .O(tdataR01_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[4]_i_1 
       (.I0(\tdataR[4]_i_2_n_0 ),
        .I1(p_3_in[4]),
        .I2(p_0_in0_in[3]),
        .I3(p_0_in0_in[4]),
        .I4(p_3_in[5]),
        .O(tdataR01_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \tdataR[4]_i_2 
       (.I0(p_0_in0_in[2]),
        .I1(p_3_in[3]),
        .I2(p_0_in0_in[0]),
        .I3(p_3_in[1]),
        .I4(p_3_in[2]),
        .I5(p_0_in0_in[1]),
        .O(\tdataR[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tdataR[5]_i_1 
       (.I0(\tdataR[7]_i_2_n_0 ),
        .I1(p_0_in0_in[5]),
        .I2(p_3_in[6]),
        .O(tdataR01_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \tdataR[6]_i_1 
       (.I0(\tdataR[7]_i_2_n_0 ),
        .I1(p_3_in[6]),
        .I2(p_0_in0_in[5]),
        .I3(p_0_in0_in[6]),
        .I4(p_3_in[7]),
        .O(tdataR01_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[7]_i_1 
       (.I0(p_0_in0_in[6]),
        .I1(p_3_in[7]),
        .I2(\tdataR[7]_i_2_n_0 ),
        .I3(p_3_in[6]),
        .I4(p_0_in0_in[5]),
        .O(tdataR01_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \tdataR[7]_i_2 
       (.I0(p_0_in0_in[4]),
        .I1(p_3_in[5]),
        .I2(\tdataR[4]_i_2_n_0 ),
        .I3(p_3_in[4]),
        .I4(p_0_in0_in[3]),
        .O(\tdataR[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[0] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[0]),
        .Q(m_axis_r_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[10] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[2]),
        .Q(m_axis_r_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[11] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[3]),
        .Q(m_axis_r_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[12] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[4]),
        .Q(m_axis_r_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[13] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[5]),
        .Q(m_axis_r_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[14] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[6]),
        .Q(m_axis_r_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[15] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[7]),
        .Q(m_axis_r_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[16] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[16]_i_1_n_0 ),
        .Q(m_axis_r_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[17] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[17]_i_1_n_0 ),
        .Q(m_axis_r_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[18] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[18]_i_1_n_0 ),
        .Q(m_axis_r_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[19] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[19]_i_1_n_0 ),
        .Q(m_axis_r_tdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[1] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[1]),
        .Q(m_axis_r_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[20] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[20]_i_1_n_0 ),
        .Q(m_axis_r_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[21] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[21]_i_1_n_0 ),
        .Q(m_axis_r_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[22] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR_reg[22]_i_1_n_0 ),
        .Q(m_axis_r_tdata[22]),
        .R(1'b0));
  MUXF7 \tdataR_reg[22]_i_1 
       (.I0(tdataR0[6]),
        .I1(tdataR03_out[6]),
        .O(\tdataR_reg[22]_i_1_n_0 ),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[23] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR_reg[23]_i_1_n_0 ),
        .Q(m_axis_r_tdata[23]),
        .R(1'b0));
  MUXF7 \tdataR_reg[23]_i_1 
       (.I0(tdataR0[7]),
        .I1(tdataR03_out[7]),
        .O(\tdataR_reg[23]_i_1_n_0 ),
        .S(\tvalid_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[24] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[24]_i_1_n_0 ),
        .Q(m_axis_r_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[25] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[25]_i_1_n_0 ),
        .Q(m_axis_r_tdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[26] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[26]_i_1_n_0 ),
        .Q(m_axis_r_tdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[27] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[27]_i_1_n_0 ),
        .Q(m_axis_r_tdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[28] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[28]_i_1_n_0 ),
        .Q(m_axis_r_tdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[29] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[29]_i_1_n_0 ),
        .Q(m_axis_r_tdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[2] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[2]),
        .Q(m_axis_r_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[30] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[30]_i_1_n_0 ),
        .Q(m_axis_r_tdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[31] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(\tdataR[31]_i_1_n_0 ),
        .Q(m_axis_r_tdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[3] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[3]),
        .Q(m_axis_r_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[4] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[4]),
        .Q(m_axis_r_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[5] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[5]),
        .Q(m_axis_r_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[6] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[6]),
        .Q(m_axis_r_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[7] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(tdataR01_out[7]),
        .Q(m_axis_r_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[8] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[0]),
        .Q(m_axis_r_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tdataR_reg[9] 
       (.C(aclk),
        .CE(\tvalid_reg_n_0_[1] ),
        .D(p_3_in[1]),
        .Q(m_axis_r_tdata[9]),
        .R(1'b0));
  FDRE \tlast_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tlast),
        .Q(tlast[0]),
        .R(1'b0));
  FDRE \tlast_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tlast[0]),
        .Q(tlast[1]),
        .R(1'b0));
  FDRE \tlast_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(tlast[1]),
        .Q(m_axis_r_tlast),
        .R(1'b0));
  FDRE \tuser_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tuser),
        .Q(tuser[0]),
        .R(1'b0));
  FDRE \tuser_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tuser[0]),
        .Q(tuser[1]),
        .R(1'b0));
  FDRE \tuser_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(tuser[1]),
        .Q(m_axis_r_tuser),
        .R(1'b0));
  FDRE \tvalid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_lr_tvalid),
        .Q(\tvalid_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tvalid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tvalid_reg_n_0_[0] ),
        .Q(\tvalid_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tvalid_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tvalid_reg_n_0_[1] ),
        .Q(m_axis_r_tvalid),
        .R(1'b0));
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
