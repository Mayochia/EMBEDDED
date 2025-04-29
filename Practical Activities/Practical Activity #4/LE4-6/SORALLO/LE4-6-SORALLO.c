#include <xc.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF
#define _XTAL_FREQ 4000000  // Define crystal frequency

volatile int  period = 0;   // Store captured period
volatile int updateFlag = 0; // Flag to indicate new data
char period_str[6];         // String buffer for LCD display

void interrupt ISR(void)
{

GIE = 0; // disable all unmasked interrupts (INTCON reg) 
 if(CCP1IF==1) // checks CCP1 interrupt flag 
 {
CCP1IF = 0; // clears interrupt flag
 TMR1 = 0; // resets TMR1 
period  = CCPR1 / 1000;
period = period * 8;
updateFlag = 1;
RA0 ^= 1;
 }
 GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

void instCtrl(unsigned char INST){
    PORTD = INST;
    RB1 = 0;
    RB2 = 0;
    RB3 = 1;
     __delay_ms(2);
    RB3 = 0;

}
void dataCtrl(unsigned char DATA){
    PORTD = DATA;
    RB1 = 1;
    RB2 = 0;
    RB3 = 1;
     __delay_ms(2);
    RB3 = 0;

}
void initLCD(){
    instCtrl(0x38);
    instCtrl(0x08);
    instCtrl(0x01);
    instCtrl(0x06);
    instCtrl(0x0C);
}
void displayMsg(const unsigned char *message){
    int i;
    for(i = 0; message[i] != '\0'; i++){
    dataCtrl(message[i]);
    }
}
void intToStr(int num, char *str) {
    int i = 0, j;
    char temp[6]; 

    if (num == 0) {
        str[i++] = '0';
    } else {
        while (num > 0) {
            temp[i++] = (num % 10) + '0'; 
            num /= 10;
        }
    }


    for (j = 0; j < i; j++) {
        str[j] = temp[i - j - 1];
    }
    str[i] = '\0'; 
}
void main(void)
{
TRISA = 0x00;
TRISB = 0x00;
TRISC = 0x04; // set RC2 to input
TRISD = 0x00;
T1CON = 0x30; // 1:8 prescaler, Timer1 off
ADCON1 = 0x06;
CCP1CON = 0x05; // capture mode: every rising edge
CCP1IE = 1; // enable TMR1/CCP1 match interrupt (PIE1 reg)
CCP1IF = 0; // reset interrupt flag (PIR1 reg)
PEIE = 1; // enable all peripheral interrupt (INTCON reg)
GIE = 1; // enable all unmasked interrupts (INTCON reg)
TMR1ON = 1; // Turns on Timer1 (T1CON reg)

initLCD();
instCtrl(0x80);
displayMsg("Waiting...");
while(1){
    if(updateFlag){ 
        updateFlag = 0; 
        instCtrl(0x01); 
        displayMsg("Period: ");
        intToStr(period, period_str); 
        displayMsg(period_str);
         __delay_ms(1000);
    }
    }
}