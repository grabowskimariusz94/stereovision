`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date:    13:55:03 12/05/2011 
// Description: 
//-----------------------------------------------
module fifo_128_xxx #
(
  parameter buff_len=8
)
(
  input clk,
  input [127:0]din, // tu zmiana szerokoœci danych
  input wr_en,
  input rd_en,
  output [127:0]dout,  // tu zmiana szerokoœci danych
  output full,
  output empty
);
//-----------------------------------------------
// UWAGA to teraz jest 64_2014
fifo_128_1024 fifo_twr
(
  .wr_clk(clk),
  .rd_clk(clk),
  .din(din),
  .wr_en(wr_en),
  .rd_en(rd_en),
  .dout(dout),
  .full(),
  .empty(empty)
);
//-----------------------------------------------
reg [10:0]size=0;
//-----------------------------------------------
always @(posedge clk)
begin
  case({wr_en,rd_en})
    2'b00:size<=size;
	 2'b01:if(size!=11'b00000000000)size<=size-1;
	 2'b10:if(size!=11'b11111111111)size<=size+1;
	 2'b11:size<=size;
  endcase
end
//-----------------------------------------------
assign full=((size>=buff_len)?1'b1:1'b0);
//-----------------------------------------------
endmodule
//-----------------------------------------------
