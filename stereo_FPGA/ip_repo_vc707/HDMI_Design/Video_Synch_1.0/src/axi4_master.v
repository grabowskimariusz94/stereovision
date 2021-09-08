//-----------------------------------------------------------------------------
//
// AXI Master
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axi3_master
//
// Last Update:
//   2/07/2013
//
//--------------------------------------------------------------------------
/*
 AXI Master Example
 
 The purpose of this design is to provide a high-throughput AXI3 example 
 and AXI throughput demonstration. 
 
 The example user application performs a simple memory
 test through continuous burst writes to memory, followed by burst
 reads.  The simple data pattern is checked and any data comparison or
 interface errors are latched with the example ERROR output.
 
 To modify this example for other applications, edit/remove the logic
 associated with the 'Example' section comments. For clarity, most
 transfer qualifiers are left as constants, but can be easily added
 to their associated channels.
 
 The latest version of this file can be found in Xilinx Answer 37425
 http://www.xilinx.com/support/answers/37425.htm
 */

`timescale 1ns/1ps

//Simple Log2 calculation function
`define C_LOG_2(n) (\
(n) <= (1<<0) ? 0 : (n) <= (1<<1) ? 1 :\
(n) <= (1<<2) ? 2 : (n) <= (1<<3) ? 3 :\
(n) <= (1<<4) ? 4 : (n) <= (1<<5) ? 5 :\
(n) <= (1<<6) ? 6 : (n) <= (1<<7) ? 7 :\
(n) <= (1<<8) ? 8 : (n) <= (1<<9) ? 9 :\
(n) <= (1<<10) ? 10 : (n) <= (1<<11) ? 11 :\
(n) <= (1<<12) ? 12 : (n) <= (1<<13) ? 13 :\
(n) <= (1<<14) ? 14 : (n) <= (1<<15) ? 15 :\
(n) <= (1<<16) ? 16 : (n) <= (1<<17) ? 17 :\
(n) <= (1<<18) ? 18 : (n) <= (1<<19) ? 19 :\
(n) <= (1<<20) ? 20 : (n) <= (1<<21) ? 21 :\
(n) <= (1<<22) ? 22 : (n) <= (1<<23) ? 23 :\
(n) <= (1<<24) ? 24 : (n) <= (1<<25) ? 25 :\
(n) <= (1<<26) ? 26 : (n) <= (1<<27) ? 27 :\
(n) <= (1<<28) ? 28 : (n) <= (1<<29) ? 29 :\
(n) <= (1<<30) ? 30 : (n) <= (1<<31) ? 31 : 32)

module axi4_master #
  (
    parameter img_size=(960*2160*16), // Rozdzielczo�� obrazu (dlaczego taki - bo jeden zapis to 4 bajty)
    parameter BURST_SIZE=16*8, // Rozmiar "burstu" 8 x 128 bitow

    parameter integer SAMPLES_PER_CLOCK = 4, // Number of samples per clock
    parameter integer BITS_PER_PIXEL    = 24, // Width of component data
    parameter integer TDATA_WIDTH       = SAMPLES_PER_CLOCK*BITS_PER_PIXEL, // Width of TDATA

    parameter C_M_AXI_PROTOCOL = "AXI3",
    parameter integer C_M_AXI_THREAD_ID_WIDTH = 1,
    parameter integer C_M_AXI_ADDR_WIDTH = 49, // wartosc zwiazna z US+
    parameter integer C_M_AXI_DATA_WIDTH = 128, // tu zmiana szeroko�ci danych
    parameter integer C_M_AXI_AWUSER_WIDTH = 1,
    parameter integer C_M_AXI_ARUSER_WIDTH = 1,
    parameter integer C_M_AXI_WUSER_WIDTH = 1,
    parameter integer C_M_AXI_RUSER_WIDTH = 1,
    parameter integer C_M_AXI_BUSER_WIDTH = 1,

    /* Disabling these parameters will remove any throttling.
    The resulting ERROR flag will not be useful */
    parameter integer C_M_AXI_SUPPORTS_WRITE = 1,
    parameter integer C_M_AXI_SUPPORTS_READ = 1,

    /* Max count of written but not yet read bursts.
    If the interconnect/slave is able to accept enough
    addresses and the read channels are stalled, the
    master will issue this many commands ahead of 
    write responses */
    parameter integer C_INTERCONNECT_M_AXI_WRITE_ISSUING = 8,

    ////////////////////////////
    // Example design parameters
    ////////////////////////////

    // Base address of targeted slave
    parameter C_M_AXI_TARGET = 'h00000000,

    // Number of address bits to test before wrapping   
    parameter integer C_OFFSET_WIDTH = 9,

    /* Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
    Non-2^n lengths will eventually cause bursts across 4K
    address boundaries.*/
    parameter integer C_M_AXI_BURST_LEN = 16
)
   (
    // System Signals
    input wire 				      ACLK,
    input wire 				      ARESETN,

    // Master Interface Write Address
    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M_AXI_AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      M_AXI_AWADDR,
    output wire [8-1:0] 		      M_AXI_AWLEN,
    output wire [3-1:0] 		      M_AXI_AWSIZE,
    output wire [2-1:0] 		      M_AXI_AWBURST,
    output wire 			      M_AXI_AWLOCK,
    output wire [4-1:0] 		      M_AXI_AWCACHE,
    output wire [3-1:0] 		      M_AXI_AWPROT,
    //output wire [4-1:0]                  M_AXI_AWREGION,
    output wire [4-1:0] 			 M_AXI_AWQOS, // AXI4 output wire [4-1:0] 			 M_AXI_AWQOS,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]    M_AXI_AWUSER,
    output wire 			      M_AXI_AWVALID,
    input wire 				      M_AXI_AWREADY,

    // Master Interface Write Data
    //output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M_AXI_WID,
    output wire [C_M_AXI_DATA_WIDTH-1:0]      M_AXI_WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]    M_AXI_WSTRB,
    output wire 			      M_AXI_WLAST,
    //output wire [C_M_AXI_WUSER_WIDTH-1:0]     M_AXI_WUSER,
    output wire 			      M_AXI_WVALID,
    input wire 				      M_AXI_WREADY,

    // Master Interface Write Response
    input wire [C_M_AXI_THREAD_ID_WIDTH-1:0]  M_AXI_BID,
    input wire [2-1:0] 			      M_AXI_BRESP,
    //input wire [C_M_AXI_BUSER_WIDTH-1:0]      M_AXI_BUSER,
    input wire 				      M_AXI_BVALID,
    output wire 			      M_AXI_BREADY,

    // Master Interface Read Address
    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M_AXI_ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      M_AXI_ARADDR,
    output wire [8-1:0] 		      M_AXI_ARLEN,
    output wire [3-1:0] 		      M_AXI_ARSIZE,
    output wire [2-1:0] 		      M_AXI_ARBURST,
    output wire [2-1:0] 		      M_AXI_ARLOCK,
    output wire [4-1:0] 		      M_AXI_ARCACHE,
    output wire [3-1:0] 		      M_AXI_ARPROT,
    // AXI3 output wire [4-1:0] 		 M_AXI_ARREGION,
    output wire [4-1:0] 			 M_AXI_ARQOS,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]    M_AXI_ARUSER,
    output wire 			      M_AXI_ARVALID,
    input wire 				      M_AXI_ARREADY,

    // Master Interface Read Data 
    input wire [C_M_AXI_THREAD_ID_WIDTH-1:0]  M_AXI_RID,
    input wire [C_M_AXI_DATA_WIDTH-1:0]       M_AXI_RDATA,
    input wire [2-1:0] 			      M_AXI_RRESP,
    input wire 				      M_AXI_RLAST,
    //input wire [C_M_AXI_RUSER_WIDTH-1:0]      M_AXI_RUSER,
    input wire 				      M_AXI_RVALID,
    output wire 			      M_AXI_RREADY,

    // Example Design
    input wire fifo_clk,
    //write fifo
    input wire [127:0]fifo_wr_data, // tu zmiana szeroko�ci danych
    input wire fifo_wr_en,
    //read fifo
    output wire [127:0]fifo_rd_data, // tu zmiana szeroko�ci danych
    input wire fifo_rd_en,
    //control intreface
    input wire frame_valid_wr,
    input wire frame_valid_rd,
    input wire tlast_wr,
    input wire tlast_rd,


    input wire init_done,
    output wire [3:0]status,
    output [11:0] fifo_rd_wr_data_count,
    output [11:0] fifo_rd_rd_data_count
);

    axi_mem_ctrl
    #(
    // dla 32 ma by� 4, a dla 64 chyba 8 , dla 128 ma byc 16 
    .img_size(img_size), // Rozdzielczo�� obrazu (dlaczego taki - bo jeden zapis to 4 bajty)
    .BURST_SIZE(BURST_SIZE), // Rozmiar "burstu" 8 x 128 bitow

    .SAMPLES_PER_CLOCK(SAMPLES_PER_CLOCK), // Number of samples per clock
    .BITS_PER_PIXEL(BITS_PER_PIXEL), // Width of component data
    .TDATA_WIDTH(TDATA_WIDTH), // Width of TDATA

    .C_M_AXI_ADDR_WIDTH(C_M_AXI_ADDR_WIDTH), // wartosc zwiazna z US+
    .C_M_AXI_DATA_WIDTH(C_M_AXI_DATA_WIDTH) // tu zmiana szeroko�ci danych
    ) ctrl_i
    (
        .clk(ACLK),
        .rst(ARESETN),
        //
        .fifo_clk(fifo_clk),
        //write fifo
        .fifo_wr_data(fifo_wr_data),
        .fifo_wr_en(fifo_wr_en),
        //read fifo
        .fifo_rd_data(fifo_rd_data),
        .fifo_rd_en(fifo_rd_en),
        //control intreface
        .frame_valid_wr(frame_valid_wr),
        .frame_valid_rd(frame_valid_rd),
        .tlast_wr(tlast_wr),
        .tlast_rd(tlast_rd),


        .init_done(init_done),
        //.ready(ready),
        .status(status),
        .fifo_rd_wr_data_count(fifo_rd_wr_data_count),
        .fifo_rd_rd_data_count(fifo_rd_rd_data_count),
        //axi interface
        .s_axi_awid(M_AXI_AWID),
        .s_axi_awaddr(M_AXI_AWADDR),
        .s_axi_awlen(M_AXI_AWLEN),
        .s_axi_awsize(M_AXI_AWSIZE),
        .s_axi_awburst(M_AXI_AWBURST),
        .s_axi_awlock(M_AXI_AWLOCK),
        .s_axi_awcache(M_AXI_AWCACHE),
        .s_axi_awprot(M_AXI_AWPROT),
        .s_axi_awqos(M_AXI_AWQOS),
        .s_axi_awvalid(M_AXI_AWVALID),
        .s_axi_awready(M_AXI_AWREADY),
        // Slave Interface Write Data Ports
        //.s_axi_wid(M_AXI_WID),
        .s_axi_wdata(M_AXI_WDATA),
        .s_axi_wstrb(M_AXI_WSTRB),
        .s_axi_wlast(M_AXI_WLAST),
        .s_axi_wvalid(M_AXI_WVALID),
        .s_axi_wready(M_AXI_WREADY),
        // Slave Interface Write Response Ports
        .s_axi_bready(M_AXI_BREADY),
        .s_axi_bid(M_AXI_BID),
        .s_axi_bresp(M_AXI_BRESP),
        .s_axi_bvalid(M_AXI_BVALID),
        // Slave Interface Read Address Ports
        .s_axi_arid(M_AXI_ARID),
        .s_axi_araddr(M_AXI_ARADDR),
        .s_axi_arlen(M_AXI_ARLEN),
        .s_axi_arsize(M_AXI_ARSIZE),
        .s_axi_arburst(M_AXI_ARBURST),
        .s_axi_arlock(M_AXI_ARLOCK),
        .s_axi_arcache(M_AXI_ARCACHE),
        .s_axi_arprot(M_AXI_ARPROT),
        .s_axi_arqos(M_AXI_ARQOS),
        .s_axi_arvalid(M_AXI_ARVALID),
        .s_axi_arready(M_AXI_ARREADY),
        // Slave Interface Read Data Ports
        .s_axi_rready(M_AXI_RREADY),
        .s_axi_rid(M_AXI_RID),
        .s_axi_rdata(M_AXI_RDATA),
        .s_axi_rresp(M_AXI_RRESP),
        .s_axi_rlast(M_AXI_RLAST),
        .s_axi_rvalid(M_AXI_RVALID)
    );
    //Set User[0] to 1 to allow Zynq coherent ACP transactions   
    assign M_AXI_AWUSER = 'b1;

    //assign M_AXI_WUSER = 'b0;
    //Set User[0] to 1 to allow Zynq coherent ACP transactions     
    assign M_AXI_ARUSER = 'b1;

    /*
   // A fancy terminal counter, using extra bits to reduce decode logic
   localparam integer 				 C_WLEN_COUNT_WIDTH = `C_LOG_2(C_M_AXI_BURST_LEN-2)+2;
   reg [C_WLEN_COUNT_WIDTH-1:0] 		 wlen_count; 

   // Local address counters
   reg [C_OFFSET_WIDTH-1:0] 			 araddr_offset = 'b0;
   reg [C_OFFSET_WIDTH-1:0] 			 awaddr_offset = 'b0;

   // Example throttling counters
   reg [`C_LOG_2(C_INTERCONNECT_M_AXI_WRITE_ISSUING)-1:0] 	 unread_writes;
   reg [`C_LOG_2(C_INTERCONNECT_M_AXI_WRITE_ISSUING)-1:0] 	 aw_issue_count;
   reg [`C_LOG_2(C_INTERCONNECT_M_AXI_WRITE_ISSUING)-1:0] 	 w_issue_count;

   // Throttling flags
   reg 						 aw_throttle;
   reg 						 w_throttle;
   reg 						 ar_throttle;

   // Example user application signals
   reg 						 read_mismatch;
   reg 						 error_reg;
   reg [C_OFFSET_WIDTH-1:0] 			 data_gen; //optimized for example design
   reg [C_OFFSET_WIDTH-1:0]                      wdata; //optimized for example design
  
   // Interface response error flags
   wire 					 write_resp_error;
   wire 					 read_resp_error; 

   // AXI4 temp signals
   reg 						 awvalid;
   wire 					 wlast;
   reg 						 wvalid;
   reg 						 bready;
   reg 						 arvalid; 
   reg 						 rready;   
   
   wire 					 wnext;
   */
    /////////////////
    //I/O Connections
    /////////////////
    //////////////////// 
    //Write Address (AW)
    ////////////////////

    // Single threaded   
    /*assign M_AXI_AWID = 'b0;   

// The AXI address is a concatenation of the target base address + active offset range
assign M_AXI_AWADDR = {C_M_AXI_TARGET[C_M_AXI_ADDR_WIDTH-1:C_OFFSET_WIDTH],awaddr_offset};

//Burst LENgth is number of transaction beats, minus 1
assign M_AXI_AWLEN = C_M_AXI_BURST_LEN - 1;

// Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
assign M_AXI_AWSIZE = `C_LOG_2(C_M_AXI_DATA_WIDTH/8);

// INCR burst type is usually used, except for keyhole bursts
assign M_AXI_AWBURST = 2'b01;
assign M_AXI_AWLOCK = 1'b0;

// Not Allocated, Modifiable and Bufferable
assign M_AXI_AWCACHE = 4'b0011;
assign M_AXI_AWPROT = 3'h0;
assign M_AXI_AWQOS = 4'h0;


assign M_AXI_AWVALID = awvalid;

///////////////
//Write Data(W)
///////////////
assign M_AXI_WDATA = wdata;

//All bursts are complete and aligned in this example
assign M_AXI_WID = 'b0;
assign M_AXI_WSTRB = {(C_M_AXI_DATA_WIDTH/8){1'b1}};
assign M_AXI_WLAST = wlast;

assign M_AXI_WVALID = wvalid;

////////////////////
//Write Response (B)
////////////////////
assign M_AXI_BREADY = bready;

///////////////////   
//Read Address (AR)
///////////////////
assign M_AXI_ARID = 'b0;   
assign M_AXI_ARADDR = {C_M_AXI_TARGET[C_M_AXI_ADDR_WIDTH-1:C_OFFSET_WIDTH],araddr_offset};

//Burst LENgth is number of transaction beats, minus 1
assign M_AXI_ARLEN = C_M_AXI_BURST_LEN - 1;

// Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
assign M_AXI_ARSIZE = `C_LOG_2(C_M_AXI_DATA_WIDTH/8);

// INCR burst type is usually used, except for keyhole bursts
assign M_AXI_ARBURST = 2'b01;
assign M_AXI_ARLOCK = 1'b0;
   
// Not Allocated, Modifiable and Bufferable
assign M_AXI_ARCACHE = 4'b0011;
assign M_AXI_ARPROT = 3'h0;
assign M_AXI_ARQOS = 4'h0;


assign M_AXI_ARVALID = arvalid;

////////////////////////////
//Read and Read Response (R)
////////////////////////////
assign M_AXI_RREADY = rready;

////////////////////
//Example design I/O
////////////////////
assign ERROR = error_reg;

////////////////////////////////////////////////
//Reset logic, workaround for AXI_BRAM CR#582705
////////////////////////////////////////////////  
reg aresetn_r = 1'b0;
reg aresetn_r1 = 1'b0;
reg aresetn_r2 = 1'b0;
reg aresetn_r3 = 1'b0;
reg aresetn_r4 = 1'b0;

always @(posedge ACLK) 
begin
   aresetn_r <= ARESETN;
   aresetn_r1 <= aresetn_r;
   aresetn_r2 <= aresetn_r1;
   aresetn_r3 <= aresetn_r2;
   aresetn_r4 <= aresetn_r3;
end
   */
    ///////////////////////
    //Write Address Channel
    ///////////////////////
    /*
 The purpose of the write address channel is to request the address and 
 command information for the entire transaction.  It is a single beat
 of data for each burst.
 
 The AXI4 Write address channel in this example will continue to initiate
 write commands as fast as it is allowed by the slave/interconnect.
 
 The address will be incremented on each accepted address transaction,
 until wrapping on the C_OFFSET_WIDTH boundary with awaddr_offset.
 */
    //always @(posedge ACLK)
    //  begin

    //     /* Delay write address channel by a few cycles for CR#582705
    //      Only necessary when point2point to AXI_BRAM slave */
    //     if (aresetn_r4 == 0 )
    //       //if (ARESETN == 0)
    //       awvalid <= 1'b0; 

    //     // If previously not valid and no throttling, start next transaction
    //     else if (C_M_AXI_SUPPORTS_WRITE && awvalid==0 && aw_throttle == 0)
    //       awvalid <= 1'b1;

    //     /* Once asserted, VALIDs cannot be deasserted, so AWVALID
    //      must wait until transaction is accepted before throttling */
    //     else if (M_AXI_AWREADY && awvalid && aw_throttle)
    //       awvalid <= 1'b0; 
    //     else
    //       awvalid <= awvalid;    
    //  end


    //// Next address after AWREADY indicates previous address acceptance
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    //       awaddr_offset <= 'b0;
    //     else if (M_AXI_AWREADY && awvalid)
    //       awaddr_offset <= awaddr_offset + C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8;
    //     else
    //       awaddr_offset <= awaddr_offset;
    //  end

    //////////////////////
    ////Write Data Channel
    //////////////////////
    ///* 
    // The write data will continually try to push write data across the interface.

    // The amount of data accepted will depend on the AXI slave and the AXI
    // Interconnect settings, such as if there are FIFOs enabled in interconnect. 

    // Note that there is no explicit timing relationship to the write address channel.
    // The write channel has its own throttling flag, separate from the AW channel.

    // Synchronization between the channels must be determined by the user.

    // The simpliest but lowest performance would be to only issue one address write
    // and write data burst at a time.

    // In this example they are kept in sync by using the same address increment
    // and burst sizes. Then the AW and W channels have their transactions measured
    // with threshold counters as part of the user logic, to make sure neither 
    // channel gets too far ahead of each other. 
    // */

    //// Forward movement occurs when the channel is valid and ready
    //assign wnext = M_AXI_WREADY & wvalid;

    //// WVALID logic, similar to the AWVALID always block above
    //always @(posedge ACLK)
    //  begin
    //     if (aresetn_r4 == 0 )
    //     //if (ARESETN == 0)
    //       wvalid <= 1'b0; 

    //     // If previously not valid and not throttling, start next transaction
    //     else if (C_M_AXI_SUPPORTS_WRITE && wvalid==0 && w_throttle == 0)
    //       wvalid <= 1'b1;

    //     /* If WREADY and too many writes, throttle WVALID
    //      Once asserted, VALIDs cannot be deasserted, so WVALID
    //      must wait until burst is complete with WLAST */
    //     else if (wnext && wlast && w_throttle)
    //       wvalid <= 1'b0; 
    //     else
    //       wvalid <= wvalid;    
    //  end

    ////WLAST generation on the MSB of a counter underflow
    //assign wlast = wlen_count[C_WLEN_COUNT_WIDTH-1];

    ///* Burst length counter. Uses extra counter register bit to indicate terminal
    // count to reduce decode logic */    
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0 || (wnext && wlen_count[C_WLEN_COUNT_WIDTH-1]))
    //  	  wlen_count <= C_M_AXI_BURST_LEN - 2;
    //     else if (wnext)
    //  	  wlen_count <= wlen_count - 1;
    //     else
    //  	  wlen_count <= wlen_count;
    //  end

    ///* Write Data Generator
    // Data pattern is only a simple incrementing count from 0 for each burst  */
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    //       wdata <= 'b0;
    //     else if (wnext && wlast)
    //       wdata <= 'b0;
    //     else if (wnext)
    //       wdata <= wdata + 1;
    //     else
    //       wdata <= wdata;
    //  end

    //////////////////////////////
    ////Write Response (B) Channel
    //////////////////////////////
    ///* 
    // The write response channel provides feedback that the write has committed
    // to memory. BREADY will occur when all of the data and the write address
    // has arrived and been accepted by the slave.

    // The write issuance (number of outstanding write addresses) is started by 
    // the Address Write transfer, and is completed by a BREADY/BRESP.

    // While negating BREADY will eventually throttle the AWREADY signal, 
    // it is best not to throttle the whole data channel this way.

    // The BRESP bit [1] is used indicate any errors from the interconnect or
    // slave for the entire write burst. This example will capture the error 
    // into the ERROR output. 
    // */

    ////Always accept write responses
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    // 	  bready <= 1'b0;
    //      else
    // 	  bready <= C_M_AXI_SUPPORTS_WRITE;
    // end

    ////Flag any write response errors   
    //assign write_resp_error = bready & M_AXI_BVALID & M_AXI_BRESP[1];

    ////////////////////////   
    ////Read Address Channel
    ////////////////////////
    ///* 
    // The Read Address Channel (AW) provides a similar function to the
    // Write Address channel- to provide the tranfer qualifiers for the 
    // burst.

    // In this example, the read address increments in the same
    // manner as the write address channel.
    // */
    //always @(posedge ACLK) 
    //  begin
    //     if (ARESETN == 0)
    //       begin
    //	  arvalid <= 1'b0;
    //	  araddr_offset  <= 'b0;
    //       end
    //     else if (arvalid && M_AXI_ARREADY)
    //       begin
    //	  arvalid <= 1'b0;
    //	  araddr_offset <= araddr_offset + C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8;
    //       end
    //     else if (C_M_AXI_SUPPORTS_READ && ar_throttle == 0)
    //       begin
    //	  arvalid <= 1'b1;
    //	  araddr_offset <= araddr_offset;
    //       end
    //     else
    //       begin
    //	  arvalid <= arvalid;
    //	  araddr_offset <= araddr_offset;
    //       end
    //  end

    ////////////////////////////////////   
    ////Read Data (and Response) Channel
    ////////////////////////////////////
    ///* 
    // The Read Data channel returns the results of the read request 

    // In this example the data checker is always able to accept
    // more data, so no need to throttle the RREADY signal 
    // */ 
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    // 	  rready <= 1'b0;
    //      else
    // 	  rready <= C_M_AXI_SUPPORTS_READ;
    //   end

    ////Check received read data against data generator
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    // 	  read_mismatch <= 1'b0;

    //     //Only check data when RVALID is active
    //      else if ((M_AXI_RVALID && rready) && (M_AXI_RDATA != data_gen))
    // 	  read_mismatch <= 1'b1;
    //      else
    // 	  read_mismatch <= 1'b0;
    //   end
    //assign read_resp_error = rready & M_AXI_RVALID & M_AXI_RRESP[1];


    ////////////////////////////////////////////
    ////Example design read check data generator
    ////////////////////////////////////////////

    ////Generate expected read data to check against actual read data
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    //       data_gen <= 'b0;

    //     //On a handshaked cycle, reset if last transfer, otherwise increment
    //     else if (M_AXI_RVALID && rready)
    //       begin
    //	  if (M_AXI_RLAST)
    //	    data_gen <= 'b0;
    //	  else
    //	    data_gen <= data_gen + 1;
    //       end
    //     else
    //       data_gen <= data_gen;
    //  end

    /////////////////////////////////
    ////Example design error register
    /////////////////////////////////

    //// Register and hold any data mismatches, or read/write interface errors 
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    //       error_reg <= 1'b0;
    //     else if (read_mismatch || write_resp_error || read_resp_error)
    //       error_reg <= 1'b1;
    //     else
    //       error_reg <= error_reg;
    //  end

    /////////////////////////////
    ////Example design throttling
    /////////////////////////////
    ///* 
    // For maximum port throughput, this user example code will try to allow
    // each channel to run as independently and as quickly as possible.

    // However, there are times when the flow of data needs to be throtted by
    // the user application. This example application requires that data is
    // not read before it is written and that the write channels do not
    // advance beyond an arbitrary threshold (say to prevent an 
    // overrun of the current read address by the write address).

    // From AXI4 Specification, 13.13.1: "If a master requires ordering between 
    // read and write transactions, it must ensure that a response is received 
    // for the previous transaction before issuing the next transaction."

    // This example accomplishes this user application throttling through:
    // -Reads wait for writes to fully complete
    // -Address writes wait when not read + issued transaction counts pass 
    // a parameterized threshold
    // -Writes wait when a not read + active data burst count pass 
    // a parameterized threshold 
    // */

    //// Up/down counter of accepted, but not completed, write address commands   
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    //       aw_issue_count <= 'b0;
    //     else if (bready && M_AXI_BVALID && M_AXI_AWVALID && M_AXI_AWREADY)
    //       aw_issue_count <= aw_issue_count;
    //     else if (bready && M_AXI_BVALID)
    //       aw_issue_count <= aw_issue_count - 1;
    //     else if (M_AXI_AWVALID && M_AXI_AWREADY)
    //       aw_issue_count <= aw_issue_count + 1;
    //     else
    //       aw_issue_count <= aw_issue_count;
    //  end

    //// Up/down counter of bursts of data written, but not completed with BREADY   
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    //       w_issue_count <= 'b0;
    //     else if (bready && M_AXI_BVALID && (M_AXI_WLAST & M_AXI_WVALID && M_AXI_WREADY))
    //       w_issue_count <= w_issue_count;
    //     else if (bready && M_AXI_BVALID)
    //       w_issue_count <= w_issue_count - 1;
    //     else if (M_AXI_WLAST & M_AXI_WVALID && M_AXI_WREADY)
    //       w_issue_count <= w_issue_count + 1;
    //     else
    //       w_issue_count <= w_issue_count;
    //  end

    //// Up/down counter of writes that have been completed, but not yet read
    //always @(posedge ACLK)
    //  begin
    //     if (ARESETN == 0)
    // 	  unread_writes <= 'b0;
    //      else if (bready && M_AXI_BVALID && M_AXI_ARVALID && M_AXI_ARREADY)
    // 	  unread_writes <= unread_writes;
    //      else if (bready && M_AXI_BVALID)
    // 	  unread_writes <= unread_writes + 1;
    //      else if (M_AXI_ARVALID && M_AXI_ARREADY)
    // 	  unread_writes <= unread_writes - 1;
    //      else
    // 	  unread_writes <= unread_writes;
    //  end 

    ///*If there are fully completed writes, allow reads to start
    //  If the write logic is removed, never throttle reads */
    //always @(unread_writes)
    //  begin
    //     if (unread_writes > 0 || C_M_AXI_SUPPORTS_WRITE == 0)
    //       ar_throttle = 1'b0;
    //     else
    //       ar_throttle = 1'b1;
    //  end

    ///* If reads supported and the number of completed but not read bursts + 
    //issued but not yet completed write addresses is equal or greater than a threshold,
    // throttle the address write channel. */ 
    //always @(aw_issue_count,unread_writes)
    //  begin
    //     if (C_M_AXI_SUPPORTS_READ && (aw_issue_count + unread_writes >= C_INTERCONNECT_M_AXI_WRITE_ISSUING))
    //       aw_throttle = 1'b1;
    //     else
    //       aw_throttle = 1'b0;
    //  end

    ///* If the number of completed but not read bursts + issued but not
    // yet completed write addresses is equal or greater than a threshold,
    // throttle the address write channel. */    
    //always @(w_issue_count,unread_writes)
    //  begin
    //     if (C_M_AXI_SUPPORTS_READ && (w_issue_count + unread_writes >= C_INTERCONNECT_M_AXI_WRITE_ISSUING))
    //       w_throttle = 1'b1;
    //     else
    //       w_throttle = 1'b0;
    //  end	

endmodule
