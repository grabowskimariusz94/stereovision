
`timescale 1 ns / 1 ps

	module SAD_v1_0 #
	(
	    parameter integer HEIGHT = 495,
	    parameter integer WIDTH = 740,
        parameter integer LOG_WIDTH = 10,
        parameter integer MAX_DISP = 64,
        parameter integer CNTX_SIZE = 3,
	   
		// Parameters of Axi Slave Bus Interface S_AXIS_L
		parameter integer C_S_AXIS_L_TDATA_WIDTH	= 32,

		// Parameters of Axi Slave Bus Interface S_AXIS_R
		parameter integer C_S_AXIS_R_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M_AXIS_L
		parameter integer C_M_AXIS_L_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M_AXIS_R
		parameter integer C_M_AXIS_R_TDATA_WIDTH	= 32
	)
	(
	    input wire  aclk,
		input wire  aresetn,
		
		// Ports of Axi Slave Bus Interface S_AXIS_L
		//output wire  s_axis_l_tready,
		input wire [C_S_AXIS_L_TDATA_WIDTH-1 : 0] s_axis_l_tdata,
		input wire  s_axis_l_tlast,
		input wire  s_axis_l_tuser,
		input wire  s_axis_l_tvalid,

		// Ports of Axi Slave Bus Interface S_AXIS_R
		//output wire  s_axis_r_tready,
		input wire [C_S_AXIS_R_TDATA_WIDTH-1 : 0] s_axis_r_tdata,
		input wire  s_axis_r_tlast,
		input wire  s_axis_r_tuser,
		input wire  s_axis_r_tvalid,

		// Ports of Axi Master Bus Interface M_AXIS_L
		output wire  m_axis_l_tvalid,
		output wire [C_M_AXIS_L_TDATA_WIDTH-1 : 0] m_axis_l_tdata,
		output wire  m_axis_l_tlast,
		output wire  m_axis_l_tuser,
		//input wire  m_axis_l_tready,

		// Ports of Axi Master Bus Interface M_AXIS_R
		output wire  m_axis_r_tvalid,
		output wire [C_M_AXIS_R_TDATA_WIDTH-1 : 0] m_axis_r_tdata,
		output wire  m_axis_r_tlast,
		output wire  m_axis_r_tuser
		//input wire  m_axis_r_tready
	);
	/*
	
	wire [6:0] l_valid_col, r_valid_col;
	wire l_valid, r_valid;
	
	wire [535:0]linesL[2:0];
	wire [535:0]linesR[2:0];
	
	wire [71:0] kernelsL[67:0];
	
	wire [3:0] disp_valid;
	
	reg [23:0] pixel_count=0;
	*/
	wire [10:0] out_cntx_r [CNTX_SIZE][CNTX_SIZE][MAX_DISP+3];
	wire out_cntx_r_valid [MAX_DISP+3];
	wire buf_r_tvalid, buf_r_tuser, buf_r_tlast;
	wire [10:0] out_cntx_l [CNTX_SIZE][CNTX_SIZE][MAX_DISP+3];
	wire out_cntx_l_valid [MAX_DISP+3];
	wire buf_l_tvalid, buf_l_tuser, buf_l_tlast;
	
	logic [MAX_DISP-1:0] kernels_valid [4];
	logic [(MAX_DISP+3)-1:0][CNTX_SIZE-1:0][CNTX_SIZE-1:0][7:0] cntx_r ;
	logic [4-1:0][CNTX_SIZE-1:0][CNTX_SIZE-1:0][7:0] cntx_l ;
	
	genvar i3,i2,i1,i0;
	wire [63:0][7:0] sad [3:0];
	reg [63:0][7:0] sadL [3:0];
	reg [63:0][7:0] sadL_buf [3:0];
	reg [63:0][7:0] sadR [3:0];
	reg [63:0][7:0] sadR_buf [67:0];
	reg [3:0] SAD_valid=2'b00;
	reg [3:0] SAD_last=2'b00;
	reg [3:0] SAD_user=2'b00;
	reg [5:0] Min_SAD_valid=6'b000000;
	reg [5:0] Min_SAD_last=6'b000000;
	reg [5:0] Min_SAD_user=6'b000000;
	/*
	LB_Control #(
        .width(width),
        .log_width(log_width)
    ) BufL(
	    .clk(aclk),
        .rstn(aresetn),
        .i_pixel_data(s_axis_l_tdata),
        .i_pixel_valid(s_axis_l_tvalid),
        .o_line0_data(linesL[0]),
        .o_line1_data(linesL[1]),
        .o_line2_data(linesL[2]),
        //.o_valid_line0(),
        //.o_valid_line1(),
        //.o_valid_line2(),
        .o_valid_col(l_valid_col),
        .o_lines_valid(l_valid)
	);
	
	LB_Control #(
        .width(width),
        .log_width(log_width)
    ) BufR (
	    .clk(aclk),
        .rstn(aresetn),
        .i_pixel_data(s_axis_r_tdata),
        .i_pixel_valid(s_axis_r_tvalid),
        .o_line0_data(linesR[0]),
        .o_line1_data(linesR[1]),
        .o_line2_data(linesR[2]),
        //.o_valid_line0(),
        //.o_valid_line1(),
        //.o_valid_line2(),
        .o_valid_col(r_valid_col),
        .o_lines_valid(r_valid)
	);
    */
    
    Ncntx_Xppc
    #(
        .C_S00_DATA_WIDTH(8),    // Width of component data
        .C_S00_AXIS_TDATA_WIDTH(4*8),   // Width of TDATA
        .C_S00_MAX_SAMPLES_PER_CLOCK(4),    // Number of samples per clock   
      
        .C_S00_CNTX_SIZE(CNTX_SIZE),    // Size of context
        .C_S00_PIXELS_PER_LINE(WIDTH), // Pixels per one line
        .C_S00_LINES_IN_FRAME(HEIGHT), // Lines in one frame of video
    
        .C_M01_N_OUTPUT_CNTX(MAX_DISP+3)
    ) NXR
    (
        // Clock signals
        .aclk(aclk),
        .aresetn(aresetn),
        .aclken(1'b1),
            
        // Ports of AXIS Video Slave S00
        .s00_axis_video_tdata({s_axis_r_tdata[7-:8],s_axis_r_tdata[15-:8],s_axis_r_tdata[23-:8],s_axis_r_tdata[31-:8]}), //first - first pixel (LSB)
        .s00_axis_video_tuser(s_axis_r_tuser),
        .s00_axis_video_tlast(s_axis_r_tlast),
        .s00_axis_video_tvalid(s_axis_r_tvalid),
        .s00_axis_video_tready(),
        
        
        .out_cntx(out_cntx_r),
        .m01_axis_video_tvalid(buf_r_tvalid),
        .m01_axis_video_tlast(buf_r_tlast),
        .m01_axis_video_tready(1'b1),
        .m01_axis_video_tuser(buf_r_tuser),
    
        .out_cntx_valid(out_cntx_r_valid)
    );
    
    Ncntx_Xppc
    #(
        .C_S00_DATA_WIDTH(8),    // Width of component data
        .C_S00_AXIS_TDATA_WIDTH(4*8),   // Width of TDATA
        .C_S00_MAX_SAMPLES_PER_CLOCK(4),    // Number of samples per clock   
      
        .C_S00_CNTX_SIZE(CNTX_SIZE),    // Size of context
        .C_S00_PIXELS_PER_LINE(WIDTH), // Pixels per one line
        .C_S00_LINES_IN_FRAME(HEIGHT), // Lines in one frame of video
    
        .C_M01_N_OUTPUT_CNTX(MAX_DISP+3)
    ) NXL
    (
        // Clock signals
        .aclk(aclk),
        .aresetn(aresetn),
        .aclken(1'b1),
            
        // Ports of AXIS Video Slave S00
        .s00_axis_video_tdata({s_axis_l_tdata[7-:8],s_axis_l_tdata[15-:8],s_axis_l_tdata[23-:8],s_axis_l_tdata[31-:8]}),
        .s00_axis_video_tuser(s_axis_l_tuser),
        .s00_axis_video_tlast(s_axis_l_tlast),
        .s00_axis_video_tvalid(s_axis_l_tvalid),
        .s00_axis_video_tready(),
        
        
        .out_cntx(out_cntx_l),
        .m01_axis_video_tvalid(buf_l_tvalid),
        .m01_axis_video_tlast(buf_l_tlast),
        .m01_axis_video_tready(1'b1),
        .m01_axis_video_tuser(buf_l_tuser),
    
        .out_cntx_valid(out_cntx_l_valid)
    );
    
    always @(*)
    begin
        for (int i=0;i<4;i=i+1)
            for (int j=0;j<64;j=j+1)
                kernels_valid[i][j] = out_cntx_r_valid[j+i] && out_cntx_l_valid[i];
    end
    
    always @(*) begin
        for(integer p = 66; p >= 0; p = p - 1) begin
          for (integer i = 0; i < CNTX_SIZE; i = i + 1) begin
             for (integer j = 0; j < CNTX_SIZE; j = j + 1)
                cntx_r[p][i][j]= out_cntx_r[i][j][p][7:0];
          end     
        end
    end
    always @(*) begin
        for(integer p = 3; p >= 0; p = p - 1) begin
          for (integer i = 0; i < CNTX_SIZE; i = i + 1) begin
             for (integer j = 0; j < CNTX_SIZE; j = j + 1)
                cntx_l[p][i][j]= out_cntx_l[i][j][p][7:0];
          end     
        end
    end
 
    generate
        for (i0=0; i0<64; i0=i0+1)
        begin: sads0
            SAD s (
                .clk(aclk),
                .i_kernel1_data(cntx_r[i0+0]),
                .i_kernel2_data(cntx_l[0]),
                .i_kernels_valid(kernels_valid[0][i0]),
                .o_sad_data(sad[0][i0])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
    endgenerate
    generate
        for (i1=0; i1<64; i1=i1+1)
        begin: sads1
            SAD s (
                .clk(aclk),
                .i_kernel1_data(cntx_r[i1+1]),
                .i_kernel2_data(cntx_l[1]),
                .i_kernels_valid(kernels_valid[1][i1]),
                .o_sad_data(sad[1][i1])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
    endgenerate
    generate
        for (i2=0; i2<64; i2=i2+1)
        begin: sads2
            SAD s (
                .clk(aclk),
                .i_kernel1_data(cntx_r[i2+2]),
                .i_kernel2_data(cntx_l[2]),
                .i_kernels_valid(kernels_valid[2][i2]),
                .o_sad_data(sad[2][i2])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
    endgenerate
    generate
        for (i3=0; i3<64; i3=i3+1)
        begin: Sads3
            SAD s (
                .clk(aclk),
                .i_kernel1_data(cntx_r[i3+3]),
                .i_kernel2_data(cntx_l[3]),
                .i_kernels_valid(kernels_valid[3][i3]),
                .o_sad_data(sad[3][i3])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
    endgenerate
    
    always @(posedge aclk) 
        if(SAD_valid[1])
            sadL_buf <= sad;
    always @(posedge aclk) 
        sadL <= sadL_buf;
    
    initial begin
        for (integer i = 0; i < 68; i = i + 1) begin
             for (integer j = 0; j < 64; j = j + 1)
                sadR_buf[i][j] = 255;
        end
    end
    
    always @(posedge aclk) 
    begin
        if(SAD_valid[1])begin
            for(integer p = 3; p >= 0; p = p - 1) begin
                sadR_buf[67-3+p]<=sad[p];
                for (integer i = 0; i < 16; i = i + 1) // 64/4
                    sadR_buf[4*i+p]<= sadR_buf[4*i+4+p];
            end
        end
    end
    
    always @(posedge aclk) 
    begin
        for(integer p = 3; p >= 0; p = p - 1) begin
            for (integer i = 0; i < 64; i = i + 1)
                sadR[p][i]<=sadR_buf[i+1+p][i];//[64-i+p][i];
        end
    end
    
    
    // sads calculations pipelining
    always @(posedge aclk) 
    begin
        SAD_valid[0] <= buf_r_tvalid && buf_l_tvalid;
        SAD_valid[3:1] <= SAD_valid[2:0];
        SAD_last[0] <= buf_r_tlast && buf_l_tlast;
        SAD_last[3:1] <= SAD_last[2:0];
        SAD_user[0] <= buf_r_tuser && buf_l_tuser;
        SAD_user[3:1] <= SAD_user[2:0];
    end
    
   
    Min_SAD DispL0(
        .clk(aclk),
        .i_sads_data(sadL[0]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_l_tdata[7-:8])
        //.o_disp_valid(disp_valid[0])
    );
    
    Min_SAD DispL1(
        .clk(aclk),
        .i_sads_data(sadL[1]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_l_tdata[15-:8])
        //.o_disp_valid(disp_valid[1])
    );
    
    Min_SAD DispL2(
        .clk(aclk),
        .i_sads_data(sadL[2]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_l_tdata[23-:8])
        //.o_disp_valid(disp_valid[2])
    );
    
    Min_SAD DispL3(
        .clk(aclk),
        .i_sads_data(sadL[3]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_l_tdata[31-:8])
        //.o_disp_valid(disp_valid[3])
    );
    
    
    //wire [31:0] not_m_axis_r;
    
    Min_SAD DispR0(
        .clk(aclk),
        .i_sads_data(sadR[0]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[7-:8])
        //.o_disp_valid(disp_valid[0])
    );
    
    Min_SAD DispR1(
        .clk(aclk),
        .i_sads_data(sadR[1]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[15-:8])
        //.o_disp_valid(disp_valid[1])
    );
    
    Min_SAD DispR2(
        .clk(aclk),
        .i_sads_data(sadR[2]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[23-:8])
        //.o_disp_valid(disp_valid[2])
    );
    
    Min_SAD DispR3(
        .clk(aclk),
        .i_sads_data(sadR[3]), 
        //.i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[31-:8])
        //.o_disp_valid(disp_valid[3])
    );
    /*
    assign m_axis_r_tdata[31-:8] = (255-not_m_axis_r[31-:8]);
    assign m_axis_r_tdata[23-:8] = (255-not_m_axis_r[23-:8]);
    assign m_axis_r_tdata[15-:8] = (255-not_m_axis_r[15-:8]);
    assign m_axis_r_tdata[7-:8] = (255-not_m_axis_r[7-:8]);
    */
    always @(posedge aclk) 
    begin
        Min_SAD_valid[0] <= SAD_valid[3];
        Min_SAD_valid[5:1] <= Min_SAD_valid[4:0];
        Min_SAD_last[0] <= SAD_last[3];
        Min_SAD_last[5:1] <= Min_SAD_last[4:0];
        Min_SAD_user[0] <= SAD_user[3];
        Min_SAD_user[5:1] <= Min_SAD_user[4:0];
    end
     
    assign m_axis_l_tvalid = Min_SAD_valid[5];
    assign m_axis_l_tlast = Min_SAD_last[5];
    assign m_axis_l_tuser = Min_SAD_user[5];
    
    assign m_axis_r_tvalid = Min_SAD_valid[5];
    assign m_axis_r_tlast = Min_SAD_last[5];
    assign m_axis_r_tuser = Min_SAD_user[5];
    
	endmodule
