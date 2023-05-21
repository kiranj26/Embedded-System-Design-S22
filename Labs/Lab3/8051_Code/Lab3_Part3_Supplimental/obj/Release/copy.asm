;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module copy
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_rx_isr
	.globl _main
	.globl _hardware_init
	.globl __sdcc_external_startup
	.globl _ucontroller_power_down_mode
	.globl _fclk_periph_max_freq
	.globl _fclk_periph_min_freq
	.globl _stop_pwm
	.globl _start_pwm
	.globl _putchar
	.globl _getchar
	.globl _stop_high_speed_output
	.globl _start_high_speed_output
	.globl _printf_tiny
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TXD0
	.globl _RXD0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _SBUF0
	.globl _DP0L
	.globl _DP0H
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _is_ucontroller_active
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_DP0H	=	0x0083
_DP0L	=	0x0082
_SBUF0	=	0x0099
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_RXD0	=	0x00b0
_TXD0	=	0x00b1
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_is_ucontroller_active::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart_rx_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	copy.c:26: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	copy.c:29: AUXR |= (XRS1 | XRS0);
	orl	_AUXR,#0x0c
;	copy.c:32: return 0;
	mov	dptr,#0x0000
;	copy.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hardware_init'
;------------------------------------------------------------
;	copy.c:39: void hardware_init(void)
;	-----------------------------------------
;	 function hardware_init
;	-----------------------------------------
_hardware_init:
;	copy.c:41: CKCON0 |= (1 << 0);     // Set bit X2 to 1
	orl	_CKCON0,#0x01
;	copy.c:42: IEN0   |= (1 << 7);     // Set bit EA to 1
	orl	_IEN0,#0x80
;	copy.c:44: TMOD |= (1 << 5);                        //TIMER 1, MODE 2
	orl	_TMOD,#0x20
;	copy.c:45: SCON |= ((1 << 4) | (1 << 6));           //8 BIT, 1 STOP , REN ENABLED
	orl	_SCON,#0x50
;	copy.c:46: TCON |= (1 << 6); 	                     //START TIMER1
	orl	_TCON,#0x40
;	copy.c:48: TH1 = 0xFD;             // Reload Value = 256 - (9600 / 32 / 12) = 253 for Baud Rate - 9600
	mov	_TH1,#0xfd
;	copy.c:49: TI = 1;                 // Sets the bit 1 of the SCON register to 1
;	assignBit
	setb	_TI
;	copy.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;char_detected             Allocated with name '_main_char_detected_65536_86'
;------------------------------------------------------------
;	copy.c:55: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	copy.c:59: hardware_init();
	lcall	_hardware_init
;	copy.c:62: printf_tiny("\033[1;35m|***********************************************|\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:63: printf_tiny("|****** \033[1;36mUSER INTERFACE Lab 3 Supplimental \033[1;35m******|\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:64: printf_tiny("|  Choose a character from the below options    |\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:65: printf_tiny("|  \033[1;35mR\033[1;35m    | Run PWM Timer (33% Duty Cycle)        |\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:66: printf_tiny("|  \033[1;35mS\033[1;35m    | Stop PWM Timer                        |\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:67: printf_tiny("|  \033[1;35mH\033[1;35m    | High Speed Output                     |\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:68: printf_tiny("|  \033[1;35mM\033[1;35m    | Min Fclkperph frequency               |\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:69: printf_tiny("|  \033[1;35mN\033[1;35m    | Max Fclkperph frequency               |\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:70: printf_tiny("|  \033[1;35mI\033[1;35m    | Enter IDLE mode                       |\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:71: printf_tiny("|  \033[1;35mP\033[1;35m    | Enter POWERDOWN mode                  |\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:72: printf_tiny("\033[1;35m|***********************************************|\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:73: printf_tiny("|***********************************************|\n\r\n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:75: while(1)
00117$:
;	copy.c:77: if(is_ucontroller_active)
	mov	dptr,#_is_ucontroller_active
	movx	a,@dptr
	jnz	00165$
	ljmp	00114$
00165$:
;	copy.c:80: printf_tiny("\033[1;36m|***********************************************|\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:81: printf_tiny("\033[1;36m|                Enter Character                |\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:82: printf_tiny("\033[1;36m|***********************************************|\n\r\033[1;0m");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:85: char_detected = getchar();              // Read a character from input
	lcall	_getchar
	mov	r6,dpl
;	copy.c:86: putchar(char_detected);                 // Echo the character back to output
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
;	copy.c:87: putchar(' ');                           // Add a space to separate characters for readability
	mov	dptr,#0x0020
	lcall	_putchar
	pop	ar6
;	copy.c:89: switch(char_detected)
	cjne	r6,#0x48,00166$
	sjmp	00103$
00166$:
	cjne	r6,#0x49,00167$
	sjmp	00107$
00167$:
	cjne	r6,#0x4a,00168$
	sjmp	00104$
00168$:
	cjne	r6,#0x4d,00169$
	sjmp	00105$
00169$:
	cjne	r6,#0x4e,00170$
	sjmp	00106$
00170$:
	cjne	r6,#0x50,00171$
	sjmp	00108$
00171$:
	cjne	r6,#0x52,00172$
	sjmp	00101$
00172$:
;	copy.c:91: case 'R':
	cjne	r6,#0x53,00109$
	sjmp	00102$
00101$:
;	copy.c:92: start_pwm();
	lcall	_start_pwm
;	copy.c:93: break;
;	copy.c:95: case 'S':
	sjmp	00117$
00102$:
;	copy.c:96: stop_pwm();
	lcall	_stop_pwm
;	copy.c:97: break;
	ljmp	00117$
;	copy.c:99: case 'H':
00103$:
;	copy.c:100: start_high_speed_output();
	lcall	_start_high_speed_output
;	copy.c:101: break;
	ljmp	00117$
;	copy.c:103: case 'J':
00104$:
;	copy.c:104: stop_high_speed_output();
	lcall	_stop_high_speed_output
;	copy.c:105: break;
	ljmp	00117$
;	copy.c:107: case 'M':
00105$:
;	copy.c:108: fclk_periph_min_freq();
	lcall	_fclk_periph_min_freq
;	copy.c:109: break;
	ljmp	00117$
;	copy.c:111: case 'N':
00106$:
;	copy.c:112: fclk_periph_max_freq();
	lcall	_fclk_periph_max_freq
;	copy.c:113: break;
	ljmp	00117$
;	copy.c:115: case 'I':
00107$:
;	copy.c:117: is_ucontroller_active = false;   // Set the microcontroller state to "Idle"
	mov	dptr,#_is_ucontroller_active
	clr	a
	movx	@dptr,a
;	copy.c:118: PCON |= 0x01;                   // Set bit 0 to enter idle mode
	orl	_PCON,#0x01
;	copy.c:119: break;
	ljmp	00117$
;	copy.c:121: case 'P':
00108$:
;	copy.c:122: ucontroller_power_down_mode();
	lcall	_ucontroller_power_down_mode
;	copy.c:123: break;
	ljmp	00117$
;	copy.c:125: default:
00109$:
;	copy.c:126: printf_tiny("\033[1;31mInvalid Character!!\n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:127: printf_tiny("\033[1;31mSuggested Action\t: Available Characters R-S-H-M-N-I_P!!\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	copy.c:130: }
	ljmp	00117$
00114$:
;	copy.c:136: if(RI)
;	copy.c:138: RI = 0; // Clear receive interrupt flag
;	assignBit
	jbc	_RI,00174$
	ljmp	00117$
00174$:
;	copy.c:143: is_ucontroller_active = true;   // Set the microcontroller state to "Active"
	mov	dptr,#_is_ucontroller_active
	mov	a,#0x01
	movx	@dptr,a
;	copy.c:144: PCON &= ~0x01;                  // Clear bit 0 to exit idle mode
	anl	_PCON,#0xfe
;	copy.c:148: }
	ljmp	00117$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_rx_isr'
;------------------------------------------------------------
;	copy.c:149: void uart_rx_isr(void) __interrupt(4)
;	-----------------------------------------
;	 function uart_rx_isr
;	-----------------------------------------
_uart_rx_isr:
	push	acc
	push	dpl
	push	dph
;	copy.c:154: is_ucontroller_active = true;   // Set the microcontroller state to "Active"
	mov	dptr,#_is_ucontroller_active
	mov	a,#0x01
	movx	@dptr,a
;	copy.c:155: PCON &= ~0x01;                  // Clear bit 0 to exit idle mode
	anl	_PCON,#0xfe
;	copy.c:156: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[1;35m|***********************************************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "|****** "
	.db 0x1b
	.ascii "[1;36mUSER INTERFACE Lab 3 Supplimental "
	.db 0x1b
	.ascii "[1;35m******|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "|  Choose a character from the below options    |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "|  "
	.db 0x1b
	.ascii "[1;35mR"
	.db 0x1b
	.ascii "[1;35m    | Run PWM Timer (33% Duty Cycle)        |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "|  "
	.db 0x1b
	.ascii "[1;35mS"
	.db 0x1b
	.ascii "[1;35m    | Stop PWM Timer                        |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "|  "
	.db 0x1b
	.ascii "[1;35mH"
	.db 0x1b
	.ascii "[1;35m    | High Speed Output                     |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "|  "
	.db 0x1b
	.ascii "[1;35mM"
	.db 0x1b
	.ascii "[1;35m    | Min Fclkperph frequency               |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "|  "
	.db 0x1b
	.ascii "[1;35mN"
	.db 0x1b
	.ascii "[1;35m    | Max Fclkperph frequency               |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "|  "
	.db 0x1b
	.ascii "[1;35mI"
	.db 0x1b
	.ascii "[1;35m    | Enter IDLE mode                       |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "|  "
	.db 0x1b
	.ascii "[1;35mP"
	.db 0x1b
	.ascii "[1;35m    | Enter POWERDOWN mode                  |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "|***********************************************|"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x1b
	.ascii "[1;36m|***********************************************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x1b
	.ascii "[1;36m|                Enter Character                |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x1b
	.ascii "[1;36m|***********************************************|"
	.db 0x0a
	.db 0x0d
	.db 0x1b
	.ascii "[1;0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x1b
	.ascii "[1;31mInvalid Character!!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x1b
	.ascii "[1;31mSuggested Action"
	.db 0x09
	.ascii ": Available Characters R-S-H-M-N-I_P!!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__is_ucontroller_active:
	.db #0x01	;  1
	.area CABS    (ABS,CODE)
