// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 21 10:52:41 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ram_sin -prefix
//               ram_sin_ ram_sin_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17616)
`pragma protect data_block
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
a3+K
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
