import math
import numpy as np
import os
import random

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file_in  = os.path.join(script_dir, "input_data.txt")
output_file_out = os.path.join(script_dir, "expected_output.txt")

iterations = 2**14

NB_I = 8
NBF_I = 7
NB_Q = 8

NB_ATAN_REP = 14 #16.14

verbose = 0

with open(output_file_in, "w") as f_in, open(output_file_out, "w") as f_out:
    
    # Random -------
    # for i in range(iterations):  
    #     if 1: # to mantain indentation
    #         in_phase   = random.randint(1, 2**NBF_I) #0 127 
    #         quadrature = random.randint(1, 2**NB_Q-1) #0 127        
    # Random -------
    
    # All ----------
    for in_phase in range((2**NB_I)):        # 0 to 127 

        if in_phase == 2**NBF_I: # si es igual a 128 ( -1  en S(8.7) ) pasar 127 (0.1111111 en base 2) por comportamiento de la lut
            float_i = ((2**NBF_I)-1) / 2**(NBF_I)
            biasi=0
            if verbose: print (f"inph: {in_phase},floati:{float_i}\n") 
        elif in_phase > 2**(NBF_I): # si es mayor a 128 (numeros neg)
            biasi=biasi+1
            float_i = (in_phase-biasi*2) / (2**(NBF_I))   
            if verbose: print (f"inph: {in_phase}, inph-bias {in_phase-biasi*2} floati:{float_i}\n") 
        else:
            float_i = in_phase / 2**(NBF_I)
            if verbose: print (f"inph: {in_phase},floati:{float_i}\n") 

        for quadrature in range((2**NB_Q)):    # 0 to 127   
            i = (in_phase << NB_I) | quadrature  # LUT index
    # All ----------
    
            f_in.write(f"{in_phase} {quadrature}\n")

            if quadrature == 2**NBF_I: # si es igual a 128 ( -1  en S(8.7) ) pasar 127 (0.1111111 en base 2) por comportamiento de la lut
                float_q = ((2**NBF_I)-1) / 2**(NBF_I)
                biasq=0
                if verbose: 
                    if in_phase==0:
                        print (f"quad: {quadrature},floatq:{float_q}\n") 
            elif quadrature > 2**(NBF_I): # si es mayor a 128 (numeros neg)
                biasq=biasq+1
                float_q = (quadrature-biasq*2) / (2**(NBF_I))   
                if verbose: 
                    if in_phase==0:
                        print (f"quad: {quadrature}, quad-bias {quadrature-biasq*2} floatq:{float_q}\n") 
            else:
                float_q = quadrature / 2**(NBF_I)
                if verbose: 
                    if in_phase==0:
                        print (f"quad: {quadrature},floatq:{float_q}\n") 
                

                
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
            if (in_phase + 1) % (2**NB_I // 100) == 0:  # Update every 1%
                percentage = (in_phase + 1) / 2**NB_I * 100
                print(f"\rProgress: {percentage:.2f}%", end="", flush=True)