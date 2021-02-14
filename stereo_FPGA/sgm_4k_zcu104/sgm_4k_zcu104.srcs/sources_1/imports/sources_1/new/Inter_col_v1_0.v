
`timescale 1 ns / 1 ps

	module Inter_col_v1_0 #
	(
		// Parameters of Axi Slave Bus Interface AXIS_LR
		parameter integer C_AXIS_LR_TDATA_WIDTH	= 32
	)
	(
		
        input wire  aclk,
		input wire  aresetn,

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
    reg [2:0] tvalid, tlast, tuser; 
    reg [C_AXIS_LR_TDATA_WIDTH-1 : 0] lastLR[2:0]; // in no simmetrical => [1:0];
    initial begin
        lastLR[2] = 0; //
        lastLR[1] = 0;
        lastLR[0] = 0;
    end
    
    // delaying for buffering
    always @(posedge aclk) 
	begin
	   
        tvalid[0] <= s_axis_lr_tvalid;
        tvalid[1] <= tvalid[0];
        tvalid[2] <= tvalid[1]; 
        tlast[0] <= s_axis_lr_tlast;
        tlast[1] <= tlast[0]; 
        tlast[2] <= tlast[1]; 
        tuser[0] <= s_axis_lr_tuser;
        tuser[1] <= tuser[0]; 
        tuser[2] <= tuser[1]; 
    end
    
    // buffering
    always @(posedge aclk) 
	begin
	   //if(s_axis_lr_tvalid) 
	    lastLR[0] <= s_axis_lr_tdata;
	    lastLR[1] <= lastLR[0];
	    lastLR[2] <= lastLR[1]; //
    end
    
    // interpolation
    always @(posedge aclk) 
	begin
	   // simetrical version
	   if(tvalid[1])
        begin
           if(tvalid[0])
           begin
               {tdataL[31-:8],tdataR[23-:8],tdataL[15-:8],tdataR[7-:8]} <= lastLR[1];
               tdataR[31-:8] <= {1'b0,lastLR[2][7-:7]}+{1'b0,lastLR[1][23-:7]}; //arithmetic average
               tdataL[23-:8] <= {1'b0,lastLR[1][31-:7]}+{1'b0,lastLR[1][15-:7]}; 
               tdataR[15-:8] <= {1'b0,lastLR[1][23-:7]}+{1'b0,lastLR[1][7-:7]}; 
               tdataL[7-:8] <= {1'b0,lastLR[1][15-:7]}+{1'b0,lastLR[0][31-:7]}; 
           end
           else
           begin
               {tdataL[31-:8],tdataR[23-:8],tdataL[15-:8],tdataR[7-:8]} <= lastLR[0];
               tdataR[31-:8] <= {1'b0,lastLR[2][7-:7]}+{1'b0,lastLR[0][23-:7]}; //arithmetic average
               tdataL[23-:8] <= {1'b0,lastLR[0][31-:7]}+{1'b0,lastLR[0][15-:7]}; 
               tdataR[15-:8] <= {1'b0,lastLR[0][23-:7]}+{1'b0,lastLR[0][7-:7]}; 
               tdataL[7-:8] <= {1'b0,lastLR[0][15-:7]}+{1'b0,s_axis_lr_tdata[31-:7]}; 
           end
	   end
	   
	   
	   // not simetrical version
	    /* 
        if(tvalid[1])
        begin
            if(tvalid[0])
            begin
                {tdataR[31-:8],tdataL[23-:8],tdataR[15-:8],tdataL[7-:8]} <= {lastLR[0][15-:16],lastLR[1][31-:16]};
                tdataL[31-:8] <= {1'b0,lastLR[0][23-:7]}+{1'b0,lastLR[0][7-:7]}; //arithmetic average
                tdataR[23-:8] <= {1'b0,lastLR[0][15-:7]}+{1'b0,lastLR[1][31-:7]}; 
                tdataL[15-:8] <= {1'b0,lastLR[0][7-:7]}+{1'b0,lastLR[1][23-:7]}; 
                tdataR[7-:8] <= {1'b0,lastLR[1][31-:7]}+{1'b0,lastLR[1][15-:7]}; 
            end
            else
            begin
                {tdataR[31-:8],tdataL[23-:8],tdataR[15-:8],tdataL[7-:8]} <= {s_axis_lr_tdata[15-:16],lastLR[1][31-:16]};
                tdataL[31-:8] <= {1'b0,s_axis_lr_tdata[23-:7]}+{1'b0,s_axis_lr_tdata[7-:7]}; //arithmetic average
                tdataR[23-:8] <= {1'b0,s_axis_lr_tdata[15-:7]}+{1'b0,lastLR[1][31-:7]}; 
                tdataL[15-:8] <= {1'b0,s_axis_lr_tdata[7-:7]}+{1'b0,lastLR[1][23-:7]}; 
                tdataR[7-:8] <= {1'b0,lastLR[1][31-:7]}+{1'b0,lastLR[1][15-:7]}; 
            end
        end
        */
    end
    
    
    // Outputs
	assign s_axis_lr_tready = tready;
	assign m_axis_l_tdata = tdataL;
	assign m_axis_r_tdata = tdataR;
	assign m_axis_l_tvalid = tvalid[2];
	assign m_axis_r_tvalid = tvalid[2];
	assign m_axis_l_tlast = tlast[2];
	assign m_axis_r_tlast = tlast[2];
	assign m_axis_l_tuser = tuser[2];
	assign m_axis_r_tuser = tuser[2];
	
	endmodule
