`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2021 21:15:12
// Design Name: 
// Module Name: stereo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Stereovision
#(
    parameter WIDTH = 3840,
    parameter HEIGHT = 2160
)
(
        input wire  aclk,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s_axis_img_tready,
		input wire [96-1 : 0] s_axis_img_tdata,
		input wire  s_axis_img_tuser,
		input wire  s_axis_img_tlast,
		input wire  s_axis_img_tvalid
        /*
		// Ports of Axi Master Bus Interface M00_AXIS
		output wire  m_axis_disp_tvalid,
		output wire [32-1 : 0] m_axis_disp_tdata,
		output wire  m_axis_disp_tuser,
		output wire  m_axis_disp_tlast,
		input wire  m_axis_disp_tready
		*/
    );
    
    wire        gray_tlast;
    wire        gray_tready;
    wire        gray_tuser;
    wire        gray_tvalid;
    wire [32-1:0] gray_tdata;
    
    RGB_to_Grayscale_v1_0 rgb2gray
       (.aclk(aclk),
        .aresetn(1'b0),
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
    
    hdmi_out_uhd #(
    .name("gray"),
    .NEW_WIDTH(WIDTH),
    .NEW_HEIGHT(HEIGHT),
    .CHANNELS(1),
    .MAX_SAMPLES_PER_CLOCK(4)
    )
    gray
    (
        .s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(gray_tdata           ), 
        .VIDEO_OUT_tlast(gray_tlast           ),
        .VIDEO_OUT_tready(gray_tready         ),
        .VIDEO_OUT_tuser(gray_tuser           ),
        .VIDEO_OUT_tvalid(gray_tvalid         )
    );
    
    
    wire        unfolded_l_tlast;
    wire        unfolded_l_tready;
    wire        unfolded_l_tuser;
    wire        unfolded_l_tvalid;
    wire [32-1:0] unfolded_l_tdata; 
    
    wire        unfolded_r_tlast;
    wire        unfolded_r_tready;
    wire        unfolded_r_tuser;
    wire        unfolded_r_tvalid;
    wire [32-1:0] unfolded_r_tdata; 
    
    Inter_col_v1_0 unfold
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
        
    hdmi_out_uhd #(
    .name("unfoldedL"),
    .NEW_WIDTH(WIDTH),
    .NEW_HEIGHT(HEIGHT),
    .CHANNELS(1),
    .MAX_SAMPLES_PER_CLOCK(4)
    )
    unfoldedL
    (
        .s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(unfolded_l_tdata           ), 
        .VIDEO_OUT_tlast(unfolded_l_tlast           ),
        .VIDEO_OUT_tready(unfolded_l_tready         ),
        .VIDEO_OUT_tuser(unfolded_l_tuser           ),
        .VIDEO_OUT_tvalid(unfolded_l_tvalid         )
    );
    
    hdmi_out_uhd #(
    .name("unfoldedR"),
    .NEW_WIDTH(WIDTH),
    .NEW_HEIGHT(HEIGHT),
    .CHANNELS(1),
    .MAX_SAMPLES_PER_CLOCK(4)
    )
    unfoldedR
    (
        .s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(unfolded_r_tdata           ), 
        .VIDEO_OUT_tlast(unfolded_r_tlast           ),
        .VIDEO_OUT_tready(unfolded_r_tready         ),
        .VIDEO_OUT_tuser(unfolded_r_tuser           ),
        .VIDEO_OUT_tvalid(unfolded_r_tvalid         )
    );
    
endmodule
