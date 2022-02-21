#include <stdio.h>
#include <stdlib.h>
#include <proc/p32mx795f512l.h>
#include <sys/attribs.h>
#include <xc.h>
#include "main.h"

uint32_t pwm_ton_value = 10;

int main(int argc, char** argv) {

    InitializeLed();
    InitializeTimer();
    
    while (1){
    OC1RS = pwm_ton_value;
    }
    
    return (EXIT_SUCCESS);
}

void __ISR(_TIMER_2_VECTOR,IPL7AUTO) tmr2_isr(void){
    LED_SET();
    T_CLR();
}

void __ISR(_OUTPUT_COMPARE_1_VECTOR, IPL7AUTO) OC1_IntHandler (void){
    LED_CLR();
    OC_CLR();
}          

void InitializeLed(void){
    TRIS_OUT(); 
    LED_SET();
}

void InitializeTimer(void)
{
    T2CONbits.ON=0;
    T2CONbits.TCS=0;
    T2CONbits.T32 = 0;
    T2CONbits.TCKPS = PWM_PERIOD_PS_VALUE;
    PR2 = PWM_PERIOD_VALUE;     
    TMR2 = 0;     
    InitializeInterruptController();
    SetOC1();
    T2CONbits.TON = 1;    
}

void InitializeInterruptController(void)
{
    IPC2bits.T2IP=7;
    IEC0bits.T2IE=1;
    IFS0bits.T2IF=0;
    
    IPC1bits.OC1IP=7;
    IEC0bits.OC1IE=1;
    IFS0bits.OC1IF=1;
    
    INTCONSET=_INTCON_MVEC_MASK;
    __builtin_enable_interrupts();
}

void SetOC1(void){
    OC1CONbits.ON=0;
    OC1CONbits.OCM = 5;
    OC1CONbits.OCTSEL = 0;
    OC1RS = PWM_TON_VALUE;
    OC1CONbits.ON=1;
}