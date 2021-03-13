`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 12.03.2021 21:48:36
// Module Name: delayLineDualBRAM_Xppc
// Target Devices: zcu104 zc702
// Tool Versions: Vivado 2020.2
// Description: 
// 
// Dependencies: 
// 
//////////////////////////////////////////////////////////////////////////////////


module delayLineDualBRAM_Xppc
#(
    parameter integer DATA_WIDTH            = 96+1,     //AXI_WIDTH + AXI_SYNC_SIGNAL
    parameter integer MAX_SAMPLES_PER_CLOCK = 4,        //ppc
    parameter integer PIXELS_PER_LINE       = 64,       //image width
    parameter integer READ_POS_SHIFT        = 0         //shift read pos from write pos
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

logic  [BRAM_SIZE_W-1:0]  write_position = '0;
logic  [BRAM_SIZE_W-1:0]  shifted_write_position;
logic  [BRAM_SIZE_W-1:0]  read_position;
wire [DATA_WIDTH-1:0]   dina;
wire [DATA_WIDTH-1:0]   doutb;



// RAM controller
always_ff @(posedge clk) 
begin
    if (rst == 1'b1) begin 
        write_position <= 0; 

    end
    else if (tlast && ce) begin 
        write_position <= 0; 

    end
    else if (ce == 1'b1) begin
        write_position <= write_position + 1;
    end
end

assign shifted_write_position = write_position + READ_POS_SHIFT;
assign read_position = (shifted_write_position<PIXELS_PER_LINE/MAX_SAMPLES_PER_CLOCK) ? shifted_write_position :  (shifted_write_position - MEMORY_SIZE);


wire sbiterra;

xpm_memory_sdpram #(    
  .MEMORY_SIZE(MEMORY_SIZE),    
  .MEMORY_PRIMITIVE("block"), 
  .CLOCKING_MODE ("common_clock"),         
  .MEMORY_INIT_FILE("none"),        
  .MEMORY_INIT_PARAM("0"),      
  .USE_MEM_INIT(0),               
  .WAKEUP_TIME("disable_sleep"),      
  .MESSAGE_CONTROL(0),              
  .MEMORY_OPTIMIZATION("true"), 
  
  // Port A module parameters
  .WRITE_DATA_WIDTH_A(DATA_WIDTH),  
  .BYTE_WRITE_WIDTH_A(DATA_WIDTH),  
  .ADDR_WIDTH_A(BRAM_SIZE_W),      
   
   // Port B module parameters
  .READ_DATA_WIDTH_B(DATA_WIDTH),  
  .ADDR_WIDTH_B(BRAM_SIZE_W),             
  .READ_RESET_VALUE_B("0"),    
  .READ_LATENCY_B(1),     
  .WRITE_MODE_B ("read_first")      
)
 bram (
    
    .sleep(1'b0),
    
    // Port A module ports
    .clka(clk),         
    .ena(ce),           
    .wea(ce),     
    .addra(write_position),  
    .dina(dina),     
    .injectdbiterra(1'b0),
    .injectsbiterra(1'b0),
    
    // Port B module ports
    .clkb(clk),
    .enb(ce),
    .rstb(1'b0),  
    .regceb(1'b0),
    .addrb(read_position),          
    .doutb(doutb),  
    .dbiterrb(),
    .sbiterrb()
     
);
// End of xpm_memory_spram_inst instantiation

assign dina[DATA_WIDTH-1:0] = din;
assign dout                 = doutb[DATA_WIDTH-1:0];

endmodule
