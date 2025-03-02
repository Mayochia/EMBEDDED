#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main(){
	TRISB = 0xFF;
	TRISC = 0x00;
	unsigned char key;
	
	if (RB4){
			key = PORTB & 0x0F;
		} else{
			PORTC = 0x00;
		}
	
	while(RB4){
		
		switch(key){
			case 0x00: PORTC = 0x01; break;
			case 0x01: PORTC = 0x02; break;
			case 0x02: PORTC = 0x03; break;
			case 0x04: PORTC = 0x04; break;
			case 0x05: PORTC = 0x05; break;
			case 0x06: PORTC = 0x06; break;
			case 0x08: PORTC = 0x07; break;
			case 0x09: PORTC = 0x08; break;
			case 0x0A: PORTC = 0x09; break;
			case 0x0C: PORTC = 0x0A; break;
			case 0x0D: PORTC = 0x0B; break;
			case 0x0E: PORTC = 0x0C; break;
			default: PORTC = 0x00; break;
		}
	}
	
/*	if(RB4){
		key = PORTB & 0x0F;
	} else {
		PORTC = 0x00;
	}
	
	while(RB4){		
			switch(key){
			case 0x00:
			case 0x01:
			case 0x02:
			case 0x04:
			case 0x05:
			case 0x06:
			case 0x07:
			case 0x09:
			case 0x0A:
			case 0x0C:
			case 0x0D:
			case 0x0E: PORTC = 0x01; break;
			default: PORTC = 0x00; break;
		}
		
	}*/

}