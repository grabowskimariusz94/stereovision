// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:user:SAD:1.0
// IP Revision: 8

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_SAD_0_0 (
  aclk,
  aresetn,
  s_axis_l_tdata,
  s_axis_l_tlast,
  s_axis_l_tuser,
  s_axis_l_tvalid,
  s_axis_r_tdata,
  s_axis_r_tlast,
  s_axis_r_tuser,
  s_axis_r_tvalid,
  m_axis_l_tvalid,
  m_axis_l_tdata,
  m_axis_l_tlast,
  m_axis_l_tuser,
  m_axis_r_tvalid,
  m_axis_r_tdata,
  m_axis_r_tlast,
  m_axis_r_tuser
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF S_AXIS_L:S_AXIS_R:M_AXIS_L:M_AXIS_R, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_L TDATA" *)
input wire [31 : 0] s_axis_l_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_L TLAST" *)
input wire s_axis_l_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_L TUSER" *)
input wire s_axis_l_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_L, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_L TVALID" *)
input wire s_axis_l_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_R TDATA" *)
input wire [31 : 0] s_axis_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_R TLAST" *)
input wire s_axis_r_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_R TUSER" *)
input wire s_axis_r_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_R, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_R TVALID" *)
input wire s_axis_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TVALID" *)
output wire m_axis_l_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TDATA" *)
output wire [31 : 0] m_axis_l_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TLAST" *)
output wire m_axis_l_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_L, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_L TUSER" *)
output wire m_axis_l_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TVALID" *)
output wire m_axis_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TDATA" *)
output wire [31 : 0] m_axis_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TLAST" *)
output wire m_axis_r_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_R, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_R TUSER" *)
output wire m_axis_r_tuser;

  SAD_v1_0 #(
    .C_S_AXIS_L_TDATA_WIDTH(32),  // AXI4Stream sink: Data Width
    .C_S_AXIS_R_TDATA_WIDTH(32),  // AXI4Stream sink: Data Width
    .C_M_AXIS_L_TDATA_WIDTH(32),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .C_M_AXIS_R_TDATA_WIDTH(32),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .height(495),
    .width(740),
    .log_width(10)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_l_tdata(s_axis_l_tdata),
    .s_axis_l_tlast(s_axis_l_tlast),
    .s_axis_l_tuser(s_axis_l_tuser),
    .s_axis_l_tvalid(s_axis_l_tvalid),
    .s_axis_r_tdata(s_axis_r_tdata),
    .s_axis_r_tlast(s_axis_r_tlast),
    .s_axis_r_tuser(s_axis_r_tuser),
    .s_axis_r_tvalid(s_axis_r_tvalid),
    .m_axis_l_tvalid(m_axis_l_tvalid),
    .m_axis_l_tdata(m_axis_l_tdata),
    .m_axis_l_tlast(m_axis_l_tlast),
    .m_axis_l_tuser(m_axis_l_tuser),
    .m_axis_r_tvalid(m_axis_r_tvalid),
    .m_axis_r_tdata(m_axis_r_tdata),
    .m_axis_r_tlast(m_axis_r_tlast),
    .m_axis_r_tuser(m_axis_r_tuser)
  );
endmodule
