//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 05.08.2021 09:08:10
// Module Name: GRAY_to_RGB
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

	module GRAY_to_RGB #
	(
		parameter DATA_WIDTH = 8, 	// pixel's data width
		parameter PPC = 4 			// pixels per clock
	)
	(
        
		input wire  s_axis_gray_tvalid,
		input wire [DATA_WIDTH*PPC-1 : 0] s_axis_gray_tdata,
		input wire  s_axis_gray_tuser,
		input wire  s_axis_gray_tlast,
		output reg  s_axis_gray_tready,

		input wire  m_axis_rgb_tready,
		output reg [DATA_WIDTH*PPC*3-1 : 0] m_axis_rgb_tdata,
		output reg  m_axis_rgb_tuser,
		output reg  m_axis_rgb_tlast,
		output reg  m_axis_rgb_tvalid

	);
    
   
	always @(*) begin
		for(integer i = PPC; i > 0; i = i - 1) begin
		   m_axis_rgb_tdata[i * 3 * DATA_WIDTH - 0 * DATA_WIDTH - 1 -: DATA_WIDTH] <= s_axis_gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
		   m_axis_rgb_tdata[i * 3 * DATA_WIDTH - 2 * DATA_WIDTH - 1 -: DATA_WIDTH] <= s_axis_gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
		   m_axis_rgb_tdata[i * 3 * DATA_WIDTH - 1 * DATA_WIDTH - 1 -: DATA_WIDTH] <= s_axis_gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
		end
		m_axis_rgb_tvalid <= s_axis_gray_tvalid;
		m_axis_rgb_tuser <= s_axis_gray_tuser;
		m_axis_rgb_tlast <= s_axis_gray_tlast;
		s_axis_gray_tready <= m_axis_rgb_tready;
	end
	
	
	endmodule
