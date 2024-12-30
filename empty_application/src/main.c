#include "stdio.h"
#include "sleep.h"
#include "xil_types.h"
#include "xparameters.h"

#define BASEADDR    XPAR_MYIP_V1_0_S_AXI_0_BASEADDR
#define	data_num 0xaf

u32 * ptr;



int main (void) {

	// int i;
	printf(" SPI Test \r\n");

	ptr = (u32 *) BASEADDR;
    int cnt = 0;
    uint8_t tx_data;
    uint32_t rx_data;
    uint8_t led;
    uint8_t screen;
    while(1){
            cnt++;
            if ((rx_data & 0b00001110 >> 1) > 4)//gas sensor -> fan
            {
                tx_data |= 0b00000001;
            }
            led = (15-((rx_data & 0b11110000)>>4)); //light -> servo
            screen = (rx_data & 0b00000001);//pir -> screen
            tx_data = ((led << 4) | (screen << 1) | tx_data);
            *(ptr) = tx_data; 
            if(cnt >= 700)
            {
                printf("SPI write data %02x \r\n", tx_data); 
            }
            tx_data = 0;
            usleep(800); 
            rx_data = Xil_In32(BASEADDR);
            if(cnt >= 700)
            {
                printf("SPI Read data is %02x \r\n",rx_data);
                printf("light : %d, gas : %01x, PIR : %01x\r\n", (rx_data >> 4),((rx_data & 0b00001110) >> 1), (rx_data & 0b00000001));
                cnt = 0;
            }
            
            usleep(800);      
    }

    return 0;

}	// main