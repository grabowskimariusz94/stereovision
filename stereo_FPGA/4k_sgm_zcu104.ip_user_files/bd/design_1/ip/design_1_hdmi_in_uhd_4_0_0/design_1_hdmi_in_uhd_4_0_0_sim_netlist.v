// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Dec  4 21:30:30 2020
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/User/Desktop/stereo_FPGA/4k_sgm_zcu104.srcs/sources_1/bd/design_1/ip/design_1_hdmi_in_uhd_4_0_0/design_1_hdmi_in_uhd_4_0_0_sim_netlist.v
// Design      : design_1_hdmi_in_uhd_4_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_hdmi_in_uhd_4_0_0,hdmi_in_uhd_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hdmi_in_uhd_4,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_hdmi_in_uhd_4_0_0
   (s_axis_video_aclk,
    s_axis_video_aresetn,
    VIDEO_IN_tdata,
    VIDEO_IN_tlast,
    VIDEO_IN_tready,
    VIDEO_IN_tuser,
    VIDEO_IN_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_video_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video_aclk, ASSOCIATED_RESET s_axis_video_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_hdmi_in_uhd_4_0_0_s_axis_video_aclk, INSERT_VIP 0" *) output s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axis_video_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output s_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TDATA" *) output [95:0]VIDEO_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TLAST" *) output VIDEO_IN_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TREADY" *) input VIDEO_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TUSER" *) output VIDEO_IN_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_IN, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output VIDEO_IN_tvalid;

  wire \<const0> ;

  assign VIDEO_IN_tdata[95] = \<const0> ;
  assign VIDEO_IN_tdata[94] = \<const0> ;
  assign VIDEO_IN_tdata[93] = \<const0> ;
  assign VIDEO_IN_tdata[92] = \<const0> ;
  assign VIDEO_IN_tdata[91] = \<const0> ;
  assign VIDEO_IN_tdata[90] = \<const0> ;
  assign VIDEO_IN_tdata[89] = \<const0> ;
  assign VIDEO_IN_tdata[88] = \<const0> ;
  assign VIDEO_IN_tdata[87] = \<const0> ;
  assign VIDEO_IN_tdata[86] = \<const0> ;
  assign VIDEO_IN_tdata[85] = \<const0> ;
  assign VIDEO_IN_tdata[84] = \<const0> ;
  assign VIDEO_IN_tdata[83] = \<const0> ;
  assign VIDEO_IN_tdata[82] = \<const0> ;
  assign VIDEO_IN_tdata[81] = \<const0> ;
  assign VIDEO_IN_tdata[80] = \<const0> ;
  assign VIDEO_IN_tdata[79] = \<const0> ;
  assign VIDEO_IN_tdata[78] = \<const0> ;
  assign VIDEO_IN_tdata[77] = \<const0> ;
  assign VIDEO_IN_tdata[76] = \<const0> ;
  assign VIDEO_IN_tdata[75] = \<const0> ;
  assign VIDEO_IN_tdata[74] = \<const0> ;
  assign VIDEO_IN_tdata[73] = \<const0> ;
  assign VIDEO_IN_tdata[72] = \<const0> ;
  assign VIDEO_IN_tdata[71] = \<const0> ;
  assign VIDEO_IN_tdata[70] = \<const0> ;
  assign VIDEO_IN_tdata[69] = \<const0> ;
  assign VIDEO_IN_tdata[68] = \<const0> ;
  assign VIDEO_IN_tdata[67] = \<const0> ;
  assign VIDEO_IN_tdata[66] = \<const0> ;
  assign VIDEO_IN_tdata[65] = \<const0> ;
  assign VIDEO_IN_tdata[64] = \<const0> ;
  assign VIDEO_IN_tdata[63] = \<const0> ;
  assign VIDEO_IN_tdata[62] = \<const0> ;
  assign VIDEO_IN_tdata[61] = \<const0> ;
  assign VIDEO_IN_tdata[60] = \<const0> ;
  assign VIDEO_IN_tdata[59] = \<const0> ;
  assign VIDEO_IN_tdata[58] = \<const0> ;
  assign VIDEO_IN_tdata[57] = \<const0> ;
  assign VIDEO_IN_tdata[56] = \<const0> ;
  assign VIDEO_IN_tdata[55] = \<const0> ;
  assign VIDEO_IN_tdata[54] = \<const0> ;
  assign VIDEO_IN_tdata[53] = \<const0> ;
  assign VIDEO_IN_tdata[52] = \<const0> ;
  assign VIDEO_IN_tdata[51] = \<const0> ;
  assign VIDEO_IN_tdata[50] = \<const0> ;
  assign VIDEO_IN_tdata[49] = \<const0> ;
  assign VIDEO_IN_tdata[48] = \<const0> ;
  assign VIDEO_IN_tdata[47] = \<const0> ;
  assign VIDEO_IN_tdata[46] = \<const0> ;
  assign VIDEO_IN_tdata[45] = \<const0> ;
  assign VIDEO_IN_tdata[44] = \<const0> ;
  assign VIDEO_IN_tdata[43] = \<const0> ;
  assign VIDEO_IN_tdata[42] = \<const0> ;
  assign VIDEO_IN_tdata[41] = \<const0> ;
  assign VIDEO_IN_tdata[40] = \<const0> ;
  assign VIDEO_IN_tdata[39] = \<const0> ;
  assign VIDEO_IN_tdata[38] = \<const0> ;
  assign VIDEO_IN_tdata[37] = \<const0> ;
  assign VIDEO_IN_tdata[36] = \<const0> ;
  assign VIDEO_IN_tdata[35] = \<const0> ;
  assign VIDEO_IN_tdata[34] = \<const0> ;
  assign VIDEO_IN_tdata[33] = \<const0> ;
  assign VIDEO_IN_tdata[32] = \<const0> ;
  assign VIDEO_IN_tdata[31] = \<const0> ;
  assign VIDEO_IN_tdata[30] = \<const0> ;
  assign VIDEO_IN_tdata[29] = \<const0> ;
  assign VIDEO_IN_tdata[28] = \<const0> ;
  assign VIDEO_IN_tdata[27] = \<const0> ;
  assign VIDEO_IN_tdata[26] = \<const0> ;
  assign VIDEO_IN_tdata[25] = \<const0> ;
  assign VIDEO_IN_tdata[24] = \<const0> ;
  assign VIDEO_IN_tdata[23] = \<const0> ;
  assign VIDEO_IN_tdata[22] = \<const0> ;
  assign VIDEO_IN_tdata[21] = \<const0> ;
  assign VIDEO_IN_tdata[20] = \<const0> ;
  assign VIDEO_IN_tdata[19] = \<const0> ;
  assign VIDEO_IN_tdata[18] = \<const0> ;
  assign VIDEO_IN_tdata[17] = \<const0> ;
  assign VIDEO_IN_tdata[16] = \<const0> ;
  assign VIDEO_IN_tdata[15] = \<const0> ;
  assign VIDEO_IN_tdata[14] = \<const0> ;
  assign VIDEO_IN_tdata[13] = \<const0> ;
  assign VIDEO_IN_tdata[12] = \<const0> ;
  assign VIDEO_IN_tdata[11] = \<const0> ;
  assign VIDEO_IN_tdata[10] = \<const0> ;
  assign VIDEO_IN_tdata[9] = \<const0> ;
  assign VIDEO_IN_tdata[8] = \<const0> ;
  assign VIDEO_IN_tdata[7] = \<const0> ;
  assign VIDEO_IN_tdata[6] = \<const0> ;
  assign VIDEO_IN_tdata[5] = \<const0> ;
  assign VIDEO_IN_tdata[4] = \<const0> ;
  assign VIDEO_IN_tdata[3] = \<const0> ;
  assign VIDEO_IN_tdata[2] = \<const0> ;
  assign VIDEO_IN_tdata[1] = \<const0> ;
  assign VIDEO_IN_tdata[0] = \<const0> ;
  assign VIDEO_IN_tlast = \<const0> ;
  assign VIDEO_IN_tuser = \<const0> ;
  assign VIDEO_IN_tvalid = \<const0> ;
  assign s_axis_video_aclk = \<const0> ;
  assign s_axis_video_aresetn = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
