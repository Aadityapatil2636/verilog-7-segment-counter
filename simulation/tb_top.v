`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 12:29:45
// Design Name: 
// Module Name: tb_top
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

module tb_top;

reg CLK;
reg reset;
wire [6:0] seg;

top DUT (
    .CLK(CLK),
    .reset(reset),
    .seg(seg)
);

// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end


initial begin
    reset = 1;
    #10;
    
    reset = 0;
    #100;
    
    $finish;
end

endmodule
