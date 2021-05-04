`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 06.03.2021 19:33:36
// Module Name: Min_Val
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////


module Min_Val#(
        parameter ELEM = 64, // number of elements
        parameter DATA_WIDTH = 8
    )
    (
        input [ELEM-1:0][DATA_WIDTH-1:0]  i_sads_data, 
        output [DATA_WIDTH-1:0] o_disp_data
    );
    
    generate
        for (genvar i = $clog2(ELEM); i >= 0; i--) begin: regs
            reg [2**i-1:0][DATA_WIDTH-1:0] min;
        end
    endgenerate
    assign regs[$clog2(ELEM)].min = i_sads_data;
    
    generate
        for (genvar i = $clog2(ELEM)-1; i >= 0; i--) begin 
            always @(*)
            begin
                for (integer j=0;j<2**i;j=j+1) begin
                    if(regs[i+1].min[2*j] <= regs[i+1].min[2*j+1]) begin
                        regs[i].min[j] <= regs[i+1].min[2*j];
                    end else begin
                        regs[i].min[j] <= regs[i+1].min[2*j+1];
                    end
                end
                
            end
        end
    endgenerate
    
    assign o_disp_data = regs[0].min;
    
endmodule
