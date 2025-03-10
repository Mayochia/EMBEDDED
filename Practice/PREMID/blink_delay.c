#include <xc.h>

unsigned char key;
unsigned char count_flag;
unsigned char btn_flag;

void interrupt ISR() {
	
	GIE = 0;
	
	if(INTF) {
		INTF = 0;
		btn_flag = 1;
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
	for (j = 0; j < 1000; j++); 
}

void dataCtrl(unsigned char DATA){
	PORTD=DATA;
	RB4=1;		//RS
	RB6=0;		//RW
	RB5=1;		//E
	delay_lcd(200);
	RB5=0;
}

void instCtrl(unsigned char INST){
	PORTD=INST;
	RB4=0;
	RB6=0;
	RB5=1;
	delay_lcd(200);
	RB5=0;	
}

void initLCD(){
	delay_lcd(1);
	instCtrl(0x38);
	instCtrl(0x01);
	instCtrl(0x06);
	instCtrl(0x0E);
}
	
void main(){
	int MSB = 0;
	int LSB = 0;
	int speed = 0;
	unsigned char mode;
	
	TRISB = 0x0F;
	TRISC = 0xFF; 
	TRISD = 0x00;
	OPTION_REG = 0xC4;
	INTE = 1;
	INTF = 0;
	TMR0IE = 1;
	TMR0IF = 0;
	GIE = 1;
	
	initLCD();
	instCtrl(0xC8);		
	dataCtrl('0');
	instCtrl(0xC9);		
	dataCtrl('0');
	
	while(1){
		if(btn_flag == 1) {
			key = PORTC & 0x0F;
			
			switch(key){
				case 0x0C:
					mode = 0x0C; //*
					break;
				case 0x0E:
					mode = 0x0E; //#
					break;
				case 0x00:
					speed = 12; //1
					break;
				case 0x01:
					speed = 24;	//2
					break;
				case 0x02:
					speed = 37;	//3
					break;
				case 0x04:
					speed = 49;	//4
					break;
				case 0x05:
					speed = 61; //5
					break;
				case 0x06:
					speed = 73;	//6
					break;
				case 0x08:
					speed = 85;	//7
					break;
				case 0x09:
					speed = 98;	//8
					break;
				case 0x0A:
					speed = 110;	//9
					break;
				case 0x0D:
					speed = 122;	//0
					break;	
			}
			btn_flag = 0;
		}

		
		if (mode == 0x0C) { // Decrement
		    if (MSB == 0 && LSB == 0) {
		        MSB = 9;
		        LSB = 9;
		    } else if (LSB == 0) {
		        MSB = MSB - 1;
		        LSB = 9;
		    } else {
		        LSB = LSB - 1;
		    }
		    
		    instCtrl(0xC8);        
		    dataCtrl(MSB + '0');
		    instCtrl(0xC9);        
		    dataCtrl(LSB + '0');
		    delay(speed);
		}

		if (mode == 0x0E) { // Increment
		    if (MSB == 9 && LSB == 9) {
		        MSB = 0;
		        LSB = 0;
		    } else if (LSB == 9) {
		        LSB = 0;
		        MSB = MSB + 1;
		    } else {
		        LSB = LSB + 1;
		    }
		
		    instCtrl(0xC8);        
		    dataCtrl(MSB + '0');
		    instCtrl(0xC9);        
		    dataCtrl(LSB + '0');
		    delay(speed);
		}		
	}
}