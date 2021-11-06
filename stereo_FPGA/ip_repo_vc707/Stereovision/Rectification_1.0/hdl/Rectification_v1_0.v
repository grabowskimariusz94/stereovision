
`timescale 1 ns / 1 ps

module Rectification_v1_0 #
(
  parameter WIDTH = 640,
  parameter HEIGHT = 480,
  parameter BPP = 8,
  parameter NPPC = 4,
  parameter AXIS_TDATA_WIDTH	= BPP*NPPC,
	
  parameter MAX_SHIFT_UP = 50,
  parameter MAX_SHIFT_DOWN = 50,
  parameter PREC = 8,
  parameter PREC_INTER = 3,
  parameter NUM_OF_DIST_COEFFS = 5,
  parameter [(8+PREC)-1:0] fxL = 8589, fyL = 8594, fxR = 8641, fyR = 8634,
  parameter [(12+PREC)-1:0] cxL = 86666, cyL = 59274, cxR = 83761, cyR = 63587,
  parameter [(8+PREC)-1:0] fxNewInv = 31161, fyNewInv = 31161, // new camera matrices for L and R are the same
  parameter [(12+PREC)-1:0] cxNew = 87473, cyNew = 62371,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsL_0 = -616,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsL_1 =  322,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsL_2 =    2,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsL_3 =    0,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsL_4 = -115,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsR_0 = -625,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsR_1 =  400,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsR_2 =   -1,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsR_3 =    2,
  parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsR_4 = -307,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_00 = 2047,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_01 =   14,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_02 =   -9,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_10 =  -14,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_11 = 2047,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_12 =   10,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_20 =    9,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_21 =  -10,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL_22 = 2047,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_00 = 2047,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_01 =   22,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_02 =  -14,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_10 =  -22,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_11 = 2047,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_12 =  -10,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_20 =   14,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_21 =   10,
  parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR_22 = 2047
		
)
(
  input wire  aclk,
  input wire  aresetn,
  
  output wire  s_axis_l_tready,
  input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_l_tdata,
  input wire  s_axis_l_tuser,
  input wire  s_axis_l_tlast,
  input wire  s_axis_l_tvalid,
  
  output wire  s_axis_r_tready,
  input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_r_tdata,
  input wire  s_axis_r_tuser,
  input wire  s_axis_r_tlast,
  input wire  s_axis_r_tvalid,
  
  output wire  m_axis_l_tvalid,
  output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_l_tdata,
  output wire  m_axis_l_tuser,
  output wire  m_axis_l_tlast,
  input wire  m_axis_l_tready,

  output wire  m_axis_r_tvalid,
  output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_r_tdata,
  output wire  m_axis_r_tuser,
  output wire  m_axis_r_tlast,
  input wire  m_axis_r_tready,
  
  input wire [1:0] sw
);

Rectification_wrapper#(
  .WIDTH(WIDTH),
  .HEIGHT(HEIGHT),
  .BPP(BPP),
  .NPPC(NPPC),
        
  .MAX_SHIFT_UP(MAX_SHIFT_UP),
  .MAX_SHIFT_DOWN(MAX_SHIFT_DOWN),
  .PREC(PREC),
  .PREC_INTER(PREC_INTER),
  .NUM_OF_DIST_COEFFS(NUM_OF_DIST_COEFFS),
  .fxL(fxL), .fyL(fyL), .fxR(fxR), .fyR(fyR),
  .cxL(cxL), .cyL(cyL),.cxR(cxR), .cyR(cyR),
  .fxNewInv(fxNewInv), .fyNewInv(fyNewInv), 
  .cxNew(cxNew), .cyNew(cyNew),
  .distCoeffsL_0(distCoeffsL_0),
  .distCoeffsL_1(distCoeffsL_1),
  .distCoeffsL_2(distCoeffsL_2),
  .distCoeffsL_3(distCoeffsL_3),
  .distCoeffsL_4(distCoeffsL_4),
  .distCoeffsR_0(distCoeffsR_0),
  .distCoeffsR_1(distCoeffsR_1),
  .distCoeffsR_2(distCoeffsR_2),
  .distCoeffsR_3(distCoeffsR_3),
  .distCoeffsR_4(distCoeffsR_4),
  .RInvL_00(RInvL_00),
  .RInvL_01(RInvL_01),
  .RInvL_02(RInvL_02),
  .RInvL_10(RInvL_10),
  .RInvL_11(RInvL_11),
  .RInvL_12(RInvL_12),
  .RInvL_20(RInvL_20),
  .RInvL_21(RInvL_21),
  .RInvL_22(RInvL_22),
  .RInvR_00(RInvR_00),
  .RInvR_01(RInvR_01),
  .RInvR_02(RInvR_02),
  .RInvR_10(RInvR_10),
  .RInvR_11(RInvR_11),
  .RInvR_12(RInvR_12),
  .RInvR_20(RInvR_20),
  .RInvR_21(RInvR_21),
  .RInvR_22(RInvR_22)
) rect(
  .aclk(aclk),
  .aresetn(aresetn),
  
  .s_axis_l_tready(s_axis_l_tready),
  .s_axis_l_tdata (s_axis_l_tdata),
  .s_axis_l_tvalid(s_axis_l_tvalid),
  .s_axis_l_tlast (s_axis_l_tlast),
  .s_axis_l_tuser (s_axis_l_tuser),
  
  .s_axis_r_tready(s_axis_r_tready),
  .s_axis_r_tdata (s_axis_r_tdata),
  .s_axis_r_tvalid(s_axis_r_tvalid),
  .s_axis_r_tlast (s_axis_r_tlast),
  .s_axis_r_tuser (s_axis_r_tuser),

  .m_axis_l_tvalid(m_axis_l_tvalid),
  .m_axis_l_tdata (m_axis_l_tdata),
  .m_axis_l_tready(m_axis_l_tready),
  .m_axis_l_tlast (m_axis_l_tlast),
  .m_axis_l_tuser (m_axis_l_tuser),
  
  .m_axis_r_tvalid(m_axis_r_tvalid),
  .m_axis_r_tdata (m_axis_r_tdata),
  .m_axis_r_tready(m_axis_r_tready),
  .m_axis_r_tlast (m_axis_r_tlast),
  .m_axis_r_tuser (m_axis_r_tuser),
  
  .sw(sw)
);

endmodule
