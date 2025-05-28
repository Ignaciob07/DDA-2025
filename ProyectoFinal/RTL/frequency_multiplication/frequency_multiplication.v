module frequency_multiplication #(
    parameter NB_IN   = 36 ,    
    parameter NB_OUT  = 11 ,    
    parameter NBF_OUT = 7    

) (
    output reg signed  [NB_OUT - 1 : 0] o_phase  ,
    output reg signed  [NB_IN  - 1 : 0] i_counter,
    input                               i_clock  ,
    input                               i_rst_n
);

localparam NB_MUL_FULL = NB_IN + NB_OUT;
localparam NBF_MUL_FULL = NB_IN + NB_OUT;

reg  [NB_OUT      - 1 : 0] freq_shift;
reg  [NB_MUL_FULL - 1 : 0] multiplication_full_res;
wire [NB_OUT      - 1 : 0] multiplication_trunc;

always @(*) begin
    multiplication_full_res = freq_shift * i_counter; 
end

always @(posedge i_clock or negedge i_rst_n) begin
    if (!i_rst_n) begin
        freq_shift <= 0;
        o_phase    <= 0;
    end
    else begin

    end
end

rounding #(
    .NB_IN  (NB_MUL_FULL     ),  
    .NBF_IN (NBF_FULL_RES_MUL),      
    .NB_RND (NB_MUL_OUT      ),      
    .NBF_RND(NBF_MUL_OUT     )     
) u_round (
    .o_round(mul_out_i_rnd_cos          ),
    .i_data (mul_out_i_cos_full_res     )     
);

endmodule