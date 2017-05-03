`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:14 05/02/2017 
// Design Name: 
// Module Name:    arithmatic_unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module arithmatic_unit(
a,
b,
clk,
sel,
c_in,
c_out
    );

input wire [7:0] a;
input wire [7:0] b;
input clk;
input wire [3:0] sel;
input wire c_in;
output wire [7:0] c_out;

reg [7:0] res;

always @(posedge clk)
begin
	case (sel) 
		0 : res = a; 
		1 : res = a + 1; 
		2 : res = a - 1;   
		3 : res = b;
		4 : res = b+1;
		5 : res = b-1;
		6 : res = a+b;
		7 : res = a+b+c_in;		
		default : $display("Error in SEL"); 
 endcase 
end

assign c_out = res;

endmodule
