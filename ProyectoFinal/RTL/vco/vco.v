module vco #(

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

localparam NB_TRU_SAT       = NB_PHASE_IN       ;
localparam NBF_TRU_SAT      = NBF_PHASE_IN      ;
localparam NB_SUM_ACC       = NB_PHASE_IN + 1;
localparam NBF_SUM_ACC      = NBF_PHASE_IN   ;
localparam        TPI       = 19'd102944    ; //   pi * 2
localparam signed NTPI      = -19'd102944   ; // - pi * 2

reg  signed [NB_SUM_ACC        - 1 : 0] sum_i_accum; // S(19,14)
reg  signed [NB_PHASE_IN       - 1 : 0] sum_i_converted     ; // S(18,14) if phase > 360° or phase < -360° +- 360
reg  signed [NB_PHASE_IN       - 1 : 0] r_accumulator_i     ; // S(18,14)

always @(*) begin
    sum_i_accum = r_accumulator_i + i_phase;

    if ( $signed(sum_i_accum) >= $signed(TPI) ) begin
        sum_i_converted = sum_i_accum - TPI;
    end
    else if ( $signed(sum_i_accum) <= $signed(NTPI) ) begin
        sum_i_converted = sum_i_accum + TPI;
    end
    else begin
        sum_i_converted = sum_i_accum[NB_TRU_SAT - 1 : 0];
    end
     
end

always @(posedge i_clock or negedge i_rst_n) begin
    if (!i_rst_n) begin
        r_accumulator_i <= 0;

    end 
    else begin        
        r_accumulator_i <= sum_i_converted;
    end
end

assign o_phase = r_accumulator_i;

endmodule