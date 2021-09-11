`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mateusz Wasala
// 
// Create Date: 14.08.2019 02:13:19
// Design Name: 
// Module Name: delayLineBRAM_Xppc
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


module delayLineBRAM_Xppc
#(
    parameter integer DATA_WIDTH            = 96+1,     //AXI_WIDTH + AXI_SYNC_SIGNAL
    parameter integer MAX_SAMPLES_PER_CLOCK = 4,        //ppc
    parameter integer PIXELS_PER_LINE       = 64        //image width
//    parameter integer BRAM_SIZE_W           = 11,       //2048d
//    parameter integer AXI_SYNC_SIGNAL       = 1,        //number of axi sync signal, there are MSBs, if == 0, no signals,
)
(
    input  wire                   clk,
    input  wire                   rst,
    input  wire                   ce,
    input  wire                   tlast,
    input  wire [DATA_WIDTH-1:0]  din,
    output wire [DATA_WIDTH-1:0]  dout
    
);

localparam integer BRAM_SIZE_W  = $clog2(PIXELS_PER_LINE/MAX_SAMPLES_PER_CLOCK);
localparam integer MEMORY_SIZE  = DATA_WIDTH * PIXELS_PER_LINE / MAX_SAMPLES_PER_CLOCK;
//localparam integer COLOR_DEPTH  = (WIDTH-AXI_SYNC_SIGNAL)/MAX_SAMPLES_PER_CLOCK;

reg  [BRAM_SIZE_W-1:0]  position    = '0;
wire [DATA_WIDTH-1:0]   dina;
wire [DATA_WIDTH-1:0]   douta;



// RAM controller
always_ff @(posedge clk) 
begin
    if (rst == 1'b1) begin 
        position <= 0; 

    end
    else if (tlast && ce) begin 
        position <= 0; 

    end
    else if (ce == 1'b1) begin
        position <= position + 1;

    end
end

wire dbiterra;
wire sbiterra;
// xpm_memory_spram: Single Port RAM
// Xilinx Parameterized Macro, version 2018.2

xpm_memory_spram #(
  .ADDR_WIDTH_A(BRAM_SIZE_W),       // DECIMAL
  .AUTO_SLEEP_TIME(0),              // DECIMAL
  .BYTE_WRITE_WIDTH_A(DATA_WIDTH),  // DECIMAL
  .ECC_MODE("no_ecc"),              // String
  .MEMORY_INIT_FILE("none"),        // String
  .MEMORY_INIT_PARAM("0"),          // String
  .MEMORY_OPTIMIZATION("true"),     // String
  .MEMORY_PRIMITIVE("block"),       // String
  .MEMORY_SIZE(MEMORY_SIZE),        // DECIMAL
  .MESSAGE_CONTROL(0),              // DECIMAL
  .READ_DATA_WIDTH_A(DATA_WIDTH),   // DECIMAL
  .READ_LATENCY_A(1),               // DECIMAL
  .READ_RESET_VALUE_A("0"),         // String
  .USE_MEM_INIT(0),                 // DECIMAL
  .WAKEUP_TIME("disable_sleep"),    // String
  .WRITE_DATA_WIDTH_A(DATA_WIDTH),  // DECIMAL
  .WRITE_MODE_A ("read_first")      // String
)
 bram (

    .douta(douta),      // READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
    .addra(position),   // ADDR_WIDTH_A-bit input: Address for port A write and read operations.
    .clka(clk),         // 1-bit input: Clock signal for port A.
    .dina(dina),        // WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
    .ena(ce),           // 1-bit input: Memory enable signal for port A. Must be high on clock
    .wea(ce),           // WRITE_DATA_WIDTH_A-bit input: Write enable vector for port A input data port dina. 1 bit wide when word-wide writes are used.
    .injectdbiterra(1'b0),
    .injectsbiterra(1'b0),
    .regcea(1'b1), // NEW 1
    .rsta(1'b0),
    .sleep(1'b0),
    .dbiterra(dbiterra),
    .sbiterra(sbiterra)
     
);
// End of xpm_memory_spram_inst instantiation

assign dina[DATA_WIDTH-1:0] = din;
assign dout                 = douta[DATA_WIDTH-1:0];

endmodule

`default_nettype wire


				

//backup - version block memory generator bram
//generate 
//    if(AXI_SYNC_SIGNAL > 0) begin : GEN_DELAY_BRAM_AXI_SYNC_SIGNAL
//        for(genvar i = 0; i < AXI_SYNC_SIGNAL; ++i) begin 
//            bram_1w_2048d BRAM (
//                .clka  (clk                 ),
//                .ena   (ce                  ),
//                .wea   (ce                  ),
//                .addra (position            ),
//                .dina  (dina [DATA_WIDTH-1-i]    ),
//                .douta (douta[DATA_WIDTH-1-i]    )
//            );    
//        end
//    end

//    if(COLOR_DEPTH == 24) begin : GEN_DELAY_BRAM_RGB
//        for(genvar i = 0; i < MAX_SAMPLES_PER_CLOCK; ++i) begin
//            bram_24w_2048d BRAM (
//                .clka  (clk                                 ),
//                .ena   (ce                                  ),
//                .wea   (ce                                  ),
//                .addra (position                            ),
//                .dina  (dina [COLOR_DEPTH*i +: COLOR_DEPTH] ),
//                .douta (douta[COLOR_DEPTH*i +: COLOR_DEPTH] )
//            );
//        end   
//    end
//    else if(COLOR_DEPTH == 8) begin : GEN_DELAY_BRAM_GRAY
//        for(genvar i = 0; i < MAX_SAMPLES_PER_CLOCK; ++i) begin
//            bram_8w_2048d BRAM (
//                .clka  (clk                                 ),
//                .ena   (ce                                  ),
//                .wea   (ce                                  ),
//                .addra (position                            ),
//                .dina  (dina [COLOR_DEPTH*i +: COLOR_DEPTH] ),
//                .douta (douta[COLOR_DEPTH*i +: COLOR_DEPTH] )
//            );
//        end
//    end
//endgenerate