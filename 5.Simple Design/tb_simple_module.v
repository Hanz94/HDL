`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:13 05/03/2017
// Design Name:   simple_module
// Module Name:   G:/HDL/simpleDesign/tb_final_simple_module.v
// Project Name:  simpleDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: simple_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_final_simple_module;

	// Inputs
	reg clk;
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] ctrl_bus;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	simple_module uut (
		.clk(clk), 
		.A(A), 
		.B(B), 
		.Q(Q), 
		.ctrl_bus(ctrl_bus)
	);

	initial clk = 0;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ctrl_bus = 8'b11000000;

		// Wait 100 ns for global reset to finish
		#80;
		A = 10;
		B = 0;
		ctrl_bus = 8'b11000001;
		// Add stimulus here

	end
      
endmodule

