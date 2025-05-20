opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_Receive
	FNCALL	_main,_UART_TransmitInteger
	FNCALL	_main,_initialize
	FNCALL	_main,_process_command
	FNCALL	_UART_Init,_UART_TransmitInteger
	FNCALL	_UART_TransmitInteger,_UART_Transmit
	FNROOT	_main
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_TXREG
_TXREG	set	0x19
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_TXSTAbits
_TXSTAbits	set	0x98
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _UART_Transmit
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"led_test.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initialize:	; 0 bytes @ 0x0
??_initialize:	; 0 bytes @ 0x0
?_UART_Init:	; 0 bytes @ 0x0
??_UART_Receive:	; 0 bytes @ 0x0
?_process_command:	; 0 bytes @ 0x0
??_process_command:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_UART_Transmit:	; 0 bytes @ 0x0
??_UART_Transmit:	; 0 bytes @ 0x0
?_UART_Receive:	; 1 bytes @ 0x0
	global	UART_Transmit@data
UART_Transmit@data:	; 1 bytes @ 0x0
	global	process_command@value
process_command@value:	; 1 bytes @ 0x0
	ds	1
?_UART_TransmitInteger:	; 0 bytes @ 0x1
	global	UART_Receive@dummy
UART_Receive@dummy:	; 1 bytes @ 0x1
	global	UART_TransmitInteger@value
UART_TransmitInteger@value:	; 2 bytes @ 0x1
	ds	2
??_UART_Init:	; 0 bytes @ 0x3
??_UART_TransmitInteger:	; 0 bytes @ 0x3
	ds	3
	global	UART_Init@dummy
UART_Init@dummy:	; 1 bytes @ 0x6
	ds	1
??_main:	; 0 bytes @ 0x7
	ds	3
	global	main@prev_switch_state
main@prev_switch_state:	; 1 bytes @ 0xA
	ds	1
	global	main@rx_data
main@rx_data:	; 1 bytes @ 0xB
	ds	1
	global	main@current_switch_state
main@current_switch_state:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_UART_Init
;!    _UART_Init->_UART_TransmitInteger
;!    _UART_TransmitInteger->_UART_Transmit
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0     457
;!                                              7 COMMON     6     6      0
;!                          _UART_Init
;!                       _UART_Receive
;!               _UART_TransmitInteger
;!                         _initialize
;!                    _process_command
;! ---------------------------------------------------------------------------------
;! (1) _process_command                                      1     1      0      30
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _initialize                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _UART_Receive                                         2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _UART_Init                                            4     4      0     146
;!                                              3 COMMON     4     4      0
;!               _UART_TransmitInteger
;! ---------------------------------------------------------------------------------
;! (1) _UART_TransmitInteger                                 2     0      2     146
;!                                              1 COMMON     2     0      2
;!                      _UART_Transmit
;! ---------------------------------------------------------------------------------
;! (2) _UART_Transmit                                        1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _UART_Init
;!     _UART_TransmitInteger
;!       _UART_Transmit
;!   _UART_Receive
;!   _UART_TransmitInteger
;!     _UART_Transmit
;!   _initialize
;!   _process_command
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      D       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  current_swit    1   12[COMMON] unsigned char 
;;  rx_data         1   11[COMMON] unsigned char 
;;  prev_switch_    1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_UART_Init
;;		_UART_Receive
;;		_UART_TransmitInteger
;;		_initialize
;;		_process_command
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l609:	
;main.c: 37: char rx_data;
;main.c: 38: unsigned char prev_switch_state = 0xFF;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@prev_switch_state)
	line	39
	
l611:	
;main.c: 39: unsigned char current_switch_state = 0;
	clrf	(main@current_switch_state)
	line	41
	
l613:	
;main.c: 41: initialize();
	fcall	_initialize
	line	42
	
l615:	
;main.c: 42: UART_Init();
	fcall	_UART_Init
	line	44
	
l617:	
;main.c: 44: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u197:
	decfsz	((??_main+0)+0),f
	goto	u197
	decfsz	((??_main+0)+0+1),f
	goto	u197
	decfsz	((??_main+0)+0+2),f
	goto	u197
	nop2
opt asmopt_on

	goto	l619
	line	46
;main.c: 46: while (1) {
	
l37:	
	line	48
	
l619:	
;main.c: 48: current_switch_state = PORTBbits.RB1;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),1	;volatile
	movlw	1
	movwf	(main@current_switch_state)
	line	51
	
l621:	
;main.c: 51: if (current_switch_state != prev_switch_state) {
	movf	(main@current_switch_state),w
	xorwf	(main@prev_switch_state),w
	skipnz
	goto	u111
	goto	u110
u111:
	goto	l633
u110:
	line	52
	
l623:	
;main.c: 52: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u207:
	decfsz	((??_main+0)+0),f
	goto	u207
	decfsz	((??_main+0)+0+1),f
	goto	u207
	nop
opt asmopt_on

	line	53
	
l625:	
;main.c: 53: current_switch_state = PORTBbits.RB1;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),1	;volatile
	movlw	1
	movwf	(main@current_switch_state)
	line	55
	
l627:	
;main.c: 55: if (current_switch_state != prev_switch_state) {
	movf	(main@current_switch_state),w
	xorwf	(main@prev_switch_state),w
	skipnz
	goto	u121
	goto	u120
u121:
	goto	l633
u120:
	line	56
	
l629:	
;main.c: 56: prev_switch_state = current_switch_state;
	movf	(main@current_switch_state),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@prev_switch_state)
	line	59
;main.c: 59: while (!TXSTAbits.TRMT);
	goto	l40
	
l41:	
	
l40:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u131
	goto	u130
u131:
	goto	l40
u130:
	goto	l43
	
l42:	
	line	60
;main.c: 60: while (!PIR1bits.TXIF);
	goto	l43
	
l44:	
	
l43:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),4	;volatile
	goto	u141
	goto	u140
u141:
	goto	l43
u140:
	goto	l631
	
l45:	
	line	63
	
l631:	
;main.c: 63: UART_TransmitInteger(current_switch_state);
	movf	(main@current_switch_state),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(UART_TransmitInteger@value)
	movf	1+(??_main+0)+0,w
	movwf	(UART_TransmitInteger@value+1)
	fcall	_UART_TransmitInteger
	goto	l633
	line	64
	
l39:	
	goto	l633
	line	65
	
l38:	
	line	68
	
l633:	
;main.c: 64: }
;main.c: 65: }
;main.c: 68: if (PIR1bits.RCIF) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),5	;volatile
	goto	u151
	goto	u150
u151:
	goto	l647
u150:
	line	69
	
l635:	
;main.c: 69: rx_data = UART_Receive();
	fcall	_UART_Receive
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@rx_data)
	line	71
	
l637:	
;main.c: 71: if (rx_data == 'A' || rx_data == 'B') {
	movf	(main@rx_data),w
	xorlw	041h
	skipnz
	goto	u161
	goto	u160
u161:
	goto	l641
u160:
	
l639:	
	movf	(main@rx_data),w
	xorlw	042h
	skipz
	goto	u171
	goto	u170
u171:
	goto	l645
u170:
	goto	l641
	
l49:	
	line	72
	
l641:	
;main.c: 72: process_command(rx_data);
	movf	(main@rx_data),w
	fcall	_process_command
	goto	l645
	line	73
	
l47:	
	line	76
;main.c: 73: }
;main.c: 76: while (PIR1bits.RCIF) {
	goto	l645
	
l51:	
	line	77
	
l643:	
;main.c: 77: UART_Receive();
	fcall	_UART_Receive
	goto	l645
	line	78
	
l50:	
	line	76
	
l645:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(12),5	;volatile
	goto	u181
	goto	u180
u181:
	goto	l643
u180:
	goto	l647
	
l52:	
	goto	l647
	line	79
	
l46:	
	line	81
	
l647:	
;main.c: 78: }
;main.c: 79: }
;main.c: 81: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u217:
	decfsz	((??_main+0)+0),f
	goto	u217
	decfsz	((??_main+0)+0+1),f
	goto	u217
	nop2
opt asmopt_on

	goto	l619
	line	82
	
l53:	
	line	46
	goto	l619
	
l54:	
	line	83
	
l55:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_process_command

;; *************** function _process_command *****************
;; Defined at:
;;		line 164 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	164
global __ptext1
__ptext1:	;psect for function _process_command
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	164
	global	__size_of_process_command
	__size_of_process_command	equ	__end_of_process_command-_process_command
	
_process_command:	
;incstack = 0
	opt	stack 7
; Regs used in _process_command: [wreg]
;process_command@value stored from wreg
	movwf	(process_command@value)
	line	165
	
l601:	
;main.c: 165: if (value == 'A') {
	movf	(process_command@value),w
	xorlw	041h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l605
u90:
	line	166
	
l603:	
;main.c: 166: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	167
;main.c: 167: } else if (value == 'B') {
	goto	l88
	
l85:	
	
l605:	
	movf	(process_command@value),w
	xorlw	042h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l88
u100:
	line	168
	
l607:	
;main.c: 168: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	goto	l88
	line	169
	
l87:	
	goto	l88
	line	170
	
l86:	
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_process_command
	__end_of_process_command:
	signat	_process_command,4216
	global	_initialize

;; *************** function _initialize *****************
;; Defined at:
;;		line 85 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	85
global __ptext2
__ptext2:	;psect for function _initialize
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	85
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:	
;incstack = 0
	opt	stack 7
; Regs used in _initialize: [wreg]
	line	87
	
l561:	
;main.c: 87: TRISBbits.TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h,0	;volatile
	line	88
;main.c: 88: TRISBbits.TRISB1 = 1;
	bsf	(134)^080h,1	;volatile
	line	89
;main.c: 89: TRISCbits.TRISC6 = 0;
	bcf	(135)^080h,6	;volatile
	line	90
;main.c: 90: TRISCbits.TRISC7 = 1;
	bsf	(135)^080h,7	;volatile
	line	93
;main.c: 93: OPTION_REGbits.nRBPU = 0;
	bcf	(129)^080h,7	;volatile
	line	95
;main.c: 95: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	98
	
l563:	
;main.c: 98: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	99
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
	signat	_initialize,88
	global	_UART_Receive

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 139 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	139
global __ptext3
__ptext3:	;psect for function _UART_Receive
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	139
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
;incstack = 0
	opt	stack 7
; Regs used in _UART_Receive: [wreg]
	line	141
	
l589:	
;main.c: 141: if (RCSTAbits.OERR) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24),1	;volatile
	goto	u71
	goto	u70
u71:
	goto	l75
u70:
	line	142
	
l591:	
;main.c: 142: RCSTAbits.CREN = 0;
	bcf	(24),4	;volatile
	line	143
;main.c: 143: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	144
	
l75:	
	line	147
;main.c: 144: }
;main.c: 147: if (RCSTAbits.FERR) {
	btfss	(24),2	;volatile
	goto	u81
	goto	u80
u81:
	goto	l597
u80:
	line	148
	
l593:	
;main.c: 148: char dummy = RCREG;
	movf	(26),w	;volatile
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	movwf	(UART_Receive@dummy)
	line	149
;main.c: 149: return 0;
	movlw	(0)
	goto	l77
	
l595:	
	goto	l77
	line	150
	
l76:	
	line	152
	
l597:	
;main.c: 150: }
;main.c: 152: return RCREG;
	movf	(26),w	;volatile
	goto	l77
	
l599:	
	line	153
	
l77:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Receive
	__end_of_UART_Receive:
	signat	_UART_Receive,89
	global	_UART_Init

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 101 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_UART_TransmitInteger
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	101
global __ptext4
__ptext4:	;psect for function _UART_Init
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	101
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _UART_Init: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	103
	
l565:	
;main.c: 103: TXSTAbits.BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(152)^080h,2	;volatile
	line	104
	
l567:	
;main.c: 104: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	105
	
l569:	
;main.c: 105: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	106
	
l571:	
;main.c: 106: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	107
	
l573:	
;main.c: 107: TXSTAbits.TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(152)^080h,5	;volatile
	line	108
	
l575:	
;main.c: 108: RCSTAbits.CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),4	;volatile
	line	111
	
l577:	
;main.c: 111: if (RCSTAbits.OERR) {
	btfss	(24),1	;volatile
	goto	u51
	goto	u50
u51:
	goto	l61
u50:
	line	112
	
l579:	
;main.c: 112: RCSTAbits.CREN = 0;
	bcf	(24),4	;volatile
	line	113
;main.c: 113: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	114
	
l61:	
	line	115
;main.c: 114: }
;main.c: 115: if (RCSTAbits.FERR) {
	btfss	(24),2	;volatile
	goto	u61
	goto	u60
u61:
	goto	l583
u60:
	line	116
	
l581:	
;main.c: 116: char dummy = RCREG;
	movf	(26),w	;volatile
	movwf	(??_UART_Init+0)+0
	movf	(??_UART_Init+0)+0,w
	movwf	(UART_Init@dummy)
	goto	l583
	line	117
	
l62:	
	line	120
	
l583:	
;main.c: 117: }
;main.c: 120: PIR1bits.TXIF = 0;
	bcf	(12),4	;volatile
	line	121
	
l585:	
;main.c: 121: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	129
;main.c: 129: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_UART_Init+0)+0+2),f
movlw	19
movwf	((??_UART_Init+0)+0+1),f
	movlw	177
movwf	((??_UART_Init+0)+0),f
u227:
	decfsz	((??_UART_Init+0)+0),f
	goto	u227
	decfsz	((??_UART_Init+0)+0+1),f
	goto	u227
	decfsz	((??_UART_Init+0)+0+2),f
	goto	u227
	nop2
opt asmopt_on

	line	130
	
l587:	
;main.c: 130: UART_TransmitInteger(PORTBbits.RB1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(6),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_UART_Init+0)+0
	clrf	(??_UART_Init+0)+0+1
	movf	0+(??_UART_Init+0)+0,w
	movwf	(UART_TransmitInteger@value)
	movf	1+(??_UART_Init+0)+0,w
	movwf	(UART_TransmitInteger@value+1)
	fcall	_UART_TransmitInteger
	line	131
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
	signat	_UART_Init,88
	global	_UART_TransmitInteger

;; *************** function _UART_TransmitInteger *****************
;; Defined at:
;;		line 155 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
;; Parameters:    Size  Location     Type
;;  value           2    1[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_UART_Transmit
;; This function is called by:
;;		_main
;;		_UART_Init
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	155
global __ptext5
__ptext5:	;psect for function _UART_TransmitInteger
psect	text5
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	155
	global	__size_of_UART_TransmitInteger
	__size_of_UART_TransmitInteger	equ	__end_of_UART_TransmitInteger-_UART_TransmitInteger
	
_UART_TransmitInteger:	
;incstack = 0
	opt	stack 6
; Regs used in _UART_TransmitInteger: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	157
	
l549:	
;main.c: 157: if (value > 0) value = 1;
	movf	(UART_TransmitInteger@value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(01h)
	subwf	(UART_TransmitInteger@value),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l553
u30:
	
l551:	
	movlw	low(01h)
	movwf	(UART_TransmitInteger@value)
	movlw	high(01h)
	movwf	((UART_TransmitInteger@value))+1
	goto	l553
	
l80:	
	line	158
	
l553:	
;main.c: 158: if (value < 0) value = 0;
	btfss	(UART_TransmitInteger@value+1),7
	goto	u41
	goto	u40
u41:
	goto	l557
u40:
	
l555:	
	clrf	(UART_TransmitInteger@value)
	clrf	(UART_TransmitInteger@value+1)
	goto	l557
	
l81:	
	line	160
	
l557:	
;main.c: 160: UART_Transmit('0' + value);
	movf	(UART_TransmitInteger@value),w
	addlw	030h
	fcall	_UART_Transmit
	line	161
	
l559:	
;main.c: 161: UART_Transmit('\n');
	movlw	(0Ah)
	fcall	_UART_Transmit
	line	162
	
l82:	
	return
	opt stack 0
GLOBAL	__end_of_UART_TransmitInteger
	__end_of_UART_TransmitInteger:
	signat	_UART_TransmitInteger,4216
	global	_UART_Transmit

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 133 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_TransmitInteger
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	133
global __ptext6
__ptext6:	;psect for function _UART_Transmit
psect	text6
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\led_test\main.c"
	line	133
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
;incstack = 0
	opt	stack 6
; Regs used in _UART_Transmit: [wreg]
;UART_Transmit@data stored from wreg
	movwf	(UART_Transmit@data)
	line	134
	
l545:	
;main.c: 134: while (!TXSTAbits.TRMT);
	goto	l66
	
l67:	
	
l66:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u11
	goto	u10
u11:
	goto	l66
u10:
	goto	l69
	
l68:	
	line	135
;main.c: 135: while (!PIR1bits.TXIF);
	goto	l69
	
l70:	
	
l69:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),4	;volatile
	goto	u21
	goto	u20
u21:
	goto	l69
u20:
	goto	l547
	
l71:	
	line	136
	
l547:	
;main.c: 136: TXREG = data;
	movf	(UART_Transmit@data),w
	movwf	(25)	;volatile
	line	137
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Transmit
	__end_of_UART_Transmit:
	signat	_UART_Transmit,4216
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
