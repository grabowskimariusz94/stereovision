// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:54:34 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_RR01 -prefix
//               mult_RR01_ mult_RR20_sim_netlist.v
// Design      : mult_RR20
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR20,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RR01
   (CLK,
    A,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [12:0]A;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [12:0]P;

  wire [12:0]A;
  wire CE;
  wire CLK;
  wire [12:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "13" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10110" *) 
  (* C_B_WIDTH = "5" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "11" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_RR01_mult_gen_v12_0_16 U0
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
D+9lfS59pj/VVil0GGdJ59k3DOq46v/+7whNz7wCwfYdRiJPbLItui6o/zSBZEKI9gWLjOldtur1
/rmcVBQ3GA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Al4EzSQFZknJP1zXhKNIjHP2ED06e/ds+6xnXGYdohXSo6+myvUa29WxrDQ2BRCFMopuWgRIHVKr
QIL1R/lyNoyVEM+ZIozLEHgX6l1O/zTuyjCCsopsjgqJb2Wtgn8s+TaOCOvqtDrvLzt0PvLiCx3j
UkBnJ2bYuzUoN4JusSo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GryPO/G6YUeEdMxSH6E+Cylnk/9RJIpF3DfZ8qm1ecWq6hYmaGlwqiFs0cnQCPLUX5i7YB1Zhyg7
xWXnsmJ4+UqH7C7kALbZ0VgPMoxq9qXXyR3XFKCabcHGfdH1PGZgCMUJcT1U4IAGCC0HKbpQue4v
BxJxLOKucvmUl0mdNC5jktjqlol5N3LNQ1Nqb0Bi2JUbKhDXyPAghHnYm1RA1WIG/I7KPAHJRMsn
rq61TkO0r9B2jyIUh8Re69O30QuaI8MVXArXwxoLarP1bw33bj+4nw7AKPOj3d27JIY1FecXOlD+
JrglMTs1oca4ii7DTHZWrWcZD11O8wPZrSB/hg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gIxs1xJo2g0tw3pn4+ixShAOAMuK8enzcVscdNEALwVHu56ynHRf8QNrBE9hWTm0Zrotj69ZA/BK
kwI2N0AWvjk9ACiHZ+Q82pH5keVYRtMQtsAzmOmN3YJ3UkTFHW6AIALOLN/+b1CJx2DSSbUvSJRL
vYdCMY94F9Lklx9UjVtQ7r4y14DJeU9UdmLHZEJTMZ3ahOPNz53F7Y+D2abS+pN3OTP/hfwC8SXW
Y0mKDR8Tkg+zCHqpFqHVe4sN/fDWpQUR8MUszd4ygr4o7HqUOQ1RTUGx1Mc0Wtrq0QAi8Syc7V28
2OviXFf4KLhcKYs0bZN+gsgApGWiwyRvQRkZsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lbc8rPGs9vNVJLV1Ztd+OweNWVf1r3bbhZXmEPzls7ewmRVAwHDdCz0iBVD5zHofb2Pv1cNIx1DF
Cegpi/O809UypK5vc2xsVTWDeqgYhsqvVrROg6FOkBiX78rZZIEYF4NC0rxHw/5ixAFYsGHPS840
rFWEsubE6/eEK5KjxNY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dGaX53L9Ek9wU1QC7h+mJBxY9VRQrtTA5cLqpyZvyLoi582YqMcyFxxsOh08z/CW++CYcslxK5c2
nB76qWzDGxhrcZ2LL96TaJdxfIU2EOvAbd+35O26BL5Dr65GaDwdjrxZgGVYX9zZnupIqxn8XhmC
YxZ5OIIBnPbpGQ6ribzMzlGvFizUnWWAzae4ZJK4JY+UWbuv2xdBtaDjg/1YQkACqpob/Aq4IcN9
/z+aEP0pGhrF9aYTALhCIBKRSiEmlWYFi+Y/QtDMcgPf3kf28Jl2zN9nxRNVeqUYEwqb9cl2u01M
MuW6fdTQYP8au8BQaSrUEy47B0go0sgbZVDbwA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LEujW+ttFeLDTd6Kj02ulQ4/6kxvxmgT0K9WSqzr2nEKo8u+D1wTZSNxo1Fc+SuL6Np9NoHmXZ6a
quET05vVSiMB+lIOHpijfSVwTqZ7LgYHnhXrPB5My87wRq0b9Jyg7VUy3e0yzOlKBYa8cqDKm5vE
rKtHLezwwsG/dfHwGL5KISY7D5xkA348D53WjZT2GPECqu3z2+qFTyr2skARLi+fP7tdqXthwiZ/
w32KaI0lhDwxw9CdQ/7jGNqq5B4pDSAIRhs657DCGvaZmMrfpEV3TIblWlorFwEQ5UhHeGuVslc+
eN4r6MzOumbMdENFQgB8d3D0vFnoVsLbbL5/3w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b1YdODjbk8HFhbv22dlzSJPK8onB4y/bTVR6bwet5BZoTYdYXUmOZH419afEKigqx51IMqa6rnXU
3J62hXejiIyZsm1mV6d/ZILTIg4MvKp/nsB+nzk3mwrxlbUBSjb5Gs4KJEM3QfmnigtYMQ5rNsWx
xO1OBkWglwIieiVxJRpIzrM1m6NiWCqcL1cvpMI1IywHrEeI+DhZWAgf2c+NGLeogq0I5stGLWyl
7mUNnFVREZS2ztdL9JeVlYFnkm9YAu/rEpRnd/ZFnUmo5LDgPLxnWIoTIbnJ9ETXA3VKs5m8RjLa
Y80BwwVZ8VpAYtcyfGThAvkMUN1XkU+RBOhB0w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jw11/jyPzYF09qKNLzRASveW80p2lDhif/7GSzkqz1ay8ziMYjGu2PXCgyziHf07D1ydjBZ2Oj+T
1TciExFJYUoS4v8yaGxNYIeVg4lCZtiWwMwIjWi5TbX5hyZCCFDUioAcm2Er0tzXe+UuWzkM8uEj
VcZMHxrNXFh3ip5Q5HwOhZJLT59ez98d86/DgXZNDnY1jAn3tjdLiP3facR+GKZ2RlNKOTvP6BNt
RMIiYfDGS6i/0a2j9G97hV2faBZ9PX1JyNer2z3gD5/XUNbE3bPLm+xmhpk1/K7GiF3yvAO1dtiL
5Mg52QRrud8v05hWjH6y7rmg+wiBc1bnMIMVaw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3776)
`pragma protect data_block
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
sSI8FOIxKmEdrYt9xyc=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
D+9lfS59pj/VVil0GGdJ59k3DOq46v/+7whNz7wCwfYdRiJPbLItui6o/zSBZEKI9gWLjOldtur1
/rmcVBQ3GA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Al4EzSQFZknJP1zXhKNIjHP2ED06e/ds+6xnXGYdohXSo6+myvUa29WxrDQ2BRCFMopuWgRIHVKr
QIL1R/lyNoyVEM+ZIozLEHgX6l1O/zTuyjCCsopsjgqJb2Wtgn8s+TaOCOvqtDrvLzt0PvLiCx3j
UkBnJ2bYuzUoN4JusSo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GryPO/G6YUeEdMxSH6E+Cylnk/9RJIpF3DfZ8qm1ecWq6hYmaGlwqiFs0cnQCPLUX5i7YB1Zhyg7
xWXnsmJ4+UqH7C7kALbZ0VgPMoxq9qXXyR3XFKCabcHGfdH1PGZgCMUJcT1U4IAGCC0HKbpQue4v
BxJxLOKucvmUl0mdNC5jktjqlol5N3LNQ1Nqb0Bi2JUbKhDXyPAghHnYm1RA1WIG/I7KPAHJRMsn
rq61TkO0r9B2jyIUh8Re69O30QuaI8MVXArXwxoLarP1bw33bj+4nw7AKPOj3d27JIY1FecXOlD+
JrglMTs1oca4ii7DTHZWrWcZD11O8wPZrSB/hg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gIxs1xJo2g0tw3pn4+ixShAOAMuK8enzcVscdNEALwVHu56ynHRf8QNrBE9hWTm0Zrotj69ZA/BK
kwI2N0AWvjk9ACiHZ+Q82pH5keVYRtMQtsAzmOmN3YJ3UkTFHW6AIALOLN/+b1CJx2DSSbUvSJRL
vYdCMY94F9Lklx9UjVtQ7r4y14DJeU9UdmLHZEJTMZ3ahOPNz53F7Y+D2abS+pN3OTP/hfwC8SXW
Y0mKDR8Tkg+zCHqpFqHVe4sN/fDWpQUR8MUszd4ygr4o7HqUOQ1RTUGx1Mc0Wtrq0QAi8Syc7V28
2OviXFf4KLhcKYs0bZN+gsgApGWiwyRvQRkZsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lbc8rPGs9vNVJLV1Ztd+OweNWVf1r3bbhZXmEPzls7ewmRVAwHDdCz0iBVD5zHofb2Pv1cNIx1DF
Cegpi/O809UypK5vc2xsVTWDeqgYhsqvVrROg6FOkBiX78rZZIEYF4NC0rxHw/5ixAFYsGHPS840
rFWEsubE6/eEK5KjxNY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dGaX53L9Ek9wU1QC7h+mJBxY9VRQrtTA5cLqpyZvyLoi582YqMcyFxxsOh08z/CW++CYcslxK5c2
nB76qWzDGxhrcZ2LL96TaJdxfIU2EOvAbd+35O26BL5Dr65GaDwdjrxZgGVYX9zZnupIqxn8XhmC
YxZ5OIIBnPbpGQ6ribzMzlGvFizUnWWAzae4ZJK4JY+UWbuv2xdBtaDjg/1YQkACqpob/Aq4IcN9
/z+aEP0pGhrF9aYTALhCIBKRSiEmlWYFi+Y/QtDMcgPf3kf28Jl2zN9nxRNVeqUYEwqb9cl2u01M
MuW6fdTQYP8au8BQaSrUEy47B0go0sgbZVDbwA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LEujW+ttFeLDTd6Kj02ulQ4/6kxvxmgT0K9WSqzr2nEKo8u+D1wTZSNxo1Fc+SuL6Np9NoHmXZ6a
quET05vVSiMB+lIOHpijfSVwTqZ7LgYHnhXrPB5My87wRq0b9Jyg7VUy3e0yzOlKBYa8cqDKm5vE
rKtHLezwwsG/dfHwGL5KISY7D5xkA348D53WjZT2GPECqu3z2+qFTyr2skARLi+fP7tdqXthwiZ/
w32KaI0lhDwxw9CdQ/7jGNqq5B4pDSAIRhs657DCGvaZmMrfpEV3TIblWlorFwEQ5UhHeGuVslc+
eN4r6MzOumbMdENFQgB8d3D0vFnoVsLbbL5/3w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b1YdODjbk8HFhbv22dlzSJPK8onB4y/bTVR6bwet5BZoTYdYXUmOZH419afEKigqx51IMqa6rnXU
3J62hXejiIyZsm1mV6d/ZILTIg4MvKp/nsB+nzk3mwrxlbUBSjb5Gs4KJEM3QfmnigtYMQ5rNsWx
xO1OBkWglwIieiVxJRpIzrM1m6NiWCqcL1cvpMI1IywHrEeI+DhZWAgf2c+NGLeogq0I5stGLWyl
7mUNnFVREZS2ztdL9JeVlYFnkm9YAu/rEpRnd/ZFnUmo5LDgPLxnWIoTIbnJ9ETXA3VKs5m8RjLa
Y80BwwVZ8VpAYtcyfGThAvkMUN1XkU+RBOhB0w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jw11/jyPzYF09qKNLzRASveW80p2lDhif/7GSzkqz1ay8ziMYjGu2PXCgyziHf07D1ydjBZ2Oj+T
1TciExFJYUoS4v8yaGxNYIeVg4lCZtiWwMwIjWi5TbX5hyZCCFDUioAcm2Er0tzXe+UuWzkM8uEj
VcZMHxrNXFh3ip5Q5HwOhZJLT59ez98d86/DgXZNDnY1jAn3tjdLiP3facR+GKZ2RlNKOTvP6BNt
RMIiYfDGS6i/0a2j9G97hV2faBZ9PX1JyNer2z3gD5/XUNbE3bPLm+xmhpk1/K7GiF3yvAO1dtiL
5Mg52QRrud8v05hWjH6y7rmg+wiBc1bnMIMVaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U22l/Ha88EW/gww00QY2xFGtqsuEcbcCEQ3bnestA4JdhgO5q2vI7LagxenbMbYj/bzTDh+nqlOI
4ir/LfaXUJVAZ3iWlu2PfJ+8vZKmLhH1KB71cAGtue2ZtN2HDsxTsZVhWUQG4+GF7O7OlAbPByme
uEits9mkjcQmMkSn86NFTZQVXYktueCrclXI02zXZHFee2DbJrwEQV8+wfaZdTIlPCrG2rmdCu6R
bACPWAT1gEtrDXhrbWUrzpW6tluGLDQ5RKEtIGLUvLBzt//89eN0FwiHuNBAbcHZYi8OPD+VoEkQ
9/TywW3i98aW4CwtpJbw5LdJCrju5pbuHd8ffw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zbUONYVI4gq2sXgQFH2tVhMecDJn66rKTJCI0LKIxsa7/XBAB7mnOhKfB6XwlvQGpwaYBliHViPG
ycd6g+oDGVaA8WCxRzDPgxjqH3YjI6Y/1XaBDxn1GardV4Ve9lmKioSJjyJZPgJp4ec9tkJeScGK
LsRR1HEvGHNmMsFzCWQ4ooMPkB1/0X9HWQ53Wo9rXpUeUK0xNo3p2MZkmiwcnkMg7uNy7iGVf9W0
MjodGcxUHLJQbGJ06ukxn4AEAZVlrLkpPn1I960hvLkt3Lx/GMAcFkt9vJZT3l+9gnIKtCnzaoL3
bbO4TxirnzYnlLQW+SbyBnbprYUV9JREzY4pKg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8672)
`pragma protect data_block
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
K+Zxgh7uBO4=
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
