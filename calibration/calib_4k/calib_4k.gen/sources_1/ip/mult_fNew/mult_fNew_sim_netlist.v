// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  9 12:00:04 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_fNew/mult_fNew_sim_netlist.v
// Design      : mult_fNew
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_fNew,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_fNew
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [12:0]P;

  wire [20:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [12:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "33" *) 
  (* C_OUT_LOW = "21" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_fNew_mult_gen_v12_0_16 U0
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
Qu04Zb4=
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
InQplDCipGQ3asoZvHnT6jOYLWAQsjVwXB0GY2xdFDlLFW6NSz4+GTAqMp+21eTXmzAhve6+KKjU
YQT2YpMKlkYmZEyprfRTb5bLMZOEIlULMS0MXOzCPy8SPmZeQ5o1kwKAi24grmfrLt/9dPtOxbB3
NJJNh6NVfw76yh1Zk8bjnw878FiMlTFF58UTiPciIHB7JxT7rgBz0SpZhO6ZL+/PycpZM0TkGx5b
ra+318Xxb9vVVhl+wQ0Ek7gU56myogdpqud4lq6RA9stvkaDR40DvLBmujLlKiaaCL2htFSIe97p
QSC1qt3E/fmIufBiK8SETyJJnNXQm+mdQSK3xA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k+55KIixr7Ah+Usroc8nVo7uavLpSMCCYAZULT0kc9JoyU9OBosKyxe2JkzisSEHglz5qN33hIOQ
tWf1aW/RHk8ghDuGU9P/MDXhB24iGf6EtLMhlj5aqBOBCGTkqX6J84ZhJh8fO9lWnyuEfoFhT0YU
K6g6LfBCB7bH3cMXgVpu9Tl19JC9WkK6YyISeHrQtxZmIpbEQq09auXAOCawxj7JpYh5F6qMrmZy
Le+14otX0DOOboRqb3sPQzC6xzU2S/cBFbm3c3r0e6l9OXvgFSIoPPUEVHkG2oKiQ8cqIeqJgl3e
95sYuMBSBKpfASJKiDZ49HbzX3ZjPTYhN0naQA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9536)
`pragma protect data_block
XCbbstNmmHcIKfTIfFsynoSGeXwNCI1GgmPlUSY6HxmAj6HYBtwd3hke+PkEOA/2ATCfLj5Stj/+
Cl85ya+lKmTzaCSv23OehKMy0e8BelXt04gIwiDbe/whlgSgqqH8RZlC/kUcDFs/XLIwkdCtMW2n
SqvDNA1faZyc0CU0xynkTR6bHpE3lh/lCmZFzj12E9ykDUXbvuGE/DaAFbR9zplErTgR/+1xH/qj
+e3ZMx8tcTe+r/o2CUbpOZD7Oug566CimLwfbpZmucUw8DcbyrQoSMM+fIpBfRqZ/1C9gOklWNcl
xm1ve2MQidzHMthFvoog29a5RmM3WA/qboBD9ESaLzszYdbMKd1Bq9vfIkE72ytKS06aKGFGz1Z4
+MMGgYaE8kTwdMCdeBaHcB+Cgt7r2KscFnqD5lL7fm92TEdWovgTSbLjubSYnVMgWm1OEkX6Gek2
lXQNNXcdpjnhukaWKUHpWbAG0sFkgH3PiXG0e/lQiIvTRmz24zFqlzlUtq/P1PVMmmaAOkySvdD/
sr8RmwoGVxUnAg6wcwjfcCsEvYJe1TReQ/PcuTT0EdkHpJwd+8Q0fjrIZ7n/ucyzbQ9zucnNvJzd
S5ACJkAq+1Bi2z7o+/1QoZPuRt7F7L6CwISR7k8TIyB5eNRiYRvBvCVKhBxLJ77hHeLAqAXAY7ML
wUGfloZCJkgYXjSnxEPwW0oRZLJdvJHKbH7tIbdTXmvmVk3YqmsDscpd5sVSCE4CXhW4Mmg28Rb1
AnGr25r31JnuXWQT9w+3uoLG44t626NnjueXDp0Ud//vcBiCD8q84wkSVFxSkPyLyTnpQysfYrPP
UA5mp3IXVjMPPKwj7UiXwo+pKy1hf5fgQPGZsoelYyvB4YWF7Ocg61oPWGhskcIKavzx0+RSq9oq
62XlWnA6uX/0Qr7iyyXZb47MOTq+hC3b3NcKRNs51GOF/1dTNm3BtcE+crLrOe9miBkUxf712wOK
SGrv2HJHIGOM8mih31ggJLuNpPaLuS+cA8DfoFpdGMfjUaCh/9oijYPKb+hGz1/N1Vv/S/nza574
RNILCk7mGbP3X9z0UU3/euzjDSA8Pe4aKXCegEq/UfINwRy171DFGfwO2gSaMm0P697XuAYhGiD+
LF+3wPQbXlknhoQdRqFHmmsYieZqcHZ1R5sayiWGIDIdIRZU2jKqBQZ8CSO456HgYBgzhySAe9kG
QgbNb5SpItAH2QnooHYf2h1lzi4kXRimkGSU8g4AUBREecrYIH7Z8jrXFdQNPDPg0C/ECZiCSZd9
jb/M5hVBWalQwdRFkuBcVKG3GSWixxZiXR9CpevZR5Q0dcvrUYrC3tHiAVWJpbnyAVTB41y6WS8I
OTcnMnarC4hm5INtI6yMM3ftPaLJcB52LkkIbh4stz8PlglvW20BrHZykWFLBGGdOdYBzyoJQgby
BihE2rsidVzlBXWwXMMNj3rzOFzZhrHPKTC1yODENya/K3M8S1H+K32I+UYD68/dV1JNsVqZnuzE
qEqDipQrBMDCqEBuLYyKJ8bBRnhts8kKiNKG1ZPPmzSw7Usk4l8c5QwWPk5vQXZ88ZeM7VIuSbSM
uKYU0WG/QGZHTM8MwPDqc99YVqCfSMFLBGl+3Ut0c6pN+fLjqWaiFymnvnSU+zk3AjIFRvgoILxp
JyOgfum7aqHd62j7K8w4NBnNWOru/YzgvSK/XlX3jOL7mu2TIyTY5hXDqifrglAWQHWdXeYF6ToD
SbwtS+c/WbQTvuYjRhu22Aj70LhO4IFrrUip2/aDwaxgWfjluvQkiPsetolFpyCtx4FHXBd7JV9V
PYMwre0Z3Ku7K6MD80nliixnDSdhv9kZ9h2bhaP2/h39TwTBKBor5U0ta4jXpz/qZ9WzQDWi484A
WISdNfhFirLKkd25UfxTxgOZeJI2WDb4T7PaN6FgZygr4tn1W6G2u5C/TPUyM6NnLvk/sWz1XsF+
xFTxLgkFRbJRp4IyQNFFwDH9Y/LEo8YnaMq6PRP1Qy33q9hzlQo1aL/e7QBcna18kKVbT6Rcie9R
fbBxqgavvjJ2h19FBOAdzJx7lgQpcBY9tcBCh5ZAW3FqVlQ1Vx79ECUsgfAnwpDL1oN+KCKRVk3y
2Y2a0YIIfEeZetyu0DpzjkFugDtVJyUp+ovo0H5QFHKT0YBRewGZDUmJ6LFmJXwHJ5DTqk61wf/e
XiFyYTX/sALMz+JMElXab7eZwX8BwTEPOhi2Fhc12L4qUKlgFxFCmwjvQuQ8dU1hH28jc4V0o7n4
tZ992dRk6H2rMAvw9YYQGakJ9fdS7w9A0j+qUKFJA3197CwKD4qVZGcdMSVY7GJi2U9rISdMLfbU
6TNPGGce8bueDECA1WAZTe8PjM7MCG9M2tzZ43/mphoDUDK3Du1RvOwd8AkkJZQHxY0he1vlwt5R
gKPdSsWaqJ7xoUSkxJ8HByJrPFbw5RxxB3iqBG1Hyq9Xrqk7XI5F9/D3ysFeCxkYTzU3lygXOg00
8DX8+wylxIj2k1vvF8qesqS/XuuaEz6AY6f0YNLiRa5cjQMv+w5u7thcy3tCuMJuJy3PXeIIu3+n
CWxrScW/Pi4ptZOoNHvwpHLis80ahc9+KE4fnsxwq0LavAvRh0Wl95fkFIxDCKAofopysdj3eSsD
OBtCBfw2HNS/jpW6TmWOrNcmh1alcNG8BqghVvY0jHiXTy1yvFadugJj6d2o9VVTHaA+v/dnzfdK
0Z4nnwTZTs1Z+VsNidrJ01slT7EFTtAHORbLJRGz522TUH6zStAm0iOlCZFkYvKoUukR+DPrIi78
YuQlxdP/rwxNVYZ9RO330Jke00mpXdwzRdqefzIWrPOoMV4LBZsdakPPheLOqBVmlpAa2UCZnlrM
I4R0mtmPhBnA/vOyO50UzKYJboUUEK8Z2y4nYTJJzxuifySR241OlsZQqo9PXNZ9tdur1cEcoN/a
jwzXzECJBbbL8L5E03ZcKyzue1TE6sTeHqg9ZTXax9WnqSzFX/5qt6samdAgnOoPzRO4h1DKTlyY
kGF9DR/lEjFx6x9tfTgKTbFr4jzG0S3JlUAQrAaQBQoT3cbPfDaLy+P/ScKPX5g2+hjvfRiQ+PXc
SX7+deC7f19YNWwTSlhqVUb7+aGAuE7N7p+fPfMaECEt+DtX6owITvk5c3VDFTQSh/Cd7f3UuZeE
aZEbRK+Q21FD+7CXCy0Dt2FHYB3tPcDu/5nwF6BPRWPYVtYk+HnLkj/0o5blM/GNdgjcIsZCKrFQ
0MnWqMaW4U1vosn3OeXi6QO4c/ti/oedTfi+bfQGwdPEjrWLHopVztQXh60xASkCBvkRnz+d9CV3
6cGVCzXQu9DmRNQlKFgTcfts6Wumw+7Bf69Pbnqb1KaJ2UwFzxy3BQQL52Ljc1wb+5MystKvBc8M
E6pKHFrekffAIq8m3QV5E+tZVQLVpuRS06HfkJ9IrXUOqO60dzr8S2XAeaWhjkIvZ4x4y7XEeLYE
TgEKJGf4KCGqpBofCWq5uNnrXtPd02l66U/jYk9kZI+CXSeFxlrfrPAoOgCjiV+uTKt5PBLby/8F
R7cwsk1MZerVuxYrsrFEpSQ6ecYp61Hmzn/jg8aAZZe5Zx1AwucPFsrvGYjRXPgWSA6tzD+xd7sE
mllg9aN1dqbavDNKcIOCcMYjLR1lJmr6hIp/FOkmuBTlvliWv7FHe02iy5uxdqjYDLNebydvG/i3
e6Ps3TzMaL+FSRv06WznPnZTlk2EYihm4y2PvPVssdP6rwmb5/IGxE6ytaWI4siMnwH28knxP+Me
s/c3Nif+ZhfOxe3fVVzUyN8xx0/xnS7Wo5DRPP1XlaXcvN98WVntLk/lKvsDQyW8ZxANdSzUds35
Dzf0+e1koSYjOZSe0GR0iwQDA/ktDbbGJvc9qhM9S8JKxwjPCVBZb2E3h9MZK7c6vpZcQReNfd5K
X4HQ4MIXRPkHADoJHIJ5fEVdgG9s4aJwiq0MP/4QIEwkNrvukX95qZBG0OWHz8HdBa0qTJOoTWBD
pw9bZGgq4UQaHzY9kh/Yb1QwYR1ksSy6O4dmujlD9D6UHPvMJkwzv1u57NRoQ4NQXn7cCZZMhlJB
9WPFQs3MfaH4Qbzg1f9v4GxsWxs/RjpPf/w45ImVF+uGkpSOPEKDYxAHI3VOlN5ZafR97Wog/cm6
y8ecs+cs6c+H8aJzrlcD5QUIemuSCCQ0g+wKmdWq4ihJjHyrtuIrOlJn5CLFaueX6hU1+N5G1bE2
eBIUwfpb7Nu67kkHuYNWgy3IU/MUnUxU5jXP+DOcgyADbZ9r3zjdAdhHO4XvsbboSVwmvUKZbzwV
ym3ehoOXFw17CJ6p/kS2axzYLxJ7p+JIISipdg+rHA4GcCep2ild/Kbp4XEZodEj3ygPvypnzMFK
7El5TJXsxWC6yq1S0ieLsoYmxCMrEgrCZpiBPVvbA/1mLA2RLlHim8ued7BJZdsMV7W2jtaeMsdM
wb9ce814Hegq7yJC5vhhAgOGQOCts/FjoqDaKRKWzZZTux5FDN6OuuuFybLWGEgo7MUuiZkBOt18
n9vz5Vf9uJHPM/CurWBrJyvAnPG8L3lEZRyI/IwdEjCZb6AUXEu9vjbE0kdgtDbTNnXDgqXQaWeo
PtboUWHjfBw8+z2sI/27MQdTMiaaPcTV7QWqXqYJvGHm5Dr1kTgZ0iP+P7U8WUz8d0zvCDrJcmmh
DIq6j/rhosbf/ypYxYgZEI0UgFhXJ75G6EsESAoHAh2537P33zzKbTmcLB9X4ehKnv9LHZwpbYZU
vq5U99QcPo1U//jyS2bAiTAxWxtjjEwVDaZvReoojL8Ma+UkxgaquFP0fx8f+kzKRkM/InguSgMd
rYYMUtVhMp4wW/FulQRW00vUsMx5o+dmb5g7mTO9i3bVaVZnlENlk3Yw8+2BJ3F7dSf1MCbXjMHk
TBkclG24ohleclEaNpI5Ve2c8NfHSiIF15202xX8sAzsNy4ryg6Oq3g/qYgcV/qdPvg4S30BF56n
sVef837mwfkUB26m8eq8Wu3JU/Sj0UbstGl20xn+RuuvTYHtJW+qEcln39HmDG6Z956ANRLax19L
2l9QNNYXaiTy7F9a2fZni4Sy4UTM63PWKknxyb8txXiWzlrB+IJRfCXZij/qBuXZCheMZNMfm/SW
CDBwWToewX2+uFZUl2gqEbFgoJdbmNsHxNYpuHEcUr5VprZk+wJOjJCw4MD2M631+uFplumNWhiO
LOzCVqwoe8uC9ioeEFDiMzdyP8/9vpGq2NbAoU9/uPiIxFaA5TjldmO6nKpFHvH15L0UBxvKa9H+
48wyTBx54uTGAZO3iwOrMqYLMBIK+RvfNVhnO/enRGqi2dmEPXzDoSNC/oZHCj4RZhDdJxthwv7c
e0A8i8YigsTRXT1Fl6N0rJ743eY7+deMgxzQWoOVWnC7HmUOdtsddW6yj8vRHwzNjsCgPh4CQTW6
ib5FBIWp3ZjGAgFjT4nVl5hrQbid9VXdCKdrVx+OHVhOiuQDy6dbpewXVyD5fZHs2PQEnPgscQ/R
03hZGU8Z2y7sSLcRkYJS+Ho1JtQUZNxGBmo1LfFfzCUTEtpX3xHZKoFKkgcdOJGlXynSYadEelea
STkHqef4EfAgYewUwDmfASsBmqqj4bx6UahD93/tGH6ighsWhZb1eS9Y7TumUARc7Y5msxK/pwsY
6pWWJS/t7Sj7i6gLFmRrM3eZTVpupAxZoWP3HmXxn0OdoLvl6YrduFJFX9BfP9eyxAAoaHa7jXlO
eqF2O5wrNt0XAQ3IJ5GmdY4wO/lGs9FSQqIRoUA9vSy/Du2Tg5v6V/GIZDcWIxIryu3Ls8XxNB7V
zCx5kkSlhnSVjab88jEPOIQzKhD+WpPxinx99PvM5ejzh+blyHDIjYZ61vvMbN1a9435nSBYfCLF
HMoetAFshOmQI9ws8ceIwhttV1t3fY0r7Eqy/fJeEN2+EkZMaRk5q6I8zECbYNjj/Q77O2/nCMZ7
pxWs+gzyBI96ORbe4Eue8KLBfnG506XqnGRGxayxuVPhe/T3W/nwlV9bYh/leIf5JK93gOXSiiB3
b6Ozd2luh12e+rKc+DbM23fbU5LHqRZOebgazEnHBzug9OTRwdu8inHKlJdoVeNm9RDc6LIUNhJG
zV5j0bxBmaDj5KQgdsIZmNxS+RhT0gG9SYc6SDwsrf6TfQYZAs14WAMtTXMftzy39tyIxk6ielNS
U5FvNYXJUMHCKy2MGnDsqmwm8BAG9i7NTQtYf+9TlLKmuvZTrfD0Mgg/Znrk5q++yjmPbLDYKVR+
Ho2UQFJSQGkszGy4c/w0CVifsvtTK+M7Q+LtC0oVoylOY77q0rJUIeC7HMkrcWL9zviJatjDj8VX
hLbjPhF7j/guz8nJE/bVO9+P1mMc8sGkMNEF2zwXfVaYBmQ2MkYKDwFTgAp4UiK+HezBIlg0bGTK
XpIPRVnifZVK3XaI72q8t9XMZqJ1+8zuCG8HGNlqc0XIEU9IENd3LpH6LcUiUNICUgHQjnuOZ2R3
mToiCRMfi9mI5pZwbyxm0E1b2wwJ59ycU3lDmnlJjk6LRh2X9pI9qBKu2f4bH5YmQ2/M+KqvlAFA
RAwFaqlzgjv13JSnyBR8wt8okmtNGM/FtBIWeH+6HB9R61CUZoVmmPte71tKxzdA1vbHdFVfgV84
Py2vZC1pRMVVzSLaS48nxgBPcSNfX6epxFfSFBlDwPhaX2fOZvu5YwPYyru5pQz4fLyIg1JAYcLQ
ns0qxeXhBRvqEX8qIJl8zPSMgC5IYLjEVfm+QU61s/+OS8ytGqt3ZOO9l5iiffQXC5r4iVvKSkoG
wFU8cT6/nn8dRr9oHFjBSEkbfeFrG0zG8myX/e8+uvl3suYA54j/bv24/ttjVUcYV5R0Z3FZdH3n
gPMP0ILbifHJa2jGPNa20AKSoD5Ac2zh5MZahI1/6hl0ZpLlfl+WfUzHOItLLwIiIvA1zhPrSRTs
GBlBmRio6QOdoXUi++BJGyInRbaujuADK91iCz+XPCdbKBRlpBgKQASarp+Ds/Vum793agkd8i9M
02wEx6yTrSTiY4HaCgzdg2aeALIy08x1bHPwl0TWh4/ogIHLGLH4MdvMzK5uhH5m7iRRMOx/QCbN
bt/1Ek1mUiwG+zWa6n+NRGBTxBJj33CSdYd4ZhA77mh9NXsECg/M1lTJZtuLEu3XaAqiZWvKdHn0
Gbr/1rp/TOnowz/aqF/cEYWgxHl8p6KIrDbTOb2L2lVl8wphcefcDluAghD3zb5OHYVUpjKw8a9h
9FS8/04G+5S3sm/dS5nY/tA9XZKOrmt8K7G9XIht1FqkfOO8QVHlZS57EZlV/5liRiP5wJgGmFmV
Q1qnRb8Z0+QOhv5H0f/ChZEzOpTJuwhUmyUuLCnqQL3ZfOygoSwL44eOJnX++dzfAj/y7APl7VFf
t8fXDyrg2Vp3QVH+y6NfWJn354zDI1bPrCVwF/EXRs8Ci2F/xX/DssqYgvTWvMQqa1GbUH+fRYV8
wABX4B79edm/P9gU5LyQIhF1YVbo/YcdNkdmFcDKjmVvTkt7q+Mq+eCjo+Pngl2G6PHOT4IohI3A
gMm2GNCOdS+oYgMTuqiCTPWq+KD47N8Vep3oIxk7E9vTRIBvbSpUm4Wft1Uq9RhFLWFvnmMys8P/
II8Kq+OmsYRkeigF0TlV75YGJHbnuf2HMIRLpnFt3WsulX6+s+T7YWk+Va0wgKGQzVSIZYclf+in
1zPKqvfevbjn/wnDSFWXY0h5vhWgWw8jL2UY5PEihlnMeXBq+wtgU9dzOaehZCsivj6WyrQxjHBE
Vmly89+pj+i93C/fIuQCwdUekFc35G7wEjI9WWwKC7ceN+MgZ/aqw2KNJiPtKhMbwHSH8O2M8o0b
4fKwpXkFEeMyDbfY3Q1M6VO7JFL/jOmyPQLujdf5eH1S8LmyDskKr9np/K8EdBWUqIETplDEDH71
LRG8dior1iqS+txLpNGFv8byRmmF4POfT5roA5x4bsu5WoMol36WZuIFl4vjoWuqJbORWM0baxwo
s+3KY4k+qvWAZk4bOC/5JhQwUXAqHIW86RGq9sJzeXO/gLN/8+Rw3uZwxWHpitNe1sl7NgPsVm4P
icMAIKMU7MEQ/uC5kCU7CUJ9zeI1Vgi2eTunm6MFHBQqZCLnGwjP4BVB1CAAiI2V9QhlqS6XWms7
Me1f6smP8RhWfX7qYJoN+xWG16ZeRFAQPkaPqzIN+fVyaH3u9bii8b+O7cZrSLKfwS6X4N4RO5HC
Gcj8J5PsnLAEriD67vTJ106QyIAwne9cGIyTmmNuhzoL9plaLJzXTn2SEn4k2IGxkRhUQRLZp+rw
1JyHnGT72FkKuHCBuRVm1APSkTtvCU4CEp9Fqj2X2qy3g6btlRkwPhiv77QzpbW/g/sT97AXIdp8
NdxfsASc2XQwb5dAVXR6iWdfPFiMWxYSAeDQbl2nwRH8n879fDdjufMV59BZ3ffyC9BFt3i5c8LZ
/1HXJC7qCMn9OQw8JDmvC0PnifvDtpsgjzOpZ9PB1vLnP91cqzrjuGd1DNMQafHAcz/m0Q3NKQwt
MmLid+Eme4wNCASuutelS06qWnhC2iQ04+NWge6ZeDaf8x07ab+z2UY/u4RFksQI9SeKkCCTMbOU
/+WjoVhUSuhPt8Dp43m/7qXCXMKGeocs5rc5d3YodUuQAR3IPxLZCyrWosZ9TWuvC1vGGPd0m13A
RGz2wgh9Z5n0dGtNOUzpy5z8YsZT++NtD5PBYWpJqgk1nxqiCkGAYvHWCdLdFW2CTpHiphbnJKyB
IHSictCvXOaKXLatzsujiqlH4qPth3EaZaq3lHQHFnWlD/iZtZXYBJTrJcOwYc7vNVr9fyIIO3SW
lrC77iiiDcL94Mouq8S12VFIegtJHMdGzTMRmw0lLWSjLPM9ulT/lPxGNjbcUHqm2wqzveWhrmKZ
WA7GRM14xlz+G7nJOTiZJWJsD82v5XUWSATTan7vBc3w5uuRl/+wkWIEGNVGhRhJ3typILOH2GvC
WP05np9T2RfYwds/w60nurGSWefyiMCHh+hAoqcNwlmJjd/sIwSu581oOi5HP3vu2543I8MjdjnU
DFOGOYGE36iscP2bZD8QDx/aCr/Pg/UcFPOwKZ0Yhsc4SwPbVINp9pXnVPzPdD7ziXw4VcKFNAyi
J+j/H1gaCNL/CJ7cs4TrR4CILK3KRjqRozdsLt0j8cu/IyXC8tsdbIbM5ozIM/RiEghJ/yV7sknw
lMYnYtpNwix+ISLlZoE1d5cByVwFUyKX7QXGK09uhZkIJxPzx3SzO+7nEKR5lhsA8nbHm7In+lTv
TOSz/4uX4LHYV8yNb3Hv2KT28GWz32EZV9xHTQnCZ1QoRN2/awmssMWmJh5XlfCR6hqR5ETIa2Y1
wWP9PSohR1xeo1oGzyXzk5FNtxotgvepQUmAAcxEasoIuTUWpiIdIm6ug9CO7JyYdKMC27Kc7CiE
d/y0MeslsohcmQ4YabvzJuBPCjQXnMcntiStphLm9/D3Q+ENgcnc5d1TDCg49jjTYOlX6v5Qhqx0
KSk1K4KaRK03UEA1qtYeDfsn0FA+5ZCXrCswc2zP77sQF3p0w4wjHSqPgBXvorRa/BDOrFrjjZ4g
ezZNYsDg0TVt79DwaT4hggwWLUb34+ezFhxw0ycBrqHH/EyT5kyutTIQTsTHagVirLRdumGhchnX
pXcZQUW4HIuGKKn5hZPppgkeXvWBoHIij6HWrFGfmoVVnpvTpIch9xsmPnr/ofwDBTT8BQofqV3B
qDyagyuSkqM+qxv5CfYvTKrwi7Qk/Bs4jS7ktjzZJH8hq0ct6Q+Ik3Gel+NRVVTVd8ue/dA4q/72
aJLiHYWuuIoYMhJTccwDDm2ybgrJU65IYxCroJiZONybRlJ3OJn5jFM5Trz7giQCG7IPn3qWP8fO
6w7g1/Ay33Ej5OY4PRletOjJRaIUsRd+KpFtq2WRGNqsk5NUJG2WdkAOr2Y6OisU9MNSjImQYnTw
zxWqVfOX+yGD7bB6gMXpRWnTNlxx609OSrBijKSBmJEm5AxSiKtjozU8AATaOr6vKOTjZuZhsNcI
7LQ0e84D7Bvzb1KRuCsEjPohlidDIbZYwbCOHTcpEuPS99wTZOcgRqlcIAIaav6cMkfjqIrnhJU6
hgpO3Ve4vvFmqNgEwUMAWai7WBvswX/McDHE9F5TZwx1wBNovDIC2wUKSluKUXZzn9aC2xmcANDV
k5D6ICuFRTvPtpvCESOc7l2yhcvFiySUNhn34/i33Uj2XiLFPHzNTT9WaYKE23MhK/sirAV2GO8B
DCjLbX7hVYXAOWwxaVv/9KAfYXMIHYghI/r4+bBRpQ2hWbtfIkHdvpfrIrAYJ6cXEdHq2tTFPyoK
dNsGzOiKJPzB1HLJJKlLXvXWx8MuhngaMe4EJsWCtsjSpxpg+NlSsYKzMUKQ89rLQg9WqAQa0mbb
qDt1/Q2L8MnSGfzQrho4WFYO3E4FL21FhkRv6x3q7cDGITcJrnYpXXGX1Y2HOBHGMr56AqKYHZXX
2ikSZCfjggvP5S6+Ei6ShRIv0GJaULtaJ/zzYTrC8OtrQlq64+br+vExqp1seDroXJNtdABIqshd
LpniGOgu5HcB3jFxj5dU7nSUVlj85tsYiTZ1GMVGQQeCMUNqFOZfqhSPsh1l6zGLJRuDmvNYsGg6
RAAQ3B5rzTKBy4Kjv29k7WRw9NhzDX65ahjYrBAWQk/vD/IRKAdVWvDY64qg8+/BYjgOks+/SYWn
bU1ddmUQ83p1sDrykMkBKxq0cOurK7KjzmKIOGigjxp9sOv333HLC02qKQ8sVh+KmCSNjb2hAxDy
aq4dosATSc0F9ibP+iXX0jSACAZM2hE/X7vtsLypNlGHWcuYpLjQhefTOFBVuqXDmQRVvs00/KGT
kn7WL5IqpsglI7ODuho+XQt9SIcpCa+Ri++VKXY4vlMhPtzbGp9hK5wVPMtg/CvswcUsbl69VmCJ
nzOcQs2Y9ULNGLsZblb1FWN3IiDm7qdpZcVLdkRUpwDYljCIjnfavAS7oHQ6XvDZo2klIyrHkZed
8Y/cOt3zuM3PHWfsYlWznu9tcUNUFBBEbCwUxt0kEutKtJ5BYnhAFpacgMTWvdPcJSKg3ubAv/tD
JqsMD7g6UOoAnLRCIyHky3KsJm2o1nJqstwVMouhFn6P6ikB/Wpi4SqQARtWouifi84HKt68uTFh
2TFjVtHw4fuGRt5puzBIM5laCLKzteDBKE/iHBToQSGivZWuP+zgx02BKluhti/OH/qvX8jpc4bR
WqMwBoo+KUZc+iA9vzuo22icWn2O8i6kvWnB+Tgos7aepu0rr0kyJ8Hv3PnZXPaa8oQgRnS2Nmv2
x7EN4Otlx5tmFpmyPCniVI4P1CGRZID4QqUlk+WmpnRFdP7D2laAQrE6lojCkd4m7hVLxWloGv54
tMRJvb1x46IXGTHft7G5O94MT8fnyRXl0iQYejBdGe9W45q443g03X5k5Z46jTcqs37nUwTP0SQF
6xsZNU9Guq9uVSr4STdZ4/cAhLHs9oeY/Zn93+XZYA1Gqh0X7bBmC96XI8lurkB3uJI4krR0teHi
Brm9di/yzrPr5YTvw4SJ64YbmvOcwCQF08gcHfOVwEdxEPn6SJqdlPnIZb5lCu8qSFEcqe+coegi
0Khjv78or1YJ/+3eeTEoDAHsEdENhYX7UIINaAxFPqQ7BQTiTo1ELPArkKL0LSlmZEmcuVVD2d9g
JY/rTPkiDKeA6ICnqcMs+JN0ODQywimDpoFzT3+kuWzFPjKcJIkbwqGN7wqR1+Nz+3oIlIhj8YUU
5HEIMhGpjP8sPF7TaYxj5Z+WWA7XFPtYkumTtZt6Uo1IzRLUX5yf0HWy4RXDuot174i7kuRaG03k
IGxUmrmyS3Uf0iwglJSVUYtM6CTOLZ7Y1zwFSkjCNKlCDcjO8UuJo6fhivgUWnZ2XASQY+3y4B9T
uGEk5k+fSpPPUjbUC2PFdUqaYtRK0bzgV3X6NPcOGSj1HHaSUOgs13axlaJ9Xji7gyN0EcojBzDT
rltgrGGmMUjevmlpXxNezmwsYbPhTHkeDVmQfla5EiEogkB8bGIIgQPFtxlNnLNE87WnnImTOGX3
bVSs5xptI1ZtV776AQrkQCXTRzqA4O1Vr95r2IxwR7CFbkLWiICrXwSVkXEaZPE2IIo9UGdWSXqP
pyMzrePhehusy0EBAGGwZ3PE4ej1DRRwbu4RUCxJrKPJEDLLA6XKiSk9BUrI3J7bXopci4ECZFr2
jMPIVjjIwZ0TL3XMLtC8KK7AM5b0xL27yXU0qAvmEOnD13Rlg4Kb+uffSlGkM4WGMfLtj30uTYQx
OUmQXCAof1+3ZJ9MyMwhZ+ZeZI4x1Enw71YSdWdaZpDsCzfn3YPLXjEjBdW80Qx//qsTuYelOxiq
XJeBh+71mr0zew79h5ZmJHD7hQwCFSdomkNDTLQsakXOmrd3gM2O9RwA1tIETRPDdNXoLKCvlNoz
FrPywGtqfOyNZdnZa/hrPhxoa5QRU3YiOivS0B/BSiMu7ItzH/ezTMtzgCZ2dHMIyMaZ5qTtjJ4C
TudNKY7YNqukQHlO4YCmnQbHgBdH+pPvA8nu2Mdui67xKeDJHzqhRcEPJCqkyguTpRp0nU6Pfs6c
m8kn+Cw5cnm80L62NSzEAKc=
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
