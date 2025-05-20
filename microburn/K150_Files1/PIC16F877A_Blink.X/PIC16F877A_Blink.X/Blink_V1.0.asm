; PIC16F877A Configuration Bit Settings

; Assembly source line config statements

#include "p16f877a.inc"

; CONFIG
; __config 0xFF3A
 __CONFIG _FOSC_HS & _WDTE_OFF & _PWRTE_OFF & _BOREN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _CP_OFF


RES_VECT  CODE    0x0000            ; processor reset vector
    GOTO    START                   ; go to beginning of program

; TODO ADD INTERRUPTS HERE IF USED

MAIN_PROG CODE                      ; let linker place main program

START

;===================================================================
; Set up the constants
;===================================================================

STATUS equ 03h
TRISB equ 86h
PORTB equ 06h
CounterL equ 21h
CounterH equ 22h
LED_PIN equ 0x01    ; RB1 pin

;===================================================================
; Set up the port
;===================================================================

bsf STATUS, RP0
CLRF TRISB
bcf STATUS, RP0
CLRF PORTB
 
;===================================================================
; Turn ON and OFF the LED
;===================================================================
 
start bsf PORTB, LED_PIN
CALL Delay
CALL Delay
CALL Delay
bcf PORTB, LED_PIN
CALL Delay
CALL Delay
GOTO start
 
;===================================================================
; Delay
;===================================================================
Delay DECFSZ CounterL,1
GOTO Delay
DECFSZ CounterH,1
GOTO Delay
RETURN

 
END