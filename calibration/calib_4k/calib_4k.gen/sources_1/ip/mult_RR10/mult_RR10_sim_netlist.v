// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:56:09 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_RR10/mult_RR10_sim_netlist.v
// Design      : mult_RR10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR10,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RR10
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
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "101010" *) 
  (* C_B_WIDTH = "6" *) 
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
  mult_RR10_mult_gen_v12_0_16 U0
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
Zrp2JOk=
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
ligIlhIf5AV4o5kVbovxezzXebxMuORRGc/4YD9rTKhABt/bybHKIGFMl+xsbJs7kfUE0bP5jZ3d
RL9XVOiwwi1i6DIPrPL8cGZACpq4S4JCwCq+swUzAyNUFnWyb6P6R81M9rovkcDxwGmxiuklWIFC
FJSsWGvpidlziFAx5p6DdO2m+RfQ7J/QnmIxGnNGktQd/k0iDTZuriyzNIg/ksdSWbjE+IQGEjRE
7uwKhl/DLTLGliE2toXtyEVMA4RVITI5tBLZUWw4WGZJUADBjuX6UlYtr9qIxVC8p5gV5RBZWdMp
M2M55BMQNEVHv2Yv6sy+yb+UkpCx/1P2yxeVPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJv82zpjACNn9vJ8K2zOahaT3SmQ9zZLYX8h1pnFVwIprtklJme2Gs0BKDnD6gih/jlZdiM3XWPF
H2A5OAsCnC9gUxCnMWPSoC/FK6j65eXuLELGqHrp8mQT/Z/UvOcph18fP/U0lMJ5QWqZpzfZVUkj
achX4cr3Y2++bh6PoMn0eAP9gtT+T9dh/f+xwlfbJkizO8Nbc+IoUSErwy79XBhFHuNYOiFsRto9
NmU8uzWDPi/cNZ70VCirr4vE16Z75ySe9CFeOQX+Rb92wlKqBPzgboErGIk43YZCbicP4M09MwDL
UJc+DUyu1WwDQoKUiSb3fLMESvkFFZRRJXDybQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8752)
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
