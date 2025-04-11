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
	FNCALL	_main,_checkInput
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_TXREG
_TXREG	set	0x19
	global	_RB4
_RB4	set	0x34
	global	_SPEN
_SPEN	set	0xC7
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRMT
_TRMT	set	0x4C1
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _checkInput
	file	"CPE 3201-LE6-TX.as"
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
?_main:	; 0 bytes @ 0x0
	global	?_checkInput
?_checkInput:	; 2 bytes @ 0x0
	ds	2
??_checkInput:	; 0 bytes @ 0x2
	ds	2
	global	checkInput@output
checkInput@output:	; 2 bytes @ 0x4
	ds	2
	global	checkInput@input
checkInput@input:	; 2 bytes @ 0x6
	ds	2
??_main:	; 0 bytes @ 0x8
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
;!    COMMON           14      8       8
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
;!    _main->_checkInput
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     195
;!                         _checkInput
;! ---------------------------------------------------------------------------------
;! (1) _checkInput                                           8     6      2     195
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _checkInput
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       8       1       57.1%
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
;;		line 7 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #6\LE6-4-TX\LE6-4-TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_checkInput
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #6\LE6-4-TX\LE6-4-TX.c"
	line	7
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #6\LE6-4-TX\LE6-4-TX.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	9
	
l574:	
;LE6-4-TX.c: 9: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	11
	
l576:	
;LE6-4-TX.c: 11: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	12
	
l578:	
;LE6-4-TX.c: 12: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	13
	
l580:	
;LE6-4-TX.c: 13: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	14
	
l582:	
;LE6-4-TX.c: 14: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	15
	
l584:	
;LE6-4-TX.c: 15: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	17
;LE6-4-TX.c: 17: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	goto	l586
	line	19
;LE6-4-TX.c: 19: while(1)
	
l27:	
	line	21
	
l586:	
;LE6-4-TX.c: 20: {
;LE6-4-TX.c: 21: if(RB4 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l586
u130:
	goto	l29
	line	23
	
l588:	
;LE6-4-TX.c: 23: while(!TRMT);
	goto	l29
	
l30:	
	
l29:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l29
u140:
	goto	l590
	
l31:	
	line	24
	
l590:	
;LE6-4-TX.c: 24: TXREG = checkInput();
	fcall	_checkInput
	movf	(0+(?_checkInput)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	25
;LE6-4-TX.c: 25: while(RB4 == 1);
	goto	l32
	
l33:	
	
l32:	
	btfsc	(52/8),(52)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l32
u150:
	goto	l586
	
l34:	
	goto	l586
	line	27
	
l28:	
	goto	l586
	line	28
	
l35:	
	line	19
	goto	l586
	
l36:	
	line	30
	
l37:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_checkInput

;; *************** function _checkInput *****************
;; Defined at:
;;		line 32 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #6\LE6-4-TX\LE6-4-TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  input           2    6[COMMON] int 
;;  output          2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	32
global __ptext1
__ptext1:	;psect for function _checkInput
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #6\LE6-4-TX\LE6-4-TX.c"
	line	32
	global	__size_of_checkInput
	__size_of_checkInput	equ	__end_of_checkInput-_checkInput
	
_checkInput:	
;incstack = 0
	opt	stack 7
; Regs used in _checkInput: [wreg+status,2+status,0]
	line	34
	
l520:	
;LE6-4-TX.c: 33: int input, output;
;LE6-4-TX.c: 34: input = PORTB & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	0Fh
	movwf	(??_checkInput+0)+0
	clrf	(??_checkInput+0)+0+1
	movf	0+(??_checkInput+0)+0,w
	movwf	(checkInput@input)
	movf	1+(??_checkInput+0)+0,w
	movwf	(checkInput@input+1)
	line	36
	
l522:	
;LE6-4-TX.c: 36: if (input == 0x00) output = '1';
	movf	((checkInput@input+1)),w
	iorwf	((checkInput@input)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l526
u10:
	
l524:	
	movlw	low(031h)
	movwf	(checkInput@output)
	movlw	high(031h)
	movwf	((checkInput@output))+1
	goto	l570
	line	37
	
l40:	
	
l526:	
;LE6-4-TX.c: 37: else if (input == 0x01) output = '2';
	movlw	01h
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l530
u20:
	
l528:	
	movlw	low(032h)
	movwf	(checkInput@output)
	movlw	high(032h)
	movwf	((checkInput@output))+1
	goto	l570
	line	38
	
l42:	
	
l530:	
;LE6-4-TX.c: 38: else if (input == 0x02) output = '3';
	movlw	02h
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l534
u30:
	
l532:	
	movlw	low(033h)
	movwf	(checkInput@output)
	movlw	high(033h)
	movwf	((checkInput@output))+1
	goto	l570
	line	39
	
l44:	
	
l534:	
;LE6-4-TX.c: 39: else if (input == 0x04) output = '4';
	movlw	04h
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l538
u40:
	
l536:	
	movlw	low(034h)
	movwf	(checkInput@output)
	movlw	high(034h)
	movwf	((checkInput@output))+1
	goto	l570
	line	40
	
l46:	
	
l538:	
;LE6-4-TX.c: 40: else if (input == 0x05) output = '5';
	movlw	05h
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l542
u50:
	
l540:	
	movlw	low(035h)
	movwf	(checkInput@output)
	movlw	high(035h)
	movwf	((checkInput@output))+1
	goto	l570
	line	41
	
l48:	
	
l542:	
;LE6-4-TX.c: 41: else if (input == 0x06) output = '6';
	movlw	06h
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l546
u60:
	
l544:	
	movlw	low(036h)
	movwf	(checkInput@output)
	movlw	high(036h)
	movwf	((checkInput@output))+1
	goto	l570
	line	42
	
l50:	
	
l546:	
;LE6-4-TX.c: 42: else if (input == 0x08) output = '7';
	movlw	08h
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l550
u70:
	
l548:	
	movlw	low(037h)
	movwf	(checkInput@output)
	movlw	high(037h)
	movwf	((checkInput@output))+1
	goto	l570
	line	43
	
l52:	
	
l550:	
;LE6-4-TX.c: 43: else if (input == 0x09) output = '8';
	movlw	09h
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l554
u80:
	
l552:	
	movlw	low(038h)
	movwf	(checkInput@output)
	movlw	high(038h)
	movwf	((checkInput@output))+1
	goto	l570
	line	44
	
l54:	
	
l554:	
;LE6-4-TX.c: 44: else if (input == 0x0A) output = '9';
	movlw	0Ah
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l558
u90:
	
l556:	
	movlw	low(039h)
	movwf	(checkInput@output)
	movlw	high(039h)
	movwf	((checkInput@output))+1
	goto	l570
	line	45
	
l56:	
	
l558:	
;LE6-4-TX.c: 45: else if (input == 0x0C) output = '*';
	movlw	0Ch
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l562
u100:
	
l560:	
	movlw	low(02Ah)
	movwf	(checkInput@output)
	movlw	high(02Ah)
	movwf	((checkInput@output))+1
	goto	l570
	line	46
	
l58:	
	
l562:	
;LE6-4-TX.c: 46: else if (input == 0x0D) output = '0';
	movlw	0Dh
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l566
u110:
	
l564:	
	movlw	low(030h)
	movwf	(checkInput@output)
	movlw	high(030h)
	movwf	((checkInput@output))+1
	goto	l570
	line	47
	
l60:	
	
l566:	
;LE6-4-TX.c: 47: else if (input == 0x0E) output = '#';
	movlw	0Eh
	xorwf	(checkInput@input),w
	iorwf	(checkInput@input+1),w
	skipz
	goto	u121
	goto	u120
u121:
	goto	l570
u120:
	
l568:	
	movlw	low(023h)
	movwf	(checkInput@output)
	movlw	high(023h)
	movwf	((checkInput@output))+1
	goto	l570
	
l62:	
	goto	l570
	line	49
	
l61:	
	goto	l570
	
l59:	
	goto	l570
	
l57:	
	goto	l570
	
l55:	
	goto	l570
	
l53:	
	goto	l570
	
l51:	
	goto	l570
	
l49:	
	goto	l570
	
l47:	
	goto	l570
	
l45:	
	goto	l570
	
l43:	
	goto	l570
	
l41:	
	
l570:	
;LE6-4-TX.c: 49: return output;
	movf	(checkInput@output+1),w
	clrf	(?_checkInput+1)
	addwf	(?_checkInput+1)
	movf	(checkInput@output),w
	clrf	(?_checkInput)
	addwf	(?_checkInput)

	goto	l63
	
l572:	
	line	50
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_checkInput
	__end_of_checkInput:
	signat	_checkInput,90
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
