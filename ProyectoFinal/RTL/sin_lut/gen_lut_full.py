# LUT IS FOR POSITIVE NUMBERS FROM 0 TO 1.5703125 (PI/2)  ! ! ! ! ! ! 
import math
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file = os.path.join(script_dir, "lut_sin_full.v")
output_file_hex = os.path.join(script_dir, "lut_sin_full.mem")

NB_LUT_IN  = 11
NF_LUT_IN  = 7

NB_LUT_OUT = 9
NF_LUT_OUT = 7

LEN_LUT = 2**(NB_LUT_IN)


with open(output_file, "w") as f, open(output_file_hex, "w") as f_hex:
    f.write("module lut_sin_full #(\n"                   )
    f.write(f"    parameter NB_DATA_IN    = {NB_LUT_IN},\n"    )
    f.write(f"    parameter NB_DATA_OUT   = {NB_LUT_OUT}\n"     )
    f.write(") (\n"                                 )
    f.write("    output [NB_DATA_OUT - 1 : 0] o_sin      ,\n")
    f.write("    input  [NB_DATA_IN  - 1 : 0] i_data     ,\n")
    f.write("    input                        i_clock    ,\n")
    f.write("    input                        i_rst_n    \n" )
    f.write(");\n\n"                                           )

    f.write(f"    localparam NB_LUT   = {LEN_LUT}; \n")

    f.write("    reg  [NB_DATA_OUT - 1 : 0] r_sin               ;\n")
    f.write("    reg  [NB_DATA_OUT - 1 : 0] lut [NB_LUT - 1 : 0];\n\n")

    

    f.write("    assign o_sin = r_sin;\n\n")

    f.write("    always @(posedge i_clock or negedge i_rst_n) begin\n")
    f.write("        if (!i_rst_n) begin\n")
    
    for i in range(LEN_LUT):
        # Convert unsigned index to signed two's complement
        if i >= 2**(NB_LUT_IN - 1):
            x = i - (1 << NB_LUT_IN)
        else:
            x = i

        # Convert to float radians from Q4.7
        i_rep = x / (2**NF_LUT_IN)

        # Compute sine in radians
        sin = math.sin(i_rep)

        # Convert to Q2.7 fixed-point
        sin_fxp = round(sin * (2**NF_LUT_OUT))

        # Wrap for unsigned Verilog output
        if sin_fxp < 0:
            sin_fxp += (1 << NB_LUT_OUT)

        f.write(f"            lut[{i}] <= {NB_LUT_OUT}'d{sin_fxp};\n")
        f_hex.write(f"{format(sin_fxp, '09b')}\n")
        
    f.write("       end\n")
    f.write("       else begin\n")
    f.write("        r_sin <= lut[i_data];                                 \n")
    f.write("       end\n")
    
    f.write("    end\n")

    f.write("endmodule\n")

print(f"Verilog LUT saved as {output_file} in the same folder.")
