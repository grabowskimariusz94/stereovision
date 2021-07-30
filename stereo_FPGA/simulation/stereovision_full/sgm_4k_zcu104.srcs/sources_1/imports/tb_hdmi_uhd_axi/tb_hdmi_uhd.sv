`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Tomasz Kryjak / Marcin Kowalczyk / Mateusz Wąsala
// 
// Create Date:    11:29:28 10/28/2013 
// Design Name: 
// Module Name:    tb_hdmi_uhd
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Wrapper for simulating UHD video processing modules - 4 pixels per clock cycle.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tb_hdmi_uhd(
		     );
   
localparam integer C_S00_DATA_WIDTH              = 24;    // Width of component data (gray - 8, rgb - 24)
localparam integer C_S00_MAX_SAMPLES_PER_CLOCK   = 4;    // Number of samples per clock   
localparam integer C_S00_CHANNELS                = 3;    // Color Channels
localparam integer C_S00_LINES_IN_FRAME          = 497; //2160;   // Lines in one frame of video
localparam integer C_S00_PIXELS_PER_LINE         = 740;  //3840;   // Pixels per one line

localparam HEADER_LEN                = 15;
localparam MAX_SAMPLES_PER_CLOCK     = C_S00_MAX_SAMPLES_PER_CLOCK;
localparam CONTEXT_SIZE              = 3;
localparam WIDTH                     = MAX_SAMPLES_PER_CLOCK*C_S00_DATA_WIDTH+3;
localparam C_S00_AXIS_TDATA_WIDTH    = MAX_SAMPLES_PER_CLOCK*C_S00_DATA_WIDTH;



wire s_axis_video_aclk;

wire rx_tlast;
wire rx_tready;
wire rx_tuser;
wire rx_tvalid;

wire [C_S00_AXIS_TDATA_WIDTH-1:0] rx_tdata;


wire        tx_tlast;
wire        tx_tready;
wire        tx_tuser;
wire        tx_tvalid;

wire [C_S00_AXIS_TDATA_WIDTH-1:0] tx_tdata;




// --------------------------------------
// HDMI input
// --------------------------------------

hdmi_in_uhd 
#(
    .name("im01"),
    .HEADER_LEN(HEADER_LEN),
    .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
    .C_S00_LINES_IN_FRAME(C_S00_LINES_IN_FRAME),
    .C_S00_PIXELS_PER_LINE(C_S00_PIXELS_PER_LINE)
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



Stereovision
#(
    .WIDTH(C_S00_PIXELS_PER_LINE),
    .HEIGHT(C_S00_LINES_IN_FRAME)
) stereo
(
        .aclk(s_axis_video_aclk),

		// Ports of Axi Slave Bus Interface S00_AXIS
		.s_axis_img_tready(rx_tready),
		.s_axis_img_tdata(rx_tdata),
		.s_axis_img_tuser(rx_tuser),
		.s_axis_img_tlast(rx_tlast),
		.s_axis_img_tvalid(rx_tvalid),

		// Ports of Axi Master Bus Interface M00_AXIS
		.m_axis_disp_tvalid(tx_tvalid),
		.m_axis_disp_tdata(tx_tdata),
		.m_axis_disp_tuser(tx_tuser),
		.m_axis_disp_tlast(tx_tlast),
		.m_axis_disp_tready(tx_tready)
    );
    

// --------------------------------------
// HDMI output
// --------------------------------------

hdmi_out_uhd #(
    .name("out"),
    .NEW_WIDTH(C_S00_PIXELS_PER_LINE            ),
    .NEW_HEIGHT(C_S00_LINES_IN_FRAME            ),
    .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
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
