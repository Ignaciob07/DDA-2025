import math
import numpy as np
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file = os.path.join(script_dir, "lut_atan_full.v")



# error representation of atan:
NB_LUT = 8
NB_ATAN_REP = 11 #16.14
NBF_ATAN_REP = 7 #16.14
LUT_SIZE=2**(NB_LUT*2)



with open(output_file, "w") as f:
    f.write("module lut_atan_full #(\n"                   )
    f.write("    parameter NB_DATA_IN    = 8,\n"    )
    f.write(f"    parameter NB_DATA_OUT   = {NB_ATAN_REP}\n"     )
    f.write(") (\n"                                 )
    f.write("    output [NB_DATA_OUT - 1 : 0] o_atan      ,\n")
    f.write("    input  [NB_DATA_IN  - 1 : 0] i_data_i    ,\n")
    f.write("    input  [NB_DATA_IN  - 1 : 0] i_data_q    ,\n")
    f.write("    input                        i_clock       ,\n")
    f.write("    input                        i_rst_n    \n" )
    f.write(");\n\n"                                           )

    f.write(f"    localparam NB_LUT   = {LUT_SIZE}; // \n")
    f.write( "    localparam NB_INDEX = (NB_DATA_IN)* 2          ; //\n\n")

    f.write("    reg  [NB_INDEX    - 1 : 0] index                 ;\n")
    f.write("    reg  [NB_DATA_OUT - 1 : 0] r_atan                ;\n")
    f.write("    reg  [NB_DATA_OUT - 1 : 0] lut [NB_LUT - 1 : 0];\n\n")

    
    f.write("    always @(*) begin\n")
    f.write("        index = {i_data_i, i_data_q};\n")
    f.write("        r_atan = lut[index];                                 \n")
    f.write("                                                           \n")
    f.write("    end\n\n")

    f.write("    assign o_atan = r_atan;\n\n")

    f.write("    always @(posedge i_clock or negedge i_rst_n) begin\n")
    f.write("        if (!i_rst_n) begin\n")
    
    for i in range( -(2**(NB_LUT - 1)), 2**(NB_LUT - 1) ):
        for q in range( -(2**(NB_LUT - 1)), 2**(NB_LUT - 1) ):
               
            atan = math.atan2(q, i)
            atan_fxp = round(atan * (1 << NBF_ATAN_REP))

            if atan_fxp < 0:
                atan_fxp = (1 << NB_ATAN_REP) + atan_fxp

            i_unsigned = i if i >= 0 else (1 << NB_LUT) + i
            q_unsigned = q if q >= 0 else (1 << NB_LUT) + q

            index = (i_unsigned << NB_LUT) | q_unsigned

            
            f.write(f"          lut[{index}] <= {NB_ATAN_REP}'d{atan_fxp};\n")

    f.write("       end\n")
    f.write("    end\n")

    f.write("endmodule\n")

print(f"Verilog LUT saved as {output_file} in the same folder.")
