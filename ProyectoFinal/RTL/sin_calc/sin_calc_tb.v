`timescale 1ps/1ps

module sin_calc_tb ();
    parameter NB_DATA_IN    = 18;
    parameter NBF_DATA_IN   = 14;
    parameter NB_DATA_OUT   = 9 ; 
    parameter NBF_DATA_OUT  = 7 ;

    wire signed [NB_DATA_OUT - 1 : 0] o_sin      ;
    wire signed [NB_DATA_OUT - 1 : 0] o_cos      ;
    reg  signed [NB_DATA_IN  - 1 : 0] i_data     ;
    reg                               i_clock    ;
    reg                               i_rst_n    ;

    always #5 i_clock = ~i_clock;

    integer i;
    initial begin
        i_data  = 0;
        i_clock = 0;
        i_rst_n = 0;

        #20;

        i_rst_n = 1;

        @(posedge i_clock);

        for (i_data = -102944; i_data < 102944; i_data = i_data + 1) begin
            @(posedge i_clock);
        end

        #20;
        i_rst_n = 0;
        #20;
        $finish();
    end

sin_calc #(
    .NB_DATA_IN  (NB_DATA_IN    ),
    .NBF_DATA_IN (NBF_DATA_IN   ),
    .NB_DATA_OUT (NB_DATA_OUT   ),
    .NBF_DATA_OUT(NBF_DATA_OUT  )
) u_sin_calc (
    .o_sin  (o_sin  ),
    .i_data (i_data ),
    .i_clock(i_clock),
    .i_rst_n(i_rst_n)
);

cos_calc #(
    .NB_DATA_IN  (NB_DATA_IN    ),
    .NBF_DATA_IN (NBF_DATA_IN   ),
    .NB_DATA_OUT (NB_DATA_OUT   ),
    .NBF_DATA_OUT(NBF_DATA_OUT  )
) u_cos_calc (
    .o_cos  (o_cos  ),
    .i_data (i_data ),
    .i_clock(i_clock),
    .i_rst_n(i_rst_n)
);

endmodule