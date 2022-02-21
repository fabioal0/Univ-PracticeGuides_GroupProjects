/** LOCAL MACROS **************************************************************/

#define PORTA_PORTA3_MASK  0x0008    
#define TRISA_TRISA3_MASK  0x0008    
#define OC_OC1_MASK  0x00000040    
#define T_T2_MASK  0x00000100    


// TIMER PWM VALUES
#define PWM_PERIOD_PS_VALUE 0
#define PWM_PERIOD_VALUE 10000
#define PWM_TON_VALUE 10


// LED_LD3
#define TRIS_OUT()  TRISACLR = TRISA_TRISA3_MASK;
#define TRIS_IN()   TRISASET = TRISA_TRISA3_MASK;
#define LED_SET()   PORTASET = PORTA_PORTA3_MASK;
#define LED_CLR()   PORTACLR = PORTA_PORTA3_MASK;
#define LED_INV()   PORTAINV = PORTA_PORTA3_MASK;


// OC
# define OC_CLR()   IFS0CLR = OC_OC1_MASK;    
# define OC_SET()   IFS0SET = OC_OC1_MASK;    
# define OC_INV()   IFS0INV = OC_OC1_MASK;    


// TIMER B
# define T_CLR()    IFS0CLR = T_T2_MASK;
# define T_SET()    IFS0SET = T_T2_MASK;
# define T_INV()    IFS0INV = T_T2_MASK;


// FUNCTIONS
void InitializeLed(void);
void InitializeTimer(void);    
void InitializeInterruptController(void);
void SetOC1(void);