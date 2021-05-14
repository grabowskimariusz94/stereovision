// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:57:45 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_RL11 -prefix
//               mult_RL11_ mult_RR00_sim_netlist.v
// Design      : mult_RR00
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR00,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RL11
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
  mult_RL11_mult_gen_v12_0_16 U0
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
Oc+ljyQ=
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
