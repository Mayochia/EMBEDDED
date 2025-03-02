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
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RD4
_RD4	set	0x44
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _delay
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
	file	"CpE 3202-LE2.as"
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
?_delay:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	2
??_dataCtrl:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
??_main:	; 0 bytes @ 0x7
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x8
	ds	2
	global	main@key
main@key:	; 1 bytes @ 0xA
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
;!    COMMON           14     11      11
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
;!    _main->_dataCtrl
;!    _main->_instCtrl
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0    1101
;!                                              7 COMMON     4     4      0
;!                           _dataCtrl
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     423
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     219
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     219
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                6     4      2     204
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!     _delay
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      B       B       1       78.6%
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
;;		line 45 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[COMMON] int 
;;  key             1   10[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
	line	45
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l574:	
;LE2-3.c: 46: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	47
;LE2-3.c: 47: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	48
	
l576:	
;LE2-3.c: 48: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	49
	
l578:	
;LE2-3.c: 49: initLCD();
	fcall	_initLCD
	line	51
	
l580:	
;LE2-3.c: 50: unsigned char key;
;LE2-3.c: 51: int i = 0;
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l582
	line	52
;LE2-3.c: 52: while(1) {
	
l37:	
	line	53
	
l582:	
;LE2-3.c: 53: if (RD4 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l582
u50:
	line	54
	
l584:	
;LE2-3.c: 54: key = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@key)
	line	56
	
l586:	
;LE2-3.c: 56: if(i >= 80) {
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(050h))^80h
	subwf	btemp+1,w
	skipz
	goto	u65
	movlw	low(050h)
	subwf	(main@i),w
u65:

	skipc
	goto	u61
	goto	u60
u61:
	goto	l592
u60:
	line	57
	
l588:	
;LE2-3.c: 57: initLCD();
	fcall	_initLCD
	line	58
	
l590:	
;LE2-3.c: 58: i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	59
;LE2-3.c: 59: }
	goto	l604
	line	60
	
l39:	
	
l592:	
;LE2-3.c: 60: else if(i == 20) {
	movlw	014h
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l596
u70:
	line	61
	
l594:	
;LE2-3.c: 61: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	62
;LE2-3.c: 62: }
	goto	l604
	line	63
	
l41:	
	
l596:	
;LE2-3.c: 63: else if(i == 40) {
	movlw	028h
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l600
u80:
	line	64
	
l598:	
;LE2-3.c: 64: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	line	65
;LE2-3.c: 65: }
	goto	l604
	line	66
	
l43:	
	
l600:	
;LE2-3.c: 66: else if(i == 60) {
	movlw	03Ch
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l604
u90:
	line	67
	
l602:	
;LE2-3.c: 67: instCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instCtrl
	goto	l604
	line	68
	
l45:	
	goto	l604
	line	70
	
l44:	
	goto	l604
	
l42:	
	goto	l604
	
l40:	
	
l604:	
;LE2-3.c: 68: }
;LE2-3.c: 70: if (key == 0x00) dataCtrl('1');
	movf	(main@key),f
	skipz
	goto	u101
	goto	u100
u101:
	goto	l608
u100:
	
l606:	
	movlw	(031h)
	fcall	_dataCtrl
	goto	l652
	line	71
	
l46:	
	
l608:	
;LE2-3.c: 71: else if (key == 0x01) dataCtrl('2');
	movf	(main@key),w
	xorlw	01h
	skipz
	goto	u111
	goto	u110
u111:
	goto	l612
u110:
	
l610:	
	movlw	(032h)
	fcall	_dataCtrl
	goto	l652
	line	72
	
l48:	
	
l612:	
;LE2-3.c: 72: else if (key == 0x02) dataCtrl('3');
	movf	(main@key),w
	xorlw	02h
	skipz
	goto	u121
	goto	u120
u121:
	goto	l616
u120:
	
l614:	
	movlw	(033h)
	fcall	_dataCtrl
	goto	l652
	line	73
	
l50:	
	
l616:	
;LE2-3.c: 73: else if (key == 0x04) dataCtrl('4');
	movf	(main@key),w
	xorlw	04h
	skipz
	goto	u131
	goto	u130
u131:
	goto	l620
u130:
	
l618:	
	movlw	(034h)
	fcall	_dataCtrl
	goto	l652
	line	74
	
l52:	
	
l620:	
;LE2-3.c: 74: else if (key == 0x05) dataCtrl('5');
	movf	(main@key),w
	xorlw	05h
	skipz
	goto	u141
	goto	u140
u141:
	goto	l624
u140:
	
l622:	
	movlw	(035h)
	fcall	_dataCtrl
	goto	l652
	line	75
	
l54:	
	
l624:	
;LE2-3.c: 75: else if (key == 0x06) dataCtrl('6');
	movf	(main@key),w
	xorlw	06h
	skipz
	goto	u151
	goto	u150
u151:
	goto	l628
u150:
	
l626:	
	movlw	(036h)
	fcall	_dataCtrl
	goto	l652
	line	76
	
l56:	
	
l628:	
;LE2-3.c: 76: else if (key == 0x08) dataCtrl('7');
	movf	(main@key),w
	xorlw	08h
	skipz
	goto	u161
	goto	u160
u161:
	goto	l632
u160:
	
l630:	
	movlw	(037h)
	fcall	_dataCtrl
	goto	l652
	line	77
	
l58:	
	
l632:	
;LE2-3.c: 77: else if (key == 0x09) dataCtrl('8');
	movf	(main@key),w
	xorlw	09h
	skipz
	goto	u171
	goto	u170
u171:
	goto	l636
u170:
	
l634:	
	movlw	(038h)
	fcall	_dataCtrl
	goto	l652
	line	78
	
l60:	
	
l636:	
;LE2-3.c: 78: else if (key == 0x0A) dataCtrl('9');
	movf	(main@key),w
	xorlw	0Ah
	skipz
	goto	u181
	goto	u180
u181:
	goto	l640
u180:
	
l638:	
	movlw	(039h)
	fcall	_dataCtrl
	goto	l652
	line	79
	
l62:	
	
l640:	
;LE2-3.c: 79: else if (key == 0x0C) dataCtrl('*');
	movf	(main@key),w
	xorlw	0Ch
	skipz
	goto	u191
	goto	u190
u191:
	goto	l644
u190:
	
l642:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l652
	line	80
	
l64:	
	
l644:	
;LE2-3.c: 80: else if (key == 0x0D) dataCtrl('0');
	movf	(main@key),w
	xorlw	0Dh
	skipz
	goto	u201
	goto	u200
u201:
	goto	l648
u200:
	
l646:	
	movlw	(030h)
	fcall	_dataCtrl
	goto	l652
	line	81
	
l66:	
	
l648:	
;LE2-3.c: 81: else if (key == 0x0E) dataCtrl('#');
	movf	(main@key),w
	xorlw	0Eh
	skipz
	goto	u211
	goto	u210
u211:
	goto	l652
u210:
	
l650:	
	movlw	(023h)
	fcall	_dataCtrl
	goto	l652
	
l68:	
	goto	l652
	line	82
	
l67:	
	goto	l652
	
l65:	
	goto	l652
	
l63:	
	goto	l652
	
l61:	
	goto	l652
	
l59:	
	goto	l652
	
l57:	
	goto	l652
	
l55:	
	goto	l652
	
l53:	
	goto	l652
	
l51:	
	goto	l652
	
l49:	
	goto	l652
	
l47:	
	
l652:	
;LE2-3.c: 82: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l582
	line	83
	
l38:	
	goto	l582
	line	84
	
l69:	
	line	52
	goto	l582
	
l70:	
	line	86
	
l71:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 37 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	37
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
	line	37
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l572:	
;LE2-3.c: 38: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	39
;LE2-3.c: 39: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	40
;LE2-3.c: 40: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	41
;LE2-3.c: 41: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	42
;LE2-3.c: 42: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	43
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 27 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    6[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	27
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
	line	27
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	28
	
l548:	
;LE2-3.c: 28: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	29
	
l550:	
;LE2-3.c: 29: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	30
	
l552:	
;LE2-3.c: 30: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	31
	
l554:	
;LE2-3.c: 31: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	32
	
l556:	
;LE2-3.c: 32: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	33
	
l558:	
;LE2-3.c: 33: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	34
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 18 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    6[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	18
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
	line	18
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	19
	
l560:	
;LE2-3.c: 19: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	20
	
l562:	
;LE2-3.c: 20: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	21
	
l564:	
;LE2-3.c: 21: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	22
	
l566:	
;LE2-3.c: 22: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	23
	
l568:	
;LE2-3.c: 23: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	24
	
l570:	
;LE2-3.c: 24: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	25
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 12 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dataCtrl
;;		_instCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	12
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #2\LE2-3.c"
	line	12
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	14
	
l528:	
;LE2-3.c: 13: int i, j;
;LE2-3.c: 14: for (i = cnt; i != 0; i--);
	movf	(delay@cnt+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@cnt),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l530:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l534
u10:
	goto	l538
	
l532:	
	goto	l538
	
l21:	
	
l534:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l536:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l534
u20:
	goto	l538
	
l22:	
	line	15
	
l538:	
;LE2-3.c: 15: for (j = 0; j < 5000; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l540:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(01388h)
	subwf	(delay@j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l544
u30:
	goto	l25
	
l542:	
	goto	l25
	
l23:	
	
l544:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l546:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(01388h)
	subwf	(delay@j),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l544
u40:
	goto	l25
	
l24:	
	line	16
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
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
