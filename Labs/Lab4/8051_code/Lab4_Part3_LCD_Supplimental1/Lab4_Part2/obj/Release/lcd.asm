;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _print_author
	.globl _handle_sadsmiley_custom_char
	.globl _handle_cu_custom_char
	.globl _handler_custom_char
	.globl _create_custom_char
	.globl _get_hex_value
	.globl _handler_lcd_hexdump
	.globl _read_lcd_address
	.globl _handler_reset_time
	.globl _handler_resume_time
	.globl _handler_stop_time
	.globl _handler_lcdgotoaddress
	.globl _handler_lcdgotoxy
	.globl _handler_wr_str_lcd
	.globl _handler_wr_c_lcd
	.globl _handler_lcdclear
	.globl _lcdputstr
	.globl _lcdputch
	.globl _lcdgotoxy
	.globl _lcdgotoaddr
	.globl _get_cursor_address
	.globl _init_lcd
	.globl _set_time_variables
	.globl _lcdbusywait
	.globl _delay
	.globl _putchar
	.globl _getchar
	.globl _strtol
	.globl _printf_tiny
	.globl _printf
	.globl _toupper
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
	.globl _save_cursor_address
	.globl _create_custom_char_PARM_2
	.globl _read_lcd_address_PARM_2
	.globl _lcdgotoxy_PARM_2
	.globl _string
	.globl _lcd_ptr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_create_custom_char_sloc0_1_0:
	.ds 3
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
_handler_wr_c_lcd_sloc0_1_0:
	.ds 1
_handler_wr_str_lcd_sloc0_1_0:
	.ds 1
_handler_lcdgotoxy_sloc0_1_0:
	.ds 1
_handler_lcdgotoaddress_sloc0_1_0:
	.ds 1
_handler_lcd_hexdump_sloc0_1_0:
	.ds 1
_handler_custom_char_sloc0_1_0:
	.ds 1
_handle_cu_custom_char_sloc0_1_0:
	.ds 1
_handle_sadsmiley_custom_char_sloc0_1_0:
	.ds 1
_print_author_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_lcd_ptr	=	0xf000
_string::
	.ds 3
_delay_milliseconds_65536_92:
	.ds 2
_lcdgotoaddr_address_65536_104:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 1
_lcdgotoxy_row_65536_106:
	.ds 1
_lcdgotoxy_address_65536_107:
	.ds 1
_lcdputch_cc_65536_114:
	.ds 1
_lcdputstr_ss_65536_117:
	.ds 3
_handler_wr_str_lcd_k_65537_127:
	.ds 2
_handler_lcdgotoaddress_str_65536_140:
	.ds 50
_handler_lcdgotoaddress_c_65537_141:
	.ds 1
_read_lcd_address_PARM_2:
	.ds 1
_read_lcd_address_is_ddram_65536_151:
	.ds 1
_get_hex_value_hex_value_65536_165:
	.ds 1
_create_custom_char_PARM_2:
	.ds 3
_create_custom_char_char_code_65536_170:
	.ds 1
_handler_custom_char_row_values_65539_178:
	.ds 8
_handle_cu_custom_char_row_vals1_65537_183:
	.ds 8
_handle_cu_custom_char_row_vals2_65538_185:
	.ds 8
_handle_cu_custom_char_row_vals3_65539_187:
	.ds 8
_handle_cu_custom_char_row_vals4_65540_189:
	.ds 8
_handle_sadsmiley_custom_char_row_vals1_65537_193:
	.ds 8
_handle_sadsmiley_custom_char_row_vals2_65538_195:
	.ds 8
_handle_sadsmiley_custom_char_row_vals3_65539_197:
	.ds 8
_handle_sadsmiley_custom_char_row_vals4_65540_199:
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_save_cursor_address::
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;milliseconds              Allocated with name '_delay_milliseconds_65536_92'
;i                         Allocated with name '_delay_i_131072_94'
;------------------------------------------------------------
;	lcd.c:77: void delay(int milliseconds)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_milliseconds_65536_92
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcd.c:80: for(int i = 0; i < milliseconds * COUNT_ONE_MILLISECOND; i++);
	mov	dptr,#_delay_milliseconds_65536_92
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0052
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	lcd.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;BUSY_FLAG_MASK            Allocated with name '_lcdbusywait_BUSY_FLAG_MASK_65536_96'
;COMMAND_ADDRESS           Allocated with name '_lcdbusywait_COMMAND_ADDRESS_65536_96'
;------------------------------------------------------------
;	lcd.c:85: void lcdbusywait(void)
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	lcd.c:94: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:95: LCD_RW = 1;
;	assignBit
	setb	_P1_3
;	lcd.c:98: while ((* (volatile uint8_t *) COMMAND_ADDRESS) & BUSY_FLAG_MASK)
00101$:
	mov	dptr,#0xf000
	mov	b,#0x00
	lcall	__gptrget
	jnb	acc.7,00104$
;	lcd.c:101: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
	sjmp	00101$
00104$:
;	lcd.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_time_variables'
;------------------------------------------------------------
;	lcd.c:106: void set_time_variables(void)
;	-----------------------------------------
;	 function set_time_variables
;	-----------------------------------------
_set_time_variables:
;	lcd.c:109: tenth_of_second     = '0';
	mov	dptr,#_tenth_of_second
	mov	a,#0x30
	movx	@dptr,a
;	lcd.c:110: seconds_ones_digit  = '0';
	mov	dptr,#_seconds_ones_digit
	movx	@dptr,a
;	lcd.c:111: seconds_tens_digit  = '0';
	mov	dptr,#_seconds_tens_digit
	movx	@dptr,a
;	lcd.c:112: minutes_ones_digit  = '0';
	mov	dptr,#_minutes_ones_digit
	movx	@dptr,a
;	lcd.c:113: minutes_tens_digit  = '0';
	mov	dptr,#_minutes_tens_digit
	movx	@dptr,a
;	lcd.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_lcd'
;------------------------------------------------------------
;	lcd.c:116: void init_lcd(void){
;	-----------------------------------------
;	 function init_lcd
;	-----------------------------------------
_init_lcd:
;	lcd.c:118: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:119: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:121: delay(160);
	mov	dptr,#0x00a0
	lcall	_delay
;	lcd.c:124: lcd_ptr = 0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	lcd.c:126: delay(170);
	mov	dptr,#0x00aa
	lcall	_delay
;	lcd.c:128: lcd_ptr = 0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	lcd.c:130: delay(150);
	mov	dptr,#0x0096
	lcall	_delay
;	lcd.c:133: lcd_ptr = 0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	lcd.c:135: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:137: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:138: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:140: lcd_ptr = 0x38;
	mov	dptr,#_lcd_ptr
	mov	a,#0x38
	movx	@dptr,a
;	lcd.c:142: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:145: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:146: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:148: lcd_ptr = 0x0F;
	mov	dptr,#_lcd_ptr
	mov	a,#0x0f
	movx	@dptr,a
;	lcd.c:150: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:153: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:154: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:156: lcd_ptr = 0x01;
	mov	dptr,#_lcd_ptr
	mov	a,#0x01
	movx	@dptr,a
;	lcd.c:158: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:161: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:162: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:164: lcd_ptr = 0x06;
	mov	dptr,#_lcd_ptr
	mov	a,#0x06
	movx	@dptr,a
;	lcd.c:166: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:169: set_time_variables();
;	lcd.c:170: }
	ljmp	_set_time_variables
;------------------------------------------------------------
;Allocation info for local variables in function 'get_cursor_address'
;------------------------------------------------------------
;address                   Allocated with name '_get_cursor_address_address_65537_103'
;------------------------------------------------------------
;	lcd.c:173: uint8_t get_cursor_address(){
;	-----------------------------------------
;	 function get_cursor_address
;	-----------------------------------------
_get_cursor_address:
;	lcd.c:174: LCD_RS = 0; // Set RS pin low
;	assignBit
	clr	_P1_2
;	lcd.c:175: LCD_RW = 1; // Set RW pin high
;	assignBit
	setb	_P1_3
;	lcd.c:177: uint8_t address = lcd_ptr & (~0x80); // Mask out the MSB of lcd_ptr and assign it to address
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
	anl	a,#0x7f
;	lcd.c:178: return address; // Return the address
;	lcd.c:179: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;address                   Allocated with name '_lcdgotoaddr_address_65536_104'
;------------------------------------------------------------
;	lcd.c:182: void lcdgotoaddr(unsigned char address){
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	a,dpl
	mov	dptr,#_lcdgotoaddr_address_65536_104
	movx	@dptr,a
;	lcd.c:183: LCD_RS = 0; // Set RS pin low
;	assignBit
	clr	_P1_2
;	lcd.c:184: LCD_RW = 0; // Set RW pin low
;	assignBit
	clr	_P1_3
;	lcd.c:186: address = address | 0x80; // Set the MSB of address to 1
	mov	dptr,#_lcdgotoaddr_address_65536_104
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
;	lcd.c:187: lcd_ptr = address; // Assign the address to lcd_ptr
	mov	dptr,#_lcdgotoaddr_address_65536_104
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	lcd.c:188: lcdbusywait(); // Wait for the LCD to be not busy
;	lcd.c:189: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated with name '_lcdgotoxy_row_65536_106'
;address                   Allocated with name '_lcdgotoxy_address_65536_107'
;------------------------------------------------------------
;	lcd.c:192: void lcdgotoxy(unsigned char row, unsigned char column) {
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_row_65536_106
	movx	@dptr,a
;	lcd.c:194: switch (row) {          // Select address based on the row number
	movx	a,@dptr
	mov	r7,a
	clr	a
	cjne	r7,#0x30,00173$
	inc	a
00173$:
	mov	r6,a
	jnz	00101$
	cjne	r7,#0x31,00176$
	sjmp	00102$
00176$:
	cjne	r7,#0x32,00177$
	sjmp	00103$
00177$:
;	lcd.c:195: case '0':
	cjne	r7,#0x33,00105$
	sjmp	00104$
00101$:
;	lcd.c:196: address = (0x00);
	mov	dptr,#_lcdgotoxy_address_65536_107
	clr	a
	movx	@dptr,a
;	lcd.c:197: break;
;	lcd.c:198: case '1':
	sjmp	00106$
00102$:
;	lcd.c:199: address = (0x40);
	mov	dptr,#_lcdgotoxy_address_65536_107
	mov	a,#0x40
	movx	@dptr,a
;	lcd.c:200: break;
;	lcd.c:201: case '2':
	sjmp	00106$
00103$:
;	lcd.c:202: address = (0x10);
	mov	dptr,#_lcdgotoxy_address_65536_107
	mov	a,#0x10
	movx	@dptr,a
;	lcd.c:203: break;
;	lcd.c:204: case '3':
	sjmp	00106$
00104$:
;	lcd.c:205: address = (0x50);
	mov	dptr,#_lcdgotoxy_address_65536_107
	mov	a,#0x50
	movx	@dptr,a
;	lcd.c:206: break;
;	lcd.c:207: default:
	sjmp	00106$
00105$:
;	lcd.c:208: address = (0x00);
	mov	dptr,#_lcdgotoxy_address_65536_107
	clr	a
	movx	@dptr,a
;	lcd.c:210: }
00106$:
;	lcd.c:212: if (row == '0' && column == '4') {
	mov	a,r6
	jz	00120$
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00120$
;	lcd.c:213: address |= 0x04;
	mov	dptr,#_lcdgotoxy_address_65536_107
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
	sjmp	00121$
00120$:
;	lcd.c:215: else if (row == '4' && column == '0') {
	mov	dptr,#_lcdgotoxy_row_65536_106
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00116$
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00116$
;	lcd.c:216: address |= 0x40;
	mov	dptr,#_lcdgotoxy_address_65536_107
	movx	a,@dptr
	orl	acc,#0x40
	movx	@dptr,a
	sjmp	00121$
00116$:
;	lcd.c:218: else if (column >= 'A' && column <= 'F') {
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00186$
00186$:
	jc	00112$
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00112$
;	lcd.c:219: address |= (column - '7');
	mov	ar6,r7
	mov	a,r6
	add	a,#0xc9
	mov	r6,a
	mov	dptr,#_lcdgotoxy_address_65536_107
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
	sjmp	00121$
00112$:
;	lcd.c:221: else if (column >= '0' && column <= '9') {
	cjne	r7,#0x30,00189$
00189$:
	jc	00108$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00108$
;	lcd.c:222: address |= (column - '0');
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	mov	dptr,#_lcdgotoxy_address_65536_107
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
	sjmp	00121$
00108$:
;	lcd.c:225: address |= ('8' - 48);
	mov	dptr,#_lcdgotoxy_address_65536_107
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
00121$:
;	lcd.c:227: lcdgotoaddr(address);   // Call lcdgotoaddr function with the calculated address
	mov	dptr,#_lcdgotoxy_address_65536_107
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	lcd.c:228: lcdbusywait();          // Wait for the LCD to be not busy
;	lcd.c:229: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated with name '_lcdputch_cc_65536_114'
;cursor_address            Allocated with name '_lcdputch_cursor_address_65536_115'
;------------------------------------------------------------
;	lcd.c:232: void lcdputch(char cc){
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	a,dpl
	mov	dptr,#_lcdputch_cc_65536_114
	movx	@dptr,a
;	lcd.c:233: unsigned char cursor_address = get_cursor_address(); // get the current cursor address
	lcall	_get_cursor_address
	mov	r7,dpl
;	lcd.c:234: LCD_RS=1;       // set the RS pin high to send data
;	assignBit
	setb	_P1_2
;	lcd.c:235: LCD_RW=0;       // set the RW pin low to write to the LCD
;	assignBit
	clr	_P1_3
;	lcd.c:236: lcd_ptr=cc;     // put the character to the LCD data bus
	mov	dptr,#_lcdputch_cc_65536_114
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	lcd.c:237: lcdbusywait();  // wait until the LCD is not busy
	push	ar7
	lcall	_lcdbusywait
	pop	ar7
;	lcd.c:240: switch(cursor_address) {
	cjne	r7,#0x0f,00124$
	sjmp	00101$
00124$:
	cjne	r7,#0x1f,00125$
	sjmp	00103$
00125$:
	cjne	r7,#0x4f,00126$
	sjmp	00102$
00126$:
;	lcd.c:241: case 0x0F:
	cjne	r7,#0x5f,00106$
	sjmp	00104$
00101$:
;	lcd.c:242: lcdgotoxy('1', '0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x31
;	lcd.c:243: break;
;	lcd.c:244: case 0x4F:
	ljmp	_lcdgotoxy
00102$:
;	lcd.c:245: lcdgotoxy('2', '0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x32
;	lcd.c:246: break;
;	lcd.c:247: case 0x1F:
	ljmp	_lcdgotoxy
00103$:
;	lcd.c:248: lcdgotoxy('0', '0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
;	lcd.c:249: break;
;	lcd.c:250: case 0x5F:
	ljmp	_lcdgotoxy
00104$:
;	lcd.c:251: lcdgotoxy('0', '0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
;	lcd.c:253: }
;	lcd.c:254: }
	ljmp	_lcdgotoxy
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated with name '_lcdputstr_ss_65536_117'
;i                         Allocated with name '_lcdputstr_i_65536_118'
;------------------------------------------------------------
;	lcd.c:256: void lcdputstr(char *ss){
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_ss_65536_117
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcd.c:258: while(ss[i]!='\0'){     // loop until end of string
	mov	dptr,#_lcdputstr_ss_65536_117
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jz	00104$
;	lcd.c:259: lcdputch(ss[i]);    // print each character
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_lcdputch
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:260: i++;
	inc	r3
	cjne	r3,#0x00,00101$
	inc	r4
	sjmp	00101$
00104$:
;	lcd.c:262: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_lcdclear'
;------------------------------------------------------------
;	lcd.c:263: void handler_lcdclear(void){
;	-----------------------------------------
;	 function handler_lcdclear
;	-----------------------------------------
_handler_lcdclear:
;	lcd.c:264: LCD_RS=0;               // set RS pin to low
;	assignBit
	clr	_P1_2
;	lcd.c:265: LCD_RW=0;               // set RW pin to low
;	assignBit
	clr	_P1_3
;	lcd.c:266: lcd_ptr=0x01;           // reset pointer to first line
	mov	dptr,#_lcd_ptr
	mov	a,#0x01
	movx	@dptr,a
;	lcd.c:267: lcdbusywait();          // wait until LCD is ready
	lcall	_lcdbusywait
;	lcd.c:268: lcdgotoaddr(0x00);      // move cursor to the beginning of the first line
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
;	lcd.c:269: lcdputstr("       ");   // write 7 spaces to clear the first line
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:270: lcdgotoaddr(0x00);      // move cursor back to the beginning of the first line
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
;	lcd.c:271: printf_tiny("\033[1;33m\n\rLCD Cleared!!\r\n"); // print a message to indicate LCD has been cleared
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:272: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_wr_c_lcd'
;------------------------------------------------------------
;lcd_input                 Allocated with name '_handler_wr_c_lcd_lcd_input_65536_123'
;------------------------------------------------------------
;	lcd.c:274: void handler_wr_c_lcd(void)
;	-----------------------------------------
;	 function handler_wr_c_lcd
;	-----------------------------------------
_handler_wr_c_lcd:
;	lcd.c:277: printf_tiny("\033[1;33m\n\rEnter Character to put on LCD !!\r\n"); // print a message to ask the user to enter a character
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:278: lcd_input = getchar();  // get the input character from the user
	lcall	_getchar
	mov	r6,dpl
;	lcd.c:282: }
	setb	_handler_wr_c_lcd_sloc0_1_0
	jbc	ea,00103$
	clr	_handler_wr_c_lcd_sloc0_1_0
00103$:
;	lcd.c:281: lcdputch(lcd_input); // write the input character to the LCD
	mov	dpl,r6
	push	ar6
	lcall	_lcdputch
	mov	c,_handler_wr_c_lcd_sloc0_1_0
	mov	ea,c
;	lcd.c:283: printf_tiny("\n\rEntered Char = %c\n\r",lcd_input); // print the entered character
	mov	r7,#0x00
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	lcd.c:284: printf_tiny("\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:285: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_wr_str_lcd'
;------------------------------------------------------------
;k                         Allocated with name '_handler_wr_str_lcd_k_65537_127'
;i                         Allocated with name '_handler_wr_str_lcd_i_65537_127'
;ch                        Allocated with name '_handler_wr_str_lcd_ch_65537_127'
;------------------------------------------------------------
;	lcd.c:287: void handler_wr_str_lcd(void)
;	-----------------------------------------
;	 function handler_wr_str_lcd
;	-----------------------------------------
_handler_wr_str_lcd:
;	lcd.c:289: printf_tiny("\033[1;33m\n\rEnter String to put on LCD !!\r\n"); // print a message to ask the user to enter a string
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:290: int k = 1;
	mov	dptr,#_handler_wr_str_lcd_k_65537_127
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcd.c:294: while(k){
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	dptr,#_handler_wr_str_lcd_k_65537_127
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00106$
;	lcd.c:295: ch=getchar();       // get each character from the user until the enter key is pressed
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	lcd.c:296: if(ch=='\r'){
	cjne	r4,#0x0d,00102$
;	lcd.c:297: k=0;            // exit the loop when the enter key is pressed
	mov	dptr,#_handler_wr_str_lcd_k_65537_127
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00102$:
;	lcd.c:300: *(string+i)=ch; // store each character in a string array
	mov	dptr,#_string
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
;	lcd.c:301: i++;
	inc	r6
	cjne	r6,#0x00,00104$
	inc	r7
	sjmp	00104$
00106$:
;	lcd.c:304: *(string+i)='\0';       // add null character to mark the end of the string
	mov	dptr,#_string
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r6,a
	mov	a,r7
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	clr	a
	lcall	__gptrput
;	lcd.c:308: }
	setb	_handler_wr_str_lcd_sloc0_1_0
	jbc	ea,00126$
	clr	_handler_wr_str_lcd_sloc0_1_0
00126$:
;	lcd.c:307: lcdputstr(string);  // write the string to the LCD
	mov	dptr,#_string
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_lcdputstr
	mov	c,_handler_wr_str_lcd_sloc0_1_0
	mov	ea,c
;	lcd.c:309: printf_tiny("Entered String = %s\n\r",string); // print the entered string
	mov	dptr,#_string
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	lcd.c:310: printf_tiny("\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:311: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_lcdgotoxy'
;------------------------------------------------------------
;x_coordinate_ch           Allocated with name '_handler_lcdgotoxy_x_coordinate_ch_65536_133'
;y_coordinate_ch           Allocated with name '_handler_lcdgotoxy_y_coordinate_ch_65537_134'
;------------------------------------------------------------
;	lcd.c:314: void handler_lcdgotoxy(void)
;	-----------------------------------------
;	 function handler_lcdgotoxy
;	-----------------------------------------
_handler_lcdgotoxy:
;	lcd.c:318: printf_tiny("\033[1;33m\n\rEnter X-Co-ordinate to put on LCD !!\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:319: x_coordinate_ch  = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r6,dpl
;	lcd.c:322: printf_tiny("X-Cordinate = %c\n\r",x_coordinate_ch);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	lcd.c:325: printf_tiny("\033[1;33m\n\rEnter Y-Co-ordinate to put on LCD !!\r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:326: char y_coordinate_ch  = toupper(getchar());
	lcall	_getchar
	lcall	_toupper
	mov	r5,dpl
;	lcd.c:329: printf_tiny("Y-Cordinate = %c\n\r",y_coordinate_ch);
	mov	ar4,r5
	mov	r7,#0x00
	push	ar5
	push	ar4
	push	ar7
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
;	lcd.c:332: if (x_coordinate_ch >= '0' && x_coordinate_ch <= '3'){
	cjne	r6,#0x30,00119$
00119$:
	jc	00106$
	mov	a,r6
	add	a,#0xff - 0x33
	jnc	00107$
00106$:
;	lcd.c:334: } else if (y_coordinate_ch >= '0' && y_coordinate_ch <= 'F') {
	cjne	r5,#0x30,00122$
00122$:
	jc	00102$
	mov	a,r5
	add	a,#0xff - 0x46
	jnc	00107$
00102$:
;	lcd.c:337: printf_tiny("\033[1;31mInvalid coordinate!!\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:338: return;
	ret
00107$:
;	lcd.c:344: }
	setb	_handler_lcdgotoxy_sloc0_1_0
	jbc	ea,00125$
	clr	_handler_lcdgotoxy_sloc0_1_0
00125$:
;	lcd.c:343: lcdgotoxy(x_coordinate_ch, y_coordinate_ch);
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r6
	lcall	_lcdgotoxy
	mov	c,_handler_lcdgotoxy_sloc0_1_0
	mov	ea,c
;	lcd.c:347: printf_tiny("\033[1;33m\n\rCursor Movement Completed!!\r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:348: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_lcdgotoaddress'
;------------------------------------------------------------
;str                       Allocated with name '_handler_lcdgotoaddress_str_65536_140'
;i                         Allocated with name '_handler_lcdgotoaddress_i_65537_141'
;c                         Allocated with name '_handler_lcdgotoaddress_c_65537_141'
;num                       Allocated with name '_handler_lcdgotoaddress_num_65538_143'
;------------------------------------------------------------
;	lcd.c:352: void handler_lcdgotoaddress(void)
;	-----------------------------------------
;	 function handler_lcdgotoaddress
;	-----------------------------------------
_handler_lcdgotoaddress:
;	lcd.c:355: printf_tiny("\033[1;33m\n\rEnter address to put onto the LCD !!\r\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:359: char c = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
	mov	a,r6
	movx	@dptr,a
;	lcd.c:360: while (c != '\r' && i < 49) { // Read characters until enter is pressed or limit is reached
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0d,00120$
	sjmp	00104$
00120$:
	clr	c
	mov	a,r6
	subb	a,#0x31
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	lcd.c:361: str[i++] = c;
	mov	a,r6
	add	a,#_handler_lcdgotoaddress_str_65536_140
	mov	dpl,a
	mov	a,r7
	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
	mov	dph,a
	inc	r6
	cjne	r6,#0x00,00122$
	inc	r7
00122$:
	mov	a,r5
	movx	@dptr,a
;	lcd.c:362: c = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
	mov	a,r4
	movx	@dptr,a
	sjmp	00102$
00104$:
;	lcd.c:364: str[i] = '\0';
	mov	a,r6
	add	a,#_handler_lcdgotoaddress_str_65536_140
	mov	dpl,a
	mov	a,r7
	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	lcd.c:367: printf("Address Entered = %s\n\r",str);
	mov	a,#_handler_lcdgotoaddress_str_65536_140
	push	acc
	mov	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	lcd.c:370: long int num = strtol(str, NULL, 16);
	mov	dptr,#_strtol_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strtol_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_handler_lcdgotoaddress_str_65536_140
	mov	b,#0x00
	lcall	_strtol
	mov	r4,dpl
;	lcd.c:376: }
	setb	_handler_lcdgotoaddress_sloc0_1_0
	jbc	ea,00123$
	clr	_handler_lcdgotoaddress_sloc0_1_0
00123$:
;	lcd.c:375: lcdgotoaddr((char)num);
	mov	dpl,r4
	lcall	_lcdgotoaddr
	mov	c,_handler_lcdgotoaddress_sloc0_1_0
	mov	ea,c
;	lcd.c:377: return;
;	lcd.c:378: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_stop_time'
;------------------------------------------------------------
;	lcd.c:381: void handler_stop_time(void)
;	-----------------------------------------
;	 function handler_stop_time
;	-----------------------------------------
_handler_stop_time:
;	lcd.c:383: printf_tiny("\033[1;33m\n\rTime Paused !!\r\n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:386: TCON &=~(0x10);
	anl	_TCON,#0xef
;	lcd.c:387: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_resume_time'
;------------------------------------------------------------
;	lcd.c:390: void handler_resume_time(void)
;	-----------------------------------------
;	 function handler_resume_time
;	-----------------------------------------
_handler_resume_time:
;	lcd.c:393: printf_tiny("\033[1;33m\n\rTime Resumed !!\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:396: TCON |=0x10;
	orl	_TCON,#0x10
;	lcd.c:397: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_reset_time'
;------------------------------------------------------------
;	lcd.c:400: void handler_reset_time(void)
;	-----------------------------------------
;	 function handler_reset_time
;	-----------------------------------------
_handler_reset_time:
;	lcd.c:403: printf_tiny("\033[1;33m\n\rTime Reset !!\r\n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:406: tenth_of_second     = '0';
	mov	dptr,#_tenth_of_second
	mov	a,#0x30
	movx	@dptr,a
;	lcd.c:407: seconds_ones_digit  = '0';
	mov	dptr,#_seconds_ones_digit
	movx	@dptr,a
;	lcd.c:408: seconds_tens_digit  = '0';
	mov	dptr,#_seconds_tens_digit
	movx	@dptr,a
;	lcd.c:409: minutes_ones_digit  = '0';
	mov	dptr,#_minutes_ones_digit
	movx	@dptr,a
;	lcd.c:410: minutes_tens_digit  = '0';
	mov	dptr,#_minutes_tens_digit
	movx	@dptr,a
;	lcd.c:411: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_lcd_address'
;------------------------------------------------------------
;address                   Allocated with name '_read_lcd_address_PARM_2'
;is_ddram                  Allocated with name '_read_lcd_address_is_ddram_65536_151'
;------------------------------------------------------------
;	lcd.c:414: uint8_t read_lcd_address(uint8_t is_ddram, uint8_t address) {
;	-----------------------------------------
;	 function read_lcd_address
;	-----------------------------------------
_read_lcd_address:
	mov	a,dpl
	mov	dptr,#_read_lcd_address_is_ddram_65536_151
	movx	@dptr,a
;	lcd.c:416: if (is_ddram == 1) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	lcd.c:417: lcdgotoaddr(address);
	mov	dptr,#_read_lcd_address_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	sjmp	00103$
00102$:
;	lcd.c:419: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:420: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:421: lcd_ptr = address;
	mov	dptr,#_read_lcd_address_PARM_2
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	lcd.c:422: lcdbusywait();
	lcall	_lcdbusywait
00103$:
;	lcd.c:426: LCD_RS = 1;
;	assignBit
	setb	_P1_2
;	lcd.c:427: LCD_RW = 1;
;	assignBit
	setb	_P1_3
;	lcd.c:430: return lcd_ptr;
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
;	lcd.c:431: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_lcd_hexdump'
;------------------------------------------------------------
;k                         Allocated with name '_handler_lcd_hexdump_k_196608_158'
;k                         Allocated with name '_handler_lcd_hexdump_k_196608_161'
;------------------------------------------------------------
;	lcd.c:432: void handler_lcd_hexdump(void)
;	-----------------------------------------
;	 function handler_lcd_hexdump
;	-----------------------------------------
_handler_lcd_hexdump:
;	lcd.c:460: }
	setb	_handler_lcd_hexdump_sloc0_1_0
	jbc	ea,00141$
	clr	_handler_lcd_hexdump_sloc0_1_0
00141$:
;	lcd.c:435: printf("\033[1;34m");                           // Set terminal color to blue
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:436: save_cursor_address=get_cursor_address();       // Save the current cursor address
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_save_cursor_address
	movx	@dptr,a
;	lcd.c:437: printf("\n\rPrinting Hexdump of DDRAM\n\r");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0x5f
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00103$
;	lcd.c:441: if(k%16 == 0){                              // Print new line and address every 16 bytes
	mov	a,r4
	anl	a,#0x0f
	jnz	00102$
;	lcd.c:442: printf("\n\r0x%02x: ",k);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
00102$:
;	lcd.c:444: printf("0x%02x ",read_lcd_address(1,k));    // Read and print the value at the current address
	mov	dptr,#_read_lcd_address_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_read_lcd_address
	mov	r5,dpl
	mov	r4,#0x00
	push	ar5
	push	ar4
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
	inc	r6
	cjne	r6,#0x00,00108$
	inc	r7
	sjmp	00108$
00103$:
;	lcd.c:447: printf("\n\r\n\rPrinting Hexdump of CGRAM\n\r");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
	mov	r6,#0x40
	mov	r7,#0x00
00111$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0x7f
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00106$
;	lcd.c:451: if(k%16 == 0){                              // Print new line and address every 16 bytes
	mov	a,r4
	anl	a,#0x0f
	jnz	00105$
;	lcd.c:452: printf("\n\r0x%02x: ",k);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
00105$:
;	lcd.c:454: printf("0x%02x ",read_lcd_address(0,k));    // Read and print the value at the current address
	mov	dptr,#_read_lcd_address_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_read_lcd_address
	mov	r5,dpl
	mov	r4,#0x00
	push	ar5
	push	ar4
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00106$:
;	lcd.c:457: printf("\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:458: lcdgotoaddr(save_cursor_address);               // Restore the original cursor position
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	lcd.c:459: printf("\033[0m");                              // Reset terminal color to default
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	c,_handler_lcd_hexdump_sloc0_1_0
	mov	ea,c
;	lcd.c:461: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_hex_value'
;------------------------------------------------------------
;digit1                    Allocated with name '_get_hex_value_digit1_65536_165'
;digit2                    Allocated with name '_get_hex_value_digit2_65536_165'
;hex_value                 Allocated with name '_get_hex_value_hex_value_65536_165'
;------------------------------------------------------------
;	lcd.c:463: unsigned char get_hex_value(void) {
;	-----------------------------------------
;	 function get_hex_value
;	-----------------------------------------
_get_hex_value:
;	lcd.c:465: printf("\n\rEnter a hexadecimal value between (00 to 1F) or (40 to 58): ");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:467: while (1) {                         //loop until a valid input is entered
00116$:
;	lcd.c:468: digit1 = putchar(getchar());    //get first digit from input and display it
	lcall	_getchar
	lcall	_putchar
	mov	r6,dpl
;	lcd.c:469: digit2 = putchar(getchar());    //get second digit from input and display it
	push	ar6
	lcall	_getchar
	lcall	_putchar
	mov	r5,dpl
	mov	r7,dph
	pop	ar6
;	lcd.c:472: if (digit1 >= '0' && digit1 <= '9' && digit2 >= '0' && digit2 <= '9') {
	cjne	r6,#0x30,00160$
00160$:
	jc	00110$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00110$
	cjne	r5,#0x30,00163$
00163$:
	jc	00110$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00110$
;	lcd.c:473: hex_value = ((digit1 - '0') << 4) | (digit2 - '0'); //convert the digits to a hexadecimal value
	mov	ar7,r6
	mov	a,r7
	add	a,#0xd0
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	ar4,r5
	mov	a,r4
	add	a,#0xd0
	mov	dptr,#_get_hex_value_hex_value_65536_165
	orl	a,r7
	movx	@dptr,a
;	lcd.c:474: break; //break the loop
	sjmp	00117$
00110$:
;	lcd.c:477: else if ((digit1 == '0' || digit1 == '1' || digit1 == '4' || digit1 == '5') && (digit2 >= 'A' && digit2 <= 'F')) {
	cjne	r6,#0x30,00166$
	sjmp	00108$
00166$:
	cjne	r6,#0x31,00167$
	sjmp	00108$
00167$:
	cjne	r6,#0x34,00168$
	sjmp	00108$
00168$:
	cjne	r6,#0x35,00102$
00108$:
	cjne	r5,#0x41,00171$
00171$:
	jc	00102$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00102$
;	lcd.c:478: hex_value = ((digit1 - '0') << 4) | (digit2 - '7'); //convert the digits to a hexadecimal value
	mov	a,r6
	add	a,#0xd0
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,r5
	add	a,#0xc9
	mov	dptr,#_get_hex_value_hex_value_65536_165
	orl	a,r6
	movx	@dptr,a
;	lcd.c:479: break; //break the loop
	sjmp	00117$
00102$:
;	lcd.c:482: printf("\n\rInvalid input. ");      //display error message if input is invalid
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:484: printf("Please enter a valid input: "); //prompt user to enter a valid input
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00116$
00117$:
;	lcd.c:486: return hex_value;                           //return the hexadecimal value
	mov	dptr,#_get_hex_value_hex_value_65536_165
	movx	a,@dptr
;	lcd.c:487: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_custom_char'
;------------------------------------------------------------
;sloc0                     Allocated with name '_create_custom_char_sloc0_1_0'
;row_values                Allocated with name '_create_custom_char_PARM_2'
;char_code                 Allocated with name '_create_custom_char_char_code_65536_170'
;bit_6                     Allocated with name '_create_custom_char_bit_6_65536_171'
;code_num                  Allocated with name '_create_custom_char_code_num_65536_171'
;bit_3_shift               Allocated with name '_create_custom_char_bit_3_shift_65536_171'
;char_num                  Allocated with name '_create_custom_char_char_num_65536_171'
;i                         Allocated with name '_create_custom_char_i_65537_172'
;------------------------------------------------------------
;	lcd.c:488: void create_custom_char(unsigned char char_code, unsigned char row_values[]) {
;	-----------------------------------------
;	 function create_custom_char
;	-----------------------------------------
_create_custom_char:
	mov	a,dpl
	mov	dptr,#_create_custom_char_char_code_65536_170
	movx	@dptr,a
;	lcd.c:491: unsigned char code_num = char_code - '0';
	movx	a,@dptr
;	lcd.c:492: unsigned char bit_3_shift = code_num << 3;
	add	a,#0xd0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
;	lcd.c:493: unsigned char char_num = bit_6 | bit_3_shift;
	orl	ar7,#0x40
;	lcd.c:496: printf_tiny("\n\rThe custom character with code 0x%x has been created.", char_num);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:500: while (i < 8) {
	mov	dptr,#_create_custom_char_PARM_2
	movx	a,@dptr
	mov	_create_custom_char_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_custom_char_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_create_custom_char_sloc0_1_0 + 2),a
	mov	r0,#0x00
	mov	r1,#0x00
00101$:
	clr	c
	mov	a,r0
	subb	a,#0x08
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jc	00115$
	ret
00115$:
;	lcd.c:502: LCD_RS = 0;
;	assignBit
	clr	_P1_2
;	lcd.c:503: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:505: lcd_ptr = char_num + i;
	mov	ar4,r0
	mov	ar3,r7
	mov	dptr,#_lcd_ptr
	mov	a,r4
	add	a,r3
	movx	@dptr,a
;	lcd.c:507: printf_tiny("\n\rLCD_ptr = %x", char_num + i);
	mov	a,r0
	add	a,r5
	mov	r3,a
	mov	a,r1
	addc	a,r6
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	lcd.c:509: lcdbusywait();
	lcall	_lcdbusywait
	pop	ar0
	pop	ar1
;	lcd.c:511: LCD_RS = 1;
;	assignBit
	setb	_P1_2
;	lcd.c:512: LCD_RW = 0;
;	assignBit
	clr	_P1_3
;	lcd.c:513: lcd_ptr = row_values[i];
	mov	a,r0
	add	a,_create_custom_char_sloc0_1_0
	mov	r2,a
	mov	a,r1
	addc	a,(_create_custom_char_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_create_custom_char_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	lcd.c:514: lcdbusywait();
	push	ar1
	push	ar0
	lcall	_lcdbusywait
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:516: i++;
	inc	r0
	cjne	r0,#0x00,00116$
	inc	r1
00116$:
;	lcd.c:518: }
	ljmp	00101$
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_custom_char'
;------------------------------------------------------------
;save_address              Allocated with name '_handler_custom_char_save_address_65537_176'
;char_code                 Allocated with name '_handler_custom_char_char_code_65538_177'
;row_values                Allocated with name '_handler_custom_char_row_values_65539_178'
;j                         Allocated with name '_handler_custom_char_j_65539_178'
;------------------------------------------------------------
;	lcd.c:520: void handler_custom_char(void) {
;	-----------------------------------------
;	 function handler_custom_char
;	-----------------------------------------
_handler_custom_char:
;	lcd.c:521: printf("\033[0;33m"); // Set text color to yellow
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:524: unsigned int save_address = get_cursor_address();
	lcall	_get_cursor_address
	mov	r7,dpl
;	lcd.c:526: printf_tiny("Please enter the code for the custom character: ");
	push	ar7
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:528: unsigned char char_code = getchar();
	lcall	_getchar
	mov	r5,dpl
;	lcd.c:531: printf_tiny("%c\n\r", char_code);
	mov	ar4,r5
	mov	r6,#0x00
	push	ar5
	push	ar4
	push	ar6
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar7
;	lcd.c:537: while (j < 8) { // Loop through each row of the custom character and get its value from the user
	mov	r6,#0x00
00101$:
	cjne	r6,#0x08,00115$
00115$:
	jnc	00103$
;	lcd.c:538: printf_tiny("\n\rPlease enter the value for row %d: ", j);
	mov	ar3,r6
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
;	lcd.c:539: row_values[j] = get_hex_value();
	mov	a,r6
	add	a,#_handler_custom_char_row_values_65539_178
	mov	r3,a
	clr	a
	addc	a,#(_handler_custom_char_row_values_65539_178 >> 8)
	mov	r4,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_get_hex_value
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
;	lcd.c:540: j++;
	inc	r6
	sjmp	00101$
00103$:
;	lcd.c:555: }
	setb	_handler_custom_char_sloc0_1_0
	jbc	ea,00117$
	clr	_handler_custom_char_sloc0_1_0
00117$:
;	lcd.c:545: create_custom_char(char_code, row_values);
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handler_custom_char_row_values_65539_178
	movx	@dptr,a
	mov	a,#(_handler_custom_char_row_values_65539_178 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar5
	lcall	_create_custom_char
;	lcd.c:548: handler_lcdgotoxy();
	lcall	_handler_lcdgotoxy
	pop	ar5
;	lcd.c:551: lcdputch(char_code - '0');
	mov	a,r5
	add	a,#0xd0
	mov	dpl,a
	lcall	_lcdputch
	pop	ar7
;	lcd.c:554: lcdgotoaddr(save_address);
	mov	dpl,r7
	lcall	_lcdgotoaddr
	mov	c,_handler_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:558: printf("\033[0m");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:559: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_cu_custom_char'
;------------------------------------------------------------
;ccode1                    Allocated with name '_handle_cu_custom_char_ccode1_65537_183'
;row_vals1                 Allocated with name '_handle_cu_custom_char_row_vals1_65537_183'
;ccode2                    Allocated with name '_handle_cu_custom_char_ccode2_65538_185'
;row_vals2                 Allocated with name '_handle_cu_custom_char_row_vals2_65538_185'
;ccode3                    Allocated with name '_handle_cu_custom_char_ccode3_65539_187'
;row_vals3                 Allocated with name '_handle_cu_custom_char_row_vals3_65539_187'
;ccode4                    Allocated with name '_handle_cu_custom_char_ccode4_65540_189'
;row_vals4                 Allocated with name '_handle_cu_custom_char_row_vals4_65540_189'
;------------------------------------------------------------
;	lcd.c:561: void handle_cu_custom_char(void)
;	-----------------------------------------
;	 function handle_cu_custom_char
;	-----------------------------------------
_handle_cu_custom_char:
;	lcd.c:563: printf("\033[0;33m");                           // Set text color to yellow
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:564: save_cursor_address = get_cursor_address();     // Get current cursor address and save it in a variable
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_save_cursor_address
	movx	@dptr,a
;	lcd.c:568: unsigned char row_vals1[8] = {0x00, 0x00, 0x0F, 0x08, 0x08, 0x09, 0x09, 0x09};
	mov	dptr,#_handle_cu_custom_char_row_vals1_65537_183
	clr	a
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0002)
	mov	a,#0x0f
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0003)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0005)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0007)
	movx	@dptr,a
;	lcd.c:573: }
	setb	_handle_cu_custom_char_sloc0_1_0
	jbc	ea,00103$
	clr	_handle_cu_custom_char_sloc0_1_0
00103$:
;	lcd.c:570: create_custom_char(ccode1, row_vals1);      // Call function to create custom character on the LCD
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_cu_custom_char_row_vals1_65537_183
	movx	@dptr,a
	mov	a,#(_handle_cu_custom_char_row_vals1_65537_183 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_create_custom_char
;	lcd.c:571: lcdgotoxy('1', '4');                        // Move cursor to position to display custom character 1
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x34
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	lcd.c:572: lcdputch(ccode1 - '0');                     // Display custom character 1 on the LCD screen
	mov	dpl,#0x01
	lcall	_lcdputch
	mov	c,_handle_cu_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:577: unsigned char row_vals2[8] = {0x00, 0x00, 0x18, 0x00, 0x00, 0x02, 0x02, 0x02};
	mov	dptr,#_handle_cu_custom_char_row_vals2_65538_185
	clr	a
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0002)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0003)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0005)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0007)
	movx	@dptr,a
;	lcd.c:583: }
	setb	_handle_cu_custom_char_sloc0_1_0
	jbc	ea,00104$
	clr	_handle_cu_custom_char_sloc0_1_0
00104$:
;	lcd.c:579: create_custom_char(ccode2, row_vals2);      // Call function to create custom character on the LCD
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_cu_custom_char_row_vals2_65538_185
	movx	@dptr,a
	mov	a,#(_handle_cu_custom_char_row_vals2_65538_185 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x32
	lcall	_create_custom_char
;	lcd.c:580: lcdgotoxy('1', '5');                        // Move cursor to position to display custom character 2
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x35
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	lcd.c:581: lcdputch(ccode2 - '0');                     // Display custom character 2 on the LCD screen
	mov	dpl,#0x02
	lcall	_lcdputch
;	lcd.c:582: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_handle_cu_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:587: unsigned char row_vals3[8] = {0x09, 0x09, 0x09, 0x0F, 0x01, 0x01, 0x00, 0x00};
	mov	dptr,#_handle_cu_custom_char_row_vals3_65539_187
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0003)
	mov	a,#0x0f
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0004)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0007)
	movx	@dptr,a
;	lcd.c:593: }
	setb	_handle_cu_custom_char_sloc0_1_0
	jbc	ea,00105$
	clr	_handle_cu_custom_char_sloc0_1_0
00105$:
;	lcd.c:589: create_custom_char(ccode3, row_vals3);      // Call function to create custom character on the LCD
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_cu_custom_char_row_vals3_65539_187
	movx	@dptr,a
	mov	a,#(_handle_cu_custom_char_row_vals3_65539_187 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x33
	lcall	_create_custom_char
;	lcd.c:590: lcdgotoxy('2', '4');                        // Move cursor to position to display custom character 3
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x34
	movx	@dptr,a
	mov	dpl,#0x32
	lcall	_lcdgotoxy
;	lcd.c:591: lcdputch(ccode3 - '0');                     // Display custom character 3 on the LCD screen
	mov	dpl,#0x03
	lcall	_lcdputch
;	lcd.c:592: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_handle_cu_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:597: unsigned char row_vals4[8] = {0x02, 0x02, 0x02, 0x1A, 0x02, 0x1E, 0x00, 0x00};
	mov	dptr,#_handle_cu_custom_char_row_vals4_65540_189
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0003)
	mov	a,#0x1a
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0004)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0005)
	mov	a,#0x1e
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0007)
	movx	@dptr,a
;	lcd.c:603: }
	setb	_handle_cu_custom_char_sloc0_1_0
	jbc	ea,00106$
	clr	_handle_cu_custom_char_sloc0_1_0
00106$:
;	lcd.c:599: create_custom_char(ccode4, row_vals4);      // Call function to create custom character on the LCD
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_cu_custom_char_row_vals4_65540_189
	movx	@dptr,a
	mov	a,#(_handle_cu_custom_char_row_vals4_65540_189 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x34
	lcall	_create_custom_char
;	lcd.c:600: lcdgotoxy('2', '5');                        // Move cursor to position to display custom character 4
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x35
	movx	@dptr,a
	mov	dpl,#0x32
	lcall	_lcdgotoxy
;	lcd.c:601: lcdputch(ccode4 - '0');                     // Display custom character 4 on the LCD screen
	mov	dpl,#0x04
	lcall	_lcdputch
;	lcd.c:602: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_handle_cu_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:605: printf("\033[0m");                              // Reset text color to default
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:606: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_sadsmiley_custom_char'
;------------------------------------------------------------
;ccode1                    Allocated with name '_handle_sadsmiley_custom_char_ccode1_65537_193'
;row_vals1                 Allocated with name '_handle_sadsmiley_custom_char_row_vals1_65537_193'
;ccode2                    Allocated with name '_handle_sadsmiley_custom_char_ccode2_65538_195'
;row_vals2                 Allocated with name '_handle_sadsmiley_custom_char_row_vals2_65538_195'
;ccode3                    Allocated with name '_handle_sadsmiley_custom_char_ccode3_65539_197'
;row_vals3                 Allocated with name '_handle_sadsmiley_custom_char_row_vals3_65539_197'
;ccode4                    Allocated with name '_handle_sadsmiley_custom_char_ccode4_65540_199'
;row_vals4                 Allocated with name '_handle_sadsmiley_custom_char_row_vals4_65540_199'
;------------------------------------------------------------
;	lcd.c:609: void handle_sadsmiley_custom_char(void)
;	-----------------------------------------
;	 function handle_sadsmiley_custom_char
;	-----------------------------------------
_handle_sadsmiley_custom_char:
;	lcd.c:612: printf("\033[0;33m");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:615: save_cursor_address = get_cursor_address();
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_save_cursor_address
	movx	@dptr,a
;	lcd.c:619: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
	mov	dptr,#_handle_sadsmiley_custom_char_row_vals1_65537_193
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0002)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0003)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0004)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0005)
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0007)
	movx	@dptr,a
;	lcd.c:626: }
	setb	_handle_sadsmiley_custom_char_sloc0_1_0
	jbc	ea,00103$
	clr	_handle_sadsmiley_custom_char_sloc0_1_0
00103$:
;	lcd.c:622: create_custom_char(ccode1, row_vals1);
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_sadsmiley_custom_char_row_vals1_65537_193
	movx	@dptr,a
	mov	a,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_create_custom_char
;	lcd.c:624: lcdgotoxy('1', '4');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x34
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	lcd.c:625: lcdputch(ccode1 - '0');
	mov	dpl,#0x01
	lcall	_lcdputch
	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:630: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
	mov	dptr,#_handle_sadsmiley_custom_char_row_vals2_65538_195
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0002)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0003)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0004)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0005)
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0007)
	movx	@dptr,a
;	lcd.c:639: }
	setb	_handle_sadsmiley_custom_char_sloc0_1_0
	jbc	ea,00104$
	clr	_handle_sadsmiley_custom_char_sloc0_1_0
00104$:
;	lcd.c:633: create_custom_char(ccode2, row_vals2);
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_sadsmiley_custom_char_row_vals2_65538_195
	movx	@dptr,a
	mov	a,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x32
	lcall	_create_custom_char
;	lcd.c:635: lcdgotoxy('1', '5');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x35
	movx	@dptr,a
	mov	dpl,#0x31
	lcall	_lcdgotoxy
;	lcd.c:636: lcdputch(ccode2 - '0');
	mov	dpl,#0x02
	lcall	_lcdputch
;	lcd.c:638: lcdgotoaddr(save_cursor_address);
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:643: unsigned char row_vals3[8] = {0x1F, 0x1F, 0x1F, 0x10, 0x1B, 0x1C, 0x1F, 0x1F};
	mov	dptr,#_handle_sadsmiley_custom_char_row_vals3_65539_197
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0003)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0004)
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0005)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0006)
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0007)
	movx	@dptr,a
;	lcd.c:652: }
	setb	_handle_sadsmiley_custom_char_sloc0_1_0
	jbc	ea,00105$
	clr	_handle_sadsmiley_custom_char_sloc0_1_0
00105$:
;	lcd.c:646: create_custom_char(ccode3, row_vals3);
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_sadsmiley_custom_char_row_vals3_65539_197
	movx	@dptr,a
	mov	a,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x33
	lcall	_create_custom_char
;	lcd.c:648: lcdgotoxy('2', '4');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x34
	movx	@dptr,a
	mov	dpl,#0x32
	lcall	_lcdgotoxy
;	lcd.c:649: lcdputch(ccode3 - '0');
	mov	dpl,#0x03
	lcall	_lcdputch
;	lcd.c:651: lcdgotoaddr(save_cursor_address);
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:656: unsigned char row_vals4[8] = {0x1F, 0x1F, 0x1F, 0x01, 0x1B, 0x07, 0x1F, 0x1F};
	mov	dptr,#_handle_sadsmiley_custom_char_row_vals4_65540_199
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0003)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0004)
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0005)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0006)
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0007)
	movx	@dptr,a
;	lcd.c:665: }
	setb	_handle_sadsmiley_custom_char_sloc0_1_0
	jbc	ea,00106$
	clr	_handle_sadsmiley_custom_char_sloc0_1_0
00106$:
;	lcd.c:659: create_custom_char(ccode4, row_vals4);
	mov	dptr,#_create_custom_char_PARM_2
	mov	a,#_handle_sadsmiley_custom_char_row_vals4_65540_199
	movx	@dptr,a
	mov	a,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x34
	lcall	_create_custom_char
;	lcd.c:661: lcdgotoxy('2', '5');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x35
	movx	@dptr,a
	mov	dpl,#0x32
	lcall	_lcdgotoxy
;	lcd.c:662: lcdputch(ccode4 - '0');
	mov	dpl,#0x04
	lcall	_lcdputch
;	lcd.c:664: lcdgotoaddr(save_cursor_address);
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
	mov	ea,c
;	lcd.c:668: printf("\033[0m");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcd.c:669: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_author'
;------------------------------------------------------------
;str                       Allocated with name '_print_author_str_65537_203'
;------------------------------------------------------------
;	lcd.c:672: void print_author(void)
;	-----------------------------------------
;	 function print_author
;	-----------------------------------------
_print_author:
;	lcd.c:675: printf_tiny("\033[1;33m\n\rAuthor Info Printed !!\r\n");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:679: str = "Kiran Jojare    ESD Summer 2023 Lab 4           ";
;	lcd.c:690: }
	setb	_print_author_sloc0_1_0
	jbc	ea,00103$
	clr	_print_author_sloc0_1_0
00103$:
;	lcd.c:685: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
;	lcd.c:686: lcdputstr(str);
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:689: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
	mov	c,_print_author_sloc0_1_0
	mov	ea,c
;	lcd.c:691: return;
;	lcd.c:692: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "       "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "LCD Cleared!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter Character to put on LCD !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Entered Char = %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter String to put on LCD !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Entered String = %s"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter X-Co-ordinate to put on LCD !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "X-Cordinate = %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter Y-Co-ordinate to put on LCD !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Y-Cordinate = %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x1b
	.ascii "[1;31mInvalid coordinate!!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Cursor Movement Completed!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter address to put onto the LCD !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Address Entered = %s"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Time Paused !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Time Resumed !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Time Reset !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x1b
	.ascii "[1;34m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii "Printing Hexdump of DDRAM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii "0x%02x: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "0x%02x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.ascii "Printing Hexdump of CGRAM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a hexadecimal value between (00 to 1F) or (40 to 58): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid input. "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "Please enter a valid input: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii "The custom character with code 0x%x has been created."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "LCD_ptr = %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x1b
	.ascii "[0;33m"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "Please enter the code for the custom character: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "%c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.ascii "Please enter the value for row %d: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Author Info Printed !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "Kiran Jojare    ESD Summer 2023 Lab 4           "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__save_cursor_address:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
