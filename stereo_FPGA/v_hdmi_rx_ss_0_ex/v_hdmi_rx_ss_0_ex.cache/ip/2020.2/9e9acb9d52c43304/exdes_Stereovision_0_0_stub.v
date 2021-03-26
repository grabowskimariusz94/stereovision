// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 25 20:57:52 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_Stereovision_0_0_stub.v
// Design      : exdes_Stereovision_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Stereovision_v1_0,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axis_tready, s_axis_tdata, 
  s_axis_tuser, s_axis_tlast, s_axis_tvalid, m_axis_tvalid, m_axis_tdata, m_axis_tuser, 
  m_axis_tlast, m_axis_tready, switch_img)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tready,s_axis_tdata[95:0],s_axis_tuser,s_axis_tlast,s_axis_tvalid,m_axis_tvalid,m_axis_tdata[95:0],m_axis_tuser,m_axis_tlast,m_axis_tready,switch_img" */;
  input aclk;
  input aresetn;
  output s_axis_tready;
  input [95:0]s_axis_tdata;
  input s_axis_tuser;
  input s_axis_tlast;
  input s_axis_tvalid;
  output m_axis_tvalid;
  output [95:0]m_axis_tdata;
  output m_axis_tuser;
  output m_axis_tlast;
  input m_axis_tready;
  input switch_img;
endmodule
