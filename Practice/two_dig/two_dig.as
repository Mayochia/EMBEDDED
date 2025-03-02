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
	FNCALL	_main,_delay
	FNCALL	_main,_pause
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_btn_flag
	global	_count_flag
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
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
__ptext0:	;psect for function _ISR
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
	file	"two_dig.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_btn_flag:
       ds      1

_count_flag:
       ds      1

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_pause:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
?_delay:	; 0 bytes @ 0x4
??_pause:	; 0 bytes @ 0x4
	global	delay@num
delay@num:	; 2 bytes @ 0x4
	ds	2
??_delay:	; 0 bytes @ 0x6
	ds	1
	global	delay@flags
delay@flags:	; 2 bytes @ 0x7
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 0 bytes @ 0x0
	ds	1
	global	main@lower_bit
main@lower_bit:	; 1 bytes @ 0x1
	ds	1
	global	main@upper_bit
main@upper_bit:	; 1 bytes @ 0x2
	ds	1
	global	main@j
main@j:	; 1 bytes @ 0x3
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x4
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
;!    COMMON           14      9      10
;!    BANK0            80      6       6
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
;!    _main->_delay
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 6     6      0     312
;!                                              0 BANK0      6     6      0
;!                              _delay
;!                              _pause
;! ---------------------------------------------------------------------------------
;! (1) _pause                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2      99
;!                                              4 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!   _pause
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      10       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      6       6       5        7.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      10      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 47 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    4[BANK0 ] int 
;;  j               1    3[BANK0 ] char 
;;  upper_bit       1    2[BANK0 ] unsigned char 
;;  lower_bit       1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_pause
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
	line	47
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
	line	47
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	48
	
l659:	
;two_dig.c: 48: TRISB = 0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	49
	
l661:	
;two_dig.c: 49: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	50
	
l663:	
;two_dig.c: 50: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	51
	
l665:	
;two_dig.c: 51: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	52
	
l667:	
;two_dig.c: 52: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	53
	
l669:	
;two_dig.c: 53: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	54
	
l671:	
;two_dig.c: 54: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	55
	
l673:	
;two_dig.c: 55: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	56
;two_dig.c: 56: OPTION_REG = 0xC4;
	movlw	(0C4h)
	movwf	(129)^080h	;volatile
	line	57
	
l675:	
;two_dig.c: 57: unsigned char lower_bit = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@lower_bit)
	line	58
	
l677:	
;two_dig.c: 58: unsigned char upper_bit = 0;
	clrf	(main@upper_bit)
	line	60
	
l679:	
;two_dig.c: 60: PORTC = 0x00;
	clrf	(7)	;volatile
	line	61
	
l681:	
;two_dig.c: 61: PORTD = 0x00;
	clrf	(8)	;volatile
	line	62
	
l683:	
;two_dig.c: 62: signed char j = 0;
	clrf	(main@j)
	line	63
	
l685:	
;two_dig.c: 63: int i = 0;
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l687
	line	67
;two_dig.c: 67: while(1){
	
l48:	
	line	68
	
l687:	
;two_dig.c: 68: if(btn_flag == 1){
	btfss	(_btn_flag/8),(_btn_flag)&7
	goto	u251
	goto	u250
u251:
	goto	l687
u250:
	line	69
	
l689:	
;two_dig.c: 69: if((PORTC <= 0x09 && PORTD <= 0x09)){
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(7),w	;volatile
	skipnc
	goto	u261
	goto	u260
u261:
	goto	l687
u260:
	
l691:	
	movlw	(0Ah)
	subwf	(8),w	;volatile
	skipnc
	goto	u271
	goto	u270
u271:
	goto	l687
u270:
	line	70
	
l693:	
;two_dig.c: 70: i = 0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	71
;two_dig.c: 71: for(i = 0; i < 10; i++){
	clrf	(main@i)
	clrf	(main@i+1)
	
l695:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u285
	movlw	low(0Ah)
	subwf	(main@i),w
u285:

	skipc
	goto	u281
	goto	u280
u281:
	goto	l699
u280:
	goto	l687
	
l697:	
	goto	l687
	
l51:	
	line	72
	
l699:	
;two_dig.c: 72: PORTC = i;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	(7)	;volatile
	line	73
	
l701:	
;two_dig.c: 73: delay(24);
	movlw	low(018h)
	movwf	(delay@num)
	movlw	high(018h)
	movwf	((delay@num))+1
	fcall	_delay
	line	74
	
l703:	
;two_dig.c: 74: if(btn_flag == 0){
	btfsc	(_btn_flag/8),(_btn_flag)&7
	goto	u291
	goto	u290
u291:
	goto	l707
u290:
	line	75
	
l705:	
;two_dig.c: 75: pause();
	fcall	_pause
	goto	l707
	line	76
	
l53:	
	line	77
	
l707:	
;two_dig.c: 76: }
;two_dig.c: 77: if(i == 9){
	movlw	09h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u301
	goto	u300
u301:
	goto	l715
u300:
	line	78
	
l709:	
;two_dig.c: 78: PORTD=j+0x01;
	movf	(main@j),w
	addlw	01h
	movwf	(8)	;volatile
	line	79
;two_dig.c: 79: j++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	line	80
	
l711:	
;two_dig.c: 80: if(j == 9){
	movf	(main@j),w
	xorlw	09h
	skipz
	goto	u311
	goto	u310
u311:
	goto	l715
u310:
	line	81
	
l713:	
;two_dig.c: 81: j = -1;
	clrf	(main@j)
	decf	(main@j),f
	goto	l715
	line	82
	
l55:	
	goto	l715
	line	83
	
l54:	
	line	71
	
l715:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l717:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u325
	movlw	low(0Ah)
	subwf	(main@i),w
u325:

	skipc
	goto	u321
	goto	u320
u321:
	goto	l699
u320:
	goto	l687
	
l52:	
	goto	l687
	line	85
	
l50:	
	goto	l687
	line	86
	
l49:	
	goto	l687
	line	87
	
l56:	
	line	67
	goto	l687
	
l57:	
	line	89
	
l58:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_pause

;; *************** function _pause *****************
;; Defined at:
;;		line 42 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	42
global __ptext1
__ptext1:	;psect for function _pause
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
	line	42
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
;incstack = 0
	opt	stack 6
; Regs used in _pause: []
	line	43
	
l597:	
;two_dig.c: 43: while(btn_flag==0){
	goto	l42
	
l43:	
	line	44
	
l42:	
	line	43
	btfss	(_btn_flag/8),(_btn_flag)&7
	goto	u161
	goto	u160
u161:
	goto	l42
u160:
	goto	l45
	
l44:	
	line	45
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
	signat	_pause,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 15 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
;; Parameters:    Size  Location     Type
;;  num             2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  flags           2    7[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	15
global __ptext2
__ptext2:	;psect for function _delay
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
	line	15
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	17
	
l591:	
;two_dig.c: 17: int flags = 0;
	clrf	(delay@flags)
	clrf	(delay@flags+1)
	line	19
;two_dig.c: 19: while (flags < num)
	goto	l29
	
l30:	
	line	21
;two_dig.c: 20: {
;two_dig.c: 21: if (count_flag)
	btfss	(_count_flag/8),(_count_flag)&7
	goto	u141
	goto	u140
u141:
	goto	l29
u140:
	line	23
	
l593:	
;two_dig.c: 22: {
;two_dig.c: 23: count_flag = 0;
	bcf	(_count_flag/8),(_count_flag)&7
	line	24
	
l595:	
;two_dig.c: 24: flags++;
	movlw	low(01h)
	addwf	(delay@flags),f
	skipnc
	incf	(delay@flags+1),f
	movlw	high(01h)
	addwf	(delay@flags+1),f
	goto	l29
	line	25
	
l31:	
	line	26
	
l29:	
	line	19
	movf	(delay@flags+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@num+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u155
	movf	(delay@num),w
	subwf	(delay@flags),w
u155:

	skipc
	goto	u151
	goto	u150
u151:
	goto	l30
u150:
	goto	l33
	
l32:	
	line	27
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 29 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	29
global __ptext3
__ptext3:	;psect for function _ISR
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\two_dig\two_dig.c"
	line	29
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text3
	line	30
	
i1l523:	
;two_dig.c: 30: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	31
;two_dig.c: 31: if(INTF){
	btfss	(89/8),(89)&7	;volatile
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l36
u4_20:
	line	32
	
i1l525:	
;two_dig.c: 32: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	33
	
i1l527:	
;two_dig.c: 33: btn_flag ^= 1;
	movlw	1<<((_btn_flag)&7)
	xorwf	((_btn_flag)/8),f
	line	34
;two_dig.c: 34: }else if (TMR0IF){
	goto	i1l37
	
i1l36:	
	btfss	(90/8),(90)&7	;volatile
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l37
u5_20:
	line	35
	
i1l529:	
;two_dig.c: 35: TMR0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	36
;two_dig.c: 36: count_flag = 1;
	bsf	(_count_flag/8),(_count_flag)&7
	goto	i1l37
	line	37
	
i1l38:	
	line	39
	
i1l37:	
;two_dig.c: 37: }
;two_dig.c: 39: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	40
	
i1l39:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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
