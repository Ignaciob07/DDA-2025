module sin_calc #(
    parameter NB_DATA_IN    = 11,
    parameter NBF_DATA_IN   = 7,
    parameter NB_DATA_OUT   = 9,
    parameter NBF_DATA_OUT  = 7
) (
    output signed [NB_DATA_OUT - 1 : 0] o_sin      ,
    input  signed [NB_DATA_IN  - 1 : 0] i_data     ,
    input                               i_clock    ,
    input                               i_rst_n    
);

localparam NBI_DATA_IN = NB_DATA_IN - NBF_DATA_IN          ;  

wire  signed [NB_DATA_OUT      - 1 : 0] sin_lut            ;
wire  signed [NB_DATA_OUT      - 1 : 0] sin_lut_debug            ;

assign o_sin = sin_lut;

// lut_sin_full #(
//     .NB_DATA_IN (NB_DATA_IN   ),
//     .NB_DATA_OUT(NB_DATA_OUT  )
// ) u_lut_sin  (
//     .o_sin      (sin_lut_debug        ),
//     .i_data     (i_data         ),
//     .i_clock    (i_clock        ),
//     .i_rst_n    (i_rst_n        )
// );

ram_sin u_ram_r(
    .clka(i_clock), 
    .ena(i_rst_n), 
    .addra(i_data),
    .douta(sin_lut)
);

endmodule