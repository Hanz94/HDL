`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:43 05/02/2017 
// Design Name: 
// Module Name:    fd 
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
module fd(
input clk,
output reg out_clk
    );

initial out_clk = 0;

reg[1:0] count = 0;
always @ (posedge clk)
begin
if(count == 2)
		begin
			count = 0;
			out_clk = ~out_clk;
		end
		else begin
			count = count + 1;
		end
end

endmodule
