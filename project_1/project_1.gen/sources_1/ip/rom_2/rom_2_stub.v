// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue May 20 08:35:51 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top rom_2 -prefix
//               rom_2_ ram_test_stub.v
// Design      : ram_test
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *)
module rom_2(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="ena,addra[3:0],douta[7:0]" */
/* synthesis syn_force_seq_prim="clka" */;
  input clka /* synthesis syn_isclock = 1 */;
  input ena;
  input [3:0]addra;
  output [7:0]douta;
endmodule
