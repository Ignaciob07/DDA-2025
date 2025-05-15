module lut_atan_ram #(
    parameter NB_DATA_INDEX  = 14,
    parameter NB_DATA_OUT    = 8
) (
    output reg [NB_DATA_OUT - 1   : 0] o_atan,
    input      [NB_DATA_INDEX - 1 : 0] i_index,
    input                              i_clock,
    input                              i_rst_n
);

    localparam NB_LUT = 1 << NB_DATA_INDEX;

    reg [NB_DATA_OUT - 1 : 0] lut [0 : NB_LUT - 1];

    // Optional: Initialize the LUT from a hex file
    initial $readmemb("C:/Maestria/DDA-2025/ProyectoFinal/RTL/div_lut/atan_lut.mem", lut);

    always @(posedge i_clock or negedge i_rst_n) begin
        if (!i_rst_n)
            o_atan <= 0;
        else
            o_atan <= lut[i_index];  // synchronous read
    end

endmodule
