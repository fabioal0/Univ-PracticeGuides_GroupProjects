#include <stdio.h>
#include <stdlib.h>
#include <proc/p32mx795f512l.h>
#include <sys/attribs.h>
#include <xc.h>
#include "main.h"

volatile uint32_t pwm_ton_value = 10;
volatile uint32_t UpDown = 0x0;
volatile uint32_t count = 0;

int main(int argc, char** argv) {

    InitializeLed();
    InitializeTimer();
    
    while (1){
    }
    
    return (EXIT_SUCCESS);
}

void __ISR(_TIMER_3_VECTOR,IPL7AUTO) tmr3_isr(void){

    OC1RS = pwm_ton_value;

    if(UpDown){
        pwm_ton_value--;
    }
    else{
        pwm_ton_value++;
    }
    if(pwm_ton_value==0 || pwm_ton_value==PWM_PERIOD_VALUE){
        UpDown^=0x1;
    }
    
    T1_CLR();
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
    T3CONbits.ON=0;
    T3CONbits.TCS=0;
    T3CONbits.TCKPS = PS_VALUE;
    PR3 = PERIOD_VALUE;     
    TMR3 = 0;     
    
    T2CONbits.ON=0;
    T2CONbits.TCS=0;
    T2CONbits.T32 = 0;
    T2CONbits.TCKPS = PWM_PERIOD_PS_VALUE;
    PR2 = PWM_PERIOD_VALUE;     
    TMR2 = 0;     
    InitializeInterruptController();
    SetOC1();
    T3CONbits.TON = 1;    
    T2CONbits.TON = 1;    
}

void InitializeInterruptController(void)
{
    IPC2bits.T2IP=7;
    IEC0bits.T2IE=1;
    IFS0bits.T2IF=0;
    
    IPC3bits.T3IP=7;
    IEC0bits.T3IE=1;
    IFS0bits.T3IF=0;
    
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