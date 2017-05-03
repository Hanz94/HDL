`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:17 05/03/2017 
// Design Name: 
// Module Name:    simple_module 
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
module simple_module(
clk,
A,
B,
Q,
ctrl_bus
    );

input wire [7:0] A;
input wire [7:0] B;
input wire [7:0] ctrl_bus;
output wire [7:0] Q;
input clk;

wire [7:0] M;
wire [7:0] X;
wire [7:0] S;
wire [7:0] R;
wire [2:0] ALU_OP;
wire [1:0] SHIFT_OP;
wire Q_EN;
wire R_EN;
wire MUX_SEL; 

assign ALU_OP = ctrl_bus[2:0];
assign SHIFT_OP = ctrl_bus[5:4];
assign MUX_SEL = ctrl_bus[3];
assign Q_EN = ctrl_bus[6];
assign R_EN = ctrl_bus[7];
 
ALU alu (
		.a(A), 
		.m(M), 
		.clk(clk), 
		.alu_op(ALU_OP), 
		.x(X)
	);
	
mux MUX (
		.p(B), 
		.q(R), 
		.sel(MUX_SEL), 
		.clk(clk), 
		.y_out(M)
	);	
	
register R_REGISTER (
		.clk(clk), 
		.data_in(S), 
		.data_out(R), 
		.enable(R_EN)
	);
	
register Q_REGISTER (
		.clk(clk), 
		.data_in(S), 
		.data_out(Q), 
		.enable(Q_EN)
	);

sr SR (
		.clk(clk), 
		.shift(SHIFT_OP), 
		.d(X), 
		.q(S)
	);
	
endmodule
