`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:50 05/03/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
a,
m,
clk,
alu_op,
x
    );

input wire [7:0] a;
input wire [7:0] m;
input clk;
input wire [2:0] alu_op;
output wire [7:0] x;

reg [7:0] res;

always @(posedge clk)
begin
	case (alu_op) 
		0 : res = a; 
		1 : res = a + m; 
		2 : res = a - m;   
		3 : res = m - a;
		4 : res = -(a+m);
		5 : res = a & m;
		6 : res = a | m;
		7 : res = a ^ m;		
		default : $display("Error in SEL"); 
 endcase 
end

assign x = res;

endmodule
