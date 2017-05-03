`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:46:03 05/02/2017
// Design Name:   mux
// Module Name:   G:/HDL/ALU/tb_mux.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux;

	// Inputs
	reg [6:0] p;
	reg [6:0] q;
	reg sel;
	reg clk;

	// Outputs
	wire [6:0] y_out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.p(p), 
		.q(q), 
		.sel(sel), 
		.clk(clk), 
		.y_out(y_out)
	);


	initial clk = 1;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		p = 0;
		q = 10;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
      sel = 1;
		// Add stimulus here

	end
      
endmodule

