
`timescale 1 ns / 1 ps

module Video_Synch_v1_0 #
	(
	parameter img_size=(960*2160*16), // Rozdzielczo�� obrazu (dlaczego taki - bo jeden zapis to 4 bajty)
    parameter BURST_SIZE=16*8, // Rozmiar "burstu" 8 x 128 bitow
	
    parameter integer SAMPLES_PER_CLOCK = 4, // Number of samples per clock
    parameter integer BITS_PER_PIXEL    = 24, // Width of component data (24)
    parameter integer TDATA_WIDTH       = SAMPLES_PER_CLOCK*BITS_PER_PIXEL, // Width of TDATA

    parameter integer WIDTH        = 3840, // Pixels per one line
    parameter integer HEIGHT       = 2160, // Lines in one frame of video

    parameter integer W_POSITION_WIDTH = 10,
    parameter integer H_POSITION_WIDTH = 12,

    // AXI Interface
    parameter C_M_AXI_PROTOCOL = "AXI4",
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
		// Clock signals
        input wire s_axis_video_aclk,
        input wire s_axis_video_aresetn,
        input wire m_axis_memory_aclk,
		
		output wire  s_axis_video0_tready,
		input wire [TDATA_WIDTH-0 : 0] s_axis_video0_tdata,
		input wire  s_axis_video0_tuser,
		input wire  s_axis_video0_tlast,
		input wire  s_axis_video0_tvalid,
		
		output wire  s_axis_video1_tready,
		input wire [TDATA_WIDTH-1 : 0] s_axis_video1_tdata,
		input wire  s_axis_video1_tuser,
		input wire  s_axis_video1_tlast,
		input wire  s_axis_video1_tvalid,

		output wire  m_axis_video0_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_video0_tdata,
		output wire  m_axis_video0_tuser,
		output wire  m_axis_video0_tlast,
		input wire  m_axis_video0_tready,

		output wire  m_axis_video1_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_video1_tdata,
		output wire  m_axis_video1_tuser,
		output wire  m_axis_video1_tlast,
		input wire  m_axis_video1_tready,
		
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
        
        input [1:0] sw, // mux
        
        
        output [27 : 0] addr_pixel_out,
        output [3 : 0] state_pixel_out, 
        output wire [3:0]status, // status kontrolera pamieci
        output [11:0] fifo_rd_wr_data_count,
        output [11:0] fifo_rd_rd_data_count
	);

    wire [C_M_AXI_DATA_WIDTH-1:0] data_from_ram;
    wire [C_M_AXI_DATA_WIDTH-1:0] data_to_ram;
    wire write_data_to_ram; // flaga zapisu do RAM'u (we)
    wire read_data_from_ram; // flaga odczytu z RAM'u (re)  

    // Rejestry do opoznien sygnalu wejsciowego
    reg [TDATA_WIDTH-1:0] video1_tdata_d = 0;
    reg [6:0] video1_tuser_d_int = 0;
    reg [6:0] video1_tlast_d_int = 0;
    reg [6:0] video1_tvalid_d_int = 0;
	reg video1_tuser_d = 0;
    reg video1_tlast_d = 0;
    reg video1_tvalid_d = 0;
    
    reg [TDATA_WIDTH-1:0] video0_tdata_d = 0;
	reg video0_tuser_d = 0;
    reg video0_tlast_d = 0;
    reg video0_tvalid_d = 0;

    always @(posedge s_axis_video_aclk)
    begin

        // Opoznienie nadchodzecego piksela
        video0_tdata_d <= s_axis_video0_tdata;
        video0_tuser_d <= s_axis_video0_tuser;
        video0_tlast_d <= s_axis_video0_tlast;
        video0_tvalid_d <= s_axis_video0_tvalid;
		
		if(s_axis_video1_tvalid) begin
			video1_tvalid_d_int <= {video1_tvalid_d_int[5:0],s_axis_video1_tvalid};
			video1_tuser_d_int <= {video1_tuser_d_int[5:0],s_axis_video1_tuser};
			video1_tlast_d_int <= {video1_tlast_d_int[5:0],s_axis_video1_tlast};
		end
		
		video1_tdata_d <= s_axis_video1_tdata;
		video1_tvalid_d <= s_axis_video1_tvalid ? video1_tvalid_d_int[6] : 0;
		video1_tuser_d <= s_axis_video1_tvalid ? video1_tuser_d_int[6] : 0;
		video1_tlast_d <= s_axis_video1_tvalid ? video1_tlast_d_int[6] : 0;

    end

    assign data_to_ram[C_M_AXI_DATA_WIDTH-1:TDATA_WIDTH] = 0;
    assign data_to_ram[TDATA_WIDTH-1:0] = video1_tdata_d;
    
    assign write_data_to_ram = video1_tvalid_d;
    assign read_data_from_ram = s_axis_video0_tvalid;


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
        .ACLK(m_axis_memory_aclk),
        .ARESETN(s_axis_video_aresetn),

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
        .fifo_clk(s_axis_video_aclk),
        //write fifo
        .fifo_wr_data(data_to_ram),
        .fifo_wr_en(write_data_to_ram),
        //read fifo
        .fifo_rd_data(data_from_ram),
        .fifo_rd_en(read_data_from_ram),
        //control intreface
        .frame_valid_wr(video1_tuser_d),
        .frame_valid_rd(s_axis_video0_tuser),
        .tlast_wr(video1_tlast_d),
        .tlast_rd(s_axis_video0_tlast),

        .init_done(1'b1), 
        .status(status),
        .fifo_rd_wr_data_count(fifo_rd_wr_data_count),
        .fifo_rd_rd_data_count(fifo_rd_rd_data_count)
    );
    
    
    // MUX0 for m_axis_video0
    wire [C_M_AXI_DATA_WIDTH-1:0] mux0_tdata [3:0];
    wire mux0_tready [3:0];
    wire mux0_tuser [3:0];
    wire mux0_tlast [3:0];
    wire mux0_tvalid [3:0];
    // MUX1 for m_axis_video1
    wire [C_M_AXI_DATA_WIDTH-1:0] mux1_tdata [3:0];
    wire mux1_tready [3:0];
    wire mux1_tuser [3:0];
    wire mux1_tlast [3:0];
    wire mux1_tvalid [3:0];
    
    // Input 
    assign mux0_tdata[0] = {s_axis_video0_tdata, 32'b0};
    assign mux0_tuser[0] = s_axis_video0_tuser;
    assign mux0_tlast[0] = s_axis_video0_tlast;
    assign mux0_tvalid[0] = s_axis_video0_tvalid;
    assign mux0_tready[0] = m_axis_video0_tready; 
    
    assign mux1_tdata[0] = {s_axis_video1_tdata, 32'b0};
    assign mux1_tuser[0] = s_axis_video1_tuser;
    assign mux1_tlast[0] = s_axis_video1_tlast;
    assign mux1_tvalid[0] = s_axis_video1_tvalid;
    assign mux1_tready[0] = m_axis_video1_tready; 

    // Synchronized
    assign mux0_tdata[1] = {video0_tdata_d, 32'b0};
    assign mux0_tuser[1] = video0_tuser_d;
    assign mux0_tlast[1] = video0_tlast_d;
    assign mux0_tvalid[1] = video0_tvalid_d;
    assign mux0_tready[1] = m_axis_video0_tready; 
    
    assign mux1_tdata[1] = data_from_ram;
    assign mux1_tuser[1] = video0_tuser_d;
    assign mux1_tlast[1] = video0_tlast_d;
    assign mux1_tvalid[1] = video0_tvalid_d;
    assign mux1_tready[1] = m_axis_video1_tready; 
    
    // test 1
    assign mux1_tdata[3] = {video0_tdata_d, 32'b0};
    assign mux1_tuser[3] = video0_tuser_d;
    assign mux1_tlast[3] = video0_tlast_d;
    assign mux1_tvalid[3] = video0_tvalid_d;
    assign mux1_tready[3] = m_axis_video0_tready;
     
    assign mux0_tready[3] = m_axis_video0_tready; 
    
    assign mux1_tdata[2] = {s_axis_video0_tdata, 32'b0};
    assign mux1_tuser[2] = s_axis_video0_tuser;
    assign mux1_tlast[2] = s_axis_video0_tlast;
    assign mux1_tvalid[2] = s_axis_video0_tvalid;
    assign mux1_tready[2] = m_axis_video0_tready; 
    
    assign mux0_tready[2] = m_axis_video0_tready; 
    // test 1 end
    
    assign   m_axis_video0_tdata = mux0_tdata[sw][C_M_AXI_DATA_WIDTH-1 -: TDATA_WIDTH];
    assign   m_axis_video0_tuser = mux0_tuser[sw];
    assign   m_axis_video0_tlast = mux0_tlast[sw];
    assign   m_axis_video0_tvalid = mux0_tvalid[sw];
    
    assign   m_axis_video1_tdata = mux1_tdata[sw][C_M_AXI_DATA_WIDTH-1 -: TDATA_WIDTH];
    assign   m_axis_video1_tuser = mux1_tuser[sw];
    assign   m_axis_video1_tlast = mux1_tlast[sw];
    assign   m_axis_video1_tvalid = mux1_tvalid[sw];
    
    assign s_axis_video0_tready = mux0_tready[sw];
    assign s_axis_video1_tready = mux1_tready[sw];
    
    assign   addr_pixel_out = mux1_tdata[sw][27 : 0];
    assign   state_pixel_out = mux1_tdata[sw][31 : 28];

endmodule
