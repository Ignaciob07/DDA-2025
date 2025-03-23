module tb_fsm ();
    parameter NB_COUNTER = 3;
    wire                     o_fsm_rst                   ; // nueva señal para loguear datos, ahí reseteas
    wire                     o_fsm_enb                   ; // se llenó la memoria, la freno pero no la reseteo
    wire                     o_full_mem                  ;
    reg [NB_COUNTER - 1 : 0] i_counter_addr              ; // chequeo ultimo valor
    reg                      i_log_in_ram_run_from_micro ; // quiero cap datos, detección por flanco ()
    reg                      clock                       ;
    reg                      i_reset                     ;

    always #10 clock=~clock;

    initial begin
        i_counter_addr              =0;            
        i_log_in_ram_run_from_micro =0;                        
        clock                       =0;    
        i_reset                     =1;    

        #10
        
        i_reset = 0;

        # 20
        i_log_in_ram_run_from_micro=1;

        # 10 

        i_log_in_ram_run_from_micro = 0;
        while (!o_full_mem) begin
            i_counter_addr = i_counter_addr + 1;
            @(posedge clock);
        end

        #100

        $stop;


    end

    fsm #(
        .NB_COUNTER(NB_COUNTER)
    ) u_fsm_tb
    (
        .o_fsm_rst                  (o_fsm_rst                  ), // nueva señal para loguear datos, ahí reseteas
        .o_fsm_enb                  (o_fsm_enb                  ), // se llenó la memoria, la freno pero no la reseteo
        .o_full_mem                 (o_full_mem                 ),
        .i_counter_addr             (i_counter_addr             ), // chequeo ultimo valor
        .i_log_in_ram_run_from_micro(i_log_in_ram_run_from_micro), // quiero cap datos, detección por flanco ()
        .clock                      (clock                      ),
        .i_reset                    (i_reset                    )
    
    );

endmodule