-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jul 18 13:46:48 2022
-- Host        : L-C5H16J3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_axi_mm2s_mapper_1_1 -prefix
--               design_1_axi_mm2s_mapper_1_1_ design_1_axi_mm2s_mapper_0_1_sim_netlist.vhdl
-- Design      : design_1_axi_mm2s_mapper_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo is
  port (
    m_bpayload_i : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo is
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
begin
\gen_data_bit[0].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '0',
      CLK => aclk,
      D => '0',
      Q => m_bpayload_i(0)
    );
\gen_data_bit[1].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '0',
      CLK => aclk,
      D => '0',
      Q => m_bpayload_i(1)
    );
\gen_data_bit[2].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '0',
      CLK => aclk,
      D => '0',
      Q => m_bpayload_i(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ is
  port (
    m_axi_arready_i : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ : entity is "axi_infrastructure_v1_1_0_axic_srl_fifo";
end \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \fifo_index[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2__0_n_0\ : STD_LOGIC;
  signal fifo_index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arready_i\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_1__0_n_0\ : STD_LOGIC;
  signal \s_ready_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[0]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fifo_index[1]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fifo_index[2]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2__0\ : label is "soft_lutpair0";
begin
  SS(0) <= \^ss\(0);
  m_axi_arready_i <= \^m_axi_arready_i\;
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^ss\(0)
    );
\fifo_index[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_index_reg(0),
      O => \fifo_index[0]_i_1__0_n_0\
    );
\fifo_index[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fifo_index_reg(1),
      I1 => fifo_index_reg(0),
      O => \fifo_index[1]_i_1__0_n_0\
    );
\fifo_index[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => fifo_index_reg(2),
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      O => \fifo_index[2]_i_1__0_n_0\
    );
\fifo_index[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_arready_i\,
      I1 => Q(0),
      O => push
    );
\fifo_index[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78F0"
    )
        port map (
      I0 => fifo_index_reg(1),
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(3),
      I3 => fifo_index_reg(2),
      O => \fifo_index[3]_i_2__0_n_0\
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[0]_i_1__0_n_0\,
      Q => fifo_index_reg(0),
      S => \^ss\(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[1]_i_1__0_n_0\,
      Q => fifo_index_reg(1),
      S => \^ss\(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[2]_i_1__0_n_0\,
      Q => fifo_index_reg(2),
      S => \^ss\(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[3]_i_2__0_n_0\,
      Q => fifo_index_reg(3),
      S => \^ss\(0)
    );
\s_ready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \s_ready_i_2__0_n_0\,
      I1 => areset_r,
      I2 => \^m_axi_arready_i\,
      O => \s_ready_i_1__0_n_0\
    );
\s_ready_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => fifo_index_reg(2),
      I1 => fifo_index_reg(3),
      I2 => fifo_index_reg(1),
      I3 => fifo_index_reg(0),
      I4 => \^m_axi_arready_i\,
      I5 => Q(0),
      O => \s_ready_i_2__0_n_0\
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_1__0_n_0\,
      Q => \^m_axi_arready_i\,
      R => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\ is
  port (
    m_axi_awready_i : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\ : entity is "axi_infrastructure_v1_1_0_axic_srl_fifo";
end \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\ is
  signal \fifo_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2_n_0\ : STD_LOGIC;
  signal fifo_index_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awready_i\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal s_ready_i_1_n_0 : STD_LOGIC;
  signal s_ready_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_index[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_index[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2\ : label is "soft_lutpair2";
begin
  m_axi_awready_i <= \^m_axi_awready_i\;
\fifo_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_index_reg(0),
      O => \fifo_index[0]_i_1_n_0\
    );
\fifo_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fifo_index_reg(1),
      I1 => fifo_index_reg(0),
      O => \fifo_index[1]_i_1_n_0\
    );
\fifo_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => fifo_index_reg(2),
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(1),
      O => \fifo_index[2]_i_1_n_0\
    );
\fifo_index[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awready_i\,
      I1 => Q(0),
      O => push
    );
\fifo_index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78F0"
    )
        port map (
      I0 => fifo_index_reg(1),
      I1 => fifo_index_reg(0),
      I2 => fifo_index_reg(3),
      I3 => fifo_index_reg(2),
      O => \fifo_index[3]_i_2_n_0\
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[0]_i_1_n_0\,
      Q => fifo_index_reg(0),
      S => SR(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[1]_i_1_n_0\,
      Q => fifo_index_reg(1),
      S => SR(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[2]_i_1_n_0\,
      Q => fifo_index_reg(2),
      S => SR(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => push,
      D => \fifo_index[3]_i_2_n_0\,
      Q => fifo_index_reg(3),
      S => SR(0)
    );
s_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => s_ready_i_2_n_0,
      I1 => areset_r,
      I2 => \^m_axi_awready_i\,
      O => s_ready_i_1_n_0
    );
s_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => fifo_index_reg(2),
      I1 => fifo_index_reg(3),
      I2 => fifo_index_reg(1),
      I3 => fifo_index_reg(0),
      I4 => \^m_axi_awready_i\,
      I5 => Q(0),
      O => s_ready_i_2_n_0
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_1_n_0,
      Q => \^m_axi_awready_i\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter is
  port (
    count_is_max_reg_0 : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \num_active_trans_reg[2]_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    count_is_max_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter is
  signal \count_is_max_i_1__0_n_0\ : STD_LOGIC;
  signal \count_is_max_i_2__0_n_0\ : STD_LOGIC;
  signal count_is_max_i_3_n_0 : STD_LOGIC;
  signal \^count_is_max_reg_0\ : STD_LOGIC;
  signal \num_active_trans[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \num_active_trans[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \num_active_trans[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_2__1_n_0\ : STD_LOGIC;
  signal num_active_trans_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_is_max_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \num_active_trans[1]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \num_active_trans[2]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \num_active_trans[3]_i_2__1\ : label is "soft_lutpair19";
begin
  count_is_max_reg_0 <= \^count_is_max_reg_0\;
\count_is_max_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FF00400000"
    )
        port map (
      I0 => \count_is_max_i_2__0_n_0\,
      I1 => num_active_trans_reg(1),
      I2 => num_active_trans_reg(3),
      I3 => count_is_max_i_3_n_0,
      I4 => count_is_max_reg_1,
      I5 => \^count_is_max_reg_0\,
      O => \count_is_max_i_1__0_n_0\
    );
\count_is_max_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => num_active_trans_reg(0),
      I1 => num_active_trans_reg(2),
      O => \count_is_max_i_2__0_n_0\
    );
count_is_max_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^count_is_max_reg_0\,
      I2 => Q(0),
      O => count_is_max_i_3_n_0
    );
count_is_max_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_is_max_i_1__0_n_0\,
      Q => \^count_is_max_reg_0\,
      R => SS(0)
    );
\num_active_trans[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_active_trans_reg(0),
      O => \num_active_trans[0]_i_1__1_n_0\
    );
\num_active_trans[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => num_active_trans_reg(1),
      I1 => \num_active_trans_reg[2]_0\,
      I2 => num_active_trans_reg(0),
      O => \num_active_trans[1]_i_1__1_n_0\
    );
\num_active_trans[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC9"
    )
        port map (
      I0 => \num_active_trans_reg[2]_0\,
      I1 => num_active_trans_reg(2),
      I2 => num_active_trans_reg(1),
      I3 => num_active_trans_reg(0),
      O => \num_active_trans[2]_i_1__1_n_0\
    );
\num_active_trans[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => num_active_trans_reg(0),
      I1 => num_active_trans_reg(2),
      I2 => num_active_trans_reg(1),
      I3 => num_active_trans_reg(3),
      I4 => \num_active_trans_reg[2]_0\,
      O => \num_active_trans[3]_i_2__1_n_0\
    );
\num_active_trans_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[0]_i_1__1_n_0\,
      Q => num_active_trans_reg(0),
      R => SS(0)
    );
\num_active_trans_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[1]_i_1__1_n_0\,
      Q => num_active_trans_reg(1),
      R => SS(0)
    );
\num_active_trans_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[2]_i_1__1_n_0\,
      Q => num_active_trans_reg(2),
      R => SS(0)
    );
\num_active_trans_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[3]_i_2__1_n_0\,
      Q => num_active_trans_reg(3),
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_2 is
  port (
    count_is_max : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid_0 : out STD_LOGIC;
    s_axis_tid_2_sp_1 : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    count_is_zero : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    count_is_max_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_2 : entity is "axi_mm2s_mapper_v1_1_25_transaction_counter";
end design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_2;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_2 is
  signal \^count_is_max\ : STD_LOGIC;
  signal count_is_max_i_1_n_0 : STD_LOGIC;
  signal count_is_max_i_2_n_0 : STD_LOGIC;
  signal \num_active_trans[0]_i_1_n_0\ : STD_LOGIC;
  signal \num_active_trans[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_4_n_0\ : STD_LOGIC;
  signal num_active_trans_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awvalid_0\ : STD_LOGIC;
  signal s_axis_tid_2_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_is_max_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \num_active_trans[1]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \num_active_trans[2]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \num_active_trans[3]_i_2__0\ : label is "soft_lutpair21";
begin
  count_is_max <= \^count_is_max\;
  s_axi_awvalid_0 <= \^s_axi_awvalid_0\;
  s_axis_tid_2_sp_1 <= s_axis_tid_2_sn_1;
count_is_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FF00400000"
    )
        port map (
      I0 => count_is_max_i_2_n_0,
      I1 => num_active_trans_reg(1),
      I2 => num_active_trans_reg(3),
      I3 => \^s_axi_awvalid_0\,
      I4 => s_axis_tid_2_sn_1,
      I5 => \^count_is_max\,
      O => count_is_max_i_1_n_0
    );
count_is_max_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => num_active_trans_reg(0),
      I1 => num_active_trans_reg(2),
      O => count_is_max_i_2_n_0
    );
count_is_max_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => count_is_max_i_1_n_0,
      Q => \^count_is_max\,
      R => SS(0)
    );
\num_active_trans[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_active_trans_reg(0),
      O => \num_active_trans[0]_i_1_n_0\
    );
\num_active_trans[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => num_active_trans_reg(1),
      I1 => \num_active_trans[3]_i_4_n_0\,
      I2 => num_active_trans_reg(0),
      O => \num_active_trans[1]_i_1__0_n_0\
    );
\num_active_trans[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC9"
    )
        port map (
      I0 => \num_active_trans[3]_i_4_n_0\,
      I1 => num_active_trans_reg(2),
      I2 => num_active_trans_reg(1),
      I3 => num_active_trans_reg(0),
      O => \num_active_trans[2]_i_1__0_n_0\
    );
\num_active_trans[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59555555"
    )
        port map (
      I0 => \^s_axi_awvalid_0\,
      I1 => Q(0),
      I2 => count_is_zero,
      I3 => s_axi_wvalid,
      I4 => s_axi_wlast,
      O => E(0)
    );
\num_active_trans[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555556555555555"
    )
        port map (
      I0 => \^s_axi_awvalid_0\,
      I1 => s_axis_tid(2),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(0),
      I4 => s_axis_tid(1),
      I5 => s_axi_bready,
      O => \num_active_trans[3]_i_1__0_n_0\
    );
\num_active_trans[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => num_active_trans_reg(0),
      I1 => num_active_trans_reg(2),
      I2 => num_active_trans_reg(1),
      I3 => num_active_trans_reg(3),
      I4 => \num_active_trans[3]_i_4_n_0\,
      O => \num_active_trans[3]_i_2__0_n_0\
    );
\num_active_trans[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^count_is_max\,
      I2 => count_is_max_reg_0(0),
      O => \^s_axi_awvalid_0\
    );
\num_active_trans[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axis_tid(1),
      I2 => s_axis_tid(0),
      I3 => s_axis_tvalid,
      I4 => s_axis_tid(2),
      I5 => \^s_axi_awvalid_0\,
      O => \num_active_trans[3]_i_4_n_0\
    );
\num_active_trans_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \num_active_trans[3]_i_1__0_n_0\,
      D => \num_active_trans[0]_i_1_n_0\,
      Q => num_active_trans_reg(0),
      R => SS(0)
    );
\num_active_trans_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \num_active_trans[3]_i_1__0_n_0\,
      D => \num_active_trans[1]_i_1__0_n_0\,
      Q => num_active_trans_reg(1),
      R => SS(0)
    );
\num_active_trans_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \num_active_trans[3]_i_1__0_n_0\,
      D => \num_active_trans[2]_i_1__0_n_0\,
      Q => num_active_trans_reg(2),
      R => SS(0)
    );
\num_active_trans_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \num_active_trans[3]_i_1__0_n_0\,
      D => \num_active_trans[3]_i_2__0_n_0\,
      Q => num_active_trans_reg(3),
      R => SS(0)
    );
s_axis_tready_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => s_axis_tid(2),
      I1 => s_axis_tvalid,
      I2 => s_axis_tid(0),
      I3 => s_axis_tid(1),
      I4 => s_axi_bready,
      O => s_axis_tid_2_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_3 is
  port (
    count_is_zero : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    count_is_zero_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_3 : entity is "axi_mm2s_mapper_v1_1_25_transaction_counter";
end design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_3;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_3 is
  signal \^count_is_zero\ : STD_LOGIC;
  signal count_is_zero_i_1_n_0 : STD_LOGIC;
  signal count_is_zero_i_2_n_0 : STD_LOGIC;
  signal count_is_zero_i_3_n_0 : STD_LOGIC;
  signal \num_active_trans[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[1]_i_1_n_0\ : STD_LOGIC;
  signal \num_active_trans[2]_i_1_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_2_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_3_n_0\ : STD_LOGIC;
  signal num_active_trans_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_is_zero_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of count_is_zero_i_3 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \num_active_trans[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \num_active_trans[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \num_active_trans[3]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \num_active_trans[3]_i_3\ : label is "soft_lutpair24";
begin
  count_is_zero <= \^count_is_zero\;
count_is_zero_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55F555D55555"
    )
        port map (
      I0 => aresetn,
      I1 => count_is_zero_i_2_n_0,
      I2 => s_axi_wlast,
      I3 => count_is_zero_i_3_n_0,
      I4 => count_is_zero_reg_0,
      I5 => \^count_is_zero\,
      O => count_is_zero_i_1_n_0
    );
count_is_zero_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => num_active_trans_reg(1),
      I1 => num_active_trans_reg(0),
      I2 => num_active_trans_reg(3),
      I3 => num_active_trans_reg(2),
      O => count_is_zero_i_2_n_0
    );
count_is_zero_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^count_is_zero\,
      I2 => Q(0),
      O => count_is_zero_i_3_n_0
    );
count_is_zero_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => count_is_zero_i_1_n_0,
      Q => \^count_is_zero\,
      R => '0'
    );
\num_active_trans[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_active_trans_reg(0),
      O => \num_active_trans[0]_i_1__0_n_0\
    );
\num_active_trans[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => num_active_trans_reg(1),
      I1 => \num_active_trans[3]_i_3_n_0\,
      I2 => num_active_trans_reg(0),
      O => \num_active_trans[1]_i_1_n_0\
    );
\num_active_trans[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => num_active_trans_reg(2),
      I1 => num_active_trans_reg(0),
      I2 => num_active_trans_reg(1),
      I3 => \num_active_trans[3]_i_3_n_0\,
      O => \num_active_trans[2]_i_1_n_0\
    );
\num_active_trans[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => num_active_trans_reg(0),
      I1 => num_active_trans_reg(1),
      I2 => num_active_trans_reg(2),
      I3 => num_active_trans_reg(3),
      I4 => \num_active_trans[3]_i_3_n_0\,
      O => \num_active_trans[3]_i_2_n_0\
    );
\num_active_trans[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => s_axi_wvalid,
      I2 => \^count_is_zero\,
      I3 => Q(0),
      I4 => count_is_zero_reg_0,
      O => \num_active_trans[3]_i_3_n_0\
    );
\num_active_trans_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[0]_i_1__0_n_0\,
      Q => num_active_trans_reg(0),
      R => SS(0)
    );
\num_active_trans_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[1]_i_1_n_0\,
      Q => num_active_trans_reg(1),
      R => SS(0)
    );
\num_active_trans_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[2]_i_1_n_0\,
      Q => num_active_trans_reg(2),
      R => SS(0)
    );
\num_active_trans_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[3]_i_2_n_0\,
      Q => num_active_trans_reg(3),
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    last_out1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_int_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_int_tdata : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \r0_out_sel_r_reg[0]_0\ : out STD_LOGIC;
    \r0_out_sel_r_reg[0]_1\ : out STD_LOGIC;
    \r0_data_reg[31]_0\ : out STD_LOGIC;
    \r0_data_reg[30]_0\ : out STD_LOGIC;
    \r0_data_reg[29]_0\ : out STD_LOGIC;
    \r0_data_reg[28]_0\ : out STD_LOGIC;
    \r0_data_reg[27]_0\ : out STD_LOGIC;
    \r0_data_reg[26]_0\ : out STD_LOGIC;
    \r0_data_reg[25]_0\ : out STD_LOGIC;
    \r0_data_reg[24]_0\ : out STD_LOGIC;
    \r0_data_reg[23]_0\ : out STD_LOGIC;
    \r0_data_reg[22]_0\ : out STD_LOGIC;
    \r0_data_reg[21]_0\ : out STD_LOGIC;
    \r0_data_reg[20]_0\ : out STD_LOGIC;
    \r0_data_reg[19]_0\ : out STD_LOGIC;
    \r0_data_reg[18]_0\ : out STD_LOGIC;
    \r0_data_reg[17]_0\ : out STD_LOGIC;
    \r0_data_reg[16]_0\ : out STD_LOGIC;
    \r0_data_reg[15]_0\ : out STD_LOGIC;
    \r0_data_reg[14]_0\ : out STD_LOGIC;
    \r0_data_reg[13]_0\ : out STD_LOGIC;
    \r0_data_reg[12]_0\ : out STD_LOGIC;
    \r0_data_reg[11]_0\ : out STD_LOGIC;
    \r0_data_reg[10]_0\ : out STD_LOGIC;
    \r0_data_reg[9]_0\ : out STD_LOGIC;
    \r0_data_reg[8]_0\ : out STD_LOGIC;
    \r0_data_reg[7]_0\ : out STD_LOGIC;
    \r0_data_reg[6]_0\ : out STD_LOGIC;
    \r0_data_reg[5]_0\ : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    \r0_out_sel_r_reg[0]_2\ : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal \r0_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[36]\ : STD_LOGIC;
  signal r0_load : STD_LOGIC;
  signal \r0_out_sel_r[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r0_out_sel_r_reg_n_0_[0]\ : STD_LOGIC;
  signal r1_load : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(32),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => p_0_in1_in(0),
      O => m_int_tdata(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(10),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[10]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(11),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[11]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(12),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[12]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(13),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[13]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(14),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[14]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(15),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[15]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(16),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[16]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(17),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[17]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[18]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(19),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[19]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(33),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => p_0_in1_in(1),
      O => m_int_tdata(1)
    );
\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(20),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[20]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(21),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[21]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(22),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[22]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(23),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[23]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(24),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[24]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(25),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[25]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(26),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[26]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(27),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[27]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(28),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[28]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(29),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[29]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(34),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => p_0_in1_in(2),
      O => m_int_tdata(2)
    );
\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(30),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[30]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(31),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[31]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_out_sel_r_reg[0]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_out_sel_r_reg[0]_1\
    );
\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r0_out_sel_r_reg_n_0_[0]\,
      O => m_int_tkeep(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => last_out1
    );
\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(35),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => p_0_in1_in(3),
      O => m_int_tdata(3)
    );
\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in1_in(36),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => p_0_in1_in(4),
      O => m_int_tdata(4)
    );
\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[5]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(6),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[6]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(7),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[7]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(8),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[8]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(9),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_data_reg[9]_0\
    );
\r0_data[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(0),
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
\r0_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(35),
      Q => \r0_data_reg_n_0_[35]\,
      R => '0'
    );
\r0_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(36),
      Q => \r0_data_reg_n_0_[36]\,
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
\r0_out_sel_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6A684A6"
    )
        port map (
      I0 => \r0_out_sel_r_reg_n_0_[0]\,
      I1 => \^q\(1),
      I2 => \r0_out_sel_r_reg[0]_2\,
      I3 => \^q\(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => areset_r,
      O => \r0_out_sel_r[0]_i_1__0_n_0\
    );
\r0_out_sel_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_out_sel_r[0]_i_1__0_n_0\,
      Q => \r0_out_sel_r_reg_n_0_[0]\,
      R => '0'
    );
\r1_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      O => r1_load
    );
\r1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[32]\,
      Q => p_0_in1_in(32),
      R => '0'
    );
\r1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[33]\,
      Q => p_0_in1_in(33),
      R => '0'
    );
\r1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[34]\,
      Q => p_0_in1_in(34),
      R => '0'
    );
\r1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[35]\,
      Q => p_0_in1_in(35),
      R => '0'
    );
\r1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[36]\,
      Q => p_0_in1_in(36),
      R => '0'
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_is_zero,
      O => s_axi_wready
    );
\state[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF35555FFF355FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_wvalid,
      I2 => count_is_zero,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(0),
      I5 => \r0_out_sel_r_reg[0]_2\,
      O => state(0)
    );
\state[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080F08AAAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \r0_out_sel_r_reg[0]_2\,
      I2 => \state_reg_n_0_[2]\,
      I3 => s_axi_wvalid,
      I4 => count_is_zero,
      I5 => \^q\(0),
      O => state(1)
    );
\state[2]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080208000800080"
    )
        port map (
      I0 => \r0_out_sel_r_reg[0]_2\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => count_is_zero,
      I5 => s_axi_wvalid,
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
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_13 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC;
    \arb_sel_r_reg[0]\ : out STD_LOGIC;
    \gen_data_bit[2].u_srl_fifo\ : out STD_LOGIC;
    \r0_out_sel_r_reg[0]_0\ : out STD_LOGIC;
    \gen_data_bit[1].u_srl_fifo\ : out STD_LOGIC;
    \gen_data_bit[0].u_srl_fifo\ : out STD_LOGIC;
    \r1_data_reg[3]_0\ : out STD_LOGIC;
    \r1_data_reg[4]_0\ : out STD_LOGIC;
    \r1_data_reg[5]_0\ : out STD_LOGIC;
    \r1_data_reg[6]_0\ : out STD_LOGIC;
    \r1_data_reg[7]_0\ : out STD_LOGIC;
    \r1_data_reg[8]_0\ : out STD_LOGIC;
    \r1_data_reg[9]_0\ : out STD_LOGIC;
    \r1_data_reg[10]_0\ : out STD_LOGIC;
    \r1_data_reg[11]_0\ : out STD_LOGIC;
    \r1_data_reg[12]_0\ : out STD_LOGIC;
    \r1_data_reg[13]_0\ : out STD_LOGIC;
    \r1_data_reg[14]_0\ : out STD_LOGIC;
    \r1_data_reg[15]_0\ : out STD_LOGIC;
    \r1_data_reg[16]_0\ : out STD_LOGIC;
    \r1_data_reg[17]_0\ : out STD_LOGIC;
    \r1_data_reg[18]_0\ : out STD_LOGIC;
    \r1_data_reg[19]_0\ : out STD_LOGIC;
    \r1_data_reg[20]_0\ : out STD_LOGIC;
    \r1_data_reg[22]_0\ : out STD_LOGIC;
    \r1_data_reg[23]_0\ : out STD_LOGIC;
    \r1_data_reg[24]_0\ : out STD_LOGIC;
    \r1_data_reg[25]_0\ : out STD_LOGIC;
    \r0_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    \r0_out_sel_r_reg[0]_1\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_bpayload_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 56 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_13 : entity is "axis_dwidth_converter_v1_1_25_axisc_downsizer";
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_13;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_13 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 57 downto 0 );
  signal \r0_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[57]\ : STD_LOGIC;
  signal r0_load : STD_LOGIC;
  signal \r0_out_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \^r0_out_sel_r_reg[0]_0\ : STD_LOGIC;
  signal r1_load : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \r0_out_sel_r_reg[0]_0\ <= \^r0_out_sel_r_reg[0]_0\;
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC00AA"
    )
        port map (
      I0 => m_bpayload_i(0),
      I1 => p_0_in1_in(0),
      I2 => p_0_in1_in(32),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \^r0_out_sel_r_reg[0]_0\,
      O => \gen_data_bit[0].u_srl_fifo\
    );
\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(42),
      I1 => p_0_in1_in(10),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[10]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(43),
      I1 => p_0_in1_in(11),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[11]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(44),
      I1 => p_0_in1_in(12),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[12]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(45),
      I1 => p_0_in1_in(13),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[13]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(46),
      I1 => p_0_in1_in(14),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[14]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(47),
      I1 => p_0_in1_in(15),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[15]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(48),
      I1 => p_0_in1_in(16),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[16]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(49),
      I1 => p_0_in1_in(17),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[17]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(50),
      I1 => p_0_in1_in(18),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[18]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(51),
      I1 => p_0_in1_in(19),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[19]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC00AA"
    )
        port map (
      I0 => m_bpayload_i(1),
      I1 => p_0_in1_in(1),
      I2 => p_0_in1_in(33),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \^r0_out_sel_r_reg[0]_0\,
      O => \gen_data_bit[1].u_srl_fifo\
    );
\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(52),
      I1 => p_0_in1_in(20),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[20]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(54),
      I1 => p_0_in1_in(22),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[22]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(55),
      I1 => p_0_in1_in(23),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[23]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(56),
      I1 => p_0_in1_in(24),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[24]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(57),
      I1 => p_0_in1_in(25),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[25]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC00AA"
    )
        port map (
      I0 => m_bpayload_i(2),
      I1 => p_0_in1_in(2),
      I2 => p_0_in1_in(34),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \^r0_out_sel_r_reg[0]_0\,
      O => \gen_data_bit[2].u_srl_fifo\
    );
\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005DD5"
    )
        port map (
      I0 => arb_sel_i(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => arb_sel_i(1),
      O => \arb_sel_r_reg[0]\
    );
\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(35),
      I1 => p_0_in1_in(3),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[3]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(36),
      I1 => p_0_in1_in(4),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[4]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(37),
      I1 => p_0_in1_in(5),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[5]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(38),
      I1 => p_0_in1_in(6),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[6]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(39),
      I1 => p_0_in1_in(7),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[7]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(40),
      I1 => p_0_in1_in(8),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[8]_0\
    );
\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => p_0_in1_in(41),
      I1 => p_0_in1_in(9),
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => \^r0_out_sel_r_reg[0]_0\,
      O => \r1_data_reg[9]_0\
    );
\r0_data[57]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(0),
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
      Q => \r0_data_reg[31]_0\(0),
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
      Q => \r0_data_reg[31]_0\(1),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(27),
      Q => \r0_data_reg[31]_0\(2),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(28),
      Q => \r0_data_reg[31]_0\(3),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(29),
      Q => \r0_data_reg[31]_0\(4),
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
      Q => \r0_data_reg[31]_0\(5),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(31),
      Q => \r0_data_reg[31]_0\(6),
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
\r0_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(35),
      Q => \r0_data_reg_n_0_[35]\,
      R => '0'
    );
\r0_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(36),
      Q => \r0_data_reg_n_0_[36]\,
      R => '0'
    );
\r0_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(37),
      Q => \r0_data_reg_n_0_[37]\,
      R => '0'
    );
\r0_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(38),
      Q => \r0_data_reg_n_0_[38]\,
      R => '0'
    );
\r0_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(39),
      Q => \r0_data_reg_n_0_[39]\,
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
\r0_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(40),
      Q => \r0_data_reg_n_0_[40]\,
      R => '0'
    );
\r0_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(41),
      Q => \r0_data_reg_n_0_[41]\,
      R => '0'
    );
\r0_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(42),
      Q => \r0_data_reg_n_0_[42]\,
      R => '0'
    );
\r0_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(43),
      Q => \r0_data_reg_n_0_[43]\,
      R => '0'
    );
\r0_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(44),
      Q => \r0_data_reg_n_0_[44]\,
      R => '0'
    );
\r0_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(45),
      Q => \r0_data_reg_n_0_[45]\,
      R => '0'
    );
\r0_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(46),
      Q => \r0_data_reg_n_0_[46]\,
      R => '0'
    );
\r0_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(47),
      Q => \r0_data_reg_n_0_[47]\,
      R => '0'
    );
\r0_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(48),
      Q => \r0_data_reg_n_0_[48]\,
      R => '0'
    );
\r0_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(49),
      Q => \r0_data_reg_n_0_[49]\,
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
\r0_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(50),
      Q => \r0_data_reg_n_0_[50]\,
      R => '0'
    );
\r0_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(51),
      Q => \r0_data_reg_n_0_[51]\,
      R => '0'
    );
\r0_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(52),
      Q => \r0_data_reg_n_0_[52]\,
      R => '0'
    );
\r0_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(53),
      Q => \r0_data_reg_n_0_[54]\,
      R => '0'
    );
\r0_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(54),
      Q => \r0_data_reg_n_0_[55]\,
      R => '0'
    );
\r0_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(55),
      Q => \r0_data_reg_n_0_[56]\,
      R => '0'
    );
\r0_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(56),
      Q => \r0_data_reg_n_0_[57]\,
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
      INIT => X"00000000A6A684A6"
    )
        port map (
      I0 => \^r0_out_sel_r_reg[0]_0\,
      I1 => \^q\(1),
      I2 => \r0_out_sel_r_reg[0]_1\,
      I3 => \^q\(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => SR(0),
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
\r1_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      O => r1_load
    );
\r1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[32]\,
      Q => p_0_in1_in(32),
      R => '0'
    );
\r1_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[42]\,
      Q => p_0_in1_in(42),
      R => '0'
    );
\r1_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[43]\,
      Q => p_0_in1_in(43),
      R => '0'
    );
\r1_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[44]\,
      Q => p_0_in1_in(44),
      R => '0'
    );
\r1_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[45]\,
      Q => p_0_in1_in(45),
      R => '0'
    );
\r1_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[46]\,
      Q => p_0_in1_in(46),
      R => '0'
    );
\r1_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[47]\,
      Q => p_0_in1_in(47),
      R => '0'
    );
\r1_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[48]\,
      Q => p_0_in1_in(48),
      R => '0'
    );
\r1_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[49]\,
      Q => p_0_in1_in(49),
      R => '0'
    );
\r1_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[50]\,
      Q => p_0_in1_in(50),
      R => '0'
    );
\r1_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[51]\,
      Q => p_0_in1_in(51),
      R => '0'
    );
\r1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[33]\,
      Q => p_0_in1_in(33),
      R => '0'
    );
\r1_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[52]\,
      Q => p_0_in1_in(52),
      R => '0'
    );
\r1_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[54]\,
      Q => p_0_in1_in(54),
      R => '0'
    );
\r1_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[55]\,
      Q => p_0_in1_in(55),
      R => '0'
    );
\r1_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[56]\,
      Q => p_0_in1_in(56),
      R => '0'
    );
\r1_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[57]\,
      Q => p_0_in1_in(57),
      R => '0'
    );
\r1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[34]\,
      Q => p_0_in1_in(34),
      R => '0'
    );
\r1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[35]\,
      Q => p_0_in1_in(35),
      R => '0'
    );
\r1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[36]\,
      Q => p_0_in1_in(36),
      R => '0'
    );
\r1_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[37]\,
      Q => p_0_in1_in(37),
      R => '0'
    );
\r1_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[38]\,
      Q => p_0_in1_in(38),
      R => '0'
    );
\r1_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[39]\,
      Q => p_0_in1_in(39),
      R => '0'
    );
\r1_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[40]\,
      Q => p_0_in1_in(40),
      R => '0'
    );
\r1_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[41]\,
      Q => p_0_in1_in(41),
      R => '0'
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_is_max,
      O => s_axi_awready
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF35555FFF355FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_awvalid,
      I2 => count_is_max,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(0),
      I5 => \r0_out_sel_r_reg[0]_1\,
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080F08AAAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \r0_out_sel_r_reg[0]_1\,
      I2 => \state_reg_n_0_[2]\,
      I3 => s_axi_awvalid,
      I4 => count_is_max,
      I5 => \^q\(0),
      O => state(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080208000800080"
    )
        port map (
      I0 => \r0_out_sel_r_reg[0]_1\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => count_is_max,
      I5 => s_axi_awvalid,
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
      Q => \^q\(1),
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
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_15 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC;
    f_mux4_return : out STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \r0_out_sel_r_reg[0]_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 56 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_15 : entity is "axis_dwidth_converter_v1_1_25_axisc_downsizer";
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_15;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_15 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 57 downto 0 );
  signal \r0_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[57]\ : STD_LOGIC;
  signal r0_load : STD_LOGIC;
  signal \r0_out_sel_r[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \r0_out_sel_r_reg_n_0_[0]\ : STD_LOGIC;
  signal r1_load : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAAAAAEEAAAA"
    )
        port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\,
      I1 => p_0_in1_in(0),
      I2 => p_0_in1_in(32),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => \r0_out_sel_r_reg_n_0_[0]\,
      O => f_mux4_return(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(42),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(10),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\,
      O => f_mux4_return(10)
    );
\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(43),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(11),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\,
      O => f_mux4_return(11)
    );
\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(44),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(12),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\,
      O => f_mux4_return(12)
    );
\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(45),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(13),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\,
      O => f_mux4_return(13)
    );
\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(46),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(14),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\,
      O => f_mux4_return(14)
    );
\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(47),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(15),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\,
      O => f_mux4_return(15)
    );
\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(48),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(16),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\,
      O => f_mux4_return(16)
    );
\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(49),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(17),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\,
      O => f_mux4_return(17)
    );
\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(50),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(18),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\,
      O => f_mux4_return(18)
    );
\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(51),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(19),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\,
      O => f_mux4_return(19)
    );
\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAAAAAEEAAAA"
    )
        port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\,
      I1 => p_0_in1_in(1),
      I2 => p_0_in1_in(33),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => \r0_out_sel_r_reg_n_0_[0]\,
      O => f_mux4_return(1)
    );
\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(52),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(20),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\,
      O => f_mux4_return(20)
    );
\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000F02200"
    )
        port map (
      I0 => p_0_in1_in(21),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(0),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      O => f_mux4_return(21)
    );
\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(54),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(22),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\,
      O => f_mux4_return(22)
    );
\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(55),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(23),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\,
      O => f_mux4_return(23)
    );
\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(56),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(24),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\,
      O => f_mux4_return(24)
    );
\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(57),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(25),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\,
      O => f_mux4_return(25)
    );
\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000F02200"
    )
        port map (
      I0 => p_0_in1_in(26),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(1),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      O => f_mux4_return(26)
    );
\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000F02200"
    )
        port map (
      I0 => p_0_in1_in(27),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(2),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      O => f_mux4_return(27)
    );
\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000F02200"
    )
        port map (
      I0 => p_0_in1_in(28),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(3),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      O => f_mux4_return(28)
    );
\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000F02200"
    )
        port map (
      I0 => p_0_in1_in(29),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(4),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      O => f_mux4_return(29)
    );
\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAAAAAEEAAAA"
    )
        port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\,
      I1 => p_0_in1_in(2),
      I2 => p_0_in1_in(34),
      I3 => arb_sel_i(0),
      I4 => arb_sel_i(1),
      I5 => \r0_out_sel_r_reg_n_0_[0]\,
      O => f_mux4_return(2)
    );
\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000F02200"
    )
        port map (
      I0 => p_0_in1_in(30),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(5),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      O => f_mux4_return(30)
    );
\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220000F02200"
    )
        port map (
      I0 => p_0_in1_in(31),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(6),
      I3 => arb_sel_i(1),
      I4 => arb_sel_i(0),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      O => f_mux4_return(31)
    );
\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEEA"
    )
        port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => arb_sel_i(0),
      O => f_mux4_return(32)
    );
\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(35),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(3),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\,
      O => f_mux4_return(3)
    );
\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(36),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(4),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\,
      O => f_mux4_return(4)
    );
\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(37),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(5),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\,
      O => f_mux4_return(5)
    );
\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(38),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(6),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\,
      O => f_mux4_return(6)
    );
\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(39),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(7),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\,
      O => f_mux4_return(7)
    );
\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(40),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(8),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\,
      O => f_mux4_return(8)
    );
\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B00080"
    )
        port map (
      I0 => p_0_in1_in(41),
      I1 => \r0_out_sel_r_reg_n_0_[0]\,
      I2 => arb_sel_i(1),
      I3 => arb_sel_i(0),
      I4 => p_0_in1_in(9),
      I5 => \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\,
      O => f_mux4_return(9)
    );
\r0_data[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(0),
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
\r0_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(35),
      Q => \r0_data_reg_n_0_[35]\,
      R => '0'
    );
\r0_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(36),
      Q => \r0_data_reg_n_0_[36]\,
      R => '0'
    );
\r0_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(37),
      Q => \r0_data_reg_n_0_[37]\,
      R => '0'
    );
\r0_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(38),
      Q => \r0_data_reg_n_0_[38]\,
      R => '0'
    );
\r0_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(39),
      Q => \r0_data_reg_n_0_[39]\,
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
\r0_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(40),
      Q => \r0_data_reg_n_0_[40]\,
      R => '0'
    );
\r0_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(41),
      Q => \r0_data_reg_n_0_[41]\,
      R => '0'
    );
\r0_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(42),
      Q => \r0_data_reg_n_0_[42]\,
      R => '0'
    );
\r0_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(43),
      Q => \r0_data_reg_n_0_[43]\,
      R => '0'
    );
\r0_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(44),
      Q => \r0_data_reg_n_0_[44]\,
      R => '0'
    );
\r0_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(45),
      Q => \r0_data_reg_n_0_[45]\,
      R => '0'
    );
\r0_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(46),
      Q => \r0_data_reg_n_0_[46]\,
      R => '0'
    );
\r0_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(47),
      Q => \r0_data_reg_n_0_[47]\,
      R => '0'
    );
\r0_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(48),
      Q => \r0_data_reg_n_0_[48]\,
      R => '0'
    );
\r0_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(49),
      Q => \r0_data_reg_n_0_[49]\,
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
\r0_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(50),
      Q => \r0_data_reg_n_0_[50]\,
      R => '0'
    );
\r0_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(51),
      Q => \r0_data_reg_n_0_[51]\,
      R => '0'
    );
\r0_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(52),
      Q => \r0_data_reg_n_0_[52]\,
      R => '0'
    );
\r0_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(53),
      Q => \r0_data_reg_n_0_[54]\,
      R => '0'
    );
\r0_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(54),
      Q => \r0_data_reg_n_0_[55]\,
      R => '0'
    );
\r0_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(55),
      Q => \r0_data_reg_n_0_[56]\,
      R => '0'
    );
\r0_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => D(56),
      Q => \r0_data_reg_n_0_[57]\,
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
\r0_out_sel_r[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6A684A6"
    )
        port map (
      I0 => \r0_out_sel_r_reg_n_0_[0]\,
      I1 => \^q\(1),
      I2 => \r0_out_sel_r_reg[0]_0\,
      I3 => \^q\(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => areset_r,
      O => \r0_out_sel_r[0]_i_1__1_n_0\
    );
\r0_out_sel_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_out_sel_r[0]_i_1__1_n_0\,
      Q => \r0_out_sel_r_reg_n_0_[0]\,
      R => '0'
    );
\r1_data[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      O => r1_load
    );
\r1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[32]\,
      Q => p_0_in1_in(32),
      R => '0'
    );
\r1_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[42]\,
      Q => p_0_in1_in(42),
      R => '0'
    );
\r1_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[43]\,
      Q => p_0_in1_in(43),
      R => '0'
    );
\r1_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[44]\,
      Q => p_0_in1_in(44),
      R => '0'
    );
\r1_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[45]\,
      Q => p_0_in1_in(45),
      R => '0'
    );
\r1_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[46]\,
      Q => p_0_in1_in(46),
      R => '0'
    );
\r1_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[47]\,
      Q => p_0_in1_in(47),
      R => '0'
    );
\r1_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[48]\,
      Q => p_0_in1_in(48),
      R => '0'
    );
\r1_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[49]\,
      Q => p_0_in1_in(49),
      R => '0'
    );
\r1_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[50]\,
      Q => p_0_in1_in(50),
      R => '0'
    );
\r1_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[51]\,
      Q => p_0_in1_in(51),
      R => '0'
    );
\r1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[33]\,
      Q => p_0_in1_in(33),
      R => '0'
    );
\r1_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[52]\,
      Q => p_0_in1_in(52),
      R => '0'
    );
\r1_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[54]\,
      Q => p_0_in1_in(54),
      R => '0'
    );
\r1_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[55]\,
      Q => p_0_in1_in(55),
      R => '0'
    );
\r1_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[56]\,
      Q => p_0_in1_in(56),
      R => '0'
    );
\r1_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[57]\,
      Q => p_0_in1_in(57),
      R => '0'
    );
\r1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[34]\,
      Q => p_0_in1_in(34),
      R => '0'
    );
\r1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[35]\,
      Q => p_0_in1_in(35),
      R => '0'
    );
\r1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[36]\,
      Q => p_0_in1_in(36),
      R => '0'
    );
\r1_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[37]\,
      Q => p_0_in1_in(37),
      R => '0'
    );
\r1_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[38]\,
      Q => p_0_in1_in(38),
      R => '0'
    );
\r1_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[39]\,
      Q => p_0_in1_in(39),
      R => '0'
    );
\r1_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[40]\,
      Q => p_0_in1_in(40),
      R => '0'
    );
\r1_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r0_data_reg_n_0_[41]\,
      Q => p_0_in1_in(41),
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]_0\,
      O => s_axi_arready
    );
\state[0]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF35555FFF355FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_arvalid,
      I2 => \state_reg[0]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(0),
      I5 => \r0_out_sel_r_reg[0]_0\,
      O => state(0)
    );
\state[1]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080F08AAAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \r0_out_sel_r_reg[0]_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => s_axi_arvalid,
      I4 => \state_reg[0]_0\,
      I5 => \^q\(0),
      O => state(1)
    );
\state[2]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080208000800080"
    )
        port map (
      I0 => \r0_out_sel_r_reg[0]_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \state_reg[0]_0\,
      I5 => s_axi_arvalid,
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
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer is
  port (
    s_axis_tvalid_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r0_last_i_1_n_0 : STD_LOGIC;
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \^s_axis_tvalid_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \state[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[0]_i_1__3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[1]_i_2__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[2]_i_2__1\ : label is "soft_lutpair8";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(0) <= \^q\(0);
  s_axis_tvalid_0 <= \^s_axis_tvalid_0\;
r0_last_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \^q\(0),
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
\r0_reg_sel[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      O => \r0_reg_sel[0]_i_1__0_n_0\
    );
\r0_reg_sel[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[1]\,
      O => \r0_reg_sel[1]_i_1__0_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1__0_n_0\,
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
      D => \r0_reg_sel[1]_i_1__0_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => areset_r
    );
s_axis_tready_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(2),
      I2 => s_axis_tid(1),
      I3 => s_axis_tid(0),
      O => \^s_axis_tvalid_0\
    );
\state[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FABFF0FF"
    )
        port map (
      I0 => \^s_axis_tvalid_0\,
      I1 => r0_last_reg_n_0,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \^q\(0),
      O => state(0)
    );
\state[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3388330033F83300"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state[1]_i_2__2_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \^s_axis_tvalid_0\,
      O => state(1)
    );
\state[1]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \r0_reg_sel_reg_n_0_[0]\,
      I2 => \r0_reg_sel_reg_n_0_[1]\,
      O => \state[1]_i_2__2_n_0\
    );
\state[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040404"
    )
        port map (
      I0 => \^s_axis_tvalid_0\,
      I1 => \state[2]_i_2__1_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[0]\,
      I5 => r0_last_reg_n_0,
      O => state(2)
    );
\state[2]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg_n_0_[1]\,
      O => \state[2]_i_2__1_n_0\
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
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_11 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_1_sp_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_arready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_11 : entity is "axis_dwidth_converter_v1_1_25_axisc_upsizer";
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_11;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_11 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r0_last_i_1__1_n_0\ : STD_LOGIC;
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal s_axis_tid_1_sn_1 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_last_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_2__0\ : label is "soft_lutpair4";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  s_axis_tid_1_sp_1 <= s_axis_tid_1_sn_1;
\r0_last_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \^q\(0),
      I2 => r0_last_reg_n_0,
      O => \r0_last_i_1__1_n_0\
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \r0_last_i_1__1_n_0\,
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
      I2 => \r0_reg_sel[1]_i_2__0_n_0\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      I4 => \r0_reg_sel[1]_i_3__0_n_0\,
      I5 => areset_r,
      O => \r0_reg_sel[1]_i_1__1_n_0\
    );
\r0_reg_sel[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \r0_reg_sel[1]_i_2__0_n_0\
    );
\r0_reg_sel[1]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axi_arready_i,
      O => \r0_reg_sel[1]_i_3__0_n_0\
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
s_axis_tready_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(2),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(0),
      O => s_axis_tid_1_sn_1
    );
\state[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEACFFFFFFF"
    )
        port map (
      I0 => m_axi_arready_i,
      I1 => s_axis_tid_1_sn_1,
      I2 => \^q\(0),
      I3 => r0_last_reg_n_0,
      I4 => \state_reg_n_0_[2]\,
      I5 => \^q\(1),
      O => state(0)
    );
\state[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000F8800"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => \^q\(0),
      I2 => m_axi_arready_i,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => \state[1]_i_2__1_n_0\,
      O => state(1)
    );
\state[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      I4 => \r0_reg_sel_reg_n_0_[1]\,
      I5 => s_axis_tid_1_sn_1,
      O => \state[1]_i_2__1_n_0\
    );
\state[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF004000C0"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_arready_i,
      I2 => \^q\(1),
      I3 => \state_reg_n_0_[2]\,
      I4 => s_axis_tid_1_sn_1,
      I5 => \state[2]_i_2__2_n_0\,
      O => state(2)
    );
\state[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040404"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[0]\,
      I5 => r0_last_reg_n_0,
      O => \state[2]_i_2__2_n_0\
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
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_7 is
  port (
    s_axis_tready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \acc_data_reg[34]_0\ : out STD_LOGIC;
    \acc_data_reg[34]_1\ : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tready_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tready_1 : in STD_LOGIC;
    s_axis_tready_2 : in STD_LOGIC;
    s_axis_tready_3 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_tready_4 : in STD_LOGIC;
    s_axis_tready_5 : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \num_active_trans_reg[0]\ : in STD_LOGIC;
    \num_active_trans_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_7 : entity is "axis_dwidth_converter_v1_1_25_axisc_upsizer";
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_7;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_7 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \acc_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \acc_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \acc_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \^acc_data_reg[34]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal r0_reg_sel0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_int_tready : STD_LOGIC_VECTOR ( 3 to 3 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acc_data[33]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \acc_data[34]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair7";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(0) <= \^q\(0);
  \acc_data_reg[34]_0\ <= \^acc_data_reg[34]_0\;
  s_axi_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
\acc_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => s_int_tready(3),
      I2 => \^q\(0),
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      O => p_0_in
    );
\acc_data[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => s_int_tready(3),
      I2 => \^q\(0),
      I3 => \^s_axi_rresp\(0),
      O => \acc_data[32]_i_1_n_0\
    );
\acc_data[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_int_tready(3),
      I2 => \^q\(0),
      I3 => \^s_axi_rresp\(1),
      O => \acc_data[33]_i_1_n_0\
    );
\acc_data[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_int_tready(3),
      I2 => \^q\(0),
      I3 => \^acc_data_reg[34]_0\,
      O => \acc_data[34]_i_1_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(0),
      Q => s_axi_rdata(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(10),
      Q => s_axi_rdata(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(11),
      Q => s_axi_rdata(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(12),
      Q => s_axi_rdata(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(13),
      Q => s_axi_rdata(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(14),
      Q => s_axi_rdata(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(15),
      Q => s_axi_rdata(15),
      R => '0'
    );
\acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(16),
      Q => s_axi_rdata(16),
      R => '0'
    );
\acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(17),
      Q => s_axi_rdata(17),
      R => '0'
    );
\acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(18),
      Q => s_axi_rdata(18),
      R => '0'
    );
\acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(19),
      Q => s_axi_rdata(19),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(1),
      Q => s_axi_rdata(1),
      R => '0'
    );
\acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(20),
      Q => s_axi_rdata(20),
      R => '0'
    );
\acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(21),
      Q => s_axi_rdata(21),
      R => '0'
    );
\acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(22),
      Q => s_axi_rdata(22),
      R => '0'
    );
\acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(23),
      Q => s_axi_rdata(23),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(24),
      Q => s_axi_rdata(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(25),
      Q => s_axi_rdata(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(26),
      Q => s_axi_rdata(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(27),
      Q => s_axi_rdata(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(28),
      Q => s_axi_rdata(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(29),
      Q => s_axi_rdata(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(2),
      Q => s_axi_rdata(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(30),
      Q => s_axi_rdata(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(31),
      Q => s_axi_rdata(31),
      R => '0'
    );
\acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \acc_data[32]_i_1_n_0\,
      Q => \^s_axi_rresp\(0),
      R => '0'
    );
\acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \acc_data[33]_i_1_n_0\,
      Q => \^s_axi_rresp\(1),
      R => '0'
    );
\acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \acc_data[34]_i_1_n_0\,
      Q => \^acc_data_reg[34]_0\,
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(3),
      Q => s_axi_rdata(3),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(4),
      Q => s_axi_rdata(4),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(5),
      Q => s_axi_rdata(5),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(6),
      Q => s_axi_rdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(7),
      Q => s_axi_rdata(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(8),
      Q => s_axi_rdata(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(9),
      Q => s_axi_rdata(9),
      R => '0'
    );
count_is_max_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^q\(0),
      I2 => \^acc_data_reg[34]_0\,
      O => s_axi_rready_0
    );
\num_active_trans[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF20202020202020"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \num_active_trans_reg[0]\,
      I2 => \num_active_trans_reg[0]_0\(0),
      I3 => s_axi_rready,
      I4 => \^q\(0),
      I5 => \^acc_data_reg[34]_0\,
      O => E(0)
    );
\num_active_trans[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFF7F7F7F7F7F"
    )
        port map (
      I0 => \^acc_data_reg[34]_0\,
      I1 => \^q\(0),
      I2 => s_axi_rready,
      I3 => \num_active_trans_reg[0]_0\(0),
      I4 => \num_active_trans_reg[0]\,
      I5 => s_axi_arvalid,
      O => \acc_data_reg[34]_1\
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(16),
      Q => r0_data(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(17),
      Q => r0_data(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(18),
      Q => r0_data(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(19),
      Q => r0_data(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(20),
      Q => r0_data(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(21),
      Q => r0_data(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(22),
      Q => r0_data(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(23),
      Q => r0_data(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(24),
      Q => r0_data(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(25),
      Q => r0_data(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(26),
      Q => r0_data(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(27),
      Q => r0_data(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(28),
      Q => r0_data(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(29),
      Q => r0_data(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(30),
      Q => r0_data(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(31),
      Q => r0_data(31),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_int_tready(3),
      D => s_axis_tlast,
      Q => r0_last_reg_n_0,
      R => '0'
    );
\r0_reg_sel[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF2AAA2A"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => s_int_tready(3),
      I3 => \^q\(0),
      I4 => s_axi_rready,
      I5 => areset_r,
      O => \r0_reg_sel[0]_i_1__2_n_0\
    );
\r0_reg_sel[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E2E2E2"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => r0_reg_sel0,
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => s_axi_rready,
      I5 => areset_r,
      O => \r0_reg_sel[1]_i_1__2_n_0\
    );
\r0_reg_sel[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_int_tready(3),
      I2 => \state_reg_n_0_[2]\,
      O => r0_reg_sel0
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1__2_n_0\,
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
      D => \r0_reg_sel[1]_i_1__2_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEFF"
    )
        port map (
      I0 => s_axis_tready_INST_0_i_1_n_0,
      I1 => s_axis_tready_0(0),
      I2 => s_axis_tready_1,
      I3 => s_axis_tready_2,
      I4 => s_axis_tready_3,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_int_tready(3),
      I1 => \state[1]_i_3_n_0\,
      I2 => s_axis_tready_0(2),
      I3 => s_axis_tready_4,
      I4 => s_axis_tready_5,
      I5 => s_axis_tready_0(1),
      O => s_axis_tready_INST_0_i_1_n_0
    );
\state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFCFCFF77FFFF"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => \state_reg_n_0_[2]\,
      I2 => s_axi_rready,
      I3 => \state[1]_i_3_n_0\,
      I4 => s_int_tready(3),
      I5 => \^q\(0),
      O => state(0)
    );
\state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEAAAAAEAEAAAA"
    )
        port map (
      I0 => \state[1]_i_2__0_n_0\,
      I1 => \r0_reg_sel_reg_n_0_[1]\,
      I2 => \state[1]_i_3_n_0\,
      I3 => r0_last_reg_n_0,
      I4 => \state[1]_i_4_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => state(1)
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004000000040FF00"
    )
        port map (
      I0 => \state[1]_i_3_n_0\,
      I1 => s_int_tready(3),
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => s_axi_rready,
      O => \state[1]_i_2__0_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(2),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(0),
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_int_tready(3),
      I1 => \^q\(0),
      O => \state[1]_i_4_n_0\
    );
\state[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF004000C0"
    )
        port map (
      I0 => s_int_tready(3),
      I1 => s_axi_rready,
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => \state[1]_i_3_n_0\,
      I5 => \state[2]_i_2__0_n_0\,
      O => state(2)
    );
\state[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040404"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => s_int_tready(3),
      I2 => \^q\(0),
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[0]\,
      I5 => r0_last_reg_n_0,
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
      D => state(1),
      Q => \^q\(0),
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
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_9 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_0_sp_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_9 : entity is "axis_dwidth_converter_v1_1_25_axisc_upsizer";
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_9;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_9 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r0_last_i_1__0_n_0\ : STD_LOGIC;
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal \r0_reg_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_3_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal s_axis_tid_0_sn_1 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_last_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_2__1\ : label is "soft_lutpair5";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  s_axis_tid_0_sp_1 <= s_axis_tid_0_sn_1;
\r0_last_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \^q\(0),
      I2 => r0_last_reg_n_0,
      O => \r0_last_i_1__0_n_0\
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \r0_last_i_1__0_n_0\,
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
      I2 => \r0_reg_sel[1]_i_2__1_n_0\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      I4 => \r0_reg_sel[1]_i_3_n_0\,
      I5 => areset_r,
      O => \r0_reg_sel[1]_i_1_n_0\
    );
\r0_reg_sel[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \r0_reg_sel[1]_i_2__1_n_0\
    );
\r0_reg_sel[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axi_awready_i,
      O => \r0_reg_sel[1]_i_3_n_0\
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
      INIT => X"FFDF"
    )
        port map (
      I0 => s_axis_tid(0),
      I1 => s_axis_tid(1),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(2),
      O => s_axis_tid_0_sn_1
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEACFFFFFFF"
    )
        port map (
      I0 => m_axi_awready_i,
      I1 => s_axis_tid_0_sn_1,
      I2 => \^q\(0),
      I3 => r0_last_reg_n_0,
      I4 => \state_reg_n_0_[2]\,
      I5 => \^q\(1),
      O => state(0)
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000F8800"
    )
        port map (
      I0 => r0_last_reg_n_0,
      I1 => \^q\(0),
      I2 => m_axi_awready_i,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => \state[1]_i_2_n_0\,
      O => state(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040004000400"
    )
        port map (
      I0 => s_axis_tid_0_sn_1,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \r0_reg_sel_reg_n_0_[1]\,
      I4 => \r0_reg_sel_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00007000"
    )
        port map (
      I0 => s_axis_tid_0_sn_1,
      I1 => \^q\(0),
      I2 => m_axi_awready_i,
      I3 => \^q\(1),
      I4 => \state_reg_n_0_[2]\,
      I5 => \state[2]_i_2_n_0\,
      O => state(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400040404"
    )
        port map (
      I0 => s_axis_tid_0_sn_1,
      I1 => \r0_reg_sel[1]_i_2__1_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \r0_reg_sel_reg_n_0_[0]\,
      I5 => r0_last_reg_n_0,
      O => \state[2]_i_2_n_0\
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
entity design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\ : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg : out STD_LOGIC;
    m_axis_tready_0 : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_1\ : out STD_LOGIC;
    m_axis_tready_1 : out STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    m_int_tdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1\ : in STD_LOGIC;
    f_mux4_return : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_int_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_out1 : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arb_gnt_r_reg[2]\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tready : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_2\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_3\ : in STD_LOGIC;
    \busy_r_reg[4]\ : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc is
  signal \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\ : STD_LOGIC;
  signal \^m_axis_tready_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[4]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \busy_r[4]_i_2\ : label is "soft_lutpair18";
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
  \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\ <= \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\;
  m_axis_tready_0 <= \^m_axis_tready_0\;
\arb_gnt_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5F4F4F004F"
    )
        port map (
      I0 => \^m_axis_tready_0\,
      I1 => \arb_gnt_r_reg[2]\,
      I2 => arb_busy_r,
      I3 => m_int_tvalid(0),
      I4 => \gen_tdest_routing.busy_r_reg[0]\,
      I5 => arb_gnt_i(0),
      O => arb_busy_r_reg
    );
\arb_gnt_r[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\,
      I2 => \gen_tdest_routing.busy_r_reg[0]_0\,
      O => \^m_axis_tready_0\
    );
\busy_r[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\,
      I2 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I3 => \busy_r_reg[4]\,
      I4 => areset_r,
      O => m_axis_tready_1
    );
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(0),
      I1 => m_int_tdata(0),
      O => m_axis_tdata(0),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(10),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0\,
      O => m_axis_tdata(10),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(11),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0\,
      O => m_axis_tdata(11),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(12),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0\,
      O => m_axis_tdata(12),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(13),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0\,
      O => m_axis_tdata(13),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(14),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0\,
      O => m_axis_tdata(14),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(15),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0\,
      O => m_axis_tdata(15),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(16),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0\,
      O => m_axis_tdata(16),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(17),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0\,
      O => m_axis_tdata(17),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(18),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0\,
      O => m_axis_tdata(18),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(19),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0\,
      O => m_axis_tdata(19),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(1),
      I1 => m_int_tdata(1),
      O => m_axis_tdata(1),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(20),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0\,
      O => m_axis_tdata(20),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(21),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0\,
      O => m_axis_tdata(21),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(22),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0\,
      O => m_axis_tdata(22),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(23),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0\,
      O => m_axis_tdata(23),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(24),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0\,
      O => m_axis_tdata(24),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(25),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0\,
      O => m_axis_tdata(25),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(26),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0\,
      O => m_axis_tdata(26),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(27),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0\,
      O => m_axis_tdata(27),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(28),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0\,
      O => m_axis_tdata(28),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(29),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0\,
      O => m_axis_tdata(29),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(2),
      I1 => m_int_tdata(2),
      O => m_axis_tdata(2),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(30),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0\,
      O => m_axis_tdata(30),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(31),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0\,
      O => m_axis_tdata(31),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[32].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '1',
      I1 => '1',
      O => m_axis_tkeep(0),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\,
      I1 => \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1\,
      O => m_axis_tkeep(1),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\,
      I1 => \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1\,
      O => m_axis_tkeep(2),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => f_mux4_return(0),
      I1 => m_int_tkeep(0),
      O => m_axis_tkeep(3),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(32),
      I1 => last_out1,
      O => \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\,
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[37].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0\(0),
      I1 => '0',
      O => m_axis_tid(0),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0\(1),
      I1 => '0',
      O => m_axis_tid(1),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[39].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '0',
      I1 => '1',
      O => m_axis_tid(2),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(3),
      I1 => m_int_tdata(3),
      O => m_axis_tdata(3),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(4),
      I1 => m_int_tdata(4),
      O => m_axis_tdata(4),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(5),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0\,
      O => m_axis_tdata(5),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(6),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0\,
      O => m_axis_tdata(6),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(7),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0\,
      O => m_axis_tdata(7),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(8),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0\,
      O => m_axis_tdata(8),
      S => arb_sel_i(0)
    );
\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(9),
      I1 => \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0\,
      O => m_axis_tdata(9),
      S => arb_sel_i(0)
    );
\gen_tdest_routing.busy_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AAA2AAA2AAA"
    )
        port map (
      I0 => arb_gnt_i(2),
      I1 => m_axis_tready,
      I2 => \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\,
      I3 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => \gen_tdest_routing.busy_r_reg[0]_1\,
      I5 => \gen_tdest_routing.busy_r_reg[0]_2\,
      O => \gen_tdest_routing.busy_ns\
    );
\gen_tdest_routing.busy_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AAA2AAA2AAA"
    )
        port map (
      I0 => arb_gnt_i(1),
      I1 => m_axis_tready,
      I2 => \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\,
      I3 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => \gen_tdest_routing.busy_r_reg[0]_3\,
      I5 => \gen_tdest_routing.busy_r_reg[0]_2\,
      O => \gen_tdest_routing.busy_ns_0\
    );
\gen_tdest_routing.busy_r[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AAA2AAA2AAA"
    )
        port map (
      I0 => arb_gnt_i(0),
      I1 => m_axis_tready,
      I2 => \^gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\,
      I3 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I4 => \gen_tdest_routing.busy_r_reg[0]\,
      I5 => \gen_tdest_routing.busy_r_reg[0]_2\,
      O => \gen_tdest_routing.busy_ns_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ is
  port (
    o_i : out STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    f_mux40_return : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ : entity is "axis_infrastructure_v1_1_0_mux_enc";
end \design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ : label is "PRIMITIVE";
begin
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => f_mux40_return,
      I1 => m_int_tvalid(0),
      O => o_i,
      S => arb_sel_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_arb_rr is
  port (
    arb_busy_r : out STD_LOGIC;
    \arb_gnt_r_reg[1]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[4]_0\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \arb_gnt_r_reg[4]_1\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]_1\ : out STD_LOGIC;
    \arb_gnt_r_reg[4]_2\ : out STD_LOGIC;
    f_mux4_return : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_sel_r_reg[0]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    f_mux40_return : out STD_LOGIC;
    \arb_sel_r_reg[0]_1\ : out STD_LOGIC;
    \arb_sel_r_reg[0]_2\ : out STD_LOGIC;
    arb_sel_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg_0 : in STD_LOGIC;
    arb_busy_r_reg_1 : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    o_i : in STD_LOGIC;
    \arb_sel_r_reg[0]_3\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_4\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_1\ : in STD_LOGIC;
    arb_busy_r_reg_2 : in STD_LOGIC;
    arb_busy_r_reg_3 : in STD_LOGIC;
    \arb_gnt_r_reg[4]_3\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_2\ : in STD_LOGIC;
    \arb_gnt_r_reg[1]_1\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_5\ : in STD_LOGIC;
    \arb_sel_r_reg[2]_0\ : in STD_LOGIC;
    \arb_sel_r_reg[2]_1\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_6\ : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_arb_rr;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_arb_rr is
  signal arb_busy_ns : STD_LOGIC;
  signal \^arb_busy_r\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[1]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[2]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[4]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[4]_1\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[4]_2\ : STD_LOGIC;
  signal \^arb_sel_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \arb_sel_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[2]_i_6_n_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[1]_0\ : STD_LOGIC;
begin
  arb_busy_r <= \^arb_busy_r\;
  \arb_gnt_r_reg[1]_0\ <= \^arb_gnt_r_reg[1]_0\;
  \arb_gnt_r_reg[2]_0\ <= \^arb_gnt_r_reg[2]_0\;
  \arb_gnt_r_reg[4]_0\ <= \^arb_gnt_r_reg[4]_0\;
  \arb_gnt_r_reg[4]_1\ <= \^arb_gnt_r_reg[4]_1\;
  \arb_gnt_r_reg[4]_2\ <= \^arb_gnt_r_reg[4]_2\;
  arb_sel_i(0) <= \^arb_sel_i\(0);
  \arb_sel_r_reg[0]_0\ <= \^arb_sel_r_reg[0]_0\;
  \arb_sel_r_reg[1]_0\ <= \^arb_sel_r_reg[1]_0\;
arb_busy_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF02FF02FF02"
    )
        port map (
      I0 => m_int_tvalid(0),
      I1 => arb_busy_r_reg_0,
      I2 => \^arb_gnt_r_reg[1]_0\,
      I3 => \^arb_gnt_r_reg[4]_0\,
      I4 => \^arb_busy_r\,
      I5 => arb_busy_r_reg_1,
      O => arb_busy_ns
    );
arb_busy_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404FF04040404"
    )
        port map (
      I0 => \^arb_gnt_r_reg[4]_2\,
      I1 => m_int_tvalid(2),
      I2 => arb_busy_r_reg_2,
      I3 => \^arb_gnt_r_reg[2]_0\,
      I4 => arb_busy_r_reg_3,
      I5 => m_int_tvalid(1),
      O => \^arb_gnt_r_reg[4]_0\
    );
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns,
      Q => \^arb_busy_r\,
      R => areset_r
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r_reg[1]_1\,
      Q => \^arb_gnt_r_reg[1]_0\,
      R => '0'
    );
\arb_gnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r_reg[2]_2\,
      Q => \^arb_gnt_r_reg[2]_0\,
      R => '0'
    );
\arb_gnt_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r_reg[4]_3\,
      Q => \^arb_gnt_r_reg[4]_2\,
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333F3332"
    )
        port map (
      I0 => \arb_sel_r_reg[0]_6\,
      I1 => \arb_sel_r_reg[0]_5\,
      I2 => \arb_sel_r[1]_i_2_n_0\,
      I3 => \arb_sel_r[2]_i_6_n_0\,
      I4 => \^arb_sel_r_reg[0]_0\,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505050F350505000"
    )
        port map (
      I0 => \arb_sel_r_reg[1]_1\,
      I1 => \arb_sel_r_reg[0]_6\,
      I2 => \arb_sel_r_reg[0]_5\,
      I3 => \arb_sel_r[1]_i_2_n_0\,
      I4 => \arb_sel_r[2]_i_6_n_0\,
      I5 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5500FD00"
    )
        port map (
      I0 => \^arb_busy_r\,
      I1 => \arb_sel_r_reg[0]_3\,
      I2 => \^arb_gnt_r_reg[1]_0\,
      I3 => \^arb_gnt_r_reg[4]_0\,
      I4 => \arb_sel_r_reg[0]_4\,
      O => \arb_sel_r[1]_i_2_n_0\
    );
\arb_sel_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FF80808000"
    )
        port map (
      I0 => \arb_sel_r_reg[0]_5\,
      I1 => \arb_sel_r_reg[2]_0\,
      I2 => \arb_sel_r_reg[1]_1\,
      I3 => \arb_sel_r_reg[2]_1\,
      I4 => \arb_sel_r[2]_i_6_n_0\,
      I5 => \^arb_sel_i\(0),
      O => \arb_sel_r[2]_i_1_n_0\
    );
\arb_sel_r[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010131010101010"
    )
        port map (
      I0 => \arb_sel_r_reg[1]_1\,
      I1 => \arb_sel_r_reg[0]_4\,
      I2 => \^arb_gnt_r_reg[4]_2\,
      I3 => \^arb_gnt_r_reg[2]_0\,
      I4 => arb_busy_r_reg_2,
      I5 => m_int_tvalid(2),
      O => \arb_sel_r[2]_i_6_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => \^arb_sel_r_reg[0]_0\,
      R => areset_r
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => \^arb_sel_r_reg[1]_0\,
      R => areset_r
    );
\arb_sel_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[2]_i_1_n_0\,
      Q => \^arb_sel_i\(0),
      R => areset_r
    );
\busy_r[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[2]_0\,
      I1 => \gen_tdest_router.busy_r\(1),
      I2 => \gen_tdest_router.busy_r\(0),
      I3 => \gen_tdest_router.busy_r\(2),
      I4 => \^arb_gnt_r_reg[4]_2\,
      I5 => \^arb_gnt_r_reg[1]_0\,
      O => \arb_gnt_r_reg[2]_1\
    );
\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => m_int_tvalid(1),
      I1 => m_int_tvalid(0),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      O => f_mux40_return
    );
\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[0]_0\,
      I1 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r_reg[0]_1\
    );
\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[0]_0\,
      I1 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r_reg[0]_2\
    );
\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[0]_0\,
      I1 => \^arb_sel_r_reg[1]_0\,
      O => f_mux4_return(0)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \^arb_gnt_r_reg[1]_0\,
      I1 => \^arb_gnt_r_reg[4]_1\,
      I2 => \gen_tdest_router.busy_r\(0),
      I3 => \gen_tdest_router.busy_r\(1),
      I4 => \^arb_gnt_r_reg[2]_0\,
      I5 => o_i,
      O => m_axis_tvalid
    );
m_axis_tvalid_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[4]_2\,
      I1 => \gen_tdest_router.busy_r\(2),
      O => \^arb_gnt_r_reg[4]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_arb_responder is
  port (
    \busy_r_reg[1]_0\ : out STD_LOGIC;
    \busy_r_reg[1]_1\ : out STD_LOGIC;
    \busy_r_reg[4]_0\ : out STD_LOGIC;
    \busy_r_reg[4]_1\ : out STD_LOGIC;
    arb_busy_r_reg : out STD_LOGIC;
    \busy_r_reg[1]_2\ : out STD_LOGIC;
    \busy_r_reg[2]_0\ : out STD_LOGIC;
    \busy_r_reg[2]_1\ : out STD_LOGIC;
    \busy_r_reg[2]_2\ : out STD_LOGIC;
    arb_busy_r_reg_0 : out STD_LOGIC;
    \busy_r_reg[2]_3\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]\ : out STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tready : in STD_LOGIC;
    \arb_sel_r_reg[2]\ : in STD_LOGIC;
    \arb_gnt_r_reg[4]\ : in STD_LOGIC;
    \arb_gnt_r_reg[4]_0\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \arb_gnt_r_reg[4]_1\ : in STD_LOGIC;
    \arb_gnt_r[4]_i_2_0\ : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[4]_2\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_arb_responder;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_arb_responder is
  signal \arb_gnt_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \arb_sel_r[2]_i_7_n_0\ : STD_LOGIC;
  signal \arb_sel_r[2]_i_8_n_0\ : STD_LOGIC;
  signal \busy_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \busy_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \busy_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \^busy_r_reg[1]_1\ : STD_LOGIC;
  signal \^busy_r_reg[2]_0\ : STD_LOGIC;
  signal \^busy_r_reg[4]_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \arb_sel_r[1]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \arb_sel_r[2]_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \arb_sel_r[2]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \busy_r[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \busy_r[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \busy_r[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r0_out_sel_r[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r0_out_sel_r[0]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r0_out_sel_r[0]_i_2__1\ : label is "soft_lutpair16";
begin
  \busy_r_reg[1]_1\ <= \^busy_r_reg[1]_1\;
  \busy_r_reg[2]_0\ <= \^busy_r_reg[2]_0\;
  \busy_r_reg[4]_1\ <= \^busy_r_reg[4]_1\;
\arb_gnt_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554FFFFFFFF"
    )
        port map (
      I0 => \arb_gnt_r_reg[4]_0\,
      I1 => \gen_tdest_routing.busy_r_reg[0]\,
      I2 => \^busy_r_reg[1]_1\,
      I3 => \^busy_r_reg[2]_0\,
      I4 => arb_gnt_i(1),
      I5 => arb_busy_r,
      O => \busy_r_reg[1]_2\
    );
\arb_gnt_r[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^busy_r_reg[2]_0\,
      I1 => \^busy_r_reg[1]_1\,
      I2 => \^busy_r_reg[4]_1\,
      I3 => arb_gnt_i(2),
      O => \busy_r_reg[2]_1\
    );
\arb_gnt_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0CEECC0C00AE00"
    )
        port map (
      I0 => \arb_gnt_r[4]_i_3_n_0\,
      I1 => \arb_gnt_r_reg[4]\,
      I2 => arb_busy_r,
      I3 => \arb_gnt_r_reg[4]_1\,
      I4 => \arb_gnt_r_reg[4]_0\,
      I5 => arb_gnt_i(1),
      O => arb_busy_r_reg_0
    );
\arb_gnt_r[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBBBBBB0"
    )
        port map (
      I0 => \arb_gnt_r[4]_i_2_0\,
      I1 => m_int_tvalid(0),
      I2 => \^busy_r_reg[2]_0\,
      I3 => \^busy_r_reg[1]_1\,
      I4 => \^busy_r_reg[4]_1\,
      I5 => arb_gnt_i(0),
      O => \arb_gnt_r[4]_i_3_n_0\
    );
\arb_sel_r[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^busy_r_reg[2]_0\,
      I1 => \^busy_r_reg[1]_1\,
      I2 => \^busy_r_reg[4]_1\,
      O => \busy_r_reg[2]_3\
    );
\arb_sel_r[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008F0088AFAFAFAF"
    )
        port map (
      I0 => \arb_sel_r_reg[2]\,
      I1 => \arb_sel_r[2]_i_7_n_0\,
      I2 => \arb_gnt_r_reg[4]\,
      I3 => \arb_gnt_r_reg[4]_0\,
      I4 => \arb_sel_r[2]_i_8_n_0\,
      I5 => arb_busy_r,
      O => arb_busy_r_reg
    );
\arb_sel_r[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^busy_r_reg[4]_1\,
      I1 => \^busy_r_reg[1]_1\,
      I2 => \^busy_r_reg[2]_0\,
      I3 => arb_gnt_i(0),
      O => \arb_sel_r[2]_i_7_n_0\
    );
\arb_sel_r[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => arb_gnt_i(2),
      I1 => \^busy_r_reg[4]_1\,
      I2 => \^busy_r_reg[1]_1\,
      I3 => \^busy_r_reg[2]_0\,
      I4 => arb_gnt_i(1),
      O => \arb_sel_r[2]_i_8_n_0\
    );
\busy_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^busy_r_reg[1]_1\,
      I1 => arb_gnt_i(0),
      I2 => \busy_r_reg[4]_2\,
      O => \busy_r[1]_i_1_n_0\
    );
\busy_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^busy_r_reg[2]_0\,
      I1 => arb_gnt_i(1),
      I2 => \busy_r_reg[4]_2\,
      O => \busy_r[2]_i_1_n_0\
    );
\busy_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^busy_r_reg[4]_1\,
      I1 => arb_gnt_i(2),
      I2 => \busy_r_reg[4]_2\,
      O => \busy_r[4]_i_1_n_0\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[1]_i_1_n_0\,
      Q => \^busy_r_reg[1]_1\,
      R => '0'
    );
\busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[2]_i_1_n_0\,
      Q => \^busy_r_reg[2]_0\,
      R => '0'
    );
\busy_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[4]_i_1_n_0\,
      Q => \^busy_r_reg[4]_1\,
      R => '0'
    );
\gen_tdest_routing.busy_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \arb_gnt_r_reg[4]_0\,
      I1 => arb_gnt_i(1),
      I2 => \^busy_r_reg[2]_0\,
      I3 => \^busy_r_reg[1]_1\,
      I4 => \gen_tdest_routing.busy_r_reg[0]\,
      I5 => arb_gnt_i(0),
      O => \arb_gnt_r_reg[2]\
    );
\r0_out_sel_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^busy_r_reg[1]_1\,
      I1 => arb_gnt_i(0),
      I2 => m_axis_tready,
      O => \busy_r_reg[1]_0\
    );
\r0_out_sel_r[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^busy_r_reg[4]_1\,
      I1 => arb_gnt_i(2),
      I2 => m_axis_tready,
      O => \busy_r_reg[4]_0\
    );
\r0_out_sel_r[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^busy_r_reg[2]_0\,
      I1 => arb_gnt_i(1),
      I2 => m_axis_tready,
      O => \busy_r_reg[2]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r_reg : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[1]\ : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \arb_sel_r[2]_i_2\ : label is "soft_lutpair10";
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
\arb_gnt_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => areset_r,
      I1 => m_int_tvalid(0),
      I2 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I3 => arb_gnt_i(0),
      I4 => \arb_gnt_r_reg[1]\,
      O => areset_r_reg
    );
\arb_sel_r[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => m_int_tvalid(0),
      I1 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I2 => arb_gnt_i(0),
      O => \state_reg[1]\
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_4 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r_reg : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_4 : entity is "axis_switch_v1_1_26_axisc_decoder";
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_4;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_4 is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \arb_sel_r[2]_i_4\ : label is "soft_lutpair11";
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
\arb_gnt_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => areset_r,
      I1 => m_int_tvalid(0),
      I2 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I3 => arb_gnt_i(0),
      I4 => \arb_gnt_r_reg[2]\,
      O => areset_r_reg
    );
\arb_gnt_r[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I1 => m_int_tvalid(0),
      O => \gen_tdest_routing.busy_r_reg[0]_1\
    );
\arb_sel_r[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => m_int_tvalid(0),
      I1 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I2 => arb_gnt_i(0),
      O => \state_reg[1]\
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_5 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[4]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_5 : entity is "axis_switch_v1_1_26_axisc_decoder";
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_5;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_5 is
  signal \^gen_tdest_routing.busy_r_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \arb_sel_r[2]_i_3\ : label is "soft_lutpair12";
begin
  \gen_tdest_routing.busy_r_reg[0]_0\ <= \^gen_tdest_routing.busy_r_reg[0]_0\;
\arb_gnt_r[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => m_int_tvalid(0),
      I1 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I2 => arb_gnt_i(0),
      I3 => areset_r,
      I4 => \arb_gnt_r_reg[4]\,
      O => \state_reg[1]\
    );
\arb_sel_r[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[0]_0\,
      I1 => m_int_tvalid(0),
      I2 => arb_gnt_i(0),
      O => \gen_tdest_routing.busy_r_reg[0]_1\
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\,
      Q => \^gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder__parameterized0\ is
  port (
    \gen_tdest_routing.decode_err_r_reg_0\ : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder__parameterized0\ : entity is "axis_switch_v1_1_26_axisc_decoder";
end \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder__parameterized0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder__parameterized0\ is
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \^gen_tdest_routing.decode_err_r_reg_0\ : STD_LOGIC;
begin
  \gen_tdest_routing.decode_err_r_reg_0\ <= \^gen_tdest_routing.decode_err_r_reg_0\;
\gen_tdest_routing.decode_err_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54000000"
    )
        port map (
      I0 => \^gen_tdest_routing.decode_err_r_reg_0\,
      I1 => s_axis_tid(0),
      I2 => s_axis_tid(1),
      I3 => s_axis_tvalid,
      I4 => s_axis_tid(2),
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^gen_tdest_routing.decode_err_r_reg_0\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    last_out1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_int_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_int_tdata : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \r0_out_sel_r_reg[0]\ : out STD_LOGIC;
    \r0_out_sel_r_reg[0]_0\ : out STD_LOGIC;
    \r0_data_reg[31]\ : out STD_LOGIC;
    \r0_data_reg[30]\ : out STD_LOGIC;
    \r0_data_reg[29]\ : out STD_LOGIC;
    \r0_data_reg[28]\ : out STD_LOGIC;
    \r0_data_reg[27]\ : out STD_LOGIC;
    \r0_data_reg[26]\ : out STD_LOGIC;
    \r0_data_reg[25]\ : out STD_LOGIC;
    \r0_data_reg[24]\ : out STD_LOGIC;
    \r0_data_reg[23]\ : out STD_LOGIC;
    \r0_data_reg[22]\ : out STD_LOGIC;
    \r0_data_reg[21]\ : out STD_LOGIC;
    \r0_data_reg[20]\ : out STD_LOGIC;
    \r0_data_reg[19]\ : out STD_LOGIC;
    \r0_data_reg[18]\ : out STD_LOGIC;
    \r0_data_reg[17]\ : out STD_LOGIC;
    \r0_data_reg[16]\ : out STD_LOGIC;
    \r0_data_reg[15]\ : out STD_LOGIC;
    \r0_data_reg[14]\ : out STD_LOGIC;
    \r0_data_reg[13]\ : out STD_LOGIC;
    \r0_data_reg[12]\ : out STD_LOGIC;
    \r0_data_reg[11]\ : out STD_LOGIC;
    \r0_data_reg[10]\ : out STD_LOGIC;
    \r0_data_reg[9]\ : out STD_LOGIC;
    \r0_data_reg[8]\ : out STD_LOGIC;
    \r0_data_reg[7]\ : out STD_LOGIC;
    \r0_data_reg[6]\ : out STD_LOGIC;
    \r0_data_reg[5]\ : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    \r0_out_sel_r_reg[0]_1\ : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter is
begin
\gen_downsizer_conversion.axisc_downsizer_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer
     port map (
      D(36 downto 0) => D(36 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      count_is_zero => count_is_zero,
      last_out1 => last_out1,
      m_int_tdata(4 downto 0) => m_int_tdata(4 downto 0),
      m_int_tkeep(0) => m_int_tkeep(0),
      \r0_data_reg[10]_0\ => \r0_data_reg[10]\,
      \r0_data_reg[11]_0\ => \r0_data_reg[11]\,
      \r0_data_reg[12]_0\ => \r0_data_reg[12]\,
      \r0_data_reg[13]_0\ => \r0_data_reg[13]\,
      \r0_data_reg[14]_0\ => \r0_data_reg[14]\,
      \r0_data_reg[15]_0\ => \r0_data_reg[15]\,
      \r0_data_reg[16]_0\ => \r0_data_reg[16]\,
      \r0_data_reg[17]_0\ => \r0_data_reg[17]\,
      \r0_data_reg[18]_0\ => \r0_data_reg[18]\,
      \r0_data_reg[19]_0\ => \r0_data_reg[19]\,
      \r0_data_reg[20]_0\ => \r0_data_reg[20]\,
      \r0_data_reg[21]_0\ => \r0_data_reg[21]\,
      \r0_data_reg[22]_0\ => \r0_data_reg[22]\,
      \r0_data_reg[23]_0\ => \r0_data_reg[23]\,
      \r0_data_reg[24]_0\ => \r0_data_reg[24]\,
      \r0_data_reg[25]_0\ => \r0_data_reg[25]\,
      \r0_data_reg[26]_0\ => \r0_data_reg[26]\,
      \r0_data_reg[27]_0\ => \r0_data_reg[27]\,
      \r0_data_reg[28]_0\ => \r0_data_reg[28]\,
      \r0_data_reg[29]_0\ => \r0_data_reg[29]\,
      \r0_data_reg[30]_0\ => \r0_data_reg[30]\,
      \r0_data_reg[31]_0\ => \r0_data_reg[31]\,
      \r0_data_reg[5]_0\ => \r0_data_reg[5]\,
      \r0_data_reg[6]_0\ => \r0_data_reg[6]\,
      \r0_data_reg[7]_0\ => \r0_data_reg[7]\,
      \r0_data_reg[8]_0\ => \r0_data_reg[8]\,
      \r0_data_reg[9]_0\ => \r0_data_reg[9]\,
      \r0_out_sel_r_reg[0]_0\ => \r0_out_sel_r_reg[0]\,
      \r0_out_sel_r_reg[0]_1\ => \r0_out_sel_r_reg[0]_0\,
      \r0_out_sel_r_reg[0]_2\ => \r0_out_sel_r_reg[0]_1\,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_12 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC;
    \arb_sel_r_reg[0]\ : out STD_LOGIC;
    \gen_data_bit[2].u_srl_fifo\ : out STD_LOGIC;
    \r0_out_sel_r_reg[0]\ : out STD_LOGIC;
    \gen_data_bit[1].u_srl_fifo\ : out STD_LOGIC;
    \gen_data_bit[0].u_srl_fifo\ : out STD_LOGIC;
    \r1_data_reg[3]\ : out STD_LOGIC;
    \r1_data_reg[4]\ : out STD_LOGIC;
    \r1_data_reg[5]\ : out STD_LOGIC;
    \r1_data_reg[6]\ : out STD_LOGIC;
    \r1_data_reg[7]\ : out STD_LOGIC;
    \r1_data_reg[8]\ : out STD_LOGIC;
    \r1_data_reg[9]\ : out STD_LOGIC;
    \r1_data_reg[10]\ : out STD_LOGIC;
    \r1_data_reg[11]\ : out STD_LOGIC;
    \r1_data_reg[12]\ : out STD_LOGIC;
    \r1_data_reg[13]\ : out STD_LOGIC;
    \r1_data_reg[14]\ : out STD_LOGIC;
    \r1_data_reg[15]\ : out STD_LOGIC;
    \r1_data_reg[16]\ : out STD_LOGIC;
    \r1_data_reg[17]\ : out STD_LOGIC;
    \r1_data_reg[18]\ : out STD_LOGIC;
    \r1_data_reg[19]\ : out STD_LOGIC;
    \r1_data_reg[20]\ : out STD_LOGIC;
    \r1_data_reg[22]\ : out STD_LOGIC;
    \r1_data_reg[23]\ : out STD_LOGIC;
    \r1_data_reg[24]\ : out STD_LOGIC;
    \r1_data_reg[25]\ : out STD_LOGIC;
    \r0_data_reg[31]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    areset_r_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    \r0_out_sel_r_reg[0]_0\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_bpayload_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 56 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_12 : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_12;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_12 is
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
      D => areset_r_reg_0(0),
      Q => \^sr\(0),
      R => '0'
    );
\gen_downsizer_conversion.axisc_downsizer_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_13
     port map (
      D(56 downto 0) => D(56 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      \arb_sel_r_reg[0]\ => \arb_sel_r_reg[0]\,
      count_is_max => count_is_max,
      \gen_data_bit[0].u_srl_fifo\ => \gen_data_bit[0].u_srl_fifo\,
      \gen_data_bit[1].u_srl_fifo\ => \gen_data_bit[1].u_srl_fifo\,
      \gen_data_bit[2].u_srl_fifo\ => \gen_data_bit[2].u_srl_fifo\,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0),
      \r0_data_reg[31]_0\(6 downto 0) => \r0_data_reg[31]\(6 downto 0),
      \r0_out_sel_r_reg[0]_0\ => \r0_out_sel_r_reg[0]\,
      \r0_out_sel_r_reg[0]_1\ => \r0_out_sel_r_reg[0]_0\,
      \r1_data_reg[10]_0\ => \r1_data_reg[10]\,
      \r1_data_reg[11]_0\ => \r1_data_reg[11]\,
      \r1_data_reg[12]_0\ => \r1_data_reg[12]\,
      \r1_data_reg[13]_0\ => \r1_data_reg[13]\,
      \r1_data_reg[14]_0\ => \r1_data_reg[14]\,
      \r1_data_reg[15]_0\ => \r1_data_reg[15]\,
      \r1_data_reg[16]_0\ => \r1_data_reg[16]\,
      \r1_data_reg[17]_0\ => \r1_data_reg[17]\,
      \r1_data_reg[18]_0\ => \r1_data_reg[18]\,
      \r1_data_reg[19]_0\ => \r1_data_reg[19]\,
      \r1_data_reg[20]_0\ => \r1_data_reg[20]\,
      \r1_data_reg[22]_0\ => \r1_data_reg[22]\,
      \r1_data_reg[23]_0\ => \r1_data_reg[23]\,
      \r1_data_reg[24]_0\ => \r1_data_reg[24]\,
      \r1_data_reg[25]_0\ => \r1_data_reg[25]\,
      \r1_data_reg[3]_0\ => \r1_data_reg[3]\,
      \r1_data_reg[4]_0\ => \r1_data_reg[4]\,
      \r1_data_reg[5]_0\ => \r1_data_reg[5]\,
      \r1_data_reg[6]_0\ => \r1_data_reg[6]\,
      \r1_data_reg[7]_0\ => \r1_data_reg[7]\,
      \r1_data_reg[8]_0\ => \r1_data_reg[8]\,
      \r1_data_reg[9]_0\ => \r1_data_reg[9]\,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_14 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC;
    f_mux4_return : out STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \r0_out_sel_r_reg[0]\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 56 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_14 : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_14;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_14 is
begin
\gen_downsizer_conversion.axisc_downsizer_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_15
     port map (
      D(56 downto 0) => D(56 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      areset_r => areset_r,
      f_mux4_return(32 downto 0) => f_mux4_return(32 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(6 downto 0) => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(6 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\,
      \r0_out_sel_r_reg[0]_0\ => \r0_out_sel_r_reg[0]\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \state_reg[0]_0\ => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\ is
  port (
    s_axis_tvalid_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\ is
begin
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      areset_r => areset_r,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tvalid_0 => s_axis_tvalid_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_10\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_1_sp_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_arready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_10\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_10\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_10\ is
  signal s_axis_tid_1_sn_1 : STD_LOGIC;
begin
  s_axis_tid_1_sp_1 <= s_axis_tid_1_sn_1;
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_11
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_axi_arready_i => m_axi_arready_i,
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
entity \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_6\ is
  port (
    s_axis_tready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \acc_data_reg[34]\ : out STD_LOGIC;
    \acc_data_reg[34]_0\ : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tready_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tready_1 : in STD_LOGIC;
    s_axis_tready_2 : in STD_LOGIC;
    s_axis_tready_3 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_tready_4 : in STD_LOGIC;
    s_axis_tready_5 : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \num_active_trans_reg[0]\ : in STD_LOGIC;
    \num_active_trans_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_6\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_6\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_6\ is
begin
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_7
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      \acc_data_reg[34]_0\ => \acc_data_reg[34]\,
      \acc_data_reg[34]_1\ => \acc_data_reg[34]_0\,
      aclk => aclk,
      areset_r => areset_r,
      \num_active_trans_reg[0]\ => \num_active_trans_reg[0]\,
      \num_active_trans_reg[0]_0\(0) => \num_active_trans_reg[0]_0\(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => s_axi_rready_0,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tready_0(2 downto 0) => s_axis_tready_0(2 downto 0),
      s_axis_tready_1 => s_axis_tready_1,
      s_axis_tready_2 => s_axis_tready_2,
      s_axis_tready_3 => s_axis_tready_3,
      s_axis_tready_4 => s_axis_tready_4,
      s_axis_tready_5 => s_axis_tready_5,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_8\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_0_sp_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_8\ : entity is "axis_dwidth_converter_v1_1_25_axis_dwidth_converter";
end \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_8\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_8\ is
  signal s_axis_tid_0_sn_1 : STD_LOGIC;
begin
  s_axis_tid_0_sp_1 <= s_axis_tid_0_sn_1;
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_9
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_axi_awready_i => m_axi_awready_i,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tid_0_sp_1 => s_axis_tid_0_sn_1,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch__parameterized0\ is
  port (
    areset_r : out STD_LOGIC;
    \gen_tdest_routing.decode_err_r_reg\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch__parameterized0\ : entity is "axis_switch_v1_1_26_axis_switch";
end \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch__parameterized0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch__parameterized0\ is
  signal \^areset_r\ : STD_LOGIC;
begin
  areset_r <= \^areset_r\;
areset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => SR(0),
      Q => \^areset_r\,
      R => '0'
    );
\gen_decoder[0].axisc_decoder_0\: entity work.\design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder__parameterized0\
     port map (
      aclk => aclk,
      areset_r => \^areset_r\,
      \gen_tdest_routing.decode_err_r_reg_0\ => \gen_tdest_routing.decode_err_r_reg\,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch_arbiter is
  port (
    arb_busy_r : out STD_LOGIC;
    arb_gnt_i : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \arb_gnt_r_reg[4]\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \arb_gnt_r_reg[4]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]\ : out STD_LOGIC;
    f_mux4_return : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_sel_r_reg[0]\ : out STD_LOGIC;
    \arb_sel_r_reg[1]\ : out STD_LOGIC;
    f_mux40_return : out STD_LOGIC;
    \arb_sel_r_reg[0]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[0]_1\ : out STD_LOGIC;
    arb_sel_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    o_i : in STD_LOGIC;
    \arb_sel_r_reg[0]_2\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_3\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : in STD_LOGIC;
    arb_busy_r_reg_1 : in STD_LOGIC;
    arb_busy_r_reg_2 : in STD_LOGIC;
    \arb_gnt_r_reg[4]_1\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_0\ : in STD_LOGIC;
    \arb_gnt_r_reg[1]\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_4\ : in STD_LOGIC;
    \arb_sel_r_reg[2]\ : in STD_LOGIC;
    \arb_sel_r_reg[2]_0\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_5\ : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch_arbiter;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch_arbiter is
begin
\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1\: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_arb_rr
     port map (
      aclk => aclk,
      arb_busy_r => arb_busy_r,
      arb_busy_r_reg_0 => arb_busy_r_reg,
      arb_busy_r_reg_1 => arb_busy_r_reg_0,
      arb_busy_r_reg_2 => arb_busy_r_reg_1,
      arb_busy_r_reg_3 => arb_busy_r_reg_2,
      \arb_gnt_r_reg[1]_0\ => arb_gnt_i(0),
      \arb_gnt_r_reg[1]_1\ => \arb_gnt_r_reg[1]\,
      \arb_gnt_r_reg[2]_0\ => arb_gnt_i(1),
      \arb_gnt_r_reg[2]_1\ => \arb_gnt_r_reg[2]\,
      \arb_gnt_r_reg[2]_2\ => \arb_gnt_r_reg[2]_0\,
      \arb_gnt_r_reg[4]_0\ => \arb_gnt_r_reg[4]\,
      \arb_gnt_r_reg[4]_1\ => \arb_gnt_r_reg[4]_0\,
      \arb_gnt_r_reg[4]_2\ => arb_gnt_i(2),
      \arb_gnt_r_reg[4]_3\ => \arb_gnt_r_reg[4]_1\,
      arb_sel_i(0) => arb_sel_i(0),
      \arb_sel_r_reg[0]_0\ => \arb_sel_r_reg[0]\,
      \arb_sel_r_reg[0]_1\ => \arb_sel_r_reg[0]_0\,
      \arb_sel_r_reg[0]_2\ => \arb_sel_r_reg[0]_1\,
      \arb_sel_r_reg[0]_3\ => \arb_sel_r_reg[0]_2\,
      \arb_sel_r_reg[0]_4\ => \arb_sel_r_reg[0]_3\,
      \arb_sel_r_reg[0]_5\ => \arb_sel_r_reg[0]_4\,
      \arb_sel_r_reg[0]_6\ => \arb_sel_r_reg[0]_5\,
      \arb_sel_r_reg[1]_0\ => \arb_sel_r_reg[1]\,
      \arb_sel_r_reg[1]_1\ => \arb_sel_r_reg[1]_0\,
      \arb_sel_r_reg[2]_0\ => \arb_sel_r_reg[2]\,
      \arb_sel_r_reg[2]_1\ => \arb_sel_r_reg[2]_0\,
      areset_r => areset_r,
      f_mux40_return => f_mux40_return,
      f_mux4_return(0) => f_mux4_return(0),
      \gen_tdest_router.busy_r\(2 downto 0) => \gen_tdest_router.busy_r\(2 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      m_int_tvalid(2 downto 0) => m_int_tvalid(2 downto 0),
      o_i => o_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_transfer_mux is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_i : out STD_LOGIC;
    \busy_r_reg[1]\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \busy_r_reg[4]\ : out STD_LOGIC;
    arb_busy_r_reg : out STD_LOGIC;
    m_axis_tready_0 : out STD_LOGIC;
    arb_busy_r_reg_0 : out STD_LOGIC;
    \busy_r_reg[1]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_ns_1\ : out STD_LOGIC;
    \busy_r_reg[2]\ : out STD_LOGIC;
    arb_busy_r_reg_1 : out STD_LOGIC;
    \busy_r_reg[2]_0\ : out STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    m_int_tdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\ : in STD_LOGIC;
    f_mux4_return : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_int_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_out1 : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    f_mux40_return : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tready : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : in STD_LOGIC;
    \arb_sel_r_reg[2]\ : in STD_LOGIC;
    \arb_gnt_r_reg[4]\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_2\ : in STD_LOGIC;
    \busy_r_reg[4]_0\ : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    \arb_gnt_r_reg[4]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_transfer_mux;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_transfer_mux is
  signal \^arb_gnt_r_reg[2]\ : STD_LOGIC;
  signal \gen_tdest_router.axisc_arb_responder_n_7\ : STD_LOGIC;
  signal \gen_tdest_router.mux_enc_0_n_45\ : STD_LOGIC;
  signal \^m_axis_tready_0\ : STD_LOGIC;
  signal \^o_i\ : STD_LOGIC;
begin
  \arb_gnt_r_reg[2]\ <= \^arb_gnt_r_reg[2]\;
  m_axis_tready_0 <= \^m_axis_tready_0\;
  o_i <= \^o_i\;
\gen_tdest_router.axisc_arb_responder\: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_arb_responder
     port map (
      aclk => aclk,
      arb_busy_r => arb_busy_r,
      arb_busy_r_reg => arb_busy_r_reg_0,
      arb_busy_r_reg_0 => arb_busy_r_reg_1,
      arb_gnt_i(2 downto 0) => arb_gnt_i(2 downto 0),
      \arb_gnt_r[4]_i_2_0\ => \gen_tdest_routing.busy_r_reg[0]\,
      \arb_gnt_r_reg[2]\ => \^arb_gnt_r_reg[2]\,
      \arb_gnt_r_reg[4]\ => \arb_gnt_r_reg[4]\,
      \arb_gnt_r_reg[4]_0\ => \^m_axis_tready_0\,
      \arb_gnt_r_reg[4]_1\ => \arb_gnt_r_reg[4]_0\,
      \arb_sel_r_reg[2]\ => \arb_sel_r_reg[2]\,
      \busy_r_reg[1]_0\ => \busy_r_reg[1]\,
      \busy_r_reg[1]_1\ => \gen_tdest_router.busy_r\(0),
      \busy_r_reg[1]_2\ => \busy_r_reg[1]_0\,
      \busy_r_reg[2]_0\ => \gen_tdest_router.busy_r\(1),
      \busy_r_reg[2]_1\ => \gen_tdest_router.axisc_arb_responder_n_7\,
      \busy_r_reg[2]_2\ => \busy_r_reg[2]\,
      \busy_r_reg[2]_3\ => \busy_r_reg[2]_0\,
      \busy_r_reg[4]_0\ => \busy_r_reg[4]\,
      \busy_r_reg[4]_1\ => \gen_tdest_router.busy_r\(2),
      \busy_r_reg[4]_2\ => \gen_tdest_router.mux_enc_0_n_45\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]_0\,
      m_axis_tready => m_axis_tready,
      m_int_tvalid(0) => m_int_tvalid(0)
    );
\gen_tdest_router.mux_enc_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc
     port map (
      arb_busy_r => arb_busy_r,
      arb_busy_r_reg => arb_busy_r_reg,
      arb_gnt_i(2 downto 0) => arb_gnt_i(2 downto 0),
      \arb_gnt_r_reg[2]\ => \gen_tdest_router.axisc_arb_responder_n_7\,
      arb_sel_i(0) => arb_sel_i(0),
      areset_r => areset_r,
      \busy_r_reg[4]\ => \busy_r_reg[4]_0\,
      f_mux4_return(0) => f_mux4_return(0),
      \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1\ => \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\,
      \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1\ => \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1\(32 downto 0) => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(32 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0\(1 downto 0) => \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst\(1 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_ns_1\ => \gen_tdest_routing.busy_ns_1\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \^o_i\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_tdest_routing.busy_r_reg[0]_1\,
      \gen_tdest_routing.busy_r_reg[0]_2\ => \^arb_gnt_r_reg[2]\,
      \gen_tdest_routing.busy_r_reg[0]_3\ => \gen_tdest_routing.busy_r_reg[0]_2\,
      last_out1 => last_out1,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tready_0 => \^m_axis_tready_0\,
      m_axis_tready_1 => \gen_tdest_router.mux_enc_0_n_45\,
      m_int_tdata(4 downto 0) => m_int_tdata(4 downto 0),
      m_int_tkeep(0) => m_int_tkeep(0),
      m_int_tvalid(0) => m_int_tvalid(0)
    );
\gen_tdest_router.mux_enc_1\: entity work.\design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0\
     port map (
      arb_sel_i(0) => arb_sel_i(0),
      f_mux40_return => f_mux40_return,
      m_int_tvalid(0) => m_int_tvalid(1),
      o_i => \^o_i\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator is
  port (
    areset_r : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC;
    \arb_sel_r_reg[0]\ : out STD_LOGIC;
    \gen_data_bit[2].u_srl_fifo\ : out STD_LOGIC;
    \r0_data_reg[31]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \r0_out_sel_r_reg[0]\ : out STD_LOGIC;
    \gen_data_bit[1].u_srl_fifo\ : out STD_LOGIC;
    \gen_data_bit[0].u_srl_fifo\ : out STD_LOGIC;
    \r1_data_reg[3]\ : out STD_LOGIC;
    \r1_data_reg[4]\ : out STD_LOGIC;
    \r1_data_reg[5]\ : out STD_LOGIC;
    \r1_data_reg[6]\ : out STD_LOGIC;
    \r1_data_reg[7]\ : out STD_LOGIC;
    \r1_data_reg[8]\ : out STD_LOGIC;
    \r1_data_reg[9]\ : out STD_LOGIC;
    \r1_data_reg[10]\ : out STD_LOGIC;
    \r1_data_reg[11]\ : out STD_LOGIC;
    \r1_data_reg[12]\ : out STD_LOGIC;
    \r1_data_reg[13]\ : out STD_LOGIC;
    \r1_data_reg[14]\ : out STD_LOGIC;
    \r1_data_reg[15]\ : out STD_LOGIC;
    \r1_data_reg[16]\ : out STD_LOGIC;
    \r1_data_reg[17]\ : out STD_LOGIC;
    \r1_data_reg[18]\ : out STD_LOGIC;
    \r1_data_reg[19]\ : out STD_LOGIC;
    \r1_data_reg[20]\ : out STD_LOGIC;
    \r1_data_reg[22]\ : out STD_LOGIC;
    \r1_data_reg[23]\ : out STD_LOGIC;
    \r1_data_reg[24]\ : out STD_LOGIC;
    \r1_data_reg[25]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    \r0_out_sel_r_reg[0]_0\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_bpayload_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 56 downto 0 )
  );
end design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_12
     port map (
      D(56 downto 0) => D(56 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => areset_r,
      aclk => aclk,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      \arb_sel_r_reg[0]\ => \arb_sel_r_reg[0]\,
      areset_r_reg_0(0) => SR(0),
      count_is_max => count_is_max,
      \gen_data_bit[0].u_srl_fifo\ => \gen_data_bit[0].u_srl_fifo\,
      \gen_data_bit[1].u_srl_fifo\ => \gen_data_bit[1].u_srl_fifo\,
      \gen_data_bit[2].u_srl_fifo\ => \gen_data_bit[2].u_srl_fifo\,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0),
      \r0_data_reg[31]\(6 downto 0) => \r0_data_reg[31]\(6 downto 0),
      \r0_out_sel_r_reg[0]\ => \r0_out_sel_r_reg[0]\,
      \r0_out_sel_r_reg[0]_0\ => \r0_out_sel_r_reg[0]_0\,
      \r1_data_reg[10]\ => \r1_data_reg[10]\,
      \r1_data_reg[11]\ => \r1_data_reg[11]\,
      \r1_data_reg[12]\ => \r1_data_reg[12]\,
      \r1_data_reg[13]\ => \r1_data_reg[13]\,
      \r1_data_reg[14]\ => \r1_data_reg[14]\,
      \r1_data_reg[15]\ => \r1_data_reg[15]\,
      \r1_data_reg[16]\ => \r1_data_reg[16]\,
      \r1_data_reg[17]\ => \r1_data_reg[17]\,
      \r1_data_reg[18]\ => \r1_data_reg[18]\,
      \r1_data_reg[19]\ => \r1_data_reg[19]\,
      \r1_data_reg[20]\ => \r1_data_reg[20]\,
      \r1_data_reg[22]\ => \r1_data_reg[22]\,
      \r1_data_reg[23]\ => \r1_data_reg[23]\,
      \r1_data_reg[24]\ => \r1_data_reg[24]\,
      \r1_data_reg[25]\ => \r1_data_reg[25]\,
      \r1_data_reg[3]\ => \r1_data_reg[3]\,
      \r1_data_reg[4]\ => \r1_data_reg[4]\,
      \r1_data_reg[5]\ => \r1_data_reg[5]\,
      \r1_data_reg[6]\ => \r1_data_reg[6]\,
      \r1_data_reg[7]\ => \r1_data_reg[7]\,
      \r1_data_reg[8]\ => \r1_data_reg[8]\,
      \r1_data_reg[9]\ => \r1_data_reg[9]\,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    last_out1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_int_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_int_tdata : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \r0_out_sel_r_reg[0]\ : out STD_LOGIC;
    \r0_out_sel_r_reg[0]_0\ : out STD_LOGIC;
    \r0_data_reg[31]\ : out STD_LOGIC;
    \r0_data_reg[30]\ : out STD_LOGIC;
    \r0_data_reg[29]\ : out STD_LOGIC;
    \r0_data_reg[28]\ : out STD_LOGIC;
    \r0_data_reg[27]\ : out STD_LOGIC;
    \r0_data_reg[26]\ : out STD_LOGIC;
    \r0_data_reg[25]\ : out STD_LOGIC;
    \r0_data_reg[24]\ : out STD_LOGIC;
    \r0_data_reg[23]\ : out STD_LOGIC;
    \r0_data_reg[22]\ : out STD_LOGIC;
    \r0_data_reg[21]\ : out STD_LOGIC;
    \r0_data_reg[20]\ : out STD_LOGIC;
    \r0_data_reg[19]\ : out STD_LOGIC;
    \r0_data_reg[18]\ : out STD_LOGIC;
    \r0_data_reg[17]\ : out STD_LOGIC;
    \r0_data_reg[16]\ : out STD_LOGIC;
    \r0_data_reg[15]\ : out STD_LOGIC;
    \r0_data_reg[14]\ : out STD_LOGIC;
    \r0_data_reg[13]\ : out STD_LOGIC;
    \r0_data_reg[12]\ : out STD_LOGIC;
    \r0_data_reg[11]\ : out STD_LOGIC;
    \r0_data_reg[10]\ : out STD_LOGIC;
    \r0_data_reg[9]\ : out STD_LOGIC;
    \r0_data_reg[8]\ : out STD_LOGIC;
    \r0_data_reg[7]\ : out STD_LOGIC;
    \r0_data_reg[6]\ : out STD_LOGIC;
    \r0_data_reg[5]\ : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    \r0_out_sel_r_reg[0]_1\ : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized0\ : entity is "axi_mm2s_mapper_v1_1_25_stream_encapsulator";
end \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized0\ is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter
     port map (
      D(36) => s_axi_wlast,
      D(35 downto 0) => D(35 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      count_is_zero => count_is_zero,
      last_out1 => last_out1,
      m_int_tdata(4 downto 0) => m_int_tdata(4 downto 0),
      m_int_tkeep(0) => m_int_tkeep(0),
      \r0_data_reg[10]\ => \r0_data_reg[10]\,
      \r0_data_reg[11]\ => \r0_data_reg[11]\,
      \r0_data_reg[12]\ => \r0_data_reg[12]\,
      \r0_data_reg[13]\ => \r0_data_reg[13]\,
      \r0_data_reg[14]\ => \r0_data_reg[14]\,
      \r0_data_reg[15]\ => \r0_data_reg[15]\,
      \r0_data_reg[16]\ => \r0_data_reg[16]\,
      \r0_data_reg[17]\ => \r0_data_reg[17]\,
      \r0_data_reg[18]\ => \r0_data_reg[18]\,
      \r0_data_reg[19]\ => \r0_data_reg[19]\,
      \r0_data_reg[20]\ => \r0_data_reg[20]\,
      \r0_data_reg[21]\ => \r0_data_reg[21]\,
      \r0_data_reg[22]\ => \r0_data_reg[22]\,
      \r0_data_reg[23]\ => \r0_data_reg[23]\,
      \r0_data_reg[24]\ => \r0_data_reg[24]\,
      \r0_data_reg[25]\ => \r0_data_reg[25]\,
      \r0_data_reg[26]\ => \r0_data_reg[26]\,
      \r0_data_reg[27]\ => \r0_data_reg[27]\,
      \r0_data_reg[28]\ => \r0_data_reg[28]\,
      \r0_data_reg[29]\ => \r0_data_reg[29]\,
      \r0_data_reg[30]\ => \r0_data_reg[30]\,
      \r0_data_reg[31]\ => \r0_data_reg[31]\,
      \r0_data_reg[5]\ => \r0_data_reg[5]\,
      \r0_data_reg[6]\ => \r0_data_reg[6]\,
      \r0_data_reg[7]\ => \r0_data_reg[7]\,
      \r0_data_reg[8]\ => \r0_data_reg[8]\,
      \r0_data_reg[9]\ => \r0_data_reg[9]\,
      \r0_out_sel_r_reg[0]\ => \r0_out_sel_r_reg[0]\,
      \r0_out_sel_r_reg[0]_0\ => \r0_out_sel_r_reg[0]_0\,
      \r0_out_sel_r_reg[0]_1\ => \r0_out_sel_r_reg[0]_1\,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC;
    f_mux4_return : out STD_LOGIC_VECTOR ( 32 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \r0_out_sel_r_reg[0]\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 56 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized2\ : entity is "axi_mm2s_mapper_v1_1_25_stream_encapsulator";
end \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized2\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized2\ is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_14
     port map (
      D(56 downto 0) => D(56 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      areset_r => areset_r,
      f_mux4_return(32 downto 0) => f_mux4_return(32 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(6 downto 0) => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(6 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\,
      \r0_out_sel_r_reg[0]\ => \r0_out_sel_r_reg[0]\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \state_reg[0]\ => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_1_sp_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_arready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander is
  signal s_axis_tid_1_sn_1 : STD_LOGIC;
begin
  s_axis_tid_1_sp_1 <= s_axis_tid_1_sn_1;
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_10\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_axi_arready_i => m_axi_arready_i,
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
entity design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid_0_sp_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axi_awready_i : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander_1 : entity is "axi_mm2s_mapper_v1_1_25_stream_expander";
end design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander_1;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander_1 is
  signal s_axis_tid_0_sn_1 : STD_LOGIC;
begin
  s_axis_tid_0_sp_1 <= s_axis_tid_0_sn_1;
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_8\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_axi_awready_i => m_axi_awready_i,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tid_0_sp_1 => s_axis_tid_0_sn_1,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\ is
  port (
    s_axis_tvalid_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    areset_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\ : entity is "axi_mm2s_mapper_v1_1_25_stream_expander";
end \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\ is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0\
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      areset_r => areset_r,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tvalid_0 => s_axis_tvalid_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\ is
  port (
    s_axis_tready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \acc_data_reg[34]\ : out STD_LOGIC;
    \acc_data_reg[34]_0\ : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tready_1 : in STD_LOGIC;
    s_axis_tready_2 : in STD_LOGIC;
    s_axis_tready_3 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_tready_4 : in STD_LOGIC;
    s_axis_tready_5 : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \num_active_trans_reg[0]\ : in STD_LOGIC;
    \num_active_trans_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\ : entity is "axi_mm2s_mapper_v1_1_25_stream_expander";
end \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\;

architecture STRUCTURE of \design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\ is
begin
\gen_dwidth_converter.axis_dwidth_converter_0\: entity work.\design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_6\
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      \acc_data_reg[34]\ => \acc_data_reg[34]\,
      \acc_data_reg[34]_0\ => \acc_data_reg[34]_0\,
      aclk => aclk,
      areset_r => areset_r,
      \num_active_trans_reg[0]\ => \num_active_trans_reg[0]\,
      \num_active_trans_reg[0]_0\(0) => \num_active_trans_reg[0]_0\(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => s_axi_rready_0,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tready_0(2 downto 0) => s_axis_tready_0(2 downto 0),
      s_axis_tready_1 => s_axis_tready_1,
      s_axis_tready_2 => s_axis_tready_2,
      s_axis_tready_3 => s_axis_tready_3,
      s_axis_tready_4 => s_axis_tready_4,
      s_axis_tready_5 => s_axis_tready_5,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \arb_sel_r_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \busy_r_reg[1]\ : out STD_LOGIC;
    \busy_r_reg[4]\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \busy_r_reg[2]\ : out STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    m_int_tdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\ : in STD_LOGIC;
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\ : in STD_LOGIC;
    m_int_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_out1 : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
end design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch is
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal arb_sel_i : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^arb_sel_r_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_decoder[1].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_decoder[4].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[4].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[4].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_12\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_13\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_4\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_6\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_7\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r\ : STD_LOGIC;
  signal \gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \gen_tdest_router.mux_enc_0/f_mux4_return\ : STD_LOGIC_VECTOR ( 35 to 35 );
  signal \gen_tdest_router.mux_enc_1/f_mux40_return\ : STD_LOGIC;
  signal \gen_tdest_router.mux_enc_1/o_i\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_0\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_ns_1\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_46\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_47\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_48\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_49\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_51\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_55\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_56\ : STD_LOGIC;
begin
  \arb_sel_r_reg[1]\(1 downto 0) <= \^arb_sel_r_reg[1]\(1 downto 0);
\gen_decoder[1].axisc_decoder_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder
     port map (
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(1),
      \arb_gnt_r_reg[1]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_49\,
      areset_r => areset_r,
      areset_r_reg => \gen_decoder[1].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[1].axisc_decoder_0_n_0\,
      m_int_tvalid(0) => m_int_tvalid(0),
      \state_reg[1]\ => \gen_decoder[1].axisc_decoder_0_n_2\
    );
\gen_decoder[2].axisc_decoder_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_4
     port map (
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(2),
      \arb_gnt_r_reg[2]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_46\,
      areset_r => areset_r,
      areset_r_reg => \gen_decoder[2].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[2].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_decoder[2].axisc_decoder_0_n_3\,
      m_int_tvalid(0) => m_int_tvalid(1),
      \state_reg[1]\ => \gen_decoder[2].axisc_decoder_0_n_2\
    );
\gen_decoder[4].axisc_decoder_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_5
     port map (
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(4),
      \arb_gnt_r_reg[4]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_55\,
      areset_r => areset_r,
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_1\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[4].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_decoder[4].axisc_decoder_0_n_2\,
      m_int_tvalid(0) => m_int_tvalid(2),
      \state_reg[1]\ => \gen_decoder[4].axisc_decoder_0_n_1\
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter\: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch_arbiter
     port map (
      aclk => aclk,
      arb_busy_r => \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r\,
      arb_busy_r_reg => \gen_decoder[1].axisc_decoder_0_n_0\,
      arb_busy_r_reg_0 => \gen_transfer_mux[0].axisc_transfer_mux_0_n_51\,
      arb_busy_r_reg_1 => \gen_decoder[4].axisc_decoder_0_n_0\,
      arb_busy_r_reg_2 => \gen_decoder[2].axisc_decoder_0_n_0\,
      arb_gnt_i(2) => arb_gnt_i(4),
      arb_gnt_i(1 downto 0) => arb_gnt_i(2 downto 1),
      \arb_gnt_r_reg[1]\ => \gen_decoder[1].axisc_decoder_0_n_1\,
      \arb_gnt_r_reg[2]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_7\,
      \arb_gnt_r_reg[2]_0\ => \gen_decoder[2].axisc_decoder_0_n_1\,
      \arb_gnt_r_reg[4]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_4\,
      \arb_gnt_r_reg[4]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_6\,
      \arb_gnt_r_reg[4]_1\ => \gen_decoder[4].axisc_decoder_0_n_1\,
      arb_sel_i(0) => arb_sel_i(2),
      \arb_sel_r_reg[0]\ => \^arb_sel_r_reg[1]\(0),
      \arb_sel_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_12\,
      \arb_sel_r_reg[0]_1\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_13\,
      \arb_sel_r_reg[0]_2\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_56\,
      \arb_sel_r_reg[0]_3\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_47\,
      \arb_sel_r_reg[0]_4\ => \gen_decoder[1].axisc_decoder_0_n_2\,
      \arb_sel_r_reg[0]_5\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_49\,
      \arb_sel_r_reg[1]\ => \^arb_sel_r_reg[1]\(1),
      \arb_sel_r_reg[1]_0\ => \gen_decoder[2].axisc_decoder_0_n_2\,
      \arb_sel_r_reg[2]\ => \gen_decoder[4].axisc_decoder_0_n_2\,
      \arb_sel_r_reg[2]_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_48\,
      areset_r => areset_r,
      f_mux40_return => \gen_tdest_router.mux_enc_1/f_mux40_return\,
      f_mux4_return(0) => \gen_tdest_router.mux_enc_0/f_mux4_return\(35),
      \gen_tdest_router.busy_r\(2) => \gen_tdest_router.busy_r\(4),
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(2 downto 1),
      m_axis_tvalid => m_axis_tvalid,
      m_int_tvalid(2 downto 0) => m_int_tvalid(2 downto 0),
      o_i => \gen_tdest_router.mux_enc_1/o_i\
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_transfer_mux
     port map (
      aclk => aclk,
      arb_busy_r => \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r\,
      arb_busy_r_reg => \gen_transfer_mux[0].axisc_transfer_mux_0_n_46\,
      arb_busy_r_reg_0 => \gen_transfer_mux[0].axisc_transfer_mux_0_n_48\,
      arb_busy_r_reg_1 => \gen_transfer_mux[0].axisc_transfer_mux_0_n_55\,
      arb_gnt_i(2) => arb_gnt_i(4),
      arb_gnt_i(1 downto 0) => arb_gnt_i(2 downto 1),
      \arb_gnt_r_reg[2]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_51\,
      \arb_gnt_r_reg[4]\ => \gen_decoder[1].axisc_decoder_0_n_2\,
      \arb_gnt_r_reg[4]_0\ => \gen_decoder[2].axisc_decoder_0_n_3\,
      arb_sel_i(0) => arb_sel_i(2),
      \arb_sel_r_reg[2]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_4\,
      areset_r => areset_r,
      \busy_r_reg[1]\ => \busy_r_reg[1]\,
      \busy_r_reg[1]_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_49\,
      \busy_r_reg[2]\ => \busy_r_reg[2]\,
      \busy_r_reg[2]_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_56\,
      \busy_r_reg[4]\ => \busy_r_reg[4]\,
      \busy_r_reg[4]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_7\,
      f_mux40_return => \gen_tdest_router.mux_enc_1/f_mux40_return\,
      f_mux4_return(0) => \gen_tdest_router.mux_enc_0/f_mux4_return\(35),
      \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_12\,
      \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_13\,
      \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0\ => \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(32 downto 0) => \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(32 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst\(1 downto 0) => \^arb_sel_r_reg[1]\(1 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\,
      \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ => \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\,
      \gen_tdest_router.busy_r\(2) => \gen_tdest_router.busy_r\(4),
      \gen_tdest_router.busy_r\(1 downto 0) => \gen_tdest_router.busy_r\(2 downto 1),
      \gen_tdest_routing.busy_ns\ => \gen_tdest_routing.busy_ns_1\,
      \gen_tdest_routing.busy_ns_0\ => \gen_tdest_routing.busy_ns_0\,
      \gen_tdest_routing.busy_ns_1\ => \gen_tdest_routing.busy_ns\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_decoder[1].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_6\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_decoder[4].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_2\ => \gen_decoder[2].axisc_decoder_0_n_0\,
      last_out1 => last_out1,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tready_0 => \gen_transfer_mux[0].axisc_transfer_mux_0_n_47\,
      m_int_tdata(4 downto 0) => m_int_tdata(4 downto 0),
      m_int_tkeep(0) => m_int_tkeep(0),
      m_int_tvalid(1) => m_int_tvalid(2),
      m_int_tvalid(0) => m_int_tvalid(0),
      o_i => \gen_tdest_router.mux_enc_1/o_i\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top is
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
  attribute C_AXIS_TDATA_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is "zynq";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 38;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 40;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 53;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 44;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 52;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 54;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 35;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 38;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 40;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 53;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 44;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 52;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 54;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 35;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 58;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 3;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 35;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 36;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 36;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 37;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 37;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 37;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 0;
  attribute LP_AR_TDEST : string;
  attribute LP_AR_TDEST of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is "3'b010";
  attribute LP_AW_TDEST : string;
  attribute LP_AW_TDEST of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is "3'b001";
  attribute LP_B_TDEST : string;
  attribute LP_B_TDEST of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is "3'b000";
  attribute LP_LOG_M_AX_FIFO_DEPTH : integer;
  attribute LP_LOG_M_AX_FIFO_DEPTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 4;
  attribute LP_M_AX_FIFO_DEPTH : integer;
  attribute LP_M_AX_FIFO_DEPTH of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is 16;
  attribute LP_R_TDEST : string;
  attribute LP_R_TDEST of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is "3'b011";
  attribute LP_W_TDEST : string;
  attribute LP_W_TDEST of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top : entity is "3'b100";
end design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top is
  signal \<const0>\ : STD_LOGIC;
  signal arb_sel_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal areset_r : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal count_is_max : STD_LOGIC;
  signal count_is_zero : STD_LOGIC;
  signal \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\ : STD_LOGIC;
  signal \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/last_out1\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\ : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal m_axi_arready_i : STD_LOGIC;
  signal m_axi_arvalid_i : STD_LOGIC;
  signal m_axi_awready_i : STD_LOGIC;
  signal m_axi_awvalid_i : STD_LOGIC;
  signal m_bpayload_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m_int_tdata : STD_LOGIC_VECTOR ( 132 downto 128 );
  signal m_int_tkeep : STD_LOGIC_VECTOR ( 19 to 19 );
  signal m_int_tvalid : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 31 downto 21 );
  signal s_axi_arready_i : STD_LOGIC;
  signal s_axi_awready_i : STD_LOGIC;
  signal s_axi_wready_i : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_int_tready : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_13 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_14 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_15 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_16 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_17 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_18 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_19 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_20 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_21 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_22 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_23 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_24 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_25 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_26 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_27 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_28 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_29 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_30 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_31 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_32 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_33 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_34 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_35 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_36 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_37 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_4 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_5 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_10 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_11 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_12 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_13 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_14 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_15 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_16 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_17 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_18 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_19 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_20 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_21 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_22 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_23 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_24 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_25 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_26 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_27 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_28 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_29 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_30 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_31 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_32 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_33 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_34 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_35 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_36 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_37 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_38 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_expander_ar_n_2 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_expander_aw_n_2 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_2 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_4 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_5 : STD_LOGIC;
  signal u_axi_mm2s_mapper_v1_1_25_stream_expander_w_n_0 : STD_LOGIC;
  signal u_axis_switch_v1_1_26_axis_switch_1x5_n_1 : STD_LOGIC;
  signal u_axis_switch_v1_1_26_axis_switch_5x1_n_42 : STD_LOGIC;
  signal u_axis_switch_v1_1_26_axis_switch_5x1_n_43 : STD_LOGIC;
  signal u_axis_switch_v1_1_26_axis_switch_5x1_n_45 : STD_LOGIC;
  signal u_transaction_counter_ar_to_r_n_0 : STD_LOGIC;
  signal u_transaction_counter_aw_to_b_n_1 : STD_LOGIC;
  signal u_transaction_counter_aw_to_b_n_2 : STD_LOGIC;
  signal u_transaction_counter_aw_to_b_n_3 : STD_LOGIC;
begin
  \^s_axis_tdata\(31 downto 0) <= s_axis_tdata(31 downto 0);
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1 downto 0) <= \^s_axis_tdata\(1 downto 0);
  s_axi_buser(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axis_tid(2),
      I1 => s_axis_tvalid,
      I2 => s_axis_tid(0),
      I3 => s_axis_tid(1),
      O => s_axi_bvalid
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar: entity work.\design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\
     port map (
      Q(0) => m_axi_arvalid_i,
      SS(0) => clear,
      aclk => aclk,
      areset_r => areset_r,
      aresetn => aresetn,
      m_axi_arready_i => m_axi_arready_i
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw: entity work.\design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0\
     port map (
      Q(0) => m_axi_awvalid_i,
      SR(0) => clear,
      aclk => aclk,
      areset_r => areset_r,
      m_axi_awready_i => m_axi_awready_i
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_b: entity work.design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo
     port map (
      aclk => aclk,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0)
    );
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_ar: entity work.\design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized2\
     port map (
      D(56 downto 53) => s_axi_arqos(3 downto 0),
      D(52) => s_axi_arlock(0),
      D(51 downto 44) => s_axi_arlen(7 downto 0),
      D(43 downto 40) => s_axi_arcache(3 downto 0),
      D(39 downto 38) => s_axi_arburst(1 downto 0),
      D(37 downto 35) => s_axi_arsize(2 downto 0),
      D(34 downto 32) => s_axi_arprot(2 downto 0),
      D(31 downto 0) => s_axi_araddr(31 downto 0),
      Q(1) => m_int_tvalid(2),
      Q(0) => s_axi_arready_i,
      aclk => aclk,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      f_mux4_return(32) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(36),
      f_mux4_return(31 downto 0) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(31 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_15,
      \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_23,
      \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_24,
      \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_25,
      \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_26,
      \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_27,
      \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_28,
      \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_29,
      \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_30,
      \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_31,
      \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_32,
      \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_14,
      \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_33,
      \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_13,
      \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_34,
      \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_35,
      \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_36,
      \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_37,
      \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_5,
      \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(6 downto 1) => p_0_in1_in(31 downto 26),
      \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\(0) => p_0_in1_in(21),
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_4,
      \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_16,
      \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_17,
      \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_18,
      \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_19,
      \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_20,
      \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_21,
      \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_22,
      \r0_out_sel_r_reg[0]\ => u_axis_switch_v1_1_26_axis_switch_5x1_n_45,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \state_reg[0]\ => u_transaction_counter_ar_to_r_n_0
    );
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw: entity work.design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator
     port map (
      D(56 downto 53) => s_axi_awqos(3 downto 0),
      D(52) => s_axi_awlock(0),
      D(51 downto 44) => s_axi_awlen(7 downto 0),
      D(43 downto 40) => s_axi_awcache(3 downto 0),
      D(39 downto 38) => s_axi_awburst(1 downto 0),
      D(37 downto 35) => s_axi_awsize(2 downto 0),
      D(34 downto 32) => s_axi_awprot(2 downto 0),
      D(31 downto 0) => s_axi_awaddr(31 downto 0),
      Q(1) => m_int_tvalid(1),
      Q(0) => s_axi_awready_i,
      SR(0) => clear,
      aclk => aclk,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      \arb_sel_r_reg[0]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_4,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      count_is_max => count_is_max,
      \gen_data_bit[0].u_srl_fifo\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_15,
      \gen_data_bit[1].u_srl_fifo\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_14,
      \gen_data_bit[2].u_srl_fifo\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_5,
      m_bpayload_i(2 downto 0) => m_bpayload_i(2 downto 0),
      \r0_data_reg[31]\(6 downto 1) => p_0_in1_in(31 downto 26),
      \r0_data_reg[31]\(0) => p_0_in1_in(21),
      \r0_out_sel_r_reg[0]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_13,
      \r0_out_sel_r_reg[0]_0\ => u_axis_switch_v1_1_26_axis_switch_5x1_n_42,
      \r1_data_reg[10]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_23,
      \r1_data_reg[11]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_24,
      \r1_data_reg[12]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_25,
      \r1_data_reg[13]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_26,
      \r1_data_reg[14]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_27,
      \r1_data_reg[15]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_28,
      \r1_data_reg[16]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_29,
      \r1_data_reg[17]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_30,
      \r1_data_reg[18]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_31,
      \r1_data_reg[19]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_32,
      \r1_data_reg[20]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_33,
      \r1_data_reg[22]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_34,
      \r1_data_reg[23]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_35,
      \r1_data_reg[24]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_36,
      \r1_data_reg[25]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_37,
      \r1_data_reg[3]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_16,
      \r1_data_reg[4]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_17,
      \r1_data_reg[5]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_18,
      \r1_data_reg[6]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_19,
      \r1_data_reg[7]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_20,
      \r1_data_reg[8]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_21,
      \r1_data_reg[9]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_22,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w: entity work.\design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized0\
     port map (
      D(35 downto 32) => s_axi_wstrb(3 downto 0),
      D(31 downto 0) => s_axi_wdata(31 downto 0),
      Q(1) => m_int_tvalid(4),
      Q(0) => s_axi_wready_i,
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      count_is_zero => count_is_zero,
      last_out1 => \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/last_out1\,
      m_int_tdata(4 downto 0) => m_int_tdata(132 downto 128),
      m_int_tkeep(0) => m_int_tkeep(19),
      \r0_data_reg[10]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_33,
      \r0_data_reg[11]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_32,
      \r0_data_reg[12]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_31,
      \r0_data_reg[13]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_30,
      \r0_data_reg[14]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_29,
      \r0_data_reg[15]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_28,
      \r0_data_reg[16]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_27,
      \r0_data_reg[17]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_26,
      \r0_data_reg[18]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_25,
      \r0_data_reg[19]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_24,
      \r0_data_reg[20]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_23,
      \r0_data_reg[21]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_22,
      \r0_data_reg[22]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_21,
      \r0_data_reg[23]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_20,
      \r0_data_reg[24]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_19,
      \r0_data_reg[25]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_18,
      \r0_data_reg[26]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_17,
      \r0_data_reg[27]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_16,
      \r0_data_reg[28]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_15,
      \r0_data_reg[29]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_14,
      \r0_data_reg[30]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_13,
      \r0_data_reg[31]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_12,
      \r0_data_reg[5]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_38,
      \r0_data_reg[6]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_37,
      \r0_data_reg[7]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_36,
      \r0_data_reg[8]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_35,
      \r0_data_reg[9]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_34,
      \r0_out_sel_r_reg[0]\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_10,
      \r0_out_sel_r_reg[0]_0\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_11,
      \r0_out_sel_r_reg[0]_1\ => u_axis_switch_v1_1_26_axis_switch_5x1_n_43,
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_ar: entity work.design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander
     port map (
      Q(1) => m_axi_arvalid_i,
      Q(0) => s_int_tready(2),
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      m_axi_arready_i => m_axi_arready_i,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tid_1_sp_1 => u_axi_mm2s_mapper_v1_1_25_stream_expander_ar_n_2,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_aw: entity work.design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander_1
     port map (
      Q(1) => m_axi_awvalid_i,
      Q(0) => s_int_tready(1),
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      m_axi_awready_i => m_axi_awready_i,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tid_0_sp_1 => u_axi_mm2s_mapper_v1_1_25_stream_expander_aw_n_2,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_r: entity work.\design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2\
     port map (
      E(0) => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_2,
      Q(0) => s_axi_rvalid,
      \acc_data_reg[34]\ => s_axi_rlast,
      \acc_data_reg[34]_0\ => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_4,
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      \num_active_trans_reg[0]\ => u_transaction_counter_ar_to_r_n_0,
      \num_active_trans_reg[0]_0\(0) => s_axi_arready_i,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_5,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axis_tdata(31 downto 0) => \^s_axis_tdata\(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tready_0(2) => s_int_tready(4),
      s_axis_tready_0(1 downto 0) => s_int_tready(2 downto 1),
      s_axis_tready_1 => u_axi_mm2s_mapper_v1_1_25_stream_expander_aw_n_2,
      s_axis_tready_2 => u_transaction_counter_aw_to_b_n_3,
      s_axis_tready_3 => u_axis_switch_v1_1_26_axis_switch_1x5_n_1,
      s_axis_tready_4 => u_axi_mm2s_mapper_v1_1_25_stream_expander_w_n_0,
      s_axis_tready_5 => u_axi_mm2s_mapper_v1_1_25_stream_expander_ar_n_2,
      s_axis_tvalid => s_axis_tvalid
    );
u_axi_mm2s_mapper_v1_1_25_stream_expander_w: entity work.\design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0\
     port map (
      Q(0) => s_int_tready(4),
      aclk => aclk,
      areset_r => \gen_dwidth_converter.axis_dwidth_converter_0/areset_r\,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tvalid_0 => u_axi_mm2s_mapper_v1_1_25_stream_expander_w_n_0
    );
u_axis_switch_v1_1_26_axis_switch_1x5: entity work.\design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch__parameterized0\
     port map (
      SR(0) => clear,
      aclk => aclk,
      areset_r => areset_r,
      \gen_tdest_routing.decode_err_r_reg\ => u_axis_switch_v1_1_26_axis_switch_1x5_n_1,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
u_axis_switch_v1_1_26_axis_switch_5x1: entity work.design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch
     port map (
      aclk => aclk,
      \arb_sel_r_reg[1]\(1 downto 0) => arb_sel_i(1 downto 0),
      areset_r => areset_r,
      \busy_r_reg[1]\ => u_axis_switch_v1_1_26_axis_switch_5x1_n_42,
      \busy_r_reg[2]\ => u_axis_switch_v1_1_26_axis_switch_5x1_n_45,
      \busy_r_reg[4]\ => u_axis_switch_v1_1_26_axis_switch_5x1_n_43,
      \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_33,
      \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_32,
      \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_31,
      \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_30,
      \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_29,
      \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_28,
      \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_27,
      \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_26,
      \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_25,
      \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_24,
      \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_23,
      \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_22,
      \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_21,
      \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_20,
      \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_19,
      \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_18,
      \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_17,
      \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_16,
      \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_15,
      \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_14,
      \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_13,
      \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_12,
      \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_10,
      \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_11,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst\ => m_axis_tlast,
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(32) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(36),
      \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0\(31 downto 0) => \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return\(31 downto 0),
      \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_38,
      \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_37,
      \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_36,
      \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_35,
      \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst\ => u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_34,
      last_out1 => \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/last_out1\,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      m_int_tdata(4 downto 0) => m_int_tdata(132 downto 128),
      m_int_tkeep(0) => m_int_tkeep(19),
      m_int_tvalid(2) => m_int_tvalid(4),
      m_int_tvalid(1 downto 0) => m_int_tvalid(2 downto 1)
    );
u_transaction_counter_ar_to_r: entity work.design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter
     port map (
      E(0) => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_2,
      Q(0) => s_axi_arready_i,
      SS(0) => clear,
      aclk => aclk,
      count_is_max_reg_0 => u_transaction_counter_ar_to_r_n_0,
      count_is_max_reg_1 => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_5,
      \num_active_trans_reg[2]_0\ => u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_4,
      s_axi_arvalid => s_axi_arvalid
    );
u_transaction_counter_aw_to_b: entity work.design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_2
     port map (
      E(0) => u_transaction_counter_aw_to_b_n_1,
      Q(0) => s_axi_wready_i,
      SS(0) => clear,
      aclk => aclk,
      count_is_max => count_is_max,
      count_is_max_reg_0(0) => s_axi_awready_i,
      count_is_zero => count_is_zero,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => u_transaction_counter_aw_to_b_n_2,
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tid_2_sp_1 => u_transaction_counter_aw_to_b_n_3,
      s_axis_tvalid => s_axis_tvalid
    );
u_transaction_counter_aw_to_w: entity work.design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_3
     port map (
      E(0) => u_transaction_counter_aw_to_b_n_1,
      Q(0) => s_axi_wready_i,
      SS(0) => clear,
      aclk => aclk,
      aresetn => aresetn,
      count_is_zero => count_is_zero,
      count_is_zero_reg_0 => u_transaction_counter_aw_to_b_n_2,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_mm2s_mapper_1_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
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
  attribute NotValidForBitStream of design_1_axi_mm2s_mapper_1_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_mm2s_mapper_1_1 : entity is "design_1_axi_mm2s_mapper_0_1,axi_mm2s_mapper_v1_1_25_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_mm2s_mapper_1_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_mm2s_mapper_1_1 : entity is "axi_mm2s_mapper_v1_1_25_top,Vivado 2022.1";
end design_1_axi_mm2s_mapper_1_1;

architecture STRUCTURE of design_1_axi_mm2s_mapper_1_1 is
  signal NLW_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
  attribute X_INTERFACE_PARAMETER of m_axis_tid : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TID";
  attribute X_INTERFACE_PARAMETER of s_axis_tid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
inst: entity work.design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => NLW_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '1',
      m_axi_rready => NLW_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(31 downto 0) => NLW_inst_m_axi_wdata_UNCONNECTED(31 downto 0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(3 downto 0) => NLW_inst_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
