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
	FNCALL	_main,_I2C_Receive
	FNCALL	_main,_I2C_RepeatedStart
	FNCALL	_main,_I2C_Send
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftge
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,___lwtoft
	FNCALL	_main,_delay
	FNCALL	_main,_displayHumidity
	FNCALL	_main,_displayTemp
	FNCALL	_main,_initLCD
	FNCALL	_main,_init_I2C_Master
	FNCALL	_initLCD,_delayLCD
	FNCALL	_initLCD,_instCtrl
	FNCALL	_displayTemp,_dataCtrl
	FNCALL	_displayTemp,_display
	FNCALL	_displayTemp,_instCtrl
	FNCALL	_displayHumidity,_dataCtrl
	FNCALL	_displayHumidity,_display
	FNCALL	_displayHumidity,_instCtrl
	FNCALL	_instCtrl,_delayLCD
	FNCALL	_display,_dataCtrl
	FNCALL	_dataCtrl,_delayLCD
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_I2C_Stop,_I2C_Wait
	FNCALL	_I2C_Start,_I2C_Wait
	FNCALL	_I2C_Send,_I2C_Wait
	FNCALL	_I2C_RepeatedStart,_I2C_Wait
	FNCALL	_I2C_Receive,_I2C_Wait
	FNROOT	_main
	global	_RH
	global	_RH_ones
	global	_RH_tens
	global	_T
	global	_Temp_ones
	global	_Temp_tens
	global	_PORTB
_PORTB	set	0x6
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_RD2
_RD2	set	0x42
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_ACKDT
_ACKDT	set	0x48D
	global	_ACKEN
_ACKEN	set	0x48C
	global	_PEN
_PEN	set	0x48A
	global	_RCEN
_RCEN	set	0x48B
	global	_RSEN
_RSEN	set	0x489
	global	_SEN
_SEN	set	0x488
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
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
	
STR_3:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	72	;'H'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	46	;'.'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	0
psect	strings
	
STR_2:	
	retlw	46	;'.'
	retlw	48	;'0'
	retlw	37	;'%'
	retlw	0
psect	strings
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
	file	"CPE 3201-LE7.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_RH:
       ds      2

_RH_ones:
       ds      2

_RH_tens:
       ds      2

_T:
       ds      2

_Temp_ones:
       ds      2

_Temp_tens:
       ds      2

	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delayLCD:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_display:	; 0 bytes @ 0x0
?_init_I2C_Master:	; 0 bytes @ 0x0
??_init_I2C_Master:	; 0 bytes @ 0x0
?_I2C_Wait:	; 0 bytes @ 0x0
??_I2C_Wait:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
??_I2C_Start:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
??_I2C_Stop:	; 0 bytes @ 0x0
?_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_RepeatedStart:	; 0 bytes @ 0x0
?_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Receive:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
?_displayHumidity:	; 0 bytes @ 0x0
?_displayTemp:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_I2C_Receive:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	I2C_Send@data
I2C_Send@data:	; 1 bytes @ 0x0
	global	delayLCD@MUL
delayLCD@MUL:	; 2 bytes @ 0x0
	global	delay@MUL
delay@MUL:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds	1
	global	I2C_Receive@ack
I2C_Receive@ack:	; 1 bytes @ 0x1
	ds	1
??_delayLCD:	; 0 bytes @ 0x2
??_delay:	; 0 bytes @ 0x2
	global	I2C_Receive@temp
I2C_Receive@temp:	; 1 bytes @ 0x2
	global	delayLCD@i
delayLCD@i:	; 2 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??___fttol:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
??___lwmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	delayLCD@j
delayLCD@j:	; 2 bytes @ 0x4
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
??___ftge:	; 0 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
??_display:	; 0 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	display@i
display@i:	; 2 bytes @ 0x7
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	1
	global	display@input
display@input:	; 1 bytes @ 0x9
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	1
??_displayHumidity:	; 0 bytes @ 0xA
??_displayTemp:	; 0 bytes @ 0xA
	ds	1
??___lwtoft:	; 0 bytes @ 0xB
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftadd:	; 0 bytes @ 0x0
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x4
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x5
	ds	1
??___ftdiv:	; 0 bytes @ 0x6
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x6
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x10
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x10
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x13
	ds	3
??___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
??_main:	; 0 bytes @ 0x20
	ds	2
	global	main@rh
main@rh:	; 3 bytes @ 0x22
	ds	3
	global	main@t
main@t:	; 3 bytes @ 0x25
	ds	3
	global	main@RH_temp
main@RH_temp:	; 2 bytes @ 0x28
	ds	2
	global	main@T_temp
main@T_temp:	; 2 bytes @ 0x2A
	ds	2
	global	main@temp
main@temp:	; 1 bytes @ 0x2C
	ds	1
;!
;!Data Sizes:
;!    Strings     34
;!    Constant    0
;!    Data        0
;!    BSS         12
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     45      57
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    display@input	PTR const unsigned char  size(1) Largest target is 14
;!		 -> STR_4(CODE[5]), STR_3(CODE[14]), STR_2(CODE[4]), STR_1(CODE[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___ftadd
;!    _main->___fttol
;!    _initLCD->_instCtrl
;!    _displayTemp->_display
;!    _displayHumidity->_display
;!    _instCtrl->_delayLCD
;!    _display->_dataCtrl
;!    _dataCtrl->_delayLCD
;!    ___lwtoft->___ftpack
;!    ___ftmul->___lwtoft
;!    ___ftdiv->___lwtoft
;!    ___ftadd->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___ftmul
;!    ___ftmul->___ftdiv
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
;! (0) _main                                                13    13      0   14404
;!                                             32 BANK0     13    13      0
;!                        _I2C_Receive
;!                  _I2C_RepeatedStart
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___fttol
;!                            ___lwdiv
;!                            ___lwmod
;!                           ___lwtoft
;!                              _delay
;!                    _displayHumidity
;!                        _displayTemp
;!                            _initLCD
;!                    _init_I2C_Master
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Master                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     674
;!                           _delayLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _displayTemp                                          0     0      0    1242
;!                           _dataCtrl
;!                            _display
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _displayHumidity                                      0     0      0    1242
;!                           _dataCtrl
;!                            _display
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     348
;!                                              6 COMMON     1     1      0
;!                           _delayLCD
;! ---------------------------------------------------------------------------------
;! (2) _display                                              3     3      0     546
;!                                              7 COMMON     3     3      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (3) _dataCtrl                                             1     1      0     348
;!                                              6 COMMON     1     1      0
;!                           _delayLCD
;! ---------------------------------------------------------------------------------
;! (3) _delayLCD                                             6     4      2     326
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                6     4      2     326
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             4     1      3    1813
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___lwmod                                              6     2      4     371
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              8     4      4     374
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             14    10      4     358
;!                                              0 COMMON    14    10      4
;! ---------------------------------------------------------------------------------
;! (1) ___ftmul                                             16    10      6    2223
;!                                             16 BANK0     16    10      6
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftge                                              12     6      6     348
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             16    10      6    2177
;!                                              0 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftadd                                             13     7      6    2817
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0      7     7      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    1685
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Stop                                             0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Start                                            0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Send                                             1     1      0      22
;!                                              0 COMMON     1     1      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_RepeatedStart                                    0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Receive                                          3     3      0      45
;!                                              0 COMMON     3     3      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Wait                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Receive
;!     _I2C_Wait
;!   _I2C_RepeatedStart
;!     _I2C_Wait
;!   _I2C_Send
;!     _I2C_Wait
;!   _I2C_Start
;!     _I2C_Wait
;!   _I2C_Stop
;!     _I2C_Wait
;!   ___ftadd
;!     ___ftpack
;!   ___ftdiv
;!     ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftge
;!   ___ftmul
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___fttol
;!   ___lwdiv
;!   ___lwmod
;!   ___lwtoft
;!     ___ftpack
;!   _delay
;!   _displayHumidity
;!     _dataCtrl
;!       _delayLCD
;!     _display
;!       _dataCtrl
;!         _delayLCD
;!     _instCtrl
;!       _delayLCD
;!   _displayTemp
;!     _dataCtrl
;!       _delayLCD
;!     _display
;!       _dataCtrl
;!         _delayLCD
;!     _instCtrl
;!       _delayLCD
;!   _initLCD
;!     _delayLCD
;!     _instCtrl
;!       _delayLCD
;!   _init_I2C_Master
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      47       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     2D      39       5       71.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      47      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 146 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               3   37[BANK0 ] float 
;;  rh              3   34[BANK0 ] float 
;;  T_temp          2   42[BANK0 ] unsigned int 
;;  RH_temp         2   40[BANK0 ] unsigned int 
;;  temp            1   44[BANK0 ] unsigned char 
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
;;      Locals:         0      11       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Receive
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___fttol
;;		___lwdiv
;;		___lwmod
;;		___lwtoft
;;		_delay
;;		_displayHumidity
;;		_displayTemp
;;		_initLCD
;;		_init_I2C_Master
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	146
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	146
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	148
	
l1594:	
;LE7-3.c: 148: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	149
;LE7-3.c: 149: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	151
;LE7-3.c: 151: unsigned int RH_temp = 0x0000, T_temp = 0x0000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@RH_temp)
	clrf	(main@RH_temp+1)
	clrf	(main@T_temp)
	clrf	(main@T_temp+1)
	line	152
;LE7-3.c: 152: unsigned char temp = 0x00;
	clrf	(main@temp)
	line	154
	
l1596:	
;LE7-3.c: 154: init_I2C_Master();
	fcall	_init_I2C_Master
	line	155
	
l1598:	
;LE7-3.c: 155: initLCD();
	fcall	_initLCD
	goto	l1600
	line	156
;LE7-3.c: 156: while(1)
	
l112:	
	line	158
	
l1600:	
;LE7-3.c: 157: {
;LE7-3.c: 158: I2C_Start();
	fcall	_I2C_Start
	line	159
	
l1602:	
;LE7-3.c: 159: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	160
	
l1604:	
;LE7-3.c: 160: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	161
	
l1606:	
;LE7-3.c: 161: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	163
	
l1608:	
;LE7-3.c: 163: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	164
	
l1610:	
;LE7-3.c: 164: RH_temp = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@RH_temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@RH_temp+1)
	line	165
	
l1612:	
;LE7-3.c: 165: temp = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	line	167
	
l1614:	
;LE7-3.c: 167: delay(1);
	movlw	low(01h)
	movwf	(delay@MUL)
	movlw	high(01h)
	movwf	((delay@MUL))+1
	fcall	_delay
	line	169
	
l1616:	
;LE7-3.c: 169: RH_temp = RH_temp << 6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@RH_temp+1),w
	movwf	(??_main+0)+0+1
	movf	(main@RH_temp),w
	movwf	(??_main+0)+0
	movlw	06h
	movwf	btemp+1
u2035:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u2035
	movf	0+(??_main+0)+0,w
	movwf	(main@RH_temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@RH_temp+1)
	line	170
	
l1618:	
;LE7-3.c: 170: temp = temp >> 2;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	movlw	02h
u2045:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2045
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@temp)
	line	171
	
l1620:	
;LE7-3.c: 171: RH_temp = RH_temp | temp;
	movf	(main@RH_temp),w
	iorwf	(main@temp),w
	movwf	(main@RH_temp)
	movf	(main@RH_temp+1),w
	movwf	1+(main@RH_temp)
	line	174
	
l1622:	
;LE7-3.c: 174: float rh = ((125*((float)RH_temp/16384)));
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x46
	movwf	(___ftdiv@f2+2)
	movf	(main@RH_temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@RH_temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(main@rh)
	movf	(1+(?___ftmul)),w
	movwf	(main@rh+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@rh+2)
	line	175
	
l1624:	
;LE7-3.c: 175: if(rh >= 6){
	movf	(main@rh),w
	movwf	(___ftge@ff1)
	movf	(main@rh+1),w
	movwf	(___ftge@ff1+1)
	movf	(main@rh+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2051
	goto	u2050
u2051:
	goto	l1628
u2050:
	line	176
	
l1626:	
;LE7-3.c: 176: rh = rh - 6;
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@rh),w
	movwf	(___ftadd@f2)
	movf	(main@rh+1),w
	movwf	(___ftadd@f2+1)
	movf	(main@rh+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@rh)
	movf	(1+(?___ftadd)),w
	movwf	(main@rh+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@rh+2)
	line	177
;LE7-3.c: 177: }
	goto	l1630
	line	178
	
l113:	
	line	179
	
l1628:	
;LE7-3.c: 178: else{
;LE7-3.c: 179: rh = 0.00;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@rh)
	movlw	0x0
	movwf	(main@rh+1)
	movlw	0x0
	movwf	(main@rh+2)
	goto	l1630
	line	180
	
l114:	
	line	182
	
l1630:	
;LE7-3.c: 180: }
;LE7-3.c: 182: RH = (unsigned int)rh;
	movf	(main@rh),w
	movwf	(___fttol@f1)
	movf	(main@rh+1),w
	movwf	(___fttol@f1+1)
	movf	(main@rh+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_RH+1)
	addwf	(_RH+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(_RH)
	addwf	(_RH)

	line	184
	
l1632:	
;LE7-3.c: 184: RH_tens = RH / 10;
	movlw	low(0Ah)
	movwf	(___lwdiv@divisor)
	movlw	high(0Ah)
	movwf	((___lwdiv@divisor))+1
	movf	(_RH+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(_RH),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_RH_tens+1)
	addwf	(_RH_tens+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_RH_tens)
	addwf	(_RH_tens)

	line	185
	
l1634:	
;LE7-3.c: 185: RH_ones = RH % 10;
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(_RH+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(_RH),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_RH_ones+1)
	addwf	(_RH_ones+1)
	movf	(0+(?___lwmod)),w
	clrf	(_RH_ones)
	addwf	(_RH_ones)

	line	187
	
l1636:	
;LE7-3.c: 187: displayHumidity();
	fcall	_displayHumidity
	line	189
	
l1638:	
;LE7-3.c: 189: I2C_Start();
	fcall	_I2C_Start
	line	190
	
l1640:	
;LE7-3.c: 190: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	191
	
l1642:	
;LE7-3.c: 191: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	192
	
l1644:	
;LE7-3.c: 192: I2C_Stop();
	fcall	_I2C_Stop
	line	193
	
l1646:	
;LE7-3.c: 193: delay(1);
	movlw	low(01h)
	movwf	(delay@MUL)
	movlw	high(01h)
	movwf	((delay@MUL))+1
	fcall	_delay
	line	195
	
l1648:	
;LE7-3.c: 195: temp = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@temp)
	line	196
	
l1650:	
;LE7-3.c: 196: I2C_Start();
	fcall	_I2C_Start
	line	197
	
l1652:	
;LE7-3.c: 197: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	198
	
l1654:	
;LE7-3.c: 198: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	199
	
l1656:	
;LE7-3.c: 199: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	200
	
l1658:	
;LE7-3.c: 200: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	202
	
l1660:	
;LE7-3.c: 202: T_temp = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@T_temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@T_temp+1)
	line	203
	
l1662:	
;LE7-3.c: 203: temp = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	line	204
	
l1664:	
;LE7-3.c: 204: I2C_Stop();
	fcall	_I2C_Stop
	line	205
	
l1666:	
;LE7-3.c: 205: delay(10);
	movlw	low(0Ah)
	movwf	(delay@MUL)
	movlw	high(0Ah)
	movwf	((delay@MUL))+1
	fcall	_delay
	line	210
	
l1668:	
;LE7-3.c: 210: T_temp = T_temp << 6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@T_temp+1),w
	movwf	(??_main+0)+0+1
	movf	(main@T_temp),w
	movwf	(??_main+0)+0
	movlw	06h
	movwf	btemp+1
u2065:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u2065
	movf	0+(??_main+0)+0,w
	movwf	(main@T_temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@T_temp+1)
	line	211
	
l1670:	
;LE7-3.c: 211: temp = temp >> 2;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	movlw	02h
u2075:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2075
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@temp)
	line	212
	
l1672:	
;LE7-3.c: 212: T_temp = T_temp | temp;
	movf	(main@T_temp),w
	iorwf	(main@temp),w
	movwf	(main@T_temp)
	movf	(main@T_temp+1),w
	movwf	1+(main@T_temp)
	line	214
	
l1674:	
;LE7-3.c: 214: float t = (175.72)*((float)T_temp / 16384);
	movlw	0xb8
	movwf	(___ftmul@f1)
	movlw	0x2f
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x46
	movwf	(___ftdiv@f2+2)
	movf	(main@T_temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@T_temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(main@t)
	movf	(1+(?___ftmul)),w
	movwf	(main@t+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@t+2)
	line	215
	
l1676:	
;LE7-3.c: 215: if(t >= 46.85){
	movf	(main@t),w
	movwf	(___ftge@ff1)
	movf	(main@t+1),w
	movwf	(___ftge@ff1+1)
	movf	(main@t+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x66
	movwf	(___ftge@ff2)
	movlw	0x3b
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2081
	goto	u2080
u2081:
	goto	l1680
u2080:
	line	216
	
l1678:	
;LE7-3.c: 216: t = t - 46.85;
	movlw	0x66
	movwf	(___ftadd@f1)
	movlw	0x3b
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@t),w
	movwf	(___ftadd@f2)
	movf	(main@t+1),w
	movwf	(___ftadd@f2+1)
	movf	(main@t+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@t)
	movf	(1+(?___ftadd)),w
	movwf	(main@t+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@t+2)
	line	217
;LE7-3.c: 217: }
	goto	l1682
	line	218
	
l115:	
	line	219
	
l1680:	
;LE7-3.c: 218: else{
;LE7-3.c: 219: t = 0.00;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@t)
	movlw	0x0
	movwf	(main@t+1)
	movlw	0x0
	movwf	(main@t+2)
	goto	l1682
	line	220
	
l116:	
	line	222
	
l1682:	
;LE7-3.c: 220: }
;LE7-3.c: 222: T = (unsigned int)t;
	movf	(main@t),w
	movwf	(___fttol@f1)
	movf	(main@t+1),w
	movwf	(___fttol@f1+1)
	movf	(main@t+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_T+1)
	addwf	(_T+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(_T)
	addwf	(_T)

	line	224
	
l1684:	
;LE7-3.c: 224: Temp_tens = T / 10;
	movlw	low(0Ah)
	movwf	(___lwdiv@divisor)
	movlw	high(0Ah)
	movwf	((___lwdiv@divisor))+1
	movf	(_T+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(_T),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Temp_tens+1)
	addwf	(_Temp_tens+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_Temp_tens)
	addwf	(_Temp_tens)

	line	225
	
l1686:	
;LE7-3.c: 225: Temp_ones = T % 10;
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(_T+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(_T),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Temp_ones+1)
	addwf	(_Temp_ones+1)
	movf	(0+(?___lwmod)),w
	clrf	(_Temp_ones)
	addwf	(_Temp_ones)

	line	227
	
l1688:	
;LE7-3.c: 227: I2C_Start();
	fcall	_I2C_Start
	line	228
	
l1690:	
;LE7-3.c: 228: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	229
	
l1692:	
;LE7-3.c: 229: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	230
	
l1694:	
;LE7-3.c: 230: I2C_Stop();
	fcall	_I2C_Stop
	line	231
	
l1696:	
;LE7-3.c: 231: delay(10);
	movlw	low(0Ah)
	movwf	(delay@MUL)
	movlw	high(0Ah)
	movwf	((delay@MUL))+1
	fcall	_delay
	line	233
	
l1698:	
;LE7-3.c: 233: displayTemp();
	fcall	_displayTemp
	goto	l1600
	line	234
	
l117:	
	line	156
	goto	l1600
	
l118:	
	line	235
	
l119:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init_I2C_Master

;; *************** function _init_I2C_Master *****************
;; Defined at:
;;		line 58 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
	line	58
global __ptext1
__ptext1:	;psect for function _init_I2C_Master
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	58
	global	__size_of_init_I2C_Master
	__size_of_init_I2C_Master	equ	__end_of_init_I2C_Master-_init_I2C_Master
	
_init_I2C_Master:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C_Master: [wreg+status,2]
	line	59
	
l1236:	
;LE7-3.c: 59: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	60
;LE7-3.c: 60: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	61
	
l1238:	
;LE7-3.c: 61: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	62
	
l1240:	
;LE7-3.c: 62: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	64
	
l1242:	
;LE7-3.c: 64: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	65
;LE7-3.c: 65: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	67
	
l75:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Master
	__end_of_init_I2C_Master:
	signat	_init_I2C_Master,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 42 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;;		_delayLCD
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	42
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	42
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l1234:	
;LE7-3.c: 43: delayLCD(15);
	movlw	low(0Fh)
	movwf	(delayLCD@MUL)
	movlw	high(0Fh)
	movwf	((delayLCD@MUL))+1
	fcall	_delayLCD
	line	44
;LE7-3.c: 44: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	45
;LE7-3.c: 45: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	46
;LE7-3.c: 46: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	47
;LE7-3.c: 47: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	48
;LE7-3.c: 48: delayLCD(2);
	movlw	low(02h)
	movwf	(delayLCD@MUL)
	movlw	high(02h)
	movwf	((delayLCD@MUL))+1
	fcall	_delayLCD
	line	49
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_displayTemp

;; *************** function _displayTemp *****************
;; Defined at:
;;		line 137 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_display
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	137
global __ptext3
__ptext3:	;psect for function _displayTemp
psect	text3
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	137
	global	__size_of_displayTemp
	__size_of_displayTemp	equ	__end_of_displayTemp-_displayTemp
	
_displayTemp:	
;incstack = 0
	opt	stack 4
; Regs used in _displayTemp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	138
	
l1304:	
;LE7-3.c: 138: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	139
	
l1306:	
;LE7-3.c: 139: display("Temperature: ");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_display
	line	140
	
l1308:	
;LE7-3.c: 140: dataCtrl(Temp_tens + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Temp_tens),w
	addlw	030h
	fcall	_dataCtrl
	line	141
	
l1310:	
;LE7-3.c: 141: dataCtrl(Temp_ones + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Temp_ones),w
	addlw	030h
	fcall	_dataCtrl
	line	142
	
l1312:	
;LE7-3.c: 142: display(".0 C");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_display
	line	143
	
l109:	
	return
	opt stack 0
GLOBAL	__end_of_displayTemp
	__end_of_displayTemp:
	signat	_displayTemp,88
	global	_displayHumidity

;; *************** function _displayHumidity *****************
;; Defined at:
;;		line 129 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_display
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	129
global __ptext4
__ptext4:	;psect for function _displayHumidity
psect	text4
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	129
	global	__size_of_displayHumidity
	__size_of_displayHumidity	equ	__end_of_displayHumidity-_displayHumidity
	
_displayHumidity:	
;incstack = 0
	opt	stack 4
; Regs used in _displayHumidity: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	130
	
l1294:	
;LE7-3.c: 130: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	131
	
l1296:	
;LE7-3.c: 131: display("Humidity: ");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_display
	line	132
	
l1298:	
;LE7-3.c: 132: dataCtrl(RH_tens + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RH_tens),w
	addlw	030h
	fcall	_dataCtrl
	line	133
	
l1300:	
;LE7-3.c: 133: dataCtrl(RH_ones + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RH_ones),w
	addlw	030h
	fcall	_dataCtrl
	line	134
	
l1302:	
;LE7-3.c: 134: display(".0%");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_display
	line	135
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_displayHumidity
	__end_of_displayHumidity:
	signat	_displayHumidity,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 22 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;;		_delayLCD
;; This function is called by:
;;		_initLCD
;;		_displayHumidity
;;		_displayTemp
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	22
global __ptext5
__ptext5:	;psect for function _instCtrl
psect	text5
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	22
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	24
	
l1178:	
;LE7-3.c: 24: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	25
	
l1180:	
;LE7-3.c: 25: RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	26
	
l1182:	
;LE7-3.c: 26: RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	27
	
l1184:	
;LE7-3.c: 27: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	28
	
l1186:	
;LE7-3.c: 28: delayLCD(1);
	movlw	low(01h)
	movwf	(delayLCD@MUL)
	movlw	high(01h)
	movwf	((delayLCD@MUL))+1
	fcall	_delayLCD
	line	29
	
l1188:	
;LE7-3.c: 29: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	30
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_display

;; *************** function _display *****************
;; Defined at:
;;		line 51 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  input           1    wreg     PTR const unsigned char 
;;		 -> STR_4(5), STR_3(14), STR_2(4), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  input           1    9[COMMON] PTR const unsigned char 
;;		 -> STR_4(5), STR_3(14), STR_2(4), STR_1(11), 
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
;;		_displayHumidity
;;		_displayTemp
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	51
global __ptext6
__ptext6:	;psect for function _display
psect	text6
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	51
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
;incstack = 0
	opt	stack 4
; Regs used in _display: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;display@input stored from wreg
	movwf	(display@input)
	line	53
	
l1190:	
;LE7-3.c: 52: int i;
;LE7-3.c: 53: for (i = 0; input[i] != '\0'; i++) {
	clrf	(display@i)
	clrf	(display@i+1)
	goto	l1196
	
l70:	
	line	54
	
l1192:	
;LE7-3.c: 54: dataCtrl(input[i]);
	movf	(display@i),w
	addwf	(display@input),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	line	53
	
l1194:	
	movlw	low(01h)
	addwf	(display@i),f
	skipnc
	incf	(display@i+1),f
	movlw	high(01h)
	addwf	(display@i+1),f
	goto	l1196
	
l69:	
	
l1196:	
	movf	(display@i),w
	addwf	(display@input),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1091
	goto	u1090
u1091:
	goto	l1192
u1090:
	goto	l72
	
l71:	
	line	56
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
	signat	_display,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 32 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;;		_delayLCD
;; This function is called by:
;;		_display
;;		_displayHumidity
;;		_displayTemp
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	32
global __ptext7
__ptext7:	;psect for function _dataCtrl
psect	text7
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	32
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	34
	
l1166:	
;LE7-3.c: 34: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	35
	
l1168:	
;LE7-3.c: 35: RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	36
	
l1170:	
;LE7-3.c: 36: RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	37
	
l1172:	
;LE7-3.c: 37: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	38
	
l1174:	
;LE7-3.c: 38: delayLCD(1);
	movlw	low(01h)
	movwf	(delayLCD@MUL)
	movlw	high(01h)
	movwf	((delayLCD@MUL))+1
	fcall	_delayLCD
	line	39
	
l1176:	
;LE7-3.c: 39: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	40
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delayLCD

;; *************** function _delayLCD *****************
;; Defined at:
;;		line 15 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;;		_dataCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	15
global __ptext8
__ptext8:	;psect for function _delayLCD
psect	text8
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	15
	global	__size_of_delayLCD
	__size_of_delayLCD	equ	__end_of_delayLCD-_delayLCD
	
_delayLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _delayLCD: [wreg+status,2+status,0+btemp+1]
	line	17
	
l1146:	
;LE7-3.c: 16: int i, j;
;LE7-3.c: 17: for (i = MUL; i != 0; i--) {
	movf	(delayLCD@MUL+1),w
	clrf	(delayLCD@i+1)
	addwf	(delayLCD@i+1)
	movf	(delayLCD@MUL),w
	clrf	(delayLCD@i)
	addwf	(delayLCD@i)

	
l1148:	
	movf	((delayLCD@i+1)),w
	iorwf	((delayLCD@i)),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l1152
u1050:
	goto	l57
	
l1150:	
	goto	l57
	
l53:	
	line	18
	
l1152:	
;LE7-3.c: 18: for (j = 0; j < 256; j++) {}
	clrf	(delayLCD@j)
	clrf	(delayLCD@j+1)
	
l1154:	
	movf	(delayLCD@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1065
	movlw	low(0100h)
	subwf	(delayLCD@j),w
u1065:

	skipc
	goto	u1061
	goto	u1060
u1061:
	goto	l1158
u1060:
	goto	l1162
	
l1156:	
	goto	l1162
	
l55:	
	
l1158:	
	movlw	low(01h)
	addwf	(delayLCD@j),f
	skipnc
	incf	(delayLCD@j+1),f
	movlw	high(01h)
	addwf	(delayLCD@j+1),f
	
l1160:	
	movf	(delayLCD@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1075
	movlw	low(0100h)
	subwf	(delayLCD@j),w
u1075:

	skipc
	goto	u1071
	goto	u1070
u1071:
	goto	l1158
u1070:
	goto	l1162
	
l56:	
	line	17
	
l1162:	
	movlw	low(-1)
	addwf	(delayLCD@i),f
	skipnc
	incf	(delayLCD@i+1),f
	movlw	high(-1)
	addwf	(delayLCD@i+1),f
	
l1164:	
	movf	((delayLCD@i+1)),w
	iorwf	((delayLCD@i)),w
	skipz
	goto	u1081
	goto	u1080
u1081:
	goto	l1152
u1080:
	goto	l57
	
l54:	
	line	20
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_delayLCD
	__end_of_delayLCD:
	signat	_delayLCD,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 122 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	122
global __ptext9
__ptext9:	;psect for function _delay
psect	text9
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	122
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 7
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	124
	
l1274:	
;LE7-3.c: 123: int i, j;
;LE7-3.c: 124: for (i = MUL; i != 0; i--) {
	movf	(delay@MUL+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@MUL),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l1276:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l1280
u1250:
	goto	l103
	
l1278:	
	goto	l103
	
l99:	
	line	125
	
l1280:	
;LE7-3.c: 125: for (j = 0; j < 256; j++) {}
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l1282:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1265
	movlw	low(0100h)
	subwf	(delay@j),w
u1265:

	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l1286
u1260:
	goto	l1290
	
l1284:	
	goto	l1290
	
l101:	
	
l1286:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l1288:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1275
	movlw	low(0100h)
	subwf	(delay@j),w
u1275:

	skipc
	goto	u1271
	goto	u1270
u1271:
	goto	l1286
u1270:
	goto	l1290
	
l102:	
	line	124
	
l1290:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l1292:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l1280
u1280:
	goto	l103
	
l100:	
	line	127
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext10
__ptext10:	;psect for function ___lwtoft
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1590:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l554
	
l1592:	
	line	31
	
l554:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___lwmod
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1568:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1971
	goto	u1970
u1971:
	goto	l1586
u1970:
	line	14
	
l1570:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1576
	
l544:	
	line	16
	
l1572:	
	movlw	01h
	
u1985:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1985
	line	17
	
l1574:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1576
	line	18
	
l543:	
	line	15
	
l1576:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l1572
u1990:
	goto	l1578
	
l545:	
	goto	l1578
	line	19
	
l546:	
	line	20
	
l1578:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2005
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2005:
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l1582
u2000:
	line	21
	
l1580:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1582
	
l547:	
	line	22
	
l1582:	
	movlw	01h
	
u2015:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2015
	line	23
	
l1584:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l1578
u2020:
	goto	l1586
	
l548:	
	goto	l1586
	line	24
	
l542:	
	line	25
	
l1586:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l549
	
l1588:	
	line	26
	
l549:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___lwdiv
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1542:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1544:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1901
	goto	u1900
u1901:
	goto	l1564
u1900:
	line	16
	
l1546:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1552
	
l534:	
	line	18
	
l1548:	
	movlw	01h
	
u1915:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1915
	line	19
	
l1550:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1552
	line	20
	
l533:	
	line	17
	
l1552:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l1548
u1920:
	goto	l1554
	
l535:	
	goto	l1554
	line	21
	
l536:	
	line	22
	
l1554:	
	movlw	01h
	
u1935:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1935
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1945
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1945:
	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l1560
u1940:
	line	24
	
l1556:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1558:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1560
	line	26
	
l537:	
	line	27
	
l1560:	
	movlw	01h
	
u1955:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1955
	line	28
	
l1562:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l1554
u1960:
	goto	l1564
	
l538:	
	goto	l1564
	line	29
	
l532:	
	line	30
	
l1564:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l539
	
l1566:	
	line	31
	
l539:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext13
__ptext13:	;psect for function ___fttol
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1498:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l1504
u1800:
	line	50
	
l1500:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l445
	
l1502:	
	goto	l445
	
l444:	
	line	51
	
l1504:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1815:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1810:
	addlw	-1
	skipz
	goto	u1815
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1506:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1508:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1510:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1512:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1514:	
	btfss	(___fttol@exp1),7
	goto	u1821
	goto	u1820
u1821:
	goto	l1524
u1820:
	line	57
	
l1516:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1831
	goto	u1830
u1831:
	goto	l1522
u1830:
	line	58
	
l1518:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l445
	
l1520:	
	goto	l445
	
l447:	
	goto	l1522
	line	59
	
l448:	
	line	60
	
l1522:	
	movlw	01h
u1845:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1845

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l1522
u1850:
	goto	l1534
	
l449:	
	line	62
	goto	l1534
	
l446:	
	line	63
	
l1524:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l1532
u1860:
	line	64
	
l1526:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l445
	
l1528:	
	goto	l445
	
l451:	
	line	65
	goto	l1532
	
l453:	
	line	66
	
l1530:	
	movlw	01h
	movwf	(??___fttol+0)+0
u1875:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u1875
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1532
	line	68
	
l452:	
	line	65
	
l1532:	
	movf	(___fttol@exp1),f
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l1530
u1880:
	goto	l1534
	
l454:	
	goto	l1534
	line	69
	
l450:	
	line	70
	
l1534:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1890
	goto	l1538
u1890:
	line	71
	
l1536:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1538
	
l455:	
	line	72
	
l1538:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l445
	
l1540:	
	line	73
	
l445:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext14
__ptext14:	;psect for function ___ftmul
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1448:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l1454
u1660:
	line	68
	
l1450:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l425
	
l1452:	
	goto	l425
	
l424:	
	line	69
	
l1454:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l1460
u1670:
	line	70
	
l1456:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l425
	
l1458:	
	goto	l425
	
l426:	
	line	71
	
l1460:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1685:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1680:
	addlw	-1
	skipz
	goto	u1685
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1695:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1690:
	addlw	-1
	skipz
	goto	u1695
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1462:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1464:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1466:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1468:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1470:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1472
	line	135
	
l427:	
	line	136
	
l1472:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l1476
u1700:
	line	137
	
l1474:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1711
	addwf	(___ftmul@f3_as_product+1),f
u1711:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1712
	addwf	(___ftmul@f3_as_product+2),f
u1712:

	goto	l1476
	
l428:	
	line	138
	
l1476:	
	movlw	01h
u1725:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1725

	line	139
	
l1478:	
	movlw	01h
u1735:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1735
	line	140
	
l1480:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l1472
u1740:
	goto	l1482
	
l429:	
	line	143
	
l1482:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1484
	line	144
	
l430:	
	line	145
	
l1484:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l1488
u1750:
	line	146
	
l1486:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1761
	addwf	(___ftmul@f3_as_product+1),f
u1761:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1762
	addwf	(___ftmul@f3_as_product+2),f
u1762:

	goto	l1488
	
l431:	
	line	147
	
l1488:	
	movlw	01h
u1775:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1775

	line	148
	
l1490:	
	movlw	01h
u1785:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1785

	line	149
	
l1492:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l1484
u1790:
	goto	l1494
	
l432:	
	line	156
	
l1494:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l425
	
l1496:	
	line	157
	
l425:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___ftge
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1428:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l1432
u1610:
	line	7
	
l1430:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1621
	goto	u1622
u1621:
	addwf	(??___ftge+0)+1,f
	
u1622:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1623
	goto	u1624
u1623:
	addwf	(??___ftge+0)+2,f
	
u1624:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l1432
	
l417:	
	line	8
	
l1432:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l1436
u1630:
	line	9
	
l1434:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1641
	goto	u1642
u1641:
	addwf	(??___ftge+0)+1,f
	
u1642:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1643
	goto	u1644
u1643:
	addwf	(??___ftge+0)+2,f
	
u1644:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l1436
	
l418:	
	line	10
	
l1436:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1438:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1440:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1655
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1655
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1655:
	skipnc
	goto	u1651
	goto	u1650
u1651:
	goto	l1444
u1650:
	
l1442:	
	clrc
	
	goto	l419
	
l1142:	
	
l1444:	
	setc
	
	goto	l419
	
l1144:	
	goto	l419
	
l1446:	
	line	13
	
l419:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext16
__ptext16:	;psect for function ___ftdiv
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1386:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u1531
	goto	u1530
u1531:
	goto	l1392
u1530:
	line	56
	
l1388:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l410
	
l1390:	
	goto	l410
	
l409:	
	line	57
	
l1392:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l1398
u1540:
	line	58
	
l1394:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l410
	
l1396:	
	goto	l410
	
l411:	
	line	59
	
l1398:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l1400:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l1402:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1555:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1550:
	addlw	-1
	skipz
	goto	u1555
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l1404:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1565:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1560:
	addlw	-1
	skipz
	goto	u1565
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l1406:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l1408:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l1410:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l1412
	line	69
	
l412:	
	line	70
	
l1412:	
	movlw	01h
u1575:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u1575
	line	71
	
l1414:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1585
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1585
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1585:
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l1420
u1580:
	line	72
	
l1416:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l1418:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l1420
	line	74
	
l413:	
	line	75
	
l1420:	
	movlw	01h
u1595:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u1595
	line	76
	
l1422:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l1412
u1600:
	goto	l1424
	
l414:	
	line	77
	
l1424:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l410
	
l1426:	
	line	78
	
l410:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    6[BANK0 ] unsigned char 
;;  exp2            1    5[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6       7       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext17
__ptext17:	;psect for function ___ftadd
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1314:	
	movf	(___ftadd@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l1316:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1290
	goto	l1322
u1290:
	
l1318:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1301
	goto	u1300
u1301:
	goto	l1326
u1300:
	
l1320:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1311
	goto	u1310
u1311:
	goto	l1326
u1310:
	goto	l1322
	
l378:	
	line	93
	
l1322:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l379
	
l1324:	
	goto	l379
	
l376:	
	line	94
	
l1326:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1320
	goto	l382
u1320:
	
l1328:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l1332
u1330:
	
l1330:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l1332
u1340:
	
l382:	
	line	95
	goto	l379
	
l380:	
	line	96
	
l1332:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1334:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l383
u1350:
	line	98
	
l1336:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l383:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l384
u1360:
	line	100
	
l1338:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l384:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1340:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1342:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l1354
u1370:
	goto	l1344
	line	109
	
l386:	
	line	110
	
l1344:	
	movlw	01h
u1385:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1385
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1346:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1391
	goto	u1390
u1391:
	goto	l1352
u1390:
	
l1348:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l1344
u1400:
	goto	l1352
	
l388:	
	goto	l1352
	
l389:	
	line	113
	goto	l1352
	
l391:	
	line	114
	
l1350:	
	movlw	01h
u1415:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1415

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1352
	line	116
	
l390:	
	line	113
	
l1352:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1421
	goto	u1420
u1421:
	goto	l1350
u1420:
	goto	l393
	
l392:	
	line	117
	goto	l393
	
l385:	
	
l1354:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1431
	goto	u1430
u1431:
	goto	l393
u1430:
	goto	l1356
	line	120
	
l395:	
	line	121
	
l1356:	
	movlw	01h
u1445:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1445
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1358:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1451
	goto	u1450
u1451:
	goto	l1364
u1450:
	
l1360:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l1356
u1460:
	goto	l1364
	
l397:	
	goto	l1364
	
l398:	
	line	124
	goto	l1364
	
l400:	
	line	125
	
l1362:	
	movlw	01h
u1475:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1475

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1364
	line	127
	
l399:	
	line	124
	
l1364:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l1362
u1480:
	goto	l393
	
l401:	
	goto	l393
	line	128
	
l394:	
	line	129
	
l393:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l1368
u1490:
	line	131
	
l1366:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l1368
	line	133
	
l402:	
	line	134
	
l1368:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l1372
u1500:
	line	136
	
l1370:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l1372
	line	138
	
l403:	
	line	139
	
l1372:	
	clrf	(___ftadd@sign)
	line	140
	
l1374:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1511
	addwf	(___ftadd@f2+1),f
u1511:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1512
	addwf	(___ftadd@f2+2),f
u1512:

	line	141
	
l1376:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l1382
u1520:
	line	142
	
l1378:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1380:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1382
	line	145
	
l404:	
	line	146
	
l1382:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l379
	
l1384:	
	line	148
	
l379:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext18
__ptext18:	;psect for function ___ftpack
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1204:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1120
	goto	l1208
u1120:
	
l1206:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l1214
u1130:
	goto	l1208
	
l359:	
	line	65
	
l1208:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l360
	
l1210:	
	goto	l360
	
l357:	
	line	66
	goto	l1214
	
l362:	
	line	67
	
l1212:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1145:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1145

	goto	l1214
	line	69
	
l361:	
	line	66
	
l1214:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1212
u1150:
	goto	l364
	
l363:	
	line	70
	goto	l364
	
l365:	
	line	71
	
l1216:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1218:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1220:	
	movlw	01h
u1165:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1165

	line	74
	
l364:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l1216
u1170:
	goto	l1224
	
l366:	
	line	75
	goto	l1224
	
l368:	
	line	76
	
l1222:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1185:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1185
	goto	l1224
	line	78
	
l367:	
	line	75
	
l1224:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l1222
u1190:
	
l369:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l370
u1200:
	line	80
	
l1226:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l370:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1228:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1215:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1210:
	addlw	-1
	skipz
	goto	u1215
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1230:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1220
	goto	l371
u1220:
	line	84
	
l1232:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l371:	
	line	85
	line	86
	
l360:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 82 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	82
global __ptext19
__ptext19:	;psect for function _I2C_Stop
psect	text19
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	82
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	85
	
l1248:	
;LE7-3.c: 85: I2C_Wait();
	fcall	_I2C_Wait
	line	87
	
l1250:	
;LE7-3.c: 87: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	88
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 75 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	75
global __ptext20
__ptext20:	;psect for function _I2C_Start
psect	text20
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	75
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	78
	
l1244:	
;LE7-3.c: 78: I2C_Wait();
	fcall	_I2C_Wait
	line	80
	
l1246:	
;LE7-3.c: 80: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	81
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Send

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 98 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	98
global __ptext21
__ptext21:	;psect for function _I2C_Send
psect	text21
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	98
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@data stored from wreg
	movwf	(I2C_Send@data)
	line	101
	
l1256:	
;LE7-3.c: 101: I2C_Wait();
	fcall	_I2C_Wait
	line	103
	
l1258:	
;LE7-3.c: 103: SSPBUF = data;
	movf	(I2C_Send@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	104
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
	signat	_I2C_Send,4216
	global	_I2C_RepeatedStart

;; *************** function _I2C_RepeatedStart *****************
;; Defined at:
;;		line 90 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	90
global __ptext22
__ptext22:	;psect for function _I2C_RepeatedStart
psect	text22
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	90
	global	__size_of_I2C_RepeatedStart
	__size_of_I2C_RepeatedStart	equ	__end_of_I2C_RepeatedStart-_I2C_RepeatedStart
	
_I2C_RepeatedStart:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_RepeatedStart: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l1252:	
;LE7-3.c: 93: I2C_Wait();
	fcall	_I2C_Wait
	line	95
	
l1254:	
;LE7-3.c: 95: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	96
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_RepeatedStart
	__end_of_I2C_RepeatedStart:
	signat	_I2C_RepeatedStart,88
	global	_I2C_Receive

;; *************** function _I2C_Receive *****************
;; Defined at:
;;		line 106 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    1[COMMON] unsigned char 
;;  temp            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	106
global __ptext23
__ptext23:	;psect for function _I2C_Receive
psect	text23
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	106
	global	__size_of_I2C_Receive
	__size_of_I2C_Receive	equ	__end_of_I2C_Receive-_I2C_Receive
	
_I2C_Receive:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Receive: [wreg+status,2+status,0+pclath+cstack]
;I2C_Receive@ack stored from wreg
	movwf	(I2C_Receive@ack)
	line	109
	
l1260:	
;LE7-3.c: 108: unsigned char temp;
;LE7-3.c: 109: I2C_Wait();
	fcall	_I2C_Wait
	line	110
	
l1262:	
;LE7-3.c: 110: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	112
;LE7-3.c: 112: I2C_Wait();
	fcall	_I2C_Wait
	line	113
	
l1264:	
;LE7-3.c: 113: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Receive+0)+0
	movf	(??_I2C_Receive+0)+0,w
	movwf	(I2C_Receive@temp)
	line	115
	
l1266:	
;LE7-3.c: 115: I2C_Wait();
	fcall	_I2C_Wait
	line	116
	
l1268:	
;LE7-3.c: 116: ACKDT = (ack)?0:1;
	movf	(I2C_Receive@ack)
	skipnz
	goto	u1231
	goto	u1230
	
u1231:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	goto	u1244
u1230:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
u1244:
	line	117
	
l1270:	
;LE7-3.c: 117: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	119
;LE7-3.c: 119: return temp;
	movf	(I2C_Receive@temp),w
	goto	l96
	
l1272:	
	line	120
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Receive
	__end_of_I2C_Receive:
	signat	_I2C_Receive,4217
	global	_I2C_Wait

;; *************** function _I2C_Wait *****************
;; Defined at:
;;		line 69 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
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
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Receive
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	69
global __ptext24
__ptext24:	;psect for function _I2C_Wait
psect	text24
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\Piolo Code\LE7-3.c"
	line	69
	global	__size_of_I2C_Wait
	__size_of_I2C_Wait	equ	__end_of_I2C_Wait-_I2C_Wait
	
_I2C_Wait:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Wait: [wreg+status,2]
	line	72
	
l1198:	
;LE7-3.c: 72: while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
	goto	l1200
	
l79:	
	goto	l1200
	
l78:	
	
l1200:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l1200
u1100:
	
l1202:	
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u1111
	goto	u1110
u1111:
	goto	l1200
u1110:
	goto	l81
	
l80:	
	line	73
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Wait
	__end_of_I2C_Wait:
	signat	_I2C_Wait,88
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
