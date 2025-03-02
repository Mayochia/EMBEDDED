#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay (int cnt) {
	int i, j;
	for (i = cnt; i != 0; i--); // loop until i=0
	for (j = 0; j < 5000; j++); // loop until j=4999
}

void dataCtrl( unsigned char DATA) {
	PORTB = DATA; // load data to PORTB
	RC0 = 1;	// set RS to 1 (data reg)
	RC2 = 0;	// set RW to 0 (write)
	RC1 = 1;	// set E to 1
	delay(1);	// call delay
	RC1 = 0;	// set E to 0 (strobe)
}

void instCtrl (unsigned char INST) {
	PORTB = INST;	 // load instruction to PORTB
	RC0 = 0;	// set RS to 0 (instruction reg)
	RC2 = 0;	// set RW to 0 (write)
	RC1 = 1;	// set E to 1
	delay(1);	// call delay
	RC1 = 0;	// set E to 0 (strobe)
}	
	
	
void initLCD() {
	delay(1);
	instCtrl(0x38); // set function to 8 bits, 2 line display
	instCtrl(0x01); // Display clear
	instCtrl(0x06); // entry mode set: increase, display is not shifted
	instCtrl(0x0E); // display on, cursor off, blink off
}

/*void display(unsigned char* msg){
	int i;
	for(i=0;msg[i]!='\0';i++){
		dataCtrl(msg[i]);
	}
} */

void main(){
	TRISB = 0x00;
	TRISC = 0x00;
	initLCD();
	instCtrl(0x80);
	dataCtrl('1');
	
	while(1){}

	

	
}