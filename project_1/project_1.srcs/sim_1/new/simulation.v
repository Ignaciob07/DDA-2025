`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2025 08:29:18 AM
// Design Name: 
// Module Name: simulation
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


module simulation();
reg [3:0] index;
wire [7:0] out_data;
reg clk;
reg rst_n;
    
    always #5 clk = ~clk;
    
    initial begin
        index=0;
        rst_n =0;
        clk =0;
        
        #10
        
        rst_n =1;
        
        #20
        
        index=2;
        
        #20
        
        index=15;
        
        #20
        
        $finish;
    end


 test_ram dut (
    .index(index),
    .out_data(out_data),
    .clk(clk),
    .rst_n(rst_n)
    );
    

endmodule
