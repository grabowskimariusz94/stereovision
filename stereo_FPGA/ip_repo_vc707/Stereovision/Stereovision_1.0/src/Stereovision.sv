`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 13.02.2021 21:15:12
// Module Name: Stereovision
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////



module Stereovision
#(
    parameter FORMAT = 0, // 0 - RGB, 1 - YUV422 

    parameter WIDTH = 3840,
    parameter HEIGHT = 2160,
    parameter MAX_DISP = 256,
    parameter CNTX_SIZE = 3,
    parameter MAX_SAMPLES_PER_CLOCK = 4,
    
    parameter AXIS_TDATA_WIDTH = 32,
    parameter DATA_WIDTH = 8,
    
    parameter P1 = 16,
    parameter P2 = 64
//    parameter TLAST_CYCLES = 10,
//    parameter TUSER_CYCLES = 10
)
(
        input wire  aclk,
		input wire  aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output reg  s_axis_img_tready,
		input wire [3*AXIS_TDATA_WIDTH-1 : 0] s_axis_img_tdata,
		input wire  s_axis_img_tuser,
		input wire  s_axis_img_tlast,
		input wire  s_axis_img_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		output reg  m_axis_disp_tvalid,
		output reg [3*AXIS_TDATA_WIDTH-1 : 0] m_axis_disp_tdata,
		output reg  m_axis_disp_tuser,
		output reg  m_axis_disp_tlast,
		input wire  m_axis_disp_tready,
		
		input wire [4-1:0] switch_img
    );
    
    
// --------------------------------------
// RGB to Gray
// --------------------------------------   
    
    logic        gray_tlast;
    logic        gray_tready;
    logic        gray_tuser;
    logic        gray_tvalid;
    logic [AXIS_TDATA_WIDTH-1:0] gray_tdata;
    
    
    generate 
        if( FORMAT == 0 ) 
            RGB_to_GRAY#(
                .DATA_WIDTH(DATA_WIDTH),
                .PPC(MAX_SAMPLES_PER_CLOCK)
                )
            rgb2gray
               (.aclk(aclk),
                .aresetn(aresetn),
                .s_axis_rgb_tdata(s_axis_img_tdata),
                .s_axis_rgb_tlast(s_axis_img_tlast),
                .s_axis_rgb_tready(s_axis_img_tready),
                .s_axis_rgb_tuser(s_axis_img_tuser),
                .s_axis_rgb_tvalid(s_axis_img_tvalid),
                .m_axis_gray_tdata(gray_tdata),
                .m_axis_gray_tlast(gray_tlast),
                .m_axis_gray_tready(gray_tready),
                .m_axis_gray_tuser(gray_tuser),
                .m_axis_gray_tvalid(gray_tvalid));
         
         else if( FORMAT == 1 )
            YUV422_to_GRAY#(
                .DATA_WIDTH(DATA_WIDTH),
                .PPC(MAX_SAMPLES_PER_CLOCK)
                )
            yuv2gray
               (.aclk(aclk),
                .aresetn(aresetn),
                .s_axis_yuv_tdata(s_axis_img_tdata),
                .s_axis_yuv_tlast(s_axis_img_tlast),
                .s_axis_yuv_tready(s_axis_img_tready),
                .s_axis_yuv_tuser(s_axis_img_tuser),
                .s_axis_yuv_tvalid(s_axis_img_tvalid),
                .m_axis_gray_tdata(gray_tdata),
                .m_axis_gray_tlast(gray_tlast),
                .m_axis_gray_tready(gray_tready),
                .m_axis_gray_tuser(gray_tuser),
                .m_axis_gray_tvalid(gray_tvalid));
    endgenerate

// --------------------------------------
// Unfolding
// --------------------------------------  
    logic        unfolded_l_tlast;
    logic        unfolded_l_tready;
    logic        unfolded_l_tuser;
    logic        unfolded_l_tvalid;
    logic [AXIS_TDATA_WIDTH-1:0] unfolded_l_tdata; 
    
    logic        unfolded_r_tlast;
    logic        unfolded_r_tready;
    logic        unfolded_r_tuser;
    logic        unfolded_r_tvalid;
    logic [AXIS_TDATA_WIDTH-1:0] unfolded_r_tdata; 
        
     Inter_col_v2_0 #(
        .C_AXIS_LR_TDATA_WIDTH(AXIS_TDATA_WIDTH)
        )
     unfold
       (.aclk(aclk),
        .s_axis_lr_tready(gray_tready),
        .s_axis_lr_tdata(gray_tdata),
        .s_axis_lr_tlast(gray_tlast),
        .s_axis_lr_tuser(gray_tuser),
        .s_axis_lr_tvalid(gray_tvalid),
        .m_axis_l_tdata(unfolded_l_tdata),
        .m_axis_l_tlast(unfolded_l_tlast),
        .m_axis_l_tready(unfolded_l_tready),
        .m_axis_l_tuser(unfolded_l_tuser),
        .m_axis_l_tvalid(unfolded_l_tvalid),
        .m_axis_r_tdata(unfolded_r_tdata),
        .m_axis_r_tlast(unfolded_r_tlast),
        .m_axis_r_tready(unfolded_r_tready),
        .m_axis_r_tuser(unfolded_r_tuser),
        .m_axis_r_tvalid(unfolded_r_tvalid));   
        
// --------------------------------------
// Cost Calculation
// --------------------------------------  
    
    logic        c_l_tlast;
    logic        c_l_tready;
    logic        c_l_tuser;
    logic        c_l_tvalid;
    logic  [MAX_DISP-1:0][DATA_WIDTH-1:0] c_l_tdata [MAX_SAMPLES_PER_CLOCK-1:0]; 
    logic        c_r_tlast;
    logic        c_r_tready;
    logic        c_r_tuser;
    logic        c_r_tvalid;
    logic  [MAX_DISP-1:0][DATA_WIDTH-1:0] c_r_tdata [MAX_SAMPLES_PER_CLOCK-1:0]; 
  
    SAD_v1_0 #(
    .MAX_DISP(MAX_DISP),
    .CNTX_SIZE(CNTX_SIZE),
    .HEIGHT(HEIGHT),
    .WIDTH(WIDTH),
    .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
    .DATA_WIDTH(DATA_WIDTH)
  ) sad (
    .aclk(aclk),
    .s_axis_l_tready(unfolded_l_tready),
    //.s_axis_l_tdata({unfolded_l_tdata[7-:8],unfolded_l_tdata[15-:8],unfolded_l_tdata[23-:8],unfolded_l_tdata[31-:8]}),
    .s_axis_l_tdata(unfolded_l_tdata),
    .s_axis_l_tlast(unfolded_l_tlast),
    .s_axis_l_tuser(unfolded_l_tuser),
    .s_axis_l_tvalid(unfolded_l_tvalid),
    .s_axis_r_tready(unfolded_r_tready),
    //.s_axis_r_tdata({unfolded_r_tdata[7-:8],unfolded_r_tdata[15-:8],unfolded_r_tdata[23-:8],unfolded_r_tdata[31-:8]}),
    .s_axis_r_tdata(unfolded_r_tdata),
    .s_axis_r_tlast(unfolded_r_tlast),
    .s_axis_r_tuser(unfolded_r_tuser),
    .s_axis_r_tvalid(unfolded_r_tvalid),
    .m_axis_l_tready(c_l_tready),
    .m_axis_l_tvalid(c_l_tvalid),
    .m_axis_l_tdata(c_l_tdata),
    .m_axis_l_tlast(c_l_tlast),
    .m_axis_l_tuser(c_l_tuser)
//    .m_axis_r_tready(c_r_tready),
//    .m_axis_r_tvalid(c_r_tvalid),
//    .m_axis_r_tdata(c_r_tdata),
//    .m_axis_r_tlast(c_r_tlast),
//    .m_axis_r_tuser(c_r_tuser)
    
  );
  
  logic        sad_l_tlast;
  logic        sad_l_tuser;
  logic        sad_l_tvalid;
  logic  [AXIS_TDATA_WIDTH-1:0] sad_l_tdata;
  logic        sad_tready;
  
  Min_disp#(
        .MAX_DISP(MAX_DISP),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)minL(
	    .aclk(aclk),
	    .s_axis_costs_tready(c_l_tready),
		.s_axis_costs_tdata(c_l_tdata),
		.s_axis_costs_tlast(c_l_tlast),
		.s_axis_costs_tuser(c_l_tuser),
		.s_axis_costs_tvalid(c_l_tvalid),
		.m_axis_min_tready(sad_tready),
		.m_axis_min_tvalid(sad_l_tvalid),
		.m_axis_min_tdata({sad_l_tdata[7-:8],sad_l_tdata[15-:8],sad_l_tdata[23-:8],sad_l_tdata[31-:8]}) ,
		.m_axis_min_tlast(sad_l_tlast),
		.m_axis_min_tuser(sad_l_tuser)
    );
    
//  Min_disp#(
//        .MAX_DISP(MAX_DISP),
//        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
//	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
//		.DATA_WIDTH(DATA_WIDTH)
//	)minR(
//	   .aclk(aclk),
//	    .s_axis_costs_tready(c_r_tready),
//		.s_axis_costs_tdata(c_r_tdata),
//		.s_axis_costs_tlast(c_r_tlast),
//		.s_axis_costs_tuser(c_r_tuser),
//		.s_axis_costs_tvalid(c_r_tvalid),
//		.m_axis_min_tready(sad_tready),
//		.m_axis_min_tvalid(sad_r_tvalid),
//		.m_axis_min_tdata({sad_r_tdata[7-:8],sad_r_tdata[15-:8],sad_r_tdata[23-:8],sad_r_tdata[31-:8]}) ,
//		.m_axis_min_tlast(sad_r_tlast),
//		.m_axis_min_tuser(sad_r_tuser)
//    );
 
        
    logic        mux_tuser [$bits(switch_img)**2-1:0];
    logic        mux_tlast [$bits(switch_img)**2-1:0];
    logic        mux_tvalid [$bits(switch_img)**2-1:0];
    logic  [AXIS_TDATA_WIDTH-1:0] mux_tdata [$bits(switch_img)**2-1:0];
    //logic        mux_l_tready [$bits(switch_img)**2-1:0];
      
    assign mux_tuser[0]  = gray_tuser;
    assign mux_tlast[0]  = gray_tlast;
    assign mux_tvalid[0] = gray_tvalid;
    assign mux_tdata[0]  = gray_tdata;
    
    assign mux_tuser[1]  = sad_l_tuser;
    assign mux_tlast[1]  = sad_l_tlast;
    assign mux_tvalid[1] = sad_l_tvalid;
    assign mux_tdata[1]  = sad_l_tdata;
    
    assign mux_tuser[2]  = unfolded_l_tuser;
    assign mux_tlast[2]  = unfolded_l_tlast;
    assign mux_tvalid[2] = unfolded_l_tvalid;
    assign mux_tdata[2]  = unfolded_l_tdata;
    
    assign mux_tuser[3]  = unfolded_r_tuser;
    assign mux_tlast[3]  = unfolded_r_tlast;
    assign mux_tvalid[3] = unfolded_r_tvalid;
    assign mux_tdata[3]  = unfolded_r_tdata;
    
    assign mux_tuser[4]  = sad_l_tuser;
    assign mux_tlast[4]  = sad_l_tlast;
    assign mux_tvalid[4] = sad_l_tvalid;
    assign mux_tdata[4]  = sad_l_tdata;
    
//    assign mux_tuser[5]  = sad_r_tuser;
//    assign mux_tlast[5]  = sad_r_tlast;
//    assign mux_tvalid[5] = sad_r_tvalid;
//    assign mux_tdata[5]  = sad_r_tdata;
     
           
    generate 
        if( FORMAT == 0 ) 
            GRAY_to_RGB#(
                .DATA_WIDTH(DATA_WIDTH),
                .PPC(MAX_SAMPLES_PER_CLOCK)
                )
            gray2rgb
               (.s_axis_gray_tdata(mux_tdata[switch_img]),
                .s_axis_gray_tlast(mux_tlast[switch_img]),
                .s_axis_gray_tready(sad_tready),
                .s_axis_gray_tuser(mux_tuser[switch_img]),
                .s_axis_gray_tvalid(mux_tvalid[switch_img]),
                .m_axis_rgb_tdata(m_axis_disp_tdata),
                .m_axis_rgb_tlast(m_axis_disp_tlast),
                .m_axis_rgb_tready(m_axis_disp_tready),
                .m_axis_rgb_tuser(m_axis_disp_tuser),
                .m_axis_rgb_tvalid(m_axis_disp_tvalid));
         
         else if( FORMAT == 1 )
            GRAY_to_YUV422#(
                .DATA_WIDTH(DATA_WIDTH),
                .PPC(MAX_SAMPLES_PER_CLOCK)
                )
            gray2yuv
               (.s_axis_gray_tdata(mux_tdata[switch_img]),
                .s_axis_gray_tlast(mux_tlast[switch_img]),
                .s_axis_gray_tready(sad_tready),
                .s_axis_gray_tuser(mux_tuser[switch_img]),
                .s_axis_gray_tvalid(mux_tvalid[switch_img]),
                .m_axis_yuv_tdata(m_axis_disp_tdata),
                .m_axis_yuv_tlast(m_axis_disp_tlast),
                .m_axis_yuv_tready(m_axis_disp_tready),
                .m_axis_yuv_tuser(m_axis_disp_tuser),
                .m_axis_yuv_tvalid(m_axis_disp_tvalid));
    endgenerate
    
    
    
endmodule
