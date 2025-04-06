module trunc_sat #(
    parameter NB_IN         = 8,
    parameter NBF_IN        = 7,
    parameter NB_TRU_SAT    = 8,
    parameter NBF_TRU_SAT   = 7
) (
    output [NB_TRU_SAT  - 1 : 0]    o_trunc_sat ,
    input  [NB_IN       - 1 : 0]    i_data      
);
    
    localparam NBI_IN       = NB_IN      - NBF_IN     ;
    localparam NBI_TRU_SAT  = NB_TRU_SAT - NBF_TRU_SAT;

    assign o_trunc_sat = ((~|i_data[NB_IN - 1 -: NBI_IN - (NBI_TRU_SAT - 1)])||(&i_data[NB_IN - 1 -: NBI_IN - (NBI_TRU_SAT - 1)])) ? 
                         i_data[NB_IN- (NBI_IN - NBI_TRU_SAT) - 1 -: NB_TRU_SAT] : (i_data[NB_IN- 1])  ?
                         {1'b1,{(NBI_TRU_SAT-1){1'b0}}} : {1'b0,{(NBI_TRU_SAT-1){1'b1}}};

endmodule