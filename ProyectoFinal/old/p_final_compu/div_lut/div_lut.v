module div_lut #(
    parameter NB_DATA_IN    = 8,
    parameter NB_DATA_OUT   = 8
) (
    output [NB_DATA_OUT - 1 : 0] o_div      ,
    input  [NB_DATA_IN  - 1 : 0] i_data     ,    
    input                        clock      ,
    input                        i_rst_n    
);

    localparam NB_LUT = (NB_DATA_IN - 2)*(NB_DATA_IN - 2); // 1st bit is the sign, then if I or Q is 0 i will bypass the value

    reg [NB_DATA_OUT - 1 : 0] r_lut [NB_LUT - 1 : 0];
    
    always @(posedge clock or negedge i_rst_n) begin
        if (!i_rst_n) begin
            
        end
    end


endmodule