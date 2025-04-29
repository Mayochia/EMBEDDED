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
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___lwtoft
	FNCALL	_main,_delay_ms
	FNCALL	_main,_dispRH
	FNCALL	_main,_dispT
	FNCALL	_main,_initLCD
	FNCALL	_main,_init_I2C_Master
	FNCALL	_main,_pow
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftge
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_ldexp,___ftge
	FNCALL	_ldexp,___ftneg
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	_eval_poly,___bmul
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_initLCD,_delay_ms
	FNCALL	_initLCD,_instCtrl
	FNCALL	_dispT,_dataCtrl
	FNCALL	_dispT,_instCtrl
	FNCALL	_dispT,_sprintf
	FNCALL	_dispRH,_dataCtrl
	FNCALL	_dispRH,_instCtrl
	FNCALL	_dispRH,_sprintf
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,_scale
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___awmod
	FNCALL	_scale,___bmul
	FNCALL	_scale,___ftmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___awmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	_instCtrl,_delay_ms
	FNCALL	_dataCtrl,_delay_ms
	FNCALL	___lwtoft,___ftpack
	FNCALL	_I2C_Stop,_I2C_Wait
	FNCALL	_I2C_Start,_I2C_Wait
	FNCALL	_I2C_Send,_I2C_Wait
	FNCALL	_I2C_RepeatedStart,_I2C_Wait
	FNCALL	_I2C_Receive,_I2C_Wait
	FNROOT	_main
	global	_dpowers
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global __end_of_dpowers
__end_of_dpowers:
	global	__npowers_
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global __end_of__npowers_
__end_of__npowers_:
	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global __end_of__powers_
__end_of__powers_:
	global	exp@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xfe
	retlw	0x75
	retlw	0x3e

	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0xc5
	retlw	0xae
	retlw	0x3a

	retlw	0x79
	retlw	0x21
	retlw	0x39

	retlw	0x94
	retlw	0x80
	retlw	0x37

	retlw	0x93
	retlw	0xa7
	retlw	0x35

	retlw	0x56
	retlw	0x15
	retlw	0x34

	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xf0
	retlw	0xff
	retlw	0xbe

	retlw	0xe2
	retlw	0xa9
	retlw	0x3e

	retlw	0x83
	retlw	0x76
	retlw	0xbe

	retlw	0xae
	retlw	0x2b
	retlw	0x3e

	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0xd2
	retlw	0x13
	retlw	0x3d

	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global __end_oflog@coeff
__end_oflog@coeff:
	global	_dpowers
	global	__npowers_
	global	__powers_
	global	exp@coeff
	global	log@coeff
	global	_T
	global	_RH
	global	_errno
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
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
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
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
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_T:
       ds      3

_RH:
       ds      2

_errno:
       ds      2

	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_ldexp$521
_ldexp$521:	; 3 bytes @ 0x0
	global	_sprintf$700
_sprintf$700:	; 3 bytes @ 0x0
	ds	3
	global	?_exp
?_exp:	; 3 bytes @ 0x3
	global	exp@x
exp@x:	; 3 bytes @ 0x3
	global	_sprintf$190
_sprintf$190:	; 4 bytes @ 0x3
	ds	3
	global	_exp$703
_exp$703:	; 3 bytes @ 0x6
	ds	1
	global	sprintf@vd
sprintf@vd:	; 4 bytes @ 0x7
	ds	2
	global	_exp$484
_exp$484:	; 3 bytes @ 0x9
	ds	2
	global	sprintf@vd_192
sprintf@vd_192:	; 4 bytes @ 0xB
	ds	1
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0xC
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0xE
	ds	1
	global	?_pow
?_pow:	; 3 bytes @ 0xF
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xF
	global	pow@x
pow@x:	; 3 bytes @ 0xF
	ds	1
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x12
	global	pow@y
pow@y:	; 3 bytes @ 0x12
	ds	3
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x15
	global	_pow$701
_pow$701:	; 3 bytes @ 0x15
	ds	2
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x17
	ds	1
	global	_pow$702
_pow$702:	; 3 bytes @ 0x18
	ds	3
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1B
	global	pow@sign
pow@sign:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x1C
	global	pow@yi
pow@yi:	; 4 bytes @ 0x1C
	ds	2
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x1E
	ds	3
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x21
	ds	1
	global	dispRH@val
dispRH@val:	; 4 bytes @ 0x22
	global	dispT@val
dispT@val:	; 8 bytes @ 0x22
	ds	8
	global	dispT@i
dispT@i:	; 2 bytes @ 0x2A
	ds	2
??_main:	; 0 bytes @ 0x2C
	ds	2
	global	main@rh
main@rh:	; 3 bytes @ 0x2E
	ds	3
	global	main@t
main@t:	; 3 bytes @ 0x31
	ds	3
	global	_main$696
_main$696:	; 3 bytes @ 0x34
	ds	3
	global	main@res
main@res:	; 2 bytes @ 0x37
	ds	2
	global	main@RH_temp
main@RH_temp:	; 2 bytes @ 0x39
	ds	2
	global	main@T_temp
main@T_temp:	; 2 bytes @ 0x3B
	ds	2
	global	main@temp
main@temp:	; 1 bytes @ 0x3D
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_I2C_Master:	; 0 bytes @ 0x0
??_init_I2C_Master:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
??_I2C_Start:	; 0 bytes @ 0x0
?_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Send:	; 0 bytes @ 0x0
?_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_Receive:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
??_I2C_Stop:	; 0 bytes @ 0x0
?_delay_ms:	; 0 bytes @ 0x0
?_dispRH:	; 0 bytes @ 0x0
?_dispT:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
??_isdigit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_I2C_Wait:	; 0 bytes @ 0x0
??_I2C_Wait:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_I2C_Receive:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	I2C_Send@data
I2C_Send@data:	; 1 bytes @ 0x0
	global	_isdigit$390
_isdigit$390:	; 1 bytes @ 0x0
	global	delay_ms@cnt
delay_ms@cnt:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	I2C_Receive@ack
I2C_Receive@ack:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_delay_ms:	; 0 bytes @ 0x2
	global	I2C_Receive@temp
I2C_Receive@temp:	; 1 bytes @ 0x2
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_frexp:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
??__tdiv_to_l_:	; 0 bytes @ 0x6
??__div_to_l_:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
??___ftge:	; 0 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
??___lldiv:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	2
??___awdiv:	; 0 bytes @ 0xB
??___awtoft:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
??___bmul:	; 0 bytes @ 0xC
??___lltoft:	; 0 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	1
?___bmul:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x5
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	ds	1
??___ftdiv:	; 0 bytes @ 0x6
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x6
	ds	2
??___llmod:	; 0 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	ds	1
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
	global	?_fround
?_fround:	; 3 bytes @ 0x20
	global	?_scale
?_scale:	; 3 bytes @ 0x20
	ds	3
??_fround:	; 0 bytes @ 0x23
??_scale:	; 0 bytes @ 0x23
	ds	2
	global	_scale$699
_scale$699:	; 3 bytes @ 0x25
	ds	3
	global	scale@scl
scale@scl:	; 1 bytes @ 0x28
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x29
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x29
	global	_fround$698
_fround$698:	; 3 bytes @ 0x29
	ds	3
	global	_fround$697
_fround$697:	; 3 bytes @ 0x2C
	ds	1
??___fttol:	; 0 bytes @ 0x2D
	ds	2
	global	fround@prec
fround@prec:	; 1 bytes @ 0x2F
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x30
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x30
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x31
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x32
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x33
	ds	3
??___ftadd:	; 0 bytes @ 0x36
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x36
	ds	1
	global	?___altoft
?___altoft:	; 3 bytes @ 0x37
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x37
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3A
	ds	1
??___altoft:	; 0 bytes @ 0x3B
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3B
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3C
	ds	1
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x3D
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x3D
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x3D
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x3D
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x3D
	ds	1
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x3E
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x3F
	global	floor@x
floor@x:	; 3 bytes @ 0x3F
	ds	1
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x40
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x40
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x41
	ds	1
??_floor:	; 0 bytes @ 0x42
	ds	1
??_eval_poly:	; 0 bytes @ 0x43
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x43
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x43
	global	floor@i
floor@i:	; 3 bytes @ 0x43
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x44
	ds	2
	global	floor@expon
floor@expon:	; 2 bytes @ 0x46
	ds	1
??_sprintf:	; 0 bytes @ 0x47
	global	?_log
?_log:	; 3 bytes @ 0x47
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x47
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x47
	global	log@x
log@x:	; 3 bytes @ 0x47
	ds	3
??_log:	; 0 bytes @ 0x4A
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x4A
	ds	1
	global	log@exponent
log@exponent:	; 2 bytes @ 0x4B
	ds	1
??_ldexp:	; 0 bytes @ 0x4C
	ds	1
??_dispRH:	; 0 bytes @ 0x4D
??_dispT:	; 0 bytes @ 0x4D
	ds	1
??_exp:	; 0 bytes @ 0x4E
	ds	1
??_pow:	; 0 bytes @ 0x4F
	ds	1
;!
;!Data Sizes:
;!    Strings     8
;!    Constant    175
;!    Data        0
;!    BSS         7
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     80      80
;!    BANK1            80     62      69
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 30
;!		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_2(CODE[5]), STR_1(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 8
;!		 -> dispT@val(BANK1[8]), dispRH@val(BANK1[4]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S177$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___awtoft
;!    _pow->___lltoft
;!    _log->___awtoft
;!    _exp->___awtoft
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    _initLCD->_instCtrl
;!    _sprintf->___lldiv
;!    _sprintf->___lltoft
;!    _sprintf->__div_to_l_
;!    ___ftmul->___awtoft
;!    ___bmul->___awdiv
;!    ___awdiv->___awmod
;!    ___lltoft->___ftpack
;!    ___llmod->___lldiv
;!    ___ftsub->___awtoft
;!    ___ftsub->___lltoft
;!    ___ftadd->___awtoft
;!    _instCtrl->_delay_ms
;!    _dataCtrl->_delay_ms
;!    ___lwtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_pow
;!    _pow->_exp
;!    _log->_eval_poly
;!    _exp->_ldexp
;!    _ldexp->_eval_poly
;!    _floor->___altoft
;!    ___altoft->___fttol
;!    _eval_poly->___ftadd
;!    _dispT->_sprintf
;!    _dispRH->_sprintf
;!    _sprintf->___ftsub
;!    _scale->___ftmul
;!    _fround->___ftmul
;!    ___ftmul->___ftdiv
;!    ___bmul->___awdiv
;!    ___fttol->_scale
;!    ___ftsub->___ftadd
;!    ___ftadd->_fround
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_dispT
;!    _pow->_exp
;!    _exp->_ldexp
;!    _dispT->_sprintf
;!    _dispRH->_sprintf
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
;! (0) _main                                                18    18      0  164055
;!                                             44 BANK1     18    18      0
;!                        _I2C_Receive
;!                  _I2C_RepeatedStart
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                           _delay_ms
;!                             _dispRH
;!                              _dispT
;!                            _initLCD
;!                    _init_I2C_Master
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (1) _pow                                                 18    12      6   65968
;!                                             79 BANK0      1     1      0
;!                                             15 BANK1     17    11      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (2) _log                                                  6     3      3   21285
;!                                             71 BANK0      6     3      3
;!                           ___awtoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) _exp                                                 13    10      3   35307
;!                                             78 BANK0      1     1      0
;!                                              3 BANK1     12     9      3
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _ldexp                                               10     5      5    2202
;!                                             71 BANK0      7     2      5
;!                                              0 BANK1      3     3      0
;!                             ___ftge
;!                            ___ftneg
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _floor                                                9     6      3    8413
;!                                             63 BANK0      9     6      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (3) _frexp                                                6     2      4     436
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___altoft                                             8     4      4    1993
;!                                             55 BANK0      8     4      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _eval_poly                                           10     4      6    9048
;!                                             61 BANK0     10     4      6
;!                             ___bmul
;!                            ___ftadd
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    2400
;!                                              0 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             6     3      3    2105
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Master                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     992
;!                           _delay_ms
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _dispT                                               11    11      0   40568
;!                                             77 BANK0      1     1      0
;!                                             34 BANK1     10    10      0
;!                           _dataCtrl
;!                           _instCtrl
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _dispRH                                               5     5      0   40592
;!                                             77 BANK0      1     1      0
;!                                             34 BANK1      4     4      0
;!                           _dataCtrl
;!                           _instCtrl
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             50    46      4   39420
;!                                             67 BANK0     10     6      4
;!                                              0 BANK1     34    34      0
;!                            ___awdiv
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                            ___lldiv
;!                            ___llmod
;!                           ___lltoft
;!                             ___wmul
;!                         __div_to_l_
;!                        __tdiv_to_l_
;!                             _fround
;!                            _isdigit
;!                              _scale
;! ---------------------------------------------------------------------------------
;! (3) _scale                                               12     9      3    8161
;!                                             32 BANK0      9     6      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (3) _isdigit                                              2     2      0      68
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _fround                                              19    16      3    7963
;!                                             32 BANK0     16    13      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (4) ___ftmul                                             16    10      6    4434
;!                                             16 BANK0     16    10      6
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___bmul                                               4     3      1     628
;!                                             12 COMMON     1     1      0
;!                                              4 BANK0      3     2      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              7     3      4    1250
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              9     5      4    1360
;!                                              7 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) __tdiv_to_l_                                         16    10      6     409
;!                                              0 COMMON    10     4      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (3) __div_to_l_                                          20    14      6     552
;!                                              0 COMMON    14     8      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4    1352
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    1977
;!                                              8 COMMON     6     2      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___llmod                                             10     2      8     583
;!                                              0 BANK0     10     2      8
;!                            ___lldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lldiv                                             14     6      8     480
;!                                              0 COMMON    14     6      8
;! ---------------------------------------------------------------------------------
;! (4) ___fttol                                             14    10      4     676
;!                                             41 BANK0     14    10      4
;!                            ___ftmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    3747
;!                                             61 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             13     7      6    3490
;!                                             48 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                              _frexp (ARG)
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3     310
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                              12     6      6    1514
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     507
;!                                              6 COMMON     1     1      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     507
;!                                              6 COMMON     1     1      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (3) _delay_ms                                             6     4      2     485
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             4     1      3    1930
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    1802
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
;! Estimated maximum stack depth 5
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
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___bmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _frexp (ARG)
;!     _fround (ARG)
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___bmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!   ___ftdiv
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftmul
;!     ___awdiv (ARG)
;!       ___awmod (ARG)
;!     ___awmod (ARG)
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___bmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _frexp (ARG)
;!   ___fttol
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     _scale (ARG)
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___bmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!   ___lwtoft
;!     ___ftpack
;!   _delay_ms
;!   _dispRH
;!     _dataCtrl
;!       _delay_ms
;!     _instCtrl
;!       _delay_ms
;!     _sprintf
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!         _fround (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftneg
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         _scale (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       ___lldiv
;!       ___llmod
;!         ___lldiv (ARG)
;!       ___lltoft
;!         ___ftpack
;!       ___wmul
;!       __div_to_l_
;!       __tdiv_to_l_
;!       _fround
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       _isdigit
;!       _scale
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!   _dispT
;!     _dataCtrl
;!       _delay_ms
;!     _instCtrl
;!       _delay_ms
;!     _sprintf
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!         _fround (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftneg
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         _scale (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       ___lldiv
;!       ___llmod
;!         ___lldiv (ARG)
;!       ___lltoft
;!         ___ftpack
;!       ___wmul
;!       __div_to_l_
;!       __tdiv_to_l_
;!       _fround
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       _isdigit
;!       _scale
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!   _initLCD
;!     _delay_ms
;!     _instCtrl
;!       _delay_ms
;!   _init_I2C_Master
;!   _pow
;!     ___ftge
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     ___ftneg
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       _scale (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!     ___lltoft
;!       ___ftpack
;!     _exp
;!       ___awtoft
;!         ___ftpack
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftge
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftneg
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         _scale (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       _eval_poly
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       _floor
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             _scale (ARG)
;!               ___awdiv
;!                 ___awmod (ARG)
;!               ___awmod
;!               ___bmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___bmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___awmod (ARG)
;!                   ___awmod (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         ___ftge
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           _scale (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         _frexp
;!       _ldexp
;!         ___ftge
;!         ___ftneg
;!         _eval_poly (ARG)
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!             _fround (ARG)
;!               ___awdiv
;!                 ___awmod (ARG)
;!               ___awmod
;!               ___bmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___bmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___awmod (ARG)
;!                   ___awmod (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       _log (ARG)
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         ___ftge
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         _eval_poly
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!             _fround (ARG)
;!               ___awdiv
;!                 ___awmod (ARG)
;!               ___awmod
;!               ___bmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___bmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___awmod (ARG)
;!                   ___awmod (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _frexp
;!     _log
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!         _fround (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       _eval_poly
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       _frexp
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
;!ABS                  0      0      A3       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50     3E      45       7       86.3%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      A3      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               3   49[BANK1 ] float 
;;  rh              3   46[BANK1 ] float 
;;  T_temp          2   59[BANK1 ] unsigned int 
;;  RH_temp         2   57[BANK1 ] unsigned int 
;;  res             2   55[BANK1 ] int 
;;  temp            1   61[BANK1 ] unsigned char 
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
;;      Locals:         0       0      16       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Receive
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		_delay_ms
;;		_dispRH
;;		_dispT
;;		_initLCD
;;		_init_I2C_Master
;;		_pow
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	33
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	34
	
l3373:	
;LE7-3.c: 34: int res = (int)(pow(2,14));
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0x60
	movwf	(pow@y+1)^080h
	movlw	0x41
	movwf	(pow@y+2)^080h
	movlw	0x0
	movwf	(pow@x)^080h
	movlw	0x0
	movwf	(pow@x+1)^080h
	movlw	0x40
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	movwf	(_main$696)^080h
	movf	(1+(?_pow))^080h,w
	movwf	(_main$696+1)^080h
	movf	(2+(?_pow))^080h,w
	movwf	(_main$696+2)^080h
	
l3375:	
;LE7-3.c: 34: int res = (int)(pow(2,14));
	movf	(_main$696)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$696+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$696+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@res+1)^080h
	addwf	(main@res+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@res)^080h
	addwf	(main@res)^080h

	line	35
	
l3377:	
;LE7-3.c: 35: unsigned int RH_temp = 0x0000, T_temp = 0x0000;
	clrf	(main@RH_temp)^080h
	clrf	(main@RH_temp+1)^080h
	
l3379:	
	clrf	(main@T_temp)^080h
	clrf	(main@T_temp+1)^080h
	line	36
	
l3381:	
;LE7-3.c: 36: unsigned char temp = 0x00;
	clrf	(main@temp)^080h
	line	38
	
l3383:	
;LE7-3.c: 37: float rh, t;
;LE7-3.c: 38: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	39
	
l3385:	
;LE7-3.c: 39: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	40
	
l3387:	
;LE7-3.c: 40: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	41
	
l3389:	
;LE7-3.c: 41: PORTD = 0x00;
	clrf	(8)	;volatile
	line	42
	
l3391:	
;LE7-3.c: 42: init_I2C_Master();
	fcall	_init_I2C_Master
	goto	l3393
	line	45
;LE7-3.c: 44: for(;;)
	
l69:	
	line	46
	
l3393:	
;LE7-3.c: 45: {
;LE7-3.c: 46: initLCD();
	fcall	_initLCD
	line	48
	
l3395:	
;LE7-3.c: 48: I2C_Start();
	fcall	_I2C_Start
	line	49
	
l3397:	
;LE7-3.c: 49: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	50
	
l3399:	
;LE7-3.c: 50: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	51
	
l3401:	
;LE7-3.c: 51: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	52
	
l3403:	
;LE7-3.c: 52: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	53
	
l3405:	
;LE7-3.c: 53: RH_temp = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@RH_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@RH_temp+1)^080h
	line	54
	
l3407:	
;LE7-3.c: 54: temp = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(main@temp)^080h
	line	55
	
l3409:	
;LE7-3.c: 55: I2C_Stop();
	fcall	_I2C_Stop
	line	56
	
l3411:	
;LE7-3.c: 56: delay_ms(200);
	movlw	low(0C8h)
	movwf	(delay_ms@cnt)
	movlw	high(0C8h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	59
	
l3413:	
;LE7-3.c: 59: RH_temp = RH_temp << 6;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@RH_temp+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@RH_temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	06h
	movwf	btemp+1
u4615:
	clrc
	rlf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,f
	decfsz	btemp+1,f
	goto	u4615
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@RH_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@RH_temp+1)^080h
	line	60
	
l3415:	
;LE7-3.c: 60: temp = temp >> 2;
	movf	(main@temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	02h
u4625:
	clrc
	rrf	(??_main+0)^080h+0,f
	addlw	-1
	skipz
	goto	u4625
	movf	0+(??_main+0)^080h+0,w
	movwf	(??_main+1)^080h+0
	movf	(??_main+1)^080h+0,w
	movwf	(main@temp)^080h
	line	61
	
l3417:	
;LE7-3.c: 61: RH_temp = RH_temp | temp;
	movf	(main@RH_temp)^080h,w
	iorwf	(main@temp)^080h,w
	movwf	(main@RH_temp)^080h
	movf	(main@RH_temp+1)^080h,w
	movwf	1+(main@RH_temp)^080h
	line	63
	
l3419:	
;LE7-3.c: 63: rh = (float)(-6+(125*((float)RH_temp/(float)res)));
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xc0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@res+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@res)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@RH_temp+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@RH_temp)^080h,w
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
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@rh)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@rh+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@rh+2)^080h
	line	64
	
l3421:	
;LE7-3.c: 64: RH = (int)(rh);
	movf	(main@rh)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@rh+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@rh+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_RH+1)^080h
	addwf	(_RH+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_RH)^080h
	addwf	(_RH)^080h

	line	67
	
l3423:	
;LE7-3.c: 67: I2C_Start();
	fcall	_I2C_Start
	line	68
	
l3425:	
;LE7-3.c: 68: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	69
	
l3427:	
;LE7-3.c: 69: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	70
	
l3429:	
;LE7-3.c: 70: I2C_Stop();
	fcall	_I2C_Stop
	line	71
	
l3431:	
;LE7-3.c: 71: delay_ms(200);
	movlw	low(0C8h)
	movwf	(delay_ms@cnt)
	movlw	high(0C8h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	74
	
l3433:	
;LE7-3.c: 74: temp = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@temp)^080h
	line	75
	
l3435:	
;LE7-3.c: 75: I2C_Start();
	fcall	_I2C_Start
	line	76
	
l3437:	
;LE7-3.c: 76: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	77
	
l3439:	
;LE7-3.c: 77: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	78
	
l3441:	
;LE7-3.c: 78: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	79
	
l3443:	
;LE7-3.c: 79: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	80
	
l3445:	
;LE7-3.c: 80: T_temp = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@T_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@T_temp+1)^080h
	line	81
	
l3447:	
;LE7-3.c: 81: temp = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(main@temp)^080h
	line	82
	
l3449:	
;LE7-3.c: 82: I2C_Stop();
	fcall	_I2C_Stop
	line	83
	
l3451:	
;LE7-3.c: 83: delay_ms(200);
	movlw	low(0C8h)
	movwf	(delay_ms@cnt)
	movlw	high(0C8h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	85
	
l3453:	
;LE7-3.c: 85: T_temp = T_temp << 6;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@T_temp+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@T_temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	06h
	movwf	btemp+1
u4635:
	clrc
	rlf	(??_main+0)^080h+0,f
	rlf	(??_main+0)^080h+1,f
	decfsz	btemp+1,f
	goto	u4635
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@T_temp)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@T_temp+1)^080h
	line	86
	
l3455:	
;LE7-3.c: 86: temp = temp >> 2;
	movf	(main@temp)^080h,w
	movwf	(??_main+0)^080h+0
	movlw	02h
u4645:
	clrc
	rrf	(??_main+0)^080h+0,f
	addlw	-1
	skipz
	goto	u4645
	movf	0+(??_main+0)^080h+0,w
	movwf	(??_main+1)^080h+0
	movf	(??_main+1)^080h+0,w
	movwf	(main@temp)^080h
	line	87
	
l3457:	
;LE7-3.c: 87: T_temp = T_temp | temp;
	movf	(main@T_temp)^080h,w
	iorwf	(main@temp)^080h,w
	movwf	(main@T_temp)^080h
	movf	(main@T_temp+1)^080h,w
	movwf	1+(main@T_temp)^080h
	line	89
	
l3459:	
;LE7-3.c: 89: t = (float)(-46.85+(175.72*((float)T_temp/(float)res)));
	movlw	0x66
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x3b
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	movlw	0xb8
	movwf	(___ftmul@f1)
	movlw	0x2f
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@res+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@res)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@T_temp+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@T_temp)^080h,w
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
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@t)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@t+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@t+2)^080h
	line	90
	
l3461:	
;LE7-3.c: 90: T = t;
	movf	(main@t)^080h,w
	movwf	(_T)^080h
	movf	(main@t+1)^080h,w
	movwf	(_T+1)^080h
	movf	(main@t+2)^080h,w
	movwf	(_T+2)^080h
	line	93
	
l3463:	
;LE7-3.c: 93: I2C_Start();
	fcall	_I2C_Start
	line	94
	
l3465:	
;LE7-3.c: 94: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	95
	
l3467:	
;LE7-3.c: 95: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	96
	
l3469:	
;LE7-3.c: 96: I2C_Stop();
	fcall	_I2C_Stop
	line	97
	
l3471:	
;LE7-3.c: 97: delay_ms(200);
	movlw	low(0C8h)
	movwf	(delay_ms@cnt)
	movlw	high(0C8h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	99
	
l3473:	
;LE7-3.c: 99: dispRH();
	fcall	_dispRH
	line	100
	
l3475:	
;LE7-3.c: 100: dispT();
	fcall	_dispT
	line	101
;LE7-3.c: 101: }
	goto	l3393
	
l70:	
	line	102
	
l71:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3   15[BANK1 ] unsigned char 
;;  y               3   18[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  yi              4   28[BANK1 ] unsigned long 
;;  sign            1   27[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      17       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
global __ptext1
__ptext1:	;psect for function _pow
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
;incstack = 0
	opt	stack 3
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l3259:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l3261:	
	movf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u4521
	goto	u4520
u4521:
	goto	l3269
u4520:
	line	11
	
l3263:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(pow@y)^080h,w
	movwf	(___ftge@ff2)
	movf	(pow@y+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(pow@y+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4531
	goto	u4530
u4531:
	goto	l706
u4530:
	line	12
	
l3265:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	13
	
l706:	
	line	14
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l707
	
l3267:	
	goto	l707
	line	15
	
l705:	
	line	16
	
l3269:	
	movf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l3275
u4540:
	line	17
	
l3271:	
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x80
	movwf	(?_pow+1)^080h
	movlw	0x3f
	movwf	(?_pow+2)^080h
	goto	l707
	
l3273:	
	goto	l707
	
l708:	
	line	18
	
l3275:	
	movf	(pow@x)^080h,w
	movwf	(___ftge@ff1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4551
	goto	u4550
u4551:
	goto	l3287
u4550:
	line	19
	
l3277:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(pow@yi+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(pow@yi+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(pow@yi)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	xorwf	(2+(?___lltoft)),w
	skipz
	goto	u4565
	movf	(pow@y+1)^080h,w
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u4565
	movf	(pow@y)^080h,w
	xorwf	(0+(?___lltoft)),w
u4565:
	skipnz
	goto	u4561
	goto	u4560
u4561:
	goto	l3283
u4560:
	line	21
	
l3279:	
	movlw	low(021h)
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	22
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l707
	
l3281:	
	goto	l707
	line	23
	
l710:	
	line	24
	
l3283:	
	movf	(pow@yi)^080h,w
	andlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pow+0)+0
	movf	(??_pow+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@sign)^080h
	line	25
	
l3285:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	movf	(1+(?___ftneg)),w
	movwf	(pow@x+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(pow@x+2)^080h
	goto	l3287
	line	26
	
l709:	
	line	27
	
l3287:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+2)
	fcall	_log
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$701)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$701+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$701+2)^080h
	
l3289:	
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$701)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$701+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$701+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$702)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$702+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$702+2)^080h
	
l3291:	
	movf	(_pow$702)^080h,w
	movwf	(exp@x)^080h
	movf	(_pow$702+1)^080h,w
	movwf	(exp@x+1)^080h
	movf	(_pow$702+2)^080h,w
	movwf	(exp@x+2)^080h
	fcall	_exp
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_exp))^080h,w
	movwf	(pow@x)^080h
	movf	(1+(?_exp))^080h,w
	movwf	(pow@x+1)^080h
	movf	(2+(?_exp))^080h,w
	movwf	(pow@x+2)^080h
	line	28
	
l3293:	
	movf	(pow@sign)^080h,w
	skipz
	goto	u4570
	goto	l711
u4570:
	line	29
	
l3295:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movf	(1+(?___ftneg)),w
	movwf	(?_pow+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(?_pow+2)^080h
	goto	l707
	
l3297:	
	goto	l707
	
l711:	
	line	30
	line	31
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   71[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   75[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   71[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
global __ptext2
__ptext2:	;psect for function _log
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
;incstack = 0
	opt	stack 3
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l3183:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x),w
	movwf	(___ftge@ff1)
	movf	(log@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(log@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4441
	goto	u4440
u4441:
	goto	l3189
u4440:
	line	25
	
l3185:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	26
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l789
	
l3187:	
	goto	l789
	line	27
	
l788:	
	line	28
	
l3189:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l3195
u4450:
	line	29
	
l3191:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	30
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l789
	
l3193:	
	goto	l789
	line	31
	
l790:	
	line	32
	
l3195:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movlw	(log@exponent)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(frexp@eptr)
	movf	(log@x),w
	movwf	(frexp@value)
	movf	(log@x+1),w
	movwf	(frexp@value+1)
	movf	(log@x+2),w
	movwf	(frexp@value+2)
	fcall	_frexp
	movf	(0+(?_frexp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?_frexp)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?_frexp)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(log@x)
	movf	(1+(?___ftadd)),w
	movwf	(log@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(log@x+2)
	line	33
	
l3197:	
	movlw	low(-1)
	addwf	(log@exponent),f
	skipnc
	incf	(log@exponent+1),f
	movlw	high(-1)
	addwf	(log@exponent+1),f
	line	34
	
l3199:	
	movf	(log@x),w
	movwf	(eval_poly@x)
	movf	(log@x+1),w
	movwf	(eval_poly@x+1)
	movf	(log@x+2),w
	movwf	(eval_poly@x+2)
	movlw	((log@coeff)-__stringbase)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(08h)
	movwf	(eval_poly@n)
	movlw	high(08h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(log@x)
	movf	(1+(?_eval_poly)),w
	movwf	(log@x+1)
	movf	(2+(?_eval_poly)),w
	movwf	(log@x+2)
	line	35
	
l3201:	
	movf	(log@x),w
	movwf	(___ftadd@f1)
	movf	(log@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(log@x+2),w
	movwf	(___ftadd@f1+2)
	movlw	0x72
	movwf	(___ftmul@f1)
	movlw	0x31
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(log@exponent+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(log@exponent),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_log)
	movf	(1+(?___ftadd)),w
	movwf	(?_log+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_log+2)
	goto	l789
	
l3203:	
	line	36
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3    3[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2   12[BANK1 ] int 
;;  sign            1   14[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       9       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      12       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
global __ptext3
__ptext3:	;psect for function _exp
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
;incstack = 0
	opt	stack 3
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l3205:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	iorwf	(exp@x+1)^080h,w
	iorwf	(exp@x)^080h,w
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l3211
u4460:
	line	32
	
l3207:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x80
	movwf	(?_exp+1)^080h
	movlw	0x3f
	movwf	(?_exp+2)^080h
	goto	l731
	
l3209:	
	goto	l731
	
l730:	
	line	34
	
l3211:	
	movlw	0x72
	movwf	(___ftge@ff1)
	movlw	0x31
	movwf	(___ftge@ff1+1)
	movlw	0x44
	movwf	(___ftge@ff1+2)
	movf	(exp@x)^080h,w
	movwf	(___ftge@ff2)
	movf	(exp@x+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(exp@x+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4471
	goto	u4470
u4471:
	goto	l3221
u4470:
	line	35
	
l3213:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	36
	goto	l3217
	
l3215:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x80
	movwf	(?_exp+1)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	goto	l731
	
l734:	
	
l3217:	
	movlw	0xff
	movwf	(?_exp)^080h
	movlw	0x7f
	movwf	(?_exp+1)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	goto	l731
	
l736:	
	goto	l731
	
l3219:	
	goto	l731
	line	37
	
l732:	
	line	38
	
l3221:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	movwf	(___ftge@ff1)
	movf	(exp@x+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x49
	movwf	(___ftge@ff2)
	movlw	0x3a
	movwf	(___ftge@ff2+1)
	movlw	0xc4
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4481
	goto	u4480
u4481:
	goto	l3227
u4480:
	line	39
	
l3223:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	40
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp+2)^080h
	goto	l731
	
l3225:	
	goto	l731
	line	41
	
l737:	
	line	43
	
l3227:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	movwf	(___ftge@ff1)
	movf	(exp@x+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	movlw	0
	btfss	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l3229:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u4490
	goto	l3233
u4490:
	line	45
	
l3231:	
	movf	(exp@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(exp@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(exp@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)^080h
	goto	l3233
	
l738:	
	line	46
	
l3233:	
	movlw	0xaa
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xb8
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	47
	
l3235:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(floor@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(floor@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(floor@x+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$703)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$703+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$703+2)^080h
	
l3237:	
	movf	(_exp$703)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$703+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$703+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent+1)^080h
	addwf	(exp@exponent+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent)^080h
	addwf	(exp@exponent)^080h

	line	48
	
l3239:	
	movf	(exp@exponent+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(exp@exponent)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	49
	
l3241:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eval_poly@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eval_poly@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eval_poly@x+2)
	movlw	((exp@coeff)-__stringbase)&0ffh
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(09h)
	movwf	(eval_poly@n)
	movlw	high(09h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(ldexp@value)
	movf	(1+(?_eval_poly)),w
	movwf	(ldexp@value+1)
	movf	(2+(?_eval_poly)),w
	movwf	(ldexp@value+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp+1)
	addwf	(ldexp@newexp+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp)
	addwf	(ldexp@newexp)

	fcall	_ldexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	50
	
l3243:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u4500
	goto	l739
u4500:
	goto	l3249
	line	52
	
l3245:	
	goto	l3249
	
l3247:	
	movlw	0x0
	movwf	(_exp$484)^080h
	movlw	0x80
	movwf	(_exp$484+1)^080h
	movlw	0x7f
	movwf	(_exp$484+2)^080h
	goto	l744
	
l742:	
	
l3249:	
	movlw	0xff
	movwf	(_exp$484)^080h
	movlw	0x7f
	movwf	(_exp$484+1)^080h
	movlw	0x7f
	movwf	(_exp$484+2)^080h
	
l744:	
	movf	(exp@x+2)^080h,w
	xorwf	(_exp$484+2)^080h,w
	skipz
	goto	u4515
	movf	(exp@x+1)^080h,w
	xorwf	(_exp$484+1)^080h,w
	skipz
	goto	u4515
	movf	(exp@x)^080h,w
	xorwf	(_exp$484)^080h,w
u4515:
	skipz
	goto	u4511
	goto	u4510
u4511:
	goto	l3255
u4510:
	line	53
	
l3251:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp+2)^080h
	goto	l731
	
l3253:	
	goto	l731
	
l740:	
	line	54
	
l3255:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x80
	movwf	(___ftdiv@f1+1)
	movlw	0x3f
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+2)^080h
	goto	l731
	
l3257:	
	goto	l731
	line	55
	
l739:	
	line	56
	line	57
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   71[BANK0 ] unsigned char 
;;  newexp          2   74[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   71[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       3       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
global __ptext4
__ptext4:	;psect for function _ldexp
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
;incstack = 0
	opt	stack 4
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l2881:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l2887
u3940:
	line	280
	
l2883:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l763
	
l2885:	
	goto	l763
	
l762:	
	line	282
	
l2887:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	rlf	0+(ldexp@value)+01h,w
	rlf	0+(ldexp@value)+01h,w
	andlw	1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	287
	
l2889:	
	btfss	(ldexp@newexp+1),7
	goto	u3951
	goto	u3950
u3951:
	goto	l2897
u3950:
	line	288
	
l2891:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	289
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l763
	
l2893:	
	goto	l763
	line	290
	
l2895:	
	goto	l2923
	line	291
	
l764:	
	
l2897:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3965
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u3965:

	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l2921
u3960:
	line	292
	
l2899:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	293
	
l2901:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value),w
	movwf	(___ftge@ff1)
	movf	(ldexp@value+1),w
	movwf	(___ftge@ff1+1)
	movf	(ldexp@value+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3971
	goto	u3970
u3971:
	goto	l2917
u3970:
	goto	l2907
	line	294
	
l2903:	
	goto	l2907
	
l2905:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ldexp$521)^080h
	movlw	0x80
	movwf	(_ldexp$521+1)^080h
	movlw	0x7f
	movwf	(_ldexp$521+2)^080h
	goto	l2909
	
l769:	
	
l2907:	
	movlw	0xff
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ldexp$521)^080h
	movlw	0x7f
	movwf	(_ldexp$521+1)^080h
	movlw	0x7f
	movwf	(_ldexp$521+2)^080h
	goto	l2909
	
l771:	
	
l2909:	
	movf	(_ldexp$521)^080h,w
	movwf	(___ftneg@f1)
	movf	(_ldexp$521+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(_ldexp$521+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movf	(1+(?___ftneg)),w
	movwf	(?_ldexp+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_ldexp+2)
	goto	l763
	
l2911:	
	goto	l763
	
l2913:	
	goto	l2923
	line	295
	
l767:	
	line	296
	goto	l2917
	
l2915:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l763
	
l774:	
	
l2917:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l763
	
l776:	
	goto	l763
	
l2919:	
	goto	l763
	
l772:	
	line	297
	goto	l2923
	line	298
	
l766:	
	line	300
	
l2921:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	movf	(ldexp@newexp),w
	andlw	01h
	movwf	(??_ldexp+0)+0
	rrf	(??_ldexp+0)+0,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+01h,w
	xorwf	(??_ldexp+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+01h
	goto	l2923
	line	305
	
l777:	
	goto	l2923
	
l765:	
	line	306
	
l2923:	
	goto	l763
	
l2925:	
	line	307
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   63[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   67[BANK0 ] int 
;;  expon           2   70[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   63[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
global __ptext5
__ptext5:	;psect for function _floor
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
;incstack = 0
	opt	stack 3
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l2843:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@x),w
	movwf	(frexp@value)
	movf	(floor@x+1),w
	movwf	(frexp@value+1)
	movf	(floor@x+2),w
	movwf	(frexp@value+2)
	movlw	(floor@expon)&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l2845:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u3891
	goto	u3890
u3891:
	goto	l2857
u3890:
	line	20
	
l2847:	
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3901
	goto	u3900
u3901:
	goto	l2853
u3900:
	line	21
	
l2849:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l751
	
l2851:	
	goto	l751
	
l750:	
	line	22
	
l2853:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l751
	
l2855:	
	goto	l751
	line	23
	
l749:	
	line	24
	
l2857:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l2861
u3910:
	line	25
	
l2859:	
	goto	l751
	
l752:	
	line	26
	
l2861:	
	movf	(floor@x),w
	movwf	(___fttol@f1)
	movf	(floor@x+1),w
	movwf	(___fttol@f1+1)
	movf	(floor@x+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(___altoft@c+3)
	movf	(2+(?___fttol)),w
	movwf	(___altoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___altoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(floor@i),w
	movwf	(___ftge@ff2)
	movf	(floor@i+1),w
	movwf	(___ftge@ff2+1)
	movf	(floor@i+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3921
	goto	u3920
u3921:
	goto	l2867
u3920:
	line	28
	
l2863:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(floor@i),w
	movwf	(___ftadd@f2)
	movf	(floor@i+1),w
	movwf	(___ftadd@f2+1)
	movf	(floor@i+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	l751
	
l2865:	
	goto	l751
	
l753:	
	line	29
	
l2867:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l751
	
l2869:	
	line	30
	
l751:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] int 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
global __ptext6
__ptext6:	;psect for function _frexp
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 5
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l2495:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l2503
u3220:
	line	257
	
l2497:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	258
	
l2499:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l759
	
l2501:	
	goto	l759
	line	259
	
l758:	
	line	261
	
l2503:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l2505:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l2507:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l2509:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l2511:	
	goto	l759
	
l2513:	
	line	274
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   55[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   62[BANK0 ] unsigned char 
;;  exp             1   61[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   55[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
global __ptext7
__ptext7:	;psect for function ___altoft
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l2203:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l2205:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l2207:	
	btfss	(___altoft@c+3),7
	goto	u2461
	goto	u2460
u2461:
	goto	l2213
u2460:
	line	48
	
l2209:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l2213
	line	50
	
l389:	
	line	52
	goto	l2213
	
l391:	
	line	53
	
l2211:	
	movlw	01h
u2475:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u2475

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l2213
	line	55
	
l390:	
	line	52
	
l2213:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2211
u2480:
	goto	l2215
	
l392:	
	line	56
	
l2215:	
	movf	(___altoft@c),w
	movwf	(___ftpack@arg)
	movf	(___altoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___altoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l393
	
l2217:	
	line	57
	
l393:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   61[BANK0 ] float 
;;  d               1   64[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   65[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   68[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   61[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
global __ptext8
__ptext8:	;psect for function _eval_poly
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
;incstack = 0
	opt	stack 3
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l2871:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(eval_poly@n),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(eval_poly@res)
	fcall	stringdir
	movwf	(eval_poly@res+1)
	fcall	stringdir
	movwf	(eval_poly@res+2)
	line	9
	goto	l2875
	
l797:	
	line	10
	
l2873:	
	movlw	(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(-1)
	addwf	(eval_poly@n),f
	skipnc
	incf	(eval_poly@n+1),f
	movlw	high(-1)
	addwf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(___ftadd@f1)
	fcall	stringdir
	movwf	(___ftadd@f1+1)
	fcall	stringdir
	movwf	(___ftadd@f1+2)
	movf	(eval_poly@res),w
	movwf	(___ftmul@f1)
	movf	(eval_poly@res+1),w
	movwf	(___ftmul@f1+1)
	movf	(eval_poly@res+2),w
	movwf	(___ftmul@f1+2)
	movf	(eval_poly@x),w
	movwf	(___ftmul@f2)
	movf	(eval_poly@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(eval_poly@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	goto	l2875
	
l796:	
	line	9
	
l2875:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l2873
u3930:
	goto	l2877
	
l798:	
	line	11
	
l2877:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l799
	
l2879:	
	line	12
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
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
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext9
__ptext9:	;psect for function ___ftdiv
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2741:	
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
	goto	u3661
	goto	u3660
u3661:
	goto	l2747
u3660:
	line	56
	
l2743:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l530
	
l2745:	
	goto	l530
	
l529:	
	line	57
	
l2747:	
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
	goto	u3671
	goto	u3670
u3671:
	goto	l2753
u3670:
	line	58
	
l2749:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l530
	
l2751:	
	goto	l530
	
l531:	
	line	59
	
l2753:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2755:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2757:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3685:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3680:
	addlw	-1
	skipz
	goto	u3685
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2759:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3695:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3690:
	addlw	-1
	skipz
	goto	u3695
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2761:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2763:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2765:	
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
	goto	l2767
	line	69
	
l532:	
	line	70
	
l2767:	
	movlw	01h
u3705:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3705
	line	71
	
l2769:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3715
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3715
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3715:
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l2775
u3710:
	line	72
	
l2771:	
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
	
l2773:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2775
	line	74
	
l533:	
	line	75
	
l2775:	
	movlw	01h
u3725:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3725
	line	76
	
l2777:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l2767
u3730:
	goto	l2779
	
l534:	
	line	77
	
l2779:	
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
	goto	l530
	
l2781:	
	line	78
	
l530:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext10
__ptext10:	;psect for function ___awtoft
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2729:	
	clrf	(___awtoft@sign)
	line	37
	
l2731:	
	btfss	(___awtoft@c+1),7
	goto	u3651
	goto	u3650
u3651:
	goto	l2737
u3650:
	line	38
	
l2733:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l2735:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l2737
	line	40
	
l456:	
	line	41
	
l2737:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l457
	
l2739:	
	line	42
	
l457:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	_init_I2C_Master

;; *************** function _init_I2C_Master *****************
;; Defined at:
;;		line 186 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	186
global __ptext11
__ptext11:	;psect for function _init_I2C_Master
psect	text11
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	186
	global	__size_of_init_I2C_Master
	__size_of_init_I2C_Master	equ	__end_of_init_I2C_Master-_init_I2C_Master
	
_init_I2C_Master:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C_Master: [wreg+status,2]
	line	187
	
l3299:	
;LE7-3.c: 187: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	188
;LE7-3.c: 188: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	189
	
l3301:	
;LE7-3.c: 189: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	190
	
l3303:	
;LE7-3.c: 190: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	192
	
l3305:	
;LE7-3.c: 192: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	193
;LE7-3.c: 193: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	194
	
l99:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Master
	__end_of_init_I2C_Master:
	signat	_init_I2C_Master,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 118 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
;;		_delay_ms
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	118
global __ptext12
__ptext12:	;psect for function _initLCD
psect	text12
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	118
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	119
	
l3307:	
;LE7-3.c: 119: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@cnt)
	movlw	high(01h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	120
;LE7-3.c: 120: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	121
;LE7-3.c: 121: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	122
;LE7-3.c: 122: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	123
;LE7-3.c: 123: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	124
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_dispT

;; *************** function _dispT *****************
;; Defined at:
;;		line 159 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   42[BANK1 ] int 
;;  val             8   34[BANK1 ] unsigned char [8]
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
;;      Locals:         0       0      10       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      10       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;;		_instCtrl
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	159
global __ptext13
__ptext13:	;psect for function _dispT
psect	text13
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	159
	global	__size_of_dispT
	__size_of_dispT	equ	__end_of_dispT-_dispT
	
_dispT:	
;incstack = 0
	opt	stack 3
; Regs used in _dispT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	160
	
l3355:	
;LE7-3.c: 160: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	162
;LE7-3.c: 162: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	163
;LE7-3.c: 163: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	164
;LE7-3.c: 164: dataCtrl('m');
	movlw	(06Dh)
	fcall	_dataCtrl
	line	165
;LE7-3.c: 165: dataCtrl('p');
	movlw	(070h)
	fcall	_dataCtrl
	line	166
;LE7-3.c: 166: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	167
;LE7-3.c: 167: dataCtrl('r');
	movlw	(072h)
	fcall	_dataCtrl
	line	168
;LE7-3.c: 168: dataCtrl('a');
	movlw	(061h)
	fcall	_dataCtrl
	line	169
;LE7-3.c: 169: dataCtrl('t');
	movlw	(074h)
	fcall	_dataCtrl
	line	170
;LE7-3.c: 170: dataCtrl('u');
	movlw	(075h)
	fcall	_dataCtrl
	line	171
;LE7-3.c: 171: dataCtrl('r');
	movlw	(072h)
	fcall	_dataCtrl
	line	172
;LE7-3.c: 172: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	173
;LE7-3.c: 173: dataCtrl(':');
	movlw	(03Ah)
	fcall	_dataCtrl
	line	176
	
l3357:	
;LE7-3.c: 175: char val[8];
;LE7-3.c: 176: sprintf(val, "%.1f", T);
	movlw	((STR_2)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispT+0)+0
	movf	(??_dispT+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_T)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_T+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_T+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(dispT@val)&0ffh
	fcall	_sprintf
	line	178
	
l3359:	
;LE7-3.c: 178: for (int i = 0; val[i] != '\0'; i++) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(dispT@i)^080h
	clrf	(dispT@i+1)^080h
	goto	l3365
	
l94:	
	line	179
	
l3361:	
;LE7-3.c: 179: dataCtrl(val[i]);
	movf	(dispT@i)^080h,w
	addlw	dispT@val&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_dataCtrl
	line	178
	
l3363:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(dispT@i)^080h,f
	skipnc
	incf	(dispT@i+1)^080h,f
	movlw	high(01h)
	addwf	(dispT@i+1)^080h,f
	goto	l3365
	
l93:	
	
l3365:	
	movf	(dispT@i)^080h,w
	addlw	dispT@val&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,f
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l3361
u4600:
	goto	l3367
	
l95:	
	line	181
	
l3367:	
;LE7-3.c: 180: }
;LE7-3.c: 181: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	182
;LE7-3.c: 182: dataCtrl('C');
	movlw	(043h)
	fcall	_dataCtrl
	line	183
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_dispT
	__end_of_dispT:
	signat	_dispT,88
	global	_dispRH

;; *************** function _dispRH *****************
;; Defined at:
;;		line 135 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  val             4   34[BANK1 ] unsigned char [4]
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
;;      Locals:         0       0       4       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       4       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;;		_instCtrl
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	135
global __ptext14
__ptext14:	;psect for function _dispRH
psect	text14
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	135
	global	__size_of_dispRH
	__size_of_dispRH	equ	__end_of_dispRH-_dispRH
	
_dispRH:	
;incstack = 0
	opt	stack 3
; Regs used in _dispRH: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	136
	
l3339:	
;LE7-3.c: 136: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	138
;LE7-3.c: 138: dataCtrl('H');
	movlw	(048h)
	fcall	_dataCtrl
	line	139
;LE7-3.c: 139: dataCtrl('u');
	movlw	(075h)
	fcall	_dataCtrl
	line	140
;LE7-3.c: 140: dataCtrl('m');
	movlw	(06Dh)
	fcall	_dataCtrl
	line	141
;LE7-3.c: 141: dataCtrl('i');
	movlw	(069h)
	fcall	_dataCtrl
	line	142
;LE7-3.c: 142: dataCtrl('d');
	movlw	(064h)
	fcall	_dataCtrl
	line	143
;LE7-3.c: 143: dataCtrl('i');
	movlw	(069h)
	fcall	_dataCtrl
	line	144
;LE7-3.c: 144: dataCtrl('t');
	movlw	(074h)
	fcall	_dataCtrl
	line	145
;LE7-3.c: 145: dataCtrl('y');
	movlw	(079h)
	fcall	_dataCtrl
	line	146
;LE7-3.c: 146: dataCtrl(':');
	movlw	(03Ah)
	fcall	_dataCtrl
	line	149
	
l3341:	
;LE7-3.c: 148: char val[4];
;LE7-3.c: 149: val[2] = ' ';
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispRH+0)+0
	movf	(??_dispRH+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(dispRH@val)^080h+02h
	line	150
	
l3343:	
;LE7-3.c: 150: val[3] = ' ';
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispRH+0)+0
	movf	(??_dispRH+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(dispRH@val)^080h+03h
	line	151
	
l3345:	
;LE7-3.c: 151: sprintf(val, "%d", RH);
	movlw	((STR_1)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispRH+0)+0
	movf	(??_dispRH+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_RH+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_RH)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(dispRH@val)&0ffh
	fcall	_sprintf
	line	153
	
l3347:	
;LE7-3.c: 153: dataCtrl(val[0]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(dispRH@val)^080h,w
	fcall	_dataCtrl
	line	154
	
l3349:	
;LE7-3.c: 154: dataCtrl(val[1]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(dispRH@val)^080h+01h,w
	fcall	_dataCtrl
	line	155
	
l3351:	
;LE7-3.c: 155: dataCtrl(val[2]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(dispRH@val)^080h+02h,w
	fcall	_dataCtrl
	line	156
	
l3353:	
;LE7-3.c: 156: dataCtrl('%');
	movlw	(025h)
	fcall	_dataCtrl
	line	157
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_dispRH
	__end_of_dispRH:
	signat	_dispRH,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> dispT@val(8), dispRH@val(4), 
;;  f               1   67[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(5), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   27[BANK1 ] PTR unsigned char 
;;		 -> dispT@val(8), dispRH@val(4), 
;;  vd              4    7[BANK1 ] unsigned long 
;;  vd              4   11[BANK1 ] unsigned long 
;;  _val            4   23[BANK1 ] struct .
;;  fval            3   30[BANK1 ] struct .
;;  integ           3   18[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   28[BANK1 ] int 
;;  exp             2   21[BANK1 ] int 
;;  flag            2   16[BANK1 ] unsigned short 
;;  width           2    0        int 
;;  c               1   33[BANK1 ] char 
;;  ap              1   15[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   67[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      34       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      10      34       0       0
;;Total ram usage:       44 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		___lldiv
;;		___llmod
;;		___lltoft
;;		___wmul
;;		__div_to_l_
;;		__tdiv_to_l_
;;		_fround
;;		_isdigit
;;		_scale
;; This function is called by:
;;		_dispRH
;;		_dispT
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext15
__ptext15:	;psect for function _sprintf
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	line	542
	
l2947:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 504: int prec;
;doprnt.c: 508: unsigned short flag;
;doprnt.c: 515: char d;
;doprnt.c: 516: double fval, integ;
;doprnt.c: 517: int exp;
;doprnt.c: 518: double ival;
;doprnt.c: 519: union {
;doprnt.c: 520: unsigned long _val;
;doprnt.c: 521: struct {
;doprnt.c: 522: const char * _cp;
;doprnt.c: 523: unsigned _len;
;doprnt.c: 524: } _str;
;doprnt.c: 525: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@ap)^080h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l3171
	
l156:	
	line	547
	
l2949:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3981
	goto	u3980
u3981:
	goto	l2955
u3980:
	line	550
	
l2951:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2953:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	551
;doprnt.c: 551: continue;
	goto	l3171
	line	552
	
l157:	
	line	557
	
l2955:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	620
	
l2957:	
;doprnt.c: 620: if(*f == '.') {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l2971
u3990:
	line	621
	
l2959:	
;doprnt.c: 621: flag |= 0x4000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	622
	
l2961:	
;doprnt.c: 622: f++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	630
	
l2963:	
;doprnt.c: 629: {
;doprnt.c: 630: prec = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
;doprnt.c: 631: while(isdigit((unsigned)*f))
	goto	l2969
	
l160:	
	line	632
	
l2965:	
;doprnt.c: 632: prec = prec*10 + *f++ - '0';
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(sprintf@prec)^080h,w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(sprintf@prec)^080h
	
l2967:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	goto	l2969
	
l159:	
	line	631
	
l2969:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4001
	goto	u4000
u4001:
	goto	l2965
u4000:
	goto	l2977
	
l161:	
	line	634
;doprnt.c: 633: }
;doprnt.c: 634: } else {
	goto	l2977
	
l158:	
	line	635
	
l2971:	
;doprnt.c: 635: prec = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	637
	
l2973:	
;doprnt.c: 637: flag |= 0x1000;
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l2977
	line	639
	
l162:	
	line	644
;doprnt.c: 639: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l2977
	line	646
;doprnt.c: 646: case 0:
	
l164:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l3173
	line	671
;doprnt.c: 671: case 'f':
	
l166:	
	line	672
;doprnt.c: 672: flag |= 0x400;
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	673
;doprnt.c: 673: break;
	goto	l2979
	line	706
;doprnt.c: 706: case 'd':
	
l168:	
	goto	l2979
	line	707
	
l169:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2979
	line	811
;doprnt.c: 811: default:
	
l170:	
	line	822
;doprnt.c: 822: continue;
	goto	l3171
	line	831
	
l2975:	
;doprnt.c: 831: }
	goto	l2979
	line	644
	
l163:	
	
l2977:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3173
	xorlw	100^0	; case 100
	skipnz
	goto	l2979
	xorlw	102^100	; case 102
	skipnz
	goto	l166
	xorlw	105^102	; case 105
	skipnz
	goto	l2979
	goto	l3171
	opt asmopt_on

	line	831
	
l167:	
	line	834
	
l2979:	
;doprnt.c: 834: if(flag & (0x700)) {
	movlw	low(0700h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u4011
	goto	u4010
u4011:
	goto	l3121
u4010:
	line	836
	
l2981:	
;doprnt.c: 836: if(flag & 0x1000)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l2985
u4020:
	line	838
	
l2983:	
;doprnt.c: 838: prec = 6;
	movlw	low(06h)
	movwf	(sprintf@prec)^080h
	movlw	high(06h)
	movwf	((sprintf@prec)^080h)+1
	goto	l2985
	
l172:	
	line	839
	
l2985:	
;doprnt.c: 839: fval = (*(double *)__va_arg((*(double **)ap), (double)0));
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	
l2987:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@ap)^080h,f
	line	840
	
l2989:	
;doprnt.c: 840: if(fval < 0.0) {
	movf	(sprintf@fval)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4031
	goto	u4030
u4031:
	goto	l2995
u4030:
	line	841
	
l2991:	
;doprnt.c: 841: fval = -fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	movwf	(___ftneg@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^080h
	line	842
	
l2993:	
;doprnt.c: 842: flag |= 0x03;
	movlw	low(03h)
	iorwf	(sprintf@flag)^080h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^080h,f
	goto	l2995
	line	843
	
l173:	
	line	844
	
l2995:	
;doprnt.c: 843: }
;doprnt.c: 844: exp = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	845
	
l2997:	
;doprnt.c: 845: if( fval!=0) {
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u4041
	goto	u4040
u4041:
	goto	l3023
u4040:
	line	846
	
l2999:	
;doprnt.c: 846: (void)(*(&exp) = ((*(unsigned long *)&fval >> 15) & 255) - 126);
	movlw	low(sprintf@fval)
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+3
	movlw	0Fh
u4055:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u4050:
	addlw	-1
	skipz
	goto	u4055
	movlw	low(0FFh)
	andwf	0+(??_sprintf+0)+0,w
	movwf	(??_sprintf+4)+0
	movlw	high(0FFh)
	andwf	1+(??_sprintf+0)+0,w
	movwf	1+(??_sprintf+4)+0
	movf	0+(??_sprintf+4)+0,w
	addlw	low(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+4)+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(sprintf@exp)^080h
	line	847
	
l3001:	
;doprnt.c: 847: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	line	848
	
l3003:	
;doprnt.c: 848: exp *= 3;
	movlw	low(03h)
	movwf	(___wmul@multiplier)
	movlw	high(03h)
	movwf	((___wmul@multiplier))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	movf	(sprintf@exp)^080h,w
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___wmul)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	849
	
l3005:	
;doprnt.c: 849: exp /= 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(sprintf@exp)^080h,w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	850
	
l3007:	
;doprnt.c: 850: if(exp < 0)
	btfss	(sprintf@exp+1)^080h,7
	goto	u4061
	goto	u4060
u4061:
	goto	l3011
u4060:
	line	851
	
l3009:	
;doprnt.c: 851: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l3011
	
l175:	
	line	855
	
l3011:	
;doprnt.c: 855: integ = scale(-exp);
	decf	(sprintf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	856
	
l3013:	
;doprnt.c: 856: integ *= fval;
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	857
	
l3015:	
;doprnt.c: 857: if(integ < 1.0)
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4071
	goto	u4070
u4071:
	goto	l3019
u4070:
	line	858
	
l3017:	
;doprnt.c: 858: exp--;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l3023
	line	859
	
l176:	
	
l3019:	
;doprnt.c: 859: else if(integ >= 10.0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u4081
	goto	u4080
u4081:
	goto	l3023
u4080:
	line	860
	
l3021:	
;doprnt.c: 860: exp++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@exp+1)^080h,f
	goto	l3023
	
l178:	
	goto	l3023
	line	861
	
l177:	
	goto	l3023
	
l174:	
	line	1121
	
l3023:	
;doprnt.c: 861: }
;doprnt.c: 1121: if(prec <= 12)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4095
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u4095:

	skipnc
	goto	u4091
	goto	u4090
u4091:
	goto	l3027
u4090:
	line	1122
	
l3025:	
;doprnt.c: 1122: fval += fround(prec);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_fround)),w
	movwf	(___ftadd@f1)
	movf	(1+(?_fround)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?_fround)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	goto	l3027
	
l179:	
	line	1125
	
l3027:	
;doprnt.c: 1125: if((exp > 9)||(fval != 0 && (unsigned long)fval == 0 && exp > 1)) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4105
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u4105:

	skipnc
	goto	u4101
	goto	u4100
u4101:
	goto	l3035
u4100:
	
l3029:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u4111
	goto	u4110
u4111:
	goto	l3051
u4110:
	
l3031:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l3051
u4120:
	
l3033:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4135
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u4135:

	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l3051
u4130:
	goto	l3035
	
l182:	
	line	1129
	
l3035:	
;doprnt.c: 1129: if(integ < 4.294967296){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x70
	movwf	(___ftge@ff2)
	movlw	0x89
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4141
	goto	u4140
u4141:
	goto	l3039
u4140:
	line	1130
	
l3037:	
;doprnt.c: 1130: exp -= (sizeof dpowers/sizeof dpowers[0])-1;
	movlw	low(-9)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-9)
	addwf	(sprintf@exp+1)^080h,f
	line	1131
;doprnt.c: 1131: }else{
	goto	l3041
	
l183:	
	line	1132
	
l3039:	
;doprnt.c: 1132: exp -= (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	low(-8)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-8)
	addwf	(sprintf@exp+1)^080h,f
	goto	l3041
	line	1133
	
l184:	
	line	1134
	
l3041:	
;doprnt.c: 1133: }
;doprnt.c: 1134: integ = scale(exp);
	movf	(sprintf@exp)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	1135
;doprnt.c: 1135: _val._val = ((sizeof(double)== 3) ? _tdiv_to_l_(fval,integ) : _div_to_l_(fval,integ));
	goto	l3045
	
l3043:	
	movf	(sprintf@fval)^080h,w
	movwf	(__div_to_l_@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(__div_to_l_@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(__div_to_l_@f1+2)
	movf	(sprintf@integ)^080h,w
	movwf	(__div_to_l_@f2)
	movf	(sprintf@integ+1)^080h,w
	movwf	(__div_to_l_@f2+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(__div_to_l_@f2+2)
	fcall	__div_to_l_
	movf	(3+(?__div_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$190+3)^080h
	movf	(2+(?__div_to_l_)),w
	movwf	(_sprintf$190+2)^080h
	movf	(1+(?__div_to_l_)),w
	movwf	(_sprintf$190+1)^080h
	movf	(0+(?__div_to_l_)),w
	movwf	(_sprintf$190)^080h

	goto	l3047
	
l186:	
	
l3045:	
	movf	(sprintf@fval)^080h,w
	movwf	(__tdiv_to_l_@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(__tdiv_to_l_@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(__tdiv_to_l_@f1+2)
	movf	(sprintf@integ)^080h,w
	movwf	(__tdiv_to_l_@f2)
	movf	(sprintf@integ+1)^080h,w
	movwf	(__tdiv_to_l_@f2+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(__tdiv_to_l_@f2+2)
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$190+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$190+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$190+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$190)^080h

	goto	l3047
	
l188:	
	
l3047:	
	movf	(_sprintf$190+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$190+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$190+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$190)^080h,w
	movwf	(sprintf@_val)^080h

	line	1138
	
l3049:	
;doprnt.c: 1138: fval = 0.0;
	movlw	0x0
	movwf	(sprintf@fval)^080h
	movlw	0x0
	movwf	(sprintf@fval+1)^080h
	movlw	0x0
	movwf	(sprintf@fval+2)^080h
	line	1139
;doprnt.c: 1139: } else {
	goto	l3055
	
l180:	
	line	1140
	
l3051:	
;doprnt.c: 1140: _val._val = (unsigned long)fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1141
;doprnt.c: 1141: fval -= (double)_val._val;
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___lltoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___lltoft)),w
	movwf	(___ftsub@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1142
	
l3053:	
;doprnt.c: 1142: exp = 0;
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	goto	l3055
	line	1143
	
l189:	
	line	1145
	
l3055:	
;doprnt.c: 1143: }
;doprnt.c: 1145: for(c = 1 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	
l3057:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l3061
u4150:
	goto	l3069
	
l3059:	
	goto	l3069
	line	1146
	
l190:	
	
l3061:	
;doprnt.c: 1146: if(_val._val < dpowers[c])
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4165:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4165
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u4175
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u4175
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u4175
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val)^080h,w
u4175:
	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l3065
u4170:
	goto	l3069
	line	1147
	
l3063:	
;doprnt.c: 1147: break;
	goto	l3069
	
l192:	
	line	1145
	
l3065:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	
l3067:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l3061
u4180:
	goto	l3069
	
l191:	
	line	1197
	
l3069:	
;doprnt.c: 1184: {
;doprnt.c: 1197: if(flag & 0x03)
	movlw	low(03h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u4191
	goto	u4190
u4191:
	goto	l194
u4190:
	line	1199
	
l3071:	
;doprnt.c: 1199: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3073:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l194
	
l193:	
	line	1205
;doprnt.c: 1204: }
;doprnt.c: 1205: while(c--) {
	goto	l194
	
l195:	
	line	1210
	
l3075:	
;doprnt.c: 1209: {
;doprnt.c: 1210: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4205:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4205
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd)^080h

	line	1211
	
l3077:	
;doprnt.c: 1211: vd %= 10;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend)

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd)^080h

	line	1212
	
l3079:	
;doprnt.c: 1212: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1215
	
l194:	
	line	1205
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l3075
u4210:
	goto	l3087
	
l196:	
	line	1216
;doprnt.c: 1213: }
;doprnt.c: 1215: }
;doprnt.c: 1216: while(exp > 0) {
	goto	l3087
	
l198:	
	line	1217
	
l3081:	
;doprnt.c: 1217: ((*sp++ = ('0')));
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3083:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1218
	
l3085:	
;doprnt.c: 1218: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l3087
	line	1219
	
l197:	
	line	1216
	
l3087:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4225
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u4225:

	skipnc
	goto	u4221
	goto	u4220
u4221:
	goto	l3081
u4220:
	goto	l3089
	
l199:	
	line	1220
	
l3089:	
;doprnt.c: 1219: }
;doprnt.c: 1220: if(prec > (int)((sizeof dpowers/sizeof dpowers[0])-2))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4235
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u4235:

	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l3093
u4230:
	line	1221
	
l3091:	
;doprnt.c: 1221: c = (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l201
	line	1222
	
l200:	
	line	1223
	
l3093:	
;doprnt.c: 1222: else
;doprnt.c: 1223: c = prec;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	
l201:	
	line	1224
;doprnt.c: 1224: prec -= c;
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1228
;doprnt.c: 1228: if(c)
	movf	(sprintf@c)^080h,w
	skipz
	goto	u4240
	goto	l3099
u4240:
	line	1230
	
l3095:	
;doprnt.c: 1230: ((*sp++ = ('.')));
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3097:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l3099
	
l202:	
	line	1236
	
l3099:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(sprintf@c)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$700)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$700+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$700+2)^080h
	
l3101:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(_sprintf$700)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$700+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$700+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1237
;doprnt.c: 1237: while(c--) {
	goto	l3111
	
l204:	
	line	1238
	
l3103:	
;doprnt.c: 1238: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4255:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4255
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_192+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd_192+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd_192+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd_192)^080h

	line	1239
	
l3105:	
;doprnt.c: 1239: vd %= 10;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd_192+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd_192+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd_192+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@vd_192)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend)

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_192+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_192+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_192+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_192)^080h

	line	1240
	
l3107:	
;doprnt.c: 1240: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd_192)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1241
	
l3109:	
;doprnt.c: 1241: _val._val %= dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4265:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4265
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___llmod@divisor)
	fcall	stringdir
	movwf	(___llmod@divisor+1)
	fcall	stringdir
	movwf	(___llmod@divisor+2)
	fcall	stringdir
	movwf	(___llmod@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend)

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	goto	l3111
	line	1242
	
l203:	
	line	1237
	
l3111:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l3103
u4270:
	goto	l3119
	
l205:	
	line	1244
;doprnt.c: 1242: }
;doprnt.c: 1244: while(prec) {
	goto	l3119
	
l207:	
	line	1245
	
l3113:	
;doprnt.c: 1245: ((*sp++ = ('0')));
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3115:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1246
	
l3117:	
;doprnt.c: 1246: prec--;
	movlw	low(-1)
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^080h,f
	goto	l3119
	line	1247
	
l206:	
	line	1244
	
l3119:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u4281
	goto	u4280
u4281:
	goto	l3113
u4280:
	goto	l3171
	
l208:	
	line	1254
;doprnt.c: 1247: }
;doprnt.c: 1254: continue;
	goto	l3171
	line	1255
	
l171:	
	line	1268
	
l3121:	
;doprnt.c: 1255: }
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (long)(*(int *)__va_arg((*(int **)ap), (int)0));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	movlw	0
	btfsc	(sprintf@_val+1)^080h,7
	movlw	255
	movwf	(sprintf@_val+2)^080h
	movwf	(sprintf@_val+3)^080h
	
l3123:	
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@ap)^080h,f
	line	1270
	
l3125:	
;doprnt.c: 1270: if((long)_val._val < 0) {
	btfss	(sprintf@_val+3)^080h,7
	goto	u4291
	goto	u4290
u4291:
	goto	l3131
u4290:
	line	1271
	
l3127:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	low(03h)
	iorwf	(sprintf@flag)^080h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^080h,f
	line	1272
	
l3129:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val)^080h,f
	comf	(sprintf@_val+1)^080h,f
	comf	(sprintf@_val+2)^080h,f
	comf	(sprintf@_val+3)^080h,f
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	skipnz
	incf	(sprintf@_val+2)^080h,f
	skipnz
	incf	(sprintf@_val+3)^080h,f
	goto	l3131
	line	1273
	
l209:	
	line	1299
	
l3131:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1299: if(prec == 0 && _val._val == 0)
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l3137
u4300:
	
l3133:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l3137
u4310:
	line	1300
	
l3135:	
;doprnt.c: 1300: prec++;
	movlw	low(01h)
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@prec+1)^080h,f
	goto	l3137
	
l210:	
	line	1314
	
l3137:	
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l3141
u4320:
	goto	l3149
	
l3139:	
	goto	l3149
	line	1315
	
l211:	
	
l3141:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4335:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4335
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u4345
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u4345
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u4345
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val)^080h,w
u4345:
	skipnc
	goto	u4341
	goto	u4340
u4341:
	goto	l3145
u4340:
	goto	l3149
	line	1316
	
l3143:	
;doprnt.c: 1316: break;
	goto	l3149
	
l213:	
	line	1314
	
l3145:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	
l3147:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4351
	goto	u4350
u4351:
	goto	l3141
u4350:
	goto	l3149
	
l212:	
	line	1348
	
l3149:	
;doprnt.c: 1348: if(c < prec)
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u4365
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u4365:

	skipnc
	goto	u4361
	goto	u4360
u4361:
	goto	l3153
u4360:
	line	1349
	
l3151:	
;doprnt.c: 1349: c = prec;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l3157
	line	1350
	
l214:	
	
l3153:	
;doprnt.c: 1350: else if(prec < c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+2)+0
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u4375
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@prec)^080h,w
u4375:

	skipnc
	goto	u4371
	goto	u4370
u4371:
	goto	l3157
u4370:
	line	1351
	
l3155:	
;doprnt.c: 1351: prec = c;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	goto	l3157
	
l216:	
	goto	l3157
	line	1431
	
l215:	
	line	1447
	
l3157:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u4381
	goto	u4380
u4381:
	goto	l3169
u4380:
	line	1448
	
l3159:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3161:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l3169
	
l217:	
	line	1483
;doprnt.c: 1478: }
;doprnt.c: 1483: while(prec--) {
	goto	l3169
	
l219:	
	line	1498
	
l3163:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4395:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4395
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___llmod@dividend+3)
	movf	(2+(?___lldiv)),w
	movwf	(___llmod@dividend+2)
	movf	(1+(?___lldiv)),w
	movwf	(___llmod@dividend+1)
	movf	(0+(?___lldiv)),w
	movwf	(___llmod@dividend)

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	line	1533
	
l3165:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3167:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l3169
	line	1534
	
l218:	
	line	1483
	
l3169:	
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^080h,f
	movlw	high(-1)
	xorwf	((sprintf@prec+1)^080h),w
	skipz
	goto	u4405
	movlw	low(-1)
	xorwf	((sprintf@prec)^080h),w
u4405:

	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l3163
u4400:
	goto	l3171
	
l220:	
	goto	l3171
	line	1542
	
l155:	
	line	545
	
l3171:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l2949
u4410:
	goto	l3173
	
l221:	
	goto	l3173
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l165:	
	line	1547
	
l3173:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l222
	line	1549
	
l3175:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l222:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_scale

;; *************** function _scale *****************
;; Defined at:
;;		line 425 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   40[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	425
global __ptext16
__ptext16:	;psect for function _scale
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	425
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
;incstack = 0
	opt	stack 3
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scale@scl)
	line	428
	
l2557:	
;doprnt.c: 428: if(scl < 0) {
	btfss	(scale@scl),7
	goto	u3291
	goto	u3290
u3291:
	goto	l2579
u3290:
	line	429
	
l2559:	
;doprnt.c: 429: scl = -scl;
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	430
	
l2561:	
;doprnt.c: 430: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l2569
u3300:
	line	431
	
l2563:	
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$699)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$699+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$699+2)
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_scale$699),w
	movwf	(___ftmul@f2)
	movf	(_scale$699+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$699+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l147
	
l2565:	
	goto	l147
	
l2567:	
	goto	l2575
	line	432
	
l146:	
	
l2569:	
;doprnt.c: 432: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l2575
u3310:
	line	433
	
l2571:	
;doprnt.c: 433: return _npowers_[scl/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l147
	
l2573:	
	goto	l147
	
l149:	
	goto	l2575
	line	434
	
l148:	
	
l2575:	
;doprnt.c: 434: return _npowers_[scl];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l147
	
l2577:	
	goto	l147
	line	435
	
l145:	
	line	436
	
l2579:	
;doprnt.c: 435: }
;doprnt.c: 436: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l2587
u3320:
	line	437
	
l2581:	
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$699)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$699+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$699+2)
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_scale$699),w
	movwf	(___ftmul@f2)
	movf	(_scale$699+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$699+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l147
	
l2583:	
	goto	l147
	
l2585:	
	goto	l2593
	line	438
	
l150:	
	
l2587:	
;doprnt.c: 438: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l2593
u3330:
	line	439
	
l2589:	
;doprnt.c: 439: return _powers_[scl/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l147
	
l2591:	
	goto	l147
	
l152:	
	goto	l2593
	line	440
	
l151:	
	
l2593:	
;doprnt.c: 440: return _powers_[scl];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l147
	
l2595:	
	line	441
	
l147:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4219
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext17
__ptext17:	;psect for function _isdigit
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l2597:	
	clrf	(_isdigit$390)
	
l2599:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l2605
u3340:
	
l2601:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l2605
u3350:
	
l2603:	
	clrf	(_isdigit$390)
	incf	(_isdigit$390),f
	goto	l2605
	
l596:	
	
l2605:	
	rrf	(_isdigit$390),w
	
	goto	l597
	
l2607:	
	line	15
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	_fround

;; *************** function _fround *****************
;; Defined at:
;;		line 409 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   47[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	409
global __ptext18
__ptext18:	;psect for function _fround
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	409
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
;incstack = 0
	opt	stack 3
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fround@prec)
	line	413
	
l2535:	
;doprnt.c: 413: if(prec>=110)
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l2545
u3270:
	line	414
	
l2537:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_fround+4)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$697)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$697+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$697+2)
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_fround$697),w
	movwf	(___ftmul@f2)
	movf	(_fround$697+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$697+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$698)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$698+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$698+2)
	
l2539:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$698),w
	movwf	(___ftmul@f2)
	movf	(_fround$698+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$698+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l140
	
l2541:	
	goto	l140
	
l2543:	
	goto	l2553
	line	415
	
l139:	
	
l2545:	
;doprnt.c: 415: else if(prec > 10)
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l2553
u3280:
	line	416
	
l2547:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_fround+4)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$697)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$697+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$697+2)
	
l2549:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$697),w
	movwf	(___ftmul@f2)
	movf	(_fround$697+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$697+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l140
	
l2551:	
	goto	l140
	
l142:	
	goto	l2553
	line	417
	
l141:	
	
l2553:	
;doprnt.c: 417: return 0.5 * _npowers_[prec];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l140
	
l2555:	
	line	418
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4219
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
;;		_fround
;;		_scale
;;		_sprintf
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext19
__ptext19:	;psect for function ___ftmul
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2393:	
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
	goto	u2971
	goto	u2970
u2971:
	goto	l2399
u2970:
	line	68
	
l2395:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l562
	
l2397:	
	goto	l562
	
l561:	
	line	69
	
l2399:	
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
	goto	u2981
	goto	u2980
u2981:
	goto	l2405
u2980:
	line	70
	
l2401:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l562
	
l2403:	
	goto	l562
	
l563:	
	line	71
	
l2405:	
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
u2995:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2990:
	addlw	-1
	skipz
	goto	u2995
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
u3005:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3000:
	addlw	-1
	skipz
	goto	u3005
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
	
l2407:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2409:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2411:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2413:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2415:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2417
	line	135
	
l564:	
	line	136
	
l2417:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l2421
u3010:
	line	137
	
l2419:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3021
	addwf	(___ftmul@f3_as_product+1),f
u3021:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3022
	addwf	(___ftmul@f3_as_product+2),f
u3022:

	goto	l2421
	
l565:	
	line	138
	
l2421:	
	movlw	01h
u3035:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3035

	line	139
	
l2423:	
	movlw	01h
u3045:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3045
	line	140
	
l2425:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l2417
u3050:
	goto	l2427
	
l566:	
	line	143
	
l2427:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2429
	line	144
	
l567:	
	line	145
	
l2429:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l2433
u3060:
	line	146
	
l2431:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3071
	addwf	(___ftmul@f3_as_product+1),f
u3071:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3072
	addwf	(___ftmul@f3_as_product+2),f
u3072:

	goto	l2433
	
l568:	
	line	147
	
l2433:	
	movlw	01h
u3085:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3085

	line	148
	
l2435:	
	movlw	01h
u3095:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3095

	line	149
	
l2437:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l2429
u3100:
	goto	l2439
	
l569:	
	line	156
	
l2439:	
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
	goto	l562
	
l2441:	
	line	157
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    6[BANK0 ] unsigned char 
;;  product         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext20
__ptext20:	;psect for function ___bmul
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l2187:	
	clrf	(___bmul@product)
	goto	l2189
	line	42
	
l323:	
	line	43
	
l2189:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2193
u2440:
	line	44
	
l2191:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l2193
	
l324:	
	line	45
	
l2193:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l2195:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l2197:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2189
u2450:
	goto	l2199
	
l325:	
	line	50
	
l2199:	
	movf	(___bmul@product),w
	goto	l326
	
l2201:	
	line	51
	
l326:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext21
__ptext21:	;psect for function ___awmod
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2263:	
	clrf	(___awmod@sign)
	line	14
	
l2265:	
	btfss	(___awmod@dividend+1),7
	goto	u2591
	goto	u2590
u2591:
	goto	l2271
u2590:
	line	15
	
l2267:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2269:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2271
	line	17
	
l441:	
	line	18
	
l2271:	
	btfss	(___awmod@divisor+1),7
	goto	u2601
	goto	u2600
u2601:
	goto	l2275
u2600:
	line	19
	
l2273:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2275
	
l442:	
	line	20
	
l2275:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2611
	goto	u2610
u2611:
	goto	l2293
u2610:
	line	21
	
l2277:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2283
	
l445:	
	line	23
	
l2279:	
	movlw	01h
	
u2625:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2625
	line	24
	
l2281:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2283
	line	25
	
l444:	
	line	22
	
l2283:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2279
u2630:
	goto	l2285
	
l446:	
	goto	l2285
	line	26
	
l447:	
	line	27
	
l2285:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2645
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2645:
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2289
u2640:
	line	28
	
l2287:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2289
	
l448:	
	line	29
	
l2289:	
	movlw	01h
	
u2655:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2655
	line	30
	
l2291:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2285
u2660:
	goto	l2293
	
l449:	
	goto	l2293
	line	31
	
l443:	
	line	32
	
l2293:	
	movf	(___awmod@sign),w
	skipz
	goto	u2670
	goto	l2297
u2670:
	line	33
	
l2295:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2297
	
l450:	
	line	34
	
l2297:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l451
	
l2299:	
	line	35
	
l451:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext22
__ptext22:	;psect for function ___awdiv
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2219:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l2221:	
	btfss	(___awdiv@divisor+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l2227
u2490:
	line	16
	
l2223:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2225:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l2227
	line	18
	
l428:	
	line	19
	
l2227:	
	btfss	(___awdiv@dividend+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l2233
u2500:
	line	20
	
l2229:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2231:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2233
	line	22
	
l429:	
	line	23
	
l2233:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2235:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2511
	goto	u2510
u2511:
	goto	l2255
u2510:
	line	25
	
l2237:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2243
	
l432:	
	line	27
	
l2239:	
	movlw	01h
	
u2525:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2525
	line	28
	
l2241:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2243
	line	29
	
l431:	
	line	26
	
l2243:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2239
u2530:
	goto	l2245
	
l433:	
	goto	l2245
	line	30
	
l434:	
	line	31
	
l2245:	
	movlw	01h
	
u2545:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2545
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2555
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2555:
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l2251
u2550:
	line	33
	
l2247:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2249:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2251
	line	35
	
l435:	
	line	36
	
l2251:	
	movlw	01h
	
u2565:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2565
	line	37
	
l2253:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2245
u2570:
	goto	l2255
	
l436:	
	goto	l2255
	line	38
	
l430:	
	line	39
	
l2255:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2580
	goto	l2259
u2580:
	line	40
	
l2257:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2259
	
l437:	
	line	41
	
l2259:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l438
	
l2261:	
	line	42
	
l438:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	__tdiv_to_l_

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;;  f2              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        10       6       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
global __ptext23
__ptext23:	;psect for function __tdiv_to_l_
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
;incstack = 0
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l2609:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l2615
u3360:
	line	67
	
l2611:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l538
	
l2613:	
	goto	l538
	
l537:	
	line	68
	
l2615:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l539
u3370:
	line	69
	
l2617:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l538
	
l2619:	
	goto	l538
	
l539:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l2621:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l2623:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	movlw	0
	movwf	(__tdiv_to_l_@quot+3)
	movlw	0
	movwf	(__tdiv_to_l_@quot+2)
	movlw	0
	movwf	(__tdiv_to_l_@quot+1)
	movlw	0
	movwf	(__tdiv_to_l_@quot)

	line	75
	
l2625:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l2627:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	movwf	(__tdiv_to_l_@cntr)
	goto	l2629
	line	78
	
l540:	
	line	79
	
l2629:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u3385:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u3385
	line	80
	
l2631:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u3395
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u3395
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u3395:
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l2637
u3390:
	line	81
	
l2633:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l2635:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	goto	l2637
	line	83
	
l541:	
	line	84
	
l2637:	
	movlw	01h
u3405:
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	addlw	-1
	skipz
	goto	u3405
	line	85
	
l2639:	
	movlw	low(01h)
	subwf	(__tdiv_to_l_@cntr),f
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l2629
u3410:
	
l542:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u3421
	goto	u3420
u3421:
	goto	l2649
u3420:
	line	87
	
l2641:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l2647
u3430:
	line	88
	
l2643:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l538
	
l2645:	
	goto	l538
	
l544:	
	goto	l2647
	line	89
	
l545:	
	line	90
	
l2647:	
	movlw	01h
u3445:
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	addlw	-1
	skipz
	goto	u3445

	line	91
	movlw	(01h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	addwf	(__tdiv_to_l_@exp1),f
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l2647
u3450:
	goto	l2659
	
l546:	
	line	92
	goto	l2659
	
l543:	
	line	93
	
l2649:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l2657
u3460:
	line	94
	
l2651:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l538
	
l2653:	
	goto	l538
	
l548:	
	line	95
	goto	l2657
	
l550:	
	line	96
	
l2655:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u3475:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u3475
	line	97
	movlw	low(01h)
	subwf	(__tdiv_to_l_@exp1),f
	goto	l2657
	line	98
	
l549:	
	line	95
	
l2657:	
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l2655
u3480:
	goto	l2659
	
l551:	
	goto	l2659
	line	99
	
l547:	
	line	100
	
l2659:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	goto	l538
	
l2661:	
	line	101
	
l538:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
	signat	__tdiv_to_l_,8316
	global	__div_to_l_

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] unsigned long 
;;  f2              3    3[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:        14       6       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
global __ptext24
__ptext24:	;psect for function __div_to_l_
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
;incstack = 0
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l2663:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l2669
u3490:
	line	67
	
l2665:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l461
	
l2667:	
	goto	l461
	
l460:	
	line	68
	
l2669:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l2675
u3500:
	line	69
	
l2671:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l461
	
l2673:	
	goto	l461
	
l462:	
	line	70
	
l2675:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l2677:	
	movlw	0
	movwf	(__div_to_l_@quot+3)
	movlw	0
	movwf	(__div_to_l_@quot+2)
	movlw	0
	movwf	(__div_to_l_@quot+1)
	movlw	0
	movwf	(__div_to_l_@quot)

	line	75
	
l2679:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l2681:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l2683:	
	movlw	(020h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	goto	l2685
	line	78
	
l463:	
	line	79
	
l2685:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3515:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3515
	line	80
	
l2687:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u3525
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u3525
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u3525
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u3525:
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l464
u3520:
	line	81
	
l2689:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l2691:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l464:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	decf	fsr0,f
	decf	fsr0,f
	decf	fsr0,f
	line	85
	
l2693:	
	movlw	low(01h)
	subwf	(__div_to_l_@cntr),f
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l2685
u3530:
	
l465:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u3541
	goto	u3540
u3541:
	goto	l2703
u3540:
	line	87
	
l2695:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l2701
u3550:
	line	88
	
l2697:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l461
	
l2699:	
	goto	l461
	
l467:	
	goto	l2701
	line	89
	
l468:	
	line	90
	
l2701:	
	movlw	01h
u3565:
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	addlw	-1
	skipz
	goto	u3565

	line	91
	movlw	(01h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	addwf	(__div_to_l_@exp1),f
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l2701
u3570:
	goto	l2713
	
l469:	
	line	92
	goto	l2713
	
l466:	
	line	93
	
l2703:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l2711
u3580:
	line	94
	
l2705:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l461
	
l2707:	
	goto	l461
	
l471:	
	line	95
	goto	l2711
	
l473:	
	line	96
	
l2709:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3595:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3595
	line	97
	movlw	low(01h)
	subwf	(__div_to_l_@exp1),f
	goto	l2711
	line	98
	
l472:	
	line	95
	
l2711:	
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l2709
u3600:
	goto	l2713
	
l474:	
	goto	l2713
	line	99
	
l470:	
	line	100
	
l2713:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	goto	l461
	
l2715:	
	line	101
	
l461:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
	signat	__div_to_l_,8316
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext25
__ptext25:	;psect for function ___wmul
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2717:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2719
	line	44
	
l305:	
	line	45
	
l2719:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l306
u3610:
	line	46
	
l2721:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l306:	
	line	47
	movlw	01h
	
u3625:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3625
	line	48
	
l2723:	
	movlw	01h
	
u3635:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3635
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l2719
u3640:
	goto	l2725
	
l307:	
	line	52
	
l2725:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l308
	
l2727:	
	line	53
	
l308:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext26
__ptext26:	;psect for function ___lltoft
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2833:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l2837
	
l644:	
	line	42
	
l2835:	
	movlw	01h
u3875:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u3875

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l2837
	line	44
	
l643:	
	line	41
	
l2837:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l2835
u3880:
	goto	l2839
	
l645:	
	line	45
	
l2839:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l646
	
l2841:	
	line	46
	
l646:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
global __ptext27
__ptext27:	;psect for function ___llmod
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	13
	
l2813:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3811
	goto	u3810
u3811:
	goto	l2829
u3810:
	line	14
	
l2815:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	15
	goto	l2819
	
l633:	
	line	16
	
l2817:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3825:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3825
	line	17
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l2819
	line	18
	
l632:	
	line	15
	
l2819:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l2817
u3830:
	goto	l2821
	
l634:	
	goto	l2821
	line	19
	
l635:	
	line	20
	
l2821:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3845
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3845
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3845
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3845:
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l2825
u3840:
	line	21
	
l2823:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l2825
	
l636:	
	line	22
	
l2825:	
	movlw	01h
u3855:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3855

	line	23
	
l2827:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l2821
u3860:
	goto	l2829
	
l637:	
	goto	l2829
	line	24
	
l631:	
	line	25
	
l2829:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l638
	
l2831:	
	line	26
	
l638:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
global __ptext28
__ptext28:	;psect for function ___lldiv
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l2789:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	15
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3741
	goto	u3740
u3741:
	goto	l2809
u3740:
	line	16
	
l2791:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l2795
	
l623:	
	line	18
	
l2793:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3755:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3755
	line	19
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l2795
	line	20
	
l622:	
	line	17
	
l2795:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l2793
u3760:
	goto	l2797
	
l624:	
	goto	l2797
	line	21
	
l625:	
	line	22
	
l2797:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3775:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3775
	line	23
	
l2799:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3785
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3785
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3785
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3785:
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l2805
u3780:
	line	24
	
l2801:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	25
	
l2803:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l2805
	line	26
	
l626:	
	line	27
	
l2805:	
	movlw	01h
u3795:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3795

	line	28
	
l2807:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l2797
u3800:
	goto	l2809
	
l627:	
	goto	l2809
	line	29
	
l621:	
	line	30
	
l2809:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l628
	
l2811:	
	line	31
	
l628:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   41[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   50[BANK0 ] unsigned long 
;;  exp1            1   54[BANK0 ] unsigned char 
;;  sign1           1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   41[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext29
__ptext29:	;psect for function ___fttol
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2451:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3121
	goto	u3120
u3121:
	goto	l2457
u3120:
	line	50
	
l2453:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l582
	
l2455:	
	goto	l582
	
l581:	
	line	51
	
l2457:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3135:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3130:
	addlw	-1
	skipz
	goto	u3135
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2459:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2461:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2463:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2465:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2467:	
	btfss	(___fttol@exp1),7
	goto	u3141
	goto	u3140
u3141:
	goto	l2477
u3140:
	line	57
	
l2469:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l2475
u3150:
	line	58
	
l2471:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l582
	
l2473:	
	goto	l582
	
l584:	
	goto	l2475
	line	59
	
l585:	
	line	60
	
l2475:	
	movlw	01h
u3165:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3165

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l2475
u3170:
	goto	l2487
	
l586:	
	line	62
	goto	l2487
	
l583:	
	line	63
	
l2477:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l2485
u3180:
	line	64
	
l2479:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l582
	
l2481:	
	goto	l582
	
l588:	
	line	65
	goto	l2485
	
l590:	
	line	66
	
l2483:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3195:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3195
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2485
	line	68
	
l589:	
	line	65
	
l2485:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l2483
u3200:
	goto	l2487
	
l591:	
	goto	l2487
	line	69
	
l587:	
	line	70
	
l2487:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3210
	goto	l2491
u3210:
	line	71
	
l2489:	
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
	goto	l2491
	
l592:	
	line	72
	
l2491:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l582
	
l2493:	
	line	73
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   61[BANK0 ] float 
;;  f1              3   64[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   61[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
global __ptext30
__ptext30:	;psect for function ___ftsub
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l2783:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	24
	
l2785:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l578
	
l2787:	
	line	25
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   48[BANK0 ] float 
;;  f2              3   51[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   60[BANK0 ] unsigned char 
;;  exp2            1   59[BANK0 ] unsigned char 
;;  sign            1   58[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_sprintf
;;		___ftsub
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext31
__ptext31:	;psect for function ___ftadd
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2301:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
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
	
l2303:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2680
	goto	l2309
u2680:
	
l2305:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l2313
u2690:
	
l2307:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l2313
u2700:
	goto	l2309
	
l498:	
	line	93
	
l2309:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l499
	
l2311:	
	goto	l499
	
l496:	
	line	94
	
l2313:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2710
	goto	l502
u2710:
	
l2315:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l2319
u2720:
	
l2317:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2319
u2730:
	
l502:	
	line	95
	goto	l499
	
l500:	
	line	96
	
l2319:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2321:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l503
u2740:
	line	98
	
l2323:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l503:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l504
u2750:
	line	100
	
l2325:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l504:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2327:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2329:	
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
	goto	u2761
	goto	u2760
u2761:
	goto	l2341
u2760:
	goto	l2331
	line	109
	
l506:	
	line	110
	
l2331:	
	movlw	01h
u2775:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2775
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2333:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2781
	goto	u2780
u2781:
	goto	l2339
u2780:
	
l2335:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2331
u2790:
	goto	l2339
	
l508:	
	goto	l2339
	
l509:	
	line	113
	goto	l2339
	
l511:	
	line	114
	
l2337:	
	movlw	01h
u2805:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2805

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2339
	line	116
	
l510:	
	line	113
	
l2339:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l2337
u2810:
	goto	l513
	
l512:	
	line	117
	goto	l513
	
l505:	
	
l2341:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l513
u2820:
	goto	l2343
	line	120
	
l515:	
	line	121
	
l2343:	
	movlw	01h
u2835:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2835
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2345:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2841
	goto	u2840
u2841:
	goto	l2351
u2840:
	
l2347:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2343
u2850:
	goto	l2351
	
l517:	
	goto	l2351
	
l518:	
	line	124
	goto	l2351
	
l520:	
	line	125
	
l2349:	
	movlw	01h
u2865:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2865

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2351
	line	127
	
l519:	
	line	124
	
l2351:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l2349
u2870:
	goto	l513
	
l521:	
	goto	l513
	line	128
	
l514:	
	line	129
	
l513:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l2355
u2880:
	line	131
	
l2353:	
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
	goto	l2355
	line	133
	
l522:	
	line	134
	
l2355:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l2359
u2890:
	line	136
	
l2357:	
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
	goto	l2359
	line	138
	
l523:	
	line	139
	
l2359:	
	clrf	(___ftadd@sign)
	line	140
	
l2361:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2901
	addwf	(___ftadd@f2+1),f
u2901:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2902
	addwf	(___ftadd@f2+2),f
u2902:

	line	141
	
l2363:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l2369
u2910:
	line	142
	
l2365:	
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
	
l2367:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l2369
	line	145
	
l524:	
	line	146
	
l2369:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l499
	
l2371:	
	line	148
	
l499:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;;		_pow
;;		_exp
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext32
__ptext32:	;psect for function ___ftneg
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l2443:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3111
	goto	u3110
u3111:
	goto	l2447
u3110:
	line	18
	
l2445:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2447
	
l572:	
	line	19
	
l2447:	
	goto	l573
	
l2449:	
	line	20
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
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
;;		_sprintf
;;		_pow
;;		_exp
;;		_floor
;;		_ldexp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext33
__ptext33:	;psect for function ___ftge
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2373:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l2377
u2920:
	line	7
	
l2375:	
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
	goto	u2931
	goto	u2932
u2931:
	addwf	(??___ftge+0)+1,f
	
u2932:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2933
	goto	u2934
u2933:
	addwf	(??___ftge+0)+2,f
	
u2934:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2377
	
l554:	
	line	8
	
l2377:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l2381
u2940:
	line	9
	
l2379:	
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
	goto	u2951
	goto	u2952
u2951:
	addwf	(??___ftge+0)+1,f
	
u2952:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2953
	goto	u2954
u2953:
	addwf	(??___ftge+0)+2,f
	
u2954:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2381
	
l555:	
	line	10
	
l2381:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2383:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2385:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2965
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2965
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2965:
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l2389
u2960:
	
l2387:	
	clrc
	
	goto	l556
	
l2153:	
	
l2389:	
	setc
	
	goto	l556
	
l2155:	
	goto	l556
	
l2391:	
	line	13
	
l556:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 111 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
;;		_delay_ms
;; This function is called by:
;;		_initLCD
;;		_dispRH
;;		_dispT
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	111
global __ptext34
__ptext34:	;psect for function _instCtrl
psect	text34
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	111
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	112
	
l2927:	
;LE7-3.c: 112: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	113
	
l2929:	
;LE7-3.c: 113: RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	114
	
l2931:	
;LE7-3.c: 114: RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	115
	
l2933:	
;LE7-3.c: 115: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@cnt)
	movlw	high(01h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	116
	
l2935:	
;LE7-3.c: 116: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
	line	117
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 126 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
;;		_delay_ms
;; This function is called by:
;;		_dispRH
;;		_dispT
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	line	126
global __ptext35
__ptext35:	;psect for function _dataCtrl
psect	text35
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	126
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	127
	
l2937:	
;LE7-3.c: 127: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	128
	
l2939:	
;LE7-3.c: 128: RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	129
	
l2941:	
;LE7-3.c: 129: RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	130
	
l2943:	
;LE7-3.c: 130: delay_ms(5);
	movlw	low(05h)
	movwf	(delay_ms@cnt)
	movlw	high(05h)
	movwf	((delay_ms@cnt))+1
	fcall	_delay_ms
	line	131
	
l2945:	
;LE7-3.c: 131: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
	line	132
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 103 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
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
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	line	103
global __ptext36
__ptext36:	;psect for function _delay_ms
psect	text36
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	103
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 5
; Regs used in _delay_ms: [wreg+status,2+status,0+btemp+1]
	line	105
	
l2515:	
;LE7-3.c: 104: int i, j;
;LE7-3.c: 105: for (i = cnt; i != 0; i--);
	movf	(delay_ms@cnt+1),w
	clrf	(delay_ms@i+1)
	addwf	(delay_ms@i+1)
	movf	(delay_ms@cnt),w
	clrf	(delay_ms@i)
	addwf	(delay_ms@i)

	
l2517:	
	movf	((delay_ms@i+1)),w
	iorwf	((delay_ms@i)),w
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l2521
u3230:
	goto	l2525
	
l2519:	
	goto	l2525
	
l74:	
	
l2521:	
	movlw	low(-1)
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	high(-1)
	addwf	(delay_ms@i+1),f
	
l2523:	
	movf	((delay_ms@i+1)),w
	iorwf	((delay_ms@i)),w
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l2521
u3240:
	goto	l2525
	
l75:	
	line	106
	
l2525:	
;LE7-3.c: 106: for (j = 0; j < 5000; j++);
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	
l2527:	
	movf	(delay_ms@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3255
	movlw	low(01388h)
	subwf	(delay_ms@j),w
u3255:

	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l2531
u3250:
	goto	l78
	
l2529:	
	goto	l78
	
l76:	
	
l2531:	
	movlw	low(01h)
	addwf	(delay_ms@j),f
	skipnc
	incf	(delay_ms@j+1),f
	movlw	high(01h)
	addwf	(delay_ms@j+1),f
	
l2533:	
	movf	(delay_ms@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3265
	movlw	low(01388h)
	subwf	(delay_ms@j),w
u3265:

	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l2531
u3260:
	goto	l78
	
l77:	
	line	107
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
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
psect	text37,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext37
__ptext37:	;psect for function ___lwtoft
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l3369:	
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
	goto	l696
	
l3371:	
	line	31
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
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
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext38
__ptext38:	;psect for function ___ftpack
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2157:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2330
	goto	l2161
u2330:
	
l2159:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2167
u2340:
	goto	l2161
	
l479:	
	line	65
	
l2161:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l480
	
l2163:	
	goto	l480
	
l477:	
	line	66
	goto	l2167
	
l482:	
	line	67
	
l2165:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2355:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2355

	goto	l2167
	line	69
	
l481:	
	line	66
	
l2167:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2165
u2360:
	goto	l484
	
l483:	
	line	70
	goto	l484
	
l485:	
	line	71
	
l2169:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2171:	
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
	
l2173:	
	movlw	01h
u2375:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2375

	line	74
	
l484:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2169
u2380:
	goto	l2177
	
l486:	
	line	75
	goto	l2177
	
l488:	
	line	76
	
l2175:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2395:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2395
	goto	l2177
	line	78
	
l487:	
	line	75
	
l2177:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l2175
u2400:
	
l489:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l490
u2410:
	line	80
	
l2179:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l490:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2181:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2425:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2420:
	addlw	-1
	skipz
	goto	u2425
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2183:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2430
	goto	l491
u2430:
	line	84
	
l2185:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l491:	
	line	85
	line	86
	
l480:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 209 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
psect	text39,local,class=CODE,delta=2,merge=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	209
global __ptext39
__ptext39:	;psect for function _I2C_Stop
psect	text39
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	209
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	211
	
l3335:	
;LE7-3.c: 211: I2C_Wait();
	fcall	_I2C_Wait
	line	213
	
l3337:	
;LE7-3.c: 213: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	214
	
l111:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 202 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
psect	text40,local,class=CODE,delta=2,merge=1
	line	202
global __ptext40
__ptext40:	;psect for function _I2C_Start
psect	text40
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	202
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	204
	
l3309:	
;LE7-3.c: 204: I2C_Wait();
	fcall	_I2C_Wait
	line	206
	
l3311:	
;LE7-3.c: 206: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	207
	
l108:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Send

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 223 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
psect	text41,local,class=CODE,delta=2,merge=1
	line	223
global __ptext41
__ptext41:	;psect for function _I2C_Send
psect	text41
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	223
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@data stored from wreg
	movwf	(I2C_Send@data)
	line	225
	
l3313:	
;LE7-3.c: 225: I2C_Wait();
	fcall	_I2C_Wait
	line	227
	
l3315:	
;LE7-3.c: 227: SSPBUF = data;
	movf	(I2C_Send@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	228
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
	signat	_I2C_Send,4216
	global	_I2C_RepeatedStart

;; *************** function _I2C_RepeatedStart *****************
;; Defined at:
;;		line 216 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
psect	text42,local,class=CODE,delta=2,merge=1
	line	216
global __ptext42
__ptext42:	;psect for function _I2C_RepeatedStart
psect	text42
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	216
	global	__size_of_I2C_RepeatedStart
	__size_of_I2C_RepeatedStart	equ	__end_of_I2C_RepeatedStart-_I2C_RepeatedStart
	
_I2C_RepeatedStart:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_RepeatedStart: [wreg+status,2+status,0+pclath+cstack]
	line	218
	
l3317:	
;LE7-3.c: 218: I2C_Wait();
	fcall	_I2C_Wait
	line	220
	
l3319:	
;LE7-3.c: 220: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	221
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_RepeatedStart
	__end_of_I2C_RepeatedStart:
	signat	_I2C_RepeatedStart,88
	global	_I2C_Receive

;; *************** function _I2C_Receive *****************
;; Defined at:
;;		line 230 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
psect	text43,local,class=CODE,delta=2,merge=1
	line	230
global __ptext43
__ptext43:	;psect for function _I2C_Receive
psect	text43
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	230
	global	__size_of_I2C_Receive
	__size_of_I2C_Receive	equ	__end_of_I2C_Receive-_I2C_Receive
	
_I2C_Receive:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Receive: [wreg+status,2+status,0+pclath+cstack]
;I2C_Receive@ack stored from wreg
	movwf	(I2C_Receive@ack)
	line	232
	
l3321:	
;LE7-3.c: 231: unsigned char temp;
;LE7-3.c: 232: I2C_Wait();
	fcall	_I2C_Wait
	line	233
	
l3323:	
;LE7-3.c: 233: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	234
;LE7-3.c: 234: I2C_Wait();
	fcall	_I2C_Wait
	line	235
	
l3325:	
;LE7-3.c: 235: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Receive+0)+0
	movf	(??_I2C_Receive+0)+0,w
	movwf	(I2C_Receive@temp)
	line	236
	
l3327:	
;LE7-3.c: 236: I2C_Wait();
	fcall	_I2C_Wait
	line	237
	
l3329:	
;LE7-3.c: 237: ACKDT = (ack)?0:1;
	movf	(I2C_Receive@ack)
	skipnz
	goto	u4581
	goto	u4580
	
u4581:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	goto	u4594
u4580:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
u4594:
	line	238
	
l3331:	
;LE7-3.c: 238: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	239
;LE7-3.c: 239: return temp;
	movf	(I2C_Receive@temp),w
	goto	l120
	
l3333:	
	line	240
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Receive
	__end_of_I2C_Receive:
	signat	_I2C_Receive,4217
	global	_I2C_Wait

;; *************** function _I2C_Wait *****************
;; Defined at:
;;		line 196 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
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
psect	text44,local,class=CODE,delta=2,merge=1
	line	196
global __ptext44
__ptext44:	;psect for function _I2C_Wait
psect	text44
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #7\To Submit\LE7-3.c"
	line	196
	global	__size_of_I2C_Wait
	__size_of_I2C_Wait	equ	__end_of_I2C_Wait-_I2C_Wait
	
_I2C_Wait:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Wait: [wreg+status,2]
	line	199
	
l3177:	
;LE7-3.c: 199: while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
	goto	l3179
	
l103:	
	goto	l3179
	
l102:	
	
l3179:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l3179
u4420:
	
l3181:	
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u4431
	goto	u4430
u4431:
	goto	l3179
u4430:
	goto	l105
	
l104:	
	line	200
	
l105:	
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
