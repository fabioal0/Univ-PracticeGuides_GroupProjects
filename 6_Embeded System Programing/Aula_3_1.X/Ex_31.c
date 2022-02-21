/** INCLUDES ******************************************************************/
#include "config_bits.h"
#include "main.h"
#include <xc.h>

uint32_t pwm_ton_value = 80;

int main(int argc, char** argv) {
    
    InitializeLed();
    InitializeTimer();

    while (1) {
    
        OC1RS = pwm_ton_value;

        if(IFS0bits.OC1IF){
            LED_CLR();
            OC_CLR();
        }
        else if(IFS0bits.T2IF){
            LED_SET();
            T_CLR();
        }
    }
    return (EXIT_SUCCESS);
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
    SetOC1();
    T2CONbits.TON = 1;           
}

void SetOC1(void){
    OC1CONbits.ON=0;
    OC1CONbits.OCM = 5;
    OC1CONbits.OCTSEL = 0;
    OC1RS = PWM_TON_VALUE;
    OC1CONbits.ON=1;
}
