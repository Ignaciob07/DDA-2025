module phase_detector #(
    parameter NB_IN_PD   = 8     ,
    parameter NB_OUT_PD  = 16
) (
    output  signed  [NB_OUT_PD - 1 : 0]     o_phase_error  ,
    input   signed  [NB_IN_PD  - 1 : 0]     i_in_phase     ,
    input   signed  [NB_IN_PD  - 1 : 0]     i_quadrature   ,
    input                                   i_clock        ,
    input                                   i_rst_n
);

lut_atan #(
    .NB_DATA_IN     (NB_IN_PD       ),
    .NB_DATA_OUT    (NB_OUT_PD      )
) u_lut_atan_r ( // r: recived symbol
    .o_atan         (o_atan         ),
    .i_data_i       (i_data_i       ),
    .i_data_q       (i_data_q       ),
    .i_clock        (i_clock        ),
    .i_rst_n        (i_rst_n        )    
);

lut_atan #(
    .NB_DATA_IN     (NB_IN_PD       ),
    .NB_DATA_OUT    (NB_OUT_PD      )
) u_lut_atan_a ( // a: decided symbol
    .o_atan         (o_atan         ),
    .i_data_i       (i_data_i       ),
    .i_data_q       (i_data_q       ),
    .i_clock        (i_clock        ),
    .i_rst_n        (i_rst_n        )    
);

    assign o_phase_error
    
endmodule