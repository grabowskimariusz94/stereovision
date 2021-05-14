// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 11:53:09 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_fxNewInv/mult_fxNewInv_sim_netlist.v
// Design      : mult_fxNewInv
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_fxNewInv,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_fxNewInv
   (CLK,
    A,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [12:0]P;

  wire [20:0]A;
  wire CE;
  wire CLK;
  wire [12:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "111100110111001" *) 
  (* C_B_WIDTH = "15" *) 
  (* C_CCM_IMP = "2" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "2" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "23" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_fxNewInv_mult_gen_v12_0_16 U0
       (.A(A),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3904)
`pragma protect data_block
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
A0NBcaiAxu/k0MHV35eg6/v6un3L0p7OiRl7Zw==
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
H1kPAebj5zCYW7HGTX740YPiTJcVaROyuIwv407b7APJNhlzdk4MiWMdHnoa6J4APOHGRz9Ivdtm
B/oAoeikcVNhMVws13wch1FQCr73qrrwtWClIlEj0jaynSuQFoWoPni/HBm/3tV+48pvNhcrabuY
KW5OzmslqAd3/Y+7n7XCLlLqx0hn20q15PocPoA521YGbIrjLzQMqKhxJLm7qy2knTmnzwvwYOU1
mo8FQm1YDoC3ed/kQnhyNImTl2EwHjHpxJV7byS6JgaoEYMx8+l7xQFg2885N2JI0FhV6IvVA7nz
Beg7lLVxy8Nk/Pj02idmCl+H19J6QXFFR8Qp/A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rvraibw0f0BR6FBRJ7Sc7V8KljOwAscnqOOcYuz5/q+A/ya5LR6lyF0+Ik8x3x7jSFulHb1xcCd+
nUHNb9/q0WFr9Q+rG+oeOHFNBiTvPTZg15SEWVACqINfGwFzee8rfGOPHy0pronFhRVW2rKqNEJS
KBDq5LEfZ7OSOH70JdoQjeNgudkQuirEHn1z/Im0nOujB4iSXlnhQN1lKBhkJAfnD1Hx2Euj5jSL
+H3tLSSXASJR4gaNH4jtALlJ1fz4yAbYMHsdXTV5AF39MaGyxm/FI69pznDMkMEDNObM20AbFeer
9Dqz9rzdaxuzkIKUYPe0MMAPtk3NCW40of8oYg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9664)
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
