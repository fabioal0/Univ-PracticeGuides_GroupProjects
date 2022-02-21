#include <stdio.h>
#include <stdlib.h>
#include <proc/p32mx795f512l.h>
#include <sys/attribs.h>
#include <xc.h>
#include "main.h"

#define value 3
#define value1 125000

volatile uint32_t count = 0;

int main(int argc, char** argv) {

    InitializeLed();
    InitializeTimer();
    
    while (1);
    
    return (EXIT_SUCCESS);
}

void __ISR(_TIMER_2_VECTOR,IPL7AUTO) tmr2_isr(void){
    LED_INV();
    IFS0bits.T2IF=0;
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
    // 32 bit timer operation
    T2CONbits.T32 = 0;
    // Pre-Scale
    T2CONbits.TCKPS = PS_VALUE;
    // Set T2 period 
    PR2 = COMP_VALUE;     
    // Clear counter
    TMR2 = 0;     
    /* Initialize Timer Interrupt Controller Settings */
    InitializeInterruptController();
    /* Enable the peripheral */
    T2CONbits.TON = 1;    
}

void InitializeInterruptController(void)
{
    // Set the interrupt priority to 2
    IPC2bits.T2IP=7;
    // Enable interrupts from Timer 
    IEC0bits.T2IE=1;
    // Reset interrupt flag
    IFS0bits.T2IF=0;
    /* Set Interrupt Controller for multi-vector mode */
    INTCONSET=_INTCON_MVEC_MASK;
    /* Enable Interrupt Exceptions */
    // set the CP0 status IE bit high to turn on interrupts globally
    __builtin_enable_interrupts();
}