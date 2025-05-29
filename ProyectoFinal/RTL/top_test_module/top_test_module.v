module top_test_module (
    input clock
);

localparam NB_COUNTER = 14;
localparam NB_DATA    = 8 ;
wire i_rst_n;

wire [NB_COUNTER-1:0] w_counter;
wire [NB_DATA   -1:0] w_data_i;
wire [NB_DATA   -1:0] w_data_q;
wire [NB_DATA   -1:0] w_data_out_i;
wire [NB_DATA   -1:0] w_data_out_q;
wire [11        -1:0] w_data_phase_error;

carrier_recovery #(
.NB_IN_CARRIER_RECOVERY   (8),
.NBF_IN_CARRIER_RECOVERY  (7),
.NB_OUT_CARRIER_RECOVERY  (8),
.NBF_OUT_CARRIER_RECOVERY (7)
) u_carrier_recovery (
.o_corrected_i (w_data_out_i),
.o_corrected_q (w_data_out_q),
.o_phase_error (w_data_phase_error),
.i_data_i      (w_data_i    ),
.i_data_q      (w_data_q    ),
.i_clock       (clock       ),
.i_rst_n       (i_rst_n     )
);

counter  #(
    .NB_COUNTER(NB_COUNTER)     
) u_counter (
    .o_counter(w_counter),
    .i_clock(clock      ),
    .i_rst_n(i_rst_n    )
);

ila_1 u_ila (
.clk   (clock   ),
.probe4(i_rst_n ),
.probe0(w_data_i),
.probe1(w_data_q),
.probe2(w_data_out_i),
.probe3(w_data_out_q),
.probe5(w_data_phase_error)
);

vio_0 u_vio (
    .clk          (clock  ),
    .probe_out0   (i_rst_n)
);

ram_i (
    .clka   (clock      ),
    .ena    (i_rst_n    ),
    .addra  (w_counter  ),
    .douta  (w_data_i   )
  );

  rom_q (
    .clka   (clock      ),
    .ena    (i_rst_n    ),
    .addra  (w_counter  ),
    .douta  (w_data_q   )
  );
    
endmodule