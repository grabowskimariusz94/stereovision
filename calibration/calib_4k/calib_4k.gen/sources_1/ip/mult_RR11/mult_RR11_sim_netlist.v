// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:57:45 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_RR11 -prefix
//               mult_RR11_ mult_RR00_sim_netlist.v
// Design      : mult_RR00
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR00,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RR11
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
  mult_RR11_mult_gen_v12_0_16 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3824)
`pragma protect data_block
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
21B2f/s=
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
IhTa9jIiGJpYlvaN0AjOtrw8mgWgXpQp52zWRR9s9DcwDlXjH0xMiXpySBOKtxO489Fhd7VK7ngk
oqWNRKdpTO3oo+zeemuZgzxfFvEDR35Ko5ggItnxehmvzsQqrF/ZvzSG96pgm6w+hwfAlDaKUvz5
2iM0oOeHbiZOMFeo3ZlDLZDwH4mAEwyWgUuDqdK4qjxeiPoc5akur3h22SJqaBJAhgzATsPFcrw3
WrXDIKs6XXSVr1PLeZez0eF3doBx02iJ7mccxW8NU7ZbKzsuVjIX7OGT70XfAvICrv8ViO3i5f6a
KzGUTN8V7lbJqplBC3ka3WNOxnK6dpHawJdPwQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uFmqG84Tw/5ULNwt1O0KHq0L4h46r1l8KWbwopy36hVGQpZmCxQ5ArTnvjPkHVkq4lTmvFLkSboa
PgQi5ywWr7Il+gpXzpjzBXQ3Ykvm6D1zfMeIRIQVzozUfal9CdALkLEF+Rcx+BGyysR0FPsFY5NV
RDCXu6iHUL5C005P51qxFMtlYwlQzDoP+MaMwmPYkViR3y9Foj2Ga4WUPzRiO6r/eb0JGIG/Pfyo
3djTvj11/gqaoA+sxdspCZGWmP4anC3//sLCTzoxAIVZ6oGo3ATZQBFnVPusT+dLy4LGde6dMS5S
YEPtYfaINNRsDWYvdvN0Y9Z+//wXeIRCEM9/dQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8528)
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
