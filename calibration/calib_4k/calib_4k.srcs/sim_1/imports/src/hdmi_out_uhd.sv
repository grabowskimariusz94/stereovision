`timescale 1ns / 1ps
//-----------------------------------------------
// Company: AGH
// Engineer: Mateusz Komorkiewicz / Tomasz Kryjak / Marcin Kowalczyk / Mateusz Wasala / Mariusz Grabowski
// Create Date:    11:41:13 05/10/2011 
// Description: log image to ppm file
//-----------------------------------------------
module hdmi_out_uhd
#(
    parameter name                  = "out",
    
    parameter NEW_WIDTH             = 64,
    parameter NEW_HEIGHT            = 128,
    parameter MAX_SAMPLES_PER_CLOCK = 4,
    parameter CHANNELS              = 3,
    parameter DATA_WIDTH            = 8
)
(
    input                                          s_axis_video_aclk,
    input [DATA_WIDTH*MAX_SAMPLES_PER_CLOCK-1:0]   VIDEO_OUT_tdata,
    input                                          VIDEO_OUT_tlast,
    output                                         VIDEO_OUT_tready,
    input                                          VIDEO_OUT_tuser,
    input                                          VIDEO_OUT_tvalid
);

//-----------------------------------------------
integer fm1=0;

reg [11:0]  vsc     =   'h0;
reg         vse     =   1;
reg         tready  = 1'b1;
integer i;
//-----------------------------------------------
always @(posedge s_axis_video_aclk)
begin
    if(VIDEO_OUT_tvalid&tready)
    begin
        if(VIDEO_OUT_tuser)
        begin
            $fclose(fm1);
            fm1 = $fopen({"../../../../img_out/",name,"_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".pgm"},"wb");
            $display("out%d.pgm saved",vsc);
            $fwrite(fm1,"P5%c%d %d%c255\n",10,NEW_WIDTH,NEW_HEIGHT,10);
            vsc <= vsc+1;
        end   
        for(i = 1; i <= MAX_SAMPLES_PER_CLOCK; i = i + 1) begin
            $fwrite(fm1,"%c",{VIDEO_OUT_tdata[i * DATA_WIDTH  - 1 -: DATA_WIDTH]});
        end
    end
end

//always @(negedge VIDEO_OUT_tlast)
//begin
//    #98 tready <= 1'b0;
//    #4 tready <= 1'b1;
//end

assign VIDEO_OUT_tready = tready;

//-----------------------------------------------
endmodule
//-----------------------------------------------
