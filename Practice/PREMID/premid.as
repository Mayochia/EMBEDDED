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
	file	"premid.as"
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
	ds	4
?_delay:	; 0 bytes @ 0x4
?_delay_lcd:	; 0 bytes @ 0x4
	global	delay@num
delay@num:	; 2 bytes @ 0x4
	global	delay_lcd@cnt
delay_lcd@cnt:	; 2 bytes @ 0x4
	ds	2
??_delay:	; 0 bytes @ 0x6
??_delay_lcd:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
	global	delay@flags
delay@flags:	; 2 bytes @ 0x7
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	delay_lcd@i
delay_lcd@i:	; 2 bytes @ 0x0
	ds	2
	global	delay_lcd@j
delay_lcd@j:	; 2 bytes @ 0x2
	ds	2
??_main:	; 0 bytes @ 0x4
	ds	1
	global	main@mode
main@mode:	; 1 bytes @ 0x5
	ds	1
	global	main@speed
main@speed:	; 2 bytes @ 0x6
	ds	2
	global	main@MSB
main@MSB:	; 2 bytes @ 0x8
	ds	2
	global	main@LSB
main@LSB:	; 2 bytes @ 0xA
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
;!    COMMON           14      9      10
;!    BANK0            80     12      14
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
;! (0) _main                                                 8     8      0    2326
;!                                              4 BANK0      8     8      0
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     755
;!                          _delay_lcd
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     393
;!                                              6 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2     152
;!                                              4 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     393
;!                                              6 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (2) _delay_lcd                                            6     4      2     362
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
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
;!COMMON               E      9       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      18       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      C       E       5       17.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      18      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 67 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  LSB             2   10[BANK0 ] int 
;;  MSB             2    8[BANK0 ] int 
;;  speed           2    6[BANK0 ] int 
;;  mode            1    5[BANK0 ] unsigned char 
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
;;      Locals:         0       7       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
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
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
	line	67
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
	line	67
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l949:	
;blink_delay.c: 68: int MSB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@MSB)
	clrf	(main@MSB+1)
	line	69
;blink_delay.c: 69: int LSB = 0;
	clrf	(main@LSB)
	clrf	(main@LSB+1)
	line	70
;blink_delay.c: 70: int speed = 0;
	clrf	(main@speed)
	clrf	(main@speed+1)
	line	73
	
l951:	
;blink_delay.c: 71: unsigned char mode;
;blink_delay.c: 73: TRISB = 0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	74
	
l953:	
;blink_delay.c: 74: TRISC = 0xFF;
	movlw	(0FFh)
	movwf	(135)^080h	;volatile
	line	75
;blink_delay.c: 75: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	76
	
l955:	
;blink_delay.c: 76: OPTION_REG = 0xC4;
	movlw	(0C4h)
	movwf	(129)^080h	;volatile
	line	77
	
l957:	
;blink_delay.c: 77: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	78
	
l959:	
;blink_delay.c: 78: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	79
	
l961:	
;blink_delay.c: 79: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	80
	
l963:	
;blink_delay.c: 80: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	81
	
l965:	
;blink_delay.c: 81: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	83
	
l967:	
;blink_delay.c: 83: initLCD();
	fcall	_initLCD
	line	84
	
l969:	
;blink_delay.c: 84: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	85
	
l971:	
;blink_delay.c: 85: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	86
	
l973:	
;blink_delay.c: 86: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	87
	
l975:	
;blink_delay.c: 87: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	goto	l977
	line	89
;blink_delay.c: 89: while(1){
	
l66:	
	line	90
	
l977:	
;blink_delay.c: 90: if(btn_flag == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_btn_flag),w
	xorlw	01h
	skipz
	goto	u391
	goto	u390
u391:
	goto	l1011
u390:
	line	91
	
l979:	
;blink_delay.c: 91: key = PORTC & 0x0F;
	movf	(7),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_key)
	line	93
;blink_delay.c: 93: switch(key){
	goto	l1007
	line	94
;blink_delay.c: 94: case 0x0C:
	
l69:	
	line	95
	
l981:	
;blink_delay.c: 95: mode = 0x0C;
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	line	96
;blink_delay.c: 96: break;
	goto	l1009
	line	97
;blink_delay.c: 97: case 0x0E:
	
l71:	
	line	98
	
l983:	
;blink_delay.c: 98: mode = 0x0E;
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	line	99
;blink_delay.c: 99: break;
	goto	l1009
	line	100
;blink_delay.c: 100: case 0x00:
	
l72:	
	line	101
	
l985:	
;blink_delay.c: 101: speed = 12;
	movlw	low(0Ch)
	movwf	(main@speed)
	movlw	high(0Ch)
	movwf	((main@speed))+1
	line	102
;blink_delay.c: 102: break;
	goto	l1009
	line	103
;blink_delay.c: 103: case 0x01:
	
l73:	
	line	104
	
l987:	
;blink_delay.c: 104: speed = 24;
	movlw	low(018h)
	movwf	(main@speed)
	movlw	high(018h)
	movwf	((main@speed))+1
	line	105
;blink_delay.c: 105: break;
	goto	l1009
	line	106
;blink_delay.c: 106: case 0x02:
	
l74:	
	line	107
	
l989:	
;blink_delay.c: 107: speed = 37;
	movlw	low(025h)
	movwf	(main@speed)
	movlw	high(025h)
	movwf	((main@speed))+1
	line	108
;blink_delay.c: 108: break;
	goto	l1009
	line	109
;blink_delay.c: 109: case 0x04:
	
l75:	
	line	110
	
l991:	
;blink_delay.c: 110: speed = 49;
	movlw	low(031h)
	movwf	(main@speed)
	movlw	high(031h)
	movwf	((main@speed))+1
	line	111
;blink_delay.c: 111: break;
	goto	l1009
	line	112
;blink_delay.c: 112: case 0x05:
	
l76:	
	line	113
	
l993:	
;blink_delay.c: 113: speed = 61;
	movlw	low(03Dh)
	movwf	(main@speed)
	movlw	high(03Dh)
	movwf	((main@speed))+1
	line	114
;blink_delay.c: 114: break;
	goto	l1009
	line	115
;blink_delay.c: 115: case 0x06:
	
l77:	
	line	116
	
l995:	
;blink_delay.c: 116: speed = 73;
	movlw	low(049h)
	movwf	(main@speed)
	movlw	high(049h)
	movwf	((main@speed))+1
	line	117
;blink_delay.c: 117: break;
	goto	l1009
	line	118
;blink_delay.c: 118: case 0x08:
	
l78:	
	line	119
	
l997:	
;blink_delay.c: 119: speed = 85;
	movlw	low(055h)
	movwf	(main@speed)
	movlw	high(055h)
	movwf	((main@speed))+1
	line	120
;blink_delay.c: 120: break;
	goto	l1009
	line	121
;blink_delay.c: 121: case 0x09:
	
l79:	
	line	122
	
l999:	
;blink_delay.c: 122: speed = 98;
	movlw	low(062h)
	movwf	(main@speed)
	movlw	high(062h)
	movwf	((main@speed))+1
	line	123
;blink_delay.c: 123: break;
	goto	l1009
	line	124
;blink_delay.c: 124: case 0x0A:
	
l80:	
	line	125
	
l1001:	
;blink_delay.c: 125: speed = 110;
	movlw	low(06Eh)
	movwf	(main@speed)
	movlw	high(06Eh)
	movwf	((main@speed))+1
	line	126
;blink_delay.c: 126: break;
	goto	l1009
	line	127
;blink_delay.c: 127: case 0x0D:
	
l81:	
	line	128
	
l1003:	
;blink_delay.c: 128: speed = 122;
	movlw	low(07Ah)
	movwf	(main@speed)
	movlw	high(07Ah)
	movwf	((main@speed))+1
	line	129
;blink_delay.c: 129: break;
	goto	l1009
	line	130
	
l1005:	
;blink_delay.c: 130: }
	goto	l1009
	line	93
	
l68:	
	
l1007:	
	movf	(_key),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l985
	xorlw	1^0	; case 1
	skipnz
	goto	l987
	xorlw	2^1	; case 2
	skipnz
	goto	l989
	xorlw	4^2	; case 4
	skipnz
	goto	l991
	xorlw	5^4	; case 5
	skipnz
	goto	l993
	xorlw	6^5	; case 6
	skipnz
	goto	l995
	xorlw	8^6	; case 8
	skipnz
	goto	l997
	xorlw	9^8	; case 9
	skipnz
	goto	l999
	xorlw	10^9	; case 10
	skipnz
	goto	l1001
	xorlw	12^10	; case 12
	skipnz
	goto	l981
	xorlw	13^12	; case 13
	skipnz
	goto	l1003
	xorlw	14^13	; case 14
	skipnz
	goto	l983
	goto	l1009
	opt asmopt_on

	line	130
	
l70:	
	line	131
	
l1009:	
;blink_delay.c: 131: btn_flag = 0;
	clrf	(_btn_flag)
	goto	l1011
	line	132
	
l67:	
	line	135
	
l1011:	
;blink_delay.c: 132: }
;blink_delay.c: 135: if (mode == 0x0C) {
	movf	(main@mode),w
	xorlw	0Ch
	skipz
	goto	u401
	goto	u400
u401:
	goto	l1037
u400:
	line	136
	
l1013:	
;blink_delay.c: 136: if (MSB == 0 && LSB == 0) {
	movf	((main@MSB+1)),w
	iorwf	((main@MSB)),w
	skipz
	goto	u411
	goto	u410
u411:
	goto	l1019
u410:
	
l1015:	
	movf	((main@LSB+1)),w
	iorwf	((main@LSB)),w
	skipz
	goto	u421
	goto	u420
u421:
	goto	l1019
u420:
	line	137
	
l1017:	
;blink_delay.c: 137: MSB = 9;
	movlw	low(09h)
	movwf	(main@MSB)
	movlw	high(09h)
	movwf	((main@MSB))+1
	line	138
;blink_delay.c: 138: LSB = 9;
	movlw	low(09h)
	movwf	(main@LSB)
	movlw	high(09h)
	movwf	((main@LSB))+1
	line	139
;blink_delay.c: 139: } else if (LSB == 0) {
	goto	l1027
	
l83:	
	
l1019:	
	movf	((main@LSB+1)),w
	iorwf	((main@LSB)),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l1025
u430:
	line	140
	
l1021:	
;blink_delay.c: 140: MSB = MSB - 1;
	movf	(main@MSB),w
	addlw	low(-1)
	movwf	(main@MSB)
	movf	(main@MSB+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(main@MSB)
	line	141
	
l1023:	
;blink_delay.c: 141: LSB = 9;
	movlw	low(09h)
	movwf	(main@LSB)
	movlw	high(09h)
	movwf	((main@LSB))+1
	line	142
;blink_delay.c: 142: } else {
	goto	l1027
	
l85:	
	line	143
	
l1025:	
;blink_delay.c: 143: LSB = LSB - 1;
	movf	(main@LSB),w
	addlw	low(-1)
	movwf	(main@LSB)
	movf	(main@LSB+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(main@LSB)
	goto	l1027
	line	144
	
l86:	
	goto	l1027
	
l84:	
	line	146
	
l1027:	
;blink_delay.c: 144: }
;blink_delay.c: 146: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	147
	
l1029:	
;blink_delay.c: 147: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	148
	
l1031:	
;blink_delay.c: 148: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	149
	
l1033:	
;blink_delay.c: 149: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	addlw	030h
	fcall	_dataCtrl
	line	150
	
l1035:	
;blink_delay.c: 150: delay(speed);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@speed+1),w
	clrf	(delay@num+1)
	addwf	(delay@num+1)
	movf	(main@speed),w
	clrf	(delay@num)
	addwf	(delay@num)

	fcall	_delay
	goto	l1037
	line	151
	
l82:	
	line	153
	
l1037:	
;blink_delay.c: 151: }
;blink_delay.c: 153: if (mode == 0x0E) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	xorlw	0Eh
	skipz
	goto	u441
	goto	u440
u441:
	goto	l977
u440:
	line	154
	
l1039:	
;blink_delay.c: 154: if (MSB == 9 && LSB == 9) {
	movlw	09h
	xorwf	(main@MSB),w
	iorwf	(main@MSB+1),w
	skipz
	goto	u451
	goto	u450
u451:
	goto	l1045
u450:
	
l1041:	
	movlw	09h
	xorwf	(main@LSB),w
	iorwf	(main@LSB+1),w
	skipz
	goto	u461
	goto	u460
u461:
	goto	l1045
u460:
	line	155
	
l1043:	
;blink_delay.c: 155: MSB = 0;
	clrf	(main@MSB)
	clrf	(main@MSB+1)
	line	156
;blink_delay.c: 156: LSB = 0;
	clrf	(main@LSB)
	clrf	(main@LSB+1)
	line	157
;blink_delay.c: 157: } else if (LSB == 9) {
	goto	l1053
	
l88:	
	
l1045:	
	movlw	09h
	xorwf	(main@LSB),w
	iorwf	(main@LSB+1),w
	skipz
	goto	u471
	goto	u470
u471:
	goto	l1051
u470:
	line	158
	
l1047:	
;blink_delay.c: 158: LSB = 0;
	clrf	(main@LSB)
	clrf	(main@LSB+1)
	line	159
	
l1049:	
;blink_delay.c: 159: MSB = MSB + 1;
	movf	(main@MSB),w
	addlw	low(01h)
	movwf	(main@MSB)
	movf	(main@MSB+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@MSB)
	line	160
;blink_delay.c: 160: } else {
	goto	l1053
	
l90:	
	line	161
	
l1051:	
;blink_delay.c: 161: LSB = LSB + 1;
	movf	(main@LSB),w
	addlw	low(01h)
	movwf	(main@LSB)
	movf	(main@LSB+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@LSB)
	goto	l1053
	line	162
	
l91:	
	goto	l1053
	
l89:	
	line	164
	
l1053:	
;blink_delay.c: 162: }
;blink_delay.c: 164: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	165
	
l1055:	
;blink_delay.c: 165: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	166
	
l1057:	
;blink_delay.c: 166: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	167
	
l1059:	
;blink_delay.c: 167: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	addlw	030h
	fcall	_dataCtrl
	line	168
	
l1061:	
;blink_delay.c: 168: delay(speed);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@speed+1),w
	clrf	(delay@num+1)
	addwf	(delay@num+1)
	movf	(main@speed),w
	clrf	(delay@num)
	addwf	(delay@num)

	fcall	_delay
	goto	l977
	line	169
	
l87:	
	goto	l977
	line	170
	
l92:	
	line	89
	goto	l977
	
l93:	
	line	171
	
l94:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 59 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
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
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
	line	59
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	60
	
l947:	
;blink_delay.c: 60: delay_lcd(1);
	movlw	low(01h)
	movwf	(delay_lcd@cnt)
	movlw	high(01h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	61
;blink_delay.c: 61: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	62
;blink_delay.c: 62: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	63
;blink_delay.c: 63: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	64
;blink_delay.c: 64: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	65
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 50 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
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
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
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
	
l923:	
;blink_delay.c: 51: PORTD=INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	52
	
l925:	
;blink_delay.c: 52: RB4=0;
	bcf	(52/8),(52)&7	;volatile
	line	53
	
l927:	
;blink_delay.c: 53: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	54
	
l929:	
;blink_delay.c: 54: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	55
	
l931:	
;blink_delay.c: 55: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	56
	
l933:	
;blink_delay.c: 56: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	57
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 23 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
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
psect	text3,local,class=CODE,delta=2,merge=1
	line	23
global __ptext3
__ptext3:	;psect for function _delay
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
	line	23
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	25
	
l759:	
;blink_delay.c: 25: int flags = 0;
	clrf	(delay@flags)
	clrf	(delay@flags+1)
	line	27
;blink_delay.c: 27: while (flags < num) {
	goto	l767
	
l44:	
	line	28
	
l761:	
;blink_delay.c: 28: if(count_flag) {
	movf	(_count_flag),w
	skipz
	goto	u220
	goto	l767
u220:
	line	29
	
l763:	
;blink_delay.c: 29: count_flag = 0;
	clrf	(_count_flag)
	line	30
	
l765:	
;blink_delay.c: 30: flags++;
	movlw	low(01h)
	addwf	(delay@flags),f
	skipnc
	incf	(delay@flags+1),f
	movlw	high(01h)
	addwf	(delay@flags+1),f
	goto	l767
	line	31
	
l45:	
	goto	l767
	line	32
	
l43:	
	line	27
	
l767:	
	movf	(delay@flags+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@num+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u235
	movf	(delay@num),w
	subwf	(delay@flags),w
u235:

	skipc
	goto	u231
	goto	u230
u231:
	goto	l761
u230:
	goto	l47
	
l46:	
	line	33
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 41 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
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
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
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
	
l935:	
;blink_delay.c: 42: PORTD=DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	43
	
l937:	
;blink_delay.c: 43: RB4=1;
	bsf	(52/8),(52)&7	;volatile
	line	44
	
l939:	
;blink_delay.c: 44: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	45
	
l941:	
;blink_delay.c: 45: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	46
	
l943:	
;blink_delay.c: 46: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	47
	
l945:	
;blink_delay.c: 47: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	48
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay_lcd

;; *************** function _delay_lcd *****************
;; Defined at:
;;		line 35 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    4[COMMON] int 
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
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
	line	35
	global	__size_of_delay_lcd
	__size_of_delay_lcd	equ	__end_of_delay_lcd-_delay_lcd
	
_delay_lcd:	
;incstack = 0
	opt	stack 5
; Regs used in _delay_lcd: [wreg+status,2+status,0+btemp+1]
	line	37
	
l903:	
;blink_delay.c: 36: int i, j;
;blink_delay.c: 37: for (i = cnt; i != 0; i--);
	movf	(delay_lcd@cnt+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay_lcd@i+1)
	addwf	(delay_lcd@i+1)
	movf	(delay_lcd@cnt),w
	clrf	(delay_lcd@i)
	addwf	(delay_lcd@i)

	
l905:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u351
	goto	u350
u351:
	goto	l909
u350:
	goto	l913
	
l907:	
	goto	l913
	
l50:	
	
l909:	
	movlw	low(-1)
	addwf	(delay_lcd@i),f
	skipnc
	incf	(delay_lcd@i+1),f
	movlw	high(-1)
	addwf	(delay_lcd@i+1),f
	
l911:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u361
	goto	u360
u361:
	goto	l909
u360:
	goto	l913
	
l51:	
	line	38
	
l913:	
;blink_delay.c: 38: for (j = 0; j < 1000; j++);
	clrf	(delay_lcd@j)
	clrf	(delay_lcd@j+1)
	
l915:	
	movf	(delay_lcd@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u375
	movlw	low(03E8h)
	subwf	(delay_lcd@j),w
u375:

	skipc
	goto	u371
	goto	u370
u371:
	goto	l919
u370:
	goto	l54
	
l917:	
	goto	l54
	
l52:	
	
l919:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay_lcd@j),f
	skipnc
	incf	(delay_lcd@j+1),f
	movlw	high(01h)
	addwf	(delay_lcd@j+1),f
	
l921:	
	movf	(delay_lcd@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u385
	movlw	low(03E8h)
	subwf	(delay_lcd@j),w
u385:

	skipc
	goto	u381
	goto	u380
u381:
	goto	l919
u380:
	goto	l54
	
l53:	
	line	39
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_delay_lcd
	__end_of_delay_lcd:
	signat	_delay_lcd,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 7 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	7
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\PREMID\blink_delay.c"
	line	7
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: []
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
psect	text6
	line	9
	
i1l783:	
;blink_delay.c: 9: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	11
;blink_delay.c: 11: if(INTF) {
	btfss	(89/8),(89)&7	;volatile
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l37
u24_20:
	line	12
	
i1l785:	
;blink_delay.c: 12: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	13
;blink_delay.c: 13: btn_flag = 1;
	clrf	(_btn_flag)
	incf	(_btn_flag),f
	line	14
;blink_delay.c: 14: }
	goto	i1l38
	line	15
	
i1l37:	
;blink_delay.c: 15: else if(TMR0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l38
u25_20:
	line	16
	
i1l787:	
;blink_delay.c: 16: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	17
;blink_delay.c: 17: count_flag = 1;
	clrf	(_count_flag)
	incf	(_count_flag),f
	goto	i1l38
	line	18
	
i1l39:	
	line	19
	
i1l38:	
;blink_delay.c: 18: }
;blink_delay.c: 19: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	21
	
i1l40:	
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
