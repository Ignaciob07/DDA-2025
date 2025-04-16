module cos_calc_tb ();
    parameter NB_DATA_IN    = 18               ;
    parameter NBF_DATA_IN   = 14               ;
    parameter NB_DATA_OUT   = 8                ;
    parameter NBF_DATA_OUT  = 7                ;
    
    wire signed [NB_DATA_OUT - 1 : 0] o_cos  ;
    reg  signed [NB_DATA_IN  - 1 : 0] i_data ;
    reg                               i_clock;
    reg                               i_rst_n;

    localparam PI_2_18_14   = 18'd25736                  ;

    always #5 i_clock = ~i_clock;

    initial begin
        
        i_data =0;
        i_clock=0;
        i_rst_n=0;

        @(posedge i_clock);

        i_rst_n=1;
        i_data = PI_2_18_14;

        #100

        $finish();

    end



cos_calc #(
    .NB_DATA_IN(NB_DATA_IN),
    .NBF_DATA_IN(NBF_DATA_IN),
    .NB_DATA_OUT(NB_DATA_OUT),
    .NBF_DATA_OUT(NBF_DATA_OUT)
) u_cos_calc (
    .o_cos(o_cos),
    .i_data(i_data),
    .i_clock(i_clock),
    .i_rst_n(i_rst_n)
);

endmodule