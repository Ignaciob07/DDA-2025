// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 21 10:52:41 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_sin_sim_netlist.v
// Design      : ram_sin
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_sin,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18000)
`pragma protect data_block
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
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
