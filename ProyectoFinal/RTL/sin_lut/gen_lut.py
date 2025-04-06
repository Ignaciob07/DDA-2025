# LUT IS FOR POSITIVE NUMBERS FROM 0 TO 1.5703125 (PI/2)  ! ! ! ! ! ! 
import math
import numpy as np
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file = os.path.join(script_dir, "lut_sin.v")

NB_LUT_IN  = 8
NF_LUT_IN  = 7

NB_LUT_OUT = 8
NF_LUT_OUT = 7

EXCESS       = ((1+1-2**-7) - 1.5703125) * 2**7 # max value - pi/2 to int
LEN_LUT = 2**(NB_LUT_IN) - EXCESS
LEN_LUT = int(LEN_LUT)


with open(output_file, "w") as f:
    f.write("module lut_sin #(\n"                   )
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

    
    f.write("    always @(*) begin\n")    
    f.write("        r_sin = lut[i_data];                                 \n")
    f.write("                                                           \n")
    f.write("    end\n\n")

    f.write("    assign o_sin = r_sin;\n\n")

    f.write("    always @(posedge i_clock or negedge i_rst_n) begin\n")
    f.write("        if (!i_rst_n) begin\n")
    
    
    for i in range(LEN_LUT):        # 0 to pi/2  
        i_rep = (i)/2**7 # 1 to 127 -> 1/2**7 (0.0078125) to 127/2**7 (0.9921875)                        
        sin = math.sin(i_rep)
        sin_fxp = round(sin*2**NF_LUT_OUT)
        f.write(f"          lut[{i}] <= {NB_LUT_OUT}'d{sin_fxp};\n")
    f.write("       end\n")
    f.write("    end\n")

    f.write("endmodule\n")

print(f"Verilog LUT saved as {output_file} in the same folder.")
