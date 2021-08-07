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
	    input aclk,
	    
	    output s_axis_costs_tready,
		input [MAX_DISP-1:0][DATA_WIDTH-1:0] s_axis_costs_tdata [MAX_SAMPLES_PER_CLOCK-1:0],
		input  s_axis_costs_tlast,
		input  s_axis_costs_tuser,
		input  s_axis_costs_tvalid,

		// Ports of Axi Master Bus Interface M_AXIS_L
		input m_axis_min_tready,
		output reg m_axis_min_tvalid,
		output reg [AXIS_TDATA_WIDTH-1 : 0] m_axis_min_tdata ,
		output reg m_axis_min_tlast,
		output reg m_axis_min_tuser
    );
    localparam LATENCY = $clog2(MAX_DISP)+1;
    
    
    assign s_axis_costs_tready = tready[0];
    
    wire [AXIS_TDATA_WIDTH-1 : 0] min_tdata;
    logic [LATENCY-1:0 ] tvalid, tlast, tuser;
    logic [1:0] tready;
    
    assign tready[0] = tready[1]|(!tvalid[LATENCY-1]);
    always @(posedge aclk) begin 
        if(tready[0])
        begin
            tvalid[0] <= s_axis_costs_tvalid;
            tlast[0] <= s_axis_costs_tlast;
            tuser[0] <= s_axis_costs_tuser;
            tvalid[LATENCY-1 : 1] <= tvalid[LATENCY-2 : 0];
            tlast[LATENCY-1 : 1] <= tlast[LATENCY-2 : 0];
            tuser[LATENCY-1 : 1] <= tuser[LATENCY-2 : 0];
        end
    end
    
    generate 
        for(genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) 
            Min_Arg #(
            .ELEM(MAX_DISP),
            .DATA_WIDTH(DATA_WIDTH)
            )Disp(
            .aclk(aclk),
            .c_en(tready[0]),
            .i_sads_data(s_axis_costs_tdata[i]), 
            .o_disp_data(min_tdata[(DATA_WIDTH*i-1+DATA_WIDTH)-:DATA_WIDTH])
    );
    endgenerate
   
    assign tready[1] = m_axis_min_tready|(!m_axis_min_tvalid);
    always @(posedge aclk) begin 
        if(tready[1])
        begin
            m_axis_min_tvalid <= tvalid[LATENCY-1];
            m_axis_min_tlast <= tlast[LATENCY-1];
            m_axis_min_tuser <= tuser[LATENCY-1];
            m_axis_min_tdata <= min_tdata;
        end
    end
    
endmodule
