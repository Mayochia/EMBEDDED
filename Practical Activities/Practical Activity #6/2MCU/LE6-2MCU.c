#include <xc.h>
#include <stdio.h> 
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF


bit rflag = 0;
void interrupt ISR(){
GIE = 0;
 if(RCIF){
    rflag = 1;
    RCIF = 0;
    }

GIE = 1;
}


void main() { 
    unsigned char DATA = 0x00;
    unsigned char rDATA = 0x00;
    unsigned char temp = 0x00;
    SPBRG = 0x19;     // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed 
                    // (see formula in Table 10-1) 
    SYNC = 0;        
    SPEN = 1;        
    TX9 = 0;
    RX9 = 0;
        
    BRGH = 1;
    CREN = 1;
    CSRC = 1;
        
    TXEN = 1;    
    ADCON1 = 0x06;    
    TRISA = 0xFF;
    TRISB = 0x00;
    TRISD = 0x00;
    TRISC6 = 0;
    TRISC7 = 1;
    RCIE = 1;
    RCIF = 0;    
    PEIE = 1;
    GIE = 1;
    
    PORTB = 0x00;
    PORTD = 0x00;
    while(1) 
    {         
            if(RA4 == 1){
            while(RA4){}
            DATA = PORTA & 0x0F;
            TXREG = DATA;
            temp = TXREG;
            PORTD = (temp << 4);
            }
            if(rflag){

            while(!RCIF);
            rDATA = TXREG;
            PORTB = rDATA;
            rflag = 0;
            }
        
            
                     
    } 
    
}