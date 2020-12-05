`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 17:34:02
// Design Name: 
// Module Name: SAD
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


module SAD(
        input clk,
        input [71:0] i_kernel1_data,
        input [71:0] i_kernel2_data,
        input i_kernels_valid,
        output [7:0] o_sad_data,
        output o_sad_valid
    );
    
    integer i;
    reg signed [8:0] sub_data [8:0];
    reg [7:0] abs_data [8:0];
    reg [1:0] valid=2'b00;
    reg [11:0] sum_data;
    reg [7:0] output_data;
    
    always @(*)
    begin
        for (i=0;i<9;i=i+1)
            sub_data[i] = i_kernel1_data[8*i-:8]-i_kernel2_data[8*i-:8];
    end
    
    always @(posedge clk)
    begin
        for (i=0;i<9;i=i+1) begin
            if(sub_data[8])
                abs_data[i] <= -sub_data[i];
            else
                abs_data[i] <= sub_data[i];
        end
        valid[0] <= i_kernels_valid;
    end
    
    always @(*)
    begin
        sum_data = 0;
        for (i=0;i<9;i=i+1)
        begin
            sum_data = sum_data + abs_data[i];
        end
    end
    
    always @(posedge clk)
    begin
        output_data <= (sum_data[11:8]==4'b0000) ? sum_data[7-:0] : 8'hFF; ;
        valid[1] <= valid[0];
    end
    
    assign o_sad_data = output_data;
    assign o_sad_valid = valid[1];
    
endmodule
