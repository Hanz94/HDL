`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:06 05/03/2017
// Design Name:   register
// Module Name:   G:/HDL/simpleDesign/tb_register.v
// Project Name:  simpleDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_register;

	// Inputs
	reg clk;
	reg [7:0] data_in;
	reg enable;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.clk(clk), 
		.data_in(data_in), 
		.data_out(data_out), 
		.enable(enable)
	);

	initial clk = 1;
	always #10 clk =~clk;
	
	initial begin
		// Initialize Inputs
		data_in = -63;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		enable = 1;
        
		// Add stimulus here

	end
      
endmodule

