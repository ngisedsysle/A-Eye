-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jul 18 13:46:47 2022
-- Host        : L-C5H16J3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_mm2s_mapper_2_1_sim_netlist.vhdl
-- Design      : design_1_axi_mm2s_mapper_2_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo is
  port (
    m_bpayload_i : out STD_LOGIC_VECTOR ( 2 downto 0 );
    areset_r1 : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid_i : out STD_LOGIC;
    s_ready_reg_0 : out STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    fifo_index25_out : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^areset_r1\ : STD_LOGIC;
  signal \fifo_index1__0\ : STD_LOGIC;
  signal \fifo_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2_n_0\ : STD_LOGIC;
  signal fifo_index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_bvalid_i\ : STD_LOGIC;
  signal m_valid_i_1_n_0 : STD_LOGIC;
  signal m_valid_i_2_n_0 : STD_LOGIC;
  signal push : STD_LOGIC;
  signal s_ready_i_1_n_0 : STD_LOGIC;
  signal s_ready_i_2_n_0 : STD_LOGIC;
  signal \^s_ready_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifo_index[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2\ : label is "soft_lutpair6";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_data_bit[0].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name : string;
  attribute srl_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[0].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[1].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[1].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[2].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[2].u_srl_fifo ";
  attribute SOFT_HLUTNM of s_ready_i_2 : label is "soft_lutpair6";
begin
  SS(0) <= \^ss\(0);
  areset_r1 <= \^areset_r1\;
  m_axi_bvalid_i <= \^m_axi_bvalid_i\;
  s_ready_reg_0 <= \^s_ready_reg_0\;
areset_r1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^ss\(0)
    );
areset_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^ss\(0),
      Q => \^areset_r1\,
      R => '0'
    );
\fifo_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_index_reg(0),
      O => \fifo_index[0]_i_1_n_0\
    );
\fifo_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => fifo_index_reg(1),
      I1 => fifo_index_reg(0),
      I2 => fifo_index25_out,
      O => \fifo_index[1]_i_1_n_0\
    );
\fifo_index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => fifo_index_reg(2),
      I1 => fifo_index_reg(1),
      I2 => fifo_index_reg(0),
      I3 => fifo_index25_out,
      O => \fifo_index[2]_i_1_n_0\
    );
\fifo_index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F888088808880"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axi_bvalid_i\,
      I2 => \gen_tdest_router.busy_r\(0),
      I3 => arb_gnt_i(0),
      I4 => m_axi_bvalid,
      I5 => \^s_ready_reg_0\,
      O => \fifo_index[3]_i_1_n_0\
    );
\fifo_index[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => fifo_index_reg(3),
      I1 => fifo_index_reg(1),
      I2 => fifo_index_reg(0),
      I3 => fifo_index25_out,
      I4 => fifo_index_reg(2),
      O => \fifo_index[3]_i_2_n_0\
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[0]_i_1_n_0\,
      Q => fifo_index_reg(0),
      S => \^ss\(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[1]_i_1_n_0\,
      Q => fifo_index_reg(1),
      S => \^ss\(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[2]_i_1_n_0\,
      Q => fifo_index_reg(2),
      S => \^ss\(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[3]_i_2_n_0\,
      Q => fifo_index_reg(3),
      S => \^ss\(0)
    );
\gen_data_bit[0].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_axi_bresp(0),
      Q => m_bpayload_i(0)
    );
\gen_data_bit[0].u_srl_fifo_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_ready_reg_0\,
      I1 => m_axi_bvalid,
      O => push
    );
\gen_data_bit[1].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_axi_bresp(1),
      Q => m_bpayload_i(1)
    );
\gen_data_bit[2].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => '0',
      Q => m_bpayload_i(2)
    );
m_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE00FF00FF00"
    )
        port map (
      I0 => fifo_index_reg(3),
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      I3 => m_valid_i_2_n_0,
      I4 => fifo_index_reg(2),
      I5 => \fifo_index1__0\,
      O => m_valid_i_1_n_0
    );
m_valid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^m_axi_bvalid_i\,
      I1 => fifo_index25_out,
      I2 => aresetn,
      O => m_valid_i_2_n_0
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_1_n_0,
      Q => \^m_axi_bvalid_i\,
      R => '0'
    );
s_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3FFA200000000"
    )
        port map (
      I0 => \^s_ready_reg_0\,
      I1 => fifo_index_reg(2),
      I2 => s_ready_i_2_n_0,
      I3 => \^areset_r1\,
      I4 => \fifo_index1__0\,
      I5 => aresetn,
      O => s_ready_i_1_n_0
    );
s_ready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => fifo_index25_out,
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      I3 => fifo_index_reg(3),
      O => s_ready_i_2_n_0
    );
s_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7770000000000000"
    )
        port map (
      I0 => \^s_ready_reg_0\,
      I1 => m_axi_bvalid,
      I2 => arb_gnt_i(0),
      I3 => \gen_tdest_router.busy_r\(0),
      I4 => \^m_axi_bvalid_i\,
      I5 => m_axis_tready,
      O => \fifo_index1__0\
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_1_n_0,
      Q => \^s_ready_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ is
  port (
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_reg_0 : out STD_LOGIC;
    m_axi_arready_i : out STD_LOGIC;
    m_arpayload_i : in STD_LOGIC_VECTOR ( 56 downto 0 );
    aclk : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ : entity is "axi_infrastructure_v1_1_0_axic_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ is
  signal \fifo_index1__0\ : STD_LOGIC;
  signal fifo_index25_out : STD_LOGIC;
  signal \fifo_index[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2__1_n_0\ : STD_LOGIC;
  signal fifo_index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arready_i\ : STD_LOGIC;
  signal \m_valid_i_1__1_n_0\ : STD_LOGIC;
  signal \m_valid_i_2__1_n_0\ : STD_LOGIC;
  signal \^m_valid_reg_0\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_1__1_n_0\ : STD_LOGIC;
  signal \s_ready_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[0]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_index[2]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_3__1\ : label is "soft_lutpair1";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_data_bit[0].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name : string;
  attribute srl_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[0].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[10].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[10].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[11].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[11].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[12].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[12].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[13].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[13].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[14].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[14].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[15].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[15].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[16].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[16].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[17].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[17].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[18].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[18].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[19].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[19].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[1].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[1].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[20].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[20].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[21].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[21].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[22].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[22].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[23].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[23].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[24].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[24].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[25].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[25].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[26].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[26].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[27].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[27].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[28].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[28].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[29].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[29].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[2].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[2].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[30].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[30].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[31].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[31].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[32].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[32].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[33].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[33].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[34].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[34].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[35].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[35].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[36].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[36].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[37].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[37].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[38].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[38].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[39].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[39].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[3].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[3].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[40].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[40].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[41].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[41].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[42].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[42].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[43].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[43].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[44].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[44].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[45].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[45].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[46].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[46].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[47].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[47].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[48].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[48].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[49].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[49].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[4].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[4].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[50].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[50].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[51].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[51].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[52].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[52].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[54].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[54].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[55].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[55].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[56].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[56].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[57].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[57].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[5].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[5].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[6].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[6].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[7].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[7].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[8].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[8].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[9].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[9].u_srl_fifo ";
  attribute SOFT_HLUTNM of \m_valid_i_3__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_ready_i_2__1\ : label is "soft_lutpair0";
begin
  m_axi_arready_i <= \^m_axi_arready_i\;
  m_valid_reg_0 <= \^m_valid_reg_0\;
\fifo_index[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_index_reg(0),
      O => \fifo_index[0]_i_1__1_n_0\
    );
\fifo_index[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999699969996999"
    )
        port map (
      I0 => fifo_index_reg(1),
      I1 => fifo_index_reg(0),
      I2 => Q(0),
      I3 => \^m_axi_arready_i\,
      I4 => \^m_valid_reg_0\,
      I5 => m_axi_arready,
      O => \fifo_index[1]_i_1__1_n_0\
    );
\fifo_index[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => fifo_index_reg(2),
      I1 => fifo_index_reg(1),
      I2 => fifo_index_reg(0),
      I3 => fifo_index25_out,
      O => \fifo_index[2]_i_1__1_n_0\
    );
\fifo_index[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^m_valid_reg_0\,
      I1 => m_axi_arready,
      I2 => Q(0),
      I3 => \^m_axi_arready_i\,
      O => \fifo_index[3]_i_1__1_n_0\
    );
\fifo_index[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => fifo_index_reg(3),
      I1 => fifo_index_reg(1),
      I2 => fifo_index_reg(0),
      I3 => fifo_index25_out,
      I4 => fifo_index_reg(2),
      O => \fifo_index[3]_i_2__1_n_0\
    );
\fifo_index[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^m_valid_reg_0\,
      I2 => \^m_axi_arready_i\,
      I3 => Q(0),
      O => fifo_index25_out
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[0]_i_1__1_n_0\,
      Q => fifo_index_reg(0),
      S => SS(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[1]_i_1__1_n_0\,
      Q => fifo_index_reg(1),
      S => SS(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[2]_i_1__1_n_0\,
      Q => fifo_index_reg(2),
      S => SS(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[3]_i_2__1_n_0\,
      Q => fifo_index_reg(3),
      S => SS(0)
    );
\gen_data_bit[0].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(0),
      Q => m_axi_araddr(0)
    );
\gen_data_bit[10].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(10),
      Q => m_axi_araddr(10)
    );
\gen_data_bit[11].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(11),
      Q => m_axi_araddr(11)
    );
\gen_data_bit[12].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(12),
      Q => m_axi_araddr(12)
    );
\gen_data_bit[13].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(13),
      Q => m_axi_araddr(13)
    );
\gen_data_bit[14].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(14),
      Q => m_axi_araddr(14)
    );
\gen_data_bit[15].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(15),
      Q => m_axi_araddr(15)
    );
\gen_data_bit[16].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(16),
      Q => m_axi_araddr(16)
    );
\gen_data_bit[17].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(17),
      Q => m_axi_araddr(17)
    );
\gen_data_bit[18].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(18),
      Q => m_axi_araddr(18)
    );
\gen_data_bit[19].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(19),
      Q => m_axi_araddr(19)
    );
\gen_data_bit[1].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(1),
      Q => m_axi_araddr(1)
    );
\gen_data_bit[20].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(20),
      Q => m_axi_araddr(20)
    );
\gen_data_bit[21].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(21),
      Q => m_axi_araddr(21)
    );
\gen_data_bit[22].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(22),
      Q => m_axi_araddr(22)
    );
\gen_data_bit[23].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(23),
      Q => m_axi_araddr(23)
    );
\gen_data_bit[24].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(24),
      Q => m_axi_araddr(24)
    );
\gen_data_bit[25].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(25),
      Q => m_axi_araddr(25)
    );
\gen_data_bit[26].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(26),
      Q => m_axi_araddr(26)
    );
\gen_data_bit[27].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(27),
      Q => m_axi_araddr(27)
    );
\gen_data_bit[28].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(28),
      Q => m_axi_araddr(28)
    );
\gen_data_bit[29].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(29),
      Q => m_axi_araddr(29)
    );
\gen_data_bit[2].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(2),
      Q => m_axi_araddr(2)
    );
\gen_data_bit[30].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(30),
      Q => m_axi_araddr(30)
    );
\gen_data_bit[31].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(31),
      Q => m_axi_araddr(31)
    );
\gen_data_bit[31].u_srl_fifo_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arready_i\,
      I1 => Q(0),
      O => push
    );
\gen_data_bit[32].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(32),
      Q => m_axi_arprot(0)
    );
\gen_data_bit[33].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(33),
      Q => m_axi_arprot(1)
    );
\gen_data_bit[34].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(34),
      Q => m_axi_arprot(2)
    );
\gen_data_bit[35].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(35),
      Q => m_axi_arsize(0)
    );
\gen_data_bit[36].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(36),
      Q => m_axi_arsize(1)
    );
\gen_data_bit[37].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(37),
      Q => m_axi_arsize(2)
    );
\gen_data_bit[38].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(38),
      Q => m_axi_arburst(0)
    );
\gen_data_bit[39].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(39),
      Q => m_axi_arburst(1)
    );
\gen_data_bit[3].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(3),
      Q => m_axi_araddr(3)
    );
\gen_data_bit[40].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(40),
      Q => m_axi_arcache(0)
    );
\gen_data_bit[41].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(41),
      Q => m_axi_arcache(1)
    );
\gen_data_bit[42].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(42),
      Q => m_axi_arcache(2)
    );
\gen_data_bit[43].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(43),
      Q => m_axi_arcache(3)
    );
\gen_data_bit[44].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(44),
      Q => m_axi_arlen(0)
    );
\gen_data_bit[45].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(45),
      Q => m_axi_arlen(1)
    );
\gen_data_bit[46].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(46),
      Q => m_axi_arlen(2)
    );
\gen_data_bit[47].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(47),
      Q => m_axi_arlen(3)
    );
\gen_data_bit[48].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(48),
      Q => m_axi_arlen(4)
    );
\gen_data_bit[49].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(49),
      Q => m_axi_arlen(5)
    );
\gen_data_bit[4].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(4),
      Q => m_axi_araddr(4)
    );
\gen_data_bit[50].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(50),
      Q => m_axi_arlen(6)
    );
\gen_data_bit[51].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(51),
      Q => m_axi_arlen(7)
    );
\gen_data_bit[52].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(52),
      Q => m_axi_arlock(0)
    );
\gen_data_bit[54].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(53),
      Q => m_axi_arqos(0)
    );
\gen_data_bit[55].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(54),
      Q => m_axi_arqos(1)
    );
\gen_data_bit[56].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(55),
      Q => m_axi_arqos(2)
    );
\gen_data_bit[57].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(56),
      Q => m_axi_arqos(3)
    );
\gen_data_bit[5].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(5),
      Q => m_axi_araddr(5)
    );
\gen_data_bit[6].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(6),
      Q => m_axi_araddr(6)
    );
\gen_data_bit[7].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(7),
      Q => m_axi_araddr(7)
    );
\gen_data_bit[8].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(8),
      Q => m_axi_araddr(8)
    );
\gen_data_bit[9].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_arpayload_i(9),
      Q => m_axi_araddr(9)
    );
\m_valid_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE00FF00FF00"
    )
        port map (
      I0 => fifo_index_reg(3),
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      I3 => \m_valid_i_2__1_n_0\,
      I4 => fifo_index_reg(2),
      I5 => \fifo_index1__0\,
      O => \m_valid_i_1__1_n_0\
    );
\m_valid_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \^m_valid_reg_0\,
      I1 => \^m_axi_arready_i\,
      I2 => Q(0),
      I3 => aresetn,
      O => \m_valid_i_2__1_n_0\
    );
\m_valid_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^m_axi_arready_i\,
      I1 => Q(0),
      I2 => m_axi_arready,
      I3 => \^m_valid_reg_0\,
      O => \fifo_index1__0\
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_1__1_n_0\,
      Q => \^m_valid_reg_0\,
      R => '0'
    );
\s_ready_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3FFA200000000"
    )
        port map (
      I0 => \^m_axi_arready_i\,
      I1 => fifo_index_reg(2),
      I2 => \s_ready_i_2__1_n_0\,
      I3 => areset_r1,
      I4 => \fifo_index1__0\,
      I5 => aresetn,
      O => \s_ready_i_1__1_n_0\
    );
\s_ready_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => fifo_index25_out,
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      I3 => fifo_index_reg(3),
      O => \s_ready_i_2__1_n_0\
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_1__1_n_0\,
      Q => \^m_axi_arready_i\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\ is
  port (
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_reg_0 : out STD_LOGIC;
    m_axi_awready_i : out STD_LOGIC;
    m_awpayload_i : in STD_LOGIC_VECTOR ( 56 downto 0 );
    aclk : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\ : entity is "axi_infrastructure_v1_1_0_axic_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\ is
  signal \fifo_index1__0\ : STD_LOGIC;
  signal fifo_index25_out : STD_LOGIC;
  signal \fifo_index[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2__0_n_0\ : STD_LOGIC;
  signal fifo_index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awready_i\ : STD_LOGIC;
  signal \m_valid_i_1__0_n_0\ : STD_LOGIC;
  signal \m_valid_i_2__0_n_0\ : STD_LOGIC;
  signal \^m_valid_reg_0\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_1__0_n_0\ : STD_LOGIC;
  signal \s_ready_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifo_index[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_3__0\ : label is "soft_lutpair4";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_data_bit[0].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name : string;
  attribute srl_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[0].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[10].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[10].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[11].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[11].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[12].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[12].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[13].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[13].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[14].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[14].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[15].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[15].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[16].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[16].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[17].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[17].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[18].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[18].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[19].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[19].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[1].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[1].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[20].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[20].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[21].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[21].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[22].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[22].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[23].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[23].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[24].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[24].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[25].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[25].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[26].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[26].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[27].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[27].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[28].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[28].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[29].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[29].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[2].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[2].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[30].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[30].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[31].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[31].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[32].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[32].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[33].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[33].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[34].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[34].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[35].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[35].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[36].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[36].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[37].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[37].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[38].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[38].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[39].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[39].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[3].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[3].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[40].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[40].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[41].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[41].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[42].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[42].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[43].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[43].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[44].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[44].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[45].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[45].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[46].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[46].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[47].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[47].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[48].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[48].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[49].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[49].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[4].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[4].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[50].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[50].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[51].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[51].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[52].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[52].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[54].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[54].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[55].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[55].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[56].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[56].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[57].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[57].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[5].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[5].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[6].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[6].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[7].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[7].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[8].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[8].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[9].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[9].u_srl_fifo ";
  attribute SOFT_HLUTNM of m_valid_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_ready_i_2__0\ : label is "soft_lutpair3";
begin
  m_axi_awready_i <= \^m_axi_awready_i\;
  m_valid_reg_0 <= \^m_valid_reg_0\;
\fifo_index[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_index_reg(0),
      O => \fifo_index[0]_i_1__0_n_0\
    );
\fifo_index[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999699969996999"
    )
        port map (
      I0 => fifo_index_reg(1),
      I1 => fifo_index_reg(0),
      I2 => Q(0),
      I3 => \^m_axi_awready_i\,
      I4 => \^m_valid_reg_0\,
      I5 => m_axi_awready,
      O => \fifo_index[1]_i_1__0_n_0\
    );
\fifo_index[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => fifo_index_reg(2),
      I1 => fifo_index_reg(1),
      I2 => fifo_index_reg(0),
      I3 => fifo_index25_out,
      O => \fifo_index[2]_i_1__0_n_0\
    );
\fifo_index[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^m_valid_reg_0\,
      I1 => m_axi_awready,
      I2 => Q(0),
      I3 => \^m_axi_awready_i\,
      O => \fifo_index[3]_i_1__0_n_0\
    );
\fifo_index[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => fifo_index_reg(3),
      I1 => fifo_index_reg(1),
      I2 => fifo_index_reg(0),
      I3 => fifo_index25_out,
      I4 => fifo_index_reg(2),
      O => \fifo_index[3]_i_2__0_n_0\
    );
\fifo_index[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^m_valid_reg_0\,
      I2 => \^m_axi_awready_i\,
      I3 => Q(0),
      O => fifo_index25_out
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[0]_i_1__0_n_0\,
      Q => fifo_index_reg(0),
      S => SS(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[1]_i_1__0_n_0\,
      Q => fifo_index_reg(1),
      S => SS(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[2]_i_1__0_n_0\,
      Q => fifo_index_reg(2),
      S => SS(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[3]_i_2__0_n_0\,
      Q => fifo_index_reg(3),
      S => SS(0)
    );
\gen_data_bit[0].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(0),
      Q => m_axi_awaddr(0)
    );
\gen_data_bit[10].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(10),
      Q => m_axi_awaddr(10)
    );
\gen_data_bit[11].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(11),
      Q => m_axi_awaddr(11)
    );
\gen_data_bit[12].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(12),
      Q => m_axi_awaddr(12)
    );
\gen_data_bit[13].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(13),
      Q => m_axi_awaddr(13)
    );
\gen_data_bit[14].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(14),
      Q => m_axi_awaddr(14)
    );
\gen_data_bit[15].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(15),
      Q => m_axi_awaddr(15)
    );
\gen_data_bit[16].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(16),
      Q => m_axi_awaddr(16)
    );
\gen_data_bit[17].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(17),
      Q => m_axi_awaddr(17)
    );
\gen_data_bit[18].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(18),
      Q => m_axi_awaddr(18)
    );
\gen_data_bit[19].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(19),
      Q => m_axi_awaddr(19)
    );
\gen_data_bit[1].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(1),
      Q => m_axi_awaddr(1)
    );
\gen_data_bit[20].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(20),
      Q => m_axi_awaddr(20)
    );
\gen_data_bit[21].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(21),
      Q => m_axi_awaddr(21)
    );
\gen_data_bit[22].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(22),
      Q => m_axi_awaddr(22)
    );
\gen_data_bit[23].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(23),
      Q => m_axi_awaddr(23)
    );
\gen_data_bit[24].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(24),
      Q => m_axi_awaddr(24)
    );
\gen_data_bit[25].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(25),
      Q => m_axi_awaddr(25)
    );
\gen_data_bit[26].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(26),
      Q => m_axi_awaddr(26)
    );
\gen_data_bit[27].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(27),
      Q => m_axi_awaddr(27)
    );
\gen_data_bit[28].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(28),
      Q => m_axi_awaddr(28)
    );
\gen_data_bit[29].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(29),
      Q => m_axi_awaddr(29)
    );
\gen_data_bit[2].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(2),
      Q => m_axi_awaddr(2)
    );
\gen_data_bit[30].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(30),
      Q => m_axi_awaddr(30)
    );
\gen_data_bit[31].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(31),
      Q => m_axi_awaddr(31)
    );
\gen_data_bit[31].u_srl_fifo_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awready_i\,
      I1 => Q(0),
      O => push
    );
\gen_data_bit[32].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(32),
      Q => m_axi_awprot(0)
    );
\gen_data_bit[33].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(33),
      Q => m_axi_awprot(1)
    );
\gen_data_bit[34].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(34),
      Q => m_axi_awprot(2)
    );
\gen_data_bit[35].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(35),
      Q => m_axi_awsize(0)
    );
\gen_data_bit[36].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(36),
      Q => m_axi_awsize(1)
    );
\gen_data_bit[37].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(37),
      Q => m_axi_awsize(2)
    );
\gen_data_bit[38].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(38),
      Q => m_axi_awburst(0)
    );
\gen_data_bit[39].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(39),
      Q => m_axi_awburst(1)
    );
\gen_data_bit[3].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(3),
      Q => m_axi_awaddr(3)
    );
\gen_data_bit[40].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(40),
      Q => m_axi_awcache(0)
    );
\gen_data_bit[41].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(41),
      Q => m_axi_awcache(1)
    );
\gen_data_bit[42].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(42),
      Q => m_axi_awcache(2)
    );
\gen_data_bit[43].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(43),
      Q => m_axi_awcache(3)
    );
\gen_data_bit[44].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(44),
      Q => m_axi_awlen(0)
    );
\gen_data_bit[45].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(45),
      Q => m_axi_awlen(1)
    );
\gen_data_bit[46].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(46),
      Q => m_axi_awlen(2)
    );
\gen_data_bit[47].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(47),
      Q => m_axi_awlen(3)
    );
\gen_data_bit[48].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(48),
      Q => m_axi_awlen(4)
    );
\gen_data_bit[49].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(49),
      Q => m_axi_awlen(5)
    );
\gen_data_bit[4].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(4),
      Q => m_axi_awaddr(4)
    );
\gen_data_bit[50].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(50),
      Q => m_axi_awlen(6)
    );
\gen_data_bit[51].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(51),
      Q => m_axi_awlen(7)
    );
\gen_data_bit[52].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(52),
      Q => m_axi_awlock(0)
    );
\gen_data_bit[54].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(53),
      Q => m_axi_awqos(0)
    );
\gen_data_bit[55].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(54),
      Q => m_axi_awqos(1)
    );
\gen_data_bit[56].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(55),
      Q => m_axi_awqos(2)
    );
\gen_data_bit[57].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(56),
      Q => m_axi_awqos(3)
    );
\gen_data_bit[5].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(5),
      Q => m_axi_awaddr(5)
    );
\gen_data_bit[6].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(6),
      Q => m_axi_awaddr(6)
    );
\gen_data_bit[7].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(7),
      Q => m_axi_awaddr(7)
    );
\gen_data_bit[8].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(8),
      Q => m_axi_awaddr(8)
    );
\gen_data_bit[9].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => fifo_index_reg(0),
      A1 => fifo_index_reg(1),
      A2 => fifo_index_reg(2),
      A3 => fifo_index_reg(3),
      CE => push,
      CLK => aclk,
      D => m_awpayload_i(9),
      Q => m_axi_awaddr(9)
    );
\m_valid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE00FF00FF00"
    )
        port map (
      I0 => fifo_index_reg(3),
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      I3 => \m_valid_i_2__0_n_0\,
      I4 => fifo_index_reg(2),
      I5 => \fifo_index1__0\,
      O => \m_valid_i_1__0_n_0\
    );
\m_valid_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \^m_valid_reg_0\,
      I1 => \^m_axi_awready_i\,
      I2 => Q(0),
      I3 => aresetn,
      O => \m_valid_i_2__0_n_0\
    );
m_valid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^m_axi_awready_i\,
      I1 => Q(0),
      I2 => m_axi_awready,
      I3 => \^m_valid_reg_0\,
      O => \fifo_index1__0\
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_1__0_n_0\,
      Q => \^m_valid_reg_0\,
      R => '0'
    );
\s_ready_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3FFA200000000"
    )
        port map (
      I0 => \^m_axi_awready_i\,
      I1 => fifo_index_reg(2),
      I2 => \s_ready_i_2__0_n_0\,
      I3 => areset_r1,
      I4 => \fifo_index1__0\,
      I5 => aresetn,
      O => \s_ready_i_1__0_n_0\
    );
\s_ready_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => fifo_index25_out,
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      I3 => fifo_index_reg(3),
      O => \s_ready_i_2__0_n_0\
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_1__0_n_0\,
      Q => \^m_axi_awready_i\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_downsizer is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    f_mux4_return : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \r0_out_sel_r_reg[0]_0\ : out STD_LOGIC;
    f_mux40_return : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    r0_out_sel_r04_out : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_bpayload_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bvalid_i : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_downsizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_downsizer is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal \r0_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[34]\ : STD_LOGIC;
  signal r0_load : STD_LOGIC;
  signal \r0_out_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \^r0_out_sel_r_reg[0]_0\ : STD_LOGIC;
  signal \r1_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \r1_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \r1_data[2]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \r0_out_sel_r_reg[0]_0\ <= \^r0_out_sel_r_reg[0]_0\;
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0ACACA"
    )
        port map (
      I0 => m_bpayload_i(0),
      I1 => p_0_in1_in(0),
      I2 => arb_sel_i(0),
      I3 => p_0_in1_in(32),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => f_mux4_return(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => arb_sel_i(0),
      I2 => m_axi_bvalid_i,
      O => f_mux40_return
    );
\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(10),
      O => f_mux4_return(10)
    );
\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(11),
      O => f_mux4_return(11)
    );
\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(12),
      O => f_mux4_return(12)
    );
\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(13),
      O => f_mux4_return(13)
    );
\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(14),
      O => f_mux4_return(14)
    );
\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(15),
      O => f_mux4_return(15)
    );
\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(16),
      O => f_mux4_return(16)
    );
\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(17),
      O => f_mux4_return(17)
    );
\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(18),
      O => f_mux4_return(18)
    );
\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(19),
      O => f_mux4_return(19)
    );
\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0ACACA"
    )
        port map (
      I0 => m_bpayload_i(1),
      I1 => p_0_in1_in(1),
      I2 => arb_sel_i(0),
      I3 => p_0_in1_in(33),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => f_mux4_return(1)
    );
\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(20),
      O => f_mux4_return(20)
    );
\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(21),
      O => f_mux4_return(21)
    );
\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(22),
      O => f_mux4_return(22)
    );
\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(23),
      O => f_mux4_return(23)
    );
\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(24),
      O => f_mux4_return(24)
    );
\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(25),
      O => f_mux4_return(25)
    );
\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(26),
      O => f_mux4_return(26)
    );
\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(27),
      O => f_mux4_return(27)
    );
\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(28),
      O => f_mux4_return(28)
    );
\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(29),
      O => f_mux4_return(29)
    );
\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0ACACA"
    )
        port map (
      I0 => m_bpayload_i(2),
      I1 => p_0_in1_in(2),
      I2 => arb_sel_i(0),
      I3 => p_0_in1_in(34),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => f_mux4_return(2)
    );
\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(30),
      O => f_mux4_return(30)
    );
\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(31),
      O => f_mux4_return(31)
    );
\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"75D5"
    )
        port map (
      I0 => arb_sel_i(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \state_reg_n_0_[2]\,
      O => f_mux4_return(32)
    );
\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(3),
      O => f_mux4_return(3)
    );
\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(4),
      O => f_mux4_return(4)
    );
\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(5),
      O => f_mux4_return(5)
    );
\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(6),
      O => f_mux4_return(6)
    );
\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(7),
      O => f_mux4_return(7)
    );
\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(8),
      O => f_mux4_return(8)
    );
\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => arb_sel_i(0),
      I2 => p_0_in1_in(9),
      O => f_mux4_return(9)
    );
\r0_data[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg_n_0_[2]\,
      O => r0_load
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(0),
      Q => p_0_in1_in(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(10),
      Q => p_0_in1_in(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(11),
      Q => p_0_in1_in(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(12),
      Q => p_0_in1_in(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(13),
      Q => p_0_in1_in(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(14),
      Q => p_0_in1_in(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(15),
      Q => p_0_in1_in(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(16),
      Q => p_0_in1_in(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(17),
      Q => p_0_in1_in(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(18),
      Q => p_0_in1_in(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(19),
      Q => p_0_in1_in(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(1),
      Q => p_0_in1_in(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(20),
      Q => p_0_in1_in(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(21),
      Q => p_0_in1_in(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(22),
      Q => p_0_in1_in(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(23),
      Q => p_0_in1_in(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(24),
      Q => p_0_in1_in(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(25),
      Q => p_0_in1_in(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(26),
      Q => p_0_in1_in(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(27),
      Q => p_0_in1_in(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(28),
      Q => p_0_in1_in(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(29),
      Q => p_0_in1_in(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(2),
      Q => p_0_in1_in(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(30),
      Q => p_0_in1_in(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(31),
      Q => p_0_in1_in(31),
      R => '0'
    );
\r0_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(32),
      Q => \r0_data_reg_n_0_[32]\,
      R => '0'
    );
\r0_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(33),
      Q => \r0_data_reg_n_0_[33]\,
      R => '0'
    );
\r0_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(34),
      Q => \r0_data_reg_n_0_[34]\,
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(3),
      Q => p_0_in1_in(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(4),
      Q => p_0_in1_in(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(5),
      Q => p_0_in1_in(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(6),
      Q => p_0_in1_in(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(7),
      Q => p_0_in1_in(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(8),
      Q => p_0_in1_in(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(9),
      Q => p_0_in1_in(9),
      R => '0'
    );
\r0_out_sel_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066666606"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => r0_out_sel_r04_out,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \state_reg_n_0_[2]\,
      I5 => areset_r,
      O => \r0_out_sel_r[0]_i_1_n_0\
    );
\r0_out_sel_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_out_sel_r[0]_i_1_n_0\,
      Q => \^r0_out_sel_r_reg[0]_0\,
      R => '0'
    );
\r1_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => \r0_data_reg_n_0_[32]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => p_0_in1_in(32),
      O => \r1_data[0]_i_1_n_0\
    );
\r1_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => \r0_data_reg_n_0_[33]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => p_0_in1_in(33),
      O => \r1_data[1]_i_1_n_0\
    );
\r1_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => \r0_data_reg_n_0_[34]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => p_0_in1_in(34),
      O => \r1_data[2]_i_1_n_0\
    );
\r1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \r1_data[0]_i_1_n_0\,
      Q => p_0_in1_in(32),
      R => '0'
    );
\r1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \r1_data[1]_i_1_n_0\,
      Q => p_0_in1_in(33),
      R => '0'
    );
\r1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \r1_data[2]_i_1_n_0\,
      Q => p_0_in1_in(34),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2F3CEFF"
    )
        port map (
      I0 => r0_out_sel_r04_out,
      I1 => \^q\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => m_axi_rvalid,
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F0C3700"
    )
        port map (
      I0 => r0_out_sel_r04_out,
      I1 => \^q\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => m_axi_rvalid,
      O => state(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C80"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => r0_out_sel_r04_out,
      O => state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(0),
      Q => \^q\(0),
      R => areset_r
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(1),
      Q => \^q\(1),
      R => areset_r
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer is
  port (
    s_axis_tready : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \acc_data_reg[36]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    mux_tvalid_1 : in STD_LOGIC;
    s_axis_tready_0 : in STD_LOGIC;
    s_axis_tready_1 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer is
  signal \acc_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \next_xfer_is_end__1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal s_int_tready : STD_LOGIC_VECTOR ( 4 to 4 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \state[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  \state_reg[1]_0\(0) <= \^state_reg[1]_0\(0);
\acc_data[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => \^state_reg[1]_0\(0),
      I3 => s_int_tready(4),
      O => p_0_in
    );
\acc_data[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_int_tready(4),
      I1 => \^state_reg[1]_0\(0),
      O => \acc_data[35]_i_1_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(0),
      Q => m_axi_wdata(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(10),
      Q => m_axi_wdata(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(11),
      Q => m_axi_wdata(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(12),
      Q => m_axi_wdata(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(13),
      Q => m_axi_wdata(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(14),
      Q => m_axi_wdata(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(15),
      Q => m_axi_wdata(15),
      R => '0'
    );
\acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(16),
      Q => m_axi_wdata(16),
      R => '0'
    );
\acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(17),
      Q => m_axi_wdata(17),
      R => '0'
    );
\acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(18),
      Q => m_axi_wdata(18),
      R => '0'
    );
\acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(19),
      Q => m_axi_wdata(19),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(1),
      Q => m_axi_wdata(1),
      R => '0'
    );
\acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(20),
      Q => m_axi_wdata(20),
      R => '0'
    );
\acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(21),
      Q => m_axi_wdata(21),
      R => '0'
    );
\acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(22),
      Q => m_axi_wdata(22),
      R => '0'
    );
\acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(23),
      Q => m_axi_wdata(23),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(24),
      Q => m_axi_wdata(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(25),
      Q => m_axi_wdata(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(26),
      Q => m_axi_wdata(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(27),
      Q => m_axi_wdata(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(28),
      Q => m_axi_wdata(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(29),
      Q => m_axi_wdata(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(2),
      Q => m_axi_wdata(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(30),
      Q => m_axi_wdata(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(31),
      Q => m_axi_wdata(31),
      R => '0'
    );
\acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[35]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \acc_data_reg[36]_0\(0),
      R => '0'
    );
\acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[35]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \acc_data_reg[36]_0\(1),
      R => '0'
    );
\acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[35]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \acc_data_reg[36]_0\(2),
      R => '0'
    );
\acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[35]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \acc_data_reg[36]_0\(3),
      R => '0'
    );
\acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[35]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \acc_data_reg[36]_0\(4),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(3),
      Q => m_axi_wdata(3),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(4),
      Q => m_axi_wdata(4),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(5),
      Q => m_axi_wdata(5),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(6),
      Q => m_axi_wdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(7),
      Q => m_axi_wdata(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(8),
      Q => m_axi_wdata(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(9),
      Q => m_axi_wdata(9),
      R => '0'
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(16),
      Q => r0_data(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(17),
      Q => r0_data(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(18),
      Q => r0_data(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(19),
      Q => r0_data(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(20),
      Q => r0_data(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(21),
      Q => r0_data(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(22),
      Q => r0_data(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(23),
      Q => r0_data(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(24),
      Q => r0_data(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(25),
      Q => r0_data(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(26),
      Q => r0_data(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(27),
      Q => r0_data(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(28),
      Q => r0_data(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(29),
      Q => r0_data(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(30),
      Q => r0_data(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(31),
      Q => r0_data(31),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(4),
      D => s_axis_tlast,
      Q => r0_last_reg_n_0,
      R => '0'
    );
\r0_reg_sel[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF2AFFAAFF2A"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => s_int_tready(4),
      I3 => SR(0),
      I4 => \^state_reg[1]_0\(0),
      I5 => m_axi_wready,
      O => \r0_reg_sel[0]_i_1__0_n_0\
    );
\r0_reg_sel[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAA2A"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => s_int_tready(4),
      I3 => \^state_reg[1]_0\(0),
      I4 => \r0_reg_sel_reg_n_0_[0]\,
      I5 => \r0_reg_sel[1]_i_2__0_n_0\,
      O => \r0_reg_sel[1]_i_1__0_n_0\
    );
\r0_reg_sel[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^state_reg[1]_0\(0),
      I2 => SR(0),
      O => \r0_reg_sel[1]_i_2__0_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1__0_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      R => '0'
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[1]_i_1__0_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4\,
      I1 => s_int_tready(4),
      I2 => Q(0),
      I3 => mux_tvalid_1,
      I4 => s_axis_tready_0,
      I5 => s_axis_tready_1,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(2),
      O => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4\
    );
\state[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5DFFFDFFFCFFFCF"
    )
        port map (
      I0 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4\,
      I1 => m_axi_wready,
      I2 => \^state_reg[1]_0\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => r0_last_reg_n_0,
      I5 => s_int_tready(4),
      O => \state[0]_i_1__3_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \next_xfer_is_end__1\,
      I1 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4\,
      I2 => s_int_tready(4),
      I3 => \^state_reg[1]_0\(0),
      I4 => \state[1]_i_3__0_n_0\,
      O => state(1)
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => s_int_tready(4),
      I1 => \^state_reg[1]_0\(0),
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[1]\,
      O => \next_xfer_is_end__1\
    );
\state[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800F80"
    )
        port map (
      I0 => s_int_tready(4),
      I1 => r0_last_reg_n_0,
      I2 => \state_reg_n_0_[2]\,
      I3 => \^state_reg[1]_0\(0),
      I4 => m_axi_wready,
      O => \state[1]_i_3__0_n_0\
    );
\state[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A000200"
    )
        port map (
      I0 => \^state_reg[1]_0\(0),
      I1 => s_int_tready(4),
      I2 => \state_reg_n_0_[2]\,
      I3 => m_axi_wready,
      I4 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4\,
      I5 => \state[2]_i_2__2_n_0\,
      O => state(2)
    );
\state[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440000"
    )
        port map (
      I0 => \^state_reg[1]_0\(0),
      I1 => s_int_tready(4),
      I2 => \state_reg_n_0_[2]\,
      I3 => r0_last_reg_n_0,
      I4 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4\,
      I5 => \next_xfer_is_end__1\,
      O => \state[2]_i_2__2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1__3_n_0\,
      Q => s_int_tready(4),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(1),
      Q => \^state_reg[1]_0\(0),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_4 is
  port (
    \state_reg[0]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_4 : entity is "axis_dwidth_converter_v1_1_25_axisc_upsizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_4 is
  signal \next_xfer_is_end__1\ : STD_LOGIC;
  signal r0_last_i_1_n_0 : STD_LOGIC;
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal s_int_tready : STD_LOGIC_VECTOR ( 3 to 3 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[2]_i_3__0\ : label is "soft_lutpair11";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
r0_last_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_int_tready(3),
      I2 => r0_last_reg_n_0,
      O => r0_last_i_1_n_0
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => r0_last_i_1_n_0,
      Q => r0_last_reg_n_0,
      R => '0'
    );
\r0_reg_sel[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F700"
    )
        port map (
      I0 => s_int_tready(3),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      O => \r0_reg_sel[0]_i_1__2_n_0\
    );
\r0_reg_sel[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[0]\,
      I1 => s_int_tready(3),
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \r0_reg_sel_reg_n_0_[1]\,
      O => \r0_reg_sel[1]_i_1__2_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1__2_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      S => areset_r
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[1]_i_1__2_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => areset_r
    );
s_axis_tready_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A000C000"
    )
        port map (
      I0 => s_int_tready(3),
      I1 => Q(0),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(1),
      I4 => s_axis_tid(0),
      I5 => s_axis_tid(2),
      O => \state_reg[0]_0\
    );
\state[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7F7F3F3"
    )
        port map (
      I0 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => r0_last_reg_n_0,
      I4 => s_int_tready(3),
      O => state(0)
    );
\state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF808F800F000F0"
    )
        port map (
      I0 => \next_xfer_is_end__1\,
      I1 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => r0_last_reg_n_0,
      I5 => s_int_tready(3),
      O => \state[1]_i_1__1_n_0\
    );
\state[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => s_int_tready(3),
      I2 => \state_reg_n_0_[2]\,
      I3 => r0_last_reg_n_0,
      I4 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3\,
      I5 => \next_xfer_is_end__1\,
      O => state(2)
    );
\state[2]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tid(2),
      I3 => s_axis_tvalid,
      O => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3\
    );
\state[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => s_int_tready(3),
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \r0_reg_sel_reg_n_0_[1]\,
      O => \next_xfer_is_end__1\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(0),
      Q => s_int_tready(3),
      R => areset_r
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => areset_r
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_1_sp_1 : out STD_LOGIC;
    m_awpayload_i : out STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_6 : entity is "axis_dwidth_converter_v1_1_25_axisc_upsizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_6 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \acc_data[57]_i_1_n_0\ : STD_LOGIC;
  signal \next_xfer_is_end__1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal s_axis_tid_1_sn_1 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair10";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  s_axis_tid_1_sp_1 <= s_axis_tid_1_sn_1;
\acc_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => p_0_in
    );
\acc_data[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \acc_data[57]_i_1_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(0),
      Q => m_awpayload_i(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(10),
      Q => m_awpayload_i(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(11),
      Q => m_awpayload_i(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(12),
      Q => m_awpayload_i(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(13),
      Q => m_awpayload_i(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(14),
      Q => m_awpayload_i(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(15),
      Q => m_awpayload_i(15),
      R => '0'
    );
\acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(16),
      Q => m_awpayload_i(16),
      R => '0'
    );
\acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(17),
      Q => m_awpayload_i(17),
      R => '0'
    );
\acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(18),
      Q => m_awpayload_i(18),
      R => '0'
    );
\acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(19),
      Q => m_awpayload_i(19),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(1),
      Q => m_awpayload_i(1),
      R => '0'
    );
\acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(20),
      Q => m_awpayload_i(20),
      R => '0'
    );
\acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(21),
      Q => m_awpayload_i(21),
      R => '0'
    );
\acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(22),
      Q => m_awpayload_i(22),
      R => '0'
    );
\acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(23),
      Q => m_awpayload_i(23),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(24),
      Q => m_awpayload_i(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(25),
      Q => m_awpayload_i(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(26),
      Q => m_awpayload_i(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(27),
      Q => m_awpayload_i(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(28),
      Q => m_awpayload_i(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(29),
      Q => m_awpayload_i(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(2),
      Q => m_awpayload_i(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(30),
      Q => m_awpayload_i(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(31),
      Q => m_awpayload_i(31),
      R => '0'
    );
\acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_awpayload_i(32),
      R => '0'
    );
\acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_awpayload_i(33),
      R => '0'
    );
\acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_awpayload_i(34),
      R => '0'
    );
\acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_awpayload_i(35),
      R => '0'
    );
\acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_awpayload_i(36),
      R => '0'
    );
\acc_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_awpayload_i(37),
      R => '0'
    );
\acc_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_awpayload_i(38),
      R => '0'
    );
\acc_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_awpayload_i(39),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(3),
      Q => m_awpayload_i(3),
      R => '0'
    );
\acc_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m_awpayload_i(40),
      R => '0'
    );
\acc_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m_awpayload_i(41),
      R => '0'
    );
\acc_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m_awpayload_i(42),
      R => '0'
    );
\acc_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m_awpayload_i(43),
      R => '0'
    );
\acc_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m_awpayload_i(44),
      R => '0'
    );
\acc_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m_awpayload_i(45),
      R => '0'
    );
\acc_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m_awpayload_i(46),
      R => '0'
    );
\acc_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m_awpayload_i(47),
      R => '0'
    );
\acc_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => m_awpayload_i(48),
      R => '0'
    );
\acc_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => m_awpayload_i(49),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(4),
      Q => m_awpayload_i(4),
      R => '0'
    );
\acc_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => m_awpayload_i(50),
      R => '0'
    );
\acc_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => m_awpayload_i(51),
      R => '0'
    );
\acc_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => m_awpayload_i(52),
      R => '0'
    );
\acc_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => m_awpayload_i(53),
      R => '0'
    );
\acc_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => m_awpayload_i(54),
      R => '0'
    );
\acc_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => m_awpayload_i(55),
      R => '0'
    );
\acc_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => m_awpayload_i(56),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(5),
      Q => m_awpayload_i(5),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(6),
      Q => m_awpayload_i(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(7),
      Q => m_awpayload_i(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(8),
      Q => m_awpayload_i(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(9),
      Q => m_awpayload_i(9),
      R => '0'
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(16),
      Q => r0_data(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(17),
      Q => r0_data(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(18),
      Q => r0_data(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(19),
      Q => r0_data(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(20),
      Q => r0_data(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(21),
      Q => r0_data(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(22),
      Q => r0_data(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(23),
      Q => r0_data(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(24),
      Q => r0_data(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(25),
      Q => r0_data(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(26),
      Q => r0_data(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(27),
      Q => r0_data(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(28),
      Q => r0_data(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(29),
      Q => r0_data(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(30),
      Q => r0_data(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(31),
      Q => r0_data(31),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tlast,
      Q => r0_last_reg_n_0,
      R => '0'
    );
\r0_reg_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF2AAA2A"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => m_axi_awready_i,
      I5 => areset_r,
      O => \r0_reg_sel[0]_i_1_n_0\
    );
\r0_reg_sel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA2A0000"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \acc_data[57]_i_1_n_0\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      I4 => \r0_reg_sel[1]_i_2_n_0\,
      I5 => areset_r,
      O => \r0_reg_sel[1]_i_1_n_0\
    );
\r0_reg_sel[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axi_awready_i,
      O => \r0_reg_sel[1]_i_2_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      R => '0'
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[1]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => '0'
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tid(2),
      I3 => s_axis_tvalid,
      O => s_axis_tid_1_sn_1
    );
\state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDF73FFFFFF73"
    )
        port map (
      I0 => s_axis_tid_1_sn_1,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => m_axi_awready_i,
      I5 => r0_last_reg_n_0,
      O => state(0)
    );
\state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080FFFF"
    )
        port map (
      I0 => \next_xfer_is_end__1\,
      I1 => s_axis_tid_1_sn_1,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \state[1]_i_3_n_0\,
      O => \state[1]_i_1__2_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[1]\,
      O => \next_xfer_is_end__1\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFC5FFF"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => m_axi_awready_i,
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A000200"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => m_axi_awready_i,
      I4 => s_axis_tid_1_sn_1,
      I5 => \state[2]_i_2__0_n_0\,
      O => state(2)
    );
\state[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => r0_last_reg_n_0,
      I4 => s_axis_tid_1_sn_1,
      I5 => \next_xfer_is_end__1\,
      O => \state[2]_i_2__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(0),
      Q => \^q\(0),
      R => areset_r
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => areset_r
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_8 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_arpayload_i : out STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_arready_i : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_8 : entity is "axis_dwidth_converter_v1_1_25_axisc_upsizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \acc_data[57]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_xfer_is_end__1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \state[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_2__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[1]_i_3__1\ : label is "soft_lutpair9";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\acc_data[31]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => p_0_in
    );
\acc_data[57]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \acc_data[57]_i_1__0_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(0),
      Q => m_arpayload_i(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(10),
      Q => m_arpayload_i(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(11),
      Q => m_arpayload_i(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(12),
      Q => m_arpayload_i(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(13),
      Q => m_arpayload_i(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(14),
      Q => m_arpayload_i(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(15),
      Q => m_arpayload_i(15),
      R => '0'
    );
\acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(16),
      Q => m_arpayload_i(16),
      R => '0'
    );
\acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(17),
      Q => m_arpayload_i(17),
      R => '0'
    );
\acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(18),
      Q => m_arpayload_i(18),
      R => '0'
    );
\acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(19),
      Q => m_arpayload_i(19),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(1),
      Q => m_arpayload_i(1),
      R => '0'
    );
\acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(20),
      Q => m_arpayload_i(20),
      R => '0'
    );
\acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(21),
      Q => m_arpayload_i(21),
      R => '0'
    );
\acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(22),
      Q => m_arpayload_i(22),
      R => '0'
    );
\acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(23),
      Q => m_arpayload_i(23),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(24),
      Q => m_arpayload_i(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(25),
      Q => m_arpayload_i(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(26),
      Q => m_arpayload_i(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(27),
      Q => m_arpayload_i(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(28),
      Q => m_arpayload_i(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(29),
      Q => m_arpayload_i(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(2),
      Q => m_arpayload_i(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(30),
      Q => m_arpayload_i(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(31),
      Q => m_arpayload_i(31),
      R => '0'
    );
\acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(0),
      Q => m_arpayload_i(32),
      R => '0'
    );
\acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(1),
      Q => m_arpayload_i(33),
      R => '0'
    );
\acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(2),
      Q => m_arpayload_i(34),
      R => '0'
    );
\acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(3),
      Q => m_arpayload_i(35),
      R => '0'
    );
\acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(4),
      Q => m_arpayload_i(36),
      R => '0'
    );
\acc_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(5),
      Q => m_arpayload_i(37),
      R => '0'
    );
\acc_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(6),
      Q => m_arpayload_i(38),
      R => '0'
    );
\acc_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(7),
      Q => m_arpayload_i(39),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(3),
      Q => m_arpayload_i(3),
      R => '0'
    );
\acc_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(8),
      Q => m_arpayload_i(40),
      R => '0'
    );
\acc_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(9),
      Q => m_arpayload_i(41),
      R => '0'
    );
\acc_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(10),
      Q => m_arpayload_i(42),
      R => '0'
    );
\acc_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(11),
      Q => m_arpayload_i(43),
      R => '0'
    );
\acc_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(12),
      Q => m_arpayload_i(44),
      R => '0'
    );
\acc_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(13),
      Q => m_arpayload_i(45),
      R => '0'
    );
\acc_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(14),
      Q => m_arpayload_i(46),
      R => '0'
    );
\acc_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(15),
      Q => m_arpayload_i(47),
      R => '0'
    );
\acc_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(16),
      Q => m_arpayload_i(48),
      R => '0'
    );
\acc_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(17),
      Q => m_arpayload_i(49),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(4),
      Q => m_arpayload_i(4),
      R => '0'
    );
\acc_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(18),
      Q => m_arpayload_i(50),
      R => '0'
    );
\acc_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(19),
      Q => m_arpayload_i(51),
      R => '0'
    );
\acc_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(20),
      Q => m_arpayload_i(52),
      R => '0'
    );
\acc_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(22),
      Q => m_arpayload_i(53),
      R => '0'
    );
\acc_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(23),
      Q => m_arpayload_i(54),
      R => '0'
    );
\acc_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(24),
      Q => m_arpayload_i(55),
      R => '0'
    );
\acc_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[57]_i_1__0_n_0\,
      D => s_axis_tdata(25),
      Q => m_arpayload_i(56),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(5),
      Q => m_arpayload_i(5),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(6),
      Q => m_arpayload_i(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(7),
      Q => m_arpayload_i(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(8),
      Q => m_arpayload_i(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(9),
      Q => m_arpayload_i(9),
      R => '0'
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(16),
      Q => r0_data(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(17),
      Q => r0_data(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(18),
      Q => r0_data(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(19),
      Q => r0_data(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(20),
      Q => r0_data(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(21),
      Q => r0_data(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(22),
      Q => r0_data(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(23),
      Q => r0_data(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(24),
      Q => r0_data(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(25),
      Q => r0_data(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(26),
      Q => r0_data(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(27),
      Q => r0_data(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(28),
      Q => r0_data(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(29),
      Q => r0_data(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(30),
      Q => r0_data(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(31),
      Q => r0_data(31),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => s_axis_tlast,
      Q => r0_last_reg_n_0,
      R => '0'
    );
\r0_reg_sel[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF2AAA2A"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => m_axi_arready_i,
      I5 => areset_r,
      O => \r0_reg_sel[0]_i_1__1_n_0\
    );
\r0_reg_sel[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA2A0000"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \acc_data[57]_i_1__0_n_0\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      I4 => \r0_reg_sel[1]_i_2__1_n_0\,
      I5 => areset_r,
      O => \r0_reg_sel[1]_i_1__1_n_0\
    );
\r0_reg_sel[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axi_arready_i,
      O => \r0_reg_sel[1]_i_2__1_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1__1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      R => '0'
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[1]_i_1__1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => '0'
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDF73FFFFFF73"
    )
        port map (
      I0 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => m_axi_arready_i,
      I5 => r0_last_reg_n_0,
      O => state(0)
    );
\state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080FFFF"
    )
        port map (
      I0 => \next_xfer_is_end__1\,
      I1 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \state[1]_i_3__1_n_0\,
      O => \state[1]_i_1__3_n_0\
    );
\state[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[1]\,
      O => \next_xfer_is_end__1\
    );
\state[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFC5FFF"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => m_axi_arready_i,
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \state[1]_i_3__1_n_0\
    );
\state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00000"
    )
        port map (
      I0 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2\,
      I1 => \^q\(0),
      I2 => m_axi_arready_i,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => \state[2]_i_3_n_0\,
      O => state(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(1),
      I2 => s_axis_tid(0),
      I3 => s_axis_tid(2),
      O => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => r0_last_reg_n_0,
      I4 => \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2\,
      I5 => \next_xfer_is_end__1\,
      O => \state[2]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(0),
      Q => \^q\(0),
      R => areset_r
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => areset_r
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\ : in STD_LOGIC;
    f_mux4_return : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[32].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[37].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[39].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ : label is "PRIMITIVE";
begin
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(0),
      I1 => '0',
      O => m_axis_tdata(0),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(10),
      I1 => '0',
      O => m_axis_tdata(10),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(11),
      I1 => '0',
      O => m_axis_tdata(11),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(12),
      I1 => '0',
      O => m_axis_tdata(12),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(13),
      I1 => '0',
      O => m_axis_tdata(13),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(14),
      I1 => '0',
      O => m_axis_tdata(14),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(15),
      I1 => '0',
      O => m_axis_tdata(15),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(16),
      I1 => '0',
      O => m_axis_tdata(16),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(17),
      I1 => '0',
      O => m_axis_tdata(17),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(18),
      I1 => '0',
      O => m_axis_tdata(18),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(19),
      I1 => '0',
      O => m_axis_tdata(19),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(1),
      I1 => '0',
      O => m_axis_tdata(1),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(20),
      I1 => '0',
      O => m_axis_tdata(20),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(21),
      I1 => '0',
      O => m_axis_tdata(21),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(22),
      I1 => '0',
      O => m_axis_tdata(22),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(23),
      I1 => '0',
      O => m_axis_tdata(23),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(24),
      I1 => '0',
      O => m_axis_tdata(24),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(25),
      I1 => '0',
      O => m_axis_tdata(25),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(26),
      I1 => '0',
      O => m_axis_tdata(26),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(27),
      I1 => '0',
      O => m_axis_tdata(27),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(28),
      I1 => '0',
      O => m_axis_tdata(28),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(29),
      I1 => '0',
      O => m_axis_tdata(29),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(2),
      I1 => '0',
      O => m_axis_tdata(2),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(30),
      I1 => '0',
      O => m_axis_tdata(30),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(31),
      I1 => '0',
      O => m_axis_tdata(31),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[32].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '1',
      I1 => '1',
      O => m_axis_tkeep(0),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\,
      I1 => '1',
      O => m_axis_tkeep(1),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\,
      I1 => '1',
      O => m_axis_tkeep(2),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => f_mux4_return(0),
      I1 => '1',
      O => m_axis_tkeep(3),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(32),
      I1 => '0',
      O => m_axis_tlast,
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[37].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => arb_sel_i(0),
      I1 => '0',
      O => m_axis_tid(0),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => arb_sel_i(0),
      I1 => '0',
      O => m_axis_tid(1),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[39].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '0',
      I1 => '1',
      O => m_axis_tid(2),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(3),
      I1 => '0',
      O => m_axis_tdata(3),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(4),
      I1 => '0',
      O => m_axis_tdata(4),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(5),
      I1 => '0',
      O => m_axis_tdata(5),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(6),
      I1 => '0',
      O => m_axis_tdata(6),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(7),
      I1 => '0',
      O => m_axis_tdata(7),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(8),
      I1 => '0',
      O => m_axis_tdata(8),
      S => '0'
    );
\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(9),
      I1 => '0',
      O => m_axis_tdata(9),
      S => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ is
  port (
    o_i : out STD_LOGIC;
    arb_done_i : out STD_LOGIC;
    f_mux40_return : in STD_LOGIC;
    m_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    \busy_r_reg[0]\ : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ : entity is "axis_infrastructure_v1_1_0_mux_enc";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ is
  signal \^o_i\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ : label is "PRIMITIVE";
begin
  o_i <= \^o_i\;
\busy_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => \^o_i\,
      I1 => m_axis_tlast,
      I2 => m_axis_tready,
      I3 => \busy_r_reg[0]\,
      I4 => arb_gnt_i(0),
      I5 => \gen_tdest_router.busy_r\(0),
      O => arb_done_i
    );
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => f_mux40_return,
      I1 => '0',
      O => \^o_i\,
      S => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_arb_rr is
  port (
    fifo_index25_out : out STD_LOGIC;
    \arb_gnt_r_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \arb_gnt_r_reg[3]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[0]_1\ : out STD_LOGIC;
    f_mux4_return : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_1\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_2\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \fifo_index_reg[1]\ : in STD_LOGIC;
    m_axi_bvalid_i : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    arb_done_i : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_arb_rr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_arb_rr is
  signal arb_busy_ns : STD_LOGIC;
  signal arb_busy_r : STD_LOGIC;
  signal \arb_gnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[3]_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[1]_0\ : STD_LOGIC;
  signal sel_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal valid_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arb_busy_r_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \arb_gnt_r[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \arb_sel_r[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__0\ : label is "soft_lutpair14";
begin
  \arb_gnt_r_reg[0]_0\ <= \^arb_gnt_r_reg[0]_0\;
  \arb_gnt_r_reg[3]_0\ <= \^arb_gnt_r_reg[3]_0\;
  \arb_sel_r_reg[1]_0\ <= \^arb_sel_r_reg[1]_0\;
arb_busy_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => valid_i,
      I1 => arb_busy_r,
      I2 => arb_done_i,
      O => arb_busy_ns
    );
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns,
      Q => arb_busy_r,
      R => areset_r1
    );
\arb_gnt_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020002"
    )
        port map (
      I0 => valid_i,
      I1 => sel_i(0),
      I2 => areset_r1,
      I3 => arb_busy_r,
      I4 => arb_done_i,
      O => \arb_gnt_r[0]_i_1_n_0\
    );
\arb_gnt_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080008"
    )
        port map (
      I0 => valid_i,
      I1 => sel_i(0),
      I2 => areset_r1,
      I3 => arb_busy_r,
      I4 => arb_done_i,
      O => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010101010FF10"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]\,
      I1 => \^arb_gnt_r_reg[3]_0\,
      I2 => Q(0),
      I3 => m_axi_bvalid_i,
      I4 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I5 => \^arb_gnt_r_reg[0]_0\,
      O => valid_i
    );
\arb_gnt_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010100010"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]\,
      I1 => \^arb_gnt_r_reg[3]_0\,
      I2 => Q(0),
      I3 => m_axi_bvalid_i,
      I4 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I5 => \^arb_gnt_r_reg[0]_0\,
      O => sel_i(0)
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[0]_0\,
      R => '0'
    );
\arb_gnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[3]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\,
      R => '0'
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => sel_i(0),
      I1 => arb_busy_r,
      I2 => arb_done_i,
      I3 => valid_i,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => \^arb_sel_r_reg[1]_0\,
      R => areset_r1
    );
\busy_r[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => \fifo_index_reg[1]\,
      O => \arb_gnt_r_reg[0]_1\
    );
\fifo_index[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFF000000000000"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => \fifo_index_reg[1]\,
      I2 => m_axi_bvalid_i,
      I3 => m_axis_tready,
      I4 => m_axi_bready,
      I5 => m_axi_bvalid,
      O => fifo_index25_out
    );
\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\,
      O => \arb_sel_r_reg[1]_1\
    );
\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\,
      O => \arb_sel_r_reg[1]_2\
    );
\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\,
      O => f_mux4_return(0)
    );
\gen_tdest_routing.busy_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_0\,
      I1 => \gen_tdest_routing.busy_r_reg[0]\,
      I2 => arb_done_i,
      O => \gen_tdest_routing.busy_ns\
    );
\gen_tdest_routing.busy_r[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I2 => arb_done_i,
      O => \gen_tdest_routing.busy_ns_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_arb_responder is
  port (
    m_axis_tvalid : out STD_LOGIC;
    \busy_r_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    r0_out_sel_r04_out : out STD_LOGIC;
    \busy_r_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    o_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    arb_done_i : in STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_arb_responder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_arb_responder is
  signal \busy_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \^busy_r_reg[0]_0\ : STD_LOGIC;
  signal \^gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \busy_r_reg[0]_0\ <= \^busy_r_reg[0]_0\;
  \gen_tdest_router.busy_r\(0) <= \^gen_tdest_router.busy_r\(0);
\busy_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^busy_r_reg[0]_0\,
      I1 => \busy_r_reg[0]_1\(0),
      I2 => arb_done_i,
      I3 => areset_r1,
      O => \busy_r[0]_i_1_n_0\
    );
\busy_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(0),
      I1 => arb_gnt_i(0),
      I2 => arb_done_i,
      I3 => areset_r1,
      O => \busy_r[3]_i_1_n_0\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[0]_i_1_n_0\,
      Q => \^busy_r_reg[0]_0\,
      R => '0'
    );
\busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[3]_i_1_n_0\,
      Q => \^gen_tdest_router.busy_r\(0),
      R => '0'
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \busy_r_reg[0]_1\(0),
      I1 => \^busy_r_reg[0]_0\,
      I2 => arb_gnt_i(0),
      I3 => \^gen_tdest_router.busy_r\(0),
      I4 => o_i,
      O => m_axis_tvalid
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => Q(0),
      I1 => m_axis_tready,
      I2 => \^gen_tdest_router.busy_r\(0),
      I3 => arb_gnt_i(0),
      O => r0_out_sel_r04_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder is
begin
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder_2 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder_2 : entity is "axis_switch_v1_1_26_axisc_decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder_2 is
begin
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder__parameterized0\ is
  port (
    \gen_tdest_routing.decode_err_r_reg_0\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder__parameterized0\ : entity is "axis_switch_v1_1_26_axisc_decoder";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder__parameterized0\ is
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \^gen_tdest_routing.decode_err_r_reg_0\ : STD_LOGIC;
begin
  \gen_tdest_routing.decode_err_r_reg_0\ <= \^gen_tdest_routing.decode_err_r_reg_0\;
\gen_tdest_routing.decode_err_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tid(2),
      I3 => s_axis_tvalid,
      I4 => \^gen_tdest_routing.decode_err_r_reg_0\,
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^gen_tdest_routing.decode_err_r_reg_0\,
      R => areset_r1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    f_mux4_return : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \r0_out_sel_r_reg[0]\ : out STD_LOGIC;
    f_mux40_return : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    r0_out_sel_r04_out : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_bpayload_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bvalid_i : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter is
begin
\gen_downsizer_conversion.axisc_downsizer_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_downsizer
     port map (
      D(34 downto 0) => D(34 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      arb_sel_i(0) => arb_sel_i(0),
      areset_r => areset_r,
      f_mux40_return => f_mux40_return,
      f_mux4_return(32 downto 0) => f_mux4_return(32 downto 0),
      m_axi_bvalid_i => m_axi_bvalid_i,
      m_axi_rvalid => m_axi_rvalid,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0),
      r0_out_sel_r04_out => r0_out_sel_r04_out,
      \r0_out_sel_r_reg[0]_0\ => \r0_out_sel_r_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \acc_data_reg[36]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    mux_tvalid_1 : in STD_LOGIC;
    s_axis_tready_0 : in STD_LOGIC;
    s_axis_tready_1 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
areset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => SS(0),
      Q => \^sr\(0),
      R => '0'
    );
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer
     port map (
      Q(0) => Q(0),
      SR(0) => \^sr\(0),
      \acc_data_reg[36]_0\(4 downto 0) => \acc_data_reg[36]\(4 downto 0),
      aclk => aclk,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      mux_tvalid_1 => mux_tvalid_1,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tready_0 => s_axis_tready_0,
      s_axis_tready_1 => s_axis_tready_1,
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[1]_0\(0) => \state_reg[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_3\ is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_3\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_3\ is
begin
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_4
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      areset_r => areset_r,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]_0\ => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_5\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_1_sp_1 : out STD_LOGIC;
    m_awpayload_i : out STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_5\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_5\ is
  signal s_axis_tid_1_sn_1 : STD_LOGIC;
begin
  s_axis_tid_1_sp_1 <= s_axis_tid_1_sn_1;
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_6
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_awpayload_i(56 downto 0) => m_awpayload_i(56 downto 0),
      m_axi_awready_i => m_axi_awready_i,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tid_1_sp_1 => s_axis_tid_1_sn_1,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_arpayload_i : out STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_arready_i : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_7\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_7\ is
begin
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer_8
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_arpayload_i(56 downto 0) => m_arpayload_i(56 downto 0),
      m_axi_arready_i => m_axi_arready_i,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch__parameterized0\ is
  port (
    \gen_tdest_routing.decode_err_r_reg\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch__parameterized0\ : entity is "axis_switch_v1_1_26_axis_switch";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch__parameterized0\ is
begin
\gen_decoder[0].axisc_decoder_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder__parameterized0\
     port map (
      aclk => aclk,
      areset_r1 => areset_r1,
      \gen_tdest_routing.decode_err_r_reg_0\ => \gen_tdest_routing.decode_err_r_reg\,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch_arbiter is
  port (
    fifo_index25_out : out STD_LOGIC;
    \arb_gnt_r_reg[0]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    arb_gnt_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[0]_0\ : out STD_LOGIC;
    f_mux4_return : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_sel_r_reg[1]\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_1\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \fifo_index_reg[1]\ : in STD_LOGIC;
    m_axi_bvalid_i : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    arb_done_i : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch_arbiter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch_arbiter is
begin
\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_arb_rr
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      arb_done_i => arb_done_i,
      \arb_gnt_r_reg[0]_0\ => \arb_gnt_r_reg[0]\,
      \arb_gnt_r_reg[0]_1\ => \arb_gnt_r_reg[0]_0\,
      \arb_gnt_r_reg[3]_0\ => arb_gnt_i(0),
      \arb_sel_r_reg[1]_0\ => \arb_sel_r_reg[1]\,
      \arb_sel_r_reg[1]_1\ => \arb_sel_r_reg[1]_0\,
      \arb_sel_r_reg[1]_2\ => \arb_sel_r_reg[1]_1\,
      areset_r1 => areset_r1,
      f_mux4_return(0) => f_mux4_return(0),
      fifo_index25_out => fifo_index25_out,
      \fifo_index_reg[1]\ => \fifo_index_reg[1]\,
      \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_tdest_routing.busy_r_reg[0]_0\,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bvalid_i => m_axi_bvalid_i,
      m_axis_tready => m_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_transfer_mux is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_done_i : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \busy_r_reg[0]\ : out STD_LOGIC;
    r0_out_sel_r04_out : out STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\ : in STD_LOGIC;
    f_mux4_return : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    f_mux40_return : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    \busy_r_reg[0]_0\ : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_transfer_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_transfer_mux is
  signal \^arb_done_i\ : STD_LOGIC;
  signal \gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal o_i : STD_LOGIC;
begin
  arb_done_i <= \^arb_done_i\;
  m_axis_tlast <= \^m_axis_tlast\;
\gen_tdest_router.axisc_arb_responder\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_arb_responder
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      arb_done_i => \^arb_done_i\,
      arb_gnt_i(0) => arb_gnt_i(0),
      areset_r1 => areset_r1,
      \busy_r_reg[0]_0\ => \busy_r_reg[0]\,
      \busy_r_reg[0]_1\(0) => \busy_r_reg[0]_1\(0),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(3),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      o_i => o_i,
      r0_out_sel_r04_out => r0_out_sel_r04_out
    );
\gen_tdest_router.mux_enc_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc
     port map (
      arb_sel_i(0) => arb_sel_i(0),
      f_mux4_return(0) => f_mux4_return(0),
      \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(32 downto 0) => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\(32 downto 0),
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => \^m_axis_tlast\
    );
\gen_tdest_router.mux_enc_1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_infrastructure_v1_1_0_mux_enc__parameterized0\
     port map (
      arb_done_i => \^arb_done_i\,
      arb_gnt_i(0) => arb_gnt_i(0),
      \busy_r_reg[0]\ => \busy_r_reg[0]_0\,
      f_mux40_return => f_mux40_return,
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(3),
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => m_axis_tready,
      o_i => o_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    f_mux4_return : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \r0_out_sel_r_reg[0]\ : out STD_LOGIC;
    f_mux40_return : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    r0_out_sel_r04_out : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_bpayload_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bvalid_i : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized3\ : entity is "axi_mm2s_mapper_v1_1_25_stream_encapsulator";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized3\ is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter
     port map (
      D(34 downto 0) => D(34 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      arb_sel_i(0) => arb_sel_i(0),
      areset_r => areset_r,
      f_mux40_return => f_mux40_return,
      f_mux4_return(32 downto 0) => f_mux4_return(32 downto 0),
      m_axi_bvalid_i => m_axi_bvalid_i,
      m_axi_rvalid => m_axi_rvalid,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0),
      r0_out_sel_r04_out => r0_out_sel_r04_out,
      \r0_out_sel_r_reg[0]\ => \r0_out_sel_r_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_arpayload_i : out STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_arready_i : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_7\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_arpayload_i(56 downto 0) => m_arpayload_i(56 downto 0),
      m_axi_arready_i => m_axi_arready_i,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mux_tvalid_1 : out STD_LOGIC;
    m_awpayload_i : out STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander_1 : entity is "axi_mm2s_mapper_v1_1_25_stream_expander";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander_1 is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_5\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_awpayload_i(56 downto 0) => m_awpayload_i(56 downto 0),
      m_axi_awready_i => m_axi_awready_i,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tid_1_sp_1 => mux_tvalid_1,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\ is
  port (
    areset_r : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \acc_data_reg[36]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    mux_tvalid_1 : in STD_LOGIC;
    s_axis_tready_0 : in STD_LOGIC;
    s_axis_tready_1 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\ : entity is "axi_mm2s_mapper_v1_1_25_stream_expander";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\ is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\
     port map (
      Q(0) => Q(0),
      SR(0) => areset_r,
      SS(0) => SS(0),
      \acc_data_reg[36]\(4 downto 0) => \acc_data_reg[36]\(4 downto 0),
      aclk => aclk,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      mux_tvalid_1 => mux_tvalid_1,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tready_0 => s_axis_tready_0,
      s_axis_tready_1 => s_axis_tready_1,
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[1]\(0) => \state_reg[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\ is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\ : entity is "axi_mm2s_mapper_v1_1_25_stream_expander";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\ is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_3\
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      areset_r => areset_r,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]\ => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_sel_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_index25_out : out STD_LOGIC;
    \arb_gnt_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    r0_out_sel_r04_out : out STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    f_mux40_return : in STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_bvalid_i : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch is
  signal arb_done_i : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^arb_gnt_r_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^arb_sel_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^busy_r_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_decoder[0].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_5\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_8\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_9\ : STD_LOGIC;
  signal \gen_tdest_router.mux_enc_0/f_mux4_return\ : STD_LOGIC_VECTOR ( 35 to 35 );
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_0\ : STD_LOGIC;
begin
  \arb_gnt_r_reg[0]\(0) <= \^arb_gnt_r_reg[0]\(0);
  arb_sel_i(0) <= \^arb_sel_i\(0);
  \busy_r_reg[0]\(0) <= \^busy_r_reg[0]\(0);
\gen_decoder[0].axisc_decoder_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder
     port map (
      aclk => aclk,
      areset_r1 => areset_r1,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\
    );
\gen_decoder[3].axisc_decoder_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_decoder_2
     port map (
      aclk => aclk,
      areset_r1 => areset_r1,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_0\
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch_arbiter
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      arb_done_i => arb_done_i,
      arb_gnt_i(0) => arb_gnt_i(3),
      \arb_gnt_r_reg[0]\ => \^arb_gnt_r_reg[0]\(0),
      \arb_gnt_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_5\,
      \arb_sel_r_reg[1]\ => \^arb_sel_i\(0),
      \arb_sel_r_reg[1]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_8\,
      \arb_sel_r_reg[1]_1\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_9\,
      areset_r1 => areset_r1,
      f_mux4_return(0) => \gen_tdest_router.mux_enc_0/f_mux4_return\(35),
      fifo_index25_out => fifo_index25_out,
      \fifo_index_reg[1]\ => \^busy_r_reg[0]\(0),
      \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_decoder[3].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bvalid_i => m_axi_bvalid_i,
      m_axis_tready => m_axis_tready
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axisc_transfer_mux
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      arb_done_i => arb_done_i,
      arb_gnt_i(0) => arb_gnt_i(3),
      arb_sel_i(0) => \^arb_sel_i\(0),
      areset_r1 => areset_r1,
      \busy_r_reg[0]\ => \^busy_r_reg[0]\(0),
      \busy_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_5\,
      \busy_r_reg[0]_1\(0) => \^arb_gnt_r_reg[0]\(0),
      f_mux40_return => f_mux40_return,
      f_mux4_return(0) => \gen_tdest_router.mux_enc_0/f_mux4_return\(35),
      \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_8\,
      \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_9\,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\(32 downto 0) => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\(32 downto 0),
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      r0_out_sel_r04_out => r0_out_sel_r04_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is "zynq";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 38;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 40;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 53;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 44;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 52;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 54;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 35;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 38;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 40;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 53;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 44;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 52;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 54;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 35;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 35;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 36;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 36;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 37;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 37;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 37;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute LP_AR_TDEST : string;
  attribute LP_AR_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is "3'b010";
  attribute LP_AW_TDEST : string;
  attribute LP_AW_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is "3'b001";
  attribute LP_B_TDEST : string;
  attribute LP_B_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is "3'b000";
  attribute LP_LOG_M_AX_FIFO_DEPTH : integer;
  attribute LP_LOG_M_AX_FIFO_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute LP_M_AX_FIFO_DEPTH : integer;
  attribute LP_M_AX_FIFO_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is 16;
  attribute LP_R_TDEST : string;
  attribute LP_R_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is "3'b011";
  attribute LP_W_TDEST : string;
  attribute LP_W_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top : entity is "3'b100";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top is
  signal \<const0>\ : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arb_sel_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal areset_r1 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal fifo_index25_out : STD_LOGIC;
  signal \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\ : STD_LOGIC;
  signal \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/r0_out_sel_r04_out\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\ : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_1/f_mux40_return\ : STD_LOGIC;
  signal m_arpayload_i : STD_LOGIC_VECTOR ( 57 downto 0 );
  signal m_awpayload_i : STD_LOGIC_VECTOR ( 57 downto 0 );
  signal m_axi_arready_i : STD_LOGIC;
  signal m_axi_arvalid_i : STD_LOGIC;
  signal m_axi_awready_i : STD_LOGIC;
  signal m_axi_awvalid_i : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal m_axi_bvalid_i : STD_LOGIC;
  signal m_bpayload_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m_int_tvalid : STD_LOGIC_VECTOR ( 3 to 3 );
  signal mux_tvalid_1 : STD_LOGIC;
  signal s_int_tready : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r_n_35 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_0 : STD_LOGIC;
  signal u_axis_switch_v1_1_26_axis_switch_1x5_n_0 : STD_LOGIC;
begin
  m_axi_arid(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_bready <= \^m_axi_bready\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\
     port map (
      Q(0) => m_axi_arvalid_i,
      SS(0) => clear,
      aclk => aclk,
      areset_r1 => areset_r1,
      aresetn => aresetn,
      m_arpayload_i(56 downto 53) => m_arpayload_i(57 downto 54),
      m_arpayload_i(52 downto 0) => m_arpayload_i(52 downto 0),
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arready_i => m_axi_arready_i,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_valid_reg_0 => m_axi_arvalid
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\
     port map (
      Q(0) => m_axi_awvalid_i,
      SS(0) => clear,
      aclk => aclk,
      areset_r1 => areset_r1,
      aresetn => aresetn,
      m_awpayload_i(56 downto 53) => m_awpayload_i(57 downto 54),
      m_awpayload_i(52 downto 0) => m_awpayload_i(52 downto 0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awready_i => m_axi_awready_i,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_valid_reg_0 => m_axi_awvalid
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_b: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_infrastructure_v1_1_0_axic_srl_fifo
     port map (
      SS(0) => clear,
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(0),
      areset_r1 => areset_r1,
      aresetn => aresetn,
      fifo_index25_out => fifo_index25_out,
      \gen_tdest_router.busy_r\(0) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.busy_r\(0),
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bvalid_i => m_axi_bvalid_i,
      m_axis_tready => m_axis_tready,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0),
      s_ready_reg_0 => \^m_axi_bready\
    );
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized3\
     port map (
      D(34) => m_axi_rlast,
      D(33 downto 32) => m_axi_rresp(1 downto 0),
      D(31 downto 0) => m_axi_rdata(31 downto 0),
      Q(1) => m_int_tvalid(3),
      Q(0) => m_axi_rready,
      aclk => aclk,
      arb_sel_i(0) => arb_sel_i(1),
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      f_mux40_return => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_1/f_mux40_return\,
      f_mux4_return(32) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(36),
      f_mux4_return(31 downto 0) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(31 downto 0),
      m_axi_bvalid_i => m_axi_bvalid_i,
      m_axi_rvalid => m_axi_rvalid,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0),
      r0_out_sel_r04_out => \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/r0_out_sel_r04_out\,
      \r0_out_sel_r_reg[0]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r_n_35
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_ar: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander
     port map (
      Q(1) => m_axi_arvalid_i,
      Q(0) => s_int_tready(2),
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      m_arpayload_i(56 downto 53) => m_arpayload_i(57 downto 54),
      m_arpayload_i(52 downto 0) => m_arpayload_i(52 downto 0),
      m_axi_arready_i => m_axi_arready_i,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_aw: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander_1
     port map (
      Q(1) => m_axi_awvalid_i,
      Q(0) => s_int_tready(1),
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      m_awpayload_i(56 downto 53) => m_awpayload_i(57 downto 54),
      m_awpayload_i(52 downto 0) => m_awpayload_i(52 downto 0),
      m_axi_awready_i => m_axi_awready_i,
      mux_tvalid_1 => mux_tvalid_1,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_r: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\
     port map (
      Q(0) => s_int_tready(2),
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]\ => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_0
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_w: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\
     port map (
      Q(0) => s_int_tready(1),
      SS(0) => clear,
      \acc_data_reg[36]\(4) => m_axi_wlast,
      \acc_data_reg[36]\(3 downto 0) => m_axi_wstrb(3 downto 0),
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      mux_tvalid_1 => mux_tvalid_1,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tready_0 => u_axis_switch_v1_1_26_axis_switch_1x5_n_0,
      s_axis_tready_1 => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_0,
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[1]\(0) => m_axi_wvalid
    );
u_axis_switch_v1_1_26_axis_switch_1x5: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch__parameterized0\
     port map (
      aclk => aclk,
      areset_r1 => areset_r1,
      \gen_tdest_routing.decode_err_r_reg\ => u_axis_switch_v1_1_26_axis_switch_1x5_n_0,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
u_axis_switch_v1_1_26_axis_switch_5x1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_switch_v1_1_26_axis_switch
     port map (
      Q(0) => m_int_tvalid(3),
      aclk => aclk,
      \arb_gnt_r_reg[0]\(0) => arb_gnt_i(0),
      arb_sel_i(0) => arb_sel_i(1),
      areset_r1 => areset_r1,
      \busy_r_reg[0]\(0) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.busy_r\(0),
      f_mux40_return => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_1/f_mux40_return\,
      fifo_index25_out => fifo_index25_out,
      \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r_n_35,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\(32) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(36),
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\(31 downto 0) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(31 downto 0),
      m_axi_bready => \^m_axi_bready\,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bvalid_i => m_axi_bvalid_i,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      r0_out_sel_r04_out => \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/r0_out_sel_r04_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_mm2s_mapper_2_1,axi_mm2s_mapper_v1_1_25_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_mm2s_mapper_v1_1_25_top,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 3;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of inst : label is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of inst : label is 32;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of inst : label is 38;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of inst : label is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of inst : label is 40;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of inst : label is 53;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of inst : label is 1;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of inst : label is 44;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of inst : label is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of inst : label is 52;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of inst : label is 58;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of inst : label is 32;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of inst : label is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of inst : label is 54;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of inst : label is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of inst : label is 58;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of inst : label is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of inst : label is 35;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of inst : label is 58;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of inst : label is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of inst : label is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of inst : label is 32;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of inst : label is 38;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of inst : label is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of inst : label is 40;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of inst : label is 53;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of inst : label is 1;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of inst : label is 44;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of inst : label is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of inst : label is 52;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of inst : label is 58;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of inst : label is 32;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of inst : label is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of inst : label is 54;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of inst : label is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of inst : label is 58;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of inst : label is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of inst : label is 35;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of inst : label is 58;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of inst : label is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of inst : label is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of inst : label is 1;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of inst : label is 3;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of inst : label is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of inst : label is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of inst : label is 3;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of inst : label is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of inst : label is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of inst : label is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of inst : label is 35;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of inst : label is 1;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of inst : label is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of inst : label is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of inst : label is 36;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of inst : label is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of inst : label is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of inst : label is 36;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of inst : label is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of inst : label is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of inst : label is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of inst : label is 37;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of inst : label is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of inst : label is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of inst : label is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of inst : label is 37;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of inst : label is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of inst : label is 37;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of inst : label is 0;
  attribute LP_AR_TDEST : string;
  attribute LP_AR_TDEST of inst : label is "3'b010";
  attribute LP_AW_TDEST : string;
  attribute LP_AW_TDEST of inst : label is "3'b001";
  attribute LP_B_TDEST : string;
  attribute LP_B_TDEST of inst : label is "3'b000";
  attribute LP_LOG_M_AX_FIFO_DEPTH : integer;
  attribute LP_LOG_M_AX_FIFO_DEPTH of inst : label is 4;
  attribute LP_M_AX_FIFO_DEPTH : integer;
  attribute LP_M_AX_FIFO_DEPTH of inst : label is 16;
  attribute LP_R_TDEST : string;
  attribute LP_R_TDEST of inst : label is "3'b011";
  attribute LP_W_TDEST : string;
  attribute LP_W_TDEST of inst : label is "3'b100";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS:M_AXI:S_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
  attribute X_INTERFACE_PARAMETER of m_axis_tid : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TID";
  attribute X_INTERFACE_PARAMETER of s_axis_tid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mm2s_mapper_v1_1_25_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_inst_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '1',
      s_axi_wready => NLW_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
