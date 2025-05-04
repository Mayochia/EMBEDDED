#include <xc.h>
#include <stdio.h> 

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF
#define _XTAL_FREQ 4000000

unsigned char temp = 0x00;
unsigned char rdata = 0x00;
bit rflag = 0;

void interrupt ISR(){
GIE = 0;
	if(RCIF){
	rdata = RCREG;
	rflag = 1;
	}
GIE = 1;
}


void main() { 
	
	SPBRG = 0x19; 	// 9.6K baud rate @ FOSC=4MHz, asynchronous high speed 
					// (see formula in Table 10-1) 
	SYNC = 0;		
	SPEN = 1;		
	TX9 = 0;		
	BRGH = 1;		
	TXEN = 1;		
	
	TRISA = 0xFF;
	TRISB = 0x00;
	TRISD = 0x00;
	ADCON1 = 0x06;
	PORTB = 0x00;	



	CREN = 1;
	RX9 = 0;
	RCIE = 1;
	RCIF = 0;
	GIE = 1;
	PEIE = 1;
	
	while(1) 
	{ 
		if(RA4 == 1){
			while(RA4);
			temp = PORTA & 0x0F;
			while(!TRMT);
			TXREG = temp;
			PORTD = (PORTD & 0x0F) | (temp << 4);
		}
		
		if(rflag){
			rflag = 0;
			PORTB = rdata;
		}	
	} 
	
}