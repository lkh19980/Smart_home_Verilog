-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 22 10:38:26 2024
-- Host        : DESKTOP-E4JVMQJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/verilog_matbi/axi_spi_test3/axi_spi_test3.gen/sources_1/bd/design_1/ip/design_1_spi_top_0_0/design_1_spi_top_0_0_sim_netlist.vhdl
-- Design      : design_1_spi_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_top_0_0_fifo is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_rptr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_wptr_reg[3]_0\ : out STD_LOGIC;
    EMPTY : out STD_LOGIC;
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    din_spi : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_spi : in STD_LOGIC;
    RD : in STD_LOGIC;
    \r_wptr_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi_top_0_0_fifo : entity is "fifo";
end design_1_spi_top_0_0_fifo;

architecture STRUCTURE of design_1_spi_top_0_0_fifo is
  signal EMPTY_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \o_rdata0__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_rdata[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^r_rptr_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EMPTY_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_4\ : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_fifo_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_fifo_reg_0_7_0_5 : label is 64;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_fifo_reg_0_7_0_5 : label is "inst/rx_fifo_0/mem_fifo_reg_0_7_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_fifo_reg_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_fifo_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of mem_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_fifo_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_fifo_reg_0_7_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_fifo_reg_0_7_6_7 : label is 64;
  attribute RTL_RAM_NAME of mem_fifo_reg_0_7_6_7 : label is "inst/rx_fifo_0/mem_fifo_reg_0_7_6_7";
  attribute RTL_RAM_TYPE of mem_fifo_reg_0_7_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_fifo_reg_0_7_6_7 : label is 0;
  attribute ram_addr_end of mem_fifo_reg_0_7_6_7 : label is 7;
  attribute ram_offset of mem_fifo_reg_0_7_6_7 : label is 0;
  attribute ram_slice_begin of mem_fifo_reg_0_7_6_7 : label is 6;
  attribute ram_slice_end of mem_fifo_reg_0_7_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \mem_fifo_reg_0_7_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_fifo_reg_0_7_6_7__0\ : label is 64;
  attribute RTL_RAM_NAME of \mem_fifo_reg_0_7_6_7__0\ : label is "inst/rx_fifo_0/mem_fifo_reg_0_7_6_7";
  attribute RTL_RAM_TYPE of \mem_fifo_reg_0_7_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_fifo_reg_0_7_6_7__0\ : label is 0;
  attribute ram_addr_end of \mem_fifo_reg_0_7_6_7__0\ : label is 7;
  attribute ram_offset of \mem_fifo_reg_0_7_6_7__0\ : label is 0;
  attribute ram_slice_begin of \mem_fifo_reg_0_7_6_7__0\ : label is 6;
  attribute ram_slice_end of \mem_fifo_reg_0_7_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM of \r_rptr[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_rptr[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_rptr[2]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_rptr[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_wptr[0]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_wptr[1]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_wptr[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_wptr[3]_i_2__0\ : label is "soft_lutpair11";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \r_rptr_reg[3]_0\(3 downto 0) <= \^r_rptr_reg[3]_0\(3 downto 0);
EMPTY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => EMPTY_INST_0_i_1_n_0,
      O => EMPTY
    );
EMPTY_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^r_rptr_reg[3]_0\(2),
      I2 => \^q\(1),
      I3 => \^r_rptr_reg[3]_0\(1),
      I4 => \^r_rptr_reg[3]_0\(0),
      I5 => \^q\(0),
      O => EMPTY_INST_0_i_1_n_0
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F900"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => EMPTY_INST_0_i_1_n_0,
      I3 => wr_reg(0),
      O => \r_wptr_reg[3]_0\
    );
mem_fifo_reg_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => \^r_rptr_reg[3]_0\(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => \^r_rptr_reg[3]_0\(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => \^r_rptr_reg[3]_0\(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => \^q\(2 downto 0),
      DIA(1 downto 0) => din_spi(1 downto 0),
      DIB(1 downto 0) => din_spi(3 downto 2),
      DIC(1 downto 0) => din_spi(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \o_rdata0__0\(1 downto 0),
      DOB(1 downto 0) => \o_rdata0__0\(3 downto 2),
      DOC(1 downto 0) => \o_rdata0__0\(5 downto 4),
      DOD(1 downto 0) => NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK,
      WE => \p_0_in__0\
    );
mem_fifo_reg_0_7_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => \^q\(2),
      A3 => '0',
      A4 => '0',
      D => din_spi(6),
      DPO => \o_rdata0__0\(6),
      DPRA0 => \^r_rptr_reg[3]_0\(0),
      DPRA1 => \^r_rptr_reg[3]_0\(1),
      DPRA2 => \^r_rptr_reg[3]_0\(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED,
      WCLK => CLK,
      WE => \p_0_in__0\
    );
\mem_fifo_reg_0_7_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => \^q\(2),
      A3 => '0',
      A4 => '0',
      D => din_spi(7),
      DPO => \o_rdata0__0\(7),
      DPRA0 => \^r_rptr_reg[3]_0\(0),
      DPRA1 => \^r_rptr_reg[3]_0\(1),
      DPRA2 => \^r_rptr_reg[3]_0\(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED\,
      WCLK => CLK,
      WE => \p_0_in__0\
    );
\o_rdata[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F600"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => EMPTY_INST_0_i_1_n_0,
      I3 => RD,
      O => \o_rdata[7]_i_1__0_n_0\
    );
\o_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(0),
      Q => DOUT(0),
      R => '0'
    );
\o_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(1),
      Q => DOUT(1),
      R => '0'
    );
\o_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(2),
      Q => DOUT(2),
      R => '0'
    );
\o_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(3),
      Q => DOUT(3),
      R => '0'
    );
\o_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(4),
      Q => DOUT(4),
      R => '0'
    );
\o_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(5),
      Q => DOUT(5),
      R => '0'
    );
\o_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(6),
      Q => DOUT(6),
      R => '0'
    );
\o_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      D => \o_rdata0__0\(7),
      Q => DOUT(7),
      R => '0'
    );
\r_rptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(0),
      O => \p_0_in__3\(0)
    );
\r_rptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(0),
      I1 => \^r_rptr_reg[3]_0\(1),
      O => \p_0_in__3\(1)
    );
\r_rptr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(1),
      I1 => \^r_rptr_reg[3]_0\(0),
      I2 => \^r_rptr_reg[3]_0\(2),
      O => \p_0_in__3\(2)
    );
\r_rptr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(2),
      I1 => \^r_rptr_reg[3]_0\(0),
      I2 => \^r_rptr_reg[3]_0\(1),
      I3 => \^r_rptr_reg[3]_0\(3),
      O => \p_0_in__3\(3)
    );
\r_rptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__3\(0),
      Q => \^r_rptr_reg[3]_0\(0)
    );
\r_rptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__3\(1),
      Q => \^r_rptr_reg[3]_0\(1)
    );
\r_rptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__3\(2),
      Q => \^r_rptr_reg[3]_0\(2)
    );
\r_rptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1__0_n_0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__3\(3),
      Q => \^r_rptr_reg[3]_0\(3)
    );
\r_wptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__4\(0)
    );
\r_wptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__4\(1)
    );
\r_wptr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \p_0_in__4\(2)
    );
\r_wptr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F900"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => EMPTY_INST_0_i_1_n_0,
      I3 => wr_spi,
      O => \p_0_in__0\
    );
\r_wptr[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \p_0_in__4\(3)
    );
\r_wptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \p_0_in__0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__4\(0),
      Q => \^q\(0)
    );
\r_wptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \p_0_in__0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__4\(1),
      Q => \^q\(1)
    );
\r_wptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \p_0_in__0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__4\(2),
      Q => \^q\(2)
    );
\r_wptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \p_0_in__0\,
      CLR => \r_wptr_reg[0]_0\,
      D => \p_0_in__4\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_top_0_0_fifo_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_rptr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_wptr_reg[2]_0\ : out STD_LOGIC;
    FULL : out STD_LOGIC;
    \r_wptr_reg[3]_0\ : out STD_LOGIC;
    dout_spi : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR : in STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_spi : in STD_LOGIC;
    \r_wptr_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi_top_0_0_fifo_0 : entity is "fifo";
end design_1_spi_top_0_0_fifo_0;

architecture STRUCTURE of design_1_spi_top_0_0_fifo_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_rdata0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^r_rptr_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^r_wptr_reg[2]_0\ : STD_LOGIC;
  signal NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of FULL_INST_0 : label is "soft_lutpair14";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_fifo_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_fifo_reg_0_7_0_5 : label is 64;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_fifo_reg_0_7_0_5 : label is "inst/tx_fifo_0/mem_fifo_reg_0_7_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_fifo_reg_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_fifo_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of mem_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_fifo_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_fifo_reg_0_7_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_fifo_reg_0_7_6_7 : label is 64;
  attribute RTL_RAM_NAME of mem_fifo_reg_0_7_6_7 : label is "inst/tx_fifo_0/mem_fifo_reg_0_7_6_7";
  attribute RTL_RAM_TYPE of mem_fifo_reg_0_7_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_fifo_reg_0_7_6_7 : label is 0;
  attribute ram_addr_end of mem_fifo_reg_0_7_6_7 : label is 7;
  attribute ram_offset of mem_fifo_reg_0_7_6_7 : label is 0;
  attribute ram_slice_begin of mem_fifo_reg_0_7_6_7 : label is 6;
  attribute ram_slice_end of mem_fifo_reg_0_7_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \mem_fifo_reg_0_7_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_fifo_reg_0_7_6_7__0\ : label is 64;
  attribute RTL_RAM_NAME of \mem_fifo_reg_0_7_6_7__0\ : label is "inst/tx_fifo_0/mem_fifo_reg_0_7_6_7";
  attribute RTL_RAM_TYPE of \mem_fifo_reg_0_7_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_fifo_reg_0_7_6_7__0\ : label is 0;
  attribute ram_addr_end of \mem_fifo_reg_0_7_6_7__0\ : label is 7;
  attribute ram_offset of \mem_fifo_reg_0_7_6_7__0\ : label is 0;
  attribute ram_slice_begin of \mem_fifo_reg_0_7_6_7__0\ : label is 6;
  attribute ram_slice_end of \mem_fifo_reg_0_7_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM of \r_rptr[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_rptr[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_rptr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_rptr[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_wptr[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_wptr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_wptr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_wptr[3]_i_2\ : label is "soft_lutpair16";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \r_rptr_reg[3]_0\(3 downto 0) <= \^r_rptr_reg[3]_0\(3 downto 0);
  \r_wptr_reg[2]_0\ <= \^r_wptr_reg[2]_0\;
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F600"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => \^r_wptr_reg[2]_0\,
      I3 => \FSM_onehot_state_reg[0]\(0),
      O => \r_wptr_reg[3]_0\
    );
FULL_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => \^r_wptr_reg[2]_0\,
      O => FULL
    );
FULL_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^r_rptr_reg[3]_0\(2),
      I2 => \^q\(1),
      I3 => \^r_rptr_reg[3]_0\(1),
      I4 => \^r_rptr_reg[3]_0\(0),
      I5 => \^q\(0),
      O => \^r_wptr_reg[2]_0\
    );
mem_fifo_reg_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => \^r_rptr_reg[3]_0\(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => \^r_rptr_reg[3]_0\(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => \^r_rptr_reg[3]_0\(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => \^q\(2 downto 0),
      DIA(1 downto 0) => DIN(1 downto 0),
      DIB(1 downto 0) => DIN(3 downto 2),
      DIC(1 downto 0) => DIN(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => o_rdata0(1 downto 0),
      DOB(1 downto 0) => o_rdata0(3 downto 2),
      DOC(1 downto 0) => o_rdata0(5 downto 4),
      DOD(1 downto 0) => NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK,
      WE => p_0_in
    );
mem_fifo_reg_0_7_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => \^q\(2),
      A3 => '0',
      A4 => '0',
      D => DIN(6),
      DPO => o_rdata0(6),
      DPRA0 => \^r_rptr_reg[3]_0\(0),
      DPRA1 => \^r_rptr_reg[3]_0\(1),
      DPRA2 => \^r_rptr_reg[3]_0\(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED,
      WCLK => CLK,
      WE => p_0_in
    );
\mem_fifo_reg_0_7_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => \^q\(2),
      A3 => '0',
      A4 => '0',
      D => DIN(7),
      DPO => o_rdata0(7),
      DPRA0 => \^r_rptr_reg[3]_0\(0),
      DPRA1 => \^r_rptr_reg[3]_0\(1),
      DPRA2 => \^r_rptr_reg[3]_0\(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED\,
      WCLK => CLK,
      WE => p_0_in
    );
\o_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F600"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => \^r_wptr_reg[2]_0\,
      I3 => rd_spi,
      O => \o_rdata[7]_i_1_n_0\
    );
\o_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(0),
      Q => dout_spi(0),
      R => '0'
    );
\o_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(1),
      Q => dout_spi(1),
      R => '0'
    );
\o_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(2),
      Q => dout_spi(2),
      R => '0'
    );
\o_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(3),
      Q => dout_spi(3),
      R => '0'
    );
\o_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(4),
      Q => dout_spi(4),
      R => '0'
    );
\o_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(5),
      Q => dout_spi(5),
      R => '0'
    );
\o_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(6),
      Q => dout_spi(6),
      R => '0'
    );
\o_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      D => o_rdata0(7),
      Q => dout_spi(7),
      R => '0'
    );
\r_rptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(0),
      O => \p_0_in__1\(0)
    );
\r_rptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(0),
      I1 => \^r_rptr_reg[3]_0\(1),
      O => \p_0_in__1\(1)
    );
\r_rptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(1),
      I1 => \^r_rptr_reg[3]_0\(0),
      I2 => \^r_rptr_reg[3]_0\(2),
      O => \p_0_in__1\(2)
    );
\r_rptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^r_rptr_reg[3]_0\(2),
      I1 => \^r_rptr_reg[3]_0\(0),
      I2 => \^r_rptr_reg[3]_0\(1),
      I3 => \^r_rptr_reg[3]_0\(3),
      O => \p_0_in__1\(3)
    );
\r_rptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__1\(0),
      Q => \^r_rptr_reg[3]_0\(0)
    );
\r_rptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__1\(1),
      Q => \^r_rptr_reg[3]_0\(1)
    );
\r_rptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__1\(2),
      Q => \^r_rptr_reg[3]_0\(2)
    );
\r_rptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \o_rdata[7]_i_1_n_0\,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__1\(3),
      Q => \^r_rptr_reg[3]_0\(3)
    );
\r_wptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__2\(0)
    );
\r_wptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__2\(1)
    );
\r_wptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \p_0_in__2\(2)
    );
\r_wptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F900"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_rptr_reg[3]_0\(3),
      I2 => \^r_wptr_reg[2]_0\,
      I3 => WR,
      O => p_0_in
    );
\r_wptr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \p_0_in__2\(3)
    );
\r_wptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => p_0_in,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__2\(0),
      Q => \^q\(0)
    );
\r_wptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => p_0_in,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__2\(1),
      Q => \^q\(1)
    );
\r_wptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => p_0_in,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__2\(2),
      Q => \^q\(2)
    );
\r_wptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => p_0_in,
      CLR => \r_wptr_reg[3]_1\,
      D => \p_0_in__2\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_top_0_0_spi_master is
  port (
    cs : out STD_LOGIC;
    wr_spi : out STD_LOGIC;
    RSTN_0 : out STD_LOGIC;
    rd_spi : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    din_spi : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    wr_reg_0 : in STD_LOGIC;
    dout_spi : in STD_LOGIC_VECTOR ( 7 downto 0 );
    miso : in STD_LOGIC;
    rd_reg_0 : in STD_LOGIC;
    rd_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    RSTN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi_top_0_0_spi_master : entity is "spi_master";
end design_1_spi_top_0_0_spi_master;

architecture STRUCTURE of design_1_spi_top_0_0_spi_master is
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rstn_0\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_div[1]_i_1_n_0\ : STD_LOGIC;
  signal clk_div_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cs_reg_i_1_n_0 : STD_LOGIC;
  signal cs_reg_i_2_n_0 : STD_LOGIC;
  signal \^din_spi\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_i_1_n_0 : STD_LOGIC;
  signal \^rd_spi\ : STD_LOGIC;
  signal sck_i_1_n_0 : STD_LOGIC;
  signal sck_i_2_n_0 : STD_LOGIC;
  signal sck_reg_n_0 : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal wr_i_1_n_0 : STD_LOGIC;
  signal \^wr_spi\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_6\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000,";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_div[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_div[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_div[3]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of cs_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of cs_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of cs_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cs_reg_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of mosi_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sck_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sclk_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_reg[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_reg[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_reg[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of wr_i_1 : label is "soft_lutpair2";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  RSTN_0 <= \^rstn_0\;
  din_spi(7 downto 0) <= \^din_spi\(7 downto 0);
  mosi <= \^mosi\;
  rd_spi <= \^rd_spi\;
  wr_spi <= \^wr_spi\;
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state[5]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg[0]_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \shift_reg[7]_i_4_n_0\,
      I5 => wr_reg_0,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => \^rd_spi\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \shift_reg[7]_i_4_n_0\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \FSM_onehot_state[5]_i_5_n_0\,
      I5 => \FSM_onehot_state[5]_i_6_n_0\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => sck_reg_n_0,
      O => \FSM_onehot_state[5]_i_5_n_0\
    );
\FSM_onehot_state[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      O => \FSM_onehot_state[5]_i_6_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      PRE => \^rstn_0\,
      Q => \^q\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => \^q\(0),
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \^q\(1)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => \^q\(1),
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => bit_cnt(1)
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => bit_cnt(2)
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA9"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => bit_cnt(3)
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => bit_cnt(1),
      Q => \bit_cnt_reg_n_0_[1]\
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => bit_cnt(2),
      Q => \bit_cnt_reg_n_0_[2]\
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      D => bit_cnt(3),
      PRE => \^rstn_0\,
      Q => \bit_cnt_reg_n_0_[3]\
    );
\clk_div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_div_reg(0),
      O => \p_0_in__5\(0)
    );
\clk_div[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_div_reg(1),
      I1 => clk_div_reg(0),
      O => \clk_div[1]_i_1_n_0\
    );
\clk_div[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_div_reg(1),
      I1 => clk_div_reg(0),
      I2 => clk_div_reg(2),
      O => \p_0_in__5\(2)
    );
\clk_div[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_div_reg(2),
      I1 => clk_div_reg(0),
      I2 => clk_div_reg(1),
      I3 => clk_div_reg(3),
      O => \p_0_in__5\(3)
    );
\clk_div_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => \p_0_in__5\(0),
      Q => clk_div_reg(0)
    );
\clk_div_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => \clk_div[1]_i_1_n_0\,
      Q => clk_div_reg(1)
    );
\clk_div_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => \p_0_in__5\(2),
      Q => clk_div_reg(2)
    );
\clk_div_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => \p_0_in__5\(3),
      Q => clk_div_reg(3)
    );
cs_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cs_reg_i_1_n_0,
      G => cs_reg_i_2_n_0,
      GE => '1',
      Q => cs
    );
cs_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => cs_reg_i_1_n_0
    );
cs_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^rd_spi\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => cs_reg_i_2_n_0
    );
mosi_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \^din_spi\(7),
      I1 => sck_reg_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \shift_reg[7]_i_4_n_0\,
      I4 => \^mosi\,
      O => mosi_i_1_n_0
    );
mosi_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => mosi_i_1_n_0,
      Q => \^mosi\
    );
rd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAAA8AA8"
    )
        port map (
      I0 => \^q\(0),
      I1 => rd_reg_0,
      I2 => rd_reg_1(0),
      I3 => rd_reg_2(0),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \^rd_spi\,
      O => rd_i_1_n_0
    );
rd_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => rd_i_1_n_0,
      Q => \^rd_spi\
    );
sck_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0FFFE0F0E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => sck_i_2_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \shift_reg[7]_i_4_n_0\,
      I5 => sck_reg_n_0,
      O => sck_i_1_n_0
    );
sck_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => sck_i_2_n_0
    );
sck_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => sck_i_1_n_0,
      Q => sck_reg_n_0
    );
sclk_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => sck_reg_n_0,
      O => sclk
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => miso,
      O => shift_reg(0)
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(1),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^din_spi\(0),
      O => shift_reg(1)
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(2),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^din_spi\(1),
      O => shift_reg(2)
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(3),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^din_spi\(2),
      O => shift_reg(3)
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(4),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^din_spi\(3),
      O => shift_reg(4)
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(5),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^din_spi\(4),
      O => shift_reg(5)
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(6),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^din_spi\(5),
      O => shift_reg(6)
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \shift_reg[7]_i_4_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => sck_reg_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \shift_reg[7]_i_1_n_0\
    );
\shift_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => dout_spi(7),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^din_spi\(6),
      O => shift_reg(7)
    );
\shift_reg[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RSTN,
      O => \^rstn_0\
    );
\shift_reg[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => clk_div_reg(3),
      I1 => clk_div_reg(2),
      I2 => clk_div_reg(0),
      I3 => clk_div_reg(1),
      O => \shift_reg[7]_i_4_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(0),
      Q => \^din_spi\(0)
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(1),
      Q => \^din_spi\(1)
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(2),
      Q => \^din_spi\(2)
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(3),
      Q => \^din_spi\(3)
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(4),
      Q => \^din_spi\(4)
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(5),
      Q => \^din_spi\(5)
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(6),
      Q => \^din_spi\(6)
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \shift_reg[7]_i_1_n_0\,
      CLR => \^rstn_0\,
      D => shift_reg(7),
      Q => \^din_spi\(7)
    );
wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_reg_0,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \^q\(0),
      I4 => \^wr_spi\,
      O => wr_i_1_n_0
    );
wr_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^rstn_0\,
      D => wr_i_1_n_0,
      Q => \^wr_spi\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_top_0_0_spi_top is
  port (
    tx_r_wptr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_r_rptr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    din_spi : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_r_wptr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_r_rptr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cs : out STD_LOGIC;
    dout_spi : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FULL : out STD_LOGIC;
    EMPTY : out STD_LOGIC;
    sclk : out STD_LOGIC;
    mosi : out STD_LOGIC;
    CLK : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR : in STD_LOGIC;
    RD : in STD_LOGIC;
    miso : in STD_LOGIC;
    RSTN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi_top_0_0_spi_top : entity is "spi_top";
end design_1_spi_top_0_0_spi_top;

architecture STRUCTURE of design_1_spi_top_0_0_spi_top is
  signal \^din_spi\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dout_spi\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal master_0_n_2 : STD_LOGIC;
  signal master_0_n_6 : STD_LOGIC;
  signal master_0_n_7 : STD_LOGIC;
  signal rd_spi : STD_LOGIC;
  signal rx_fifo_0_n_8 : STD_LOGIC;
  signal tx_fifo_0_n_10 : STD_LOGIC;
  signal tx_fifo_0_n_8 : STD_LOGIC;
  signal \^tx_r_rptr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_r_wptr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_spi : STD_LOGIC;
begin
  din_spi(7 downto 0) <= \^din_spi\(7 downto 0);
  dout_spi(7 downto 0) <= \^dout_spi\(7 downto 0);
  tx_r_rptr(3 downto 0) <= \^tx_r_rptr\(3 downto 0);
  tx_r_wptr(3 downto 0) <= \^tx_r_wptr\(3 downto 0);
master_0: entity work.design_1_spi_top_0_0_spi_master
     port map (
      CLK => CLK,
      \FSM_onehot_state_reg[0]_0\ => tx_fifo_0_n_10,
      Q(1) => master_0_n_6,
      Q(0) => master_0_n_7,
      RSTN => RSTN,
      RSTN_0 => master_0_n_2,
      cs => cs,
      din_spi(7 downto 0) => \^din_spi\(7 downto 0),
      dout_spi(7 downto 0) => \^dout_spi\(7 downto 0),
      miso => miso,
      mosi => mosi,
      rd_reg_0 => tx_fifo_0_n_8,
      rd_reg_1(0) => \^tx_r_rptr\(3),
      rd_reg_2(0) => \^tx_r_wptr\(3),
      rd_spi => rd_spi,
      sclk => sclk,
      wr_reg_0 => rx_fifo_0_n_8,
      wr_spi => wr_spi
    );
rx_fifo_0: entity work.design_1_spi_top_0_0_fifo
     port map (
      CLK => CLK,
      DOUT(7 downto 0) => DOUT(7 downto 0),
      EMPTY => EMPTY,
      Q(3 downto 0) => rx_r_wptr(3 downto 0),
      RD => RD,
      din_spi(7 downto 0) => \^din_spi\(7 downto 0),
      \r_rptr_reg[3]_0\(3 downto 0) => rx_r_rptr(3 downto 0),
      \r_wptr_reg[0]_0\ => master_0_n_2,
      \r_wptr_reg[3]_0\ => rx_fifo_0_n_8,
      wr_reg(0) => master_0_n_6,
      wr_spi => wr_spi
    );
tx_fifo_0: entity work.design_1_spi_top_0_0_fifo_0
     port map (
      CLK => CLK,
      DIN(7 downto 0) => DIN(7 downto 0),
      \FSM_onehot_state_reg[0]\(0) => master_0_n_7,
      FULL => FULL,
      Q(3 downto 0) => \^tx_r_wptr\(3 downto 0),
      WR => WR,
      dout_spi(7 downto 0) => \^dout_spi\(7 downto 0),
      \r_rptr_reg[3]_0\(3 downto 0) => \^tx_r_rptr\(3 downto 0),
      \r_wptr_reg[2]_0\ => tx_fifo_0_n_8,
      \r_wptr_reg[3]_0\ => tx_fifo_0_n_10,
      \r_wptr_reg[3]_1\ => master_0_n_2,
      rd_spi => rd_spi
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_top_0_0 is
  port (
    RSTN : in STD_LOGIC;
    CLK : in STD_LOGIC;
    FULL : out STD_LOGIC;
    WR : in STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    EMPTY : out STD_LOGIC;
    RD : in STD_LOGIC;
    DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    din_spi : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dout_spi : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mosi : out STD_LOGIC;
    sclk : out STD_LOGIC;
    cs : out STD_LOGIC;
    miso_in : out STD_LOGIC;
    miso : in STD_LOGIC;
    tx_r_rptr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_r_rptr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_r_wptr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_r_wptr : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spi_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spi_top_0_0 : entity is "design_1_spi_top_0_0,spi_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_spi_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_spi_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_spi_top_0_0 : entity is "spi_top,Vivado 2024.1";
end design_1_spi_top_0_0;

architecture STRUCTURE of design_1_spi_top_0_0 is
  signal \^miso\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RSTN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RSTN : signal is "xilinx.com:signal:reset:1.0 RSTN RST";
  attribute X_INTERFACE_PARAMETER of RSTN : signal is "XIL_INTERFACENAME RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^miso\ <= miso;
  miso_in <= \^miso\;
inst: entity work.design_1_spi_top_0_0_spi_top
     port map (
      CLK => CLK,
      DIN(7 downto 0) => DIN(7 downto 0),
      DOUT(7 downto 0) => DOUT(7 downto 0),
      EMPTY => EMPTY,
      FULL => FULL,
      RD => RD,
      RSTN => RSTN,
      WR => WR,
      cs => cs,
      din_spi(7 downto 0) => din_spi(7 downto 0),
      dout_spi(7 downto 0) => dout_spi(7 downto 0),
      miso => \^miso\,
      mosi => mosi,
      rx_r_rptr(3 downto 0) => rx_r_rptr(3 downto 0),
      rx_r_wptr(3 downto 0) => rx_r_wptr(3 downto 0),
      sclk => sclk,
      tx_r_rptr(3 downto 0) => tx_r_rptr(3 downto 0),
      tx_r_wptr(3 downto 0) => tx_r_wptr(3 downto 0)
    );
end STRUCTURE;
