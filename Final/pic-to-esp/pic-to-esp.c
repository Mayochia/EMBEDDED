/*
 * File: main.c
 * Description: PIC16F877A constantly transmits DIP switch state (RD2) over UART.
 * UART TX: RC6 ? CP2102 RX
 */

#include <xc.h>

// CONFIGURATION BITS
#pragma config FOSC = XT        // Oscillator Selection bits
#pragma config WDTE = OFF       // Watchdog Timer Enable
#pragma config PWRTE = ON       // Power-up Timer Enable
#pragma config BOREN = OFF       // Brown-out Reset Enable
#pragma config LVP = OFF        // Low-Voltage Programming
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection
#pragma config WRT = OFF        // Flash Program Memory Write Enable
#pragma config CP = OFF         // Flash Program Memory Code Protection

#define _XTAL_FREQ 4000000      // 4 MHz crystal
#define SWITCH_PIN PORTDbits.RD2

// Function Prototypes
void init_uart(void);
void uart_transmit(char data);
void uart_transmit_state(int state);
void init_ports(void);

void main(void) {
    init_ports();
    init_uart();

    while (1) {
        int state = SWITCH_PIN;             // Read DIP switch state
        uart_transmit_state(state);         // Send as '0' or '1'
        __delay_ms(500);                    // Update every 0.5s (adjust as needed)
    }
}

void init_ports(void) {
    TRISD = 0xFF;               // All PORTD as input
    TRISCbits.TRISC6 = 0;       // TX pin as output
    TRISCbits.TRISC7 = 1;       // RX pin as input
    ADCON1 = 0x06;              // All digital I/O
}

void init_uart(void) {
    SPBRG = 25;                 // Baud rate 9600 @ 4MHz, BRGH = 1
    TXSTAbits.BRGH = 1;         // High speed
    TXSTAbits.SYNC = 0;         // Asynchronous mode
    RCSTAbits.SPEN = 1;         // Enable serial port
    TXSTAbits.TXEN = 1;         // Enable TX
}

void uart_transmit(char data) {
    while (!PIR1bits.TXIF);     // Wait for TXREG to be empty
    TXREG = data;
}

void uart_transmit_state(int state) {
    uart_transmit(state ? '1' : '0');
    uart_transmit('\r');
    uart_transmit('\n');        // So it prints on a new line in Serial Monitor
}
