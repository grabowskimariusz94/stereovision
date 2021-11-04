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
localparam PREC = 8;
localparam PREC_INTER = 3;
//localparam MAX_Y_NEG_SHIFT = 39;
//localparam MAX_Y_POS_SHIFT = 30;
//localparam MAX_X_NEG_SHIFT = 52;
//localparam MAX_X_POS_SHIFT = 26;
localparam MAX_SHIFT_UP = 60;
localparam MAX_SHIFT_DOWN = 60;


wire s_axis_video_aclk;
wire s_axis_video_aresetn;

wire rxL_tlast;
wire rxL_tready;
wire rxL_tuser;
wire rxL_tvalid;
wire [BPP*NPPC-1 : 0] rxL_tdata;

wire        txL_tlast;
wire        txL_tready;
wire        txL_tuser;
wire        txL_tvalid;
wire [BPP*NPPC-1 : 0] txL_tdata;

wire rxR_tlast;
wire rxR_tready;
wire rxR_tuser;
wire rxR_tvalid;
wire [BPP*NPPC-1 : 0] rxR_tdata;

wire        txR_tlast;
wire        txR_tready;
wire        txR_tuser;
wire        txR_tvalid;
wire [BPP*NPPC-1 : 0] txR_tdata;


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
file_input_left
(
    .s_axis_video_aclk(s_axis_video_aclk         ),
    .s_axis_video_aresetn(s_axis_video_aresetn   ),
    .VIDEO_IN_tdata(rxL_tdata                    ), 
    .VIDEO_IN_tlast(rxL_tlast                    ),
    .VIDEO_IN_tready(rxL_tready                  ),
    .VIDEO_IN_tuser(rxL_tuser                    ),
    .VIDEO_IN_tvalid(rxL_tvalid                  )
);
hdmi_in_uhd 
#(
    .name("right02"),
    .HEADER_LEN(15),
    .NPPC(NPPC),
    .BPP(BPP),
    .IMAGE_HEIGHT(IMAGE_HEIGHT),
    .IMAGE_WIDTH(IMAGE_WIDTH)
)
file_input_right
(
    .s_axis_video_aclk(s_axis_video_aclk         ),
    .s_axis_video_aresetn(s_axis_video_aresetn   ),
    .VIDEO_IN_tdata(rxR_tdata                    ), 
    .VIDEO_IN_tlast(rxR_tlast                    ),
    .VIDEO_IN_tready(rxR_tready                  ),
    .VIDEO_IN_tuser(rxR_tuser                    ),
    .VIDEO_IN_tvalid(rxR_tvalid                  )
);


// --------------------------------------
// Video stream processing
// --------------------------------------


Remap#(
    .WIDTH(IMAGE_WIDTH),
    .HEIGHT(IMAGE_HEIGHT),
    .BPP(DATA_WIDTH),
    .NPPC(NPPC),
            
    .MAX_SHIFT_UP(MAX_SHIFT_UP),
    .MAX_SHIFT_DOWN(MAX_SHIFT_DOWN),
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
        
		.s_axis_l_tready(rxL_tready),
		.s_axis_l_tdata(rxL_tdata),
		.s_axis_l_tvalid(rxL_tvalid),
		.s_axis_l_tlast(rxL_tlast),
		.s_axis_l_tuser(rxL_tuser),
		
		.s_axis_r_tready(rxR_tready),
		.s_axis_r_tdata(rxR_tdata),
		.s_axis_r_tvalid(rxR_tvalid),
		.s_axis_r_tlast(rxR_tlast),
		.s_axis_r_tuser(rxR_tuser),

		.m_axis_l_tvalid(txL_tvalid),
		.m_axis_l_tdata(txL_tdata),
		.m_axis_l_tready(txL_tready),
		.m_axis_l_tlast(txL_tlast),
		.m_axis_l_tuser(txL_tuser),
		
		.m_axis_r_tvalid(txR_tvalid),
		.m_axis_r_tdata(txR_tdata),
		.m_axis_r_tready(txR_tready),
		.m_axis_r_tlast(txR_tlast),
		.m_axis_r_tuser(txR_tuser)
    );
 
//logic new_pos_tready;
//logic new_pos_tvalid;
//logic new_pos_tuser;
//logic [NPPC-1:0][$clog2(IMAGE_WIDTH)-1:0] new_pos_x = 0;
//logic [NPPC-1:0][$clog2(IMAGE_HEIGHT)-1:0] new_pos_y = 0;
 
//assign new_pos_tvalid = 1'b1;
//always @(posedge s_axis_video_aclk) 
//begin
//  if(new_pos_tuser&&(!new_pos_tready)) begin
//    new_pos_x[0] <= 0;
//    new_pos_y[0] <= 0;
//  end
//  if (new_pos_tready) begin
//    new_pos_x[0] <= new_pos_x[0]+4;
//    if(new_pos_x[0] == IMAGE_WIDTH-NPPC) begin
//      new_pos_x[0] <= 0;
//      new_pos_y[0] <= new_pos_y[0]+1;
//      if (new_pos_y[0] == IMAGE_HEIGHT-1)
//        new_pos_y[0] <= 0;
//    end
//  end
//end
 

//image_buffer#(
//  .WIDTH(IMAGE_WIDTH),                   // image width
//  .HEIGHT(IMAGE_HEIGHT),                 // image hight
//  .NPPC(NPPC),                      // Number of samples per clock (minimum 2)
//  .BPP(8),                      // Bits per pixel
//  .MAX_SHIFT_UP(50),             // Farthest pixel replacement up
//  .MAX_SHIFT_DOWN(50),           // Farthest pixel replacement down
//  .SHIFT_WIDTH(10)            
//)buffer(
//  .aclk(s_axis_video_aclk),
//  .aresetn(s_axis_video_aresetn),

//  .s_axis_tready(rxL_tready),
//  .s_axis_tdata(rxL_tdata),
//  .s_axis_tvalid(rxL_tvalid),
//  .s_axis_tlast(rxL_tlast),
//  .s_axis_tuser(rxL_tuser),
  
//  .new_pos_tready,
//  .new_pos_tuser,
//  .new_pos_tvalid,
//  .new_pos_x,
//  .new_pos_y,
  
//  .m_axis_00_tdata(txL_tdata),
//  .m_axis_01_tdata(),
//  .m_axis_10_tdata(),
//  .m_axis_11_tdata(),
//  .m_axis_tvalid(txL_tvalid),
//  .m_axis_tready(txL_tready),
//  .m_axis_tlast(txL_tlast),
//  .m_axis_tuser(txL_tuser)
//);

    

// --------------------------------------
// HDMI output
// --------------------------------------


hdmi_out_uhd #(
    .name("dstL"),
    .NEW_WIDTH(IMAGE_WIDTH),
    .NEW_HEIGHT(IMAGE_HEIGHT),
    .MAX_SAMPLES_PER_CLOCK(NPPC),
    .CHANNELS(CHANNELS),
    .DATA_WIDTH(DATA_WIDTH)
)
file_output_left
(
    .s_axis_video_aclk(s_axis_video_aclk),
    .VIDEO_OUT_tdata(txL_tdata           ), 
    .VIDEO_OUT_tlast(txL_tlast           ),
    .VIDEO_OUT_tready(txL_tready         ),
    .VIDEO_OUT_tuser(txL_tuser           ),
    .VIDEO_OUT_tvalid(txL_tvalid         )
);

hdmi_out_uhd #(
    .name("dstR"),
    .NEW_WIDTH(IMAGE_WIDTH),
    .NEW_HEIGHT(IMAGE_HEIGHT),
    .MAX_SAMPLES_PER_CLOCK(NPPC),
    .CHANNELS(CHANNELS),
    .DATA_WIDTH(DATA_WIDTH)
)
file_output_right
(
    .s_axis_video_aclk(s_axis_video_aclk),
    .VIDEO_OUT_tdata(txR_tdata           ), 
    .VIDEO_OUT_tlast(txR_tlast           ),
    .VIDEO_OUT_tready(txR_tready         ),
    .VIDEO_OUT_tuser(txR_tuser           ),
    .VIDEO_OUT_tvalid(txR_tvalid         )
);

endmodule
