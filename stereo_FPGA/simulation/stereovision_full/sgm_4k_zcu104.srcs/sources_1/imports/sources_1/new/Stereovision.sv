`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 13.02.2021 21:15:12
// Module Name: Stereovision
// Target Devices: zcu104, zc702
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////


module Stereovision
#(
    parameter WIDTH = 3840,
    parameter HEIGHT = 2160,
    parameter MAX_DISP = 255,
    parameter CNTX_SIZE = 3,
    parameter MAX_SAMPLES_PER_CLOCK = 4,
    
    parameter AXIS_TDATA_WIDTH = 32,
    parameter DATA_WIDTH = 8,
    
    parameter P1 = 16,
    parameter P2 = 64
)
(
        input wire  aclk,
        input wire  aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s_axis_img_tready,
		input wire [3*AXIS_TDATA_WIDTH-1 : 0] s_axis_img_tdata, //RGB data
		input wire  s_axis_img_tuser,
		input wire  s_axis_img_tlast,
		input wire  s_axis_img_tvalid
        /*
		// Ports of Axi Master Bus Interface M00_AXIS
		output wire  m_axis_disp_tvalid,
		output wire [32-1 : 0] m_axis_disp_tdata,
		output wire  m_axis_disp_tuser,
		output wire  m_axis_disp_tlast,
		input wire  m_axis_disp_tready
		*/
    );
  
  
// --------------------------------------
// RGB to Gray
// --------------------------------------   
    wire        gray_tlast;
    wire        gray_tready;
    wire        gray_tuser;
    wire        gray_tvalid;
    wire [AXIS_TDATA_WIDTH-1:0] gray_tdata;
    
    
    
    RGB_to_Grayscale_v1_0#(
        .C_S_AXIS_rgb_TDATA_WIDTH(3*AXIS_TDATA_WIDTH),
        .C_M_AXIS_gray_TDATA_WIDTH(AXIS_TDATA_WIDTH)
        )
    rgb2gray
       (.aclk(aclk),
        .s_axis_rgb_tdata(s_axis_img_tdata),
        .s_axis_rgb_tlast(s_axis_img_tlast),
        .s_axis_rgb_tready(s_axis_img_tready),
        .s_axis_rgb_tuser(s_axis_img_tuser),
        .s_axis_rgb_tvalid(s_axis_img_tvalid),
        .m_axis_gray_tdata(gray_tdata),
        .m_axis_gray_tlast(gray_tlast),
        .m_axis_gray_tready(1'b1),
        .m_axis_gray_tuser(gray_tuser),
        .m_axis_gray_tvalid(gray_tvalid));
    
    hdmi_out_uhd #(
        .name("gray"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    gray
        (
        .s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(gray_tdata           ), 
        .VIDEO_OUT_tlast(gray_tlast           ),
        .VIDEO_OUT_tready(gray_tready         ),
        .VIDEO_OUT_tuser(gray_tuser           ),
        .VIDEO_OUT_tvalid(gray_tvalid         )
);
    
// --------------------------------------
// Unfolding
// --------------------------------------  

    wire        unfolded_l_tlast;
    wire        unfolded_l_tready;
    wire        unfolded_l_tuser;
    wire        unfolded_l_tvalid;
    wire [AXIS_TDATA_WIDTH-1:0] unfolded_l_tdata; 
    
    wire        unfolded_r_tlast;
    wire        unfolded_r_tready;
    wire        unfolded_r_tuser;
    wire        unfolded_r_tvalid;
    wire [AXIS_TDATA_WIDTH-1:0] unfolded_r_tdata; 
    
    Inter_col_v1_0 #(
        .C_AXIS_LR_TDATA_WIDTH(AXIS_TDATA_WIDTH)
        )
     unfold
       (.aclk(aclk),
        .s_axis_lr_tdata(gray_tdata),
        .s_axis_lr_tlast(gray_tlast),
        .s_axis_lr_tuser(gray_tuser),
        .s_axis_lr_tvalid(gray_tvalid),
        .m_axis_l_tdata(unfolded_l_tdata),
        .m_axis_l_tlast(unfolded_l_tlast),
        .m_axis_l_tready(1'b1),
        .m_axis_l_tuser(unfolded_l_tuser),
        .m_axis_l_tvalid(unfolded_l_tvalid),
        .m_axis_r_tdata(unfolded_r_tdata),
        .m_axis_r_tlast(unfolded_r_tlast),
        .m_axis_r_tready(1'b1),
        .m_axis_r_tuser(unfolded_r_tuser),
        .m_axis_r_tvalid(unfolded_r_tvalid));
        
    hdmi_out_uhd #(
        .name("unfoldedL"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    unfoldedL
       (.s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(unfolded_l_tdata           ), 
        .VIDEO_OUT_tlast(unfolded_l_tlast           ),
        .VIDEO_OUT_tready(unfolded_l_tready         ),
        .VIDEO_OUT_tuser(unfolded_l_tuser           ),
        .VIDEO_OUT_tvalid(unfolded_l_tvalid         ));
    
    hdmi_out_uhd #(
        .name("unfoldedR"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    unfoldedR
       (.s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(unfolded_r_tdata           ), 
        .VIDEO_OUT_tlast(unfolded_r_tlast           ),
        .VIDEO_OUT_tready(unfolded_r_tready         ),
        .VIDEO_OUT_tuser(unfolded_r_tuser           ),
        .VIDEO_OUT_tvalid(unfolded_r_tvalid         ));
    
// --------------------------------------
// Cost Calculation
// --------------------------------------  
    
    wire        c_l_tlast;
    wire        c_l_tready;
    wire        c_l_tuser;
    wire        c_l_tvalid;
    wire  [MAX_DISP-1:0][DATA_WIDTH-1:0] c_l_tdata [MAX_SAMPLES_PER_CLOCK-1:0]; 
    wire        c_r_tlast;
    wire        c_r_tready;
    wire        c_r_tuser;
    wire        c_r_tvalid;
    wire  [MAX_DISP-1:0][DATA_WIDTH-1:0] c_r_tdata [MAX_SAMPLES_PER_CLOCK-1:0]; 
  
    SAD_v1_0 #(
    .MAX_DISP(MAX_DISP),
    .CNTX_SIZE(CNTX_SIZE),
    .HEIGHT(HEIGHT),
    .WIDTH(WIDTH),
    .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
    .DATA_WIDTH(DATA_WIDTH)
  ) sad (
    .aclk(aclk),
    .s_axis_l_tdata(unfolded_l_tdata),
    .s_axis_l_tlast(unfolded_l_tlast),
    .s_axis_l_tuser(unfolded_l_tuser),
    .s_axis_l_tvalid(unfolded_l_tvalid),
    .s_axis_r_tdata(unfolded_r_tdata),
    .s_axis_r_tlast(unfolded_r_tlast),
    .s_axis_r_tuser(unfolded_r_tuser),
    .s_axis_r_tvalid(unfolded_r_tvalid),
    .m_axis_l_tvalid(c_l_tvalid),
    .m_axis_l_tdata(c_l_tdata),
    .m_axis_l_tlast(c_l_tlast),
    .m_axis_l_tuser(c_l_tuser),
    .m_axis_r_tvalid(c_r_tvalid),
    .m_axis_r_tdata(c_r_tdata),
    .m_axis_r_tlast(c_r_tlast),
    .m_axis_r_tuser(c_r_tuser)
    
  );
  
    wire        d_l_tlast;
    wire        d_l_tready;
    wire        d_l_tuser;
    wire        d_l_tvalid;
    wire  [AXIS_TDATA_WIDTH-1:0] d_l_tdata; 
    wire        d_r_tlast;
    wire        d_r_tready;
    wire        d_r_tuser;
    wire        d_r_tvalid;
    wire  [AXIS_TDATA_WIDTH-1:0] d_r_tdata; 
    
    SGM#(
	    .HEIGHT(HEIGHT),
	    .WIDTH(WIDTH),
        .MAX_DISP(MAX_DISP),
        .CNTX_SIZE(CNTX_SIZE),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	   
		.AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH),
		
		.P1(P1),
        .P2(P2)

	) sgm_l
	(
	    .aclk(aclk),
	    .aresetn(aresetn),
	
		.s_axis_tvalid(c_l_tvalid),
		.s_axis_tdata(c_l_tdata),
		.s_axis_tlast(c_l_tlast),
		.s_axis_tuser(c_l_tuser),
		.m_axis_tvalid(d_l_tvalid),
		.m_axis_tdata(d_l_tdata) ,
		.m_axis_tlast(d_l_tlast),
		.m_axis_tuser(d_l_tuser)
    );  
    
    SGM#(
	    .HEIGHT(HEIGHT),
	    .WIDTH(WIDTH),
        .MAX_DISP(MAX_DISP),
        .CNTX_SIZE(CNTX_SIZE),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	   
		.AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH),
		
		.P1(P1),
        .P2(P2)

	) sgm_r
	(
	    .aclk(aclk),
	    .aresetn(aresetn),
	
		.s_axis_tvalid(c_r_tvalid),
		.s_axis_tdata(c_r_tdata),
		.s_axis_tlast(c_r_tlast),
		.s_axis_tuser(c_r_tuser),
		.m_axis_tvalid(d_r_tvalid),
		.m_axis_tdata(d_r_tdata) ,
		.m_axis_tlast(d_r_tlast),
		.m_axis_tuser(d_r_tuser)
    );  
  
  
  
  hdmi_out_uhd #(
        .name("sgmL_0p"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    sgmL
       (.s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(d_l_tdata           ), 
        .VIDEO_OUT_tlast(d_l_tlast           ),
        .VIDEO_OUT_tready(d_l_tready         ),
        .VIDEO_OUT_tuser(d_l_tuser           ),
        .VIDEO_OUT_tvalid(d_l_tvalid         ));
     
    hdmi_out_uhd #(
        .name("sgmR_0p"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    sgmR
       (.s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(d_r_tdata           ), 
        .VIDEO_OUT_tlast(d_r_tlast           ),
        .VIDEO_OUT_tready(d_r_tready         ),
        .VIDEO_OUT_tuser(d_r_tuser           ),
        .VIDEO_OUT_tvalid(d_r_tvalid         ));
  
  /*
  wire        d_l_tlast;
  wire        d_l_tready;
  wire        d_l_tuser;
  wire        d_l_tvalid;
  wire  [AXIS_TDATA_WIDTH-1:0] d_l_tdata;
  
  Min_disp#(
        .MAX_DISP(MAX_DISP),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)minL(
	    .aclk(aclk),
		.s_axis_costs_tdata(c_l_tdata),
		.s_axis_costs_tlast(c_l_tlast),
		.s_axis_costs_tuser(c_l_tuser),
		.s_axis_costs_tvalid(c_l_tvalid),
		.m_axis_min_tvalid(d_l_tvalid),
		.m_axis_min_tdata(d_l_tdata) ,
		.m_axis_min_tlast(d_l_tlast),
		.m_axis_min_tuser(d_l_tuser)
    );
    
  wire        d_r_tlast;
  wire        d_r_tready;
  wire        d_r_tuser;
  wire        d_r_tvalid;
  wire  [AXIS_TDATA_WIDTH-1:0] d_r_tdata;
  
  
  Min_disp#(
        .MAX_DISP(MAX_DISP),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),
	    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)minR(
	    .aclk(aclk),
		.s_axis_costs_tdata(c_r_tdata),
		.s_axis_costs_tlast(c_r_tlast),
		.s_axis_costs_tuser(c_r_tuser),
		.s_axis_costs_tvalid(c_r_tvalid),
		.m_axis_min_tvalid(d_r_tvalid),
		.m_axis_min_tdata(d_r_tdata) ,
		.m_axis_min_tlast(d_r_tlast),
		.m_axis_min_tuser(d_r_tuser)
    );
  
 
  
  hdmi_out_uhd #(
        .name("dispL"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    dispL
       (.s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(d_l_tdata           ), 
        .VIDEO_OUT_tlast(d_l_tlast           ),
        .VIDEO_OUT_tready(d_l_tready         ),
        .VIDEO_OUT_tuser(d_l_tuser           ),
        .VIDEO_OUT_tvalid(d_l_tvalid         ));
    
    
    hdmi_out_uhd #(
        .name("dispR"),
        .NEW_WIDTH(WIDTH),
        .NEW_HEIGHT(HEIGHT),
        .CHANNELS(1),
        .MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK)
        )
    dispR
       (.s_axis_video_aclk(aclk),
        .VIDEO_OUT_tdata(d_r_tdata           ), 
        .VIDEO_OUT_tlast(d_r_tlast           ),
        .VIDEO_OUT_tready(d_r_tready         ),
        .VIDEO_OUT_tuser(d_r_tuser           ),
        .VIDEO_OUT_tvalid(d_r_tvalid         ));
    */
endmodule
