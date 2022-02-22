#include<detpic32.h>

void delay (int ms){

	for(;ms>0;ms--){

		resetCoreTimer();

		while(readCoreTimer()<20000);

	}

}

void send2displays(unsigned char value){

	static const char display7Scodes[]={0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
	static char displaysflag=0;	

	int digit_low = value & 0x0F;
	int digit_high = value>>4;

	if(displaysflag==0){
	
		LATDbits.LATD5 = 1;
		LATDbits.LATD6 = 0;

		LATB = (LATB & 0x80FF)|(display7Scodes[digit_low])<<8;
	
	}
	
	else{

                LATDbits.LATD5 = 0;
                LATDbits.LATD6 = 1;


		LATB = (LATB & 0x80FF)|(display7Scodes[digit_high])<<8;

	}

	displaysflag=!displaysflag;

}

int main(){

	TRISDbits.TRISD5 = 0;
	TRISDbits.TRISD6 = 0;
	TRISB = TRISB & 0x00FF;

	char k=0;
	char o = 0;
	while(1){
		
		o=0;		
	
		while((o++)<50){
			delay(20);
			send2displays(k);
	
		}
		
		k++;
	}

return 0;
}

