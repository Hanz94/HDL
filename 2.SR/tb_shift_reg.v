`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:17 05/02/2017
// Design Name:   shift_reg
// Module Name:   G:/HDL/SR/tb_shift_reg.v
// Project Name:  SR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_shift_reg;

	// Inputs
	reg clk;
	reg reset;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	shift_reg uut (
		.clk(clk), 
		.reset(reset), 
		.d(d), 
		.q(q)
	);


	initial clk = 0;
	always #10 clk =~clk;
	
	initial reset = 1;
	initial begin
		// Initialize Inputs
		d = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 1;
		#20;
		d = 0;
		#20;
        
		// Add stimulus here

	end
      
endmodule

