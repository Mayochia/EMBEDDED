#include <xc.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>

// CONFIGURATION BITS
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000


#define SERVO_PIN RC2           // Servo on RC2/CCP1
#define SERVO_MIN_POS_DEFAULT 165  // Minimum position (~0.5ms pulse)
#define SERVO_MID_POS_DEFAULT  138 // Middle position (~1.5ms pulse)
#define SERVO_MAX_POS_DEFAULT 111 // Maximum position (~2.4ms pulse)

// Movement parameters optimized for SG90
#define SERVO_STEP 3            // Smaller step size for smoother movement
#define SERVO_DELAY 20          // Reduced delay between steps (SG90 is lighter and faster)
#define SERVO_SETTLE_TIME 500   // Shorter settle time (SG90 stabilizes faster)

volatile unsigned char rx_data;
void setup();

void initialize(void);
void setServoPosition(uint8_t position);
void moveToPosition(uint8_t position);

uint8_t currentPosition = 150;
uint8_t SERVO_MIN_POS = SERVO_MIN_POS_DEFAULT;
uint8_t SERVO_MID_POS = SERVO_MID_POS_DEFAULT;
uint8_t SERVO_MAX_POS = SERVO_MAX_POS_DEFAULT;
// Servo control definitions - adjusted for proper PWM values
// For 20ms period with 4MHz clock and prescaler 4:
// PR2 = (20ms/(4*1us*4))-1 = 1249
// For 1ms pulse: (1ms/20ms)*1250 = 62.5 -> CCPR1L = 62
// For 1.5ms pulse: (1.5ms/20ms)*1250 = 93.75 -> CCPR1L = 94
// For 2ms pulse: (2ms/20ms)*1250 = 125 -> CCPR1L = 125

unsigned char correctPIN[8];
unsigned char PIN[8];
int trial = 3;
bit invalid_flag = 0;
bit setpass_flag = 0;
unsigned int tick = 30000;

void initialize(void) {
    // Configure I/O pins
    TRISC2 = 0;     // RC2/CCP1 as output for servo
    
    // Configure LED pins as outputs
    TRISCbits.TRISC4 = 0;  // Green LED
    TRISCbits.TRISC5 = 0;  // Yellow LED
    TRISCbits.TRISC6 = 0;  // Red LED
    
    // Configure button pins as inputs
    TRISDbits.TRISD0 = 1;  // First button
    TRISDbits.TRISD1 = 1;  // Second button
    TRISDbits.TRISD2 = 1;  // Third button
    
    // Initialize all LEDs as off
    PORTCbits.RC4 = 0;
    PORTCbits.RC5 = 0;
    PORTCbits.RC6 = 0;
    
    // Quick LED test - flash all LEDs
    PORTCbits.RC4 = 1;
    PORTCbits.RC5 = 1;
    PORTCbits.RC6 = 1;
    __delay_ms(300);
    PORTCbits.RC4 = 0;
    PORTCbits.RC5 = 0;
    PORTCbits.RC6 = 0;
    __delay_ms(300);
    
    // Set up Timer2 for PWM (increased frequency for SG90)
    PR2 = 199;      // PWM Period = 3.2ms (312.5Hz)
                    // Formula: PWM Period = (PR2+1) * 4 * Tosc * Prescaler
                    // 3.2ms = (199+1) * 4 * 0.25µs * 16
    
    // Configure CCP1 for PWM mode
    CCP1CON = 0x0C; // PWM mode, all bits active
    
    // Set up Timer2 with 1:16 prescaler
    T2CON = 0x06;   // Timer2 ON, prescaler 1:16
    
    // Allow system to stabilize and set initial position
    __delay_ms(500);
    setServoPosition(SERVO_MID_POS_DEFAULT);
}

void setServoPosition(uint8_t position) {
    // Limit to safe range for SG90
    if(position < 50) position = 50;       // Ensure minimum is 0.5ms
    if(position > 240) position = 240;     // Ensure maximum is 2.4ms
    
    // Scale the position value to the actual PWM duty cycle
    uint16_t scaledPosition = (uint16_t)position * 10;
    
    // Set the PWM duty cycle
    uint16_t duty = scaledPosition;
    CCPR1L = duty >> 2;                 // 8 most significant bits
    CCP1CON = (CCP1CON & 0xCF) | ((duty & 0x03) << 4); // 2 least significant bits
    
    // Update the current position
    currentPosition = position;
}

void moveToPosition(uint8_t position) {
    // Only move if the position has changed significantly
    if (position > currentPosition + 2 || position < currentPosition - 2) {
        // Move in small steps for smoother motion
        if(position > currentPosition) {
            // Move forward
            for(uint8_t pos = currentPosition; pos < position; pos += SERVO_STEP) {
                setServoPosition(pos);
                __delay_ms(SERVO_DELAY);
            }
        } else if(position < currentPosition) {
            // Move backward
            for(uint8_t pos = currentPosition; pos > position; pos -= SERVO_STEP) {
                setServoPosition(pos);
                __delay_ms(SERVO_DELAY);
            }
        }
        
        // Ensure we reach exactly the target position
        setServoPosition(position);
        
        // Allow servo to fully stabilize with shorter delay for SG90
        __delay_ms(SERVO_SETTLE_TIME);
    }
}
void setServoClockwise() {
    moveToPosition(SERVO_MIN_POS);
}

void setServoCounterClockwise() {
    moveToPosition(SERVO_MAX_POS);
    
}


void LCD_delay(int MUL) {
    int i, j;
    for (i = MUL; i != 0; i--)
        for (j = 0; j < 256; j++) {}
}

void instCtrl(unsigned char INST) {
    PORTB = INST;
    RA0 = 0;
    RA1 = 0;
    RA2 = 1;
    LCD_delay(1);
    RA2 = 0;
}

void initLCD(void) {
    LCD_delay(15);
    instCtrl(0x38);
    instCtrl(0x08);
    instCtrl(0x01);
    instCtrl(0x06);
    instCtrl(0x0C);
}

void dataCtrl(unsigned char DATA) {
    PORTB = DATA;
    RA0 = 1;
    RA1 = 0;
    RA2 = 1;
    LCD_delay(1);
    RA2 = 0;
}

void displayMsg(const unsigned char *message) {
    int i;
    for (i = 0; message[i] != '\0'; i++) {
        dataCtrl(message[i]);
    }
}

void setPass(void) {
    int i = 0;
    unsigned char keyData;
    
    setpass_flag = 1;
    while (i < 8) {
        if (RD4) {
            __delay_ms(10); // debounce
            keyData = PORTD & 0x0F;
            
            switch (keyData) {
                case 0x0: correctPIN[i++] = 1; dataCtrl('1'); break;
                case 0x1: correctPIN[i++] = 2; dataCtrl('2'); break;
                case 0x2: correctPIN[i++] = 3; dataCtrl('3'); break;
                case 0x3: correctPIN[i++] = 10; dataCtrl('A'); break;
                
                case 0x4: correctPIN[i++] = 4; dataCtrl('4'); break;
                case 0x5: correctPIN[i++] = 5; dataCtrl('5'); break;
                case 0x6: correctPIN[i++] = 6; dataCtrl('6'); break;
                case 0x7: correctPIN[i++] = 11; dataCtrl('B'); break;
                
                case 0x8: correctPIN[i++] = 7; dataCtrl('7'); break;
                case 0x9: correctPIN[i++] = 8; dataCtrl('8'); break;
                case 0xA: correctPIN[i++] = 9; dataCtrl('9'); break;
                case 0xB: correctPIN[i++] = 12; dataCtrl('C'); break;
                
                case 0xC: correctPIN[i++] = 14; dataCtrl('*'); break;
                case 0xD: correctPIN[i++] = 0; dataCtrl('0'); break;
                case 0xE: i = 8; break; // Optional
                case 0xF: correctPIN[i++] = 13; dataCtrl('D'); break;
                
                default: break;
            }
            while (RD4); // Wait for key release
            __delay_ms(50); // debounce
        }
    }
}

void locked(void) {
    // Continuous servo movement when locked
    while (1) {
       
        
    }
}

void verifyPIN(void) {
    int match = 1;
    for (int i = 0; i < 8; i++) {
        if (correctPIN[i] != PIN[i]) {
            match = 0;
            break;
        }
    }
    
    if (match) {
        instCtrl(0x01); 
        displayMsg("VALID PIN");
        invalid_flag = 0;
        
        // Unlock sequence
        setServoCounterClockwise();
      	
   		if(RCIF){
    		setServoClockwise();
    	}
    	__delay_ms(15000);
         
      	setServoClockwise();
        
        initLCD();
        instCtrl(0x80);
        displayMsg("[1]Set PIN");
        instCtrl(0xC0);
        displayMsg("[2]Enter PIN");
    } else {
        trial--;
        instCtrl(0x01);
        displayMsg("INVALID PIN!");
        invalid_flag = 1;
        
        
        if (trial == 0) {
            instCtrl(0x01);
            displayMsg("NO TRIALS LEFT");
            __delay_ms(1000);
           	
           	while(!TXIF);
           	TXREG = '1';
 		    __delay_ms(2);
          	while(!TXIF);
          	TXREG = '\n';
           	__delay_ms(2);
           		
            locked();
        }
    }
}

void enterPass(void) {
    int j = 0;
    unsigned char keyData;
    while (j < 8) {
        if (RD4){
            __delay_ms(10); 
            keyData = PORTD & 0x0F;
            
            switch (keyData) {
                case 0x0: PIN[j++] = 1; dataCtrl('*'); break;
                case 0x1: PIN[j++] = 2; dataCtrl('*'); break;
                case 0x2: PIN[j++] = 3; dataCtrl('*'); break;
                case 0x4: PIN[j++] = 4; dataCtrl('*'); break;
                case 0x5: PIN[j++] = 5; dataCtrl('*'); break;
                case 0x6: PIN[j++] = 6; dataCtrl('*'); break;
                case 0x8: PIN[j++] = 7; dataCtrl('*'); break;
                case 0x9: PIN[j++] = 8; dataCtrl('*'); break;
                case 0xA: PIN[j++] = 9; dataCtrl('*'); break;
                case 0xD: PIN[j++] = 0; dataCtrl('*'); break;
                case 0xE: j = 8; break;
                default: break;
            }
            while (RD4);
            __delay_ms(50);
        }
    }
    verifyPIN();
}
void setup()
{
	BRGH = 1;
	SPBRG = 12;
	SYNC = 0;
	SPEN = 1;
	TXEN = 1;
	CREN = 1;
	
	TXIF = 0;
	RCIF = 0;
	
	RCIE = 1;
	PEIE = 1;
	GIE = 1;
	
	ADCON1 = 0x06;
	
	TRISB = 0x00;
	TRISD = 0xFF;
	TRISC = 0x80;
	PORTB = 0x00;
}
void main(void) {
    ADCON1 = 0x06;
    TRISA = 0x00;
    TRISB = 0x00;
    TRISC = 0x00;
    TRISD = 0xFF;
  
    initLCD();
      
    instCtrl(0x80);
    displayMsg("[1]Set PIN");
    instCtrl(0xC0);
    displayMsg("[2]Enter PIN");

    initialize(); //PWM setup
    setup(); //UART setup
    
    setServoClockwise();
    
    while (1) {
         
		if (RCIF) {
		    if (OERR) {
		        CREN = 0;
		        CREN = 1;
		    }
		    rx_data = RCREG;
		
		    if (rx_data == 'A') {
		        setServoClockwise();  // Lock
		        initLCD();
		
		        instCtrl(0x80);
		        displayMsg("LOCKED");
		
		        // Wait for unlock signal (B)
		        while (1) {
		            if (RCIF) {
		                if (OERR) {
		                    CREN = 0;
		                    CREN = 1;
		                }
		                rx_data = RCREG;
		                if (rx_data == 'B') {
		                    break; // Exit loop when unlock command is received
		                }
		            }
		        }
		    }
		
		    if (rx_data == 'B') {
		        setServoCounterClockwise();  // Unlock
		        initLCD();
		        instCtrl(0x80);
		        displayMsg("[1]Set PIN");
		        instCtrl(0xC0);
		        displayMsg("[2]Enter PIN");
		    }
		}
		
        if(invalid_flag == 1) {
            instCtrl(0x01);
            displayMsg("ENTER PIN:");
            enterPass();
        }
        
        if (RD4) {
            __delay_ms(500);
            unsigned char INPUT = PORTD & 0x0F;
            while (RD4); // wait for button release
            
            if (INPUT == 0x00) {
                if(setpass_flag == 1) {
                    instCtrl(0x01);
                    instCtrl(0x80);
                    displayMsg("Already set");
                    instCtrl(0xC0);
                    displayMsg("a password");
                    __delay_ms(1000);
                }
                else {
                    instCtrl(0x01);
                    displayMsg("SET PIN:");
                    setPass();
                    instCtrl(0x01);
                    displayMsg("PIN SET!");
                    __delay_ms(1000);
                }
                initLCD();
                instCtrl(0x80);
                displayMsg("[1]Set PIN");
                instCtrl(0xC0);
                displayMsg("[2]Enter PIN");
            }
            else if (INPUT == 0x01) {
                instCtrl(0x01);
                displayMsg("ENTER PIN:");
                enterPass();
            }
        }
    }
}

