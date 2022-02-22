#include<detpic32.h>


void main (void)
{
	TRISB = TRISB & 0x00FF;
	TRISD = TRISD & 0xFF9F;
	
	LATDbits.LATD6=0;
	LATDbits.LATD5=1;

	while(1)
	{	

	char m = getChar(); 	

	LATB = LATB && 0x00FF;

	if(('a'<=m && m<='g')||('A'<=m && m<='G')|| m=='.'){
	
	if(m == 'a' || m == 'A') LATBbits.LATB8 = 1 ;
	if(m == 'b' || m == 'B') LATBbits.LATB9 = 1 ;
	if(m == 'c' || m == 'C') LATBbits.LATB10= 1 ;
	if(m == 'd' || m == 'D') LATBbits.LATB11= 1 ;
	if(m == 'e' || m == 'E') LATBbits.LATB12= 1 ;
	if(m == 'f' || m == 'F') LATBbits.LATB13= 1 ;
	if(m == 'g' || m == 'G') LATBbits.LATB14= 1 ;
	if(m == '.') LATBbits.LATB15= 1 ;

	}
	}
}
