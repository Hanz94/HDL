`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:04:36 05/02/2017
// Design Name:   arithmatic_unit
// Module Name:   G:/HDL/ALU/tb_arithmatic_unit.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arithmatic_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_arithmatic_unit;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg clk;
	reg [3:0] sel;
	reg c_in;

	// Outputs
	wire [7:0] c_out;

	// Instantiate the Unit Under Test (UUT)
	arithmatic_unit uut (
		.a(a), 
		.b(b), 
		.clk(clk), 
		.sel(sel), 
		.c_in(c_in), 
		.c_out(c_out)
	);


	initial clk = 1;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		a = 2;
		b = 3;
		sel = 0;
		c_in = 1;

		// Wait 100 ns for global reset to finish
		#100;
      sel = 1;
		#100;
      sel = 2;
		#100;
      sel = 3;
		#100;
      sel = 4;
		#100;
      sel = 5;
		#100;
      sel = 6;
		#100;
      sel = 7;
		// Add stimulus here

	end
      
endmodule

