`timescale 1ns / 1ps

module top#
	(
		parameter WIDTH = 3840,
        parameter HEIGHT = 2160,
        parameter MAX_DISP = 256,
        parameter CNTX_SIZE = 3,
        parameter MAX_SAMPLES_PER_CLOCK = 4,
    
        parameter AXIS_TDATA_WIDTH = 96,
        parameter DATA_WIDTH = 8,
        
        
        parameter P1 = 16,
        parameter P2 = 64
	)
	(
		input wire  aclk,
		input wire  aresetn,
		
		output wire  s_axis_tready,
		input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
		input wire s_axis_tuser,
		input wire  s_axis_tlast,
		input wire  s_axis_tvalid,

		output wire  m_axis_tvalid,
		output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		output wire  m_axis_tuser,
		output wire  m_axis_tlast,
		input wire  m_axis_tready,
		
		input wire [4-1:0] switch_img
	);
    
   

    Stereovision_0 stereo
    (
        .aclk(aclk),
        .aresetn(aresetn),
		// Ports of Axi Slave Bus Interface S00_AXIS
		.s_axis_tready(s_axis_tready),
		.s_axis_tdata(s_axis_tdata),
		.s_axis_tuser(s_axis_tuser),
		.s_axis_tlast(s_axis_tlast),
		.s_axis_tvalid(s_axis_tvalid),
        
		// Ports of Axi Master Bus Interface M00_AXIS
		.m_axis_tvalid(m_axis_tvalid),
		.m_axis_tdata(m_axis_tdata),
		.m_axis_tuser(m_axis_tuser),
		.m_axis_tlast(m_axis_tlast),
		.m_axis_tready(m_axis_tready),
		.switch_img(switch_img)
    );
    

endmodule
