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
bit btn_stat = 0;

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
		btn_stat ^= 1;
	}
	else if(T0IF) {
		T0IF = 0;
		count_flag = 1;
	}
	GIE = 1;
	
}



void main(){
	TRISA = 0x00; // set 1st bit of PORTA as input
	TRISB = 0xFF; // set all bits of PORTB as output
	
	OPTION_REG = 0x04;
	INTE = 1;
	INTF = 0;
	
	T0IE = 1;
	T0IF = 0;
	
	GIE = 1;
	
	
	PORTA =0x00;
	
	while(1) {
		if(btn_stat == 1){
			PORTA = 0x01;
			delay(50); 
			PORTA = 0x00;
			delay(10); 
		}
		else {

		}
	}
	
}
