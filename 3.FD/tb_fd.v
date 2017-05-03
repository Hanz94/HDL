`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:01 05/02/2017
// Design Name:   fd
// Module Name:   G:/HDL/FD/tb_fd.v
// Project Name:  FD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fd;

	// Inputs
	reg clk;

	// Outputs
	wire out_clk;
	// Instantiate the Unit Under Test (UUT)
	fd uut (
		.clk(clk), 
		.out_clk(out_clk)
	);

	initial clk = 0;
	always #10 clk =~clk;

	initial begin
		// Initialize Input
        
		// Add stimulus here

	end
      
endmodule

