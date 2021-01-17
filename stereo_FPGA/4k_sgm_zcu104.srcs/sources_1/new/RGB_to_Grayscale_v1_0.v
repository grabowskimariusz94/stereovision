
`timescale 1 ns / 1 ps

	module RGB_to_Grayscale_v1_0 #
	(
		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S_AXIS_rgb_TDATA_WIDTH	= 96,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M_AXIS_gray_TDATA_WIDTH	= 32
	)
	(
        input wire  aclk,
		input wire  aresetn,

		// Ports of Axi Slave Bus Interface S00_AXIS
		output wire  s_axis_rgb_tready,
		input wire [C_S_AXIS_rgb_TDATA_WIDTH-1 : 0] s_axis_rgb_tdata,
		input wire  s_axis_rgb_tuser,
		input wire  s_axis_rgb_tlast,
		input wire  s_axis_rgb_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		output wire  m_axis_gray_tvalid,
		output wire [C_M_AXIS_gray_TDATA_WIDTH-1 : 0] m_axis_gray_tdata,
		output wire  m_axis_gray_tuser,
		output wire  m_axis_gray_tlast,
		input wire  m_axis_gray_tready
	);
    
    // Parameters
    parameter k_r = 10'd77;
    parameter k_g = 10'd150;
    parameter k_b = 10'd29;
    

    // regs for multiplication
    reg[17:0] r1=0,r2=0,r3=0,r4=0,g1=0,g2=0,g3=0,g4=0,b1=0,b2=0,b3=0,b4=0;
    reg[17:0] sum1=0, sum2=0, sum3=0, sum4=0;
    
    reg[9:0] gray1_tmp=0,gray2_tmp=0,gray3_tmp=0,gray4_tmp=0;
    
    // regs for outputs
    reg	tready = 1'b1;
    //reg [C_M_AXIS_gray_TDATA_WIDTH-1 : 0] tdata;
    reg [2:0] tvalid, tuser, tlast;

    always@(posedge aclk) 
    begin
        tvalid[0] <= s_axis_rgb_tvalid;
        tvalid[1] <= tvalid[0];
        tvalid[2] <= tvalid[1];
        
        tlast[0] <= s_axis_rgb_tlast;
        tlast[1] <= tlast[0]; 
        tlast[2] <= tlast[1]; 
        
        tuser[0] <= s_axis_rgb_tuser;
        tuser[1] <= tuser[0]; 
        tuser[2] <= tuser[1];
    end
    
    always@(posedge aclk) 
    begin
        if(s_axis_rgb_tvalid)
        begin
            r1 <= k_r * s_axis_rgb_tdata[23-:8];
            r2 <= k_r * s_axis_rgb_tdata[47-:8];
            r3 <= k_r * s_axis_rgb_tdata[71-:8];
            r4 <= k_r * s_axis_rgb_tdata[95-:8];
            
            g1 <= k_g * s_axis_rgb_tdata[7-:8];
            g2 <= k_g * s_axis_rgb_tdata[31-:8];
            g3 <= k_g * s_axis_rgb_tdata[55-:8];
            g4 <= k_g * s_axis_rgb_tdata[79-:8];
            
            b1 <= k_b * s_axis_rgb_tdata[15-:8];
            b2 <= k_b * s_axis_rgb_tdata[39-:8];
            b3 <= k_b * s_axis_rgb_tdata[63-:8];
            b4 <= k_b *s_axis_rgb_tdata[87-:8];
            
        end
    end
    
	always @(posedge aclk) 
	begin
	   if(tvalid[0])
	   begin
	       sum1 <= r1+g1+b1;
	       sum2 <= r2+g2+b2;
	       sum3 <= r3+g3+b3;
	       sum4 <= r4+g4+b4;
	   end    
	end
	
	/*----rounding---*/
	always @(posedge aclk)
	begin
		gray1_tmp <= sum1[17:8] + {9'd0,sum1[7]};
		gray2_tmp <= sum2[17:8] + {9'd0,sum2[7]};
		gray3_tmp <= sum3[17:8] + {9'd0,sum3[7]};
		gray4_tmp <= sum4[17:8] + {9'd0,sum4[7]};
	end
	
	
	// Outputs
	assign s_axis_rgb_tready = tready;
	assign m_axis_gray_tvalid = tvalid[2];
	assign m_axis_gray_tuser = tuser[2];
	assign m_axis_gray_tlast = tlast[2];
	
	
	assign m_axis_gray_tdata[7-:8] = (gray1_tmp[9:8]==2'b00) ? gray1_tmp[7-:8] : 8'hFF;
	assign m_axis_gray_tdata[15-:8] = (gray2_tmp[9:8]==2'b00) ? gray2_tmp[7-:8] : 8'hFF;
	assign m_axis_gray_tdata[23-:8] = (gray3_tmp[9:8]==2'b00) ? gray3_tmp[7-:8] : 8'hFF;
	assign m_axis_gray_tdata[31-:8] = (gray4_tmp[9:8]==2'b00) ? gray4_tmp[7-:8] : 8'hFF;
	
	
	endmodule
