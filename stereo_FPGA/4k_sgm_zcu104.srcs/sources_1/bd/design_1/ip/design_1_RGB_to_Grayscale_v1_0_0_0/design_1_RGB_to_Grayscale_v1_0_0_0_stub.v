// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Dec  4 21:31:53 2020
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_RGB_to_Grayscale_v1_0_0_0/design_1_RGB_to_Grayscale_v1_0_0_0_stub.v
// Design      : design_1_RGB_to_Grayscale_v1_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RGB_to_Grayscale_v1_0,Vivado 2020.1" *)
module design_1_RGB_to_Grayscale_v1_0_0_0(aclk, aresetn, s_axis_rgb_tready, 
  s_axis_rgb_tdata, s_axis_rgb_tuser, s_axis_rgb_tlast, s_axis_rgb_tvalid, 
  m_axis_gray_tvalid, m_axis_gray_tdata, m_axis_gray_tuser, m_axis_gray_tlast, 
  m_axis_gray_tready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_rgb_tready,s_axis_rgb_tdata[95:0],s_axis_rgb_tuser,s_axis_rgb_tlast,s_axis_rgb_tvalid,m_axis_gray_tvalid,m_axis_gray_tdata[31:0],m_axis_gray_tuser,m_axis_gray_tlast,m_axis_gray_tready" */;
  input aclk;
  input aresetn;
  output s_axis_rgb_tready;
  input [95:0]s_axis_rgb_tdata;
  input s_axis_rgb_tuser;
  input s_axis_rgb_tlast;
  input s_axis_rgb_tvalid;
  output m_axis_gray_tvalid;
  output [31:0]m_axis_gray_tdata;
  output m_axis_gray_tuser;
  output m_axis_gray_tlast;
  input m_axis_gray_tready;
endmodule
