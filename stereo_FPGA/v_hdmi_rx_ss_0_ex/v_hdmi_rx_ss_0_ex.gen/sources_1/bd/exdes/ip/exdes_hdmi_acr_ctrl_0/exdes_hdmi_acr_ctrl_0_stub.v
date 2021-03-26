// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 25 21:03:18 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_hdmi_acr_ctrl_0/exdes_hdmi_acr_ctrl_0_stub.v
// Design      : exdes_hdmi_acr_ctrl_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdmi_acr_ctrl,Vivado 2020.2" *)
module exdes_hdmi_acr_ctrl_0(axi_aclk, axi_aresetn, axi_awvalid, 
  axi_awready, axi_awaddr, axi_wvalid, axi_wready, axi_wdata, axi_wstrb, axi_bvalid, axi_bready, 
  axi_bresp, axi_arvalid, axi_arready, axi_araddr, axi_rvalid, axi_rready, axi_rdata, axi_rresp, 
  aud_clk, hdmi_clk, pll_lock_in, aud_resetn_out, aud_acr_valid_in, aud_acr_cts_in, 
  aud_acr_n_in, aud_acr_valid_out, aud_acr_cts_out, aud_acr_n_out)
/* synthesis syn_black_box black_box_pad_pin="axi_aclk,axi_aresetn,axi_awvalid,axi_awready,axi_awaddr[31:0],axi_wvalid,axi_wready,axi_wdata[31:0],axi_wstrb[3:0],axi_bvalid,axi_bready,axi_bresp[1:0],axi_arvalid,axi_arready,axi_araddr[31:0],axi_rvalid,axi_rready,axi_rdata[31:0],axi_rresp[1:0],aud_clk,hdmi_clk,pll_lock_in,aud_resetn_out,aud_acr_valid_in,aud_acr_cts_in[19:0],aud_acr_n_in[19:0],aud_acr_valid_out,aud_acr_cts_out[19:0],aud_acr_n_out[19:0]" */;
  input axi_aclk;
  input axi_aresetn;
  input axi_awvalid;
  output axi_awready;
  input [31:0]axi_awaddr;
  input axi_wvalid;
  output axi_wready;
  input [31:0]axi_wdata;
  input [3:0]axi_wstrb;
  output axi_bvalid;
  input axi_bready;
  output [1:0]axi_bresp;
  input axi_arvalid;
  output axi_arready;
  input [31:0]axi_araddr;
  output axi_rvalid;
  input axi_rready;
  output [31:0]axi_rdata;
  output [1:0]axi_rresp;
  input aud_clk;
  input hdmi_clk;
  input pll_lock_in;
  output aud_resetn_out;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;
endmodule
