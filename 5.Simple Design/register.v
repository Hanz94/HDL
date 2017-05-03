`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:00 05/03/2017 
// Design Name: 
// Module Name:    register 
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
module register(
    
clk,
data_in,
data_out,
enable
    );

input clk;
input wire [7:0] data_in;
output wire [7:0] data_out;
input enable;

reg [7:0] data;

always @(posedge clk)
begin
	if(enable == 1)
		begin
			data <= data_in;
		end
end

assign data_out = data;

endmodule
