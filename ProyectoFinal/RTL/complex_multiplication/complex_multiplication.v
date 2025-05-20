module complex_multiplication #(
    parameter NB_IN_CARRIER_RECOVERY   = 8,
    parameter NBF_IN_CARRIER_RECOVERY  = 7,
    parameter NB_OUT_CARRIER_RECOVERY  = 8,
    parameter NBF_OUT_CARRIER_RECOVERY = 7,
    parameter NB_IN_ESTIMATED_PHASE    = 9,
    parameter NBF_IN_ESTIMATED_PHASE   = 7  
)(
    output  signed [NB_OUT_CARRIER_RECOVERY - 1 : 0] o_data_i            ,
    output  signed [NB_OUT_CARRIER_RECOVERY - 1 : 0] o_data_q            ,
    input      signed [NB_IN_CARRIER_RECOVERY  - 1 : 0] i_data_i            ,
    input      signed [NB_IN_CARRIER_RECOVERY  - 1 : 0] i_data_q            ,
    input      signed [NB_IN_ESTIMATED_PHASE   - 1 : 0] i_data_cos          ,
    input      signed [NB_IN_ESTIMATED_PHASE   - 1 : 0] i_data_sin          ,
    input                                               i_clock             ,
    input                                               i_rst_n         
);

localparam NB_FULL_RES_MUL  = NB_IN_CARRIER_RECOVERY  + NB_IN_ESTIMATED_PHASE ;
localparam NBF_FULL_RES_MUL = NBF_IN_CARRIER_RECOVERY + NBF_IN_ESTIMATED_PHASE;

localparam NB_MUL_OUT       = NB_IN_CARRIER_RECOVERY ;
localparam NBF_MUL_OUT      = NBF_IN_CARRIER_RECOVERY;

reg signed [NB_FULL_RES_MUL - 1 : 0]   mul_out_i_cos_full_res;
reg signed [NB_FULL_RES_MUL - 1 : 0]   mul_out_i_sin_full_res;
reg signed [NB_FULL_RES_MUL - 1 : 0]   mul_out_q_sin_full_res;
reg signed [NB_FULL_RES_MUL - 1 : 0]   mul_out_q_cos_full_res;

wire signed [NB_MUL_OUT      - 1 : 0]   mul_out_i_rnd_cos     ;
wire signed [NB_MUL_OUT      - 1 : 0]   mul_out_q_rnd_sin     ;
wire signed [NB_MUL_OUT      - 1 : 0]   mul_out_i_rnd_sin     ;
wire signed [NB_MUL_OUT      - 1 : 0]   mul_out_q_rnd_cos     ;

always @(*) begin
    mul_out_i_cos_full_res = $signed(i_data_cos) * $signed(i_data_i);
    mul_out_q_sin_full_res = $signed(i_data_sin) * $signed(i_data_q);
    mul_out_i_sin_full_res = $signed(i_data_sin) * $signed(i_data_i);
    mul_out_q_cos_full_res = $signed(i_data_cos) * $signed(i_data_q);


end

    assign o_data_i = mul_out_i_rnd_cos + mul_out_q_rnd_sin;
    assign o_data_q = mul_out_q_rnd_cos - mul_out_i_rnd_sin;

// always @(posedge i_clock or negedge i_rst_n) begin
//     if (!i_rst_n) begin
//         o_data_i <= 0;
//         o_data_q <= 0;
//     end
//     else begin
//         o_data_i <= mul_out_i_rnd_cos + mul_out_q_rnd_sin;
//         o_data_q <= mul_out_q_rnd_cos - mul_out_i_rnd_sin;
//     end
// end



rounding #(
    .NB_IN  (NB_FULL_RES_MUL ),  
    .NBF_IN (NBF_FULL_RES_MUL),      
    .NB_RND (NB_MUL_OUT      ),      
    .NBF_RND(NBF_MUL_OUT      )     
) u_round_i_mul_cos (
    .o_round(mul_out_i_rnd_cos ),
    .i_data (mul_out_i_cos_full_res      )     
);

rounding #(
    .NB_IN  (NB_FULL_RES_MUL ),  
    .NBF_IN (NBF_FULL_RES_MUL),      
    .NB_RND (NB_MUL_OUT      ),      
    .NBF_RND(NBF_MUL_OUT      )     
) u_round_q_mul_sin (
    .o_round(mul_out_q_rnd_sin      ),
    .i_data (mul_out_q_sin_full_res )     
);

rounding #(
    .NB_IN  (NB_FULL_RES_MUL ),  
    .NBF_IN (NBF_FULL_RES_MUL),      
    .NB_RND (NB_MUL_OUT      ),      
    .NBF_RND(NBF_MUL_OUT      )     
) u_round_i_mul_sin (
    .o_round(mul_out_i_rnd_sin ),
    .i_data (mul_out_i_sin_full_res      )     
);

rounding #(
    .NB_IN  (NB_FULL_RES_MUL ),  
    .NBF_IN (NBF_FULL_RES_MUL),      
    .NB_RND (NB_MUL_OUT      ),      
    .NBF_RND(NBF_MUL_OUT      )     
) u_round_q_mul_cos (
    .o_round(mul_out_q_rnd_cos      ),
    .i_data (mul_out_q_cos_full_res )     
);



endmodule