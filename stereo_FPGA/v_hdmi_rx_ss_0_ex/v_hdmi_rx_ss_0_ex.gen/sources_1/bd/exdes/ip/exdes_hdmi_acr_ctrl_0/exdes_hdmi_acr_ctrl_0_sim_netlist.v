// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 25 21:03:18 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/stereo_fpga/v_hdmi_rx_ss_0_ex/v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_hdmi_acr_ctrl_0/exdes_hdmi_acr_ctrl_0_sim_netlist.v
// Design      : exdes_hdmi_acr_ctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "exdes_hdmi_acr_ctrl_0,hdmi_acr_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hdmi_acr_ctrl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module exdes_hdmi_acr_ctrl_0
   (axi_aclk,
    axi_aresetn,
    axi_awvalid,
    axi_awready,
    axi_awaddr,
    axi_wvalid,
    axi_wready,
    axi_wdata,
    axi_wstrb,
    axi_bvalid,
    axi_bready,
    axi_bresp,
    axi_arvalid,
    axi_arready,
    axi_araddr,
    axi_rvalid,
    axi_rready,
    axi_rdata,
    axi_rresp,
    aud_clk,
    hdmi_clk,
    pll_lock_in,
    aud_resetn_out,
    aud_acr_valid_in,
    aud_acr_cts_in,
    aud_acr_n_in,
    aud_acr_valid_out,
    aud_acr_cts_out,
    aud_acr_n_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axi, ASSOCIATED_RESET axi_aresetn" *) input axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *) input axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWVALID" *) input axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWREADY" *) output axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWADDR" *) input [31:0]axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WVALID" *) input axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WREADY" *) output axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WDATA" *) input [31:0]axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WSTRB" *) input [3:0]axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BVALID" *) output axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BREADY" *) input axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BRESP" *) output [1:0]axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARVALID" *) input axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARREADY" *) output axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARADDR" *) input [31:0]axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RVALID" *) output axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RREADY" *) input axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RDATA" *) output [31:0]axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aud_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, INSERT_VIP 0" *) input aud_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hdmi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hdmi_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN exdes_vid_phy_controller_0_tx_tmds_clk, INSERT_VIP 0" *) input hdmi_clk;
  input pll_lock_in;
  output aud_resetn_out;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;

  wire \<const0> ;
  wire [19:0]aud_acr_cts_in;
  wire [19:0]aud_acr_cts_out;
  wire [19:0]aud_acr_n_in;
  wire [19:0]aud_acr_n_out;
  wire aud_acr_valid_in;
  wire aud_acr_valid_out;
  wire aud_clk;
  wire aud_resetn_out;
  wire axi_aclk;
  wire [31:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [31:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [1:1]\^axi_bresp ;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [1:1]\^axi_rresp ;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire axi_wvalid;
  wire hdmi_clk;
  wire pll_lock_in;

  assign axi_bresp[1] = \^axi_bresp [1];
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \^axi_rresp [1];
  assign axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl inst
       (.S_AXI_WREADY_reg(axi_wready),
        .aud_acr_cts_in(aud_acr_cts_in),
        .aud_acr_cts_out(aud_acr_cts_out),
        .aud_acr_n_in(aud_acr_n_in),
        .aud_acr_n_out(aud_acr_n_out),
        .aud_acr_valid_in(aud_acr_valid_in),
        .aud_acr_valid_out(aud_acr_valid_out),
        .aud_clk(aud_clk),
        .aud_resetn_out(aud_resetn_out),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr[7:0]),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr[7:0]),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bresp(\^axi_bresp ),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rresp(\^axi_rresp ),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wvalid(axi_wvalid),
        .hdmi_clk(hdmi_clk),
        .pll_lock_in(pll_lock_in));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_ctrl" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl
   (axi_rdata,
    axi_rresp,
    aud_acr_valid_out,
    aud_acr_cts_out,
    aud_acr_n_out,
    S_AXI_WREADY_reg,
    aud_resetn_out,
    axi_awready,
    axi_bvalid,
    axi_bresp,
    axi_arready,
    axi_rvalid,
    axi_bready,
    axi_awvalid,
    axi_wvalid,
    axi_aclk,
    axi_awaddr,
    axi_wdata,
    hdmi_clk,
    aud_clk,
    pll_lock_in,
    axi_rready,
    axi_arvalid,
    axi_araddr,
    aud_acr_valid_in,
    aud_acr_cts_in,
    aud_acr_n_in,
    axi_aresetn);
  output [31:0]axi_rdata;
  output [0:0]axi_rresp;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;
  output S_AXI_WREADY_reg;
  output aud_resetn_out;
  output axi_awready;
  output axi_bvalid;
  output [0:0]axi_bresp;
  output axi_arready;
  output axi_rvalid;
  input axi_bready;
  input axi_awvalid;
  input axi_wvalid;
  input axi_aclk;
  input [7:0]axi_awaddr;
  input [31:0]axi_wdata;
  input hdmi_clk;
  input aud_clk;
  input pll_lock_in;
  input axi_rready;
  input axi_arvalid;
  input [7:0]axi_araddr;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  input axi_aresetn;

  wire S_AXI_WREADY_reg;
  wire [19:0]aud_acr_cts_in;
  wire [19:0]aud_acr_cts_out;
  wire [19:0]aud_acr_n_in;
  wire [19:0]aud_acr_n_out;
  wire aud_acr_valid_in;
  wire aud_acr_valid_out;
  wire aud_clk;
  wire aud_resetn_out;
  wire axi_aclk;
  wire [7:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [7:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [0:0]axi_bresp;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [0:0]axi_rresp;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wvalid;
  wire hdmi_clk;
  wire pll_lock_in;

  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_top hdmi_acr_ctrl_top_inst
       (.S_AXI_WREADY_reg(S_AXI_WREADY_reg),
        .aud_acr_cts_in(aud_acr_cts_in),
        .aud_acr_cts_out(aud_acr_cts_out),
        .aud_acr_n_in(aud_acr_n_in),
        .aud_acr_n_out(aud_acr_n_out),
        .aud_acr_valid_in(aud_acr_valid_in),
        .aud_acr_valid_out(aud_acr_valid_out),
        .aud_clk(aud_clk),
        .aud_resetn_out(aud_resetn_out),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bresp(axi_bresp),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rresp(axi_rresp),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wvalid(axi_wvalid),
        .hdmi_clk(hdmi_clk),
        .pll_lock_in(pll_lock_in));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_ctrl_axi" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_axi
   (data1,
    axi_rresp,
    axi_awready,
    S_AXI_WREADY_reg_0,
    axi_bvalid,
    axi_bresp,
    axi_arready,
    axi_rvalid,
    Q,
    axi_rdata,
    axi_wdata,
    axi_aclk,
    axi_awvalid,
    axi_wvalid,
    axi_bready,
    axi_arvalid,
    axi_rready,
    axi_aresetn,
    axi_awaddr,
    D,
    axi_araddr);
  output [3:0]data1;
  output [0:0]axi_rresp;
  output axi_awready;
  output S_AXI_WREADY_reg_0;
  output axi_bvalid;
  output [0:0]axi_bresp;
  output axi_arready;
  output axi_rvalid;
  output [31:0]Q;
  output [31:0]axi_rdata;
  input [31:0]axi_wdata;
  input axi_aclk;
  input axi_awvalid;
  input axi_wvalid;
  input axi_bready;
  input axi_arvalid;
  input axi_rready;
  input axi_aresetn;
  input [7:0]axi_awaddr;
  input [31:0]D;
  input [7:0]axi_araddr;

  wire [31:0]D;
  wire \FSM_onehot_stmRead[3]_i_1_n_0 ;
  wire \FSM_sequential_stmWrite[0]_i_1_n_0 ;
  wire \FSM_sequential_stmWrite[1]_i_1_n_0 ;
  wire [31:0]Q;
  wire S_AXI_ARREADY_i_1_n_0;
  wire S_AXI_AWREADY_i_1_n_0;
  wire S_AXI_AWREADY_i_2_n_0;
  wire \S_AXI_BRESP[1]_i_1_n_0 ;
  wire \S_AXI_BRESP[1]_i_2_n_0 ;
  wire S_AXI_BVALID_i_1_n_0;
  wire \S_AXI_RDATA[0]_i_1_n_0 ;
  wire \S_AXI_RDATA[0]_i_2_n_0 ;
  wire \S_AXI_RDATA[10]_i_1_n_0 ;
  wire \S_AXI_RDATA[11]_i_1_n_0 ;
  wire \S_AXI_RDATA[12]_i_1_n_0 ;
  wire \S_AXI_RDATA[13]_i_1_n_0 ;
  wire \S_AXI_RDATA[14]_i_1_n_0 ;
  wire \S_AXI_RDATA[15]_i_1_n_0 ;
  wire \S_AXI_RDATA[16]_i_1_n_0 ;
  wire \S_AXI_RDATA[17]_i_1_n_0 ;
  wire \S_AXI_RDATA[18]_i_1_n_0 ;
  wire \S_AXI_RDATA[19]_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_i_2_n_0 ;
  wire \S_AXI_RDATA[20]_i_1_n_0 ;
  wire \S_AXI_RDATA[21]_i_1_n_0 ;
  wire \S_AXI_RDATA[22]_i_1_n_0 ;
  wire \S_AXI_RDATA[23]_i_1_n_0 ;
  wire \S_AXI_RDATA[24]_i_1_n_0 ;
  wire \S_AXI_RDATA[25]_i_1_n_0 ;
  wire \S_AXI_RDATA[26]_i_1_n_0 ;
  wire \S_AXI_RDATA[27]_i_1_n_0 ;
  wire \S_AXI_RDATA[28]_i_1_n_0 ;
  wire \S_AXI_RDATA[29]_i_1_n_0 ;
  wire \S_AXI_RDATA[2]_i_1_n_0 ;
  wire \S_AXI_RDATA[2]_i_2_n_0 ;
  wire \S_AXI_RDATA[30]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_2_n_0 ;
  wire \S_AXI_RDATA[31]_i_3_n_0 ;
  wire \S_AXI_RDATA[31]_i_4_n_0 ;
  wire \S_AXI_RDATA[31]_i_5_n_0 ;
  wire \S_AXI_RDATA[3]_i_1_n_0 ;
  wire \S_AXI_RDATA[3]_i_2_n_0 ;
  wire \S_AXI_RDATA[4]_i_1_n_0 ;
  wire \S_AXI_RDATA[5]_i_1_n_0 ;
  wire \S_AXI_RDATA[6]_i_1_n_0 ;
  wire \S_AXI_RDATA[7]_i_1_n_0 ;
  wire \S_AXI_RDATA[8]_i_1_n_0 ;
  wire \S_AXI_RDATA[9]_i_1_n_0 ;
  wire \S_AXI_RRESP[1]_i_1_n_0 ;
  wire \S_AXI_RRESP[1]_i_2_n_0 ;
  wire S_AXI_RVALID_i_1_n_0;
  wire S_AXI_WREADY_i_1_n_0;
  wire S_AXI_WREADY_reg_0;
  wire axi_aclk;
  wire [7:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [7:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [0:0]axi_bresp;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [0:0]axi_rresp;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wvalid;
  wire [3:0]data1;
  wire p_0_in0;
  wire [31:0]rCTSValue;
  wire rEnab_ACR;
  wire rNValue;
  wire [7:4]rReadAddr;
  wire \rReadAddr[0]_i_1_n_0 ;
  wire \rReadAddr[1]_i_1_n_0 ;
  wire \rReadAddr[2]_i_1_n_0 ;
  wire \rReadAddr[3]_i_1_n_0 ;
  wire \rReadAddr[4]_i_1_n_0 ;
  wire \rReadAddr[5]_i_1_n_0 ;
  wire \rReadAddr[6]_i_1_n_0 ;
  wire \rReadAddr[7]_i_1_n_0 ;
  wire \rReadAddr[7]_i_2_n_0 ;
  wire \rReadAddr_reg_n_0_[0] ;
  wire \rReadAddr_reg_n_0_[1] ;
  wire \rReadAddr_reg_n_0_[2] ;
  wire \rReadAddr_reg_n_0_[3] ;
  wire [31:0]rVersionNr;
  wire rVersionNr_0;
  wire rWriteAddr;
  wire \rWriteAddr_reg_n_0_[0] ;
  wire \rWriteAddr_reg_n_0_[1] ;
  wire \rWriteAddr_reg_n_0_[2] ;
  wire \rWriteAddr_reg_n_0_[3] ;
  wire \rWriteAddr_reg_n_0_[5] ;
  wire \rWriteAddr_reg_n_0_[6] ;
  wire \rWriteAddr_reg_n_0_[7] ;
  wire [3:0]stmRead;
  wire [1:0]stmWrite;

  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_stmRead[3]_i_1 
       (.I0(stmRead[0]),
        .I1(stmRead[2]),
        .I2(axi_rready),
        .I3(stmRead[3]),
        .I4(stmRead[1]),
        .I5(axi_arvalid),
        .O(\FSM_onehot_stmRead[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_stmRead_reg[0] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .D(stmRead[3]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(stmRead[0]));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[1] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmRead[0]),
        .Q(stmRead[1]));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[2] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmRead[1]),
        .Q(stmRead[2]));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[3] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmRead[2]),
        .Q(stmRead[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4747FF33)) 
    \FSM_sequential_stmWrite[0]_i_1 
       (.I0(axi_bready),
        .I1(stmWrite[1]),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .I4(stmWrite[0]),
        .O(\FSM_sequential_stmWrite[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h38F8)) 
    \FSM_sequential_stmWrite[1]_i_1 
       (.I0(axi_awvalid),
        .I1(stmWrite[0]),
        .I2(stmWrite[1]),
        .I3(axi_bready),
        .O(\FSM_sequential_stmWrite[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11," *) 
  FDCE \FSM_sequential_stmWrite_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\FSM_sequential_stmWrite[0]_i_1_n_0 ),
        .Q(stmWrite[0]));
  (* FSM_ENCODED_STATES = "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11," *) 
  FDCE \FSM_sequential_stmWrite_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\FSM_sequential_stmWrite[1]_i_1_n_0 ),
        .Q(stmWrite[1]));
  LUT4 #(
    .INIT(16'hDFDC)) 
    S_AXI_ARREADY_i_1
       (.I0(axi_arvalid),
        .I1(stmRead[0]),
        .I2(stmRead[1]),
        .I3(axi_arready),
        .O(S_AXI_ARREADY_i_1_n_0));
  FDCE S_AXI_ARREADY_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_ARREADY_i_1_n_0),
        .Q(axi_arready));
  LUT4 #(
    .INIT(16'h8BBB)) 
    S_AXI_AWREADY_i_1
       (.I0(axi_awready),
        .I1(stmWrite[1]),
        .I2(axi_awvalid),
        .I3(stmWrite[0]),
        .O(S_AXI_AWREADY_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_i_2
       (.I0(axi_aresetn),
        .O(S_AXI_AWREADY_i_2_n_0));
  FDCE S_AXI_AWREADY_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_AWREADY_i_1_n_0),
        .Q(axi_awready));
  LUT6 #(
    .INIT(64'hF4FFFFFFF4000000)) 
    \S_AXI_BRESP[1]_i_1 
       (.I0(\rWriteAddr_reg_n_0_[2] ),
        .I1(\rWriteAddr_reg_n_0_[3] ),
        .I2(\S_AXI_BRESP[1]_i_2_n_0 ),
        .I3(S_AXI_WREADY_reg_0),
        .I4(axi_wvalid),
        .I5(axi_bresp),
        .O(\S_AXI_BRESP[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \S_AXI_BRESP[1]_i_2 
       (.I0(\rWriteAddr_reg_n_0_[6] ),
        .I1(\rWriteAddr_reg_n_0_[7] ),
        .I2(p_0_in0),
        .I3(\rWriteAddr_reg_n_0_[5] ),
        .I4(\rWriteAddr_reg_n_0_[1] ),
        .I5(\rWriteAddr_reg_n_0_[0] ),
        .O(\S_AXI_BRESP[1]_i_2_n_0 ));
  FDCE \S_AXI_BRESP_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_BRESP[1]_i_1_n_0 ),
        .Q(axi_bresp));
  LUT5 #(
    .INIT(32'h5FF050C0)) 
    S_AXI_BVALID_i_1
       (.I0(axi_bready),
        .I1(axi_wvalid),
        .I2(stmWrite[1]),
        .I3(stmWrite[0]),
        .I4(axi_bvalid),
        .O(S_AXI_BVALID_i_1_n_0));
  FDCE S_AXI_BVALID_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_BVALID_i_1_n_0),
        .Q(axi_bvalid));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(Q[0]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[0]),
        .I4(\S_AXI_RDATA[0]_i_2_n_0 ),
        .O(\S_AXI_RDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[0]_i_2 
       (.I0(data1[0]),
        .I1(rVersionNr[0]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[10]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[10]),
        .I4(Q[10]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[11]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[11]),
        .I4(Q[11]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[12]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[12]),
        .I4(Q[12]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[13]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[13]),
        .I4(Q[13]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[14]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[14]),
        .I4(Q[14]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[15]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[15]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[15]),
        .I4(Q[15]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[16]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[16]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[16]),
        .I4(Q[16]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[17]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[17]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[17]),
        .I4(Q[17]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[18]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[18]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[18]),
        .I4(Q[18]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[19]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[19]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[19]),
        .I4(Q[19]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(Q[1]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[1]),
        .I4(\S_AXI_RDATA[1]_i_2_n_0 ),
        .O(\S_AXI_RDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[1]_i_2 
       (.I0(data1[1]),
        .I1(rVersionNr[1]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[20]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[20]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[20]),
        .I4(Q[20]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[21]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[21]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[21]),
        .I4(Q[21]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[22]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[22]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[22]),
        .I4(Q[22]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[23]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[23]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[23]),
        .I4(Q[23]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[24]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[24]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[24]),
        .I4(Q[24]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[25]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[25]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[25]),
        .I4(Q[25]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[26]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[26]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[26]),
        .I4(Q[26]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[27]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[27]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[27]),
        .I4(Q[27]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[28]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[28]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[28]),
        .I4(Q[28]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[29]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[29]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[29]),
        .I4(Q[29]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(Q[2]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[2]),
        .I4(\S_AXI_RDATA[2]_i_2_n_0 ),
        .O(\S_AXI_RDATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[2]_i_2 
       (.I0(data1[2]),
        .I1(rVersionNr[2]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[30]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[30]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[30]),
        .I4(Q[30]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \S_AXI_RDATA[31]_i_1 
       (.I0(stmRead[0]),
        .I1(stmRead[2]),
        .O(\S_AXI_RDATA[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[31]_i_2 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[31]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[31]),
        .I4(Q[31]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[31]_i_3 
       (.I0(\rReadAddr_reg_n_0_[2] ),
        .I1(stmRead[2]),
        .I2(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I3(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \S_AXI_RDATA[31]_i_4 
       (.I0(\rReadAddr_reg_n_0_[2] ),
        .I1(stmRead[2]),
        .I2(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I3(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \S_AXI_RDATA[31]_i_5 
       (.I0(\rReadAddr_reg_n_0_[2] ),
        .I1(stmRead[2]),
        .I2(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I3(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(Q[3]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[3]),
        .I4(\S_AXI_RDATA[3]_i_2_n_0 ),
        .O(\S_AXI_RDATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[3]_i_2 
       (.I0(data1[3]),
        .I1(rVersionNr[3]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[4]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[4]),
        .I4(Q[4]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[5]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[5]),
        .I4(Q[5]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[6]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[6]),
        .I4(Q[6]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[7]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[7]),
        .I4(Q[7]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[8]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[8]),
        .I4(Q[8]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[9]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[9]),
        .I4(Q[9]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[9]_i_1_n_0 ));
  FDCE \S_AXI_RDATA_reg[0] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[0]_i_1_n_0 ),
        .Q(axi_rdata[0]));
  FDCE \S_AXI_RDATA_reg[10] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[10]_i_1_n_0 ),
        .Q(axi_rdata[10]));
  FDCE \S_AXI_RDATA_reg[11] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[11]_i_1_n_0 ),
        .Q(axi_rdata[11]));
  FDCE \S_AXI_RDATA_reg[12] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[12]_i_1_n_0 ),
        .Q(axi_rdata[12]));
  FDCE \S_AXI_RDATA_reg[13] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[13]_i_1_n_0 ),
        .Q(axi_rdata[13]));
  FDCE \S_AXI_RDATA_reg[14] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[14]_i_1_n_0 ),
        .Q(axi_rdata[14]));
  FDCE \S_AXI_RDATA_reg[15] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[15]_i_1_n_0 ),
        .Q(axi_rdata[15]));
  FDCE \S_AXI_RDATA_reg[16] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[16]_i_1_n_0 ),
        .Q(axi_rdata[16]));
  FDCE \S_AXI_RDATA_reg[17] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[17]_i_1_n_0 ),
        .Q(axi_rdata[17]));
  FDCE \S_AXI_RDATA_reg[18] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[18]_i_1_n_0 ),
        .Q(axi_rdata[18]));
  FDCE \S_AXI_RDATA_reg[19] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[19]_i_1_n_0 ),
        .Q(axi_rdata[19]));
  FDCE \S_AXI_RDATA_reg[1] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[1]_i_1_n_0 ),
        .Q(axi_rdata[1]));
  FDCE \S_AXI_RDATA_reg[20] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[20]_i_1_n_0 ),
        .Q(axi_rdata[20]));
  FDCE \S_AXI_RDATA_reg[21] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[21]_i_1_n_0 ),
        .Q(axi_rdata[21]));
  FDCE \S_AXI_RDATA_reg[22] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[22]_i_1_n_0 ),
        .Q(axi_rdata[22]));
  FDCE \S_AXI_RDATA_reg[23] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[23]_i_1_n_0 ),
        .Q(axi_rdata[23]));
  FDCE \S_AXI_RDATA_reg[24] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[24]_i_1_n_0 ),
        .Q(axi_rdata[24]));
  FDCE \S_AXI_RDATA_reg[25] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[25]_i_1_n_0 ),
        .Q(axi_rdata[25]));
  FDCE \S_AXI_RDATA_reg[26] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[26]_i_1_n_0 ),
        .Q(axi_rdata[26]));
  FDCE \S_AXI_RDATA_reg[27] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[27]_i_1_n_0 ),
        .Q(axi_rdata[27]));
  FDCE \S_AXI_RDATA_reg[28] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[28]_i_1_n_0 ),
        .Q(axi_rdata[28]));
  FDCE \S_AXI_RDATA_reg[29] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[29]_i_1_n_0 ),
        .Q(axi_rdata[29]));
  FDCE \S_AXI_RDATA_reg[2] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[2]_i_1_n_0 ),
        .Q(axi_rdata[2]));
  FDCE \S_AXI_RDATA_reg[30] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[30]_i_1_n_0 ),
        .Q(axi_rdata[30]));
  FDCE \S_AXI_RDATA_reg[31] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[31]_i_2_n_0 ),
        .Q(axi_rdata[31]));
  FDCE \S_AXI_RDATA_reg[3] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[3]_i_1_n_0 ),
        .Q(axi_rdata[3]));
  FDCE \S_AXI_RDATA_reg[4] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[4]_i_1_n_0 ),
        .Q(axi_rdata[4]));
  FDCE \S_AXI_RDATA_reg[5] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[5]_i_1_n_0 ),
        .Q(axi_rdata[5]));
  FDCE \S_AXI_RDATA_reg[6] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[6]_i_1_n_0 ),
        .Q(axi_rdata[6]));
  FDCE \S_AXI_RDATA_reg[7] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[7]_i_1_n_0 ),
        .Q(axi_rdata[7]));
  FDCE \S_AXI_RDATA_reg[8] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[8]_i_1_n_0 ),
        .Q(axi_rdata[8]));
  FDCE \S_AXI_RDATA_reg[9] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[9]_i_1_n_0 ),
        .Q(axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RRESP[1]_i_1 
       (.I0(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I1(stmRead[2]),
        .O(\S_AXI_RRESP[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \S_AXI_RRESP[1]_i_2 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[7]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[5]),
        .I4(\rReadAddr_reg_n_0_[1] ),
        .I5(\rReadAddr_reg_n_0_[0] ),
        .O(\S_AXI_RRESP[1]_i_2_n_0 ));
  FDCE \S_AXI_RRESP_reg[1] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RRESP[1]_i_1_n_0 ),
        .Q(axi_rresp));
  LUT5 #(
    .INIT(32'hDDCFDDCC)) 
    S_AXI_RVALID_i_1
       (.I0(axi_rready),
        .I1(stmRead[2]),
        .I2(stmRead[0]),
        .I3(stmRead[3]),
        .I4(axi_rvalid),
        .O(S_AXI_RVALID_i_1_n_0));
  FDCE S_AXI_RVALID_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(axi_rvalid));
  LUT5 #(
    .INIT(32'hFF443044)) 
    S_AXI_WREADY_i_1
       (.I0(axi_wvalid),
        .I1(stmWrite[1]),
        .I2(axi_awvalid),
        .I3(stmWrite[0]),
        .I4(S_AXI_WREADY_reg_0),
        .O(S_AXI_WREADY_i_1_n_0));
  FDCE S_AXI_WREADY_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_WREADY_i_1_n_0),
        .Q(S_AXI_WREADY_reg_0));
  FDCE rACR_Sel_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[1]),
        .Q(data1[1]));
  FDCE rAud_Reset_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[2]),
        .Q(data1[2]));
  FDCE \rCTSValue_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[0]),
        .Q(rCTSValue[0]));
  FDCE \rCTSValue_reg[10] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[10]),
        .Q(rCTSValue[10]));
  FDCE \rCTSValue_reg[11] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[11]),
        .Q(rCTSValue[11]));
  FDCE \rCTSValue_reg[12] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[12]),
        .Q(rCTSValue[12]));
  FDCE \rCTSValue_reg[13] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[13]),
        .Q(rCTSValue[13]));
  FDCE \rCTSValue_reg[14] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[14]),
        .Q(rCTSValue[14]));
  FDCE \rCTSValue_reg[15] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[15]),
        .Q(rCTSValue[15]));
  FDCE \rCTSValue_reg[16] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[16]),
        .Q(rCTSValue[16]));
  FDCE \rCTSValue_reg[17] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[17]),
        .Q(rCTSValue[17]));
  FDCE \rCTSValue_reg[18] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[18]),
        .Q(rCTSValue[18]));
  FDCE \rCTSValue_reg[19] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[19]),
        .Q(rCTSValue[19]));
  FDCE \rCTSValue_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[1]),
        .Q(rCTSValue[1]));
  FDCE \rCTSValue_reg[20] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[20]),
        .Q(rCTSValue[20]));
  FDCE \rCTSValue_reg[21] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[21]),
        .Q(rCTSValue[21]));
  FDCE \rCTSValue_reg[22] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[22]),
        .Q(rCTSValue[22]));
  FDCE \rCTSValue_reg[23] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[23]),
        .Q(rCTSValue[23]));
  FDCE \rCTSValue_reg[24] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[24]),
        .Q(rCTSValue[24]));
  FDCE \rCTSValue_reg[25] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[25]),
        .Q(rCTSValue[25]));
  FDCE \rCTSValue_reg[26] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[26]),
        .Q(rCTSValue[26]));
  FDCE \rCTSValue_reg[27] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[27]),
        .Q(rCTSValue[27]));
  FDCE \rCTSValue_reg[28] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[28]),
        .Q(rCTSValue[28]));
  FDCE \rCTSValue_reg[29] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[29]),
        .Q(rCTSValue[29]));
  FDCE \rCTSValue_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[2]),
        .Q(rCTSValue[2]));
  FDCE \rCTSValue_reg[30] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[30]),
        .Q(rCTSValue[30]));
  FDCE \rCTSValue_reg[31] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[31]),
        .Q(rCTSValue[31]));
  FDCE \rCTSValue_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[3]),
        .Q(rCTSValue[3]));
  FDCE \rCTSValue_reg[4] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[4]),
        .Q(rCTSValue[4]));
  FDCE \rCTSValue_reg[5] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[5]),
        .Q(rCTSValue[5]));
  FDCE \rCTSValue_reg[6] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[6]),
        .Q(rCTSValue[6]));
  FDCE \rCTSValue_reg[7] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[7]),
        .Q(rCTSValue[7]));
  FDCE \rCTSValue_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[8]),
        .Q(rCTSValue[8]));
  FDCE \rCTSValue_reg[9] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[9]),
        .Q(rCTSValue[9]));
  LUT5 #(
    .INIT(32'h00000080)) 
    rEnab_ACR_i_1
       (.I0(S_AXI_WREADY_reg_0),
        .I1(axi_wvalid),
        .I2(\rWriteAddr_reg_n_0_[2] ),
        .I3(\rWriteAddr_reg_n_0_[3] ),
        .I4(\S_AXI_BRESP[1]_i_2_n_0 ),
        .O(rEnab_ACR));
  FDCE rEnab_ACR_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[0]),
        .Q(data1[0]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \rNValue[31]_i_1 
       (.I0(S_AXI_WREADY_reg_0),
        .I1(axi_wvalid),
        .I2(\rWriteAddr_reg_n_0_[2] ),
        .I3(\rWriteAddr_reg_n_0_[3] ),
        .I4(\S_AXI_BRESP[1]_i_2_n_0 ),
        .O(rNValue));
  FDCE \rNValue_reg[0] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[0]),
        .Q(Q[0]));
  FDCE \rNValue_reg[10] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[10]),
        .Q(Q[10]));
  FDCE \rNValue_reg[11] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[11]),
        .Q(Q[11]));
  FDCE \rNValue_reg[12] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[12]),
        .Q(Q[12]));
  FDCE \rNValue_reg[13] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[13]),
        .Q(Q[13]));
  FDCE \rNValue_reg[14] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[14]),
        .Q(Q[14]));
  FDCE \rNValue_reg[15] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[15]),
        .Q(Q[15]));
  FDCE \rNValue_reg[16] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[16]),
        .Q(Q[16]));
  FDCE \rNValue_reg[17] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[17]),
        .Q(Q[17]));
  FDCE \rNValue_reg[18] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[18]),
        .Q(Q[18]));
  FDCE \rNValue_reg[19] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[19]),
        .Q(Q[19]));
  FDCE \rNValue_reg[1] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[1]),
        .Q(Q[1]));
  FDCE \rNValue_reg[20] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[20]),
        .Q(Q[20]));
  FDCE \rNValue_reg[21] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[21]),
        .Q(Q[21]));
  FDCE \rNValue_reg[22] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[22]),
        .Q(Q[22]));
  FDCE \rNValue_reg[23] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[23]),
        .Q(Q[23]));
  FDCE \rNValue_reg[24] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[24]),
        .Q(Q[24]));
  FDCE \rNValue_reg[25] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[25]),
        .Q(Q[25]));
  FDCE \rNValue_reg[26] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[26]),
        .Q(Q[26]));
  FDCE \rNValue_reg[27] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[27]),
        .Q(Q[27]));
  FDCE \rNValue_reg[28] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[28]),
        .Q(Q[28]));
  FDCE \rNValue_reg[29] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[29]),
        .Q(Q[29]));
  FDCE \rNValue_reg[2] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[2]),
        .Q(Q[2]));
  FDCE \rNValue_reg[30] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[30]),
        .Q(Q[30]));
  FDCE \rNValue_reg[31] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[31]),
        .Q(Q[31]));
  FDCE \rNValue_reg[3] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[3]),
        .Q(Q[3]));
  FDCE \rNValue_reg[4] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[4]),
        .Q(Q[4]));
  FDCE \rNValue_reg[5] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[5]),
        .Q(Q[5]));
  FDCE \rNValue_reg[6] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[6]),
        .Q(Q[6]));
  FDCE \rNValue_reg[7] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[7]),
        .Q(Q[7]));
  FDCE \rNValue_reg[8] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[8]),
        .Q(Q[8]));
  FDCE \rNValue_reg[9] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[0]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[0]),
        .O(\rReadAddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[1]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[1]),
        .O(\rReadAddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[2]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[2]),
        .O(\rReadAddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[3]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[3]),
        .O(\rReadAddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[4]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[4]),
        .O(\rReadAddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[5]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[5]),
        .O(\rReadAddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[6]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[6]),
        .O(\rReadAddr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \rReadAddr[7]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_arvalid),
        .I2(stmRead[0]),
        .O(\rReadAddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[7]_i_2 
       (.I0(stmRead[1]),
        .I1(axi_araddr[7]),
        .O(\rReadAddr[7]_i_2_n_0 ));
  FDCE \rReadAddr_reg[0] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[0]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[0] ));
  FDCE \rReadAddr_reg[1] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[1]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[1] ));
  FDCE \rReadAddr_reg[2] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[2]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[2] ));
  FDCE \rReadAddr_reg[3] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[3]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[3] ));
  FDCE \rReadAddr_reg[4] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[4]_i_1_n_0 ),
        .Q(rReadAddr[4]));
  FDCE \rReadAddr_reg[5] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[5]_i_1_n_0 ),
        .Q(rReadAddr[5]));
  FDCE \rReadAddr_reg[6] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[6]_i_1_n_0 ),
        .Q(rReadAddr[6]));
  FDCE \rReadAddr_reg[7] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[7]_i_2_n_0 ),
        .Q(rReadAddr[7]));
  FDCE rTMDSClkRatio_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[3]),
        .Q(data1[3]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rVersionNr[31]_i_1 
       (.I0(S_AXI_WREADY_reg_0),
        .I1(axi_wvalid),
        .I2(\rWriteAddr_reg_n_0_[2] ),
        .I3(\rWriteAddr_reg_n_0_[3] ),
        .I4(\S_AXI_BRESP[1]_i_2_n_0 ),
        .O(rVersionNr_0));
  FDPE \rVersionNr_reg[0] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[0]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[0]));
  FDPE \rVersionNr_reg[10] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[10]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[10]));
  FDPE \rVersionNr_reg[11] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[11]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[11]));
  FDPE \rVersionNr_reg[12] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[12]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[12]));
  FDPE \rVersionNr_reg[13] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[13]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[13]));
  FDCE \rVersionNr_reg[14] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[14]),
        .Q(rVersionNr[14]));
  FDPE \rVersionNr_reg[15] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[15]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[15]));
  FDPE \rVersionNr_reg[16] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[16]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[16]));
  FDCE \rVersionNr_reg[17] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[17]),
        .Q(rVersionNr[17]));
  FDPE \rVersionNr_reg[18] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[18]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[18]));
  FDPE \rVersionNr_reg[19] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[19]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[19]));
  FDPE \rVersionNr_reg[1] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[1]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[1]));
  FDCE \rVersionNr_reg[20] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[20]),
        .Q(rVersionNr[20]));
  FDPE \rVersionNr_reg[21] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[21]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[21]));
  FDCE \rVersionNr_reg[22] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[22]),
        .Q(rVersionNr[22]));
  FDPE \rVersionNr_reg[23] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[23]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[23]));
  FDCE \rVersionNr_reg[24] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[24]),
        .Q(rVersionNr[24]));
  FDPE \rVersionNr_reg[25] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[25]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[25]));
  FDPE \rVersionNr_reg[26] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[26]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[26]));
  FDPE \rVersionNr_reg[27] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[27]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[27]));
  FDPE \rVersionNr_reg[28] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[28]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[28]));
  FDCE \rVersionNr_reg[29] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[29]),
        .Q(rVersionNr[29]));
  FDPE \rVersionNr_reg[2] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[2]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[2]));
  FDPE \rVersionNr_reg[30] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[30]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[30]));
  FDPE \rVersionNr_reg[31] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[31]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[31]));
  FDPE \rVersionNr_reg[3] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[3]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[3]));
  FDCE \rVersionNr_reg[4] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[4]),
        .Q(rVersionNr[4]));
  FDPE \rVersionNr_reg[5] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[5]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[5]));
  FDPE \rVersionNr_reg[6] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[6]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[6]));
  FDPE \rVersionNr_reg[7] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[7]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[7]));
  FDCE \rVersionNr_reg[8] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[8]),
        .Q(rVersionNr[8]));
  FDPE \rVersionNr_reg[9] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[9]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[9]));
  LUT3 #(
    .INIT(8'h08)) 
    \rWriteAddr[7]_i_1 
       (.I0(stmWrite[0]),
        .I1(axi_awvalid),
        .I2(stmWrite[1]),
        .O(rWriteAddr));
  FDCE \rWriteAddr_reg[0] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[0]),
        .Q(\rWriteAddr_reg_n_0_[0] ));
  FDCE \rWriteAddr_reg[1] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[1]),
        .Q(\rWriteAddr_reg_n_0_[1] ));
  FDCE \rWriteAddr_reg[2] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[2]),
        .Q(\rWriteAddr_reg_n_0_[2] ));
  FDCE \rWriteAddr_reg[3] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[3]),
        .Q(\rWriteAddr_reg_n_0_[3] ));
  FDCE \rWriteAddr_reg[4] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[4]),
        .Q(p_0_in0));
  FDCE \rWriteAddr_reg[5] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[5]),
        .Q(\rWriteAddr_reg_n_0_[5] ));
  FDCE \rWriteAddr_reg[6] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[6]),
        .Q(\rWriteAddr_reg_n_0_[6] ));
  FDCE \rWriteAddr_reg[7] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[7]),
        .Q(\rWriteAddr_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_ctrl_top" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_top
   (axi_rdata,
    axi_rresp,
    aud_acr_valid_out,
    aud_acr_cts_out,
    aud_acr_n_out,
    S_AXI_WREADY_reg,
    aud_resetn_out,
    axi_awready,
    axi_bvalid,
    axi_bresp,
    axi_arready,
    axi_rvalid,
    axi_bready,
    axi_awvalid,
    axi_wvalid,
    axi_aclk,
    axi_awaddr,
    axi_wdata,
    hdmi_clk,
    aud_clk,
    pll_lock_in,
    axi_rready,
    axi_arvalid,
    axi_araddr,
    aud_acr_valid_in,
    aud_acr_cts_in,
    aud_acr_n_in,
    axi_aresetn);
  output [31:0]axi_rdata;
  output [0:0]axi_rresp;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;
  output S_AXI_WREADY_reg;
  output aud_resetn_out;
  output axi_awready;
  output axi_bvalid;
  output [0:0]axi_bresp;
  output axi_arready;
  output axi_rvalid;
  input axi_bready;
  input axi_awvalid;
  input axi_wvalid;
  input axi_aclk;
  input [7:0]axi_awaddr;
  input [31:0]axi_wdata;
  input hdmi_clk;
  input aud_clk;
  input pll_lock_in;
  input axi_rready;
  input axi_arvalid;
  input [7:0]axi_araddr;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  input axi_aresetn;

  wire CTS_CLKCROSS_ACLK_INST_n_0;
  wire CTS_CLKCROSS_ACLK_INST_n_1;
  wire CTS_CLKCROSS_ACLK_INST_n_10;
  wire CTS_CLKCROSS_ACLK_INST_n_11;
  wire CTS_CLKCROSS_ACLK_INST_n_12;
  wire CTS_CLKCROSS_ACLK_INST_n_13;
  wire CTS_CLKCROSS_ACLK_INST_n_14;
  wire CTS_CLKCROSS_ACLK_INST_n_15;
  wire CTS_CLKCROSS_ACLK_INST_n_16;
  wire CTS_CLKCROSS_ACLK_INST_n_17;
  wire CTS_CLKCROSS_ACLK_INST_n_18;
  wire CTS_CLKCROSS_ACLK_INST_n_19;
  wire CTS_CLKCROSS_ACLK_INST_n_2;
  wire CTS_CLKCROSS_ACLK_INST_n_20;
  wire CTS_CLKCROSS_ACLK_INST_n_21;
  wire CTS_CLKCROSS_ACLK_INST_n_22;
  wire CTS_CLKCROSS_ACLK_INST_n_23;
  wire CTS_CLKCROSS_ACLK_INST_n_24;
  wire CTS_CLKCROSS_ACLK_INST_n_25;
  wire CTS_CLKCROSS_ACLK_INST_n_26;
  wire CTS_CLKCROSS_ACLK_INST_n_27;
  wire CTS_CLKCROSS_ACLK_INST_n_28;
  wire CTS_CLKCROSS_ACLK_INST_n_29;
  wire CTS_CLKCROSS_ACLK_INST_n_3;
  wire CTS_CLKCROSS_ACLK_INST_n_30;
  wire CTS_CLKCROSS_ACLK_INST_n_31;
  wire CTS_CLKCROSS_ACLK_INST_n_4;
  wire CTS_CLKCROSS_ACLK_INST_n_5;
  wire CTS_CLKCROSS_ACLK_INST_n_6;
  wire CTS_CLKCROSS_ACLK_INST_n_7;
  wire CTS_CLKCROSS_ACLK_INST_n_8;
  wire CTS_CLKCROSS_ACLK_INST_n_9;
  wire CTS_CLKCROSS_AUD_INST_n_0;
  wire CTS_CLKCROSS_AUD_INST_n_1;
  wire CTS_CLKCROSS_AUD_INST_n_10;
  wire CTS_CLKCROSS_AUD_INST_n_11;
  wire CTS_CLKCROSS_AUD_INST_n_12;
  wire CTS_CLKCROSS_AUD_INST_n_13;
  wire CTS_CLKCROSS_AUD_INST_n_14;
  wire CTS_CLKCROSS_AUD_INST_n_15;
  wire CTS_CLKCROSS_AUD_INST_n_16;
  wire CTS_CLKCROSS_AUD_INST_n_17;
  wire CTS_CLKCROSS_AUD_INST_n_18;
  wire CTS_CLKCROSS_AUD_INST_n_19;
  wire CTS_CLKCROSS_AUD_INST_n_2;
  wire CTS_CLKCROSS_AUD_INST_n_3;
  wire CTS_CLKCROSS_AUD_INST_n_4;
  wire CTS_CLKCROSS_AUD_INST_n_5;
  wire CTS_CLKCROSS_AUD_INST_n_6;
  wire CTS_CLKCROSS_AUD_INST_n_7;
  wire CTS_CLKCROSS_AUD_INST_n_8;
  wire CTS_CLKCROSS_AUD_INST_n_9;
  wire NVAL_CLKCROSS_INST_n_0;
  wire NVAL_CLKCROSS_INST_n_1;
  wire NVAL_CLKCROSS_INST_n_2;
  wire NVAL_CLKCROSS_INST_n_34;
  wire NVAL_CLKCROSS_INST_n_35;
  wire NVAL_CLKCROSS_INST_n_36;
  wire NVAL_CLKCROSS_INST_n_37;
  wire NVAL_CLKCROSS_INST_n_38;
  wire NVAL_CLKCROSS_INST_n_39;
  wire NVAL_CLKCROSS_INST_n_40;
  wire NVAL_CLKCROSS_INST_n_41;
  wire NVAL_CLKCROSS_INST_n_42;
  wire NVAL_CLKCROSS_INST_n_43;
  wire NVAL_CLKCROSS_INST_n_44;
  wire NVAL_CLKCROSS_INST_n_45;
  wire NVAL_CLKCROSS_INST_n_46;
  wire NVAL_CLKCROSS_INST_n_47;
  wire NVAL_CLKCROSS_INST_n_48;
  wire NVAL_CLKCROSS_INST_n_49;
  wire NVAL_CLKCROSS_INST_n_50;
  wire NVAL_CLKCROSS_INST_n_51;
  wire NVAL_CLKCROSS_INST_n_52;
  wire NVAL_CLKCROSS_INST_n_53;
  wire NVAL_CLKCROSS_INST_n_54;
  wire NVAL_CLKCROSS_INST_n_55;
  wire NVAL_CLKCROSS_INST_n_56;
  wire NVAL_CLKCROSS_INST_n_57;
  wire NVAL_CLKCROSS_INST_n_58;
  wire NVAL_CLKCROSS_INST_n_59;
  wire NVAL_CLKCROSS_INST_n_60;
  wire NVAL_CLKCROSS_INST_n_61;
  wire NVAL_CLKCROSS_INST_n_62;
  wire NVAL_CLKCROSS_INST_n_63;
  wire NVAL_CLKCROSS_INST_n_64;
  wire NVAL_CLKCROSS_INST_n_65;
  wire NVAL_CLKCROSS_INST_n_66;
  wire NVAL_CLKCROSS_INST_n_67;
  wire NVAL_CLKCROSS_INST_n_68;
  wire NVAL_CLKCROSS_INST_n_69;
  wire NVAL_CLKCROSS_INST_n_70;
  wire NVAL_CLKCROSS_INST_n_71;
  wire NVAL_CLKCROSS_INST_n_72;
  wire NVAL_CLKCROSS_INST_n_73;
  wire NVAL_CLKCROSS_INST_n_74;
  wire NVAL_CLKCROSS_INST_n_75;
  wire NVAL_CLKCROSS_INST_n_76;
  wire NVAL_CLKCROSS_INST_n_77;
  wire NVAL_CLKCROSS_INST_n_78;
  wire NVAL_CLKCROSS_INST_n_79;
  wire NVAL_CLKCROSS_INST_n_80;
  wire NVAL_CLKCROSS_INST_n_81;
  wire NVAL_CLKCROSS_INST_n_82;
  wire NVAL_CLKCROSS_INST_n_83;
  wire S_AXI_WREADY_reg;
  wire [19:0]aud_acr_cts_in;
  wire [19:0]aud_acr_cts_out;
  wire [19:0]aud_acr_n_in;
  wire [19:0]aud_acr_n_out;
  wire [1:1]aud_acr_sel_sync;
  wire \aud_acr_sel_sync_reg_n_0_[0] ;
  wire aud_acr_valid0_out;
  wire aud_acr_valid_in;
  wire aud_acr_valid_out;
  wire aud_cke;
  wire aud_cke_i_1_n_0;
  wire aud_clk;
  wire \aud_enab_acr_sync_reg_n_0_[0] ;
  wire [1:0]aud_rCKECounter;
  wire \aud_rCKECounter[0]_i_1_n_0 ;
  wire \aud_rCKECounter[1]_i_1_n_0 ;
  wire \aud_rCycleCnt[0]_i_2_n_0 ;
  wire \aud_rCycleCnt[0]_i_3_n_0 ;
  wire \aud_rCycleCnt[0]_i_4_n_0 ;
  wire \aud_rCycleCnt[0]_i_5_n_0 ;
  wire \aud_rCycleCnt[0]_i_6_n_0 ;
  wire \aud_rCycleCnt[12]_i_2_n_0 ;
  wire \aud_rCycleCnt[12]_i_3_n_0 ;
  wire \aud_rCycleCnt[12]_i_4_n_0 ;
  wire \aud_rCycleCnt[12]_i_5_n_0 ;
  wire \aud_rCycleCnt[16]_i_2_n_0 ;
  wire \aud_rCycleCnt[16]_i_3_n_0 ;
  wire \aud_rCycleCnt[16]_i_4_n_0 ;
  wire \aud_rCycleCnt[16]_i_5_n_0 ;
  wire \aud_rCycleCnt[20]_i_2_n_0 ;
  wire \aud_rCycleCnt[20]_i_3_n_0 ;
  wire \aud_rCycleCnt[20]_i_4_n_0 ;
  wire \aud_rCycleCnt[20]_i_5_n_0 ;
  wire \aud_rCycleCnt[24]_i_2_n_0 ;
  wire \aud_rCycleCnt[24]_i_3_n_0 ;
  wire \aud_rCycleCnt[24]_i_4_n_0 ;
  wire \aud_rCycleCnt[24]_i_5_n_0 ;
  wire \aud_rCycleCnt[28]_i_2_n_0 ;
  wire \aud_rCycleCnt[28]_i_3_n_0 ;
  wire \aud_rCycleCnt[28]_i_4_n_0 ;
  wire \aud_rCycleCnt[28]_i_5_n_0 ;
  wire \aud_rCycleCnt[4]_i_2_n_0 ;
  wire \aud_rCycleCnt[4]_i_3_n_0 ;
  wire \aud_rCycleCnt[4]_i_4_n_0 ;
  wire \aud_rCycleCnt[4]_i_5_n_0 ;
  wire \aud_rCycleCnt[8]_i_2_n_0 ;
  wire \aud_rCycleCnt[8]_i_3_n_0 ;
  wire \aud_rCycleCnt[8]_i_4_n_0 ;
  wire \aud_rCycleCnt[8]_i_5_n_0 ;
  wire [31:0]aud_rCycleCnt_reg;
  wire \aud_rCycleCnt_reg[0]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_7 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[12]_i_1_n_7 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_7 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[20]_i_1_n_7 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_7 ;
  wire \aud_rCycleCnt_reg[28]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[28]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[28]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[28]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[28]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[28]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[28]_i_1_n_7 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[4]_i_1_n_7 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_7 ;
  wire aud_rPulse;
  wire aud_rPulse0;
  wire aud_rPulse0_carry__0_i_1_n_0;
  wire aud_rPulse0_carry__0_i_2_n_0;
  wire aud_rPulse0_carry__0_i_3_n_0;
  wire aud_rPulse0_carry__0_i_4_n_0;
  wire aud_rPulse0_carry__0_i_5_n_0;
  wire aud_rPulse0_carry__0_i_6_n_0;
  wire aud_rPulse0_carry__0_i_7_n_0;
  wire aud_rPulse0_carry__0_i_8_n_0;
  wire aud_rPulse0_carry__0_n_0;
  wire aud_rPulse0_carry__0_n_1;
  wire aud_rPulse0_carry__0_n_2;
  wire aud_rPulse0_carry__0_n_3;
  wire aud_rPulse0_carry__1_i_1_n_0;
  wire aud_rPulse0_carry__1_i_2_n_0;
  wire aud_rPulse0_carry__1_i_3_n_0;
  wire aud_rPulse0_carry__1_i_4_n_0;
  wire aud_rPulse0_carry__1_i_5_n_0;
  wire aud_rPulse0_carry__1_i_6_n_0;
  wire aud_rPulse0_carry__1_i_7_n_0;
  wire aud_rPulse0_carry__1_i_8_n_0;
  wire aud_rPulse0_carry__1_n_0;
  wire aud_rPulse0_carry__1_n_1;
  wire aud_rPulse0_carry__1_n_2;
  wire aud_rPulse0_carry__1_n_3;
  wire aud_rPulse0_carry__2_i_1_n_0;
  wire aud_rPulse0_carry__2_i_2_n_0;
  wire aud_rPulse0_carry__2_i_3_n_0;
  wire aud_rPulse0_carry__2_i_4_n_0;
  wire aud_rPulse0_carry__2_i_5_n_0;
  wire aud_rPulse0_carry__2_i_6_n_0;
  wire aud_rPulse0_carry__2_i_7_n_0;
  wire aud_rPulse0_carry__2_i_8_n_0;
  wire aud_rPulse0_carry__2_n_1;
  wire aud_rPulse0_carry__2_n_2;
  wire aud_rPulse0_carry__2_n_3;
  wire aud_rPulse0_carry_i_1_n_0;
  wire aud_rPulse0_carry_i_2_n_0;
  wire aud_rPulse0_carry_i_3_n_0;
  wire aud_rPulse0_carry_i_5_n_0;
  wire aud_rPulse0_carry_i_6_n_0;
  wire aud_rPulse0_carry_i_7_n_0;
  wire aud_rPulse0_carry_n_0;
  wire aud_rPulse0_carry_n_1;
  wire aud_rPulse0_carry_n_2;
  wire aud_rPulse0_carry_n_3;
  wire [31:1]aud_rPulse1;
  wire aud_rPulse1_carry__0_n_0;
  wire aud_rPulse1_carry__0_n_1;
  wire aud_rPulse1_carry__0_n_2;
  wire aud_rPulse1_carry__0_n_3;
  wire aud_rPulse1_carry__1_n_0;
  wire aud_rPulse1_carry__1_n_1;
  wire aud_rPulse1_carry__1_n_2;
  wire aud_rPulse1_carry__1_n_3;
  wire aud_rPulse1_carry__2_n_0;
  wire aud_rPulse1_carry__2_n_1;
  wire aud_rPulse1_carry__2_n_2;
  wire aud_rPulse1_carry__2_n_3;
  wire aud_rPulse1_carry__3_n_0;
  wire aud_rPulse1_carry__3_n_1;
  wire aud_rPulse1_carry__3_n_2;
  wire aud_rPulse1_carry__3_n_3;
  wire aud_rPulse1_carry__4_n_0;
  wire aud_rPulse1_carry__4_n_1;
  wire aud_rPulse1_carry__4_n_2;
  wire aud_rPulse1_carry__4_n_3;
  wire aud_rPulse1_carry__5_n_0;
  wire aud_rPulse1_carry__5_n_1;
  wire aud_rPulse1_carry__5_n_2;
  wire aud_rPulse1_carry__5_n_3;
  wire aud_rPulse1_carry__6_n_2;
  wire aud_rPulse1_carry__6_n_3;
  wire aud_rPulse1_carry_n_0;
  wire aud_rPulse1_carry_n_1;
  wire aud_rPulse1_carry_n_2;
  wire aud_rPulse1_carry_n_3;
  wire aud_rPulse_reg_n_0;
  wire aud_reset;
  wire aud_reset_i_1_n_0;
  wire aud_reset_i_2_n_0;
  wire aud_reset_i_3_n_0;
  wire aud_reset_out;
  wire aud_resetn_out;
  (* async_reg = "true" *) wire [2:0]aud_rst_chain;
  wire \aud_rst_cnt[7]_i_1_n_0 ;
  wire [7:0]aud_rst_cnt_reg;
  wire [1:0]aud_tmdsclkratio_sync;
  wire axi_aclk;
  wire [7:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [7:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [0:0]axi_bresp;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [0:0]axi_rresp;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wvalid;
  wire [3:0]data1;
  wire hdmi_clk;
  wire [31:0]hdmi_rCTS_Val;
  wire \hdmi_rCycleTimeCnt[0]_i_2_n_0 ;
  wire [31:0]hdmi_rCycleTimeCnt_reg;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[12]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[20]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[28]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[28]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[28]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[28]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[28]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[28]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[28]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[4]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_7 ;
  wire [7:0]p_0_in;
  wire p_1_in;
  wire pll_lock_in;
  wire [31:0]rNValue;
  wire [30:0]rOut_Data;
  wire rOut_Pulse;
  wire [3:3]\NLW_aud_rCycleCnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_aud_rPulse0_carry_O_UNCONNECTED;
  wire [3:0]NLW_aud_rPulse0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_aud_rPulse0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_aud_rPulse0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_aud_rPulse1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_aud_rPulse1_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_hdmi_rCycleTimeCnt_reg[28]_i_1_CO_UNCONNECTED ;

  exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_data_clkcross CTS_CLKCROSS_ACLK_INST
       (.Q(hdmi_rCTS_Val),
        .axi_aclk(axi_aclk),
        .hdmi_clk(hdmi_clk),
        .\rOut_Data_reg[31]_0 ({CTS_CLKCROSS_ACLK_INST_n_0,CTS_CLKCROSS_ACLK_INST_n_1,CTS_CLKCROSS_ACLK_INST_n_2,CTS_CLKCROSS_ACLK_INST_n_3,CTS_CLKCROSS_ACLK_INST_n_4,CTS_CLKCROSS_ACLK_INST_n_5,CTS_CLKCROSS_ACLK_INST_n_6,CTS_CLKCROSS_ACLK_INST_n_7,CTS_CLKCROSS_ACLK_INST_n_8,CTS_CLKCROSS_ACLK_INST_n_9,CTS_CLKCROSS_ACLK_INST_n_10,CTS_CLKCROSS_ACLK_INST_n_11,CTS_CLKCROSS_ACLK_INST_n_12,CTS_CLKCROSS_ACLK_INST_n_13,CTS_CLKCROSS_ACLK_INST_n_14,CTS_CLKCROSS_ACLK_INST_n_15,CTS_CLKCROSS_ACLK_INST_n_16,CTS_CLKCROSS_ACLK_INST_n_17,CTS_CLKCROSS_ACLK_INST_n_18,CTS_CLKCROSS_ACLK_INST_n_19,CTS_CLKCROSS_ACLK_INST_n_20,CTS_CLKCROSS_ACLK_INST_n_21,CTS_CLKCROSS_ACLK_INST_n_22,CTS_CLKCROSS_ACLK_INST_n_23,CTS_CLKCROSS_ACLK_INST_n_24,CTS_CLKCROSS_ACLK_INST_n_25,CTS_CLKCROSS_ACLK_INST_n_26,CTS_CLKCROSS_ACLK_INST_n_27,CTS_CLKCROSS_ACLK_INST_n_28,CTS_CLKCROSS_ACLK_INST_n_29,CTS_CLKCROSS_ACLK_INST_n_30,CTS_CLKCROSS_ACLK_INST_n_31}));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_data_clkcross_0 CTS_CLKCROSS_AUD_INST
       (.D({CTS_CLKCROSS_AUD_INST_n_0,CTS_CLKCROSS_AUD_INST_n_1,CTS_CLKCROSS_AUD_INST_n_2,CTS_CLKCROSS_AUD_INST_n_3,CTS_CLKCROSS_AUD_INST_n_4,CTS_CLKCROSS_AUD_INST_n_5,CTS_CLKCROSS_AUD_INST_n_6,CTS_CLKCROSS_AUD_INST_n_7,CTS_CLKCROSS_AUD_INST_n_8,CTS_CLKCROSS_AUD_INST_n_9,CTS_CLKCROSS_AUD_INST_n_10,CTS_CLKCROSS_AUD_INST_n_11,CTS_CLKCROSS_AUD_INST_n_12,CTS_CLKCROSS_AUD_INST_n_13,CTS_CLKCROSS_AUD_INST_n_14,CTS_CLKCROSS_AUD_INST_n_15,CTS_CLKCROSS_AUD_INST_n_16,CTS_CLKCROSS_AUD_INST_n_17,CTS_CLKCROSS_AUD_INST_n_18,CTS_CLKCROSS_AUD_INST_n_19}),
        .Q(aud_tmdsclkratio_sync[1]),
        .aud_acr_cts_in(aud_acr_cts_in),
        .aud_clk(aud_clk),
        .\aud_cts_val_reg[2] (aud_acr_sel_sync),
        .hdmi_clk(hdmi_clk),
        .\rIn_Data_reg[19]_0 (hdmi_rCTS_Val[19:0]));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_axi HDMI_ACR_CTRL_AXI_INST
       (.D({CTS_CLKCROSS_ACLK_INST_n_0,CTS_CLKCROSS_ACLK_INST_n_1,CTS_CLKCROSS_ACLK_INST_n_2,CTS_CLKCROSS_ACLK_INST_n_3,CTS_CLKCROSS_ACLK_INST_n_4,CTS_CLKCROSS_ACLK_INST_n_5,CTS_CLKCROSS_ACLK_INST_n_6,CTS_CLKCROSS_ACLK_INST_n_7,CTS_CLKCROSS_ACLK_INST_n_8,CTS_CLKCROSS_ACLK_INST_n_9,CTS_CLKCROSS_ACLK_INST_n_10,CTS_CLKCROSS_ACLK_INST_n_11,CTS_CLKCROSS_ACLK_INST_n_12,CTS_CLKCROSS_ACLK_INST_n_13,CTS_CLKCROSS_ACLK_INST_n_14,CTS_CLKCROSS_ACLK_INST_n_15,CTS_CLKCROSS_ACLK_INST_n_16,CTS_CLKCROSS_ACLK_INST_n_17,CTS_CLKCROSS_ACLK_INST_n_18,CTS_CLKCROSS_ACLK_INST_n_19,CTS_CLKCROSS_ACLK_INST_n_20,CTS_CLKCROSS_ACLK_INST_n_21,CTS_CLKCROSS_ACLK_INST_n_22,CTS_CLKCROSS_ACLK_INST_n_23,CTS_CLKCROSS_ACLK_INST_n_24,CTS_CLKCROSS_ACLK_INST_n_25,CTS_CLKCROSS_ACLK_INST_n_26,CTS_CLKCROSS_ACLK_INST_n_27,CTS_CLKCROSS_ACLK_INST_n_28,CTS_CLKCROSS_ACLK_INST_n_29,CTS_CLKCROSS_ACLK_INST_n_30,CTS_CLKCROSS_ACLK_INST_n_31}),
        .Q(rNValue),
        .S_AXI_WREADY_reg_0(S_AXI_WREADY_reg),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bresp(axi_bresp),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rresp(axi_rresp),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wvalid(axi_wvalid),
        .data1(data1));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_data_clkcross_1 NVAL_CLKCROSS_INST
       (.D({NVAL_CLKCROSS_INST_n_64,NVAL_CLKCROSS_INST_n_65,NVAL_CLKCROSS_INST_n_66,NVAL_CLKCROSS_INST_n_67,NVAL_CLKCROSS_INST_n_68,NVAL_CLKCROSS_INST_n_69,NVAL_CLKCROSS_INST_n_70,NVAL_CLKCROSS_INST_n_71,NVAL_CLKCROSS_INST_n_72,NVAL_CLKCROSS_INST_n_73,NVAL_CLKCROSS_INST_n_74,NVAL_CLKCROSS_INST_n_75,NVAL_CLKCROSS_INST_n_76,NVAL_CLKCROSS_INST_n_77,NVAL_CLKCROSS_INST_n_78,NVAL_CLKCROSS_INST_n_79,NVAL_CLKCROSS_INST_n_80,NVAL_CLKCROSS_INST_n_81,NVAL_CLKCROSS_INST_n_82,NVAL_CLKCROSS_INST_n_83}),
        .DI(NVAL_CLKCROSS_INST_n_62),
        .O(aud_rPulse1[1]),
        .Q(rOut_Data),
        .S({NVAL_CLKCROSS_INST_n_0,NVAL_CLKCROSS_INST_n_1,NVAL_CLKCROSS_INST_n_2}),
        .aud_acr_n_in(aud_acr_n_in),
        .aud_clk(aud_clk),
        .\aud_n_val_reg[19] (aud_acr_sel_sync),
        .aud_rCycleCnt_reg(aud_rCycleCnt_reg[1:0]),
        .\aud_rCycleCnt_reg[0] (NVAL_CLKCROSS_INST_n_63),
        .axi_aclk(axi_aclk),
        .\rIn_Data_reg[31]_0 (rNValue),
        .\rOut_Data_reg[12]_0 ({NVAL_CLKCROSS_INST_n_50,NVAL_CLKCROSS_INST_n_51,NVAL_CLKCROSS_INST_n_52,NVAL_CLKCROSS_INST_n_53}),
        .\rOut_Data_reg[16]_0 ({NVAL_CLKCROSS_INST_n_46,NVAL_CLKCROSS_INST_n_47,NVAL_CLKCROSS_INST_n_48,NVAL_CLKCROSS_INST_n_49}),
        .\rOut_Data_reg[20]_0 ({NVAL_CLKCROSS_INST_n_42,NVAL_CLKCROSS_INST_n_43,NVAL_CLKCROSS_INST_n_44,NVAL_CLKCROSS_INST_n_45}),
        .\rOut_Data_reg[24]_0 ({NVAL_CLKCROSS_INST_n_38,NVAL_CLKCROSS_INST_n_39,NVAL_CLKCROSS_INST_n_40,NVAL_CLKCROSS_INST_n_41}),
        .\rOut_Data_reg[28]_0 ({NVAL_CLKCROSS_INST_n_34,NVAL_CLKCROSS_INST_n_35,NVAL_CLKCROSS_INST_n_36,NVAL_CLKCROSS_INST_n_37}),
        .\rOut_Data_reg[4]_0 ({NVAL_CLKCROSS_INST_n_58,NVAL_CLKCROSS_INST_n_59,NVAL_CLKCROSS_INST_n_60,NVAL_CLKCROSS_INST_n_61}),
        .\rOut_Data_reg[8]_0 ({NVAL_CLKCROSS_INST_n_54,NVAL_CLKCROSS_INST_n_55,NVAL_CLKCROSS_INST_n_56,NVAL_CLKCROSS_INST_n_57}));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_pulse_clkcross PULSE_CLKCROSS_INST
       (.aud_clk(aud_clk),
        .hdmi_clk(hdmi_clk),
        .rIn_PulseCap_reg_0(aud_rPulse_reg_n_0),
        .rOut_Pulse(rOut_Pulse));
  FDRE \aud_acr_sel_sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(data1[1]),
        .Q(\aud_acr_sel_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \aud_acr_sel_sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\aud_acr_sel_sync_reg_n_0_[0] ),
        .Q(aud_acr_sel_sync),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC808)) 
    aud_acr_valid_i_1
       (.I0(aud_acr_valid_in),
        .I1(p_1_in),
        .I2(aud_acr_sel_sync),
        .I3(aud_rPulse_reg_n_0),
        .O(aud_acr_valid0_out));
  FDRE aud_acr_valid_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_acr_valid0_out),
        .Q(aud_acr_valid_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    aud_cke_i_1
       (.I0(aud_rCKECounter[0]),
        .I1(aud_rCKECounter[1]),
        .O(aud_cke_i_1_n_0));
  FDCE aud_cke_reg
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(aud_cke_i_1_n_0),
        .Q(aud_cke));
  FDRE \aud_cts_val_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_19),
        .Q(aud_acr_cts_out[0]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[10] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_9),
        .Q(aud_acr_cts_out[10]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[11] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_8),
        .Q(aud_acr_cts_out[11]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[12] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_7),
        .Q(aud_acr_cts_out[12]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[13] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_6),
        .Q(aud_acr_cts_out[13]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[14] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_5),
        .Q(aud_acr_cts_out[14]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[15] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_4),
        .Q(aud_acr_cts_out[15]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[16] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_3),
        .Q(aud_acr_cts_out[16]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[17] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_2),
        .Q(aud_acr_cts_out[17]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[18] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_1),
        .Q(aud_acr_cts_out[18]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[19] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_0),
        .Q(aud_acr_cts_out[19]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_18),
        .Q(aud_acr_cts_out[1]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[2] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_17),
        .Q(aud_acr_cts_out[2]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[3] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_16),
        .Q(aud_acr_cts_out[3]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[4] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_15),
        .Q(aud_acr_cts_out[4]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[5] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_14),
        .Q(aud_acr_cts_out[5]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[6] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_13),
        .Q(aud_acr_cts_out[6]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[7] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_12),
        .Q(aud_acr_cts_out[7]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[8] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_11),
        .Q(aud_acr_cts_out[8]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[9] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_10),
        .Q(aud_acr_cts_out[9]),
        .R(1'b0));
  FDRE \aud_enab_acr_sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(data1[0]),
        .Q(\aud_enab_acr_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \aud_enab_acr_sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\aud_enab_acr_sync_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \aud_n_val_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_83),
        .Q(aud_acr_n_out[0]),
        .R(1'b0));
  FDRE \aud_n_val_reg[10] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_73),
        .Q(aud_acr_n_out[10]),
        .R(1'b0));
  FDRE \aud_n_val_reg[11] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_72),
        .Q(aud_acr_n_out[11]),
        .R(1'b0));
  FDRE \aud_n_val_reg[12] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_71),
        .Q(aud_acr_n_out[12]),
        .R(1'b0));
  FDRE \aud_n_val_reg[13] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_70),
        .Q(aud_acr_n_out[13]),
        .R(1'b0));
  FDRE \aud_n_val_reg[14] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_69),
        .Q(aud_acr_n_out[14]),
        .R(1'b0));
  FDRE \aud_n_val_reg[15] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_68),
        .Q(aud_acr_n_out[15]),
        .R(1'b0));
  FDRE \aud_n_val_reg[16] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_67),
        .Q(aud_acr_n_out[16]),
        .R(1'b0));
  FDRE \aud_n_val_reg[17] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_66),
        .Q(aud_acr_n_out[17]),
        .R(1'b0));
  FDRE \aud_n_val_reg[18] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_65),
        .Q(aud_acr_n_out[18]),
        .R(1'b0));
  FDRE \aud_n_val_reg[19] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_64),
        .Q(aud_acr_n_out[19]),
        .R(1'b0));
  FDRE \aud_n_val_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_82),
        .Q(aud_acr_n_out[1]),
        .R(1'b0));
  FDRE \aud_n_val_reg[2] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_81),
        .Q(aud_acr_n_out[2]),
        .R(1'b0));
  FDRE \aud_n_val_reg[3] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_80),
        .Q(aud_acr_n_out[3]),
        .R(1'b0));
  FDRE \aud_n_val_reg[4] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_79),
        .Q(aud_acr_n_out[4]),
        .R(1'b0));
  FDRE \aud_n_val_reg[5] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_78),
        .Q(aud_acr_n_out[5]),
        .R(1'b0));
  FDRE \aud_n_val_reg[6] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_77),
        .Q(aud_acr_n_out[6]),
        .R(1'b0));
  FDRE \aud_n_val_reg[7] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_76),
        .Q(aud_acr_n_out[7]),
        .R(1'b0));
  FDRE \aud_n_val_reg[8] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_75),
        .Q(aud_acr_n_out[8]),
        .R(1'b0));
  FDRE \aud_n_val_reg[9] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_74),
        .Q(aud_acr_n_out[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \aud_rCKECounter[0]_i_1 
       (.I0(aud_rCKECounter[0]),
        .O(\aud_rCKECounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \aud_rCKECounter[1]_i_1 
       (.I0(aud_rCKECounter[0]),
        .I1(aud_rCKECounter[1]),
        .O(\aud_rCKECounter[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCKECounter_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(\aud_rCKECounter[0]_i_1_n_0 ),
        .Q(aud_rCKECounter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCKECounter_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(\aud_rCKECounter[1]_i_1_n_0 ),
        .Q(aud_rCKECounter[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \aud_rCycleCnt[0]_i_2 
       (.I0(aud_rPulse0),
        .O(\aud_rCycleCnt[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_3 
       (.I0(aud_rCycleCnt_reg[3]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_4 
       (.I0(aud_rCycleCnt_reg[2]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_5 
       (.I0(aud_rCycleCnt_reg[1]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \aud_rCycleCnt[0]_i_6 
       (.I0(aud_rCycleCnt_reg[0]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[12]_i_2 
       (.I0(aud_rCycleCnt_reg[15]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[12]_i_3 
       (.I0(aud_rCycleCnt_reg[14]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[12]_i_4 
       (.I0(aud_rCycleCnt_reg[13]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[12]_i_5 
       (.I0(aud_rCycleCnt_reg[12]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_2 
       (.I0(aud_rCycleCnt_reg[19]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_3 
       (.I0(aud_rCycleCnt_reg[18]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_4 
       (.I0(aud_rCycleCnt_reg[17]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_5 
       (.I0(aud_rCycleCnt_reg[16]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[20]_i_2 
       (.I0(aud_rCycleCnt_reg[23]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[20]_i_3 
       (.I0(aud_rCycleCnt_reg[22]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[20]_i_4 
       (.I0(aud_rCycleCnt_reg[21]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[20]_i_5 
       (.I0(aud_rCycleCnt_reg[20]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_2 
       (.I0(aud_rCycleCnt_reg[27]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_3 
       (.I0(aud_rCycleCnt_reg[26]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_4 
       (.I0(aud_rCycleCnt_reg[25]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_5 
       (.I0(aud_rCycleCnt_reg[24]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[28]_i_2 
       (.I0(aud_rCycleCnt_reg[31]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[28]_i_3 
       (.I0(aud_rCycleCnt_reg[30]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[28]_i_4 
       (.I0(aud_rCycleCnt_reg[29]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[28]_i_5 
       (.I0(aud_rCycleCnt_reg[28]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[4]_i_2 
       (.I0(aud_rCycleCnt_reg[7]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[4]_i_3 
       (.I0(aud_rCycleCnt_reg[6]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[4]_i_4 
       (.I0(aud_rCycleCnt_reg[5]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[4]_i_5 
       (.I0(aud_rCycleCnt_reg[4]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_2 
       (.I0(aud_rCycleCnt_reg[11]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_3 
       (.I0(aud_rCycleCnt_reg[10]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_4 
       (.I0(aud_rCycleCnt_reg[9]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_5 
       (.I0(aud_rCycleCnt_reg[8]),
        .I1(aud_rPulse0),
        .O(\aud_rCycleCnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[0] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[0]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\aud_rCycleCnt_reg[0]_i_1_n_0 ,\aud_rCycleCnt_reg[0]_i_1_n_1 ,\aud_rCycleCnt_reg[0]_i_1_n_2 ,\aud_rCycleCnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\aud_rCycleCnt[0]_i_2_n_0 }),
        .O({\aud_rCycleCnt_reg[0]_i_1_n_4 ,\aud_rCycleCnt_reg[0]_i_1_n_5 ,\aud_rCycleCnt_reg[0]_i_1_n_6 ,\aud_rCycleCnt_reg[0]_i_1_n_7 }),
        .S({\aud_rCycleCnt[0]_i_3_n_0 ,\aud_rCycleCnt[0]_i_4_n_0 ,\aud_rCycleCnt[0]_i_5_n_0 ,\aud_rCycleCnt[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[10] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[8]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[11] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[8]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[12] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[12]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[12]_i_1 
       (.CI(\aud_rCycleCnt_reg[8]_i_1_n_0 ),
        .CO({\aud_rCycleCnt_reg[12]_i_1_n_0 ,\aud_rCycleCnt_reg[12]_i_1_n_1 ,\aud_rCycleCnt_reg[12]_i_1_n_2 ,\aud_rCycleCnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\aud_rCycleCnt_reg[12]_i_1_n_4 ,\aud_rCycleCnt_reg[12]_i_1_n_5 ,\aud_rCycleCnt_reg[12]_i_1_n_6 ,\aud_rCycleCnt_reg[12]_i_1_n_7 }),
        .S({\aud_rCycleCnt[12]_i_2_n_0 ,\aud_rCycleCnt[12]_i_3_n_0 ,\aud_rCycleCnt[12]_i_4_n_0 ,\aud_rCycleCnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[13] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[12]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[14] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[12]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[15] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[12]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[16] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[16]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[16]_i_1 
       (.CI(\aud_rCycleCnt_reg[12]_i_1_n_0 ),
        .CO({\aud_rCycleCnt_reg[16]_i_1_n_0 ,\aud_rCycleCnt_reg[16]_i_1_n_1 ,\aud_rCycleCnt_reg[16]_i_1_n_2 ,\aud_rCycleCnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\aud_rCycleCnt_reg[16]_i_1_n_4 ,\aud_rCycleCnt_reg[16]_i_1_n_5 ,\aud_rCycleCnt_reg[16]_i_1_n_6 ,\aud_rCycleCnt_reg[16]_i_1_n_7 }),
        .S({\aud_rCycleCnt[16]_i_2_n_0 ,\aud_rCycleCnt[16]_i_3_n_0 ,\aud_rCycleCnt[16]_i_4_n_0 ,\aud_rCycleCnt[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[17] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[16]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[18] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[16]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[19] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[16]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[1] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[0]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[20] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[20]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[20]_i_1 
       (.CI(\aud_rCycleCnt_reg[16]_i_1_n_0 ),
        .CO({\aud_rCycleCnt_reg[20]_i_1_n_0 ,\aud_rCycleCnt_reg[20]_i_1_n_1 ,\aud_rCycleCnt_reg[20]_i_1_n_2 ,\aud_rCycleCnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\aud_rCycleCnt_reg[20]_i_1_n_4 ,\aud_rCycleCnt_reg[20]_i_1_n_5 ,\aud_rCycleCnt_reg[20]_i_1_n_6 ,\aud_rCycleCnt_reg[20]_i_1_n_7 }),
        .S({\aud_rCycleCnt[20]_i_2_n_0 ,\aud_rCycleCnt[20]_i_3_n_0 ,\aud_rCycleCnt[20]_i_4_n_0 ,\aud_rCycleCnt[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[21] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[20]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[22] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[20]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[23] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[20]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[24] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[24]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[24]_i_1 
       (.CI(\aud_rCycleCnt_reg[20]_i_1_n_0 ),
        .CO({\aud_rCycleCnt_reg[24]_i_1_n_0 ,\aud_rCycleCnt_reg[24]_i_1_n_1 ,\aud_rCycleCnt_reg[24]_i_1_n_2 ,\aud_rCycleCnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\aud_rCycleCnt_reg[24]_i_1_n_4 ,\aud_rCycleCnt_reg[24]_i_1_n_5 ,\aud_rCycleCnt_reg[24]_i_1_n_6 ,\aud_rCycleCnt_reg[24]_i_1_n_7 }),
        .S({\aud_rCycleCnt[24]_i_2_n_0 ,\aud_rCycleCnt[24]_i_3_n_0 ,\aud_rCycleCnt[24]_i_4_n_0 ,\aud_rCycleCnt[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[25] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[24]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[26] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[24]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[27] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[24]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[28] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[28]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[28]_i_1 
       (.CI(\aud_rCycleCnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_aud_rCycleCnt_reg[28]_i_1_CO_UNCONNECTED [3],\aud_rCycleCnt_reg[28]_i_1_n_1 ,\aud_rCycleCnt_reg[28]_i_1_n_2 ,\aud_rCycleCnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\aud_rCycleCnt_reg[28]_i_1_n_4 ,\aud_rCycleCnt_reg[28]_i_1_n_5 ,\aud_rCycleCnt_reg[28]_i_1_n_6 ,\aud_rCycleCnt_reg[28]_i_1_n_7 }),
        .S({\aud_rCycleCnt[28]_i_2_n_0 ,\aud_rCycleCnt[28]_i_3_n_0 ,\aud_rCycleCnt[28]_i_4_n_0 ,\aud_rCycleCnt[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[29] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[28]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[2] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[0]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[30] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[28]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[31] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[28]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[3] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[0]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[4] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[4]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[4]_i_1 
       (.CI(\aud_rCycleCnt_reg[0]_i_1_n_0 ),
        .CO({\aud_rCycleCnt_reg[4]_i_1_n_0 ,\aud_rCycleCnt_reg[4]_i_1_n_1 ,\aud_rCycleCnt_reg[4]_i_1_n_2 ,\aud_rCycleCnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\aud_rCycleCnt_reg[4]_i_1_n_4 ,\aud_rCycleCnt_reg[4]_i_1_n_5 ,\aud_rCycleCnt_reg[4]_i_1_n_6 ,\aud_rCycleCnt_reg[4]_i_1_n_7 }),
        .S({\aud_rCycleCnt[4]_i_2_n_0 ,\aud_rCycleCnt[4]_i_3_n_0 ,\aud_rCycleCnt[4]_i_4_n_0 ,\aud_rCycleCnt[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[5] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[4]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[6] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[4]_i_1_n_5 ),
        .Q(aud_rCycleCnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[7] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[4]_i_1_n_4 ),
        .Q(aud_rCycleCnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[8] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[8]_i_1_n_7 ),
        .Q(aud_rCycleCnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \aud_rCycleCnt_reg[8]_i_1 
       (.CI(\aud_rCycleCnt_reg[4]_i_1_n_0 ),
        .CO({\aud_rCycleCnt_reg[8]_i_1_n_0 ,\aud_rCycleCnt_reg[8]_i_1_n_1 ,\aud_rCycleCnt_reg[8]_i_1_n_2 ,\aud_rCycleCnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\aud_rCycleCnt_reg[8]_i_1_n_4 ,\aud_rCycleCnt_reg[8]_i_1_n_5 ,\aud_rCycleCnt_reg[8]_i_1_n_6 ,\aud_rCycleCnt_reg[8]_i_1_n_7 }),
        .S({\aud_rCycleCnt[8]_i_2_n_0 ,\aud_rCycleCnt[8]_i_3_n_0 ,\aud_rCycleCnt[8]_i_4_n_0 ,\aud_rCycleCnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[9] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(\aud_rCycleCnt_reg[8]_i_1_n_6 ),
        .Q(aud_rCycleCnt_reg[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 aud_rPulse0_carry
       (.CI(1'b0),
        .CO({aud_rPulse0_carry_n_0,aud_rPulse0_carry_n_1,aud_rPulse0_carry_n_2,aud_rPulse0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({aud_rPulse0_carry_i_1_n_0,aud_rPulse0_carry_i_2_n_0,aud_rPulse0_carry_i_3_n_0,NVAL_CLKCROSS_INST_n_62}),
        .O(NLW_aud_rPulse0_carry_O_UNCONNECTED[3:0]),
        .S({aud_rPulse0_carry_i_5_n_0,aud_rPulse0_carry_i_6_n_0,aud_rPulse0_carry_i_7_n_0,NVAL_CLKCROSS_INST_n_63}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 aud_rPulse0_carry__0
       (.CI(aud_rPulse0_carry_n_0),
        .CO({aud_rPulse0_carry__0_n_0,aud_rPulse0_carry__0_n_1,aud_rPulse0_carry__0_n_2,aud_rPulse0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({aud_rPulse0_carry__0_i_1_n_0,aud_rPulse0_carry__0_i_2_n_0,aud_rPulse0_carry__0_i_3_n_0,aud_rPulse0_carry__0_i_4_n_0}),
        .O(NLW_aud_rPulse0_carry__0_O_UNCONNECTED[3:0]),
        .S({aud_rPulse0_carry__0_i_5_n_0,aud_rPulse0_carry__0_i_6_n_0,aud_rPulse0_carry__0_i_7_n_0,aud_rPulse0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_1
       (.I0(aud_rCycleCnt_reg[15]),
        .I1(aud_rPulse1[15]),
        .I2(aud_rCycleCnt_reg[14]),
        .I3(aud_rPulse1[14]),
        .O(aud_rPulse0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_2
       (.I0(aud_rCycleCnt_reg[13]),
        .I1(aud_rPulse1[13]),
        .I2(aud_rCycleCnt_reg[12]),
        .I3(aud_rPulse1[12]),
        .O(aud_rPulse0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_3
       (.I0(aud_rCycleCnt_reg[11]),
        .I1(aud_rPulse1[11]),
        .I2(aud_rCycleCnt_reg[10]),
        .I3(aud_rPulse1[10]),
        .O(aud_rPulse0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_4
       (.I0(aud_rCycleCnt_reg[9]),
        .I1(aud_rPulse1[9]),
        .I2(aud_rCycleCnt_reg[8]),
        .I3(aud_rPulse1[8]),
        .O(aud_rPulse0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_5
       (.I0(aud_rPulse1[15]),
        .I1(aud_rCycleCnt_reg[15]),
        .I2(aud_rPulse1[14]),
        .I3(aud_rCycleCnt_reg[14]),
        .O(aud_rPulse0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_6
       (.I0(aud_rPulse1[13]),
        .I1(aud_rCycleCnt_reg[13]),
        .I2(aud_rPulse1[12]),
        .I3(aud_rCycleCnt_reg[12]),
        .O(aud_rPulse0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_7
       (.I0(aud_rPulse1[11]),
        .I1(aud_rCycleCnt_reg[11]),
        .I2(aud_rPulse1[10]),
        .I3(aud_rCycleCnt_reg[10]),
        .O(aud_rPulse0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_8
       (.I0(aud_rPulse1[9]),
        .I1(aud_rCycleCnt_reg[9]),
        .I2(aud_rPulse1[8]),
        .I3(aud_rCycleCnt_reg[8]),
        .O(aud_rPulse0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 aud_rPulse0_carry__1
       (.CI(aud_rPulse0_carry__0_n_0),
        .CO({aud_rPulse0_carry__1_n_0,aud_rPulse0_carry__1_n_1,aud_rPulse0_carry__1_n_2,aud_rPulse0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({aud_rPulse0_carry__1_i_1_n_0,aud_rPulse0_carry__1_i_2_n_0,aud_rPulse0_carry__1_i_3_n_0,aud_rPulse0_carry__1_i_4_n_0}),
        .O(NLW_aud_rPulse0_carry__1_O_UNCONNECTED[3:0]),
        .S({aud_rPulse0_carry__1_i_5_n_0,aud_rPulse0_carry__1_i_6_n_0,aud_rPulse0_carry__1_i_7_n_0,aud_rPulse0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__1_i_1
       (.I0(aud_rCycleCnt_reg[23]),
        .I1(aud_rPulse1[23]),
        .I2(aud_rCycleCnt_reg[22]),
        .I3(aud_rPulse1[22]),
        .O(aud_rPulse0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__1_i_2
       (.I0(aud_rCycleCnt_reg[21]),
        .I1(aud_rPulse1[21]),
        .I2(aud_rCycleCnt_reg[20]),
        .I3(aud_rPulse1[20]),
        .O(aud_rPulse0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__1_i_3
       (.I0(aud_rCycleCnt_reg[19]),
        .I1(aud_rPulse1[19]),
        .I2(aud_rCycleCnt_reg[18]),
        .I3(aud_rPulse1[18]),
        .O(aud_rPulse0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__1_i_4
       (.I0(aud_rCycleCnt_reg[17]),
        .I1(aud_rPulse1[17]),
        .I2(aud_rCycleCnt_reg[16]),
        .I3(aud_rPulse1[16]),
        .O(aud_rPulse0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__1_i_5
       (.I0(aud_rPulse1[23]),
        .I1(aud_rCycleCnt_reg[23]),
        .I2(aud_rPulse1[22]),
        .I3(aud_rCycleCnt_reg[22]),
        .O(aud_rPulse0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__1_i_6
       (.I0(aud_rPulse1[21]),
        .I1(aud_rCycleCnt_reg[21]),
        .I2(aud_rPulse1[20]),
        .I3(aud_rCycleCnt_reg[20]),
        .O(aud_rPulse0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__1_i_7
       (.I0(aud_rPulse1[19]),
        .I1(aud_rCycleCnt_reg[19]),
        .I2(aud_rPulse1[18]),
        .I3(aud_rCycleCnt_reg[18]),
        .O(aud_rPulse0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__1_i_8
       (.I0(aud_rPulse1[17]),
        .I1(aud_rCycleCnt_reg[17]),
        .I2(aud_rPulse1[16]),
        .I3(aud_rCycleCnt_reg[16]),
        .O(aud_rPulse0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 aud_rPulse0_carry__2
       (.CI(aud_rPulse0_carry__1_n_0),
        .CO({aud_rPulse0,aud_rPulse0_carry__2_n_1,aud_rPulse0_carry__2_n_2,aud_rPulse0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({aud_rPulse0_carry__2_i_1_n_0,aud_rPulse0_carry__2_i_2_n_0,aud_rPulse0_carry__2_i_3_n_0,aud_rPulse0_carry__2_i_4_n_0}),
        .O(NLW_aud_rPulse0_carry__2_O_UNCONNECTED[3:0]),
        .S({aud_rPulse0_carry__2_i_5_n_0,aud_rPulse0_carry__2_i_6_n_0,aud_rPulse0_carry__2_i_7_n_0,aud_rPulse0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__2_i_1
       (.I0(aud_rCycleCnt_reg[31]),
        .I1(aud_rPulse1[31]),
        .I2(aud_rCycleCnt_reg[30]),
        .I3(aud_rPulse1[30]),
        .O(aud_rPulse0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__2_i_2
       (.I0(aud_rCycleCnt_reg[29]),
        .I1(aud_rPulse1[29]),
        .I2(aud_rCycleCnt_reg[28]),
        .I3(aud_rPulse1[28]),
        .O(aud_rPulse0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__2_i_3
       (.I0(aud_rCycleCnt_reg[27]),
        .I1(aud_rPulse1[27]),
        .I2(aud_rCycleCnt_reg[26]),
        .I3(aud_rPulse1[26]),
        .O(aud_rPulse0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__2_i_4
       (.I0(aud_rCycleCnt_reg[25]),
        .I1(aud_rPulse1[25]),
        .I2(aud_rCycleCnt_reg[24]),
        .I3(aud_rPulse1[24]),
        .O(aud_rPulse0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__2_i_5
       (.I0(aud_rPulse1[31]),
        .I1(aud_rCycleCnt_reg[31]),
        .I2(aud_rPulse1[30]),
        .I3(aud_rCycleCnt_reg[30]),
        .O(aud_rPulse0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__2_i_6
       (.I0(aud_rPulse1[29]),
        .I1(aud_rCycleCnt_reg[29]),
        .I2(aud_rPulse1[28]),
        .I3(aud_rCycleCnt_reg[28]),
        .O(aud_rPulse0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__2_i_7
       (.I0(aud_rPulse1[27]),
        .I1(aud_rCycleCnt_reg[27]),
        .I2(aud_rPulse1[26]),
        .I3(aud_rCycleCnt_reg[26]),
        .O(aud_rPulse0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__2_i_8
       (.I0(aud_rPulse1[25]),
        .I1(aud_rCycleCnt_reg[25]),
        .I2(aud_rPulse1[24]),
        .I3(aud_rCycleCnt_reg[24]),
        .O(aud_rPulse0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_1
       (.I0(aud_rCycleCnt_reg[7]),
        .I1(aud_rPulse1[7]),
        .I2(aud_rCycleCnt_reg[6]),
        .I3(aud_rPulse1[6]),
        .O(aud_rPulse0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_2
       (.I0(aud_rCycleCnt_reg[5]),
        .I1(aud_rPulse1[5]),
        .I2(aud_rCycleCnt_reg[4]),
        .I3(aud_rPulse1[4]),
        .O(aud_rPulse0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_3
       (.I0(aud_rCycleCnt_reg[3]),
        .I1(aud_rPulse1[3]),
        .I2(aud_rCycleCnt_reg[2]),
        .I3(aud_rPulse1[2]),
        .O(aud_rPulse0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_5
       (.I0(aud_rPulse1[7]),
        .I1(aud_rCycleCnt_reg[7]),
        .I2(aud_rPulse1[6]),
        .I3(aud_rCycleCnt_reg[6]),
        .O(aud_rPulse0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_6
       (.I0(aud_rPulse1[5]),
        .I1(aud_rCycleCnt_reg[5]),
        .I2(aud_rPulse1[4]),
        .I3(aud_rCycleCnt_reg[4]),
        .O(aud_rPulse0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_7
       (.I0(aud_rPulse1[3]),
        .I1(aud_rCycleCnt_reg[3]),
        .I2(aud_rPulse1[2]),
        .I3(aud_rCycleCnt_reg[2]),
        .O(aud_rPulse0_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry
       (.CI(1'b0),
        .CO({aud_rPulse1_carry_n_0,aud_rPulse1_carry_n_1,aud_rPulse1_carry_n_2,aud_rPulse1_carry_n_3}),
        .CYINIT(rOut_Data[0]),
        .DI(rOut_Data[4:1]),
        .O(aud_rPulse1[4:1]),
        .S({NVAL_CLKCROSS_INST_n_58,NVAL_CLKCROSS_INST_n_59,NVAL_CLKCROSS_INST_n_60,NVAL_CLKCROSS_INST_n_61}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry__0
       (.CI(aud_rPulse1_carry_n_0),
        .CO({aud_rPulse1_carry__0_n_0,aud_rPulse1_carry__0_n_1,aud_rPulse1_carry__0_n_2,aud_rPulse1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rOut_Data[8:5]),
        .O(aud_rPulse1[8:5]),
        .S({NVAL_CLKCROSS_INST_n_54,NVAL_CLKCROSS_INST_n_55,NVAL_CLKCROSS_INST_n_56,NVAL_CLKCROSS_INST_n_57}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry__1
       (.CI(aud_rPulse1_carry__0_n_0),
        .CO({aud_rPulse1_carry__1_n_0,aud_rPulse1_carry__1_n_1,aud_rPulse1_carry__1_n_2,aud_rPulse1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(rOut_Data[12:9]),
        .O(aud_rPulse1[12:9]),
        .S({NVAL_CLKCROSS_INST_n_50,NVAL_CLKCROSS_INST_n_51,NVAL_CLKCROSS_INST_n_52,NVAL_CLKCROSS_INST_n_53}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry__2
       (.CI(aud_rPulse1_carry__1_n_0),
        .CO({aud_rPulse1_carry__2_n_0,aud_rPulse1_carry__2_n_1,aud_rPulse1_carry__2_n_2,aud_rPulse1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(rOut_Data[16:13]),
        .O(aud_rPulse1[16:13]),
        .S({NVAL_CLKCROSS_INST_n_46,NVAL_CLKCROSS_INST_n_47,NVAL_CLKCROSS_INST_n_48,NVAL_CLKCROSS_INST_n_49}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry__3
       (.CI(aud_rPulse1_carry__2_n_0),
        .CO({aud_rPulse1_carry__3_n_0,aud_rPulse1_carry__3_n_1,aud_rPulse1_carry__3_n_2,aud_rPulse1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(rOut_Data[20:17]),
        .O(aud_rPulse1[20:17]),
        .S({NVAL_CLKCROSS_INST_n_42,NVAL_CLKCROSS_INST_n_43,NVAL_CLKCROSS_INST_n_44,NVAL_CLKCROSS_INST_n_45}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry__4
       (.CI(aud_rPulse1_carry__3_n_0),
        .CO({aud_rPulse1_carry__4_n_0,aud_rPulse1_carry__4_n_1,aud_rPulse1_carry__4_n_2,aud_rPulse1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(rOut_Data[24:21]),
        .O(aud_rPulse1[24:21]),
        .S({NVAL_CLKCROSS_INST_n_38,NVAL_CLKCROSS_INST_n_39,NVAL_CLKCROSS_INST_n_40,NVAL_CLKCROSS_INST_n_41}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry__5
       (.CI(aud_rPulse1_carry__4_n_0),
        .CO({aud_rPulse1_carry__5_n_0,aud_rPulse1_carry__5_n_1,aud_rPulse1_carry__5_n_2,aud_rPulse1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(rOut_Data[28:25]),
        .O(aud_rPulse1[28:25]),
        .S({NVAL_CLKCROSS_INST_n_34,NVAL_CLKCROSS_INST_n_35,NVAL_CLKCROSS_INST_n_36,NVAL_CLKCROSS_INST_n_37}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 aud_rPulse1_carry__6
       (.CI(aud_rPulse1_carry__5_n_0),
        .CO({NLW_aud_rPulse1_carry__6_CO_UNCONNECTED[3:2],aud_rPulse1_carry__6_n_2,aud_rPulse1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rOut_Data[30:29]}),
        .O({NLW_aud_rPulse1_carry__6_O_UNCONNECTED[3],aud_rPulse1[31:29]}),
        .S({1'b0,NVAL_CLKCROSS_INST_n_0,NVAL_CLKCROSS_INST_n_1,NVAL_CLKCROSS_INST_n_2}));
  LUT2 #(
    .INIT(4'h8)) 
    aud_rPulse_i_1
       (.I0(aud_cke),
        .I1(aud_rPulse0),
        .O(aud_rPulse));
  LUT2 #(
    .INIT(4'hE)) 
    aud_rPulse_i_2
       (.I0(aud_rst_chain[2]),
        .I1(aud_reset),
        .O(aud_reset_out));
  FDCE #(
    .INIT(1'b0)) 
    aud_rPulse_reg
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(aud_rPulse),
        .Q(aud_rPulse_reg_n_0));
  LUT4 #(
    .INIT(16'h8AAA)) 
    aud_reset_i_1
       (.I0(aud_reset),
        .I1(aud_reset_i_3_n_0),
        .I2(aud_rst_cnt_reg[6]),
        .I3(aud_rst_cnt_reg[7]),
        .O(aud_reset_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aud_reset_i_2
       (.I0(pll_lock_in),
        .O(aud_reset_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    aud_reset_i_3
       (.I0(aud_rst_cnt_reg[4]),
        .I1(aud_rst_cnt_reg[2]),
        .I2(aud_rst_cnt_reg[0]),
        .I3(aud_rst_cnt_reg[1]),
        .I4(aud_rst_cnt_reg[3]),
        .I5(aud_rst_cnt_reg[5]),
        .O(aud_reset_i_3_n_0));
  FDPE aud_reset_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_reset_i_1_n_0),
        .PRE(aud_reset_i_2_n_0),
        .Q(aud_reset));
  LUT2 #(
    .INIT(4'h1)) 
    aud_resetn_out_INST_0
       (.I0(aud_reset),
        .I1(aud_rst_chain[2]),
        .O(aud_resetn_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \aud_rst_chain_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(data1[2]),
        .Q(aud_rst_chain[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \aud_rst_chain_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_rst_chain[0]),
        .PRE(data1[2]),
        .Q(aud_rst_chain[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \aud_rst_chain_reg[2] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_rst_chain[1]),
        .PRE(data1[2]),
        .Q(aud_rst_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \aud_rst_cnt[0]_i_1 
       (.I0(aud_rst_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \aud_rst_cnt[1]_i_1 
       (.I0(aud_rst_cnt_reg[0]),
        .I1(aud_rst_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \aud_rst_cnt[2]_i_1 
       (.I0(aud_rst_cnt_reg[1]),
        .I1(aud_rst_cnt_reg[0]),
        .I2(aud_rst_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \aud_rst_cnt[3]_i_1 
       (.I0(aud_rst_cnt_reg[2]),
        .I1(aud_rst_cnt_reg[0]),
        .I2(aud_rst_cnt_reg[1]),
        .I3(aud_rst_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \aud_rst_cnt[4]_i_1 
       (.I0(aud_rst_cnt_reg[3]),
        .I1(aud_rst_cnt_reg[1]),
        .I2(aud_rst_cnt_reg[0]),
        .I3(aud_rst_cnt_reg[2]),
        .I4(aud_rst_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \aud_rst_cnt[5]_i_1 
       (.I0(aud_rst_cnt_reg[4]),
        .I1(aud_rst_cnt_reg[2]),
        .I2(aud_rst_cnt_reg[0]),
        .I3(aud_rst_cnt_reg[1]),
        .I4(aud_rst_cnt_reg[3]),
        .I5(aud_rst_cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \aud_rst_cnt[6]_i_1 
       (.I0(aud_reset_i_3_n_0),
        .I1(aud_rst_cnt_reg[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'hBF)) 
    \aud_rst_cnt[7]_i_1 
       (.I0(aud_reset_i_3_n_0),
        .I1(aud_rst_cnt_reg[6]),
        .I2(aud_rst_cnt_reg[7]),
        .O(\aud_rst_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \aud_rst_cnt[7]_i_2 
       (.I0(aud_rst_cnt_reg[6]),
        .I1(aud_reset_i_3_n_0),
        .I2(aud_rst_cnt_reg[7]),
        .O(p_0_in[7]));
  FDCE \aud_rst_cnt_reg[0] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[0]),
        .Q(aud_rst_cnt_reg[0]));
  FDCE \aud_rst_cnt_reg[1] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[1]),
        .Q(aud_rst_cnt_reg[1]));
  FDCE \aud_rst_cnt_reg[2] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[2]),
        .Q(aud_rst_cnt_reg[2]));
  FDCE \aud_rst_cnt_reg[3] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[3]),
        .Q(aud_rst_cnt_reg[3]));
  FDCE \aud_rst_cnt_reg[4] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[4]),
        .Q(aud_rst_cnt_reg[4]));
  FDCE \aud_rst_cnt_reg[5] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[5]),
        .Q(aud_rst_cnt_reg[5]));
  FDCE \aud_rst_cnt_reg[6] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[6]),
        .Q(aud_rst_cnt_reg[6]));
  FDCE \aud_rst_cnt_reg[7] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[7]),
        .Q(aud_rst_cnt_reg[7]));
  FDRE \aud_tmdsclkratio_sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(data1[3]),
        .Q(aud_tmdsclkratio_sync[0]),
        .R(1'b0));
  FDRE \aud_tmdsclkratio_sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_tmdsclkratio_sync[0]),
        .Q(aud_tmdsclkratio_sync[1]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[0] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[0]),
        .Q(hdmi_rCTS_Val[0]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[10] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[10]),
        .Q(hdmi_rCTS_Val[10]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[11] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[11]),
        .Q(hdmi_rCTS_Val[11]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[12] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[12]),
        .Q(hdmi_rCTS_Val[12]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[13] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[13]),
        .Q(hdmi_rCTS_Val[13]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[14] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[14]),
        .Q(hdmi_rCTS_Val[14]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[15] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[15]),
        .Q(hdmi_rCTS_Val[15]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[16] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[16]),
        .Q(hdmi_rCTS_Val[16]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[17] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[17]),
        .Q(hdmi_rCTS_Val[17]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[18] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[18]),
        .Q(hdmi_rCTS_Val[18]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[19] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[19]),
        .Q(hdmi_rCTS_Val[19]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[1] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[1]),
        .Q(hdmi_rCTS_Val[1]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[20] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[20]),
        .Q(hdmi_rCTS_Val[20]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[21] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[21]),
        .Q(hdmi_rCTS_Val[21]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[22] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[22]),
        .Q(hdmi_rCTS_Val[22]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[23] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[23]),
        .Q(hdmi_rCTS_Val[23]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[24] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[24]),
        .Q(hdmi_rCTS_Val[24]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[25] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[25]),
        .Q(hdmi_rCTS_Val[25]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[26] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[26]),
        .Q(hdmi_rCTS_Val[26]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[27] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[27]),
        .Q(hdmi_rCTS_Val[27]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[28] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[28]),
        .Q(hdmi_rCTS_Val[28]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[29] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[29]),
        .Q(hdmi_rCTS_Val[29]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[2] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[2]),
        .Q(hdmi_rCTS_Val[2]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[30] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[30]),
        .Q(hdmi_rCTS_Val[30]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[31] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[31]),
        .Q(hdmi_rCTS_Val[31]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[3] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[3]),
        .Q(hdmi_rCTS_Val[3]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[4] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[4]),
        .Q(hdmi_rCTS_Val[4]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[5] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[5]),
        .Q(hdmi_rCTS_Val[5]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[6] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[6]),
        .Q(hdmi_rCTS_Val[6]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[7] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[7]),
        .Q(hdmi_rCTS_Val[7]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[8] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[8]),
        .Q(hdmi_rCTS_Val[8]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[9] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[9]),
        .Q(hdmi_rCTS_Val[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_rCycleTimeCnt[0]_i_2 
       (.I0(hdmi_rCycleTimeCnt_reg[0]),
        .O(\hdmi_rCycleTimeCnt[0]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[0]),
        .S(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\hdmi_rCycleTimeCnt_reg[0]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hdmi_rCycleTimeCnt_reg[0]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_7 }),
        .S({hdmi_rCycleTimeCnt_reg[3:1],\hdmi_rCycleTimeCnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[10]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[11]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[12]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[12]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[12]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_0 ),
        .CO({\hdmi_rCycleTimeCnt_reg[12]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[12]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[12]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[12]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[12]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[12]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[12]_i_1_n_7 }),
        .S(hdmi_rCycleTimeCnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[12]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[13]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[12]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[14]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[12]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[15]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[16]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[16]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[12]_i_1_n_0 ),
        .CO({\hdmi_rCycleTimeCnt_reg[16]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[16]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_7 }),
        .S(hdmi_rCycleTimeCnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[17]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[18]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[19]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[1]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[20]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[20]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[20]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_0 ),
        .CO({\hdmi_rCycleTimeCnt_reg[20]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[20]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[20]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[20]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[20]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[20]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[20]_i_1_n_7 }),
        .S(hdmi_rCycleTimeCnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[20]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[21]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[20]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[22]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[20]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[23]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[24]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[24]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[20]_i_1_n_0 ),
        .CO({\hdmi_rCycleTimeCnt_reg[24]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[24]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_7 }),
        .S(hdmi_rCycleTimeCnt_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[25] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[25]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[26] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[26]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[27] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[27]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[28] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[28]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[28]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[28]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_hdmi_rCycleTimeCnt_reg[28]_i_1_CO_UNCONNECTED [3],\hdmi_rCycleTimeCnt_reg[28]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[28]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[28]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[28]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[28]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[28]_i_1_n_7 }),
        .S(hdmi_rCycleTimeCnt_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[29] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[28]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[29]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[2]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[30] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[28]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[30]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[31] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[28]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[31]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[3]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[4]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[4]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[4]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_0 ),
        .CO({\hdmi_rCycleTimeCnt_reg[4]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[4]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[4]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[4]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[4]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[4]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[4]_i_1_n_7 }),
        .S(hdmi_rCycleTimeCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[4]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[5]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[4]_i_1_n_5 ),
        .Q(hdmi_rCycleTimeCnt_reg[6]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[4]_i_1_n_4 ),
        .Q(hdmi_rCycleTimeCnt_reg[7]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_7 ),
        .Q(hdmi_rCycleTimeCnt_reg[8]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \hdmi_rCycleTimeCnt_reg[8]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[4]_i_1_n_0 ),
        .CO({\hdmi_rCycleTimeCnt_reg[8]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[8]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_7 }),
        .S(hdmi_rCycleTimeCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_6 ),
        .Q(hdmi_rCycleTimeCnt_reg[9]),
        .R(rOut_Pulse));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_lib_data_clkcross" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_data_clkcross
   (\rOut_Data_reg[31]_0 ,
    axi_aclk,
    hdmi_clk,
    Q);
  output [31:0]\rOut_Data_reg[31]_0 ;
  input axi_aclk;
  input hdmi_clk;
  input [31:0]Q;

  wire [31:0]Q;
  wire axi_aclk;
  wire hdmi_clk;
  wire p_0_in;
  wire p_0_in0_in;
  wire \rIn_ACK_Sync_reg_n_0_[0] ;
  wire rIn_DValid;
  wire rIn_DValid_i_1__0_n_0;
  wire rIn_Data0;
  wire \rIn_Data_reg_n_0_[0] ;
  wire \rIn_Data_reg_n_0_[10] ;
  wire \rIn_Data_reg_n_0_[11] ;
  wire \rIn_Data_reg_n_0_[12] ;
  wire \rIn_Data_reg_n_0_[13] ;
  wire \rIn_Data_reg_n_0_[14] ;
  wire \rIn_Data_reg_n_0_[15] ;
  wire \rIn_Data_reg_n_0_[16] ;
  wire \rIn_Data_reg_n_0_[17] ;
  wire \rIn_Data_reg_n_0_[18] ;
  wire \rIn_Data_reg_n_0_[19] ;
  wire \rIn_Data_reg_n_0_[1] ;
  wire \rIn_Data_reg_n_0_[20] ;
  wire \rIn_Data_reg_n_0_[21] ;
  wire \rIn_Data_reg_n_0_[22] ;
  wire \rIn_Data_reg_n_0_[23] ;
  wire \rIn_Data_reg_n_0_[24] ;
  wire \rIn_Data_reg_n_0_[25] ;
  wire \rIn_Data_reg_n_0_[26] ;
  wire \rIn_Data_reg_n_0_[27] ;
  wire \rIn_Data_reg_n_0_[28] ;
  wire \rIn_Data_reg_n_0_[29] ;
  wire \rIn_Data_reg_n_0_[2] ;
  wire \rIn_Data_reg_n_0_[30] ;
  wire \rIn_Data_reg_n_0_[31] ;
  wire \rIn_Data_reg_n_0_[3] ;
  wire \rIn_Data_reg_n_0_[4] ;
  wire \rIn_Data_reg_n_0_[5] ;
  wire \rIn_Data_reg_n_0_[6] ;
  wire \rIn_Data_reg_n_0_[7] ;
  wire \rIn_Data_reg_n_0_[8] ;
  wire \rIn_Data_reg_n_0_[9] ;
  wire rOut_ACK;
  wire \rOut_DValid_Sync_reg_n_0_[0] ;
  wire rOut_Data0;
  wire [31:0]\rOut_Data_reg[31]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rOut_ACK),
        .Q(\rIn_ACK_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\rIn_ACK_Sync_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rIn_DValid_i_1__0
       (.I0(p_0_in0_in),
        .O(rIn_DValid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_DValid_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rIn_DValid_i_1__0_n_0),
        .Q(rIn_DValid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rIn_Data[31]_i_1__0 
       (.I0(p_0_in0_in),
        .I1(rIn_DValid),
        .O(rIn_Data0));
  FDRE \rIn_Data_reg[0] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[0]),
        .Q(\rIn_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[10] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[10]),
        .Q(\rIn_Data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[11] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[11]),
        .Q(\rIn_Data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[12] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[12]),
        .Q(\rIn_Data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[13] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[13]),
        .Q(\rIn_Data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[14] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[14]),
        .Q(\rIn_Data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[15] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[15]),
        .Q(\rIn_Data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[16] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[16]),
        .Q(\rIn_Data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[17] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[17]),
        .Q(\rIn_Data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[18] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[18]),
        .Q(\rIn_Data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[19] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[19]),
        .Q(\rIn_Data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[1] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[1]),
        .Q(\rIn_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[20] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[20]),
        .Q(\rIn_Data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[21] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[21]),
        .Q(\rIn_Data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[22] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[22]),
        .Q(\rIn_Data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[23] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[23]),
        .Q(\rIn_Data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[24] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[24]),
        .Q(\rIn_Data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[25] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[25]),
        .Q(\rIn_Data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[26] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[26]),
        .Q(\rIn_Data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[27] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[27]),
        .Q(\rIn_Data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[28] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[28]),
        .Q(\rIn_Data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[29] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[29]),
        .Q(\rIn_Data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[2] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[2]),
        .Q(\rIn_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[30] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[30]),
        .Q(\rIn_Data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[31] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[31]),
        .Q(\rIn_Data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[3] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[3]),
        .Q(\rIn_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[4] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[4]),
        .Q(\rIn_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[5] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[5]),
        .Q(\rIn_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[6] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[6]),
        .Q(\rIn_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[7] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[7]),
        .Q(\rIn_Data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[8] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[8]),
        .Q(\rIn_Data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[9] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[9]),
        .Q(\rIn_Data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_ACK_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rOut_ACK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rIn_DValid),
        .Q(\rOut_DValid_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\rOut_DValid_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rOut_Data[31]_i_1__0 
       (.I0(p_0_in),
        .I1(rOut_ACK),
        .O(rOut_Data0));
  FDRE \rOut_Data_reg[0] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[0] ),
        .Q(\rOut_Data_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \rOut_Data_reg[10] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[10] ),
        .Q(\rOut_Data_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \rOut_Data_reg[11] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[11] ),
        .Q(\rOut_Data_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \rOut_Data_reg[12] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[12] ),
        .Q(\rOut_Data_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \rOut_Data_reg[13] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[13] ),
        .Q(\rOut_Data_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \rOut_Data_reg[14] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[14] ),
        .Q(\rOut_Data_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \rOut_Data_reg[15] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[15] ),
        .Q(\rOut_Data_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \rOut_Data_reg[16] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[16] ),
        .Q(\rOut_Data_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \rOut_Data_reg[17] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[17] ),
        .Q(\rOut_Data_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \rOut_Data_reg[18] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[18] ),
        .Q(\rOut_Data_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \rOut_Data_reg[19] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[19] ),
        .Q(\rOut_Data_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \rOut_Data_reg[1] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[1] ),
        .Q(\rOut_Data_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \rOut_Data_reg[20] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[20] ),
        .Q(\rOut_Data_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \rOut_Data_reg[21] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[21] ),
        .Q(\rOut_Data_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \rOut_Data_reg[22] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[22] ),
        .Q(\rOut_Data_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \rOut_Data_reg[23] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[23] ),
        .Q(\rOut_Data_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \rOut_Data_reg[24] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[24] ),
        .Q(\rOut_Data_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \rOut_Data_reg[25] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[25] ),
        .Q(\rOut_Data_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \rOut_Data_reg[26] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[26] ),
        .Q(\rOut_Data_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \rOut_Data_reg[27] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[27] ),
        .Q(\rOut_Data_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \rOut_Data_reg[28] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[28] ),
        .Q(\rOut_Data_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \rOut_Data_reg[29] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[29] ),
        .Q(\rOut_Data_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \rOut_Data_reg[2] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[2] ),
        .Q(\rOut_Data_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \rOut_Data_reg[30] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[30] ),
        .Q(\rOut_Data_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \rOut_Data_reg[31] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[31] ),
        .Q(\rOut_Data_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \rOut_Data_reg[3] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[3] ),
        .Q(\rOut_Data_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \rOut_Data_reg[4] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[4] ),
        .Q(\rOut_Data_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \rOut_Data_reg[5] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[5] ),
        .Q(\rOut_Data_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \rOut_Data_reg[6] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[6] ),
        .Q(\rOut_Data_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \rOut_Data_reg[7] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[7] ),
        .Q(\rOut_Data_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \rOut_Data_reg[8] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[8] ),
        .Q(\rOut_Data_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \rOut_Data_reg[9] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[9] ),
        .Q(\rOut_Data_reg[31]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_lib_data_clkcross" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_data_clkcross_0
   (D,
    aud_clk,
    hdmi_clk,
    aud_acr_cts_in,
    Q,
    \aud_cts_val_reg[2] ,
    \rIn_Data_reg[19]_0 );
  output [19:0]D;
  input aud_clk;
  input hdmi_clk;
  input [19:0]aud_acr_cts_in;
  input [0:0]Q;
  input [0:0]\aud_cts_val_reg[2] ;
  input [19:0]\rIn_Data_reg[19]_0 ;

  wire [19:0]D;
  wire [0:0]Q;
  wire [19:0]aud_acr_cts_in;
  wire aud_clk;
  wire [0:0]\aud_cts_val_reg[2] ;
  wire hdmi_clk;
  wire p_0_in;
  wire p_0_in0_in;
  wire \rIn_ACK_Sync_reg_n_0_[0] ;
  wire rIn_DValid;
  wire rIn_DValid_i_1__1_n_0;
  wire rIn_Data0;
  wire [19:0]\rIn_Data_reg[19]_0 ;
  wire \rIn_Data_reg_n_0_[0] ;
  wire \rIn_Data_reg_n_0_[10] ;
  wire \rIn_Data_reg_n_0_[11] ;
  wire \rIn_Data_reg_n_0_[12] ;
  wire \rIn_Data_reg_n_0_[13] ;
  wire \rIn_Data_reg_n_0_[14] ;
  wire \rIn_Data_reg_n_0_[15] ;
  wire \rIn_Data_reg_n_0_[16] ;
  wire \rIn_Data_reg_n_0_[17] ;
  wire \rIn_Data_reg_n_0_[18] ;
  wire \rIn_Data_reg_n_0_[19] ;
  wire \rIn_Data_reg_n_0_[1] ;
  wire \rIn_Data_reg_n_0_[2] ;
  wire \rIn_Data_reg_n_0_[3] ;
  wire \rIn_Data_reg_n_0_[4] ;
  wire \rIn_Data_reg_n_0_[5] ;
  wire \rIn_Data_reg_n_0_[6] ;
  wire \rIn_Data_reg_n_0_[7] ;
  wire \rIn_Data_reg_n_0_[8] ;
  wire \rIn_Data_reg_n_0_[9] ;
  wire rOut_ACK;
  wire \rOut_DValid_Sync_reg_n_0_[0] ;
  wire rOut_Data0;
  wire \rOut_Data_reg_n_0_[0] ;
  wire \rOut_Data_reg_n_0_[10] ;
  wire \rOut_Data_reg_n_0_[11] ;
  wire \rOut_Data_reg_n_0_[12] ;
  wire \rOut_Data_reg_n_0_[13] ;
  wire \rOut_Data_reg_n_0_[14] ;
  wire \rOut_Data_reg_n_0_[15] ;
  wire \rOut_Data_reg_n_0_[16] ;
  wire \rOut_Data_reg_n_0_[17] ;
  wire \rOut_Data_reg_n_0_[18] ;
  wire \rOut_Data_reg_n_0_[19] ;
  wire \rOut_Data_reg_n_0_[1] ;
  wire \rOut_Data_reg_n_0_[2] ;
  wire \rOut_Data_reg_n_0_[3] ;
  wire \rOut_Data_reg_n_0_[4] ;
  wire \rOut_Data_reg_n_0_[5] ;
  wire \rOut_Data_reg_n_0_[6] ;
  wire \rOut_Data_reg_n_0_[7] ;
  wire \rOut_Data_reg_n_0_[8] ;
  wire \rOut_Data_reg_n_0_[9] ;

  LUT4 #(
    .INIT(16'h2F20)) 
    \aud_cts_val[0]_i_1 
       (.I0(\rOut_Data_reg_n_0_[0] ),
        .I1(Q),
        .I2(\aud_cts_val_reg[2] ),
        .I3(aud_acr_cts_in[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[10]_i_1 
       (.I0(aud_acr_cts_in[10]),
        .I1(\rOut_Data_reg_n_0_[10] ),
        .I2(\rOut_Data_reg_n_0_[8] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[11]_i_1 
       (.I0(aud_acr_cts_in[11]),
        .I1(\rOut_Data_reg_n_0_[11] ),
        .I2(\rOut_Data_reg_n_0_[9] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[12]_i_1 
       (.I0(aud_acr_cts_in[12]),
        .I1(\rOut_Data_reg_n_0_[12] ),
        .I2(\rOut_Data_reg_n_0_[10] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[13]_i_1 
       (.I0(aud_acr_cts_in[13]),
        .I1(\rOut_Data_reg_n_0_[13] ),
        .I2(\rOut_Data_reg_n_0_[11] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[14]_i_1 
       (.I0(aud_acr_cts_in[14]),
        .I1(\rOut_Data_reg_n_0_[14] ),
        .I2(\rOut_Data_reg_n_0_[12] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[15]_i_1 
       (.I0(aud_acr_cts_in[15]),
        .I1(\rOut_Data_reg_n_0_[15] ),
        .I2(\rOut_Data_reg_n_0_[13] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[16]_i_1 
       (.I0(aud_acr_cts_in[16]),
        .I1(\rOut_Data_reg_n_0_[16] ),
        .I2(\rOut_Data_reg_n_0_[14] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[17]_i_1 
       (.I0(aud_acr_cts_in[17]),
        .I1(\rOut_Data_reg_n_0_[17] ),
        .I2(\rOut_Data_reg_n_0_[15] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[18]_i_1 
       (.I0(aud_acr_cts_in[18]),
        .I1(\rOut_Data_reg_n_0_[18] ),
        .I2(\rOut_Data_reg_n_0_[16] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[19]_i_1 
       (.I0(aud_acr_cts_in[19]),
        .I1(\rOut_Data_reg_n_0_[19] ),
        .I2(\rOut_Data_reg_n_0_[17] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \aud_cts_val[1]_i_1 
       (.I0(\rOut_Data_reg_n_0_[1] ),
        .I1(Q),
        .I2(\aud_cts_val_reg[2] ),
        .I3(aud_acr_cts_in[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[2]_i_1 
       (.I0(aud_acr_cts_in[2]),
        .I1(\rOut_Data_reg_n_0_[2] ),
        .I2(\rOut_Data_reg_n_0_[0] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[3]_i_1 
       (.I0(aud_acr_cts_in[3]),
        .I1(\rOut_Data_reg_n_0_[3] ),
        .I2(\rOut_Data_reg_n_0_[1] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[4]_i_1 
       (.I0(aud_acr_cts_in[4]),
        .I1(\rOut_Data_reg_n_0_[4] ),
        .I2(\rOut_Data_reg_n_0_[2] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[5]_i_1 
       (.I0(aud_acr_cts_in[5]),
        .I1(\rOut_Data_reg_n_0_[5] ),
        .I2(\rOut_Data_reg_n_0_[3] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[6]_i_1 
       (.I0(aud_acr_cts_in[6]),
        .I1(\rOut_Data_reg_n_0_[6] ),
        .I2(\rOut_Data_reg_n_0_[4] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[7]_i_1 
       (.I0(aud_acr_cts_in[7]),
        .I1(\rOut_Data_reg_n_0_[7] ),
        .I2(\rOut_Data_reg_n_0_[5] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[8]_i_1 
       (.I0(aud_acr_cts_in[8]),
        .I1(\rOut_Data_reg_n_0_[8] ),
        .I2(\rOut_Data_reg_n_0_[6] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[9]_i_1 
       (.I0(aud_acr_cts_in[9]),
        .I1(\rOut_Data_reg_n_0_[9] ),
        .I2(\rOut_Data_reg_n_0_[7] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rOut_ACK),
        .Q(\rIn_ACK_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\rIn_ACK_Sync_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rIn_DValid_i_1__1
       (.I0(p_0_in0_in),
        .O(rIn_DValid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_DValid_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rIn_DValid_i_1__1_n_0),
        .Q(rIn_DValid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rIn_Data[19]_i_1 
       (.I0(p_0_in0_in),
        .I1(rIn_DValid),
        .O(rIn_Data0));
  FDRE \rIn_Data_reg[0] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [0]),
        .Q(\rIn_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[10] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [10]),
        .Q(\rIn_Data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[11] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [11]),
        .Q(\rIn_Data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[12] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [12]),
        .Q(\rIn_Data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[13] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [13]),
        .Q(\rIn_Data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[14] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [14]),
        .Q(\rIn_Data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[15] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [15]),
        .Q(\rIn_Data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[16] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [16]),
        .Q(\rIn_Data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[17] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [17]),
        .Q(\rIn_Data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[18] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [18]),
        .Q(\rIn_Data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[19] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [19]),
        .Q(\rIn_Data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[1] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [1]),
        .Q(\rIn_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[2] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [2]),
        .Q(\rIn_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[3] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [3]),
        .Q(\rIn_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[4] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [4]),
        .Q(\rIn_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[5] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [5]),
        .Q(\rIn_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[6] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [6]),
        .Q(\rIn_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[7] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [7]),
        .Q(\rIn_Data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[8] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [8]),
        .Q(\rIn_Data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[9] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [9]),
        .Q(\rIn_Data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_ACK_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rOut_ACK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_DValid),
        .Q(\rOut_DValid_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\rOut_DValid_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rOut_Data[19]_i_1 
       (.I0(p_0_in),
        .I1(rOut_ACK),
        .O(rOut_Data0));
  FDRE \rOut_Data_reg[0] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[0] ),
        .Q(\rOut_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[10] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[10] ),
        .Q(\rOut_Data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[11] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[11] ),
        .Q(\rOut_Data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[12] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[12] ),
        .Q(\rOut_Data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[13] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[13] ),
        .Q(\rOut_Data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[14] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[14] ),
        .Q(\rOut_Data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[15] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[15] ),
        .Q(\rOut_Data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[16] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[16] ),
        .Q(\rOut_Data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[17] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[17] ),
        .Q(\rOut_Data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[18] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[18] ),
        .Q(\rOut_Data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[19] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[19] ),
        .Q(\rOut_Data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[1] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[1] ),
        .Q(\rOut_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[2] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[2] ),
        .Q(\rOut_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[3] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[3] ),
        .Q(\rOut_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[4] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[4] ),
        .Q(\rOut_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[5] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[5] ),
        .Q(\rOut_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[6] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[6] ),
        .Q(\rOut_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[7] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[7] ),
        .Q(\rOut_Data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[8] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[8] ),
        .Q(\rOut_Data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[9] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[9] ),
        .Q(\rOut_Data_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_lib_data_clkcross" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_data_clkcross_1
   (S,
    Q,
    \rOut_Data_reg[28]_0 ,
    \rOut_Data_reg[24]_0 ,
    \rOut_Data_reg[20]_0 ,
    \rOut_Data_reg[16]_0 ,
    \rOut_Data_reg[12]_0 ,
    \rOut_Data_reg[8]_0 ,
    \rOut_Data_reg[4]_0 ,
    DI,
    \aud_rCycleCnt_reg[0] ,
    D,
    aud_clk,
    axi_aclk,
    aud_rCycleCnt_reg,
    O,
    \aud_n_val_reg[19] ,
    aud_acr_n_in,
    \rIn_Data_reg[31]_0 );
  output [2:0]S;
  output [30:0]Q;
  output [3:0]\rOut_Data_reg[28]_0 ;
  output [3:0]\rOut_Data_reg[24]_0 ;
  output [3:0]\rOut_Data_reg[20]_0 ;
  output [3:0]\rOut_Data_reg[16]_0 ;
  output [3:0]\rOut_Data_reg[12]_0 ;
  output [3:0]\rOut_Data_reg[8]_0 ;
  output [3:0]\rOut_Data_reg[4]_0 ;
  output [0:0]DI;
  output [0:0]\aud_rCycleCnt_reg[0] ;
  output [19:0]D;
  input aud_clk;
  input axi_aclk;
  input [1:0]aud_rCycleCnt_reg;
  input [0:0]O;
  input [0:0]\aud_n_val_reg[19] ;
  input [19:0]aud_acr_n_in;
  input [31:0]\rIn_Data_reg[31]_0 ;

  wire [19:0]D;
  wire [0:0]DI;
  wire [0:0]O;
  wire [30:0]Q;
  wire [2:0]S;
  wire [19:0]aud_acr_n_in;
  wire aud_clk;
  wire [0:0]\aud_n_val_reg[19] ;
  wire [1:0]aud_rCycleCnt_reg;
  wire [0:0]\aud_rCycleCnt_reg[0] ;
  wire axi_aclk;
  wire p_0_in;
  wire p_0_in0_in;
  wire \rIn_ACK_Sync_reg_n_0_[0] ;
  wire rIn_DValid;
  wire rIn_DValid_i_1_n_0;
  wire [31:0]rIn_Data;
  wire rIn_Data0;
  wire [31:0]\rIn_Data_reg[31]_0 ;
  wire rOut_ACK;
  wire \rOut_DValid_Sync_reg_n_0_[0] ;
  wire [31:31]rOut_Data;
  wire rOut_Data0;
  wire [3:0]\rOut_Data_reg[12]_0 ;
  wire [3:0]\rOut_Data_reg[16]_0 ;
  wire [3:0]\rOut_Data_reg[20]_0 ;
  wire [3:0]\rOut_Data_reg[24]_0 ;
  wire [3:0]\rOut_Data_reg[28]_0 ;
  wire [3:0]\rOut_Data_reg[4]_0 ;
  wire [3:0]\rOut_Data_reg[8]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[0]_i_1 
       (.I0(Q[0]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[10]_i_1 
       (.I0(Q[10]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[11]_i_1 
       (.I0(Q[11]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[12]_i_1 
       (.I0(Q[12]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[13]_i_1 
       (.I0(Q[13]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[14]_i_1 
       (.I0(Q[14]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[15]_i_1 
       (.I0(Q[15]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[16]_i_1 
       (.I0(Q[16]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[17]_i_1 
       (.I0(Q[17]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[18]_i_1 
       (.I0(Q[18]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[19]_i_1 
       (.I0(Q[19]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[1]_i_1 
       (.I0(Q[1]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[2]_i_1 
       (.I0(Q[2]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[3]_i_1 
       (.I0(Q[3]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[4]_i_1 
       (.I0(Q[4]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[5]_i_1 
       (.I0(Q[5]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[6]_i_1 
       (.I0(Q[6]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[7]_i_1 
       (.I0(Q[7]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[8]_i_1 
       (.I0(Q[8]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[9]_i_1 
       (.I0(Q[9]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[9]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hB222)) 
    aud_rPulse0_carry_i_4
       (.I0(aud_rCycleCnt_reg[1]),
        .I1(O),
        .I2(aud_rCycleCnt_reg[0]),
        .I3(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h6006)) 
    aud_rPulse0_carry_i_8
       (.I0(aud_rCycleCnt_reg[0]),
        .I1(Q[0]),
        .I2(O),
        .I3(aud_rCycleCnt_reg[1]),
        .O(\aud_rCycleCnt_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_1
       (.I0(Q[8]),
        .O(\rOut_Data_reg[8]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_2
       (.I0(Q[7]),
        .O(\rOut_Data_reg[8]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_3
       (.I0(Q[6]),
        .O(\rOut_Data_reg[8]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_4
       (.I0(Q[5]),
        .O(\rOut_Data_reg[8]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_1
       (.I0(Q[12]),
        .O(\rOut_Data_reg[12]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_2
       (.I0(Q[11]),
        .O(\rOut_Data_reg[12]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_3
       (.I0(Q[10]),
        .O(\rOut_Data_reg[12]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_4
       (.I0(Q[9]),
        .O(\rOut_Data_reg[12]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_1
       (.I0(Q[16]),
        .O(\rOut_Data_reg[16]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_2
       (.I0(Q[15]),
        .O(\rOut_Data_reg[16]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_3
       (.I0(Q[14]),
        .O(\rOut_Data_reg[16]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_4
       (.I0(Q[13]),
        .O(\rOut_Data_reg[16]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__3_i_1
       (.I0(Q[20]),
        .O(\rOut_Data_reg[20]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__3_i_2
       (.I0(Q[19]),
        .O(\rOut_Data_reg[20]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__3_i_3
       (.I0(Q[18]),
        .O(\rOut_Data_reg[20]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__3_i_4
       (.I0(Q[17]),
        .O(\rOut_Data_reg[20]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__4_i_1
       (.I0(Q[24]),
        .O(\rOut_Data_reg[24]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__4_i_2
       (.I0(Q[23]),
        .O(\rOut_Data_reg[24]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__4_i_3
       (.I0(Q[22]),
        .O(\rOut_Data_reg[24]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__4_i_4
       (.I0(Q[21]),
        .O(\rOut_Data_reg[24]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__5_i_1
       (.I0(Q[28]),
        .O(\rOut_Data_reg[28]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__5_i_2
       (.I0(Q[27]),
        .O(\rOut_Data_reg[28]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__5_i_3
       (.I0(Q[26]),
        .O(\rOut_Data_reg[28]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__5_i_4
       (.I0(Q[25]),
        .O(\rOut_Data_reg[28]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__6_i_1
       (.I0(rOut_Data),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__6_i_2
       (.I0(Q[30]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__6_i_3
       (.I0(Q[29]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_1
       (.I0(Q[4]),
        .O(\rOut_Data_reg[4]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_2
       (.I0(Q[3]),
        .O(\rOut_Data_reg[4]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_3
       (.I0(Q[2]),
        .O(\rOut_Data_reg[4]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_4
       (.I0(Q[1]),
        .O(\rOut_Data_reg[4]_0 [0]));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rOut_ACK),
        .Q(\rIn_ACK_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\rIn_ACK_Sync_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rIn_DValid_i_1
       (.I0(p_0_in0_in),
        .O(rIn_DValid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_DValid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rIn_DValid_i_1_n_0),
        .Q(rIn_DValid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rIn_Data[31]_i_1 
       (.I0(p_0_in0_in),
        .I1(rIn_DValid),
        .O(rIn_Data0));
  FDRE \rIn_Data_reg[0] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [0]),
        .Q(rIn_Data[0]),
        .R(1'b0));
  FDRE \rIn_Data_reg[10] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [10]),
        .Q(rIn_Data[10]),
        .R(1'b0));
  FDRE \rIn_Data_reg[11] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [11]),
        .Q(rIn_Data[11]),
        .R(1'b0));
  FDRE \rIn_Data_reg[12] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [12]),
        .Q(rIn_Data[12]),
        .R(1'b0));
  FDRE \rIn_Data_reg[13] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [13]),
        .Q(rIn_Data[13]),
        .R(1'b0));
  FDRE \rIn_Data_reg[14] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [14]),
        .Q(rIn_Data[14]),
        .R(1'b0));
  FDRE \rIn_Data_reg[15] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [15]),
        .Q(rIn_Data[15]),
        .R(1'b0));
  FDRE \rIn_Data_reg[16] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [16]),
        .Q(rIn_Data[16]),
        .R(1'b0));
  FDRE \rIn_Data_reg[17] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [17]),
        .Q(rIn_Data[17]),
        .R(1'b0));
  FDRE \rIn_Data_reg[18] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [18]),
        .Q(rIn_Data[18]),
        .R(1'b0));
  FDRE \rIn_Data_reg[19] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [19]),
        .Q(rIn_Data[19]),
        .R(1'b0));
  FDRE \rIn_Data_reg[1] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [1]),
        .Q(rIn_Data[1]),
        .R(1'b0));
  FDRE \rIn_Data_reg[20] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [20]),
        .Q(rIn_Data[20]),
        .R(1'b0));
  FDRE \rIn_Data_reg[21] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [21]),
        .Q(rIn_Data[21]),
        .R(1'b0));
  FDRE \rIn_Data_reg[22] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [22]),
        .Q(rIn_Data[22]),
        .R(1'b0));
  FDRE \rIn_Data_reg[23] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [23]),
        .Q(rIn_Data[23]),
        .R(1'b0));
  FDRE \rIn_Data_reg[24] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [24]),
        .Q(rIn_Data[24]),
        .R(1'b0));
  FDRE \rIn_Data_reg[25] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [25]),
        .Q(rIn_Data[25]),
        .R(1'b0));
  FDRE \rIn_Data_reg[26] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [26]),
        .Q(rIn_Data[26]),
        .R(1'b0));
  FDRE \rIn_Data_reg[27] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [27]),
        .Q(rIn_Data[27]),
        .R(1'b0));
  FDRE \rIn_Data_reg[28] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [28]),
        .Q(rIn_Data[28]),
        .R(1'b0));
  FDRE \rIn_Data_reg[29] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [29]),
        .Q(rIn_Data[29]),
        .R(1'b0));
  FDRE \rIn_Data_reg[2] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [2]),
        .Q(rIn_Data[2]),
        .R(1'b0));
  FDRE \rIn_Data_reg[30] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [30]),
        .Q(rIn_Data[30]),
        .R(1'b0));
  FDRE \rIn_Data_reg[31] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [31]),
        .Q(rIn_Data[31]),
        .R(1'b0));
  FDRE \rIn_Data_reg[3] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [3]),
        .Q(rIn_Data[3]),
        .R(1'b0));
  FDRE \rIn_Data_reg[4] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [4]),
        .Q(rIn_Data[4]),
        .R(1'b0));
  FDRE \rIn_Data_reg[5] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [5]),
        .Q(rIn_Data[5]),
        .R(1'b0));
  FDRE \rIn_Data_reg[6] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [6]),
        .Q(rIn_Data[6]),
        .R(1'b0));
  FDRE \rIn_Data_reg[7] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [7]),
        .Q(rIn_Data[7]),
        .R(1'b0));
  FDRE \rIn_Data_reg[8] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [8]),
        .Q(rIn_Data[8]),
        .R(1'b0));
  FDRE \rIn_Data_reg[9] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [9]),
        .Q(rIn_Data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_ACK_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rOut_ACK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_DValid),
        .Q(\rOut_DValid_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\rOut_DValid_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rOut_Data[31]_i_1 
       (.I0(p_0_in),
        .I1(rOut_ACK),
        .O(rOut_Data0));
  FDRE \rOut_Data_reg[0] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rOut_Data_reg[10] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \rOut_Data_reg[11] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \rOut_Data_reg[12] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \rOut_Data_reg[13] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \rOut_Data_reg[14] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \rOut_Data_reg[15] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \rOut_Data_reg[16] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \rOut_Data_reg[17] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \rOut_Data_reg[18] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \rOut_Data_reg[19] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \rOut_Data_reg[1] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rOut_Data_reg[20] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \rOut_Data_reg[21] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \rOut_Data_reg[22] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \rOut_Data_reg[23] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \rOut_Data_reg[24] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \rOut_Data_reg[25] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \rOut_Data_reg[26] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \rOut_Data_reg[27] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \rOut_Data_reg[28] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \rOut_Data_reg[29] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \rOut_Data_reg[2] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rOut_Data_reg[30] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \rOut_Data_reg[31] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[31]),
        .Q(rOut_Data),
        .R(1'b0));
  FDRE \rOut_Data_reg[3] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rOut_Data_reg[4] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rOut_Data_reg[5] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rOut_Data_reg[6] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rOut_Data_reg[7] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \rOut_Data_reg[8] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \rOut_Data_reg[9] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_lib_pulse_clkcross" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_lib_pulse_clkcross
   (rOut_Pulse,
    hdmi_clk,
    rIn_PulseCap_reg_0,
    aud_clk);
  output rOut_Pulse;
  input hdmi_clk;
  input rIn_PulseCap_reg_0;
  input aud_clk;

  wire aud_clk;
  wire hdmi_clk;
  wire p_0_in;
  wire rIn_PulseCap;
  wire rIn_PulseCap_reg_0;
  wire rIn_Toggle;
  wire rIn_Toggle_i_1_n_0;
  wire rOut_Pulse;
  wire rOut_Pulse_i_1_n_0;
  wire \rOut_Sync_reg_n_0_[0] ;
  wire \rOut_Sync_reg_n_0_[2] ;

  FDRE #(
    .INIT(1'b0)) 
    rIn_PulseCap_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_PulseCap_reg_0),
        .Q(rIn_PulseCap),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    rIn_Toggle_i_1
       (.I0(rIn_PulseCap),
        .I1(rIn_PulseCap_reg_0),
        .I2(rIn_Toggle),
        .O(rIn_Toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_Toggle_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_Toggle_i_1_n_0),
        .Q(rIn_Toggle),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    rOut_Pulse_i_1
       (.I0(p_0_in),
        .I1(\rOut_Sync_reg_n_0_[2] ),
        .O(rOut_Pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_Pulse_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rOut_Pulse_i_1_n_0),
        .Q(rOut_Pulse),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_Sync_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rIn_Toggle),
        .Q(\rOut_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_Sync_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\rOut_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_Sync_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\rOut_Sync_reg_n_0_[2] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
