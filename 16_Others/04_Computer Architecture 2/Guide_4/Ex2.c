#include<detpic32.h>

void delay(int ms)
{
	for(;ms>0;ms--)
	{
		resetCoreTimer();	
		while(readCoreTimer()<20000);
	}

}

void main(void){

	TRISE = TRISE & 0xFFF0;
	int unsigned count=0;
	
	while(1){
	
	LATE = LATE & 0xFFF0;
	LATE = LATE | count;
	delay(250);
	count++;
	
		if(count==16)
		{
		count=0;
		}

	}
}
