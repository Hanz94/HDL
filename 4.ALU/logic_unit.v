`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:24 05/02/2017 
// Design Name: 
// Module Name:    logic_unit 
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
module logic_unit(
a,
b,
clk,
sel,
c
    );

input wire [7:0] a;
input wire [7:0] b;
input clk;
input wire [3:0] sel;
output wire [7:0] c;

reg [7:0] res;

always @(posedge clk)
begin
	case (sel) 
		8 : res = ~a; 
		9 : res = ~b; 
		10 : res = a & b;   
		11 : res = a | b;
		12 : res = ~(a & b);
		13 : res = ~(a | b);
		14 : res = a^b;
		15 : res = a~^b;		
		default : $display("Error in SEL"); 
 endcase 
end

assign c = res;

endmodule
