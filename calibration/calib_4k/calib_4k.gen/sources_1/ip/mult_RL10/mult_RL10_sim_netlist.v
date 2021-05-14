// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:59:38 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_RL10/mult_RL10_sim_netlist.v
// Design      : mult_RL10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RL10,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RL10
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
  (* C_B_VALUE = "10010" *) 
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
  mult_RL10_mult_gen_v12_0_16 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3824)
`pragma protect data_block
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
gDKG0L0=
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
Norcq5DRG3qLVKu0J7FrbeWNzGS1DdeJgY/aOZlgS6p3hCGnLv4df7WMKa8R5Cr+VXuGxHfpMHDh
K6SNBIOE76g+LA5ZkONelwGLMv8KBR5u+RU9Awmhr9oqT2PC3dLMAb88tCDtdIS2bVRcwRB+oElh
oDmLnC8twl7mgt42l8h4uuzdmqp3zBjsixqNU5t4w1BZ0zj4ma1CZXmVMewSCW+8u5gzQnKzx8x9
7K1paeWoHoHrg2Ztfw9xziXWn4i9oSV6JH/Xdlv4ItZtrFMuNxxMmNKRfNd2QKiXOX8jdNliap6H
cfx3MQU4mxr7lplpFolup7uxobpLZBvCN0Ydyw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zPwdDrM2yq+3nre8GWKgUA72qLhH+d9AL4cSLiWhcyxAxbxZVd4XvG775Jdl6WmcFaUxhlINpS7d
eWZnFXOjz3nrGbK3bB14mS5RMNd9OTfZ2dsFQW8EL5pm05rR9CIVBxoo9h1NhYBwz7BjyaED9eNa
sEwJlz2ctWm8xzTbZOORcCx3YzdrQgLdHxJtouH4DDI14XDxGSJpDIlNaLvvFXfMpfUAiRgF+P2v
e+RyFX9e4NWeJpolgYiBpveXjqmK0T0G8v8+43E+j5mHhvJU4auwb9DT1lLAHuxCVonj7tOmNZA+
ZDVRoTgVvCRXSTQ1YXI6G1P+b0ckKTXrGVr5Nw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8768)
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
