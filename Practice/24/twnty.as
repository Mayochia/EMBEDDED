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
	FNCALL	_main,_delay
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay_lcd
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay_lcd
	FNCALL	_dataCtrl,_delay_lcd
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_count_flag
	global	_btn_flag
	global	_key
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
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RD4
_RD4	set	0x44
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
	file	"twnty.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count_flag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_btn_flag:
       ds      1

_key:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
?_dataCtrl:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	5
?_delay:	; 0 bytes @ 0x5
?_delay_lcd:	; 0 bytes @ 0x5
	global	delay@num
delay@num:	; 2 bytes @ 0x5
	global	delay_lcd@cnt
delay_lcd@cnt:	; 2 bytes @ 0x5
	ds	2
??_delay:	; 0 bytes @ 0x7
??_delay_lcd:	; 0 bytes @ 0x7
??_dataCtrl:	; 0 bytes @ 0x7
??_instCtrl:	; 0 bytes @ 0x7
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x7
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x7
	ds	1
??_initLCD:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	delay@flags
delay@flags:	; 2 bytes @ 0x0
	global	delay_lcd@i
delay_lcd@i:	; 2 bytes @ 0x0
	ds	2
	global	delay_lcd@j
delay_lcd@j:	; 2 bytes @ 0x2
	ds	2
??_main:	; 0 bytes @ 0x4
	ds	1
	global	main@speed
main@speed:	; 2 bytes @ 0x5
	ds	2
	global	main@key_flag
main@key_flag:	; 1 bytes @ 0x7
	ds	1
	global	main@direction
main@direction:	; 2 bytes @ 0x8
	ds	2
	global	main@MSB
main@MSB:	; 2 bytes @ 0xA
	ds	2
	global	main@LSB
main@LSB:	; 2 bytes @ 0xC
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       9
;!    BANK0            80     14      16
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
;!    _main->_delay
;!    _main->_instCtrl
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay_lcd
;!    _dataCtrl->_delay_lcd
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _initLCD->_delay_lcd
;!    _instCtrl->_delay_lcd
;!    _dataCtrl->_delay_lcd
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
;! (0) _main                                                11    11      0    1711
;!                                              4 BANK0     10    10      0
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     568
;!                          _delay_lcd
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     295
;!                                              7 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2      99
;!                                              5 COMMON     3     1      2
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     295
;!                                              7 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (2) _delay_lcd                                            6     4      2     273
;!                                              5 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!     _delay_lcd
;!   _delay
;!   _initLCD
;!     _delay_lcd
;!     _instCtrl
;!       _delay_lcd
;!   _instCtrl
;!     _delay_lcd
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      19       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      E      10       5       20.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      19      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 67 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  LSB             2   12[BANK0 ] int 
;;  MSB             2   10[BANK0 ] int 
;;  direction       2    8[BANK0 ] int 
;;  speed           2    5[BANK0 ] int 
;;  key_flag        1    7[BANK0 ] unsigned char 
;;  mode            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	67
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	67
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	69
	
l853:	
;twnty.c: 69: int speed = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@speed)
	clrf	(main@speed+1)
	line	72
	
l855:	
;twnty.c: 70: unsigned char mode;
;twnty.c: 72: TRISB = 0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	73
	
l857:	
;twnty.c: 73: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	74
;twnty.c: 74: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	75
;twnty.c: 75: OPTION_REG = 0xC4;
	movlw	(0C4h)
	movwf	(129)^080h	;volatile
	line	76
	
l859:	
;twnty.c: 76: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	77
	
l861:	
;twnty.c: 77: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	78
	
l863:	
;twnty.c: 78: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	79
	
l865:	
;twnty.c: 79: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	80
	
l867:	
;twnty.c: 80: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	82
;twnty.c: 82: int MSB = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@MSB)
	movlw	high(02h)
	movwf	((main@MSB))+1
	line	83
;twnty.c: 83: int LSB = 4;
	movlw	low(04h)
	movwf	(main@LSB)
	movlw	high(04h)
	movwf	((main@LSB))+1
	line	85
	
l869:	
;twnty.c: 85: initLCD();
	fcall	_initLCD
	line	86
	
l871:	
;twnty.c: 86: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	87
	
l873:	
;twnty.c: 87: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	88
	
l875:	
;twnty.c: 88: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	89
	
l877:	
;twnty.c: 89: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	addlw	030h
	fcall	_dataCtrl
	line	91
	
l879:	
;twnty.c: 91: int direction = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@direction)
	clrf	(main@direction+1)
	line	92
	
l881:	
;twnty.c: 92: unsigned char key_flag = 0;
	clrf	(main@key_flag)
	goto	l883
	line	94
;twnty.c: 94: while (1) {
	
l68:	
	line	95
	
l883:	
;twnty.c: 95: if (btn_flag == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_btn_flag),f
	skipz
	goto	u391
	goto	u390
u391:
	goto	l887
u390:
	line	96
	
l885:	
;twnty.c: 96: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	97
;twnty.c: 97: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	98
;twnty.c: 98: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	99
;twnty.c: 99: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	addlw	030h
	fcall	_dataCtrl
	line	100
;twnty.c: 100: } else if (btn_flag == 1) {
	goto	l883
	
l69:	
	
l887:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_btn_flag),w
	xorlw	01h
	skipz
	goto	u401
	goto	u400
u401:
	goto	l883
u400:
	line	102
	
l889:	
;twnty.c: 102: if (RD4) {
	btfss	(68/8),(68)&7	;volatile
	goto	u411
	goto	u410
u411:
	goto	l901
u410:
	line	103
	
l891:	
;twnty.c: 103: key = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_key)
	line	105
;twnty.c: 105: switch (key) {
	goto	l899
	line	106
;twnty.c: 106: case 0x0C:
	
l74:	
	line	107
	
l893:	
;twnty.c: 107: direction = 1;
	movlw	low(01h)
	movwf	(main@direction)
	movlw	high(01h)
	movwf	((main@direction))+1
	line	108
;twnty.c: 108: break;
	goto	l901
	line	109
;twnty.c: 109: case 0x0E:
	
l76:	
	line	110
	
l895:	
;twnty.c: 110: direction = 0;
	clrf	(main@direction)
	clrf	(main@direction+1)
	line	111
;twnty.c: 111: break;
	goto	l901
	line	112
	
l897:	
;twnty.c: 112: }
	goto	l901
	line	105
	
l73:	
	
l899:	
	movf	(_key),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 12 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	12^0	; case 12
	skipnz
	goto	l893
	xorlw	14^12	; case 14
	skipnz
	goto	l895
	goto	l901
	opt asmopt_on

	line	112
	
l75:	
	goto	l901
	line	113
	
l72:	
	line	114
	
l901:	
;twnty.c: 113: }
;twnty.c: 114: if (direction == 0) {
	movf	((main@direction+1)),w
	iorwf	((main@direction)),w
	skipz
	goto	u421
	goto	u420
u421:
	goto	l915
u420:
	line	115
	
l903:	
;twnty.c: 115: if (MSB == 0 && LSB == 0) {
	movf	((main@MSB+1)),w
	iorwf	((main@MSB)),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l909
u430:
	
l905:	
	movf	((main@LSB+1)),w
	iorwf	((main@LSB)),w
	skipz
	goto	u441
	goto	u440
u441:
	goto	l909
u440:
	line	116
	
l907:	
;twnty.c: 116: LSB = 4;
	movlw	low(04h)
	movwf	(main@LSB)
	movlw	high(04h)
	movwf	((main@LSB))+1
	line	117
;twnty.c: 117: MSB = 2;
	movlw	low(02h)
	movwf	(main@MSB)
	movlw	high(02h)
	movwf	((main@MSB))+1
	line	118
;twnty.c: 118: } else if (LSB == 0) {
	goto	l929
	
l78:	
	
l909:	
	movf	((main@LSB+1)),w
	iorwf	((main@LSB)),w
	skipz
	goto	u451
	goto	u450
u451:
	goto	l913
u450:
	line	119
	
l911:	
;twnty.c: 119: MSB -= 1;
	movlw	low(-1)
	addwf	(main@MSB),f
	skipnc
	incf	(main@MSB+1),f
	movlw	high(-1)
	addwf	(main@MSB+1),f
	line	120
;twnty.c: 120: LSB = 9;
	movlw	low(09h)
	movwf	(main@LSB)
	movlw	high(09h)
	movwf	((main@LSB))+1
	line	121
;twnty.c: 121: } else {
	goto	l929
	
l80:	
	line	122
	
l913:	
;twnty.c: 122: LSB -= 1;
	movlw	low(-1)
	addwf	(main@LSB),f
	skipnc
	incf	(main@LSB+1),f
	movlw	high(-1)
	addwf	(main@LSB+1),f
	goto	l929
	line	123
	
l81:	
	goto	l929
	
l79:	
	line	124
;twnty.c: 123: }
;twnty.c: 124: } else {
	goto	l929
	
l77:	
	line	125
	
l915:	
;twnty.c: 125: if (MSB >= 2 && LSB >= 4) {
	movf	(main@MSB+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u465
	movlw	low(02h)
	subwf	(main@MSB),w
u465:

	skipc
	goto	u461
	goto	u460
u461:
	goto	l921
u460:
	
l917:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u475
	movlw	low(04h)
	subwf	(main@LSB),w
u475:

	skipc
	goto	u471
	goto	u470
u471:
	goto	l921
u470:
	line	126
	
l919:	
;twnty.c: 126: LSB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@LSB)
	clrf	(main@LSB+1)
	line	127
;twnty.c: 127: MSB = 0;
	clrf	(main@MSB)
	clrf	(main@MSB+1)
	line	128
;twnty.c: 128: } else if (LSB == 9) {
	goto	l929
	
l83:	
	
l921:	
	movlw	09h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@LSB),w
	iorwf	(main@LSB+1),w
	skipz
	goto	u481
	goto	u480
u481:
	goto	l927
u480:
	line	129
	
l923:	
;twnty.c: 129: LSB = 0;
	clrf	(main@LSB)
	clrf	(main@LSB+1)
	line	130
	
l925:	
;twnty.c: 130: MSB += 1;
	movlw	low(01h)
	addwf	(main@MSB),f
	skipnc
	incf	(main@MSB+1),f
	movlw	high(01h)
	addwf	(main@MSB+1),f
	line	131
;twnty.c: 131: } else {
	goto	l929
	
l85:	
	line	132
	
l927:	
;twnty.c: 132: LSB += 1;
	movlw	low(01h)
	addwf	(main@LSB),f
	skipnc
	incf	(main@LSB+1),f
	movlw	high(01h)
	addwf	(main@LSB+1),f
	goto	l929
	line	133
	
l86:	
	goto	l929
	
l84:	
	goto	l929
	line	134
	
l82:	
	line	136
	
l929:	
;twnty.c: 133: }
;twnty.c: 134: }
;twnty.c: 136: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	137
	
l931:	
;twnty.c: 137: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	addlw	030h
	fcall	_dataCtrl
	line	138
	
l933:	
;twnty.c: 138: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	139
	
l935:	
;twnty.c: 139: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	140
	
l937:	
;twnty.c: 140: delay(31);
	movlw	low(01Fh)
	movwf	(delay@num)
	movlw	high(01Fh)
	movwf	((delay@num))+1
	fcall	_delay
	line	142
;twnty.c: 142: while (btn_flag == 0) {}
	goto	l939
	
l88:	
	goto	l939
	
l87:	
	
l939:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_btn_flag),w
	skipz
	goto	u490
	goto	l939
u490:
	goto	l883
	
l89:	
	goto	l883
	line	145
	
l71:	
	goto	l883
	line	146
	
l70:	
	goto	l883
	
l90:	
	line	94
	goto	l883
	
l91:	
	line	148
	
l92:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 59 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_lcd
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	59
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	59
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	60
	
l755:	
;twnty.c: 60: delay_lcd(1);
	movlw	low(01h)
	movwf	(delay_lcd@cnt)
	movlw	high(01h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	61
;twnty.c: 61: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	62
;twnty.c: 62: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	63
;twnty.c: 63: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	64
;twnty.c: 64: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	65
	
l65:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 50 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    7[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_lcd
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	50
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	50
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	51
	
l721:	
;twnty.c: 51: PORTC=INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	52
	
l723:	
;twnty.c: 52: RB4=0;
	bcf	(52/8),(52)&7	;volatile
	line	53
	
l725:	
;twnty.c: 53: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	54
	
l727:	
;twnty.c: 54: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	55
	
l729:	
;twnty.c: 55: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	56
	
l731:	
;twnty.c: 56: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	57
	
l62:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 23 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
;; Parameters:    Size  Location     Type
;;  num             2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  flags           2    0[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       2       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	23
global __ptext3
__ptext3:	;psect for function _delay
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	23
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	25
	
l733:	
;twnty.c: 25: int flags = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@flags)
	clrf	(delay@flags+1)
	line	27
;twnty.c: 27: while (flags < num) {
	goto	l741
	
l46:	
	line	28
	
l735:	
;twnty.c: 28: if(count_flag) {
	movf	(_count_flag),w
	skipz
	goto	u240
	goto	l741
u240:
	line	29
	
l737:	
;twnty.c: 29: count_flag = 0;
	clrf	(_count_flag)
	line	30
	
l739:	
;twnty.c: 30: flags++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@flags),f
	skipnc
	incf	(delay@flags+1),f
	movlw	high(01h)
	addwf	(delay@flags+1),f
	goto	l741
	line	31
	
l47:	
	goto	l741
	line	32
	
l45:	
	line	27
	
l741:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@flags+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@num+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u255
	movf	(delay@num),w
	subwf	(delay@flags),w
u255:

	skipc
	goto	u251
	goto	u250
u251:
	goto	l735
u250:
	goto	l49
	
l48:	
	line	33
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 41 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    7[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_lcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	41
global __ptext4
__ptext4:	;psect for function _dataCtrl
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	41
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	42
	
l743:	
;twnty.c: 42: PORTC=DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	43
	
l745:	
;twnty.c: 43: RB4=1;
	bsf	(52/8),(52)&7	;volatile
	line	44
	
l747:	
;twnty.c: 44: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	45
	
l749:	
;twnty.c: 45: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	46
	
l751:	
;twnty.c: 46: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	47
	
l753:	
;twnty.c: 47: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	48
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay_lcd

;; *************** function _delay_lcd *****************
;; Defined at:
;;		line 35 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    2[BANK0 ] int 
;;  i               2    0[BANK0 ] int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dataCtrl
;;		_instCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	35
global __ptext5
__ptext5:	;psect for function _delay_lcd
psect	text5
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	35
	global	__size_of_delay_lcd
	__size_of_delay_lcd	equ	__end_of_delay_lcd-_delay_lcd
	
_delay_lcd:	
;incstack = 0
	opt	stack 5
; Regs used in _delay_lcd: [wreg+status,2+status,0+btemp+1]
	line	37
	
l701:	
;twnty.c: 36: int i, j;
;twnty.c: 37: for (i = cnt; i != 0; i--);
	movf	(delay_lcd@cnt+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay_lcd@i+1)
	addwf	(delay_lcd@i+1)
	movf	(delay_lcd@cnt),w
	clrf	(delay_lcd@i)
	addwf	(delay_lcd@i)

	
l703:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u201
	goto	u200
u201:
	goto	l707
u200:
	goto	l711
	
l705:	
	goto	l711
	
l52:	
	
l707:	
	movlw	low(-1)
	addwf	(delay_lcd@i),f
	skipnc
	incf	(delay_lcd@i+1),f
	movlw	high(-1)
	addwf	(delay_lcd@i+1),f
	
l709:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u211
	goto	u210
u211:
	goto	l707
u210:
	goto	l711
	
l53:	
	line	38
	
l711:	
;twnty.c: 38: for (j = 0; j < 1000; j++);
	clrf	(delay_lcd@j)
	clrf	(delay_lcd@j+1)
	
l713:	
	movf	(delay_lcd@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u225
	movlw	low(03E8h)
	subwf	(delay_lcd@j),w
u225:

	skipc
	goto	u221
	goto	u220
u221:
	goto	l717
u220:
	goto	l56
	
l715:	
	goto	l56
	
l54:	
	
l717:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay_lcd@j),f
	skipnc
	incf	(delay_lcd@j+1),f
	movlw	high(01h)
	addwf	(delay_lcd@j+1),f
	
l719:	
	movf	(delay_lcd@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u235
	movlw	low(03E8h)
	subwf	(delay_lcd@j),w
u235:

	skipc
	goto	u231
	goto	u230
u231:
	goto	l717
u230:
	goto	l56
	
l55:	
	line	39
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_delay_lcd
	__end_of_delay_lcd:
	signat	_delay_lcd,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 7 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	7
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\24\twnty.c"
	line	7
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg+status,2+status,0]
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
psect	text6
	line	9
	
i1l757:	
;twnty.c: 9: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	11
;twnty.c: 11: if(INTF) {
	btfss	(89/8),(89)&7	;volatile
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l39
u26_20:
	line	12
	
i1l759:	
;twnty.c: 12: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	13
	
i1l761:	
;twnty.c: 13: btn_flag ^= 1;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	xorwf	(_btn_flag),f
	line	14
;twnty.c: 14: }
	goto	i1l40
	line	15
	
i1l39:	
;twnty.c: 15: else if(TMR0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l40
u27_20:
	line	16
	
i1l763:	
;twnty.c: 16: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	17
;twnty.c: 17: count_flag = 1;
	clrf	(_count_flag)
	incf	(_count_flag),f
	goto	i1l40
	line	18
	
i1l41:	
	line	19
	
i1l40:	
;twnty.c: 18: }
;twnty.c: 19: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	21
	
i1l42:	
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
