## Clock: 100 MHz oscillator
set_property PACKAGE_PIN E3 [get_ports i_clock]
set_property IOSTANDARD LVCMOS33 [get_ports i_clock]
create_clock -name clk100MHz -period 10.000 [get_ports i_clock]

## Reset: BTN0
set_property PACKAGE_PIN H5 [get_ports i_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports i_rst_n]

## Input data (i_data_i) on PMOD JA (D0-D7)
set_property PACKAGE_PIN E15 [get_ports {i_data_i[0]}]
set_property PACKAGE_PIN E16 [get_ports {i_data_i[1]}]
set_property PACKAGE_PIN D15 [get_ports {i_data_i[2]}]
set_property PACKAGE_PIN D16 [get_ports {i_data_i[3]}]
set_property PACKAGE_PIN C17 [get_ports {i_data_i[4]}]
set_property PACKAGE_PIN C18 [get_ports {i_data_i[5]}]
set_property PACKAGE_PIN A17 [get_ports {i_data_i[6]}]
set_property PACKAGE_PIN B17 [get_ports {i_data_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_data_i[*]}]

## Input data (i_data_q) on PMOD JB (D0-D7)
set_property PACKAGE_PIN A18 [get_ports {i_data_q[0]}]
set_property PACKAGE_PIN B18 [get_ports {i_data_q[1]}]
set_property PACKAGE_PIN D17 [get_ports {i_data_q[2]}]
set_property PACKAGE_PIN D18 [get_ports {i_data_q[3]}]
set_property PACKAGE_PIN E17 [get_ports {i_data_q[4]}]
set_property PACKAGE_PIN E18 [get_ports {i_data_q[5]}]
set_property PACKAGE_PIN F17 [get_ports {i_data_q[6]}]
set_property PACKAGE_PIN F18 [get_ports {i_data_q[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_data_q[*]}]

## Output corrected_i on PMOD JC (D0-D7)
set_property PACKAGE_PIN H17 [get_ports {o_corrected_i[0]}]
set_property PACKAGE_PIN G17 [get_ports {o_corrected_i[1]}]
set_property PACKAGE_PIN H18 [get_ports {o_corrected_i[2]}]
set_property PACKAGE_PIN G18 [get_ports {o_corrected_i[3]}]
set_property PACKAGE_PIN J17 [get_ports {o_corrected_i[4]}]
set_property PACKAGE_PIN J18 [get_ports {o_corrected_i[5]}]
set_property PACKAGE_PIN K17 [get_ports {o_corrected_i[6]}]
set_property PACKAGE_PIN K18 [get_ports {o_corrected_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_corrected_i[*]}]

## Output corrected_q on PMOD JD (D0-D7)
set_property PACKAGE_PIN N18 [get_ports {o_corrected_q[0]}]
set_property PACKAGE_PIN P18 [get_ports {o_corrected_q[1]}]
set_property PACKAGE_PIN R18 [get_ports {o_corrected_q[2]}]
set_property PACKAGE_PIN T18 [get_ports {o_corrected_q[3]}]
set_property PACKAGE_PIN U17 [get_ports {o_corrected_q[4]}]
set_property PACKAGE_PIN U18 [get_ports {o_corrected_q[5]}]
set_property PACKAGE_PIN V17 [get_ports {o_corrected_q[6]}]
set_property PACKAGE_PIN V18 [get_ports {o_corrected_q[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_corrected_q[*]}]
