#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF


const unsigned char coke[] = "[1] Coke";
const unsigned char coke_L[] = "[2] Coke Large";
const unsigned char sprite[] = "[3] Sprite";
const unsigned char sprite_L[] = "[4] Sprite Large";
const unsigned char dispense[] = "Dispensing...";
const unsigned char emergency[] = "Emergency stop...";

bit btn_flag = 0;
bit count_flag = 0;

void interrupt ISR() {
	
	GIE = 0;
	
	if(INTF) {
		INTF = 0;
		btn_flag ^= 1;
	}
	else if(TMR0IF) {
		TMR0IF = 0;
		count_flag = 1;
	}
	GIE = 1;
	
}

void delay(int num) {

	int flags = 0;
	
	while (flags < num) {
		if(count_flag) {
			count_flag = 0;
			flags++;
		}
	}
}

void delay_lcd (int cnt) {
	int i, j;
	for (i = cnt; i != 0; i--);
//	for (j = 0; j < 1000; j++); 
}

void dataCtrl(unsigned char DATA){
	PORTC=DATA;
	RB4=1;
	RB6=0;
	RB5=1;
	delay_lcd(200);
	RB5=0;
}

void instCtrl(unsigned char INST){
	PORTC=INST;
	RB4=0;
	RB6=0;
	RB5=1;
	delay_lcd(200);
	RB5=0;	
}

void initLCD(){
	delay_lcd(200);
	instCtrl(0x38);
	instCtrl(0x01);
	instCtrl(0x06);
	instCtrl(0x0E);
}

void print(const unsigned char *line){
	int i =0;
	for(i = 0; line[i]!='\0';i++){
		dataCtrl(line[i]);
	}
}

void display_emergency(){
	instCtrl(0xC3);
	print(emergency);
	int j;
	for(j = 5; j >= 1; j--){
		instCtrl(0x9A);
		dataCtrl(j + '0');  
		dataCtrl('s');
		delay(122);
	}
	btn_flag = 0;	
}

void display_dispense_reg(){
	instCtrl(0x01);
	instCtrl(0xC3);  // Set cursor position
	print(dispense); // Print "Dispensing..."
	int i;
	for(i = 3; i >= 1; i--){
		instCtrl(0x9A);  // Move cursor back
		dataCtrl(i + 0x30);  // Convert int to ASCII
		dataCtrl('s');  // Print "s" for seconds
		delay(122);
		if(btn_flag){
			i=0;
			display_emergency();
		}
	}

}

void display_dispense_large(){
	instCtrl(0x01);
	instCtrl(0xC3);
	print(dispense);
	int i;
	for(i = 5; i >= 1; i--){
		instCtrl(0x9A);  // Move cursor back
		dataCtrl(i + 0x30);  // Convert int to ASCII
		dataCtrl('s');  // Print "s" for seconds
		delay(122);
		if(btn_flag){
			i=0;
			display_emergency();
		}
	}
}



void display_menu(){
	initLCD();
	instCtrl(0x80);
	print(coke);
	instCtrl(0xC0);
	print(coke_L);
	instCtrl(0x94);
	print(sprite);
	instCtrl(0xD4);
	print(sprite_L);
}
   
void main(){
	TRISB=0x0F;
	TRISC=0x00;
	TRISD=0xFF;
	OPTION_REG = 0xC4;
	INTE = 1;
	INTF = 0;
	TMR0IE = 1;
	TMR0IF = 0;
	GIE = 1;
	unsigned char key;
	int i=0;
	
	initLCD();
	
	while(1){
		display_menu();
		while(!RD4){
			
		}
		while(RD4){
			key = PORTD & 0x0F; //masked inpput from keypad
			
			switch(key){
				case 0x00:
					display_dispense_reg();			
					break;
				case 0x01:				
					display_dispense_large();
					break;
				case 0x02: 
					display_dispense_reg();
					break;
				case 0x04: 
					display_dispense_large();
					break;
				default: 
					break;
					}
					
			}
		}
	}
