module fsm #(
    parameter NB_COUNTER = 13
)
(
    output reg                 o_fsm_rst                   , // nueva señal para loguear datos, ahí reseteas
    output reg                 o_fsm_enb                   , // se llenó la memoria, la freno pero no la reseteo
    output reg                 o_full_mem                  ,
    input [NB_COUNTER - 1 : 0] i_counter_addr              , // chequeo ultimo valor
    input                      i_log_in_ram_run_from_micro , // quiero cap datos, detección por flanco ()
    input                      clock                       ,
    input                      i_reset                     

);

    localparam WAIT  = 0;
    localparam WRITE = 1;

    reg current_state = WAIT;
    reg next_state = WAIT;

    reg save_signal;
    always @(posedge clock) begin
        if (i_reset) begin
            save_signal <= 0;
            current_state <= WAIT;
        end
        else begin
            save_signal <= i_log_in_ram_run_from_micro;
            if (!save_signal && i_log_in_ram_run_from_micro) begin
                current_state <= WRITE;
            end else begin
                current_state <= next_state;
            end
        end

    end

    // next state
    always @(*) begin
        case (current_state)
            WAIT: begin
                next_state <= WAIT;
            
            end 
            
            WRITE: begin
                next_state <= WRITE;

            end 
        endcase
    end
    
    // output
    always @(*) begin
        case (current_state)
            WAIT: begin
                o_full_mem = 0; 
                o_fsm_rst  = 1;
                o_fsm_enb  = 0;

            end 
            WRITE: begin
                if (i_counter_addr == (1<<NB_COUNTER) - 1 ) begin
                    o_full_mem = 1; 
                    o_fsm_rst  = 0;
                    o_fsm_enb  = 0;
                end else begin
                    o_full_mem = 0; 
                    o_fsm_rst  = 0;
                    o_fsm_enb  = 1;
                end

            end 
        endcase
    end

endmodule