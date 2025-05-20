#include <xc.h>

// CONFIG
#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

#define _XTAL_FREQ 4000000

unsigned char correctPIN[8];
unsigned char PIN[8];
int trial = 3;
bit invalid_flag = 0;

void LCD_delay(int MUL)
{
    int i, j;
    for (i = MUL; i != 0; i--)
        for (j = 0; j < 256; j++) {}
}

void instCtrl(unsigned char INST)
{
    PORTB = INST;
    RA0 = 0;
    RA1 = 0;
    RA2 = 1;
    LCD_delay(1);
    RA2 = 0;
}

void initLCD(void)
{
    LCD_delay(15);
    instCtrl(0x38);
    instCtrl(0x08);
    instCtrl(0x01);
    instCtrl(0x06);
    instCtrl(0x0C);
}

void dataCtrl(unsigned char DATA)
{
    PORTB = DATA;
    RA0 = 1;
    RA1 = 0;
    RA2 = 1;
    LCD_delay(1);
    RA2 = 0;
}

void displayMsg(const unsigned char *message)
{
    int i;
    for (i = 0; message[i] != '\0'; i++) {
        dataCtrl(message[i]);
    }
}

void setPass(void)
{
    int i = 0;
    unsigned char keyData;

    while (i < 8)
    {
        if (RD4) // DA is high = key pressed
        {
            __delay_ms(10); // debounce
            keyData = PORTD & 0x0F; // read 4-bit output from MM74C922

            // Map key codes to actual digits (based on MM74C922 datasheet)
            switch (keyData)
            {
                case 0x0: correctPIN[i++] = 1; dataCtrl('1'); break;
                case 0x1: correctPIN[i++] = 2; dataCtrl('2'); break;
                case 0x2: correctPIN[i++] = 3; dataCtrl('3'); break;
                case 0x3: correctPIN[i++] = 10; dataCtrl('A'); break; // Optional
                case 0x4: correctPIN[i++] = 4; dataCtrl('4'); break;
                case 0x5: correctPIN[i++] = 5; dataCtrl('5'); break;
                case 0x6: correctPIN[i++] = 6; dataCtrl('6'); break;
                case 0x7: correctPIN[i++] = 11; dataCtrl('B'); break; // Optional
                case 0x8: correctPIN[i++] = 7; dataCtrl('7'); break;
                case 0x9: correctPIN[i++] = 8; dataCtrl('8'); break;
                case 0xA: correctPIN[i++] = 9; dataCtrl('9'); break;
                case 0xB: correctPIN[i++] = 12; dataCtrl('C'); break; // Optional
                case 0xC: correctPIN[i++] = 14; dataCtrl('*'); break; // Optional
                case 0xD: correctPIN[i++] = 0; dataCtrl('0'); break;
                case 0xE: i = 8; break; // Optional
                case 0xF: correctPIN[i++] = 13; dataCtrl('D'); break; // Optional
                default: break;
            }

            // Wait for key release (DA goes low)
            while (RD4);
            __delay_ms(50); // debounce
        }
    }
}


void locked(void)
{
    while (1) {}
}

void verifyPIN(void)
{
    int match = 1;
    for (int i = 0; i < 8; i++) {
        if (correctPIN[i] != PIN[i]) {
            match = 0;
            break;
        }
    }

    if (match) {
        instCtrl(0x01); // Clear LCD
        displayMsg("VALID PIN");
		invalid_flag = 0;
		__delay_ms(1000);
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
		__delay_ms(1000);
		
        if (trial == 0) {
            instCtrl(0x01);
            displayMsg("NO TRIALS LEFT");
			__delay_ms(1000);
            locked();
        }
    }
}

void enterPass(void)
{
    int j = 0;
    unsigned char keyData;

    while (j < 8)
    {
        if (RD4)
        {
            __delay_ms(10); // debounce
            keyData = PORTD & 0x0F;
			
            switch (keyData)
            {
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

void main(void)
{
    ADCON1 = 0x06;
    TRISA = 0x00;
    TRISB = 0x00;
    TRISC = 0x80;
    TRISD = 0xFF;

    

    initLCD();
    instCtrl(0x80);
    displayMsg("[1]Set PIN");
    instCtrl(0xC0);
    displayMsg("[2]Enter PIN");

    while (1)
    {
		if(invalid_flag == 1){

				instCtrl(0x01);
                displayMsg("ENTER PIN:");
                enterPass();
				}

        if (RD4) {
			 unsigned char INPUT = PORTD & 0x0F;
            while (RD4); // wait for button release
            

            if (INPUT == 0x00) {
                instCtrl(0x01);
                displayMsg("SET PIN:");
                setPass();
                instCtrl(0x01);
                displayMsg("PIN SET!");
				__delay_ms(1000);

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
