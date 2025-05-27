import math
import os

### THIS PYTHON WILL WRITE THE VERILOG LUT AND ALSO THE RAM

script_dir      = os.path.dirname(os.path.abspath(__file__))
output_file     = os.path.join(script_dir, "lut_atan_only.v")
output_file_hex = os.path.join(script_dir, "atan_lut.mem")

# error representation of atan:
NB_LUT = 8
NBF_LUT = 7
NBF_ATAN_REP = 7
NB_ATAN_REP = NBF_ATAN_REP + 1 
LUT_SIZE=2**((NBF_LUT)*2)

print("lut size: ", LUT_SIZE)

with open(output_file, "w") as f, open(output_file_hex, "w") as f_hex:
    f.write("module lut_atan_only #(\n"                   )
    f.write(f"    parameter NB_DATA_INDEX  = {NBF_LUT*2},\n"    )
    f.write(f"    parameter NB_DATA_OUT    = 9\n"     )
    f.write(") (\n"                                 )
    f.write("    output [NB_DATA_OUT   - 1 : 0] o_atan    ,\n")
    f.write("    input  [NB_DATA_INDEX - 1 : 0] i_index   ,\n")
    f.write("    input                          i_clock   ,\n")
    f.write("    input                          i_rst_n    \n" )
    f.write(");\n\n"                                           )

    f.write(f"    localparam NB_LUT   = {LUT_SIZE}                ;\n")

    f.write("    reg  [NB_DATA_OUT - 1 : 0] r_atan                ;\n")
    f.write("    reg  [NB_DATA_OUT - 1 : 0] lut [NB_LUT - 1 : 0]  ;\n\n")

    if NBF_ATAN_REP != 7:
        f.write("    assign o_atan = {r_atan,1'b0};\n\n") # CHECK ZEROS
    else:
        f.write("    assign o_atan = r_atan;\n\n")

    f.write("    always @(posedge i_clock or negedge i_rst_n) begin\n")
    f.write("        if (!i_rst_n) begin\n")
    
    for i in range((2**(NBF_LUT))):        # 0 to 127 
        for q in range((2**(NBF_LUT))):    # 0 to 127            
                
            index = (i << NBF_LUT) | q  # LUT index

            if i==0 or q==0:
                f.write(f"          lut[{index}] <= 0;\n")
                f_hex.write(f"{0}\n")  # 3 hex digits (9 bits)
                
            else:
                i_rep = (i) # 1 to 127 -> 1/2**7 (0.0078125) to 127/2**7 (0.9921875)
                q_rep = (q) # 1 to 127 -> 1/2**7 (0.0078125) to 127/2**7 (0.9921875)
                            
                atan = math.atan(q_rep/i_rep)
                atan_fxp = round(atan*2**NBF_ATAN_REP)
                
                f.write(f"          lut[{index}] <= {NB_ATAN_REP}'d{atan_fxp};\n")
                f_hex.write(f"{format(atan_fxp, '08b')}\n")

    f.write("       end\n")
    
    f.write("       else begin\n")
    f.write("           r_atan <= lut[i_index];\n")
    f.write("       end\n")
    
    f.write("    end\n")

    f.write("endmodule\n")

print(f"Verilog LUT saved as {output_file} in the same folder.")
