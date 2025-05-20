/*
 * File: main.c
 * 
 * PIC16F877A code for LED control via UART communication with ESP8266
 * LED connected to RB0
 * Switch connected to RB1
 * Communication uses only integers (0 or 1)
 */

#include <xc.h>
#include <stdio.h>
#include <string.h>

// CONFIGURATION BITS
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000          // 4MHz crystal frequency
#define LED_PIN PORTBbits.RB0       // LED pin (RB0)
#define SWITCH_PIN PORTBbits.RB1    // Switch pin (RB1) - Fixed from PORTDbits.RB1

// Function prototypes
void initialize(void);
void UART_Init(void);
void UART_Transmit(char data);
char UART_Receive(void);
void UART_TransmitInteger(int value);
void process_command(char value);

void main(void) {
    char rx_data;
    unsigned char prev_switch_state = 0xFF;  // Force initial transmission
    unsigned char current_switch_state = 0;

    initialize();
    UART_Init();

    __delay_ms(500);  // Stabilization delay

    while (1) {
        // Read switch state
        current_switch_state = SWITCH_PIN;

        // Detect state change with debounce
        if (current_switch_state != prev_switch_state) {
            __delay_ms(50);  // Debounce delay
            current_switch_state = SWITCH_PIN;  // Re-read

            if (current_switch_state != prev_switch_state) {
                prev_switch_state = current_switch_state;

                // Wait until TXREG is ready
                while (!TXSTAbits.TRMT);
                while (!PIR1bits.TXIF);

                // Transmit switch state (as ASCII 0 or 1)
                UART_TransmitInteger(current_switch_state);
            }
        }

        // Check for received data
        if (PIR1bits.RCIF) {
            rx_data = UART_Receive();

            if (rx_data == 'A' || rx_data == 'B') {
                process_command(rx_data);
            }

            // Clear buffer of extra characters
            while (PIR1bits.RCIF) {
                UART_Receive();
            }
        }

        __delay_ms(10);  // Stability delay
    }
}

void initialize(void) {
    // Configure I/O correctly
    TRISBbits.TRISB0 = 0;  // RB0 as output (LED)
    TRISBbits.TRISB1 = 1;  // RB1 as input (switch)
    TRISCbits.TRISC6 = 0;  // TX (RC6)
    TRISCbits.TRISC7 = 1;  // RX (RC7)
    
    // Enable pull-up for switch pin
    OPTION_REGbits.nRBPU = 0;  // Enable PORTB pull-ups
    
    LED_PIN = 0;           // Turn off LED initially

    // Disable analog inputs for all ports
    ADCON1 = 0x06;         // All digital I/O
}

void UART_Init(void) {
    // Configure UART for 9600 baud @ 4MHz
    TXSTAbits.BRGH = 1;    // High speed
    SPBRG = 25;            // 9600 baud rate value
    TXSTAbits.SYNC = 0;    // Asynchronous mode
    RCSTAbits.SPEN = 1;    // Enable serial port
    TXSTAbits.TXEN = 1;    // Enable transmission
    RCSTAbits.CREN = 1;    // Enable reception

    // Clear any error flags
    if (RCSTAbits.OERR) {
        RCSTAbits.CREN = 0;
        RCSTAbits.CREN = 1;
    }
    if (RCSTAbits.FERR) {
        char dummy = RCREG;  // Read to clear FERR
    }

    // Clear interrupt flags
    PIR1bits.TXIF = 0;
    PIR1bits.RCIF = 0;

    // Optional: Enable interrupts (currently using polling)
    // PIE1bits.RCIE = 1;
    // INTCONbits.PEIE = 1;
    // INTCONbits.GIE = 1;

    // Send initial switch state after a delay
    __delay_ms(1000);
    UART_TransmitInteger(SWITCH_PIN);
}

void UART_Transmit(char data) {
    while (!TXSTAbits.TRMT);  // Wait for transmission to complete
    while (!PIR1bits.TXIF);   // Wait for TXREG to be empty
    TXREG = data;             // Send data
}

char UART_Receive(void) {
    // Check for overrun error and clear if present
    if (RCSTAbits.OERR) {
        RCSTAbits.CREN = 0;
        RCSTAbits.CREN = 1;
    }
    
    // Check for framing error
    if (RCSTAbits.FERR) {
        char dummy = RCREG;  // Read to clear error
        return 0;
    }
    
    return RCREG;
}

void UART_TransmitInteger(int value) {
    // Ensure value is 0 or 1
    if (value > 0) value = 1;
    if (value < 0) value = 0;
    
    UART_Transmit('0' + value);  // Send ASCII '0' or '1'
    UART_Transmit('\n');         // Send newline
}

void process_command(char value) {
    if (value == 'A') {
        LED_PIN = 1;  // Turn on LED (unlock)
    } else if (value == 'B') {
        LED_PIN = 0;  // Turn off LED (lock)
    }
}