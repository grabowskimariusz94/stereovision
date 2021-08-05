// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 14 08:34:59 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_13_13/mult_13_13_stub.v
// Design      : mult_13_13
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *)
module mult_13_13(CLK, A, B, CE, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[12:0],B[12:0],CE,P[12:0]" */;
  input CLK;
  input [12:0]A;
  input [12:0]B;
  input CE;
  output [12:0]P;
endmodule