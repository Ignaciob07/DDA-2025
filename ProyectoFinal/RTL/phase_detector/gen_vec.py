import math
import numpy as np
import os
import random
import matplotlib.pyplot as plt

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file_in  = os.path.join(script_dir, "input_data.txt")
output_file_out = os.path.join(script_dir, "expected_output.txt")

iterations = 3

nb_in  = 8  # fb representation 
nbf_in  = 7  # fb representation 
nb_out = 16  # fb representation
nbf_out = 14  # fb representation

qam16_constellation = {
    0: (-3, -3), 1: (-3, -1), 2: (-3, 1), 3: (-3, 3),
    4: (-1, -3), 5: (-1, -1), 6: (-1, 1), 7: (-1, 3),
    8: (1, -3), 9: (1, -1), 10: (1, 1), 11: (1, 3),
    12: (3, -3), 13: (3, -1), 14: (3, 1), 15: (3, 3)
}

k = np.real( complex(1,0) * np.exp(1j*np.deg2rad(45)) ) / 3

print(k)

qam16_constellation = {key: (k * I, k * Q) for key, (I, Q) in qam16_constellation.items()}

symbols=np.array([complex(i,q) for i,q in qam16_constellation.values()])
print(symbols)
print(np.floor(symbols.real*(2**7)))

indices = np.random.randint(0, len(symbols), iterations)
tx_symbols = symbols[indices]

random_phases = np.exp(1j * np.random.uniform(0, 2 * np.pi, iterations))
rx_symbols = tx_symbols * random_phases

plt.figure(figsize=(10,10))
plt.scatter(np.real(rx_symbols), np.imag(rx_symbols))
for symbol in rx_symbols:
    plt.plot([0, symbol.real], [0, symbol.imag], 'r-', alpha=0.5)  # Line from origin to symbol

plt.axhline(0, color='gray', linewidth=0.5)
plt.axvline(0, color='gray', linewidth=0.5)
plt.xlabel("In-phase")
plt.ylabel("Quadrature")
plt.title("QAM Symbols with Vector Lines")
plt.legend()
plt.grid()
# plt.show()

with open(output_file_in, "w") as f_in, open(output_file_out, "w") as f_out:
    
    # Random -------
    # for i in range(iterations):  
    #     if 1: # to mantain indentation
    #         in_phase   = random.randint(0, 2**nb_in-1)   
    #         quadrature = random.randint(0, 2**nb_in-1)         
    # Random -------
    
    # All ----------
    # for in_phase in range((2**nb_in)):     
    #     for quadrature in range((2**nb_in)):   
    #         i = (in_phase << NB_I) | quadrature  # LUT index
    # All ----------
    
            # f_in.write(f"{in_phase} {quadrature}\n")

    for symbol in rx_symbols:
        symbol_real = round(symbol.real * 2**nbf_in)
        symbol_imag = round(symbol.imag * 2**nbf_in)
        f_in.write(f"{symbol_real} {symbol_imag}\n")

        closest_symbol = symbols[np.argmin(abs(symbols - symbol))]
        closest_symbol = np.round(closest_symbol * 2 ** 7) / 2**7
        phase_error = np.angle(closest_symbol * np.conj(symbol))
        print(f"r - a = {np.rad2deg(np.angle(closest_symbol))} - {np.rad2deg(np.angle(symbol))} = {np.rad2deg(phase_error)}")
        
        phase_error = int(np.round(phase_error * 2 ** 7))
        f_out.write(f"{phase_error}\n")

        # float_i = in_phase / 2**nb_in
        # # print (float_i)
        # float_q = quadrature / 2**nb_in
        # # print (float_q)
        # if in_phase==0 or quadrature==0:
        #     atan = 0
        # else:
        #     atan = math.atan(float_q/float_i)
        # # print(atan)
        # atan_fxp = round(atan*2**NB_ATAN_REP)
        # # print(atan_fxp)
        # # print(in_phase << 7 | quadrature)
        # # print("- - -")
        # f_out.write(f"{atan_fxp}\n")
    
    # Print progress in the same line
        # if (i + 1) % (iterations // 100) == 0:  # Update every 1%
        #     percentage = (i + 1) / iterations * 100
        #     print(f"\rProgress: {percentage:.2f}%", end="", flush=True)