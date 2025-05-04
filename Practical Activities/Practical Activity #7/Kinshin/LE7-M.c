#include <xc.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

#define _XTAL_FREQ 4000000

// I2C Master Init
void init_I2C_Master(void)
{
    TRISC3 = 1;
    TRISC4 = 1;
    SSPCON = 0x28;    // Enable MSSP in master mode
    SSPCON2 = 0x00;
    SSPSTAT = 0x00;   // Slew rate enabled
    SSPADD = 0x09;    // 100kHz @ 4MHz FOSC
}

void I2C_Wait(void)
{
    while ((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
}

void I2C_Start(void)
{
    I2C_Wait();
    SEN = 1;
}

void I2C_Stop(void)
{
    I2C_Wait();
    PEN = 1;
}

void I2C_Send(unsigned char data)
{
    I2C_Wait();
    SSPBUF = data;
}

unsigned char I2C_Receive(unsigned char ack)
{
    unsigned char temp;
    I2C_Wait();
    RCEN = 1;
    I2C_Wait();
    temp = SSPBUF;
    I2C_Wait();
    ACKDT = (ack)?0:1;  // 0 = ACK, 1 = NACK
    ACKEN = 1;
    return temp;
}

void main(void)
{
    TRISD = 0xFF;    // DIP switch input
    TRISB = 0x00;    // LED output
    PORTB = 0x00;

    init_I2C_Master();

    while (1)
    {
        I2C_Start();
        I2C_Send(0x10);         // Write to slave (address = 0x08 << 1)
        I2C_Send(PORTD);        // Send DIP switch value
        I2C_Stop();
        __delay_ms(200);

        I2C_Start();
        I2C_Send(0x11);         // Read from slave (address = 0x08 << 1 + 1)
        PORTB = I2C_Receive(0); // Receive slave data, NACK
        I2C_Stop();
        __delay_ms(200);
    }
}
