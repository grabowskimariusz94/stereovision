// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 11:53:08 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_fyNewInv -prefix
//               mult_fyNewInv_ mult_fxNewInv_sim_netlist.v
// Design      : mult_fxNewInv
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_fxNewInv,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_fyNewInv
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
  mult_fyNewInv_mult_gen_v12_0_16 U0
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
g0ofRvZ/Z9XRusXvCFTaP0W7RX2iunNCcGynFDpj+D6KXakrwu+NPJJijwLHbZyiKHQ+/qXOhgyf
iZ++r8nB2qYVabddN7ohH/UBivBAFNmCTeBi1TJu51YZ4cPx6cKiu7fOlvTGUhh2/hAj9mxkL2zD
V90uGvPf5p8K95AsBshyIJiSe8rxbT/tZD6JcAdSpo/TQX9QBJZBkaaw8glZ3QVqVkwQasDIfjAt
NDPl4kfyWvbR3YyXuJiNNCAhtkO4Opee7Zh8U3iiAjsu9mC7x8pOAd2bes/2ni7OkTaQ4Y7Kxb8U
VpoHc/UpGkkXGZi/B9dnL7ZJbojcf9ZXw/zQfg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bi0/ENFMELdxvU6bn7FU4+uzTvBQIiMQjdYaZgS3FKp1frIo5EiwxUVO0M2edk410Phk7DxbQdiP
cj02O+ILwAW+rBbMb0a6qKMTEHY7SFm2NxhpngCJCDc/eNqJRWt3BtLU18447vHJecCGJD5T8wOJ
e8f6z81eI+1fRSiTnDq4BVBkasoLb5goAxj5CzF/xXQGV5oe/1DI9ny1PZJ3PWtFsfMF6nTobW/X
ZK62iT8kfbeMlbPoS/4yTSJ+lrA7utR5aRlGDzag1VfEV41iKLpOfRAvzVT+HV9IHYG9Ir66hv9A
ZjVXqnUisUaFdDGP4LUdK885qbwsmc/NjPtmJA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9568)
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
