module slicer_lut #(
    parameter NB_DATA_IN    = 8,
    parameter NB_DATA_OUT   = 9
) (
    output [NB_DATA_OUT - 1 : 0] o_atan      ,
    input  [NB_DATA_IN  - 1 : 0] i_data_i    ,
    input  [NB_DATA_IN  - 1 : 0] i_data_q    ,
    input                        i_clock       ,
    input                        i_rst_n    
);

    reg  [NB_INDEX    - 1 : 0] index                 ;
    reg  [NB_DATA_IN  - 1 : 0] data_i                ;
    reg  [NB_DATA_IN  - 1 : 0] data_q                ;
    reg  [NB_DATA_OUT - 1 : 0] r_atan                ;

    always @(*) begin
                                                           
    end

    assign o_atan = r_atan;

    always @(posedge i_clock or negedge i_rst_n) begin
        if (!i_rst_n) begin
          lut[0] <= 0;
        end
    end

endmodule