`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:17:41 05/02/2017
// Design Name:   logic_unit
// Module Name:   G:/HDL/ALU/tb_logic_unit.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: logic_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_logic_unit;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg clk;
	reg [3:0] sel;

	// Outputs
	wire [7:0] c;

	// Instantiate the Unit Under Test (UUT)
	logic_unit uut (
		.a(a), 
		.b(b), 
		.clk(clk), 
		.sel(sel), 
		.c(c)
	);

	initial clk = 1;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		a = 2;
		b = 3;

		// Wait 100 ns for global reset to finish
      sel = 8;
		#100;
      sel = 9;
		#100;
      sel = 10;
		#100;
      sel = 11;
		#100;
      sel = 12;
		#100;
      sel = 13;
		#100;
      sel = 14;
		#100
		sel = 15;
		// Add stimulus here

	end
      
endmodule

