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
   
localparam BPP              = 8;    // Width of component data (rgb - 24)
localparam NPPC             = 4;    // Number of samples per clock   
localparam CHANNELS         = 3;    // Color Channels
localparam IMAGE_HEIGHT     = 480;  //2160;   // Lines in one frame of video
localparam IMAGE_WIDTH      = 640;  //3840;   // Pixels per one line
localparam MAX_DISP         = 64;
localparam CNTX_SIZE        = 3;
localparam DATA_WIDTH       = 8;
localparam AXIS_TDATA_WIDTH = NPPC*BPP;

localparam P1 = 16;
localparam P2 = 64;

// RECT PARAMS
localparam SHIFT_WIDTH = 10;
localparam PREC = 8;
localparam PREC_INTER = 3;
//localparam MAX_Y_NEG_SHIFT = 39;
//localparam MAX_Y_POS_SHIFT = 30;
//localparam MAX_X_NEG_SHIFT = 52;
//localparam MAX_X_POS_SHIFT = 26;
localparam MAX_SHIFT = 52;


wire s_axis_video_aclk;
wire s_axis_video_aresetn;

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
hdmi_in_uhd 
#(
    .name("left02"),
    .HEADER_LEN(15),
    .NPPC(NPPC),
    .BPP(BPP),
    .IMAGE_HEIGHT(IMAGE_HEIGHT),
    .IMAGE_WIDTH(IMAGE_WIDTH)
)
file_input
(
    .s_axis_video_aclk(s_axis_video_aclk        ),
    .s_axis_video_aresetn(s_axis_video_aresetn  ),
    .VIDEO_IN_tdata(rx_tdata                    ), 
    .VIDEO_IN_tlast(rx_tlast                    ),
    .VIDEO_IN_tready(rx_tready                  ),
    .VIDEO_IN_tuser(rx_tuser                    ),
    .VIDEO_IN_tvalid(rx_tvalid                  )
);


// --------------------------------------
// Video stream processing
// --------------------------------------


Remap#(
    .WIDTH(IMAGE_WIDTH),
    .HEIGHT(IMAGE_HEIGHT),
    .DATA_WIDTH(DATA_WIDTH),
    .NPPC(NPPC),
      
    .MAX_SHIFT(MAX_SHIFT),        
    .SHIFT_WIDTH(SHIFT_WIDTH),
	.PREC(PREC),
	.PREC_INTER(PREC_INTER),
	.NUM_OF_DIST_COEFFS(5),
	.fxL(8589), .fyL(8594), .fxR(8641), .fyR(8634),
	.cxL(86666), .cyL(59274),.cxR(83761), .cyR(63587),
	.fxNewInv(31161), .fyNewInv(31161), // new camera matrices for L and R are the same
	.cxNew(87473), .cyNew(62371),
	.distCoeffsL({-616, 322,  2, 0, -115}),
	.distCoeffsR({-625, 400, -1, 2, -307}),
	.RInvL('{  {2047,   14,   -9},
		       { -14, 2047,   10},
		       {   9,  -10, 2047}  }),
	.RInvR('{  {2047,   22,  -14},
		       { -22, 2047,  -10},
		       {  14,   10, 2047}  })
	) remap
	(
        .aclk(s_axis_video_aclk),
        .aresetn(s_axis_video_aresetn),
        
		.s_axis_l_tready(rx_tready),
		.s_axis_l_tdata(rx_tdata),
		.s_axis_l_tvalid(rx_tvalid),
		.s_axis_l_tlast(rx_tlast),
		.s_axis_l_tuser(rx_tuser),
		
		.s_axis_r_tready(),
		.s_axis_r_tdata(),
		.s_axis_r_tvalid(),
		.s_axis_r_tlast(),
		.s_axis_r_tuser(),

		.m_axis_l_tvalid(tx_tvalid),
		.m_axis_l_tdata(tx_tdata),
		.m_axis_l_tready(tx_tready),
		.m_axis_l_tlast(tx_tlast),
		.m_axis_l_tuser(tx_tuser),
		
		.m_axis_r_tvalid(),
		.m_axis_r_tdata(),
		.m_axis_r_tready(),
		.m_axis_r_tlast(),
		.m_axis_r_tuser()
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
    .DATA_WIDTH(DATA_WIDTH)
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
