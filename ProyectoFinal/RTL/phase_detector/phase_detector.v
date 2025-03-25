module phase_detector #(
    parameter NB_IN     = 8     ,
    parameter NB_OUT    = 16
) (
    output  signed  [NB_OUT - 1 : 0]     o_phase_error  ,
    input   signed  [NB_IN  - 1 : 0]     i_in_phase     ,
    input   signed  [NB_IN  - 1 : 0]     i_quadrature   
);


    
endmodule