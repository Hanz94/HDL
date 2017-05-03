`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:27 05/02/2017 
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
alu_a,
alu_b,
alu_c_in,
alu_clk,
alu_y,
alu_sel
    );

input alu_clk;
input wire [7:0] alu_a;
input wire [7:0] alu_b;
input wire alu_c_in;
output wire [7:0] alu_y;
input wire [3:0] alu_sel;
wire mux_clk;

assign mux_clk = ~alu_clk;

wire sel;
wire [7:0] logic_to_mux;
wire [7:0] arithmatic_to_mux;
assign sel = alu_sel[3];

arithmatic_unit AU (
		.a(alu_a), 
		.b(alu_b), 
		.clk(alu_clk), 
		.sel(alu_sel), 
		.c_in(alu_c_in), 
		.c_out(arithmatic_to_mux)
	);

logic_unit LU (
		.a(alu_a), 
		.b(alu_b), 
		.clk(alu_clk), 
		.sel(alu_sel),  
		.c(logic_to_mux)
	);
	
mux MUX (
	.p(arithmatic_to_mux), 
	.q(logic_to_mux), 
	.sel(sel), 
	.clk(mux_clk), 
	.y_out(alu_y)
);

endmodule
