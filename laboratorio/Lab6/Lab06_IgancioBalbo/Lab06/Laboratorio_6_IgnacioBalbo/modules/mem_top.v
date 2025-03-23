module mem_top #(
    // parameter NB_COUNT          = 32, //! NB del contador       32 bits
    parameter NB_ADDR_RAM_LOG   = 13, //! Longitud de memoria   15bits
    parameter NB_DATA_RAM_LOG   = 32, //! Ancho de memoria      32bits
    parameter NB_ENB_STEP       = 4 ,  //! Enables to counter           4bits
    parameter INIT_FILE         = ""
    )
(
    output [NB_DATA_RAM_LOG - 1 : 0]    o_log_data_from_ram        , //! Datos logueados              32bits
    output                              o_log_out_full_from_ram    , //! Memoria completa             1bit
    input                               i_log_in_ram_run_from_micro, //! Inicio de logueo             1bit
    input  [NB_ADDR_RAM_LOG - 1 : 0]    i_log_read_addr_from_micro , //! Direccion de lectura de BRAM 15bits
    input  [NB_ENB_STEP     - 1 : 0]    i_rf_enables_module        , //! Enables to counter           4bits
    input                               clock                      , //! Clock
    input                               cpu_reset                    //! Reset desde el micro
);
    // data
    reg [NB_DATA_RAM_LOG - 1 : 0] counter_data;
    wire fsm_enb, fsm_rst;

    always @(posedge clock ) begin
        if (cpu_reset || fsm_rst ) begin
            counter_data <= 0;
        end
        else if (i_rf_enables_module[0]) begin
            counter_data <= counter_data + 1;
        end
        else if (i_rf_enables_module[1]) begin
            counter_data <= counter_data + 2;
        end
        else if (i_rf_enables_module[2]) begin
            counter_data <= counter_data + 3;
        end
        else if (i_rf_enables_module[3]) begin
            counter_data <= counter_data + 4;
        end
        else 
            counter_data <= counter_data;
    end

    // address
    reg [NB_ADDR_RAM_LOG - 1 : 0] counter_addr;

    always @(posedge clock ) begin
        if (cpu_reset || fsm_rst) begin // agregar fsm
            counter_addr <= 0;
        end
        else if (fsm_enb) begin
            counter_addr <= counter_addr + 1; // agregar fsm
        end
        else 
            counter_addr <= counter_addr;
    end

    bram #(
        .RAM_WIDTH   (NB_DATA_RAM_LOG), // Specify RAM data width
        .NB_RAM_DEPTH(NB_ADDR_RAM_LOG), // Specify RAM depth (number of entries)
        .INIT_FILE   (INIT_FILE      )  // Specify name/location of RAM initialization file if using one (leave blank if not)
    )u_ram(
        .o_data      (o_log_data_from_ram       ),
        .i_data      (counter_data              ),
        .i_write_addr(counter_addr              ),
        .i_read_addr (i_log_read_addr_from_micro),
        .i_wr_enb    (fsm_enb                   ),
        .i_rd_enb    (1'b1                      ),
        .clock       (clock                     )
);

    fsm
        #(
            .NB_COUNTER(NB_ADDR_RAM_LOG)
        )
        u_fsm
        (
            .o_fsm_rst                  (fsm_rst                    ), // nueva señal para loguear datos, ahí reseteas
            .o_fsm_enb                  (fsm_enb                    ), // se llenó la memoria, la freno pero no la reseteo
            .o_full_mem                 (o_log_out_full_from_ram    ),
            .i_counter_addr             (counter_addr               ), // chequeo ultimo valor
            .i_log_in_ram_run_from_micro(i_log_in_ram_run_from_micro), // quiero cap datos, detección por flanco ()
            .clock                      (clock                      ),
            .i_reset                    (cpu_reset                  )
        
        );



endmodule