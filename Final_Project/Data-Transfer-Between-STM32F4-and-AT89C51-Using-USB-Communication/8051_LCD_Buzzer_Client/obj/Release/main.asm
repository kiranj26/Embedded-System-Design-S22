;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _init_timer
	.globl _timer0_ISR
	.globl _delay_sec
	.globl _delay_ms
	.globl __sdcc_external_startup
	.globl _get_cursor_address
	.globl _handle_newuser_custom_char
	.globl _handle_unlock_custom_char
	.globl _handle_lock_custom_char
	.globl _handler_lcdclear
	.globl _lcdputstr
	.globl _lcdgotoxy
	.globl _lcdgotoaddr
	.globl _init_lcd
	.globl _uart_init
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
	.globl _minutes_tens_digit
	.globl _minutes_ones_digit
	.globl _seconds_tens_digit
	.globl _seconds_ones_digit
	.globl _tenth_of_second
	.globl _update_lcd
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_delay_ms_ms_65536_102:
	.ds 2
_delay_sec_sec_65536_106:
	.ds 2
_timer0_ISR_counter_02s_65537_110:
	.ds 2
_timer0_ISR_save_cursor_addr_65537_110:
	.ds 1
_main_fingerprint_count_65536_120:
	.ds 2
_main_char_detected_196608_122:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_update_lcd::
	.ds 2
_tenth_of_second::
	.ds 1
_seconds_ones_digit::
	.ds 1
_seconds_tens_digit::
	.ds 1
_minutes_ones_digit::
	.ds 1
_minutes_tens_digit::
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
	ljmp	_timer0_ISR
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
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_110'
;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_110'
;------------------------------------------------------------
;	main.c:73: static int counter_02s = 0; // Initialize a static variable called counter_02s with a value of 0
	mov	dptr,#_timer0_ISR_counter_02s_65537_110
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;fingerprint_count         Allocated with name '_main_fingerprint_count_65536_120'
;char_detected             Allocated with name '_main_char_detected_196608_122'
;------------------------------------------------------------
;	main.c:129: static int fingerprint_count = 0;
	mov	dptr,#_main_fingerprint_count_65536_120
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;	main.c:40: _sdcc_external_startup()
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
;	main.c:43: AUXR |= (XRS1 | XRS0);
	orl	_AUXR,#0x0c
;	main.c:45: return 0;
	mov	dptr,#0x0000
;	main.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_65536_102'
;i                         Allocated with name '_delay_ms_i_65536_103'
;j                         Allocated with name '_delay_ms_j_65536_103'
;------------------------------------------------------------
;	main.c:56: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_ms_65536_102
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:58: for(i = 0; i < ms; i++)
	mov	dptr,#_delay_ms_ms_65536_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	main.c:59: for(j = 0; j < 1275; j++);
	mov	r2,#0xfb
	mov	r3,#0x04
00105$:
	dec	r2
	cjne	r2,#0xff,00130$
	dec	r3
00130$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	main.c:58: for(i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_sec'
;------------------------------------------------------------
;sec                       Allocated with name '_delay_sec_sec_65536_106'
;i                         Allocated with name '_delay_sec_i_65536_107'
;------------------------------------------------------------
;	main.c:62: void delay_sec(unsigned int sec) {
;	-----------------------------------------
;	 function delay_sec
;	-----------------------------------------
_delay_sec:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_sec_sec_65536_106
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:64: for(i = 0; i < sec; i++)
	mov	dptr,#_delay_sec_sec_65536_106
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	main.c:65: delay_ms(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:64: for(i = 0; i < sec; i++)
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	main.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_110'
;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_110'
;------------------------------------------------------------
;	main.c:68: void timer0_ISR() __interrupt(1) { // Define Timer 0 interrupt service routine
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:69: EA = 0;     // Disable interrupts
;	assignBit
	clr	_EA
;	main.c:71: TF0 = 0;    // Clear Timer 0 interrupt flag
;	assignBit
	clr	_TF0
;	main.c:74: volatile uint8_t save_cursor_addr = get_cursor_address(); // Get the current cursor address and store it in save_cursor_addr
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_110
	movx	@dptr,a
;	main.c:77: if (counter_02s == 2) { // If the counter_02s equals 2, which means 0.2 seconds have passed
	mov	dptr,#_timer0_ISR_counter_02s_65537_110
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00102$
	cjne	r7,#0x00,00102$
;	main.c:78: P1_1 = P1_1 ^ 1;    // Toggle pin P1_1
	cpl	_P1_1
;	main.c:79: update_lcd  = 1;    // Set the update_lcd flag to 1 to update the LCD
	mov	dptr,#_update_lcd
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:80: counter_02s = 0;    // Reset the counter_02s
	mov	dptr,#_timer0_ISR_counter_02s_65537_110
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:81: tenth_of_second++;  // Increment the tenth of a second counter
	mov	dptr,#_tenth_of_second
	movx	a,@dptr
	inc	a
	movx	@dptr,a
00102$:
;	main.c:83: counter_02s++;  // Increment the counter_02s
	mov	dptr,#_timer0_ISR_counter_02s_65537_110
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:85: TL0 = 0xfd;     // Set the low value of Timer 0 to 0xfd
	mov	_TL0,#0xfd
;	main.c:86: TH0 = 0x4b;     // Set the high value of Timer 0 to 0x4b
	mov	_TH0,#0x4b
;	main.c:88: if (tenth_of_second == ':') { // If the tenth of a second counter equals ':', which means 1 second has passed
	mov	dptr,#_tenth_of_second
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,00112$
;	main.c:89: tenth_of_second = '0'; // Reset the tenth of a second counter to '0'
	mov	dptr,#_tenth_of_second
	mov	a,#0x30
	movx	@dptr,a
;	main.c:90: seconds_ones_digit++; // Increment the first digit of the seconds counter
	mov	dptr,#_seconds_ones_digit
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:92: if (seconds_ones_digit == ':') { // If the first digit of the seconds counter equals ':', which means 10 seconds have passed
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,00112$
;	main.c:93: seconds_ones_digit = '0'; // Reset the first digit of the seconds counter to '0'
	mov	dptr,#_seconds_ones_digit
	mov	a,#0x30
	movx	@dptr,a
;	main.c:94: seconds_tens_digit++; // Increment the second digit of the seconds counter
	mov	dptr,#_seconds_tens_digit
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:96: if (seconds_tens_digit == '6') { // If the second digit of the seconds counter equals '6', which means 1 minute has passed
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00112$
;	main.c:97: seconds_tens_digit = '0'; // Reset the second digit of the seconds counter to '0'
	mov	dptr,#_seconds_tens_digit
	mov	a,#0x30
	movx	@dptr,a
;	main.c:98: minutes_ones_digit++; // Increment the first digit of the minutes counter
	mov	dptr,#_minutes_ones_digit
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:100: if (minutes_ones_digit == ':') { // If the first digit of the minutes counter equals ':', which means 10 minutes have passed
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,00112$
;	main.c:101: minutes_ones_digit = '0'; // Reset the first digit of the minutes counter to '0'
	mov	dptr,#_minutes_ones_digit
	mov	a,#0x30
	movx	@dptr,a
;	main.c:102: minutes_tens_digit++; // Increment the second digit of the minutes counter
	mov	dptr,#_minutes_tens_digit
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:104: if (minutes_tens_digit == '6') { // If the second digit of the minutes counter equals '6', which means 1 hour has passed
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00112$
;	main.c:105: minutes_tens_digit = '0'; // Reset the second digit of the minutes counter to '0'
	mov	dptr,#_minutes_tens_digit
	mov	a,#0x30
	movx	@dptr,a
00112$:
;	main.c:111: lcdgotoaddr(save_cursor_addr); // Move the cursor to the previous cursor address
	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_110
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	main.c:112: EA=1; // Enable interrupts
;	assignBit
	setb	_EA
;	main.c:113: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer'
;------------------------------------------------------------
;	main.c:116: void init_timer(void){
;	-----------------------------------------
;	 function init_timer
;	-----------------------------------------
_init_timer:
;	main.c:117: TCON=TCON&(~0x30);   // Clearing the last 2 bits in TCON register
	anl	_TCON,#0xcf
;	main.c:118: TMOD |= 0x01;        // Setting the Timer 0 mode to 16-bit mode
	orl	_TMOD,#0x01
;	main.c:119: TL0 = 0xfd;          // Setting the initial value of Timer 0 low byte
	mov	_TL0,#0xfd
;	main.c:120: TH0 = 0x4b;          // Setting the initial value of Timer 0 high byte
	mov	_TH0,#0x4b
;	main.c:121: IE   |=0x82;         // Enabling Timer 0 interrupt
	orl	_IE,#0x82
;	main.c:122: PT0 = 1;             // Setting the Timer 0 interrupt priority to high
;	assignBit
	setb	_PT0
;	main.c:123: TR0 = 1;             // Starting Timer 0
;	assignBit
	setb	_TR0
;	main.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;fingerprint_count         Allocated with name '_main_fingerprint_count_65536_120'
;char_detected             Allocated with name '_main_char_detected_196608_122'
;------------------------------------------------------------
;	main.c:127: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:131: uart_init();        // Initialize UART for serial communication
	lcall	_uart_init
;	main.c:132: init_lcd();         // Initialize LCD
	lcall	_init_lcd
;	main.c:135: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:136: lcdputstr("Hello");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:137: lcdgotoxy('1','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	main.c:138: lcdputstr("STM32F411E-Disco");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:139: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:140: delay_sec(1);
	mov	dptr,#0x0001
	lcall	_delay_sec
;	main.c:141: while(1)
00111$:
;	main.c:152: if(RI)
	jnb	_RI,00111$
;	main.c:155: char_detected = SBUF;           // Store the character in a variable
	mov	dptr,#_main_char_detected_196608_122
	mov	a,_SBUF
	movx	@dptr,a
;	main.c:159: RI = 0;                         // Reset the flag
;	assignBit
	clr	_RI
;	main.c:161: switch(char_detected)           // Perform a certain action based on the received character
	mov	dptr,#_main_char_detected_196608_122
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00144$
	sjmp	00101$
00144$:
	cjne	r7,#0x42,00145$
	sjmp	00102$
00145$:
	cjne	r7,#0x43,00146$
	ljmp	00103$
00146$:
	cjne	r7,#0x44,00147$
	ljmp	00104$
00147$:
	cjne	r7,#0x5a,00148$
	ljmp	00105$
00148$:
;	main.c:163: case 'A':                       // If the character 'L' is received
	sjmp	00111$
00101$:
;	main.c:176: }
	setb	_main_sloc0_1_0
	jbc	ea,00149$
	clr	_main_sloc0_1_0
00149$:
;	main.c:167: handler_lcdclear();
	lcall	_handler_lcdclear
;	main.c:168: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:169: lcdputstr("|   New User   |");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:170: lcdgotoxy('1','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	main.c:171: lcdputstr("|   Enrolled   |");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:172: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:173: handle_newuser_custom_char();
	lcall	_handle_newuser_custom_char
;	main.c:174: delay_sec(1);
	mov	dptr,#0x0001
	lcall	_delay_sec
;	main.c:175: fingerprint_count++;
	mov	dptr,#_main_fingerprint_count_65536_120
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:177: break;
	ljmp	00111$
;	main.c:179: case 'B': // If the character 'A' is received
00102$:
;	main.c:180: handler_lcdclear();
	lcall	_handler_lcdclear
;	main.c:181: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:182: lcdputstr("|      User    |");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:183: lcdgotoxy('1','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	main.c:184: lcdputstr("|  Authorized  |");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:185: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:186: handle_unlock_custom_char();
	lcall	_handle_unlock_custom_char
;	main.c:187: delay_sec(1);
	mov	dptr,#0x0001
	lcall	_delay_sec
;	main.c:188: break;
	ljmp	00111$
;	main.c:190: case 'C': // If the character 'B' is received
00103$:
;	main.c:191: handler_lcdclear();
	lcall	_handler_lcdclear
;	main.c:192: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:193: lcdputstr("|     User     |");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:194: lcdgotoxy('1','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	main.c:195: lcdputstr("| Un-Authorized|");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:196: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:197: handle_lock_custom_char();
	lcall	_handle_lock_custom_char
;	main.c:198: delay_sec(1);
	mov	dptr,#0x0001
	lcall	_delay_sec
;	main.c:199: break;
	ljmp	00111$
;	main.c:201: case 'D': // If the character 'C' is received
00104$:
;	main.c:202: handler_lcdclear();
	lcall	_handler_lcdclear
;	main.c:203: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:204: lcdputstr("|  Existing    |");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:205: lcdgotoxy('1','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	main.c:206: lcdputstr("|  Data Base   |");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:207: lcdgotoxy('2','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x32
	lcall	_lcdgotoxy
;	main.c:208: lcdputstr("|   Cleared    |");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:209: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:210: delay_sec(1);
	mov	dptr,#0x0001
	lcall	_delay_sec
;	main.c:212: break;
	ljmp	00111$
;	main.c:271: case 'Z': // If the character 'P' is received
00105$:
;	main.c:272: handler_lcdclear();
	lcall	_handler_lcdclear
;	main.c:273: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:274: delay_sec(1);
	mov	dptr,#0x0001
	lcall	_delay_sec
;	main.c:275: break;
;	main.c:279: }
;	main.c:282: }
	ljmp	00111$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Hello"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "STM32F411E-Disco"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "|   New User   |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "|   Enrolled   |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "|      User    |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "|  Authorized  |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "|     User     |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "| Un-Authorized|"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "|  Existing    |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "|  Data Base   |"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "|   Cleared    |"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__update_lcd:
	.byte #0x00, #0x00	;  0
__xinit__tenth_of_second:
	.db #0x30	; 48	'0'
__xinit__seconds_ones_digit:
	.db #0x30	; 48	'0'
__xinit__seconds_tens_digit:
	.db #0x30	; 48	'0'
__xinit__minutes_ones_digit:
	.db #0x30	; 48	'0'
__xinit__minutes_tens_digit:
	.db #0x30	; 48	'0'
	.area CABS    (ABS,CODE)
