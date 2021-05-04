`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 10.04.2021 18:14:12
// Module Name: Out_Synch
// Target Devices: vc707
// Tool Versions: 2020.2
// Description: 
// 
//////////////////////////////////////////////////////////////////////////////////


module Out_Synch #
	(
		parameter AXIS_TDATA_WIDTH	= 32,
		parameter TLAST_CYCLES = 10
	)
	(
        input wire  aclk,

		// Ports of Axi Slave Bus Interface S_AXIS_LR
		output wire  s_axis_tready,
		input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
		input wire  s_axis_tvalid,
		input wire  s_axis_tlast,
		input wire  s_axis_tuser,

		// Ports of Axi Master Bus Interface M_AXIS_L
		output reg m_axis_tvalid,
		output reg [AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		input wire  m_axis_tready,
		output reg  m_axis_tlast,
		output reg  m_axis_tuser
    );
    
    reg do_buffer = 1'b0;
    reg [$clog2(TLAST_CYCLES-1):0] counter = 0;
    
    reg [(AXIS_TDATA_WIDTH+2)-1 : 0] buffer [(TLAST_CYCLES-1)-1:0] = '{default: '0};
    always @(posedge aclk)
        buffer[(TLAST_CYCLES-1)-2:0] <= buffer[(TLAST_CYCLES-1)-1:1];
    
    always @(posedge aclk)begin
        buffer[(TLAST_CYCLES-1)-1] <= '0;
        if(do_buffer) begin
            if (s_axis_tvalid) begin
                buffer[(TLAST_CYCLES-1)-1][AXIS_TDATA_WIDTH-1 : 0] <= s_axis_tdata;
                buffer[(TLAST_CYCLES-1)-1][(AXIS_TDATA_WIDTH+1)-1] <= s_axis_tvalid;
                buffer[(TLAST_CYCLES-1)-1][(AXIS_TDATA_WIDTH+2)-1] <= s_axis_tuser;
            end 
            m_axis_tdata <= buffer[0][AXIS_TDATA_WIDTH-1 : 0];
            m_axis_tvalid <= buffer[0][(AXIS_TDATA_WIDTH+1)-1];
            if(buffer[0][(AXIS_TDATA_WIDTH+1)-1]) begin
                m_axis_tuser <= buffer[0][(AXIS_TDATA_WIDTH+2)-1];
                m_axis_tlast <= 1'b0; 
            end
        end else begin
            m_axis_tdata <= s_axis_tdata;
            m_axis_tvalid <= s_axis_tvalid;
            if(s_axis_tvalid)
                m_axis_tuser <= s_axis_tuser;
            m_axis_tlast <= s_axis_tlast;
        end
    end
    
    always @(posedge aclk) begin
        if(s_axis_tlast&(!m_axis_tlast)) begin
            do_buffer <= 1'b1;
            counter <= TLAST_CYCLES-1;
        end
        if(do_buffer) begin
            if(s_axis_tvalid)
                counter <= TLAST_CYCLES-1;
            else
                counter <= counter-1;
            if(!counter)
                do_buffer = 1'b0;
        end
    end
    
    assign s_axis_tready = 1'b1;
    
endmodule
