`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 00:11:59
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input CLK,
    input reset,
    output [6:0] seg
);

wire [3:0] BCD;

counter C1 (
    .CLK(CLK),
    .reset(reset),
    .BCD(BCD)
);

seven_segment S1 (
    .BCD(BCD),
    .seg(seg)
);

endmodule
