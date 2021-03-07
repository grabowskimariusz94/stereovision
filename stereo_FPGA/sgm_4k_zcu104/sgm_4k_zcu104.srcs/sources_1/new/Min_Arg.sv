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


module Min_Arg#(
        parameter ELEM = 64, // number of elements
        parameter DATA_WIDTH = 8
    )
    (
        input clk,
        input [ELEM-1:0][DATA_WIDTH-1:0]  i_sads_data, 
        output [DATA_WIDTH-1:0] o_disp_data
    );
    
    generate
        for (genvar i = $clog2(ELEM); i >= 0; i--) begin: regs
            reg [2**i-1:0][DATA_WIDTH-1:0] min;
            reg [2**i-1:0][DATA_WIDTH-1:0] disp;
        end
    endgenerate
    
    assign regs[$clog2(ELEM)].min = i_sads_data;
    generate
        for (genvar i = ELEM; i >= 0; i--) begin
            assign regs[$clog2(ELEM)].disp[i] = i;
        end
    endgenerate
    
    generate
        for (genvar i = $clog2(ELEM)-1; i >= 0; i--) begin 
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
    
    assign o_disp_data = regs[0].disp*(2**DATA_WIDTH/ELEM);
    
endmodule
