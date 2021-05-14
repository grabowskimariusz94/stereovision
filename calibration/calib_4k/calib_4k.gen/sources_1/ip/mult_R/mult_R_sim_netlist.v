// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 23 20:16:38 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_R/mult_R_sim_netlist.v
// Design      : mult_R
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_R,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_R
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [12:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [12:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [12:0]P;

  wire [12:0]A;
  wire [12:0]B;
  wire CE;
  wire CLK;
  wire [12:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "13" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "13" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "11" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_R_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3808)
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
IoSxZGOEoDvQsTjAg+8O9fgW+rcFFJCB6QcLmke8Sx597fAK6BckLkM22tANAqJusAMXMrUzseSv
qnPWnBkovaf10l0UgPzpsbTypFaaCFMuvNPer4gKXcCPtNSvX+lAeS0PI5uw8Z7Nz9qkc9OcTKRt
LJRxj3wqWr5O6X16nDgq7WyJyncafAWcpcrh/WbZS4vLIc2oHUT1iOSYYkoBqZSSPGexKgWI9GX5
teauy1sUEoWjFMecNWMjU6RXj4TmGPt9YOzJ+Z41MYodvTAS0/1Gz+W7y0SfkzESFo7DNpMWA18x
imxPhqtatxPCtJGqpXCnUp+SXpya9whRbQ+U1Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xo0UZeIhgYNEJy22oqSy3yP4FyaQFm4JkWrsOABh6+LutnLOYnw29Ry2NvKGpfRF5YGj1gOzi8j8
FgFaZBaMjmDMfsur18KabANkQfxS8BI8ZtqvVLhQhjY/sDs2t4czkyTioiZcwMIIB81E+5dUclkB
cN9CNpa/a8wPObVrIPCFvM1XeSRuWsXQqhj5U57qguEALPWSI1oTvKWJly2Mp0OvI/3hSGbU75lJ
JvZH5KaC+kNnEVJfdcuYOWaMxI0VmT75qNUbcIhUbbICifYIpQAu3jdP8ett5tM+RLVGIYn6TXA0
b9dj//li1AwKew/VSeB/KlkOlVn+rkvO/Im44g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8704)
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
