// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 21 07:54:13 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20208)
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
