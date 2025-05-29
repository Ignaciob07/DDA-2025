module carrier_recovery #(
    parameter NB_IN_CARRIER_RECOVERY   = 8,
    parameter NBF_IN_CARRIER_RECOVERY  = 7,

    parameter NB_OUT_CARRIER_RECOVERY  = 8,
    parameter NBF_OUT_CARRIER_RECOVERY = 7
    
)(
    output signed [NB_OUT_CARRIER_RECOVERY - 1 : 0] o_corrected_i       ,
    output signed [NB_OUT_CARRIER_RECOVERY - 1 : 0] o_corrected_q       ,
    input  signed [NB_IN_CARRIER_RECOVERY  - 1 : 0] i_data_i            ,
    input  signed [NB_IN_CARRIER_RECOVERY  - 1 : 0] i_data_q            ,
    output reg signed [11                      - 1 : 0] o_phase_error       ,
    input                                           i_clock             ,
    input                                           i_rst_n         
);

    localparam NB_IN_ESTIMATED_PHASE    = 9;
    localparam NBF_IN_ESTIMATED_PHASE   = 7;

    localparam NB_FULL_RES_MUL  = NB_IN_CARRIER_RECOVERY  + NB_IN_ESTIMATED_PHASE ;
    localparam NBF_FULL_RES_MUL = NBF_IN_CARRIER_RECOVERY + NBF_IN_ESTIMATED_PHASE;

    localparam NB_MUL_OUT       = NB_IN_CARRIER_RECOVERY ;
    localparam NBF_MUL_OUT      = NBF_IN_CARRIER_RECOVERY;

    // Phase detector
    localparam NB_PD_IN         = NB_MUL_OUT ;
    localparam NBF_PD_IN        = NB_MUL_OUT ;

    localparam NB_PD_OUT        = 11;//18 ;
    localparam NBF_PD_OUT       = 7;//14 ;

    // Loop filter
    localparam NB_LF_IN         = NB_PD_OUT  ;
    localparam NBF_LF_IN        = NBF_PD_OUT ;

    localparam NB_LF_OUT        = NB_PD_OUT  ;
    localparam NBF_LF_OUT       = NBF_PD_OUT ;

    // vco
    localparam NB_VCO_IN         = NB_PD_OUT  ;
    localparam NBF_VCO_IN        = NBF_PD_OUT ;

    localparam NB_VCO_OUT        = NB_PD_OUT  ;
    localparam NBF_VCO_OUT       = NBF_PD_OUT ;

    // cos/sin calc
    localparam NB_COS_IN         = NB_PD_OUT  ;
    localparam NBF_COS_IN        = NBF_PD_OUT ;

    localparam NB_COS_OUT        = NB_IN_ESTIMATED_PHASE  ;
    localparam NBF_COS_OUT       = NBF_IN_ESTIMATED_PHASE ;

    wire [NB_MUL_OUT      - 1 : 0]   mul_out_i_rnd     ;
    wire [NB_MUL_OUT      - 1 : 0]   mul_out_q_rnd     ;

    wire [NB_PD_OUT       - 1 : 0]   phase_detector_out;

    wire [NB_LF_OUT       - 1 : 0]   loop_filter_out;

    wire [NB_VCO_OUT      - 1 : 0]   vco_out;

    wire signed [NB_IN_ESTIMATED_PHASE   - 1 : 0] data_cos ;
    wire signed [NB_IN_ESTIMATED_PHASE   - 1 : 0] data_sin ;

    assign o_corrected_i = mul_out_i_rnd;
    assign o_corrected_q = mul_out_q_rnd;

complex_multiplication #(
    .NB_IN_CARRIER_RECOVERY(NB_IN_CARRIER_RECOVERY),
    .NBF_IN_CARRIER_RECOVERY(NBF_IN_CARRIER_RECOVERY),
    .NB_OUT_CARRIER_RECOVERY(NB_OUT_CARRIER_RECOVERY),
    .NBF_OUT_CARRIER_RECOVERY(NBF_OUT_CARRIER_RECOVERY),
    .NB_IN_ESTIMATED_PHASE(NB_IN_ESTIMATED_PHASE),
    .NBF_IN_ESTIMATED_PHASE(NBF_IN_ESTIMATED_PHASE)
) u_complex_mul(
    .o_data_i   (mul_out_i_rnd),
    .o_data_q   (mul_out_q_rnd),
    .i_data_i   (i_data_i),
    .i_data_q   (i_data_q),
    .i_data_cos (data_cos),
    .i_data_sin (data_sin)
);

phase_detector #(
    .NB_IN_PD   (NB_PD_IN   ),
    .NBF_IN_PD  (NBF_PD_IN  ),
    .NB_OUT_PD  (NB_PD_OUT  ),
    .NBF_OUT_PD (NBF_PD_OUT )
) u_phase_detector (
    .o_phase_error(phase_detector_out),
    .i_in_phase   (mul_out_i_rnd     ),
    .i_quadrature (mul_out_q_rnd     ),
    .i_clock      (i_clock           ),
    .i_rst_n      (i_rst_n           )
);
always @(posedge i_clock ) begin
    if (!i_rst_n) begin
        o_phase_error <= 0;
    end
    else
        o_phase_error <= phase_detector_out;
end

loop_filter #(
    .NB_PHASE_IN    (NB_LF_IN   ),
    .NBF_PHASE_IN   (NBF_LF_IN  ),
    .NB_PHASE_OUT   (NB_LF_OUT  ),
    .NBF_PHASE_OUT  (NBF_LF_OUT )
) u_loop_filter (
    .o_phase  (loop_filter_out      ),
    .i_phase  (phase_detector_out   ),
    .i_clock  (i_clock              ),
    .i_rst_n  (i_rst_n              )    
);

vco #(
    .NB_PHASE_IN    (NB_VCO_IN),
    .NBF_PHASE_IN   (NBF_VCO_IN),
    .NB_PHASE_OUT   (NB_VCO_OUT),
    .NBF_PHASE_OUT  (NBF_VCO_OUT)
)u_vco (
    .o_phase(vco_out        ),
    .i_phase(loop_filter_out),
    .i_clock(i_clock        ),
    .i_rst_n(i_rst_n        )    
);

cos_calc #(
    .NB_DATA_IN  (NB_COS_IN     ),
    .NBF_DATA_IN (NBF_COS_IN    ),
    .NB_DATA_OUT (NB_COS_OUT    ),
    .NBF_DATA_OUT(NBF_COS_OUT   )
) u_cos_calc (
    .o_cos   (data_cos ),
    .i_data  (vco_out           ),
    .i_clock (i_clock           ),
    .i_rst_n (i_rst_n           )
);

sin_calc #(
    .NB_DATA_IN   (NB_COS_IN    ),
    .NBF_DATA_IN  (NBF_COS_IN   ),
    .NB_DATA_OUT  (NB_COS_OUT   ),
    .NBF_DATA_OUT (NBF_COS_OUT  )
) u_sin_calc (
    .o_sin   (data_sin ),
    .i_data  (vco_out           ),
    .i_clock (i_clock           ),
    .i_rst_n (i_rst_n           )
);

endmodule