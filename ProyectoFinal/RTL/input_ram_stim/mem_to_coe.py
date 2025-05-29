def mem_to_coe(mem_path, coe_path):
    with open(mem_path, 'r') as f:
        lines = [line.strip() for line in f if line.strip()]

    with open(coe_path, 'w') as f:
        f.write("memory_initialization_radix=10;\n")
        f.write("memory_initialization_vector=\n")
        for i, line in enumerate(lines):
            line = line.split()[0]  # remove potential comments
            end = ',' if i < len(lines) - 1 else ';'
            f.write(f"{line}{end}\n")

mem_to_coe("DDA-2025/ProyectoFinal/RTL/input_ram_stim/input_data_i.mem", "DDA-2025/ProyectoFinal/RTL/input_ram_stim/input_data_i.coe")
mem_to_coe("DDA-2025/ProyectoFinal/RTL/input_ram_stim/input_data_q.mem", "DDA-2025/ProyectoFinal/RTL/input_ram_stim/input_data_q.coe")