// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 22 12:54:35 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_RR20/mult_RR20_sim_netlist.v
// Design      : mult_RR20
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_RR20,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_RR20
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
  (* C_B_VALUE = "10110" *) 
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
  mult_RR20_mult_gen_v12_0_16 U0
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
NaaysS8=
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
DJHCAq3YHmmCBkpRjtSf403xAUsg3ReltJqYQPgive52NMR7kjpXcPD+hO6dClQ+N+rv+nrDPnw2
tWXaKVqRiaIQjhvQpiLv4yHEY0/2h8tS/srlPi4P93ysHzVJ5FoV26oCzKrhNIcsGahgP9LpIW3v
0OkNgoPqU3Lpkd28CbF3IzVuH0EyjOin9ikRwt6JLJ4sY3QHRZnfXqQbj8Cw78JUDji59NWar3Ju
jWBHV7HaSbNjgeyKhLJ5d1Qq1k4bbD7IKS7y+2DQ/UVnV3RlyVQRgAp6K7gQbB/n5QRdqL+V7pt0
fRwvvVRC0ZHECyfEWci3njR7/hpJCytXuX9Yjw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5Av6DcR+KeXInAnoejoyKrNCoRwLsdaIROY3EjDc/+6NQqvoZLAuRylpH0uPtPJ0GA+8nk/G5STl
Z4plEYepMP881llGCkrUMFidIbDB5Pn4+aLeEdQibVAUcy29Uua/WXo5dwPayq23Jiq5h4LiktWS
ROfVjVeRN+Rl39g4f31+5RpnI9qRIqVvCTq3NcW0Bms1tAnZLY3GGjxQpK3ub50ICnofN9TUI5cZ
lKogIsKMPi0bLN+dGjzrv8G3T39LRCLgKYh1sQ2tWuKjavx0I3piIIoZfzIFfHUYJ86fqDypnujj
1RvaLsiVd3RDEgScKrEcYD1GDPt/S3qKVdwE/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8768)
`pragma protect data_block
6sioOi6kADk0+p94eFzKAp8VVqagPghfU1bXPWzg920H6Ye2Q6yDr6RxIHRrPZoeI/zO7KE8NvEj
m8MfRnhBvdA1yf7eUsGtbDIkNp/Y8AKrFJ+6rJ2F/qrXHJih0ZgLFqD/9d/xvaoCNmlm2argDsW8
YqjP5tDE8T87hAW3w+KPXmOdRqHKJ3WECJbrGTo3cJG/SvDsSaTwET5akA/xWcfVUdxIUEX8AHQu
4VPZ0w5qLTyKU9Snw6JRUqIFUNyLjnCgJJ8R/ykEppxLUhIBebjBZUukBak2AoJOepOgVxFtuW2r
ve4FQxijHp5hhfkKVpjWAOVcLdv8Lk81Vw0evforFVo5DKKvl0+rToBoDfsyKELTNgidr3WLrPfk
vRpDmG3CYaKsII3G6xRhyoHbAzdz+uXhVgVJUc/BskwbYlB0JVB96S8TdW+/tqUAb7j7EFjQJcWo
Eward1kGOX9G3tc+u/PNXBDJ6d1m6PMR0UNo16Z1XkkVT2UWxSBwqLIdHrzr6aCOsZyQ4Jo111EN
IiIylph3XAhozL8dv5eno1qB94BO0cCf/C5s6MNRY7R1ABb2VVPcHzfNUW+uR567uM25tIadMjBt
0mC8x6d+sv6mOQBueL0xOXE/EjeHAF13FKEvJWvIV4HLf6pBifgUcu/mXM2ZWHOQG4pZaD4HlQqI
6tVVbywHHmObvXAn2a+XU0aCQSFvlbUL/DvDHVQFZH41OrZfWsi9jmzYgxSSCEfJFsbuaL4nqccm
nDX/81EfhB9tRJNSbO+vr60+9NxTPSkanZVWRu5zCzx2osLF12DMlYo676R+gbL7TVpmr1b4NVOR
11BNW8IRvc/wU/g3SemDGUX64B0cij3/sd+uAVmY/dEDlV0YQZphD6oc2518Ebs6c9p2sqVMlsNy
rcwfkPiO6RX43ECHy9CYJ7H4Rz9O9zk1K0QLbvOr7QrLjm8VMYCkXcz20u0QconoGXdJ9X4r/P1h
l84CP6KIc9WowuuJEmhv9/Xog8nBo4cl3X22fK7guWXhzNxMDkQV+94CvHac7O0SxofGsRENCKxR
11qJUSg9wyHy3Si2x6IETEQfTSRGtStmiWlBVAa4pXkaYYsbsDiqLv9gYL4U70/iV2HCrcloK9Je
QoHzevhuU6lVQaTFPaVZlRV+nN/NsaoL/Yf5Eut/57xSHLU+KNiwdXZpDVy8Zwmac28UdlpnrYTu
cTjotHgy/6srn44bnXL6BypMUHXknxmE8yrOj1rjbYis3sfNLa0/COOBKROja1t3Y2DtSyMTmTuT
aQ3+djBO2ORkn6U6AhjCpj5VwUOuzito22CLlSIL739aLjPjdqZbugPU2YA3NcfBVNlgT5Oroq4k
ldbGoBe9Qa5E+l9lZtTtPWLVEVsxKz8FnDXOvzNZ2uv9SyxdCwdHs91eFlUPpBGfB55wZrBlSLNJ
p6iw+8270SbffuaG6EANySZLOXhclTj656mquqw7xZK1molcs3JSlr6w4siq0Om4+TBKka+aaBrA
DYyve+ggKgjzaYBMJZqfhaCGoUottxXiISWuP+I/tWwANIREnKrv1U6toSgrHkSfAEPmJ9nWqTKG
jeaogavxb9gJhrI69tnutaIqVexi6CciYm8EU2wPeEnOj8dXHsFAAGPnBxwzrqMusgdhBBM2Sc/C
zvSH0ejSJk5vIXf/FyCDZzpHhsziFSIu+wwX2gVbyQN8IA0ww0RCjtUx9/LXbVxnYVC0RdZcXKtN
SiUBJfCQTIFPlj+vF3gBq7witI+P8k1IQwUvkTxK0MtkC/wfPXX7/UE54OQoPOYVbLeOYq/m92rU
R0gbBe4MZabugYENtH2F7Qx9cDGt/Bw/T/tHLcRDD833bTts72reifOMJ6Zdhk9OrMcY95fkftjz
elBywlP3P320GCNU7Ajc1jpzojtkpTwse0+2vJyNnv1iqg8IHlizmZr38hxeyG9Lh5XOVk96QK5R
Xatqx79qT9OjlB5INBfU5nt0kOvgMCx4mVmeEGvLUZveYGYtB1hUj1fqybfQoKDeYyhrXqkXmdje
sifoAS/526cT64xwXmjc3ED5s2zXEySEqWUKDfOotniiEcWL+F++aPCW7tZOTPJPivjd9LXfc2mz
oB4RS26nz+lobzBlg/IUnmR8t3ciP66p2igsklqxkmyPAFM5NPcwv9tj42ojc7BA+j6hHWut1CuW
p3mbmD8vXaswXBzrVECl+x6plNxfxBWm/s8ugDSZMLU6knufUJi139NZUJeAdPrMVxnEsQd6/1lE
SYGLVdnOqhzr9zQ1203RjaIwgxjNevaPiD0aGn/PvrbglWVdB1QIMYuyR8BpIW46KBNk4s4CAAsm
hrb3/FSR7CUSSvNcQcX6PRgBPqmWDND79931na3CSEKZYEJ2qVvUCbj3eL+dvDKhWMLbazA91dhe
H4/QY4nlPqVBeRBwDa2z9BG+wGJCspgZk3L6HH7KRAxZ3AEng+0um8DaF0Ita8832h8eKEzZ6W69
gEkLDwnJc+3ogFBHgqopabZn5nWHGGdOKr8Sk78elokDLAyumRadgdJZmKvb4pMtyi9HBVmNGo4v
oAs5NjOEv1UuSC7Zfor4CqAe6RSd96yL/OOeNU2P9LlY1qv6O3nQ0KGoYZNhGNROtO1mAIXv4DyM
HSp6VA0N/rfwkaN7pymRLg2QkUVDW0hs/47iCmT3G1/KIemvOUiymCQHUBy+BZgiVRb4uymR1r1T
E05nnvE1BIuGnJI3goMZL8+pzjFUVZU7W82ObosEZObRVs1p9VOtzjOWXYF/1I8ast/kynxJ+B9p
5GyPReYQTk6vBY5v4Zup8iZIo/L9melbjbJa5pZhC4+LAti74ukI7M9kYRqF6G7ET9qeD48Vvr5C
SxO/mvv+wpM9hMd++CMNQ+npV/k5n9Isq/w8k5W3m3RvHRLQsr6Q3JYLpvY3vLMYj6DwVRprNg1S
waU/T/L5FSYVUJogmcQmjcxJyGnHks07wHjx4zU52Ob3PJsbS8Ezprd0zMp1nj+EXM7PBw8ebo9F
zYcWVS0syasy6IFCEq19Cr+j2GAE/na6B7CR6PUISBTj/29G89yPefYF8yQbJZXh5zTXiuFjjeLH
fSdF1SJgwaWNrBE4u1ZPTufr9M3QbptUFfn74+MC8ZbWhb3u1eds/SbGdpw4Fia9EbsRuhu/CDjO
KAUhScP4/BJH7EaKvpn5a96ND3vbUhztpuopY2mHfvDC6WDokbGq2IekXoj40QLBPWU6mU0DOAK8
r9fZBqL/Rpx6d3rV1rQ1mezi+hLVPlfTC04dUqsdcOPr2SjKVpf5cOLLnOqNT0WShPqhB2sEnO2c
iZ+JEXb+Myjsg8FZaDcxDb4EMdzDaXQ12H/FQvqgVTxaNNTOlKVbFmjnF+4azxx/CpCAKZ3WeYoN
9CQALqdcNtuBH+dn+DAR0RpdNXQO5blOk4Jje33rel7MbZoeNbvBcTH6sJi7KAPyAjYMGg4kxddK
oHnlj4zaqlm+q16JvJmkb+ckATIVLQG32ccSYKo4tq8oodc6XQCPtEOHLb/sDGoc+ycRHexPZHl3
zLBmGEdoPNDuAQ0guzQqvd2UK53PEhGxNt+6mJRuNdLoxVKlvuCJQWiCcTh+/k+g3XYzQGRVbcI2
/KSv4KiZEqXeyj70PaT+JRhxIzCyjxx4pcRssGpdCkzYWrjgpatnY0PQKLmBgENCXMgrkefjo/zI
IvfsAqh7nPUqEqWwbf149sZdIpHv++HIWLNuJbGuNV2aKZc+l/sl4cSyIvdmpyvynJBnrIki/+C1
QJHEQDaMGbKBEUgNe4vNaeV2Vyd7AbFI5HD5pi/wMwWfk+udwjk6iPDaeofZe+dsp1pHiQexq+jT
qNfxX9IX9tQ966wO6GmKYsaZNzLmWrUIMHBPANquCBKLxA6Cp/Htc/8t1ntBD6JLOj5p5pNtAvAO
TetqQdGA2Q5Or7Kf2/MGNnjZKqLsGzJmUZYipsfnbvZ68UxDeB/pNPlRXQSsIQl7PPlEpdgZFaUp
PN4coEiB/LyWGE9h2F80J6oauI+6+nRldBJB9t3MCX6nMW+KpaN4c9CbogW2kIlRIa/KW3NkDRrG
C3kNuyEXZeAnEFBjVoG0H4rU7YdKbnwTzMGySKVkpHHuGV8oAyAu3R8OXIVBs2bYR5cFXyOpyOOW
BV5G4lSM9adIR/x5bAZhi5bO3LarpX6Ug8T2LsE+FCcjNM8nJyThn4FqROqV2E8WAvSnh0kQWIh0
x9Auh60+AoeTwkAILyWKWeQHWcWJenuZfsmgsSEfVCJq8GkWCaKx117mwC/YlWqUse9pzjU0JSzh
AecczkHg9e/Pk96N2U/Eslmdl91ezs25ZHvyJ6NuPt5B8PcJ8keMTn7TvUvDwPakr0Iv+K9ndYVh
tGmAlrNh1QXPJfKubuOdvLYU37WAOlz/eKdp3lNZKOPVtxhjXuU2JKdJ59RgSLTlm5ZchBYHiD7/
UpSoV1pqkKE6by3gXFrLBqGTa5691XAFNxsvdKb2kWLKXfYEFh9aw53aHVTt0Y0WLzzMMRYxEio8
IWLOW3xGcuxsPkXYocciF+590pmS4taT/T1KgwpRnrMWQwQDEIKCeihHcsHdd6MzxgK8bSxwNoy1
6mq4kRWUNMui+a+lNHXMqnIaUBV6p4SE0Dk3zkvNSZg+M2ViBqIFpU8QtkGyafJLTT90YomUjWuS
l1nXQDhUVF7XC+A9QQWLWuYMEM7/+RBqoO2v62vpwwZbzjEV1pt2/4tuwEDYVaoRfLjBJPMmfTOu
0dREM3esubBWyX3Lc2VXe/Rvsarbeqm4k29BnUiQZMeGdXAjY6rIxAkRo9yVnxgUpt2mywY6hd3y
sop9uA9DDHX+XTXDXxmuSEqOhberyjxH+b6tHGxWyMBBn+T1vwXap8jCriiWoJwmS4PesgoB1kz1
SgIKppRqNB+plBAI49mpwxKAYWo0PJ2yLb0wn2JKMLO5RZp/C0fw9JQrxbus9/DP3UjYvibQoPnl
Msjz3gf2I028/aOJBmzbjOzURglFKHGDO5/AQu1dwGojlm9KP97Vsohn+JMoBc1IS1ffLWLXFO0I
ZB/IXM7PdTH+hCin2g0kovxMsDnsRoouFGvCOuHJ5DIDUwVw7JmSje5bns9EeuFTS9QayUiXqXw/
AwAIYjR4LYEqKE4i+202+qjzXOWDE/Q+EQQuf1YsenSbnIIEG1x9Y6WhR55K+9tayMLTGS2CZbdj
w+rkVtgx7uPbksEfC6m2bGThpsFeAatYLfKropFJVYvRy/zZGIUoHp3nA2KTFpZHm0cJaP6R1fL0
v91riXRCCszXxVrJLpqSxDlKZsoglM/IDuzQxQ+D88lJB8zX9+cwwPYL/HY5rKwSlmExOkmzMOe5
vK2sdIhXk6Oy7bCZXCl361pdmfVojorD21tFrehNOHUBqGr4U8U4XibxPIgPcCXjucsw3n8QIXNk
n7IsC24llGEwxE+d6YUZt5crdj49Io5LLKMmUmNkFpN/gJujyLVxwcEOP6hzqr7j10swkLRckbLf
RQmR+Qr9HV8/HC5yG8J7f8xDuBFyXsQqiCBfIFstGQJuPSYnXvWSjrNIqHr2aN5y9xIAYN1iEZi+
bErlU23mPzzdL2KZPHXelJeO+qzaBmZBy5vXtxzZhjh+BT93sYihghvwhAcA9CxzCuAs1d8l15C8
84PiR14tgG3+lJF5P23+87kq0TTcA7e746TEJKKYck6kVGlv0bDd5fYJiv5+YYrpy/Ha2DtQRpoi
HnhTLop8eZbZTTER1ilMOiQ1gtjSkEECnE2g8fe7uemI/KXz+BYeTeiiUA6lDG8buLRydRevZ5Am
gGzfIxuD4W3vc48AOl95o9O0kKI0qNcTI9EVM78pO5XC7SDulyGe0QeCWr7pNVdyFw+ErDNG9wj+
nXgck8n47mqO0nrgxi+0E8oF624frSBEXme/N3evh3Aive+84fA2OuZlWdKUA5lrnyL5DkFwy+zN
xUY2gfRUWDi+hMC3fjTclTu4tC+tjhxK8PNnsX6t0KkBxQQVr27dTNAxppaV/GIkxnzOOxmsSLnT
cGYFN/s6wQjrb5/D+Ri32kG+sbYDLH5KwFJ6nt1D6R/EDHiJ4Liy5YtVbY8IVePN6oSNefVyPTn+
I/AELydV5OClJ/+dmesOMqvtgbO45WJ4MCFabckv9/x91oZAmOYvNy7T4P5UbhCX8ySksPmJH5IN
XBE52aXF9aEilSk1MSBxx172i5rJjRv73szWyEK8ryJvpTEtKTcWy+B1qsf8tGrmTwbHVBgaMyi8
xmd7t41SZJTPFRQsdqDMQmSlpzJG9/k1lRznLaYZ8bdz8gkEEMJuuufx4vubFV0YLLtDbC298MEm
5QZrBwZhbwpKog5JvsXF3L07tLkImz77FmXnGI+kfKDtvuxVmjBcHs7GEFnE6CPniheOrViMJtK1
CGxtR1K+zSYusTMKi9mNkZVtWrc2xpUg+RWfxFNnDF846sZU6SKqDpTwM4J4Tv8QjETs1GAu783/
E8A48Z60lY1ggJsCpRf1Z7e2vYGqMWAs8TrOEGuSrqoFggIfY5ya/gx9HCpNls3NvQhWyrgj/WqV
qZNFTurjkBUK77z39OR+LDmeukIjvu703o0dNydeuKdS0BwBTt3//v3K6ucQoD+YhUan5FY0rOSf
FLGdxLw6KkmGUEdiQi+g7txD7VxwgSBODDaQKChfyWRwQekKRX/osNej+MPF/fAfls4clRHi+z3P
KHtJrno7HhewvFHZ3M3jYk+0OfVIc2SfERG6bzw2wV2fRF9pEc9IsdUGG+8xf7igt7kW5IiAWdj8
wEgjonTTlUZ6M3tg4pflo0Z14L961BnX3JMalxPRJPfaIZva/f5ou3u7kMSmuKMplwLzB9Ktvkb+
0NZdwJVW7kxDNTSrAA0MYvRRauDNcneKHErDB1HdfgBvv0SqTkDv0aNbywbcHsciMcTlDac4gzzN
WtTft1/+GS8/MH1Eecv1g1hNcWTYNkj4SGhC1QEKrPI4UglLZzUuBgn36fKGS6TdYP7vhJIDrRNi
Pgd+Fsc/Y8z36fq5SDT/hvLwRGdAyGSqh41+6HwHqf7VtxhLBFVmYKqirXvO/+JAh+97KPjYSjFo
Rw2V8Sri0jhzHEWUQrRsdmALqUyvZtqOQoLqHpmmqdNt+6wZODcHsFu0330uwOqSvWt75WH8P+EA
CvqS+gMpvoa+gfYlBx5dWn0gUEA+NPa5rtRCAor2Qb4FXIWrf2V2YZ5uJf4IUauJNPOQctoYHt7N
nH1Bx6XQnxUYxg7218MzW7rMH0vWUtNt8QPq3AqJjLEjPIv0CIc2M9H3y+ewrkkD8RCSg8HuNcfW
5LC5+ojMYv6WbeFJW2xC67AOb2kdslK/nR/4PeHRgazJOgHZlgok7wxdTlxz9lxg8j7DLVfbdN5/
dcsRdAcv9yQ8LLqrGKZpe0fOkgkzqi/ZR4iLJO5DJOG6NS5bhY/ELpOOBo+rh/B/NCcVBtPwNbnl
OUF9Hm8+1o1cz/wsdYiH/NPc2htERXT4W1ru/eUxdNzqek+upN4qjz6BIb4ME/IrTko+XoSmkPyH
xlpTFrfnmP2+roDfPk5s5EkjIZggc4SQ/vxbc3g70B4mIgJePk5/Qz7xMNcL2wh4BB9YqFf00gkD
i2PzTRygLmlaIIkt2d9xKmCIShpQn0uZmJcvx3SgIPiUUHnhHhaamBNYgn/1BZXC2OhrCeu2qfJW
5mXsNcamPQK6qSm1RpdjlaovCT9DaocXma+6S3cPgygUoVYL+5kn3YD7n9jPY4BeGjSwHkV71azo
GBNycL4TxC1jgx1nV0B4jsBDfnhF0MI6S2ctiskGd9EXDAk+GZGOqhFKbkOrJW7Ds7zhBirlksmG
tO0Zlgg0M5icyRb52nq//kmjyQ4YlB63pfOv7ab0sYy6u50b6UaN85Sk3jFwrVdutKvLvhCDidXb
dWaUTF3B658LDgDGXWZ9PBtNAOF2ahyrx7Zu0dH0019rDb31pPfMG0flqEKZwadVDopcxQMbC4F9
zhlOOadUZcYrFtG8raBFr4CECU32g4Gm7N1LXMBzaa/JMuOupZrmHsBaXdG2JRkZ8wlhfidehNE1
KSixxmu85Qzb57ihTk2GC8cdhnUXF6kXt3WBDxTJbRCMQJSE+pzWVskkgaceBBRBpeyDOVYKpzsj
HZMLhtnNeI3pIoSWg1DlpvLPyqmnMkET4lBZcH30xonuBrAueZ9eY0gw5YBu/tGWFyUq05TXzQs6
HyygZ5Y1EbEQLsdKzAD1IUaVnILUQ6fa7E4czQYoz5nLBYQ2l4v6fHDeqhJ4HpcTExJmX0frk7l9
JAFll0wnWbN0BbQjqtE9ABi74SacGxGu+gkjIzDsRuNJMS2ntqXk30BnqcLAu/5XQ88qoFKrcriV
1jcO3X4XE/Cmjb081rQbPiOlvkbeEt1UiU0zQQm0uMi7Mf0F5g/958QWscaE514UvfBiYHYXRKoj
CPUmmb9NynpH38RM+TY4Sog9OQaGypgcwke1m8mB7Ysn3jvNWWzwrdg4r7jhepsX3WlTZunXReyu
o7F2KsapXsoNU+wVW6iMvqyvGY+g1IgOMUFShg4DF7aFw4fbqGI0LaySJ9fO8b1FfYmcfoTYfdwE
KkEgtcxu4PeGbv7Uxf4e8WeIM93bUL23Qg+pm+OYzG6BVNF1dVt0A2qgDUw0eFCDRXGpQw+Bp11X
pbnw1XZipx2Lba0OnqAGFSKJhdikpMJPLrYe/h0Nn+Oh2Qiv2q2eqXku28Yvi5Q85jYSrZJYgLuF
QmKuaQ7b1smn5o/I/hQt/CzSQ8wkW8nxyZnARJZYi1WOmYen5PVSLnapnNjqe+a6qG2p2HNNrqHB
mGJR0LUl6PC/OUDrlzpgbm3j84X6XY3vHNL2kdQBNo7PCl3ZL5nsveCmyIBOEgKHVQSaZ3S2ABPV
8Ft+3ZJjJ0z2s85r8tCkVTJU8qtZTzEV9CBJfxzrKtn1o0JF+NefoQmrzS1GN022GZLAeBYOWViu
Eq3f4Guym5l4/ObjFlKRmtX33PKmf+hi43Nvul+aoUgm6mE34eG9VAAtEBgAXjv7Rxe45zAnOfBX
wd0BhfZ83ZsJ9BJOdhii5QPJikkdlxtGl9tUVYjA2f0KThh9JouaNXkh1XvAtmrSs9hP82b88y6Q
Gig/HIMadN0wtZ3CMEFETIsMqGp5RTT289lDoVHin3OgW1aj6Yi0rTIcPvaGC/PqpCO2u6jXbjaM
X7jCLVETjGq47rCRjvezgcD6bzQf8x0gWYtCt6klvOCiCa9mLPWXmlfhXaxmjGkWF0xfJRJxjq3v
yqC+ZnZ3zJ8n4uibeShqYpj7ma7m6bvUMCS6lJAAq9AMCoxKDGs6dPlBURs/xTvh197bVlAWCwPZ
nvhrc3G/TDcIOGQADoAE8bmFfOetncIzWX+gEq6FxgtUJzGjfHU6kHDROLvouAO1FBCQ4EwjfeTY
vTg8DxXRpPGsPd34mLRTsBN10JhzUCuv4VtqfBTia2nKCtB3uswoqoVRyYwKJcBusWIHDmLzamv5
6GelHL4+JZBDwIJ3CaHr6rddGMcjs3+JuyOEnsnLVUu8vbZYaOjfK3maf/dk5bI9YkJzYEY6NB2i
hVWyTibmOY7WgZdXSXiwBxViEWalDnyC3FucTdQmtI2Jdi0Un9hMAniRROK5SRvlvvo/TfiNjDNY
8cscBC98TCBsxM+PRzfC1Iqk4A4hEpfBTkpJLE3ebRnddOWgV02/FelwgQ9mrnO/mMMG8YpuNOT2
Px+I5g94Kte8o/XGz/ZfiaODsh59oxRVzao3JJtUPmIG/Ua5joMeYamM8zlc9t5DMbe72jELYRbg
IBjvHZ/sMuuDRkJCuD4Na6DdcHXOEgxIRzF9Sv27gg2QGEMQk2vt9fOZEvt2LDxcASOoJulO4utr
dSnBuceAar3nqH+oj7T05nvSQSFU3EvvsP9kWsJJpeigpdXqGS3ZJf9FYiPme9xT+rt71nFEQRFT
jESFD522YmN+vy3EigaDc/lb5yQIUC1mrvPfyq9hjab3GedEyrQl/8lxJLXNwgAAy5YobH1IdRS8
1YYHDnowMDXWIXvJAggsAQR1FPkWxjzplq/zimr7OzIJ+GIVcD4aLma3OHefr/Rxtmyba9wB7pLv
siM5qkGeaPE8zrRM6C58nVeNh6JnB+hVP3luxonJeZ4Iy6TOo8y82buaZxywl+zqK+7GqxarvJa3
94PYJTwFCWDv/OTE8buEotZgv1wT3J6oHQq2WK1YdbeU8R/1kDpkEsfNBemAD+5GP/Y73ZjxqoN/
Gx1VZUTzuy4MkeOO2jwErTQ82/Cdf/h0Hh87fQ/B0dbDeu+fGvnvA21Ke/atg/iVRvXP+byY7zxe
8PL5b+EPrLPPqUcmYFhd21M3qG5xwI0/DLJDuJSJ8+BcsZl1yr+TkQNX9p+hw+Cj6xPX8tPi50Z7
gTlXmUFRWUhEX7fiA5AdFNUXItY2pgsNfBWToo3F7ZNQkqx/oO5FOmUl8WKaEgjrTzwiprY7BLxG
7e4CrMDP/wSDtLeZdSOnBe5VmKQb3A0dF5JWfD4w9Mrsgyzf4uXVu9/nAbLsvb4X0wOLatyPoGA0
4ChF2jI6s87EowB7vb02bV3h56YvV9nf6oye8EMTjTHe3WAbcwfkPN2yToiiBPqK+mHcew22U2sy
Zj26ApQTaCIhmtt6qqKfvKjhFLjpbnQEgyFHuDK7/5nU+2ktnNSzxzAjFkOtR+eBr+vzM0Ihrn1N
yzvcy1SiJJdktYVBZWmwULCpHmjuT97oYypIeN/VTb6noZfuqkJp2Zh9TsPaS04JLaEc4NrVM+yu
+J6r7sxBv2tkYE1kK0urWe6JEtkQzAyl8+x6ldxNJrFO7dr9yYK9jSMliulThLI9cX7PqkuOOasL
v5Jomprj7FheJeCjcmSqVPE8b2OWo0wLMlpxinmX4FXxeuL5lTZ69Dn9t+RjNnGYjWJOP6MBwUIZ
pNHOCihuHYWHNBAlXNoRzeUbnnysRDRgrHzpqL0WeKTStYZTQxXVcbiH0WbnLLwjSYkgXtnhV417
1XhhTO5eS3VVQauH0thlJLQ7ZhWmqYg+oxaWK+Qb34TjcbEIIfzrdE4EEvjfhzIY4eKq39gtYlFV
L6+0I9m00EF4aVvZYF5IQxYPMK2zm608ooe8GyalKz6BltrJINfcY/Is6LRqzhEgeQr8ql/JeOeL
mq2nYocYy6GOTEVMNjym8O4OM4EJix+jEbJ15ChtAoYozZisSJvPQV8M4U5OiRsb21hxxTXfQ1MP
iB+9OzSlhwX5FDbZUZVDcE7DhrN6we5CxdOczxdyAPFkzt+MR20vvCJdQXrEmKKW1w5fNPy8Cpy4
Ld8jw6DVFY+QGwVlA1tzylOUdOgxH+Zft8FJ85phOcoQwd00WJIf5AUpYTHMVhKXhR+FTgt0+o+t
U23zV5KMEWd0/SpPeGjYuY6AHb0+gHPqlIlLa3I3fAbK1+2kiVQjs5dKbUFIxJ4SJpdh/oLqGFdl
S5gKrBcC5sM0c+U8bRzgXlDZlfsk7w7we5EjD7RLQetgqcH0eayVR0yN0SRNMB9ubQlHrXz8Tu8T
KylWMa3MOnX+myyux21EzlcGgJBt/JC/f5Jmk4MQ5v7LUwvU0bjugwoUCQ0GpDE=
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
