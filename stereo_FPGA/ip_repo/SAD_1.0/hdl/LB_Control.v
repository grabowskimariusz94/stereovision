`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 15:42:19
// Design Name: 
// Module Name: LB_Control
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


module LB_Control #
    (
        parameter integer width = 740,
        parameter integer log_width = 10
    )
    (
        input clk,
        input rstn,
        input [31:0] i_pixel_data,
        input i_pixel_valid,
        output reg [535:0] o_line0_data,
        output reg [535:0] o_line1_data,
        output reg [535:0] o_line2_data,
        output reg [6:0] o_valid_line0,
        output reg [6:0] o_valid_line1,
        output reg [6:0] o_valid_line2,
        output o_lines_valid
    );
    reg [log_width-1:0] pixel_count;
    reg [1:0] current_wr_lineBuf;
    reg [3:0] lineBuf_valid;
     
    reg [1:0] current_rd_lineBuf;
    reg [3:0] lineBuf_read;
    wire [535:0] lineBuf_out [3:0];
    wire [6:0] lineBuf_valid_data [3:0];
    reg [log_width-1:0] read_count;
    reg read_buf;
    
    reg [log_width+1:0] total_pixel_count;
    reg rd_state;
    localparam IDLE = 'b0,
               RD_BUF = 'b1;
    
    always @(posedge clk)
     begin
        if (rst)
            total_pixel_count <= 0;
        else
        begin
            if(i_pixel_valid & !read_buf)
                total_pixel_count <= total_pixel_count + 1; 
            else if(!i_pixel_valid & read_buf)
                total_pixel_count <= total_pixel_count - 1;
        end
     end
    
    always @(posedge clk)
     begin
        if (rst) 
        begin 
            rd_state <= IDLE;
            read_buf <= 1'b0;
        end
        else
        begin
            case(rd_state)
                IDLE: begin
                    if(total_pixel_count >= 3*width) //3*512 => 3 buffers are full and ready
                    begin 
                        rd_state <= RD_BUF;
                        read_buf <= 1'b1;
                    end
                end
                RD_BUF: begin
                    if(read_count == width-1)
                    begin
                        rd_state <= IDLE;
                        read_buf <= 1'b0;
                    end       
                end
            endcase;
        end
     end
     
     always @(posedge clk)
     begin
        if (rst)
            pixel_count <= 0;
        else
        begin
            if(i_pixel_valid)
                if(pixel_count>=width-4)
                    pixel_count <= 0;
                else
                    pixel_count <= pixel_count + 4; 
        end
     end
    
    always @(posedge clk)
     begin
        if (rst)
            current_wr_lineBuf <= 0;
        else
        begin
            if (pixel_count>=width-4 & i_pixel_valid)  // last value to old buffer
                current_wr_lineBuf = current_wr_lineBuf + 1;
        end
     end
     
     always @(*)
     begin
        lineBuf_valid = 4'h0;
        lineBuf_valid[current_wr_lineBuf] = i_pixel_valid;
     end
     
     always @(posedge clk)
     begin
        if (rst)
            read_count <= 0;
        else
        begin
            if(read_buf)
                if(read_count>=width-4)
                    read_count <= 0;
                else
                    read_count <= read_count + 1; 
        end
     end
     
     always @(posedge clk)
     begin
        if (rst)
            current_rd_lineBuf <= 0;
        else
        begin
            if (read_count >=width-4 & read_buf)  // last value to old buffer
                current_rd_lineBuf = current_rd_lineBuf + 1;
        end
     end
     
     always @(*)
     begin
        case(current_rd_lineBuf)
            0:begin  
                {o_line2_data,o_line1_data,o_line0_data} = {lineBuf_out[2],lineBuf_out[1],lineBuf_out[0]};
                {o_valid_line2,o_valid_line1,o_valid_line0} = {lineBuf_valid_data[2],lineBuf_valid_data[1],lineBuf_valid_data[0]};
                lineBuf_read[0] = read_buf;
                lineBuf_read[1] = read_buf;
                lineBuf_read[2] = read_buf;
                lineBuf_read[3] = 1'b0;
            end
            1:begin  
                {o_line2_data,o_line1_data,o_line0_data} = {lineBuf_out[3],lineBuf_out[2],lineBuf_out[1]};
                {o_valid_line2,o_valid_line1,o_valid_line0} = {lineBuf_valid_data[3],lineBuf_valid_data[2],lineBuf_valid_data[1]};
                lineBuf_read[0] = 1'b0;
                lineBuf_read[1] = read_buf;
                lineBuf_read[2] = read_buf;
                lineBuf_read[3] = read_buf;
            end
            2:begin  
                {o_line2_data,o_line1_data,o_line0_data} = {lineBuf_out[0],lineBuf_out[3],lineBuf_out[2]};
                {o_valid_line2,o_valid_line1,o_valid_line0} = {lineBuf_valid_data[0],lineBuf_valid_data[3],lineBuf_valid_data[2]};
                lineBuf_read[0] = read_buf;
                lineBuf_read[1] = 1'b0;
                lineBuf_read[2] = read_buf;
                lineBuf_read[3] = read_buf;
            end
            3:begin  
                {o_line2_data,o_line1_data,o_line0_data} = {lineBuf_out[1],lineBuf_out[0],lineBuf_out[3]};
                {o_valid_line2,o_valid_line1,o_valid_line0} = {lineBuf_valid_data[0],lineBuf_valid_data[3],lineBuf_valid_data[2]};
                lineBuf_read[0] = read_buf;
                lineBuf_read[1] = read_buf;
                lineBuf_read[2] = 1'b0;
                lineBuf_read[3] = read_buf;
            end
        endcase
     end
    
    assign o_lines_valid = read_buf;
    
    Line_Buffer lB0
    (
        .clk(clk),
        .rst(rst),
        .i_data(i_pixel_data),
        .i_valid(lineBuf_valid[0]),
        .o_data(lineBuf_out[0]),
        .o_valid_data(lineBuf_valid_data[0]),
        .i_read(lineBuf_read[0])
    );
    
    Line_Buffer lB1
    (
        .clk(clk),
        .rst(rst),
        .i_data(i_pixel_data),
        .i_valid(lineBuf_valid[1]),
        .o_data(lineBuf_out[1]),
        .o_valid_data(lineBuf_valid_data[1]),
        .i_read(lineBuf_read[1])
    );
    
    Line_Buffer lB2
    (
        .clk(clk),
        .rst(rst),
        .i_data(i_pixel_data),
        .i_valid(lineBuf_valid[2]),
        .o_data(lineBuf_out[2]),
        .o_valid_data(lineBuf_valid_data[2]),
        .i_read(lineBuf_read[2])
    );
    
    Line_Buffer lB3
    (
        .clk(clk),
        .rst(rst),
        .i_data(i_pixel_data),
        .i_valid(lineBuf_valid[3]),
        .o_data(lineBuf_out[3]),
        .o_valid_data(lineBuf_valid_data[3]),
        .i_read(lineBuf_read[3])
    );
    
endmodule
