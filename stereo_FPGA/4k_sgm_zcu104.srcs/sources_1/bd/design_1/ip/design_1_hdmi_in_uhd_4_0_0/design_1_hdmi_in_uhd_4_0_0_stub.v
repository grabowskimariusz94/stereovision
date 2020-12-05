// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Dec  4 21:30:30 2020
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_hdmi_in_uhd_4_0_0/design_1_hdmi_in_uhd_4_0_0_stub.v
// Design      : design_1_hdmi_in_uhd_4_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdmi_in_uhd_4,Vivado 2020.1" *)
module design_1_hdmi_in_uhd_4_0_0(s_axis_video_aclk, s_axis_video_aresetn, 
  VIDEO_IN_tdata, VIDEO_IN_tlast, VIDEO_IN_tready, VIDEO_IN_tuser, VIDEO_IN_tvalid)
/* synthesis syn_black_box black_box_pad_pin="s_axis_video_aclk,s_axis_video_aresetn,VIDEO_IN_tdata[95:0],VIDEO_IN_tlast,VIDEO_IN_tready,VIDEO_IN_tuser,VIDEO_IN_tvalid" */;
  output s_axis_video_aclk;
  output s_axis_video_aresetn;
  output [95:0]VIDEO_IN_tdata;
  output VIDEO_IN_tlast;
  input VIDEO_IN_tready;
  output VIDEO_IN_tuser;
  output VIDEO_IN_tvalid;
endmodule
