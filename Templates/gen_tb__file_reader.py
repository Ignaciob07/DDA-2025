import math
import numpy as np
import os
import re

def extract_ports(verilog_file):
    with open(verilog_file, "r") as f:
        content = f.read()

    # Regular expressions to find inputs and outputs
    input_pattern = re.findall(r"input\s+(?:\[\d+\s*:\s*\d+\]\s+)?([\w_]+)", content)
    output_pattern = re.findall(r"output\s+(?:\[\d+\s*:\s*\d+\]\s+)?([\w_]+)", content)

    return input_pattern, output_pattern

script_dir = os.path.dirname(os.path.abspath(__file__))
verilog_filename = os.path.join(script_dir, "lut_atan.v") # CHANGE FILE NAME

# Extract inputs and outputs
inputs, outputs = extract_ports(verilog_filename)

print("Inputs:", inputs)
print("Outputs:", outputs)
