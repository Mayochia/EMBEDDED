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
	FNCALL	_main,_display_dispense_large
	FNCALL	_main,_display_dispense_reg
	FNCALL	_main,_display_menu
	FNCALL	_main,_initLCD
	FNCALL	_display_menu,_initLCD
	FNCALL	_display_menu,_instCtrl
	FNCALL	_display_menu,_print
	FNCALL	_initLCD,_delay_lcd
	FNCALL	_initLCD,_instCtrl
	FNCALL	_display_dispense_reg,_dataCtrl
	FNCALL	_display_dispense_reg,_delay
	FNCALL	_display_dispense_reg,_display_emergency
	FNCALL	_display_dispense_reg,_instCtrl
	FNCALL	_display_dispense_reg,_print
	FNCALL	_display_dispense_large,_dataCtrl
	FNCALL	_display_dispense_large,_delay
	FNCALL	_display_dispense_large,_display_emergency
	FNCALL	_display_dispense_large,_instCtrl
	FNCALL	_display_dispense_large,_print
	FNCALL	_display_emergency,_dataCtrl
	FNCALL	_display_emergency,_delay
	FNCALL	_display_emergency,_instCtrl
	FNCALL	_display_emergency,_print
	FNCALL	_print,_dataCtrl
	FNCALL	_dataCtrl,_delay_lcd
	FNCALL	_instCtrl,_delay_lcd
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_emergency
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	18
_emergency:
	retlw	045h
	retlw	06Dh
	retlw	065h
	retlw	072h
	retlw	067h
	retlw	065h
	retlw	06Eh
	retlw	063h
	retlw	079h
	retlw	020h
	retlw	073h
	retlw	074h
	retlw	06Fh
	retlw	070h
	retlw	02Eh
	retlw	02Eh
	retlw	02Eh
	retlw	0
	global __end_of_emergency
__end_of_emergency:
	global	_sprite_L
psect	strings
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	16
_sprite_L:
	retlw	05Bh
	retlw	034h
	retlw	05Dh
	retlw	020h
	retlw	053h
	retlw	070h
	retlw	072h
	retlw	069h
	retlw	074h
	retlw	065h
	retlw	020h
	retlw	04Ch
	retlw	061h
	retlw	072h
	retlw	067h
	retlw	065h
	retlw	0
	global __end_of_sprite_L
__end_of_sprite_L:
	global	_coke_L
psect	strings
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	14
_coke_L:
	retlw	05Bh
	retlw	032h
	retlw	05Dh
	retlw	020h
	retlw	043h
	retlw	06Fh
	retlw	06Bh
	retlw	065h
	retlw	020h
	retlw	04Ch
	retlw	061h
	retlw	072h
	retlw	067h
	retlw	065h
	retlw	0
	global __end_of_coke_L
__end_of_coke_L:
	global	_dispense
psect	strings
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	17
_dispense:
	retlw	044h
	retlw	069h
	retlw	073h
	retlw	070h
	retlw	065h
	retlw	06Eh
	retlw	073h
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	02Eh
	retlw	02Eh
	retlw	02Eh
	retlw	0
	global __end_of_dispense
__end_of_dispense:
	global	_sprite
psect	strings
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	15
_sprite:
	retlw	05Bh
	retlw	033h
	retlw	05Dh
	retlw	020h
	retlw	053h
	retlw	070h
	retlw	072h
	retlw	069h
	retlw	074h
	retlw	065h
	retlw	0
	global __end_of_sprite
__end_of_sprite:
	global	_coke
psect	strings
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	13
_coke:
	retlw	05Bh
	retlw	031h
	retlw	05Dh
	retlw	020h
	retlw	043h
	retlw	06Fh
	retlw	06Bh
	retlw	065h
	retlw	0
	global __end_of_coke
__end_of_coke:
	global	_emergency
	global	_sprite_L
	global	_coke_L
	global	_dispense
	global	_sprite
	global	_coke
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
; #config settings
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
	file	"keylcd.as"
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
?_dataCtrl:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_print:	; 0 bytes @ 0x0
?_display_emergency:	; 0 bytes @ 0x0
?_display_dispense_reg:	; 0 bytes @ 0x0
?_display_dispense_large:	; 0 bytes @ 0x0
?_display_menu:	; 0 bytes @ 0x0
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
	global	delay_lcd@i
delay_lcd@i:	; 2 bytes @ 0x6
	ds	1
	global	delay@flags
delay@flags:	; 2 bytes @ 0x7
	ds	1
??_dataCtrl:	; 0 bytes @ 0x8
??_instCtrl:	; 0 bytes @ 0x8
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x8
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x8
	ds	1
??_initLCD:	; 0 bytes @ 0x9
??_print:	; 0 bytes @ 0x9
??_display_emergency:	; 0 bytes @ 0x9
??_display_dispense_reg:	; 0 bytes @ 0x9
??_display_dispense_large:	; 0 bytes @ 0x9
??_display_menu:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	print@i
print@i:	; 2 bytes @ 0x0
	ds	2
	global	print@line
print@line:	; 1 bytes @ 0x2
	ds	1
	global	display_emergency@j
display_emergency@j:	; 2 bytes @ 0x3
	ds	2
	global	display_dispense_reg@i
display_dispense_reg@i:	; 2 bytes @ 0x5
	global	display_dispense_large@i
display_dispense_large@i:	; 2 bytes @ 0x5
	ds	2
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
;!    Constant    84
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      10
;!    BANK0            80     11      11
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    print@line	PTR const unsigned char  size(1) Largest target is 18
;!		 -> sprite_L(CODE[17]), sprite(CODE[11]), coke_L(CODE[15]), coke(CODE[9]), 
;!		 -> dispense(CODE[14]), emergency(CODE[18]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _display_menu->_instCtrl
;!    _initLCD->_instCtrl
;!    _display_dispense_reg->_dataCtrl
;!    _display_dispense_reg->_delay
;!    _display_dispense_reg->_instCtrl
;!    _display_dispense_large->_dataCtrl
;!    _display_dispense_large->_delay
;!    _display_dispense_large->_instCtrl
;!    _display_emergency->_dataCtrl
;!    _display_emergency->_delay
;!    _display_emergency->_instCtrl
;!    _print->_dataCtrl
;!    _dataCtrl->_delay_lcd
;!    _instCtrl->_delay_lcd
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_display_dispense_large
;!    _main->_display_dispense_reg
;!    _display_menu->_print
;!    _display_dispense_reg->_display_emergency
;!    _display_dispense_large->_display_emergency
;!    _display_emergency->_print
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
;! (0) _main                                                 4     4      0    6969
;!                                              7 BANK0      4     4      0
;!             _display_dispense_large
;!               _display_dispense_reg
;!                       _display_menu
;!                            _initLCD
;! ---------------------------------------------------------------------------------
;! (1) _display_menu                                         0     0      0    1254
;!                            _initLCD
;!                           _instCtrl
;!                              _print
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     476
;!                          _delay_lcd
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _display_dispense_reg                                 2     2      0    2601
;!                                              5 BANK0      2     2      0
;!                           _dataCtrl
;!                              _delay
;!                  _display_emergency
;!                           _instCtrl
;!                              _print
;! ---------------------------------------------------------------------------------
;! (1) _display_dispense_large                               2     2      0    2601
;!                                              5 BANK0      2     2      0
;!                           _dataCtrl
;!                              _delay
;!                  _display_emergency
;!                           _instCtrl
;!                              _print
;! ---------------------------------------------------------------------------------
;! (2) _display_emergency                                    2     2      0    1300
;!                                              3 BANK0      2     2      0
;!                           _dataCtrl
;!                              _delay
;!                           _instCtrl
;!                              _print
;! ---------------------------------------------------------------------------------
;! (2) _print                                                3     3      0     529
;!                                              0 BANK0      3     3      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (3) _dataCtrl                                             1     1      0     249
;!                                              8 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     249
;!                                              8 COMMON     1     1      0
;!                          _delay_lcd
;! ---------------------------------------------------------------------------------
;! (3) _delay_lcd                                            6     4      2     227
;!                                              4 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                5     3      2     205
;!                                              4 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _display_dispense_large
;!     _dataCtrl
;!       _delay_lcd
;!     _delay
;!     _display_emergency
;!       _dataCtrl
;!         _delay_lcd
;!       _delay
;!       _instCtrl
;!         _delay_lcd
;!       _print
;!         _dataCtrl
;!           _delay_lcd
;!     _instCtrl
;!       _delay_lcd
;!     _print
;!       _dataCtrl
;!         _delay_lcd
;!   _display_dispense_reg
;!     _dataCtrl
;!       _delay_lcd
;!     _delay
;!     _display_emergency
;!       _dataCtrl
;!         _delay_lcd
;!       _delay
;!       _instCtrl
;!         _delay_lcd
;!       _print
;!         _dataCtrl
;!           _delay_lcd
;!     _instCtrl
;!       _delay_lcd
;!     _print
;!       _dataCtrl
;!         _delay_lcd
;!   _display_menu
;!     _initLCD
;!       _delay_lcd
;!       _instCtrl
;!         _delay_lcd
;!     _instCtrl
;!       _delay_lcd
;!     _print
;!       _dataCtrl
;!         _delay_lcd
;!   _initLCD
;!     _delay_lcd
;!     _instCtrl
;!       _delay_lcd
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
;!ABS                  0      0      15       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      B       B       5       13.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      15      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 152 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[BANK0 ] int 
;;  key             1   10[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_display_dispense_large
;;		_display_dispense_reg
;;		_display_menu
;;		_initLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	152
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	152
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	153
	
l903:	
;keylcd.c: 153: TRISB=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	154
	
l905:	
;keylcd.c: 154: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	155
	
l907:	
;keylcd.c: 155: TRISD=0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	156
	
l909:	
;keylcd.c: 156: OPTION_REG = 0xC4;
	movlw	(0C4h)
	movwf	(129)^080h	;volatile
	line	157
	
l911:	
;keylcd.c: 157: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	158
	
l913:	
;keylcd.c: 158: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	159
	
l915:	
;keylcd.c: 159: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	160
	
l917:	
;keylcd.c: 160: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	161
	
l919:	
;keylcd.c: 161: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	163
	
l921:	
;keylcd.c: 162: unsigned char key;
;keylcd.c: 163: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	165
	
l923:	
;keylcd.c: 165: initLCD();
	fcall	_initLCD
	goto	l925
	line	167
;keylcd.c: 167: while(1){
	
l102:	
	line	168
	
l925:	
;keylcd.c: 168: display_menu();
	fcall	_display_menu
	line	169
;keylcd.c: 169: while(!RD4){
	goto	l103
	
l104:	
	line	171
	
l103:	
	line	169
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u331
	goto	u330
u331:
	goto	l103
u330:
	goto	l106
	
l105:	
	line	172
;keylcd.c: 171: }
;keylcd.c: 172: while(RD4){
	goto	l106
	
l107:	
	line	173
	
l927:	
;keylcd.c: 173: key = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@key)
	line	175
;keylcd.c: 175: switch(key){
	goto	l939
	line	176
;keylcd.c: 176: case 0x00:
	
l109:	
	line	177
	
l929:	
;keylcd.c: 177: display_dispense_reg();
	fcall	_display_dispense_reg
	line	178
;keylcd.c: 178: break;
	goto	l106
	line	179
;keylcd.c: 179: case 0x01:
	
l111:	
	line	180
	
l931:	
;keylcd.c: 180: display_dispense_large();
	fcall	_display_dispense_large
	line	181
;keylcd.c: 181: break;
	goto	l106
	line	182
;keylcd.c: 182: case 0x02:
	
l112:	
	line	183
	
l933:	
;keylcd.c: 183: display_dispense_reg();
	fcall	_display_dispense_reg
	line	184
;keylcd.c: 184: break;
	goto	l106
	line	185
;keylcd.c: 185: case 0x04:
	
l113:	
	line	186
	
l935:	
;keylcd.c: 186: display_dispense_large();
	fcall	_display_dispense_large
	line	187
;keylcd.c: 187: break;
	goto	l106
	line	188
;keylcd.c: 188: default:
	
l114:	
	line	189
;keylcd.c: 189: break;
	goto	l106
	line	190
	
l937:	
;keylcd.c: 190: }
	goto	l106
	line	175
	
l108:	
	
l939:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@key),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l929
	xorlw	1^0	; case 1
	skipnz
	goto	l931
	xorlw	2^1	; case 2
	skipnz
	goto	l933
	xorlw	4^2	; case 4
	skipnz
	goto	l935
	goto	l106
	opt asmopt_on

	line	190
	
l110:	
	line	192
	
l106:	
	line	172
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u341
	goto	u340
u341:
	goto	l927
u340:
	goto	l925
	
l115:	
	goto	l925
	line	193
	
l116:	
	line	167
	goto	l925
	
l117:	
	line	194
	
l118:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_display_menu

;; *************** function _display_menu *****************
;; Defined at:
;;		line 140 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_initLCD
;;		_instCtrl
;;		_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	140
global __ptext1
__ptext1:	;psect for function _display_menu
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	140
	global	__size_of_display_menu
	__size_of_display_menu	equ	__end_of_display_menu-_display_menu
	
_display_menu:	
;incstack = 0
	opt	stack 3
; Regs used in _display_menu: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	141
	
l853:	
;keylcd.c: 141: initLCD();
	fcall	_initLCD
	line	142
;keylcd.c: 142: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	143
	
l855:	
;keylcd.c: 143: print(coke);
	movlw	((_coke)-__stringbase)&0ffh
	fcall	_print
	line	144
	
l857:	
;keylcd.c: 144: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	145
;keylcd.c: 145: print(coke_L);
	movlw	((_coke_L)-__stringbase)&0ffh
	fcall	_print
	line	146
	
l859:	
;keylcd.c: 146: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	line	147
	
l861:	
;keylcd.c: 147: print(sprite);
	movlw	((_sprite)-__stringbase)&0ffh
	fcall	_print
	line	148
;keylcd.c: 148: instCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instCtrl
	line	149
	
l863:	
;keylcd.c: 149: print(sprite_L);
	movlw	((_sprite_L)-__stringbase)&0ffh
	fcall	_print
	line	150
	
l99:	
	return
	opt stack 0
GLOBAL	__end_of_display_menu
	__end_of_display_menu:
	signat	_display_menu,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 75 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;		_display_menu
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	75
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	75
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	76
	
l791:	
;keylcd.c: 76: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	77
;keylcd.c: 77: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	78
;keylcd.c: 78: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	79
;keylcd.c: 79: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	80
;keylcd.c: 80: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	81
	
l73:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_display_dispense_reg

;; *************** function _display_dispense_reg *****************
;; Defined at:
;;		line 103 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_display_emergency
;;		_instCtrl
;;		_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	103
global __ptext3
__ptext3:	;psect for function _display_dispense_reg
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	103
	global	__size_of_display_dispense_reg
	__size_of_display_dispense_reg	equ	__end_of_display_dispense_reg-_display_dispense_reg
	
_display_dispense_reg:	
;incstack = 0
	opt	stack 2
; Regs used in _display_dispense_reg: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	104
	
l809:	
;keylcd.c: 104: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	105
;keylcd.c: 105: instCtrl(0xC3);
	movlw	(0C3h)
	fcall	_instCtrl
	line	106
	
l811:	
;keylcd.c: 106: print(dispense);
	movlw	((_dispense)-__stringbase)&0ffh
	fcall	_print
	line	108
	
l813:	
;keylcd.c: 107: int i;
;keylcd.c: 108: for(i = 3; i >= 1; i--){
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_dispense_reg@i)
	movlw	high(03h)
	movwf	((display_dispense_reg@i))+1
	
l815:	
	movf	(display_dispense_reg@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u255
	movlw	low(01h)
	subwf	(display_dispense_reg@i),w
u255:

	skipnc
	goto	u251
	goto	u250
u251:
	goto	l819
u250:
	goto	l90
	
l817:	
	goto	l90
	
l87:	
	line	109
	
l819:	
;keylcd.c: 109: instCtrl(0x9A);
	movlw	(09Ah)
	fcall	_instCtrl
	line	110
;keylcd.c: 110: dataCtrl(i + 0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_dispense_reg@i),w
	addlw	030h
	fcall	_dataCtrl
	line	111
;keylcd.c: 111: dataCtrl('s');
	movlw	(073h)
	fcall	_dataCtrl
	line	112
;keylcd.c: 112: delay(122);
	movlw	low(07Ah)
	movwf	(delay@num)
	movlw	high(07Ah)
	movwf	((delay@num))+1
	fcall	_delay
	line	113
	
l821:	
;keylcd.c: 113: if(btn_flag){
	btfss	(_btn_flag/8),(_btn_flag)&7
	goto	u261
	goto	u260
u261:
	goto	l827
u260:
	line	114
	
l823:	
;keylcd.c: 114: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_dispense_reg@i)
	clrf	(display_dispense_reg@i+1)
	line	115
	
l825:	
;keylcd.c: 115: display_emergency();
	fcall	_display_emergency
	goto	l827
	line	116
	
l89:	
	line	108
	
l827:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_dispense_reg@i),f
	skipnc
	incf	(display_dispense_reg@i+1),f
	movlw	high(-1)
	addwf	(display_dispense_reg@i+1),f
	
l829:	
	movf	(display_dispense_reg@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u275
	movlw	low(01h)
	subwf	(display_dispense_reg@i),w
u275:

	skipnc
	goto	u271
	goto	u270
u271:
	goto	l819
u270:
	goto	l90
	
l88:	
	line	119
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_display_dispense_reg
	__end_of_display_dispense_reg:
	signat	_display_dispense_reg,88
	global	_display_dispense_large

;; *************** function _display_dispense_large *****************
;; Defined at:
;;		line 121 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_display_emergency
;;		_instCtrl
;;		_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	121
global __ptext4
__ptext4:	;psect for function _display_dispense_large
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	121
	global	__size_of_display_dispense_large
	__size_of_display_dispense_large	equ	__end_of_display_dispense_large-_display_dispense_large
	
_display_dispense_large:	
;incstack = 0
	opt	stack 2
; Regs used in _display_dispense_large: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	122
	
l831:	
;keylcd.c: 122: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	123
;keylcd.c: 123: instCtrl(0xC3);
	movlw	(0C3h)
	fcall	_instCtrl
	line	124
	
l833:	
;keylcd.c: 124: print(dispense);
	movlw	((_dispense)-__stringbase)&0ffh
	fcall	_print
	line	126
	
l835:	
;keylcd.c: 125: int i;
;keylcd.c: 126: for(i = 5; i >= 1; i--){
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_dispense_large@i)
	movlw	high(05h)
	movwf	((display_dispense_large@i))+1
	
l837:	
	movf	(display_dispense_large@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u285
	movlw	low(01h)
	subwf	(display_dispense_large@i),w
u285:

	skipnc
	goto	u281
	goto	u280
u281:
	goto	l841
u280:
	goto	l96
	
l839:	
	goto	l96
	
l93:	
	line	127
	
l841:	
;keylcd.c: 127: instCtrl(0x9A);
	movlw	(09Ah)
	fcall	_instCtrl
	line	128
;keylcd.c: 128: dataCtrl(i + 0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_dispense_large@i),w
	addlw	030h
	fcall	_dataCtrl
	line	129
;keylcd.c: 129: dataCtrl('s');
	movlw	(073h)
	fcall	_dataCtrl
	line	130
;keylcd.c: 130: delay(122);
	movlw	low(07Ah)
	movwf	(delay@num)
	movlw	high(07Ah)
	movwf	((delay@num))+1
	fcall	_delay
	line	131
	
l843:	
;keylcd.c: 131: if(btn_flag){
	btfss	(_btn_flag/8),(_btn_flag)&7
	goto	u291
	goto	u290
u291:
	goto	l849
u290:
	line	132
	
l845:	
;keylcd.c: 132: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_dispense_large@i)
	clrf	(display_dispense_large@i+1)
	line	133
	
l847:	
;keylcd.c: 133: display_emergency();
	fcall	_display_emergency
	goto	l849
	line	134
	
l95:	
	line	126
	
l849:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_dispense_large@i),f
	skipnc
	incf	(display_dispense_large@i+1),f
	movlw	high(-1)
	addwf	(display_dispense_large@i+1),f
	
l851:	
	movf	(display_dispense_large@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u305
	movlw	low(01h)
	subwf	(display_dispense_large@i),w
u305:

	skipnc
	goto	u301
	goto	u300
u301:
	goto	l841
u300:
	goto	l96
	
l94:	
	line	136
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_display_dispense_large
	__end_of_display_dispense_large:
	signat	_display_dispense_large,88
	global	_display_emergency

;; *************** function _display_emergency *****************
;; Defined at:
;;		line 90 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    3[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_instCtrl
;;		_print
;; This function is called by:
;;		_display_dispense_reg
;;		_display_dispense_large
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	90
global __ptext5
__ptext5:	;psect for function _display_emergency
psect	text5
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	90
	global	__size_of_display_emergency
	__size_of_display_emergency	equ	__end_of_display_emergency-_display_emergency
	
_display_emergency:	
;incstack = 0
	opt	stack 2
; Regs used in _display_emergency: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l793:	
;keylcd.c: 91: instCtrl(0xC3);
	movlw	(0C3h)
	fcall	_instCtrl
	line	92
	
l795:	
;keylcd.c: 92: print(emergency);
	movlw	((_emergency)-__stringbase)&0ffh
	fcall	_print
	line	94
	
l797:	
;keylcd.c: 93: int j;
;keylcd.c: 94: for(j = 5; j >= 1; j--){
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_emergency@j)
	movlw	high(05h)
	movwf	((display_emergency@j))+1
	
l799:	
	movf	(display_emergency@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u235
	movlw	low(01h)
	subwf	(display_emergency@j),w
u235:

	skipnc
	goto	u231
	goto	u230
u231:
	goto	l803
u230:
	goto	l83
	
l801:	
	goto	l83
	
l82:	
	line	95
	
l803:	
;keylcd.c: 95: instCtrl(0x9A);
	movlw	(09Ah)
	fcall	_instCtrl
	line	96
;keylcd.c: 96: dataCtrl(j + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_emergency@j),w
	addlw	030h
	fcall	_dataCtrl
	line	97
;keylcd.c: 97: dataCtrl('s');
	movlw	(073h)
	fcall	_dataCtrl
	line	98
;keylcd.c: 98: delay(122);
	movlw	low(07Ah)
	movwf	(delay@num)
	movlw	high(07Ah)
	movwf	((delay@num))+1
	fcall	_delay
	line	94
	
l805:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display_emergency@j),f
	skipnc
	incf	(display_emergency@j+1),f
	movlw	high(-1)
	addwf	(display_emergency@j+1),f
	
l807:	
	movf	(display_emergency@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u245
	movlw	low(01h)
	subwf	(display_emergency@j),w
u245:

	skipnc
	goto	u241
	goto	u240
u241:
	goto	l803
u240:
	
l83:	
	line	100
;keylcd.c: 99: }
;keylcd.c: 100: btn_flag = 0;
	bcf	(_btn_flag/8),(_btn_flag)&7
	line	101
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_display_emergency
	__end_of_display_emergency:
	signat	_display_emergency,88
	global	_print

;; *************** function _print *****************
;; Defined at:
;;		line 83 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;  line            1    wreg     PTR const unsigned char 
;;		 -> sprite_L(17), sprite(11), coke_L(15), coke(9), 
;;		 -> dispense(14), emergency(18), 
;; Auto vars:     Size  Location     Type
;;  line            1    2[BANK0 ] PTR const unsigned char 
;;		 -> sprite_L(17), sprite(11), coke_L(15), coke(9), 
;;		 -> dispense(14), emergency(18), 
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_display_emergency
;;		_display_dispense_reg
;;		_display_dispense_large
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	83
global __ptext6
__ptext6:	;psect for function _print
psect	text6
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	83
	global	__size_of_print
	__size_of_print	equ	__end_of_print-_print
	
_print:	
;incstack = 0
	opt	stack 3
; Regs used in _print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print@line stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print@line)
	line	84
	
l783:	
;keylcd.c: 84: int i =0;
	clrf	(print@i)
	clrf	(print@i+1)
	line	85
;keylcd.c: 85: for(i = 0; line[i]!='\0';i++){
	clrf	(print@i)
	clrf	(print@i+1)
	goto	l789
	
l77:	
	line	86
	
l785:	
;keylcd.c: 86: dataCtrl(line[i]);
	movf	(print@i),w
	addwf	(print@line),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	line	85
	
l787:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(print@i),f
	skipnc
	incf	(print@i+1),f
	movlw	high(01h)
	addwf	(print@i+1),f
	goto	l789
	
l76:	
	
l789:	
	movf	(print@i),w
	addwf	(print@line),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u221
	goto	u220
u221:
	goto	l785
u220:
	goto	l79
	
l78:	
	line	88
	
l79:	
	return
	opt stack 0
GLOBAL	__end_of_print
	__end_of_print:
	signat	_print,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 57 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_print
;;		_display_emergency
;;		_display_dispense_reg
;;		_display_dispense_large
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	57
global __ptext7
__ptext7:	;psect for function _dataCtrl
psect	text7
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	57
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 3
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	58
	
l753:	
;keylcd.c: 58: PORTC=DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	59
	
l755:	
;keylcd.c: 59: RB4=1;
	bsf	(52/8),(52)&7	;volatile
	line	60
	
l757:	
;keylcd.c: 60: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	61
	
l759:	
;keylcd.c: 61: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	62
	
l761:	
;keylcd.c: 62: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	63
	
l763:	
;keylcd.c: 63: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	64
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 66 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_display_emergency
;;		_display_dispense_reg
;;		_display_dispense_large
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	66
global __ptext8
__ptext8:	;psect for function _instCtrl
psect	text8
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	66
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	67
	
l771:	
;keylcd.c: 67: PORTC=INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
	
l773:	
;keylcd.c: 68: RB4=0;
	bcf	(52/8),(52)&7	;volatile
	line	69
	
l775:	
;keylcd.c: 69: RB6=0;
	bcf	(54/8),(54)&7	;volatile
	line	70
	
l777:	
;keylcd.c: 70: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	71
	
l779:	
;keylcd.c: 71: delay_lcd(200);
	movlw	low(0C8h)
	movwf	(delay_lcd@cnt)
	movlw	high(0C8h)
	movwf	((delay_lcd@cnt))+1
	fcall	_delay_lcd
	line	72
	
l781:	
;keylcd.c: 72: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	73
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay_lcd

;; *************** function _delay_lcd *****************
;; Defined at:
;;		line 51 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] int 
;;  j               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_dataCtrl
;;		_instCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	51
global __ptext9
__ptext9:	;psect for function _delay_lcd
psect	text9
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	51
	global	__size_of_delay_lcd
	__size_of_delay_lcd	equ	__end_of_delay_lcd-_delay_lcd
	
_delay_lcd:	
;incstack = 0
	opt	stack 4
; Regs used in _delay_lcd: [wreg+status,2+status,0]
	line	53
	
l743:	
;keylcd.c: 52: int i, j;
;keylcd.c: 53: for (i = cnt; i != 0; i--);
	movf	(delay_lcd@cnt+1),w
	clrf	(delay_lcd@i+1)
	addwf	(delay_lcd@i+1)
	movf	(delay_lcd@cnt),w
	clrf	(delay_lcd@i)
	addwf	(delay_lcd@i)

	
l745:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u181
	goto	u180
u181:
	goto	l749
u180:
	goto	l64
	
l747:	
	goto	l64
	
l62:	
	
l749:	
	movlw	low(-1)
	addwf	(delay_lcd@i),f
	skipnc
	incf	(delay_lcd@i+1),f
	movlw	high(-1)
	addwf	(delay_lcd@i+1),f
	
l751:	
	movf	((delay_lcd@i+1)),w
	iorwf	((delay_lcd@i)),w
	skipz
	goto	u191
	goto	u190
u191:
	goto	l749
u190:
	goto	l64
	
l63:	
	line	55
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_delay_lcd
	__end_of_delay_lcd:
	signat	_delay_lcd,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 39 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
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
;;		_display_emergency
;;		_display_dispense_reg
;;		_display_dispense_large
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	39
global __ptext10
__ptext10:	;psect for function _delay
psect	text10
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	39
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 4
; Regs used in _delay: [wreg+status,2]
	line	41
	
l765:	
;keylcd.c: 41: int flags = 0;
	clrf	(delay@flags)
	clrf	(delay@flags+1)
	line	43
;keylcd.c: 43: while (flags < num) {
	goto	l55
	
l56:	
	line	44
;keylcd.c: 44: if(count_flag) {
	btfss	(_count_flag/8),(_count_flag)&7
	goto	u201
	goto	u200
u201:
	goto	l55
u200:
	line	45
	
l767:	
;keylcd.c: 45: count_flag = 0;
	bcf	(_count_flag/8),(_count_flag)&7
	line	46
	
l769:	
;keylcd.c: 46: flags++;
	movlw	low(01h)
	addwf	(delay@flags),f
	skipnc
	incf	(delay@flags+1),f
	movlw	high(01h)
	addwf	(delay@flags+1),f
	goto	l55
	line	47
	
l57:	
	line	48
	
l55:	
	line	43
	movf	(delay@flags+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@num+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u215
	movf	(delay@num),w
	subwf	(delay@flags),w
u215:

	skipc
	goto	u211
	goto	u210
u211:
	goto	l56
u210:
	goto	l59
	
l58:	
	line	49
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 23 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
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
psect	text11,local,class=CODE,delta=2,merge=1
	line	23
global __ptext11
__ptext11:	;psect for function _ISR
psect	text11
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practice\keylcd\keylcd.c"
	line	23
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
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
psect	text11
	line	25
	
i1l697:	
;keylcd.c: 25: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	27
;keylcd.c: 27: if(INTF) {
	btfss	(89/8),(89)&7	;volatile
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l49
u14_20:
	line	28
	
i1l699:	
;keylcd.c: 28: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	29
	
i1l701:	
;keylcd.c: 29: btn_flag ^= 1;
	movlw	1<<((_btn_flag)&7)
	xorwf	((_btn_flag)/8),f
	line	30
;keylcd.c: 30: }
	goto	i1l50
	line	31
	
i1l49:	
;keylcd.c: 31: else if(TMR0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l50
u15_20:
	line	32
	
i1l703:	
;keylcd.c: 32: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	33
;keylcd.c: 33: count_flag = 1;
	bsf	(_count_flag/8),(_count_flag)&7
	goto	i1l50
	line	34
	
i1l51:	
	line	35
	
i1l50:	
;keylcd.c: 34: }
;keylcd.c: 35: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	37
	
i1l52:	
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
