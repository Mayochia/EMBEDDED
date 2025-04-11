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
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_CREN
_CREN	set	0xC4
	global	_RCIF
_RCIF	set	0x65
	global	_RX9
_RX9	set	0xC6
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
psect	maintext,global,class=CODE,delta=2,split=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __pmaintext
__pmaintext:	;psect for function _main
	file	"CPE 3201-LE6-RX.as"
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
??_main:	; 0 bytes @ 0x0
	ds	2
	global	main@output
main@output:	; 2 bytes @ 0x2
	ds	2
	global	main@data
main@data:	; 2 bytes @ 0x4
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
;!    COMMON           14      6       6
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
;!    None.
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0     165
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       6       1       42.9%
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
;;		line 3 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #6\LE6-4-RX\LE6-4-RX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            2    4[COMMON] unsigned int 
;;  output          2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #6\LE6-4-RX\LE6-4-RX.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	5
	
l506:	
;LE6-4-RX.c: 5: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	7
	
l508:	
;LE6-4-RX.c: 7: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	8
	
l510:	
;LE6-4-RX.c: 8: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	9
	
l512:	
;LE6-4-RX.c: 9: RX9 = 0;
	bcf	(198/8),(198)&7	;volatile
	line	10
	
l514:	
;LE6-4-RX.c: 10: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	11
	
l516:	
;LE6-4-RX.c: 11: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	12
	
l518:	
;LE6-4-RX.c: 12: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	13
	
l520:	
;LE6-4-RX.c: 13: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l24
	line	17
;LE6-4-RX.c: 15: unsigned int data, output;
;LE6-4-RX.c: 17: while(1) {
	
l23:	
	line	18
;LE6-4-RX.c: 18: while(!RCIF);
	goto	l24
	
l25:	
	
l24:	
	btfss	(101/8),(101)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l24
u10:
	goto	l522
	
l26:	
	line	19
	
l522:	
;LE6-4-RX.c: 19: data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@data)
	movf	1+(??_main+0)+0,w
	movwf	(main@data+1)
	line	21
;LE6-4-RX.c: 21: if(data == '0') output = 0x3F;
	movlw	030h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l526
u20:
	
l524:	
	movlw	low(03Fh)
	movwf	(main@output)
	movlw	high(03Fh)
	movwf	((main@output))+1
	goto	l564
	line	22
	
l27:	
	
l526:	
;LE6-4-RX.c: 22: else if(data == '1') output = 0x06;
	movlw	031h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l530
u30:
	
l528:	
	movlw	low(06h)
	movwf	(main@output)
	movlw	high(06h)
	movwf	((main@output))+1
	goto	l564
	line	23
	
l29:	
	
l530:	
;LE6-4-RX.c: 23: else if(data == '2') output = 0x5B;
	movlw	032h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l534
u40:
	
l532:	
	movlw	low(05Bh)
	movwf	(main@output)
	movlw	high(05Bh)
	movwf	((main@output))+1
	goto	l564
	line	24
	
l31:	
	
l534:	
;LE6-4-RX.c: 24: else if(data == '3') output = 0x4F;
	movlw	033h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l538
u50:
	
l536:	
	movlw	low(04Fh)
	movwf	(main@output)
	movlw	high(04Fh)
	movwf	((main@output))+1
	goto	l564
	line	25
	
l33:	
	
l538:	
;LE6-4-RX.c: 25: else if(data == '4') output = 0x66;
	movlw	034h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l542
u60:
	
l540:	
	movlw	low(066h)
	movwf	(main@output)
	movlw	high(066h)
	movwf	((main@output))+1
	goto	l564
	line	26
	
l35:	
	
l542:	
;LE6-4-RX.c: 26: else if(data == '5') output = 0x6D;
	movlw	035h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l546
u70:
	
l544:	
	movlw	low(06Dh)
	movwf	(main@output)
	movlw	high(06Dh)
	movwf	((main@output))+1
	goto	l564
	line	27
	
l37:	
	
l546:	
;LE6-4-RX.c: 27: else if(data == '6') output = 0x7D;
	movlw	036h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l550
u80:
	
l548:	
	movlw	low(07Dh)
	movwf	(main@output)
	movlw	high(07Dh)
	movwf	((main@output))+1
	goto	l564
	line	28
	
l39:	
	
l550:	
;LE6-4-RX.c: 28: else if(data == '7') output = 0x07;
	movlw	037h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l554
u90:
	
l552:	
	movlw	low(07h)
	movwf	(main@output)
	movlw	high(07h)
	movwf	((main@output))+1
	goto	l564
	line	29
	
l41:	
	
l554:	
;LE6-4-RX.c: 29: else if(data == '8') output = 0x7F;
	movlw	038h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l558
u100:
	
l556:	
	movlw	low(07Fh)
	movwf	(main@output)
	movlw	high(07Fh)
	movwf	((main@output))+1
	goto	l564
	line	30
	
l43:	
	
l558:	
;LE6-4-RX.c: 30: else if(data == '9') output = 0x6F;
	movlw	039h
	xorwf	(main@data),w
	iorwf	(main@data+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l562
u110:
	
l560:	
	movlw	low(06Fh)
	movwf	(main@output)
	movlw	high(06Fh)
	movwf	((main@output))+1
	goto	l564
	line	31
	
l45:	
	
l562:	
;LE6-4-RX.c: 31: else output = 0x00;
	clrf	(main@output)
	clrf	(main@output+1)
	goto	l564
	
l46:	
	goto	l564
	
l44:	
	goto	l564
	
l42:	
	goto	l564
	
l40:	
	goto	l564
	
l38:	
	goto	l564
	
l36:	
	goto	l564
	
l34:	
	goto	l564
	
l32:	
	goto	l564
	
l30:	
	goto	l564
	
l28:	
	line	33
	
l564:	
;LE6-4-RX.c: 33: PORTB = output;
	movf	(main@output),w
	movwf	(6)	;volatile
	goto	l24
	line	34
	
l47:	
	line	17
	goto	l24
	
l48:	
	line	35
	
l49:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
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
