import numpy as np
import matplotlib.pyplot as plt

# Simulation parameters
symbol_rate = 1000
samples_per_symbol = 10
fs = symbol_rate * samples_per_symbol
num_symbols = 1000

values = [50*np.pi/180, 1*np.pi/180, 10*np.pi/180, 80*np.pi/180]

for j, k in enumerate(values):
    print(f"Index j = {j}, Value k = {k}")
    freq_offset = k  # Frequency offset in Hz
    phase_offset = 0  # Initial phase offset

    # Define 32-QAM constellation
    qam32_constellation = {
        0: (-3, -3), 1: (-3, -1), 2: (-3, 1), 3: (-3, 3),
        4: (-1, -3), 5: (-1, -1), 6: (-1, 1), 7: (-1, 3),
        8: (1, -3), 9: (1, -1), 10: (1, 1), 11: (1, 3),
        12: (3, -3), 13: (3, -1), 14: (3, 1), 15: (3, 3),
        16: (-2, -2), 17: (-2, 0), 18: (-2, 2),
        19: (0, -2), 20: (0, 0), 21: (0, 2),
        22: (2, -2), 23: (2, 0), 24: (2, 2),
        25: (-4, 0), 26: (4, 0), 27: (0, -4), 28: (0, 4),
        29: (-4, -2), 30: (-4, 2), 31: (4, -2), 32: (4, 2)
    }
    symbols = np.array([complex(i, q) for i, q in qam32_constellation.values()])

    # Generate random symbols
    random_indices = np.random.randint(0, len(symbols), num_symbols)
    tx_symbols = symbols[random_indices]

    # Apply frequency and phase offset
    n = np.arange(num_symbols)
    rx_symbols = tx_symbols * np.exp(1j * (2 * np.pi * freq_offset * n / symbol_rate + phase_offset))

    # PI PLL with NCO Carrier Recovery
    phase_nco = 0  # Initial phase from NCO
    freq_nco = 0   # Initial frequency estimate from PI loop
    Kp = 0.5  # Proportional gain
    Ki = 0.05  # Integral gain
    integrator = 0  # Integral accumulator
    recovered_symbols = np.zeros(num_symbols, dtype=complex)
    phase_errors = np.zeros(num_symbols)  # Store phase errors

    for i in range(num_symbols):
        # NCO Phase Correction
        corrected_symbol = rx_symbols[i] * np.exp(-1j * phase_nco)
        
        # Decision-directed (Nearest symbol)
        closest_symbol = symbols[np.argmin(abs(symbols - corrected_symbol))]
        
        # Phase error (Decision-directed error)
        phase_error = np.angle(corrected_symbol * np.conj(closest_symbol))
        phase_errors[i] = phase_error  # Store error for plotting

        # PI loop filter
        integrator += Ki * phase_error  # Integral term (slow correction)
        freq_nco = Kp * phase_error + integrator  # Proportional + Integral control
        
        # NCO phase update
        phase_nco += freq_nco  # Accumulate frequency to update phase
        
        # Store corrected symbol
        recovered_symbols[i] = corrected_symbol

    # Plot Phase Error Over Time
    plt.figure(figsize=(10, 5))
    plt.plot(range(num_symbols), phase_errors, label="Phase Error", color='b', alpha=0.7)
    plt.axhline(y=0, color='k', linestyle='--', linewidth=1)
    plt.xlabel("Symbol Index")
    plt.ylabel("Phase Error (radians)")
    plt.title("Phase Error Over Time (PLL Convergence)")
    plt.legend()
    plt.grid(True, linestyle="--")
    plt.savefig(f"phase_error_plot_{j}.png", dpi=300)  # High-quality image
    plt.close()

    # Constellation Heatmap Plot
    plt.figure(figsize=(6, 6))
    plt.hexbin(np.real(recovered_symbols), np.imag(recovered_symbols), gridsize=50, cmap="hot", mincnt=1)
    
    # Overlay Expected 32-QAM Constellation Points
    plt.scatter(np.real(symbols), np.imag(symbols), color='cyan', marker='o', label="Expected 32-QAM")
    
    plt.colorbar(label="Density (Higher = More Points)")
    plt.xlabel("In-phase")
    plt.ylabel("Quadrature")
    plt.title("Thermal View of PLL-Recovered Constellation")
    plt.legend()
    plt.grid(True, linestyle='--')

    # Save the heatmap plot
    plt.savefig(f"thermal_constellation_{j}.png", dpi=300)
    plt.close()

    print(f"Saved thermal constellation image: thermal_constellation_{j}.png")
