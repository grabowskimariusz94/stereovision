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
		input wire  aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s_axis_img_tready,
		input wire [96-1 : 0] s_axis_img_tdata,
		input wire  s_axis_img_tuser,
		input wire  s_axis_img_tlast,
		input wire  s_axis_img_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		output wire  m_axis_disp_tvalid,
		output wire [32-1 : 0] m_axis_disp_tdata,
		output wire  m_axis_disp_tuser,
		output wire  m_axis_disp_tlast,
		input wire  m_axis_disp_tready
    );
    
    RGB_to_Grayscale_v1_0 rgb2gray
       (.aclk(aclk),
        .aresetn(1'b0),
        .s_axis_rgb_tdata(s_axis_img_tdata),
        .s_axis_rgb_tlast(s_axis_img_tlast),
        .s_axis_rgb_tready(s_axis_img_tready),
        .s_axis_rgb_tuser(s_axis_img_tuser),
        .s_axis_rgb_tvalid(s_axis_img_tvalid),
        .m_axis_gray_tdata(m_axis_disp_tdata),
        .m_axis_gray_tlast(m_axis_disp_tlast),
        .m_axis_gray_tready(1'b1),
        .m_axis_gray_tuser(m_axis_disp_tuser),
        .m_axis_gray_tvalid(m_axis_disp_tvalid));
    
endmodule
