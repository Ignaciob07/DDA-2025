// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue May 20 08:35:51 2025
// Host        : IgnachPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Maestria/DDA-2025/project_1/project_1.gen/sources_1/ip/ram_test/ram_test_sim_netlist.v
// Design      : ram_test
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_test,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ram_test
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
  ram_test_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19840)
`pragma protect data_block
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
68RCkg==
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
