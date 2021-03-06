`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2020 17:21:19
// Design Name: 
// Module Name: Min_SAD
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


module Min_disp_pxl#(
        parameter MAX_DISP = 64,
        parameter DATA_WIDTH = 8
    )
    (
        input clk,
        input [MAX_DISP-1:0][DATA_WIDTH-1:0]  i_sads_data, 
        output [DATA_WIDTH-1:0] o_disp_data
    );
    
    generate
        for (genvar i = $clog2(MAX_DISP); i >= 0; i--) begin: regs
            reg [2**i-1:0][DATA_WIDTH-1:0] min;
            reg [2**i-1:0][DATA_WIDTH-1:0] disp;
        end
    endgenerate
    
    assign regs[$clog2(MAX_DISP)].min = i_sads_data;
    generate
        for (genvar i = MAX_DISP; i >= 0; i--) begin
            assign regs[$clog2(MAX_DISP)].disp[i] = i;
        end
    endgenerate
    
    generate
        for (genvar i = $clog2(MAX_DISP)-1; i >= 0; i--) begin 
            always @(*)
            begin
                for (integer j=0;j<2**i;j=j+1) begin
                    if(regs[i+1].min[2*j] <= regs[i+1].min[2*j+1]) begin
                        regs[i].min[j] <= regs[i+1].min[2*j];
                        regs[i].disp[j] <= regs[i+1].disp[2*j];
                    end else begin
                        regs[i].min[j] <= regs[i+1].min[2*j+1];
                        regs[i].disp[j] <= regs[i+1].disp[2*j+1];
                    end
                end
                
            end
        end
    endgenerate
    
    assign o_disp_data = regs[0].disp*(2**DATA_WIDTH/MAX_DISP);
    
endmodule
