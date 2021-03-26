// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:v_hdmi_rx_ss:3.1
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
v_hdmi_rx_ss_0 your_instance_name (
  .s_axi_cpu_aclk(s_axi_cpu_aclk),              // input wire s_axi_cpu_aclk
  .s_axi_cpu_aresetn(s_axi_cpu_aresetn),        // input wire s_axi_cpu_aresetn
  .cable_detect(cable_detect),                  // input wire cable_detect
  .link_clk(link_clk),                          // input wire link_clk
  .s_axis_audio_aclk(s_axis_audio_aclk),        // input wire s_axis_audio_aclk
  .s_axis_audio_aresetn(s_axis_audio_aresetn),  // input wire s_axis_audio_aresetn
  .acr_cts(acr_cts),                            // output wire [19 : 0] acr_cts
  .acr_n(acr_n),                                // output wire [19 : 0] acr_n
  .acr_valid(acr_valid),                        // output wire acr_valid
  .hpd(hpd),                                    // output wire hpd
  .irq(irq),                                    // output wire irq
  .video_clk(video_clk),                        // input wire video_clk
  .fid(fid),                                    // output wire fid
  .s_axis_video_aresetn(s_axis_video_aresetn),  // input wire s_axis_video_aresetn
  .s_axis_video_aclk(s_axis_video_aclk),        // input wire s_axis_video_aclk
  .LINK_DATA1_IN_tdata(LINK_DATA1_IN_tdata),    // input wire [39 : 0] LINK_DATA1_IN_tdata
  .LINK_DATA1_IN_tvalid(LINK_DATA1_IN_tvalid),  // input wire LINK_DATA1_IN_tvalid
  .LINK_DATA0_IN_tdata(LINK_DATA0_IN_tdata),    // input wire [39 : 0] LINK_DATA0_IN_tdata
  .LINK_DATA0_IN_tvalid(LINK_DATA0_IN_tvalid),  // input wire LINK_DATA0_IN_tvalid
  .SB_STATUS_IN_tdata(SB_STATUS_IN_tdata),      // input wire [1 : 0] SB_STATUS_IN_tdata
  .SB_STATUS_IN_tvalid(SB_STATUS_IN_tvalid),    // input wire SB_STATUS_IN_tvalid
  .LINK_DATA2_IN_tdata(LINK_DATA2_IN_tdata),    // input wire [39 : 0] LINK_DATA2_IN_tdata
  .LINK_DATA2_IN_tvalid(LINK_DATA2_IN_tvalid),  // input wire LINK_DATA2_IN_tvalid
  .S_AXI_CPU_IN_araddr(S_AXI_CPU_IN_araddr),    // input wire [8 : 0] S_AXI_CPU_IN_araddr
  .S_AXI_CPU_IN_arprot(S_AXI_CPU_IN_arprot),    // input wire [2 : 0] S_AXI_CPU_IN_arprot
  .S_AXI_CPU_IN_arready(S_AXI_CPU_IN_arready),  // output wire S_AXI_CPU_IN_arready
  .S_AXI_CPU_IN_arvalid(S_AXI_CPU_IN_arvalid),  // input wire S_AXI_CPU_IN_arvalid
  .S_AXI_CPU_IN_awaddr(S_AXI_CPU_IN_awaddr),    // input wire [8 : 0] S_AXI_CPU_IN_awaddr
  .S_AXI_CPU_IN_awprot(S_AXI_CPU_IN_awprot),    // input wire [2 : 0] S_AXI_CPU_IN_awprot
  .S_AXI_CPU_IN_awready(S_AXI_CPU_IN_awready),  // output wire S_AXI_CPU_IN_awready
  .S_AXI_CPU_IN_awvalid(S_AXI_CPU_IN_awvalid),  // input wire S_AXI_CPU_IN_awvalid
  .S_AXI_CPU_IN_bready(S_AXI_CPU_IN_bready),    // input wire S_AXI_CPU_IN_bready
  .S_AXI_CPU_IN_bresp(S_AXI_CPU_IN_bresp),      // output wire [1 : 0] S_AXI_CPU_IN_bresp
  .S_AXI_CPU_IN_bvalid(S_AXI_CPU_IN_bvalid),    // output wire S_AXI_CPU_IN_bvalid
  .S_AXI_CPU_IN_rdata(S_AXI_CPU_IN_rdata),      // output wire [31 : 0] S_AXI_CPU_IN_rdata
  .S_AXI_CPU_IN_rready(S_AXI_CPU_IN_rready),    // input wire S_AXI_CPU_IN_rready
  .S_AXI_CPU_IN_rresp(S_AXI_CPU_IN_rresp),      // output wire [1 : 0] S_AXI_CPU_IN_rresp
  .S_AXI_CPU_IN_rvalid(S_AXI_CPU_IN_rvalid),    // output wire S_AXI_CPU_IN_rvalid
  .S_AXI_CPU_IN_wdata(S_AXI_CPU_IN_wdata),      // input wire [31 : 0] S_AXI_CPU_IN_wdata
  .S_AXI_CPU_IN_wready(S_AXI_CPU_IN_wready),    // output wire S_AXI_CPU_IN_wready
  .S_AXI_CPU_IN_wstrb(S_AXI_CPU_IN_wstrb),      // input wire [3 : 0] S_AXI_CPU_IN_wstrb
  .S_AXI_CPU_IN_wvalid(S_AXI_CPU_IN_wvalid),    // input wire S_AXI_CPU_IN_wvalid
  .AUDIO_OUT_tdata(AUDIO_OUT_tdata),            // output wire [31 : 0] AUDIO_OUT_tdata
  .AUDIO_OUT_tid(AUDIO_OUT_tid),                // output wire [7 : 0] AUDIO_OUT_tid
  .AUDIO_OUT_tready(AUDIO_OUT_tready),          // input wire AUDIO_OUT_tready
  .AUDIO_OUT_tvalid(AUDIO_OUT_tvalid),          // output wire AUDIO_OUT_tvalid
  .DDC_OUT_scl_i(DDC_OUT_scl_i),                // input wire DDC_OUT_scl_i
  .DDC_OUT_scl_o(DDC_OUT_scl_o),                // output wire DDC_OUT_scl_o
  .DDC_OUT_scl_t(DDC_OUT_scl_t),                // output wire DDC_OUT_scl_t
  .DDC_OUT_sda_i(DDC_OUT_sda_i),                // input wire DDC_OUT_sda_i
  .DDC_OUT_sda_o(DDC_OUT_sda_o),                // output wire DDC_OUT_sda_o
  .DDC_OUT_sda_t(DDC_OUT_sda_t),                // output wire DDC_OUT_sda_t
  .VIDEO_OUT_tdata(VIDEO_OUT_tdata),            // output wire [95 : 0] VIDEO_OUT_tdata
  .VIDEO_OUT_tlast(VIDEO_OUT_tlast),            // output wire VIDEO_OUT_tlast
  .VIDEO_OUT_tready(VIDEO_OUT_tready),          // input wire VIDEO_OUT_tready
  .VIDEO_OUT_tuser(VIDEO_OUT_tuser),            // output wire VIDEO_OUT_tuser
  .VIDEO_OUT_tvalid(VIDEO_OUT_tvalid)          // output wire VIDEO_OUT_tvalid
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file v_hdmi_rx_ss_0.v when simulating
// the core, v_hdmi_rx_ss_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

