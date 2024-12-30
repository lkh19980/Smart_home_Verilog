`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/06 10:36:35
// Design Name: 
// Module Name: spi_master
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


module spi_master(
    input clk,              // 마스터 클럭
    input rst,              // 활성화 시 낮은 리셋 신호
    
    input empty,            // 전송 시작 신호
    output reg rd,
    input [7:0] data_in,    // 슬레이브로 전송할 데이터
    
    input full,         // 전송 완료 플래그
    output reg wr,
    output [7:0] data_out,
    
    output reg mosi,        // 마스터 출력, 슬레이브 입력
    output sclk,        // SPI 클럭
    output reg cs,          // 칩 선택 신호
    input miso             // 마스터 입력, 슬레이브 출력
    
);
    reg sck;
    assign sclk = (state == TRANS) ? sck : 1'b0;
    // 상태 정의
    localparam [2:0] IDLE  = 3'b000,
                     START    = 3'b001,
                     DELAY = 3'b010,
                     TRANS = 3'b011,
                     STOP  = 3'b100,
                     DOUT = 3'b101;
                     
//    localparam [1:0] IDLE  = 2'b00,
//                     START = 2'b01,
//                     TRANS = 2'b10,
//                     STOP  = 2'b11;

    // 상태 레지스터
    reg [2:0] state, next_state;

    // 데이터 및 비트 카운터
    reg [7:0] shift_reg;
    reg [3:0] bit_cnt;
    reg [3:0] clk_div; // sclk 생성을 위한 클럭 분주기 (2비트로 확장)//2->5
//    reg [7:0] output_reg;
    
    //assign data_out = ((state == STOP)) ? shift_reg : data_out;//? possible?
    assign data_out = shift_reg;

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= IDLE;
            clk_div <= 0;
            sck <= 0;
            bit_cnt <= 4'd8;
            mosi <= 0;
            shift_reg <= 8'd0;
            rd <= 0;
            wr <= 0;
        end else begin
            state <= next_state;

            // 클럭 분주 및 sclk 생성
            clk_div <= clk_div + 1;
            if ((clk_div == 4'hf) && (state == TRANS)) begin // 분주기 카운터 수정 (더 안정적인 sclk 생성)
                sck <= ~sck;
                clk_div <= 0;
            end

            // 상태에 따른 동작
            case (state)
                IDLE: begin
                    wr <= 0;
                    sck <= 0; // IDLE 상태에서 sclk 초기화
                    if (~empty) rd <= 1;
                end
//                START : begin
//                    if (rd) begin
//                        shift_reg <= data_in;
//                        bit_cnt <= 3'd7;
//                    end
//                end
                DELAY : begin
                        rd <= 0;
                        shift_reg <= data_in;
                        bit_cnt <= 4'd8;
                end
                TRANS: begin
                    if (sck == 0 && clk_div == 4'hf) begin // 하강 에지에서 데이터 설정 및 시프트//sclk->sck
                        mosi <= shift_reg[7];
                        shift_reg <= {shift_reg[6:0], miso};
                        bit_cnt <= bit_cnt - 1;
                    end
                end
                STOP: begin
                    sck <= 0;
                    
//                    output_reg <= shift_reg;
                    if (~full)  wr <= 1;
                end
                DOUT: begin
                    wr <= 0;
                end
            endcase
        end
    end

    // 다음 상태 로직 및 출력 로직
    always @(*) begin
        next_state = state;
//        cs = 1; // 기본적으로 활성화 시 낮음
        
        case (state)
            IDLE: begin
                cs <= 1;
                if (~empty) next_state <= START;
            end
            START: begin
                if (rd) begin
                    cs <= 0; // 칩 선택 활성화//recover, any error?
                    next_state <= DELAY;
                end
            end
            DELAY: begin
                if (clk_div == 4'hf)
                    next_state <= TRANS;
            end
            TRANS: begin
                cs <= 0;
//                rd <= 0;
                if (bit_cnt == 4'd0 && clk_div == 4'hf && !sck) next_state <= STOP;//sclk->sck
            end
            STOP: begin
                
                if (~full) begin//clk_div added
                    
                    next_state <= DOUT;
                end
            end
            DOUT: begin
                    cs <= 1;
                    next_state <= IDLE;
            end
            default: next_state <= IDLE;
        endcase
    end
    
endmodule