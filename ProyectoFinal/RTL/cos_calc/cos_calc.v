module cos_calc #(
    parameter NB_DATA_IN    = 18,
    parameter NBF_DATA_IN   = 14,
    parameter NB_DATA_OUT   = 9,
    parameter NBF_DATA_OUT  = 7
) (
    output signed [NB_DATA_OUT - 1 : 0] o_cos      ,
    input  signed [NB_DATA_IN  - 1 : 0] i_data     ,
    input                               i_clock    ,
    input                               i_rst_n    
);

localparam PI_2_18_14   = 18'd25736                  ;
localparam _2_PI_18_14   = 18'd102944                ;

reg signed [NB_DATA_IN  - 1 : 0] cos_to_sin          ;
reg signed [NB_DATA_IN  - 1 : 0] cos_converted       ;
wire signed [NB_DATA_IN  - 1 : 0] half_pi          ;
wire signed [NB_DATA_IN  - 1 : 0] double_pi          ;

assign half_pi = PI_2_18_14[17 -: NB_DATA_IN];
assign double_pi = _2_PI_18_14[17 -: NB_DATA_IN];

always @(*) begin
    
    cos_to_sin = i_data + half_pi;
    
    if ($signed(cos_to_sin) >= $signed(double_pi)) begin
        cos_converted = cos_to_sin - double_pi;
    end
    else begin 
        cos_converted = cos_to_sin;
    end
end

sin_calc #(
    .NB_DATA_IN  (NB_DATA_IN    ),
    .NBF_DATA_IN (NBF_DATA_IN   ),
    .NB_DATA_OUT (NB_DATA_OUT   ),
    .NBF_DATA_OUT(NBF_DATA_OUT  )
) u_sin_calc (
    .o_sin  (o_cos         ),
    .i_data (cos_converted ),
    .i_clock(i_clock       ),
    .i_rst_n(i_rst_n       )
);

endmodule
