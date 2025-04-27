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

localparam signed TPI       = 18'd102944     ; //   pi * 2
wire signed [NB_PHASE_IN  - 1 : 0] double_pi          ;
assign double_pi = TPI[17 -: NB_PHASE_IN];

reg  signed [NB_SUM_ACC        - 1 : 0] sum_i_accum; // S(19,14)
reg  signed [NB_PHASE_IN       - 1 : 0] sum_i_converted     ; // S(18,14) if phase > 360° or phase < -360° +- 360
reg  signed [NB_PHASE_IN       - 1 : 0] r_accumulator_i     ; // S(18,14)
reg  signed [NB_PHASE_IN       - 1 : 0] r_vco               ; // S(18,14)

always @(*) begin
    sum_i_accum = r_accumulator_i + i_phase;

    if ( sum_i_accum >=double_pi ) begin
        sum_i_converted = sum_i_accum - double_pi;
    end
    else if ( $signed(~sum_i_accum + 1) >= double_pi ) begin
        sum_i_converted = sum_i_accum + double_pi;
    end
    else begin
        sum_i_converted = sum_i_accum[NB_TRU_SAT - 1 : 0];
    end
     
end

always @(posedge i_clock or negedge i_rst_n) begin
    if (!i_rst_n) begin
        r_accumulator_i <= 0;
        r_vco <= 0;
    end 
    else begin        
        r_accumulator_i <= sum_i_converted;
        r_vco <= sum_i_converted;

    end
end

assign o_phase = r_vco;

endmodule