-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jul 18 13:52:52 2022
-- Host        : L-C5H16J3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cmp_conv_wrapper_0_0_stub.vhdl
-- Design      : design_1_cmp_conv_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    line_img_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    line_img_valid : in STD_LOGIC;
    line_img_ready : out STD_LOGIC;
    line_krn_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    line_krn_valid : in STD_LOGIC;
    line_krn_ready : out STD_LOGIC;
    res_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    res_valid : out STD_LOGIC;
    res_ready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,line_img_data[31:0],line_img_valid,line_img_ready,line_krn_data[31:0],line_krn_valid,line_krn_ready,res_data[31:0],res_valid,res_ready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "cmp_conv_wrapper,Vivado 2022.1";
begin
end;
