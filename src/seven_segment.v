`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 22:28:24
// Design Name: 
// Module Name: seven_segment
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




module seven_segment(
    input [3:0] BCD,
    output [6:0] seg
);

assign seg[6] = BCD[3] | BCD[1] | 
                (BCD[2] & BCD[0]) | 
                (~BCD[2] & ~BCD[0]);

    assign seg[5] = ~BCD[2] | 
                (BCD[1] & BCD[0]) | 
                (~BCD[1] & ~BCD[0]);

    assign seg[4] = BCD[2] | BCD[0] | ~BCD[1];

    assign seg[3] = BCD[3] | 
                (BCD[1] & ~BCD[2]) | 
                (BCD[1] & ~BCD[0]) | 
                (~BCD[2] & ~BCD[0]) | 
                (BCD[2] & ~BCD[1] & BCD[0]);

    assign seg[2] = (BCD[1] & ~BCD[0]) | 
                (~BCD[2] & ~BCD[0]);

    assign seg[1] = BCD[3] | 
                (BCD[2] & ~BCD[1]) | 
                (BCD[2] & ~BCD[0]) | 
                (~BCD[1] & ~BCD[0]);

    assign seg[0] = BCD[3] | 
                (BCD[2] & ~BCD[1]) | 
                (BCD[1] & ~BCD[2]) | 
                (BCD[1] & ~BCD[0]);

endmodule

