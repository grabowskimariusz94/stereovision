`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 19.10.2021 21:57:05
// Module Name: image_buffer
// Target Devices: VC707
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////


module image_buffer#(
  parameter WIDTH = 640,                   // image width
  parameter HEIGHT = 480,                  // image height
  parameter NPPC = 4,                      // Number of samples per clock (minimum 2)
  parameter BPP  = 8,                      // Bits per pixel
  parameter AXIS_TDATA_WIDTH = NPPC * BPP,  // Width of TDATA
  parameter MAX_SHIFT_UP   = 50,           // Farthest pixel replacement up
  parameter MAX_SHIFT_DOWN = 50,           // Farthest pixel replacement down
  parameter LINE_BREAK = 50                // Number of clocks between following lines in frame
)(
  input wire  aclk,
  input wire  aresetn,

  output logic  s_axis_tready,
  input  logic [AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
  input  logic  s_axis_tvalid,
  input  logic  s_axis_tlast,
  input  logic  s_axis_tuser,
  
  output logic  new_pos_tready,
  output logic  new_pos_tuser,
  input  logic  new_pos_tvalid,
  input  logic  [NPPC-1:0][$clog2(WIDTH)-1:0]  new_pos_x,
  input  logic  [NPPC-1:0][$clog2(HEIGHT)-1:0] new_pos_y,
  
  output logic [AXIS_TDATA_WIDTH-1 : 0] m_axis_00_tdata,
  output logic [AXIS_TDATA_WIDTH-1 : 0] m_axis_01_tdata,
  output logic [AXIS_TDATA_WIDTH-1 : 0] m_axis_10_tdata,
  output logic [AXIS_TDATA_WIDTH-1 : 0] m_axis_11_tdata,
  output logic  m_axis_tvalid,
  input  logic  m_axis_tready,
  output logic  m_axis_tlast,
  output logic  m_axis_tuser
);

typedef enum {SYNCH, NORMAL, SKIP_LINES, GEN_LINES} state_t;
localparam BUFFER_LINES = MAX_SHIFT_UP + MAX_SHIFT_DOWN + 2; // +1 -> current_line, +1 -> write_line should not interrupt read line
localparam BRAM_SIZE = (BUFFER_LINES/2)*(WIDTH/2)*BPP;
localparam BRAM_SIZE_W  = $clog2(BRAM_SIZE/(2*BPP)); // address space alligned to DATA WIDTH of two pixels (2*BPP)
localparam POS_X_RANGE = WIDTH/NPPC;
localparam POS_X_W = $clog2(POS_X_RANGE);
localparam POS_Y_W = $clog2(HEIGHT);

state_t state = SYNCH;
logic [POS_X_W-1 : 0] pos_x;
logic [POS_Y_W-1 : 0] pos_y;
logic [POS_X_W : 0] gen_pos_x;
logic [$clog2(MAX_SHIFT_DOWN)-1 : 0] gen_pos_y;

logic valid_gen_line = 0;

logic frame_started = 0;


logic  [BRAM_SIZE_W-1:0]  write_addr_0;
logic  [BRAM_SIZE_W-1:0]  write_addr_1;
logic                     write_addr_line_parity;
logic                     write_en_0;
logic                     write_en_1;

logic  [NPPC-1:0][BRAM_SIZE_W-1:0]  read_addr_00;
logic  [NPPC-1:0][BRAM_SIZE_W-1:0]  read_addr_01;
logic  [NPPC-1:0][BRAM_SIZE_W-1:0]  read_addr_10;
logic  [NPPC-1:0][BRAM_SIZE_W-1:0]  read_addr_11;

logic  [NPPC-1:0][$clog2(WIDTH)-1:0]  new_pos_x_r;
logic  [NPPC-1:0][$clog2(HEIGHT)-1:0] new_pos_y_r;

logic [AXIS_TDATA_WIDTH/2-1:0]   din_0;
logic [AXIS_TDATA_WIDTH/2-1:0]   din_1;

logic [NPPC-1:0][AXIS_TDATA_WIDTH/2-1:0]   dout_00;
logic [NPPC-1:0][AXIS_TDATA_WIDTH/2-1:0]   dout_01;
logic [NPPC-1:0][AXIS_TDATA_WIDTH/2-1:0]   dout_10;
logic [NPPC-1:0][AXIS_TDATA_WIDTH/2-1:0]   dout_11;

logic tvalid;
logic tlast;
logic tuser;

logic out_tvalid;
logic out_tlast;
logic out_tuser;

// Calculate input data position
always @(posedge aclk) 
begin
  if (tuser) begin
    pos_x <= 'd0;
    pos_y <= 'd0;
  end
  
  if (tvalid) begin
    pos_x <= pos_x+1;
    if(tlast) begin
      pos_x <= 'd0;
      pos_y <= pos_y+1;
      if (pos_x == POS_X_RANGE-1)
        frame_started <= 'd1;
    end
  end
end


// Determine state of the machine based on the position
always @(posedge aclk)
begin
  case(state)
    SKIP_LINES:
    begin
      if (pos_y == MAX_SHIFT_DOWN+1  && s_axis_tvalid)
        state <= NORMAL;
    end
    NORMAL:
    begin
      if (pos_y == HEIGHT) begin
        state <= GEN_LINES;
        gen_pos_x <= 0;
        gen_pos_y <= 0;
      end
    end
    GEN_LINES:
    begin
      gen_pos_x <= gen_pos_x+1;
      if (gen_pos_x == LINE_BREAK-1)
        valid_gen_line <= 'd1;
      if (gen_pos_x == POS_X_RANGE+LINE_BREAK-1) begin
        gen_pos_x <= 'd0;
        valid_gen_line <= 'd0;
        gen_pos_y <= gen_pos_y+1;
        if (gen_pos_y == MAX_SHIFT_DOWN) begin
          state <= SKIP_LINES;
          gen_pos_y <= 'd0;
        end
      end
    end
    default: // SYNCH
    begin
      if (frame_started && tuser)
        state <= SKIP_LINES;
    end
  endcase
end


always_ff @(posedge aclk) 
begin
  if (!aresetn) 
    write_addr_line_parity <= 0;
  else
    if(s_axis_tlast && s_axis_tvalid)
      write_addr_line_parity <= !write_addr_line_parity;
end

assign write_en_0 = !write_addr_line_parity;
assign write_en_1 =  write_addr_line_parity;


always_ff @(posedge aclk) 
begin
 if (!aresetn) begin
    write_addr_0 <= 0; 
    write_addr_1 <= 0; 
 end else begin 
   if (s_axis_tuser && s_axis_tvalid) begin
     write_addr_0 <= 0; 
     write_addr_1 <= -1; 
   end else begin
     if (s_axis_tvalid == 1'b1 && write_en_0)
       if(write_addr_0 == BRAM_SIZE/(2*BPP)-1)
         write_addr_0 <= 0; 
       else 
         write_addr_0 <= write_addr_0 + 1;
     if (s_axis_tvalid == 1'b1 && write_en_1)
       if(write_addr_1 == BRAM_SIZE/(2*BPP)-1)
         write_addr_1 <= 0; 
       else 
         write_addr_1 <= write_addr_1 + 1;
   end
 end
end

//always_ff @(posedge aclk) 
//begin
// if (!aresetn) begin
//   new_pos_y <= 0; 
//   new_pos_x <= 0; 
// end else begin 
//   if (m_axis_tuser && !m_axis_tvalid) begin
//     new_pos_y <= 0; 
//     new_pos_x <= 0; 
//   end else begin
//     if (m_axis_tvalid == 1'b1)
//       if(new_pos_x == WIDTH-NPPC) begin
//         new_pos_x <= 0; 
//         if(new_pos_y == HEIGHT-1)
//           new_pos_y <= 0; 
//         else
//           new_pos_y <= new_pos_y + 1; 
//       end
//       else 
//         new_pos_x <= new_pos_x + NPPC;
//   end
// end
//end

generate
  for(genvar i = 0; i < NPPC; i++) begin 
    assign read_addr_00[i] = (((new_pos_y[i]+new_pos_y[i][0])%BUFFER_LINES)/2)*(WIDTH/NPPC)+new_pos_x[i]/NPPC+new_pos_x[i][0]*new_pos_x[i][1];
    assign read_addr_01[i] = (((new_pos_y[i]+new_pos_y[i][0])%BUFFER_LINES)/2)*(WIDTH/NPPC)+new_pos_x[i]/NPPC;
    assign read_addr_10[i] = ((new_pos_y[i]%BUFFER_LINES)/2)*(WIDTH/NPPC)+new_pos_x[i]/NPPC+new_pos_x[i][0]*new_pos_x[i][1];
    assign read_addr_11[i] = ((new_pos_y[i]%BUFFER_LINES)/2)*(WIDTH/NPPC)+new_pos_x[i]/NPPC;
  end
endgenerate

always @(posedge aclk)
begin
  new_pos_y_r <= new_pos_y;
  new_pos_x_r <= new_pos_x;
end

always_ff @(posedge aclk) 
begin
  if (!aresetn) begin
    din_0 <= 0; 
    din_1 <= 0; 
  end else begin 
    if (s_axis_tvalid) begin
      din_0 <= {s_axis_tdata[2*BPP+BPP-1-:BPP],s_axis_tdata[0*BPP+BPP-1-:BPP]};
      din_1 <= {s_axis_tdata[3*BPP+BPP-1-:BPP],s_axis_tdata[1*BPP+BPP-1-:BPP]};
    end
  end
end

always_ff @(posedge aclk) 
begin
 if (!aresetn) begin
    tvalid <= 0; 
    tlast  <= 0; 
    tuser  <= 0; 
  end else begin 
    tvalid <= s_axis_tvalid;
    tlast  <= s_axis_tlast;
    tuser  <= s_axis_tuser;
  end
end

//assign shifted_write_position = write_position + READ_POS_SHIFT/MAX_SAMPLES_PER_CLOCK + 1;
//assign read_position = (shifted_write_position<PIXELS_PER_LINE/MAX_SAMPLES_PER_CLOCK) ? shifted_write_position :  (shifted_write_position - PIXELS_PER_LINE/MAX_SAMPLES_PER_CLOCK);

generate
  for(genvar i = 0; i < NPPC; i++) begin: brams
    xpm_memory_sdpram #(    
      .MEMORY_SIZE(BRAM_SIZE),    
      .MEMORY_PRIMITIVE("block"), 
      .CLOCKING_MODE ("common_clock"),// independent_clock         
      .MEMORY_INIT_FILE("none"),        
      .MEMORY_INIT_PARAM("0"),      
      .USE_MEM_INIT(0),               
      .WAKEUP_TIME("disable_sleep"),      
      .MESSAGE_CONTROL(0),              
      .MEMORY_OPTIMIZATION("true"), 
      
      // Port A module parameters
      .WRITE_DATA_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .BYTE_WRITE_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_A(BRAM_SIZE_W),      
       
       // Port B module parameters
      .READ_DATA_WIDTH_B(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_B(BRAM_SIZE_W),             
      .READ_RESET_VALUE_B("0"),    
      .READ_LATENCY_B(1),     
      .WRITE_MODE_B ("read_first")      
    ) bram_00 (
        .sleep(1'b0),
        
        // Port A module ports
        .clka(aclk),         
        .ena(write_en_0),           
        .wea(tvalid),     
        .addra(write_addr_0),  
        .dina(din_0),     
        .injectdbiterra(1'b0),
        .injectsbiterra(1'b0),
        
        // Port B module ports
        .clkb(aclk),
        .enb(1'b1),
        .rstb(1'b0),  
        .regceb(1'b0),
        .addrb(read_addr_00[i]),          
        .doutb(dout_00[i]),  
        .dbiterrb(),
        .sbiterrb()
    );
    
    xpm_memory_sdpram #(    
      .MEMORY_SIZE(BRAM_SIZE),    
      .MEMORY_PRIMITIVE("block"), 
      .CLOCKING_MODE ("common_clock"),// independent_clock         
      .MEMORY_INIT_FILE("none"),        
      .MEMORY_INIT_PARAM("0"),      
      .USE_MEM_INIT(0),               
      .WAKEUP_TIME("disable_sleep"),      
      .MESSAGE_CONTROL(0),              
      .MEMORY_OPTIMIZATION("true"), 
      
      // Port A module parameters
      .WRITE_DATA_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .BYTE_WRITE_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_A(BRAM_SIZE_W),      
       
       // Port B module parameters
      .READ_DATA_WIDTH_B(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_B(BRAM_SIZE_W),             
      .READ_RESET_VALUE_B("0"),    
      .READ_LATENCY_B(1),     
      .WRITE_MODE_B ("read_first")      
    ) bram_01 (
        .sleep(1'b0),
        
        // Port A module ports
        .clka(aclk),         
        .ena(write_en_0),           
        .wea(tvalid),     
        .addra(write_addr_0),  
        .dina(din_1),     
        .injectdbiterra(1'b0),
        .injectsbiterra(1'b0),
        
        // Port B module ports
        .clkb(aclk),
        .enb(1'b1),
        .rstb(1'b0),  
        .regceb(1'b0),
        .addrb(read_addr_01[i]),          
        .doutb(dout_01[i]),  
        .dbiterrb(),
        .sbiterrb()
    );
    
    xpm_memory_sdpram #(    
      .MEMORY_SIZE(BRAM_SIZE),    
      .MEMORY_PRIMITIVE("block"), 
      .CLOCKING_MODE ("common_clock"),// independent_clock         
      .MEMORY_INIT_FILE("none"),        
      .MEMORY_INIT_PARAM("0"),      
      .USE_MEM_INIT(0),               
      .WAKEUP_TIME("disable_sleep"),      
      .MESSAGE_CONTROL(0),              
      .MEMORY_OPTIMIZATION("true"), 
      
      // Port A module parameters
      .WRITE_DATA_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .BYTE_WRITE_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_A(BRAM_SIZE_W),      
       
       // Port B module parameters
      .READ_DATA_WIDTH_B(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_B(BRAM_SIZE_W),             
      .READ_RESET_VALUE_B("0"),    
      .READ_LATENCY_B(1),     
      .WRITE_MODE_B ("read_first")      
    ) bram_10 (
        .sleep(1'b0),
        
        // Port A module ports
        .clka(aclk),         
        .ena(write_en_1),           
        .wea(tvalid),     
        .addra(write_addr_1),  
        .dina(din_0),     
        .injectdbiterra(1'b0),
        .injectsbiterra(1'b0),
        
        // Port B module ports
        .clkb(aclk),
        .enb(1'b1),
        .rstb(1'b0),  
        .regceb(1'b0),
        .addrb(read_addr_10[i]),          
        .doutb(dout_10[i]),  
        .dbiterrb(),
        .sbiterrb()
    );
    
    xpm_memory_sdpram #(    
      .MEMORY_SIZE(BRAM_SIZE),    
      .MEMORY_PRIMITIVE("block"), 
      .CLOCKING_MODE ("common_clock"),// independent_clock         
      .MEMORY_INIT_FILE("none"),        
      .MEMORY_INIT_PARAM("0"),      
      .USE_MEM_INIT(0),               
      .WAKEUP_TIME("disable_sleep"),      
      .MESSAGE_CONTROL(0),              
      .MEMORY_OPTIMIZATION("true"), 
      
      // Port A module parameters
      .WRITE_DATA_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .BYTE_WRITE_WIDTH_A(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_A(BRAM_SIZE_W),      
       
       // Port B module parameters
      .READ_DATA_WIDTH_B(AXIS_TDATA_WIDTH/2),  
      .ADDR_WIDTH_B(BRAM_SIZE_W),             
      .READ_RESET_VALUE_B("0"),    
      .READ_LATENCY_B(1),     
      .WRITE_MODE_B ("read_first")      
    ) bram_11 (
        .sleep(1'b0),
        
        // Port A module ports
        .clka(aclk),         
        .ena(write_en_1),           
        .wea(tvalid),     
        .addra(write_addr_1),  
        .dina(din_1),     
        .injectdbiterra(1'b0),
        .injectsbiterra(1'b0),
        
        // Port B module ports
        .clkb(aclk),
        .enb(1'b1),
        .rstb(1'b0),  
        .regceb(1'b0),
        .addrb(read_addr_11[i]),          
        .doutb(dout_11[i]),  
        .dbiterrb(),
        .sbiterrb()
    );
  end: brams
endgenerate

assign out_tvalid = ((state == NORMAL) || (state == SYNCH)) ? tvalid : 
                     (state == GEN_LINES && valid_gen_line) ? 1'b1 : 1'b0;
assign out_tlast  = ((state == NORMAL) || (state == SYNCH)) ? tlast : 
                     (state == GEN_LINES && gen_pos_x == POS_X_RANGE+LINE_BREAK-1) ? 1'b1 : 1'b0;
assign out_tuser  = (state == SYNCH) ? tuser:
                     ((pos_y < MAX_SHIFT_DOWN+1 || (pos_y == MAX_SHIFT_DOWN+1 && pos_x == 0) ) && state != GEN_LINES) ? 1'b1 : 1'b0;

assign new_pos_tready = out_tvalid;
assign new_pos_tuser = out_tuser;

//assign m_axis_0_tdata  = new_pos_y[0][0] ? new_pos_x[0][0] ? {dout_10[1*BPP+BPP-1-:BPP],dout_11[1*BPP+BPP-1-:BPP],dout_10[0*BPP+BPP-1-:BPP],dout_11[0*BPP+BPP-1-:BPP]} 
//                                                           : {dout_11[1*BPP+BPP-1-:BPP],dout_10[1*BPP+BPP-1-:BPP],dout_11[0*BPP+BPP-1-:BPP],dout_10[0*BPP+BPP-1-:BPP]} 
//                                         : new_pos_x[0][0] ? {dout_00[1*BPP+BPP-1-:BPP],dout_01[1*BPP+BPP-1-:BPP],dout_00[0*BPP+BPP-1-:BPP],dout_01[0*BPP+BPP-1-:BPP]} 
//                                                           : {dout_01[1*BPP+BPP-1-:BPP],dout_00[1*BPP+BPP-1-:BPP],dout_01[0*BPP+BPP-1-:BPP],dout_00[0*BPP+BPP-1-:BPP]};
                                                        
//generate
//  for(genvar i = 0; i < NPPC; i++) begin
//    assign m_axis_00_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//    assign m_axis_01_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//    assign m_axis_10_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//    assign m_axis_11_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//  end
//endgenerate   
                                                     
//generate
//  for(genvar i = 0; i < NPPC; i++) begin
//    assign m_axis_00_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//    assign m_axis_01_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//    assign m_axis_10_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//    assign m_axis_11_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? dout_10[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_11[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                 : new_pos_x_r[i][0] ? dout_00[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP]
//                                                                                     : dout_01[i][new_pos_x_r[i][1]*BPP+BPP-1-:BPP];
//  end
//endgenerate

generate
  for(genvar i = 0; i < NPPC; i++) begin
    assign m_axis_00_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? new_pos_x_r[i][1] ? dout_11[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_11[i][0*BPP+BPP-1-:BPP]
                                                                                     : new_pos_x_r[i][1] ? dout_10[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_10[i][0*BPP+BPP-1-:BPP]
                                                                 : new_pos_x_r[i][0] ? new_pos_x_r[i][1] ? dout_01[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_01[i][0*BPP+BPP-1-:BPP]
                                                                                     : new_pos_x_r[i][1] ? dout_00[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_00[i][0*BPP+BPP-1-:BPP];
    assign m_axis_01_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? !new_pos_x_r[i][1] ? dout_10[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_10[i][0*BPP+BPP-1-:BPP]
                                                                                     :  new_pos_x_r[i][1] ? dout_11[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_11[i][0*BPP+BPP-1-:BPP]
                                                                 : new_pos_x_r[i][0] ? !new_pos_x_r[i][1] ? dout_00[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_00[i][0*BPP+BPP-1-:BPP]
                                                                                     :  new_pos_x_r[i][1] ? dout_01[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_01[i][0*BPP+BPP-1-:BPP];
    assign m_axis_10_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? new_pos_x_r[i][1] ? dout_01[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_01[i][0*BPP+BPP-1-:BPP]
                                                                                     : new_pos_x_r[i][1] ? dout_00[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_00[i][0*BPP+BPP-1-:BPP]
                                                                 : new_pos_x_r[i][0] ? new_pos_x_r[i][1] ? dout_11[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_11[i][0*BPP+BPP-1-:BPP]
                                                                                     : new_pos_x_r[i][1] ? dout_10[i][1*BPP+BPP-1-:BPP]
                                                                                                         : dout_10[i][0*BPP+BPP-1-:BPP];
    assign m_axis_11_tdata[i*BPP+BPP-1-:BPP] = new_pos_y_r[i][0] ? new_pos_x_r[i][0] ? !new_pos_x_r[i][1] ? dout_00[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_00[i][0*BPP+BPP-1-:BPP]
                                                                                     :  new_pos_x_r[i][1] ? dout_01[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_01[i][0*BPP+BPP-1-:BPP]
                                                                 : new_pos_x_r[i][0] ? !new_pos_x_r[i][1] ? dout_10[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_10[i][0*BPP+BPP-1-:BPP]
                                                                                     :  new_pos_x_r[i][1] ? dout_11[i][1*BPP+BPP-1-:BPP]
                                                                                                          : dout_11[i][0*BPP+BPP-1-:BPP];
  end
endgenerate   

always_ff @(posedge aclk)
begin
 if (!aresetn) begin
    m_axis_tvalid <= 0; 
    m_axis_tlast  <= 0; 
    m_axis_tuser  <= 0; 
  end else begin 
    m_axis_tvalid <= out_tvalid;
    m_axis_tlast  <= out_tlast;
    m_axis_tuser  <= out_tuser;
  end
end

assign s_axis_tready = 1'b1; // TO DO

endmodule
