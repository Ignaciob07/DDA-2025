module top_test_module (
    input clock
);

localparam NB_COUNTER = 38;

wire i_rst_n;
wire [NB_COUNTER-1:0] w_counter;

counter  #(
    .NB_COUNTER(NB_COUNTER)     
) u_counter (
    .o_counter(w_counter),
    .i_clock(clock)  ,
    .i_rst_n(i_rst_n)
);

ila_0 u_ila (
.clk(clock),
.trig_in(i_rst_n),
.probe0(w_counter[8-1:0]),
.probe1(w_counter[8-1:0]),
.probe2(0),
.probe3(0)
);

vio u_vio (
    .clk_0          (clock  ),
    .probe_out0_0   (i_rst_n)
);
    
endmodule