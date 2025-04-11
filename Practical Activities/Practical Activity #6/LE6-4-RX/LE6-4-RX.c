#include <xc.h>

void main(void) 
{ 
	SPBRG = 0x19;	// 9.6K baud rate @ FOSC=4MHz, asynchronous high speed 
					// (see formula in Table 10-1) 
	SYNC = 0; 		
	SPEN = 1; 		
	RX9 = 0; 		
	BRGH = 1; 		
	CREN = 1; 		
	TRISB = 0x00; 	
	PORTB = 0x00; 	
	
	unsigned int data, output;

	while(1) {		
		while(!RCIF); 
		data = RCREG;
		
		if(data == '0') output = 0x3F;	
		else if(data == '1') output = 0x06;
		else if(data == '2') output = 0x5B;	
		else if(data == '3') output = 0x4F;	
		else if(data == '4') output = 0x66;	
		else if(data == '5') output = 0x6D;	
		else if(data == '6') output = 0x7D;	
		else if(data == '7') output = 0x07;	
		else if(data == '8') output = 0x7F;	
		else if(data == '9') output = 0x6F;	
		else output = 0x00;	
		
		PORTB = output; 
	} 
} 
