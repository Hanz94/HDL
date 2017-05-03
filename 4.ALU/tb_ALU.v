`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:16:28 05/02/2017
// Design Name:   ALU
// Module Name:   G:/HDL/ALU/tb_finalALU.v
// Project Name:  ALU
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

module tb_finalALU;

	// Inputs
	reg [7:0] alu_a;
	reg [7:0] alu_b;
	reg alu_c_in;
	reg alu_clk;
	reg [3:0] alu_sel;

	// Outputs
	wire [7:0] alu_y;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_c_in(alu_c_in), 
		.alu_clk(alu_clk), 
		.alu_y(alu_y), 
		.alu_sel(alu_sel)
	);

	initial alu_clk = 0;
	always #10 alu_clk =~alu_clk;
	
	initial begin
		// Initialize Inputs
		alu_a = 3;
		alu_b = 10;
		alu_c_in = 1;
		alu_sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		alu_sel = 1;
		#100;
		alu_sel = 2;
		#100;
		alu_sel = 3;
		#100;
		alu_sel = 4;
		#100;
		alu_sel = 5;
		#100;
		alu_sel = 6;
		#100;
		alu_sel = 7;
		#100;
		alu_sel = 8;
		#100;
		alu_sel = 9;
		#100;
		alu_sel = 10;
		#100;
		alu_sel = 11;
		#100;
		alu_sel = 12;
		#100;
		alu_sel = 13;
		#100;
		alu_sel = 14;
		#100;
		alu_sel = 15;
		#100;
        
		// Add stimulus here

	end
      
endmodule

