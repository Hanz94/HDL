`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:48 04/22/2017
// Design Name:   dff_sync_reset
// Module Name:   G:/HDL/DFF/tb_dff_sync_reset.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff_sync_reset
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dff_sync_reset;

	// Inputs
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff_sync_reset uut (
		.d(d), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial clk = 0;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		d = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
      d = 1;
		// Add stimulus here
		#100;
      reset = 0;
	end
      
endmodule

