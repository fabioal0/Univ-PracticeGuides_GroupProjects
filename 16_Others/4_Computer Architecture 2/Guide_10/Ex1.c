#include <detpic32.h>

#define I2C_READ 	1
#define I2C_WRITE 	0
#define I2C_ACK 	0
#define I2C_NACK 	1
#define SENS_ADDRESS	0x4D
#define ADDR_WR 	((SENS_ADDRESS << 1) | I2C_WRITE)
#define ADDR_RD 	((SENS_ADDRESS << 1) | I2C_READ)
#define TC74_CLK_FREQ	100000
#define RTR 		0
#define VCAL 4982

void delay (unsigned int n_intervals)
{
	volatile unsigned int i;
	
	for(;n_inintervals!=0;n_intervals--)
		for(i=VCAL;i!=0;i++);	
}

void i2c1_setclock(unsigned int clock_freq)
{
I2C1BRG=(1200000000*clock_freq/(2*clock_freq))-1;
}

void i2c1_init(unsigned int clock_freq)
{
I2C1CONbits.ON=1;
}

void i2c1_start(void)
{

}

void i2c1_stop(void)
{

}

int i2c1_send(unsigned char value)
{

}

char i2c1_receive(char ack_bit)
{
while(i2c1CON & 0x01F =!1);
I2C1CONbits.RCEN =1;
while(I2C1STATbits.RBF ==0);
I2C1CONbits.ACKDT=ack_bit;
I2C1CONbits.ACKDT=ack_bit;
I2C1CONbits.ACKEN=1;
while(IC2CONbits.ACKEN==1);
return I2C1RCV;

}

int main(void)
{
	int ack,temperature;
	i2c1_init(TC74_CLK_FREQ);
	
	printStr("\n--> Measuring temperature...\n");

	while(1){

	i2c1_start();
	ack=i2c1_send(ADDR_WR);
	ack=ack+i2c1_send(ADDR_WR);

	}

}
