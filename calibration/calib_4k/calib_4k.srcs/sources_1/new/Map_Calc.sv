`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Mariusz Grabowski
// 
// Create Date: 05.04.2021 08:26:34
// Module Name: Map_Calc
// Target Devices: VC707
// Tool Versions: Vivado 2020.2
// 
//////////////////////////////////////////////////////////////////////////////////


module Map_Calc#
	(
	    parameter WIDTH = 640,
        parameter HEIGHT = 480,
		parameter DATA_WIDTH = 8,
		parameter MAX_SAMPLES_PER_CLOCK = 4,
		
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
        input aclk,
        input aresetn,
        input c_en,     // connect to tvalid
        input last,     // connect to tlast
        input user,     // connect to tuser
        output ready,   // connect to tready
        
		output logic [MAX_SAMPLES_PER_CLOCK-1:0][SHIFT_WIDTH+PREC-1 : 0] xL,xR,yL,yR
    );
    
    
    localparam integer HEIGHT_W  = $clog2(HEIGHT);
    localparam integer WIDTH_W  = $clog2(WIDTH);
    localparam integer MAX_W = 12;
    
    localparam integer MULT_LATENCY = 3;
    localparam integer DIV_LATENCY = 29;
    localparam integer LATENCY = MULT_LATENCY*7+DIV_LATENCY+8;
    
    logic [HEIGHT_W - 1:0] v;
    logic [WIDTH_W - 1:0] u;
    
    logic [$clog2(LATENCY)-1:0] ready_count;
    logic en;
    assign en = c_en|~ready;
    
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            u <= 0;
            v <= 0;
            ready_count <= LATENCY;
        end else begin
            if (en) begin
                if (last && u!=MAX_SAMPLES_PER_CLOCK*LATENCY-MAX_SAMPLES_PER_CLOCK) begin// if out of synch
                    u <= 0; 
                    ready_count <= LATENCY;
                end else begin
                    if(ready_count!=0)
                        ready_count <= ready_count - 1;
                    if (u>=WIDTH-MAX_SAMPLES_PER_CLOCK) begin
                        u<=0; 
                        if (v==HEIGHT-1) v<=0; else v<=v+1;
                    end else begin
                        u<=u+MAX_SAMPLES_PER_CLOCK;
                        if(user) v <= 0; // ensure when tuser then v=0
                    end         
                end
            end
        end
    end
    
    assign ready = !ready_count;
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(MAX_W+PREC+1)-1:0] x_diff;
    logic signed [(MAX_W+PREC+1)-1:0] y_diff;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x;
    logic signed [(PREC+PREC_INTER+2)-1:0] y;
    
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            y_diff <= 0;
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                x_diff[i] <= 0;
            end
        end else begin
            if (en) begin
                y_diff <= {v,{PREC{1'b0}}} - cyNew;
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                    x_diff[i] <= {u+i,{PREC{1'b0}}} - cxNew;
                end
            end
        end
    end
    
    mult_fNew mult_y( // latency: 3
        .CLK(aclk),
        .A(y_diff),
        .B(fyNewInv),
        .CE(en),
        .P(y)
    );
    
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_fNew mult_x( // latency: 3
        .CLK(aclk),
        .A(x_diff[i]),
        .B(fxNewInv),
        .CE(en),
        .P(x[i])
        );
    end
    
    logic signed [2:0][MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] RLx,RRx;
    logic signed [2:0][(PREC+PREC_INTER+2)-1:0] RLy,RRy;
    
    mult_13_13 mult_yRL01( // latency: 3
        .CLK(aclk),
        .A(y),
        .B(RInvL[0][1]),
        .CE(en),
        .P(RLy[0])
    );
    
    mult_13_13 mult_yRL11(
        .CLK(aclk),
        .A(y),
        .B(RInvL[1][1]),
        .CE(en),
        .P(RLy[1])
    );
    
    mult_13_13 mult_yRL21(
        .CLK(aclk),
        .A(y),
        .B(RInvL[2][1]),
        .CE(en),
        .P(RLy[2])
    );
    
    mult_13_13 mult_yRR01(
        .CLK(aclk),
        .A(y),
        .B(RInvR[0][1]),
        .CE(en),
        .P(RRy[0])
    );
    
    mult_13_13 mult_yRR11(
        .CLK(aclk),
        .A(y),
        .B(RInvR[1][1]),
        .CE(en),
        .P(RRy[1])
    );
    
    mult_13_13 mult_yRR21(
        .CLK(aclk),
        .A(y),
        .B(RInvR[2][1]),
        .CE(en),
        .P(RRy[2])
    );
    
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_xRL00(
            .CLK(aclk),
            .A(x[i]),
            .B(RInvL[0][0]),
            .CE(en),
            .P(RLx[0][i])
        );
        
        mult_13_13 mult_xRL10(
            .CLK(aclk),
            .A(x[i]),
            .B(RInvL[1][0]),
            .CE(en),
            .P(RLx[1][i])
        );
        
        mult_13_13 mult_xRL20(
            .CLK(aclk),
            .A(x[i]),
            .B(RInvL[2][0]),
            .CE(en),
            .P(RLx[2][i])
        );
        
        mult_13_13 mult_xRR00(
            .CLK(aclk),
            .A(x[i]),
            .B(RInvR[0][0]),
            .CE(en),
            .P(RRx[0][i])
        );
        
        mult_13_13 mult_xRR10(
            .CLK(aclk),
            .A(x[i]),
            .B(RInvR[1][0]),
            .CE(en),
            .P(RRx[1][i])
        );
        
        mult_13_13 mult_xRR20(
            .CLK(aclk),
            .A(x[i]),
            .B(RInvR[2][0]),
            .CE(en),
            .P(RRx[2][i])
        );
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] XL,XR;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] YL,YR;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] WL,WR;
    
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                XL[i] <= 0;
                XR[i] <= 0;
                YL[i] <= 0;
                YR[i] <= 0;
                WL[i] <= 0;
                WR[i] <= 0;
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                    XL[i] <=    {RLx[0][i][(PREC+PREC_INTER+2)-1],RLx[0][i][(PREC+PREC_INTER+2)-1],RLx[0][i][(PREC+PREC_INTER+2)-1:2]} + 
                                {RLy[0][(PREC+PREC_INTER+2)-1],RLy[0][(PREC+PREC_INTER+2)-1],RLy[0][(PREC+PREC_INTER+2)-1:2]} + 
                                {RInvL[0][2][(PREC+PREC_INTER+2)-1],RInvL[0][2][(PREC+PREC_INTER+2)-1],RInvL[0][2][(PREC+PREC_INTER+2)-1:2]};
                    XR[i] <=    {RRx[0][i][(PREC+PREC_INTER+2)-1],RRx[0][i][(PREC+PREC_INTER+2)-1],RRx[0][i][(PREC+PREC_INTER+2)-1:2]} + 
                                {RRy[0][(PREC+PREC_INTER+2)-1],RRy[0][(PREC+PREC_INTER+2)-1],RRy[0][(PREC+PREC_INTER+2)-1:2]} + 
                                {RInvR[0][2][(PREC+PREC_INTER+2)-1],RInvR[0][2][(PREC+PREC_INTER+2)-1],RInvR[0][2][(PREC+PREC_INTER+2)-1:2]};
                    YL[i] <=    {RLx[1][i][(PREC+PREC_INTER+2)-1],RRx[1][i][(PREC+PREC_INTER+2)-1],RLx[1][i][(PREC+PREC_INTER+2)-1:2]} + 
                                {RLy[1][(PREC+PREC_INTER+2)-1],RLy[1][(PREC+PREC_INTER+2)-1],RLy[1][(PREC+PREC_INTER+2)-1:2]} + 
                                {RInvL[1][2][(PREC+PREC_INTER+2)-1],RInvL[1][2][(PREC+PREC_INTER+2)-1],RInvL[1][2][(PREC+PREC_INTER+2)-1:2]};
                    YR[i] <=    {RRx[1][i][(PREC+PREC_INTER+2)-1],RRx[1][i][(PREC+PREC_INTER+2)-1],RRx[1][i][(PREC+PREC_INTER+2)-1:2]} + 
                                {RRy[1][(PREC+PREC_INTER+2)-1],RRy[1][(PREC+PREC_INTER+2)-1],RRy[1][(PREC+PREC_INTER+2)-1:2]} + 
                                {RInvR[1][2][(PREC+PREC_INTER+2)-1],RInvR[1][2][(PREC+PREC_INTER+2)-1],RInvR[1][2][(PREC+PREC_INTER+2)-1:2]};
                    WL[i] <=    {RLx[2][i][(PREC+PREC_INTER+2)-1],RRx[2][i][(PREC+PREC_INTER+2)-1],RLx[2][i][(PREC+PREC_INTER+2)-1:2]} + 
                                {RLy[2][(PREC+PREC_INTER+2)-1],RLy[2][(PREC+PREC_INTER+2)-1],RLy[2][(PREC+PREC_INTER+2)-1:2]} + 
                                {RInvL[2][2][(PREC+PREC_INTER+2)-1],RInvL[2][2][(PREC+PREC_INTER+2)-1],RInvL[2][2][(PREC+PREC_INTER+2)-1:2]};
                    WR[i] <=    {RRx[2][i][(PREC+PREC_INTER+2)-1],RRx[2][i][(PREC+PREC_INTER+2)-1],RRx[2][i][(PREC+PREC_INTER+2)-1:2]} + 
                                {RRy[2][(PREC+PREC_INTER+2)-1],RRy[2][(PREC+PREC_INTER+2)-1],RRy[2][(PREC+PREC_INTER+2)-1:2]} + 
                                {RInvR[2][2][(PREC+PREC_INTER+2)-1],RInvR[2][2][(PREC+PREC_INTER+2)-1],RInvR[2][2][(PREC+PREC_INTER+2)-1:2]};
                end
            end
         end
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1L_int,x1R_int;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+1)-1:0] x1L_frac,x1R_frac;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] y1L_int,y1R_int;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+1)-1:0] y1L_frac,y1R_frac;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1L,x1R;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] y1L,y1R;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(3*MULT_LATENCY+2)-1:0][(PREC+PREC_INTER+2)-1:0] x1L_buf,x1R_buf;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(3*MULT_LATENCY+2)-1:0][(PREC+PREC_INTER+2)-1:0] y1L_buf,y1R_buf;
    
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        div_13_13 XWL( // latency: 28
            .aclk(aclk),
            .aclken(en),
            .s_axis_divisor_tdata(WL[i]),
            .s_axis_divisor_tvalid(1'b1),
            .s_axis_dividend_tdata(XL[i]),
            .s_axis_dividend_tvalid(1'b1),
            .m_axis_dout_tdata({x1L_int[i],x1L_frac[i]}),
            .m_axis_dout_tvalid()
        );
        div_13_13 XWR(
            .aclk(aclk),
            .aclken(en),
            .s_axis_divisor_tdata(WR[i]),
            .s_axis_divisor_tvalid(1'b1),
            .s_axis_dividend_tdata(XR[i]),
            .s_axis_dividend_tvalid(1'b1),
            .m_axis_dout_tdata({x1R_int[i],x1R_frac[i]}),
            .m_axis_dout_tvalid()
        );
        div_13_13 YWL(
            .aclk(aclk),
            .aclken(en),
            .s_axis_divisor_tdata(WL[i]),
            .s_axis_divisor_tvalid(1'b1),
            .s_axis_dividend_tdata(YL[i]),
            .s_axis_dividend_tvalid(1'b1),
            .m_axis_dout_tdata({y1L_int[i],y1L_frac[i]}),
            .m_axis_dout_tvalid()
        );
        div_13_13 YWR(
            .aclk(aclk),
            .aclken(en),
            .s_axis_divisor_tdata(WR[i]),
            .s_axis_divisor_tvalid(1'b1),
            .s_axis_dividend_tdata(YR[i]),
            .s_axis_dividend_tvalid(1'b1),
            .m_axis_dout_tdata({y1R_int[i],y1R_frac[i]}),
            .m_axis_dout_tvalid()
        );
    end
    
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                x1L[i] <= 0;
                x1R[i] <= 0;
                y1L[i] <= 0;
                y1R[i] <= 0;
                x1L_buf[i] <= '{(3*MULT_LATENCY+2){0}}; 
                x1R_buf[i] <= '{(3*MULT_LATENCY+2){0}};
                y1L_buf[i] <= '{(3*MULT_LATENCY+2){0}}; 
                y1R_buf[i] <= '{(3*MULT_LATENCY+2){0}};
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                    x1L[i] <= {x1L_int[i][1:0],{(PREC+PREC_INTER){1'b0}}}+{x1L_frac[i][(PREC+PREC_INTER+1)-1],x1L_frac[i]};
                    x1R[i] <= {x1R_int[i][1:0],{(PREC+PREC_INTER){1'b0}}}+{x1R_frac[i][(PREC+PREC_INTER+1)-1],x1R_frac[i]};
                    y1L[i] <= {y1L_int[i][1:0],{(PREC+PREC_INTER){1'b0}}}+{y1L_frac[i][(PREC+PREC_INTER+1)-1],y1L_frac[i]};
                    y1R[i] <= {y1R_int[i][1:0],{(PREC+PREC_INTER){1'b0}}}+{y1R_frac[i][(PREC+PREC_INTER+1)-1],y1R_frac[i]};
                    x1L_buf[i][0] <= x1L[i];
                    x1L_buf[i][(3*MULT_LATENCY+2)-1:1] <= x1L_buf[i][(3*MULT_LATENCY+2)-2:0];
                    x1R_buf[i][0] <= x1R[i];
                    x1R_buf[i][(3*MULT_LATENCY+2)-1:1] <= x1R_buf[i][(3*MULT_LATENCY+2)-2:0];
                    y1L_buf[i][0] <= y1L[i];
                    y1L_buf[i][(3*MULT_LATENCY+2)-1:1] <= y1L_buf[i][(3*MULT_LATENCY+2)-2:0];
                    y1R_buf[i][0] <= y1R[i];
                    y1R_buf[i][(3*MULT_LATENCY+2)-1:1] <= y1R_buf[i][(3*MULT_LATENCY+2)-2:0];
                end
            end
        end
    end
    
    
    logic [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1L2,x1R2;
    logic [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] y1L2,y1R2;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(2*MULT_LATENCY+1)-1:0][(PREC+PREC_INTER+2)-1:0] x1L2_buf,x1R2_buf;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(2*MULT_LATENCY+1)-1:0][(PREC+PREC_INTER+2)-1:0] y1L2_buf,y1R2_buf;
    
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_x1Lx1L( // latency: 3
            .CLK(aclk),
            .A(x1L[i]),
            .B(x1L[i]),
            .CE(en),
            .P(x1L2[i])
        );
        mult_13_13 mult_x1Rx1R(
            .CLK(aclk),
            .A(x1R[i]),
            .B(x1R[i]),
            .CE(en),
            .P(x1R2[i])
        );
        mult_13_13 mult_y1Ly1L(
            .CLK(aclk),
            .A(y1L[i]),
            .B(y1L[i]),
            .CE(en),
            .P(y1L2[i])
        );
        mult_13_13 mult_y1Ry1R(
            .CLK(aclk),
            .A(y1R[i]),
            .B(y1R[i]),
            .CE(en),
            .P(y1R2[i])
        );
    end
    
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                x1L2_buf[i] <= '{(2*MULT_LATENCY+1){0}}; 
                x1R2_buf[i] <= '{(2*MULT_LATENCY+1){0}};
                y1L2_buf[i] <= '{(2*MULT_LATENCY+1){0}}; 
                y1R2_buf[i] <= '{(2*MULT_LATENCY+1){0}};
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                    x1L2_buf[i][0] <= x1L2[i];
                    x1L2_buf[i][(2*MULT_LATENCY+1)-1:1] <= x1L2_buf[i][(2*MULT_LATENCY+1)-2:0];
                    x1R2_buf[i][0] <= x1R2[i];
                    x1R2_buf[i][(2*MULT_LATENCY+1)-1:1] <= x1R2_buf[i][(2*MULT_LATENCY+1)-2:0];
                    y1L2_buf[i][0] <= y1L2[i];
                    y1L2_buf[i][(2*MULT_LATENCY+1)-1:1] <= y1L2_buf[i][(2*MULT_LATENCY+1)-2:0];
                    y1R2_buf[i][0] <= y1R2[i];
                    y1R2_buf[i][(2*MULT_LATENCY+1)-1:1] <= y1R2_buf[i][(2*MULT_LATENCY+1)-2:0];
                end
            end
        end
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] rL2,rR2;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][2*MULT_LATENCY-1:0][(PREC+PREC_INTER+2)-1:0] rL2_buf,rR2_buf;
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                rL2[i] <= 0;
                rR2[i] <= 0;
                rL2_buf[i] <= '{(2*MULT_LATENCY){0}}; 
                rR2_buf[i] <= '{(2*MULT_LATENCY){0}};
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                    rL2[i] <= x1L2[i]+y1L2[i];
                    rR2[i] <= x1R2[i]+y1R2[i];
                    rL2_buf[i][0] <= rL2[i];
                    rL2_buf[i][2*MULT_LATENCY-1:1] <= rL2_buf[i][2*MULT_LATENCY-2:0];
                    rR2_buf[i][0] <= rR2[i];
                    rR2_buf[i][2*MULT_LATENCY-1:1] <= rR2_buf[i][2*MULT_LATENCY-2:0];
                end
            end
        end
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] rL22,rR22;
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_x1Lx1L( // latency: 3
            .CLK(aclk),
            .A(rL2[i]),
            .B(rL2[i]),
            .CE(en),
            .P(rL22[i])
        );
        mult_13_13 mult_x1Rx1R(
            .CLK(aclk),
            .A(rR2[i]),
            .B(rR2[i]),
            .CE(en),
            .P(rR22[i])
        );
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] rL2_Coef,rR2_Coef;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] rL22_Coef,rR22_Coef;
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_rL2_Coef( // latency: 3
            .CLK(aclk),
            .A(rL2_buf[i][MULT_LATENCY-1]),
            .B(distCoeffsL[0]),
            .CE(en),
            .P(rL2_Coef[i])
        );
        mult_13_13 mult_rR2_Coef(
            .CLK(aclk),
            .A(rR2_buf[i][MULT_LATENCY-1]),
            .B(distCoeffsR[0]),
            .CE(en),
            .P(rR2_Coef[i])
        );
        mult_13_13 mult_rL22_Coef( 
            .CLK(aclk),
            .A(rL22[i]),
            .B(distCoeffsL[1]),
            .CE(en),
            .P(rL22_Coef[i])
        );
        mult_13_13 mult_rR22_Coef(
            .CLK(aclk),
            .A(rR22[i]),
            .B(distCoeffsR[1]),
            .CE(en),
            .P(rR22_Coef[i])
        );
    end
    
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] krL,krR;
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                krL[i] <= 0;
                krR[i] <= 0;
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin 
                    krL[i] <= 2**(PREC+PREC_INTER) + rL2_Coef[i] + rL22_Coef[i];
                    krR[i] <= 2**(PREC+PREC_INTER) + rR2_Coef[i] + rR22_Coef[i];
                end
            end
        end
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] krx1L,krx1R,kry1L,kry1R;
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_kr_x1L( // latency: 3
            .CLK(aclk),
            .A(x1L_buf[i][(3*MULT_LATENCY+2)-1]),
            .B(krL[i]),
            .CE(en),
            .P(krx1L[i])
        );
        mult_13_13 mult_kr_x1R(
            .CLK(aclk),
            .A(x1R_buf[i][(3*MULT_LATENCY+2)-1]),
            .B(krR[i]),
            .CE(en),
            .P(krx1R[i])
        );
        mult_13_13 mult_kr_y1L( 
            .CLK(aclk),
            .A(y1L_buf[i][(3*MULT_LATENCY+2)-1]),
            .B(krL[i]),
            .CE(en),
            .P(kry1L[i])
        );
        mult_13_13 mult_kr_y1R(
            .CLK(aclk),
            .A(y1R_buf[i][(3*MULT_LATENCY+2)-1]),
            .B(krR[i]),
            .CE(en),
            .P(kry1R[i])
        );
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1y1L,x1y1R;
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_x1L_y1L( // latency: 3
            .CLK(aclk),
            .A(x1L_buf[i][(2*MULT_LATENCY+2)-1]),
            .B(y1L_buf[i][(2*MULT_LATENCY+2)-1]),
            .CE(en),
            .P(x1y1L[i])
        );
        mult_13_13 mult_x1R_y1R(
            .CLK(aclk),
            .A(x1R_buf[i][(2*MULT_LATENCY+2)-1]),
            .B(y1R_buf[i][(2*MULT_LATENCY+2)-1]),
            .CE(en),
            .P(x1y1R[i])
        );
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1y1L_Coef2,x1y1R_Coef2;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1y1L_Coef3,x1y1R_Coef3;
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_x1y1L_Coef2( // latency: 3
            .CLK(aclk),
            .A(x1y1L[i]),
            .B(distCoeffsL[2]),
            .CE(en),
            .P(x1y1L_Coef2[i])
        );
        mult_13_13 mult_x1y1R_Coef2(
            .CLK(aclk),
            .A(x1y1R[i]),
            .B(distCoeffsR[2]),
            .CE(en),
            .P(x1y1R_Coef2[i])
        );
        mult_13_13 mult_x1y1L_Coef3( 
            .CLK(aclk),
            .A(x1y1L[i]),
            .B(distCoeffsL[3]),
            .CE(en),
            .P(x1y1L_Coef3[i])
        );
        mult_13_13 mult_x1y1R_Coef3(
            .CLK(aclk),
            .A(x1y1R[i]),
            .B(distCoeffsR[3]),
            .CE(en),
            .P(x1y1R_Coef3[i])
        );
    end
    
    logic [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1L2r2,x1R2r2;
    logic [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] y1L2r2,y1R2r2;
    
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                x1L2r2[i] <= 0;
                x1R2r2[i] <= 0;
                y1L2r2[i] <= 0;
                y1R2r2[i] <= 0;
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin 
                    x1L2r2[i] <= {x1L2_buf[i][(2*MULT_LATENCY+1)-1][(PREC+PREC_INTER+1)-1:0],1'b0} + rL2_buf[i][2*MULT_LATENCY-1];
                    x1R2r2[i] <= {x1R2_buf[i][(2*MULT_LATENCY+1)-1][(PREC+PREC_INTER+1)-1:0],1'b0} + rR2_buf[i][2*MULT_LATENCY-1];
                    y1L2r2[i] <= {y1L2_buf[i][(2*MULT_LATENCY+1)-1][(PREC+PREC_INTER+1)-1:0],1'b0} + rL2_buf[i][2*MULT_LATENCY-1];
                    y1R2r2[i] <= {y1R2_buf[i][(2*MULT_LATENCY+1)-1][(PREC+PREC_INTER+1)-1:0],1'b0} + rR2_buf[i][2*MULT_LATENCY-1];
                end
            end
        end
    end
    
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x1L2r2_Coef3,x1R2r2_Coef3;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] y1L2r2_Coef2,y1R2r2_Coef2;
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_13_13 mult_x1y1L_Coef2( // latency: 3
            .CLK(aclk),
            .A(x1L2r2[i]),
            .B(distCoeffsL[3]),
            .CE(en),
            .P(x1L2r2_Coef3[i])
        );
        mult_13_13 mult_x1y1R_Coef2(
            .CLK(aclk),
            .A(x1R2r2[i]),
            .B(distCoeffsR[3]),
            .CE(en),
            .P(x1R2r2_Coef3[i])
        );
        mult_13_13 mult_x1y1L_Coef3( 
            .CLK(aclk),
            .A(y1L2r2[i]),
            .B(distCoeffsL[2]),
            .CE(en),
            .P(y1L2r2_Coef2[i])
        );
        mult_13_13 mult_x1y1R_Coef3(
            .CLK(aclk),
            .A(y1R2r2[i]),
            .B(distCoeffsR[2]),
            .CE(en),
            .P(y1R2r2_Coef2[i])
        );
    end
    
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] x2L,x2R;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(PREC+PREC_INTER+2)-1:0] y2L,y2R;
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                x2L[i] <= 0;
                x2R[i] <= 0;
                y2L[i] <= 0;
                y2R[i] <= 0;
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                    x2L[i] <= krx1L[i]+{x1y1L_Coef2[i][(PREC+PREC_INTER+1)-1:0],1'b0}+x1L2r2_Coef3[i];
                    x2R[i] <= krx1R[i]+{x1y1R_Coef2[i][(PREC+PREC_INTER+1)-1:0],1'b0}+x1R2r2_Coef3[i];
                    y2L[i] <= kry1L[i]+{x1y1L_Coef3[i][(PREC+PREC_INTER+1)-1:0],1'b0}+y1L2r2_Coef2[i];
                    y2R[i] <= kry1R[i]+{x1y1R_Coef3[i][(PREC+PREC_INTER+1)-1:0],1'b0}+y1R2r2_Coef2[i];
                end
            end
        end
    end
    
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(MAX_W+PREC+1)-1:0] x2fL,x2fR;
    logic signed [MAX_SAMPLES_PER_CLOCK-1:0][(MAX_W+PREC+1)-1:0] y2fL,y2fR;
    for (genvar i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
        mult_f mult_x2L_f( // latency: 3
            .CLK(aclk),
            .A(x2L[i]),
            .B(fxL),
            .CE(en),
            .P(x2fL[i])
        );
        mult_f mult_x2R_f(
            .CLK(aclk),
            .A(x2R[i]),
            .B(fxR),
            .CE(en),
            .P(x2fR[i])
        );
        mult_f mult_y2L_f(
            .CLK(aclk),
            .A(y2L[i]),
            .B(fyL),
            .CE(en),
            .P(y2fL[i])
        );
        mult_f mult_y2R_f(
            .CLK(aclk),
            .A(y2R[i]),
            .B(fyR),
            .CE(en),
            .P(y2fR[i])
        );
    end
    
    logic [MAX_SAMPLES_PER_CLOCK-1:0][(MAX_W+PREC)-1:0] x3L,x3R;
    logic [MAX_SAMPLES_PER_CLOCK-1:0][(MAX_W+PREC)-1:0] y3L,y3R;
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                x3L[i] <= 0;
                x3R[i] <= 0;
                y3L[i] <= 0;
                y3R[i] <= 0;
            end
        end else begin
            if (en) begin
                for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                    x3L[i] <= x2fL[i] + cxL;
                    x3R[i] <= x2fR[i] + cxR;
                    y3L[i] <= y2fL[i] + cyL;
                    y3R[i] <= y2fR[i] + cyR;
                end
            end
        end
    end
    
    always @(posedge aclk, negedge aresetn) begin
        if (!aresetn) begin
            for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                xL[i] <= 0; 
                xR[i] <= 0; 
                yL[i] <= 0; 
                yR[i] <= 0; 
            end
        end else begin
            if (en) begin
                if(u>=MAX_SAMPLES_PER_CLOCK*LATENCY-MAX_SAMPLES_PER_CLOCK) begin
                    for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                        xL[i] <= x3L[i]-{(u+i+(-(MAX_SAMPLES_PER_CLOCK*LATENCY-MAX_SAMPLES_PER_CLOCK)-MAX_SHIFT)),{PREC{1'b0}}}; 
                        xR[i] <= x3R[i]-{(u+i+(-(MAX_SAMPLES_PER_CLOCK*LATENCY-MAX_SAMPLES_PER_CLOCK)-MAX_SHIFT)),{PREC{1'b0}}}; 
                        yL[i] <= y3L[i]-{v-MAX_SHIFT,{PREC{1'b0}}}; 
                        yR[i] <= y3R[i]-{v-MAX_SHIFT,{PREC{1'b0}}}; 
                    end
                end else begin
                    for (integer i=0; i < MAX_SAMPLES_PER_CLOCK; i++) begin
                        xL[i] <= x3L[i]-{(u+i+(-(MAX_SAMPLES_PER_CLOCK*LATENCY-MAX_SAMPLES_PER_CLOCK)+WIDTH-MAX_SHIFT)),{PREC{1'b0}}}; 
                        xR[i] <= x3R[i]-{(u+i+(-(MAX_SAMPLES_PER_CLOCK*LATENCY-MAX_SAMPLES_PER_CLOCK)+WIDTH-MAX_SHIFT)),{PREC{1'b0}}}; 
                        yL[i] <= (v!=0)? y3L[i]-{(v-1-MAX_SHIFT),{PREC{1'b0}}} : y3L[i]-{(HEIGHT-1-MAX_SHIFT),{PREC{1'b0}}}; 
                        yR[i] <= (v!=0)? y3R[i]-{(v-1-MAX_SHIFT),{PREC{1'b0}}} : y3R[i]-{(HEIGHT-1-MAX_SHIFT),{PREC{1'b0}}}; ;
                    end
                end 
            end
        end
    end
    
endmodule
