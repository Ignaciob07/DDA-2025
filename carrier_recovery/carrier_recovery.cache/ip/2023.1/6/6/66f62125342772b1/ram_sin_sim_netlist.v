// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 21 10:23:32 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [10:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [10:0]douta;
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
  wire [10:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.214972 mW" *) 
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
  (* C_READ_WIDTH_A = "11" *) 
  (* C_READ_WIDTH_B = "11" *) 
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
  (* C_WRITE_WIDTH_A = "11" *) 
  (* C_WRITE_WIDTH_B = "11" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[10:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[10:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26704)
`pragma protect data_block
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
wPMec9pjT9TNSQygHz5T/22zCOEHDOy71j9YJg==
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
