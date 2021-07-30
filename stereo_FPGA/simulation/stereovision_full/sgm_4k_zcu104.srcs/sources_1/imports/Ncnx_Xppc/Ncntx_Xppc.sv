`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH, EVS
// Engineer: Hubert Szolc, Mateusz Wąsala
// 
// Create Date: 10/30/2020 10:11:41 AM
// Module Name: Ncntx_Xppc
// Target Devices: ZCU104
// Tool Versions: Vivado 2018.2
// Description: 
//      Module to generate NxN context with uhd video stream X (even) ppc.
//////////////////////////////////////////////////////////////////////////////////


module Ncntx_Xppc
#(
    parameter integer   C_S00_DATA_WIDTH            = 8,    // Width of component data
    parameter integer   C_S00_AXIS_TDATA_WIDTH      = 16,   // Width of TDATA
    parameter integer   C_S00_MAX_SAMPLES_PER_CLOCK = 2,    // Number of samples per clock   
  
    parameter integer   C_S00_CNTX_SIZE             = 3,    // Size of context
    parameter integer   C_S00_PIXELS_PER_LINE       = 4096, // Pixels per one line
    parameter [11:0]    C_S00_LINES_IN_FRAME        = 2160, // Lines in one frame of video

	parameter integer	C_M01_N_OUTPUT_CNTX			= 64
)
(
    // Clock signals
    input wire  aclk,
    input wire  aresetn,
    input wire  aclken,
        
    // Ports of AXIS Video Slave S00
    input wire [C_S00_AXIS_TDATA_WIDTH - 1 : 0]     s00_axis_video_tdata,
    input wire                                      s00_axis_video_tuser,
    input wire                                      s00_axis_video_tlast,
    input wire                                      s00_axis_video_tvalid,
    output wire                                     s00_axis_video_tready,
    
    
    output wire [(C_S00_DATA_WIDTH + 3) - 1 : 0]    out_cntx [C_S00_CNTX_SIZE][C_S00_CNTX_SIZE][C_M01_N_OUTPUT_CNTX],
    output wire                                     m01_axis_video_tvalid,
    output wire                                     m01_axis_video_tlast,
    input  wire                                     m01_axis_video_tready,
    output wire                                     m01_axis_video_tuser,

    output wire                                     out_cntx_valid [C_M01_N_OUTPUT_CNTX]
);

localparam N_INPUT_DELAY            = 2;    // Number of delays for input data, from which context is generated
localparam CONTROL_SIGNALS_WIDTH    = 3;    // Width of the AXI Stream control signals (tuser + tlast + tvalid)

localparam DATA_WIDTH       = C_S00_DATA_WIDTH;
localparam PPC              = C_S00_MAX_SAMPLES_PER_CLOCK;
localparam AXIS_TDATA_WIDTH = C_S00_AXIS_TDATA_WIDTH;
localparam CNTX_SIZE        = C_S00_CNTX_SIZE;
localparam PIXELS_PER_LINE  = C_S00_PIXELS_PER_LINE;
localparam VSIZE            = C_S00_LINES_IN_FRAME;
localparam N_CNTX			= C_M01_N_OUTPUT_CNTX;

localparam AXIS_PACK_WIDTH  = AXIS_TDATA_WIDTH + CONTROL_SIGNALS_WIDTH;                             // Width of the one AXI-S data pack (tuser + tlast + tvalid + tdata)
localparam DATA_PACK_WIDTH  = DATA_WIDTH + CONTROL_SIGNALS_WIDTH;                                   // Width of the one pixel data pack (tuser + tlast + tvalid + data)
localparam CNTX_RADIUS      = CNTX_SIZE / 2;                                                        // Context radius (number o columns / rows)
localparam CNTX_TAB_WIDTH   = CNTX_SIZE < (N_CNTX + 1) ? CNTX_SIZE + 2*N_CNTX - 1 : CNTX_SIZE + N_CNTX - 1;  // Width of the image part in which we have pixels for all contexts (when CNTX_SIZE is too small, we have to add extra columns on the left to ensure proper validation
localparam COL_A            = (CNTX_TAB_WIDTH - 1 - CNTX_RADIUS) % PPC;                             // Context column in which pixel A have to be located
localparam CNTX_LEFT_ID     = CNTX_TAB_WIDTH - CNTX_SIZE - N_CNTX + 1;                             	// First (left) column of CNTX 0
localparam CNTX_RIGHT_ID    = CNTX_TAB_WIDTH - N_CNTX;                                             	// Last (right) column of CNTX 0

assign s00_axis_video_tready = m01_axis_video_tready;

// --- Data types for code readability ---
// AXI-S control signals
typedef struct packed
{
    reg                             tuser;
    reg                             tlast;
    reg                             tvalid;
} reg_axis_control_t;

// AXI-S data with control signals
typedef struct packed
{
    reg                             tuser;
    reg                             tlast;
    reg                             tvalid;
    reg [AXIS_TDATA_WIDTH - 1 : 0]  tdata;
} reg_axis_t;

// One pixel with control signals
typedef struct packed
{
    reg                         tuser;
    reg                         tlast;
    reg                         tvalid;
    reg [DATA_WIDTH - 1 : 0]    data;
} reg_pixel_t;

// --- Inputs ---
wire                        video_tuser   = s00_axis_video_tuser;
wire                        video_tvalid  = s00_axis_video_tvalid;
wire                        video_tlast   = s00_axis_video_tlast;
wire [AXIS_TDATA_WIDTH-1:0] video_tdata   = s00_axis_video_tdata;

wire                        video_out_tready  = m01_axis_video_tready;

// --- For context generation ---
reg_axis_t                      input_delay                 [CNTX_SIZE][N_INPUT_DELAY];
reg_axis_control_t              axi_sync_signals_delayed    [CNTX_SIZE-1 : 0]           = '{CNTX_SIZE{'0}};
reg                             work_enable_delayed         [CNTX_SIZE-1 : 0]           = '{CNTX_SIZE{'0}};
reg  [AXIS_PACK_WIDTH - 1 : 0]  long_delay_input            [CNTX_SIZE - 1];
wire [AXIS_PACK_WIDTH - 1 : 0]  long_delay_output           [CNTX_SIZE - 1];
wire [AXIS_PACK_WIDTH - 1 : 0]  long_delay_to_reg           [CNTX_SIZE];
wire [DATA_PACK_WIDTH - 1 : 0]  delay2cntx                  [CNTX_SIZE][PPC][PPC];
reg_pixel_t                     cntx_tab                    [CNTX_SIZE][CNTX_TAB_WIDTH];

// --- For context validation ---
reg [11 : 0]    vcnt_cntx   [PPC]       = '{PPC{'0}};
reg             cntx_valid  [N_CNTX]    = '{N_CNTX{'0}};

// --- For loops ---
integer row, col, cntx_id, p;

always_ff @(posedge aclk) begin
    axi_sync_signals_delayed[0] <= {video_tuser, video_tlast, video_tvalid};
    work_enable_delayed[0]      <= (aclken & video_tvalid & video_out_tready); //|| last_lines;
    
    axi_sync_signals_delayed[CNTX_SIZE - 1 : 1] <= axi_sync_signals_delayed[CNTX_SIZE - 2 : 0];
    work_enable_delayed[CNTX_SIZE - 1 : 1]      <= work_enable_delayed[CNTX_SIZE - 2 : 0];
    
    long_delay_input[0] <= {video_tuser, video_tlast, video_tvalid, video_tdata};
end

for (genvar cntx_line = 0; cntx_line < CNTX_SIZE - 1; cntx_line = cntx_line + 1) begin : BRAM_GEN
    delayLineBRAM_Xppc
    #(
        .DATA_WIDTH           (AXIS_PACK_WIDTH),
        .MAX_SAMPLES_PER_CLOCK(PPC            ),
        .PIXELS_PER_LINE      (PIXELS_PER_LINE)
    ) long_delay
    (
        .clk    (aclk                                       ),
        .ce     (work_enable_delayed[cntx_line]             ), 
        .rst    (!aresetn                                   ),
        .tlast  (axi_sync_signals_delayed[cntx_line].tlast  ),     
        .din    (long_delay_input[cntx_line]                ), 
        .dout   (long_delay_output[cntx_line]               )
    );
end


// Assign long delay inputs & outputs
for(genvar i = 1; i < CNTX_SIZE - 1; i = i + 1) begin
    assign long_delay_input[i] = long_delay_output[i-1];
    
end

for(genvar i = 0; i < CNTX_SIZE; i = i + 1) begin
    if(i == 0) begin
        delay_line #(.N(AXIS_PACK_WIDTH), .DELAY(CNTX_SIZE - 1 - i)) delay_x
        (
            .clk(aclk                   ),
            .idata(long_delay_input[i]  ), 
            .odata(long_delay_to_reg[i] )
        );
    end 
    else begin
        delay_line #(.N(AXIS_PACK_WIDTH), .DELAY(CNTX_SIZE - 1 - i)) delay_x
        (
            .clk(aclk                       ),
            .idata(long_delay_output[i-1]   ), 
            .odata(long_delay_to_reg[i]     )
        );
    end
end

// Main process
always_ff @(posedge aclk) begin

    // Data processing
    if (work_enable_delayed[CNTX_SIZE - 1]) begin 
        // Feed data to the delays
        for(row = 0; row < CNTX_SIZE; row = row + 1) begin
            input_delay[row][0] <= long_delay_to_reg[row];
        end
    
        // Move data in delays
        for(row = 0; row < CNTX_SIZE; row = row + 1) begin
            for(col = 1; col < N_INPUT_DELAY; col = col + 1) begin
                input_delay[row][col] <= input_delay[row][col - 1];
            end
        end
        
        // Move data in context tab
        for(row = 0; row < CNTX_SIZE; row = row + 1) begin
            for(col = 0, p = ((COL_A + 1) * PPC - COL_A - 1) % PPC; col < PPC; col = col + 1, p = (p + 1) % PPC) begin
                cntx_tab[row][col] <= {input_delay[row][col > COL_A ? 1 : 0].tuser, 
                                       input_delay[row][col > COL_A ? 1 : 0].tlast, 
                                       input_delay[row][col > COL_A ? 1 : 0].tvalid, 
                                       input_delay[row][col > COL_A ? 1 : 0].tdata[(p + 1) * DATA_WIDTH - 1 -: DATA_WIDTH]};
            end
            
            for(col = PPC; col < CNTX_TAB_WIDTH; col = col + 1) begin
                cntx_tab[row][col] <= cntx_tab[row][col - PPC];
            end
        end
        
        // Context validation - for each context separately
        for(cntx_id = 0; cntx_id < N_CNTX; cntx_id = cntx_id + 1) begin
            if (cntx_tab[CNTX_SIZE - 1][CNTX_RIGHT_ID + cntx_id - PPC].tuser) begin                                 // If tuser will be at the context end on the next posedge
                cntx_valid[cntx_id] <= 1'b1;
                vcnt_cntx[cntx_id] <= CNTX_SIZE - 1;
            end
            else if (cntx_tab[0][CNTX_LEFT_ID + cntx_id].tlast && cntx_tab[CNTX_SIZE - 1][CNTX_RIGHT_ID + cntx_id].tlast && vcnt_cntx[cntx_id] < (VSIZE - 1)) begin  // If tlast is at the context start & end at the same time and we still have some image to process
                cntx_valid[cntx_id] <= 1'b1;
                vcnt_cntx[cntx_id]  <= vcnt_cntx[cntx_id] + 1;
            end
            else if (cntx_tab[0][CNTX_LEFT_ID + cntx_id].tlast) begin                                               // If tlast is at the context start
                cntx_valid[cntx_id] <= 1'b0;
                vcnt_cntx[cntx_id] <= vcnt_cntx[cntx_id] + 1;
            end
            else if (cntx_tab[CNTX_SIZE - 1][CNTX_RIGHT_ID + cntx_id].tlast && vcnt_cntx[cntx_id] < VSIZE) begin    // If tlast is at the context end and we still have some image to process
                cntx_valid[cntx_id] <= 1'b1;
                vcnt_cntx[cntx_id] <= vcnt_cntx[cntx_id];
            end
        end
        
   end // if
end // always_ff

// Outputs assignment
for (genvar cx = 0; cx < N_CNTX; cx = cx + 1) begin
    assign out_cntx_valid[cx] = cntx_valid[cx] & work_enable_delayed[CNTX_SIZE-1];
    for (genvar r = 0; r < CNTX_SIZE; r = r + 1) begin
        for (genvar c = 0; c < CNTX_SIZE; c = c + 1) begin
            assign out_cntx[r][c][cx] = work_enable_delayed[CNTX_SIZE - 1] ? cntx_tab[r][CNTX_LEFT_ID + c + cx] : '0;
        end
    end
end

assign m01_axis_video_tvalid = out_cntx[CNTX_SIZE/2][CNTX_SIZE/2][0][DATA_PACK_WIDTH-3];
assign m01_axis_video_tlast = out_cntx[CNTX_SIZE/2][CNTX_SIZE/2][0][DATA_PACK_WIDTH-2];
assign m01_axis_video_tuser = out_cntx[CNTX_SIZE/2][CNTX_SIZE/2][0][DATA_PACK_WIDTH-1];

endmodule

`default_nettype wire