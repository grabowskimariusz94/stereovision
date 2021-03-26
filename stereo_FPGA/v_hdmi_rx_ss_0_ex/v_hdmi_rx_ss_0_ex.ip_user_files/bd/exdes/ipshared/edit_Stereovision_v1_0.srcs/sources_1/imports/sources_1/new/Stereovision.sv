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
    parameter P2 = 64
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
        
     Inter_col_v1_0 #(
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
            default: begin
                m_axis_disp_tdata <= s_axis_img_tdata;
                m_axis_disp_tvalid <= s_axis_img_tvalid;
                m_axis_disp_tuser <= s_axis_img_tuser;
                m_axis_disp_tlast <= s_axis_img_tlast;
            end
        endcase
    end 
    
endmodule
