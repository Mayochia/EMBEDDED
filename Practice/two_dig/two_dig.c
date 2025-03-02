#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

bit count_flag=0;
bit btn_flag=0;

void delay(int num)
{
    int flags = 0;
    
    while (flags < num)
    {
        if (count_flag)
        {
            count_flag = 0;
            flags++;
        }
    }
}

void interrupt ISR(){
	GIE = 0;
	if(INTF){
		INTF=0;
		btn_flag ^= 1;
	}else if (TMR0IF){
		TMR0IF=0;
		count_flag = 1;
	}
	
	GIE = 1;
}

void pause(){
	while(btn_flag==0){
	}
}

void main(){
	TRISB = 0x0F;
	TRISC = 0x00;
	TRISD = 0x00;
	INTE = 1;
	INTF = 0;
	TMR0IE = 1;
	TMR0IF = 0;
	GIE = 1;
	OPTION_REG = 0xC4;
	PORTC = 0x00;
	PORTD = 0x00;
	signed char j = 0;
	int i = 0;
	
	while(1){
		if(btn_flag == 1){
			if((PORTC <= 0x09 && PORTD <= 0x09)){
				i = 0;
				for(i = 0; i < 10; i++){
					PORTC = i;
					delay(24);
					if(btn_flag == 0){
						pause();
					} 
					if(i == 9){
						PORTD=j+0x01;
						j++;
						if(j == 9){
							j = -1;
						}
					}
				}			
			}			
		}
	}	
}