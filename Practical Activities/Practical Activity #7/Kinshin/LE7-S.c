/*
 * File:   LE7-2-S.c
 * Description: I2C Slave Implementation
 * 
 * This program demonstrates I2C slave mode communication.
 * It receives data from the master and displays it on PORTB,
 * and sends data from PORTD to the master when requested.
 */

// Configuration bits
#pragma config FOSC = XT        // Oscillator Selection bits (XT oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#define _XTAL_FREQ 4000000      // 4MHz crystal frequency

#include <xc.h>

// Function prototypes
void init_I2C_Slave(unsigned char slave_add);

// Main program
void main(void) {
    TRISB = 0x00;      // Set all bits in PORTB to output
    PORTB = 0x00;      // All LEDs in PORTB are off
    TRISD = 0xFF;      // Set all bits in PORTD to input
    
    init_I2C_Slave(0x10); // Initialize I2C as slave with address 0x10
    
    for(;;) {
        // All operations are handled in the interrupt service routine
        // No foreground tasks required for this example
    }
}

// Initialize I2C in Slave mode
void init_I2C_Slave(unsigned char slave_add) {
    TRISC3 = 1;        // Set RC3 (SCL) to input
    TRISC4 = 1;        // Set RC4 (SDA) to input
    SSPCON = 0x36;     // SSP enabled, SCK release clock, I2C slave mode 7-bit address
    SSPCON2 = 0x01;    // Clock stretching enabled for slave transmit & receive
    SSPSTAT = 0x80;    // Slew rate control disabled
    SSPADD = slave_add; // 7-bit slave address
    SSPIE = 1;         // Enable SSP interrupt
    SSPIF = 0;         // Clear interrupt flag
    PEIE = 1;          // Enable peripheral interrupt
    GIE = 1;           // Enable global interrupts
}

// Interrupt Service Routine
void interrupt ISR(void) {
    unsigned char temp;
    
    if(SSPIF) {        // Check if SSP interrupt occurred
        CKP = 0;       // Hold clock low (SSPCON reg)
        
        if(WCOL || SSPOV) { // Check if overflow or data collision (SSPCON reg)
            temp = SSPBUF;  // Read SSPBUF to clear buffer
            WCOL = 0;       // Clear data collision flag
            SSPOV = 0;      // Clear overflow flag
            CKP = 1;        // Release clock (SSPCON reg)
        }
        
        /* Check operation if "write" or "read" */
        if(!SSPSTATbits.D_nA && !SSPSTATbits.R_nW) { // Write to slave
            temp = SSPBUF;  // Read SSPBUF to clear buffer
            while(!BF);     // Wait until receive is complete (SSPSTAT reg)
            PORTB = SSPBUF; // Write data from master to PORTB
            CKP = 1;        // Release clock (SSPCON reg)
        }
        else if(!SSPSTATbits.D_nA && SSPSTATbits.R_nW) { // Read from slave
            temp = SSPBUF;  // Read SSPBUF to clear buffer
            BF = 0;         // Clear buffer status bit (SSPSTAT reg)
            SSPBUF = PORTD; // Send data from PORTD to master
            CKP = 1;        // Release clock (SSPCON reg)
            while(BF);      // Wait until transmit is complete (SSPSTAT reg)
        }
        
        SSPIF = 0;          // Clear interrupt flag
    }
}