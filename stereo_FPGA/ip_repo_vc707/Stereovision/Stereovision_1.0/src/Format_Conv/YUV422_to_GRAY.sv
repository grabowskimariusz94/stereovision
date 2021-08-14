`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 04.06.2021 12:35:26
// Module Name: YUV422_to_GRAY
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
// 
//////////////////////////////////////////////////////////////////////////////////


module YUV422_to_GRAY #
    (
		parameter DATA_WIDTH = 8, 	// pixel's data width
		parameter PPC = 4 			// pixels per clock
		
	)
	(
        input wire  aclk,
        input wire  aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s_axis_yuv_tready,
		input wire [DATA_WIDTH*PPC*3-1 : 0] s_axis_yuv_tdata,
		input wire  s_axis_yuv_tuser,
		input wire  s_axis_yuv_tlast,
		input wire  s_axis_yuv_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		output reg  m_axis_gray_tvalid,
		output reg [DATA_WIDTH*PPC-1 : 0] m_axis_gray_tdata,
		output reg  m_axis_gray_tuser,
		output reg  m_axis_gray_tlast,
		input wire  m_axis_gray_tready
	);
    

    always@(posedge aclk) 
    begin
        if(m_axis_gray_tready) begin
            m_axis_gray_tvalid <= s_axis_yuv_tvalid;
            m_axis_gray_tlast <= s_axis_yuv_tlast;
            m_axis_gray_tuser <= s_axis_yuv_tuser;
            for(integer i = PPC; i > 0; i = i - 1) begin
                m_axis_gray_tdata[i*DATA_WIDTH-1-:DATA_WIDTH] <= s_axis_yuv_tdata[i*2*DATA_WIDTH-DATA_WIDTH-1-:DATA_WIDTH];
            end
        end
    end
    
	assign s_axis_yuv_tready = m_axis_gray_tready;
	
endmodule
