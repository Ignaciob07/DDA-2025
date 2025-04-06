`timescale 1ns/1ps
module loop_filter_tb ();
    parameter NB_PHASE_IN       = 18;
    parameter NBF_PHASE_IN      = 14;
    parameter NB_PHASE_OUT      = 18;
    parameter NBF_PHASE_OUT     = 14;

    wire  signed [NB_PHASE_OUT     - 1 : 0]  o_phase;
    reg   signed [NB_PHASE_IN      - 1 : 0]  i_phase;
    reg                                      i_clock;
    reg                                      i_rst_n;   


    always #5 i_clock = ~i_clock;

    reg signed [NB_PHASE_IN - 1 : 0] error;
    
    always @(posedge i_clock or negedge i_rst_n) begin
        if(!i_rst_n)
            error = 0;
        else
            error = i_phase - o_phase;
    end
    
    initial begin
        i_phase = 0;
        i_clock = 0;
        i_rst_n = 0;

        @(posedge i_clock);

        i_rst_n = 1;
        
        #200;

        i_phase = -110;

        #200;

        i_phase = -0;

        #200;

        $finish();
        
    end

    loop_filter #(
        .NB_PHASE_IN    (NB_PHASE_IN    ),
        .NBF_PHASE_IN   (NBF_PHASE_IN   ),
        .NB_PHASE_OUT   (NB_PHASE_OUT   ),
        .NBF_PHASE_OUT  (NBF_PHASE_OUT  )
    ) u_loop_filter (
        .o_phase        (o_phase        ),
        .i_phase        (error        ),
        .i_clock        (i_clock        ),
        .i_rst_n        (i_rst_n        )    
    );

endmodule