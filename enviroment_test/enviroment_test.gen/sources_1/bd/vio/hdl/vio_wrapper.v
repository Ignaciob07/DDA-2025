//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Wed May 28 08:19:53 2025
//Host        : IgnachPC running 64-bit major release  (build 9200)
//Command     : generate_target vio_wrapper.bd
//Design      : vio_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vio_wrapper
   (clk_0,
    probe_out0_0);
  input clk_0;
  output [0:0]probe_out0_0;

  wire clk_0;
  wire [0:0]probe_out0_0;

  vio vio_i
       (.clk_0(clk_0),
        .probe_out0_0(probe_out0_0));
endmodule
