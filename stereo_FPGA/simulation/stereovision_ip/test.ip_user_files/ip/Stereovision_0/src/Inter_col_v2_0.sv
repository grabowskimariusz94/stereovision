//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
//
// Create Date: 08.04.2021 17:31:06
// Module Name: Inter_col_v1_0
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

	module Inter_col_v2_0 #
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
    reg tvalid = 1'b0;
    reg tlast = 1'b0; 
    reg tuser = 1'b0; 
    reg [C_AXIS_LR_TDATA_WIDTH-1 : 0] lastLR; 
    reg s_axis_lr_tvalid_buf = 1'b0;
    
    initial begin
        lastLR = 0;
    end
    
    // delaying for buffering
    always @(posedge aclk) 
	begin
       tvalid <= s_axis_lr_tvalid;
       tlast <= s_axis_lr_tlast;
       tuser <= s_axis_lr_tuser;
    end
    
    // buffering
    always @(posedge aclk) 
	begin
	  if(s_axis_lr_tvalid) begin
	    lastLR <= s_axis_lr_tdata;
      end
    end
    
    // interpolation
    always @(posedge aclk) 
	begin
	   tdataR[31-:8] <= s_axis_lr_tdata[31-:8];
	   tdataR[23-:8] <= {1'b0,s_axis_lr_tdata[31-:7]}+{1'b0,s_axis_lr_tdata[15-:7]}; //arithmetic average
	   tdataR[15-:8] <= s_axis_lr_tdata[15-:8];
	   tdataR[7-:8] <= (!tlast) ? ({1'b0,s_axis_lr_tdata[15-:7]}+{1'b0,lastLR[31-:7]}) : s_axis_lr_tdata[15-:8];
       tdataL[31-:8] <= s_axis_lr_tdata[23-:8]; 
       tdataL[23-:8] <= {1'b0,s_axis_lr_tdata[23-:7]}+{1'b0,s_axis_lr_tdata[7-:7]}; 
       tdataL[15-:8] <= s_axis_lr_tdata[7-:8]; 
       tdataL[7-:8] <= (!tlast) ? ({1'b0,s_axis_lr_tdata[7-:7]}+{1'b0,lastLR[23-:7]}) : s_axis_lr_tdata[7-:8];
    end
    
    
    // Outputs
    assign s_axis_lr_tready = tready;
    assign m_axis_l_tdata = tdataL;
    assign m_axis_r_tdata = tdataR;
    assign m_axis_l_tvalid = tvalid;
    assign m_axis_r_tvalid = tvalid;
    assign m_axis_l_tlast = tlast;
    assign m_axis_r_tlast = tlast;
    assign m_axis_l_tuser = tuser;
    assign m_axis_r_tuser = tuser;

endmodule