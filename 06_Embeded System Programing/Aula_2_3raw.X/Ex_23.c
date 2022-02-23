#include "main.h"
#include <stdio.h>
#include <stdlib.h>
#include <proc/p32mx795f512l.h>
#include <sys/attribs.h>
#include <xc.h>


int main(int argc, char** argv) {
        
    InitializeLed();
    InitializeTimer();

    while (1);
 
    return (EXIT_SUCCESS);
}

void __ISR(_TIMER_3_VECTOR,IPL2AUTO) tmr3_isr(void){
    LED_INV();
    IFS0bits.T3IF=0;
}

void InitializeLed(void){
    TRIS_LED = 0; 
    LED = 1;
}

void InitializeTimer(void)
{
    
    /* Initialize Timer Peripheral Settings */
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
    /* Initialize Timer Interrupt Controller Settings */
    InitializeInterruptController();
    /* Enable the peripheral */
    T2CONbits.TON = 1;    
    T3CONbits.TON = 1;          

}

void InitializeInterruptController(void)
{
    // Set the interrupt priority to 2
    IPC3bits.T3IP=2;
    // Enable interrupts from Timer 
    IEC0bits.T3IE=1;
    // Reset interrupt flag
    IFS0bits.T3IF=0;
    /* Set Interrupt Controller for multi-vector mode */
    INTCONSET=_INTCON_MVEC_MASK;
    /* Enable Interrupt Exceptions */
    // set the CP0 status IE bit high to turn on interrupts globally
    __builtin_enable_interrupts();
}