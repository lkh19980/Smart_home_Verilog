#include "stdio.h"
#include "sleep.h"
#include "xil_types.h"
#include "xparameters.h"

#define BASEADDR    XPAR_MYIP_V1_0_S_AXI_0_BASEADDR
#define	data_num 10

u32 * ptr;

int main (void) {

	int i;
	printf(" SPI Test \r\n");

	ptr = (u32 *) BASEADDR;

    uint32_t rx_data;

    while(1){
        for(i=0; i<data_num; i++){
            printf(" SPI write command \r\n");
    	    *(ptr) = i;             // spi write command
            printf(" SPI write data %d \r\n", i); 
            // sleep(1);               
            *(ptr) = i;             // spi write data
            sleep(1); 
            printf(" SPI Read command \r\n"); 
            //*(ptr) = (i | 0x00000080)  ;
            Xil_Out32(BASEADDR, (i | 0x00000080));
            rx_data = Xil_In32(BASEADDR);
            // printf("SPI Read data is %d \r\n",*(ptr));
            printf("SPI Read data is %d \r\n",rx_data);
            sleep(2);      
        }
    }

    return 0;

}	// main