#include <xc.h>

void main(){
	
	int cnt,i;
	ADCON1 = 0x06; // configure all pins as digital inputs
	TRISA = 0x01; // set 1st bit of PORTA as input
	TRISB = 0x00; // set all bits of PORTB as output
	
	PORTB = 0x00;
	while(1){
		if(RA0 == 1) {
			for(i = 0; i < 3; i ++){
					PORTB = 0x01; // set RB0 to 1 (LED ON)
				for(cnt=0;cnt<10000;cnt++); // delay
					PORTB = 0x00; // set RB0 to 0 (LED OFF)
				for(cnt=0;cnt<10000;cnt++); // delay
			}
		}
	}
}