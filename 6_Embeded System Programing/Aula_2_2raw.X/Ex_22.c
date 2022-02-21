/** INCLUDES ******************************************************************/
#include "config_bits.h"
#include "main.h"

#include <xc.h>


int main(int argc, char** argv) {
    
    InitializeLed();
    InitializeTimer();

    while (1) {

        while(IFS0bits.T3IF==0);
        LED_INV();
        IFS0bits.T3IF=0;

    }
    return (EXIT_SUCCESS);
}

void InitializeLed(void){
    TRIS_LED = 0; 
    LED = 1;
}

void InitializeTimer(void)
{
    
    /* Initialize Timer 2 Peripheral Settings */
    // Turn off the timer
    T2CONbits.ON=0;
    T3CONbits.ON=0;
    // Internal clock
    T2CONbits.TCS=0;
    // 32 bit timer operation
    T2CONbits.T32 = 1;
    // Pre-Scale = 1:1 (T2Clk: 40Mhz)
    T2CONbits.TCKPS = PS_VALUE;
    // Set T2 period ~ 1S
    PR2 = COMP_VALUE;     
    // Clear counter
    TMR2 = 0;     
    // Reset interrupt flag
    IFS0bits.T2IF=0;
    IFS0bits.T3IF=0;
    /* Enable the peripheral */
    T2CONbits.TON = 1;          
}
