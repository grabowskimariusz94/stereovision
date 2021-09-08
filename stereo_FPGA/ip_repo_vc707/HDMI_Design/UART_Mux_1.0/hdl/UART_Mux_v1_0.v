
`timescale 1 ns / 1 ps

	module UART_Mux_v1_0 
	(
		input wire  select,
		input wire  in_0_tx,
		output wire  in_0_rx,
		input wire  in_1_tx,
		output wire  in_1_rx,
		output wire  out_tx,
		input wire  out_rx
	);
	
	assign out_tx = select ? in_1_tx : in_0_tx;
	assign in_0_rx = select ? 1'b1 : out_rx;
	assign in_1_rx = select ? out_rx : 1'b1;
	
	
	endmodule
