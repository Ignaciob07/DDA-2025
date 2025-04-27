module rounding #(
    parameter NB_IN   = 16,
    parameter NBF_IN  = 14,
    parameter NB_RND  = 8,
    parameter NBF_RND = 7
) (
    output signed [NB_RND - 1 : 0] o_round,
    input  signed [NB_IN  - 1 : 0] i_data
);

localparam OFFSET = NBF_IN - NBF_RND;

reg signed [NB_IN - 1 : 0] r_rnd;

always @(*) begin
    r_rnd = i_data + (1 <<< (OFFSET - 1));
end

assign o_round = r_rnd[OFFSET +: NB_RND];

endmodule
