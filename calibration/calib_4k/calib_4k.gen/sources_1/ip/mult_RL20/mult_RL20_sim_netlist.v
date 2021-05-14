// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:54:34 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_RL20 -prefix
//               mult_RL20_ mult_RR20_sim_netlist.v
// Design      : mult_RR20
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR20,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RL20
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
  mult_RL20_mult_gen_v12_0_16 U0
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
9CTeDg9IyjPqewlezIs=
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
3meohkD7i34=
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
