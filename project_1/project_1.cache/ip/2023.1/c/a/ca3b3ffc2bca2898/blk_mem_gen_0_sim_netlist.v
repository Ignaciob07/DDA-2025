// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue May 20 08:12:10 2025
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
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.413047 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_MEM_TYPE = "0" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20608)
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
