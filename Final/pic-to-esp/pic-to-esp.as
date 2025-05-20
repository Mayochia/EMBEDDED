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
	FNCALL	_main,_init_ports
	FNCALL	_main,_init_uart
	FNCALL	_main,_uart_transmit_state
	FNCALL	_uart_transmit_state,_uart_transmit
	FNROOT	_main
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTDbits
_PORTDbits	set	0x8
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_TXREG
_TXREG	set	0x19
	global	_ADCON1
_ADCON1	set	0x9F
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TXSTAbits
_TXSTAbits	set	0x98
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _init_ports
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"pic-to-esp.as"
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
?_init_ports:	; 0 bytes @ 0x0
??_init_ports:	; 0 bytes @ 0x0
?_init_uart:	; 0 bytes @ 0x0
??_init_uart:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_uart_transmit:	; 0 bytes @ 0x0
??_uart_transmit:	; 0 bytes @ 0x0
	global	uart_transmit@data
uart_transmit@data:	; 1 bytes @ 0x0
	ds	1
?_uart_transmit_state:	; 0 bytes @ 0x1
	global	uart_transmit_state@state
uart_transmit_state@state:	; 2 bytes @ 0x1
	ds	2
??_uart_transmit_state:	; 0 bytes @ 0x3
	global	_uart_transmit_state$235
_uart_transmit_state$235:	; 2 bytes @ 0x3
	ds	2
??_main:	; 0 bytes @ 0x5
	ds	3
	global	main@state
main@state:	; 2 bytes @ 0x8
	ds	2
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
;!    COMMON           14     10      10
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
;!    _main->_uart_transmit_state
;!    _uart_transmit_state->_uart_transmit
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
;! (0) _main                                                 5     5      0     144
;!                                              5 COMMON     5     5      0
;!                         _init_ports
;!                          _init_uart
;!                _uart_transmit_state
;! ---------------------------------------------------------------------------------
;! (1) _uart_transmit_state                                  4     2      2     121
;!                                              1 COMMON     4     2      2
;!                      _uart_transmit
;! ---------------------------------------------------------------------------------
;! (2) _uart_transmit                                        1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_uart                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_ports                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init_ports
;!   _init_uart
;!   _uart_transmit_state
;!     _uart_transmit
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       A       1       71.4%
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
;;		line 28 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  state           2    8[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init_ports
;;		_init_uart
;;		_uart_transmit_state
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
	line	28
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l564:	
;pic-to-esp.c: 29: init_ports();
	fcall	_init_ports
	line	30
;pic-to-esp.c: 30: init_uart();
	fcall	_init_uart
	goto	l566
	line	32
;pic-to-esp.c: 32: while (1) {
	
l29:	
	line	33
	
l566:	
;pic-to-esp.c: 33: int state = PORTDbits.RD2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(8),w	;volatile
	movwf	(??_main+0)+0
	rrf	(??_main+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	0+(??_main+1)+0,w
	movwf	(main@state)
	movf	1+(??_main+1)+0,w
	movwf	(main@state+1)
	line	34
	
l568:	
;pic-to-esp.c: 34: uart_transmit_state(state);
	movf	(main@state+1),w
	clrf	(uart_transmit_state@state+1)
	addwf	(uart_transmit_state@state+1)
	movf	(main@state),w
	clrf	(uart_transmit_state@state)
	addwf	(uart_transmit_state@state)

	fcall	_uart_transmit_state
	line	35
	
l570:	
;pic-to-esp.c: 35: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u57:
	decfsz	((??_main+0)+0),f
	goto	u57
	decfsz	((??_main+0)+0+1),f
	goto	u57
	decfsz	((??_main+0)+0+2),f
	goto	u57
	nop2
opt asmopt_on

	goto	l566
	line	36
	
l30:	
	line	32
	goto	l566
	
l31:	
	line	37
	
l32:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_uart_transmit_state

;; *************** function _uart_transmit_state *****************
;; Defined at:
;;		line 59 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
;; Parameters:    Size  Location     Type
;;  state           2    1[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	59
global __ptext1
__ptext1:	;psect for function _uart_transmit_state
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
	line	59
	global	__size_of_uart_transmit_state
	__size_of_uart_transmit_state	equ	__end_of_uart_transmit_state-_uart_transmit_state
	
_uart_transmit_state:	
;incstack = 0
	opt	stack 6
; Regs used in _uart_transmit_state: [wreg+status,2+status,0+pclath+cstack]
	line	60
	
l552:	
;pic-to-esp.c: 60: uart_transmit(state ? '1' : '0');
	movf	((uart_transmit_state@state+1)),w
	iorwf	((uart_transmit_state@state)),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l556
u40:
	
l554:	
	movlw	low(030h)
	movwf	(_uart_transmit_state$235)
	movlw	high(030h)
	movwf	((_uart_transmit_state$235))+1
	goto	l558
	
l48:	
	
l556:	
	movlw	low(031h)
	movwf	(_uart_transmit_state$235)
	movlw	high(031h)
	movwf	((_uart_transmit_state$235))+1
	goto	l558
	
l50:	
	
l558:	
	movf	(_uart_transmit_state$235),w
	fcall	_uart_transmit
	line	61
	
l560:	
;pic-to-esp.c: 61: uart_transmit('\r');
	movlw	(0Dh)
	fcall	_uart_transmit
	line	62
	
l562:	
;pic-to-esp.c: 62: uart_transmit('\n');
	movlw	(0Ah)
	fcall	_uart_transmit
	line	63
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_uart_transmit_state
	__end_of_uart_transmit_state:
	signat	_uart_transmit_state,4216
	global	_uart_transmit

;; *************** function _uart_transmit *****************
;; Defined at:
;;		line 54 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
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
;;		_uart_transmit_state
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	54
global __ptext2
__ptext2:	;psect for function _uart_transmit
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
	line	54
	global	__size_of_uart_transmit
	__size_of_uart_transmit	equ	__end_of_uart_transmit-_uart_transmit
	
_uart_transmit:	
;incstack = 0
	opt	stack 6
; Regs used in _uart_transmit: [wreg]
;uart_transmit@data stored from wreg
	movwf	(uart_transmit@data)
	line	55
	
l548:	
;pic-to-esp.c: 55: while (!PIR1bits.TXIF);
	goto	l41
	
l42:	
	
l41:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u31
	goto	u30
u31:
	goto	l41
u30:
	goto	l550
	
l43:	
	line	56
	
l550:	
;pic-to-esp.c: 56: TXREG = data;
	movf	(uart_transmit@data),w
	movwf	(25)	;volatile
	line	57
	
l44:	
	return
	opt stack 0
GLOBAL	__end_of_uart_transmit
	__end_of_uart_transmit:
	signat	_uart_transmit,4216
	global	_init_uart

;; *************** function _init_uart *****************
;; Defined at:
;;		line 46 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
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
psect	text3,local,class=CODE,delta=2,merge=1
	line	46
global __ptext3
__ptext3:	;psect for function _init_uart
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
	line	46
	global	__size_of_init_uart
	__size_of_init_uart	equ	__end_of_init_uart-_init_uart
	
_init_uart:	
;incstack = 0
	opt	stack 7
; Regs used in _init_uart: [wreg]
	line	47
	
l518:	
;pic-to-esp.c: 47: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	48
	
l520:	
;pic-to-esp.c: 48: TXSTAbits.BRGH = 1;
	bsf	(152)^080h,2	;volatile
	line	49
	
l522:	
;pic-to-esp.c: 49: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	50
	
l524:	
;pic-to-esp.c: 50: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	51
	
l526:	
;pic-to-esp.c: 51: TXSTAbits.TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(152)^080h,5	;volatile
	line	52
	
l38:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
	signat	_init_uart,88
	global	_init_ports

;; *************** function _init_ports *****************
;; Defined at:
;;		line 39 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	39
global __ptext4
__ptext4:	;psect for function _init_ports
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\pic-to-esp\pic-to-esp.c"
	line	39
	global	__size_of_init_ports
	__size_of_init_ports	equ	__end_of_init_ports-_init_ports
	
_init_ports:	
;incstack = 0
	opt	stack 7
; Regs used in _init_ports: [wreg]
	line	40
	
l512:	
;pic-to-esp.c: 40: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	41
	
l514:	
;pic-to-esp.c: 41: TRISCbits.TRISC6 = 0;
	bcf	(135)^080h,6	;volatile
	line	42
	
l516:	
;pic-to-esp.c: 42: TRISCbits.TRISC7 = 1;
	bsf	(135)^080h,7	;volatile
	line	43
;pic-to-esp.c: 43: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	44
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_init_ports
	__end_of_init_ports:
	signat	_init_ports,88
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
