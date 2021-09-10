
`timescale 1 ns / 1 ps

	module Video_Mux_v1_0 #
	(
        parameter integer SAMPLES_PER_CLOCK = 4, // Number of samples per clock
        parameter integer BITS_PER_PIXEL    = 24, // Width of component data (24)
        parameter integer TDATA_WIDTH       = SAMPLES_PER_CLOCK*BITS_PER_PIXEL // Width of TDATA
	)
	(
        input wire aclk,
        input wire aresetn,
		
		output wire  s_axis_video0_tready,
		input wire [TDATA_WIDTH-1 : 0] s_axis_video0_tdata,
		input wire  s_axis_video0_tuser,
		input wire  s_axis_video0_tlast,
		input wire  s_axis_video0_tvalid,
		
		output wire  s_axis_video1_tready,
		input wire [TDATA_WIDTH-1 : 0] s_axis_video1_tdata,
		input wire  s_axis_video1_tuser,
		input wire  s_axis_video1_tlast,
		input wire  s_axis_video1_tvalid,

		output wire  m_axis_video_tvalid,
		output wire [TDATA_WIDTH-1 : 0] m_axis_video_tdata,
		output wire  m_axis_video_tuser,
		output wire  m_axis_video_tlast,
		input wire  m_axis_video_tready,
		
		input sw

	);
	
    wire [1:0] mux_video_tvalid;
    wire [1:0] mux_video_tuser;
    wire [1:0] mux_video_tlast;
    wire [1:0] mux_video_tready;
    
    assign mux_video_tvalid[0] = s_axis_video0_tvalid;
    assign mux_video_tuser[0] = s_axis_video0_tuser;
    assign mux_video_tlast[0] = s_axis_video0_tlast;
    assign mux_video_tready[0] = m_axis_video_tready;
    
    assign mux_video_tvalid[1] = s_axis_video1_tvalid;
    assign mux_video_tuser[1] = s_axis_video1_tuser;
    assign mux_video_tlast[1] = s_axis_video1_tlast;
    assign mux_video_tready[1] = m_axis_video_tready;
    
    assign m_axis_video_tvalid = mux_video_tvalid[sw];
    assign m_axis_video_tuser = mux_video_tuser[sw];
    assign m_axis_video_tlast = mux_video_tlast[sw];
    assign m_axis_video_tdata = sw ? s_axis_video1_tdata : s_axis_video0_tdata;
    assign s_axis_video0_tready = mux_video_tready[sw];
    assign s_axis_video1_tready = mux_video_tready[sw];

	endmodule
