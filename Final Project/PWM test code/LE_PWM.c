#include <xc.h>
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

int cnt_freq = 0;
int cnt_cycle = 0; 
float percent = 0.1;

float period;
unsigned char freq_PR2[3] = {0x7C, 0x3E, 0x1E};
float period_freq[3] = {0.002, 0.001, 0.0005};

void dutyCycle(){
    unsigned int result = 0;
    float PWM_time = 0;

    PWM_time = percent * (PR2 + 1);
    result = (unsigned int)(PWM_time * 4);

    CCPR1L = result >> 2;  
    CCP1CON = ((result & 0x03) << 4) | 0x0C;
}

void main()
{        
    // TRISB = 0x03;
    TRISC = 0x00;
    
    PR2 = freq_PR2[0];  
    period = period_freq[0];        

    CCPR1L = 0x0C;     
    CCP1CON = 0x2C;    

    RC2 = 0;           
    T2CON = 0x06; 

    while(1)
    {
        if(RB0){
            cnt_freq++;
            if(cnt_freq > 2) 
            	cnt_freq = 0;

            PR2 = freq_PR2[cnt_freq];
            period = period_freq[cnt_freq];  

            dutyCycle();
            while(RB0);
        }
        
        if(RB1){
            cnt_cycle++;
            switch(cnt_cycle){
                case 0: percent = 0.1; break;
                case 1: percent = 0.25; break;
                case 2: percent = 0.5; break;
                case 3: percent = 0.75; break;
                case 4: percent = 0.95; break;
                default: cnt_cycle = 0; percent = 0.1; break;
            }
            
            dutyCycle();
            while(RB1);
        }
    }
}
