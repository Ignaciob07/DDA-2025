// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 21 10:52:42 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Maestria/carrier_recovery/carrier_recovery.gen/sources_1/ip/ram_sin/ram_sin_sim_netlist.v
// Design      : ram_sin
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_sin,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ram_sin
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [8:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [8:0]douta;
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
  wire [8:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.18446 mW" *) 
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
  (* C_INIT_FILE = "ram_sin.mem" *) 
  (* C_INIT_FILE_NAME = "ram_sin.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "9" *) 
  (* C_READ_WIDTH_B = "9" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "9" *) 
  (* C_WRITE_WIDTH_B = "9" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_sin_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[8:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[8:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17904)
`pragma protect data_block
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
e/xNR5gi
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
