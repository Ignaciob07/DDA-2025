// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 28 08:24:24 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Maestria/enviroment_test/enviroment_test.gen/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2023.1" *)
module ila_0(clk, trig_in, trig_in_ack, probe0, probe1, probe2, 
  probe3)
/* synthesis syn_black_box black_box_pad_pin="trig_in,trig_in_ack,probe0[7:0],probe1[7:0],probe2[7:0],probe3[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input trig_in;
  output trig_in_ack;
  input [7:0]probe0;
  input [7:0]probe1;
  input [7:0]probe2;
  input [7:0]probe3;
endmodule
