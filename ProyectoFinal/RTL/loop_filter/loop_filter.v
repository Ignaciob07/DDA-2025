`define ROUNDING

module loop_filter #(

    parameter NB_PHASE_IN       = 18,
    parameter NBF_PHASE_IN      = 14,

    parameter NB_PHASE_OUT      = 18, // 0 - 2pi
    parameter NBF_PHASE_OUT     = 14

) (

    output  signed [NB_PHASE_OUT     - 1 : 0]  o_phase,
    input   signed [NB_PHASE_IN      - 1 : 0]  i_phase,
    input                                      i_clock,
    input                                      i_rst_n    
);

    // RESOLUTIONS
    //  Output of multipliers trunc_sat to 18

    localparam NB_K             = NBF_PHASE_IN                 ; // S(14,14)
    
    localparam NB_FULL_RES_MUL  = NB_PHASE_IN + NB_K ; // S(31,22)   --> S(18,14)
    localparam NBF_FULL_RES_MUL = NBF_PHASE_IN + NB_K; // S(31,22)  --> S(18,14)

    localparam NB_TRU_SAT       = NB_PHASE_IN       ;
    localparam NBF_TRU_SAT      = NBF_PHASE_IN      ;
    
    localparam NB_SUM_ACC       = NB_TRU_SAT + 1;
    localparam NBF_SUM_ACC      = NBF_TRU_SAT   ;

    localparam NB_SUM_P_I       = NB_TRU_SAT + 1;
    localparam NBF_SUM_P_I      = NBF_TRU_SAT   ;

    localparam signed TPI       = 18'd102944     ; //   pi * 2
    wire signed [NB_PHASE_IN  - 1 : 0] double_pi ;
    assign double_pi = TPI[17 -: NB_PHASE_IN]    ;

    // PROP AND INTEG CONSTANTS
    localparam ki               = 14'd819          ; // 14 fractional bits
    localparam kp               = 14'd8192         ; //

    wire signed [NB_K : 0] w_ki;
    wire signed [NB_K : 0] w_kp;

    assign w_ki = {1'b0, ki[13 -: NB_K]};
    assign w_kp = 8'd64;

    reg  signed [NB_FULL_RES_MUL   - 1 : 0] mul_proportional    ;
    reg  signed [NB_FULL_RES_MUL   - 1 : 0] mul_integrative     ;
    wire signed [NB_PHASE_OUT      - 1 : 0] mul_proportional_ts ;
    wire signed [NB_TRU_SAT        - 1 : 0] mul_integrative_ts  ;
    
    reg  signed [NB_SUM_ACC        - 1 : 0] sum_i_accum         ; // S(19,14)
    reg  signed [NB_TRU_SAT        - 1 : 0] sum_i_converted     ; // S(18,14) if phase > 360° or phase < -360° +- 360
    reg  signed [NB_TRU_SAT        - 1 : 0] r_accumulator_i     ; // S(18,14)

    reg  signed [NB_SUM_P_I        - 1 : 0] sum_pi              ;

    // multiplication
    always @(*) begin
        
        mul_proportional = $signed(i_phase) * w_kp;
        mul_integrative  = $signed(i_phase) * w_ki;
        
        // sum integrative acummultor
        sum_i_accum = r_accumulator_i + mul_integrative_ts;

        if ( sum_i_accum >=double_pi ) begin
            sum_i_converted = sum_i_accum - double_pi;
        end
        else if ( $signed(~sum_i_accum + 1) >= double_pi ) begin
            sum_i_converted = sum_i_accum + double_pi;
        end
        else begin
            sum_i_converted = sum_i_accum[NB_TRU_SAT - 1 : 0];
        end
            
        sum_pi = sum_i_converted + mul_proportional_ts;
        
    end

    assign o_phase = sum_pi; 

    always @(posedge i_clock or negedge i_rst_n) begin
        if (!i_rst_n) begin
            r_accumulator_i <= 0;
        end 
        else begin        
            r_accumulator_i <= sum_i_converted;
        end
    end

`ifdef ROUNDING
    rounding #(
        .NB_IN  (NB_FULL_RES_MUL),
        .NBF_IN (NBF_FULL_RES_MUL),
        .NB_RND (NB_TRU_SAT),
        .NBF_RND(NBF_TRU_SAT)
    ) u_round_p (
        .o_round(mul_proportional_ts),
        .i_data (mul_proportional)
    );

    rounding #(
        .NB_IN  (NB_FULL_RES_MUL),
        .NBF_IN (NBF_FULL_RES_MUL),
        .NB_RND (NB_TRU_SAT),
        .NBF_RND(NBF_TRU_SAT)
    ) u_round_i (
        .o_round(mul_integrative_ts),
        .i_data (mul_integrative)
    );
`else
    trunc_sat #(
        .NB_IN      (NB_FULL_RES_MUL    ),
        .NBF_IN     (NBF_FULL_RES_MUL   ),
        .NB_TRU_SAT (NB_TRU_SAT         ),
        .NBF_TRU_SAT(NBF_TRU_SAT        )
    ) u_trunc_sat_mul_proportional (
        .o_trunc_sat(mul_proportional_ts),
        .i_data     (mul_proportional   )
    );

    trunc_sat #(
        .NB_IN      (NB_FULL_RES_MUL    ),
        .NBF_IN     (NBF_FULL_RES_MUL   ),
        .NB_TRU_SAT (NB_TRU_SAT         ),
        .NBF_TRU_SAT(NBF_TRU_SAT        )
    ) u_trunc_sat_mul_integrative (
        .o_trunc_sat(mul_integrative_ts ),
        .i_data     (mul_integrative    )
    );
`endif 

endmodule