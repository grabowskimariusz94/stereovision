// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 14 09:24:23 2021
// Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/Stereovision/calibration/calib_4k/calib_4k.runs/add_16_16_16_synth_1/add_16_16_16_sim_netlist.v
// Design      : add_16_16_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_16_16_16,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module add_16_16_16
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "16" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  add_16_16_16_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R+TTV2BAhe9Ek8IveLCAIK+vyB2qa4TorazWyGCbrxCKkVhTBvAD6RqPeP/JqtRuh2zDPzraR9rT
gUyNSWD83A==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XM2mYTm+gCT0AhW4S5p7IlzH34WHm/fa2tLSENK5xQp44huwLBqk+dBcYbe4GM+6wqA3pzoUNE9T
SluI3P6DpsOt14ispiaJSciB+VdlU+Q0e63sKyfq++TGO3CTW5OhLIxojUbYrTbdY4WbGkk4yG0Y
qGwauBBx1uBueCA2GC4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M9U+BjMD5E96pT2zTDB1OSiHn8IS+G+aDNa3MIF/jeClLSPAOJwufjuzRcyAtwx0354Pb7AaFOwR
6CcoWPQM1dcUC6avyG/0PRrtZP/KpXS3/9PiWsaFHPYVLfqBMCUDoraXwfpfMxmOy8hD0iI6TtWc
j1xJUXVsbv+kqOeTUloYmwdRx/8cs46FvZfnFpiZXMFMsTsT9zvmCyNxiZefgFKT064BWsCkg2fa
W2IXperFJQzpE9mXVwGSjl6xDUp55esPyEPcDI4xy0T+q2KtBQj2Qn2DJRZ8DKAvjXNQmo/tbweh
l+RGgbFge035kxDZ/t5pFweR/SYowAMdG2yOwA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
absLoVdCG0/WeiZ9M4NtAUjz+XnLze4vahkoVw40DL65GHoB/ikdBh+LyLQ7V3LckxaJp7Ihe1ow
2yXZZfuygvynBc+n/CI1EDwjo64cUTgVLg6gqySahs3D5Xkp8kFBBxARQmdoErJqqhefej6SXrxx
13OxNfq4vRGx7YG4l2M61gUhVtUX9poQdq5dxitmrLXD1kpdnUsj/YIpVBaLv/TBn9G44WiyRNIK
ojx9q2JyYKiWBfcBh+fpJV9PudrBUPMu8kvWsRizFr+r8Ya09D3o9iJUZ6FWOBiFsidvZNgmp1u/
nv56cp+qpaTesLtwmKiZbrhQtq6YXQvzPpDQXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t2oJ825g01R4DfbjT3g+VDPmL9PAyVC2t8Ozl94Xb2xucD77bNiPcvutyZFkA0lqWfRMp8Z3kkTE
OOo/FpGS3c1SP04/jMKLZD9E7DL6iVBRfxa3itPHxsSD0RAP4yPHw3yCiIsmB0q25x8+so3h/QOv
DKZh98m5ku9UnG+pY6c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
koDeaCPE+GNu9rMKu+nnX8UvNKbOa7mKCRwRUXCmZNo0yL7JuxnKQiStr89+6Ws9bOIbY8P6XKLC
WoSokcQl2MIZuh7gUJ+LQSPTB9HIkHPuGGPibAaiYY3e/6TBvv0+QG5gTvuf18Nz0UQyxRzNBFY7
2e0fNw+zoh4XJubbVaqqBBqTNyIM/naqx2G+DBhvJF/RlcpsJUe2eVt+uttis5ukRD1ndenp7rvA
+Ub6MDtoxunfFJsXEQ8QZkuZiT5XfcmJdkquGywSafJqKksYNJZpGleQnak/ePqKq8cYIbfpqOo1
MlqTFX2khe/WU/cqsW+5jXmRAgWueTOvg5hW2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wZaMVki09KtetQFaQKbOEpc8bkgxHSc8zyuzh+dwZ44uN2hbx3K7ITnC8dDkn3EMZGwk7C0u4eBt
eru14n5jQ1LfuUg4cKuwRNAgFxc7GaymqPYSRK9OQZHWZ+w6Alh4X9YWb6UVcsv4sCJA8YT9QeZ2
8PJYA3L+OY2t8Dcx3JcdLeVgMWDrP/zfpXyfMdPpwgBSSCqJHFsYdlG06onoQq2DDJ/SpC0W2oHU
JJAOTss7Cf3giWx2XTrorU5k4KbClTaEv4QAsogatkMf+oa9OfJQg5b7OUNbNqSzTV2IvRXtKIBC
N3mFkAtau93JXZzbow8bF+Y708RmUyIR5AX9og==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gidhQdKtgCKZpycO58SKONz/x64JxoYiDvm7CY7FhAgR8N3zqVR49qh/d9ImLGjAjXhz9ISSvhiE
1TpzIsqbVIoSEHhHCsw8fW3eNfjSKG9+5c0qMghoZBwnf9txWcso6wczPV8wSYfFgOnId+/H4w2u
MtSdrp2j2HeGCN7hmduXDeRIcLF+ekxNNZVk0wscD3yxYdFDWscebLgM1N+Cx8uwWvloVVe1fNSl
IBecuxue/tBnCdqw10D1fC8gGorhdNUhO2bTYqZL/+voIIAXkux7Z0BGx6B2uSJYuZ0j2LS23yyk
r0QDrL3YOpbEPBbFhTy9LQz59rkITBRhVeBqVg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lv7TtlI9EkMH+4ifu40NSGcF5VLP+fQr0uBXzvHjgpvggoEPEBlbTyXFtewlIbLNuHO4GjqSxFa3
oGjcKGgjJ4JKEHh9NZ/42sDCCnN1TS1zrfhPhpg3aJ3aGsOq5GxB6oAuNGvsTC7HgKk9lvgZfAiC
9ubfhd8fCUCrbS2jYuGLkpNxtwRxEbxLfMa6l2yusSJt8g6sfH0aGGBJWZjKnUZ1SyA1DmzZW3ox
o1AE17uwesEX5+JGPaqlsN+jLpbHhpv24GF4NS806LjJrXOO9qXbZScc78Z/R2xMBhLYAC0AHR8o
o8hlz9kYq3NSGSCdEMOcxNjVxDMYBrdZ+Lc+ag==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2640)
`pragma protect data_block
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
iUJofn6Vp4sC9crx4RwLms0q
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R+TTV2BAhe9Ek8IveLCAIK+vyB2qa4TorazWyGCbrxCKkVhTBvAD6RqPeP/JqtRuh2zDPzraR9rT
gUyNSWD83A==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XM2mYTm+gCT0AhW4S5p7IlzH34WHm/fa2tLSENK5xQp44huwLBqk+dBcYbe4GM+6wqA3pzoUNE9T
SluI3P6DpsOt14ispiaJSciB+VdlU+Q0e63sKyfq++TGO3CTW5OhLIxojUbYrTbdY4WbGkk4yG0Y
qGwauBBx1uBueCA2GC4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M9U+BjMD5E96pT2zTDB1OSiHn8IS+G+aDNa3MIF/jeClLSPAOJwufjuzRcyAtwx0354Pb7AaFOwR
6CcoWPQM1dcUC6avyG/0PRrtZP/KpXS3/9PiWsaFHPYVLfqBMCUDoraXwfpfMxmOy8hD0iI6TtWc
j1xJUXVsbv+kqOeTUloYmwdRx/8cs46FvZfnFpiZXMFMsTsT9zvmCyNxiZefgFKT064BWsCkg2fa
W2IXperFJQzpE9mXVwGSjl6xDUp55esPyEPcDI4xy0T+q2KtBQj2Qn2DJRZ8DKAvjXNQmo/tbweh
l+RGgbFge035kxDZ/t5pFweR/SYowAMdG2yOwA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
absLoVdCG0/WeiZ9M4NtAUjz+XnLze4vahkoVw40DL65GHoB/ikdBh+LyLQ7V3LckxaJp7Ihe1ow
2yXZZfuygvynBc+n/CI1EDwjo64cUTgVLg6gqySahs3D5Xkp8kFBBxARQmdoErJqqhefej6SXrxx
13OxNfq4vRGx7YG4l2M61gUhVtUX9poQdq5dxitmrLXD1kpdnUsj/YIpVBaLv/TBn9G44WiyRNIK
ojx9q2JyYKiWBfcBh+fpJV9PudrBUPMu8kvWsRizFr+r8Ya09D3o9iJUZ6FWOBiFsidvZNgmp1u/
nv56cp+qpaTesLtwmKiZbrhQtq6YXQvzPpDQXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t2oJ825g01R4DfbjT3g+VDPmL9PAyVC2t8Ozl94Xb2xucD77bNiPcvutyZFkA0lqWfRMp8Z3kkTE
OOo/FpGS3c1SP04/jMKLZD9E7DL6iVBRfxa3itPHxsSD0RAP4yPHw3yCiIsmB0q25x8+so3h/QOv
DKZh98m5ku9UnG+pY6c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
koDeaCPE+GNu9rMKu+nnX8UvNKbOa7mKCRwRUXCmZNo0yL7JuxnKQiStr89+6Ws9bOIbY8P6XKLC
WoSokcQl2MIZuh7gUJ+LQSPTB9HIkHPuGGPibAaiYY3e/6TBvv0+QG5gTvuf18Nz0UQyxRzNBFY7
2e0fNw+zoh4XJubbVaqqBBqTNyIM/naqx2G+DBhvJF/RlcpsJUe2eVt+uttis5ukRD1ndenp7rvA
+Ub6MDtoxunfFJsXEQ8QZkuZiT5XfcmJdkquGywSafJqKksYNJZpGleQnak/ePqKq8cYIbfpqOo1
MlqTFX2khe/WU/cqsW+5jXmRAgWueTOvg5hW2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wZaMVki09KtetQFaQKbOEpc8bkgxHSc8zyuzh+dwZ44uN2hbx3K7ITnC8dDkn3EMZGwk7C0u4eBt
eru14n5jQ1LfuUg4cKuwRNAgFxc7GaymqPYSRK9OQZHWZ+w6Alh4X9YWb6UVcsv4sCJA8YT9QeZ2
8PJYA3L+OY2t8Dcx3JcdLeVgMWDrP/zfpXyfMdPpwgBSSCqJHFsYdlG06onoQq2DDJ/SpC0W2oHU
JJAOTss7Cf3giWx2XTrorU5k4KbClTaEv4QAsogatkMf+oa9OfJQg5b7OUNbNqSzTV2IvRXtKIBC
N3mFkAtau93JXZzbow8bF+Y708RmUyIR5AX9og==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gidhQdKtgCKZpycO58SKONz/x64JxoYiDvm7CY7FhAgR8N3zqVR49qh/d9ImLGjAjXhz9ISSvhiE
1TpzIsqbVIoSEHhHCsw8fW3eNfjSKG9+5c0qMghoZBwnf9txWcso6wczPV8wSYfFgOnId+/H4w2u
MtSdrp2j2HeGCN7hmduXDeRIcLF+ekxNNZVk0wscD3yxYdFDWscebLgM1N+Cx8uwWvloVVe1fNSl
IBecuxue/tBnCdqw10D1fC8gGorhdNUhO2bTYqZL/+voIIAXkux7Z0BGx6B2uSJYuZ0j2LS23yyk
r0QDrL3YOpbEPBbFhTy9LQz59rkITBRhVeBqVg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lv7TtlI9EkMH+4ifu40NSGcF5VLP+fQr0uBXzvHjgpvggoEPEBlbTyXFtewlIbLNuHO4GjqSxFa3
oGjcKGgjJ4JKEHh9NZ/42sDCCnN1TS1zrfhPhpg3aJ3aGsOq5GxB6oAuNGvsTC7HgKk9lvgZfAiC
9ubfhd8fCUCrbS2jYuGLkpNxtwRxEbxLfMa6l2yusSJt8g6sfH0aGGBJWZjKnUZ1SyA1DmzZW3ox
o1AE17uwesEX5+JGPaqlsN+jLpbHhpv24GF4NS806LjJrXOO9qXbZScc78Z/R2xMBhLYAC0AHR8o
o8hlz9kYq3NSGSCdEMOcxNjVxDMYBrdZ+Lc+ag==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
luqZAND11Q2SYzcVdX/s644sNxdoPP7tPJmv7xR6g0/tXwOi7unpvK37YDdntkJkKQd0BrbhFoqb
+Cn0S5aC1AQm+VzSm3jh87uxtqwp9n6g9f0H1rq/G9Isc28U1KDmklGrMFp8w+05O1uiGpclN2ov
DCckMUyCWFdE1xD92iSHvYk9m1dN8N8XVjjz9HBgmHcVQXdT79a0yrrWbiOd6/PjogSFp9FGP0Hb
FaOOXkm1EC50nknE0Svv59ZU7eyFbhpKNqr48idWTddQTrmNENrsOU/Rr80lCRFQZS9nQaBjzElV
b/NBUruOmbhGrIGkAEc50GKxVK8cXw/ZXgCCSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lH5Rr8xa+ABuAAGvx/puPnL5cyx/Xctjlcpk+whxi91R0DcSQuHKxeMaDONDX7X0pQP/J8DIYY1+
8OJfhrvMnyMweFXSDTptzx1cls8F09UmFWz0aq0PxK1OeAaIZy5JkbxNCt6zgFoklLoDLr/ZXQkC
w6Tb2inkP5/KldiMfOXl1RIZB/97OHnWepQCfMoVltB/tDYzbffbzjfhPHszp9HTuJHCxHXJG4Id
MyE7X3GGh8o73fxI2l6H+now28Pr42GkAqAqo69VRqMT1p3CECCH9yV+azp/XGmZWgIe0G2V2chi
/10782vK6Er8cxc3sZ2deYM7a7EBjkxTMyGl8g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12560)
`pragma protect data_block
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
j0EPAkzAIdkb/WcaqWCSGfEL83s=
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
