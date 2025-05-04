#include<xc.h>
#include<stdio.h> 
#include<math.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

int RH;
float T;

void delay_ms(int cnt);


void initLCD();
void instCtrl(unsigned char INST);
void dataCtrl(unsigned char DATA);
void dispRH();
void dispT();
void init_I2C_Master(void);
void I2C_Wait(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_RepeatedStart(void);
void I2C_Send(unsigned char data);
unsigned char I2C_Receive(unsigned char ack);

void main(void) {
	int res = (int)(pow(2,14));
	unsigned int RH_temp = 0x0000, T_temp = 0x0000;
	unsigned char temp = 0x00;
	float rh, t;
	TRISB = 0x00;	
	TRISD = 0x00;	
	PORTB = 0x00;
	PORTD = 0x00;
	init_I2C_Master(); 
	initLCD();
	instCtrl(0x80); // Line 1
   	
    dataCtrl('H');
    dataCtrl('u');
    dataCtrl('m');
    dataCtrl('i');
    dataCtrl('d');
	dataCtrl('i');
    dataCtrl('t');
    dataCtrl('y');
    dataCtrl(':');
	
	 instCtrl(0xC0); // Line 2
   
    dataCtrl('T');
    dataCtrl('e');
    dataCtrl('m');
    dataCtrl('p');
    dataCtrl('e');
    dataCtrl('r');
    dataCtrl('a');
    dataCtrl('t');
    dataCtrl('u');
    dataCtrl('r');
    dataCtrl('e');
    dataCtrl(':');
	
	for(;;)
	{
		
		
		I2C_Start(); 
		I2C_Send(0x80); 
		I2C_Send(0xE5);
		I2C_RepeatedStart();	
		I2C_Send(0x81); 
		RH_temp = I2C_Receive(1); 
		temp = I2C_Receive(0); 
		I2C_Stop(); 
		delay_ms(200); 
		
			
		RH_temp = RH_temp << 6; 
		temp = temp >> 2; 
		RH_temp = RH_temp | temp; 
		
		rh = (float)(-6+(125*((float)RH_temp/(float)res)));
		RH = (int)(rh);
		
		// ACK POLLING
		I2C_Start(); 
		I2C_Send(0x80); 
		I2C_Send(0xE3); 
		I2C_Stop();
		delay_ms(200);
		
		
		temp = 0x00;	
		I2C_Start();
		I2C_Send(0x80); 
		I2C_Send(0xE3);
		I2C_RepeatedStart();
		I2C_Send(0x81);
		T_temp = I2C_Receive(1); 
		temp = I2C_Receive(0); 
		I2C_Stop(); 
		delay_ms(200); 
		
		T_temp = T_temp << 6; 
		temp = temp >> 2; 
		T_temp = T_temp | temp;

		t = (float)(-46.85+(175.72*((float)T_temp/(float)res)));
		T = t;

		// ACK POLLING
		I2C_Start(); 
		I2C_Send(0x80);
		I2C_Send(0xE5); 
		I2C_Stop();
		delay_ms(200);

		dispRH();
		dispT();
	}
}
void delay_ms(int cnt) {
	int i, j;
	for (i = cnt; i != 0; i--); 
	for (j = 0; j < 5000; j++);
}


// function definitions for the LCD
void instCtrl(unsigned char INST) {
	PORTD = INST;
	RB0 = 0;
	RB1 = 0;
	RB2 = 1; 
	delay_ms(1);
	RB2 = 0;
}
void initLCD() {
	delay_ms(1);
	instCtrl(0x38); 
	instCtrl(0x01); 
	instCtrl(0x06); 
	instCtrl(0x0E); 
}

void dataCtrl(unsigned char DATA) {
 	PORTD = DATA;
	RB0 = 1;	
	RB1 = 0;
	RB2 = 1;    
	delay_ms(5); 
	RB2 = 0;   
}

// function definitions for displaying to the LCD
void dispRH() {
   	
   instCtrl(0x89);
    char val[4];
	val[2] = ' ';
	val[3] = ' ';
    sprintf(val, "%d", RH);
   
    dataCtrl(val[0]);
    dataCtrl(val[1]);
    dataCtrl(val[2]);
    dataCtrl('%');
}

void dispT() {
   
   instCtrl(0xCC);
    char val[8]; // bigger buffer
    sprintf(val, "%.1f", T); // 1 decimal place
   
    for (int i = 0; val[i] != '\0'; i++) {
        dataCtrl(val[i]);
    }
	dataCtrl(' ');
    dataCtrl('C');
}

// function definitions for I2C_master_mode
void init_I2C_Master(void){
	TRISC3 = 1; 
	TRISC4 = 1; 
	SSPCON = 0x28; 
	SSPCON2 = 0x00; 

	SSPSTAT = 0x00; 
	SSPADD = 0x09; 
}

void I2C_Wait(void)
{
/* wait until all I2C operation are finished*/
while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
}

void I2C_Start(void){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable start condition */
	SEN = 1;
}

void I2C_Stop(void){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable stop condition */
	PEN = 1;
}

void I2C_RepeatedStart(void){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable repeated start */
	RSEN = 1; 
}

void I2C_Send(unsigned char data){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* write data to buffer and transmit */
	SSPBUF = data;
}

unsigned char I2C_Receive(unsigned char ack){
	unsigned char temp;
	I2C_Wait(); 
	RCEN = 1; 
	I2C_Wait(); 
	temp = SSPBUF; 
	I2C_Wait();
	ACKDT = (ack)?0:1; 
	ACKEN = 1; 
	return temp;
}