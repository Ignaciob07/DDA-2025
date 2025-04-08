module carrier_recovery_dd #(
    parameter NB_IN_CARRIER_RECOVERY   = 8,
    parameter NBF_IN_CARRIER_RECOVERY  = 7,
    parameter NB_OUT_CARRIER_RECOVERY  = 7,
    parameter NBF_OUT_CARRIER_RECOVERY = 7,
    parameter NB_IN_ESTIMATED_PHASE    = 8,
    parameter NBF_IN_ESTIMATED_PHASE   = 7
)(
    output signed [NB_DATA_OUT - 1 : 0] o_corrected_i ,
    output signed [NB_DATA_OUT - 1 : 0] o_corrected_q ,
    input  signed [NB_DATA_IN  - 1 : 0] i_data_i      ,
    input  signed [NB_DATA_IN  - 1 : 0] i_data_q      ,
    input                               i_clock       ,
    input                               i_rst_n         
);
    
endmodule