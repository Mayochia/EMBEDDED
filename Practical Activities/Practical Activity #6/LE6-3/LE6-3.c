#include <xc.h>
#include<stdio.h> 


int checkInput(); 

void main() { 

	SPBRG = 0x19; 	// 9.6K baud rate @ FOSC=4MHz, asynchronous high speed 
					// (see formula in Table 10-1) 
	SYNC = 0;		
	SPEN = 1;		 
	TX9 = 0;		
	BRGH = 1;		
	TXEN = 1;		

	TRISB = 0xFF;	
	
	int i = 0;
	unsigned int string[16] = {'Y','o','u',' ','P','r','e','s','s','e','d',' ',' ','.','\r','\n'};
	
	while(1)  
	{ 
		if(RB4 == 1) {
			string[12] = checkInput();
			for(i = 0; i < 16; i++) {
				while(!TRMT);  
				TXREG = string[i]; 
			}
			while(RB4 == 1);	
		}
	} 
	
}

int checkInput() {
	int input, output;
	input = PORTB & 0x0F; 
	
	if (input == 0x00) output = '1';
	else if (input == 0x01) output = '2';
	else if (input == 0x02) output = '3';
	else if (input == 0x04) output = '4';
	else if (input == 0x05) output = '5';
	else if (input == 0x06) output = '6';
	else if (input == 0x08) output = '7';
	else if (input == 0x09) output = '8';
	else if (input == 0x0A) output = '9';
	else if (input == 0x0C) output = '*';
	else if (input == 0x0D) output = '0';
	else if (input == 0x0E) output = '#';

	return output;
}
