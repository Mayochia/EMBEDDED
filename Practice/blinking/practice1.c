#include<xc.h> // include file for the XC8 compiler

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

int switchState = 0;
int ledState = 0;
bit count_flag = 0;
bit flags = 0;
unsigned char overflowcount=0;

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

void interrupt ISR()
{

    GIE = 0;        // disables all unmasked interrupts to prevent overlap
    if (INTF)        // check the interrupt flag
    {
        INTF = 0;    
        switchState ^= 1;
    }
    else if (TMR0IF)
    {
        
        TMR0IF = 0;
        count_flag=1;
        
    }
    GIE = 1;
}

int main()
{
    TRISA = 0x00;
    TRISB = 0xFF;
    
    OPTION_REG = 0xC4;
    TMR0IE = 1;
    TMR0IF = 0;
    GIE = 1;
    
    PORTA = 0x00;
    
    while (1)
    {
        if (switchState == 0)
        {
            ledState = !ledState;
            PORTA = ledState;
            delay(122);
            
            if (switchState == 1)
            {
                PORTA = 0x00;
                ledState = 0;
                delay(122);
            }
        }
        else if (switchState == 1)
        {
            PORTA = ledState ? 0x01 : 0x00;
        }
    }
}