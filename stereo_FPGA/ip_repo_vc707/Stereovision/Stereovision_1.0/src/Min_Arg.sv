`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 05.12.2020 17:21:19
// Module Name: Min_SAD
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////


module Min_Arg#(
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
            for (genvar j=0;j<2**i;j=j+1) begin
                logic compare;
                assign compare = (regs[i+1].min[2*j] <= regs[i+1].min[2*j+1]);
                assign regs[i].min[j] = compare ? regs[i+1].min[2*j] : regs[i+1].min[2*j+1];
                assign regs[i].disp[j] = compare ? regs[i+1].disp[2*j] : regs[i+1].disp[2*j+1];
            end
        end
    endgenerate
    
    assign o_disp_data = regs[0].disp*(2**DATA_WIDTH/ELEM);
    
endmodule
