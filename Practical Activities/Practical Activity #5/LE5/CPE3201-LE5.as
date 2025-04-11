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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,_delay
	FNCALL	_main,_round
	FNCALL	_round,___ftadd
	FNCALL	_round,___ftneg
	FNCALL	_round,_trunc
	FNCALL	_trunc,___altoft
	FNCALL	_trunc,___fttol
	FNCALL	_trunc,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_errno
	global	_ad_flag
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTB
_PORTB	set	0x6
	global	_ADIF
_ADIF	set	0x66
	global	_GIE
_GIE	set	0x5F
	global	_GO
_GO	set	0xFA
	global	_PEIE
_PEIE	set	0x5E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_ADIE
_ADIE	set	0x466
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
	file	"CPE3201-LE5.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_errno:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ad_flag:
       ds      2

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_main:	; 0 bytes @ 0x0
	ds	2
	global	_main$480
_main$480:	; 3 bytes @ 0x2
	ds	3
	global	main@decVal
main@decVal:	; 2 bytes @ 0x5
	ds	2
	global	main@wnVal
main@wnVal:	; 2 bytes @ 0x7
	ds	2
	global	main@d_value
main@d_value:	; 2 bytes @ 0x9
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
??___ftpack:	; 0 bytes @ 0x4
?_delay:	; 0 bytes @ 0x4
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x4
	global	?___awmod
?___awmod:	; 2 bytes @ 0x4
?_frexp:	; 3 bytes @ 0x4
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x4
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x4
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x4
	global	frexp@value
frexp@value:	; 3 bytes @ 0x4
	ds	2
??_delay:	; 0 bytes @ 0x6
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x6
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x6
	ds	1
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x7
	ds	1
??_round:	; 0 bytes @ 0x8
??___ftneg:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_frexp:	; 0 bytes @ 0x0
??___awdiv:	; 0 bytes @ 0x0
??___awmod:	; 0 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x2
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x5
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x5
	ds	3
??___awtoft:	; 0 bytes @ 0x8
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xA
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xB
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xB
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xE
	ds	3
??___ftdiv:	; 0 bytes @ 0x11
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x15
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x16
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x19
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1A
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x1B
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x1B
	ds	4
??___fttol:	; 0 bytes @ 0x1F
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x23
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x24
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x28
	ds	1
	global	?___altoft
?___altoft:	; 3 bytes @ 0x29
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x29
	ds	4
??___altoft:	; 0 bytes @ 0x2D
	ds	2
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x2F
	ds	1
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x30
	ds	1
	global	?_trunc
?_trunc:	; 3 bytes @ 0x31
	global	trunc@x
trunc@x:	; 3 bytes @ 0x31
	ds	3
??_trunc:	; 0 bytes @ 0x34
	ds	1
	global	trunc@i
trunc@i:	; 3 bytes @ 0x35
	ds	3
	global	trunc@expon
trunc@expon:	; 2 bytes @ 0x38
	ds	2
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x3A
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x3A
	ds	3
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x3D
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3D
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x40
	ds	3
??___ftadd:	; 0 bytes @ 0x43
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x47
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x48
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x49
	ds	1
	global	?_round
?_round:	; 3 bytes @ 0x4A
	global	round@x
round@x:	; 3 bytes @ 0x4A
	ds	3
	global	round@f
round@f:	; 3 bytes @ 0x4D
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      10
;!    BANK0            80     80      80
;!    BANK1            80     11      13
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> trunc@expon(BANK0[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___awdiv
;!    _main->___awmod
;!    _round->___awdiv
;!    _round->___awmod
;!    _trunc->_frexp
;!    ___fttol->___awdiv
;!    ___fttol->___awmod
;!    ___ftdiv->___awmod
;!    ___awtoft->___awdiv
;!    ___awtoft->___awmod
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_round
;!    _round->___ftadd
;!    _trunc->___altoft
;!    ___fttol->___ftdiv
;!    ___altoft->___fttol
;!    ___ftneg->_trunc
;!    ___ftadd->___ftneg
;!    ___ftdiv->___awtoft
;!    ___awtoft->___awdiv
;!    ___awtoft->___ftpack
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                14    14      0   14578
;!                                              0 BANK1     11    11      0
;!                            ___awdiv
;!                            ___awmod
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___fttol
;!                              _delay
;!                              _round
;! ---------------------------------------------------------------------------------
;! (1) _round                                                6     3      3    7560
;!                                             74 BANK0      6     3      3
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftdiv (ARG)
;!                            ___ftneg
;!                              _trunc
;! ---------------------------------------------------------------------------------
;! (2) _trunc                                                9     6      3    3519
;!                                             49 BANK0      9     6      3
;!                           ___altoft
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (3) _frexp                                                6     2      4     428
;!                                              4 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             14    10      4     411
;!                                             27 BANK0     14    10      4
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___altoft                                             8     4      4    2306
;!                                             41 BANK0      8     4      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     138
;!                                             58 BANK0      3     0      3
;!                              _trunc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftadd                                             13     7      6    3612
;!                                             61 BANK0     13     7      6
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                              _trunc (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                2     0      2     128
;!                                              4 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             16    10      6    2587
;!                                             11 BANK0     16    10      6
;!                            ___awmod (ARG)
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             6     3      3    2300
;!                                              5 BANK0      6     3      3
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2037
;!                                              4 COMMON     3     3      0
;!                                              0 BANK0      5     0      5
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              7     3      4     563
;!                                              4 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              9     5      4     575
;!                                              4 COMMON     4     0      4
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awdiv
;!   ___awmod
;!   ___awtoft
;!     ___awdiv (ARG)
;!     ___awmod (ARG)
;!     ___ftpack (ARG)
;!   ___ftdiv
;!     ___awmod (ARG)
;!     ___awtoft (ARG)
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!   ___fttol
;!     ___awdiv (ARG)
;!     ___awmod (ARG)
;!     ___awtoft (ARG)
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!       ___ftpack (ARG)
;!     ___ftdiv (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___awdiv (ARG)
;!         ___awmod (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!   _delay
;!   _round
;!     ___awdiv (ARG)
;!     ___awmod (ARG)
;!     ___awtoft (ARG)
;!       ___awdiv (ARG)
;!       ___awmod (ARG)
;!       ___ftpack (ARG)
;!     ___ftadd (ARG)
;!       ___ftneg (ARG)
;!         _trunc (ARG)
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___awdiv (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___awdiv (ARG)
;!                 ___awmod (ARG)
;!                 ___ftpack (ARG)
;!               ___ftdiv (ARG)
;!                 ___awmod (ARG)
;!                 ___awtoft (ARG)
;!                   ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!           ___fttol
;!             ___awdiv (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___awdiv (ARG)
;!               ___awmod (ARG)
;!               ___ftpack (ARG)
;!             ___ftdiv (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___awdiv (ARG)
;!                 ___awmod (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!           _frexp
;!       ___ftpack (ARG)
;!       _trunc (ARG)
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___awdiv (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___awdiv (ARG)
;!               ___awmod (ARG)
;!               ___ftpack (ARG)
;!             ___ftdiv (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___awdiv (ARG)
;!                 ___awmod (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!         ___fttol
;!           ___awdiv (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___awdiv (ARG)
;!             ___awmod (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___awdiv (ARG)
;!               ___awmod (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!         _frexp
;!     ___ftdiv (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___awdiv (ARG)
;!         ___awmod (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftneg (ARG)
;!       _trunc (ARG)
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___awdiv (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___awdiv (ARG)
;!               ___awmod (ARG)
;!               ___ftpack (ARG)
;!             ___ftdiv (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___awdiv (ARG)
;!                 ___awmod (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!         ___fttol
;!           ___awdiv (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___awdiv (ARG)
;!             ___awmod (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___awdiv (ARG)
;!               ___awmod (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!         _frexp
;!     _trunc (ARG)
;!       ___altoft
;!         ___ftpack
;!         ___fttol (ARG)
;!           ___awdiv (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___awdiv (ARG)
;!             ___awmod (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___awdiv (ARG)
;!               ___awmod (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!       ___fttol
;!         ___awdiv (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___awdiv (ARG)
;!           ___awmod (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___awdiv (ARG)
;!             ___awmod (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!       _frexp
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      67       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      B       D       7       16.3%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      67      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 32 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d_value         2    9[BANK1 ] int 
;;  wnVal           2    7[BANK1 ] int 
;;  decVal          2    5[BANK1 ] int 
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
;;      Locals:         0       0       9       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      11       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___awtoft
;;		___ftdiv
;;		___fttol
;;		_delay
;;		_round
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
	line	32
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	33
	
l1685:	
;LE5-2.c: 33: int d_value = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@d_value)^080h
	clrf	(main@d_value+1)^080h
	line	34
	
l1687:	
;LE5-2.c: 34: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	35
	
l1689:	
;LE5-2.c: 35: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	36
	
l1691:	
;LE5-2.c: 36: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	37
	
l1693:	
;LE5-2.c: 37: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	39
	
l1695:	
;LE5-2.c: 39: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	41
	
l1697:	
;LE5-2.c: 41: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	42
	
l1699:	
;LE5-2.c: 42: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	43
	
l1701:	
;LE5-2.c: 43: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	44
	
l1703:	
;LE5-2.c: 44: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	46
	
l1705:	
;LE5-2.c: 46: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@cnt)
	movlw	high(03E8h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	47
	
l1707:	
;LE5-2.c: 47: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	49
	
l1709:	
;LE5-2.c: 49: int d_value = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@d_value)^080h
	clrf	(main@d_value+1)^080h
	line	50
	
l1711:	
;LE5-2.c: 50: int decVal = 0;
	clrf	(main@decVal)^080h
	clrf	(main@decVal+1)^080h
	line	51
	
l1713:	
;LE5-2.c: 51: int wnVal = 0;
	clrf	(main@wnVal)^080h
	clrf	(main@wnVal+1)^080h
	goto	l1715
	line	53
;LE5-2.c: 53: while(1) {
	
l41:	
	line	54
	
l1715:	
;LE5-2.c: 54: if(ad_flag) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ad_flag+1)^080h,w
	iorwf	(_ad_flag)^080h,w
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l1715
u2380:
	line	56
	
l1717:	
;LE5-2.c: 56: ad_flag = 0;
	clrf	(_ad_flag)^080h
	clrf	(_ad_flag+1)^080h
	line	60
	
l1719:	
;LE5-2.c: 60: d_value = ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@d_value)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@d_value+1)^080h
	line	61
	
l1721:	
;LE5-2.c: 61: d_value = d_value << 8;
	movf	(main@d_value+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@d_value)^080h,w
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(??_main+0)^080h+1
	clrf	(??_main+0)^080h+0
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@d_value)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@d_value+1)^080h
	line	62
	
l1723:	
;LE5-2.c: 62: d_value = d_value | ADRESL;
	movf	(main@d_value)^080h,w
	iorwf	(158)^080h,w	;volatile
	movwf	(??_main+0)^080h+0
	movf	(main@d_value+1)^080h,w
	movwf	1+(??_main+0)^080h+0
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@d_value)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@d_value+1)^080h
	line	64
	
l1725:	
;LE5-2.c: 64: wnVal = round(d_value / 205);
	movf	(main@d_value+1)^080h,w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(main@d_value)^080h,w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	movlw	low(0CDh)
	movwf	(___awdiv@divisor)
	movlw	high(0CDh)
	movwf	((___awdiv@divisor))+1
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(round@x)
	movf	(1+(?___awtoft)),w
	movwf	(round@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(round@x+2)
	fcall	_round
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_round)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$480)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_round)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$480+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_round)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$480+2)^080h
	
l1727:	
;LE5-2.c: 64: wnVal = round(d_value / 205);
	movf	(_main$480)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$480+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$480+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@wnVal+1)^080h
	addwf	(main@wnVal+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@wnVal)^080h
	addwf	(main@wnVal)^080h

	line	65
	
l1729:	
;LE5-2.c: 65: decVal = round((d_value % 205) / 20.48);
	movf	(main@d_value+1)^080h,w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(main@d_value)^080h,w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	movlw	low(0CDh)
	movwf	(___awmod@divisor)
	movlw	high(0CDh)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(0+(?___awmod)),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f1+2)
	movlw	0xd7
	movwf	(___ftdiv@f2)
	movlw	0xa3
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(round@x)
	movf	(1+(?___ftdiv)),w
	movwf	(round@x+1)
	movf	(2+(?___ftdiv)),w
	movwf	(round@x+2)
	fcall	_round
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_round)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$480)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_round)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$480+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_round)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$480+2)^080h
	
l1731:	
;LE5-2.c: 65: decVal = round((d_value % 205) / 20.48);
	movf	(_main$480)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$480+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$480+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@decVal+1)^080h
	addwf	(main@decVal+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@decVal)^080h
	addwf	(main@decVal)^080h

	line	66
	
l1733:	
;LE5-2.c: 66: if (decVal == 0x0A) {
	movlw	0Ah
	xorwf	(main@decVal)^080h,w
	iorwf	(main@decVal+1)^080h,w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l1739
u2390:
	line	67
	
l1735:	
;LE5-2.c: 67: decVal = 0;
	clrf	(main@decVal)^080h
	clrf	(main@decVal+1)^080h
	line	68
	
l1737:	
;LE5-2.c: 68: wnVal++;
	movlw	low(01h)
	addwf	(main@wnVal)^080h,f
	skipnc
	incf	(main@wnVal+1)^080h,f
	movlw	high(01h)
	addwf	(main@wnVal+1)^080h,f
	goto	l1739
	line	69
	
l43:	
	line	71
	
l1739:	
;LE5-2.c: 69: }
;LE5-2.c: 71: wnVal = wnVal << 4;
	movf	(main@wnVal+1)^080h,w
	movwf	(??_main+0)^080h+0+1
	movf	(main@wnVal)^080h,w
	movwf	(??_main+0)^080h+0
	swapf	(??_main+0)^080h+0,f
	swapf	(??_main+0)^080h+1,f
	movlw	0f0h
	andwf	(??_main+0)^080h+1,f
	movf	(??_main+0)^080h+0,w
	andlw	0fh
	iorwf	(??_main+0)^080h+1,f
	movlw	0f0h
	andwf	(??_main+0)^080h+0,f
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@wnVal)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@wnVal+1)^080h
	line	72
	
l1741:	
;LE5-2.c: 72: d_value = wnVal | decVal;
	movf	(main@decVal)^080h,w
	iorwf	(main@wnVal)^080h,w
	movwf	(main@d_value)^080h
	movf	(main@decVal+1)^080h,w
	iorwf	(main@wnVal+1)^080h,w
	movwf	1+(main@d_value)^080h
	line	73
	
l1743:	
;LE5-2.c: 73: PORTB = d_value;
	movf	(main@d_value)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	75
	
l1745:	
;LE5-2.c: 75: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@cnt)
	movlw	high(03E8h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	76
	
l1747:	
;LE5-2.c: 76: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	goto	l1715
	line	77
	
l42:	
	goto	l1715
	line	79
	
l44:	
	line	53
	goto	l1715
	
l45:	
	line	80
	
l46:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_round

;; *************** function _round *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\round.c"
;; Parameters:    Size  Location     Type
;;  x               3   74[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  f               3   77[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   74[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftneg
;;		_trunc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\round.c"
	line	6
global __ptext1
__ptext1:	;psect for function _round
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\round.c"
	line	6
	global	__size_of_round
	__size_of_round	equ	__end_of_round-_round
	
_round:	
;incstack = 0
	opt	stack 3
; Regs used in _round: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l1541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(round@x),w
	movwf	(___ftadd@f1)
	movf	(round@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(round@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(round@x),w
	movwf	(trunc@x)
	movf	(round@x+1),w
	movwf	(trunc@x+1)
	movf	(round@x+2),w
	movwf	(trunc@x+2)
	fcall	_trunc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trunc)),w
	movwf	(___ftneg@f1)
	movf	(1+(?_trunc)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?_trunc)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(round@f)
	movf	(1+(?___ftadd)),w
	movwf	(round@f+1)
	movf	(2+(?___ftadd)),w
	movwf	(round@f+2)
	line	11
	
l1543:	
	movf	(round@f),w
	movwf	(___ftadd@f1)
	movf	(round@f+1),w
	movwf	(___ftadd@f1+1)
	movf	(round@f+2),w
	movwf	(___ftadd@f1+2)
	movf	(round@x),w
	movwf	(___ftadd@f2)
	movf	(round@x+1),w
	movwf	(___ftadd@f2+1)
	movf	(round@x+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(round@x)
	movf	(1+(?___ftadd)),w
	movwf	(round@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(round@x+2)
	line	12
	
l1545:	
	movf	(round@x),w
	movwf	(trunc@x)
	movf	(round@x+1),w
	movwf	(trunc@x+1)
	movf	(round@x+2),w
	movwf	(trunc@x+2)
	fcall	_trunc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trunc)),w
	movwf	(?_round)
	movf	(1+(?_trunc)),w
	movwf	(?_round+1)
	movf	(2+(?_trunc)),w
	movwf	(?_round+2)
	goto	l486
	
l1547:	
	line	13
	
l486:	
	return
	opt stack 0
GLOBAL	__end_of_round
	__end_of_round:
	signat	_round,4219
	global	_trunc

;; *************** function _trunc *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\trunc.c"
;; Parameters:    Size  Location     Type
;;  x               3   49[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   53[BANK0 ] int 
;;  expon           2   56[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   49[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___altoft
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_round
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\trunc.c"
	line	13
global __ptext2
__ptext2:	;psect for function _trunc
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\trunc.c"
	line	13
	global	__size_of_trunc
	__size_of_trunc	equ	__end_of_trunc-_trunc
	
_trunc:	
;incstack = 0
	opt	stack 3
; Regs used in _trunc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l1523:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trunc@x),w
	movwf	(frexp@value)
	movf	(trunc@x+1),w
	movwf	(frexp@value+1)
	movf	(trunc@x+2),w
	movwf	(frexp@value+2)
	movlw	(trunc@expon)&0ffh
	movwf	(??_trunc+0)+0
	movf	(??_trunc+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l1525:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(trunc@expon+1),7
	goto	u2081
	goto	u2080
u2081:
	goto	l1531
u2080:
	line	20
	
l1527:	
	movlw	0x0
	movwf	(?_trunc)
	movlw	0x0
	movwf	(?_trunc+1)
	movlw	0x0
	movwf	(?_trunc+2)
	goto	l492
	
l1529:	
	goto	l492
	
l491:	
	line	21
	
l1531:	
	movlw	high(015h)
	subwf	(trunc@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(trunc@expon),w
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l1535
u2090:
	line	22
	
l1533:	
	goto	l492
	
l493:	
	line	23
	
l1535:	
	movf	(trunc@x),w
	movwf	(___fttol@f1)
	movf	(trunc@x+1),w
	movwf	(___fttol@f1+1)
	movf	(trunc@x+2),w
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
	movwf	(trunc@i)
	movf	(1+(?___altoft)),w
	movwf	(trunc@i+1)
	movf	(2+(?___altoft)),w
	movwf	(trunc@i+2)
	line	24
	
l1537:	
	movf	(trunc@i),w
	movwf	(?_trunc)
	movf	(trunc@i+1),w
	movwf	(?_trunc+1)
	movf	(trunc@i+2),w
	movwf	(?_trunc+2)
	goto	l492
	
l1539:	
	line	25
	
l492:	
	return
	opt stack 0
GLOBAL	__end_of_trunc
	__end_of_trunc:
	signat	_trunc,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    4[COMMON] int 
;;  eptr            1    7[COMMON] PTR int 
;;		 -> trunc@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    4[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
global __ptext3
__ptext3:	;psect for function _frexp
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 4
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l1435:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l1441
u1830:
	line	257
	
l1437:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	goto	l499
	line	258
	
l1439:	
;	Return value of _frexp is never used
	goto	l499
	line	259
	
l498:	
	line	261
	
l1441:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l1443:	
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
	
l1445:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l1447:	
	bcf	0+(frexp@value)+01h,7
	goto	l499
	line	273
	
l1449:	
	line	274
;	Return value of _frexp is never used
	
l499:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   27[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   36[BANK0 ] unsigned long 
;;  exp1            1   40[BANK0 ] unsigned char 
;;  sign1           1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   27[BANK0 ] long 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext4
__ptext4:	;psect for function ___fttol
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1011:	
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
	goto	u991
	goto	u990
u991:
	goto	l1017
u990:
	line	50
	
l1013:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l372
	
l1015:	
	goto	l372
	
l371:	
	line	51
	
l1017:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1005:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1000:
	addlw	-1
	skipz
	goto	u1005
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1019:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1021:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1023:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1025:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1027:	
	btfss	(___fttol@exp1),7
	goto	u1011
	goto	u1010
u1011:
	goto	l1037
u1010:
	line	57
	
l1029:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1021
	goto	u1020
u1021:
	goto	l1035
u1020:
	line	58
	
l1031:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l372
	
l1033:	
	goto	l372
	
l374:	
	goto	l1035
	line	59
	
l375:	
	line	60
	
l1035:	
	movlw	01h
u1035:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1035

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l1035
u1040:
	goto	l1047
	
l376:	
	line	62
	goto	l1047
	
l373:	
	line	63
	
l1037:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1051
	goto	u1050
u1051:
	goto	l1045
u1050:
	line	64
	
l1039:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l372
	
l1041:	
	goto	l372
	
l378:	
	line	65
	goto	l1045
	
l380:	
	line	66
	
l1043:	
	movlw	01h
	movwf	(??___fttol+0)+0
u1065:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u1065
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1045
	line	68
	
l379:	
	line	65
	
l1045:	
	movf	(___fttol@exp1),f
	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l1043
u1070:
	goto	l1047
	
l381:	
	goto	l1047
	line	69
	
l377:	
	line	70
	
l1047:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1080
	goto	l1051
u1080:
	line	71
	
l1049:	
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
	goto	l1051
	
l382:	
	line	72
	
l1051:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l372
	
l1053:	
	line	73
	
l372:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   41[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   48[BANK0 ] unsigned char 
;;  exp             1   47[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   41[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
global __ptext5
__ptext5:	;psect for function ___altoft
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l1419:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l1421:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l1423:	
	btfss	(___altoft@c+3),7
	goto	u1801
	goto	u1800
u1801:
	goto	l1429
u1800:
	line	48
	
l1425:	
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
	goto	l1429
	line	50
	
l213:	
	line	52
	goto	l1429
	
l215:	
	line	53
	
l1427:	
	movlw	01h
u1815:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u1815

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l1429
	line	55
	
l214:	
	line	52
	
l1429:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l1427
u1820:
	goto	l1431
	
l216:	
	line	56
	
l1431:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l217
	
l1433:	
	line	57
	
l217:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   58[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   58[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_round
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext6
__ptext6:	;psect for function ___ftneg
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l1143:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u1341
	goto	u1340
u1341:
	goto	l1147
u1340:
	line	18
	
l1145:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l1147
	
l362:	
	line	19
	
l1147:	
	goto	l363
	
l1149:	
	line	20
	
l363:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   61[BANK0 ] float 
;;  f2              3   64[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   73[BANK0 ] unsigned char 
;;  exp2            1   72[BANK0 ] unsigned char 
;;  sign            1   71[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_round
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext7
__ptext7:	;psect for function ___ftadd
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1451:	
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
	
l1453:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1840
	goto	l1459
u1840:
	
l1455:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1851
	goto	u1850
u1851:
	goto	l1463
u1850:
	
l1457:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l1463
u1860:
	goto	l1459
	
l305:	
	line	93
	
l1459:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l306
	
l1461:	
	goto	l306
	
l303:	
	line	94
	
l1463:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1870
	goto	l309
u1870:
	
l1465:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1881
	goto	u1880
u1881:
	goto	l1469
u1880:
	
l1467:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l1469
u1890:
	
l309:	
	line	95
	goto	l306
	
l307:	
	line	96
	
l1469:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1471:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l310
u1900:
	line	98
	
l1473:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l310:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l311
u1910:
	line	100
	
l1475:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l311:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1477:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1479:	
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
	goto	u1921
	goto	u1920
u1921:
	goto	l1491
u1920:
	goto	l1481
	line	109
	
l313:	
	line	110
	
l1481:	
	movlw	01h
u1935:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1935
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1483:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1941
	goto	u1940
u1941:
	goto	l1489
u1940:
	
l1485:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l1481
u1950:
	goto	l1489
	
l315:	
	goto	l1489
	
l316:	
	line	113
	goto	l1489
	
l318:	
	line	114
	
l1487:	
	movlw	01h
u1965:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1965

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1489
	line	116
	
l317:	
	line	113
	
l1489:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1971
	goto	u1970
u1971:
	goto	l1487
u1970:
	goto	l320
	
l319:	
	line	117
	goto	l320
	
l312:	
	
l1491:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1981
	goto	u1980
u1981:
	goto	l320
u1980:
	goto	l1493
	line	120
	
l322:	
	line	121
	
l1493:	
	movlw	01h
u1995:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1995
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1495:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2001
	goto	u2000
u2001:
	goto	l1501
u2000:
	
l1497:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l1493
u2010:
	goto	l1501
	
l324:	
	goto	l1501
	
l325:	
	line	124
	goto	l1501
	
l327:	
	line	125
	
l1499:	
	movlw	01h
u2025:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2025

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1501
	line	127
	
l326:	
	line	124
	
l1501:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2031
	goto	u2030
u2031:
	goto	l1499
u2030:
	goto	l320
	
l328:	
	goto	l320
	line	128
	
l321:	
	line	129
	
l320:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2041
	goto	u2040
u2041:
	goto	l1505
u2040:
	line	131
	
l1503:	
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
	goto	l1505
	line	133
	
l329:	
	line	134
	
l1505:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2051
	goto	u2050
u2051:
	goto	l1509
u2050:
	line	136
	
l1507:	
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
	goto	l1509
	line	138
	
l330:	
	line	139
	
l1509:	
	clrf	(___ftadd@sign)
	line	140
	
l1511:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2061
	addwf	(___ftadd@f2+1),f
u2061:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2062
	addwf	(___ftadd@f2+2),f
u2062:

	line	141
	
l1513:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l1519
u2070:
	line	142
	
l1515:	
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
	
l1517:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1519
	line	145
	
l331:	
	line	146
	
l1519:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l306
	
l1521:	
	line	148
	
l306:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 28 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    4[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
	line	28
global __ptext8
__ptext8:	;psect for function _delay
psect	text8
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
	line	28
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg]
	line	29
	
l1169:	
;LE5-2.c: 29: while(cnt--);
	goto	l1171
	
l36:	
	goto	l1171
	
l35:	
	
l1171:	
	movlw	low(-1)
	addwf	(delay@cnt),f
	skipnc
	incf	(delay@cnt+1),f
	movlw	high(-1)
	addwf	(delay@cnt+1),f
	movlw	high(-1)
	xorwf	((delay@cnt+1)),w
	skipz
	goto	u1375
	movlw	low(-1)
	xorwf	((delay@cnt)),w
u1375:

	skipz
	goto	u1371
	goto	u1370
u1371:
	goto	l1171
u1370:
	goto	l38
	
l37:	
	line	30
	
l38:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   11[BANK0 ] float 
;;  f1              3   14[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   22[BANK0 ] float 
;;  sign            1   26[BANK0 ] unsigned char 
;;  exp             1   25[BANK0 ] unsigned char 
;;  cntr            1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
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
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1643:	
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
	goto	u2301
	goto	u2300
u2301:
	goto	l1649
u2300:
	line	56
	
l1645:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l337
	
l1647:	
	goto	l337
	
l336:	
	line	57
	
l1649:	
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
	goto	u2311
	goto	u2310
u2311:
	goto	l1655
u2310:
	line	58
	
l1651:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l337
	
l1653:	
	goto	l337
	
l338:	
	line	59
	
l1655:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l1657:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l1659:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2325:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2320:
	addlw	-1
	skipz
	goto	u2325
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l1661:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2335:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2330:
	addlw	-1
	skipz
	goto	u2335
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l1663:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l1665:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l1667:	
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
	goto	l1669
	line	69
	
l339:	
	line	70
	
l1669:	
	movlw	01h
u2345:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2345
	line	71
	
l1671:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2355
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2355
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2355:
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1677
u2350:
	line	72
	
l1673:	
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
	
l1675:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l1677
	line	74
	
l340:	
	line	75
	
l1677:	
	movlw	01h
u2365:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2365
	line	76
	
l1679:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l1669
u2370:
	goto	l1681
	
l341:	
	line	77
	
l1681:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l337
	
l1683:	
	line	78
	
l337:	
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
;;  c               2    5[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    5[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
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
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1631:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l1633:	
	btfss	(___awtoft@c+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l1639
u2290:
	line	38
	
l1635:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1637:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1639
	line	40
	
l280:	
	line	41
	
l1639:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l281
	
l1641:	
	line	42
	
l281:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       5       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext11
__ptext11:	;psect for function ___ftpack
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1389:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u1690
	goto	l1393
u1690:
	
l1391:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l1399
u1700:
	goto	l1393
	
l286:	
	line	65
	
l1393:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l287
	
l1395:	
	goto	l287
	
l284:	
	line	66
	goto	l1399
	
l289:	
	line	67
	
l1397:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1715:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1715

	goto	l1399
	line	69
	
l288:	
	line	66
	
l1399:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l1397
u1720:
	goto	l291
	
l290:	
	line	70
	goto	l291
	
l292:	
	line	71
	
l1401:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1403:	
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
	
l1405:	
	movlw	01h
u1735:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1735

	line	74
	
l291:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l1401
u1740:
	goto	l1409
	
l293:	
	line	75
	goto	l1409
	
l295:	
	line	76
	
l1407:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1755:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1755
	goto	l1409
	line	78
	
l294:	
	line	75
	
l1409:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l1407
u1760:
	
l296:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l297
u1770:
	line	80
	
l1411:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l297:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1413:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1785:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1780:
	addlw	-1
	skipz
	goto	u1785
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1415:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1790
	goto	l298
u1790:
	line	84
	
l1417:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l298:	
	line	85
	line	86
	
l287:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] int 
;;  dividend        2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___awmod
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1593:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1595:	
	btfss	(___awmod@dividend+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l1601
u2200:
	line	15
	
l1597:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1599:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1601
	line	17
	
l265:	
	line	18
	
l1601:	
	btfss	(___awmod@divisor+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l1605
u2210:
	line	19
	
l1603:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1605
	
l266:	
	line	20
	
l1605:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2221
	goto	u2220
u2221:
	goto	l1623
u2220:
	line	21
	
l1607:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1613
	
l269:	
	line	23
	
l1609:	
	movlw	01h
	
u2235:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2235
	line	24
	
l1611:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1613
	line	25
	
l268:	
	line	22
	
l1613:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1609
u2240:
	goto	l1615
	
l270:	
	goto	l1615
	line	26
	
l271:	
	line	27
	
l1615:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2255
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2255:
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1619
u2250:
	line	28
	
l1617:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1619
	
l272:	
	line	29
	
l1619:	
	movlw	01h
	
u2265:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2265
	line	30
	
l1621:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l1615
u2270:
	goto	l1623
	
l273:	
	goto	l1623
	line	31
	
l267:	
	line	32
	
l1623:	
	movf	(___awmod@sign),w
	skipz
	goto	u2280
	goto	l1627
u2280:
	line	33
	
l1625:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1627
	
l274:	
	line	34
	
l1627:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l275
	
l1629:	
	line	35
	
l275:	
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
;;  divisor         2    4[COMMON] int 
;;  dividend        2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    3[BANK0 ] int 
;;  sign            1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         4       5       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___awdiv
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1549:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1551:	
	btfss	(___awdiv@divisor+1),7
	goto	u2101
	goto	u2100
u2101:
	goto	l1557
u2100:
	line	16
	
l1553:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1555:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1557
	line	18
	
l252:	
	line	19
	
l1557:	
	btfss	(___awdiv@dividend+1),7
	goto	u2111
	goto	u2110
u2111:
	goto	l1563
u2110:
	line	20
	
l1559:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1561:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1563
	line	22
	
l253:	
	line	23
	
l1563:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1565:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l1585
u2120:
	line	25
	
l1567:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1573
	
l256:	
	line	27
	
l1569:	
	movlw	01h
	
u2135:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2135
	line	28
	
l1571:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1573
	line	29
	
l255:	
	line	26
	
l1573:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l1569
u2140:
	goto	l1575
	
l257:	
	goto	l1575
	line	30
	
l258:	
	line	31
	
l1575:	
	movlw	01h
	
u2155:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2155
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2165
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2165:
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1581
u2160:
	line	33
	
l1577:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1579:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1581
	line	35
	
l259:	
	line	36
	
l1581:	
	movlw	01h
	
u2175:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2175
	line	37
	
l1583:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l1575
u2180:
	goto	l1585
	
l260:	
	goto	l1585
	line	38
	
l254:	
	line	39
	
l1585:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2190
	goto	l1589
u2190:
	line	40
	
l1587:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1589
	
l261:	
	line	41
	
l1589:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l262
	
l1591:	
	line	42
	
l262:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 16 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
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
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
	line	16
global __ptext14
__ptext14:	;psect for function _ISR
psect	text14
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #5\LE5\LE5-2.c"
	line	16
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 3
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
psect	text14
	line	17
	
i1l1317:	
;LE5-2.c: 17: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	19
;LE5-2.c: 19: if(ADIF == 1) {
	btfss	(102/8),(102)&7	;volatile
	goto	u166_21
	goto	u166_20
u166_21:
	goto	i1l1323
u166_20:
	line	20
	
i1l1319:	
;LE5-2.c: 20: ADIF = 0;
	bcf	(102/8),(102)&7	;volatile
	line	21
	
i1l1321:	
;LE5-2.c: 21: ad_flag = 1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ad_flag)^080h
	movlw	high(01h)
	movwf	((_ad_flag)^080h)+1
	goto	i1l1323
	line	22
	
i1l31:	
	line	24
	
i1l1323:	
;LE5-2.c: 22: }
;LE5-2.c: 24: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	26
	
i1l32:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
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
