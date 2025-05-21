onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib ram_atan_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ram_atan.udo}

run 1000ns

quit -force
