`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 13.02.2021 21:15:12
// Module Name: Stereovision
// Target Devices: zcu104, zc702
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////



module Stereovision
#(
    parameter WIDTH = 3840,
    parameter HEIGHT = 2160,
    parameter MAX_DISP = 255,
    parameter CNTX_SIZE = 3,
    parameter MAX_SAMPLES_PER_CLOCK = 4,
    
    parameter AXIS_TDATA_WIDTH = 32,
    parameter DATA_WIDTH = 8,
    
    parameter P1 = 16,
    parameter P2 = 64,
    parameter TLAST_CYCLES = 10
)
(
        input wire  aclk,
		input wire  aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s_axis_img_tready,
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
    wire        gray_tlast;
    wire        gray_tready;
    wire        gray_tuser;
    wire        gray_tvalid;
    wire [AXIS_TDATA_WIDTH-1:0] gray_tdata;
    
    
    
    RGB_to_Grayscale_v1_0#(
        .C_S_AXIS_rgb_TDATA_WIDTH(3*AXIS_TDATA_WIDTH),
        .C_M_AXIS_gray_TDATA_WIDTH(AXIS_TDATA_WIDTH)
        )
    rgb2gray
       (.aclk(aclk),
        .s_axis_rgb_tdata(s_axis_img_tdata),
        .s_axis_rgb_tlast(s_axis_img_tlast),
        .s_axis_rgb_tready(s_axis_img_tready),
        .s_axis_rgb_tuser(s_axis_img_tuser),
        .s_axis_rgb_tvalid(s_axis_img_tvalid),
        .m_axis_gray_tdata(gray_tdata),
        .m_axis_gray_tlast(gray_tlast),
        .m_axis_gray_tready(1'b1),
        .m_axis_gray_tuser(gray_tuser),
        .m_axis_gray_tvalid(gray_tvalid));

// --------------------------------------
// Unfolding
// --------------------------------------  
    wire        unfolded_l_tlast;
    wire        unfolded_l_tready;
    wire        unfolded_l_tuser;
    wire        unfolded_l_tvalid;
    wire [AXIS_TDATA_WIDTH-1:0] unfolded_l_tdata; 
    
    wire        unfolded_r_tlast;
    wire        unfolded_r_tready;
    wire        unfolded_r_tuser;
    wire        unfolded_r_tvalid;
    wire [AXIS_TDATA_WIDTH-1:0] unfolded_r_tdata; 
        
     Inter_col_v2_0 #(
        .C_AXIS_LR_TDATA_WIDTH(AXIS_TDATA_WIDTH)
        )
     unfold
       (.aclk(aclk),
        .s_axis_lr_tdata(gray_tdata),
        .s_axis_lr_tlast(gray_tlast),
        .s_axis_lr_tuser(gray_tuser),
        .s_axis_lr_tvalid(gray_tvalid),
        .m_axis_l_tdata(unfolded_l_tdata),
        .m_axis_l_tlast(unfolded_l_tlast),
        .m_axis_l_tready(1'b1),
        .m_axis_l_tuser(unfolded_l_tuser),
        .m_axis_l_tvalid(unfolded_l_tvalid),
        .m_axis_r_tdata(unfolded_r_tdata),
        .m_axis_r_tlast(unfolded_r_tlast),
        .m_axis_r_tready(1'b1),
        .m_axis_r_tuser(unfolded_r_tuser),
        .m_axis_r_tvalid(unfolded_r_tvalid));   
        
// --------------------------------------
// Cost Calculation
// --------------------------------------  
    
    wire        c_l_tlast;
    wire        c_l_tready;
    wire        c_l_tuser;
    wire        c_l_tvalid;
    wire  [MAX_DISP-1:0][DATA_WIDTH-1:0] c_l_tdata [MAX_SAMPLES_PER_CLOCK-1:0]; 
    wire        c_r_tlast;
    wire        c_r_tready;
    wire        c_r_tuser;
    wire        c_r_tvalid;
    wire  [MAX_DISP-1:0][DATA_WIDTH-1:0] c_r_tdata [MAX_SAMPLES_PER_CLOCK-1:0]; 
  
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
    .s_axis_l_tdata({unfolded_l_tdata[7-:8],unfolded_l_tdata[15-:8],unfolded_l_tdata[23-:8],unfolded_l_tdata[31-:8]}),
    .s_axis_l_tlast(unfolded_l_tlast),
    .s_axis_l_tuser(unfolded_l_tuser),
    .s_axis_l_tvalid(unfolded_l_tvalid),
    .s_axis_r_tdata({unfolded_r_tdata[7-:8],unfolded_r_tdata[15-:8],unfolded_r_tdata[23-:8],unfolded_r_tdata[31-:8]}),
    .s_axis_r_tlast(unfolded_r_tlast),
    .s_axis_r_tuser(unfolded_r_tuser),
    .s_axis_r_tvalid(unfolded_r_tvalid),
    .m_axis_l_tvalid(c_l_tvalid),
    .m_axis_l_tdata(c_l_tdata),
    .m_axis_l_tlast(c_l_tlast),
    .m_axis_l_tuser(c_l_tuser),
    .m_axis_r_tvalid(c_r_tvalid),
    .m_axis_r_tdata(c_r_tdata),
    .m_axis_r_tlast(c_r_tlast),
    .m_axis_r_tuser(c_r_tuser)
    
  );
  
  wire        sad_l_tlast;
  wire        sad_l_tready;
  wire        sad_l_tuser;
  wire        sad_l_tvalid;
  wire  [AXIS_TDATA_WIDTH-1:0] sad_l_tdata;
  wire        sad_r_tlast;
  wire        sad_r_tready;
  wire        sad_r_tuser;
  wire        sad_r_tvalid;
  wire  [AXIS_TDATA_WIDTH-1:0] sad_r_tdata;
  
  Min_disp#(
        .MAX_DISP(MAX_DISP),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)minL(
		.s_axis_costs_tdata(c_l_tdata),
		.s_axis_costs_tlast(c_l_tlast),
		.s_axis_costs_tuser(c_l_tuser),
		.s_axis_costs_tvalid(c_l_tvalid),
		.m_axis_min_tvalid(sad_l_tvalid),
		.m_axis_min_tdata({sad_l_tdata[7-:8],sad_l_tdata[15-:8],sad_l_tdata[23-:8],sad_l_tdata[31-:8]}) ,
		.m_axis_min_tlast(sad_l_tlast),
		.m_axis_min_tuser(sad_l_tuser)
    );
    
  Min_disp#(
        .MAX_DISP(MAX_DISP),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)minR(
		.s_axis_costs_tdata(c_r_tdata),
		.s_axis_costs_tlast(c_r_tlast),
		.s_axis_costs_tuser(c_r_tuser),
		.s_axis_costs_tvalid(c_r_tvalid),
		.m_axis_min_tvalid(sad_r_tvalid),
		.m_axis_min_tdata({sad_r_tdata[7-:8],sad_r_tdata[15-:8],sad_r_tdata[23-:8],sad_r_tdata[31-:8]}) ,
		.m_axis_min_tlast(sad_r_tlast),
		.m_axis_min_tuser(sad_r_tuser)
    );
  
    wire        synch_l_tlast;
    wire        synch_l_tready;
    wire        synch_l_tuser;
    wire        synch_l_tvalid;
    wire  [AXIS_TDATA_WIDTH-1:0] synch_l_tdata;
    wire        synch_r_tlast;
    wire        synch_r_tready;
    wire        synch_r_tuser;
    wire        synch_r_tvalid;
    wire  [AXIS_TDATA_WIDTH-1:0] synch_r_tdata;
  
        
    Out_Synch #(
		.AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.TLAST_CYCLES(TLAST_CYCLES)
	) synchL
	(
        .aclk(aclk),

		// Ports of Axi Slave Bus Interface S_AXIS_LR
		.s_axis_tready(sad_l_tready),
		.s_axis_tdata(sad_l_tdata),
		.s_axis_tvalid(sad_l_tvalid),
		.s_axis_tlast(sad_l_tlast),
		.s_axis_tuser(sad_l_tuser),

		// Ports of Axi Master Bus Interface M_AXIS_L
		.m_axis_tvalid(synch_l_tvalid),
		.m_axis_tdata(synch_l_tdata),
		.m_axis_tready(synch_l_tready),
		.m_axis_tlast(synch_l_tlast),
		.m_axis_tuser(synch_l_tuser)
    );
    Out_Synch #(
		.AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.TLAST_CYCLES(TLAST_CYCLES)
	) synchR
	(
        .aclk(aclk),

		// Ports of Axi Slave Bus Interface S_AXIS_LR
		.s_axis_tready(sad_r_tready),
		.s_axis_tdata(sad_r_tdata),
		.s_axis_tvalid(sad_r_tvalid),
		.s_axis_tlast(sad_r_tlast),
		.s_axis_tuser(sad_r_tuser),

		// Ports of Axi Master Bus Interface M_AXIS_L
		.m_axis_tvalid(synch_r_tvalid),
		.m_axis_tdata(synch_r_tdata),
		.m_axis_tready(synch_r_tready),
		.m_axis_tlast(synch_r_tlast),
		.m_axis_tuser(synch_r_tuser)
    );
        
    always @(posedge aclk) begin
        case(switch_img)
            4'b0000: begin
                m_axis_disp_tdata <= s_axis_img_tdata;
                m_axis_disp_tvalid <= s_axis_img_tvalid;
                m_axis_disp_tuser <= s_axis_img_tuser;
                m_axis_disp_tlast <= s_axis_img_tlast;
            end
            4'b0001: begin
                for(integer i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 0 * DATA_WIDTH - 1 -: DATA_WIDTH] <= gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 2 * DATA_WIDTH - 1 -: DATA_WIDTH] <= gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 1 * DATA_WIDTH - 1 -: DATA_WIDTH] <= gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                end
                m_axis_disp_tvalid <= gray_tvalid;
                m_axis_disp_tuser <= gray_tuser;
                m_axis_disp_tlast <= gray_tlast;
            end
            4'b0010: begin
                for(integer i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 0 * DATA_WIDTH - 1 -: DATA_WIDTH] <= unfolded_l_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 2 * DATA_WIDTH - 1 -: DATA_WIDTH] <= unfolded_l_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 1 * DATA_WIDTH - 1 -: DATA_WIDTH] <= unfolded_l_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                end
                m_axis_disp_tvalid <= unfolded_l_tvalid;
                m_axis_disp_tuser <= unfolded_l_tuser;
                m_axis_disp_tlast <= unfolded_l_tlast;
            end
            4'b0011: begin
                for(integer i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 0 * DATA_WIDTH - 1 -: DATA_WIDTH] <= unfolded_r_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 2 * DATA_WIDTH - 1 -: DATA_WIDTH] <= unfolded_r_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 1 * DATA_WIDTH - 1 -: DATA_WIDTH] <= unfolded_r_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                end
                m_axis_disp_tvalid <= unfolded_r_tvalid;
                m_axis_disp_tuser <= unfolded_r_tuser;
                m_axis_disp_tlast <= unfolded_r_tlast;
            end
            4'b0100: begin
                for(integer i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 0 * DATA_WIDTH - 1 -: DATA_WIDTH] <= synch_l_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 2 * DATA_WIDTH - 1 -: DATA_WIDTH] <= synch_l_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 1 * DATA_WIDTH - 1 -: DATA_WIDTH] <= synch_l_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                end
                m_axis_disp_tvalid <= synch_l_tvalid;
                m_axis_disp_tuser <= synch_l_tuser;
                m_axis_disp_tlast <= synch_l_tlast;
            end
            4'b0101: begin
                for(integer i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 0 * DATA_WIDTH - 1 -: DATA_WIDTH] <= synch_r_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 2 * DATA_WIDTH - 1 -: DATA_WIDTH] <= synch_r_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                   m_axis_disp_tdata[i * 3 * DATA_WIDTH - 1 * DATA_WIDTH - 1 -: DATA_WIDTH] <= synch_r_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
                end
                m_axis_disp_tvalid <= synch_r_tvalid;
                m_axis_disp_tuser <= synch_r_tuser;
                m_axis_disp_tlast <= synch_r_tlast;
            end
            default: begin
                m_axis_disp_tdata <= s_axis_img_tdata;
                m_axis_disp_tvalid <= s_axis_img_tvalid;
                m_axis_disp_tuser <= s_axis_img_tuser;
                m_axis_disp_tlast <= s_axis_img_tlast;
            end
        endcase
    end 
    
    
endmodule
