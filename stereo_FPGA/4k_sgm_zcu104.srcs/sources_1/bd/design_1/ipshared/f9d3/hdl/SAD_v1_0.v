
`timescale 1 ns / 1 ps

	module SAD_v1_0 #
	(
	    parameter integer height = 495,
	    parameter integer width = 740,
        parameter integer log_width = 10,
	   
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
	
	genvar iR3,iR2,iR1,iR0;
	wire [6:0] l_valid_col, r_valid_col;
	wire l_valid, r_valid;
	wire kernels_valid;
	wire [535:0]linesL[2:0];
	wire [535:0]linesR[2:0];
	
	wire [71:0] kernelsL[67:0];
	wire [511:0] sadR [3:0];
	wire [3:0] disp_valid;
	
	reg [1:0] SADR_valid=2'b00;
	
	reg [23:0] pixel_count=0;
	
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
    
    assign kernels_valid = l_valid_col && r_valid_col;
    
    generate
        for (iR0=0; iR0<64; iR0=iR0+1)
        begin: sadsR0
            SAD s (
                .clk(aclk),
                .i_kernel1_data({linesL[2][24*iR0+23-:24],linesR[1][24*iR0+23-:24],linesR[0][24*iR0+23-:24]}),
                .i_kernel2_data({linesR[2][23-:24],linesR[1][23-:24],linesR[0][23-:24]}),
                //.i_kernels_valid(kernels_valid),
                .o_sad_data(sadR[0][iR0*8+7-:8])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
        for (iR1=0; iR1<64; iR1=iR1+1)
        begin: sadsR1
            SAD s (
                .clk(aclk),
                .i_kernel1_data({linesL[2][24*iR1+31-:24],linesR[1][24*iR1+31-:24],linesR[0][24*iR1+31-:24]}),
                .i_kernel2_data({linesR[2][31-:24],linesR[1][31-:24],linesR[0][31-:24]}),
                //.i_kernels_valid(kernels_valid),
                .o_sad_data(sadR[1][iR1*8+7-:8])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
        for (iR2=0; iR2<64; iR2=iR2+1)
        begin: sadsR2
            SAD s (
                .clk(aclk),
                .i_kernel1_data({linesL[2][24*iR2+39-:24],linesR[1][24*iR2+39-:24],linesR[0][24*iR2+39-:24]}),
                .i_kernel2_data({linesR[2][39-:24],linesR[1][39-:24],linesR[0][39-:24]}),
                //.i_kernels_valid(kernels_valid),
                .o_sad_data(sadR[2][iR2*8+7-:8])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
        for (iR3=0; iR3<64; iR3=iR3+1)
        begin: SadsR3
            SAD s (
                .clk(aclk),
                .i_kernel1_data({linesL[2][24*iR3+47-:24],linesR[1][24*iR3+47-:24],linesR[0][24*iR3+47-:24]}),
                .i_kernel2_data({linesR[2][47-:24],linesR[1][47-:24],linesR[0][47-:24]}),
                //.i_kernels_valid(kernels_valid),
                .o_sad_data(sadR[3][iR3*8+7-:8])
                //.o_sad_valid(m_axis_l_tvalid)
            );
        end
    endgenerate
    
    // sads calculations pipelining
    always @(posedge aclk) 
    begin
        SADR_valid[0] <= kernels_valid;
        SADR_valid[1] <= SADR_valid[0];
    end
    // TO DO: with Min_SAD valid the same?
    
    Min_SAD DispR0(
        .clk(aclk),
        .i_sads_data(sadR[0]), 
        .i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[7-:8]),
        .o_disp_valid(disp_valid[0])
    );
    
    Min_SAD DispR1(
        .clk(aclk),
        .i_sads_data(sadR[1]), 
        .i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[15-:8]),
        .o_disp_valid(disp_valid[1])
    );
    
    Min_SAD DispR2(
        .clk(aclk),
        .i_sads_data(sadR[2]), 
        .i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[23-:8]),
        .o_disp_valid(disp_valid[2])
    );
    
    Min_SAD DispR3(
        .clk(aclk),
        .i_sads_data(sadR[3]), 
        .i_sads_valid(SADR_valid[1]),
        .o_disp_data(m_axis_r_tdata[31-:8]),
        .o_disp_valid(disp_valid[3])
    );
    
    assign m_axis_r_tvalid = disp_valid[3]&&disp_valid[2]&&disp_valid[1]&&disp_valid[0];
    
    always @(posedge aclk) 
    begin
        if(m_axis_r_tvalid)begin
            if(pixel_count >= height*width-4)
                pixel_count <= 0;
            else
                pixel_count <= pixel_count+4;
        end
    end
    
    assign m_axis_r_tuser = (m_axis_r_tvalid&&(pixel_count==0))? 1'b1 : 1'b0;
    
	endmodule
