-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 22 11:53:09 2021
-- Host        : DESKTOP-T1F34A4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Projects/Stereovision/calibration/calib_4k/calib_4k.gen/sources_1/ip/mult_fxNewInv/mult_fxNewInv_stub.vhdl
-- Design      : mult_fxNewInv
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_fxNewInv is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 20 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );

end mult_fxNewInv;

architecture stub of mult_fxNewInv is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[20:0],CE,P[12:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_16,Vivado 2020.2";
begin
end;
