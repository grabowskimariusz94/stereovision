`timescale 1ns / 1ps
//-----------------------------------------------
// Company: AGH
// Engineer: Mateusz Komorkiewicz / Tomasz Kryjak / Marcin Kowalczyk / Mateusz Wasala
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
    if(VIDEO_OUT_tuser)
    begin
        $fclose(fm1);
        fm1 = $fopen({"../../../../img_out/",name,"_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".pgm"},"wb");
        $display("out%d.ppm saved",vsc);
//        $fwrite(fm1,"P6%c256 256%c255\n",10,10);
        $fwrite(fm1,"P6%c%d %d%c255\n",10,NEW_WIDTH,NEW_HEIGHT,10);
        vsc <= vsc+1;
        
        for(i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
            $fwrite(fm1,"%c",{VIDEO_OUT_tdata[i * 24 - 1 -: 8]});
            $fwrite(fm1,"%c",{VIDEO_OUT_tdata[i * 24 - 17 -: 8]});
            $fwrite(fm1,"%c",{VIDEO_OUT_tdata[i * 24 - 9 -: 8]});
        end

    end
    else
    begin
    if(VIDEO_OUT_tvalid)
	   begin
	   //just for good debugging
	   for(i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
           $fwrite(fm1,"%c",{VIDEO_OUT_tdata[i * 24 - 1 -: 8]});
           $fwrite(fm1,"%c",{VIDEO_OUT_tdata[i * 24 - 17 -: 8]});
           $fwrite(fm1,"%c",{VIDEO_OUT_tdata[i * 24 - 9 -: 8]});
       end
       
	 end
  end
end

assign VIDEO_OUT_tready = tready;

//-----------------------------------------------
endmodule
//-----------------------------------------------
