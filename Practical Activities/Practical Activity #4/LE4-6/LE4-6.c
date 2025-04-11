#include<xc.h>
#include<stdio.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF 

int period;
unsigned char period_msg[] = "Period: ";
unsigned char ms[] = "ms";


void interrupt ISR() {
	GIE = 0;
	if (CCP1IF==1) 
	{
	    CCP1IF = 0; 
		TMR1 = 0; 
		period = CCPR1/1000; 
		period = period*8; 

		RA0 = RA0 ^ 1;
	}
	GIE = 1;
}

void delay(int cnt);
void initLCD();
void instCtrl(unsigned char INST);
void dataCtrl(unsigned char DATA);
void dispPeriod();

void delay(int cnt) {
    int i, y;
    for (i = cnt; i != 0; i--) {
        for (y = 0; y < 256; y++) {} 
    }
}

void instCtrl(unsigned char INST) {
	PORTB = INST;
	RD0 = 0;
	RD2 = 0;
	RD1 = 1; 
	delay(1);
	RD1 = 0;
}

void initLCD(){
	delay(1);
	instCtrl(0x38);
	instCtrl(0x01);
	instCtrl(0x06);
	instCtrl(0x0E);
}

void dataCtrl(unsigned char DATA) {
 	PORTB = DATA;
	RD0 = 1;
	RD2 = 0;	
	RD1 = 1;    
	delay(5); 
	RD1 = 0;   
}

void print(const unsigned char *line){	
	int i =0;
	for(i = 0; line[i]!='\0';i++){
		dataCtrl(line[i]);
	}
}

void print_val(){
	instCtrl(0x80); 
    
	print(period_msg);
	
	char val[4];
    val[3] = ' ';
    sprintf(val, "%d", period);
   
    dataCtrl(val[0]);
    dataCtrl(val[1]);
    dataCtrl(val[2]);
    print(ms);
}

void main(void) {
	
	ADCON1 = 0x06; 
	TRISA = 0x00;
	TRISB = 0x00;	
    TRISC = 0x04; 
	TRISD = 0x00;
	 	
	T1CON = 0x30;	
	CCP1CON = 0x05;
	CCP1IE = 1; 
	CCP1IF = 0;
	PEIE = 1; 
	GIE = 1; 	
	TMR1ON = 1;
	 
	initLCD();
		
	while(1) {
	    print_val();
	}
}