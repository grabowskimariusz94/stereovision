///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 3.5
//  \   \         Application : 7 Series FPGAs Transceivers Wizard
//  /   /         Filename : vid_phy_controller_v2_2_7_gtp_common.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module vid_phy_controller_v2_2_7_gtp_common
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
//
//
// (c) Copyright 2010-2015 Xilinx, Inc. All rights reserved.
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


`default_nettype wire

`timescale 1ns / 1ps
`define DLY #1
//***************************** Entity Declaration ****************************
module vid_phy_controller_v2_2_7_gtp_common #
(
    // Simulation attributes
    parameter   WRAPPER_SIM_GTRESET_SPEEDUP    =   "TRUE",     // Set to "true" to speed up sim reset
    parameter   SIM_PLL0REFCLK_SEL             =   3'b001,
    parameter   SIM_PLL1REFCLK_SEL             =   3'b001
)
(
  input  [7:0]   DRPADDR_COMMON_IN,
  input          DRPCLK_COMMON_IN,
  input  [15:0]  DRPDI_COMMON_IN,
  output [15:0]  DRPDO_COMMON_OUT,
  input          DRPEN_COMMON_IN,
  output         DRPRDY_COMMON_OUT,
  input          DRPWE_COMMON_IN,
  input          GTEASTREFCLK0_IN,
  input          GTEASTREFCLK1_IN,
  input          GTWESTREFCLK0_IN,
  input          GTWESTREFCLK1_IN,

  output          PLL0OUTCLK_OUT,
  output          PLL0OUTREFCLK_OUT,
  output          PLL0LOCK_OUT,
  input           PLL0LOCKDETCLK_IN,
  output          PLL0REFCLKLOST_OUT,    
  input           PLL0RESET_IN,
  input    [2:0]  PLL0REFCLKSEL_IN,

  output          PLL1OUTCLK_OUT,
  output          PLL1OUTREFCLK_OUT,
  output          PLL1LOCK_OUT,
  input           PLL1LOCKDETCLK_IN,
  output          PLL1REFCLKLOST_OUT,    
  input           PLL1RESET_IN,
  input    [2:0]  PLL1REFCLKSEL_IN,
  input           PLL0PD_IN,
  input           PLL1PD_IN,
  
  input           PLL0LOCKEN_IN,
  input           PLL1LOCKEN_IN,
  input   [15:0]  PLLRSVD1_IN,
  input   [4:0]   PLLRSVD2_IN,
  
  input           GTGREFCLK0_IN,
  input           GTGREFCLK1_IN,  
  input           GTREFCLK0_IN,
  input           GTREFCLK1_IN
);


//***************************** Parameter Declarations ************************
    parameter PLL0_FBDIV_IN      = 4;
    parameter PLL1_FBDIV_IN      = 4;
    parameter PLL0_FBDIV_45_IN   = 5;
    parameter PLL1_FBDIV_45_IN   = 5;
    parameter PLL0_REFCLK_DIV_IN = 1;
    parameter PLL1_REFCLK_DIV_IN = 1;

    // ground and vcc signals
wire            tied_to_ground_i;
wire    [63:0]  tied_to_ground_vec_i;
wire            tied_to_vcc_i;
wire    [63:0]  tied_to_vcc_vec_i;

//********************************* Main Body of Code**************************

assign tied_to_ground_i             = 1'b0;
assign tied_to_ground_vec_i         = 64'h0000000000000000;
assign tied_to_vcc_i                = 1'b1;
assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;

//_________________________________________________________________________
//_________________________________________________________________________
//_________________________GTPE2_COMMON____________________________________

    GTPE2_COMMON #
    (
            // Simulation attributes
            .SIM_RESET_SPEEDUP   (WRAPPER_SIM_GTRESET_SPEEDUP),
            .SIM_PLL0REFCLK_SEL  (SIM_PLL0REFCLK_SEL),
            .SIM_PLL1REFCLK_SEL  (SIM_PLL1REFCLK_SEL),
            .SIM_VERSION         ( "2.0"),

            .PLL0_FBDIV          (PLL0_FBDIV_IN     ),	
	    .PLL0_FBDIV_45       (PLL0_FBDIV_45_IN  ),	
	    .PLL0_REFCLK_DIV     (PLL0_REFCLK_DIV_IN),	
	    .PLL1_FBDIV          (PLL1_FBDIV_IN     ),	
	    .PLL1_FBDIV_45       (PLL1_FBDIV_45_IN  ),	
	    .PLL1_REFCLK_DIV     (PLL1_REFCLK_DIV_IN),	        

           //----------------COMMON BLOCK Attributes---------------
            .BIAS_CFG                               (64'h0000000000050001),
            .COMMON_CFG                             (32'h00000000),

           //--------------------------PLL Attributes----------------------------
            .PLL0_CFG                               (27'h01F03DC),
            .PLL0_DMON_CFG                          (1'b0),
            .PLL0_INIT_CFG                          (24'h00001E),
            .PLL0_LOCK_CFG                          (9'h1E8),
            .PLL1_CFG                               (27'h01F03DC),
            .PLL1_DMON_CFG                          (1'b0),
            .PLL1_INIT_CFG                          (24'h00001E),
            .PLL1_LOCK_CFG                          (9'h1E8),
            .PLL_CLKOUT_CFG                         (8'h00),

           //--------------------------Reserved Attributes----------------------------
            .RSVD_ATTR0                             (16'h0000),
            .RSVD_ATTR1                             (16'h0000)

    )
    gtpe2_common_i
    (
	     .DMONITOROUT                    (),	
        //----------- Common Block  - Dynamic Reconfiguration Port (DRP) -----------
        .DRPADDR                        (DRPADDR_COMMON_IN),
        .DRPCLK                         (DRPCLK_COMMON_IN),
        .DRPDI                          (DRPDI_COMMON_IN),
        .DRPDO                          (DRPDO_COMMON_OUT),
        .DRPEN                          (DRPEN_COMMON_IN),
        .DRPRDY                         (DRPRDY_COMMON_OUT),
        .DRPWE                          (DRPWE_COMMON_IN),
        //--------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
        .GTEASTREFCLK0                  (GTEASTREFCLK0_IN),
        .GTEASTREFCLK1                  (GTEASTREFCLK1_IN),
	.GTGREFCLK0                     (GTGREFCLK0_IN),
	.GTGREFCLK1                     (GTGREFCLK1_IN),
        .GTREFCLK0                      (GTREFCLK0_IN),
        .GTREFCLK1                      (GTREFCLK1_IN),
        .GTWESTREFCLK0                  (GTWESTREFCLK0_IN),
        .GTWESTREFCLK1                  (GTWESTREFCLK1_IN),
        .PLL0OUTCLK                     (PLL0OUTCLK_OUT),
        .PLL0OUTREFCLK                  (PLL0OUTREFCLK_OUT),
        .PLL1OUTCLK                     (PLL1OUTCLK_OUT),
        .PLL1OUTREFCLK                  (PLL1OUTREFCLK_OUT),
        //------------------------ Common Block - PLL Ports ------------------------
        .PLL0FBCLKLOST                  (),
        .PLL0LOCK                       (PLL0LOCK_OUT),
        .PLL0LOCKDETCLK                 (PLL0LOCKDETCLK_IN),
	.PLL0LOCKEN                     (PLL0LOCKEN_IN),
        .PLL0PD                         (PLL0PD_IN),
        .PLL0REFCLKLOST                 (PLL0REFCLKLOST_OUT),
        .PLL0REFCLKSEL                  (PLL0REFCLKSEL_IN),
        .PLL0RESET                      (PLL0RESET_IN),
        .PLL1FBCLKLOST                  (),
        .PLL1LOCK                       (PLL1LOCK_OUT),
        .PLL1LOCKDETCLK                 (PLL1LOCKDETCLK_IN),
        .PLL1LOCKEN                     (PLL1LOCKEN_IN),
        .PLL1PD                         (PLL1PD_IN),
        .PLL1REFCLKLOST                 (PLL1REFCLKLOST_OUT),
        .PLL1REFCLKSEL                  (PLL1REFCLKSEL_IN),
        .PLL1RESET                      (PLL1RESET_IN),
        //-------------------------- Common Block - Ports --------------------------
        .BGRCALOVRDENB                  (tied_to_vcc_i),
        .PLLRSVD1                       (PLLRSVD1_IN),
        .PLLRSVD2                       (PLLRSVD2_IN),
        .REFCLKOUTMONITOR0              (),
        .REFCLKOUTMONITOR1              (),
        //---------------------- Common Block - RX AFE Ports -----------------------
        .PMARSVDOUT                     (),
        //------------------------------- QPLL Ports -------------------------------
        .BGBYPASSB                      (tied_to_vcc_i),
        .BGMONITORENB                   (tied_to_vcc_i),
        .BGPDB                          (tied_to_vcc_i),
        .BGRCALOVRD                     (5'b11111),
        .PMARSVD                        (8'b00000000),
        .RCALENB                        (tied_to_vcc_i)

    );
endmodule
