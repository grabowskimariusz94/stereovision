// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 13 23:49:10 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_8_8_16/mult_8_8_16_sim_netlist.v
// Design      : mult_8_8_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_8_8_16,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_8_8_16
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_8_8_16_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
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
D0/JqK3/hWgp+SaTBqs6LOH/NKnaySjQSmiMG5wGLCb1hE1plmmThDsglluqHkE+y6XEHZdcYiSW
nk8J7qx6bZCCREkSYSSJBJ6dsz82WluTXA9pEdq2om/ws6Klwf/7bta1zbZjz1F0x9Mxqfl9dHrV
vAsmRDGCJ49zzzIYDMh0mQj/HSQpMbCc0AMF0Du7DibsUJjQuQimtxeCchxU752mTZEgyV+ipxV2
3Zaq/UdC0zleffi5aJnkjd4oiaH1UV06iPL9dCycnoketi/Xlh8UT2zZuteTkRsn91tzjSMgh55S
dkOzZaRBcKrA71AzWZZDnACsKdps82uSYkFBAg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sNmk9sggAagjcxCIIJrmAb0vISwaP4Zlm1NrUZE1qW6/f/55ye3saG6MspNEXX0Y3bx/ttw3iiq5
01wIaKC5JqV+eJ3Ks9vshSKnSBwehIlVUR9Lo+s1ys5zmL/vautWTVnHfOcxbUdKCS3g21lucAqC
hQNYX0XmNcfuJ5ocNKErBPzHt/s34eT3gVRbl3UwGXKzWtNwgHUbhGsOwjTl4KHURW+Px4HlxMnO
p+cgyGcGNmAynogh4C3l6TZhMmftXioMeHYk31LTry9mvYEY+y6L5Zb174/c/xZJVzVt8/FvzBdd
xBXe03Sh+2TJt+wv4I7dysIbxdC0wu0VGSIl5A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7664)
`pragma protect data_block
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
T+D6gKkQtlAXzQl9VVhvOc+lQCG70A6K/+s=
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
