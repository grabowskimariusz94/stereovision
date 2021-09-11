`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2017 22:44:18
// Design Name: 
// Module Name: delay_line
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


module delay_line #(
    
    parameter N = 1,
    parameter DELAY = 1
)
(
    input wire          clk,
    input wire [N-1:0] idata,
    output wire [N-1:0] odata
    );

genvar i;
wire [N-1:0] tdata [DELAY:0];
assign tdata[0] = idata;

generate
    if(DELAY > 0)
    begin
        for(i=0; i < DELAY; i=i+1)
        begin
            delay #(
                .N(N)
            )
            linia
            (
                .clk(clk),
                .idata(tdata[i]),
                .odata(tdata[i+1])
            );
        end
     end 
endgenerate

assign odata = tdata[DELAY];
endmodule

`default_nettype wire

//`timescale 1ns / 1ps
//`default_nettype none
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 06.12.2017 22:44:18
//// Design Name: 
//// Module Name: delay_line
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module delay_line #(
    
//    parameter N = 1,
//    parameter DELAY = 1
//)
//(
//    input wire          clk,
//    input wire          ce,
//    input wire [N-1:0] idata,
//    output wire [N-1:0] odata
//    );

//genvar i;
//wire [N-1:0] tdata [DELAY:0];
//assign tdata[0] = idata;

//generate
//    if(DELAY > 0)
//    begin
//        for(i=0; i < DELAY; i=i+1)
//        begin
//            delay #(
//                .N(N)
//            )
//            linia
//            (
//                .clk(clk),
//                .ce(ce),
//                .idata(tdata[i]),
//                .odata(tdata[i+1])
//            );
//        end
//     end 
//endgenerate

//assign odata = tdata[DELAY];
//endmodule