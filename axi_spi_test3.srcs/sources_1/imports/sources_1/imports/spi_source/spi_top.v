`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/27 12:23:31
// Design Name: 
// Module Name: spi_master_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module spi_top(
    input RSTN,
    input CLK,
    output FULL,
    input WR,
    input [7:0] DIN,
    output EMPTY,
    input RD,
    output [7:0] DOUT,
    
    
//    output [7:0] rdata,//============
    output [7:0] din_spi, dout_spi,
    
    output mosi, sclk, cs,
    output miso_in,
    input miso,
    output [3:0] tx_r_rptr, rx_r_rptr,
    output [3:0] tx_r_wptr, rx_r_wptr
//    output mosi,        // 마스터 출력, 슬레이브 입력
//    output sclk,        // SPI 클럭
//    output cs,          // 칩 선택 신호
//    input miso             // 마스터 입력, 슬레이브 출력
    );
wire    empty_spi, rd_spi, full_spi, wr_spi;
//wire [7:0] din_spi, dout_spi;    

//wire    sclk;
//wire mosi;
//wire    miso;
//wire   cs;

//wire [7:0] rdata;//=============
    
fifo tx_fifo_0 (.i_resetn(RSTN), .i_clk(CLK), .i_wdata(DIN),.i_wen(WR),.o_full(FULL), .o_rdata(dout_spi), .i_ren(rd_spi), .o_empty(empty_spi), .r_rptr(tx_r_rptr), .r_wptr(tx_r_wptr));    
fifo rx_fifo_0 (.i_resetn(RSTN), .i_clk(CLK), .i_wdata(din_spi),.i_wen(wr_spi),.o_full(full_spi), .o_rdata(DOUT), .i_ren(RD), .o_empty(EMPTY), .r_rptr(rx_r_rptr), .r_wptr(rx_r_wptr));

spi_master master_0 ( .rst(RSTN), .clk(CLK), .empty(empty_spi), .rd(rd_spi), .data_in(dout_spi), .full(full_spi),
            .wr(wr_spi), .data_out(din_spi), 
            .cs(cs), .sclk(sclk), .mosi(mosi), .miso(miso));

assign miso_in = miso;

//spi_slave slave_0 (
//    .nCS    (cs),
//    .SCLK   (sclk),
//    .MOSI   (mosi),
//    .MISO   (miso),
//    .rdata (rdata)
//    );


endmodule
