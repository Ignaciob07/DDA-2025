module phase_detector #(
    parameter NB_IN_PD    = 8     ,
    parameter NBF_IN_PD   = 7     ,
    parameter NB_OUT_PD   = 17    ,
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
    localparam H_PI_16_14  = 17'd25736          ;

    wire [NB_IN_PD  - 1 : 0] in_phase_a         ;
    wire [NB_IN_PD  - 1 : 0] quadrature_a       ;

    wire [NB_LUT_OUT - 1 : 0] phase_r            ;
    wire [NB_LUT_OUT - 1 : 0] phase_a            ;
    reg [NB_OUT_PD - 1 : 0] phase_r_converted  ;
    reg [NB_OUT_PD - 1 : 0] phase_a_converted  ;


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
    .NB_DATA_IN_OUT  (NB_IN_PD          ),
    .NBF_DATA_IN_OUT (NBF_IN_PD         )
) u_slicer_i (
    .o_decided_symbol (in_phase_a       ),
    .i_received_symbol(i_in_phase       )
);

slicer #(
    .NB_DATA_IN_OUT  (NB_IN_PD          ),
    .NBF_DATA_IN_OUT (NBF_IN_PD         )
) u_slicer_q (
    .o_decided_symbol (quadrature_a     ),
    .i_received_symbol(i_quadrature     )
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
            phase_a_converted = phase_a + H_PI_16_14;
            phase_r_converted = phase_r + H_PI_16_14;
        end
        
        else if(i_in_phase[NB_IN_PD - 1] && i_quadrature[NB_IN_PD - 1]) begin
            phase_a_converted = phase_a + (H_PI_16_14 << 1);
            phase_r_converted = phase_r + (H_PI_16_14 << 1);
        end
        
        else if(!i_in_phase[NB_IN_PD - 1] && i_quadrature[NB_IN_PD - 1]) begin
            phase_a_converted = phase_a + (H_PI_16_14 << 1) + H_PI_16_14;
            phase_r_converted = phase_r + (H_PI_16_14 << 1) + H_PI_16_14;
        end

        else begin
            phase_a_converted = phase_a;
            phase_r_converted = phase_r;
        end

    end

    assign o_phase_error = $signed(phase_a_converted - phase_r_converted);
    
endmodule