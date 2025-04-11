#include <xc.h>
#include <stdio.h> 
#include <math.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

int ad_flag = 0;

void interrupt ISR(void) {
	GIE = 0; 		

	if(ADIF == 1) {	
		ADIF = 0;
		ad_flag = 1;	
	}
	
	GIE = 1; 
	
}

void delay(int cnt) { 
	while(cnt--); 
} 
	
void main(void) { 
	int d_value = 0; 
	TRISA = 0xFF; 	
	TRISB = 0x00; 
	PORTB = 0x00; 	
	ADCON1 = 0x80; 	 
				
	ADCON0 = 0x41; 	
				
	ADIE = 1;
	ADIF = 0;
	PEIE = 1;	
	GIE = 1;	
	
	delay(1000);
	GO = 1;

	int d_value = 0;
	int decVal = 0;		
	int wnVal = 0;		

	while(1) { 
		if(ad_flag) {	
			
			ad_flag = 0;	
			
			
			
			d_value = ADRESH; 			
			d_value = d_value << 8; 	 
			d_value = d_value | ADRESL;  			
			
			wnVal = round(d_value / 205);			
			decVal = round((d_value % 205) / 20.48);	
			if (decVal == 0x0A) {					
				decVal = 0;						
				wnVal++;						
			}
	
			wnVal = wnVal << 4;		
			d_value = wnVal | decVal;		
			PORTB = d_value;		

			delay(1000);
			GO = 1; 			
		}
	
	} 
} 
