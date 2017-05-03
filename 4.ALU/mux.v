`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:36:01 05/02/2017 
// Design Name: 
// Module Name:    mux 
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
module mux(
p,
q,
sel,
clk,
y_out
    );

input sel;
input clk;
input wire [7:0] p;
input wire [7:0] q;
reg [7:0] y;
output wire [7:0] y_out;

always @(posedge clk)
begin
	if(sel == 0)
		y <=p;
	else
		y <=q;
end

assign y_out = y;


endmodule
