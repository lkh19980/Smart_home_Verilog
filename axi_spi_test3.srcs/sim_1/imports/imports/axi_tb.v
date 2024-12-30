`timescale 1ns / 1ps
//------------------------------------------------------------------------------
// Copyright (c) 2024 WeDu Solution Co., Ltd.
// This work may not be copied, modified, re-published, uploaded, executed, or
// distributed in any way, in any medium, whether in whole or in part, without
// prior written permission from WeDu Solution Co., Ltd.
//------------------------------------------------------------------------------
// Title   : AXI SIM
//------------------------------------------------------------------------------
// Project    : AXI
// File       : axi_sim.v
// Author     : lebits 
// Created    : March 25, 2023
//------------------------------------------------------------------------------
// Description : 
//------------------------------------------------------------------------------
// $Revision: 0.001 $
//------------------------------------------------------------------------------


module axi_sim ();

//***********************************************
//    Parameter
//***********************************************
parameter CLK_PERIOD = 10.0;
parameter dly       =1;

//***********************************************
//    Signal 
//***********************************************

reg    rstn;
reg     clk;            // 125Mhz

reg	    [31:0]		axi_awaddr =32'd0, axi_wdata = 32'd0;
wire	[2:0]		axi_awprot = 3'b000;
reg     			axi_awvalid = 1'b0;
wire                axi_awready;
wire	[3:0]		axi_wstrb;
reg 				axi_wvalid = 1'b0;
wire                axi_wready;
wire	[1:0]		axi_bresp;
wire				axi_bvalid;
reg                 axi_bready = 1'b0;

reg     [31:0]		axi_araddr;// = 32'd0;
wire    [31:0]      axi_rdata;
wire	[2:0]		axi_arprot =3'b000;
reg 				axi_arvalid = 1'b0;
wire                axi_arready;
wire	[1:0]		axi_rresp;
wire				axi_rvalid;
reg                 axi_rready =1'b0;

wire                empty, full;
wire                ren, wen;
wire    [7:0]       din, dout;

wire mosi;
wire sclk;
wire cs;
wire miso;

reg [7:0] slave_data;
assign miso = slave_data[7];



//***********************************************
//    UUT instantiation
//***********************************************
assign axi_wstrb = 4'hf;
//----------------------------
//    AXI 
//----------------------------
myip_v1_0_S_AXI axi_0 (

    .S_AXI_ACLK             (clk),
    .S_AXI_ARESETN          (rstn),
    
    .FULL                   (full),       // from TX fifo
    .EMPTY                  (empty),      // From RX fifo
    .DIN                    (dout),        // From RX fifo
    .WEN                    (wen),        // to TX fifo
    .REN                    (ren),        // to RX fifo
    .DOUT                   (din),       // to TX fifo
    
    // axi read chanel
    .S_AXI_ARADDR           (axi_araddr),
    .S_AXI_ARREADY          (axi_arready),
    .S_AXI_ARVALID          (axi_arvalid),
    .S_AXI_ARPROT           (axi_arprot),
    .S_AXI_RDATA            (axi_rdata),
    .S_AXI_RREADY           (axi_rready),
    .S_AXI_RVALID           (axi_rvalid),
    .S_AXI_RRESP            (axi_rresp),
    // axi write channel
    .S_AXI_AWADDR           (axi_awaddr),
    .S_AXI_AWREADY          (axi_awready),
    .S_AXI_AWVALID          (axi_awvalid),
    .S_AXI_AWPROT           (axi_awprot),
    .S_AXI_WDATA            (axi_wdata),
    .S_AXI_WREADY           (axi_wready),
    .S_AXI_WVALID           (axi_wvalid),
    .S_AXI_WSTRB            (axi_wstrb),
    .S_AXI_BRESP            (axi_bresp),
    .S_AXI_BREADY           (axi_bready),
    .S_AXI_BVALID           (axi_bvalid)
    
    );

spi_top spi_0(
    .RSTN    (rstn),//==============
    .CLK    (clk),
    .FULL   (full),
    .WR     (wen),
    .DIN    (din),
    .EMPTY  (empty),
    .RD     (ren),
    .DOUT   (dout),
    .mosi   (mosi),
    .sclk   (sclk),
    .cs     (cs),
    .miso   (miso)
    );


//***********************************************
//    Stimulus
//***********************************************
//----------------------------
//    Clock/Reset
//----------------------------
initial begin
	rstn = 1'b0;
	repeat (5)  @(posedge clk);
	rstn = 1'b1;
	$display("[%t] Reset Released", $realtime);
end	

// 100Mhz
initial clk = 1'b0;
always #(CLK_PERIOD/2) clk = ~clk;

//----------------------------
//    Main Simulation Sequence
//----------------------------
integer i=0;
//reg [4:0] cnt = 5'd0;
reg  [7:0]data_rdy = 1'b0;
reg [7:0]   rd_data = 8'd0;

parameter   [7:0]   spi_wr_addr = 8'h0;
parameter   [7:0]   spi_wr_ren_addr = 8'h4;
parameter   [7:0]   spi_rd_data_addr = 8'h0;
parameter   [7:0]   spi_rd_full_addr = 8'h4;
parameter   [7:0]   spi_rd_empty_addr = 8'h4;//8

//wire    [7:0] rd_cmd = {1'b1, 2'b0, cnt};
reg    [7:0] rd_cmd;

initial begin
//    cnt = 5'd0;  
//    wait (rstn == 1'b1);
//    repeat (5) @(posedge clk);
//    for(i=0; i < 6; i = i+1) begin
//        TSK_AXI_WRITE(spi_wr_addr+ 32*i, cnt);      // spi command
//        repeat (5) @(posedge clk);
//        TSK_AXI_WRITE(spi_wr_addr+ 32*i, cnt);      // spi data write
//        cnt = cnt+ 1;
//    end       // for
//    cnt = 5'd0;    
//    slave_data = 8'b11001100;

    repeat (10) @(posedge clk);  
    for(i=50; i < 70; i = i+1) begin
        rd_cmd = i;
        slave_data = slave_data + i;
        data_rdy = 8'd0;
        TSK_AXI_WRITE(spi_wr_addr+ i*4, rd_cmd);     // spr read command
        axi_araddr = spi_wr_addr+ i*4;
        repeat (5) @(posedge clk);
        TSK_AXI_READ(rd_data);
//        cnt = cnt + 1;
    end
    #(CLK_PERIOD*10000);
    $finish;        
end  

// 슬레이브 데이터 시프트 로직 개선
always @(negedge sclk or posedge cs) begin
    if (cs) begin
        slave_data <= 8'b01111111; // 칩 선택 비활성화 시 초기화
    end else if (!cs) begin
        slave_data <= {slave_data[6:0], 1'b0}; // MSB부터 시프트
    end
end



/************************************************************
Task : TSK_AXI_READ
Inputs : none
Outputs : none
Description : Read AXI data
*************************************************************/
task TSK_AXI_READ(output [7:0] data);
  begin
        @(posedge clk);
        #(dly);
	    axi_arvalid = 1'b1;
        wait (axi_arready)
        @(posedge clk)
        #(dly);
        axi_arvalid = 1'b0;
        @(posedge clk)
	    #(dly)
        axi_rready = 1'b1;
        wait (axi_rvalid);
        @(posedge clk)
	    #(dly)
        axi_rready = 1'b0;
        data = axi_rdata;
	    $display("[INFO] AXI Read %h", axi_rdata);
end
endtask // TSK_AXI_READ
/************************************************************
Task : TSK_AXI_WRITE
Inputs : none
Outputs : none
Description : Write AXI data
*************************************************************/
task TSK_AXI_WRITE(input [7:0] addr, data);
  begin
        @(posedge clk);
        #(dly);
	    axi_awvalid = 1'b1;
        axi_wvalid = 1'b1;
	    axi_awaddr = {24'd0,addr};
	    axi_wdata = {24'd0,data};
        wait (axi_wready);
        @(posedge clk);
        #(dly);
        axi_awvalid = 1'b0;
        axi_wvalid = 1'b0;
        wait (axi_bvalid);
        axi_bready = 1'b1;
       @(posedge clk);
        #(dly);
        axi_bready = 1'b0;
        @(posedge clk);
        #(dly);
    $display("[INFO] AXI Write addr: %h, data: %h",addr, data);
end
endtask // TSK_TX_MEMORY_WRITE_32

endmodule