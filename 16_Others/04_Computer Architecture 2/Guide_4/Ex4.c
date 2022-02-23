#include<detpic32.h>

void delay (int ms){

	for(;ms>0;ms--){
		
		resetCoreTimer();
		while(readCoreTimer()<20000);

	}

}

void main(void){

	TRISB = TRISB && 0x80ff;
	TRISD = TRISD && 0xff9f;
	
	LATDbits.LATD5=0;
	LATDbits.LATD6=1;
	
	int unsigned c;
	int unsigned k;

	while(1){

		k=1<<8;
		LATDbits.LATD5 = !LATDbits.LATD5;
		LATDbits.LATD6 = !LATDbits.LATD6;	
	
		for (c=0;c<7;c++){
		LATB = LATB & 0x00FF;	
		LATB = LATB | k;
		delay(1000);
		k = k <<1;
		}
	
	}
	
	}
