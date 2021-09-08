`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH, EVS
// Engineer: Marcin Kowalczyk
// 
// Create Date: 22/07/2021 17:38:36
// Module Name: FrameDelaySync
// Target Devices: ZCU104
// Tool Versions: Vivado 2020.2
// Description: 
//      Module designed to wait for correct synchronization of the AXI4-Stream
//      video signal before passing data to the FrameDelay module.
//////////////////////////////////////////////////////////////////////////////////

module FrameDelaySync
#(
    parameter integer SAMPLES_PER_CLOCK = 4, // Number of samples per clock
    parameter integer BITS_PER_PIXEL    = 24, // Width of component data
    parameter integer TDATA_WIDTH       = SAMPLES_PER_CLOCK*BITS_PER_PIXEL, // Width of TDATA

    parameter integer WIDTH        = 3840, // Pixels per one line
    parameter integer HEIGHT       = 2160, // Lines in one frame of video

    parameter integer W_POSITION_WIDTH = 10,
    parameter integer H_POSITION_WIDTH = 12,

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
    parameter integer C_INTERCONNECT_M_AXI_WRITE_ISSUING = 8
)
(
    // Clock signals
    input wire s_axis_video_aclk,
    input wire s_axis_video_aresetn,
    input wire m_axis_memory_aclk,

    // Ports of AXI-Stream Video
    input wire [TDATA_WIDTH-1 : 0] VIDEO_IN_tdata ,
    input wire                     VIDEO_IN_tuser ,
    input wire                     VIDEO_IN_tlast ,
    input wire                     VIDEO_IN_tvalid,
    output wire                    VIDEO_IN_tready,

    // Output AXI-Stream Video
    output wire [TDATA_WIDTH-1 : 0] VIDEO_OUT_tdata ,
    output wire                     VIDEO_OUT_tuser ,
    output wire                     VIDEO_OUT_tlast ,
    output wire                     VIDEO_OUT_tvalid,
    input wire                      VIDEO_OUT_tready,
    
    output wire [27 : 0] addr_pixel_out,
    output wire [3 : 0] state_pixel_out,

    output wire [TDATA_WIDTH-1 : 0] tdata_pixel_in ,
    output wire                     tuser_pixel_in ,
    output wire                     tlast_pixel_in ,
    output wire                     tvalid_pixel_in,
    output wire                     tready_pixel_in,

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

    input wire [3:0] sw, // multiplekser

    output wire [3:0] status, // status kontrolera pamieci
    output wire sync,
    output wire [11:0] fifo_rd_wr_data_count,
    output wire [11:0] fifo_rd_rd_data_count
);

    localparam integer GROUPS        = WIDTH/SAMPLES_PER_CLOCK;

//    wire [TDATA_WIDTH-1 : 0]    tdata_pixel_in ;
//    wire                        tready_pixel_in;
//    wire                        tuser_pixel_in ;
//    wire                        tlast_pixel_in ;
//    wire                        tvalid_pixel_in;

    wire [TDATA_WIDTH-1 : 0]    tdata_pixel_out ;
    wire                        tready_pixel_out;
    wire                        tuser_pixel_out ;
    wire                        tlast_pixel_out ;
    wire                        tvalid_pixel_out;

    logic [W_POSITION_WIDTH-1 : 0] posX = 'd0;
    logic [H_POSITION_WIDTH-1 : 0] posY = 'd0;

    logic [9:0] startCnt = 'd0;
    logic frameStarted = 'd0;

    logic synchronized = 'd0;

    always @(posedge s_axis_video_aclk)
    begin
        if (VIDEO_IN_tuser)
        begin
            posX <= 'd0;
            posY <= 'd0;
            if (frameStarted)
                synchronized <= 'd1;

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

    assign tdata_pixel_in  = synchronized ? VIDEO_IN_tdata  : 'd0;
    assign tuser_pixel_in  = synchronized ? VIDEO_IN_tuser  : 'd0;
    assign tlast_pixel_in  = synchronized ? VIDEO_IN_tlast  : 'd0;
    assign tvalid_pixel_in = synchronized ? VIDEO_IN_tvalid : 'd0;

    assign VIDEO_OUT_tdata  = synchronized ? tdata_pixel_out  : VIDEO_IN_tdata ;
    assign VIDEO_OUT_tuser  = synchronized ? tuser_pixel_out  : VIDEO_IN_tuser ;
    assign VIDEO_OUT_tlast  = synchronized ? tlast_pixel_out  : VIDEO_IN_tlast ;
    assign VIDEO_OUT_tvalid = synchronized ? tvalid_pixel_out : VIDEO_IN_tvalid;

    assign VIDEO_IN_tready  = synchronized ? tready_pixel_in  : VIDEO_OUT_tready;
    assign tready_pixel_out = synchronized ? VIDEO_OUT_tready : 'd1;
    
    assign sync = synchronized;

    axi4_master_if FrameDelay0
    (
        // System Signals
        .ACLK(m_axis_memory_aclk),
        .ARESETN(s_axis_video_aresetn),

        // Master Interface Write Address
        .M0_AXI_AWID    (M0_AXI_AWID   ), //
        .M0_AXI_AWADDR  (M0_AXI_AWADDR ), //
        .M0_AXI_AWLEN   (M0_AXI_AWLEN  ), //
        .M0_AXI_AWSIZE  (M0_AXI_AWSIZE ), //
        .M0_AXI_AWBURST (M0_AXI_AWBURST), //
        .M0_AXI_AWLOCK  (M0_AXI_AWLOCK ), //
        .M0_AXI_AWCACHE (M0_AXI_AWCACHE), //
        .M0_AXI_AWPROT  (M0_AXI_AWPROT ), //
        //.M_AXI_AWREGION,
        .M0_AXI_AWQOS   (M0_AXI_AWQOS  ), //   // AXI4 output wire [4-1:0]              M_AXI_AWQOS,
        .M0_AXI_AWUSER  (M0_AXI_AWUSER ), //
        .M0_AXI_AWVALID (M0_AXI_AWVALID), //
        .M0_AXI_AWREADY (M0_AXI_AWREADY), //

        // Master Interface Write Data
        //output wire [C_M_AXI_THREAD_ID_WIDTH-1:0] M_AXI_WID,
        .M0_AXI_WDATA   (M0_AXI_WDATA ), //
        .M0_AXI_WSTRB   (M0_AXI_WSTRB ), //
        .M0_AXI_WLAST   (M0_AXI_WLAST ), //
        //  .M_AXI_WUSER    (M_AXI_WUSER  ),
        .M0_AXI_WVALID  (M0_AXI_WVALID), //
        .M0_AXI_WREADY  (M0_AXI_WREADY), //

        // Master Interface Write Response
        .M0_AXI_BID     (M0_AXI_BID   ), //
        .M0_AXI_BRESP   (M0_AXI_BRESP ), //
        //    .M_AXI_BUSER    (M_AXI_BUSER  ),
        .M0_AXI_BVALID  (M0_AXI_BVALID), //
        .M0_AXI_BREADY  (M0_AXI_BREADY), //

        // Master Interface Read Address
        .M0_AXI_ARID    (M0_AXI_ARID   ), //
        .M0_AXI_ARADDR  (M0_AXI_ARADDR ), //
        .M0_AXI_ARLEN   (M0_AXI_ARLEN  ), //
        .M0_AXI_ARSIZE  (M0_AXI_ARSIZE ), //
        .M0_AXI_ARBURST (M0_AXI_ARBURST), //
        .M0_AXI_ARLOCK  (M0_AXI_ARLOCK ), //
        .M0_AXI_ARCACHE (M0_AXI_ARCACHE), //
        .M0_AXI_ARPROT  (M0_AXI_ARPROT ), //
        //    .M_AXI_ARREGION (M_AXI_ARREGION),
        .M0_AXI_ARQOS   (M0_AXI_ARQOS  ), //
        .M0_AXI_ARUSER  (M0_AXI_ARUSER ), //
        .M0_AXI_ARVALID (M0_AXI_ARVALID), //
        .M0_AXI_ARREADY (M0_AXI_ARREADY), //

        // Master Interface Read Data 
        .M0_AXI_RID     (M0_AXI_RID   ), //
        .M0_AXI_RDATA   (M0_AXI_RDATA ), //
        .M0_AXI_RRESP   (M0_AXI_RRESP ), //
        .M0_AXI_RLAST   (M0_AXI_RLAST ), //
        //    .M_AXI_RUSER    (M_AXI_RUSER  ),
        .M0_AXI_RVALID  (M0_AXI_RVALID), //
        .M0_AXI_RREADY  (M0_AXI_RREADY), //

        // Master Interface Write Address
//        .M1_AXI_AWID    (M1_AXI_AWID   ), //
//        .M1_AXI_AWADDR  (M1_AXI_AWADDR ), //
//        .M1_AXI_AWLEN   (M1_AXI_AWLEN  ), //
//        .M1_AXI_AWSIZE  (M1_AXI_AWSIZE ), //
//        .M1_AXI_AWBURST (M1_AXI_AWBURST), //
//        .M1_AXI_AWLOCK  (M1_AXI_AWLOCK ), //
//        .M1_AXI_AWCACHE (M1_AXI_AWCACHE), //
//        .M1_AXI_AWPROT  (M1_AXI_AWPROT ), //
//        //    .M_AXI_AWREGION (M_AXI_AWREGION),
//        .M1_AXI_AWQOS   (M1_AXI_AWQOS  ), //   // AXI4 output wire [4-1:0]              M_AXI_AWQOS,
//        .M1_AXI_AWUSER  (M1_AXI_AWUSER ), //
//        .M1_AXI_AWVALID (M1_AXI_AWVALID), //
//        .M1_AXI_AWREADY (M1_AXI_AWREADY), //
//
//        // Master Interface Write Data
//        //    .M_AXI_WID      (M_AXI_WID    ),
//        .M1_AXI_WDATA   (M1_AXI_WDATA ), //
//        .M1_AXI_WSTRB   (M1_AXI_WSTRB ), //
//        .M1_AXI_WLAST   (M1_AXI_WLAST ), //
//        //    .M_AXI_WUSER    (M_AXI_WUSER  ),
//        .M1_AXI_WVALID  (M1_AXI_WVALID), //
//        .M1_AXI_WREADY  (M1_AXI_WREADY), //
//
//        // Master Interface Write Response
//        .M1_AXI_BID     (M1_AXI_BID   ), //
//        .M1_AXI_BRESP   (M1_AXI_BRESP ), //
//        //    .M_AXI_BUSER    (M_AXI_BUSER  ),
//        .M1_AXI_BVALID  (M1_AXI_BVALID), //
//        .M1_AXI_BREADY  (M1_AXI_BREADY), //
//
//        // Master Interface Read Address
//        .M1_AXI_ARID    (M1_AXI_ARID   ), //
//        .M1_AXI_ARADDR  (M1_AXI_ARADDR ), //
//        .M1_AXI_ARLEN   (M1_AXI_ARLEN  ), //
//        .M1_AXI_ARSIZE  (M1_AXI_ARSIZE ), //
//        .M1_AXI_ARBURST (M1_AXI_ARBURST), //
//        .M1_AXI_ARLOCK  (M1_AXI_ARLOCK ), //
//        .M1_AXI_ARCACHE (M1_AXI_ARCACHE), //
//        .M1_AXI_ARPROT  (M1_AXI_ARPROT ), //
//        //    .M_AXI_ARREGION (M_AXI_ARREGION),
//        .M1_AXI_ARQOS   (M1_AXI_ARQOS  ), //
//        .M1_AXI_ARUSER  (M1_AXI_ARUSER ), //
//        .M1_AXI_ARVALID (M1_AXI_ARVALID), //
//        .M1_AXI_ARREADY (M1_AXI_ARREADY), //
//
//        // Master Interface Read Data 
//        .M1_AXI_RID     (M1_AXI_RID   ), //
//        .M1_AXI_RDATA   (M1_AXI_RDATA ), //
//        .M1_AXI_RRESP   (M1_AXI_RRESP ), //
//        .M1_AXI_RLAST   (M1_AXI_RLAST ), //
//        //    .M_AXI_RUSER    (M_AXI_RUSER  ),
//        .M1_AXI_RVALID  (M1_AXI_RVALID), //
//        .M1_AXI_RREADY  (M1_AXI_RREADY), //

        // Custom Interface

        .pixel_clk(s_axis_video_aclk), // zegar AXI Stream
        .sw(sw), // multiplekser
        // PIXEL DATA INPUT
        .tdata_pixel_in (tdata_pixel_in ),
        .tready_pixel_in(tready_pixel_in),
        .tuser_pixel_in (tuser_pixel_in),
        .tlast_pixel_in (tlast_pixel_in ),
        .tvalid_pixel_in(tvalid_pixel_in),

        // PIXEL DATA OUTPUT
        .tdata_pixel_out    (tdata_pixel_out ),
        .tready_pixel_out   (tready_pixel_out),
        .tuser_pixel_out    (tuser_pixel_out ),
        .tlast_pixel_out    (tlast_pixel_out ),
        .tvalid_pixel_out   (tvalid_pixel_out),
        
        .addr_pixel_out(addr_pixel_out),
        .state_pixel_out(state_pixel_out),


        // input [31:0] FD_THR,                // prog dla odejmowania sasiednich ramek
        // input [31:0] FOS_THR,               // prog dla segmentacji obiektow pierwszoplanowych

        .status(status), // status kontrolera pamieci
        .fifo_rd_wr_data_count(fifo_rd_wr_data_count),
        .fifo_rd_rd_data_count(fifo_rd_rd_data_count)
    );

endmodule