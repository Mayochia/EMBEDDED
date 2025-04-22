#include <xc.h>

void delay_ms(int cnt);
void init_I2C_Slave(unsigned char slave_add);

void interrupt ISR(void)
{
	GIE = 0; 		// disable all unmasked interrupts (INTCON reg) 
	unsigned char temp;
	CKP = 0; // hold clock low (SSPCON reg)
	if(WCOL || SSPOV) // check if overflow or data collision (SSPCON reg)
	{
		temp = SSPBUF; // read SSPBUF to clear buffer
		WCOL = 0; // clear data collision flag
		SSPOV = 0; // clear overflow flag
		CKP = 1; // release clock (SSPCON reg)
	}
	/* check operation if “write” or "read"*/
	if(!SSPSTATbits.D_nA && !SSPSTATbits.R_nW) // write to slave
	{
		temp = SSPBUF; // read SSPBUF to clear buffer
		while(!BF); // wait until receive is complete (SSPSTAT reg)
		/* read data from SSPBUF */
		PORTB = SSPBUF; // write data from master to PORTB
		CKP = 1; // release clock (SSPCON reg)
	}
	else if(!SSPSTATbits.D_nA && SSPSTATbits.R_nW) // read from slave
	{
		temp = SSPBUF; // read SSPBUF to clear buffer
		BF = 0; // clear buffer status bit (SSPSTAT reg)
		/* send data by writing to SSPBUF */
		SSPBUF = PORTD; // send data from PORTD to master
		CKP = 1; // release clock (SSPCON reg)
		while(BF); // wait until transmit is complete (SSPSTAT reg)
	}
	SSPIF = 0; // clear interrupt flag
	GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

void main() { 

	TRISB = 0x00; // set all bits in PORTB to output
	PORTB = 0x00; // all LEDs in PORTB are off
	TRISD = 0xFF; // set all bits in PORTD to input
	init_I2C_Slave(0x10); // initialize I2C as slave with address 0x10
	for(;;){
	}
}

void delay_ms(int cnt) {
	int i, j;
	for (i = cnt; i != 0; i--); // loop until i=0
	for (j = 0; j < 5000; j++); // loop until j=4999
}

void init_I2C_Slave(unsigned char slave_add){
	TRISC3 = 1; // set RC3 (SCL) to input
	TRISC4 = 1; // set RC4 (SDA) to input
	SSPCON = 0x36; // SSP enabled, SCK release clock
	// I2C slave mode 7-bot address
	SSPCON2 = 0x01; // start condition idle, stop condition idle
	// receive idle
	SSPSTAT = 0x80; // slew rate control disabled
	SSPADD = slave_add; // 7-bit slave address
	SSPIE = 1; // enable SSP interrupt
	SSPIF = 0; // clear interrupt flag
	PEIE = 1; // enable peripheral interrupt
	GIE = 1; // enable unmasked interrupt
}
