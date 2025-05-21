// `define FULL_LUT
// `define HALF_LUT
`define HALF_LUT_RAM

// `define SYNTH

`define COMB_OUT

module phase_detector #(
    parameter NB_IN_PD    = 8     ,
    parameter NBF_IN_PD   = 7     ,
    parameter NB_OUT_PD   = 11    ,
    parameter NBF_OUT_PD  = 7
) (
`ifdef COMB_OUT
output signed  [NB_OUT_PD - 1 : 0]     o_phase_error  ,
`else
output reg signed  [NB_OUT_PD - 1 : 0]     o_phase_error  ,
`endif
    input      signed  [NB_IN_PD  - 1 : 0]     i_in_phase     ,
    input      signed  [NB_IN_PD  - 1 : 0]     i_quadrature   ,
    input                                      i_clock        ,
    input                                      i_rst_n
);

    // Define Pi in U10.7
    localparam HALF_PI_10_7 = 10'd201;
    localparam PI_10_7  = 10'd402                   ;

    // depends on the resolution of the lut
    localparam NB_OUT_PD_HALF  = NB_OUT_PD - 3      ;

    // Decided simbols
    wire [NB_IN_PD  - 1 : 0] in_phase_a         ;
    wire [NB_IN_PD  - 1 : 0] quadrature_a       ;

    `ifdef FULL_LUT
        wire signed [NB_OUT_PD      - 1 : 0] phase_r            ; // phase for full lut
        wire signed [NB_OUT_PD      - 1 : 0] phase_a            ; // phase for full lut
    `else 
        wire        [NB_OUT_PD_HALF - 1 : 0] phase_r_h          ; // phase for half lut (0 to pi/2)
        wire        [NB_OUT_PD_HALF - 1 : 0] phase_a_h          ; // phase for half lut (0 to pi/2)
        reg signed [NB_OUT_PD       - 1 : 0] phase_r_converted  ; // converted phase from -pi to pi
        reg signed [NB_OUT_PD       - 1 : 0] phase_a_converted  ; // converted phase from -pi to pi

        wire        [NB_OUT_PD_HALF - 1 : 0] phase_r_h_debug          ; // phase for half lut (0 to pi/2)
        wire        [NB_OUT_PD_HALF - 1 : 0] phase_a_h_debug          ; // phase for half lut (0 to pi/2)
    `endif

    reg signed [NB_OUT_PD       - 1 : 0] r_phase_error          ; // output phase error

    reg  [14    - 1 : 0] index_r                                ; // index to access lut
    reg  [8  - 1 : 0]    data_i_r                               ;
    reg  [8  - 1 : 0]    data_q_r                               ;
    reg  [14    - 1 : 0] index_a                                ; // index to access lut
    reg  [8  - 1 : 0]    data_i_a                               ;
    reg  [8  - 1 : 0]    data_q_a                               ;     

    reg s_in_phase_r    ;
    reg s_quadrature_r  ;
    reg s_in_phase_a    ;
    reg s_quadrature_a  ;

`ifdef COMB_OUT
    assign o_phase_error = r_phase_error;        
`else
    always @(posedge i_clock or negedge i_rst_n) begin
        if (!i_rst_n) begin
            o_phase_error <= 0;
        end
        else begin
            o_phase_error <= r_phase_error;        
        end
    end
`endif

    // compute of output phase error
    always @(*)begin
        `ifdef FULL_LUT
            r_phase_error = phase_r - phase_a;
        `else
            r_phase_error = phase_r_converted - phase_a_converted;
        `endif
    end

    
`ifndef FULL_LUT

    // Compute index of recived symbol lut
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

    // Compute index of decided symbol lut
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

    // Converted phase
    always @(posedge i_clock or negedge i_rst_n ) begin
        if (!i_rst_n) begin
            s_in_phase_r     <= 0;
            s_quadrature_r   <= 0;
            s_in_phase_a     <= 0;
            s_quadrature_a   <= 0;
        end 
        else begin
            s_in_phase_r     <= i_in_phase[NB_IN_PD - 1];
            s_quadrature_r   <= i_quadrature[NB_IN_PD - 1];
            s_in_phase_a     <= in_phase_a[NB_IN_PD - 1];
            s_quadrature_a   <= quadrature_a[NB_IN_PD - 1];
        end
    end


    always @(*) begin
        if(s_in_phase_r && !s_quadrature_r) begin
            phase_r_converted = PI_10_7 - $signed({1'b0,phase_r_h});
        end
        
        else if(s_in_phase_r && s_quadrature_r) begin
            phase_r_converted = $signed(~(PI_10_7 - $signed({1'b0,phase_r_h}) ) + 1);
        end
        
        else if(!s_in_phase_r && s_quadrature_r) begin
            phase_r_converted = $signed(~phase_r_h + 1) ;
        end

        else begin
            phase_r_converted = phase_r_h;
        end

    end

    always @(*) begin
        if(s_in_phase_a && !s_quadrature_a) begin
            phase_a_converted = PI_10_7 - $signed({1'b0,phase_a_h});
        end
        
        else if(s_in_phase_a && s_quadrature_a) begin
            phase_a_converted = $signed(~(PI_10_7 - $signed({1'b0,phase_a_h}) ) + 1);
        end
        
        else if(!s_in_phase_a && s_quadrature_a) begin
            phase_a_converted = $signed(~phase_a_h + 1) ;
        end

        else begin
            phase_a_converted = phase_a_h;
        end
    end

`endif 

    slicer #(
        .NB_DATA_IN_OUT     (NB_IN_PD       ),
        .NBF_DATA_IN_OUT    (NBF_IN_PD      )
    ) u_slicer (
        .o_decided_symbol_q (quadrature_a   ),
        .i_received_symbol_q(i_quadrature   ),
        .o_decided_symbol_i (in_phase_a     ),
        .i_received_symbol_i(i_in_phase     )
    );

`ifdef FULL_LUT
    lut_atan_full #(
        .NB_DATA_IN     (NB_IN_PD       ),
        .NB_DATA_OUT    (NB_OUT_PD     )
    ) u_lut_atan_r ( // r: recived symbol
        .o_atan         (phase_r        ),
        .i_data_i       (i_in_phase     ),
        .i_data_q       (i_quadrature   ),
        .i_clock        (i_clock        ),
        .i_rst_n        (i_rst_n        )    
    );

    lut_atan_full #(
        .NB_DATA_IN     (NB_IN_PD       ),
        .NB_DATA_OUT    (NB_OUT_PD     )
    ) u_lut_atan_a ( // a: decided symbol
        .o_atan         (phase_a        ),
        .i_data_i       (in_phase_a     ),
        .i_data_q       (quadrature_a   ),
        .i_clock        (i_clock        ),
        .i_rst_n        (i_rst_n        )    
    );

`elsif HALF_LUT
    lut_atan_only #(
        .NB_DATA_INDEX  (14),
        .NB_DATA_OUT    (8)    
    ) u_lut_a (
        .o_atan     (phase_a_h),
        .i_index    (index_a),
        .i_clock    (i_clock),
        .i_rst_n    (i_rst_n)
    );

    lut_atan_only #(
        .NB_DATA_INDEX  (14),
        .NB_DATA_OUT    (8)    
    ) u_lut_r (
        .o_atan     (phase_r_h),
        .i_index    (index_r),
        .i_clock    (i_clock),
        .i_rst_n    (i_rst_n)
    );

`elsif HALF_LUT_RAM

    `ifdef SYNTH
        blk_mem_gen_0 your_rom (
            .clka    (i_clock),
            .addra   (index_r),
            .douta   (phase_r_h)
        );

        lut_atan_ram #(
            .NB_DATA_INDEX  (14),
            .NB_DATA_OUT    (8)    
        ) u_lut_a_ram (
            .o_atan     (phase_a_h),
            .i_index    (index_a),
            .i_clock    (i_clock),
            .i_rst_n    (i_rst_n)
        );

    `else
        ram_atan u_ram_r(
        .clka(i_clock), 
        .ena(i_rst_n), 
        .addra(index_r),
        .douta(phase_r_h)
        );

        ram_atan u_ram_a(
        .clka(i_clock), 
        .ena(i_rst_n), 
        .addra(index_a),
        .douta(phase_a_h)
        );
            
        // lut_atan_ram #(
        //     .NB_DATA_INDEX  (14),
        //     .NB_DATA_OUT    (8)    
        // ) u_lut_a_ram (
        //     .o_atan     (phase_a_h),
        //     .i_index    (index_a),
        //     .i_clock    (i_clock),
        //     .i_rst_n    (i_rst_n)
        // );

        // lut_atan_ram #(
        //     .NB_DATA_INDEX  (14),
        //     .NB_DATA_OUT    (8)    
        // ) u_lut_r_ram (
        //     .o_atan     (phase_r_h),
        //     .i_index    (index_r),
        //     .i_clock    (i_clock),
        //     .i_rst_n    (i_rst_n)
        // );
    `endif
    

`endif 




endmodule 