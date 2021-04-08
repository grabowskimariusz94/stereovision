`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2017 22:44:18
// Design Name: 
// Module Name: delay
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

module delay #(
    parameter N = 0
)
(
    input  wire          clk,
    input  wire  [N-1:0] idata,
    output wire  [N-1:0] odata
);

reg [N-1:0] val = '0;

always @(posedge clk)
begin
    val <= idata;
end

assign odata = val;

endmodule

`default_nettype wire