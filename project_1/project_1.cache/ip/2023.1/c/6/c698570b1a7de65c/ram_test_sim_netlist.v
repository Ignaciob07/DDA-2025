// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue May 20 08:35:51 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_test_sim_netlist.v
// Design      : ram_test
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_test,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19920)
`pragma protect data_block
+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
J1jvnxLmwJ0kkwsl21WGTh8QoqWX0Cu1EX5U
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
