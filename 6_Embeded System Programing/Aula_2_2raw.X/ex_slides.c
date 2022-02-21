#include "config_bits.h"

#include <xc.h>
#include <stdint.h>

#define value 5// set prescaler at 1:32
#define value1 125000

int main(int argc, char** argv) {

    T2CONbits.ON=0;
    T2CONbits.TCS=0;
    T2CONbits.TCKPS = value;
    T2CONbits.T32 = 0;
    PR2 = value1;                         
    TMR2 = 0;                
    T2CONbits.TON = 1;          

    TRISAbits.TRISA3 = 0; 
    PORTAbits.RA3 = 1;

    uint32_t count = 0;
    

    while (1) {

        while(IFS0bits.T2IF==0);


        IFS0bits.T2IF=0;
        count++;

        if (count==10)  {
            PORTAbits.RA3 = !PORTAbits.RA3;
            count=0;
        }
    }

}
