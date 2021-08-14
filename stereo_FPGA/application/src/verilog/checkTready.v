`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2020 12:13:37 PM
// Design Name: 
// Module Name: checkTready
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


module checkTready
  (
   
   input [95:0]  VIDEO_IN_tdata,
   input 	 VIDEO_IN_tlast,
   output 	 VIDEO_IN_tready,
   input 	 VIDEO_IN_tuser,
   input 	 VIDEO_IN_tvalid,

   input 	 PauseEnable,
  
   input 	 s_axis_video_aclk,
  
   output [95:0] VIDEO_OUT_tdata,
   output 	 VIDEO_OUT_tlast,
   input 	 VIDEO_OUT_tready,
   output 	 VIDEO_OUT_tuser,
   output 	 VIDEO_OUT_tvalid,
  
   output 	 OUT_pause,
   output [9:0]  LineOut,
   output [11:0] FrameOut,
   output [29:0] TicksOut,
   output [29:0] PixelsOut
   );
   
   wire 	 valid = VIDEO_IN_tvalid && VIDEO_OUT_tready;
   
   reg [19 : 0]  cnt = 20'b0;
   reg [29 : 0]  cntTicks = 30'b0;
   reg [29 : 0]  regTicks = 30'b0;
   reg [29 : 0]  cntPixels = 30'b0;
   reg [29 : 0]  regPixels = 30'b0;
   reg [9 : 0] 	 cntLine = 10'b0;
   reg [9 : 0] 	 regLine = 10'b0;
   reg [11 : 0]  cntFrame = 12'b0;
   reg [11 : 0]  regFrame = 12'b0;
   reg 		 pause = 1'b0;

   reg 		 tlastPrev = 1'b0;

   always @(posedge s_axis_video_aclk)
     begin
	if (VIDEO_OUT_tready && VIDEO_OUT_tvalid)
	  begin
	     if (VIDEO_OUT_tlast)
	       begin
		  cntLine <= 10'b0;
		  regLine <= cntLine+1;
		  
	       end
	     else
	       cntLine <= cntLine+1;
	  end
     end // always @ (posedge s_axis_video_aclk)

   always @(posedge s_axis_video_aclk)
     begin
	cntTicks <= cntTicks+1;
	if (VIDEO_OUT_tready && VIDEO_OUT_tvalid)
	  begin
	     cntPixels <= cntPixels+1;
	     tlastPrev <= VIDEO_OUT_tlast;
	     if (VIDEO_OUT_tuser)
	       begin
		  cntPixels <= 30'b0;
		  regPixels <= cntPixels+1;
		  cntFrame <= 10'b0;
		  regFrame <= cntFrame;
		  cntTicks <= 30'b0;
		  regTicks <= cntTicks;
	       end
	     else if (VIDEO_OUT_tlast && ~tlastPrev)
	       cntFrame <= cntFrame+1;
	  end
     end
   
   
   always @(posedge s_axis_video_aclk)
     begin
	
	if (valid)
	  begin
	     cnt <= cnt+1;
	     
	     if (cnt==1000000)
               pause <= PauseEnable;
	     
	     if (cnt==1000020)
               pause <= 1'b0;
	     
	  end
	
     end
   
   assign VIDEO_OUT_tdata  = VIDEO_IN_tdata;
   assign VIDEO_OUT_tlast  = VIDEO_IN_tlast;
   assign VIDEO_OUT_tuser  = VIDEO_IN_tuser;
   assign VIDEO_OUT_tvalid = pause ? 1'b0 : VIDEO_IN_tvalid;
   assign VIDEO_IN_tready  = pause ? 1'b0 : VIDEO_OUT_tready;
   
   assign OUT_pause = pause;
   assign LineOut = regLine;
   assign FrameOut = regFrame;
   assign TicksOut = regTicks;
   assign PixelsOut = regPixels;
   
endmodule
