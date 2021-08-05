`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2021 12:35:26
// Design Name: 
// Module Name: RGB_to_GRAY_YUV
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


module RGB_to_GRAY_YUV #
    (
		parameter integer C_S_AXIS_rgb_TDATA_WIDTH	= 96,
		parameter integer C_M_AXIS_gray_TDATA_WIDTH	= 32
		
	)
	(
        input wire  aclk,
        input wire  aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s_axis_rgb_tready,
		input wire [C_S_AXIS_rgb_TDATA_WIDTH-1 : 0] s_axis_rgb_tdata,
		input wire  s_axis_rgb_tuser,
		input wire  s_axis_rgb_tlast,
		input wire  s_axis_rgb_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		output reg  m_axis_gray_tvalid,
		output reg [C_M_AXIS_gray_TDATA_WIDTH-1 : 0] m_axis_gray_tdata,
		output reg  m_axis_gray_tuser,
		output reg  m_axis_gray_tlast,
		input wire  m_axis_gray_tready
	);
    

    always@(posedge aclk) 
    begin
        if(m_axis_gray_tready) begin
            m_axis_gray_tvalid <= s_axis_rgb_tvalid;
            m_axis_gray_tlast <= s_axis_rgb_tlast;
            m_axis_gray_tuser <= s_axis_rgb_tuser;
            for(integer i = 3; i >= 0; i = i - 1) begin
                m_axis_gray_tdata[i*8+8-1-:8] = s_axis_rgb_tdata[i*2*8+8-1-:8];
                //m_axis_gray_tdata[i*8+8-1-:8] <= s_axis_rgb_tdata[i*2*12+12-1-:8];
            end
        end
    end
    
	assign s_axis_rgb_tready = m_axis_gray_tready;
	
endmodule
