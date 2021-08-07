`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 04.12.2020 17:34:02
// Design Name: 
// Module Name: SAD
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////


module SAD #
    (
        parameter CNTX_SIZE = 3,
        parameter DATA_WIDTH = 8
    )
    (
        input clk,
        input ready,
        input [CNTX_SIZE-1:0][CNTX_SIZE-1:0][DATA_WIDTH-1:0] i_kernel1_data,
        input [CNTX_SIZE-1:0][CNTX_SIZE-1:0][DATA_WIDTH-1:0] i_kernel2_data,
        input i_kernels_valid,
        output reg [DATA_WIDTH-1:0] o_sad_data
    );
    
    reg [CNTX_SIZE-1:0][CNTX_SIZE-1:0][DATA_WIDTH-1:0] abs_data;
    reg kernels_valid;
    always @(posedge clk)
    begin
        if (ready) begin
            for (int i=0;i<CNTX_SIZE;i=i+1) begin
                for (int j=0;j<CNTX_SIZE;j=j+1) begin
                    abs_data[i][j] <= (i_kernel1_data[i][j][DATA_WIDTH-1:0]>=i_kernel2_data[i][j][DATA_WIDTH-1:0]) ? 
                        i_kernel1_data[i][j][DATA_WIDTH-1:0]-i_kernel2_data[i][j][DATA_WIDTH-1:0] : 
                        i_kernel2_data[i][j][DATA_WIDTH-1:0]-i_kernel1_data[i][j][DATA_WIDTH-1:0];
                 end
            end
            kernels_valid <= i_kernels_valid;
        end
    end
    
    reg [(DATA_WIDTH+4)-1:0] sum_data;
    always @(*)
    begin
        sum_data = 0;
        for (int i=0;i<CNTX_SIZE;i=i+1) begin
            for (int j=0;j<CNTX_SIZE;j=j+1)
                sum_data = sum_data + abs_data[i][j];
        end
    end
    
    always @(posedge clk)
    begin
        if (ready)
            o_sad_data <= (sum_data[(DATA_WIDTH+4)-1-:4]==4'b0000 & kernels_valid) ? sum_data[DATA_WIDTH-1:0] : '1; //if not valid => all ones
    end
    
endmodule
