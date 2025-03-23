import math
import numpy as np
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file = os.path.join(script_dir, "lut_atan.v")

NB_LUT = 7

# error representation of atan:
NB_DATA = 7
max_data_fxp = 1-2**-7
min_data_fxp = 2**-7
min_q_i=max_data_fxp/min_data_fxp
print(min_q_i)
max_q_i=min_data_fxp/max_data_fxp
print(max_q_i)
max_atan=math.pi/2
NB_ATAN_REP = 14 #16.14
fxp_atan = math.floor(max_atan * 2**NB_ATAN_REP)/2**NB_ATAN_REP
print(max_atan-fxp_atan)


with open(output_file, "w") as f:
    f.write("module lut_atan #(\n"                   )
    f.write("    parameter NB_DATA_IN    = 8,\n"    )
    f.write(f"    parameter NB_DATA_OUT   = {NB_ATAN_REP+2}\n"     )
    f.write(") (\n"                                 )
    f.write("    output [NB_DATA_OUT - 1 : 0] o_atan      ,\n")
    f.write("    input  [NB_DATA_IN  - 1 : 0] i_data_i    ,\n")
    f.write("    input  [NB_DATA_IN  - 1 : 0] i_data_q    ,\n")
    f.write("    input                        i_clock       ,\n")
    f.write("    input                        i_rst_n    \n" )
    f.write(");\n\n"                                           )

    f.write(f"    localparam NB_LUT   = {2**(NB_LUT*2)}; // \n")
    f.write( "    localparam NB_INDEX = (NB_DATA_IN - 1)* 2          ; //\n\n")

    f.write("    reg  [NB_INDEX    - 1 : 0] index                 ;\n")
    f.write("    reg  [NB_DATA_IN  - 1 : 0] data_i                ;\n")
    f.write("    reg  [NB_DATA_IN  - 1 : 0] data_q                ;\n")
    f.write("    reg  [NB_DATA_OUT - 1 : 0] r_atan                ;\n")
    f.write("    reg  [NB_DATA_OUT - 1 : 0] lut [NB_LUT - 1 : 0];\n\n")

    
    f.write("    always @(*) begin\n")
    f.write("        if(i_data_i[NB_DATA_IN  - 1])                   \n")
    f.write("            data_i = ~i_data_i + 1;                     \n")
    f.write("        else                                            \n")
    f.write("            data_i = i_data_i;                           \n\n")
    
    f.write("        if(i_data_q[NB_DATA_IN  - 1])                   \n")
    f.write("            data_q = ~i_data_q + 1;                     \n")
    f.write("        else                                            \n")
    f.write("            data_q = i_data_q;                           \n\n")
        
    f.write("        index [13-:7] = data_i;")
    f.write("        index [6-:7] = data_q;")

    f.write("        r_atan = lut[index];                                 \n")

    
    f.write("                                                           \n")
    f.write("    end\n\n")

    f.write("    assign o_atan = r_atan;\n\n")

    f.write("    always @(posedge i_clock or negedge i_rst_n) begin\n")
    f.write("        if (!i_rst_n) begin\n")
    
    for i in range((2**NB_LUT)):        # 0 to 127 
        for q in range((2**NB_LUT)):    # 0 to 127            
                
            index = (i << NB_LUT) | q  # LUT index
            if i==1:
                print(index)
            if i==0 or q==0:
                f.write(f"          lut[{index}] <= 0;\n")
                
            else:
                i_rep = (i)/2**7 # 1 to 127 -> 1/2**7 (0.0078125) to 127/2**7 (0.9921875)
                q_rep = (q)/2**7 # 1 to 127 -> 1/2**7 (0.0078125) to 127/2**7 (0.9921875)
                            
                atan = math.atan(q_rep/i_rep)
                atan_fxp = round(atan*2**NB_ATAN_REP)
                
                f.write(f"          lut[{index}] <= {NB_ATAN_REP+2}'d{atan_fxp};\n")

    f.write("       end\n")
    f.write("    end\n")

    f.write("endmodule\n")

print(f"Verilog LUT saved as {output_file} in the same folder.")
