`timescale 1ns / 1ps
//-----------------------------------------------
// Company: AGH
// Engineer: Marcin Kowalczyk / Mariusz Grabowski
// Create Date: 23:14:48 04/19/2011 
// Description: Video stream generator from file for UHD 4 pixel stream
//-----------------------------------------------

module hdmi_in_uhd
  #(
    parameter name                          = "im01",
    parameter HEADER_LEN                    = 15,  
  
    parameter no_valid_width = 1,
    parameter valid_step = 1,
    parameter NPPC = 4,
    parameter BPP = 24,
    parameter IMAGE_HEIGHT = 100,
    parameter IMAGE_WIDTH = 100
)
   (
    output    s_axis_video_aclk,
    output    s_axis_video_aresetn,
    output [BPP*NPPC-1 : 0] VIDEO_IN_tdata,
    output    VIDEO_IN_tlast,
    input     VIDEO_IN_tready,
    output    VIDEO_IN_tuser,
    output    VIDEO_IN_tvalid
);

    //-----------------------------------------------

    // Settings for 1280 x 720 image
    //horizontal
    localparam hr = IMAGE_WIDTH/4; //resolution
    localparam hp = 100; //porch
    //vertical
    localparam vr = IMAGE_HEIGHT; //resolution
    localparam vp = 100; //porch

    // States
    localparam init_frame = 3'd0;
    localparam read = 3'd1;
    localparam no_valid = 3'd2;
    localparam end_line = 3'd3;
    localparam no_line = 3'd4;
    localparam no_frame = 3'd5;
    localparam reset = 3'd6;

    reg [2:0]     state = init_frame;
    reg [6:0]     cnt = 3'b0;

    //-----------------------------------------------

    reg           clk = 'b0;
    reg           rstn = 1'b1;
    reg [BPP-1 : 0] tdata [NPPC-1 : 0] = '{default: '0};
    reg           tlast = 'b0;
    reg           tuser = 'b0;
    reg           tvalid = 'b0;

    reg [11:0]    hcounter = 12'b0;
    reg [11:0]    vcounter = 12'b0; // more ???
    reg [11:0]    valid_counter = 12'b0;
    
    reg [7:0]     frameNumber = 'd0;

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

        cnt <= cnt + 1;
        if (VIDEO_IN_tready)
        begin
            case(state)

                reset:
                begin
                    state <= init_frame;
                end

                init_frame:
                begin
                    tlast <= 1'b0;
                    tuser <= 1'b1;
                    hcounter <= 'd1;
                    vcounter <= 'd0;
                    tvalid <= 1'b1;
                    rgbfile = $fopen({"../../../../img_in/",name,".ppm"}, "rb");

                    frameNumber <= frameNumber+1;

                    // read header file (for bigger images can be different)
                    for(i = 0; i < HEADER_LEN; i = i + 1)
                        begin
                            v = $fgetc(rgbfile);
                        end

                    tdata[0][23-:8] <= $fgetc(rgbfile);
                    tdata[0][7-:8]  <= $fgetc(rgbfile);
                    tdata[0][15-:8] <= $fgetc(rgbfile);

                    tdata[1][23-:8] <= $fgetc(rgbfile);
                    tdata[1][7-:8]  <= $fgetc(rgbfile);
                    tdata[1][15-:8] <= $fgetc(rgbfile);

                    tdata[2][23-:8] <= $fgetc(rgbfile);
                    tdata[2][7-:8]  <= $fgetc(rgbfile);
                    tdata[2][15-:8] <= $fgetc(rgbfile);

                    tdata[3][23-:8] <= $fgetc(rgbfile);
                    tdata[3][7-:8]  <= $fgetc(rgbfile);
                    tdata[3][15-:8] <= $fgetc(rgbfile);

                    if(valid_counter < valid_step - 1)
                        begin
                            valid_counter <= valid_counter + 1;
                            state <= read;
                        end
                    else
                        begin
                            valid_counter <= 12'b0;
                            state <= no_valid;
                        end
                end

                read:
                begin
                    tlast <= 1'b0;
                    tuser <= 1'b0;
                    hcounter <= hcounter + 1;
                    tvalid <= 1'b1;

                    tdata[0][23-:8] <= $fgetc(rgbfile);
                    tdata[0][7-:8]  <= $fgetc(rgbfile);
                    tdata[0][15-:8] <= $fgetc(rgbfile);
                                                       
                    tdata[1][23-:8] <= $fgetc(rgbfile);
                    tdata[1][7-:8]  <= $fgetc(rgbfile);
                    tdata[1][15-:8] <= $fgetc(rgbfile);
                                                       
                    tdata[2][23-:8] <= $fgetc(rgbfile);
                    tdata[2][7-:8]  <= $fgetc(rgbfile);
                    tdata[2][15-:8] <= $fgetc(rgbfile);
                                                       
                    tdata[3][23-:8] <= $fgetc(rgbfile);
                    tdata[3][7-:8]  <= $fgetc(rgbfile);
                    tdata[3][15-:8] <= $fgetc(rgbfile);

                    if(valid_counter < valid_step - 1)
                        begin
                            valid_counter <= valid_counter + 1;
                        end
                    else
                        begin
                            valid_counter <= 12'b0;
                            state <= no_valid;
                        end
                end

                no_valid:
                begin
                    tlast <= 1'b0;
                    //tuser <= 1'b0;
                    tvalid <= 1'b0;

                    if(hcounter == hr - 1)
                        begin
                            state <= end_line;
                        end
                    else if(valid_counter < no_valid_width -1) valid_counter <= valid_counter + 1;
                    else
                        begin
                            valid_counter <= 12'b0;
                            state <= read;
                        end
                end

                end_line:
                begin
                    tlast <= 1'b1;
                    tuser <= 1'b0;
                    hcounter <= 12'b0;
                    tvalid <= 1'b1;

                    tdata[0][23-:8] <= $fgetc(rgbfile);
                    tdata[0][7-:8]  <= $fgetc(rgbfile);
                    tdata[0][15-:8] <= $fgetc(rgbfile);
                                                       
                    tdata[1][23-:8] <= $fgetc(rgbfile);
                    tdata[1][7-:8]  <= $fgetc(rgbfile);
                    tdata[1][15-:8] <= $fgetc(rgbfile);
                                                       
                    tdata[2][23-:8] <= $fgetc(rgbfile);
                    tdata[2][7-:8]  <= $fgetc(rgbfile);
                    tdata[2][15-:8] <= $fgetc(rgbfile);
                                                       
                    tdata[3][23-:8] <= $fgetc(rgbfile);
                    tdata[3][7-:8]  <= $fgetc(rgbfile);
                    tdata[3][15-:8] <= $fgetc(rgbfile);

                    if(vcounter == vr - 1)
                        begin
                            vcounter <= 12'b0;
                            state <= no_frame;
                        end
                    else
                        begin
                            vcounter <= vcounter + 1;
                            state <= no_line;
                        end
                end

                no_line:
                begin
                    tlast <= 1'b1;
                    tuser <= 1'b0;
                    tvalid <= 1'b0;

                    if(hcounter < hp - 1)
                        hcounter <= hcounter + 1;
                    else
                    begin
                        hcounter <= 12'b0;
                        state <= read;
                    end
                end

                no_frame:
                begin
                    tlast <= 1'b1;
                    tuser <= 1'b0;
                    hcounter <= hcounter + 1;
                    tvalid <= 1'b0;
                    
                    //if(hcounter >= 4)
                    //    tuser <= 1'b1;

                    if(hcounter < vp - 1)
                        hcounter <= hcounter + 1;
                    else
                    begin
                        hcounter <= 12'b0;
                        state <= init_frame;
                    end
                end
            endcase
        end

    end

    //-----------------------------------------------

    assign s_axis_video_aclk = clk;
    assign s_axis_video_aresetn = rstn;
    assign VIDEO_IN_tdata = {>>{tdata}};
    assign VIDEO_IN_tlast = tlast;
    assign VIDEO_IN_tuser = tuser;
    assign VIDEO_IN_tvalid = tvalid;

    //-----------------------------------------------
endmodule