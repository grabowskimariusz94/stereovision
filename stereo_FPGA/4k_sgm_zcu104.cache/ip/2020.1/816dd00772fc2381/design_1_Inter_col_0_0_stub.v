// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Nov 28 10:16:42 2020
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Inter_col_0_0_stub.v
// Design      : design_1_Inter_col_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Inter_col_v1_0,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axis_lr_tready, 
  s_axis_lr_tdata, s_axis_lr_tvalid, s_axis_lr_tlast, s_axis_lr_tuser, m_axis_l_tvalid, 
  m_axis_l_tdata, m_axis_l_tready, m_axis_l_tlast, m_axis_l_tuser, m_axis_r_tvalid, 
  m_axis_r_tdata, m_axis_r_tready, m_axis_r_tlast, m_axis_r_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_lr_tready,s_axis_lr_tdata[31:0],s_axis_lr_tvalid,s_axis_lr_tlast,s_axis_lr_tuser,m_axis_l_tvalid,m_axis_l_tdata[31:0],m_axis_l_tready,m_axis_l_tlast,m_axis_l_tuser,m_axis_r_tvalid,m_axis_r_tdata[31:0],m_axis_r_tready,m_axis_r_tlast,m_axis_r_tuser" */;
  input aclk;
  input aresetn;
  output s_axis_lr_tready;
  input [31:0]s_axis_lr_tdata;
  input s_axis_lr_tvalid;
  input s_axis_lr_tlast;
  input s_axis_lr_tuser;
  output m_axis_l_tvalid;
  output [31:0]m_axis_l_tdata;
  input m_axis_l_tready;
  output m_axis_l_tlast;
  output m_axis_l_tuser;
  output m_axis_r_tvalid;
  output [31:0]m_axis_r_tdata;
  input m_axis_r_tready;
  output m_axis_r_tlast;
  output m_axis_r_tuser;
endmodule
