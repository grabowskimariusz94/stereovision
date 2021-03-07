`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2021 20:00:50
// Design Name: 
// Module Name: Path_Cost_Calc
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


module Path_Cost_Calc#(
        parameter MAX_DISP = 64,
		parameter DATA_WIDTH = 8,
		
		parameter P1 = 4,
		parameter P2 = 16

	)(
    input [MAX_DISP-1:0][DATA_WIDTH-1:0]  prev_path_cost,
    
    input [MAX_DISP-1:0][DATA_WIDTH-1:0]  cost,
    
    output [MAX_DISP-1:0][DATA_WIDTH-1:0]  path_cost
    );
    
    
    /* Min Path Cost */
    
    wire [DATA_WIDTH-1:0]  min_path;
    
    Min_Val#(
        .ELEM(MAX_DISP), // number of elements
        .DATA_WIDTH(DATA_WIDTH)
    ) min1
    (
        .clk(aclk),
        .i_sads_data(prev_path_cost), 
        .o_disp_data(min_path)
    );
    
    /* Add penalty */
    wire [MAX_DISP-1:0][4-1:0][(DATA_WIDTH+1)-1:0]  data_with_penalty ;
    // 0 - disp
    // 1 - disp - 1
    // 2 - disp + 1
    // 3 - disp min
    
    for (genvar disp = 0 ; disp < MAX_DISP; disp++) begin
        assign data_with_penalty[disp][0] = {1'b0,prev_path_cost};
        if (disp != 0)
            assign data_with_penalty[disp][1] = prev_path_cost[disp-1]+P1;
        else
            assign data_with_penalty[disp][1] = '1;
        if (disp != MAX_DISP-1)
            assign data_with_penalty[disp][2] = prev_path_cost[disp-1]+P1;
        else
            assign data_with_penalty[disp][2] = '1;  
        assign data_with_penalty[disp][3] = min_path+P2;
    end
    
    /* Min with penalties */
    wire [(MAX_DISP+1)-1:0][DATA_WIDTH-1:0]  min_with_penalty;
    for (genvar disp = 0 ; disp < MAX_DISP; disp++) begin : mins2
        Min_Val#(
            .ELEM(4), // number of elements
            .DATA_WIDTH(DATA_WIDTH+1)
        ) min
        (
            .clk(aclk),
            .i_sads_data(data_with_penalty[disp]), 
            .o_disp_data(min_with_penalty[disp])
        );
    end
    
    /* Sum with Cost and Subtract Min Path Cost*/
    wire [(MAX_DISP+2)-1:0][DATA_WIDTH-1:0]  sum_with_cost;
    for (genvar disp = 0 ; disp < MAX_DISP; disp++) begin
        assign sum_with_cost[disp] = min_with_penalty[disp] + cost[disp];
        assign path_cost[disp] =  sum_with_cost[disp] - min_path[disp];
    end
    
endmodule
