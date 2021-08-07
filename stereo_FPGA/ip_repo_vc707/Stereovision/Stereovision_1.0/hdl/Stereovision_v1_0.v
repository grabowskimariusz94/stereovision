
`timescale 1 ns / 1 ps



	module Stereovision_v1_0 #
	(
	    parameter FORMAT = 0, // 0 - RGB, 1 - YUV422 
	
		parameter WIDTH = 3840,
        parameter HEIGHT = 2160,
        parameter MAX_DISP = 256,
        parameter CNTX_SIZE = 3,
        parameter MAX_SAMPLES_PER_CLOCK = 4,
    
        parameter AXIS_TDATA_WIDTH = 96,
        parameter DATA_WIDTH = 8,
        
        
        parameter P1 = 16,
        parameter P2 = 64
//        parameter TLAST_CYCLES = 40,
//        parameter TUSER_CYCLES = 120
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
    

    Stereovision
    #(
        .FORMAT(FORMAT),
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT),
        .MAX_DISP(MAX_DISP),
        .CNTX_SIZE(CNTX_SIZE),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
        .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH/3),
        .DATA_WIDTH(DATA_WIDTH)
//        .TLAST_CYCLES(TLAST_CYCLES),
//        .TUSER_CYCLES(TUSER_CYCLES)
    ) stereo
    (
        .aclk(aclk),
        .aresetn(aresetn),
		// Ports of Axi Slave Bus Interface S00_AXIS
		.s_axis_img_tready(s_axis_tready),
		.s_axis_img_tdata(s_axis_tdata),
		.s_axis_img_tuser(s_axis_tuser),
		.s_axis_img_tlast(s_axis_tlast),
		.s_axis_img_tvalid(s_axis_tvalid),
        
		// Ports of Axi Master Bus Interface M00_AXIS
		.m_axis_disp_tvalid(m_axis_tvalid),
		.m_axis_disp_tdata(m_axis_tdata),
		.m_axis_disp_tuser(m_axis_tuser),
		.m_axis_disp_tlast(m_axis_tlast),
		.m_axis_disp_tready(m_axis_tready),
		.switch_img(switch_img)
    );
    
  
    
    
    endmodule
