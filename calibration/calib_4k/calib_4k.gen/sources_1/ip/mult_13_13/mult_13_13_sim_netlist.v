// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 14 08:34:59 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_13_13/mult_13_13_sim_netlist.v
// Design      : mult_13_13
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_13_13,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_13_13
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
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_13_13_mult_gen_v12_0_16 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3824)
`pragma protect data_block
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
W1HOqlY=
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
GayjDEmK7MU5tgjucbSVizFYUeGS39CS1g2n11JVmc2BMmOAYt5la0KGNbMIRnU4LMbV9/9B9p5N
ZNlFjdEvtS5EKmG4Sn6gTwWI4QqyULgVXBnN0Iph287VvcwXDdpnbpNLEWF3/gxg49K3/EqwornM
/glonvmID39O4hrjvBqJOlHfaSr3WV1IEd/qAJTSnr7N/teP46pUX3nsuKZwmN1aQLS5DfJWj4lo
ihjr45vS5ywjqbzdjMxakgAl0CrBHh5a+udq6dNUgtZm+RuAbNRDV7tmOmBAcCK7thCeHJE3YgZh
vkIeZAo8CA9ygFGqqCk0BisBiufCIJ0e3AFkHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Rm+5PDV2YC3mj0pkdV+5ja5oFQ5BwxPZ6bd96CfH3O6BufIyh1lydR9KAjqeUxQdLX/GzjFKl3tF
2CizvIo5jU0oCvq4/UKc5J+GrbDnKz4uFIxt2dcXSQdtOSN9Zvcvw0HjuP9ZYnMe1IpDkDro/2FI
hPcv5VTEz07X9ZLBwQApf4339oSZ1mHlwVUZUklIdotJozJC88rcvgKiFPK5lKJmEc/KnR56pO5R
tsjuPNxRw7ELoHIAnHZOh7DHy3ervl7xh36LlCv4E2yD37jrbkN8MWuy8Jlu0rhRLrYtXBOU9tIy
kwbWCS0f7FNqiRdoPqF1AelEz7oamSUdFex4OQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8720)
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
