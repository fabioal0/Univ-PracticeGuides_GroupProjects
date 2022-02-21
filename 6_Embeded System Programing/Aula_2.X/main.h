/** LOCAL MACROS **************************************************************/

#define PORTA_PORTA3_MASK  0x0008    

// LED_LD3 (RG3)

#define LED       	PORTAbits.RA3
#define TRIS_LED  	TRISAbits.TRISA3
#define LED_SET()   PORTASET = PORTA_PORTA3_MASK;
#define LED_CLR()   PORTACLR = PORTA_PORTA3_MASK;
#define LED_INV()   PORTAINV = PORTA_PORTA3_MASK;

// TIMER

#define PS_VALUE 6
#define COMP_VALUE 125000

// FUNCTIONS
void InitializeLed(void);
void InitializeTimer(void);    