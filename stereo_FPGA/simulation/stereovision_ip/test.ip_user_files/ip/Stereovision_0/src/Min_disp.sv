`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 16.02.2021 21:49:56
// Module Name: Min_disp
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////


module Min_disp#(
        parameter MAX_DISP = 64,
        parameter MAX_SAMPLES_PER_CLOCK = 4,
	   
		parameter AXIS_TDATA_WIDTH	= 32,
		parameter DATA_WIDTH = 8

	)(
		input [MAX_DISP-1:0][DATA_WIDTH-1:0] s_axis_costs_tdata [MAX_SAMPLES_PER_CLOCK-1:0],
		input  s_axis_costs_tlast,
		input  s_axis_costs_tuser,
		input  s_axis_costs_tvalid,

		// Ports of Axi Master Bus Interface M_AXIS_L
		output reg  m_axis_min_tvalid,
		output reg  [AXIS_TDATA_WIDTH-1 : 0] m_axis_min_tdata ,
		output reg  m_axis_min_tlast,
		output reg  m_axis_min_tuser
    );
    
    generate 
        for(genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) 
            Min_Arg #(
            .ELEM(MAX_DISP),
            .DATA_WIDTH(DATA_WIDTH)
            )Disp(
            .i_sads_data(s_axis_costs_tdata[i]), 
            .o_disp_data(m_axis_min_tdata[(DATA_WIDTH*i-1+DATA_WIDTH)-:DATA_WIDTH])
    );
    endgenerate
   
    assign m_axis_min_tvalid = s_axis_costs_tvalid;
    assign m_axis_min_tlast = s_axis_costs_tlast;
    assign m_axis_min_tuser = s_axis_costs_tuser;
    
endmodule
