import math
import numpy as np
import os
import random

script_dir = os.path.dirname(os.path.abspath(__file__))
output_file_in  = os.path.join(script_dir, "input_data.txt")
output_file_out = os.path.join(script_dir, "expected_output.txt")

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

n_samples=100000

indices = np.random.randint(0, len(symbols), n_samples)
tx_symbols = symbols[indices]

freq_offset = 10*np.pi/180

n = np.arange(n_samples)
rx_symbols = tx_symbols * np.exp(1j * 2 * np.pi * freq_offset * n)


NB_I = 8
NBF_I = 7

rx_symbols = np.round(rx_symbols*2**NBF_I)
print(rx_symbols)

verbose = 0

def to_twos_complement(val, bits):
    """Convert a signed integer to its two's complement representation as an unsigned integer."""
    if val < 0:
        val = (1 << bits) + val
    return val

with open(output_file_in, "w") as f_in, open(output_file_out, "w") as f_out:
    for sym in rx_symbols:
        imag_tc = to_twos_complement(int(sym.imag), NB_I)
        real_tc = to_twos_complement(int(sym.real), NB_I)
        f_in.write(f"{imag_tc} {real_tc}\n")
    
    # Random -------
    # for i in range(iterations):  
    #     if 1: # to mantain indentation
    #         in_phase   = random.randint(1, 2**NBF_I) #0 127 
    #         quadrature = random.randint(1, 2**NB_Q-1) #0 127        
    # Random -------
    
    # All ----------
    
        
        # Print progress in the same line
    # if (in_phase + 1) % (2**NB_I // 100) == 0:  # Update every 1%
    #     percentage = (in_phase + 1) / 2**NB_I * 100
    #     print(f"\rProgress: {percentage:.2f}%", end="", flush=True)
    