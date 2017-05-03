`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:10 05/03/2017
// Design Name:   sr
// Module Name:   G:/HDL/simpleDesign/tb_sr.v
// Project Name:  simpleDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sr;

	// Inputs
	reg clk;
	reg [1:0] shift;
	reg [7:0] d;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	sr uut (
		.clk(clk), 
		.shift(shift), 
		.d(d), 
		.q(q)
	);

	initial clk = 1;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		shift = 0;
		d = 63;
		// Wait 100 ns for global reset to finish
		#100;
      shift = 1;
		// Add stimulus here
		#100;
      shift = 3;
	end
      
endmodule

