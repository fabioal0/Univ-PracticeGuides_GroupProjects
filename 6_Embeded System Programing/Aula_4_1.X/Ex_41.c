#include "config_bits.h"
#include "main.h"
#include "uart.h"

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <stdint.h>

#define PBCLOCK 40000000L

void termInit(void)
{
  PutChar(0x1b);
  PutChar('[');
  PutChar('2');
  PutChar('J');

  PutChar(0x1b);
  PutChar('[');
  PutChar('H');
}

void InitializeTimer(void)
{ 
    T2CONbits.ON=0;
    T2CONbits.TCS=0;
    T2CONbits.T32 = 0;
    T2CONbits.TCKPS = 5;
    PR2 = 62500;     
    TMR2 = 0;     
    T2CONbits.TON = 1;           
}

int main(int argc, char** argv) {
    
    InitializeTimer();
    
    uint32_t res=0;         // Generic config.
    
    
    // Configuring Analog Port Pins
    TRISBbits.TRISB0=1;     // AN0 in input mode 
    AD1PCFGbits.PCFG0=0;    // AN0 as analog input
    
    // Selecting the Analog Inputs to the ADC Multiplexers
    AD1CHSbits.CH0SA=0;     // Select AN0 as input for A/D converter  
   
    // Selecting the Format of the ADC Result
    AD1CON1bits.FORM=0;     // Integer 16 bit output format

    // Selecting the Sample Clock Source
    AD1CON1bits.SSRC=0;     // MANUAL CONVERSION

    // Selecting the Voltage Reference Source
    AD1CON2bits.VCFG=0;     // VR+=AVdd; VR-=AVss

    // Selecting the Scan Mode
    // CSCNA bit = 0
    
    // Setting the Number of Conversions per Interrupt
    AD1CON2bits.SMPI=0;     // Number (+1) of consecutive coversions, stored in buffer
    
    // Buffer Fill Mode
    AD1CON2bits.BUFM=0;     // The complete 16-word buffer is used for all conversion sequences
    
    // Selecting the ADC Conversion Clock Source and Prescaler
    AD1CON3bits.ADRC=1;     // ADC uses internal RC clock  

    // Acquisition Time Considerations
    AD1CON3bits.SAMC=16;    // Sample time is 16TAD ( TAD = 100ns) min 83.33
    
    // Stop Conversion Sequence bit (when the first ADC interrupt is generated)
    AD1CON1bits.CLRASAM=1; 
    
    // Enable module
    AD1CON1bits.ON=1;       // Enable A/D module 

    char message[17];
    int i=0;
    int count=0;

    UartInit(PBCLOCK, 115200);
    termInit();
    
    while(1){              
        
        IFS1bits.AD1IF=0;   // Reset interrupt flag    
        
        AD1CON1bits.SAMP=1;
        
        while(count!=9){
            if(IFS0bits.T2IF) count++;
            IFS0bits.T2IF=0;
        }
        count = 0;
        
        AD1CON1bits.SAMP=0;
        
        while(! AD1CON1bits.DONE);      // wait until conversion is done
        
        // Convert to 0..3.3V (in mV)
        res=(ADC1BUF0*3300)/ 1023;      // Output result
                
        sprintf(message,"Voltage: %d \r\n", res);
        
        for(i=0;i<17;i++){
          PutChar(message[i]);
        }
        
    }
    return (EXIT_SUCCESS);
}
