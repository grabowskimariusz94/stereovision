`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:     AGH 
// Engineer:    Tomasz Kryjak
// 
// Create Date: 11.05.2018 12:40:12
// Design Name: 
// Module Name: fos
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
module axi4_master_if #
(
    
    parameter img_size=(960*2160*16), // Rozdzielczo�� obrazu (dlaczego taki - bo jeden zapis to 4 bajty)
    parameter BURST_SIZE=16*8, // Rozmiar "burstu" 8 x 128 bitow

    parameter integer SAMPLES_PER_CLOCK = 4, // Number of samples per clock
    parameter integer BITS_PER_PIXEL    = 24, // Width of component data
    parameter integer TDATA_WIDTH       = SAMPLES_PER_CLOCK*BITS_PER_PIXEL, // Width of TDATA

    // AXI Interface
    parameter C_M_AXI_PROTOCOL = "AXI3",
    parameter integer C_M_AXI_THREAD_ID_WIDTH = 6,
    parameter integer C_M_AXI_ADDR_WIDTH = 49, // wartosc zwiazana z US+
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
    input wire                       ACLK,
    input wire                       ARESETN,

    // Master Interface Write Address
    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M0_AXI_AWID, //
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      M0_AXI_AWADDR, //
    output wire [8-1:0]               M0_AXI_AWLEN, //
    output wire [3-1:0]               M0_AXI_AWSIZE, //
    output wire [2-1:0]               M0_AXI_AWBURST, //
    output wire                   M0_AXI_AWLOCK, //
    output wire [4-1:0]               M0_AXI_AWCACHE, //
    output wire [3-1:0]               M0_AXI_AWPROT, //
    //output wire [4-1:0]                  M_AXI_AWREGION,
    output wire [4-1:0]              M0_AXI_AWQOS, //   // AXI4 output wire [4-1:0]              M_AXI_AWQOS,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]    M0_AXI_AWUSER, //
    output wire                   M0_AXI_AWVALID, //
    input wire                       M0_AXI_AWREADY, //

    // Master Interface Write Data
    //output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M_AXI_WID,
    output wire [C_M_AXI_DATA_WIDTH-1:0]      M0_AXI_WDATA, //
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]    M0_AXI_WSTRB, //
    output wire                   M0_AXI_WLAST, //
    //output wire [C_M_AXI_WUSER_WIDTH-1:0]     M_AXI_WUSER,
    output wire                   M0_AXI_WVALID, //
    input wire                       M0_AXI_WREADY, //

    // Master Interface Write Response
    input wire [C_M_AXI_THREAD_ID_WIDTH-1:0]  M0_AXI_BID, //
    input wire [2-1:0]                   M0_AXI_BRESP, //
    //input wire [C_M_AXI_BUSER_WIDTH-1:0]      M_AXI_BUSER,
    input wire                       M0_AXI_BVALID, //
    output wire                   M0_AXI_BREADY, //

    // Master Interface Read Address
    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M0_AXI_ARID, //
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      M0_AXI_ARADDR, //
    output wire [8-1:0]               M0_AXI_ARLEN, //
    output wire [3-1:0]               M0_AXI_ARSIZE, //
    output wire [2-1:0]               M0_AXI_ARBURST, //
    output wire [2-1:0]               M0_AXI_ARLOCK, //
    output wire [4-1:0]               M0_AXI_ARCACHE, //
    output wire [3-1:0]               M0_AXI_ARPROT, //
    // AXI3 output wire [4-1:0]          M_AXI_ARREGION,
    output wire [4-1:0]              M0_AXI_ARQOS, //
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]    M0_AXI_ARUSER, //
    output wire                   M0_AXI_ARVALID, //
    input wire                       M0_AXI_ARREADY, //

    // Master Interface Read Data 
    input wire [C_M_AXI_THREAD_ID_WIDTH-1:0]  M0_AXI_RID, //
    input wire [C_M_AXI_DATA_WIDTH-1:0]       M0_AXI_RDATA, //
    input wire [2-1:0]                   M0_AXI_RRESP, //
    input wire                       M0_AXI_RLAST, //
    //input wire [C_M_AXI_RUSER_WIDTH-1:0]      M_AXI_RUSER,
    input wire                       M0_AXI_RVALID, //
    output wire                   M0_AXI_RREADY, //

    // Master Interface Write Address
//    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0]  M1_AXI_AWID, //
//    output wire [C_M_AXI_ADDR_WIDTH-1:0]       M1_AXI_AWADDR, //
//    output wire [8-1:0]                        M1_AXI_AWLEN, //
//    output wire [3-1:0]                        M1_AXI_AWSIZE, //
//    output wire [2-1:0]                        M1_AXI_AWBURST, //
//    output wire                                M1_AXI_AWLOCK, //
//    output wire [4-1:0]                        M1_AXI_AWCACHE, //
//    output wire [3-1:0]                        M1_AXI_AWPROT, //
//    //output wire [4-1:0]                  M_AXI_AWREGION,
//    output wire [4-1:0]                        M1_AXI_AWQOS, //   // AXI4 output wire [4-1:0]              M_AXI_AWQOS,
//    output wire [C_M_AXI_AWUSER_WIDTH-1:0]     M1_AXI_AWUSER, //
//    output wire                                M1_AXI_AWVALID, //
//    input wire                                 M1_AXI_AWREADY, //
//
//    // Master Interface Write Data
//    //output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M_AXI_WID,
//    output wire [C_M_AXI_DATA_WIDTH-1:0]       M1_AXI_WDATA, //
//    output wire [C_M_AXI_DATA_WIDTH/8-1:0]     M1_AXI_WSTRB, //
//    output wire                                M1_AXI_WLAST, //
//    //output wire [C_M_AXI_WUSER_WIDTH-1:0]     M_AXI_WUSER,
//    output wire                                M1_AXI_WVALID, //
//    input wire                                 M1_AXI_WREADY, //
//
//    // Master Interface Write Response
//    input wire [C_M_AXI_THREAD_ID_WIDTH-1:0]   M1_AXI_BID, //
//    input wire [2-1:0]                         M1_AXI_BRESP, //
//    //input wire [C_M_AXI_BUSER_WIDTH-1:0]      M_AXI_BUSER,
//    input wire                                 M1_AXI_BVALID, //
//    output wire                                M1_AXI_BREADY, //
//
//    // Master Interface Read Address
//    output wire [C_M_AXI_THREAD_ID_WIDTH-1:0]  M1_AXI_ARID, //
//    output wire [C_M_AXI_ADDR_WIDTH-1:0]       M1_AXI_ARADDR, //
//    output wire [8-1:0]                        M1_AXI_ARLEN, //
//    output wire [3-1:0]                        M1_AXI_ARSIZE, //
//    output wire [2-1:0]                        M1_AXI_ARBURST, //
//    output wire [2-1:0]                        M1_AXI_ARLOCK, //
//    output wire [4-1:0]                        M1_AXI_ARCACHE, //
//    output wire [3-1:0]                        M1_AXI_ARPROT, //
//    // AXI3 output wire [4-1:0]          M_AXI_ARREGION,
//    output wire [4-1:0]                        M1_AXI_ARQOS, //
//    output wire [C_M_AXI_ARUSER_WIDTH-1:0]     M1_AXI_ARUSER, //
//    output wire                                M1_AXI_ARVALID, //
//    input wire                                 M1_AXI_ARREADY, //
//
//    // Master Interface Read Data 
//    input wire [C_M_AXI_THREAD_ID_WIDTH-1:0]   M1_AXI_RID, //
//    input wire [C_M_AXI_DATA_WIDTH-1:0]        M1_AXI_RDATA, //
//    input wire [2-1:0]                         M1_AXI_RRESP, //
//    input wire                                 M1_AXI_RLAST, //
//    //input wire [C_M_AXI_RUSER_WIDTH-1:0]      M_AXI_RUSER,
//    input wire                                 M1_AXI_RVALID, //
//    output wire                                M1_AXI_RREADY, //

    // Custom Interface

    input wire pixel_clk, // zegar AXI Stream
    input [3:0] sw, // multiplekser
    // PIXEL DATA INPUT
    input [TDATA_WIDTH-1:0] tdata_pixel_in,
    output tready_pixel_in,
    input tuser_pixel_in,
    input tlast_pixel_in,
    input tvalid_pixel_in,

    // PIXEL DATA OUTPUT
    output [TDATA_WIDTH-1:0] tdata_pixel_out,
    input  tready_pixel_out,
    output tuser_pixel_out,
    output tlast_pixel_out,
    output tvalid_pixel_out,
    output [27 : 0] addr_pixel_out,
    output [3 : 0] state_pixel_out,


    // input [31:0] FD_THR,                // prog dla odejmowania sasiednich ramek
    // input [31:0] FOS_THR,               // prog dla segmentacji obiektow pierwszoplanowych

    output wire [3:0]status, // status kontrolera pamieci
    output [11:0] fifo_rd_wr_data_count,
    output [11:0] fifo_rd_rd_data_count
);


    // Mulitplekser dla sygnalow wyjsciowych 
    wire [C_M_AXI_DATA_WIDTH-1:0] pixel_mux [15:0];
    wire tready_mux_pixel [15:0];
    wire tready_mux_ram_read [15:0];
    wire tuser_mux [15:0];
    wire tlast_mux [15:0];
    wire tvalid_mux [15:0];


    wire [C_M_AXI_DATA_WIDTH-1:0] data_from_ram0;
//    wire [127:0] data_from_ram1;
    //wire [127:0] data_from_ram;              // wektor danych z RAM'u

    wire [C_M_AXI_DATA_WIDTH-1:0] data_to_ram0;
//    wire [127:0] data_to_ram1;
    //wire [127:0] data_to_ram;                // wektor danych do RAM'u
    wire write_data_to_ram; // flaga zapisu do RAM'u (we)
    wire read_data_from_ram; // flaga odczytu z RAM'u (re)  

    // Rejestry do opoznien sygnalu wejsciowego
    reg [TDATA_WIDTH-1:0] tdata_pixel_in_d = 0;
    reg [6:0] tuser_pixel_in_d_int = 0;
    reg [6:0] tlast_pixel_in_d_int = 0;
    reg [6:0] tvalid_pixel_in_d_int = 0;
	reg tuser_pixel_in_d = 0;
    reg tlast_pixel_in_d = 0;
    reg tvalid_pixel_in_d = 0;
	reg tuser_pixel_in_d2 = 0;
    reg tlast_pixel_in_d2 = 0;
    reg tvalid_pixel_in_d2 = 0;


    wire [7:0] FD_THR = 8'd10; // prog dla odejmowania sasiednich ramek
//    wire[31:0] FOS_THR = 32'd50;

    // Kontroler pamieci jako AXI4 MASTER
    axi4_master
    #(
    .img_size(img_size), // Rozdzielczo�� obrazu (dlaczego taki - bo jeden zapis to 4 bajty)
    .BURST_SIZE(BURST_SIZE), // Rozmiar "burstu" 8 x 128 bitow

    .SAMPLES_PER_CLOCK(SAMPLES_PER_CLOCK), // Number of samples per clock
    .BITS_PER_PIXEL(BITS_PER_PIXEL), // Width of component data
    .TDATA_WIDTH(TDATA_WIDTH), // Width of TDATA

    .C_M_AXI_PROTOCOL           (C_M_AXI_PROTOCOL),
    .C_M_AXI_THREAD_ID_WIDTH    (C_M_AXI_THREAD_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH         (C_M_AXI_ADDR_WIDTH), // wartosc zwiazna z US+
    .C_M_AXI_DATA_WIDTH         (C_M_AXI_DATA_WIDTH), // tu zmiana szeroko�ci danych
    .C_M_AXI_AWUSER_WIDTH       (C_M_AXI_AWUSER_WIDTH),
    .C_M_AXI_ARUSER_WIDTH       (C_M_AXI_ARUSER_WIDTH),
    .C_M_AXI_WUSER_WIDTH        (C_M_AXI_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH        (C_M_AXI_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH        (C_M_AXI_BUSER_WIDTH ),

    .C_M_AXI_SUPPORTS_WRITE (C_M_AXI_SUPPORTS_WRITE),
    .C_M_AXI_SUPPORTS_READ  (C_M_AXI_SUPPORTS_READ ),

    .C_INTERCONNECT_M_AXI_WRITE_ISSUING (C_INTERCONNECT_M_AXI_WRITE_ISSUING),

    .C_M_AXI_TARGET (C_M_AXI_TARGET),

    .C_OFFSET_WIDTH (C_OFFSET_WIDTH),

    .C_M_AXI_BURST_LEN (C_M_AXI_BURST_LEN)
    ) axi4_master_i_0 (
        .ACLK(ACLK),
        .ARESETN(ARESETN),

        // Master Interface Write Address
        .M_AXI_AWID(M0_AXI_AWID),
        .M_AXI_AWADDR(M0_AXI_AWADDR),
        .M_AXI_AWLEN(M0_AXI_AWLEN),
        .M_AXI_AWSIZE(M0_AXI_AWSIZE),
        .M_AXI_AWBURST(M0_AXI_AWBURST),
        .M_AXI_AWLOCK(M0_AXI_AWLOCK),
        .M_AXI_AWCACHE(M0_AXI_AWCACHE),
        .M_AXI_AWPROT(M0_AXI_AWPROT),
        //output wire [4-1:0]                  M_AXI_AWREGION,
        .M_AXI_AWQOS(M0_AXI_AWQOS), // AXI4 output wire [4-1:0]              M_AXI_AWQOS,
        .M_AXI_AWUSER(M0_AXI_AWUSER),
        .M_AXI_AWVALID(M0_AXI_AWVALID),
        .M_AXI_AWREADY(M0_AXI_AWREADY),

        // Master Interface Write Data
        //.M_AXI_WID(M_AXI_WID),
        .M_AXI_WDATA(M0_AXI_WDATA),
        .M_AXI_WSTRB(M0_AXI_WSTRB),
        .M_AXI_WLAST(M0_AXI_WLAST),
        //.M_AXI_WUSER(M_AXI_WUSER),
        .M_AXI_WVALID(M0_AXI_WVALID),
        .M_AXI_WREADY(M0_AXI_WREADY),

        // Master Interface Write Response
        .M_AXI_BID(M0_AXI_BID),
        .M_AXI_BRESP(M0_AXI_BRESP),
        //.M_AXI_BUSER(M_AXI_BUSER),
        .M_AXI_BVALID(M0_AXI_BVALID),
        .M_AXI_BREADY(M0_AXI_BREADY),

        // Master Interface Read Address
        .M_AXI_ARID(M0_AXI_ARID),
        .M_AXI_ARADDR(M0_AXI_ARADDR),
        .M_AXI_ARLEN(M0_AXI_ARLEN),
        .M_AXI_ARSIZE(M0_AXI_ARSIZE),
        .M_AXI_ARBURST(M0_AXI_ARBURST),
        .M_AXI_ARLOCK(M0_AXI_ARLOCK),
        .M_AXI_ARCACHE(M0_AXI_ARCACHE),
        .M_AXI_ARPROT(M0_AXI_ARPROT),
        // AXI3 output wire [4-1:0]          M_AXI_ARREGION,
        .M_AXI_ARQOS(M0_AXI_ARQOS), //output wire [4-1:0]              M_AXI_ARQOS,
        .M_AXI_ARUSER(M0_AXI_ARUSER),
        .M_AXI_ARVALID(M0_AXI_ARVALID),
        .M_AXI_ARREADY(M0_AXI_ARREADY),

        // Master Interface Read Data 
        .M_AXI_RID(M0_AXI_RID),
        .M_AXI_RDATA(M0_AXI_RDATA),
        .M_AXI_RRESP(M0_AXI_RRESP),
        .M_AXI_RLAST(M0_AXI_RLAST),
        //.M_AXI_RUSER(M_AXI_RUSER),
        .M_AXI_RVALID(M0_AXI_RVALID),
        .M_AXI_RREADY(M0_AXI_RREADY),

        // Custom
        .fifo_clk(pixel_clk),
        //write fifo
        .fifo_wr_data(data_to_ram0),
        .fifo_wr_en(write_data_to_ram),
        //read fifo
        .fifo_rd_data(data_from_ram0),
        .fifo_rd_en(read_data_from_ram),
        //control intreface
        .frame_valid_rd(tuser_pixel_in),
        .frame_valid_wr(tuser_pixel_in_d2),
        .tlast_rd(tlast_pixel_in),
        .tlast_wr(tlast_pixel_in_d2),

        .init_done(1'b1), // w tym przypadku inicjalizacja jest niejako domyslna
        .status(status),
        .fifo_rd_wr_data_count(fifo_rd_wr_data_count),
        .fifo_rd_rd_data_count(fifo_rd_rd_data_count)
    );

//    wire [48:0] tmp_raddr1; // dirty hack
//    wire [48:0] tmp_waddr1;

    // Kontroler pamieci jako AXI4 MASTER
    //axi4_master axi4_master_i_1 (
    //   .ACLK(ACLK),
    //   .ARESETN(ARESETN),
    //   
    //   // Master Interface Write Address
    //   .M_AXI_AWID(M1_AXI_AWID),
    //   .M_AXI_AWADDR(tmp_waddr1),
    //   .M_AXI_AWLEN(M1_AXI_AWLEN),
    //   .M_AXI_AWSIZE(M1_AXI_AWSIZE),
    //   .M_AXI_AWBURST(M1_AXI_AWBURST),
    //   .M_AXI_AWLOCK(M1_AXI_AWLOCK),
    //   .M_AXI_AWCACHE(M1_AXI_AWCACHE),
    //   .M_AXI_AWPROT(M1_AXI_AWPROT),
    //   //output wire [4-1:0]                  M_AXI_AWREGION,
    //   .M_AXI_AWQOS(M1_AXI_AWQOS),// AXI4 output wire [4-1:0]              M_AXI_AWQOS,
    //   .M_AXI_AWUSER(M1_AXI_AWUSER),
    //   .M_AXI_AWVALID(M1_AXI_AWVALID),
    //   .M_AXI_AWREADY(M1_AXI_AWREADY),
    //   
    //   // Master Interface Write Data
    //   //.M_AXI_WID(M_AXI_WID),
    //   .M_AXI_WDATA(M1_AXI_WDATA),
    //   .M_AXI_WSTRB(M1_AXI_WSTRB),
    //   .M_AXI_WLAST(M1_AXI_WLAST),
    //   //.M_AXI_WUSER(M_AXI_WUSER),
    //   .M_AXI_WVALID(M1_AXI_WVALID),
    //   .M_AXI_WREADY(M1_AXI_WREADY),
    //   
    //   // Master Interface Write Response
    //   .M_AXI_BID(M1_AXI_BID),
    //   .M_AXI_BRESP(M1_AXI_BRESP),
    //   //.M_AXI_BUSER(M_AXI_BUSER),
    //   .M_AXI_BVALID(M1_AXI_BVALID),
    //   .M_AXI_BREADY(M1_AXI_BREADY),
    //   
    //   // Master Interface Read Address
    //   .M_AXI_ARID(M1_AXI_ARID),
    //   .M_AXI_ARADDR(tmp_raddr1),
    //   .M_AXI_ARLEN(M1_AXI_ARLEN),
    //   .M_AXI_ARSIZE(M1_AXI_ARSIZE),
    //   .M_AXI_ARBURST(M1_AXI_ARBURST),
    //   .M_AXI_ARLOCK(M1_AXI_ARLOCK),
    //   .M_AXI_ARCACHE(M1_AXI_ARCACHE),
    //   .M_AXI_ARPROT(M1_AXI_ARPROT),
    //   // AXI3 output wire [4-1:0]          M_AXI_ARREGION,
    //   .M_AXI_ARQOS(M1_AXI_ARQOS),//output wire [4-1:0]              M_AXI_ARQOS,
    //   .M_AXI_ARUSER(M1_AXI_ARUSER),
    //   .M_AXI_ARVALID(M1_AXI_ARVALID),
    //   .M_AXI_ARREADY(M1_AXI_ARREADY),
    //   
    //   // Master Interface Read Data 
    //   .M_AXI_RID(M1_AXI_RID),
    //   .M_AXI_RDATA(M1_AXI_RDATA),
    //   .M_AXI_RRESP(M1_AXI_RRESP),
    //   .M_AXI_RLAST(M1_AXI_RLAST),
    //   //.M_AXI_RUSER(M_AXI_RUSER),
    //   .M_AXI_RVALID(M1_AXI_RVALID),
    //   .M_AXI_RREADY(M1_AXI_RREADY),
    //
    //   // Custom
    //   .fifo_clk(pixel_clk),
    //   //write fifo
    //   .fifo_wr_data(data_to_ram1),
    //   .fifo_wr_en(write_data_to_ram),
    //   //read fifo
    //   .fifo_rd_data(data_from_ram1),
    //   .fifo_rd_en(read_data_from_ram),
    //   //control intreface
    //   .frame_valid_rd(tuser_pixel_in), 
    //   .frame_valid_wr(tuser_pixel_in_d),    
    //   .tlast_rd(tlast_pixel_in),
    //   .tlast_wr(tlast_pixel_in_d),
    //      
    //   .init_done(1'b1) // w tym przypadku inicjalizacja jest niejako domyslna
    //   //.status(status)
    //);

//    assign M1_AXI_ARADDR = {19'b1, tmp_raddr1[29:0]};
//    assign M1_AXI_AWADDR = {19'b1, tmp_waddr1[29:0]};



//    reg [PIXEL_WIDTH-1:0] tdata_pixel_in_d2;
//    reg tuser_pixel_in_d2;
//    reg tlast_pixel_in_d2;
//    reg tvalid_pixel_in_d2;


//    assign pixel_out = tdata_pixel_in;
    //assign pixel_ram_out = data_from_ram;



    // Segmentacja
    // A. Odejmowanie sasiednich ramek
//    wire [7:0] dRD[3:0]; // CFD in red channel
//    wire [7:0] dGD[3:0]; // CFD in green channel
//    wire [7:0] dBD[3:0]; // CFD in blue channel    
    wire [TDATA_WIDTH-1:0] CFD; // CFD result
    wire [TDATA_WIDTH-1:0] CFD2; // CFD result

    genvar i;
    generate 
    for (i = 0; i < 4 ; i = i + 1) 
    begin 
        // assign dRD[i] = (tdata_pixel_in[24*i+16+:8] > data_from_ram [24*i+16+:8] ) ? (tdata_pixel_in[24*i+16+:8] - data_from_ram [24*i+16+:8]) : (data_from_ram[24*i+16+:8]-tdata_pixel_in[24*i+16+:8]);
        // assign dGD[i] = (tdata_pixel_in[24*i+8+:8] > data_from_ram [24*i+8+:8] ) ? (tdata_pixel_in[24*i+8+:8] - data_from_ram [24*i+8+:8]) : (data_from_ram[24*i+8+:8]-tdata_pixel_in[24*i+8+:8]);
        // assign dBD[i] = (tdata_pixel_in[24*i+:8] > data_from_ram [24*i+:8]  ) ? (tdata_pixel_in[24*i+:8]  - data_from_ram [24*i+:8] ) : (data_from_ram[24*i+:8] -tdata_pixel_in[24*i+:8]);
        // assign CFD[24*i+:24] = (dRD[i]+dGD[i]+dBD[i] > FD_THR) ? 24'b111111111111111111111111 : 0;
		assign CFD[8*i+:8] = (tdata_pixel_in_d[8*i+:8] > data_from_ram0 [8*i+:8] ) ? (((tdata_pixel_in_d[8*i+:8] - data_from_ram0 [8*i+:8])> FD_THR) ? 8'b11111111 : 0) : (((data_from_ram0[8*i+:8]-tdata_pixel_in_d[8*i+:8])>FD_THR) ? 8'b11111111 : 0); //for GRAY
		assign CFD2[8*i+:8] = (tdata_pixel_in_d[8*i+:8] > data_from_ram0 [(C_M_AXI_DATA_WIDTH-TDATA_WIDTH) + 8*i+:8] ) ? (((tdata_pixel_in_d[8*i+:8] - data_from_ram0 [(C_M_AXI_DATA_WIDTH-TDATA_WIDTH) + 8*i+:8])> FD_THR) ? 8'b11111111 : 0) : (((data_from_ram0[(C_M_AXI_DATA_WIDTH-TDATA_WIDTH) + 8*i+:8]-tdata_pixel_in_d[8*i+:8])>FD_THR) ? 8'b11111111 : 0); //for GRAY
		
	end
    endgenerate

    //// B. Odejmowanie od modelu tla
    //wire [7:0] dRF;             // CFD in red channel
    //wire [7:0] dGF;             // CFD in green channel
    //wire [7:0] dBF;             // CFD in blue channel
    //wire [23:0] FOS;           // CFD result

    //assign dRF = (tdata_pixel_in[23:16] > data_from_ram [23+24:16+24] ) ? (tdata_pixel_in[23:16] - data_from_ram [23+24:16+24]) : (data_from_ram[23+24:16+24]-tdata_pixel_in[23:16]);
    //assign dGF = (tdata_pixel_in[15:8] > data_from_ram [15+24:8+24] ) ? (tdata_pixel_in[15:8] - data_from_ram [15+24:8+24]) : (data_from_ram[15+24:8+24]-tdata_pixel_in[15:8]);
    //assign dBF = (tdata_pixel_in[7:0] > data_from_ram [7+24:0+24] ) ? (tdata_pixel_in[7:0] - data_from_ram [7+24:0+24]) : (data_from_ram[7+24:0+24]-tdata_pixel_in[7:0]);

    //assign FOS = (dRF+dGF+dBF > FOS_THR) ? 24'b111111111111111111111111 : 0;

    //// Aktaulizacja tla
    //wire [23:0] bg_model_0;

    //assign  bg_model_0 = data_from_ram [47:24];
    ////assign  bg_model_0 = data_from_ram[23:0];

    //reg  [23:0] bg_model_1;

    always @(posedge pixel_clk)
    begin

        // Opoznienie nadchodzecego piksela
        tdata_pixel_in_d <= tdata_pixel_in;
        tuser_pixel_in_d <= tuser_pixel_in;
        tlast_pixel_in_d <= tlast_pixel_in;
        tvalid_pixel_in_d <= tvalid_pixel_in;
		
		if(tvalid_pixel_in) begin
			tvalid_pixel_in_d_int <= {tvalid_pixel_in_d_int[5:0],tvalid_pixel_in};
			tuser_pixel_in_d_int <= {tuser_pixel_in_d_int[5:0],tuser_pixel_in};
			tlast_pixel_in_d_int <= {tlast_pixel_in_d_int[5:0],tlast_pixel_in};
		end
		
		tvalid_pixel_in_d2 <= tvalid_pixel_in ? tvalid_pixel_in_d_int[6] : 0;
		tuser_pixel_in_d2 <= tvalid_pixel_in ? tuser_pixel_in_d_int[6] : 0;
		tlast_pixel_in_d2 <= tvalid_pixel_in ? tlast_pixel_in_d_int[6] : 0;
		
        //    tdata_pixel_in_d2 <= tdata_pixel_in_d;

        //    //bg_model_1 <= bg_model_0;

        //    // Kanal R
        //    if ( tdata_pixel_in[23:16] > bg_model_0[23:16])
        //    begin
        //        bg_model_1[23:16] <= bg_model_0[23:16] + 1;
        //    end
        //    else
        //        if ( tdata_pixel_in[23:16] < bg_model_0[23:16])
        //        begin
        //            bg_model_1[23:16] <= bg_model_0[23:16] - 1;
        //        end
        //        else
        //        begin
        //            bg_model_1[23:16] <= bg_model_0[23:16];
        //        end

        //    // Kanal G    
        //    if ( tdata_pixel_in[15:8] > bg_model_0[15:8])
        //    begin
        //        bg_model_1[15:8] <= bg_model_0[15:8] + 1;
        //    end
        //    else
        //        if ( tdata_pixel_in[15:8] < bg_model_0[15:8])
        //        begin
        //            bg_model_1[15:8] <= bg_model_0[15:8] - 1;
        //        end
        //        else
        //        begin
        //            bg_model_1[15:8] <= bg_model_0[15:8];
        //        end

        //     // Kanal B    
        //     if ( tdata_pixel_in[7:0] > bg_model_0[7:0])
        //     begin
        //        bg_model_1[7:0] <= bg_model_0[7:0] + 1;
        //     end
        //     else
        //        if ( tdata_pixel_in[7:0] < bg_model_0[7:0])
        //        begin
        //            bg_model_1[7:0] <= bg_model_0[7:0] - 1;
        //        end
        //        else
        //        begin
        //            bg_model_1[7:0] <= bg_model_0[7:0];
        //        end

    end


    // Wykrywanie nowej ramki obrazu
    //wire new_frame;
    //assign new_frame = (tuser_pixel_in == 1'b1 && tuser_pixel_in_d == 1'b0) ? 1'b1 : 1'b0;

    // To ma zapenic odczyt jednego piksela
    assign read_data_from_ram = tvalid_pixel_in;

    // Tu na pewno dla konfiguracji d, d dziala

    assign write_data_to_ram = tvalid_pixel_in_d2; // sterowanie zapisem -- opozniony valid piksela
    //assign data_to_ram[PIXEL_WIDTH-1:0] =    tdata_pixel_in_d;            // zapis piksela do ram;u - CFD
    assign data_to_ram0[C_M_AXI_DATA_WIDTH-1:TDATA_WIDTH] = 0;
    assign data_to_ram0[TDATA_WIDTH-1:0] = tdata_pixel_in_d;
    //assign data_to_ram1[47:0] = tdata_pixel_in_d[95:48];
    //assign data_to_ram[47:24]=bg_model_1;                  // zapis modelu do ram'u 
    //assign data_to_ram[23:0]=bg_model_1;            // zapis piksela do ram;u - CFD
    //assign data_to_ram[47:24]=tdata_pixel_in_d;                  // zapis modelu do ram'u 
    //assign data_to_ram[127:PIXEL_WIDTH] = 0;


    // Input
    assign pixel_mux[0] = {tdata_pixel_in, 32'b0};
    assign tuser_mux[0] = tuser_pixel_in;
    assign tlast_mux[0] = tlast_pixel_in;
    assign tvalid_mux[0] = tvalid_pixel_in;
    assign tready_mux_pixel[0] = tready_pixel_out; // feedback

    // From RAM /dodane opznienie o jeden takt - z uwagi na spos�b dzialania FIFO/
    assign pixel_mux[1] = data_from_ram0;//[PIXEL_WIDTH-1 : 0];
    assign tuser_mux[1] = tuser_pixel_in;
    assign tlast_mux[1] = tlast_pixel_in;
    assign tvalid_mux[1] = tvalid_pixel_in;
    assign tready_mux_pixel[1] = tready_pixel_out; // feedback

    // From RAM /dodane opznienie o jeden takt - z uwagi na spos�b dzialania FIFO/
    assign pixel_mux[2] = data_from_ram0;//[PIXEL_WIDTH-1 : 0];
    assign tuser_mux[2] = tuser_pixel_in_d;
    assign tlast_mux[2] = tlast_pixel_in_d;
    assign tvalid_mux[2] = tvalid_pixel_in_d;
    assign tready_mux_pixel[2] = tready_pixel_out; // feedback

    // 
    assign pixel_mux[3] = {CFD, 32'b0};
    assign tuser_mux[3] = tuser_pixel_in_d;
    assign tlast_mux[3] = tlast_pixel_in_d;
    assign tvalid_mux[3] = tvalid_pixel_in_d;
    assign tready_mux_pixel[3] = tready_pixel_out; // feedback
	
    assign pixel_mux[4] = {CFD2, 32'b0};
    assign tuser_mux[4] = tuser_pixel_in_d;
    assign tlast_mux[4] = tlast_pixel_in_d;
    assign tvalid_mux[4] = tvalid_pixel_in_d;
    assign tready_mux_pixel[4] = tready_pixel_out; // feedback


    // CFD - D0
    //assign pixel_mux[4] = data_from_ram[47:24];
    
    //assign tuser_mux[4] = tuser_pixel_in;
    //assign tlast_mux[4] = tlast_pixel_in;
    //assign tvalid_mux[4] = tvalid_pixel_in;
    //assign tready_mux_pixel[4] = tready_pixel_out; // feedback

    //// FOS - D0
    //assign pixel_mux[5] = FOS;
    //assign tuser_mux[5] = tuser_pixel_in;
    //assign tlast_mux[5] = tlast_pixel_in;
    //assign tvalid_mux[5] = tvalid_pixel_in;
    //assign tready_mux_pixel[5] = tready_pixel_out; // feedback

    // MUX output
    assign   tdata_pixel_out = pixel_mux[sw][C_M_AXI_DATA_WIDTH-1 -: TDATA_WIDTH];
    assign   tuser_pixel_out = tuser_mux[sw];
    assign   tlast_pixel_out = tlast_mux[sw];
    assign   tvalid_pixel_out = tvalid_mux[sw];
    assign   addr_pixel_out = pixel_mux[sw][27 : 0];
    assign   state_pixel_out = pixel_mux[sw][31 : 28];

    assign tready_pixel_in = tready_mux_pixel[sw];


endmodule
