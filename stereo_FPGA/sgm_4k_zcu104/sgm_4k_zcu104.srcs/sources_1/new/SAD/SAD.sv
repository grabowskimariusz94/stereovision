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
        input [2:0][2:0][7:0] i_kernel1_data,
        input [2:0][2:0][7:0] i_kernel2_data,
        input i_kernels_valid,
        output [7:0] o_sad_data
    );
    
    reg signed [2:0][2:0][8:0] sub_data;
    reg [2:0][2:0][7:0] abs_data;
    reg valid = 1'b0;
    reg [11:0] sum_data;
    reg [7:0] output_data;
    
    always @(*)
    begin
        for (int i=0;i<3;i=i+1) begin
            for (int j=0;j<3;j=j+1)
                sub_data[i][j] = {1'b0,i_kernel1_data[i][j][7:0]}-{1'b0, i_kernel2_data[i][j][7:0]};
        end
    end
    
    always @(posedge clk)
    begin
        for (int i=0;i<3;i=i+1) begin
            for (int j=0;j<3;j=j+1) begin
                if(sub_data[i][j][8])
                    abs_data[i][j] <= -sub_data[i][j];
                else
                    abs_data[i][j] <= sub_data[i][j];
             end
        end
        valid <= i_kernels_valid;
    end
    
    always @(*)
    begin
        sum_data = 0;
        for (int i=0;i<3;i=i+1) begin
            for (int j=0;j<3;j=j+1)
                sum_data = sum_data + abs_data[i][j];
        end
    end
    
    always @(posedge clk)
    begin
       output_data <= (sum_data[11:8]==4'b0000 || valid) ? sum_data[7-:8] : 8'hFF; //if not valid => FF
    end
    
    assign o_sad_data = output_data;
    //assign o_sad_valid = valid[1];
    
endmodule
