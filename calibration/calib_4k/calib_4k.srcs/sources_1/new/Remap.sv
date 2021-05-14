`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 13.05.2021 21:19:48
// Module Name: Map_Calc
// Target Devices: VC707
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////


module Remap #(
		parameter WIDTH = 640,
        parameter HEIGHT = 480,
		parameter DATA_WIDTH = 8,
		parameter NPPC = 4,
		parameter AXIS_TDATA_WIDTH	= 32,
		
		parameter MAX_SHIFT = 52,
		parameter SHIFT_WIDTH = 10,
		parameter PREC = 8,
		parameter PREC_INTER = 3,
		parameter NUM_OF_DIST_COEFFS = 5,
		parameter [(8+PREC)-1:0] fxL = 8589, fyL = 8594, fxR = 8641, fyR = 8634,
		parameter [(12+PREC)-1:0] cxL = 86666, cyL = 59274, cxR = 83761, cyR = 63587,
		parameter [(8+PREC)-1:0] fxNewInv = 31161, fyNewInv = 31161, // new camera matrices for L and R are the same
		parameter [(12+PREC)-1:0] cxNew = 87473, cyNew = 62371,
		parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsL [NUM_OF_DIST_COEFFS] = {-616, 322,  2, 0, -115},
		parameter signed [(PREC+PREC_INTER+2)-1:0] distCoeffsR [NUM_OF_DIST_COEFFS] = {-625, 400, -1, 2, -307},
		parameter signed [(PREC+PREC_INTER+2)-1:0] RInvL [3][3] = '{  {2047,   14,   -9},
		                                                              { -14, 2047,   10},
		                                                              {   9,  -10, 2047}  },
		parameter signed [(PREC+PREC_INTER+2)-1:0] RInvR [3][3] = '{  {2047,   22,  -14},
		                                                              { -22, 2047,  -10},
		                                                              {  14,   10, 2047}  }
		
	)
	(
		
        input wire  aclk,
        input wire  aresetn,

		output wire  s_axis_l_tready,
		input wire [DATA_WIDTH*NPPC-1 : 0] s_axis_l_tdata,
		input wire  s_axis_l_tvalid,
		input wire  s_axis_l_tlast,
		input wire  s_axis_l_tuser,
		
		output wire  s_axis_r_tready,
		input wire [DATA_WIDTH*NPPC-1 : 0] s_axis_r_tdata,
		input wire  s_axis_r_tvalid,
		input wire  s_axis_r_tlast,
		input wire  s_axis_r_tuser,

		output wire  m_axis_l_tvalid,
		output wire [DATA_WIDTH*NPPC-1 : 0] m_axis_l_tdata,
		input wire  m_axis_l_tready,
		output wire  m_axis_l_tlast,
		output wire  m_axis_l_tuser,
		
		output wire  m_axis_r_tvalid,
		output wire [DATA_WIDTH*NPPC-1 : 0] m_axis_r_tdata,
		input wire  m_axis_r_tready,
		output wire  m_axis_r_tlast,
		output wire  m_axis_r_tuser
	);
		
	localparam CNTX_SIZE = 2*MAX_SHIFT+1;
		
    logic s_axis_l_tlast_buf = 1'b0; // needed for proper operation of the Ncntx_Xppc
    logic s_axis_r_tlast_buf = 1'b0;
	always @(posedge aclk)
	begin
	   s_axis_l_tlast_buf <= s_axis_l_tlast;
	   s_axis_r_tlast_buf <= s_axis_l_tlast;
	end
		
	logic [(DATA_WIDTH+3)-1:0] out_cntx_r [CNTX_SIZE][CNTX_SIZE][1];
	logic [(DATA_WIDTH+3)-1:0] out_cntx_l [CNTX_SIZE][CNTX_SIZE][1];
	logic buf_r_tvalid, buf_r_tuser, buf_r_tlast;
	logic buf_l_tvalid, buf_l_tuser, buf_l_tlast;
	logic buf_tready;
	
	Ncntx_Xppc
    #(
        .C_S00_DATA_WIDTH(DATA_WIDTH),    // Width of component data
        .C_S00_AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),   // Width of TDATA
        .C_S00_MAX_SAMPLES_PER_CLOCK(NPPC),    // Number of samples per clock    
      
        .C_S00_CNTX_SIZE(CNTX_SIZE),    // Size of context
        .C_S00_PIXELS_PER_LINE(WIDTH), // Pixels per one line
        .C_S00_LINES_IN_FRAME(HEIGHT), // Lines in one frame of video
    
        .C_M01_N_OUTPUT_CNTX(1)
    ) NXL
    (
        // Clock signals
        .aclk(aclk),
        .aresetn(aresetn),
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
        .m01_axis_video_tready(buf_tready),
        .m01_axis_video_tuser(buf_l_tuser),
    
        .out_cntx_valid()
    );
    
    Ncntx_Xppc
    #(
        .C_S00_DATA_WIDTH(DATA_WIDTH),    // Width of component data
        .C_S00_AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),   // Width of TDATA
        .C_S00_MAX_SAMPLES_PER_CLOCK(NPPC),    // Number of samples per clock    
      
        .C_S00_CNTX_SIZE(CNTX_SIZE),    // Size of context
        .C_S00_PIXELS_PER_LINE(WIDTH), // Pixels per one line
        .C_S00_LINES_IN_FRAME(HEIGHT), // Lines in one frame of video
    
        .C_M01_N_OUTPUT_CNTX(1)
    ) NXR
    (
        // Clock signals
        .aclk(aclk),
        .aresetn(aresetn),
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
        .m01_axis_video_tready(buf_tready),
        .m01_axis_video_tuser(buf_r_tuser),
    
        .out_cntx_valid()
    );
    
    logic signed [NPPC-1:0][SHIFT_WIDTH+PREC-1 : 0] xL,xR,yL,yR;

    Map_Calc#(
    .WIDTH(WIDTH),
    .HEIGHT(HEIGHT),
    .DATA_WIDTH(DATA_WIDTH),
    .MAX_SAMPLES_PER_CLOCK(NPPC),
      
    .MAX_SHIFT(MAX_SHIFT),        
    .SHIFT_WIDTH(SHIFT_WIDTH),
	.PREC(PREC),
	.PREC_INTER(PREC_INTER),
	.NUM_OF_DIST_COEFFS(NUM_OF_DIST_COEFFS),
	.fxL(fxL), .fyL(fyL), .fxR(fxR), .fyR(fyR),
	.cxL(cxL), .cyL(cyL),.cxR(cxR), .cyR(cyR),
	.fxNewInv(fxNewInv), .fyNewInv(fyNewInv), // new camera matrices for L and R are the same
	.cxNew(cxNew), .cyNew(cyNew),
	.distCoeffsL(distCoeffsL),
	.distCoeffsR(distCoeffsR),
	.RInvL(RInvL),
	.RInvR(RInvR)
	) gen_vec
	(
        .aclk(aclk),
        .aresetn(aresetn),
        .c_en(buf_l_tvalid), // connect to tvalid //buf_r_tvalid&
        .last(buf_l_tlast), // connect to tlast //buf_r_tlast&
        .user(buf_l_tuser), // connect to tuser //buf_r_tuser&
        .ready(buf_tready),   // connect to tready
        

		.xL(xL),.xR(xR),.yL(yL),.yR(yR)
    );
    
    
    localparam integer MULT_LATENCY = 3;
    localparam integer ADD_LATENCY = 2;
    localparam integer LATENCY = MULT_LATENCY*3+ADD_LATENCY*3;
    
    logic [LATENCY-1:0] tuser_buf, tlast_buf, tvalid_buf;
    
    always @(posedge aclk) begin
        if (!aresetn) begin
            tuser_buf <= '0;
            tlast_buf <= '0;
            tvalid_buf <= '0;
        end else begin
            tuser_buf[0] <= buf_l_tuser;
            tuser_buf[LATENCY-1:1] <= tuser_buf[LATENCY-2:0];
            tlast_buf[0] <= buf_l_tlast;
            tlast_buf[LATENCY-1:1] <= tlast_buf[LATENCY-2:0];
            tvalid_buf[0] <= buf_l_tvalid;
            tvalid_buf[LATENCY-1:1] <= tvalid_buf[LATENCY-2:0];
        end
    end 
    assign m_axis_l_tuser = buf_l_tuser;
    assign m_axis_l_tlast = buf_l_tlast;
    assign m_axis_l_tvalid = buf_l_tvalid;
    
    // --- ADDER & MULTIPLIER --- BILINEAR INTERPOLATION ---
    wire [PREC+DATA_WIDTH-1:0] mult_x2x_f11_out [NPPC-1:0]; //8c4u
    wire [PREC+DATA_WIDTH-1:0] mult_x2x_f12_out [NPPC-1:0]; //8c4u
    wire [PREC+DATA_WIDTH-1:0] mult_xx1_f21_out [NPPC-1:0]; //8c4u
    wire [PREC+DATA_WIDTH-1:0] mult_xx1_f22_out [NPPC-1:0]; //8c4u
    
    wire [PREC+DATA_WIDTH-1:0] add_f11_f21_out [NPPC-1:0]; //8c4u
    wire [PREC+DATA_WIDTH-1:0] add_f12_f22_out [NPPC-1:0]; //8c4u
    
    wire [PREC+DATA_WIDTH-1:0] mult_y2y_fxy1_out [NPPC-1:0]; //8c8u
    wire [PREC+DATA_WIDTH-1:0] mult_yy1_fxy2_out [NPPC-1:0]; //8c8u
    
    wire [PREC+DATA_WIDTH-1:0] add_fxy_out [NPPC-1:0]; //8c8u
    
    generate
       for (genvar i = 0; i < NPPC; i = i + 1) begin : BIL_INT
          
            // fxy1 = (x2 - X)*f11 + (X - x1)*f21;
            mult_8_8_16 mult_x2x_f11 (                                  // latency: 3
              .CLK(aclk                                                  ), 
              .A({1'b1,{PREC{1'b0}}}-xL[i][PREC-1:0]                     ),  
              .B( out_cntx_l[(2*MAX_SHIFT-1)-yL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]][(2*MAX_SHIFT-1)-xL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]][0][DATA_WIDTH-1:0] ),  
              .P(mult_x2x_f11_out[i]           )   
            );
            
            mult_8_8_16 mult_xx1_f21 (                                  
              .CLK(aclk                                                         ),  
              .A(xL[i][PREC-1:0]                           ),  
              .B(out_cntx_l[(2*MAX_SHIFT-1)-yL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]][(2*MAX_SHIFT-1)-xL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]-1][0][DATA_WIDTH-1:0]  ), 
              .P(mult_xx1_f21_out[i]           )   
            );
            
            
            add_16_16_16 add_f11_f21 (                                  // latency: 2
              .A(mult_x2x_f11_out[i]), 
              .B(mult_xx1_f21_out[i]),  
              .CLK(aclk                                             ),  
              .S(add_f11_f21_out[i]   )   
            );
            
            // fxy2 = (x2 - X)*f12 + (X - x1)*f22;
            mult_8_8_16 mult_x2x_f12 (                                  // latency: 3
              .CLK(aclk                                                         ),  
              .A({1'b1,{PREC{1'b0}}}-xL[i][PREC-1:0]                           ),  
              .B(out_cntx_l[(2*MAX_SHIFT-1)-yL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]-1][(2*MAX_SHIFT-1)-xL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]][0][DATA_WIDTH-1:0]  ),  
              .P(mult_x2x_f12_out[i]            )   
            );
            
            mult_8_8_16 mult_xx1_f22 (                                 
              .CLK(aclk                                                         ),  
              .A(xL[i][PREC-1:0]                          ),  
              .B(out_cntx_l[(2*MAX_SHIFT-1)-yL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]-1][(2*MAX_SHIFT-1)-xL[i][SHIFT_WIDTH+PREC-1-:SHIFT_WIDTH]-1][0][DATA_WIDTH-1:0] ),  
              .P(mult_xx1_f22_out[i]          ) 
            );
            
             add_16_16_16 add_f12_f22 (                                      // latency: 2
              .A(mult_x2x_f12_out[i]   ),  
              .B(mult_xx1_f22_out[i]   ),  
              .CLK(aclk                                                 ),  
              .S(add_f12_f22_out[i]      )  
            );
            
            
            // fxy = (y2 - Y)*fxy1 + (Y - y1)*fxy2;
            mult_8_8_16 mult_y2y_fxy1 (                                    // latency: 3
              .CLK(aclk                                                 ), 
              .A({1'b1,{PREC{1'b0}}}-yL[i][PREC-1:0]                    ),  
              .B(add_f11_f21_out[i][PREC+DATA_WIDTH-1-:DATA_WIDTH]       ),  
              .P(mult_y2y_fxy1_out[i]   )  
            );
            
            mult_8_8_16 mult_yy1_fxy2 (                                    
              .CLK(aclk                                                 ),  
              .A(yL[i][PREC-1:0]                    ),  
              .B(add_f12_f22_out[i][PREC+DATA_WIDTH-1-:DATA_WIDTH]       ), 
              .P(mult_yy1_fxy2_out[i]   )  
            );
            
            
            add_16_16_16 add_fxy (                                          // latency: 2
              .A(mult_y2y_fxy1_out[i]   ),
              .B(mult_yy1_fxy2_out[i]  ),  
              .CLK(aclk                                                 ),
              .S(add_fxy_out[i]         )   
            );
            
            
            assign  m_axis_l_tdata[i * DATA_WIDTH  - 1 + DATA_WIDTH -: DATA_WIDTH] = add_fxy_out[i][PREC+DATA_WIDTH-1-:DATA_WIDTH];
        end
    endgenerate
    
endmodule
