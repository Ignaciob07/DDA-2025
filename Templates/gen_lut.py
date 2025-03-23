import math
import numpy as np
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file = os.path.join(script_dir, "lut_atan.v") # CHANGE FILE NAME

# NB PARAMETERS
NB_ATAN_REP = 14 #16.14



with open(output_file, "w") as f:
    f.write("module lut_atan #(\n"                   )
    f.write(f"    parameter NB_DATA_OUT   = {NB_ATAN_REP+2}\n"     )
    f.write(") (\n"                                 )
    
    # OUTPUTS
    f.write("    output [NB_DATA_OUT - 1 : 0] o_atan      ,\n") 
    
    # INPUTS
    f.write("    input  [NB_DATA_IN  - 1 : 0] i_data_i    ,\n")
    
    # GENERAL INPUTS
    f.write("    input                        i_clock       ,\n")
    f.write("    input                        i_rst_n    \n" )
    f.write(");\n\n"                                           )

    # LOCAL PARAM
    f.write("    localparam NB_LUT   = (NB_DATA_IN - 1)*(NB_DATA_IN - 1); \n")

    # REGS
    f.write("    reg  [NB_DATA_OUT - 1 : 0] lut [NB_LUT - 1 : 0];\n\n")

    # ALWAYS COMB
    f.write("    always @(*) begin\n")
    f.write("    end\n\n")

    f.write("    assign o_atan = r_atan;\n\n")

    # ALWAYS POSEDGE
    f.write("    always @(posedge clock or negedge i_rst_n) begin\n")
    f.write("       if (!i_rst_n) begin\n")
    
    f.write("       end\n")
    f.write("       else begin\n")
    
    f.write("       end\n")
    f.write("    end\n")

    f.write("endmodule\n")

print(f"Verilog LUT saved as {filename} in the same folder.")
