//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri Mar 26 15:49:25 2021
//Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
//Command     : generate_target exdes_wrapper.bd
//Design      : exdes_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module exdes_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    DRU_CLK_N_IN,
    DRU_CLK_P_IN,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO_DIP_SW0,
    GPIO_DIP_SW1,
    GPIO_DIP_SW2,
    GPIO_DIP_SW3,
    HDMI_RX_CLK_N_IN,
    HDMI_RX_CLK_P_IN,
    HDMI_RX_DAT_N_IN,
    HDMI_RX_DAT_P_IN,
    HDMI_TX_CLK_N_OUT,
    HDMI_TX_CLK_P_OUT,
    HDMI_TX_DAT_N_OUT,
    HDMI_TX_DAT_P_OUT,
    LED0,
    ONBRD_SI5324_RST_OUT,
    RX_DDC_OUT_scl_io,
    RX_DDC_OUT_sda_io,
    RX_DET_IN,
    RX_HPD_OUT,
    RX_I2C_EN_N_OUT,
    RX_REFCLK_N_OUT,
    RX_REFCLK_P_OUT,
    SI5324_LOL_IN,
    SI5324_RST_OUT,
    TX_CLKSEL_OUT,
    TX_DDC_OUT_scl_io,
    TX_DDC_OUT_sda_io,
    TX_EN_OUT,
    TX_HPD_IN,
    TX_REFCLK_N_IN,
    TX_REFCLK_P_IN,
    fmch_iic_scl_io,
    fmch_iic_sda_io,
    iic_main_scl_io,
    iic_main_sda_io,
    reset,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  input DRU_CLK_N_IN;
  input DRU_CLK_P_IN;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input GPIO_DIP_SW0;
  input GPIO_DIP_SW1;
  input GPIO_DIP_SW2;
  input GPIO_DIP_SW3;
  input HDMI_RX_CLK_N_IN;
  input HDMI_RX_CLK_P_IN;
  input [2:0]HDMI_RX_DAT_N_IN;
  input [2:0]HDMI_RX_DAT_P_IN;
  output HDMI_TX_CLK_N_OUT;
  output HDMI_TX_CLK_P_OUT;
  output [2:0]HDMI_TX_DAT_N_OUT;
  output [2:0]HDMI_TX_DAT_P_OUT;
  output LED0;
  output [0:0]ONBRD_SI5324_RST_OUT;
  inout RX_DDC_OUT_scl_io;
  inout RX_DDC_OUT_sda_io;
  input RX_DET_IN;
  output [0:0]RX_HPD_OUT;
  output [0:0]RX_I2C_EN_N_OUT;
  output RX_REFCLK_N_OUT;
  output RX_REFCLK_P_OUT;
  input SI5324_LOL_IN;
  output [0:0]SI5324_RST_OUT;
  output [0:0]TX_CLKSEL_OUT;
  inout TX_DDC_OUT_scl_io;
  inout TX_DDC_OUT_sda_io;
  output [0:0]TX_EN_OUT;
  input TX_HPD_IN;
  input TX_REFCLK_N_IN;
  input TX_REFCLK_P_IN;
  inout fmch_iic_scl_io;
  inout fmch_iic_sda_io;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  input reset;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire DRU_CLK_N_IN;
  wire DRU_CLK_P_IN;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire GPIO_DIP_SW0;
  wire GPIO_DIP_SW1;
  wire GPIO_DIP_SW2;
  wire GPIO_DIP_SW3;
  wire HDMI_RX_CLK_N_IN;
  wire HDMI_RX_CLK_P_IN;
  wire [2:0]HDMI_RX_DAT_N_IN;
  wire [2:0]HDMI_RX_DAT_P_IN;
  wire HDMI_TX_CLK_N_OUT;
  wire HDMI_TX_CLK_P_OUT;
  wire [2:0]HDMI_TX_DAT_N_OUT;
  wire [2:0]HDMI_TX_DAT_P_OUT;
  wire LED0;
  wire [0:0]ONBRD_SI5324_RST_OUT;
  wire RX_DDC_OUT_scl_i;
  wire RX_DDC_OUT_scl_io;
  wire RX_DDC_OUT_scl_o;
  wire RX_DDC_OUT_scl_t;
  wire RX_DDC_OUT_sda_i;
  wire RX_DDC_OUT_sda_io;
  wire RX_DDC_OUT_sda_o;
  wire RX_DDC_OUT_sda_t;
  wire RX_DET_IN;
  wire [0:0]RX_HPD_OUT;
  wire [0:0]RX_I2C_EN_N_OUT;
  wire RX_REFCLK_N_OUT;
  wire RX_REFCLK_P_OUT;
  wire SI5324_LOL_IN;
  wire [0:0]SI5324_RST_OUT;
  wire [0:0]TX_CLKSEL_OUT;
  wire TX_DDC_OUT_scl_i;
  wire TX_DDC_OUT_scl_io;
  wire TX_DDC_OUT_scl_o;
  wire TX_DDC_OUT_scl_t;
  wire TX_DDC_OUT_sda_i;
  wire TX_DDC_OUT_sda_io;
  wire TX_DDC_OUT_sda_o;
  wire TX_DDC_OUT_sda_t;
  wire [0:0]TX_EN_OUT;
  wire TX_HPD_IN;
  wire TX_REFCLK_N_IN;
  wire TX_REFCLK_P_IN;
  wire fmch_iic_scl_i;
  wire fmch_iic_scl_io;
  wire fmch_iic_scl_o;
  wire fmch_iic_scl_t;
  wire fmch_iic_sda_i;
  wire fmch_iic_sda_io;
  wire fmch_iic_sda_o;
  wire fmch_iic_sda_t;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire reset;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  IOBUF RX_DDC_OUT_scl_iobuf
       (.I(RX_DDC_OUT_scl_o),
        .IO(RX_DDC_OUT_scl_io),
        .O(RX_DDC_OUT_scl_i),
        .T(RX_DDC_OUT_scl_t));
  IOBUF RX_DDC_OUT_sda_iobuf
       (.I(RX_DDC_OUT_sda_o),
        .IO(RX_DDC_OUT_sda_io),
        .O(RX_DDC_OUT_sda_i),
        .T(RX_DDC_OUT_sda_t));
  IOBUF TX_DDC_OUT_scl_iobuf
       (.I(TX_DDC_OUT_scl_o),
        .IO(TX_DDC_OUT_scl_io),
        .O(TX_DDC_OUT_scl_i),
        .T(TX_DDC_OUT_scl_t));
  IOBUF TX_DDC_OUT_sda_iobuf
       (.I(TX_DDC_OUT_sda_o),
        .IO(TX_DDC_OUT_sda_io),
        .O(TX_DDC_OUT_sda_i),
        .T(TX_DDC_OUT_sda_t));
  exdes exdes_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .DRU_CLK_N_IN(DRU_CLK_N_IN),
        .DRU_CLK_P_IN(DRU_CLK_P_IN),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_DIP_SW0(GPIO_DIP_SW0),
        .GPIO_DIP_SW1(GPIO_DIP_SW1),
        .GPIO_DIP_SW2(GPIO_DIP_SW2),
        .GPIO_DIP_SW3(GPIO_DIP_SW3),
        .HDMI_RX_CLK_N_IN(HDMI_RX_CLK_N_IN),
        .HDMI_RX_CLK_P_IN(HDMI_RX_CLK_P_IN),
        .HDMI_RX_DAT_N_IN(HDMI_RX_DAT_N_IN),
        .HDMI_RX_DAT_P_IN(HDMI_RX_DAT_P_IN),
        .HDMI_TX_CLK_N_OUT(HDMI_TX_CLK_N_OUT),
        .HDMI_TX_CLK_P_OUT(HDMI_TX_CLK_P_OUT),
        .HDMI_TX_DAT_N_OUT(HDMI_TX_DAT_N_OUT),
        .HDMI_TX_DAT_P_OUT(HDMI_TX_DAT_P_OUT),
        .LED0(LED0),
        .ONBRD_SI5324_RST_OUT(ONBRD_SI5324_RST_OUT),
        .RX_DDC_OUT_scl_i(RX_DDC_OUT_scl_i),
        .RX_DDC_OUT_scl_o(RX_DDC_OUT_scl_o),
        .RX_DDC_OUT_scl_t(RX_DDC_OUT_scl_t),
        .RX_DDC_OUT_sda_i(RX_DDC_OUT_sda_i),
        .RX_DDC_OUT_sda_o(RX_DDC_OUT_sda_o),
        .RX_DDC_OUT_sda_t(RX_DDC_OUT_sda_t),
        .RX_DET_IN(RX_DET_IN),
        .RX_HPD_OUT(RX_HPD_OUT),
        .RX_I2C_EN_N_OUT(RX_I2C_EN_N_OUT),
        .RX_REFCLK_N_OUT(RX_REFCLK_N_OUT),
        .RX_REFCLK_P_OUT(RX_REFCLK_P_OUT),
        .SI5324_LOL_IN(SI5324_LOL_IN),
        .SI5324_RST_OUT(SI5324_RST_OUT),
        .TX_CLKSEL_OUT(TX_CLKSEL_OUT),
        .TX_DDC_OUT_scl_i(TX_DDC_OUT_scl_i),
        .TX_DDC_OUT_scl_o(TX_DDC_OUT_scl_o),
        .TX_DDC_OUT_scl_t(TX_DDC_OUT_scl_t),
        .TX_DDC_OUT_sda_i(TX_DDC_OUT_sda_i),
        .TX_DDC_OUT_sda_o(TX_DDC_OUT_sda_o),
        .TX_DDC_OUT_sda_t(TX_DDC_OUT_sda_t),
        .TX_EN_OUT(TX_EN_OUT),
        .TX_HPD_IN(TX_HPD_IN),
        .TX_REFCLK_N_IN(TX_REFCLK_N_IN),
        .TX_REFCLK_P_IN(TX_REFCLK_P_IN),
        .fmch_iic_scl_i(fmch_iic_scl_i),
        .fmch_iic_scl_o(fmch_iic_scl_o),
        .fmch_iic_scl_t(fmch_iic_scl_t),
        .fmch_iic_sda_i(fmch_iic_sda_i),
        .fmch_iic_sda_o(fmch_iic_sda_o),
        .fmch_iic_sda_t(fmch_iic_sda_t),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .reset(reset),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
  IOBUF fmch_iic_scl_iobuf
       (.I(fmch_iic_scl_o),
        .IO(fmch_iic_scl_io),
        .O(fmch_iic_scl_i),
        .T(fmch_iic_scl_t));
  IOBUF fmch_iic_sda_iobuf
       (.I(fmch_iic_sda_o),
        .IO(fmch_iic_sda_io),
        .O(fmch_iic_sda_i),
        .T(fmch_iic_sda_t));
  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
endmodule
