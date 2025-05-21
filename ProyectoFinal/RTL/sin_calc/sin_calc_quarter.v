module sin_calc_quarter #(
    parameter NB_DATA_IN    = 18,
    parameter NBF_DATA_IN   = 14,
    parameter NB_DATA_OUT   = 9,
    parameter NBF_DATA_OUT  = 7
) (
    output signed [NB_DATA_OUT - 1 : 0] o_sin      ,
    input  signed [NB_DATA_IN  - 1 : 0] i_data     ,
    input                               i_clock    ,
    input                               i_rst_n    
);

localparam NBI_DATA_IN = NB_DATA_IN - NBF_DATA_IN          ;  

localparam NB_SIN_POS_TRUNC = NBF_DATA_OUT + NBI_DATA_IN   ; // 11
localparam NB_SIN_CONVERTED = NB_DATA_OUT                  ;

localparam PI3_2_11_7 = 11'd603          ;
localparam PI_11_7     = 11'd402          ;
localparam PI_2_11_7   = 11'd201          ;

// wire signed [NB_DATA_IN  - 1 : 0] pi_3_2          ;
// wire signed [NB_DATA_IN  - 1 : 0] pi              ;
// wire signed [NB_DATA_IN  - 1 : 0] pi_2              ;

// assign signed pi_3_2 = PI3_2_11_7[11 -: NB_DATA_IN]
// assign signed pi     = PI_11_7[11 -: NB_DATA_IN]
// assign signed pi_2   = PI_2_11_7[11 -: NB_DATA_IN]


reg          [NB_DATA_IN - 1 : 0] in_pos             ; //(11,7)
reg          [NB_SIN_POS_TRUNC - 1 : 0] in_pos_trunc       ; //(11,7)
reg          [NB_SIN_CONVERTED - 1 : 0] in_converted_offset;
wire         [NB_DATA_OUT      - 1 : 0] sin_lut            ;
reg   signed [NB_SIN_CONVERTED - 1 : 0] sin_signed         ;
reg   signed [NB_SIN_CONVERTED - 1 : 0] r_sin              ;


always @(*) begin
    if (i_data[NB_DATA_IN - 1]) begin
        in_pos       = $unsigned(~i_data + 1);
        in_pos_trunc = in_pos[NB_DATA_IN - 1 -: NB_SIN_POS_TRUNC];  
    end
    else begin
        in_pos       = $unsigned(i_data);
        in_pos_trunc = in_pos[NB_DATA_IN - 1 -: NB_SIN_POS_TRUNC];          
    end

    if ($unsigned(in_pos_trunc) >= $unsigned(PI3_2_11_7)) begin
        in_converted_offset = PI_2_11_7 - (in_pos_trunc - PI3_2_11_7);
        sin_signed = ~sin_lut + 1;
    end
    else if ($unsigned(in_pos_trunc) >= $unsigned(PI_11_7)) begin
        in_converted_offset = in_pos_trunc - PI_11_7;
        sin_signed = ~sin_lut + 1;
    end
    else if ($unsigned(in_pos_trunc) >= $unsigned(PI_2_11_7)) begin
        in_converted_offset = PI_2_11_7 - (in_pos_trunc - PI_2_11_7);
        sin_signed = sin_lut;
    end 
    else begin
        in_converted_offset = in_pos_trunc;
        sin_signed = sin_lut;
    end
end

always @(*) begin
    if (i_data[NB_DATA_IN - 1]) begin
        r_sin = ~sin_signed + 1;
    end
    else begin
        r_sin = sin_signed;
    end
    
end

assign o_sin = r_sin;

lut_sin #(
    .NB_DATA_IN (NB_SIN_CONVERTED   ),
    .NB_DATA_OUT(NB_DATA_OUT        )
) u_lut_sin  (
    .o_sin      (sin_lut                                    ),
    .i_data     (in_converted_offset[0 +: NB_SIN_CONVERTED] ),
    .i_clock    (i_clock                                    ),
    .i_rst_n    (i_rst_n                                    )
);

endmodule