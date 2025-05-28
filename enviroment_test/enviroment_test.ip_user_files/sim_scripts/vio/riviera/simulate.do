transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+vio  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.vio xil_defaultlib.glbl

do {vio.udo}

run 1000ns

endsim

quit -force
