#include <xc.h>  // Include processor files

// Configuration Bits
#pragma config FOSC = XT      // Oscillator Selection bits (XT oscillator)
#pragma config WDTE = OFF     // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = ON     // Power-up Timer Enable bit
#pragma config BOREN = ON     // Brown-out Reset Enable bit
#pragma config LVP = OFF      // Low-Voltage In-Circuit Serial Programming disabled
#pragma config CPD = OFF      // Data EEPROM Memory Code Protection off
#pragma config WRT = OFF      // Flash Program Memory Write Enable off
#pragma config CP = OFF       // Flash Program Memory Code Protection off

// Global variables
int overflowCopy = 0;    // Copy of overflow count at capture time
int overflowCount = 0;   // Timer1 overflow counter
int ismatch = 0;         // Flag to indicate a capture event occurred
bit count_flag = 0;      // Timer0 overflow flag for delay timing
int period = -1;         // Calculated period in ms
int prevPeriod = -1;     // Last displayed period
int capture = 0;         // State machine: 0-start, 1-don't display, 2-display, 3-done

// Delay using Timer0 overflow
void delay(int count) {
    int of_count = 0;
    while (of_count < count) {
        if (count_flag) {
            of_count++;
            count_flag = 0;
        }
    }
}

// Send command to LCD (Instruction Register)
void instCtrl(unsigned char INST) {
    PORTD = INST;  // Load instruction
    RB6 = 0;
    RB5 = 0;       // RS = 0 (Instruction)
    RB7 = 1;       // E = 1
    delay(1);      // Wait
    RB7 = 0;       // E = 0 (Strobe)
}

// Initialize LCD to 8-bit mode
void initLCD() {
    delay(10);         // Wait for LCD power-up
    instCtrl(0x38);    // Function set: 8-bit, 2 lines, 5x8 font
    instCtrl(0x08);    // Display off
    instCtrl(0x01);    // Clear display
    instCtrl(0x06);    // Entry mode set: Increment, no shift
    instCtrl(0x0C);    // Display on, cursor off, blink off
}

// Send data (character) to LCD
void dataCtrl(unsigned char DATA) {
    PORTD = DATA;  // Load data
    RB6 = 0;
    RB5 = 1;       // RS = 1 (Data)
    RB7 = 1;       // E = 1
    delay(1);      // Wait
    RB7 = 0;       // E = 0 (Strobe)
}

// Interrupt Service Routine
void interrupt ISR(void) {
    GIE = 0;  // Disable global interrupts during ISR

    // CCP1 interrupt: triggered on rising edge (capture event)
    if (CCP1IF == 1) {
        CCP1IF = 0;        // Clear CCP1 flag
        TMR1 = 0;          // Reset Timer1
        overflowCopy = overflowCount;
        overflowCount = 0; // Reset overflow counter
        ismatch = 1;       // Mark capture
        if (capture < 2) capture++;  // Advance capture state
        RA0 ^= 1;          // Toggle RA0 (used for debug or test)
    }

    // Timer1 overflow interrupt
    else if (TMR1IF) {
        TMR1IF = 0;
        overflowCount++;   // Count Timer1 overflows
    }

    // Timer0 overflow interrupt (used for delay)
    else if (TMR0IF) {
        TMR0IF = 0;
        count_flag = 1;    // Set delay flag
    }

    GIE = 1;  // Re-enable global interrupts
}

// Send string to LCD
void printStr(const unsigned char* str) {
    int i = 0;
    while (str[i] != '\0') {
        dataCtrl(str[i]);
        i++;
    }
}

// Display calculated period in milliseconds on LCD
void displayNum() {
    instCtrl(0x88);  // Move cursor to line 2, position 8
    for (int i = 0; i < 10; i++) dataCtrl(' ');  // Clear area

    instCtrl(0x88);  // Reset cursor again

    if (period == 0) {
        dataCtrl('0');
    }

    int reversed = 0, count = 0;
    int temp = period;

    // Reverse digits for correct LCD display order
    while (temp > 0) {
        reversed = reversed * 10 + (temp % 10);
        temp /= 10;
        count++;
    }

    // Print digits in correct order
    while (count--) {
        dataCtrl('0' + (reversed % 10));
        reversed /= 10;
    }

    printStr(" ms");  // Display unit
    capture = 3;      // Set to display complete
    prevPeriod = period;
}

// Main function
void main(void) {
    // Set I/O directions
    TRISA = 0x00;     // RA as output
    TRISC = 0x04;     // RC2 (CCP1) as input
    TRISD = 0x00;     // PORTD as output (LCD data)
    TRISB = 0x00;     // PORTB as output (LCD control)

    // Clear all ports
    PORTA = 0x00;
    PORTB = 0x00;
    PORTD = 0x00;

    ADCON1 = 0x06;     // Set all PORTA/PORTB as digital
    OPTION_REG = 0xC4; // TMR0: prescaler 1:32
    TMR0IF = 0;
    TMR0IE = 1;        // Enable TMR0 interrupt (for delay)

    TMR1IF = 0;
    T1CON = 0x30;      // Timer1: 1:8 prescaler, initially off
    CCP1CON = 0x05;    // CCP1: capture mode on every rising edge
    CCP1IE = 1;        // Enable CCP1 interrupt
    CCP1IF = 0;        // Clear CCP1 interrupt flag

    PEIE = 1;          // Enable peripheral interrupts
    GIE = 1;           // Enable global interrupts
    TMR1ON = 1;        // Start Timer1

    // LCD startup
    initLCD();
    printStr("Period: Waiting...");

    // Main loop
    while (1) {
        if (ismatch && capture == 2) {
            // Calculate period: (CCPR1 + overflow*65536) * 8 us (1:8 prescale)
            period = (((CCPR1 + 3) + (overflowCopy * 65536)) * 8) / 1000;

            if (period != prevPeriod)
                displayNum();
        }
    }
}
