`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:34:24 05/03/2017
// Design Name:   ALU
// Module Name:   G:/HDL/simpleDesign/tb_ALU.v
// Project Name:  simpleDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ALU;

	// Inputs
	reg [7:0] a;
	reg [7:0] m;
	reg clk;
	reg [2:0] alu_op;

	// Outputs
	wire [7:0] x;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.m(m), 
		.clk(clk), 
		.alu_op(alu_op), 
		.x(x)
	);
	
	
	initial clk = 1;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		
		#100
		a = 10;
		m = 15;
		alu_op = 0;

		// Wait 100 ns for global reset to finish
		#100;
      alu_op = 1;
		#100;
      alu_op = 2;
		#100;	
      alu_op = 3;
		#100;	      
		alu_op = 4;
		#100;	
      alu_op = 5;
		#100;	
      alu_op = 6;
		#100;
      alu_op = 7;
		#100;			
		// Add stimulus here

	end
      
endmodule

