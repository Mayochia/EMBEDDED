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
	FNCALL	_main,___bmul
	FNCALL	_main,_dutyCycle
	FNCALL	_dutyCycle,___awtoft
	FNCALL	_dutyCycle,___ftmul
	FNCALL	_dutyCycle,___fttol
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	_period_freq
	global	_freq_PR2
	global	_percent
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
	line	17

;initializer for _period_freq
	retlw	0x12
	retlw	0x3
	retlw	0x3b

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0x12
	retlw	0x3
	retlw	0x3a

	line	16

;initializer for _freq_PR2
	retlw	07Ch
	retlw	03Eh
	retlw	01Eh
	line	13

;initializer for _percent
	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	global	_cnt_cycle
	global	_cnt_freq
	global	_period
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_period:
       ds      3

	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_T2CON
_T2CON	set	0x12
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RC2
_RC2	set	0x3A
	global	_PR2
_PR2	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
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
	file	"CPE 3201-LE4.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_cnt_cycle:
       ds      2

_cnt_freq:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
	line	17
_period_freq:
       ds      9

psect	dataBANK0
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
	line	16
_freq_PR2:
       ds      3

psect	dataBANK0
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
	line	13
_percent:
       ds      3

	file	"CPE 3201-LE4.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
	movlw low(__pdataBANK0+15)
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
?_dutyCycle:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	3
??___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	ds	3
??___ftmul:	; 0 bytes @ 0x6
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xA
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xB
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xE
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x10
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x10
	ds	4
??___fttol:	; 0 bytes @ 0x14
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x18
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x19
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1D
	ds	1
??_dutyCycle:	; 0 bytes @ 0x1E
	ds	2
	global	dutyCycle@PWM_time
dutyCycle@PWM_time:	; 3 bytes @ 0x20
	ds	3
	global	dutyCycle@result
dutyCycle@result:	; 2 bytes @ 0x23
	ds	2
??_main:	; 0 bytes @ 0x25
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        15
;!    BSS         4
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     38      60
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
;!    _dutyCycle->___awtoft
;!    ___ftmul->___awtoft
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_dutyCycle
;!    _dutyCycle->___fttol
;!    ___fttol->___ftmul
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    4389
;!                                             37 BANK0      1     1      0
;!                             ___bmul
;!                          _dutyCycle
;! ---------------------------------------------------------------------------------
;! (1) _dutyCycle                                            7     7      0    4271
;!                                             30 BANK0      7     7      0
;!                           ___awtoft
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     305
;!                                             16 BANK0     14    10      4
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             16    10      6    2145
;!                                              0 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             6     3      3    1751
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    1607
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) ___bmul                                               4     3      1     118
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___bmul
;!   _dutyCycle
;!     ___awtoft
;!       ___ftpack
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
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
;!BANK0               50     26      3C       5       75.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      4A      12        0.0%
;!ABS                  0      0      4A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___bmul
;;		_dutyCycle
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	32
	
l929:	
;LE4-7.c: 32: TRISB = 0x03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	33
	
l931:	
;LE4-7.c: 33: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	35
	
l933:	
;LE4-7.c: 35: PR2 = freq_PR2[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_freq_PR2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	36
	
l935:	
;LE4-7.c: 36: period = period_freq[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_period_freq),w
	movwf	(_period)
	movf	(_period_freq+1),w
	movwf	(_period+1)
	movf	(_period_freq+2),w
	movwf	(_period+2)
	line	38
	
l937:	
;LE4-7.c: 38: CCPR1L = 0x0C;
	movlw	(0Ch)
	movwf	(21)	;volatile
	line	39
	
l939:	
;LE4-7.c: 39: CCP1CON = 0x2C;
	movlw	(02Ch)
	movwf	(23)	;volatile
	line	41
	
l941:	
;LE4-7.c: 41: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	42
	
l943:	
;LE4-7.c: 42: T2CON = 0x06;
	movlw	(06h)
	movwf	(18)	;volatile
	goto	l945
	line	44
;LE4-7.c: 44: while(1)
	
l36:	
	line	46
	
l945:	
;LE4-7.c: 45: {
;LE4-7.c: 46: if(RB0){
	btfss	(48/8),(48)&7	;volatile
	goto	u841
	goto	u840
u841:
	goto	l37
u840:
	line	47
	
l947:	
;LE4-7.c: 47: cnt_freq++;
	movlw	low(01h)
	addwf	(_cnt_freq),f
	skipnc
	incf	(_cnt_freq+1),f
	movlw	high(01h)
	addwf	(_cnt_freq+1),f
	line	48
	
l949:	
;LE4-7.c: 48: if(cnt_freq > 2)
	movf	(_cnt_freq+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u855
	movlw	low(03h)
	subwf	(_cnt_freq),w
u855:

	skipc
	goto	u851
	goto	u850
u851:
	goto	l953
u850:
	line	49
	
l951:	
;LE4-7.c: 49: cnt_freq = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_cnt_freq)
	clrf	(_cnt_freq+1)
	goto	l953
	
l38:	
	line	51
	
l953:	
;LE4-7.c: 51: PR2 = freq_PR2[cnt_freq];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_cnt_freq),w
	addlw	_freq_PR2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	52
	
l955:	
;LE4-7.c: 52: period = period_freq[cnt_freq];
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_cnt_freq),w
	fcall	___bmul
	addlw	_period_freq&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_period)
	incf	fsr0,f
	movf	indf,w
	movwf	(_period+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(_period+2)
	line	54
	
l957:	
;LE4-7.c: 54: dutyCycle();
	fcall	_dutyCycle
	line	55
;LE4-7.c: 55: while(RB0);
	goto	l39
	
l40:	
	
l39:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u861
	goto	u860
u861:
	goto	l39
u860:
	goto	l37
	
l41:	
	line	56
	
l37:	
	line	58
;LE4-7.c: 56: }
;LE4-7.c: 58: if(RB1){
	btfss	(49/8),(49)&7	;volatile
	goto	u871
	goto	u870
u871:
	goto	l945
u870:
	line	59
	
l959:	
;LE4-7.c: 59: cnt_cycle++;
	movlw	low(01h)
	addwf	(_cnt_cycle),f
	skipnc
	incf	(_cnt_cycle+1),f
	movlw	high(01h)
	addwf	(_cnt_cycle+1),f
	line	60
;LE4-7.c: 60: switch(cnt_cycle){
	goto	l977
	line	61
;LE4-7.c: 61: case 0: percent = 0.1; break;
	
l44:	
	
l961:	
	movlw	0xcd
	movwf	(_percent)
	movlw	0xcc
	movwf	(_percent+1)
	movlw	0x3d
	movwf	(_percent+2)
	goto	l979
	line	62
;LE4-7.c: 62: case 1: percent = 0.25; break;
	
l46:	
	
l963:	
	movlw	0x0
	movwf	(_percent)
	movlw	0x80
	movwf	(_percent+1)
	movlw	0x3e
	movwf	(_percent+2)
	goto	l979
	line	63
;LE4-7.c: 63: case 2: percent = 0.5; break;
	
l47:	
	
l965:	
	movlw	0x0
	movwf	(_percent)
	movlw	0x0
	movwf	(_percent+1)
	movlw	0x3f
	movwf	(_percent+2)
	goto	l979
	line	64
;LE4-7.c: 64: case 3: percent = 0.75; break;
	
l48:	
	
l967:	
	movlw	0x0
	movwf	(_percent)
	movlw	0x40
	movwf	(_percent+1)
	movlw	0x3f
	movwf	(_percent+2)
	goto	l979
	line	65
;LE4-7.c: 65: case 4: percent = 0.95; break;
	
l49:	
	
l969:	
	movlw	0x33
	movwf	(_percent)
	movlw	0x73
	movwf	(_percent+1)
	movlw	0x3f
	movwf	(_percent+2)
	goto	l979
	line	66
;LE4-7.c: 66: default: cnt_cycle = 0; percent = 0.1; break;
	
l50:	
	
l971:	
	clrf	(_cnt_cycle)
	clrf	(_cnt_cycle+1)
	
l973:	
	movlw	0xcd
	movwf	(_percent)
	movlw	0xcc
	movwf	(_percent+1)
	movlw	0x3d
	movwf	(_percent+2)
	goto	l979
	line	67
	
l975:	
;LE4-7.c: 67: }
	goto	l979
	line	60
	
l43:	
	
l977:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_cnt_cycle+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1017
	goto	l971
	opt asmopt_on
	
l1017:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_cnt_cycle),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l961
	xorlw	1^0	; case 1
	skipnz
	goto	l963
	xorlw	2^1	; case 2
	skipnz
	goto	l965
	xorlw	3^2	; case 3
	skipnz
	goto	l967
	xorlw	4^3	; case 4
	skipnz
	goto	l969
	goto	l971
	opt asmopt_on

	line	67
	
l45:	
	line	69
	
l979:	
;LE4-7.c: 69: dutyCycle();
	fcall	_dutyCycle
	line	70
;LE4-7.c: 70: while(RB1);
	goto	l51
	
l52:	
	
l51:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	goto	u881
	goto	u880
u881:
	goto	l51
u880:
	goto	l945
	
l53:	
	goto	l945
	line	71
	
l42:	
	goto	l945
	line	72
	
l54:	
	line	44
	goto	l945
	
l55:	
	line	73
	
l56:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_dutyCycle

;; *************** function _dutyCycle *****************
;; Defined at:
;;		line 19 in file "D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  PWM_time        3   32[BANK0 ] float 
;;  result          2   35[BANK0 ] unsigned int 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	19
global __ptext1
__ptext1:	;psect for function _dutyCycle
psect	text1
	file	"D:\From old laptop\Subjects\Uni\3rd Year M\2nd sem\Embedded Systems\Practical Activities\Practical Activity #4\LE4-7\LE4-7.c"
	line	19
	global	__size_of_dutyCycle
	__size_of_dutyCycle	equ	__end_of_dutyCycle-_dutyCycle
	
_dutyCycle:	
;incstack = 0
	opt	stack 5
; Regs used in _dutyCycle: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l901:	
;LE4-7.c: 20: unsigned int result = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(dutyCycle@result)
	clrf	(dutyCycle@result+1)
	line	21
	
l903:	
;LE4-7.c: 21: float PWM_time = 0;
	movlw	0x0
	movwf	(dutyCycle@PWM_time)
	movlw	0x0
	movwf	(dutyCycle@PWM_time+1)
	movlw	0x0
	movwf	(dutyCycle@PWM_time+2)
	line	23
	
l905:	
;LE4-7.c: 23: PWM_time = percent * (PR2 + 1);
	movf	(_percent),w
	movwf	(___ftmul@f1)
	movf	(_percent+1),w
	movwf	(___ftmul@f1+1)
	movf	(_percent+2),w
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(146)^080h,w	;volatile
	addlw	low(01h)
	movwf	(___awtoft@c)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((___awtoft@c))+1
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
	movwf	(dutyCycle@PWM_time)
	movf	(1+(?___ftmul)),w
	movwf	(dutyCycle@PWM_time+1)
	movf	(2+(?___ftmul)),w
	movwf	(dutyCycle@PWM_time+2)
	line	24
	
l907:	
;LE4-7.c: 24: result = (unsigned int)(PWM_time * 4);
	movf	(dutyCycle@PWM_time),w
	movwf	(___ftmul@f2)
	movf	(dutyCycle@PWM_time+1),w
	movwf	(___ftmul@f2+1)
	movf	(dutyCycle@PWM_time+2),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0x40
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
	movf	1+(((0+(?___fttol)))),w
	clrf	(dutyCycle@result+1)
	addwf	(dutyCycle@result+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(dutyCycle@result)
	addwf	(dutyCycle@result)

	line	26
	
l909:	
;LE4-7.c: 26: CCPR1L = result >> 2;
	movf	(dutyCycle@result+1),w
	movwf	(??_dutyCycle+0)+0+1
	movf	(dutyCycle@result),w
	movwf	(??_dutyCycle+0)+0
	clrc
	rrf	(??_dutyCycle+0)+1,f
	rrf	(??_dutyCycle+0)+0,f
	clrc
	rrf	(??_dutyCycle+0)+1,f
	rrf	(??_dutyCycle+0)+0,f
	movf	0+(??_dutyCycle+0)+0,w
	movwf	(21)	;volatile
	line	27
	
l911:	
;LE4-7.c: 27: CCP1CON = ((result & 0x03) << 4) | 0x0C;
	movf	(dutyCycle@result),w
	andlw	03h
	movwf	(??_dutyCycle+0)+0
	movlw	(04h)-1
u815:
	clrc
	rlf	(??_dutyCycle+0)+0,f
	addlw	-1
	skipz
	goto	u815
	clrc
	rlf	(??_dutyCycle+0)+0,w
	iorlw	0Ch
	movwf	(23)	;volatile
	line	28
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_dutyCycle
	__end_of_dutyCycle:
	signat	_dutyCycle,88
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   25[BANK0 ] unsigned long 
;;  exp1            1   29[BANK0 ] unsigned char 
;;  sign1           1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[BANK0 ] long 
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
;;		_dutyCycle
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext2
__ptext2:	;psect for function ___fttol
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l857:	
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
	goto	u711
	goto	u710
u711:
	goto	l863
u710:
	line	50
	
l859:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l382
	
l861:	
	goto	l382
	
l381:	
	line	51
	
l863:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u725:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u720:
	addlw	-1
	skipz
	goto	u725
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l865:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l867:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l869:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l871:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l873:	
	btfss	(___fttol@exp1),7
	goto	u731
	goto	u730
u731:
	goto	l883
u730:
	line	57
	
l875:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u741
	goto	u740
u741:
	goto	l881
u740:
	line	58
	
l877:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l382
	
l879:	
	goto	l382
	
l384:	
	goto	l881
	line	59
	
l385:	
	line	60
	
l881:	
	movlw	01h
u755:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u755

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u761
	goto	u760
u761:
	goto	l881
u760:
	goto	l893
	
l386:	
	line	62
	goto	l893
	
l383:	
	line	63
	
l883:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u771
	goto	u770
u771:
	goto	l891
u770:
	line	64
	
l885:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l382
	
l887:	
	goto	l382
	
l388:	
	line	65
	goto	l891
	
l390:	
	line	66
	
l889:	
	movlw	01h
	movwf	(??___fttol+0)+0
u785:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u785
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l891
	line	68
	
l389:	
	line	65
	
l891:	
	movf	(___fttol@exp1),f
	skipz
	goto	u791
	goto	u790
u791:
	goto	l889
u790:
	goto	l893
	
l391:	
	goto	l893
	line	69
	
l387:	
	line	70
	
l893:	
	movf	(___fttol@sign1),w
	skipz
	goto	u800
	goto	l897
u800:
	line	71
	
l895:	
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
	goto	l897
	
l392:	
	line	72
	
l897:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l382
	
l899:	
	line	73
	
l382:	
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
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   11[BANK0 ] unsigned um
;;  sign            1   15[BANK0 ] unsigned char 
;;  cntr            1   14[BANK0 ] unsigned char 
;;  exp             1   10[BANK0 ] unsigned char 
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
;;		_dutyCycle
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext3
__ptext3:	;psect for function ___ftmul
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l807:	
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
	goto	u571
	goto	u570
u571:
	goto	l813
u570:
	line	68
	
l809:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l362
	
l811:	
	goto	l362
	
l361:	
	line	69
	
l813:	
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
	goto	u581
	goto	u580
u581:
	goto	l819
u580:
	line	70
	
l815:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l362
	
l817:	
	goto	l362
	
l363:	
	line	71
	
l819:	
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
u595:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u590:
	addlw	-1
	skipz
	goto	u595
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
u605:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u600:
	addlw	-1
	skipz
	goto	u605
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
	
l821:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l823:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l825:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l827:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l829:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l831
	line	135
	
l364:	
	line	136
	
l831:	
	btfss	(___ftmul@f1),(0)&7
	goto	u611
	goto	u610
u611:
	goto	l835
u610:
	line	137
	
l833:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u621
	addwf	(___ftmul@f3_as_product+1),f
u621:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u622
	addwf	(___ftmul@f3_as_product+2),f
u622:

	goto	l835
	
l365:	
	line	138
	
l835:	
	movlw	01h
u635:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u635

	line	139
	
l837:	
	movlw	01h
u645:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u645
	line	140
	
l839:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l831
u650:
	goto	l841
	
l366:	
	line	143
	
l841:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l843
	line	144
	
l367:	
	line	145
	
l843:	
	btfss	(___ftmul@f1),(0)&7
	goto	u661
	goto	u660
u661:
	goto	l847
u660:
	line	146
	
l845:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u671
	addwf	(___ftmul@f3_as_product+1),f
u671:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u672
	addwf	(___ftmul@f3_as_product+2),f
u672:

	goto	l847
	
l368:	
	line	147
	
l847:	
	movlw	01h
u685:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u685

	line	148
	
l849:	
	movlw	01h
u695:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u695

	line	149
	
l851:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l843
u700:
	goto	l853
	
l369:	
	line	156
	
l853:	
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
	goto	l362
	
l855:	
	line	157
	
l362:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
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
;;		_dutyCycle
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext4
__ptext4:	;psect for function ___awtoft
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l795:	
	clrf	(___awtoft@sign)
	line	37
	
l797:	
	btfss	(___awtoft@c+1),7
	goto	u561
	goto	u560
u561:
	goto	l803
u560:
	line	38
	
l799:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l801:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l803
	line	40
	
l290:	
	line	41
	
l803:	
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
	goto	l291
	
l805:	
	line	42
	
l291:	
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
;;		___awtoft
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext5
__ptext5:	;psect for function ___ftpack
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l765:	
	movf	(___ftpack@exp),w
	skipz
	goto	u450
	goto	l769
u450:
	
l767:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u461
	goto	u460
u461:
	goto	l775
u460:
	goto	l769
	
l296:	
	line	65
	
l769:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l297
	
l771:	
	goto	l297
	
l294:	
	line	66
	goto	l775
	
l299:	
	line	67
	
l773:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u475:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u475

	goto	l775
	line	69
	
l298:	
	line	66
	
l775:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u481
	goto	u480
u481:
	goto	l773
u480:
	goto	l301
	
l300:	
	line	70
	goto	l301
	
l302:	
	line	71
	
l777:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l779:	
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
	
l781:	
	movlw	01h
u495:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u495

	line	74
	
l301:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l777
u500:
	goto	l785
	
l303:	
	line	75
	goto	l785
	
l305:	
	line	76
	
l783:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u515:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u515
	goto	l785
	line	78
	
l304:	
	line	75
	
l785:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u521
	goto	u520
u521:
	goto	l783
u520:
	
l306:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u531
	goto	u530
u531:
	goto	l307
u530:
	line	80
	
l787:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l307:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l789:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u545:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u540:
	addlw	-1
	skipz
	goto	u545
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l791:	
	movf	(___ftpack@sign),w
	skipz
	goto	u550
	goto	l308
u550:
	line	84
	
l793:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l308:	
	line	85
	line	86
	
l297:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext6
__ptext6:	;psect for function ___bmul
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 7
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l913:	
	clrf	(___bmul@product)
	goto	l915
	line	42
	
l157:	
	line	43
	
l915:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u821
	goto	u820
u821:
	goto	l919
u820:
	line	44
	
l917:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l919
	
l158:	
	line	45
	
l919:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l921:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l923:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u831
	goto	u830
u831:
	goto	l915
u830:
	goto	l925
	
l159:	
	line	50
	
l925:	
	movf	(___bmul@product),w
	goto	l160
	
l927:	
	line	51
	
l160:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
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
