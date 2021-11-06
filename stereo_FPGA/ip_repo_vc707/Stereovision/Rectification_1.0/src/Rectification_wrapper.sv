`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 04.11.2021 16:11:34
// Module Name: Rectification_wrapper
// Target Devices: VC707
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////


module Rectification_wrapper #(
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
  input wire  s_axis_l_tvalid,
  input wire  s_axis_l_tlast,
  input wire  s_axis_l_tuser,
  
  output wire  s_axis_r_tready,
  input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_r_tdata,
  input wire  s_axis_r_tvalid,
  input wire  s_axis_r_tlast,
  input wire  s_axis_r_tuser,

  output wire  m_axis_l_tvalid,
  output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_l_tdata,
  input wire  m_axis_l_tready,
  output wire  m_axis_l_tlast,
  output wire  m_axis_l_tuser,
  
  output wire  m_axis_r_tvalid,
  output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_r_tdata,
  input wire  m_axis_r_tready,
  output wire  m_axis_r_tlast,
  output wire  m_axis_r_tuser,
  
  input wire [1:0] sw
);
		
  wire [AXIS_TDATA_WIDTH-1:0] tdata_rect_l;
  wire tready_rect_l;
  wire tuser_rect_l;
  wire tlast_rect_l;
  wire tvalid_rect_l; 
  wire [AXIS_TDATA_WIDTH-1:0] tdata_rect_r;
  wire tready_rect_r;
  wire tuser_rect_r;
  wire tlast_rect_r;
  wire tvalid_rect_r; 
		
 Rectification#(
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
  .distCoeffsL({distCoeffsL_0, distCoeffsL_1, distCoeffsL_2, distCoeffsL_3, distCoeffsL_4}),
  .distCoeffsR({distCoeffsR_0, distCoeffsR_1, distCoeffsR_2, distCoeffsR_3, distCoeffsR_4}),
  .RInvL('{{RInvL_00, RInvL_01, RInvL_02},
           {RInvL_10, RInvL_11, RInvL_12},
           {RInvL_20, RInvL_21, RInvL_22}}),
  .RInvR('{{RInvR_00, RInvR_01, RInvR_02},
           {RInvR_10, RInvR_11, RInvR_12},
           {RInvR_20, RInvR_21, RInvR_22}})
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

  .m_axis_l_tvalid(tvalid_rect_l),
  .m_axis_l_tdata (tdata_rect_l),
  .m_axis_l_tready(tready_rect_l),
  .m_axis_l_tlast (tlast_rect_l),
  .m_axis_l_tuser (tuser_rect_l),
  
  .m_axis_r_tvalid(tvalid_rect_r),
  .m_axis_r_tdata (tdata_rect_r),
  .m_axis_r_tready(tready_rect_r),
  .m_axis_r_tlast (tlast_rect_r),
  .m_axis_r_tuser (tuser_rect_r)
);
    
  wire [AXIS_TDATA_WIDTH-1:0] tdata_mux_l [3:0];
  wire tuser_mux_l [3:0];
  wire tlast_mux_l [3:0];
  wire tvalid_mux_l [3:0]; 
  wire [AXIS_TDATA_WIDTH-1:0] tdata_mux_r [3:0];
  wire tuser_mux_r [3:0];
  wire tlast_mux_r [3:0];
  wire tvalid_mux_r [3:0]; 
  
  // Input
    assign tdata_mux_l[0] = s_axis_l_tdata;
    assign tuser_mux_l[0] = s_axis_l_tuser;
    assign tlast_mux_l[0] = s_axis_l_tlast;
    assign tvalid_mux_l[0] = s_axis_l_tvalid;
    assign tdata_mux_r[0] = s_axis_r_tdata;
    assign tuser_mux_r[0] = s_axis_r_tuser;
    assign tlast_mux_r[0] = s_axis_r_tlast;
    assign tvalid_mux_r[0] = s_axis_r_tvalid;
    
    
  // Rect 
    assign tdata_mux_l[1] = tdata_rect_l;
    assign tuser_mux_l[1] = tuser_rect_l;
    assign tlast_mux_l[1] = tlast_rect_l;
    assign tvalid_mux_l[1] = tvalid_rect_l;
    assign tdata_mux_r[1] = tdata_rect_r;
    assign tuser_mux_r[1] = tuser_rect_r;
    assign tlast_mux_r[1] = tlast_rect_r;
    assign tvalid_mux_r[1] = tvalid_rect_r;
    
    assign m_axis_l_tdata = tdata_mux_l[sw];
    assign m_axis_l_tuser = tuser_mux_l[sw];
    assign m_axis_l_tlast = tlast_mux_l[sw];
    assign m_axis_l_tvalid = tvalid_mux_l[sw];
    assign m_axis_r_tdata = tdata_mux_r[sw];
    assign m_axis_r_tuser = tuser_mux_r[sw];
    assign m_axis_r_tlast = tlast_mux_r[sw];
    assign m_axis_r_tvalid = tvalid_mux_r[sw];
    
    assign tready_rect_l = m_axis_l_tready; 
    assign tready_rect_r = m_axis_r_tready;
endmodule
