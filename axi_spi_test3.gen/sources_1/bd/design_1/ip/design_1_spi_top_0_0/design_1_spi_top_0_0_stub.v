// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 22 10:38:26 2024
// Host        : DESKTOP-E4JVMQJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/verilog_matbi/axi_spi_test3/axi_spi_test3.gen/sources_1/bd/design_1/ip/design_1_spi_top_0_0/design_1_spi_top_0_0_stub.v
// Design      : design_1_spi_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spi_top,Vivado 2024.1" *)
module design_1_spi_top_0_0(RSTN, CLK, FULL, WR, DIN, EMPTY, RD, DOUT, din_spi, 
  dout_spi, mosi, sclk, cs, miso_in, miso, tx_r_rptr, rx_r_rptr, tx_r_wptr, rx_r_wptr)
/* synthesis syn_black_box black_box_pad_pin="RSTN,FULL,WR,DIN[7:0],EMPTY,RD,DOUT[7:0],din_spi[7:0],dout_spi[7:0],mosi,sclk,cs,miso_in,miso,tx_r_rptr[3:0],rx_r_rptr[3:0],tx_r_wptr[3:0],rx_r_wptr[3:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input RSTN;
  input CLK /* synthesis syn_isclock = 1 */;
  output FULL;
  input WR;
  input [7:0]DIN;
  output EMPTY;
  input RD;
  output [7:0]DOUT;
  output [7:0]din_spi;
  output [7:0]dout_spi;
  output mosi;
  output sclk;
  output cs;
  output miso_in;
  input miso;
  output [3:0]tx_r_rptr;
  output [3:0]rx_r_rptr;
  output [3:0]tx_r_wptr;
  output [3:0]rx_r_wptr;
endmodule
