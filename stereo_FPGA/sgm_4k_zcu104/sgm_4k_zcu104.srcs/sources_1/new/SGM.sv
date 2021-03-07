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
		input wire  s_axis_tuser
    );
    

    wire [MAX_DISP-1:0][DATA_WIDTH-1:0] prev_path_cost_90 [MAX_SAMPLES_PER_CLOCK-1:0];
    wire [MAX_DISP-1:0][DATA_WIDTH-1:0] path_cost_90 [MAX_SAMPLES_PER_CLOCK-1:0];
    wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] prev_path_cost_90_from_buf;
    wire [MAX_DISP-1:0][AXIS_TDATA_WIDTH-1:0] path_cost_90_to_buf;
    
    
    
    for (genvar disp = 0; disp < MAX_DISP; disp++) begin : BRAM_GEN
        for (genvar i = 0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
            assign prev_path_cost_90[i][disp] = prev_path_cost_90_from_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8];
            assign path_cost_90_to_buf[disp][DATA_WIDTH*i+DATA_WIDTH-1-:8] = path_cost_90[i][disp];
        end
       /*
        delayLineBRAM_Xppc
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
            .dout   (  path_tdata_45[0] )
        );
       */ 
        delayLineBRAM_Xppc
        #(
            .DATA_WIDTH           (AXIS_TDATA_WIDTH),
            .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
            .PIXELS_PER_LINE      (WIDTH)
        ) delay_90
        (
            .clk    ( aclk ),
            .ce     ( s_axis_tvalid ), 
            .rst    ( !aresetn ),
            .tlast  ( s_axis_tvalid ),     
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
    
    
    for (genvar i = 0; i < MAX_SAMPLES_PER_CLOCK - 1; i++) begin : PATH_CALC
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
    reg [MAX_DISP-1:0][(DATA_WIDTH+2)-1:0] sum_path_costs_tdata [MAX_SAMPLES_PER_CLOCK-1:0];
    reg sum_path_costs_tvalid;
    reg sum_path_costs_tlast;
    reg sum_path_costs_tuser;
    always @(aclk) begin
        for (integer disp = 0; disp < MAX_DISP; disp++)
            for (integer i = 0; i < MAX_SAMPLES_PER_CLOCK; i++)
                sum_path_costs_tdata[i][disp] <= path_cost_90[i][disp]; //+...
        sum_path_costs_tvalid <= path_cost_tvalid;
        sum_path_costs_tlast <= path_cost_tlast;
        sum_path_costs_tuser <= path_cost_tuser;
    end
    
    wire        d_tlast;
    wire        d_tready;
    wire        d_tuser;
    wire        d_tvalid;
    wire  [AXIS_TDATA_WIDTH-1:0] d_r_tdata;
    
    Min_disp#(
        .MAX_DISP(MAX_DISP),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)min(
	    .aclk(aclk),
		.s_axis_costs_tdata(sum_path_costs_tdata),
		.s_axis_costs_tlast(sum_path_costs_tlast),
		.s_axis_costs_tuser(sum_path_costs_tuser),
		.s_axis_costs_tvalid(sum_path_costs_tvalid),
		.m_axis_min_tvalid(d_tvalid),
		.m_axis_min_tdata(d_tdata) ,
		.m_axis_min_tlast(d_tlast),
		.m_axis_min_tuser(d_tuser)
    );
    
    hdmi_out_uhd #(
        .name("sgm"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    sgm
       (.s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(d_tdata           ), 
        .VIDEO_OUT_tlast(d_tlast           ),
        .VIDEO_OUT_tready(d_tready         ),
        .VIDEO_OUT_tuser(d_tuser           ),
        .VIDEO_OUT_tvalid(d_tvalid         ));
    
endmodule
