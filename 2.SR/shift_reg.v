`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:27 04/23/2017 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(
clk,
reset,
d,
q
    );

input clk, reset, d;
output reg q;

reg [3:0] r_reg;

always @(posedge clk, negedge reset)
if (~reset) begin
	r_reg <= 0;
end  else begin
	assign q = r_reg[0];
	r_reg <= {d, r_reg[3:1]};
end

endmodule
