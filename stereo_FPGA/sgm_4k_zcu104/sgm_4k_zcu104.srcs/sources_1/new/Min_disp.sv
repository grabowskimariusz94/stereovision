`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 21:49:56
// Design Name: 
// Module Name: Min_disp
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


module Min_disp#(
        parameter MAX_DISP = 64,
        parameter MAX_SAMPLES_PER_CLOCK = 4,
	   
		parameter AXIS_TDATA_WIDTH	= 32,
		parameter DATA_WIDTH = 8

	)(
	    input  aclk,
		
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
    
    
    Min_SAD Disp0(
        .clk(aclk),
        .i_sads_data(s_axis_costs_tdata[0]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_min_tdata[7-:8])
        //.o_disp_valid(disp_valid[0])
    );
    
    Min_SAD Disp1(
        .clk(aclk),
        .i_sads_data(s_axis_costs_tdata[1]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_min_tdata[15-:8])
        //.o_disp_valid(disp_valid[1])
    );
    
    Min_SAD Disp2(
        .clk(aclk),
        .i_sads_data(s_axis_costs_tdata[2]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_min_tdata[23-:8])
        //.o_disp_valid(disp_valid[2])
    );
    
    Min_SAD Disp3(
        .clk(aclk),
        .i_sads_data(s_axis_costs_tdata[3]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_min_tdata[31-:8])
        //.o_disp_valid(disp_valid[3])
    );
    
    
    logic [5:0] Min_SAD_valid=6'b000000;
	logic [5:0] Min_SAD_last=6'b000000;
	logic [5:0] Min_SAD_user=6'b000000;
	
    always @(posedge aclk) 
    begin
        Min_SAD_valid[0] <= s_axis_costs_tvalid;
        Min_SAD_valid[5:1] <= Min_SAD_valid[4:0];
        m_axis_min_tvalid <= Min_SAD_valid[5];
        Min_SAD_last[0] <= s_axis_costs_tlast;
        Min_SAD_last[5:1] <= Min_SAD_last[4:0];
        m_axis_min_tlast <= Min_SAD_last[5];
        Min_SAD_user[0] <= s_axis_costs_tuser;
        Min_SAD_user[5:1] <= Min_SAD_user[4:0];
        m_axis_min_tuser <= Min_SAD_user[5];
    end
    /*
    assign m_axis_r_tdata[31-:8] = (255-not_m_axis_r[31-:8]);
    assign m_axis_r_tdata[23-:8] = (255-not_m_axis_r[23-:8]);
    assign m_axis_r_tdata[15-:8] = (255-not_m_axis_r[15-:8]);
    assign m_axis_r_tdata[7-:8] = (255-not_m_axis_r[7-:8]);
    */
    /*
    
     
    assign m_axis_l_tvalid = Min_SAD_valid[5];
    assign m_axis_l_tlast = Min_SAD_last[5];
    assign m_axis_l_tuser = Min_SAD_user[5];
    
    assign m_axis_r_tvalid = Min_SAD_valid[5];
    assign m_axis_r_tlast = Min_SAD_last[5];
    assign m_axis_r_tuser = Min_SAD_user[5];
    */
endmodule
