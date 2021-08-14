`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH, EVS
// Engineer: Marcin Kowalczyk
// 
// Create Date: 07/01/2021 08:09:36 AM
// Module Name: Ncntx_Xppc
// Target Devices: ZCU104
// Tool Versions: Vivado 2020.2
// Description: 
//      Module to generate NxN context with uhd video stream 2/4 ppc
//      Tested for 2/4 PPC with CNTX_SIZE = 3, 5, 7, 9
//      FIRST COORDINATE IS A COLUMN!
//      SECOND COORDINATE IS A ROW!
//////////////////////////////////////////////////////////////////////////////////


module SNcntx_Xppc
#(
    parameter integer SAMPLES_PER_CLOCK = 4, // Number of samples per clock
    parameter integer BITS_PER_PIXEL    = 8, // Width of component data
    parameter integer TDATA_WIDTH       = SAMPLES_PER_CLOCK*BITS_PER_PIXEL, // Width of TDATA


    parameter integer CONTEXT_SIZE = 3, // Size of context
    parameter integer WIDTH        = 3840, // Pixels per one line
    parameter integer HEIGHT       = 2160, // Lines in one frame of video

    parameter integer W_POSITION_WIDTH = 10,
    parameter integer H_POSITION_WIDTH = 12,

    parameter integer P_GENERATION_WIDTH = 5,
    parameter integer LINE_BREAK_WIDTH = 50
)
(
    // Clock signals
    input wire s_axis_aclk,
    input wire s_axis_aresetn,

    // Ports of AXIS Video Slave S00
    input wire [TDATA_WIDTH-1 : 0] VIDEO_IN_tdata,
    input wire                     VIDEO_IN_tuser,
    input wire                     VIDEO_IN_tlast,
    input wire                     VIDEO_IN_tvalid,
    output wire                    VIDEO_IN_tready,

    // Output context
    output wire [BITS_PER_PIXEL-1 : 0] out_cntx [CONTEXT_SIZE-1 : 0][CONTEXT_SIZE-1 : 0][SAMPLES_PER_CLOCK-1 : 0],
    output wire                        context_tvalid,
    output wire                        context_tlast,
    input  wire                        context_tready,
    output wire                        context_tuser,

    output wire                        out_pixel_valid [SAMPLES_PER_CLOCK-1 : 0]
);

    localparam integer GROUPS        = WIDTH/SAMPLES_PER_CLOCK;
    localparam integer FRAME_W_SHIFT = $ceil((CONTEXT_SIZE-1.0)/(2.0*SAMPLES_PER_CLOCK));
    localparam integer BORDER_WIDTH  = (CONTEXT_SIZE-1)/2;
    localparam integer CONTEXT_WIDTH = FRAME_W_SHIFT*2+1;

    localparam STATE_WIDTH = 3;

    localparam [STATE_WIDTH-1 : 0] removeLines = 'd0;
    localparam [STATE_WIDTH-1 : 0] removePixels = 'd1;
    localparam [STATE_WIDTH-1 : 0] generatePixels = 'd2;
    localparam [STATE_WIDTH-1 : 0] generateLines = 'd3;
    localparam [STATE_WIDTH-1 : 0] normalOperation = 'd4;
    localparam [STATE_WIDTH-1 : 0] synchronization = 'd5;

    logic [W_POSITION_WIDTH-1 : 0] posX = 'd0;
    logic [H_POSITION_WIDTH-1 : 0] posY = 'd0;
    logic [STATE_WIDTH-1 : 0] state = synchronization;
    
    wire [H_POSITION_WIDTH-1 : 0] posY_Del1;
    
    wire [W_POSITION_WIDTH+1 : 0] PixelPosition [SAMPLES_PER_CLOCK-1 : 0];

    logic [P_GENERATION_WIDTH-1 : 0] pixGeneratorCnt  = 'd0;
    logic [P_GENERATION_WIDTH-1 : 0] lineGeneratorCnt = 'd0;
    logic [W_POSITION_WIDTH : 0]   generatorPosX    = 'd0;

    logic validLineGeneration = 'd0;
    
    logic [9:0] startCnt = 'd0;
    logic frameStarted = 'd0;

    wire ValidInput = VIDEO_IN_tvalid && context_tready;
    
    wire [BITS_PER_PIXEL-1 : 0] FullContext [CONTEXT_WIDTH*SAMPLES_PER_CLOCK-1 : 0][CONTEXT_SIZE-1 : 0];
    
    // First - column
    // Second - row
    wire [TDATA_WIDTH-1 : 0] ContextWire [CONTEXT_WIDTH-1 : 0][CONTEXT_SIZE-1 : 0];
    logic [TDATA_WIDTH-1 : 0] contextReg [CONTEXT_WIDTH-2 : 0][CONTEXT_SIZE-1 : 0] = '{default: '0};

    // Calculate input data position
    always @(posedge s_axis_aclk)
    begin
        if (VIDEO_IN_tuser)
        begin
            posX <= 'd0;
            posY <= 'd0;
            if (VIDEO_IN_tvalid && VIDEO_IN_tready && !frameStarted)
                startCnt <= startCnt+1;
        end

        if (VIDEO_IN_tvalid && VIDEO_IN_tready)
        begin
            posX <= posX+1;
            if(VIDEO_IN_tlast)
            begin
                posX <= 'd0;
                posY <= posY+1;
                if (posX == GROUPS-1)
                    frameStarted <= 'd1;
            end
        end
    end

    // Determine state of the machine based on the position
    always @(posedge s_axis_aclk)
    begin
        case(state)
            removeLines:
            begin
                if (posY == BORDER_WIDTH)
                    state <= removePixels;
            end
            removePixels:
            begin
                if (posX == FRAME_W_SHIFT-1 && ValidInput)
                    state <= normalOperation;
            end
            normalOperation:
            begin
                if (VIDEO_IN_tlast && ValidInput)
                    state <= generatePixels;
            end
            generatePixels:
            begin
                if (context_tready)
                begin
                    pixGeneratorCnt <= pixGeneratorCnt+1;
                    if (pixGeneratorCnt == FRAME_W_SHIFT-1)
                    begin
                        state <= removePixels;
                        pixGeneratorCnt <= 'd0;
                    end
                    if (posY == HEIGHT)
                    begin
                        state <= generateLines;
                        pixGeneratorCnt <= 'd0;
                    end
                end
            end
            generateLines:
            begin
                if (context_tready)
                begin
                    generatorPosX <= generatorPosX+1;
                    if (generatorPosX == LINE_BREAK_WIDTH-1)
                        validLineGeneration <= 'd1;
                    if (generatorPosX == GROUPS+LINE_BREAK_WIDTH-1)
                    begin
                        generatorPosX <= 'd0;
                        validLineGeneration <= 'd0;
                        lineGeneratorCnt <= lineGeneratorCnt+1;
                        if (lineGeneratorCnt == BORDER_WIDTH-1)
                        begin
                            state <= removeLines;
                            lineGeneratorCnt <= 'd0;
                        end
                    end
                end
            end
            default: // (synchronization)
            begin
                if (frameStarted && VIDEO_IN_tuser)
                begin
                    state <= removeLines;
                end
            end
        endcase

    end

    // DELAY:
    // -CONTEXT_WIDTH+1 for the context size
    // -1 for the read latency
    for (genvar cntx_line = 1; cntx_line < CONTEXT_SIZE; cntx_line = cntx_line+1)
    begin : BRAM_GEN
        delayLineBRAM_Xppc
        #(
        .DATA_WIDTH(TDATA_WIDTH),
        .DELAY     (GROUPS-CONTEXT_WIDTH)
        ) long_delay
        (
            .clk (s_axis_aclk              ),
            .ce  (ValidInput               ),
            .rstn(s_axis_aresetn           ),
            .din (ContextWire[CONTEXT_WIDTH-1][cntx_line-1]),
            .dout(ContextWire[0][cntx_line])
        );
    end
    assign ContextWire[0][0] = VIDEO_IN_tdata;
    
    always @(posedge s_axis_aclk)
    begin
        if (ValidInput)
        begin
            contextReg[0] <= ContextWire[0];
            contextReg[CONTEXT_WIDTH-2 : 1] <= contextReg[CONTEXT_WIDTH-3 : 0];
        end
    end
    
    assign ContextWire[CONTEXT_WIDTH-1 : 1] = contextReg[CONTEXT_WIDTH-2 : 0];
    
    
    
//    for (genvar cntx_row = 0; cntx_row < CONTEXT_SIZE - 1; cntx_row = cntx_row + 1)
//    begin : GENERATE_CONTEXT_REG_ROWS
//        always @(posedge s_axis_aclk)
//        begin
//            if (ValidInput)
//            begin
//                contextReg[0][cntx_row] <= ContextWire[0][cntx_row];
//            end
//        end
//        
//        for (genvar cntx_col = 0; cntx_col < CONTEXT_WIDTH - 2; cntx_col = cntx_col + 1)
//        begin : GENERATE_CONTEXT_REG_COLS
//            always @(posedge s_axis_aclk)
//            begin
//                if (ValidInput)
//                begin
//                    contextReg[cntx_col+1][cntx_row] <= contextReg[cntx_col][cntx_row];
//                end
//            end
//        end
//    end
    
    for (genvar cntx_row = 0; cntx_row < CONTEXT_SIZE; cntx_row = cntx_row + 1)
    begin : GENERATE_FULL_CONTEXT_ROWS
        for (genvar cntx_col = 0; cntx_col < CONTEXT_WIDTH; cntx_col = cntx_col + 1)
        begin : GENERATE_FULL_CONTEXT_COLS
            for (genvar pix = 0; pix < SAMPLES_PER_CLOCK; pix = pix + 1)
            begin : GENERATE_FULL_CONTEXT_NPPC
                assign FullContext[cntx_col*SAMPLES_PER_CLOCK+SAMPLES_PER_CLOCK-1-pix][cntx_row] = ContextWire[cntx_col][cntx_row][(pix+1)*BITS_PER_PIXEL-1 -: BITS_PER_PIXEL];
            end
        end
    end
    
//    for (genvar pix = 0; pix < SAMPLES_PER_CLOCK; pix = pix + 1)
//    begin : GENERATE_FULL_CONTEXT_NPPC
//        assign out_cntx[pix] = FullContext[FRAME_W_SHIFT*SAMPLES_PER_CLOCK+pix+1 : FRAME_W_SHIFT*SAMPLES_PER_CLOCK+pix-1][CONTEXT_SIZE-1 : 0];
//    end

    for (genvar cntx_row = 0; cntx_row < CONTEXT_SIZE; cntx_row = cntx_row + 1)
    begin : GENERATE_OUTPUT_ROWS
        for (genvar cntx_col = 0; cntx_col < CONTEXT_SIZE; cntx_col = cntx_col + 1)
        begin : GENERATE_OUTPUT_COLS
            for (genvar pix = 0; pix < SAMPLES_PER_CLOCK; pix = pix + 1)
            begin : GENERATE_OUTPUT_NPPC
                assign out_cntx[cntx_col][cntx_row][pix] = FullContext[FRAME_W_SHIFT*SAMPLES_PER_CLOCK-BORDER_WIDTH+pix+cntx_col][cntx_row];
            end
        end
    end
    
    assign PixelPosition = state==normalOperation ? '{(posX<<2)-FRAME_W_SHIFT*SAMPLES_PER_CLOCK, (posX<<2)-FRAME_W_SHIFT*SAMPLES_PER_CLOCK+1, (posX<<2)-FRAME_W_SHIFT*SAMPLES_PER_CLOCK+2, (posX<<2)-FRAME_W_SHIFT*SAMPLES_PER_CLOCK+3} : '{WIDTH-FRAME_W_SHIFT*SAMPLES_PER_CLOCK+pixGeneratorCnt*SAMPLES_PER_CLOCK, WIDTH-FRAME_W_SHIFT*SAMPLES_PER_CLOCK+pixGeneratorCnt*SAMPLES_PER_CLOCK+1, WIDTH-FRAME_W_SHIFT*SAMPLES_PER_CLOCK+pixGeneratorCnt*SAMPLES_PER_CLOCK+2, WIDTH-FRAME_W_SHIFT*SAMPLES_PER_CLOCK+pixGeneratorCnt*SAMPLES_PER_CLOCK+3};
    
    for (genvar pix = 0; pix < SAMPLES_PER_CLOCK; pix = pix + 1)
    begin : GENERATE_OUTPUT_NPPC
        assign out_pixel_valid[pix] = state == synchronization ? 'd1 : PixelPosition[pix] >= BORDER_WIDTH && PixelPosition[pix] < WIDTH-BORDER_WIDTH && posY_Del1 >= CONTEXT_SIZE-1 && state != generateLines;
    end
    
    assign context_tvalid = (state == normalOperation) || (state == synchronization) ? VIDEO_IN_tvalid : 
                            state == generatePixels ? 'b1 :
                            (state == generateLines && validLineGeneration) ? 'b1 : 'b0;
                            
    assign context_tlast =  (state == synchronization) ? VIDEO_IN_tlast :
                            (state == generatePixels && pixGeneratorCnt == FRAME_W_SHIFT-1)? 'b1 :
                            (state == generateLines && generatorPosX == GROUPS+LINE_BREAK_WIDTH-1) ? 'b1 : 'b0;
    assign VIDEO_IN_tready = context_tready;
    assign context_tuser =  (state == synchronization) ? VIDEO_IN_tuser :
                            (posY < BORDER_WIDTH || (posY <= BORDER_WIDTH && posX <= FRAME_W_SHIFT)) && state != generateLines;
    
    DelayEnable #(
        .WIDTH(H_POSITION_WIDTH),
        .DELAY(FRAME_W_SHIFT)
    ) DelayEnable_instance (
        .InData(posY),
        .CLK_in(s_axis_aclk),
        .CLK_en(context_tready),
        .OutData(posY_Del1)
    );
    
//    wire [TDATA_WIDTH-1 : 0] VIDEO_OUT_tdata;
//    
//for (genvar j = 0; j < SAMPLES_PER_CLOCK; j = j + 1)
//begin
//    assign VIDEO_OUT_tdata[BITS_PER_PIXEL*(SAMPLES_PER_CLOCK-j)-1 -: BITS_PER_PIXEL] = out_pixel_valid[j] ? out_cntx[CONTEXT_SIZE >> 1][CONTEXT_SIZE >> 1][j][BITS_PER_PIXEL-1 : 0] : 'd0;
//end

//    ILA_context LogicAnalizer
//    (
//        .clk(s_axis_aclk),
//        .probe0(VIDEO_IN_tdata), 
//        .probe1(VIDEO_IN_tuser), 
//        .probe2(VIDEO_IN_tlast), 
//        .probe3(VIDEO_IN_tvalid),
//        .probe4(VIDEO_IN_tready),
//        .probe5(VIDEO_OUT_tdata),
//        .probe6(context_tvalid),
//        .probe7(context_tlast),
//        .probe8(context_tready),
//        .probe9(context_tuser),
//        .probe10({out_pixel_valid[3],out_pixel_valid[2],out_pixel_valid[1],out_pixel_valid[0]}),
//        .probe11(posX),
//        .probe12(posY),
//        .probe13(state),
//        .probe14(PixelPosition[3]),
//        .probe15(pixGeneratorCnt), 
//        .probe16(lineGeneratorCnt),
//        .probe17(generatorPosX),
//        .probe18(validLineGeneration),
//        .probe19(startCnt),
//        .probe20(frameStarted),
//        .probe21(ValidInput)
//    );
    
endmodule

`default_nettype wire