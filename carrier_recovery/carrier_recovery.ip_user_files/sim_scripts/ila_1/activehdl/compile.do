transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Maestria/carrier_recovery/carrier_recovery.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../carrier_recovery.gen/sources_1/ip/ila_1/hdl/verilog" -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../carrier_recovery.gen/sources_1/ip/ila_1/hdl/verilog" -l xpm -l xil_defaultlib \
"../../../../carrier_recovery.gen/sources_1/ip/ila_1/sim/ila_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

