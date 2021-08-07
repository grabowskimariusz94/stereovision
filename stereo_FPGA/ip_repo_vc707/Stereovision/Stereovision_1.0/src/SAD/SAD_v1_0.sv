
`timescale 1 ns / 1 ps

	module SAD_v1_0 #(
	    parameter HEIGHT = 495,
	    parameter WIDTH = 740,
        parameter MAX_DISP = 64,
        parameter CNTX_SIZE = 3,
        parameter MAX_SAMPLES_PER_CLOCK = 4,
	   
		parameter AXIS_TDATA_WIDTH	= 32,
		parameter DATA_WIDTH = 8

	)(
	    input wire  aclk,
		
		// Ports of Axi Slave Bus Interface S_AXIS_L
		output wire  s_axis_l_tready,
		input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_l_tdata, // MSB - the eldest, LSB - the latest
		input wire  s_axis_l_tlast,
		input wire  s_axis_l_tuser,
		input wire  s_axis_l_tvalid,

		// Ports of Axi Slave Bus Interface S_AXIS_R
		output wire  s_axis_r_tready,
		input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_r_tdata,
		input wire  s_axis_r_tlast,
		input wire  s_axis_r_tuser,
		input wire  s_axis_r_tvalid,

		// Ports of Axi Master Bus Interface M_AXIS_L
		input wire  m_axis_l_tready,
		output reg  m_axis_l_tvalid,
		output reg [MAX_DISP-1:0][DATA_WIDTH-1:0] m_axis_l_tdata [MAX_SAMPLES_PER_CLOCK-1:0],
		output reg  m_axis_l_tlast,
		output reg  m_axis_l_tuser,
        
        
		// Ports of Axi Master Bus Interface M_AXIS_R
		input wire  m_axis_r_tready,
		output reg  m_axis_r_tvalid,
		output reg [MAX_DISP-1:0][DATA_WIDTH-1:0]  m_axis_r_tdata [MAX_SAMPLES_PER_CLOCK-1:0],
		output reg  m_axis_r_tlast,
		output reg  m_axis_r_tuser
	
	);
	
// --------------------------------------
//  Ncntx_Xppc
// --------------------------------------   

    logic tready;
    assign tready = (m_axis_l_tready|(!m_axis_l_tvalid))&(m_axis_r_tready|(!m_axis_r_tvalid));

    logic s_axis_l_tlast_buf = 1'b0; // needed for proper operation of the Ncntx_Xppc
    logic s_axis_r_tlast_buf = 1'b0;
	always @(posedge aclk)
	begin
	   if (s_axis_l_tready) 
	       s_axis_l_tlast_buf <= s_axis_l_tlast;
	   if (s_axis_r_tready)     
	       s_axis_r_tlast_buf <= s_axis_r_tlast;
	end

	logic [(DATA_WIDTH+3)-1:0] out_cntx_r [CNTX_SIZE][CNTX_SIZE][MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1)];
	logic out_cntx_r_valid_int [MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1)],out_cntx_r_valid [MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1)], out_cntx_valid [MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1)];
	logic buf_r_tvalid, buf_r_tuser, buf_r_tlast;
	logic [(DATA_WIDTH+3)-1:0] out_cntx_l [CNTX_SIZE][CNTX_SIZE][MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1)];
	logic buf_l_tvalid, buf_l_tuser, buf_l_tlast;
	
    Ncntx_Xppc
    #(
        .C_S00_DATA_WIDTH(DATA_WIDTH),    // Width of component data
        .C_S00_AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),   // Width of TDATA
        .C_S00_MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),    // Number of samples per clock    
      
        .C_S00_CNTX_SIZE(CNTX_SIZE),    // Size of context
        .C_S00_PIXELS_PER_LINE(WIDTH), // Pixels per one line
        .C_S00_LINES_IN_FRAME(HEIGHT), // Lines in one frame of video
    
        .C_M01_N_OUTPUT_CNTX(MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1))
    ) NXL
    (
        // Clock signals
        .aclk(aclk),
        .aresetn(1'b1),
        .aclken(1'b1),
            
        // Ports of AXIS Video Slave S00
        .s00_axis_video_tdata(s_axis_l_tdata),
        .s00_axis_video_tuser(s_axis_l_tuser),
        .s00_axis_video_tlast(s_axis_l_tlast&(!s_axis_l_tlast_buf)),
        .s00_axis_video_tvalid(s_axis_l_tvalid),
        .s00_axis_video_tready(s_axis_l_tready),
        
        
        .out_cntx(out_cntx_l),
        .m01_axis_video_tvalid(buf_l_tvalid),
        .m01_axis_video_tlast(buf_l_tlast),
        .m01_axis_video_tready(tready),
        .m01_axis_video_tuser(buf_l_tuser),
    
        .out_cntx_valid() //same as R
    );
    
    Ncntx_Xppc
    #(
        .C_S00_DATA_WIDTH(DATA_WIDTH),    // Width of component data
        .C_S00_AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),   // Width of TDATA
        .C_S00_MAX_SAMPLES_PER_CLOCK(MAX_SAMPLES_PER_CLOCK),    // Number of samples per clock    
      
        .C_S00_CNTX_SIZE(CNTX_SIZE),    // Size of context
        .C_S00_PIXELS_PER_LINE(WIDTH), // Pixels per one line
        .C_S00_LINES_IN_FRAME(HEIGHT), // Lines in one frame of video
    
        .C_M01_N_OUTPUT_CNTX(MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1))
    ) NXR
    (
        // Clock signals
        .aclk(aclk),
        .aresetn(1'b1),
        .aclken(1'b1),
            
        // Ports of AXIS Video Slave S00
        .s00_axis_video_tdata(s_axis_r_tdata),
        .s00_axis_video_tuser(s_axis_r_tuser),
        .s00_axis_video_tlast(s_axis_r_tlast&(!s_axis_r_tlast_buf)),
        .s00_axis_video_tvalid(s_axis_r_tvalid),
        .s00_axis_video_tready(s_axis_r_tready),
        
        .out_cntx(out_cntx_r),
        .m01_axis_video_tvalid(buf_r_tvalid),
        .m01_axis_video_tlast(buf_r_tlast),
        .m01_axis_video_tready(tready),
        .m01_axis_video_tuser(buf_r_tuser),
    
        .out_cntx_valid(out_cntx_r_valid_int)
    );
    
    // decoding out_cntx_r_valid_int
    always @(*) begin
        out_cntx_r_valid = '{default:1};
        for(integer i = 0; i < (MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1)); i = i + 1) begin
            for(integer j = i; j < (MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1)); j = j + 1) begin
                out_cntx_r_valid[j] = out_cntx_r_valid_int[i]&out_cntx_r_valid[j];
            end
        end
    end
    
    
// --------------------------------------
//  SAD Calculation
// --------------------------------------       
	logic [(MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1))-1:0][CNTX_SIZE-1:0][CNTX_SIZE-1:0][DATA_WIDTH-1:0] cntx_r ;
	logic [MAX_SAMPLES_PER_CLOCK-1:0][CNTX_SIZE-1:0][CNTX_SIZE-1:0][DATA_WIDTH-1:0] cntx_l ;
    
    always @(posedge aclk) begin
        if(tready) begin
            out_cntx_valid <= out_cntx_r_valid;
        end
    end
    always @(posedge aclk) begin
        if(tready) begin
            for(integer p = (MAX_DISP+(MAX_SAMPLES_PER_CLOCK-1))-1; p >= 0; p = p - 1) begin
              for (integer i = 0; i < CNTX_SIZE; i = i + 1) begin
                 for (integer j = 0; j < CNTX_SIZE; j = j + 1)
                    cntx_r[p][i][j] <= out_cntx_r[i][j][p][DATA_WIDTH-1:0];
              end     
            end
        end
    end
    always @(posedge aclk) begin
        if(tready) begin
            for(integer p = MAX_SAMPLES_PER_CLOCK-1; p >= 0; p = p - 1) begin
              for (integer i = 0; i < CNTX_SIZE; i = i + 1) begin
                 for (integer j = 0; j < CNTX_SIZE; j = j + 1)
                    cntx_l[p][i][j] <= out_cntx_l[i][j][p][DATA_WIDTH-1:0];
              end     
            end
        end
    end
 
    logic [MAX_DISP-1:0][DATA_WIDTH-1:0] sad [MAX_SAMPLES_PER_CLOCK-1:0];
    generate
        for (genvar i=0; i<MAX_DISP; i=i+1)
        begin: sads
            SAD s0 (
                .clk(aclk),
                .ready(tready),
                .i_kernel1_data(cntx_r[i+0]),
                .i_kernel2_data(cntx_l[0]),
                .i_kernels_valid(out_cntx_valid[i+0]),
                .o_sad_data(sad[0][i])
            );
            SAD s1 (
                .clk(aclk),
                .ready(tready),
                .i_kernel1_data(cntx_r[i+1]),
                .i_kernel2_data(cntx_l[1]),
                .i_kernels_valid(out_cntx_valid[i+1]),
                .o_sad_data(sad[1][i])
            );
            SAD s2 (
                .clk(aclk),
                .ready(tready),
                .i_kernel1_data(cntx_r[i+2]),
                .i_kernel2_data(cntx_l[2]),
                .i_kernels_valid(out_cntx_valid[i+2]),
                .o_sad_data(sad[2][i])
            );
            SAD s3 (
                .clk(aclk),
                .ready(tready), //////////////////
                .i_kernel1_data(cntx_r[i+3]),
                .i_kernel2_data(cntx_l[3]),
                .i_kernels_valid(out_cntx_valid[i+3]),
                .o_sad_data(sad[3][i])
            );
        end
    endgenerate
   // sads calculations pipelining ////////////////////////////////
    logic [2:0] SAD_valid = 3'b00;
    logic [2:0] SAD_last = 3'b00;
	logic [2:0] SAD_user = 3'b00;
    always @(posedge aclk) begin
        if(tready) begin
            SAD_valid[0] <= buf_r_tvalid && buf_l_tvalid;
            SAD_last[0] <= buf_r_tlast && buf_l_tlast;
            SAD_user[0] <= buf_r_tuser && buf_l_tuser;
            SAD_valid[2:1] <= SAD_valid[1:0];
            SAD_last[2:1] <= SAD_last[1:0];
            SAD_user[2:1] <= SAD_user[1:0];
        end
    end
    
	logic [MAX_DISP-1:0][DATA_WIDTH-1:0] sad_buf [MAX_DISP+MAX_SAMPLES_PER_CLOCK-1:0] = '{default:1};
	
	always @(*) begin
        for(integer p = MAX_SAMPLES_PER_CLOCK-1; p >= 0; p = p - 1)
                sad_buf[p]<=sad[p];  
    end
    
	always @(posedge aclk) begin
	    if(tready) begin
            if(SAD_valid[2]) begin
                for(integer p = MAX_SAMPLES_PER_CLOCK-1; p >= 0; p = p - 1) begin
                    for (integer i = 0; i < (MAX_DISP/MAX_SAMPLES_PER_CLOCK); i = i + 1)
                        sad_buf[MAX_SAMPLES_PER_CLOCK*i+p+MAX_SAMPLES_PER_CLOCK]<= sad_buf[MAX_SAMPLES_PER_CLOCK*i+p];
                end
            end
        end
    end
    
    // buf sads pipelining
    logic [(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1:0] buf_SAD_valid='{default:0};
    logic [(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1:0] buf_SAD_last='{default:0};
	logic [(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1:0] buf_SAD_user='{default:0};
    always @(posedge aclk) 
    begin
        if(tready) begin
            if(SAD_valid[2]) begin
                buf_SAD_valid[0] <= SAD_valid[2];
                buf_SAD_valid[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1:1] <= buf_SAD_valid[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-2:0];
                buf_SAD_last[0] <= SAD_last[2];
                buf_SAD_last[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1:1] <= buf_SAD_last[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-2:0];
                buf_SAD_user[0] <= SAD_user[2];
                buf_SAD_user[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1:1] <= buf_SAD_user[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-2:0];
            end 
        end
    end
    
    always @(posedge aclk) begin
        if(tready) begin
            for(integer p = MAX_SAMPLES_PER_CLOCK-1; p >= 0; p = p - 1)
                    m_axis_l_tdata[p] <= sad_buf[MAX_DISP+p]; 
            m_axis_l_tvalid <= SAD_valid[2] ? buf_SAD_valid[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1] : 1'b0;
            m_axis_l_tlast <= SAD_valid[2] ? buf_SAD_last[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1] : 1'b0;
            m_axis_l_tuser <= SAD_valid[2] ? buf_SAD_user[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1] : 1'b0;
        end
    end
    
    
    always @(posedge aclk) begin
        if(tready) begin
            for(integer p = MAX_SAMPLES_PER_CLOCK-1; p >= 0; p = p - 1) begin
                for (integer i = 0; i < MAX_DISP; i = i + 1)
                    m_axis_r_tdata[p][i] <= sad_buf[MAX_DISP+p-i][i];
            end
            m_axis_r_tvalid <= SAD_valid[2] ? buf_SAD_valid[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1] : 1'b0;
            m_axis_r_tlast <= SAD_valid[2] ? buf_SAD_last[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1] : 1'b0;
            m_axis_r_tuser <= SAD_valid[2] ? buf_SAD_user[(MAX_DISP/MAX_SAMPLES_PER_CLOCK)-1] : 1'b0;
        end
    end
	
	endmodule
