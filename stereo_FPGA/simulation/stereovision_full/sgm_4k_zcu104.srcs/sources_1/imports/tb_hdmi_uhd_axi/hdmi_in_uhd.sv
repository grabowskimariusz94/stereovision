`timescale 1ns / 1ps
//-----------------------------------------------
// Company: AGH
// Engineer: Mateusz Komorkiewicz / Tomasz Kryjak / Marcin Kowalczyk / Mateusz Wasala
// Create Date: 23:14:48 04/19/2011 
// Description: Video stream generator from file for UHD 2/4 pixel stream
//-----------------------------------------------

module hdmi_in_uhd
#(
    parameter name                          = "im01",
    parameter HEADER_LEN                    = 15,
    
    parameter no_valid_width                = 1,
    parameter valid_step                    = 1,
    parameter MAX_SAMPLES_PER_CLOCK         = 4,     // Number of samples per clock   
    parameter CHANNELS                      = 3,     // Color Channels
    parameter DATA_WIDTH                    = 24,    // Width of component data (gray - 8, rgb - 24)
    parameter C_S00_LINES_IN_FRAME          = 128,   // Lines in one frame of video
    parameter C_S00_PIXELS_PER_LINE         = 64     // Pixels per one line
)
(
  output                                        s_axis_video_aclk,
  output [DATA_WIDTH*MAX_SAMPLES_PER_CLOCK-1:0] VIDEO_IN_tdata,
  output                                        VIDEO_IN_tlast,
  input                                         VIDEO_IN_tready,
  output                                        VIDEO_IN_tuser,
  output                                        VIDEO_IN_tvalid
);

//-----------------------------------------------

localparam WIDTH = DATA_WIDTH*MAX_SAMPLES_PER_CLOCK;

// Settings for height x width image  
//horizontal
localparam hr           = C_S00_PIXELS_PER_LINE/MAX_SAMPLES_PER_CLOCK; //resolution
localparam hp           = 0; //porch
//vertical
localparam vr           = C_S00_LINES_IN_FRAME; //resolution
localparam vp           = 0; //porch


// States
localparam init_frame   = 3'd0;
localparam read         = 3'd1;
localparam no_valid     = 3'd2;
localparam end_line     = 3'd3;
localparam no_line      = 3'd4;
localparam no_frame     = 3'd5;
localparam init_line    = 3'd6;
localparam wait_state   = 3'd7;

reg [2:0] state = init_frame;

//-----------------------------------------------


reg             clk             = '0;
reg [WIDTH-1:0] tdata           = '0;
reg             tlast           = '0;
reg             tuser           = '0;
reg             tvalid          = '0;

reg [11:0]      hcounter        = '0;
reg [11:0]      vcounter        = '0; 
reg [11:0]      valid_counter   = '0;
reg             wait_flag       = '0;

reg [11:0] init_counter                 = '0;
reg [11:0] init_counter_line            = '0;
reg [5:0]  no_valid_between_lines       = 2; //0,1 or >1 cases

reg [11:0] no_valid_counter_pixels      = '0;
reg [11:0] no_valid_between_pixels[3]   = {5,10,1}; //0,1 or >1 cases

reg [11:0] hcounter_pixel_number[2]     = {2,7};
  
//-----------------------------------------------


//-----------------------------------------------
// Pixel clock generator
//-----------------------------------------------

initial
begin
  while(1)
  begin
     #1 clk <= 1'b0;
	 #1 clk <= 1'b1;
  end
end

//-----------------------------------------------

integer rgbfile, i, v;

//-----------------------------------------------

always @(posedge clk)
begin
    
    case(state)
        
        init_frame: //0
        begin
       
            if(init_counter < 50) begin
                init_counter <= init_counter + 1;
            end 
            else begin
       
                tlast <= 1'b0;
                tuser <= 1'b1;
                tvalid <= 1'b1;

                rgbfile = $fopen({"../../../../img_in/",name,".ppm"}, "rb");
        
                 // read header file (for bigger images can be different)
                for(i = 0; i <= HEADER_LEN; i = i + 1)
                begin
                  v = $fgetc(rgbfile);
                end    
                
                for(i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                    tdata[i * 24 - 1 -: 8]  <= $fgetc(rgbfile);
                    tdata[i * 24 - 17 -: 8] <= $fgetc(rgbfile);
                    tdata[i * 24 - 9 -: 8]  <= $fgetc(rgbfile);
                end
                
                if(valid_counter < valid_step - 1)
                begin
                    valid_counter <= valid_counter + 1;
                    state <= read;
                end
                else
                begin
                    valid_counter <= 12'b0;
                    state <= read;
                end
            end
        end
        
        read: //1
        begin
            tlast <= 1'b0;
            tuser <= 1'b0;
            tvalid <= 1'b1;
            
            
            if(no_valid_counter_pixels < no_valid_between_pixels[vcounter%3] && (hcounter == hcounter_pixel_number[0] || hcounter == hcounter_pixel_number[1])) begin
            
                no_valid_counter_pixels <= no_valid_counter_pixels + 1;
                tvalid <= 1'b0;
                
            end
            else begin

                hcounter <= hcounter + 1;
    
                for(i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                    tdata[i * 24 - 1 -: 8]  <= $fgetc(rgbfile);
                    tdata[i * 24 - 17 -: 8] <= $fgetc(rgbfile);
                    tdata[i * 24 - 9 -: 8]  <= $fgetc(rgbfile);
                end
                
                if(hcounter == hr - 3) begin
                    state <= end_line;
                end
                else if(valid_counter < valid_step - 1) begin
                    valid_counter <= valid_counter + 1;
                end
                else begin
                    valid_counter <= 12'b0;
                    //state <= no_valid;
                end
                no_valid_counter_pixels <= 0;
                
            end
            
        end
        
        no_valid: //2
        begin
            tlast <= 1'b0;
            tuser <= 1'b0;
            tvalid <= 1'b0;
            
            if(valid_counter < no_valid_width -1) valid_counter <= valid_counter + 1;
            else
            begin
                valid_counter <= 12'b0;
                state <= read;
            end
        end
        
        end_line: //3
        begin
            tlast <= 1'b1;
            tuser <= 1'b0;
            hcounter <= hcounter + 1;
            tvalid <= 1'b1;
            
            for(i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                tdata[i * 24 - 1 -: 8]  <= $fgetc(rgbfile);
                tdata[i * 24 - 17 -: 8] <= $fgetc(rgbfile);
                tdata[i * 24 - 9 -: 8]  <= $fgetc(rgbfile);
            end
            
            if(vcounter == vr - 1) begin
                vcounter <= 12'b0;
                state <= no_frame;
            end
            else begin
                vcounter <= vcounter + 1;
                state <= no_line;
            end
        end
        
        no_line: //4
        begin
            tlast <= 1'b0;
            tuser <= 1'b0;
            tvalid <= 1'b0;
            
        if(no_valid_between_lines == 0) begin
        
            tvalid <= 1'b1;
            
            for(i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                tdata[i * 24 - 1 -: 8]  <= $fgetc(rgbfile);
                tdata[i * 24 - 17 -: 8] <= $fgetc(rgbfile);
                tdata[i * 24 - 9 -: 8]  <= $fgetc(rgbfile);
            end
        
        end

            hcounter <= 12'b0;
            state <= init_line;

        end
        
        init_line: //6
        begin
        
            if(init_counter_line < no_valid_between_lines - 1 && no_valid_between_lines > 0 && vcounter%2 == 1) begin
                init_counter_line <= init_counter_line + 1;
                tlast <= 1'b0;
                tuser <= 1'b0;
                tvalid <= 1'b0;
                hcounter <= 12'b0;
            end 
            else begin
                tlast <= 1'b0;
                tuser <= 1'b0;
                
                tvalid <= 1'b1;
                
                for(i = MAX_SAMPLES_PER_CLOCK; i > 0; i = i - 1) begin
                    tdata[i * 24 - 1 -: 8]  <= $fgetc(rgbfile);
                    tdata[i * 24 - 17 -: 8] <= $fgetc(rgbfile);
                    tdata[i * 24 - 9 -: 8]  <= $fgetc(rgbfile);
                end
                
                state <= read;
                init_counter_line <= 0;
                hcounter <= 12'b0;
                
            end
            
            if(no_valid_between_lines == 1) begin
                hcounter <= 12'b0;
            end
            if(no_valid_between_lines == 0) begin
                hcounter <= hcounter + 1;
            end
            
            no_valid_counter_pixels <= 0;
        end
        
        no_frame: //5
        begin
            tlast <= 1'b0;
            tuser <= 1'b0;
            tvalid <= 1'b0;
            
            if(hcounter < 20) begin 
                hcounter <= hcounter + 1;
            end
            else begin
                hcounter <= 12'b0;
                state <= init_frame;
            end
        end
    endcase

end

//-----------------------------------------------

assign s_axis_video_aclk = clk;
assign VIDEO_IN_tdata = tdata;
assign VIDEO_IN_tlast = tlast;
assign VIDEO_IN_tuser = tuser;
assign VIDEO_IN_tvalid = tvalid;
  
//-----------------------------------------------
endmodule
//-----------------------------------------------