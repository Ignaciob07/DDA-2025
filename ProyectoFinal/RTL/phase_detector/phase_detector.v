module phase_detector #(
    parameter NB_IN_PD    = 8     ,
    parameter NBF_IN_PD   = 7     ,
    parameter NB_OUT_PD   = 18    ,
    parameter NBF_OUT_PD  = 14
) (
    output  signed  [NB_OUT_PD - 1 : 0]     o_phase_error  ,
    input   signed  [NB_IN_PD  - 1 : 0]     i_in_phase     ,
    input   signed  [NB_IN_PD  - 1 : 0]     i_quadrature   ,
    input                                   i_clock        ,
    input                                   i_rst_n
);

    localparam NB_LUT_OUT  = 16                 ;
    localparam NBF_LUT_OUT = 14                 ;
    localparam H_PI_17_14  = 17'd25736          ;
    localparam PI_17_14  = 17'd51472          ;

    wire [NB_IN_PD  - 1 : 0] in_phase_a         ;
    wire [NB_IN_PD  - 1 : 0] quadrature_a       ;

    wire [NB_LUT_OUT - 1 : 0] phase_r            ;
    wire [NB_LUT_OUT - 1 : 0] phase_a            ;
    reg signed [NB_OUT_PD - 1 : 0] phase_r_converted  ;
    reg signed [NB_OUT_PD - 1 : 0] phase_a_converted  ;


lut_atan #(
    .NB_DATA_IN     (NB_IN_PD       ),
    .NB_DATA_OUT    (NB_LUT_OUT     )
) u_lut_atan_r ( // r: recived symbol
    .o_atan         (phase_r        ),
    .i_data_i       (i_in_phase     ),
    .i_data_q       (i_quadrature   ),
    .i_clock        (i_clock        ),
    .i_rst_n        (i_rst_n        )    
);

slicer #(
    .NB_DATA_IN_OUT     (NB_IN_PD       ),
    .NBF_DATA_IN_OUT    (NBF_IN_PD      )
) u_slicer (
    .o_decided_symbol_q (quadrature_a   ),
    .i_received_symbol_q(i_quadrature   ),
    .o_decided_symbol_i (in_phase_a     ),
    .i_received_symbol_i(i_in_phase     )
);


lut_atan #(
    .NB_DATA_IN     (NB_IN_PD       ),
    .NB_DATA_OUT    (NB_LUT_OUT     )
) u_lut_atan_a ( // a: decided symbol
    .o_atan         (phase_a        ),
    .i_data_i       (in_phase_a     ),
    .i_data_q       (quadrature_a   ),
    .i_clock        (i_clock        ),
    .i_rst_n        (i_rst_n        )    
);

    always @(*) begin
        if(i_in_phase[NB_IN_PD - 1] && !i_quadrature[NB_IN_PD - 1]) begin
            phase_a_converted = phase_a + H_PI_17_14;
            phase_r_converted = phase_r + H_PI_17_14;
        end
        
        else if(i_in_phase[NB_IN_PD - 1] && i_quadrature[NB_IN_PD - 1]) begin
            phase_a_converted = ~(PI_17_14 - phase_a ) + 1;
            phase_r_converted = ~(PI_17_14 - phase_r ) + 1;
        end
        
        else if(!i_in_phase[NB_IN_PD - 1] && i_quadrature[NB_IN_PD - 1]) begin
            phase_a_converted = ~phase_a + 1 ;
            phase_r_converted = ~phase_r + 1 ;
        end

        else begin
            phase_a_converted = phase_a;
            phase_r_converted = phase_r;
        end

    end

    assign o_phase_error = $signed(phase_r_converted - phase_a_converted);
    
endmodule