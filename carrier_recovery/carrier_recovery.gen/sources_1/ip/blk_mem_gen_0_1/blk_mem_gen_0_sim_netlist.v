// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 21 07:54:14 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Maestria/carrier_recovery/carrier_recovery.gen/sources_1/ip/blk_mem_gen_0_1/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20192)
`pragma protect data_block
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
NvzfEg6BdwEK0SWxQl4=
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
