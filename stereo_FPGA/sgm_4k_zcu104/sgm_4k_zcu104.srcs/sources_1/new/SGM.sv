`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2021 13:44:16
// Design Name: 
// Module Name: SGM
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


module SGM#(
	    parameter HEIGHT = 495,
	    parameter WIDTH = 740,
        parameter MAX_DISP = 64,
        parameter CNTX_SIZE = 3,
        parameter MAX_SAMPLES_PER_CLOCK = 4,
	   
		parameter AXIS_TDATA_WIDTH	= 32,
		parameter DATA_WIDTH = 8,
		
		parameter P1 = 4,
        parameter P2 = 16

	)
	(
	    input aclk,
	    input aresetn,
	
		input wire  s_axis_tvalid,
		input [MAX_DISP-1:0][DATA_WIDTH-1:0]  s_axis_tdata [MAX_SAMPLES_PER_CLOCK-1:0],
		input wire  s_axis_tlast,
		input wire  s_axis_tuser, 
		
		input wire  m_axis_tvalid,
		input [AXIS_TDATA_WIDTH-1:0]  m_axis_tdata,
		input wire  m_axis_tlast,
		input wire  m_axis_tuser
    );
    

    //wire [MAX_DISP-1:0][DATA_WIDTH-1:0] prev_path_cost_45 [MAX_SAMPLES_PER_CLOCK-1:0];
    //wire [MAX_DISP-1:0][DATA_WIDTH-1:0] path_cost_45 [MAX_SAMPLES_PER_CLOCK-1:0];
    //wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] prev_path_cost_45_from_buf;
    //wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] path_cost_45_to_buf;
    wire [MAX_DISP-1:0][DATA_WIDTH-1:0] prev_path_cost_90 [MAX_SAMPLES_PER_CLOCK-1:0];
    wire [MAX_DISP-1:0][DATA_WIDTH-1:0] path_cost_90 [MAX_SAMPLES_PER_CLOCK-1:0];
    wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] prev_path_cost_90_from_buf;
    wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] path_cost_90_to_buf;
    //wire [MAX_DISP-1:0][DATA_WIDTH-1:0] prev_path_cost_135 [MAX_SAMPLES_PER_CLOCK-1:0];
    //wire [MAX_DISP-1:0][DATA_WIDTH-1:0] path_cost_135 [MAX_SAMPLES_PER_CLOCK-1:0];
    //wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] prev_path_cost_135_from_buf;
    //wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] path_cost_135_to_buf;
    
    for (genvar disp = 0; disp < MAX_DISP; disp++) begin : BRAM_GEN
        for (genvar i = 0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
            //assign prev_path_cost_45[i][disp] = prev_path_cost_45_from_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8];
            //assign path_cost_45_to_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8] = path_cost_45[i][disp];
            assign prev_path_cost_90[i][disp] = prev_path_cost_90_from_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8];
            assign path_cost_90_to_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8] = path_cost_90[i][disp];
            //assign prev_path_cost_135[i][disp] = prev_path_cost_135_from_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8];
            //assign path_cost_135_to_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8] = path_cost_135[i][disp];
        end
       /*
        delayLineDualBRAM_Xppc
        #(
            .DATA_WIDTH           (AXIS_TDATA_WIDTH),
            .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
            .PIXELS_PER_LINE      (WIDTH)
        ) delay_45
        (
            .clk    (aclk                                       ),
            .ce     (s_axis_tvalid                              ), 
            .rst    (!aresetn                                   ),
            .tlast  (axi_sync_signals_delayed[cntx_line].tlast  ),     
            .din    (  ), 
            .dout   ()
        );
       */
        delayLineDualBRAM_Xppc
        #(
            .DATA_WIDTH           (AXIS_TDATA_WIDTH),
            .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
            .PIXELS_PER_LINE      (WIDTH),
            .READ_POS_SHIFT       (1)
        ) delay_90
        (
            .clk    ( aclk ),
            .ce     ( s_axis_tvalid ), 
            .rst    ( !aresetn ),
            .tlast  ( s_axis_tlast ),     
            .din    ( path_cost_90_to_buf[disp] ), 
            .dout   ( prev_path_cost_90_from_buf[disp] )
        );
        /*
        delayLineBRAM_Xppc
        #(
            .DATA_WIDTH           (AXIS_TDATA_WIDTH),
            .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
            .PIXELS_PER_LINE      (WIDTH)
        ) delay_135
        (
            .clk    (aclk                                       ),
            .ce     (s_axis_tvalid                              ),  
            .rst    (!aresetn                                   ),
            .tlast  (axi_sync_signals_delayed[cntx_line].tlast  ),     
            .din    (               ), 
            .dout   (             )
        );
        */
    end
    
    
    for (genvar i = 0; i < MAX_SAMPLES_PER_CLOCK; i++) begin : PATH_CALC
        Path_Cost_Calc#(
            .MAX_DISP(MAX_DISP),
            .DATA_WIDTH(DATA_WIDTH),
            .P1(P1),
            .P2(P2)
    
        ) L_90 (
            .prev_path_cost(prev_path_cost_90[i]),
            .cost(s_axis_tdata[i]),
            .path_cost(path_cost_90[i])
        );
    end
    
    
    
    reg [MAX_DISP-1:0][DATA_WIDTH-1:0] path_cost_90_tdata [MAX_SAMPLES_PER_CLOCK-1:0];
    reg path_cost_tvalid;
    reg path_cost_tlast;
    reg path_cost_tuser;
    
    always @(posedge aclk) begin
        path_cost_90_tdata <= path_cost_90;
        path_cost_tvalid <= s_axis_tvalid;
        path_cost_tlast <= s_axis_tlast;
        path_cost_tuser <= s_axis_tuser;
    end
    
    // Sum Path Costs
    reg [MAX_DISP-1:0][DATA_WIDTH-1:0] sum_path_costs_tdata [MAX_SAMPLES_PER_CLOCK-1:0];
    reg sum_path_costs_tvalid;
    reg sum_path_costs_tlast;
    reg sum_path_costs_tuser;
    always @(posedge aclk) begin
        for (integer disp = 0; disp < MAX_DISP; disp++)
            for (integer i = 0; i < MAX_SAMPLES_PER_CLOCK; i++)
                sum_path_costs_tdata[i][disp] <= path_cost_90_tdata[i][disp]; //(+... )/4
        sum_path_costs_tvalid <= path_cost_tvalid;
        sum_path_costs_tlast <= path_cost_tlast;
        sum_path_costs_tuser <= path_cost_tuser;
    end
    
    Min_disp#(
        .MAX_DISP(MAX_DISP),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)min(
		.s_axis_costs_tdata(sum_path_costs_tdata),
		.s_axis_costs_tlast(sum_path_costs_tlast),
		.s_axis_costs_tuser(sum_path_costs_tuser),
		.s_axis_costs_tvalid(sum_path_costs_tvalid),
		.m_axis_min_tvalid(m_axis_tvalid),
		.m_axis_min_tdata(m_axis_tdata) ,
		.m_axis_min_tlast(m_axis_tlast),
		.m_axis_min_tuser(m_axis_tuser)
    );
    
    
    
endmodule
