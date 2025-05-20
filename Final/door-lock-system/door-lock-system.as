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
	FNCALL	_main,_displayMsg
	FNCALL	_main,_enterPass
	FNCALL	_main,_initLCD
	FNCALL	_main,_initialize
	FNCALL	_main,_instCtrl
	FNCALL	_main,_setPass
	FNCALL	_main,_setServoClockwise
	FNCALL	_main,_setServoCounterClockwise
	FNCALL	_main,_setup
	FNCALL	_setPass,_dataCtrl
	FNCALL	_initialize,_setServoPosition
	FNCALL	_enterPass,_dataCtrl
	FNCALL	_enterPass,_verifyPIN
	FNCALL	_verifyPIN,_displayMsg
	FNCALL	_verifyPIN,_initLCD
	FNCALL	_verifyPIN,_instCtrl
	FNCALL	_verifyPIN,_locked
	FNCALL	_verifyPIN,_setServoClockwise
	FNCALL	_verifyPIN,_setServoCounterClockwise
	FNCALL	_setServoCounterClockwise,_moveToPosition
	FNCALL	_setServoClockwise,_moveToPosition
	FNCALL	_moveToPosition,_setServoPosition
	FNCALL	_setServoPosition,___wmul
	FNCALL	_initLCD,_LCD_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_LCD_delay
	FNCALL	_displayMsg,_dataCtrl
	FNCALL	_dataCtrl,_LCD_delay
	FNROOT	_main
	global	_tick
	global	_trial
	global	_SERVO_MAX_POS
	global	_SERVO_MID_POS
	global	_SERVO_MIN_POS
	global	_currentPosition
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	52

;initializer for _tick
	retlw	030h
	retlw	075h

	line	49

;initializer for _trial
	retlw	03h
	retlw	0

	line	39

;initializer for _SERVO_MAX_POS
	retlw	06Fh
	line	38

;initializer for _SERVO_MID_POS
	retlw	08Ah
	line	37

;initializer for _SERVO_MIN_POS
	retlw	0A5h
	line	36

;initializer for _currentPosition
	retlw	096h
	global	_PIN
	global	_correctPIN
	global	_rx_data
	global	_invalid_flag
	global	_setpass_flag
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTB
_PORTB	set	0x6
	global	_PORTCbits
_PORTCbits	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_T2CON
_T2CON	set	0x12
	global	_TXREG
_TXREG	set	0x19
	global	_CREN
_CREN	set	0xC4
	global	_GIE
_GIE	set	0x5F
	global	_OERR
_OERR	set	0xC1
	global	_PEIE
_PEIE	set	0x5E
	global	_RA0
_RA0	set	0x28
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RCIF
_RCIF	set	0x65
	global	_RD4
_RD4	set	0x44
	global	_SPEN
_SPEN	set	0xC7
	global	_TXIF
_TXIF	set	0x64
	global	_ADCON1
_ADCON1	set	0x9F
	global	_PR2
_PR2	set	0x92
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TRISDbits
_TRISDbits	set	0x88
	global	_BRGH
_BRGH	set	0x4C2
	global	_RCIE
_RCIE	set	0x465
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRISC2
_TRISC2	set	0x43A
	global	_TXEN
_TXEN	set	0x4C5
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
	global __stringdata
__stringdata:
	
STR_5:	
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_4:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	33	;'!'
	retlw	0
psect	strings
	
STR_3:	
	retlw	91	;'['
	retlw	50	;'2'
	retlw	93	;']'
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_12:	
	retlw	65	;'A'
	retlw	108	;'l'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_11:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	91	;'['
	retlw	49	;'1'
	retlw	93	;']'
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_13:	
	retlw	97	;'a'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_1:	
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_15:	
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	33	;'!'
	retlw	0
psect	strings
	
STR_14:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_8:	
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
STR_6	equ	STR_2+0
STR_9	equ	STR_2+0
STR_16	equ	STR_2+0
STR_7	equ	STR_3+0
STR_10	equ	STR_3+0
STR_17	equ	STR_3+0
STR_18	equ	STR_11+0
	global __end_of__stringdata
__end_of__stringdata:
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
	file	"door-lock-system.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssBANK0,class=BANK0,bit,space=1,noexec
global __pbitbssBANK0
__pbitbssBANK0:
_invalid_flag:
       ds      1

_setpass_flag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_PIN:
       ds      8

_correctPIN:
       ds      8

_rx_data:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	52
_tick:
       ds      2

psect	dataBANK0
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	49
_trial:
       ds      2

psect	dataBANK0
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	39
_SERVO_MAX_POS:
       ds      1

psect	dataBANK0
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	38
_SERVO_MID_POS:
       ds      1

psect	dataBANK0
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	37
_SERVO_MIN_POS:
       ds      1

psect	dataBANK0
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	36
_currentPosition:
       ds      1

	file	"door-lock-system.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssBANK0/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+011h)
	fcall	clear_ram0
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
	movlw low(__pdataBANK0+8)
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
?_setServoPosition:	; 0 bytes @ 0x0
?_initialize:	; 0 bytes @ 0x0
?_moveToPosition:	; 0 bytes @ 0x0
?_setServoClockwise:	; 0 bytes @ 0x0
?_setServoCounterClockwise:	; 0 bytes @ 0x0
?_LCD_delay:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_displayMsg:	; 0 bytes @ 0x0
?_setPass:	; 0 bytes @ 0x0
?_locked:	; 0 bytes @ 0x0
??_locked:	; 0 bytes @ 0x0
?_verifyPIN:	; 0 bytes @ 0x0
?_enterPass:	; 0 bytes @ 0x0
?_setup:	; 0 bytes @ 0x0
??_setup:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	LCD_delay@MUL
LCD_delay@MUL:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
??_LCD_delay:	; 0 bytes @ 0x2
	global	LCD_delay@i
LCD_delay@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
??___wmul:	; 0 bytes @ 0x4
	global	LCD_delay@j
LCD_delay@j:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
??_setServoPosition:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
??_displayMsg:	; 0 bytes @ 0x7
??_setPass:	; 0 bytes @ 0x7
	global	displayMsg@i
displayMsg@i:	; 2 bytes @ 0x7
	ds	1
	global	setServoPosition@scaledPosition
setServoPosition@scaledPosition:	; 2 bytes @ 0x8
	ds	1
	global	displayMsg@message
displayMsg@message:	; 1 bytes @ 0x9
	global	setPass@keyData
setPass@keyData:	; 1 bytes @ 0x9
	ds	1
	global	setServoPosition@duty
setServoPosition@duty:	; 2 bytes @ 0xA
	global	setPass@i
setPass@i:	; 2 bytes @ 0xA
	ds	2
	global	setServoPosition@position
setServoPosition@position:	; 1 bytes @ 0xC
	ds	1
??_setServoClockwise:	; 0 bytes @ 0xD
??_setServoCounterClockwise:	; 0 bytes @ 0xD
	global	main@INPUT
main@INPUT:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_initialize:	; 0 bytes @ 0x0
??_moveToPosition:	; 0 bytes @ 0x0
	ds	3
	global	moveToPosition@pos
moveToPosition@pos:	; 1 bytes @ 0x3
	ds	1
	global	moveToPosition@pos_166
moveToPosition@pos_166:	; 1 bytes @ 0x4
	ds	1
	global	moveToPosition@position
moveToPosition@position:	; 1 bytes @ 0x5
	ds	1
??_verifyPIN:	; 0 bytes @ 0x6
	ds	3
	global	verifyPIN@match
verifyPIN@match:	; 2 bytes @ 0x9
	ds	2
	global	verifyPIN@i
verifyPIN@i:	; 2 bytes @ 0xB
	ds	2
??_enterPass:	; 0 bytes @ 0xD
	ds	2
	global	enterPass@keyData
enterPass@keyData:	; 1 bytes @ 0xF
	ds	1
	global	enterPass@j
enterPass@j:	; 2 bytes @ 0x10
	ds	2
??_main:	; 0 bytes @ 0x12
	ds	3
;!
;!Data Sizes:
;!    Strings     121
;!    Constant    0
;!    Data        8
;!    BSS         17
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     21      47
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    displayMsg@message	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_18(CODE[11]), STR_17(CODE[13]), STR_16(CODE[11]), STR_15(CODE[9]), 
;!		 -> STR_14(CODE[9]), STR_13(CODE[11]), STR_12(CODE[12]), STR_11(CODE[11]), 
;!		 -> STR_10(CODE[13]), STR_9(CODE[11]), STR_8(CODE[7]), STR_7(CODE[13]), 
;!		 -> STR_6(CODE[11]), STR_5(CODE[15]), STR_4(CODE[13]), STR_3(CODE[13]), 
;!		 -> STR_2(CODE[11]), STR_1(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _setPass->_dataCtrl
;!    _initialize->_setServoPosition
;!    _moveToPosition->_setServoPosition
;!    _setServoPosition->___wmul
;!    _initLCD->_instCtrl
;!    _instCtrl->_LCD_delay
;!    _displayMsg->_dataCtrl
;!    _dataCtrl->_LCD_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_enterPass
;!    _enterPass->_verifyPIN
;!    _setServoCounterClockwise->_moveToPosition
;!    _setServoClockwise->_moveToPosition
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
;! (0) _main                                                 4     4      0    7650
;!                                             13 COMMON     1     1      0
;!                                             18 BANK0      3     3      0
;!                         _displayMsg
;!                          _enterPass
;!                            _initLCD
;!                         _initialize
;!                           _instCtrl
;!                            _setPass
;!                  _setServoClockwise
;!           _setServoCounterClockwise
;!                              _setup
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setPass                                              5     5      0     687
;!                                              7 COMMON     5     5      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initialize                                           3     3      0     356
;!                                              0 BANK0      3     3      0
;!                   _setServoPosition
;! ---------------------------------------------------------------------------------
;! (1) _enterPass                                            5     5      0    3624
;!                                             13 BANK0      5     5      0
;!                           _dataCtrl
;!                          _verifyPIN
;! ---------------------------------------------------------------------------------
;! (2) _verifyPIN                                            7     7      0    3052
;!                                              6 BANK0      7     7      0
;!                         _displayMsg
;!                            _initLCD
;!                           _instCtrl
;!                             _locked
;!                  _setServoClockwise
;!           _setServoCounterClockwise
;! ---------------------------------------------------------------------------------
;! (1) _setServoCounterClockwise                             0     0      0     602
;!                     _moveToPosition
;! ---------------------------------------------------------------------------------
;! (1) _setServoClockwise                                    0     0      0     602
;!                     _moveToPosition
;! ---------------------------------------------------------------------------------
;! (2) _moveToPosition                                       6     6      0     602
;!                                              0 BANK0      6     6      0
;!                   _setServoPosition
;! ---------------------------------------------------------------------------------
;! (3) _setServoPosition                                     7     7      0     356
;!                                              6 COMMON     7     7      0
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     198
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) _locked                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     568
;!                          _LCD_delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     295
;!                                              6 COMMON     1     1      0
;!                          _LCD_delay
;! ---------------------------------------------------------------------------------
;! (3) _displayMsg                                           3     3      0     871
;!                                              7 COMMON     3     3      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     295
;!                                              6 COMMON     1     1      0
;!                          _LCD_delay
;! ---------------------------------------------------------------------------------
;! (3) _LCD_delay                                            6     4      2     273
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _displayMsg
;!     _dataCtrl
;!       _LCD_delay
;!   _enterPass
;!     _dataCtrl
;!       _LCD_delay
;!     _verifyPIN
;!       _displayMsg
;!         _dataCtrl
;!           _LCD_delay
;!       _initLCD
;!         _LCD_delay
;!         _instCtrl
;!           _LCD_delay
;!       _instCtrl
;!         _LCD_delay
;!       _locked
;!       _setServoClockwise
;!         _moveToPosition
;!           _setServoPosition
;!             ___wmul
;!       _setServoCounterClockwise
;!         _moveToPosition
;!           _setServoPosition
;!             ___wmul
;!   _initLCD
;!     _LCD_delay
;!     _instCtrl
;!       _LCD_delay
;!   _initialize
;!     _setServoPosition
;!       ___wmul
;!   _instCtrl
;!     _LCD_delay
;!   _setPass
;!     _dataCtrl
;!       _LCD_delay
;!   _setServoClockwise
;!     _moveToPosition
;!       _setServoPosition
;!         ___wmul
;!   _setServoCounterClockwise
;!     _moveToPosition
;!       _setServoPosition
;!         ___wmul
;!   _setup
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
;!BANK0               50     15      2F       5       58.8%
;!BITBANK0            50      0       1       4        1.3%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      3D      12        0.0%
;!ABS                  0      0      3D       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 342 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  INPUT           1   13[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_displayMsg
;;		_enterPass
;;		_initLCD
;;		_initialize
;;		_instCtrl
;;		_setPass
;;		_setServoClockwise
;;		_setServoCounterClockwise
;;		_setup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	342
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	342
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	343
	
l1648:	
;door-lock-system.c: 343: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	344
	
l1650:	
;door-lock-system.c: 344: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	345
	
l1652:	
;door-lock-system.c: 345: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	346
	
l1654:	
;door-lock-system.c: 346: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	347
	
l1656:	
;door-lock-system.c: 347: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	349
	
l1658:	
;door-lock-system.c: 349: initLCD();
	fcall	_initLCD
	line	351
	
l1660:	
;door-lock-system.c: 351: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	352
	
l1662:	
;door-lock-system.c: 352: displayMsg("[1]Set PIN");
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_displayMsg
	line	353
	
l1664:	
;door-lock-system.c: 353: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	354
	
l1666:	
;door-lock-system.c: 354: displayMsg("[2]Enter PIN");
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	_displayMsg
	line	356
	
l1668:	
;door-lock-system.c: 356: initialize();
	fcall	_initialize
	line	357
	
l1670:	
;door-lock-system.c: 357: setup();
	fcall	_setup
	line	359
	
l1672:	
;door-lock-system.c: 359: setServoClockwise();
	fcall	_setServoClockwise
	goto	l1674
	line	361
;door-lock-system.c: 361: while (1) {
	
l224:	
	line	363
	
l1674:	
;door-lock-system.c: 363: if (RCIF) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u781
	goto	u780
u781:
	goto	l1714
u780:
	line	364
	
l1676:	
;door-lock-system.c: 364: if (OERR) {
	btfss	(193/8),(193)&7	;volatile
	goto	u791
	goto	u790
u791:
	goto	l1680
u790:
	line	365
	
l1678:	
;door-lock-system.c: 365: CREN = 0;
	bcf	(196/8),(196)&7	;volatile
	line	366
;door-lock-system.c: 366: CREN = 1;
	bsf	(196/8),(196)&7	;volatile
	goto	l1680
	line	367
	
l226:	
	line	368
	
l1680:	
;door-lock-system.c: 367: }
;door-lock-system.c: 368: rx_data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_rx_data)	;volatile
	line	370
;door-lock-system.c: 370: if (rx_data == 'A') {
	movf	(_rx_data),w	;volatile
	xorlw	041h
	skipz
	goto	u801
	goto	u800
u801:
	goto	l1700
u800:
	line	371
	
l1682:	
;door-lock-system.c: 371: setServoClockwise();
	fcall	_setServoClockwise
	line	372
	
l1684:	
;door-lock-system.c: 372: initLCD();
	fcall	_initLCD
	line	374
	
l1686:	
;door-lock-system.c: 374: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	375
	
l1688:	
;door-lock-system.c: 375: displayMsg("LOCKED");
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	_displayMsg
	goto	l1690
	line	378
;door-lock-system.c: 378: while (1) {
	
l228:	
	line	379
	
l1690:	
;door-lock-system.c: 379: if (RCIF) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u811
	goto	u810
u811:
	goto	l1690
u810:
	line	380
	
l1692:	
;door-lock-system.c: 380: if (OERR) {
	btfss	(193/8),(193)&7	;volatile
	goto	u821
	goto	u820
u821:
	goto	l1696
u820:
	line	381
	
l1694:	
;door-lock-system.c: 381: CREN = 0;
	bcf	(196/8),(196)&7	;volatile
	line	382
;door-lock-system.c: 382: CREN = 1;
	bsf	(196/8),(196)&7	;volatile
	goto	l1696
	line	383
	
l230:	
	line	384
	
l1696:	
;door-lock-system.c: 383: }
;door-lock-system.c: 384: rx_data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_rx_data)	;volatile
	line	385
;door-lock-system.c: 385: if (rx_data == 'B') {
	movf	(_rx_data),w	;volatile
	xorlw	042h
	skipz
	goto	u831
	goto	u830
u831:
	goto	l1690
u830:
	goto	l1700
	line	386
	
l1698:	
;door-lock-system.c: 386: break;
	goto	l1700
	line	387
	
l231:	
	goto	l1690
	line	388
	
l229:	
	goto	l1690
	line	389
	
l233:	
	line	378
	goto	l1690
	
l232:	
	goto	l1700
	line	390
	
l227:	
	line	392
	
l1700:	
;door-lock-system.c: 387: }
;door-lock-system.c: 388: }
;door-lock-system.c: 389: }
;door-lock-system.c: 390: }
;door-lock-system.c: 392: if (rx_data == 'B') {
	movf	(_rx_data),w	;volatile
	xorlw	042h
	skipz
	goto	u841
	goto	u840
u841:
	goto	l1714
u840:
	line	393
	
l1702:	
;door-lock-system.c: 393: setServoCounterClockwise();
	fcall	_setServoCounterClockwise
	line	394
	
l1704:	
;door-lock-system.c: 394: initLCD();
	fcall	_initLCD
	line	395
	
l1706:	
;door-lock-system.c: 395: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	396
	
l1708:	
;door-lock-system.c: 396: displayMsg("[1]Set PIN");
	movlw	((STR_9)-__stringbase)&0ffh
	fcall	_displayMsg
	line	397
	
l1710:	
;door-lock-system.c: 397: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	398
	
l1712:	
;door-lock-system.c: 398: displayMsg("[2]Enter PIN");
	movlw	((STR_10)-__stringbase)&0ffh
	fcall	_displayMsg
	goto	l1714
	line	399
	
l234:	
	goto	l1714
	line	400
	
l225:	
	line	402
	
l1714:	
;door-lock-system.c: 399: }
;door-lock-system.c: 400: }
;door-lock-system.c: 402: if(invalid_flag == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_invalid_flag/8),(_invalid_flag)&7
	goto	u851
	goto	u850
u851:
	goto	l1722
u850:
	line	403
	
l1716:	
;door-lock-system.c: 403: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	404
	
l1718:	
;door-lock-system.c: 404: displayMsg("ENTER PIN:");
	movlw	((STR_11)-__stringbase)&0ffh
	fcall	_displayMsg
	line	405
	
l1720:	
;door-lock-system.c: 405: enterPass();
	fcall	_enterPass
	goto	l1722
	line	406
	
l235:	
	line	408
	
l1722:	
;door-lock-system.c: 406: }
;door-lock-system.c: 408: if (RD4) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u861
	goto	u860
u861:
	goto	l1674
u860:
	line	409
	
l1724:	
;door-lock-system.c: 409: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u917:
	decfsz	((??_main+0)+0),f
	goto	u917
	decfsz	((??_main+0)+0+1),f
	goto	u917
	decfsz	((??_main+0)+0+2),f
	goto	u917
	nop2
opt asmopt_on

	line	410
	
l1726:	
;door-lock-system.c: 410: unsigned char INPUT = PORTD & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@INPUT)
	line	411
;door-lock-system.c: 411: while (RD4);
	goto	l237
	
l238:	
	
l237:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u871
	goto	u870
u871:
	goto	l237
u870:
	goto	l1728
	
l239:	
	line	413
	
l1728:	
;door-lock-system.c: 413: if (INPUT == 0x00) {
	movf	(main@INPUT),f
	skipz
	goto	u881
	goto	u880
u881:
	goto	l1760
u880:
	line	414
	
l1730:	
;door-lock-system.c: 414: if(setpass_flag == 1) {
	btfss	(_setpass_flag/8),(_setpass_flag)&7
	goto	u891
	goto	u890
u891:
	goto	l1740
u890:
	line	415
	
l1732:	
;door-lock-system.c: 415: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	416
;door-lock-system.c: 416: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	417
	
l1734:	
;door-lock-system.c: 417: displayMsg("Already set");
	movlw	((STR_12)-__stringbase)&0ffh
	fcall	_displayMsg
	line	418
	
l1736:	
;door-lock-system.c: 418: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	419
;door-lock-system.c: 419: displayMsg("a password");
	movlw	((STR_13)-__stringbase)&0ffh
	fcall	_displayMsg
	line	420
	
l1738:	
;door-lock-system.c: 420: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u927:
	decfsz	((??_main+0)+0),f
	goto	u927
	decfsz	((??_main+0)+0+1),f
	goto	u927
	decfsz	((??_main+0)+0+2),f
	goto	u927
	nop2
opt asmopt_on

	line	421
;door-lock-system.c: 421: }
	goto	l1750
	line	422
	
l241:	
	line	423
	
l1740:	
;door-lock-system.c: 422: else {
;door-lock-system.c: 423: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	424
	
l1742:	
;door-lock-system.c: 424: displayMsg("SET PIN:");
	movlw	((STR_14)-__stringbase)&0ffh
	fcall	_displayMsg
	line	425
	
l1744:	
;door-lock-system.c: 425: setPass();
	fcall	_setPass
	line	426
;door-lock-system.c: 426: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	427
	
l1746:	
;door-lock-system.c: 427: displayMsg("PIN SET!");
	movlw	((STR_15)-__stringbase)&0ffh
	fcall	_displayMsg
	line	428
	
l1748:	
;door-lock-system.c: 428: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u937:
	decfsz	((??_main+0)+0),f
	goto	u937
	decfsz	((??_main+0)+0+1),f
	goto	u937
	decfsz	((??_main+0)+0+2),f
	goto	u937
	nop2
opt asmopt_on

	goto	l1750
	line	429
	
l242:	
	line	430
	
l1750:	
;door-lock-system.c: 429: }
;door-lock-system.c: 430: initLCD();
	fcall	_initLCD
	line	431
	
l1752:	
;door-lock-system.c: 431: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	432
	
l1754:	
;door-lock-system.c: 432: displayMsg("[1]Set PIN");
	movlw	((STR_16)-__stringbase)&0ffh
	fcall	_displayMsg
	line	433
	
l1756:	
;door-lock-system.c: 433: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	434
	
l1758:	
;door-lock-system.c: 434: displayMsg("[2]Enter PIN");
	movlw	((STR_17)-__stringbase)&0ffh
	fcall	_displayMsg
	line	435
;door-lock-system.c: 435: }
	goto	l1674
	line	436
	
l240:	
	
l1760:	
;door-lock-system.c: 436: else if (INPUT == 0x01) {
	movf	(main@INPUT),w
	xorlw	01h
	skipz
	goto	u901
	goto	u900
u901:
	goto	l1674
u900:
	line	437
	
l1762:	
;door-lock-system.c: 437: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	438
	
l1764:	
;door-lock-system.c: 438: displayMsg("ENTER PIN:");
	movlw	((STR_18)-__stringbase)&0ffh
	fcall	_displayMsg
	line	439
	
l1766:	
;door-lock-system.c: 439: enterPass();
	fcall	_enterPass
	goto	l1674
	line	440
	
l244:	
	goto	l1674
	line	441
	
l243:	
	goto	l1674
	
l236:	
	goto	l1674
	line	442
	
l245:	
	line	361
	goto	l1674
	
l246:	
	line	443
	
l247:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 319 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	319
global __ptext1
__ptext1:	;psect for function _setup
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	319
	global	__size_of_setup
	__size_of_setup	equ	__end_of_setup-_setup
	
_setup:	
;incstack = 0
	opt	stack 7
; Regs used in _setup: [wreg+status,2]
	line	321
	
l1618:	
;door-lock-system.c: 321: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	322
	
l1620:	
;door-lock-system.c: 322: SPBRG = 12;
	movlw	(0Ch)
	movwf	(153)^080h	;volatile
	line	323
	
l1622:	
;door-lock-system.c: 323: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	324
	
l1624:	
;door-lock-system.c: 324: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	325
	
l1626:	
;door-lock-system.c: 325: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	326
	
l1628:	
;door-lock-system.c: 326: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	328
	
l1630:	
;door-lock-system.c: 328: TXIF = 0;
	bcf	(100/8),(100)&7	;volatile
	line	329
	
l1632:	
;door-lock-system.c: 329: RCIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	331
	
l1634:	
;door-lock-system.c: 331: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	332
	
l1636:	
;door-lock-system.c: 332: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	333
	
l1638:	
;door-lock-system.c: 333: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	335
;door-lock-system.c: 335: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	337
	
l1640:	
;door-lock-system.c: 337: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	338
	
l1642:	
;door-lock-system.c: 338: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	339
	
l1644:	
;door-lock-system.c: 339: TRISC = 0x80;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	line	340
	
l1646:	
;door-lock-system.c: 340: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	341
	
l221:	
	return
	opt stack 0
GLOBAL	__end_of_setup
	__end_of_setup:
	signat	_setup,88
	global	_setPass

;; *************** function _setPass *****************
;; Defined at:
;;		line 191 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[COMMON] int 
;;  keyData         1    9[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	191
global __ptext2
__ptext2:	;psect for function _setPass
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	191
	global	__size_of_setPass
	__size_of_setPass	equ	__end_of_setPass-_setPass
	
_setPass:	
;incstack = 0
	opt	stack 5
; Regs used in _setPass: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	192
	
l1432:	
;door-lock-system.c: 192: int i = 0;
	clrf	(setPass@i)
	clrf	(setPass@i+1)
	line	195
	
l1434:	
;door-lock-system.c: 193: unsigned char keyData;
;door-lock-system.c: 195: setpass_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_setpass_flag/8),(_setpass_flag)&7
	line	196
;door-lock-system.c: 196: while (i < 8) {
	goto	l1538
	
l147:	
	line	197
;door-lock-system.c: 197: if (RD4) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u721
	goto	u720
u721:
	goto	l1538
u720:
	line	198
	
l1436:	
;door-lock-system.c: 198: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setPass+0)+0+1),f
	movlw	251
movwf	((??_setPass+0)+0),f
u947:
	decfsz	((??_setPass+0)+0),f
	goto	u947
	decfsz	((??_setPass+0)+0+1),f
	goto	u947
	nop2
opt asmopt_on

	line	199
	
l1438:	
;door-lock-system.c: 199: keyData = PORTD & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_setPass+0)+0
	movf	(??_setPass+0)+0,w
	movwf	(setPass@keyData)
	line	201
;door-lock-system.c: 201: switch (keyData) {
	goto	l1534
	line	202
;door-lock-system.c: 202: case 0x0: correctPIN[i++] = 1; dataCtrl('1'); break;
	
l150:	
	
l1440:	
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	
l1442:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1444:	
	movlw	(031h)
	fcall	_dataCtrl
	goto	l168
	line	203
;door-lock-system.c: 203: case 0x1: correctPIN[i++] = 2; dataCtrl('2'); break;
	
l152:	
	
l1446:	
	movlw	(02h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1448:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1450:	
	movlw	(032h)
	fcall	_dataCtrl
	goto	l168
	line	204
;door-lock-system.c: 204: case 0x2: correctPIN[i++] = 3; dataCtrl('3'); break;
	
l153:	
	
l1452:	
	movlw	(03h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1454:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1456:	
	movlw	(033h)
	fcall	_dataCtrl
	goto	l168
	line	205
;door-lock-system.c: 205: case 0x3: correctPIN[i++] = 10; dataCtrl('A'); break;
	
l154:	
	
l1458:	
	movlw	(0Ah)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1460:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1462:	
	movlw	(041h)
	fcall	_dataCtrl
	goto	l168
	line	207
;door-lock-system.c: 207: case 0x4: correctPIN[i++] = 4; dataCtrl('4'); break;
	
l155:	
	
l1464:	
	movlw	(04h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1466:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1468:	
	movlw	(034h)
	fcall	_dataCtrl
	goto	l168
	line	208
;door-lock-system.c: 208: case 0x5: correctPIN[i++] = 5; dataCtrl('5'); break;
	
l156:	
	
l1470:	
	movlw	(05h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1472:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1474:	
	movlw	(035h)
	fcall	_dataCtrl
	goto	l168
	line	209
;door-lock-system.c: 209: case 0x6: correctPIN[i++] = 6; dataCtrl('6'); break;
	
l157:	
	
l1476:	
	movlw	(06h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1478:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1480:	
	movlw	(036h)
	fcall	_dataCtrl
	goto	l168
	line	210
;door-lock-system.c: 210: case 0x7: correctPIN[i++] = 11; dataCtrl('B'); break;
	
l158:	
	
l1482:	
	movlw	(0Bh)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1484:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1486:	
	movlw	(042h)
	fcall	_dataCtrl
	goto	l168
	line	212
;door-lock-system.c: 212: case 0x8: correctPIN[i++] = 7; dataCtrl('7'); break;
	
l159:	
	
l1488:	
	movlw	(07h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1490:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1492:	
	movlw	(037h)
	fcall	_dataCtrl
	goto	l168
	line	213
;door-lock-system.c: 213: case 0x9: correctPIN[i++] = 8; dataCtrl('8'); break;
	
l160:	
	
l1494:	
	movlw	(08h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1496:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1498:	
	movlw	(038h)
	fcall	_dataCtrl
	goto	l168
	line	214
;door-lock-system.c: 214: case 0xA: correctPIN[i++] = 9; dataCtrl('9'); break;
	
l161:	
	
l1500:	
	movlw	(09h)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1502:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1504:	
	movlw	(039h)
	fcall	_dataCtrl
	goto	l168
	line	215
;door-lock-system.c: 215: case 0xB: correctPIN[i++] = 12; dataCtrl('C'); break;
	
l162:	
	
l1506:	
	movlw	(0Ch)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1508:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1510:	
	movlw	(043h)
	fcall	_dataCtrl
	goto	l168
	line	217
;door-lock-system.c: 217: case 0xC: correctPIN[i++] = 14; dataCtrl('*'); break;
	
l163:	
	
l1512:	
	movlw	(0Eh)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1514:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1516:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l168
	line	218
;door-lock-system.c: 218: case 0xD: correctPIN[i++] = 0; dataCtrl('0'); break;
	
l164:	
	
l1518:	
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l1520:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1522:	
	movlw	(030h)
	fcall	_dataCtrl
	goto	l168
	line	219
;door-lock-system.c: 219: case 0xE: i = 8; break;
	
l165:	
	
l1524:	
	movlw	low(08h)
	movwf	(setPass@i)
	movlw	high(08h)
	movwf	((setPass@i))+1
	goto	l168
	line	220
;door-lock-system.c: 220: case 0xF: correctPIN[i++] = 13; dataCtrl('D'); break;
	
l166:	
	
l1526:	
	movlw	(0Dh)
	movwf	(??_setPass+0)+0
	movf	(setPass@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	(??_setPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1528:	
	movlw	low(01h)
	addwf	(setPass@i),f
	skipnc
	incf	(setPass@i+1),f
	movlw	high(01h)
	addwf	(setPass@i+1),f
	
l1530:	
	movlw	(044h)
	fcall	_dataCtrl
	goto	l168
	line	222
;door-lock-system.c: 222: default: break;
	
l167:	
	goto	l168
	line	223
	
l1532:	
;door-lock-system.c: 223: }
	goto	l168
	line	201
	
l149:	
	
l1534:	
	movf	(setPass@keyData),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; direct_byte           56     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1440
	xorlw	1^0	; case 1
	skipnz
	goto	l1446
	xorlw	2^1	; case 2
	skipnz
	goto	l1452
	xorlw	3^2	; case 3
	skipnz
	goto	l1458
	xorlw	4^3	; case 4
	skipnz
	goto	l1464
	xorlw	5^4	; case 5
	skipnz
	goto	l1470
	xorlw	6^5	; case 6
	skipnz
	goto	l1476
	xorlw	7^6	; case 7
	skipnz
	goto	l1482
	xorlw	8^7	; case 8
	skipnz
	goto	l1488
	xorlw	9^8	; case 9
	skipnz
	goto	l1494
	xorlw	10^9	; case 10
	skipnz
	goto	l1500
	xorlw	11^10	; case 11
	skipnz
	goto	l1506
	xorlw	12^11	; case 12
	skipnz
	goto	l1512
	xorlw	13^12	; case 13
	skipnz
	goto	l1518
	xorlw	14^13	; case 14
	skipnz
	goto	l1524
	xorlw	15^14	; case 15
	skipnz
	goto	l1526
	goto	l168
	opt asmopt_on

	line	223
	
l151:	
	line	224
;door-lock-system.c: 224: while (RD4);
	goto	l168
	
l169:	
	
l168:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u731
	goto	u730
u731:
	goto	l168
u730:
	goto	l1536
	
l170:	
	line	225
	
l1536:	
;door-lock-system.c: 225: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setPass+0)+0+1),f
	movlw	238
movwf	((??_setPass+0)+0),f
u957:
	decfsz	((??_setPass+0)+0),f
	goto	u957
	decfsz	((??_setPass+0)+0+1),f
	goto	u957
	nop
opt asmopt_on

	goto	l1538
	line	226
	
l148:	
	goto	l1538
	line	227
	
l146:	
	line	196
	
l1538:	
	movf	(setPass@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u745
	movlw	low(08h)
	subwf	(setPass@i),w
u745:

	skipc
	goto	u741
	goto	u740
u741:
	goto	l147
u740:
	goto	l172
	
l171:	
	line	228
	
l172:	
	return
	opt stack 0
GLOBAL	__end_of_setPass
	__end_of_setPass:
	signat	_setPass,88
	global	_initialize

;; *************** function _initialize *****************
;; Defined at:
;;		line 54 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_setServoPosition
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	54
global __ptext3
__ptext3:	;psect for function _initialize
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	54
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:	
;incstack = 0
	opt	stack 5
; Regs used in _initialize: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l1420:	
;door-lock-system.c: 56: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	59
;door-lock-system.c: 59: TRISCbits.TRISC4 = 0;
	bcf	(135)^080h,4	;volatile
	line	60
;door-lock-system.c: 60: TRISCbits.TRISC5 = 0;
	bcf	(135)^080h,5	;volatile
	line	61
;door-lock-system.c: 61: TRISCbits.TRISC6 = 0;
	bcf	(135)^080h,6	;volatile
	line	64
;door-lock-system.c: 64: TRISDbits.TRISD0 = 1;
	bsf	(136)^080h,0	;volatile
	line	65
;door-lock-system.c: 65: TRISDbits.TRISD1 = 1;
	bsf	(136)^080h,1	;volatile
	line	66
;door-lock-system.c: 66: TRISDbits.TRISD2 = 1;
	bsf	(136)^080h,2	;volatile
	line	69
;door-lock-system.c: 69: PORTCbits.RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),4	;volatile
	line	70
;door-lock-system.c: 70: PORTCbits.RC5 = 0;
	bcf	(7),5	;volatile
	line	71
;door-lock-system.c: 71: PORTCbits.RC6 = 0;
	bcf	(7),6	;volatile
	line	74
;door-lock-system.c: 74: PORTCbits.RC4 = 1;
	bsf	(7),4	;volatile
	line	75
;door-lock-system.c: 75: PORTCbits.RC5 = 1;
	bsf	(7),5	;volatile
	line	76
;door-lock-system.c: 76: PORTCbits.RC6 = 1;
	bsf	(7),6	;volatile
	line	77
	
l1422:	
;door-lock-system.c: 77: _delay((unsigned long)((300)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_initialize+0)+0+2),f
movlw	134
movwf	((??_initialize+0)+0+1),f
	movlw	153
movwf	((??_initialize+0)+0),f
u967:
	decfsz	((??_initialize+0)+0),f
	goto	u967
	decfsz	((??_initialize+0)+0+1),f
	goto	u967
	decfsz	((??_initialize+0)+0+2),f
	goto	u967
opt asmopt_on

	line	78
	
l1424:	
;door-lock-system.c: 78: PORTCbits.RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),4	;volatile
	line	79
	
l1426:	
;door-lock-system.c: 79: PORTCbits.RC5 = 0;
	bcf	(7),5	;volatile
	line	80
	
l1428:	
;door-lock-system.c: 80: PORTCbits.RC6 = 0;
	bcf	(7),6	;volatile
	line	81
;door-lock-system.c: 81: _delay((unsigned long)((300)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_initialize+0)+0+2),f
movlw	134
movwf	((??_initialize+0)+0+1),f
	movlw	153
movwf	((??_initialize+0)+0),f
u977:
	decfsz	((??_initialize+0)+0),f
	goto	u977
	decfsz	((??_initialize+0)+0+1),f
	goto	u977
	decfsz	((??_initialize+0)+0+2),f
	goto	u977
opt asmopt_on

	line	84
;door-lock-system.c: 84: PR2 = 199;
	movlw	(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	89
;door-lock-system.c: 89: CCP1CON = 0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	92
;door-lock-system.c: 92: T2CON = 0x06;
	movlw	(06h)
	movwf	(18)	;volatile
	line	95
;door-lock-system.c: 95: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_initialize+0)+0+2),f
movlw	138
movwf	((??_initialize+0)+0+1),f
	movlw	86
movwf	((??_initialize+0)+0),f
u987:
	decfsz	((??_initialize+0)+0),f
	goto	u987
	decfsz	((??_initialize+0)+0+1),f
	goto	u987
	decfsz	((??_initialize+0)+0+2),f
	goto	u987
	nop2
opt asmopt_on

	line	96
	
l1430:	
;door-lock-system.c: 96: setServoPosition(138);
	movlw	(08Ah)
	fcall	_setServoPosition
	line	97
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
	signat	_initialize,88
	global	_enterPass

;; *************** function _enterPass *****************
;; Defined at:
;;		line 291 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   16[BANK0 ] int 
;;  keyData         1   15[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_dataCtrl
;;		_verifyPIN
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	291
global __ptext4
__ptext4:	;psect for function _enterPass
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	291
	global	__size_of_enterPass
	__size_of_enterPass	equ	__end_of_enterPass-_enterPass
	
_enterPass:	
;incstack = 0
	opt	stack 2
; Regs used in _enterPass: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	292
	
l1540:	
;door-lock-system.c: 292: int j = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(enterPass@j)
	clrf	(enterPass@j+1)
	line	294
;door-lock-system.c: 293: unsigned char keyData;
;door-lock-system.c: 294: while (j < 8) {
	goto	l1614
	
l198:	
	line	295
;door-lock-system.c: 295: if (RD4){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u751
	goto	u750
u751:
	goto	l1614
u750:
	line	296
	
l1542:	
;door-lock-system.c: 296: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_enterPass+0)+0+1),f
	movlw	251
movwf	((??_enterPass+0)+0),f
u997:
	decfsz	((??_enterPass+0)+0),f
	goto	u997
	decfsz	((??_enterPass+0)+0+1),f
	goto	u997
	nop2
opt asmopt_on

	line	297
	
l1544:	
;door-lock-system.c: 297: keyData = PORTD & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_enterPass+0)+0
	movf	(??_enterPass+0)+0,w
	movwf	(enterPass@keyData)
	line	299
;door-lock-system.c: 299: switch (keyData) {
	goto	l1610
	line	300
;door-lock-system.c: 300: case 0x0: PIN[j++] = 1; dataCtrl('*'); break;
	
l201:	
	
l1546:	
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	
l1548:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1550:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	301
;door-lock-system.c: 301: case 0x1: PIN[j++] = 2; dataCtrl('*'); break;
	
l203:	
	
l1552:	
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1554:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1556:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	302
;door-lock-system.c: 302: case 0x2: PIN[j++] = 3; dataCtrl('*'); break;
	
l204:	
	
l1558:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1560:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1562:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	303
;door-lock-system.c: 303: case 0x4: PIN[j++] = 4; dataCtrl('*'); break;
	
l205:	
	
l1564:	
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1566:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1568:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	304
;door-lock-system.c: 304: case 0x5: PIN[j++] = 5; dataCtrl('*'); break;
	
l206:	
	
l1570:	
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1572:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1574:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	305
;door-lock-system.c: 305: case 0x6: PIN[j++] = 6; dataCtrl('*'); break;
	
l207:	
	
l1576:	
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1578:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1580:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	306
;door-lock-system.c: 306: case 0x8: PIN[j++] = 7; dataCtrl('*'); break;
	
l208:	
	
l1582:	
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1584:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1586:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	307
;door-lock-system.c: 307: case 0x9: PIN[j++] = 8; dataCtrl('*'); break;
	
l209:	
	
l1588:	
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1590:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1592:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	308
;door-lock-system.c: 308: case 0xA: PIN[j++] = 9; dataCtrl('*'); break;
	
l210:	
	
l1594:	
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enterPass+0)+0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	movf	(??_enterPass+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1596:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1598:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	309
;door-lock-system.c: 309: case 0xD: PIN[j++] = 0; dataCtrl('*'); break;
	
l211:	
	
l1600:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(enterPass@j),w
	addlw	_PIN&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l1602:	
	movlw	low(01h)
	addwf	(enterPass@j),f
	skipnc
	incf	(enterPass@j+1),f
	movlw	high(01h)
	addwf	(enterPass@j+1),f
	
l1604:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l214
	line	310
;door-lock-system.c: 310: case 0xE: j = 8; break;
	
l212:	
	
l1606:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(enterPass@j)
	movlw	high(08h)
	movwf	((enterPass@j))+1
	goto	l214
	line	311
;door-lock-system.c: 311: default: break;
	
l213:	
	goto	l214
	line	312
	
l1608:	
;door-lock-system.c: 312: }
	goto	l214
	line	299
	
l200:	
	
l1610:	
	movf	(enterPass@keyData),w
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1546
	xorlw	1^0	; case 1
	skipnz
	goto	l1552
	xorlw	2^1	; case 2
	skipnz
	goto	l1558
	xorlw	4^2	; case 4
	skipnz
	goto	l1564
	xorlw	5^4	; case 5
	skipnz
	goto	l1570
	xorlw	6^5	; case 6
	skipnz
	goto	l1576
	xorlw	8^6	; case 8
	skipnz
	goto	l1582
	xorlw	9^8	; case 9
	skipnz
	goto	l1588
	xorlw	10^9	; case 10
	skipnz
	goto	l1594
	xorlw	13^10	; case 13
	skipnz
	goto	l1600
	xorlw	14^13	; case 14
	skipnz
	goto	l1606
	goto	l214
	opt asmopt_on

	line	312
	
l202:	
	line	313
;door-lock-system.c: 313: while (RD4);
	goto	l214
	
l215:	
	
l214:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u761
	goto	u760
u761:
	goto	l214
u760:
	goto	l1612
	
l216:	
	line	314
	
l1612:	
;door-lock-system.c: 314: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_enterPass+0)+0+1),f
	movlw	238
movwf	((??_enterPass+0)+0),f
u1007:
	decfsz	((??_enterPass+0)+0),f
	goto	u1007
	decfsz	((??_enterPass+0)+0+1),f
	goto	u1007
	nop
opt asmopt_on

	goto	l1614
	line	315
	
l199:	
	goto	l1614
	line	316
	
l197:	
	line	294
	
l1614:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(enterPass@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u775
	movlw	low(08h)
	subwf	(enterPass@j),w
u775:

	skipc
	goto	u771
	goto	u770
u771:
	goto	l198
u770:
	goto	l1616
	
l217:	
	line	317
	
l1616:	
;door-lock-system.c: 315: }
;door-lock-system.c: 316: }
;door-lock-system.c: 317: verifyPIN();
	fcall	_verifyPIN
	line	318
	
l218:	
	return
	opt stack 0
GLOBAL	__end_of_enterPass
	__end_of_enterPass:
	signat	_enterPass,88
	global	_verifyPIN

;; *************** function _verifyPIN *****************
;; Defined at:
;;		line 238 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[BANK0 ] int 
;;  match           2    9[BANK0 ] int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_displayMsg
;;		_initLCD
;;		_instCtrl
;;		_locked
;;		_setServoClockwise
;;		_setServoCounterClockwise
;; This function is called by:
;;		_enterPass
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	238
global __ptext5
__ptext5:	;psect for function _verifyPIN
psect	text5
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	238
	global	__size_of_verifyPIN
	__size_of_verifyPIN	equ	__end_of_verifyPIN-_verifyPIN
	
_verifyPIN:	
;incstack = 0
	opt	stack 2
; Regs used in _verifyPIN: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	239
	
l1354:	
;door-lock-system.c: 239: int match = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(verifyPIN@match)
	movlw	high(01h)
	movwf	((verifyPIN@match))+1
	line	240
	
l1356:	
;door-lock-system.c: 240: for (int i = 0; i < 8; i++) {
	clrf	(verifyPIN@i)
	clrf	(verifyPIN@i+1)
	
l1358:	
	movf	(verifyPIN@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u645
	movlw	low(08h)
	subwf	(verifyPIN@i),w
u645:

	skipc
	goto	u641
	goto	u640
u641:
	goto	l1362
u640:
	goto	l1370
	
l1360:	
	goto	l1370
	
l181:	
	line	241
	
l1362:	
;door-lock-system.c: 241: if (correctPIN[i] != PIN[i]) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(verifyPIN@i),w
	addlw	_PIN&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_verifyPIN+0)+0
	movf	(verifyPIN@i),w
	addlw	_correctPIN&0ffh
	movwf	fsr0
	movf	indf,w
	xorwf	(??_verifyPIN+0)+0,w
	skipnz
	goto	u651
	goto	u650
u651:
	goto	l1366
u650:
	line	242
	
l1364:	
;door-lock-system.c: 242: match = 0;
	clrf	(verifyPIN@match)
	clrf	(verifyPIN@match+1)
	line	243
;door-lock-system.c: 243: break;
	goto	l1370
	line	244
	
l183:	
	line	240
	
l1366:	
	movlw	low(01h)
	addwf	(verifyPIN@i),f
	skipnc
	incf	(verifyPIN@i+1),f
	movlw	high(01h)
	addwf	(verifyPIN@i+1),f
	
l1368:	
	movf	(verifyPIN@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u665
	movlw	low(08h)
	subwf	(verifyPIN@i),w
u665:

	skipc
	goto	u661
	goto	u660
u661:
	goto	l1362
u660:
	goto	l1370
	
l182:	
	line	247
	
l1370:	
;door-lock-system.c: 244: }
;door-lock-system.c: 245: }
;door-lock-system.c: 247: if (match) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(verifyPIN@match+1),w
	iorwf	(verifyPIN@match),w
	skipnz
	goto	u671
	goto	u670
u671:
	goto	l1398
u670:
	line	248
	
l1372:	
;door-lock-system.c: 248: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	249
	
l1374:	
;door-lock-system.c: 249: displayMsg("VALID PIN");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_displayMsg
	line	250
	
l1376:	
;door-lock-system.c: 250: invalid_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_invalid_flag/8),(_invalid_flag)&7
	line	253
	
l1378:	
;door-lock-system.c: 253: setServoCounterClockwise();
	fcall	_setServoCounterClockwise
	line	255
	
l1380:	
;door-lock-system.c: 255: if(RCIF){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u681
	goto	u680
u681:
	goto	l1384
u680:
	line	256
	
l1382:	
;door-lock-system.c: 256: setServoClockwise();
	fcall	_setServoClockwise
	goto	l1384
	line	257
	
l185:	
	line	258
	
l1384:	
;door-lock-system.c: 257: }
;door-lock-system.c: 258: _delay((unsigned long)((15000)*(4000000/4000.0)));
	opt asmopt_off
movlw  77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_verifyPIN+0)+0+2),f
movlw	25
movwf	((??_verifyPIN+0)+0+1),f
	movlw	154
movwf	((??_verifyPIN+0)+0),f
u1017:
	decfsz	((??_verifyPIN+0)+0),f
	goto	u1017
	decfsz	((??_verifyPIN+0)+0+1),f
	goto	u1017
	decfsz	((??_verifyPIN+0)+0+2),f
	goto	u1017
	nop2
opt asmopt_on

	line	260
	
l1386:	
;door-lock-system.c: 260: setServoClockwise();
	fcall	_setServoClockwise
	line	262
	
l1388:	
;door-lock-system.c: 262: initLCD();
	fcall	_initLCD
	line	263
	
l1390:	
;door-lock-system.c: 263: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	264
	
l1392:	
;door-lock-system.c: 264: displayMsg("[1]Set PIN");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_displayMsg
	line	265
	
l1394:	
;door-lock-system.c: 265: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	266
	
l1396:	
;door-lock-system.c: 266: displayMsg("[2]Enter PIN");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_displayMsg
	line	267
;door-lock-system.c: 267: } else {
	goto	l194
	
l184:	
	line	268
	
l1398:	
;door-lock-system.c: 268: trial--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_trial),f
	skipnc
	incf	(_trial+1),f
	movlw	high(-1)
	addwf	(_trial+1),f
	line	269
	
l1400:	
;door-lock-system.c: 269: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	270
	
l1402:	
;door-lock-system.c: 270: displayMsg("INVALID PIN!");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_displayMsg
	line	271
	
l1404:	
;door-lock-system.c: 271: invalid_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_invalid_flag/8),(_invalid_flag)&7
	line	274
	
l1406:	
;door-lock-system.c: 274: if (trial == 0) {
	movf	((_trial+1)),w
	iorwf	((_trial)),w
	skipz
	goto	u691
	goto	u690
u691:
	goto	l194
u690:
	line	275
	
l1408:	
;door-lock-system.c: 275: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	276
	
l1410:	
;door-lock-system.c: 276: displayMsg("NO TRIALS LEFT");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_displayMsg
	line	277
	
l1412:	
;door-lock-system.c: 277: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_verifyPIN+0)+0+2),f
movlw	19
movwf	((??_verifyPIN+0)+0+1),f
	movlw	177
movwf	((??_verifyPIN+0)+0),f
u1027:
	decfsz	((??_verifyPIN+0)+0),f
	goto	u1027
	decfsz	((??_verifyPIN+0)+0+1),f
	goto	u1027
	decfsz	((??_verifyPIN+0)+0+2),f
	goto	u1027
	nop2
opt asmopt_on

	line	279
;door-lock-system.c: 279: while(!TXIF);
	goto	l188
	
l189:	
	
l188:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u701
	goto	u700
u701:
	goto	l188
u700:
	goto	l1414
	
l190:	
	line	280
	
l1414:	
;door-lock-system.c: 280: TXREG = '1';
	movlw	(031h)
	movwf	(25)	;volatile
	line	281
;door-lock-system.c: 281: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_verifyPIN+0)+0+1),f
	movlw	151
movwf	((??_verifyPIN+0)+0),f
u1037:
	decfsz	((??_verifyPIN+0)+0),f
	goto	u1037
	decfsz	((??_verifyPIN+0)+0+1),f
	goto	u1037
	nop2
opt asmopt_on

	line	282
;door-lock-system.c: 282: while(!TXIF);
	goto	l191
	
l192:	
	
l191:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u711
	goto	u710
u711:
	goto	l191
u710:
	goto	l1416
	
l193:	
	line	283
	
l1416:	
;door-lock-system.c: 283: TXREG = '\n';
	movlw	(0Ah)
	movwf	(25)	;volatile
	line	284
;door-lock-system.c: 284: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_verifyPIN+0)+0+1),f
	movlw	151
movwf	((??_verifyPIN+0)+0),f
u1047:
	decfsz	((??_verifyPIN+0)+0),f
	goto	u1047
	decfsz	((??_verifyPIN+0)+0+1),f
	goto	u1047
	nop2
opt asmopt_on

	line	286
	
l1418:	
;door-lock-system.c: 286: locked();
	fcall	_locked
	goto	l194
	line	287
	
l187:	
	goto	l194
	line	288
	
l186:	
	line	289
	
l194:	
	return
	opt stack 0
GLOBAL	__end_of_verifyPIN
	__end_of_verifyPIN:
	signat	_verifyPIN,88
	global	_setServoCounterClockwise

;; *************** function _setServoCounterClockwise *****************
;; Defined at:
;;		line 145 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
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
;;		_moveToPosition
;; This function is called by:
;;		_verifyPIN
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	145
global __ptext6
__ptext6:	;psect for function _setServoCounterClockwise
psect	text6
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	145
	global	__size_of_setServoCounterClockwise
	__size_of_setServoCounterClockwise	equ	__end_of_setServoCounterClockwise-_setServoCounterClockwise
	
_setServoCounterClockwise:	
;incstack = 0
	opt	stack 4
; Regs used in _setServoCounterClockwise: [wreg+status,2+status,0+pclath+cstack]
	line	146
	
l1342:	
;door-lock-system.c: 146: moveToPosition(SERVO_MAX_POS);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SERVO_MAX_POS),w
	fcall	_moveToPosition
	line	148
	
l121:	
	return
	opt stack 0
GLOBAL	__end_of_setServoCounterClockwise
	__end_of_setServoCounterClockwise:
	signat	_setServoCounterClockwise,88
	global	_setServoClockwise

;; *************** function _setServoClockwise *****************
;; Defined at:
;;		line 141 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
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
;;		_moveToPosition
;; This function is called by:
;;		_verifyPIN
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	141
global __ptext7
__ptext7:	;psect for function _setServoClockwise
psect	text7
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	141
	global	__size_of_setServoClockwise
	__size_of_setServoClockwise	equ	__end_of_setServoClockwise-_setServoClockwise
	
_setServoClockwise:	
;incstack = 0
	opt	stack 4
; Regs used in _setServoClockwise: [wreg+status,2+status,0+pclath+cstack]
	line	142
	
l1340:	
;door-lock-system.c: 142: moveToPosition(SERVO_MIN_POS);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SERVO_MIN_POS),w
	fcall	_moveToPosition
	line	143
	
l118:	
	return
	opt stack 0
GLOBAL	__end_of_setServoClockwise
	__end_of_setServoClockwise:
	signat	_setServoClockwise,88
	global	_moveToPosition

;; *************** function _moveToPosition *****************
;; Defined at:
;;		line 116 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;  position        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  position        1    5[BANK0 ] unsigned char 
;;  pos             1    4[BANK0 ] unsigned char 
;;  pos             1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_setServoPosition
;; This function is called by:
;;		_setServoClockwise
;;		_setServoCounterClockwise
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	116
global __ptext8
__ptext8:	;psect for function _moveToPosition
psect	text8
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	116
	global	__size_of_moveToPosition
	__size_of_moveToPosition	equ	__end_of_moveToPosition-_moveToPosition
	
_moveToPosition:	
;incstack = 0
	opt	stack 4
; Regs used in _moveToPosition: [wreg+status,2+status,0+pclath+cstack]
;moveToPosition@position stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(moveToPosition@position)
	line	118
	
l1284:	
;door-lock-system.c: 118: if (position > currentPosition + 2 || position < currentPosition - 2) {
	movf	(_currentPosition),w
	addlw	low(02h)
	movwf	(??_moveToPosition+0)+0
	movlw	high(02h)
	skipnc
	movlw	(high(02h)+1)&0ffh
	movwf	((??_moveToPosition+0)+0)+1
	movf	1+(??_moveToPosition+0)+0,w
	xorlw	80h
	movwf	(??_moveToPosition+2)+0
	movlw	80h
	subwf	(??_moveToPosition+2)+0,w
	skipz
	goto	u575
	movf	(moveToPosition@position),w
	subwf	0+(??_moveToPosition+0)+0,w
u575:

	skipc
	goto	u571
	goto	u570
u571:
	goto	l1288
u570:
	
l1286:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_currentPosition),w
	addlw	low(-2)
	movwf	(??_moveToPosition+0)+0
	movlw	high(-2)
	skipnc
	movlw	(high(-2)+1)&0ffh
	movwf	((??_moveToPosition+0)+0)+1
	movf	1+(??_moveToPosition+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u585
	movf	0+(??_moveToPosition+0)+0,w
	subwf	(moveToPosition@position),w
u585:

	skipnc
	goto	u581
	goto	u580
u581:
	goto	l115
u580:
	goto	l1288
	
l105:	
	line	120
	
l1288:	
;door-lock-system.c: 120: if(position > currentPosition) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(moveToPosition@position),w
	subwf	(_currentPosition),w
	skipnc
	goto	u591
	goto	u590
u591:
	goto	l1300
u590:
	line	122
	
l1290:	
;door-lock-system.c: 122: for(uint8_t pos = currentPosition; pos < position; pos += 3) {
	movf	(_currentPosition),w
	movwf	(??_moveToPosition+0)+0
	movf	(??_moveToPosition+0)+0,w
	movwf	(moveToPosition@pos)
	goto	l1298
	
l108:	
	line	123
	
l1292:	
;door-lock-system.c: 123: setServoPosition(pos);
	movf	(moveToPosition@pos),w
	fcall	_setServoPosition
	line	124
	
l1294:	
;door-lock-system.c: 124: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_moveToPosition+0)+0+1),f
	movlw	248
movwf	((??_moveToPosition+0)+0),f
u1057:
	decfsz	((??_moveToPosition+0)+0),f
	goto	u1057
	decfsz	((??_moveToPosition+0)+0+1),f
	goto	u1057
	nop
opt asmopt_on

	line	122
	
l1296:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_moveToPosition+0)+0
	movf	(??_moveToPosition+0)+0,w
	addwf	(moveToPosition@pos),f
	goto	l1298
	
l107:	
	
l1298:	
	movf	(moveToPosition@position),w
	subwf	(moveToPosition@pos),w
	skipc
	goto	u601
	goto	u600
u601:
	goto	l1292
u600:
	goto	l1312
	
l109:	
	line	126
;door-lock-system.c: 125: }
;door-lock-system.c: 126: } else if(position < currentPosition) {
	goto	l1312
	
l106:	
	
l1300:	
	movf	(_currentPosition),w
	subwf	(moveToPosition@position),w
	skipnc
	goto	u611
	goto	u610
u611:
	goto	l1312
u610:
	line	128
	
l1302:	
;door-lock-system.c: 128: for(uint8_t pos = currentPosition; pos > position; pos -= 3) {
	movf	(_currentPosition),w
	movwf	(??_moveToPosition+0)+0
	movf	(??_moveToPosition+0)+0,w
	movwf	(moveToPosition@pos_166)
	goto	l1310
	
l113:	
	line	129
	
l1304:	
;door-lock-system.c: 129: setServoPosition(pos);
	movf	(moveToPosition@pos_166),w
	fcall	_setServoPosition
	line	130
	
l1306:	
;door-lock-system.c: 130: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_moveToPosition+0)+0+1),f
	movlw	248
movwf	((??_moveToPosition+0)+0),f
u1067:
	decfsz	((??_moveToPosition+0)+0),f
	goto	u1067
	decfsz	((??_moveToPosition+0)+0+1),f
	goto	u1067
	nop
opt asmopt_on

	line	128
	
l1308:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(moveToPosition@pos_166),f
	goto	l1310
	
l112:	
	
l1310:	
	movf	(moveToPosition@pos_166),w
	subwf	(moveToPosition@position),w
	skipc
	goto	u621
	goto	u620
u621:
	goto	l1304
u620:
	goto	l1312
	
l114:	
	goto	l1312
	line	132
	
l111:	
	goto	l1312
	line	135
	
l110:	
	
l1312:	
;door-lock-system.c: 131: }
;door-lock-system.c: 132: }
;door-lock-system.c: 135: setServoPosition(position);
	movf	(moveToPosition@position),w
	fcall	_setServoPosition
	line	138
	
l1314:	
;door-lock-system.c: 138: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_moveToPosition+0)+0+2),f
movlw	138
movwf	((??_moveToPosition+0)+0+1),f
	movlw	86
movwf	((??_moveToPosition+0)+0),f
u1077:
	decfsz	((??_moveToPosition+0)+0),f
	goto	u1077
	decfsz	((??_moveToPosition+0)+0+1),f
	goto	u1077
	decfsz	((??_moveToPosition+0)+0+2),f
	goto	u1077
	nop2
opt asmopt_on

	goto	l115
	line	139
	
l103:	
	line	140
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_moveToPosition
	__end_of_moveToPosition:
	signat	_moveToPosition,4216
	global	_setServoPosition

;; *************** function _setServoPosition *****************
;; Defined at:
;;		line 99 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;  position        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  position        1   12[COMMON] unsigned char 
;;  duty            2   10[COMMON] unsigned int 
;;  scaledPositi    2    8[COMMON] unsigned int 
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
;;      Locals:         5       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_initialize
;;		_moveToPosition
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	99
global __ptext9
__ptext9:	;psect for function _setServoPosition
psect	text9
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	99
	global	__size_of_setServoPosition
	__size_of_setServoPosition	equ	__end_of_setServoPosition-_setServoPosition
	
_setServoPosition:	
;incstack = 0
	opt	stack 4
; Regs used in _setServoPosition: [wreg+status,2+status,0+pclath+cstack]
;setServoPosition@position stored from wreg
	movwf	(setServoPosition@position)
	line	101
	
l1248:	
;door-lock-system.c: 101: if(position < 50) position = 50;
	movlw	(032h)
	subwf	(setServoPosition@position),w
	skipnc
	goto	u501
	goto	u500
u501:
	goto	l98
u500:
	
l1250:	
	movlw	(032h)
	movwf	(??_setServoPosition+0)+0
	movf	(??_setServoPosition+0)+0,w
	movwf	(setServoPosition@position)
	
l98:	
	line	102
;door-lock-system.c: 102: if(position > 240) position = 240;
	movlw	(0F1h)
	subwf	(setServoPosition@position),w
	skipc
	goto	u511
	goto	u510
u511:
	goto	l1254
u510:
	
l1252:	
	movlw	(0F0h)
	movwf	(??_setServoPosition+0)+0
	movf	(??_setServoPosition+0)+0,w
	movwf	(setServoPosition@position)
	goto	l1254
	
l99:	
	line	105
	
l1254:	
;door-lock-system.c: 105: uint16_t scaledPosition = (uint16_t)position * 10;
	movf	(setServoPosition@position),w
	movwf	(??_setServoPosition+0)+0
	clrf	(??_setServoPosition+0)+0+1
	movf	0+(??_setServoPosition+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_setServoPosition+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	(setServoPosition@scaledPosition+1)
	addwf	(setServoPosition@scaledPosition+1)
	movf	(0+(?___wmul)),w
	clrf	(setServoPosition@scaledPosition)
	addwf	(setServoPosition@scaledPosition)

	line	108
	
l1256:	
;door-lock-system.c: 108: uint16_t duty = scaledPosition;
	movf	(setServoPosition@scaledPosition+1),w
	clrf	(setServoPosition@duty+1)
	addwf	(setServoPosition@duty+1)
	movf	(setServoPosition@scaledPosition),w
	clrf	(setServoPosition@duty)
	addwf	(setServoPosition@duty)

	line	109
	
l1258:	
;door-lock-system.c: 109: CCPR1L = duty >> 2;
	movf	(setServoPosition@duty+1),w
	movwf	(??_setServoPosition+0)+0+1
	movf	(setServoPosition@duty),w
	movwf	(??_setServoPosition+0)+0
	clrc
	rrf	(??_setServoPosition+0)+1,f
	rrf	(??_setServoPosition+0)+0,f
	clrc
	rrf	(??_setServoPosition+0)+1,f
	rrf	(??_setServoPosition+0)+0,f
	movf	0+(??_setServoPosition+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	110
	
l1260:	
;door-lock-system.c: 110: CCP1CON = (CCP1CON & 0xCF) | ((duty & 0x03) << 4);
	movf	(setServoPosition@duty),w
	andlw	03h
	movwf	(??_setServoPosition+0)+0
	movlw	04h
u525:
	clrc
	rlf	(??_setServoPosition+0)+0,f
	addlw	-1
	skipz
	goto	u525
	movf	(23),w	;volatile
	andlw	0CFh
	iorwf	0+(??_setServoPosition+0)+0,w
	movwf	(23)	;volatile
	line	113
	
l1262:	
;door-lock-system.c: 113: currentPosition = position;
	movf	(setServoPosition@position),w
	movwf	(??_setServoPosition+0)+0
	movf	(??_setServoPosition+0)+0,w
	movwf	(_currentPosition)
	line	114
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_setServoPosition
	__end_of_setServoPosition:
	signat	_setServoPosition,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setServoPosition
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext10
__ptext10:	;psect for function ___wmul
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1236:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1238
	line	44
	
l330:	
	line	45
	
l1238:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u461
	goto	u460
u461:
	goto	l331
u460:
	line	46
	
l1240:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l331:	
	line	47
	movlw	01h
	
u475:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u475
	line	48
	
l1242:	
	movlw	01h
	
u485:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u485
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u491
	goto	u490
u491:
	goto	l1238
u490:
	goto	l1244
	
l332:	
	line	52
	
l1244:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l333
	
l1246:	
	line	53
	
l333:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_locked

;; *************** function _locked *****************
;; Defined at:
;;		line 230 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_verifyPIN
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	230
global __ptext11
__ptext11:	;psect for function _locked
psect	text11
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	230
	global	__size_of_locked
	__size_of_locked	equ	__end_of_locked-_locked
	
_locked:	
;incstack = 0
	opt	stack 5
; Regs used in _locked: []
	line	232
;door-lock-system.c: 232: while (1) {
	
l175:	
	line	235
	
l176:	
	line	232
	goto	l175
	
l177:	
	line	236
	
l178:	
	return
	opt stack 0
GLOBAL	__end_of_locked
	__end_of_locked:
	signat	_locked,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 166 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
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
;;		_LCD_delay
;;		_instCtrl
;; This function is called by:
;;		_verifyPIN
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	166
global __ptext12
__ptext12:	;psect for function _initLCD
psect	text12
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	166
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	167
	
l1344:	
;door-lock-system.c: 167: LCD_delay(15);
	movlw	low(0Fh)
	movwf	(LCD_delay@MUL)
	movlw	high(0Fh)
	movwf	((LCD_delay@MUL))+1
	fcall	_LCD_delay
	line	168
;door-lock-system.c: 168: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	169
;door-lock-system.c: 169: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	170
;door-lock-system.c: 170: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	171
;door-lock-system.c: 171: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	172
;door-lock-system.c: 172: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	173
	
l134:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 157 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
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
;;		_LCD_delay
;; This function is called by:
;;		_initLCD
;;		_verifyPIN
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	157
global __ptext13
__ptext13:	;psect for function _instCtrl
psect	text13
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	157
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	158
	
l1316:	
;door-lock-system.c: 158: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	159
	
l1318:	
;door-lock-system.c: 159: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	160
	
l1320:	
;door-lock-system.c: 160: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	161
	
l1322:	
;door-lock-system.c: 161: RA2 = 1;
	bsf	(42/8),(42)&7	;volatile
	line	162
	
l1324:	
;door-lock-system.c: 162: LCD_delay(1);
	movlw	low(01h)
	movwf	(LCD_delay@MUL)
	movlw	high(01h)
	movwf	((LCD_delay@MUL))+1
	fcall	_LCD_delay
	line	163
	
l1326:	
;door-lock-system.c: 163: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	line	164
	
l131:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_displayMsg

;; *************** function _displayMsg *****************
;; Defined at:
;;		line 184 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;  message         1    wreg     PTR const unsigned char 
;;		 -> STR_18(11), STR_17(13), STR_16(11), STR_15(9), 
;;		 -> STR_14(9), STR_13(11), STR_12(12), STR_11(11), 
;;		 -> STR_10(13), STR_9(11), STR_8(7), STR_7(13), 
;;		 -> STR_6(11), STR_5(15), STR_4(13), STR_3(13), 
;;		 -> STR_2(11), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  message         1    9[COMMON] PTR const unsigned char 
;;		 -> STR_18(11), STR_17(13), STR_16(11), STR_15(9), 
;;		 -> STR_14(9), STR_13(11), STR_12(12), STR_11(11), 
;;		 -> STR_10(13), STR_9(11), STR_8(7), STR_7(13), 
;;		 -> STR_6(11), STR_5(15), STR_4(13), STR_3(13), 
;;		 -> STR_2(11), STR_1(10), 
;;  i               2    7[COMMON] int 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_verifyPIN
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	184
global __ptext14
__ptext14:	;psect for function _displayMsg
psect	text14
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	184
	global	__size_of_displayMsg
	__size_of_displayMsg	equ	__end_of_displayMsg-_displayMsg
	
_displayMsg:	
;incstack = 0
	opt	stack 3
; Regs used in _displayMsg: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;displayMsg@message stored from wreg
	movwf	(displayMsg@message)
	line	186
	
l1346:	
;door-lock-system.c: 185: int i;
;door-lock-system.c: 186: for (i = 0; message[i] != '\0'; i++) {
	clrf	(displayMsg@i)
	clrf	(displayMsg@i+1)
	goto	l1352
	
l141:	
	line	187
	
l1348:	
;door-lock-system.c: 187: dataCtrl(message[i]);
	movf	(displayMsg@i),w
	addwf	(displayMsg@message),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	line	186
	
l1350:	
	movlw	low(01h)
	addwf	(displayMsg@i),f
	skipnc
	incf	(displayMsg@i+1),f
	movlw	high(01h)
	addwf	(displayMsg@i+1),f
	goto	l1352
	
l140:	
	
l1352:	
	movf	(displayMsg@i),w
	addwf	(displayMsg@message),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u631
	goto	u630
u631:
	goto	l1348
u630:
	goto	l143
	
l142:	
	line	189
	
l143:	
	return
	opt stack 0
GLOBAL	__end_of_displayMsg
	__end_of_displayMsg:
	signat	_displayMsg,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 175 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
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
;;		_LCD_delay
;; This function is called by:
;;		_displayMsg
;;		_setPass
;;		_enterPass
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	175
global __ptext15
__ptext15:	;psect for function _dataCtrl
psect	text15
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	175
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	176
	
l1328:	
;door-lock-system.c: 176: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	177
	
l1330:	
;door-lock-system.c: 177: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	178
	
l1332:	
;door-lock-system.c: 178: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	179
	
l1334:	
;door-lock-system.c: 179: RA2 = 1;
	bsf	(42/8),(42)&7	;volatile
	line	180
	
l1336:	
;door-lock-system.c: 180: LCD_delay(1);
	movlw	low(01h)
	movwf	(LCD_delay@MUL)
	movlw	high(01h)
	movwf	((LCD_delay@MUL))+1
	fcall	_LCD_delay
	line	181
	
l1338:	
;door-lock-system.c: 181: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	line	182
	
l137:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_LCD_delay

;; *************** function _LCD_delay *****************
;; Defined at:
;;		line 151 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
;; Parameters:    Size  Location     Type
;;  MUL             2    0[COMMON] int 
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
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	151
global __ptext16
__ptext16:	;psect for function _LCD_delay
psect	text16
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Final\door-lock-system\door-lock-system.c"
	line	151
	global	__size_of_LCD_delay
	__size_of_LCD_delay	equ	__end_of_LCD_delay-_LCD_delay
	
_LCD_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_delay: [wreg+status,2+status,0+btemp+1]
	line	153
	
l1264:	
;door-lock-system.c: 152: int i, j;
;door-lock-system.c: 153: for (i = MUL; i != 0; i--)
	movf	(LCD_delay@MUL+1),w
	clrf	(LCD_delay@i+1)
	addwf	(LCD_delay@i+1)
	movf	(LCD_delay@MUL),w
	clrf	(LCD_delay@i)
	addwf	(LCD_delay@i)

	
l1266:	
	movf	((LCD_delay@i+1)),w
	iorwf	((LCD_delay@i)),w
	skipz
	goto	u531
	goto	u530
u531:
	goto	l1270
u530:
	goto	l128
	
l1268:	
	goto	l128
	line	154
	
l124:	
	
l1270:	
;door-lock-system.c: 154: for (j = 0; j < 256; j++) {}
	clrf	(LCD_delay@j)
	clrf	(LCD_delay@j+1)
	
l1272:	
	movf	(LCD_delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u545
	movlw	low(0100h)
	subwf	(LCD_delay@j),w
u545:

	skipc
	goto	u541
	goto	u540
u541:
	goto	l1276
u540:
	goto	l1280
	
l1274:	
	goto	l1280
	
l126:	
	
l1276:	
	movlw	low(01h)
	addwf	(LCD_delay@j),f
	skipnc
	incf	(LCD_delay@j+1),f
	movlw	high(01h)
	addwf	(LCD_delay@j+1),f
	
l1278:	
	movf	(LCD_delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u555
	movlw	low(0100h)
	subwf	(LCD_delay@j),w
u555:

	skipc
	goto	u551
	goto	u550
u551:
	goto	l1276
u550:
	goto	l1280
	
l127:	
	line	153
	
l1280:	
	movlw	low(-1)
	addwf	(LCD_delay@i),f
	skipnc
	incf	(LCD_delay@i+1),f
	movlw	high(-1)
	addwf	(LCD_delay@i+1),f
	
l1282:	
	movf	((LCD_delay@i+1)),w
	iorwf	((LCD_delay@i)),w
	skipz
	goto	u561
	goto	u560
u561:
	goto	l1270
u560:
	goto	l128
	
l125:	
	line	155
	
l128:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_delay
	__end_of_LCD_delay:
	signat	_LCD_delay,4216
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
