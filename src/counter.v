`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 22:12:18
// Design Name: 
// Module Name: counter
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


`timescale 1ns / 1ps

module counter(
    input CLK,
    input reset,
    output reg [3:0] BCD
);

always @(posedge CLK) begin
    if (reset)
        BCD <= 4'b0000;
    else if (BCD == 4'b1001)
        BCD <= 4'b0000;
    else
        BCD <= BCD + 1'b1;
end

endmodule
