#include<xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

bit int_flag = 0;
bit count_flag = 0;
unsigned char key;

void delay(int num) {

	int flags = 0;
	
	while (flags < num) {
		if(count_flag) {
			count_flag = 0;
			flags++;
		}
	}
}

void interrupt ISR() {
	
	GIE = 0;
	
	if(INTF) {
		
		INTF = 0;
		int_flag ^= 1;
		key = PORTD & 0x0F;
	}
	else if(TMR0IF) {
		TMR0IF = 0;
		count_flag = 1;
	}
	GIE = 1;
	
}



void main(){
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0xFF;
	
	OPTION_REG = 0xC4;
	INTE = 1;
	INTF = 0;
	
	TMR0IE = 1;
	TMR0IF = 0;
	
	
	GIE = 1;
	
	
	PORTC = 0x00;
	
	while(1) {
	
		if(int_flag == 1) {
			if (key == 0x00) {PORTC = 0x01;}
			else if (key == 0x01) {PORTC = 0x02;}
			else if (key == 0x02) {PORTC = 0x03;}
			else if (key == 0x04) {PORTC = 0x04;}
			else if (key == 0x05) {PORTC = 0x05;}
			else if (key == 0x06) {PORTC = 0x06;}
			else if (key == 0x08) {PORTC = 0x07;}
			else if (key == 0x09) {PORTC = 0x08;}
			else if (key == 0x0A) {PORTC = 0x09;}
			int_flag = 0;
		}
		delay(98);
	 
		if(PORTC == 0x09) {
			PORTC = 0x00;
		}
		else {
			PORTC++;
		}
	}
	
}
