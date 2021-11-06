`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 13.05.2021 21:19:48
// Module Name: Rectification
// Target Devices: VC707
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////


module Rectification #(
		parameter WIDTH = 640,
    parameter HEIGHT = 480,
		parameter BPP = 8,
		parameter NPPC = 4,
		parameter AXIS_TDATA_WIDTH	= BPP*NPPC,
		
		parameter MAX_SHIFT_UP = 50,
		parameter MAX_SHIFT_DOWN = 50,
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
		input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_l_tdata,
		input wire  s_axis_l_tvalid,
		input wire  s_axis_l_tlast,
		input wire  s_axis_l_tuser,
		
		output wire  s_axis_r_tready,
		input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_r_tdata,
		input wire  s_axis_r_tvalid,
		input wire  s_axis_r_tlast,
		input wire  s_axis_r_tuser,

		output wire  m_axis_l_tvalid,
		output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_l_tdata,
		input wire  m_axis_l_tready,
		output wire  m_axis_l_tlast,
		output wire  m_axis_l_tuser,
		
		output wire  m_axis_r_tvalid,
		output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_r_tdata,
		input wire  m_axis_r_tready,
		output wire  m_axis_r_tlast,
		output wire  m_axis_r_tuser
	);
		
		
    logic s_axis_l_tlast_buf = 1'b0; // needed for proper operation of the Ncntx_Xppc
    logic s_axis_r_tlast_buf = 1'b0;
	always @(posedge aclk)
	begin
	   s_axis_l_tlast_buf <= s_axis_l_tlast;
	   s_axis_r_tlast_buf <= s_axis_l_tlast;
	end
	
	assign s_axis_l_tready = 1'b1;
	assign s_axis_r_tready = 1'b1;
	
	
logic new_pos_tready;
logic new_pos_tvalid;
logic new_pos_tuser;
logic [NPPC-1:0][$clog2(WIDTH)+PREC-1:0]  new_pos_xL, new_pos_xR;
logic [NPPC-1:0][$clog2(HEIGHT)+PREC-1:0] new_pos_yL, new_pos_yR;


Map_Calc#(
  .WIDTH(WIDTH),
  .HEIGHT(HEIGHT),
  .DATA_WIDTH(BPP),
  .MAX_SAMPLES_PER_CLOCK(NPPC),
  
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
  .user(new_pos_tuser),
  .ready(new_pos_tready),   
  .valid(new_pos_tvalid), 
  .xL(new_pos_xL),.xR(new_pos_xR),.yL(new_pos_yL),.yR(new_pos_yR)
);


logic [NPPC-1:0][$clog2(WIDTH)-1:0]  new_pos_xL_int, new_pos_xR_int;
logic [NPPC-1:0][$clog2(HEIGHT)-1:0] new_pos_yL_int, new_pos_yR_int;
logic [NPPC-1:0][PREC-1:0] new_pos_xL_frac, new_pos_xR_frac;
logic [NPPC-1:0][PREC-1:0] new_pos_yL_frac, new_pos_yR_frac;
logic [NPPC-1:0][PREC-1:0] new_pos_xL_frac_r, new_pos_xR_frac_r;
logic [NPPC-1:0][PREC-1:0] new_pos_yL_frac_r, new_pos_yR_frac_r;

generate
  for (genvar i=0; i < NPPC; i++) begin
    assign new_pos_xL_int[i] = new_pos_xL[i][$clog2(WIDTH)+PREC-1-:$clog2(WIDTH)];
    assign new_pos_xR_int[i] = new_pos_xR[i][$clog2(WIDTH)+PREC-1-:$clog2(WIDTH)];
    assign new_pos_yL_int[i] = new_pos_yL[i][$clog2(HEIGHT)+PREC-1-:$clog2(HEIGHT)];
    assign new_pos_yR_int[i] = new_pos_yR[i][$clog2(HEIGHT)+PREC-1-:$clog2(HEIGHT)];
    assign new_pos_xL_frac[i] = new_pos_xL[i][PREC-1:0];
    assign new_pos_xR_frac[i] = new_pos_xR[i][PREC-1:0];
    assign new_pos_yL_frac[i] = new_pos_yL[i][PREC-1:0];
    assign new_pos_yR_frac[i] = new_pos_yR[i][PREC-1:0];
  end
endgenerate

always @(posedge aclk) begin
  new_pos_xL_frac_r <= new_pos_xL_frac;
  new_pos_xR_frac_r <= new_pos_xR_frac;
  new_pos_yL_frac_r <= new_pos_yL_frac;
  new_pos_yR_frac_r <= new_pos_yR_frac;
end

logic buf_tvalid, buf_tuser, buf_tlast, buf_tready;
logic [AXIS_TDATA_WIDTH-1 : 0] buf_00L_tdata,buf_01L_tdata,buf_10L_tdata,buf_11L_tdata;
logic [AXIS_TDATA_WIDTH-1 : 0] buf_00R_tdata,buf_01R_tdata,buf_10R_tdata,buf_11R_tdata;

image_buffer#(
  .WIDTH(WIDTH),                   // image width
  .HEIGHT(HEIGHT),                 // image hight
  .NPPC(NPPC),                      // Number of samples per clock (minimum 2)
  .BPP(BPP),                      // Bits per pixel
  .MAX_SHIFT_UP(MAX_SHIFT_UP),             // Farthest pixel replacement up
  .MAX_SHIFT_DOWN(MAX_SHIFT_DOWN)           // Farthest pixel replacement down      
)buffer(
  .aclk(aclk),
  .aresetn(aresetn),

  .s_axis_tready(s_axis_l_tready),
  .s_axis_l_tdata(s_axis_l_tdata),
  .s_axis_r_tdata(s_axis_r_tdata),
  .s_axis_tvalid(s_axis_l_tvalid),
  .s_axis_tlast(s_axis_l_tlast),
  .s_axis_tuser(s_axis_l_tuser),
  
  .new_pos_tready(new_pos_tready),
  .new_pos_tuser(new_pos_tuser),
  .new_pos_tvalid(new_pos_tvalid),
  .new_pos_l_x(new_pos_xL_int),
  .new_pos_l_y(new_pos_yL_int),
  .new_pos_r_x(new_pos_xR_int),
  .new_pos_r_y(new_pos_yR_int),
  
  .m_axis_l_00_tdata(buf_00L_tdata),
  .m_axis_l_01_tdata(buf_01L_tdata),
  .m_axis_l_10_tdata(buf_10L_tdata),
  .m_axis_l_11_tdata(buf_11L_tdata),
  .m_axis_r_00_tdata(buf_00R_tdata),
  .m_axis_r_01_tdata(buf_01R_tdata),
  .m_axis_r_10_tdata(buf_10R_tdata),
  .m_axis_r_11_tdata(buf_11R_tdata),
  .m_axis_tvalid(buf_tvalid),
  .m_axis_tready(buf_tready),
  .m_axis_tlast(buf_tlast),
  .m_axis_tuser(buf_tuser)
);
    

    
    
    
    localparam integer MULT_LATENCY = 3;
    localparam integer ADD_LATENCY = 2;
    localparam integer LATENCY = MULT_LATENCY*2+ADD_LATENCY*2;
    
    logic [LATENCY-1:0] tuser_buf, tlast_buf, tvalid_buf;
    
    always @(posedge aclk) begin
        if (!aresetn) begin
            tuser_buf <= '0;
            tlast_buf <= '0;
            tvalid_buf <= '0;
        end else begin
            tuser_buf[0] <= buf_tuser;
            tuser_buf[LATENCY-1:1] <= tuser_buf[LATENCY-2:0];
            tlast_buf[0] <= buf_tlast;
            tlast_buf[LATENCY-1:1] <= tlast_buf[LATENCY-2:0];
            tvalid_buf[0] <= buf_tvalid;
            tvalid_buf[LATENCY-1:1] <= tvalid_buf[LATENCY-2:0];
        end
    end 
    assign m_axis_l_tuser = tuser_buf[LATENCY-1];
    assign m_axis_l_tlast = tlast_buf[LATENCY-1];
    assign m_axis_l_tvalid = tvalid_buf[LATENCY-1];
    
    assign m_axis_r_tuser = tuser_buf[LATENCY-1];
    assign m_axis_r_tlast = tlast_buf[LATENCY-1];
    assign m_axis_r_tvalid = tvalid_buf[LATENCY-1];
    
    // --- ADDER & MULTIPLIER --- BILINEAR INTERPOLATION ---
    wire [PREC+BPP-1:0] mult_x2x_f11_outL [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] mult_x2x_f12_outL [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] mult_xx1_f21_outL [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] mult_xx1_f22_outL [NPPC-1:0]; //8c4u
    
    wire [PREC+BPP-1:0] add_f11_f21_outL [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] add_f12_f22_outL [NPPC-1:0]; //8c4u
    
    wire [PREC+BPP-1:0] mult_y2y_fxy1_outL [NPPC-1:0]; //8c8u
    wire [PREC+BPP-1:0] mult_yy1_fxy2_outL [NPPC-1:0]; //8c8u
    
    wire [PREC+BPP-1:0] add_fxy_outL [NPPC-1:0]; //8c8u
    
    wire [PREC+BPP-1:0] mult_x2x_f11_outR [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] mult_x2x_f12_outR [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] mult_xx1_f21_outR [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] mult_xx1_f22_outR [NPPC-1:0]; //8c4u
    
    wire [PREC+BPP-1:0] add_f11_f21_outR [NPPC-1:0]; //8c4u
    wire [PREC+BPP-1:0] add_f12_f22_outR [NPPC-1:0]; //8c4u
    
    wire [PREC+BPP-1:0] mult_y2y_fxy1_outR [NPPC-1:0]; //8c8u
    wire [PREC+BPP-1:0] mult_yy1_fxy2_outR [NPPC-1:0]; //8c8u
    
    wire [PREC+BPP-1:0] add_fxy_outR [NPPC-1:0]; //8c8u

      generate
       for (genvar i = 0; i < NPPC; i = i + 1) begin : BIL_INT_L
          
            // fxy1 = (x2 - X)*f11 + (X - x1)*f21;
            mult_8_8_16 mult_x2x_f11 (                                  // latency: 3
              .CLK( aclk ), 
              .A({1'b1,{PREC{1'b0}}}-new_pos_xL_frac_r[i]),  
              .B( buf_00L_tdata[i*BPP+BPP-1-:BPP] ),  
              .P(mult_x2x_f11_outL[i]           )   
            );
            
            mult_8_8_16 mult_xx1_f21 (                                  
              .CLK( aclk ),  
              .A({1'b0,new_pos_xL_frac_r[i]}),  
              .B( buf_01L_tdata[i*BPP+BPP-1-:BPP] ), 
              .P(mult_xx1_f21_outL[i]           )   
            );
            
            
            add_16_16_16 add_f11_f21 (                                  // latency: 2
              .A(mult_x2x_f11_outL[i]), 
              .B(mult_xx1_f21_outL[i]),  
              .CLK( aclk ),  
              .S(add_f11_f21_outL[i]   )   
            );
            
            // fxy2 = (x2 - X)*f12 + (X - x1)*f22;
            mult_8_8_16 mult_x2x_f12 (                                  // latency: 3
              .CLK( aclk ),  
              .A({1'b1,{PREC{1'b0}}}-new_pos_xL_frac_r[i]),  
              .B( buf_10L_tdata[i*BPP+BPP-1-:BPP] ),  
              .P(mult_x2x_f12_outL[i]            )   
            );
            
            mult_8_8_16 mult_xx1_f22 (                                 
              .CLK( aclk ),  
              .A({1'b0,new_pos_xL_frac_r[i]}),  
              .B( buf_11L_tdata[i*BPP+BPP-1-:BPP] ),  
              .P(mult_xx1_f22_outL[i]          ) 
            );
            
             add_16_16_16 add_f12_f22 (                                      // latency: 2
              .A(mult_x2x_f12_outL[i]   ),  
              .B(mult_xx1_f22_outL[i]   ),  
              .CLK( aclk ),  
              .S(add_f12_f22_outL[i]      )  
            );
            
            
            // fxy = (y2 - Y)*fxy1 + (Y - y1)*fxy2;
            mult_8_8_16 mult_y2y_fxy1 (                                    // latency: 3
              .CLK( aclk ), 
              .A({1'b1,{PREC{1'b0}}}-new_pos_yL_frac_r[i]),  
              .B(add_f11_f21_outL[i][PREC+BPP-1-:BPP]       ),  
              .P(mult_y2y_fxy1_outL[i]   )  
            );
            
            mult_8_8_16 mult_yy1_fxy2 (                                    
              .CLK( aclk ),  
              .A({1'b0,new_pos_yL_frac_r[i]}),  
              .B(add_f12_f22_outL[i][PREC+BPP-1-:BPP]       ), 
              .P(mult_yy1_fxy2_outL[i]   )  
            );
            
            
            add_16_16_16 add_fxy (                                          // latency: 2
              .A(mult_y2y_fxy1_outL[i]   ),
              .B(mult_yy1_fxy2_outL[i]  ),  
              .CLK( aclk ),
              .S(add_fxy_outL[i]         )   
            );
            
            
            assign  m_axis_l_tdata[i * BPP  - 1 + BPP -: BPP] = add_fxy_outL[i][PREC+BPP-1-:BPP];
        end
    endgenerate
    
    generate
       for (genvar i = 0; i < NPPC; i = i + 1) begin : BIL_INT_R
          
            // fxy1 = (x2 - X)*f11 + (X - x1)*f21;
            mult_8_8_16 mult_x2x_f11 (                                  // latency: 3
              .CLK( aclk ), 
              .A({1'b1,{PREC{1'b0}}}-new_pos_xR_frac_r[i]),  
              .B( buf_00R_tdata[i*BPP+BPP-1-:BPP] ),  
              .P(mult_x2x_f11_outR[i]           )   
            );
            
            mult_8_8_16 mult_xx1_f21 (                                  
              .CLK( aclk ),  
              .A({1'b0,new_pos_xR_frac_r[i]}),  
              .B( buf_01R_tdata[i*BPP+BPP-1-:BPP] ), 
              .P(mult_xx1_f21_outR[i]           )   
            );
            
            
            add_16_16_16 add_f11_f21 (                                  // latency: 2
              .A(mult_x2x_f11_outR[i]), 
              .B(mult_xx1_f21_outR[i]),  
              .CLK( aclk ),  
              .S(add_f11_f21_outR[i]   )   
            );
            
            // fxy2 = (x2 - X)*f12 + (X - x1)*f22;
            mult_8_8_16 mult_x2x_f12 (                                  // latency: 3
              .CLK( aclk ),  
              .A({1'b1,{PREC{1'b0}}}-new_pos_xR_frac_r[i]),  
              .B( buf_10R_tdata[i*BPP+BPP-1-:BPP] ),  
              .P(mult_x2x_f12_outR[i]            )   
            );
            
            mult_8_8_16 mult_xx1_f22 (                                 
              .CLK( aclk ),  
              .A({1'b0,new_pos_xR_frac_r[i]}),  
              .B( buf_11R_tdata[i*BPP+BPP-1-:BPP] ),  
              .P(mult_xx1_f22_outR[i]          ) 
            );
            
             add_16_16_16 add_f12_f22 (                                      // latency: 2
              .A(mult_x2x_f12_outR[i]   ),  
              .B(mult_xx1_f22_outR[i]   ),  
              .CLK(aclk                                                 ),  
              .S(add_f12_f22_outR[i]      )  
            );
            
            
            // fxy = (y2 - Y)*fxy1 + (Y - y1)*fxy2;
            mult_8_8_16 mult_y2y_fxy1 (                                    // latency: 3
              .CLK( aclk ), 
              .A({1'b1,{PREC{1'b0}}}-new_pos_yR_frac_r[i]),  
              .B(add_f11_f21_outR[i][PREC+BPP-1-:BPP]       ),  
              .P(mult_y2y_fxy1_outR[i]   )  
            );
            
            mult_8_8_16 mult_yy1_fxy2 (                                    
              .CLK( aclk ),  
              .A({1'b0,new_pos_yR_frac_r[i]}),  
              .B(add_f12_f22_outR[i][PREC+BPP-1-:BPP]       ), 
              .P(mult_yy1_fxy2_outR[i]   )  
            );
            
            
            add_16_16_16 add_fxy (                                          // latency: 2
              .A(mult_y2y_fxy1_outR[i]   ),
              .B(mult_yy1_fxy2_outR[i]  ),  
              .CLK( aclk ),
              .S(add_fxy_outR[i]         )   
            );
            
            
            assign  m_axis_r_tdata[i * BPP  - 1 + BPP -: BPP] = add_fxy_outR[i][PREC+BPP-1-:BPP];
        end
    endgenerate
    
    assign buf_tready = m_axis_l_tready & m_axis_r_tready;
    
endmodule
