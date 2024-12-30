-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Nov 22 10:38:26 2024
-- Host        : DESKTOP-E4JVMQJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/verilog_matbi/axi_spi_test3/axi_spi_test3.gen/sources_1/bd/design_1/ip/design_1_spi_top_0_0/design_1_spi_top_0_0_stub.vhdl
-- Design      : design_1_spi_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_spi_top_0_0 is
  Port ( 
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

end design_1_spi_top_0_0;

architecture stub of design_1_spi_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RSTN,CLK,FULL,WR,DIN[7:0],EMPTY,RD,DOUT[7:0],din_spi[7:0],dout_spi[7:0],mosi,sclk,cs,miso_in,miso,tx_r_rptr[3:0],rx_r_rptr[3:0],tx_r_wptr[3:0],rx_r_wptr[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spi_top,Vivado 2024.1";
begin
end;
