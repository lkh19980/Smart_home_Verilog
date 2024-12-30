// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:spi_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_spi_top_0_0 (
  RSTN,
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
  rx_r_wptr
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTN RST" *)
input wire RSTN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RSTN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
output wire FULL;
input wire WR;
input wire [7 : 0] DIN;
output wire EMPTY;
input wire RD;
output wire [7 : 0] DOUT;
output wire [7 : 0] din_spi;
output wire [7 : 0] dout_spi;
output wire mosi;
output wire sclk;
output wire cs;
output wire miso_in;
input wire miso;
output wire [3 : 0] tx_r_rptr;
output wire [3 : 0] rx_r_rptr;
output wire [3 : 0] tx_r_wptr;
output wire [3 : 0] rx_r_wptr;

  spi_top inst (
    .RSTN(RSTN),
    .CLK(CLK),
    .FULL(FULL),
    .WR(WR),
    .DIN(DIN),
    .EMPTY(EMPTY),
    .RD(RD),
    .DOUT(DOUT),
    .din_spi(din_spi),
    .dout_spi(dout_spi),
    .mosi(mosi),
    .sclk(sclk),
    .cs(cs),
    .miso_in(miso_in),
    .miso(miso),
    .tx_r_rptr(tx_r_rptr),
    .rx_r_rptr(rx_r_rptr),
    .tx_r_wptr(tx_r_wptr),
    .rx_r_wptr(rx_r_wptr)
  );
endmodule
