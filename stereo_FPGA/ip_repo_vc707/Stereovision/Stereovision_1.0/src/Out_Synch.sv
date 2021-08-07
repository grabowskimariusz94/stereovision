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
		parameter BPP = 4,
		parameter TLAST_CYCLES = 10,
		parameter TUSER_CYCLES = 10
	)
	(
        input wire  aclk,
        input wire  aresetn,

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
    
    ////////////////////
    /// TLAST BUFFER ///
    ////////////////////
    
    logic tvalid, tlast, tuser, tready;    
    logic [AXIS_TDATA_WIDTH-1 : 0] tdata;
    
    assign s_axis_tready = tready|(!tvalid);
    
    reg do_buffer = 1'b0;
    reg [$clog2(TLAST_CYCLES-1):0] counter = 0;
    
    reg [(AXIS_TDATA_WIDTH+2)-1 : 0] buffer [(TLAST_CYCLES-1)-1:0] = '{default: '0};
    always @(posedge aclk)
        if(s_axis_tready)
            buffer[(TLAST_CYCLES-1)-2:0] <= buffer[(TLAST_CYCLES-1)-1:1];
    
    always @(posedge aclk)begin
        if(s_axis_tready) begin
            buffer[(TLAST_CYCLES-1)-1] <= '0;
            if(do_buffer) begin
                if (s_axis_tvalid) begin
                    buffer[(TLAST_CYCLES-1)-1][AXIS_TDATA_WIDTH-1 : 0] <= s_axis_tdata;
                    buffer[(TLAST_CYCLES-1)-1][(AXIS_TDATA_WIDTH+1)-1] <= s_axis_tvalid;
                    buffer[(TLAST_CYCLES-1)-1][(AXIS_TDATA_WIDTH+2)-1] <= s_axis_tuser;
                end 
                tdata <= buffer[0][AXIS_TDATA_WIDTH-1 : 0];
                tvalid <= buffer[0][(AXIS_TDATA_WIDTH+1)-1];
                if(buffer[0][(AXIS_TDATA_WIDTH+1)-1]) begin
                    tuser <= buffer[0][(AXIS_TDATA_WIDTH+2)-1];
                    tlast <= 1'b0; 
                end
            end else begin
                tdata <= s_axis_tdata;
                tvalid <= s_axis_tvalid;
                if(s_axis_tvalid)
                    tuser <= s_axis_tuser;
                tlast <= s_axis_tlast;
            end
        end
    end
    
    always @(posedge aclk) begin
        if(s_axis_tready) begin
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
    end
    
    ////////////////////
    /// TUSER BUFFER ///
    ////////////////////
    
    assign tready = m_axis_tready|(!m_axis_tvalid);
    
    reg do_tuser_buffer = 1'b0;
    reg [$clog2(TUSER_CYCLES-1):0] tuser_counter = 0;
    
//    reg [(AXIS_TDATA_WIDTH+3)-1 : 0] tuser_buffer [(TUSER_CYCLES-1)-1:0] = '{default: '0};
//    always @(posedge aclk)
//        if(tready)
//            tuser_buffer[(TUSER_CYCLES-1)-2:0] <= tuser_buffer[(TUSER_CYCLES-1)-1:1];
    reg [(AXIS_TDATA_WIDTH+3)-1 : 0] tuser_buffer_in = '0;
    wire [(AXIS_TDATA_WIDTH+3)-1 : 0] tuser_buffer_out;
    
    FIFO_BRAM_Xppc
    #(
        .DATA_WIDTH           (AXIS_TDATA_WIDTH+3),
        .LENGTH             (TUSER_CYCLES-1)
    ) tuser_buffer_FIFO
    (
        .clk    (aclk             ),
        .ce     (tready             ), 
        .rst    (!aresetn               ),  
        .din    (tuser_buffer_in                ), 
        .dout   (tuser_buffer_out               )
    );
    
    
    always @(posedge aclk)begin
        if(tready) begin
            tuser_buffer_in <= '0;
            if(do_tuser_buffer) begin
                if (tvalid) begin
                    tuser_buffer_in[AXIS_TDATA_WIDTH-1 : 0] <= tdata;
                    tuser_buffer_in[(AXIS_TDATA_WIDTH+1)-1] <= tvalid;
                    tuser_buffer_in[(AXIS_TDATA_WIDTH+2)-1] <= tuser;
                    tuser_buffer_in[(AXIS_TDATA_WIDTH+3)-1] <= tlast;
                end 
                m_axis_tdata <= tuser_buffer_out[AXIS_TDATA_WIDTH-1 : 0];
                m_axis_tvalid <= tuser_buffer_out[(AXIS_TDATA_WIDTH+1)-1];
                if(tuser_buffer_out[(AXIS_TDATA_WIDTH+1)-1]) begin
                    m_axis_tuser <= tuser_buffer_out[(AXIS_TDATA_WIDTH+2)-1];
                    m_axis_tlast <= tuser_buffer_out[(AXIS_TDATA_WIDTH+3)-1];
                end
            end else begin
                m_axis_tdata <= tdata;
                m_axis_tvalid <= tvalid;
                if(tvalid)
                    m_axis_tuser <= tuser;
                m_axis_tlast <= tlast;
            end
        end
    end
    
//    always @(posedge aclk)begin
//        if(tready) begin
//            tuser_buffer[(TUSER_CYCLES-1)-1] <= '0;
//            if(do_tuser_buffer) begin
//                if (tvalid) begin
//                    tuser_buffer[(TUSER_CYCLES-1)-1][AXIS_TDATA_WIDTH-1 : 0] <= tdata;
//                    tuser_buffer[(TUSER_CYCLES-1)-1][(AXIS_TDATA_WIDTH+1)-1] <= tvalid;
//                    tuser_buffer[(TUSER_CYCLES-1)-1][(AXIS_TDATA_WIDTH+2)-1] <= tuser;
//                    tuser_buffer[(TUSER_CYCLES-1)-1][(AXIS_TDATA_WIDTH+3)-1] <= tlast;
//                end 
//                m_axis_tdata <= tuser_buffer[0][AXIS_TDATA_WIDTH-1 : 0];
//                m_axis_tvalid <= tuser_buffer[0][(AXIS_TDATA_WIDTH+1)-1];
//                if(tuser_buffer[0][(AXIS_TDATA_WIDTH+1)-1]) begin
//                    m_axis_tuser <= tuser_buffer[0][(AXIS_TDATA_WIDTH+2)-1];
//                    m_axis_tlast <= tuser_buffer[0][(AXIS_TDATA_WIDTH+3)-1];
//                end
//            end else begin
//                m_axis_tdata <= tdata;
//                m_axis_tvalid <= tvalid;
//                if(tvalid)
//                    m_axis_tuser <= tuser;
//                m_axis_tlast <= tlast;
//            end
//        end
//    end
    
    always @(posedge aclk) begin
        if(tready) begin
            if(buffer[0][(AXIS_TDATA_WIDTH+2)-1]) begin // if tuser
                do_tuser_buffer <= 1'b1;
                tuser_counter <= TUSER_CYCLES-1;
            end
            if(do_tuser_buffer) begin
                if(tvalid)
                    tuser_counter <= TUSER_CYCLES-1;
                else
                    tuser_counter <= tuser_counter-1;
                if(!tuser_counter)
                    do_tuser_buffer = 1'b0;
            end
        end
    end
    
endmodule
