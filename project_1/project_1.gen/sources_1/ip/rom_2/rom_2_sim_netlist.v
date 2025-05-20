// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue May 20 08:35:51 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top rom_2 -prefix
//               rom_2_ ram_test_sim_netlist.v
// Design      : ram_test
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_test,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module rom_2
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.25796 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_test.mem" *) 
  (* C_INIT_FILE_NAME = "ram_test.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  rom_2_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19520)
`pragma protect data_block
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
GH5kukiFGORTALlktSolAU3xPFEgQSeBBNU=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
