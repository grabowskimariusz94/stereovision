//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 15.02.2021 18:16:10
// Module Name: Inter_col_v1_0
// Target Devices: zcu104, zc702
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

	module Inter_col_v1_0 #
	(
		parameter integer C_AXIS_LR_TDATA_WIDTH	= 32
	)
	(
		
        input wire  aclk,

		// Ports of Axi Slave Bus Interface S_AXIS_LR
		output wire  s_axis_lr_tready,
		input wire [C_AXIS_LR_TDATA_WIDTH-1 : 0] s_axis_lr_tdata,
		input wire  s_axis_lr_tvalid,
		input wire  s_axis_lr_tlast,
		input wire  s_axis_lr_tuser,

		// Ports of Axi Master Bus Interface M_AXIS_L
		output wire  m_axis_l_tvalid,
		output wire [C_AXIS_LR_TDATA_WIDTH-1 : 0] m_axis_l_tdata,
		input wire  m_axis_l_tready,
		output wire  m_axis_l_tlast,
		output wire  m_axis_l_tuser,

		// Ports of Axi Master Bus Interface M_AXIS_R
		output wire  m_axis_r_tvalid,
		output wire [C_AXIS_LR_TDATA_WIDTH-1 : 0] m_axis_r_tdata,
		input wire  m_axis_r_tready,
		output wire  m_axis_r_tlast,
		output wire  m_axis_r_tuser
	);
    
    reg	tready = 1'b1;
    reg [C_AXIS_LR_TDATA_WIDTH-1 : 0] tdataL=0, tdataR=0;
    reg [1:0] tvalid = 2'b0;
    reg [1:0] tlast = 2'b0; 
    reg [1:0] tuser = 2'b0; 
    reg [C_AXIS_LR_TDATA_WIDTH-1 : 0] lastLR[1:0]; 
    reg s_axis_lr_tvalid_buf = 1'b0;
    reg tlast_buf = 1'b0;
    
    initial begin
        lastLR[1] = 0;
        lastLR[0] = 0;
    end
    
    // delaying for buffering
    always @(posedge aclk) 
	begin
	   s_axis_lr_tvalid_buf <= s_axis_lr_tvalid;
	   if(s_axis_lr_tvalid|tlast[0]) begin
           tvalid[0] <= s_axis_lr_tvalid;
           tvalid[1] <= tvalid[0];
           tlast[0] <= s_axis_lr_tlast;
           tlast[1] <= tlast[0];
           tuser[0] <= s_axis_lr_tuser;
           tuser[1] <= tuser[0];
       end
       tlast_buf <= tlast[1];
    end
    
    // buffering
    always @(posedge aclk) 
	begin
	  if(s_axis_lr_tvalid) begin
	    lastLR[0] <= s_axis_lr_tdata;
	    lastLR[1] <= lastLR[0];
      end
    end
    
    // interpolation
    always @(posedge aclk) 
	begin
	
	   {tdataL[31-:8],tdataR[23-:8],tdataL[15-:8],tdataR[7-:8]} <= lastLR[0];
       tdataR[31-:8] <= (!tlast[1]) ? ({1'b0,lastLR[1][7-:7]}+{1'b0,lastLR[0][23-:7]}):({1'b0,lastLR[0][23-:7]}); //arithmetic average
       tdataL[23-:8] <= {1'b0,lastLR[0][31-:7]}+{1'b0,lastLR[0][15-:7]}; 
       tdataR[15-:8] <= {1'b0,lastLR[0][23-:7]}+{1'b0,lastLR[0][7-:7]}; 
       tdataL[7-:8] <= (!tlast[0]) ? ({1'b0,lastLR[0][15-:7]}+{1'b0,s_axis_lr_tdata[31-:7]}) : ({1'b0,lastLR[0][15-:7]}+0); 
	
    end
    
    
    // Outputs
    assign s_axis_lr_tready = tready;
    assign m_axis_l_tdata = tdataL;
    assign m_axis_r_tdata = tdataR;
    assign m_axis_l_tvalid = (s_axis_lr_tvalid_buf|(tlast[1]&!tlast_buf)) ? tvalid[1] : 1'b0;
    assign m_axis_r_tvalid = (s_axis_lr_tvalid_buf|(tlast[1]&!tlast_buf)) ? tvalid[1] : 1'b0;
    assign m_axis_l_tlast = tlast[1];
    assign m_axis_r_tlast = tlast[1];
    assign m_axis_l_tuser = tuser[1];
    assign m_axis_r_tuser = tuser[1];

endmodule