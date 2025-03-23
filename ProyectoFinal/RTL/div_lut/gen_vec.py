import math
import numpy as np
import os
import random

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file_in  = os.path.join(script_dir, "input_data.txt")
output_file_out = os.path.join(script_dir, "expected_output.txt")

iterations = 2**14

NB_I = 7
NB_Q = 7

NB_ATAN_REP = 14 #16.14

with open(output_file_in, "w") as f_in, open(output_file_out, "w") as f_out:
    
    # Random -------
    # for i in range(iterations):  
    #     if 1: # to mantain indentation
    #         in_phase   = random.randint(1, 2**NB_I-1) #0 127 
    #         quadrature = random.randint(1, 2**NB_Q-1) #0 127        
    # Random -------
    
    # All ----------
    for in_phase in range((2**NB_I)):        # 0 to 127 
        for quadrature in range((2**NB_Q)):    # 0 to 127   
            i = (in_phase << NB_I) | quadrature  # LUT index
    # All ----------
    
            f_in.write(f"{in_phase} {quadrature}\n")
        
            float_i = in_phase / 2**NB_I
            # print (float_i)
            float_q = quadrature / 2**NB_I
            # print (float_q)
            if in_phase==0 or quadrature==0:
                atan = 0
            else:
                atan = math.atan(float_q/float_i)
            # print(atan)
            atan_fxp = round(atan*2**NB_ATAN_REP)
            # print(atan_fxp)
            # print(in_phase << 7 | quadrature)
            # print("- - -")
            f_out.write(f"{atan_fxp}\n")
        
        # Print progress in the same line
            if (i + 1) % (iterations // 100) == 0:  # Update every 1%
                percentage = (i + 1) / iterations * 100
                print(f"\rProgress: {percentage:.2f}%", end="", flush=True)