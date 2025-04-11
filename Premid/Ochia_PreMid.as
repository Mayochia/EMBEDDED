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
	FNCALL	_main,_display_count_msg
	FNCALL	_main,_initLCD
	FNCALL	_main,_update_display
	FNCALL	_update_display,_dataCtrl
	FNCALL	_update_display,_instCtrl
	FNCALL	_initLCD,_delay_lcd
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay_lcd
	FNCALL	_display_count_msg,_dataCtrl
	FNCALL	_dataCtrl,_delay_lcd
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_count
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	6

;initializer for _count
	retlw	043h
	retlw	04Fh
	retlw	055h
	retlw	04Eh
	retlw	054h
	retlw	03Ah
	retlw	0
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
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
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
; #config settings
	file	"Ochia_PreMid.as"
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

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	6
_count:
       ds      7

	file	"Ochia_PreMid.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+7)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
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
?_display_count_msg:	; 0 bytes @ 0x0
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
??_update_display:	; 0 bytes @ 0x8
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
??_display_count_msg:	; 0 bytes @ 0x4
?_update_display:	; 0 bytes @ 0x4
	global	update_display@MSB
update_display@MSB:	; 2 bytes @ 0x4
	ds	1
	global	display_count_msg@msg
display_count_msg@msg:	; 1 bytes @ 0x5
	ds	1
	global	display_count_msg@i
display_count_msg@i:	; 2 bytes @ 0x6
	global	update_display@LSB
update_display@LSB:	; 2 bytes @ 0x6
	ds	2
??_main:	; 0 bytes @ 0x8
	ds	1
	global	main@MSB
main@MSB:	; 2 bytes @ 0x9
	ds	2
	global	main@LSB
main@LSB:	; 2 bytes @ 0xB
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        7
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       9
;!    BANK0            80     13      22
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    display_count_msg@msg	PTR unsigned char  size(1) Largest target is 7
;!		 -> count(BANK0[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_delay
;!    _update_display->_dataCtrl
;!    _update_display->_instCtrl
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay_lcd
;!    _display_count_msg->_dataCtrl
;!    _dataCtrl->_delay_lcd
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_display_count_msg
;!    _main->_update_display
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
;! (0) _main                                                 5     5      0    2808
;!                                              8 BANK0      5     5      0
;!                              _delay
;!                  _display_count_msg
;!                            _initLCD
;!                     _update_display
;! ---------------------------------------------------------------------------------
;! (1) _update_display                                       4     0      4    1058
;!                                              4 BANK0      4     0      4
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     568
;!                          _delay_lcd
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     295
;!                                              7 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (1) _display_count_msg                                    4     4      0     455
;!                                              4 BANK0      4     4      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     295
;!                                              7 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (3) _delay_lcd                                            6     4      2     273
;!                                              5 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2      99
;!                                              5 COMMON     3     1      2
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
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
;!   _delay
;!   _display_count_msg
;!     _dataCtrl
;!       _delay_lcd
;!   _initLCD
;!     _delay_lcd
;!     _instCtrl
;!       _delay_lcd
;!   _update_display
;!     _dataCtrl
;!       _delay_lcd
;!     _instCtrl
;!       _delay_lcd
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      D      16       5       27.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       9       1       64.3%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      1F      12        0.0%
;!ABS                  0      0      1F       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 81 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  LSB             2   11[BANK0 ] int 
;;  MSB             2    9[BANK0 ] int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;;		_display_count_msg
;;		_initLCD
;;		_update_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	81
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	81
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l881:	
;Ochia_PreMid.c: 82: int MSB = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@MSB)
	movlw	high(02h)
	movwf	((main@MSB))+1
	line	83
;Ochia_PreMid.c: 83: int LSB = 4;
	movlw	low(04h)
	movwf	(main@LSB)
	movlw	high(04h)
	movwf	((main@LSB))+1
	line	86
;Ochia_PreMid.c: 86: TRISB = 0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	87
	
l883:	
;Ochia_PreMid.c: 87: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	88
	
l885:	
;Ochia_PreMid.c: 88: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	91
	
l887:	
;Ochia_PreMid.c: 91: OPTION_REG = 0xC4;
	movlw	(0C4h)
	movwf	(129)^080h	;volatile
	line	92
	
l889:	
;Ochia_PreMid.c: 92: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	93
	
l891:	
;Ochia_PreMid.c: 93: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	94
	
l893:	
;Ochia_PreMid.c: 94: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	95
	
l895:	
;Ochia_PreMid.c: 95: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	96
	
l897:	
;Ochia_PreMid.c: 96: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	99
	
l899:	
;Ochia_PreMid.c: 99: initLCD();
	fcall	_initLCD
	line	100
	
l901:	
;Ochia_PreMid.c: 100: display_count_msg(count);
	movlw	(_count)&0ffh
	fcall	_display_count_msg
	line	101
	
l903:	
;Ochia_PreMid.c: 101: update_display(MSB, LSB);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB+1),w
	clrf	(update_display@MSB+1)
	addwf	(update_display@MSB+1)
	movf	(main@MSB),w
	clrf	(update_display@MSB)
	addwf	(update_display@MSB)

	movf	(main@LSB+1),w
	clrf	(update_display@LSB+1)
	addwf	(update_display@LSB+1)
	movf	(main@LSB),w
	clrf	(update_display@LSB)
	addwf	(update_display@LSB)

	fcall	_update_display
	goto	l905
	line	103
;Ochia_PreMid.c: 103: while (1) {
	
l78:	
	line	104
	
l905:	
;Ochia_PreMid.c: 104: key = PORTD & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_key)
	line	106
	
l907:	
;Ochia_PreMid.c: 106: if (btn_flag == 0) {
	movf	(_btn_flag),f
	skipz
	goto	u521
	goto	u520
u521:
	goto	l943
u520:
	line	107
	
l909:	
;Ochia_PreMid.c: 107: if (key == 0x0C) {
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u531
	goto	u530
u531:
	goto	l927
u530:
	line	108
	
l911:	
;Ochia_PreMid.c: 108: if (MSB < 2 || (MSB == 2 && LSB < 4)) {
	movf	(main@MSB+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u545
	movlw	low(02h)
	subwf	(main@MSB),w
u545:

	skipc
	goto	u541
	goto	u540
u541:
	goto	l917
u540:
	
l913:	
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@MSB),w
	iorwf	(main@MSB+1),w
	skipz
	goto	u551
	goto	u550
u551:
	goto	l943
u550:
	
l915:	
	movf	(main@LSB+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u565
	movlw	low(04h)
	subwf	(main@LSB),w
u565:

	skipnc
	goto	u561
	goto	u560
u561:
	goto	l943
u560:
	goto	l917
	
l83:	
	line	109
	
l917:	
;Ochia_PreMid.c: 109: if (LSB == 9) {
	movlw	09h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@LSB),w
	iorwf	(main@LSB+1),w
	skipz
	goto	u571
	goto	u570
u571:
	goto	l923
u570:
	line	110
	
l919:	
;Ochia_PreMid.c: 110: LSB = 0;
	clrf	(main@LSB)
	clrf	(main@LSB+1)
	line	111
	
l921:	
;Ochia_PreMid.c: 111: MSB++;
	movlw	low(01h)
	addwf	(main@MSB),f
	skipnc
	incf	(main@MSB+1),f
	movlw	high(01h)
	addwf	(main@MSB+1),f
	line	112
;Ochia_PreMid.c: 112: } else {
	goto	l925
	
l84:	
	line	113
	
l923:	
;Ochia_PreMid.c: 113: LSB++;
	movlw	low(01h)
	addwf	(main@LSB),f
	skipnc
	incf	(main@LSB+1),f
	movlw	high(01h)
	addwf	(main@LSB+1),f
	goto	l925
	line	114
	
l85:	
	line	115
	
l925:	
;Ochia_PreMid.c: 114: }
;Ochia_PreMid.c: 115: update_display(MSB, LSB);
	movf	(main@MSB+1),w
	clrf	(update_display@MSB+1)
	addwf	(update_display@MSB+1)
	movf	(main@MSB),w
	clrf	(update_display@MSB)
	addwf	(update_display@MSB)

	movf	(main@LSB+1),w
	clrf	(update_display@LSB+1)
	addwf	(update_display@LSB+1)
	movf	(main@LSB),w
	clrf	(update_display@LSB)
	addwf	(update_display@LSB)

	fcall	_update_display
	goto	l943
	line	116
	
l81:	
	line	117
;Ochia_PreMid.c: 116: }
;Ochia_PreMid.c: 117: } else if (key == 0x0E) {
	goto	l943
	
l80:	
	
l927:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u581
	goto	u580
u581:
	goto	l943
u580:
	line	118
	
l929:	
;Ochia_PreMid.c: 118: if (MSB > 0 || (MSB == 0 && LSB > 0)) {
	movf	(main@MSB+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u595
	movlw	low(01h)
	subwf	(main@MSB),w
u595:

	skipnc
	goto	u591
	goto	u590
u591:
	goto	l935
u590:
	
l931:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((main@MSB+1)),w
	iorwf	((main@MSB)),w
	skipz
	goto	u601
	goto	u600
u601:
	goto	l943
u600:
	
l933:	
	movf	(main@LSB+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u615
	movlw	low(01h)
	subwf	(main@LSB),w
u615:

	skipc
	goto	u611
	goto	u610
u611:
	goto	l943
u610:
	goto	l935
	
l90:	
	line	119
	
l935:	
;Ochia_PreMid.c: 119: if (LSB == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((main@LSB+1)),w
	iorwf	((main@LSB)),w
	skipz
	goto	u621
	goto	u620
u621:
	goto	l939
u620:
	line	120
	
l937:	
;Ochia_PreMid.c: 120: LSB = 9;
	movlw	low(09h)
	movwf	(main@LSB)
	movlw	high(09h)
	movwf	((main@LSB))+1
	line	121
;Ochia_PreMid.c: 121: MSB--;
	movlw	low(-1)
	addwf	(main@MSB),f
	skipnc
	incf	(main@MSB+1),f
	movlw	high(-1)
	addwf	(main@MSB+1),f
	line	122
;Ochia_PreMid.c: 122: } else {
	goto	l941
	
l91:	
	line	123
	
l939:	
;Ochia_PreMid.c: 123: LSB--;
	movlw	low(-1)
	addwf	(main@LSB),f
	skipnc
	incf	(main@LSB+1),f
	movlw	high(-1)
	addwf	(main@LSB+1),f
	goto	l941
	line	124
	
l92:	
	line	125
	
l941:	
;Ochia_PreMid.c: 124: }
;Ochia_PreMid.c: 125: update_display(MSB, LSB);
	movf	(main@MSB+1),w
	clrf	(update_display@MSB+1)
	addwf	(update_display@MSB+1)
	movf	(main@MSB),w
	clrf	(update_display@MSB)
	addwf	(update_display@MSB)

	movf	(main@LSB+1),w
	clrf	(update_display@LSB+1)
	addwf	(update_display@LSB+1)
	movf	(main@LSB),w
	clrf	(update_display@LSB)
	addwf	(update_display@LSB)

	fcall	_update_display
	goto	l943
	line	126
	
l88:	
	goto	l943
	line	127
	
l87:	
	goto	l943
	line	128
	
l86:	
	goto	l943
	
l79:	
	line	130
	
l943:	
;Ochia_PreMid.c: 126: }
;Ochia_PreMid.c: 127: }
;Ochia_PreMid.c: 128: }
;Ochia_PreMid.c: 130: if (btn_flag == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_btn_flag),w
	xorlw	01h
	skipz
	goto	u631
	goto	u630
u631:
	goto	l905
u630:
	line	131
	
l945:	
;Ochia_PreMid.c: 131: if (MSB == 0 && LSB == 0) {
	movf	((main@MSB+1)),w
	iorwf	((main@MSB)),w
	skipz
	goto	u641
	goto	u640
u641:
	goto	l951
u640:
	
l947:	
	movf	((main@LSB+1)),w
	iorwf	((main@LSB)),w
	skipz
	goto	u651
	goto	u650
u651:
	goto	l951
u650:
	line	132
	
l949:	
;Ochia_PreMid.c: 132: MSB = 2;
	movlw	low(02h)
	movwf	(main@MSB)
	movlw	high(02h)
	movwf	((main@MSB))+1
	line	133
;Ochia_PreMid.c: 133: LSB = 4;
	movlw	low(04h)
	movwf	(main@LSB)
	movlw	high(04h)
	movwf	((main@LSB))+1
	line	134
;Ochia_PreMid.c: 134: } else {
	goto	l957
	
l94:	
	line	135
	
l951:	
;Ochia_PreMid.c: 135: if (LSB == 0) {
	movf	((main@LSB+1)),w
	iorwf	((main@LSB)),w
	skipz
	goto	u661
	goto	u660
u661:
	goto	l955
u660:
	line	136
	
l953:	
;Ochia_PreMid.c: 136: LSB = 9;
	movlw	low(09h)
	movwf	(main@LSB)
	movlw	high(09h)
	movwf	((main@LSB))+1
	line	137
;Ochia_PreMid.c: 137: MSB--;
	movlw	low(-1)
	addwf	(main@MSB),f
	skipnc
	incf	(main@MSB+1),f
	movlw	high(-1)
	addwf	(main@MSB+1),f
	line	138
;Ochia_PreMid.c: 138: } else {
	goto	l957
	
l96:	
	line	139
	
l955:	
;Ochia_PreMid.c: 139: LSB--;
	movlw	low(-1)
	addwf	(main@LSB),f
	skipnc
	incf	(main@LSB+1),f
	movlw	high(-1)
	addwf	(main@LSB+1),f
	goto	l957
	line	140
	
l97:	
	goto	l957
	line	141
	
l95:	
	line	142
	
l957:	
;Ochia_PreMid.c: 140: }
;Ochia_PreMid.c: 141: }
;Ochia_PreMid.c: 142: update_display(MSB, LSB);
	movf	(main@MSB+1),w
	clrf	(update_display@MSB+1)
	addwf	(update_display@MSB+1)
	movf	(main@MSB),w
	clrf	(update_display@MSB)
	addwf	(update_display@MSB)

	movf	(main@LSB+1),w
	clrf	(update_display@LSB+1)
	addwf	(update_display@LSB+1)
	movf	(main@LSB),w
	clrf	(update_display@LSB)
	addwf	(update_display@LSB)

	fcall	_update_display
	line	143
	
l959:	
;Ochia_PreMid.c: 143: delay(31);
	movlw	low(01Fh)
	movwf	(delay@num)
	movlw	high(01Fh)
	movwf	((delay@num))+1
	fcall	_delay
	goto	l905
	line	144
	
l93:	
	goto	l905
	line	145
	
l98:	
	line	103
	goto	l905
	
l99:	
	line	146
	
l100:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_update_display

;; *************** function _update_display *****************
;; Defined at:
;;		line 75 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
;; Parameters:    Size  Location     Type
;;  MSB             2    4[BANK0 ] int 
;;  LSB             2    6[BANK0 ] int 
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
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	75
global __ptext1
__ptext1:	;psect for function _update_display
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	75
	global	__size_of_update_display
	__size_of_update_display	equ	__end_of_update_display-_update_display
	
_update_display:	
;incstack = 0
	opt	stack 4
; Regs used in _update_display: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	76
	
l779:	
;Ochia_PreMid.c: 76: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	77
;Ochia_PreMid.c: 77: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(update_display@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	78
;Ochia_PreMid.c: 78: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(update_display@LSB),w
	addlw	030h
	fcall	_dataCtrl
	line	79
	
l75:	
	return
	opt stack 0
GLOBAL	__end_of_update_display
	__end_of_update_display:
	signat	_update_display,8312
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 60 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
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
psect	text2,local,class=CODE,delta=2,merge=1
	line	60
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	60
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	61
	
l769:	
;Ochia_PreMid.c: 61: delay_lcd(1);
	movlw	low(01h)
	movwf	(delay_lcd@cnt)
	movlw	high(01h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	62
;Ochia_PreMid.c: 62: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	63
;Ochia_PreMid.c: 63: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	64
;Ochia_PreMid.c: 64: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	65
;Ochia_PreMid.c: 65: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	66
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 51 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
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
;;		_update_display
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	51
global __ptext3
__ptext3:	;psect for function _instCtrl
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	51
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	52
	
l747:	
;Ochia_PreMid.c: 52: PORTC = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	53
	
l749:	
;Ochia_PreMid.c: 53: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	54
	
l751:	
;Ochia_PreMid.c: 54: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	55
	
l753:	
;Ochia_PreMid.c: 55: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	56
	
l755:	
;Ochia_PreMid.c: 56: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	57
	
l757:	
;Ochia_PreMid.c: 57: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	58
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_display_count_msg

;; *************** function _display_count_msg *****************
;; Defined at:
;;		line 68 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
;; Parameters:    Size  Location     Type
;;  msg             1    wreg     PTR unsigned char 
;;		 -> count(7), 
;; Auto vars:     Size  Location     Type
;;  msg             1    5[BANK0 ] PTR unsigned char 
;;		 -> count(7), 
;;  i               2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	68
global __ptext4
__ptext4:	;psect for function _display_count_msg
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	68
	global	__size_of_display_count_msg
	__size_of_display_count_msg	equ	__end_of_display_count_msg-_display_count_msg
	
_display_count_msg:	
;incstack = 0
	opt	stack 4
; Regs used in _display_count_msg: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;display_count_msg@msg stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_count_msg@msg)
	line	70
	
l873:	
;Ochia_PreMid.c: 69: int i;
;Ochia_PreMid.c: 70: for (i = 0; msg[i] != '\0'; i++) {
	clrf	(display_count_msg@i)
	clrf	(display_count_msg@i+1)
	goto	l879
	
l70:	
	line	71
	
l875:	
;Ochia_PreMid.c: 71: dataCtrl(msg[i]);
	movf	(display_count_msg@i),w
	addwf	(display_count_msg@msg),w
	movwf	(??_display_count_msg+0)+0
	movf	0+(??_display_count_msg+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_dataCtrl
	line	70
	
l877:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_count_msg@i),f
	skipnc
	incf	(display_count_msg@i+1),f
	movlw	high(01h)
	addwf	(display_count_msg@i+1),f
	goto	l879
	
l69:	
	
l879:	
	movf	(display_count_msg@i),w
	addwf	(display_count_msg@msg),w
	movwf	(??_display_count_msg+0)+0
	movf	0+(??_display_count_msg+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u511
	goto	u510
u511:
	goto	l875
u510:
	goto	l72
	
l71:	
	line	73
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_display_count_msg
	__end_of_display_count_msg:
	signat	_display_count_msg,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 42 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
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
;;		_display_count_msg
;;		_update_display
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	42
global __ptext5
__ptext5:	;psect for function _dataCtrl
psect	text5
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	42
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	43
	
l735:	
;Ochia_PreMid.c: 43: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
	
l737:	
;Ochia_PreMid.c: 44: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	45
	
l739:	
;Ochia_PreMid.c: 45: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	46
	
l741:	
;Ochia_PreMid.c: 46: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	47
	
l743:	
;Ochia_PreMid.c: 47: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	48
	
l745:	
;Ochia_PreMid.c: 48: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	49
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay_lcd

;; *************** function _delay_lcd *****************
;; Defined at:
;;		line 36 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	36
global __ptext6
__ptext6:	;psect for function _delay_lcd
psect	text6
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	36
	global	__size_of_delay_lcd
	__size_of_delay_lcd	equ	__end_of_delay_lcd-_delay_lcd
	
_delay_lcd:	
;incstack = 0
	opt	stack 4
; Regs used in _delay_lcd: [wreg+status,2+status,0+btemp+1]
	line	38
	
l715:	
;Ochia_PreMid.c: 37: int i, j;
;Ochia_PreMid.c: 38: for (i = cnt; i != 0; i--);
	movf	(delay_lcd@cnt+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay_lcd@i+1)
	addwf	(delay_lcd@i+1)
	movf	(delay_lcd@cnt),w
	clrf	(delay_lcd@i)
	addwf	(delay_lcd@i)

	
l717:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u261
	goto	u260
u261:
	goto	l721
u260:
	goto	l725
	
l719:	
	goto	l725
	
l53:	
	
l721:	
	movlw	low(-1)
	addwf	(delay_lcd@i),f
	skipnc
	incf	(delay_lcd@i+1),f
	movlw	high(-1)
	addwf	(delay_lcd@i+1),f
	
l723:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u271
	goto	u270
u271:
	goto	l721
u270:
	goto	l725
	
l54:	
	line	39
	
l725:	
;Ochia_PreMid.c: 39: for (j = 0; j < 1000; j++);
	clrf	(delay_lcd@j)
	clrf	(delay_lcd@j+1)
	
l727:	
	movf	(delay_lcd@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u285
	movlw	low(03E8h)
	subwf	(delay_lcd@j),w
u285:

	skipc
	goto	u281
	goto	u280
u281:
	goto	l731
u280:
	goto	l57
	
l729:	
	goto	l57
	
l55:	
	
l731:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay_lcd@j),f
	skipnc
	incf	(delay_lcd@j+1),f
	movlw	high(01h)
	addwf	(delay_lcd@j+1),f
	
l733:	
	movf	(delay_lcd@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u295
	movlw	low(03E8h)
	subwf	(delay_lcd@j),w
u295:

	skipc
	goto	u291
	goto	u290
u291:
	goto	l731
u290:
	goto	l57
	
l56:	
	line	40
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_delay_lcd
	__end_of_delay_lcd:
	signat	_delay_lcd,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 26 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
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
psect	text7,local,class=CODE,delta=2,merge=1
	line	26
global __ptext7
__ptext7:	;psect for function _delay
psect	text7
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	26
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	27
	
l759:	
;Ochia_PreMid.c: 27: int flags = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@flags)
	clrf	(delay@flags+1)
	line	28
;Ochia_PreMid.c: 28: while (flags < num) {
	goto	l767
	
l47:	
	line	29
	
l761:	
;Ochia_PreMid.c: 29: if (count_flag) {
	movf	(_count_flag),w
	skipz
	goto	u300
	goto	l767
u300:
	line	30
	
l763:	
;Ochia_PreMid.c: 30: count_flag = 0;
	clrf	(_count_flag)
	line	31
	
l765:	
;Ochia_PreMid.c: 31: flags++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@flags),f
	skipnc
	incf	(delay@flags+1),f
	movlw	high(01h)
	addwf	(delay@flags+1),f
	goto	l767
	line	32
	
l48:	
	goto	l767
	line	33
	
l46:	
	line	28
	
l767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@flags+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@num+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u315
	movf	(delay@num),w
	subwf	(delay@flags),w
u315:

	skipc
	goto	u311
	goto	u310
u311:
	goto	l761
u310:
	goto	l50
	
l49:	
	line	34
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 8 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	8
global __ptext8
__ptext8:	;psect for function _ISR
psect	text8
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Premid\Ochia_PreMid.c"
	line	8
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
psect	text8
	line	9
	
i1l781:	
;Ochia_PreMid.c: 9: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	11
;Ochia_PreMid.c: 11: if (INTF) {
	btfss	(89/8),(89)&7	;volatile
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l39
u33_20:
	line	12
	
i1l783:	
;Ochia_PreMid.c: 12: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	13
	
i1l785:	
;Ochia_PreMid.c: 13: key = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_key)
	line	14
	
i1l787:	
;Ochia_PreMid.c: 14: if (key == 0x0D) {
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l41
u34_20:
	line	15
	
i1l789:	
;Ochia_PreMid.c: 15: btn_flag ^= 1;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	xorwf	(_btn_flag),f
	goto	i1l41
	line	16
	
i1l40:	
	line	17
;Ochia_PreMid.c: 16: }
;Ochia_PreMid.c: 17: }
	goto	i1l41
	line	18
	
i1l39:	
;Ochia_PreMid.c: 18: else if (TMR0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l41
u35_20:
	line	19
	
i1l791:	
;Ochia_PreMid.c: 19: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	20
;Ochia_PreMid.c: 20: count_flag = 1;
	clrf	(_count_flag)
	incf	(_count_flag),f
	goto	i1l41
	line	21
	
i1l42:	
	line	23
	
i1l41:	
;Ochia_PreMid.c: 21: }
;Ochia_PreMid.c: 23: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	24
	
i1l43:	
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
