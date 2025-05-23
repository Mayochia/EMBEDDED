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
	FNCALL	_main,_init_I2C_Slave
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_CKP
_CKP	set	0xA4
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_SSPIF
_SSPIF	set	0x63
	global	_SSPOV
_SSPOV	set	0xA6
	global	_WCOL
_WCOL	set	0xA7
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_SSPSTATbits
_SSPSTATbits	set	0x94
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_BF
_BF	set	0x4A0
	global	_SSPIE
_SSPIE	set	0x463
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _ISR
	file	"7-2.as"
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
?_init_I2C_Slave:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	5
	global	ISR@temp
ISR@temp:	; 1 bytes @ 0x5
	ds	1
??_init_I2C_Slave:	; 0 bytes @ 0x6
	global	init_I2C_Slave@slave_add
init_I2C_Slave@slave_add:	; 1 bytes @ 0x6
	ds	1
??_main:	; 0 bytes @ 0x7
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
;!    COMMON           14      7       7
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
;!    _main->_init_I2C_Slave
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0      15
;!                     _init_I2C_Slave
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Slave                                       1     1      0      15
;!                                              6 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  6     6      0       0
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init_I2C_Slave
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       7       1       50.0%
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
;;		line 40 in file "D:\Desktop\3rd year 2nd sem\Embedded Systems\Practical Activities\Pratical Activity #7\MPLAB Project Directory\7-2\LE7-2-slave.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init_I2C_Slave
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\Desktop\3rd year 2nd sem\Embedded Systems\Practical Activities\Pratical Activity #7\MPLAB Project Directory\7-2\LE7-2-slave.c"
	line	40
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\Desktop\3rd year 2nd sem\Embedded Systems\Practical Activities\Pratical Activity #7\MPLAB Project Directory\7-2\LE7-2-slave.c"
	line	40
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l571:	
;LE7-2-slave.c: 42: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	43
;LE7-2-slave.c: 43: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	44
	
l573:	
;LE7-2-slave.c: 44: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	45
	
l575:	
;LE7-2-slave.c: 45: init_I2C_Slave(0x10);
	movlw	(010h)
	fcall	_init_I2C_Slave
	line	46
;LE7-2-slave.c: 46: for(;;){
	
l60:	
	line	47
;LE7-2-slave.c: 47: }
	goto	l60
	
l61:	
	line	48
	
l62:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init_I2C_Slave

;; *************** function _init_I2C_Slave *****************
;; Defined at:
;;		line 56 in file "D:\Desktop\3rd year 2nd sem\Embedded Systems\Practical Activities\Pratical Activity #7\MPLAB Project Directory\7-2\LE7-2-slave.c"
;; Parameters:    Size  Location     Type
;;  slave_add       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  slave_add       1    6[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	56
global __ptext1
__ptext1:	;psect for function _init_I2C_Slave
psect	text1
	file	"D:\Desktop\3rd year 2nd sem\Embedded Systems\Practical Activities\Pratical Activity #7\MPLAB Project Directory\7-2\LE7-2-slave.c"
	line	56
	global	__size_of_init_I2C_Slave
	__size_of_init_I2C_Slave	equ	__end_of_init_I2C_Slave-_init_I2C_Slave
	
_init_I2C_Slave:	
;incstack = 0
	opt	stack 6
; Regs used in _init_I2C_Slave: [wreg]
;init_I2C_Slave@slave_add stored from wreg
	movwf	(init_I2C_Slave@slave_add)
	line	57
	
l529:	
;LE7-2-slave.c: 57: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	58
;LE7-2-slave.c: 58: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	59
	
l531:	
;LE7-2-slave.c: 59: SSPCON = 0x36;
	movlw	(036h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	61
;LE7-2-slave.c: 61: SSPCON2 = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	line	63
;LE7-2-slave.c: 63: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(148)^080h	;volatile
	line	64
;LE7-2-slave.c: 64: SSPADD = slave_add;
	movf	(init_I2C_Slave@slave_add),w
	movwf	(147)^080h	;volatile
	line	65
	
l533:	
;LE7-2-slave.c: 65: SSPIE = 1;
	bsf	(1123/8)^080h,(1123)&7	;volatile
	line	66
	
l535:	
;LE7-2-slave.c: 66: SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	67
	
l537:	
;LE7-2-slave.c: 67: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	68
	
l539:	
;LE7-2-slave.c: 68: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	69
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Slave
	__end_of_init_I2C_Slave:
	signat	_init_I2C_Slave,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 6 in file "D:\Desktop\3rd year 2nd sem\Embedded Systems\Practical Activities\Pratical Activity #7\MPLAB Project Directory\7-2\LE7-2-slave.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    5[COMMON] unsigned char 
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
;;      Temps:          5       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	6
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"D:\Desktop\3rd year 2nd sem\Embedded Systems\Practical Activities\Pratical Activity #7\MPLAB Project Directory\7-2\LE7-2-slave.c"
	line	6
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
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text2
	line	8
	
i1l541:	
;LE7-2-slave.c: 8: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	10
;LE7-2-slave.c: 9: unsigned char temp;
;LE7-2-slave.c: 10: CKP = 0;
	bcf	(164/8),(164)&7	;volatile
	line	11
;LE7-2-slave.c: 11: if(WCOL || SSPOV)
	btfsc	(167/8),(167)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l545
u1_20:
	
i1l543:	
	btfss	(166/8),(166)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l553
u2_20:
	goto	i1l545
	
i1l47:	
	line	13
	
i1l545:	
;LE7-2-slave.c: 12: {
;LE7-2-slave.c: 13: temp = SSPBUF;
	movf	(19),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@temp)
	line	14
	
i1l547:	
;LE7-2-slave.c: 14: WCOL = 0;
	bcf	(167/8),(167)&7	;volatile
	line	15
	
i1l549:	
;LE7-2-slave.c: 15: SSPOV = 0;
	bcf	(166/8),(166)&7	;volatile
	line	16
	
i1l551:	
;LE7-2-slave.c: 16: CKP = 1;
	bsf	(164/8),(164)&7	;volatile
	goto	i1l553
	line	17
	
i1l45:	
	line	19
	
i1l553:	
;LE7-2-slave.c: 17: }
;LE7-2-slave.c: 19: if(!SSPSTATbits.D_nA && !SSPSTATbits.R_nW)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(148)^080h,5	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l48
u3_20:
	
i1l555:	
	btfsc	(148)^080h,2	;volatile
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l48
u4_20:
	line	21
	
i1l557:	
;LE7-2-slave.c: 20: {
;LE7-2-slave.c: 21: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@temp)
	line	22
;LE7-2-slave.c: 22: while(!BF);
	goto	i1l49
	
i1l50:	
	
i1l49:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7	;volatile
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l49
u5_20:
	goto	i1l559
	
i1l51:	
	line	24
	
i1l559:	
;LE7-2-slave.c: 24: PORTB = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(6)	;volatile
	line	25
	
i1l561:	
;LE7-2-slave.c: 25: CKP = 1;
	bsf	(164/8),(164)&7	;volatile
	line	26
;LE7-2-slave.c: 26: }
	goto	i1l52
	line	27
	
i1l48:	
;LE7-2-slave.c: 27: else if(!SSPSTATbits.D_nA && SSPSTATbits.R_nW)
	btfsc	(148)^080h,5	;volatile
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l52
u6_20:
	
i1l563:	
	btfss	(148)^080h,2	;volatile
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l52
u7_20:
	line	29
	
i1l565:	
;LE7-2-slave.c: 28: {
;LE7-2-slave.c: 29: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@temp)
	line	30
	
i1l567:	
;LE7-2-slave.c: 30: BF = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1184/8)^080h,(1184)&7	;volatile
	line	32
;LE7-2-slave.c: 32: SSPBUF = PORTD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(19)	;volatile
	line	33
	
i1l569:	
;LE7-2-slave.c: 33: CKP = 1;
	bsf	(164/8),(164)&7	;volatile
	line	34
;LE7-2-slave.c: 34: while(BF);
	goto	i1l54
	
i1l55:	
	
i1l54:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1184/8)^080h,(1184)&7	;volatile
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l54
u8_20:
	goto	i1l52
	
i1l56:	
	goto	i1l52
	line	35
	
i1l53:	
	line	36
	
i1l52:	
;LE7-2-slave.c: 35: }
;LE7-2-slave.c: 36: SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(99/8),(99)&7	;volatile
	line	37
;LE7-2-slave.c: 37: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	38
	
i1l57:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
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
