#include <xc.h>

unsigned char key;
unsigned char count_flag;
unsigned char btn_flag = 0;
unsigned char count[]="COUNT:";

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
	for (j = 0; j < 1000; j++); 
}

void dataCtrl(unsigned char DATA){
	PORTC=DATA;
	RB5=1;		//RS
	RB6=0;		//RW
	RB7=1;		//E
	delay_lcd(200);
	RB7=0;
}

void instCtrl(unsigned char INST){
	PORTC=INST;
	RB5=0;
	RB6=0;
	RB7=1;
	delay_lcd(200);
	RB7=0;	
}

void initLCD(){
	delay_lcd(1);
	instCtrl(0x38);
	instCtrl(0x01);
	instCtrl(0x06);
	instCtrl(0x0E);
}

void display_count_msg(unsigned char *msg){
	int i;
	for(i = 0; msg[i] != '\0'; i++){
		dataCtrl(msg[i]);
	}
}
	
void main(){
	
	int speed = 0;
	
	TRISB = 0x0F;
	TRISC = 0x00; 
	TRISD = 0xFF;
	OPTION_REG = 0xC4;
	INTE = 1;
	INTF = 0;
	TMR0IE = 1;
	TMR0IF = 0;
	GIE = 1;
	
	int MSB = 2;
	int LSB = 4;
	
	initLCD();
	display_count_msg(count);
	instCtrl(0xC0);		
	dataCtrl(MSB + '0');
	instCtrl(0xC1);		
	dataCtrl(LSB + '0');
	
	int direction = 0;

	while (1) {
		
        
        if(RD4){
	        instCtrl(0xC0);        
	        dataCtrl(MSB + '0');
	        instCtrl(0xC1);        
	        dataCtrl(LSB + '0');
        	key = PORTD & 0x0F;
        	
        	if (key == 0x0D){
        		btn_flag = 1;
        	}
        	
        	if (btn_flag == 0) {
				if (key == 0x0C){
					if (MSB >= 2 && LSB >= 4) {
	                LSB = 0;
	                MSB = 0;
	            } else if (LSB == 9) {
	                LSB = 0;
	                MSB += 1;
	            } else {
	                LSB += 1;
	            }
	  
			} else if (key == 0x0E){
					if (MSB == 0 && LSB == 0) {
		               LSB = 4;
		               MSB = 2;
		           } else if (LSB == 0) {
		               MSB -= 1;
		               LSB = 9;
		           } else {
		               LSB -= 1;
		           }
		           
				}
				
			instCtrl(0xC1);        
	        dataCtrl(LSB + '0');
	        instCtrl(0xC0);        
	        dataCtrl(MSB + '0');
			}
        }
        
       
	    
	            
	               
	    if (btn_flag == 1) {
	        if (MSB == 0 && LSB == 0) {
	                LSB = 4;
	                MSB = 2;
	            } else if (LSB == 0) {
	                MSB -= 1;
	                LSB = 9;
	            } else {
	                LSB -= 1;
	            }
			
	        instCtrl(0xC1);        
	        dataCtrl(LSB + '0');
	        instCtrl(0xC0);        
	        dataCtrl(MSB + '0');
	        delay(31);	        
	     }      
	
	}
}
