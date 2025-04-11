#include <xc.h>

unsigned char key;
unsigned char count_flag;
unsigned char btn_flag = 0; // 0 = paused, 1 = running
unsigned char count[] = "COUNT:";

void interrupt ISR() {
    GIE = 0;

    if (INTF) { // RB0 interrupt (key pressed)
        INTF = 0; // Clear interrupt flag
        key = PORTD & 0x0F; // Read keypad input and mask lower 4 bits
        if (key == 0x0D) { // Check if the key is '0' (0x0A in hex)
            btn_flag ^= 1; // Toggle pause/resume
        }
    } 
    else if (TMR0IF) { // Timer0 overflow
        TMR0IF = 0;
        count_flag = 1; // Set flag for 1-second delay
    }

    GIE = 1;
}

void delay(int num) {
    int flags = 0;
    while (flags < num) {
        if (count_flag) {
            count_flag = 0;
            flags++;
        }
    }
}

void delay_lcd(int cnt) {
    int i, j;
    for (i = cnt; i != 0; i--);
    for (j = 0; j < 1000; j++);
}

void dataCtrl(unsigned char DATA) {
    PORTC = DATA;
    RB5 = 1; // RS
    RB6 = 0; // RW
    RB7 = 1; // E
    delay_lcd(200);
    RB7 = 0;
}

void instCtrl(unsigned char INST) {
    PORTC = INST;
    RB5 = 0;
    RB6 = 0;
    RB7 = 1;
    delay_lcd(200);
    RB7 = 0;
}

void initLCD() {
    delay_lcd(1);
    instCtrl(0x38); // 8-bit mode, 2 lines, 5x7 font
    instCtrl(0x01); // Clear display
    instCtrl(0x06); // Increment cursor, no shift
    instCtrl(0x0E); // Display on, cursor on
}

void display_count_msg(unsigned char *msg) {
    int i;
    for (i = 0; msg[i] != '\0'; i++) {
        dataCtrl(msg[i]);
    }
}

void update_display(int MSB, int LSB) {
    instCtrl(0xC0); // Move cursor to second line
    dataCtrl(MSB + '0'); // Display MSB
    dataCtrl(LSB + '0'); // Display LSB
}

void main() {
    int MSB = 2; // Initial MSB of 24
    int LSB = 4; // Initial LSB of 24

    // Configure ports
    TRISB = 0x0F; // RB0-RB3 as input, RB4-RB7 as output
    TRISC = 0x00; // PORTC as output (LCD data)
    TRISD = 0xFF; // PORTD as input (keypad)

    // Configure Timer0 and interrupts
    OPTION_REG = 0xC4; // Timer0 with prescaler 1:32
    INTE = 1; // Enable RB0 interrupt
    INTF = 0; // Clear RB0 interrupt flag
    TMR0IE = 1; // Enable Timer0 interrupt
    TMR0IF = 0; // Clear Timer0 interrupt flag
    GIE = 1; // Enable global interrupts

    // Initialize LCD
    initLCD();
    display_count_msg(count);
    update_display(MSB, LSB);

    while (1) {
        key = PORTD & 0x0F; // Read keypad input and mask lower 4 bits

        if (btn_flag == 0) { // Clock is paused
            if (key == 0x0C) { // * key pressed (increment)
                if (MSB < 2 || (MSB == 2 && LSB < 4)) {
                    if (LSB == 9) {
                        LSB = 0;
                        MSB++;
                    } else {
                        LSB++;
                    }
                    update_display(MSB, LSB);
                }
            } else if (key == 0x0E) { // # key pressed (decrement)
                if (MSB > 0 || (MSB == 0 && LSB > 0)) {
                    if (LSB == 0) {
                        LSB = 9;
                        MSB--;
                    } else {
                        LSB--;
                    }
                    update_display(MSB, LSB);
                }
            }
        }

        if (btn_flag == 1) { // Clock is running
            if (MSB == 0 && LSB == 0) { // Reset to 24 when reaching 00
                MSB = 2;
                LSB = 4;
            } else { // Decrement the clock
                if (LSB == 0) {
                    LSB = 9;
                    MSB--;
                } else {
                    LSB--;
                }
            }
            update_display(MSB, LSB);
            delay(31); // Delay for 1 second
        }
    }
}