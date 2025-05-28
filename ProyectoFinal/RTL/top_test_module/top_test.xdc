set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clock]
create_clock -period 20.000 -name sys_clk_pin -waveform {0.000 10.000} -add [get_ports clock]
