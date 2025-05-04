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

// === I2C Master Initialization ===
void init_I2C_Master(void)
{
    TRISC3 = 1; // SCL input
    TRISC4 = 1; // SDA input
    SSPCON = 0x28;   // Enable MSSP in master mode
    SSPCON2 = 0x00;
    SSPSTAT = 0x80;  // Slew rate control disabled for higher speed compatibility
    SSPADD = 0x09;   // 100kHz for FOSC = 4MHz: (4MHz / (4 * (SSPADD + 1))) = 100kHz
}

// === I2C Control Functions ===
void I2C_Wait(void)
{
    while ((SSPCON2 & 0x1F) || (SSPSTAT & 0x04)); // Wait until idle
}

void I2C_Start(void)
{
    I2C_Wait();
    SEN = 1; // Start condition
    while(SEN);  // Wait for start condition to complete
}

void I2C_Stop(void)
{
    I2C_Wait();
    PEN = 1; // Stop condition
    while(PEN);  // Wait for stop condition to complete
}

void I2C_Send(unsigned char data)
{
    I2C_Wait();
    SSPBUF = data; // Send data
    while(BF);     // Wait for buffer to empty
    while(ACKSTAT); // Wait for ACK from slave (though in your debug case there's no real slave)
}

// === Main Function ===
void main(void)
{
    TRISD = 0xFF;         // PORTD as input (for DIP switch)
    init_I2C_Master();    // Initialize I2C
    
    while (1)
    {
        unsigned char slave_address = 0x10 << 1; // Shift left for 7-bit address format, write=0
        
        I2C_Start();              // Send start condition
        I2C_Send(slave_address);  // Send address with write bit
        I2C_Send(PORTD);          // Send data from DIP switch
        I2C_Stop();               // Send stop condition
        
        __delay_ms(500);          // Slow down for visibility in debugger
    }
}