
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
    parameter k_r = 9'd77;
    parameter k_g = 9'd150;
    parameter k_b = 9'd29;

    // regs for multiplication
    reg[17:0] r1=0,r2=0,r3=0,r4=0,g1=0,g2,g3=0,g4=0,b1=0,b2=0,b3=0,b4=0;
    reg[17:0] sum1=0, sum2=0, sum3=0, sum4=0;
    
    // regs for outputs
    reg	tready = 1'b1;
    //reg [C_M_AXIS_gray_TDATA_WIDTH-1 : 0] tdata;
    reg [1:0] tvalid, tuser, tlast;

    always@(posedge aclk) 
    begin
        tvalid[0] <= s_axis_rgb_tvalid;
        tvalid[1] <= tvalid[0];
        
        tlast[0] <= s_axis_rgb_tlast;
        tlast[1] <= tlast[0]; 
        
        tuser[0] <= s_axis_rgb_tuser;
        tuser[1] <= tuser[0]; 
    end
    
    always@(posedge aclk) 
    begin
        if(s_axis_rgb_tvalid)
        begin
            r1 <= k_r * {1'b0,s_axis_rgb_tdata[23-:8]};
            r2 <= k_r * {1'b0,s_axis_rgb_tdata[47-:8]};
            r3 <= k_r * {1'b0,s_axis_rgb_tdata[71-:8]};
            r4 <= k_r * {1'b0,s_axis_rgb_tdata[95-:8]};
            
            g1 <= k_g * {1'b0,s_axis_rgb_tdata[7-:8]};
            g2 <= k_g * {1'b0,s_axis_rgb_tdata[31-:8]};
            g3 <= k_g * {1'b0,s_axis_rgb_tdata[55-:8]};
            g4 <= k_g * {1'b0,s_axis_rgb_tdata[79-:8]};
            
            b1 <= k_b * {1'b0,s_axis_rgb_tdata[15-:8]};
            b2 <= k_b * {1'b0,s_axis_rgb_tdata[39-:8]};
            b3 <= k_b * {1'b0,s_axis_rgb_tdata[63-:8]};
            b4 <= k_b * {1'b0,s_axis_rgb_tdata[87-:8]};
            
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
	
	
	
	// Outputs
	assign s_axis_rgb_tready = tready;
	assign m_axis_gray_tvalid = tvalid[1];
	assign m_axis_gray_tuser = tuser[1];
	assign m_axis_gray_tlast = tlast[1];
	
	
	assign m_axis_gray_tdata[7-:8] = (sum1[17:16]==2'b00) ? sum1[15-:8] : 8'hFF;
	assign m_axis_gray_tdata[15-:8] = (sum2[17:16]==2'b00) ? sum2[15-:8] : 8'hFF;
	assign m_axis_gray_tdata[23-:8] = (sum3[17:16]==2'b00) ? sum3[15-:8] : 8'hFF;
	assign m_axis_gray_tdata[31-:8] = (sum4[17:16]==2'b00) ? sum4[15-:8] : 8'hFF;
	
	
	endmodule
