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

    localparam NB_K             = 8                 ; // S(8,14)
    
    localparam NB_FULL_RES_MUL  = NB_PHASE_IN + NB_K ; // S(26,22)   --> S(18,14)
    localparam NBF_FULL_RES_MUL = NBF_PHASE_IN + NB_K; // S(26,22)  --> S(18,14)

    localparam NB_TRU_SAT       = NB_PHASE_IN       ;
    localparam NBF_TRU_SAT      = NBF_PHASE_IN      ;
    
    localparam NB_SUM_ACC       = NB_TRU_SAT + 1;
    localparam NBF_SUM_ACC      = NBF_TRU_SAT   ;

    localparam NB_SUM_P_I       = NB_TRU_SAT + 1;
    localparam NBF_SUM_P_I      = NBF_TRU_SAT   ;

    localparam        TPI       = 19'd102944    ; //   pi * 2
    localparam signed NTPI      = -19'd102944   ; // - pi * 2

    // PROP AND INTEG CONSTANTS
    localparam ki               = 14'd8192          ; // 14 fractional bits
    localparam kp               = 14'd819          ; // do not use values less than F0

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
        
        mul_proportional = $signed(i_phase * kp);
        mul_integrative  = $signed(i_phase * ki);
        
        // sum integrative acummultor
        sum_i_accum = r_accumulator_i + mul_integrative_ts;

        if ( $signed(sum_i_accum) >= $signed(TPI) ) begin
            sum_i_converted = sum_i_accum - TPI;
        end
        else if ( $signed(sum_i_accum) <= $signed(NTPI) ) begin
            sum_i_converted = sum_i_accum + TPI;
        end
        else begin
            sum_i_converted = sum_i_accum[NB_TRU_SAT - 1 : 0];
        end
         
        sum_pi = r_accumulator_i + mul_proportional_ts;
        
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

endmodule