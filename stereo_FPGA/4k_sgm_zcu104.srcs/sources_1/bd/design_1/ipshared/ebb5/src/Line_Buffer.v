`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 20:28:40
// Design Name: 
// Module Name: lineBuffer
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


module Line_Buffer #
    (
        parameter integer width = 740,
        parameter integer log_width = 10
    )
    (
        input clk,
        input rstn,
        input [31:0] i_data,
        input i_valid,
        output reg [535:0] o_data,  //8*max_disp+3*8 
        //output reg [6:0] o_valid_data, 
        input i_read
    );
    
    reg[7:0] line [width-1:0];  //line buffer
    reg[log_width-1:0]wr_ptr, rd_ptr;
    integer i;
    
    always @(posedge clk)
    begin
        if(i_valid)
            {line[wr_ptr+3],line[wr_ptr+2],line[wr_ptr+1],line[wr_ptr]} <= i_data; 
    end
    
    always @(posedge clk)
    begin
        if(!rstn)
            wr_ptr <= 0;
        else if(i_valid)
            if(wr_ptr >= width-4) 
                wr_ptr <= 0;
            else  
                wr_ptr <= wr_ptr+4;
    end
    
    always @(*)
    begin
        for (i=0; i<67; i=i+1)
            o_data[8*i+7-:8] = line[rd_ptr+i];   
    end
    
    /*
    always @(*)
    begin
        if(rd_ptr+64<width) //-2) //now output image has the same width as input image
            o_valid_data <= 67; 
        else
            o_valid_data <= width-rd_ptr;//-2; 
    end
    */
    
    always @(posedge clk)
    begin
        if(!rstn) begin
            rd_ptr <= 0;
        end
        else if(i_read) begin
            if(rd_ptr >= width-4) //-6)  //if rd_ptr==width-6 => kernel for fourth pixel is {width-3,width-2,width-1}
                rd_ptr <= 0;
            else  
                rd_ptr <= rd_ptr+4;
        end
    end
    
endmodule
