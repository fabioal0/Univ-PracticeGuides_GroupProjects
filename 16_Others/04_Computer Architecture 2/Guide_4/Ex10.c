#include<detpic32.h>

void delay(int ms){
	
	for(;ms>0;ms--){
	
	resetCoreTimer();

	while(readCoreTimer()<20000);
	
	}

}

int main(void){

	static const char display7Scodes[] = {0x3F, 0x06, 0x5B,0x4F,0x66,0x6D,0x7D,0x07,0xFF,0x67};
	int k;	

	TRISB = (TRISB & 0x80FF) | 0x000F;
	
	TRISDbits.TRISD5 = 0;
	TRISDbits.TRISD6 = 0;
	
	LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;


	while(1){
			
		LATDbits.LATD5 = ! LATDbits.LATD5;        
		LATDbits.LATD6 = ! LATDbits.LATD6;
		
		k = display7Scodes[PORTB & 0x000F];
		k = k<<8;
		LATB = (LATB & 0x80FF) | k;
		
		delay(10);	

		k = k<<4;
		LATB = LATB | k;

	}
	
}
