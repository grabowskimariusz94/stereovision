// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Dec  4 21:30:30 2020
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_hdmi_out_uhd_4_0_0/design_1_hdmi_out_uhd_4_0_0_stub.v
// Design      : design_1_hdmi_out_uhd_4_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdmi_out_uhd_4,Vivado 2020.1" *)
module design_1_hdmi_out_uhd_4_0_0(s_axis_video_aclk, VIDEO_OUT_tdata, 
  VIDEO_OUT_tlast, VIDEO_OUT_tready, VIDEO_OUT_tuser, VIDEO_OUT_tvalid)
/* synthesis syn_black_box black_box_pad_pin="s_axis_video_aclk,VIDEO_OUT_tdata[31:0],VIDEO_OUT_tlast,VIDEO_OUT_tready,VIDEO_OUT_tuser,VIDEO_OUT_tvalid" */;
  input s_axis_video_aclk;
  input [31:0]VIDEO_OUT_tdata;
  input VIDEO_OUT_tlast;
  output VIDEO_OUT_tready;
  input VIDEO_OUT_tuser;
  input VIDEO_OUT_tvalid;
endmodule
