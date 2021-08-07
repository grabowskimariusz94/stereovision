//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 05.08.2021 21:31:54
// Module Name: GRAY_to_YUV422
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

	module GRAY_to_YUV422 #
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

		input wire  m_axis_yuv_tready,
		output reg [DATA_WIDTH*PPC*3-1 : 0] m_axis_yuv_tdata,
		output reg  m_axis_yuv_tuser,
		output reg  m_axis_yuv_tlast,
		output reg  m_axis_yuv_tvalid

	);
    
   
	always @(*) begin
		m_axis_yuv_tdata <= 0;
		for(integer i = PPC; i > 0; i = i - 1) begin
			m_axis_yuv_tdata[2*i-1 * DATA_WIDTH - 1 -: DATA_WIDTH] <= s_axis_gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH];
			m_axis_yuv_tdata[2*i * DATA_WIDTH - 1 -: DATA_WIDTH] <= 8'hFF/2;
		end
		m_axis_yuv_tvalid <= s_axis_gray_tvalid;
		m_axis_yuv_tuser <= s_axis_gray_tuser;
		m_axis_yuv_tlast <= s_axis_gray_tlast;
		s_axis_gray_tready <= m_axis_yuv_tready;
	end
	
	
	endmodule
