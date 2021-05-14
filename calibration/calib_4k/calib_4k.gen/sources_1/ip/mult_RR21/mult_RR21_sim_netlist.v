// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:54:34 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_RR21 -prefix
//               mult_RR21_ mult_RR20_sim_netlist.v
// Design      : mult_RR20
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR20,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RR21
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
  mult_RR21_mult_gen_v12_0_16 U0
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
YuLvNJEkA+RMkMP76eI=
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
B/9UDtzbYUsPY9yBi7xjwh6qpPhv+EnzbZ7ZxDB6/ZwnxxO6Zw76H5EqLZYDDdXwl4aGhvN+I8OU
IcmJlYFCxrCoiMrF1FmBvMLGy23WB8HdIzs/Q0ntjiicjVIZeJnn97MJ0CLJXzIA1aDs20nMglCQ
TtTCV2ON7MhnIMT1/JhNBSeaz8CRMknLkyrBiAggApHoxAwjLCRIMFXajZkNHpGHwA14nAC5/t3L
NJNBVy/4P4RrQE3Qt5MNiQXQYBp9KkEws4UyYSNBoRmkNVh+YJQaQVSh21qHaIlss7zqVjIZADCU
+Vcidy3pN/qrpr+S/dbGTi9QpAokDSsILGhqj6pZIKXEa1zbAhnVc5hrA+lwXWtUWDwWur3XXYVJ
lys5U83KzqjNVE3PEqBr+mHzPMsKzaLrmZFyv1m3b+dnwUK7vorWGlJktZh+sFvCbQ5KHpEK2x7M
2cHAH2C0c628WG9yloOIgPmileud1GGuA001dnk//msfQKNDINu9eRtR0z+aNTgHrG0yGiqNI16+
S39tJHm4d03Okh71EjTnPgdGj5vv7GRPCJOsfiL4ZRKv44/J5lX+o83uedLnasOXWwCq6u1FQoyD
ztzEicQVFaNUFY/LEJyPAA04CZVEaiAQB+6tq8Fp8AWmbMYx6yCgyWx7YhDR7u9E2vksBeIDY15u
kUSjjVUn3AW0kZtfHXeBcvIJxyXodIK2gMW5w5uVRCxTFZLEYq2dfSlW1/mYlk4BpNmcnTb3fGJ9
/OMrABN0edp6be+N+knRorcbAs3DiY8LwUTb2X/ZDp9mP4WDBUB7yumqJbxDaKTOfTXhh68miu9S
Sv/aOSQE+4udH8Kmwpbp9gFLzxjBY7peu/sx8leXRGRTWz0CFcEU+sJ5XJxmQsPYNrlcrO244dcX
jyB+fMfl3IYmjisDzoOCS8dbAJuIzkknsAoACLrWCT4I9hQjh2Ok2lXuDq1hExRIVXEgRXKWhIf3
UbnxRwkPo54xiwNCrU8mJiEuy9hoXW3KJb8Lod02PQCU5YaBC/Rj1G1BWwjH5301Kf0UMT9CYCXy
ekCy4esuGwKHJvD91Cuo+VXBxo7I9Kcqg/ePVd8Wvfpua5LiW1+larVYi273SoXCHjM2EHogWIhK
NMKMk75xM+TA8QJ//yRFnzbSrspX/gmWoI1IzVgcyxm5rrt2w1rQb/gq01WX4NzvsRBh+pNh9rWG
HpWVb2tGVGO+Kl7Tgd1dFULkBDrOT3H3EO2w8Vls+PPi6RkeVbpUicLkNZYRRm+wH6Qws65FinIi
iLcTobjV2HqgrAvMn1aZGJYuEInzGZuYFBC4V+dxFyuGljVhvVYcyzsO8oUGh/ljS6EW4Xw5ghpc
mhHl8T1DRinvNlw/JShByne1zA0yOnDiWMoYtBanY66/4nqAJ6BqVJn1PlstBYDIgkcPuKYa+Mov
0BIZ/UHPE44JUF/22dU1wFjs28sZC5UQKc1q18K8QZaE7V/JGPm9DKyrhuiNN1Icx6JGd7BofOgX
LxkVxyYzQQkdClj9AVk1ppo0czrtluLWZJUlhNAZHGa8x2dJ/HhzItER8aF5J7RPe2dpYzDq+36d
eTk7sqoOK97igkRqIiQ3PNjZcI5rNDEL03gF9R+Wm+844EJzwYSjIuf9/px+U1ozsIdV7yvlNLGk
pWZWZNWXal37v7Qlzv1ZYHz1g/YW26zTKXntOQurTNMiWRfdWJZYuUdxWQ6PlQqDUsKUPew+W3o0
yCB9Rp6BMtqngDUrz/lXF0lpYx8ElPHEOXE4homgddXXAz6dgAr242Cfd4KkfYNe+Acarl1buKKf
5z3H8nDMVxzOQKs53sR0uvjaFX5bbA9r9hkmBKmsGPMfelo4iPLsobxv+j5ag2JgTC0LVsynJL4e
PGwEFGhuwg3LuaeZjTEU/E/wXhYRdukjeXWeDnT6gDmAlC/a8k6v/Ka3vd8c+JX8eL1TTGDp1RTZ
zh+B4e0kjk5vH8JktQxjrR02u6amH3R9Jv0aBAzpgfqWpZd0Va9Au2h27YHuMiB+yVD1Wg+uEInL
zoOlpJ7uk2ZVcCOpjxxkcoeA0kSnjq+1WLQq/kfjhePIU7k9jNittQNTC6JbGig5WtQiJMBtU7L4
/zkQvRuyDx9W2Rvk29cyWchuaxpufP3X8OMTeg4ylPM1RsHniwGljuTMB9I7d0uZSkASiwQ/qor8
HACtZFDpBZLMG3V7utcwJNKKo1XExc3IbJ4H3XGuzWCKCQkzfNvUHeuRzadpie9t61qAFzxxmP4z
dSAHlXsqWvHdsEkanHjSDys0VH48Vu2756RLDtbIqvbQJkYs6PH+mTlBt15KrpPyZDTvYSnv0t5I
CV9Zz2FD9WEinCN294oZeknu0mF9AVUcmtje6PmacM4E85YamMk1+Al/PMtxUrXet+iDItEw9l24
ZBesLdOTe33PGzacYBF4BH/X/wi/u33WOUwomOeXN6AhS5N4VwFsPubDZ24U8mBMd2HEXXzDdIp1
JkBplrOdk3ZWlcKN0+duBULNPtVdGTqaWVHK2UiYeoB/JeymZ9i0gSPhslapZKclBPU/AhJ3GQEU
XBW97IIJ+XkcL5VRJ9c3HGG1dnakcY7qLsakbD7ZjK6geR5lKxP7NjHApem0pcFECMIjTBrZwicA
LvDlWXHx8Rsks0PV3QpWODYAfYoRQeL1mbQotbdEHC9xIPEu0HIZU3Xx8PkxuyRyDgHRnya/5/ju
L4sgW2qzeuwiyn3b1uqyUvQt4O+Cuwe2pV2TgwYWHr1t/yzSZOkc8MkTAAd7PaY5PaC/3ZDBguXp
RLvPW9UXQWOrh7q44uXNM1R7Grmgrk7gD8AhKoAzXFxKgVtuf3GCpAi0qbwTn8Q0inVDznhcl4Xo
EEPIsg5XwXr38SNo5OrLS72hv6uBOePKag/Qh2RiHFp0dSqa7dZf9DwNO9fhrZKQ37coGwSR/MDi
5X1tiobqRj59Cmstl43HU4ZpEvQtPMe59k8f/gBoRrqfjDDzX+Bq6xHARVABQuBOAER2HptHyAeA
x3Em5HjJwn6dnqBvm8nZTF5/ED3GfGU7MOWpqxRw/j7JSiOyFsE+ovtLgXoIy8EOFXRCoWrGAOfs
TqE/Hp95fjBRjYixRP8ou0DXPrWYvbL4WNr1Kp22dzjruXaCihCLA+Pwy7izbWn20K3FcPUd4Unv
mhsOkvUeAzafnaap9iPq21bQOvswu3JTQQ3Ab4bkzy72XgKlm0VlLW6pHVlYfYnwkkqS2uhJreTt
KLa3yCpOo7DvkJQ7LxlxIIiPoX8/wg+cKXOXso6yabJ8kGMhjPURhWalAent5k6X+5QucCimtQcE
PYD/C03vdOKMmyOJkTKxqaoeCWrEaxoTBR/xjpm6+7Zf8ZtBbN9DREqRvY/sZ7aLd67EXIPa25ci
dbfHmRho5DpslhJa8jM/Uju49rCTCJfo4fn5TRSbzJwy1pg7iejDYTYv8d/ESfuW5UkvgNCq5q5w
CnX7mT6mSIAGRyyiVAPeujGVDV5mwyZTMUcy0O+pfOPBDRjtk2zM88Bp0VnNBw+zX0TYVZ6ZGe0+
NLx+rvNw8uYaNSrGt/bJXBYuk1/eI0anyfm28x91tGWlv0UR/CfgtCsxec+UpTkF9NnHdtVk/2MF
fdOjhQ/RgOENESL7knXggXoSQoOOOQ634Xmp87T0kYYHkklFzBSrtec0tNxQ7HnsHKeICO2Ua57M
041t2TQ4WCApWIB5IPTs59HkHxkqxmZiujVFMl9K7jrZfKAMOuTAD02XcXcPd3Ce7SyDb76F3cpM
Az21IBgsDhwO2UU2DqpolNJNf0grH5pA8fFjFNLXB0Drdm+/0GLzJaAr3mUfqLUSSW2bGlhFlOip
EdS20ulRKUmXh7lI+RJLu81qw088N3AqrH8kS59nMhrm85oQ65N7vl424XKxfGQ2pTt+XT9msTSu
69cZf38SKU2LO7aybNJmvnqZwUIkavVuuExKZ1taxtbx7hXsZlwtNXukvMLDV/hAwTKSgtcK5v+7
wo2sk7V0icJjjZx8dTz0c6M4qTk0poduv3KlvxvIX9y/SsjkGZvwb3yTajY3bbjZqxaRnh87s9LS
RvKZyaxJAlpiR8qb03WiNVwcemJm6mLKl7yJ0t++KGtIIZSxmzIX1ojLSXG0rD53WWy05ePkSP/8
+bHx7NCqOEW/BI21qJS8QpP8RpXvuDQDBJ4/Mdbvss1K4qYUtUjpBfzhWTXap9JVdw6PnhYVX9od
D0TCtT0Bf+qpuezehL0vCQFaSanYPApwIfRsiYVFhQJVORl5JIqa1lTR/CNIZxIBZqNPZD5t7zEj
FMYwZEkGTsPLnf7Mr1iEergwtrOeOuUYM7y3I+oE6x8H4hrgm0ndyYJLF/yJ4pHBDiH6lf1PVs6t
yHXhtKlUMog2UeZZCGbqC0keZMHT+45sx8XnX0+/SyjhpN3eLE6HEW6fItWieNDfJrwQal375NY6
2bbcj2alqvcV5uv/JXRomWCGkKgRdLUpN8CmZGpYGDtCEuMGgqwl4cp9uazzS3uACl72J2vaywAc
1enAZ3bHX/D5veRS0VXYbk0Pl2+i1a3cVkQ9IMCKxAuJYd+W+d4AMNVQereXYY+k6TismA75+hg4
p14vz0bAu/xgSwAlf+qwbW/j5gmekNwHlBqXhfqFSkLJX62K5NDdWntigo8DZroTX0R5KzPRIlSA
2JHjSJbSVRQTRjzWKVHeTQZO43gN36mKBMZSl/0B5F5UlvkWunZYZLxJ5RRRHgVt0K6RUYeo++XM
ijy2d4CteOSIq8ID8QyX4qRnU5GJBl5U6n+2/UO0G/KhLb0GlY5xlNC3DuGdAmPgrUoyXa3zgthO
w57QmVpeoinOgTN/+5GDWUH8VRCsDYQ8GBlOJWog9V1zB/xmlE1GYyQny9NG/00GE/bN330HKYPc
M4y7GmLSJbDOriyNnIPCCEGhXcY4dbo0jJEYt6fefbxDmRCd0M5Vx+TGM53ls9TE9NnFbmhxLE7b
TBVTp1wUsnaWmZJb5FROfa3keCZi/JtvjKd9tDBN4s4p2fsZyjzmXfTzhE8+21AlwV6tUf1LBH4N
e8bGBMwS1T6wu7TKVrZ1SQVrpgVFSdro3Xi7MxztOmpH1mjZU3eYz7YKWL90nSChwoJwi1IijiVK
7FASoxop4uQ7ZjnWa4B08Ysa6Y2v/u9aH/I7OPT/SuRyHdrnamy92AuVb06XgF6bDyTqCIQyJPm0
/V5yQN+U0TwyqS3kXuyfPfzPB79+iffYRtp9tSd/3HBryh4MH0xGueMxjl2qWB8qWALx7JtfnLtw
NQuGd2+1w3JjaQkiojO3JTZ/0fiPuiF0twzJwNH0yZiTA+MJKy7QiwMOxE4xR7ua/AuHAlj6S/e8
s2Pxog3uZ1fnoAaO5L6+xc5Ckgr0UbL7iII/ONQTtNJ6vbYeEUo9Neq3mNvyD/W0YCzD1D6FVoSs
A8H+H12KnxRj1i9KfgXWDHBmTchnwkS+MdJeSMMGHqLgX/LI1XuSQHmeiQM57rJi7brUCKGChdlD
7vIHb8ixSZy4tO1d/8lBx0obulk4WejGqHgquGN1sSKzD93DL4jMP/qjUvGK64V46tKp6fX+jmqh
tsc6aU+B/605WdxsnORvsiTVTgRn3hvii9VIaTWGNIuAp38f5zrVXbpcUdgEWxUEVIBzVPNw/Knh
04BCyr9tXa1tIf0o6UPqHxLqV1lQXdTfVzMTiFQAsti14NwFpoja52DepOMCpZEF1Xy4KdxuIiqe
uz3loBdvuoZaHzWkntL957DItQ7bwLOPKYy5DS9F22Xze2ltgPfe7w6yzU+ulEVu1z/TnTHYi8Bj
23424nQXxlk8RF/9ccrF2VfLuPHZHwXEAgjWgvFVp2b7epxiLm0smoS7vwIokwtWyG/qFmyP60U6
VGdUZD04WlEBUqwpFH4FiZLeDPPqGz70j5FDj7bs02IWZlWZ4pMT/GxEWCHCG0YHVNyW0ZZxRGTF
LNGupSM2VKd2I2U+eBk17GRGmsMNxTHOTcvgcE/qvSlMn2GhkCpNh1WExPqFD24yD9WQFcsSaaGK
UHCOBaCylfc/6EtLdPemibIVrI+d3RX/a3MtajH9pJTbdIltjFI8xIr6cP8uzPmgPsnwq4rVfB7X
/nM3vb2ZwqcYaw06rOroXeyjorRdfQOnbjUrfGnL6/6X+50FEP4uDjXH3uvW3AYd+dkceRSn46us
1GJSRzE++8dbUlo+Jm/lzRrX3ir1IPmalhf/r8pfnpum3AeAgvJbaFKQG3lFrL4x7caMxcZoLb2N
MSzzOCj379LxUTZOKYSzFfIVR5kPQ2t/ZST1Hp7rvmSOm6LER5+RES7FFGNupQgWcchlJhnTU+/g
trKSCVreO3lhEApqG/Ce0yaCC3lsYNChQvG21poa2DR7L3i5tAB85EfgtAwvIfiJfNP6JEL5A2vx
+Sqx/zE8ZzEyF61rsSzgUYH8QS0A6o47LfueRQCf7hwfTEe8Vtpz1SR+r/iUHJsIzesl4h2Ph1De
aQDhshCA2Ltq9SVb6kTWRtaQmRyzxAUjqR6RtA3Usg99KnBJmWiIeBcrXX+eYle+NiUTjPaoV4hw
iRhWVh+0gIjk2fgtSKjZ1kxewOXWbLsxEsoclTnb4D9EuG+UypKvFqazKsU6Wh06lWdX5kHmO/zB
eht1XREpydWMgEnzMu48rXUbqY1iDoOmEUERyLqUbZMqbNkKzcVUwAUXzaSIDV47wj0V1QeDSIBx
xqDZtgIKRbafxB1y6o/xwz0weoJ6mawYObb0SrAjN7oZ+hjtyLj7cBfRCOeDfS0fQpnnC5iDceER
CoJpIpyCJr5gToRTtmIeUe0TNKs5DpcpjpfurBlVX3yySmTMO4MxxfCuk/FWF8tIlHADR7B4uTZE
fbi99YM3Itf6w0kJ5Eosdi/4mJ44SsGVmKSegeFHNLivIJZ2oxGnHjGnvJJlVrK8zg/Tpa8fbOcH
jKY+/WaKoujqL3D1Sl+LT2XNsbfCiJUQ+R/GcpXUNw1FA+m/II39U05pPMCDQdeYm0RqSVYJP/hz
JreyfipL9eFm0+rwKEu4rvLLeEmtgdFRy7WQPds0x0hqBARez8TIbcIe6+IpC4jtJyYEnVUqTx9O
HHhZBCTSix+8Nel7YOCvDCW7ybq8K86swTtaIQYcL3vudLjGTWxAFpH0WxwbAeRH/xGo905QBldt
YvANboNRRcF5ZE+6ZPJdWONfQyhkUJaH9vYtuJEcKbNNmSpJX1RwgHZcuHCH0IE67uvLfk9s5pZd
4ECYmAANW2BKyK63FAvZ+rjpY9/95dtq5VQT0/W/IlNIawgQPcZFgOgfj7hSRIVQ6NoPijHrYtqQ
aXtiNPdcnD5LX7yCRk/RfwPPdYohaqao5H2skOlC0iiRIPZABH9TTNSPTPQbVOALOxLgrkepTtj1
E50C+9Tr3WEQinIm1+Z03dQ92S8G1hSf2lhuS/2W8YfWkIXStPSau0OqDBzY8++22/1S89n6dJPR
I+7y5zO5nRiMvqwxV5FczEDGUBc3yugkdwxwq/Fu/IQKpnlBpl+Td6gxYdV35RTQuKfe1tJ5g0HY
3fDlIQ/l+t+iRbobGQUmzUBnEUnvf9KLtSfIq12U8lTT0RVzdX71SQniu91vMpsq1NaYWOK1UzSu
BgO3C/nbzPT7BwB76FE7AYwe2J/GTnbplfzpvLI9DQcCUdZeJsS9FeUgnNXcpkI53J2xwdWSaeaj
10eaVAFNVi6Jf88sXChd0SGzcei+Tc254e7JpQoCrLu7khNSjrV3tF12C3P4foejIEhLhgeetrdg
cey6UTvpoczgArjE9Io/lt32IntHfdFLx6AChI0aYQvMo5iOLN7mHU6KCRdQ+duaO8aJh8XumfUN
TOCPoa/47rCWBapqof+QG1UuspozjjZkZcn4kmy/lN+NO5FyJqwL2hvOfhSdftkU1iG3FkdcGIJc
9EJSwnYmmpvfq2Bruj16o+M8tkaumGrRbQfkb1PmEoYoAfvtDUEdMYknHEPSMDYJJiOlHNQ6/0UH
rRJq7+9K57z2Z3xLh1IAK7rHQ/CRuNrHMk62buPhBVPS0oHgIAboJZS+lxw+lsHDlqVVzJzwd9UT
Hz0lYclhdb44DvK2QXjSeUiym40Bp9m3l5wi2YaUGKV3CqwSprvktN3g25jC0yE4XcgW1xkA/k30
1itc12tFpCyM7shKZqMTsMNNY5btK6G3S8uTIpAYYzBR7lAErah/gzzskOaBlO3bWKVxycNOoyPZ
0uwlbYplc1CMEJDD4c4ycM2kaoI9/DpdzKthn1LHZLppNCiOExDbSH6f0SfSE5bGQ81I/jod7Ons
8A7PG7OrWbfpJa518rSfTuwHwxTgCr04/M5IZJiaiGwAKTBCypvR4BLv/423EAk0V3RgPmzaY/8c
3+KWHbOpZF3wdZhPsI7hWI2GbjYKY2oVhoxRcBcbww0JJfYPkKP85eFB5mfkK0XPTc/zDYIJwWZd
eXU6DGJ/dDDPIFWb2uFPhsQwTVcJ7jIDSTb/w+t/DzCMO7BjJsB24PjZEEFqorWEotWNDGORKTQo
YhlUCT7+zxklgZnejBJmdr8vAiA/IdwUXi7+Mv+RF26dUfjpiPz8OmGNNXDF4bC2l3J9EGrVZgg/
krRHHFP8MGP9rj3cOOBIYhkqXOHCKoa7kHnegZyYYw3Xhpqc/ULGdd9TmQoVaf+BxYKT8+6+yoGE
FXq75Z4hq8q3nPwf+4akS6wk5PNzquNez1H7o8rv9V0I7Nc+71djnNZDQiYAASgiUL9cXcush7Lu
hLgsO5Jaj786WmlGLBEGKWgBs6WYnLYsOtyaNvqFSiT6cxjIGj9G+vzIAUKtfadqcddh2zVG3fsz
UYT1Ch5L6oC/CRSYi8tbV0gIGHfGl7fm1aUkH/MdH2joetWWHHtwy+tMeEjOzKXRiDU9q3on1hKt
oFzSXCXLCYJqvMMikc5B6Bi0D7W953GxBzOQWPhUeg9a+wat9J0mbUqrHzCwL0MlgBcaw1wboEPY
Ljs3TT/HALEIogMVphoviP93L7X0Yv9U5bzs04+pnFGE00kcf2xfMMu8J1pitMNOr1A0LpBcIfu1
s2A3ojVwIYQ/54eYhIj1wW4cm/nKxaK7rZIEmdFi1uHckexCsO1O0Sx/PaVdzWSLq3Rhenw6NLQ+
MdTaoMoZuWQTN3WYpPUP3vxOIJM+0njtpFPiz9jezkx8zueMl9BQsf11oZkinEspscDSkubu78jK
sCx4BsD1v1qgW9D/HTnDfnqFb3TrBLBNmBVJnGr7GXRSJQWzQh8RT+ebyETTwwg5jcBowNBLZNPB
xHT3GQnlyHbGzp+gKMneDFzSf9WoyaZyPaKjfWcJ46HLsCZCblwTRl9C3pgM/LwSfb9sICmdw3UA
PJg4W2Qm3bL+T0Bl2WJCaIObDDRmrCDuNdBhTzJbMrYdCXtPp7pPbgwx619i6t1fi39UAEZY2jW6
bVbH2C6kAmso0tI2JhI4l877fH/VmuKrMI17tdFsglie+GGuGgIRspiol/WZh85JjGCSrcxw6Lmf
9NssmRecUDlO8uOXDeyJE0DcEhQ+uc5YijJOJUerEGfsI4wYtV0BaOzlSS0QiZ6yNgZO7DHNDQAd
A8pMK5+OkZ5cX/JLegJ4B4B35SxX9tpsW3SbejpXuXcqIOCUGrE6AyPU+vKc9CN+w5WULY+c/egk
NKoPuYjOsRRgJBldKnTwRnzZjCTgLhBSY7TXW92yvmVMcNte5K0C8Oen6OJXfUH2D30KRebpuq9X
h6h3YoaV5lhU3Lwp6tzaiBNtxYuQSAd0d9GNIUnquenKAqWObsgB7GfpfGkxRgEr6mxRhUA9lkXX
ZghbRAv8awdBZzkmAYkMH2kkP1J40PJrLzuSQW1ZDQjp90i/ajSODjQXDCYnde2h5TqPekjUKzn5
D9oKGdtvHJwbZgVGZLU0fIYcfUd1bg491s3F339mwxon6BYPHqHrh/U/dxke6gRQZEKtVvPY8YlG
vDuWivlhUeObhwldv/o7mW6J+P/uQ+K9DT25hDuVm6X4r39ioAEZUHYSfZ0CGmkRMIy0C6FJ/vik
+vDln73nCAM+0DW0o+td6qgvYmLT0oKZX1XdQqTx1Lg0jNilIMRonF8VDi/gq007oqoEHmabEtYo
fZCSi2G6RilEoV3hRo3t9F5WO7jq0WhMsPj1e9ayTuwW3LWLw1lunAHzszLwFCpHuDMb7OuzASLj
IQLAC7fLWbiGPAIgIIQp28lrnUHMFOHdH7UrArlb/amSCU9lHzKSKvYUqUjJaTSzWSRppw44LF4N
AobSTMNB2oy8mLssGiP7MY5DyyWDFyZVSGw5HWloDQ7EzRn0T3DfQ9mScHaSHMIu/IJlubx+MNbK
2RbZuyUvNu5c3R/plrKQ1WkXHp/TP8TIpdxTPNKzYYIEgibtHPYpLpZWV/xkjzWj0TG4wziaQBzm
/W2X5qm/VSQDiGLBFxx9A97lAlNj1wILWK9cPxRQKQGmJUOvvZT1b+BsfdgzY6/rm2m4DJz8SNT5
Js1CJVfSYf36yrG5uN/Td53Q3eRfkJnPugNpv7gZKJAcfORJSPVSbzReSdM2Y7DDjuYHFhwy2tMZ
A6AGGGhs+qPRgN5Xx2cUbL+dTCYPDSVU/xmEjLqaphbKWlWUWl9a4QdDK4ExvDti/JgfxJt9NRgL
r8DRTHP7L5FQft6WjvzeRMw64eBO/sMhG7bfgltOgWoa0rEGllyE9uYjx/RlJgIjqh6wbUC+DDli
pz4rQd/czW7G1IHQX1UXpx8I2Pytq3WzpQpnRoRdDQiFKEvZX8KGsaX3hK1+/zGYj7S7ikHfb43b
omvdLVB2NC0HsNPOdjl9OOaN4HaBUya23iAB8/Cb7S8r5q/0KTsCdbSkYxm0RqnLNz8YuM3aftVf
s6rqBxpbEfHgzH4odyKg4ebTlAxEvzZzJrxLKG8wYHa0OdvMXwgKG8F4LsOAw0nactZ0AcOxcx9l
8SafWFfCzJXopzoFDjZVLKsO5gUs3Mi/xVMjFWrQxvwtEsX8bQrhFddrazOIw6vvPEbgc8fFOeoX
PpiCM/Ssy4RxFr4svhdWqUj256epOKIXXkZ1pPsX6Cz1wNN0WfQBazVL6dwRZOgTp2Ee+BNjT4dg
tsADH/K9KwvTTNvreeY6+sMtzT2JpOclFSsGemfa3nGPLPjuL/Ja+3Ba4Kgo0SYzYTVA9jsoenW0
+HpONLuzfqP7fkLJcs+ZKEPH01GQyIAWUJspw90kb4RtH0BxxxHnPfMlIDxJ+/54aNRxe4lx8nf7
sjF65UQ+t5cf5A3uY7+zmDIUxT6QOGd5dfQjwtnNJ+rxKjBti0tP63C6QrajpbUV1I2tfkim6rAE
hC40MW+QLZlON7WhraWuvd53s3t3In93cpyU0rLDA03JW1b6MTrZ2vtyKDdHPTaiG51Ss1YaEIgl
jZW3oxtNd/8ljSYgFLoalh12IUjdlMqj/IPf3bxMXAyaW9/qk6FbuFn5jwD/BnIkE0Yp53ulXIfK
0W1LdY8Qsvc=
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
