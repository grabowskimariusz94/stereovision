`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date:    10:20:18 04/10/2020 
// Design Name: 
// Module Name:    tb_hdmi_uhd
// Project Name: 
// Description: Wrapper for simulating UHD video processing modules - 4 pixels per clock cycle.
//
//////////////////////////////////////////////////////////////////////////////////
module tb_hdmi_uhd(
		     );
   
localparam BPP              = 24;    // Width of component data (rgb - 24)
localparam NPPC             = 4;    // Number of samples per clock   
localparam CHANNELS         = 3;    // Color Channels
localparam IMAGE_HEIGHT     = 497; //2160;   // Lines in one frame of video
localparam IMAGE_WIDTH      = 740;  //3840;   // Pixels per one line
localparam MAX_DISP         = 64;
localparam CNTX_SIZE        = 3;
localparam DATA_WIDTH       = 8;
localparam AXIS_TDATA_WIDTH = NPPC*BPP;

localparam P1 = 16;
localparam P2 = 64;



wire s_axis_video_aclk;

wire rx_tlast;
wire rx_tready;
wire rx_tuser;
wire rx_tvalid;
wire [BPP*NPPC-1 : 0] rx_tdata;

wire        tx_tlast;
wire        tx_tready;
wire        tx_tuser;
wire        tx_tvalid;
wire [BPP*NPPC-1 : 0] tx_tdata;


// --------------------------------------
// HDMI input
// --------------------------------------
//logic [C_S00_DATA_WIDTH-1 : 0] VIDEO_IN_tdata [MAX_SAMPLES_PER_CLOCK-1 : 0];
hdmi_in_uhd 
#(
    .name("im01"),
    .HEADER_LEN(15),
    .NPPC(NPPC),
    .BPP(BPP),
    .IMAGE_HEIGHT(IMAGE_HEIGHT),
    .IMAGE_WIDTH(IMAGE_WIDTH)
)
file_input
(
    .s_axis_video_aclk(s_axis_video_aclk  ),
    .VIDEO_IN_tdata(rx_tdata              ), 
    .VIDEO_IN_tlast(rx_tlast              ),
    .VIDEO_IN_tready(rx_tready            ),
    .VIDEO_IN_tuser(rx_tuser              ),
    .VIDEO_IN_tvalid(rx_tvalid            )
);



// --------------------------------------
// Video stream processing
// --------------------------------------



top
#(
    .WIDTH(IMAGE_WIDTH),
    .HEIGHT(IMAGE_HEIGHT),
    .MAX_DISP(MAX_DISP),
    .CNTX_SIZE(CNTX_SIZE),
    .MAX_SAMPLES_PER_CLOCK(NPPC),
    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
    .DATA_WIDTH(DATA_WIDTH),
	.P1(P1),
    .P2(P2)
) top_stereo
(
        .aclk(s_axis_video_aclk),
        .aresetn(1'b1),
        
		// Ports of Axi Slave Bus Interface S00_AXIS
		.s_axis_tready(rx_tready),
		.s_axis_tdata(rx_tdata),
		.s_axis_tuser(rx_tuser),
		.s_axis_tlast(rx_tlast),
		.s_axis_tvalid(rx_tvalid),

		// Ports of Axi Master Bus Interface M00_AXIS
		.m_axis_tvalid(tx_tvalid),
		.m_axis_tdata(tx_tdata),
		.m_axis_tuser(tx_tuser),
		.m_axis_tlast(tx_tlast),
		.m_axis_tready(tx_tready),
		
		.switch_img(4'b0100)
    );
    

// --------------------------------------
// HDMI output
// --------------------------------------

hdmi_out_uhd #(
    .name("out"),
    .NEW_WIDTH(IMAGE_WIDTH),
    .NEW_HEIGHT(IMAGE_HEIGHT),
    .MAX_SAMPLES_PER_CLOCK(NPPC),
    .CHANNELS(CHANNELS),
    .DATA_WIDTH(AXIS_TDATA_WIDTH)
)
    
file_output
(
    .s_axis_video_aclk(s_axis_video_aclk),
    .VIDEO_OUT_tdata(tx_tdata           ), 
    .VIDEO_OUT_tlast(tx_tlast           ),
    .VIDEO_OUT_tready(tx_tready         ),
    .VIDEO_OUT_tuser(tx_tuser           ),
    .VIDEO_OUT_tvalid(tx_tvalid         )
);

endmodule
