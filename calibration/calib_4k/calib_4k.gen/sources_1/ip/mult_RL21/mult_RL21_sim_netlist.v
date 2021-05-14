// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:54:34 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_RL21 -prefix
//               mult_RL21_ mult_RR20_sim_netlist.v
// Design      : mult_RR20
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR20,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RL21
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
  mult_RL21_mult_gen_v12_0_16 U0
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
Ew0pCswZnpBb+VvC3tk=
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
aNz22OUa654=
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
