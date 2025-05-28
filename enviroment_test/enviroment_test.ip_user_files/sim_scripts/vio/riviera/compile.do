transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Maestria/enviroment_test/enviroment_test.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../enviroment_test.gen/sources_1/bd/vio/ipshared/1b7e/hdl/verilog" "+incdir+../../../../enviroment_test.gen/sources_1/bd/vio/ipshared/122e/hdl/verilog" "+incdir+../../../../enviroment_test.gen/sources_1/bd/vio/ipshared/c420/hdl" -l xil_defaultlib \
"../../../bd/vio/ip/vio_vio_0_0/sim/vio_vio_0_0.v" \
"../../../bd/vio/sim/vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

