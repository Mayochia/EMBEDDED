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

unsigned char false_flag = 0; // Example flag, should be set from elsewhere

void PWM_Init() {
    TRISC2 = 0; // RC2 as output
    PR2 = 249;  // Set PWM period (approx. 5ms)
    
    CCP1CON = 0b00001100; // PWM mode
    T2CON = 0b00000101;   // Timer2 ON, prescale 4
    TMR2 = 0;
    while (!TMR2IF); // Wait until Timer2 overflows once
}

void PWM_Set_Duty(unsigned int duty) {
    if (duty < 1024) {
        CCPR1L = duty >> 2;
        CCP1CON = (CCP1CON & 0xCF) | ((duty & 0x03) << 4);
    }
}

void moveServo90() {
    PWM_Set_Duty(307); // 1.5ms pulse for 90°
    __delay_ms(500);   // Give servo time to rotate
    // Optional: Turn off PWM if only needed once
     CCP1CON = 0; 
}

void main() {
    PWM_Init();

    while (1) {
        if (false_flag == 1) {
            moveServo90();
            false_flag = 0; // Reset flag
        }
    }
}
