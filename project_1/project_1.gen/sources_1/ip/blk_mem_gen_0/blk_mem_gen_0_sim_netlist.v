// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue May 20 08:12:11 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Maestria/DDA-2025/project_1/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20592)
`pragma protect data_block
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
OcxFE381Zl+mKfHvfi5c
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
