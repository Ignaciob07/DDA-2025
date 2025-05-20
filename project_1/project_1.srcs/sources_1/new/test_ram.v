`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2025 08:13:10 AM
// Design Name: 
// Module Name: test_ram
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


module test_ram(
    input [3:0] index,
    output [7:0] out_data,
    input clk,
    input rst_n
    );
    
    rom_2 u_ram(
    .clka(clk), 
    .ena(rst_n), 
    .addra(index),
    .douta(out_data)
    );
endmodule
