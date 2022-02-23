/** INCLUDES ******************************************************************/
#include "config_bits.h"
#include "main.h"

#include <stdint.h>
#include <xc.h>


int main(int argc, char** argv) {
    
    InitializeLed();
    InitializeTimer();

    uint32_t count = 0;
    

    while (1) {

        while(IFS0bits.T2IF==0);

        if (count == 9)  {                     
            LED_INV();
            count = 0;
        }
        
        IFS0bits.T2IF=0;
        count++;
    }

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
    // Internal clock
    T2CONbits.TCS=0;
    // 16 bit timer operation
    T2CONbits.T32 = 0;
    // Pre-Scale = 1:64 (T2Clk: 625kHz)
    T2CONbits.TCKPS = PS_VALUE;
    // Set T2 period ~ 200mS
    PR2 = COMP_VALUE;     
    // Clear counter
    TMR2 = 0;     
    // Reset interrupt flag
    IFS0bits.T2IF=0;
    /* Enable the peripheral */
    T2CONbits.TON = 1;          
}