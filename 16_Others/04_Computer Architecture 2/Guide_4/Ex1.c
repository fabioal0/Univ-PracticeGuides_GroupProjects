#include <detpic32.h>

void delay(int ms);

void main(void){

	LATEbits.LATE0=0;
	TRISEbits.TRISE0=0;
	
	while(1){
	
	delay(500);
	LATEbits.LATE0= !LATEbits.LATE0;
	
	}	

}

void delay(int ms)
{
	for(;ms>0;ms--) 
	{
	resetCoreTimer();
	while(readCoreTimer()<20000);	

	}

}


