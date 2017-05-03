`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:28 04/22/2017 
// Design Name: 
// Module Name:    dff_sync_reset 
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
module dff_sync_reset (
d   , 
clk    , 
reset  , 
q        
);

input d, clk, reset ; 

output reg q;

always @ ( posedge clk)
if (~reset) begin
  q <= 1'b0;
end  else begin
  q <= d;
end

endmodule //End Of Module dff_sync_reset
