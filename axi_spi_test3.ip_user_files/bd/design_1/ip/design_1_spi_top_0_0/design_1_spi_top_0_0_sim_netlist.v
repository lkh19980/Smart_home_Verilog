// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov 22 10:38:26 2024
// Host        : DESKTOP-E4JVMQJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/verilog_matbi/axi_spi_test3/axi_spi_test3.gen/sources_1/bd/design_1/ip/design_1_spi_top_0_0/design_1_spi_top_0_0_sim_netlist.v
// Design      : design_1_spi_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi_top_0_0,spi_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_top,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_spi_top_0_0
   (RSTN,
    CLK,
    FULL,
    WR,
    DIN,
    EMPTY,
    RD,
    DOUT,
    din_spi,
    dout_spi,
    mosi,
    sclk,
    cs,
    miso_in,
    miso,
    tx_r_rptr,
    rx_r_rptr,
    tx_r_wptr,
    rx_r_wptr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RSTN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RSTN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
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

  wire CLK;
  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire EMPTY;
  wire FULL;
  wire RD;
  wire RSTN;
  wire WR;
  wire cs;
  wire [7:0]din_spi;
  wire [7:0]dout_spi;
  wire miso;
  wire mosi;
  wire [3:0]rx_r_rptr;
  wire [3:0]rx_r_wptr;
  wire sclk;
  wire [3:0]tx_r_rptr;
  wire [3:0]tx_r_wptr;

  assign miso_in = miso;
  design_1_spi_top_0_0_spi_top inst
       (.CLK(CLK),
        .DIN(DIN),
        .DOUT(DOUT),
        .EMPTY(EMPTY),
        .FULL(FULL),
        .RD(RD),
        .RSTN(RSTN),
        .WR(WR),
        .cs(cs),
        .din_spi(din_spi),
        .dout_spi(dout_spi),
        .miso(miso),
        .mosi(mosi),
        .rx_r_rptr(rx_r_rptr),
        .rx_r_wptr(rx_r_wptr),
        .sclk(sclk),
        .tx_r_rptr(tx_r_rptr),
        .tx_r_wptr(tx_r_wptr));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_spi_top_0_0_fifo
   (Q,
    \r_rptr_reg[3]_0 ,
    \r_wptr_reg[3]_0 ,
    EMPTY,
    DOUT,
    CLK,
    din_spi,
    wr_reg,
    wr_spi,
    RD,
    \r_wptr_reg[0]_0 );
  output [3:0]Q;
  output [3:0]\r_rptr_reg[3]_0 ;
  output \r_wptr_reg[3]_0 ;
  output EMPTY;
  output [7:0]DOUT;
  input CLK;
  input [7:0]din_spi;
  input [0:0]wr_reg;
  input wr_spi;
  input RD;
  input \r_wptr_reg[0]_0 ;

  wire CLK;
  wire [7:0]DOUT;
  wire EMPTY;
  wire EMPTY_INST_0_i_1_n_0;
  wire [3:0]Q;
  wire RD;
  wire [7:0]din_spi;
  wire [7:0]o_rdata0__0;
  wire \o_rdata[7]_i_1__0_n_0 ;
  wire p_0_in__0;
  wire [3:0]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire [3:0]\r_rptr_reg[3]_0 ;
  wire \r_wptr_reg[0]_0 ;
  wire \r_wptr_reg[3]_0 ;
  wire [0:0]wr_reg;
  wire wr_spi;
  wire [1:0]NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED;
  wire NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED;
  wire NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h09)) 
    EMPTY_INST_0
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(EMPTY_INST_0_i_1_n_0),
        .O(EMPTY));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    EMPTY_INST_0_i_1
       (.I0(Q[2]),
        .I1(\r_rptr_reg[3]_0 [2]),
        .I2(Q[1]),
        .I3(\r_rptr_reg[3]_0 [1]),
        .I4(\r_rptr_reg[3]_0 [0]),
        .I5(Q[0]),
        .O(EMPTY_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF900)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(EMPTY_INST_0_i_1_n_0),
        .I3(wr_reg),
        .O(\r_wptr_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst/rx_fifo_0/mem_fifo_reg_0_7_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_fifo_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,\r_rptr_reg[3]_0 [2:0]}),
        .ADDRB({1'b0,1'b0,\r_rptr_reg[3]_0 [2:0]}),
        .ADDRC({1'b0,1'b0,\r_rptr_reg[3]_0 [2:0]}),
        .ADDRD({1'b0,1'b0,Q[2:0]}),
        .DIA(din_spi[1:0]),
        .DIB(din_spi[3:2]),
        .DIC(din_spi[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rdata0__0[1:0]),
        .DOB(o_rdata0__0[3:2]),
        .DOC(o_rdata0__0[5:4]),
        .DOD(NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst/rx_fifo_0/mem_fifo_reg_0_7_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D mem_fifo_reg_0_7_6_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(din_spi[6]),
        .DPO(o_rdata0__0[6]),
        .DPRA0(\r_rptr_reg[3]_0 [0]),
        .DPRA1(\r_rptr_reg[3]_0 [1]),
        .DPRA2(\r_rptr_reg[3]_0 [2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED),
        .WCLK(CLK),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst/rx_fifo_0/mem_fifo_reg_0_7_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D mem_fifo_reg_0_7_6_7__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(din_spi[7]),
        .DPO(o_rdata0__0[7]),
        .DPRA0(\r_rptr_reg[3]_0 [0]),
        .DPRA1(\r_rptr_reg[3]_0 [1]),
        .DPRA2(\r_rptr_reg[3]_0 [2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED),
        .WCLK(CLK),
        .WE(p_0_in__0));
  LUT4 #(
    .INIT(16'hF600)) 
    \o_rdata[7]_i_1__0 
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(EMPTY_INST_0_i_1_n_0),
        .I3(RD),
        .O(\o_rdata[7]_i_1__0_n_0 ));
  FDRE \o_rdata_reg[0] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[0]),
        .Q(DOUT[0]),
        .R(1'b0));
  FDRE \o_rdata_reg[1] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[1]),
        .Q(DOUT[1]),
        .R(1'b0));
  FDRE \o_rdata_reg[2] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[2]),
        .Q(DOUT[2]),
        .R(1'b0));
  FDRE \o_rdata_reg[3] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[3]),
        .Q(DOUT[3]),
        .R(1'b0));
  FDRE \o_rdata_reg[4] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[4]),
        .Q(DOUT[4]),
        .R(1'b0));
  FDRE \o_rdata_reg[5] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[5]),
        .Q(DOUT[5]),
        .R(1'b0));
  FDRE \o_rdata_reg[6] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[6]),
        .Q(DOUT[6]),
        .R(1'b0));
  FDRE \o_rdata_reg[7] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .D(o_rdata0__0[7]),
        .Q(DOUT[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_rptr[0]_i_1__0 
       (.I0(\r_rptr_reg[3]_0 [0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_rptr[1]_i_1__0 
       (.I0(\r_rptr_reg[3]_0 [0]),
        .I1(\r_rptr_reg[3]_0 [1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_rptr[2]_i_1__0 
       (.I0(\r_rptr_reg[3]_0 [1]),
        .I1(\r_rptr_reg[3]_0 [0]),
        .I2(\r_rptr_reg[3]_0 [2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_rptr[3]_i_1__0 
       (.I0(\r_rptr_reg[3]_0 [2]),
        .I1(\r_rptr_reg[3]_0 [0]),
        .I2(\r_rptr_reg[3]_0 [1]),
        .I3(\r_rptr_reg[3]_0 [3]),
        .O(p_0_in__3[3]));
  FDCE \r_rptr_reg[0] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__3[0]),
        .Q(\r_rptr_reg[3]_0 [0]));
  FDCE \r_rptr_reg[1] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__3[1]),
        .Q(\r_rptr_reg[3]_0 [1]));
  FDCE \r_rptr_reg[2] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__3[2]),
        .Q(\r_rptr_reg[3]_0 [2]));
  FDCE \r_rptr_reg[3] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1__0_n_0 ),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__3[3]),
        .Q(\r_rptr_reg[3]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_wptr[0]_i_1__0 
       (.I0(Q[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_wptr[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_wptr[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(p_0_in__4[2]));
  LUT4 #(
    .INIT(16'hF900)) 
    \r_wptr[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(EMPTY_INST_0_i_1_n_0),
        .I3(wr_spi),
        .O(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_wptr[3]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(p_0_in__4[3]));
  FDCE \r_wptr_reg[0] 
       (.C(CLK),
        .CE(p_0_in__0),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__4[0]),
        .Q(Q[0]));
  FDCE \r_wptr_reg[1] 
       (.C(CLK),
        .CE(p_0_in__0),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__4[1]),
        .Q(Q[1]));
  FDCE \r_wptr_reg[2] 
       (.C(CLK),
        .CE(p_0_in__0),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__4[2]),
        .Q(Q[2]));
  FDCE \r_wptr_reg[3] 
       (.C(CLK),
        .CE(p_0_in__0),
        .CLR(\r_wptr_reg[0]_0 ),
        .D(p_0_in__4[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_spi_top_0_0_fifo_0
   (Q,
    \r_rptr_reg[3]_0 ,
    \r_wptr_reg[2]_0 ,
    FULL,
    \r_wptr_reg[3]_0 ,
    dout_spi,
    CLK,
    DIN,
    WR,
    \FSM_onehot_state_reg[0] ,
    rd_spi,
    \r_wptr_reg[3]_1 );
  output [3:0]Q;
  output [3:0]\r_rptr_reg[3]_0 ;
  output \r_wptr_reg[2]_0 ;
  output FULL;
  output \r_wptr_reg[3]_0 ;
  output [7:0]dout_spi;
  input CLK;
  input [7:0]DIN;
  input WR;
  input [0:0]\FSM_onehot_state_reg[0] ;
  input rd_spi;
  input \r_wptr_reg[3]_1 ;

  wire CLK;
  wire [7:0]DIN;
  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire FULL;
  wire [3:0]Q;
  wire WR;
  wire [7:0]dout_spi;
  wire [7:0]o_rdata0;
  wire \o_rdata[7]_i_1_n_0 ;
  wire p_0_in;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire [3:0]\r_rptr_reg[3]_0 ;
  wire \r_wptr_reg[2]_0 ;
  wire \r_wptr_reg[3]_0 ;
  wire \r_wptr_reg[3]_1 ;
  wire rd_spi;
  wire [1:0]NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED;
  wire NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED;
  wire NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF600)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(\r_wptr_reg[2]_0 ),
        .I3(\FSM_onehot_state_reg[0] ),
        .O(\r_wptr_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h06)) 
    FULL_INST_0
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(\r_wptr_reg[2]_0 ),
        .O(FULL));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    FULL_INST_0_i_1
       (.I0(Q[2]),
        .I1(\r_rptr_reg[3]_0 [2]),
        .I2(Q[1]),
        .I3(\r_rptr_reg[3]_0 [1]),
        .I4(\r_rptr_reg[3]_0 [0]),
        .I5(Q[0]),
        .O(\r_wptr_reg[2]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst/tx_fifo_0/mem_fifo_reg_0_7_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_fifo_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,\r_rptr_reg[3]_0 [2:0]}),
        .ADDRB({1'b0,1'b0,\r_rptr_reg[3]_0 [2:0]}),
        .ADDRC({1'b0,1'b0,\r_rptr_reg[3]_0 [2:0]}),
        .ADDRD({1'b0,1'b0,Q[2:0]}),
        .DIA(DIN[1:0]),
        .DIB(DIN[3:2]),
        .DIC(DIN[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(o_rdata0[1:0]),
        .DOB(o_rdata0[3:2]),
        .DOC(o_rdata0[5:4]),
        .DOD(NLW_mem_fifo_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst/tx_fifo_0/mem_fifo_reg_0_7_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D mem_fifo_reg_0_7_6_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DIN[6]),
        .DPO(o_rdata0[6]),
        .DPRA0(\r_rptr_reg[3]_0 [0]),
        .DPRA1(\r_rptr_reg[3]_0 [1]),
        .DPRA2(\r_rptr_reg[3]_0 [2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_mem_fifo_reg_0_7_6_7_SPO_UNCONNECTED),
        .WCLK(CLK),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst/tx_fifo_0/mem_fifo_reg_0_7_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D mem_fifo_reg_0_7_6_7__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DIN[7]),
        .DPO(o_rdata0[7]),
        .DPRA0(\r_rptr_reg[3]_0 [0]),
        .DPRA1(\r_rptr_reg[3]_0 [1]),
        .DPRA2(\r_rptr_reg[3]_0 [2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_mem_fifo_reg_0_7_6_7__0_SPO_UNCONNECTED),
        .WCLK(CLK),
        .WE(p_0_in));
  LUT4 #(
    .INIT(16'hF600)) 
    \o_rdata[7]_i_1 
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(\r_wptr_reg[2]_0 ),
        .I3(rd_spi),
        .O(\o_rdata[7]_i_1_n_0 ));
  FDRE \o_rdata_reg[0] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[0]),
        .Q(dout_spi[0]),
        .R(1'b0));
  FDRE \o_rdata_reg[1] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[1]),
        .Q(dout_spi[1]),
        .R(1'b0));
  FDRE \o_rdata_reg[2] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[2]),
        .Q(dout_spi[2]),
        .R(1'b0));
  FDRE \o_rdata_reg[3] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[3]),
        .Q(dout_spi[3]),
        .R(1'b0));
  FDRE \o_rdata_reg[4] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[4]),
        .Q(dout_spi[4]),
        .R(1'b0));
  FDRE \o_rdata_reg[5] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[5]),
        .Q(dout_spi[5]),
        .R(1'b0));
  FDRE \o_rdata_reg[6] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[6]),
        .Q(dout_spi[6]),
        .R(1'b0));
  FDRE \o_rdata_reg[7] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .D(o_rdata0[7]),
        .Q(dout_spi[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_rptr[0]_i_1 
       (.I0(\r_rptr_reg[3]_0 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_rptr[1]_i_1 
       (.I0(\r_rptr_reg[3]_0 [0]),
        .I1(\r_rptr_reg[3]_0 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_rptr[2]_i_1 
       (.I0(\r_rptr_reg[3]_0 [1]),
        .I1(\r_rptr_reg[3]_0 [0]),
        .I2(\r_rptr_reg[3]_0 [2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_rptr[3]_i_1 
       (.I0(\r_rptr_reg[3]_0 [2]),
        .I1(\r_rptr_reg[3]_0 [0]),
        .I2(\r_rptr_reg[3]_0 [1]),
        .I3(\r_rptr_reg[3]_0 [3]),
        .O(p_0_in__1[3]));
  FDCE \r_rptr_reg[0] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__1[0]),
        .Q(\r_rptr_reg[3]_0 [0]));
  FDCE \r_rptr_reg[1] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__1[1]),
        .Q(\r_rptr_reg[3]_0 [1]));
  FDCE \r_rptr_reg[2] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__1[2]),
        .Q(\r_rptr_reg[3]_0 [2]));
  FDCE \r_rptr_reg[3] 
       (.C(CLK),
        .CE(\o_rdata[7]_i_1_n_0 ),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__1[3]),
        .Q(\r_rptr_reg[3]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_wptr[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_wptr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_wptr[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(p_0_in__2[2]));
  LUT4 #(
    .INIT(16'hF900)) 
    \r_wptr[3]_i_1 
       (.I0(Q[3]),
        .I1(\r_rptr_reg[3]_0 [3]),
        .I2(\r_wptr_reg[2]_0 ),
        .I3(WR),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_wptr[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(p_0_in__2[3]));
  FDCE \r_wptr_reg[0] 
       (.C(CLK),
        .CE(p_0_in),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__2[0]),
        .Q(Q[0]));
  FDCE \r_wptr_reg[1] 
       (.C(CLK),
        .CE(p_0_in),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__2[1]),
        .Q(Q[1]));
  FDCE \r_wptr_reg[2] 
       (.C(CLK),
        .CE(p_0_in),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__2[2]),
        .Q(Q[2]));
  FDCE \r_wptr_reg[3] 
       (.C(CLK),
        .CE(p_0_in),
        .CLR(\r_wptr_reg[3]_1 ),
        .D(p_0_in__2[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "spi_master" *) 
module design_1_spi_top_0_0_spi_master
   (cs,
    wr_spi,
    RSTN_0,
    rd_spi,
    mosi,
    sclk,
    Q,
    din_spi,
    CLK,
    \FSM_onehot_state_reg[0]_0 ,
    wr_reg_0,
    dout_spi,
    miso,
    rd_reg_0,
    rd_reg_1,
    rd_reg_2,
    RSTN);
  output cs;
  output wr_spi;
  output RSTN_0;
  output rd_spi;
  output mosi;
  output sclk;
  output [1:0]Q;
  output [7:0]din_spi;
  input CLK;
  input \FSM_onehot_state_reg[0]_0 ;
  input wr_reg_0;
  input [7:0]dout_spi;
  input miso;
  input rd_reg_0;
  input [0:0]rd_reg_1;
  input [0:0]rd_reg_2;
  input RSTN;

  wire CLK;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_5_n_0 ;
  wire \FSM_onehot_state[5]_i_6_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [1:0]Q;
  wire RSTN;
  wire RSTN_0;
  wire [3:1]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire \clk_div[1]_i_1_n_0 ;
  wire [3:0]clk_div_reg;
  wire cs;
  wire cs_reg_i_1_n_0;
  wire cs_reg_i_2_n_0;
  wire [7:0]din_spi;
  wire [7:0]dout_spi;
  wire miso;
  wire mosi;
  wire mosi_i_1_n_0;
  wire [3:0]p_0_in__5;
  wire rd_i_1_n_0;
  wire rd_reg_0;
  wire [0:0]rd_reg_1;
  wire [0:0]rd_reg_2;
  wire rd_spi;
  wire sck_i_1_n_0;
  wire sck_i_2_n_0;
  wire sck_reg_n_0;
  wire sclk;
  wire [7:0]shift_reg;
  wire \shift_reg[7]_i_1_n_0 ;
  wire \shift_reg[7]_i_4_n_0 ;
  wire wr_i_1_n_0;
  wire wr_reg_0;
  wire wr_spi;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\shift_reg[7]_i_4_n_0 ),
        .I5(wr_reg_0),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(rd_spi),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\shift_reg[7]_i_4_n_0 ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\FSM_onehot_state[5]_i_5_n_0 ),
        .I5(\FSM_onehot_state[5]_i_6_n_0 ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(sck_reg_n_0),
        .O(\FSM_onehot_state[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[5]_i_6 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_state[5]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .PRE(RSTN_0),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(Q[0]),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "IDLE:000001,START:000010,DELAY:000100,TRANS:001000,STOP:010000,DOUT:100000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(Q[1]),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(bit_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(bit_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA9)) 
    \bit_cnt[3]_i_1 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(bit_cnt[3]));
  FDCE \bit_cnt_reg[0] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ));
  FDCE \bit_cnt_reg[1] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(bit_cnt[1]),
        .Q(\bit_cnt_reg_n_0_[1] ));
  FDCE \bit_cnt_reg[2] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(bit_cnt[2]),
        .Q(\bit_cnt_reg_n_0_[2] ));
  FDPE \bit_cnt_reg[3] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .D(bit_cnt[3]),
        .PRE(RSTN_0),
        .Q(\bit_cnt_reg_n_0_[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_1 
       (.I0(clk_div_reg[0]),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div[1]_i_1 
       (.I0(clk_div_reg[1]),
        .I1(clk_div_reg[0]),
        .O(\clk_div[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div[2]_i_1 
       (.I0(clk_div_reg[1]),
        .I1(clk_div_reg[0]),
        .I2(clk_div_reg[2]),
        .O(p_0_in__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div[3]_i_1 
       (.I0(clk_div_reg[2]),
        .I1(clk_div_reg[0]),
        .I2(clk_div_reg[1]),
        .I3(clk_div_reg[3]),
        .O(p_0_in__5[3]));
  FDCE \clk_div_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(p_0_in__5[0]),
        .Q(clk_div_reg[0]));
  FDCE \clk_div_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(\clk_div[1]_i_1_n_0 ),
        .Q(clk_div_reg[1]));
  FDCE \clk_div_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(p_0_in__5[2]),
        .Q(clk_div_reg[2]));
  FDCE \clk_div_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(p_0_in__5[3]),
        .Q(clk_div_reg[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    cs_reg
       (.CLR(1'b0),
        .D(cs_reg_i_1_n_0),
        .G(cs_reg_i_2_n_0),
        .GE(1'b1),
        .Q(cs));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    cs_reg_i_1
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(cs_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    cs_reg_i_2
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(rd_spi),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(cs_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    mosi_i_1
       (.I0(din_spi[7]),
        .I1(sck_reg_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\shift_reg[7]_i_4_n_0 ),
        .I4(mosi),
        .O(mosi_i_1_n_0));
  FDCE mosi_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(mosi_i_1_n_0),
        .Q(mosi));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAA8AA8)) 
    rd_i_1
       (.I0(Q[0]),
        .I1(rd_reg_0),
        .I2(rd_reg_1),
        .I3(rd_reg_2),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(rd_spi),
        .O(rd_i_1_n_0));
  FDCE rd_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(rd_i_1_n_0),
        .Q(rd_spi));
  LUT6 #(
    .INIT(64'h000F0F0FFFE0F0E0)) 
    sck_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(sck_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\shift_reg[7]_i_4_n_0 ),
        .I5(sck_reg_n_0),
        .O(sck_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sck_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(sck_i_2_n_0));
  FDCE sck_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(sck_i_1_n_0),
        .Q(sck_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sclk_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(sck_reg_n_0),
        .O(sclk));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(miso),
        .O(shift_reg[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[1]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(din_spi[0]),
        .O(shift_reg[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[2]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(din_spi[1]),
        .O(shift_reg[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[3]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(din_spi[2]),
        .O(shift_reg[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[4]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(din_spi[3]),
        .O(shift_reg[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[5]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(din_spi[4]),
        .O(shift_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[6]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(din_spi[5]),
        .O(shift_reg[6]));
  LUT4 #(
    .INIT(16'hFF08)) 
    \shift_reg[7]_i_1 
       (.I0(\shift_reg[7]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(sck_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\shift_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dout_spi[7]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(din_spi[6]),
        .O(shift_reg[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \shift_reg[7]_i_3 
       (.I0(RSTN),
        .O(RSTN_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \shift_reg[7]_i_4 
       (.I0(clk_div_reg[3]),
        .I1(clk_div_reg[2]),
        .I2(clk_div_reg[0]),
        .I3(clk_div_reg[1]),
        .O(\shift_reg[7]_i_4_n_0 ));
  FDCE \shift_reg_reg[0] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[0]),
        .Q(din_spi[0]));
  FDCE \shift_reg_reg[1] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[1]),
        .Q(din_spi[1]));
  FDCE \shift_reg_reg[2] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[2]),
        .Q(din_spi[2]));
  FDCE \shift_reg_reg[3] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[3]),
        .Q(din_spi[3]));
  FDCE \shift_reg_reg[4] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[4]),
        .Q(din_spi[4]));
  FDCE \shift_reg_reg[5] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[5]),
        .Q(din_spi[5]));
  FDCE \shift_reg_reg[6] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[6]),
        .Q(din_spi[6]));
  FDCE \shift_reg_reg[7] 
       (.C(CLK),
        .CE(\shift_reg[7]_i_1_n_0 ),
        .CLR(RSTN_0),
        .D(shift_reg[7]),
        .Q(din_spi[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    wr_i_1
       (.I0(Q[1]),
        .I1(wr_reg_0),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(Q[0]),
        .I4(wr_spi),
        .O(wr_i_1_n_0));
  FDCE wr_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RSTN_0),
        .D(wr_i_1_n_0),
        .Q(wr_spi));
endmodule

(* ORIG_REF_NAME = "spi_top" *) 
module design_1_spi_top_0_0_spi_top
   (tx_r_wptr,
    tx_r_rptr,
    din_spi,
    rx_r_wptr,
    rx_r_rptr,
    cs,
    dout_spi,
    DOUT,
    FULL,
    EMPTY,
    sclk,
    mosi,
    CLK,
    DIN,
    WR,
    RD,
    miso,
    RSTN);
  output [3:0]tx_r_wptr;
  output [3:0]tx_r_rptr;
  output [7:0]din_spi;
  output [3:0]rx_r_wptr;
  output [3:0]rx_r_rptr;
  output cs;
  output [7:0]dout_spi;
  output [7:0]DOUT;
  output FULL;
  output EMPTY;
  output sclk;
  output mosi;
  input CLK;
  input [7:0]DIN;
  input WR;
  input RD;
  input miso;
  input RSTN;

  wire CLK;
  wire [7:0]DIN;
  wire [7:0]DOUT;
  wire EMPTY;
  wire FULL;
  wire RD;
  wire RSTN;
  wire WR;
  wire cs;
  wire [7:0]din_spi;
  wire [7:0]dout_spi;
  wire master_0_n_2;
  wire master_0_n_6;
  wire master_0_n_7;
  wire miso;
  wire mosi;
  wire rd_spi;
  wire rx_fifo_0_n_8;
  wire [3:0]rx_r_rptr;
  wire [3:0]rx_r_wptr;
  wire sclk;
  wire tx_fifo_0_n_10;
  wire tx_fifo_0_n_8;
  wire [3:0]tx_r_rptr;
  wire [3:0]tx_r_wptr;
  wire wr_spi;

  design_1_spi_top_0_0_spi_master master_0
       (.CLK(CLK),
        .\FSM_onehot_state_reg[0]_0 (tx_fifo_0_n_10),
        .Q({master_0_n_6,master_0_n_7}),
        .RSTN(RSTN),
        .RSTN_0(master_0_n_2),
        .cs(cs),
        .din_spi(din_spi),
        .dout_spi(dout_spi),
        .miso(miso),
        .mosi(mosi),
        .rd_reg_0(tx_fifo_0_n_8),
        .rd_reg_1(tx_r_rptr[3]),
        .rd_reg_2(tx_r_wptr[3]),
        .rd_spi(rd_spi),
        .sclk(sclk),
        .wr_reg_0(rx_fifo_0_n_8),
        .wr_spi(wr_spi));
  design_1_spi_top_0_0_fifo rx_fifo_0
       (.CLK(CLK),
        .DOUT(DOUT),
        .EMPTY(EMPTY),
        .Q(rx_r_wptr),
        .RD(RD),
        .din_spi(din_spi),
        .\r_rptr_reg[3]_0 (rx_r_rptr),
        .\r_wptr_reg[0]_0 (master_0_n_2),
        .\r_wptr_reg[3]_0 (rx_fifo_0_n_8),
        .wr_reg(master_0_n_6),
        .wr_spi(wr_spi));
  design_1_spi_top_0_0_fifo_0 tx_fifo_0
       (.CLK(CLK),
        .DIN(DIN),
        .\FSM_onehot_state_reg[0] (master_0_n_7),
        .FULL(FULL),
        .Q(tx_r_wptr),
        .WR(WR),
        .dout_spi(dout_spi),
        .\r_rptr_reg[3]_0 (tx_r_rptr),
        .\r_wptr_reg[2]_0 (tx_fifo_0_n_8),
        .\r_wptr_reg[3]_0 (tx_fifo_0_n_10),
        .\r_wptr_reg[3]_1 (master_0_n_2),
        .rd_spi(rd_spi));
endmodule
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
