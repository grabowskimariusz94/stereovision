// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:57:46 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_RR00/mult_RR00_sim_netlist.v
// Design      : mult_RR00
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR00,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RR00
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
  (* C_B_VALUE = "11111111111" *) 
  (* C_B_WIDTH = "11" *) 
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
  mult_RR00_mult_gen_v12_0_16 U0
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3856)
`pragma protect data_block
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
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
pdLtpui189Vz8fl4eY493hn0RkOVUwYAvUEGauv7Nu9GEFJX60spSvpHuB3aDnXmVxme+ecT4hCd
dY5tp2+kPxJX+bWkWb0agOGpMvR4GYtBMtdBmwTsH2X4C+cgCz9rJCDWJcwVP8m98JXxhWkWuTtd
aX0+IcZphH3EYVyMwe9QL45ARn4rC7dHrJcBgs2WatJ4pz2BSxxvrBJJl6rtI8FFV6bdKvx5lPJq
pmnH3EFjTSl8/42yPgg4mMjbWyUd2Z/MvRvmOb8C+TljHOgXzan3NrgO8D8g3+nSYBVhQFdPA0Xb
pk7arOEYhnK7ja8JEXdS96HT6vnia7BSxffaAQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EFuQMGvRwPjD3WyMUGhP7hC0+JdIQEFCI4Jh6Kde8Xixq0kM264RnEZymwo9gqY3VUXIZuVzZhVm
/zuBtf4hGgXowqQ8rY6Jnm35JyUhPt4WppbEW3PyNINZVDs7BqLDhGAqCN9GX/vnFCz+sQDNjz6I
tnOHg87UqqarXA7wVKH41S7zrRxMNNeCkxyiZqMzqlt+Kn4S9CNpv58kOnbLIbWlgA0pf2+wO5uX
pBs75Bx6s0QQXhB0sNTOnTfWpwNZwTynjIccliVkLqoHux/7AoKsltXL2i7+sbwyalN9y9CMSH1p
NckPmZuZ/6R/523vcdNhAGC2V3sk5TRb4QbBEA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8640)
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
