// THIS IS A SYMMETRIC ROUNDING

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
    localparam signed [NB_IN-1:0] ROUND_OFFSET = 1 <<< (OFFSET - 1);

    reg signed [NB_IN - 1 : 0] r_rnd;

    always @(*) begin
        if (i_data >= 0)
            r_rnd = i_data + ROUND_OFFSET;
        else
            r_rnd = i_data - ROUND_OFFSET;
    end

    assign o_round = r_rnd[OFFSET +: NB_RND];

endmodule
