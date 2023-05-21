;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _print_UI
	.globl _print_colored
	.globl _uart_init
	.globl _get_cursor_address
	.globl _lcdputch
	.globl _lcdgotoaddr
	.globl _printf
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
	.globl _print_colored_PARM_2
	.globl _putchar
	.globl _getchar
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
_putchar_c_65536_94:
	.ds 2
_getchar_save_cursor_address_131072_98:
	.ds 1
_print_colored_PARM_2:
	.ds 2
_print_colored_str_65536_99:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;	uart.c:48: void uart_init()
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	uart.c:51: SCON = 0x50;    // UART in mode 1 (8 bit), REN=1
	mov	_SCON,#0x50
;	uart.c:52: TMOD |= 0x20;   // Timer 1 in mode 2
	orl	_TMOD,#0x20
;	uart.c:53: TH1 = 0xFD;     // 9600 Baud rate at 11.059MHz
	mov	_TH1,#0xfd
;	uart.c:54: TL1 = 0xFD;     // 9600 Baud rate at 11.059MHz
	mov	_TL1,#0xfd
;	uart.c:55: TI = 0;         // Clear transmit interrupt flag
;	assignBit
	clr	_TI
;	uart.c:56: SBUF = 0;       // Clear transmit buffer
	mov	_SBUF,#0x00
;	uart.c:57: TR1 = 1;        // Timer 1 run
;	assignBit
	setb	_TR1
;	uart.c:58: ES = 1;         // Enable serial interrupt
;	assignBit
	setb	_ES
;	uart.c:59: EA = 1;         // Enable global interrupt
;	assignBit
	setb	_EA
;	uart.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_94'
;------------------------------------------------------------
;	uart.c:63: int putchar (int c) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_94
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	uart.c:64: while (!TI);    // Wait for the transmit interrupt flag to be set
00101$:
	jnb	_TI,00101$
;	uart.c:65: SBUF = c;       // Load the transmit buffer with the character to send
	mov	dptr,#_putchar_c_65536_94
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	uart.c:66: TI = 0;         // Clear transmit interrupt flag
;	assignBit
	clr	_TI
;	uart.c:67: return c;
	mov	dpl,r6
	mov	dph,r7
;	uart.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;save_cursor_address       Allocated with name '_getchar_save_cursor_address_131072_98'
;------------------------------------------------------------
;	uart.c:71: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	uart.c:73: while (!RI)     // Wait for the receive interrupt flag to be set
00101$:
	jb	_RI,00103$
;	uart.c:75: volatile uint8_t save_cursor_address = get_cursor_address();   // Save the current cursor address
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_getchar_save_cursor_address_131072_98
	movx	@dptr,a
;	uart.c:76: lcdgotoaddr(0x59);      // Set the cursor to the start of the line that displays the time
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	uart.c:77: lcdputch(minutes_tens_digit);   // Display the tens digit of the minutes
	mov	dptr,#_minutes_tens_digit
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	uart.c:78: lcdputch(minutes_ones_digit);   // Display the ones digit of the minutes
	mov	dptr,#_minutes_ones_digit
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	uart.c:79: lcdputch(':');          // Display the colon separator
	mov	dpl,#0x3a
	lcall	_lcdputch
;	uart.c:80: lcdputch(seconds_tens_digit);   // Display the tens digit of the seconds
	mov	dptr,#_seconds_tens_digit
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	uart.c:81: lcdputch(seconds_ones_digit);   // Display the ones digit of the seconds
	mov	dptr,#_seconds_ones_digit
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	uart.c:82: lcdputch('.');          // Display the decimal point separator
	mov	dpl,#0x2e
	lcall	_lcdputch
;	uart.c:83: lcdputch(tenth_of_second);      // Display the tenths of seconds
	mov	dptr,#_tenth_of_second
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	uart.c:84: lcdgotoaddr(save_cursor_address);   // Restore the cursor to the previous location
	mov	dptr,#_getchar_save_cursor_address_131072_98
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	uart.c:85: update_lcd = 0;         // Reset the flag that indicates a change in the time display
	mov	dptr,#_update_lcd
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00103$:
;	uart.c:87: RI = 0;             // Clear receive interrupt flag
;	assignBit
	clr	_RI
;	uart.c:88: return SBUF;        // Return the received character from the receive buffer
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	uart.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_colored'
;------------------------------------------------------------
;color_code                Allocated with name '_print_colored_PARM_2'
;str                       Allocated with name '_print_colored_str_65536_99'
;------------------------------------------------------------
;	uart.c:92: void print_colored(char* str, int color_code) {
;	-----------------------------------------
;	 function print_colored
;	-----------------------------------------
_print_colored:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_print_colored_str_65536_99
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	uart.c:93: printf("\033[1;%dm%s\033[0m", color_code, str);
	mov	dptr,#_print_colored_str_65536_99
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_print_colored_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	uart.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_UI'
;------------------------------------------------------------
;	uart.c:97: void print_UI(void)
;	-----------------------------------------
;	 function print_UI
;	-----------------------------------------
_print_UI:
;	uart.c:99: print_colored("+-------------------------------------------------+\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:100: print_colored("|           USER INTERFACE Lab 4 Part 2           |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:101: print_colored("|                      LCD                        |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:102: print_colored("+-------------------------------------------------+\n\r\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:104: printf("        ");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:105: print_colored("Please select an option below:\n\r", 34);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:106: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:108: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:109: print_colored("+---------------------------------------------+\n\r", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:110: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:111: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:112: print_colored("[A] Write a character to LCD                ", 31);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:113: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:114: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:116: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:117: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:118: print_colored("[B] Write a string to LCD                   ", 32);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:119: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:120: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:122: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:123: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:124: print_colored("[C] Go to Address (0xNN)                    ", 33);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:125: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:126: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:128: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:129: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:130: print_colored("[D] Go to Co-ordinates (x,y)                ", 31);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:131: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:132: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:134: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:135: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:136: print_colored("[E] Stop Elapsed Time                       ", 32);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:137: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:138: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:140: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:141: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:142: print_colored("[F] Resume Elapsed Time                     ", 33);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:143: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:144: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:146: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:147: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:148: print_colored("[G] Reset time to 00:00:0                   ", 31);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:149: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:150: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:152: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:153: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:154: print_colored("[H] LCD HEX Dump                            ", 32);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:155: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:156: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:158: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:159: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:160: print_colored("[I] Input Custom Characters                 ", 33);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:161: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:162: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:164: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:165: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:166: print_colored("[J] Load Smiley Logo                        ", 33);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:167: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:168: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:170: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:171: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:172: print_colored("[K] Load CU Logo                            ", 33);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:173: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:174: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:176: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:177: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:178: print_colored("[P] Print Author Info                       ", 31);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:179: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:180: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:182: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:183: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:184: print_colored("[Z] Clear LCD Screen                        ", 32);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:185: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:186: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:188: printf("   ");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:189: print_colored("+---------------------------------------------+\n\r", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_print_colored
;	uart.c:190: printf("\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:191: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[1;%dm%s"
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "+-------------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "|           USER INTERFACE Lab 4 Part 2           |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "|                      LCD                        |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "+-------------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Please select an option below:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "+---------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "| "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "[A] Write a character to LCD                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "[B] Write a string to LCD                   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "[C] Go to Address (0xNN)                    "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "[D] Go to Co-ordinates (x,y)                "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "[E] Stop Elapsed Time                       "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "[F] Resume Elapsed Time                     "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "[G] Reset time to 00:00:0                   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "[H] LCD HEX Dump                            "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "[I] Input Custom Characters                 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "[J] Load Smiley Logo                        "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "[K] Load CU Logo                            "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "[P] Print Author Info                       "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "[Z] Clear LCD Screen                        "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
