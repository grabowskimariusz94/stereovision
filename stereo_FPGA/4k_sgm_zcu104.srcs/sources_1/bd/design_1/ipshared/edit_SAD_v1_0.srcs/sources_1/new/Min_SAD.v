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


module Min_SAD(
        input clk,
        input [511:0]  i_sads_data, //8*64
        input i_sads_valid,
        output [7:0] o_disp_data,
        output o_disp_valid
    );
    
    reg [7:0] min0[31:0];
    reg [7:0] min1[15:0];
    reg [7:0] min2[7:0];
    reg [7:0] min3[3:0];
    reg [7:0] min4[1:0];
    reg [7:0] min5;
    reg [5:0] valid;
    reg [7:0] disp0[31:0];
    reg [7:0] disp1[15:0];
    reg [7:0] disp2[7:0];
    reg [7:0] disp3[3:0];
    reg [7:0] disp4[1:0];
    reg [7:0] disp5;
    integer i;
    
    always @(posedge clk)
    begin
        for (i=0;i<32;i=i+1) begin
            if(i_sads_data[i*16+7-:8] >= i_sads_data[i*16+15-:8]) begin
                min0[i] <= i_sads_data[i*16+7-:8];
                disp0[i] <= 2*i;
            end else begin
                min0[i] <= i_sads_data[i*16+15-:8];
                disp0[i] <= 2*i+1;
            end
        end
        valid[0] <= i_sads_valid; 
    end
    
    always @(posedge clk)
    begin
        for (i=0;i<16;i=i+1) begin
            if(min0[2*i] >= min0[2*i+1]) begin
                min1[i] <= min0[2*i];
                disp1[i] <= disp0[2*i];
            end else begin
                min1[i] <= min0[2*i+1];
                disp1[i] <= disp0[2*i+1];
            end
        end
        valid[1] <= valid[0]; 
    end
    
    always @(posedge clk)
    begin
        for (i=0;i<8;i=i+1) begin
            if(min1[2*i] >= min1[2*i+1]) begin
                min2[i] <= min1[2*i];
                disp2[i] <= disp1[2*i];
            end else begin
                min2[i] <= min1[2*i+1];
                disp2[i] <= disp1[2*i+1];
            end
        end
        valid[2] <= valid[1]; 
    end
    
    always @(posedge clk)
    begin
        for (i=0;i<4;i=i+1) begin
            if(min2[2*i] >= min2[2*i+1]) begin
                min3[i] <= min2[2*i];
                disp3[i] <= disp2[2*i];
            end else begin
                min3[i] <= min2[2*i+1];
                disp3[i] <= disp2[2*i+1];
            end
        end
        valid[3] <= valid[2]; 
    end
    
    always @(posedge clk)
    begin
        for (i=0;i<2;i=i+1) begin
            if(min3[2*i] >= min3[2*i+1]) begin
                min4[i] <= min3[2*i];
                disp4[i] <= disp3[2*i];
            end else begin
                min4[i] <= min3[2*i+1];
                disp4[i] <= disp3[2*i+1];
            end
        end
        valid[4] <= valid[3]; 
    end
    
    always @(posedge clk)
    begin
        
        if(min4[0] >= min4[1]) begin
            min5 <= min4[0];
            disp5 <= disp4[0];
        end else begin
            min5 <= min4[1];
            disp5 <= disp4[1];
        end
        valid[5] <= valid[4]; 
    end
    
    assign o_disp_data = disp5;
    assign o_disp_valid = valid[5];
    
    
endmodule
