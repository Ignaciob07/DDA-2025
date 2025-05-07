//`define FULL_LUT

module phase_detector #(
    parameter NB_IN_PD    = 8     ,
    parameter NBF_IN_PD   = 7     ,
    parameter NB_OUT_PD   = 11    ,
    parameter NBF_OUT_PD  = 7
) (
    output  signed  [NB_OUT_PD - 1 : 0]     o_phase_error  ,
    input   signed  [NB_IN_PD  - 1 : 0]     i_in_phase     ,
    input   signed  [NB_IN_PD  - 1 : 0]     i_quadrature   ,
    input                                   i_clock        ,
    input                                   i_rst_n
);

    localparam HALF_PI_10_7 = 10'd201;
    localparam PI_10_7  = 10'd402                   ;
    localparam NB_OUT_PD_HALF  = NB_OUT_PD - 2      ;

    wire [NB_IN_PD  - 1 : 0] in_phase_a         ;
    wire [NB_IN_PD  - 1 : 0] quadrature_a       ;

    wire signed [NB_OUT_PD - 1 : 0] phase_r            ;
    wire signed [NB_OUT_PD - 1 : 0] phase_a            ;
    wire        [NB_OUT_PD_HALF - 1 : 0] phase_r_h          ;
    wire        [NB_OUT_PD_HALF - 1 : 0] phase_a_h          ;
    reg signed [NB_OUT_PD - 1 : 0] phase_r_converted  ;
    reg signed [NB_OUT_PD - 1 : 0] phase_a_converted  ;
    reg signed [NB_OUT_PD - 1 : 0] r_phase_error  ;



// lut_atan_full #(
//     .NB_DATA_IN     (NB_IN_PD       ),
//     .NB_DATA_OUT    (NB_OUT_PD     )
// ) u_lut_atan_r ( // r: recived symbol
//     .o_atan         (phase_r        ),
//     .i_data_i       (i_in_phase     ),
//     .i_data_q       (i_quadrature   ),
//     .i_clock        (i_clock        ),
//     .i_rst_n        (i_rst_n        )    
// );

slicer #(
    .NB_DATA_IN_OUT     (NB_IN_PD       ),
    .NBF_DATA_IN_OUT    (NBF_IN_PD      )
) u_slicer (
    .o_decided_symbol_q (quadrature_a   ),
    .i_received_symbol_q(i_quadrature   ),
    .o_decided_symbol_i (in_phase_a     ),
    .i_received_symbol_i(i_in_phase     )
);


// lut_atan_full #(
//     .NB_DATA_IN     (NB_IN_PD       ),
//     .NB_DATA_OUT    (NB_OUT_PD     )
// ) u_lut_atan_a ( // a: decided symbol
//     .o_atan         (phase_a        ),
//     .i_data_i       (in_phase_a     ),
//     .i_data_q       (quadrature_a   ),
//     .i_clock        (i_clock        ),
//     .i_rst_n        (i_rst_n        )    
// );

    assign o_phase_error = r_phase_error;//phase_r - phase_a;

// ###### HALF #####

always @(*)begin
    r_phase_error = phase_r_converted - phase_a_converted;

end

// ############ HALF LUT

    reg  [14    - 1 : 0] index_r                 ;
    reg  [8  - 1 : 0]    data_i_r                ;
    reg  [8  - 1 : 0]    data_q_r                ;

    always @(*) begin
        if(i_in_phase[NB_IN_PD  - 1])                   
            data_i_r = ~i_in_phase + 1;                     
        else                                            
            data_i_r = i_in_phase;                           

        if(i_quadrature[NB_IN_PD  - 1])                   
            data_q_r = ~i_quadrature + 1;                     
        else                                            
            data_q_r = i_quadrature;                          

        if(data_q_r == 8'b10000000)                       
           index_r [6-:7] = 7'b1111111;
        else                       
           index_r [6-:7] = data_q_r;

        if(data_i_r == 8'b10000000)                       
           index_r [13-:7] = 7'b1111111;
        else                       
           index_r [13-:7] = data_i_r;
                                                           
    end

    lut_atan_only #(
        .NB_DATA_INDEX  (14),
        .NB_DATA_OUT    (9)    
    ) u_lut_r (
        .o_atan     (phase_r_h),
        .i_index    (index_r),
        .i_clock    (i_clock),
        .i_rst_n    (i_rst_n)
    );

    always @(*) begin
        if(i_in_phase[NB_IN_PD - 1] && !i_quadrature[NB_IN_PD - 1]) begin
            phase_r_converted = PI_10_7 - $signed({1'b0,phase_r_h});
        end
        
        else if(i_in_phase[NB_IN_PD - 1] && i_quadrature[NB_IN_PD - 1]) begin
            phase_r_converted = $signed(~(PI_10_7 - $signed({1'b0,phase_r_h}) ) + 1);
        end
        
        else if(!i_in_phase[NB_IN_PD - 1] && i_quadrature[NB_IN_PD - 1]) begin
            phase_r_converted = $signed(~phase_r_h + 1) ;
        end

        else begin
            phase_r_converted = phase_r_h;
        end
        // r_phase_error = $signed(phase_r_converted) - $signed(phase_a_converted);

    end

    reg  [14    - 1 : 0] index_a                 ;
    reg  [8  - 1 : 0]    data_i_a                ;
    reg  [8  - 1 : 0]    data_q_a                ;

    always @(*) begin
        if(in_phase_a[NB_IN_PD  - 1])                   
            data_i_a = ~in_phase_a + 1;                     
        else                                            
            data_i_a = in_phase_a;                           

        if(quadrature_a[NB_IN_PD  - 1])                   
            data_q_a = ~quadrature_a + 1;                     
        else                                            
            data_q_a = quadrature_a;                          

        if(data_q_a == 8'b10000000)                       
           index_a [6-:7] = 7'b1111111;
        else                       
           index_a [6-:7] = data_q_a;

        if(data_i_a == 8'b10000000)                       
           index_a [13-:7] = 7'b1111111;
        else                       
           index_a [13-:7] = data_i_a;
                                                           
    end

    lut_atan_only #(
        .NB_DATA_INDEX  (14),
        .NB_DATA_OUT    (9)    
    ) u_lut_a (
        .o_atan     (phase_a_h),
        .i_index    (index_a),
        .i_clock    (i_clock),
        .i_rst_n    (i_rst_n)
    );

    always @(*) begin
        if(in_phase_a[NB_IN_PD - 1] && !quadrature_a[NB_IN_PD - 1]) begin
            phase_a_converted = PI_10_7 - $signed({1'b0,phase_a_h});
        end
        
        else if(in_phase_a[NB_IN_PD - 1] && quadrature_a[NB_IN_PD - 1]) begin
            phase_a_converted = $signed(~(PI_10_7 - $signed({1'b0,phase_a_h}) ) + 1);
        end
        
        else if(!in_phase_a[NB_IN_PD - 1] && quadrature_a[NB_IN_PD - 1]) begin
            phase_a_converted = $signed(~phase_a_h + 1) ;
        end

        else begin
            phase_a_converted = phase_a_h;
        end

    end


endmodule 