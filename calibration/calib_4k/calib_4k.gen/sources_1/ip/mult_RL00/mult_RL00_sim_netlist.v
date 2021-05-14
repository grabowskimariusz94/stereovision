// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:57:45 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_RL00 -prefix
//               mult_RL00_ mult_RR00_sim_netlist.v
// Design      : mult_RR00
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR00,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RL00
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
  mult_RL00_mult_gen_v12_0_16 U0
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
oLXn1AQ=
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
