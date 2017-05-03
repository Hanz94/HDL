`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:15 05/03/2017 
// Design Name: 
// Module Name:    sr 
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
module sr(
clk,
shift,
d,
q
    );

input clk;
input wire [1:0] shift;
input wire [7:0] d;
output wire [7:0] q;

reg [7:0] r_reg;

always @(posedge clk)
begin

case (shift) 
		0 : r_reg <= d; 
		1 : r_reg <= d<<1; 
		2 : r_reg <= d<<2;   
		3 : r_reg <= d<<3;	
		default : $display("Error in SEL"); 
 endcase 
 end
 
assign q = r_reg;

endmodule
