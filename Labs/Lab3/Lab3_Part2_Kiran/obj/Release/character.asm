;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module character
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets_
	.globl _putchar
	.globl _getchar
	.globl _free
	.globl _malloc
	.globl _atoi
	.globl _printf_tiny
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
	.globl _buffer0and1_size
	.globl _buff_not_cleared
	.globl _buffer_to_delete
	.globl _size
	.globl _command_processing_PARM_8
	.globl _command_processing_PARM_7
	.globl _command_processing_PARM_6
	.globl _command_processing_PARM_5
	.globl _command_processing_PARM_4
	.globl _command_processing_PARM_3
	.globl _command_processing_PARM_2
	.globl _length
	.globl _empty_buffer0
	.globl _buffer0_hexdump
	.globl _command_processing
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
_command_processing_sloc0_1_0:
	.ds 2
_command_processing_sloc1_1_0:
	.ds 3
_command_processing_sloc2_1_0:
	.ds 3
_command_processing_sloc3_1_0:
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_length::
	.ds 2
_buffer0_hexdump_length_65536_53:
	.ds 2
_buffer0_hexdump_print_address_65536_54:
	.ds 1
_command_processing_PARM_2:
	.ds 1
_command_processing_PARM_3:
	.ds 3
_command_processing_PARM_4:
	.ds 3
_command_processing_PARM_5:
	.ds 3
_command_processing_PARM_6:
	.ds 3
_command_processing_PARM_7:
	.ds 3
_command_processing_PARM_8:
	.ds 2
_command_processing_cmd_detected_65536_62:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_size::
	.ds 4
_buffer_to_delete::
	.ds 2
_buff_not_cleared::
	.ds 200
_buffer0and1_size::
	.ds 2
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
;Allocation info for local variables in function 'empty_buffer0'
;------------------------------------------------------------
;i                         Allocated with name '_empty_buffer0_i_131072_51'
;------------------------------------------------------------
;	character.c:47: void empty_buffer0(void)
;	-----------------------------------------
;	 function empty_buffer0
;	-----------------------------------------
_empty_buffer0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	character.c:49: for(int i=0;i<buffer_size_arr[0];i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	mov	dptr,#_buffer_size_arr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	character.c:51: buffer0[i] = '0';
	mov	dptr,#_buffer0
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
;	character.c:49: for(int i=0;i<buffer_size_arr[0];i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	character.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buffer0_hexdump'
;------------------------------------------------------------
;length                    Allocated with name '_buffer0_hexdump_length_65536_53'
;itr                       Allocated with name '_buffer0_hexdump_itr_65536_54'
;print_address             Allocated with name '_buffer0_hexdump_print_address_65536_54'
;------------------------------------------------------------
;	character.c:55: void buffer0_hexdump(int length) {
;	-----------------------------------------
;	 function buffer0_hexdump
;	-----------------------------------------
_buffer0_hexdump:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_buffer0_hexdump_length_65536_53
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	character.c:57: bool print_address = true;
	mov	dptr,#_buffer0_hexdump_print_address_65536_54
	mov	a,#0x01
	movx	@dptr,a
;	character.c:58: printf("\033[1;34m\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	character.c:59: while(itr < buffer0and1_size)
	mov	dptr,#_buffer0_hexdump_length_65536_53
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	cjne	r6,#0x10,00146$
	cjne	r7,#0x00,00146$
	inc	a
00146$:
	mov	r5,a
	clr	a
	cjne	r6,#0x20,00148$
	cjne	r7,#0x00,00148$
	inc	a
00148$:
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00112$:
	mov	dptr,#_buffer0and1_size
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00150$
	ret
00150$:
;	character.c:62: if(print_address)
	mov	dptr,#_buffer0_hexdump_print_address_65536_54
	movx	a,@dptr
	jz	00102$
;	character.c:64: printf("\033[1;34m%p :",buffer0+itr);
	push	ar4
	mov	dptr,#_buffer0
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r2
	add	a,r0
	mov	r0,a
	mov	a,r3
	addc	a,r1
	mov	r1,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	push	ar4
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:65: print_address =false;
	mov	dptr,#_buffer0_hexdump_print_address_65536_54
	clr	a
	movx	@dptr,a
;	character.c:88: itr++;
	pop	ar4
;	character.c:65: print_address =false;
00102$:
;	character.c:68: if(buffer0[itr] == '0')
	mov	dptr,#_buffer0
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r2
	add	a,r0
	mov	dpl,a
	mov	a,r3
	addc	a,r1
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x30,00108$
;	character.c:70: printf_tiny("\033[1;34m XX");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00109$
00108$:
;	character.c:74: if(length == 16){
	mov	a,r5
	jz	00104$
;	character.c:75: printf_tiny("\033[1;34m %x", buffer0[itr]);
	mov	ar0,r1
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00104$:
;	character.c:77: if(length == 32)
	mov	a,r4
	jz	00109$
;	character.c:78: {   printf_tiny("\033[1;34m %d", buffer0[itr]);
	mov	dptr,#_buffer0
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r2
	add	a,r0
	mov	dpl,a
	mov	a,r3
	addc	a,r1
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	character.c:82: if((itr+1) % length == 0)
	mov	a,#0x01
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	dptr,#__modsint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00111$
;	character.c:84: printf_tiny("\033[1;34m\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:85: print_address = true;
	mov	dptr,#_buffer0_hexdump_print_address_65536_54
	mov	a,#0x01
	movx	@dptr,a
00111$:
;	character.c:88: itr++;
	inc	r2
	cjne	r2,#0x00,00157$
	inc	r3
00157$:
;	character.c:90: }
	ljmp	00112$
;------------------------------------------------------------
;Allocation info for local variables in function 'command_processing'
;------------------------------------------------------------
;sloc0                     Allocated with name '_command_processing_sloc0_1_0'
;sloc1                     Allocated with name '_command_processing_sloc1_1_0'
;sloc2                     Allocated with name '_command_processing_sloc2_1_0'
;sloc3                     Allocated with name '_command_processing_sloc3_1_0'
;ch                        Allocated with name '_command_processing_PARM_2'
;new_buffer_index          Allocated with name '_command_processing_PARM_3'
;free_buffer_count         Allocated with name '_command_processing_PARM_4'
;filled_buffer_count       Allocated with name '_command_processing_PARM_5'
;storage_character_count   Allocated with name '_command_processing_PARM_6'
;total_characters_count    Allocated with name '_command_processing_PARM_7'
;buffer0_size              Allocated with name '_command_processing_PARM_8'
;cmd_detected              Allocated with name '_command_processing_cmd_detected_65536_62'
;buffer_size               Allocated with name '_command_processing_buffer_size_196609_66'
;buffer_ptr                Allocated with name '_command_processing_buffer_ptr_196610_68'
;ch                        Allocated with name '_command_processing_ch_196611_70'
;temp                      Allocated with name '_command_processing_temp_262148_73'
;i                         Allocated with name '_command_processing_i_262147_78'
;buffer_to_free            Allocated with name '_command_processing_buffer_to_free_327683_79'
;i                         Allocated with name '_command_processing_i_262147_82'
;------------------------------------------------------------
;	character.c:94: int command_processing(int cmd_detected, char ch, int * new_buffer_index,
;	-----------------------------------------
;	 function command_processing
;	-----------------------------------------
_command_processing:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_command_processing_cmd_detected_65536_62
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	character.c:97: buffer0and1_size = buffer0_size;
	mov	dptr,#_command_processing_PARM_8
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_buffer0and1_size
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	character.c:98: if(cmd_detected)
	mov	dptr,#_command_processing_cmd_detected_65536_62
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00228$
	ljmp	00138$
00228$:
;	character.c:100: switch(ch)
	mov	dptr,#_command_processing_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x2b,00229$
	sjmp	00101$
00229$:
	cjne	r7,#0x2d,00230$
	ljmp	00107$
00230$:
	cjne	r7,#0x3d,00231$
	ljmp	00128$
00231$:
	cjne	r7,#0x3f,00232$
	ljmp	00129$
00232$:
	cjne	r7,#0x40,00233$
	ljmp	00123$
00233$:
	ljmp	00138$
;	character.c:103: case '+':
00101$:
;	character.c:104: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:105: printf_tiny("\033[1;33m|************ Processing [+] *******************|\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:106: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:108: (*new_buffer_index)++;
	mov	dptr,#_command_processing_PARM_3
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00234$
	inc	r4
00234$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	character.c:109: printf_tiny("\033[1;0\n\rEnter size:");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:110: gets_(size);
	mov	dptr,#_size
	lcall	_gets_
;	character.c:111: int buffer_size = atoi(size);
	mov	dptr,#_size
	mov	b,#0x00
	lcall	_atoi
	mov	r3,dpl
	mov	r4,dph
;	character.c:112: printf("\033[1;0mSize after atoi = %d\r\n",buffer_size);
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:113: if (buffer_size < 30 || buffer_size > 300) {
	clr	c
	mov	a,r3
	subb	a,#0x1e
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
	mov	a,#0x2c
	subb	a,r3
	mov	a,#(0x01 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
00102$:
;	character.c:114: printf_tiny("\033[1;31mInvalid Input : The buffer size should be in the range [30, 300]\n\r\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:115: break;
	ljmp	00138$
00103$:
;	character.c:117: __xdata char* buffer_ptr = (__xdata char*)malloc(buffer_size);
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_malloc
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_command_processing_sloc0_1_0,r1
	mov	(_command_processing_sloc0_1_0 + 1),r2
;	character.c:119: if (buffer_ptr == NULL) {
	mov	a,_command_processing_sloc0_1_0
	orl	a,(_command_processing_sloc0_1_0 + 1)
	jnz	00106$
;	character.c:120: printf_tiny("\033[1;31mInvalid input : Failed to allocate buffer\n\r\n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:121: break;
	ljmp	00138$
00106$:
;	character.c:124: buffer_size_arr[(*new_buffer_index)-1] = buffer_size;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	dec	r0
	cjne	r0,#0xff,00238$
	dec	r2
00238$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r0
	add	a,#_buffer_size_arr
	mov	dpl,a
	mov	a,r2
	addc	a,#(_buffer_size_arr >> 8)
	mov	dph,a
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	character.c:125: ++(*filled_buffer_count);
	mov	dptr,#_command_processing_PARM_5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	r0
	cjne	r0,#0x00,00239$
	inc	r1
00239$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	character.c:127: new_buffer_arr[(*new_buffer_index)-1] = buffer_ptr;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	dec	r0
	cjne	r0,#0xff,00240$
	dec	r1
00240$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,#_new_buffer_arr
	mov	dpl,a
	mov	a,r1
	addc	a,#(_new_buffer_arr >> 8)
	mov	dph,a
	mov	a,_command_processing_sloc0_1_0
	movx	@dptr,a
	mov	a,(_command_processing_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	character.c:128: buff_not_cleared[(*new_buffer_index)] = 1; // indicating buff bo new_buffer_index is created
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,#_buff_not_cleared
	mov	dpl,a
	mov	a,r1
	addc	a,#(_buff_not_cleared >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	character.c:130: printf("\033[1;0mNew buffer index = %d\n\r",(*new_buffer_index));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:131: printf_tiny("\033[1;0mNew buffer allocated successfully : Buffer[%d]\n\r", ((*new_buffer_index)-1));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	dec	r0
	cjne	r0,#0xff,00241$
	dec	r1
00241$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:132: printf_tiny("\033[1;0mTotal Number of Buffers including buffer0 & buffer1 = [%d]\n\r",(*new_buffer_index));
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	character.c:133: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \t Total Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
	mov	dptr,#_command_processing_PARM_4
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	push	ar5
	push	ar6
	push	ar2
	push	ar3
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	character.c:134: break;
	ljmp	00138$
;	character.c:137: case '-':
00107$:
;	character.c:138: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:139: printf_tiny("\033[1;33m|************ Processing [-] *******************|\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:140: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:141: buffer_to_delete = 0;
	mov	dptr,#_buffer_to_delete
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	character.c:142: printf_tiny("\033[1;0m\n\rEnter buffer number to be deleted:\n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:143: printf_tiny("\033[1;0m\Current number of buffers are [%d] (index starting from 0):\n\r\n\r",*new_buffer_index);
	mov	dptr,#_command_processing_PARM_3
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:146: do{
00111$:
;	character.c:147: ch = getchar();
	push	ar7
	push	ar6
	push	ar5
	lcall	_getchar
	mov	r3,dpl
;	character.c:148: putchar(ch);
	mov	ar2,r3
	mov	r4,#0x00
	mov	dpl,r2
	mov	dph,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:150: if (ch < '0' || ch > '9') {
	cjne	r3,#0x30,00242$
00242$:
	jc	00108$
	mov	a,r3
	add	a,#0xff - 0x39
	jnc	00109$
00108$:
;	character.c:151: printf_tiny("\033[1;31mInvalid input : invalid digits entered \n\r\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:152: break;
	sjmp	00113$
00109$:
;	character.c:155: int temp = ch - '0';
	mov	a,r2
	add	a,#0xd0
	mov	r2,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
;	character.c:156: buffer_to_delete = buffer_to_delete * 10 + temp;
	mov	dptr,#_buffer_to_delete
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar4
	mov	dptr,#_buffer_to_delete
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,b
	inc	dptr
	movx	@dptr,a
;	character.c:158: ch = getchar();
	lcall	_getchar
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:160: }while(ch != '\r');
	cjne	r3,#0x0d,00245$
	sjmp	00246$
00245$:
	ljmp	00111$
00246$:
00113$:
;	character.c:162: if (buffer_to_delete == 0)
	mov	dptr,#_buffer_to_delete
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00121$
;	character.c:164: printf_tiny("\033[1;31mInvalid input : buffer number can't be 0\n\r\n");break;
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	ljmp	00138$
00121$:
;	character.c:166: } else if(buff_not_cleared[buffer_to_delete] == 0){
	mov	a,r3
	add	a,r3
	mov	r1,a
	mov	a,r4
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,#_buff_not_cleared
	mov	dpl,a
	mov	a,r2
	addc	a,#(_buff_not_cleared >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	orl	a,r1
	jnz	00118$
;	character.c:167: printf_tiny("\033[1;31mInvalid input : buffer[%d] was already cleared earlier\n\r",buffer_to_delete);break;
	push	ar3
	push	ar4
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00138$
00118$:
;	character.c:169: } else if ((buffer_to_delete) >= *new_buffer_index) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00115$
;	character.c:170: printf_tiny("\033[1;31mInvalid input : buffer number doesn't exist\n\r");break;
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	ljmp	00138$
00115$:
;	character.c:173: printf_tiny("\033[1;0mBuffer [%d] requested to be deleted\n\r",buffer_to_delete);
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	character.c:174: free(new_buffer_arr[buffer_to_delete]);
	mov	dptr,#_buffer_to_delete
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,#_new_buffer_arr
	mov	dpl,a
	mov	a,r4
	addc	a,#(_new_buffer_arr >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_free
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:175: buff_not_cleared[buffer_to_delete] =0;
	mov	dptr,#_buffer_to_delete
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,#_buff_not_cleared
	mov	dpl,a
	mov	a,r4
	addc	a,#(_buff_not_cleared >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	character.c:176: ++(*free_buffer_count);
	mov	dptr,#_command_processing_PARM_4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	r0
	cjne	r0,#0x00,00250$
	inc	r1
00250$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	character.c:177: printf_tiny("\033[1;0mBuffer[%d] de-allocated successfully  \n\r", buffer_to_delete);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dptr,#_buffer_to_delete
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:178: printf_tiny("\033[1;0mTotal Number of Buffers after deallocation = [%d]\n\r\n\r",*new_buffer_index);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar6
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
;	character.c:179: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \t Total Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_command_processing_PARM_5
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	character.c:181: break;
	ljmp	00138$
;	character.c:183: case '@':
00123$:
;	character.c:184: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:185: printf_tiny("\033[1;33m|************ Processing [@] *******************|\n\r");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:186: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:187: for(int i = 0; i < *new_buffer_index; i++) {
	mov	dptr,#_command_processing_PARM_3
	movx	a,@dptr
	mov	_command_processing_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_command_processing_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_command_processing_sloc1_1_0 + 2),a
	mov	r3,#0x00
	mov	r4,#0x00
00140$:
	mov	dpl,_command_processing_sloc1_1_0
	mov	dph,(_command_processing_sloc1_1_0 + 1)
	mov	b,(_command_processing_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00251$
	ljmp	00127$
00251$:
;	character.c:188: char* buffer_to_free = new_buffer_arr[i];
	mov	a,r3
	add	a,r3
	mov	r1,a
	mov	a,r4
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,#_new_buffer_arr
	mov	r1,a
	mov	a,r2
	addc	a,#(_new_buffer_arr >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_command_processing_sloc2_1_0,r0
	mov	(_command_processing_sloc2_1_0 + 1),r7
	mov	(_command_processing_sloc2_1_0 + 2),#0x00
;	character.c:189: if(buffer_to_free != NULL) {
	mov	a,r0
	orl	a,r7
	jz	00125$
;	character.c:190: free(buffer_to_free);
	mov	r5,_command_processing_sloc2_1_0
	mov	r6,(_command_processing_sloc2_1_0 + 1)
	mov	r7,(_command_processing_sloc2_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_free
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	character.c:191: new_buffer_arr[i] = NULL;
	mov	dpl,r1
	mov	dph,r2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	character.c:192: printf_tiny("\033[1;0mBuffer[%d] freed\n\r",i);
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
	sjmp	00141$
00125$:
;	character.c:194: printf_tiny("\033[1;0mBuffer[%d] was already NULL\n\r",i);
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
00141$:
;	character.c:187: for(int i = 0; i < *new_buffer_index; i++) {
	inc	r3
	cjne	r3,#0x00,00253$
	inc	r4
00253$:
	ljmp	00140$
00127$:
;	character.c:198: *new_buffer_index = 0;
	mov	dpl,_command_processing_sloc1_1_0
	mov	dph,(_command_processing_sloc1_1_0 + 1)
	mov	b,(_command_processing_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	character.c:199: (*filled_buffer_count) = 0;
	mov	dptr,#_command_processing_PARM_5
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
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	character.c:200: (*free_buffer_count) = 0;
	mov	dptr,#_command_processing_PARM_4
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
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	character.c:201: return ALL_BUFFER_CLEARED;
	mov	dptr,#0x0001
	ret
;	character.c:203: case '=':
00128$:
;	character.c:204: printf_tiny("\033[1;33m\r\n|************ Processing [=] *******************|\n\r");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:205: length = 16;
	mov	dptr,#_length
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	character.c:206: buffer0_hexdump(length);
	mov	dptr,#0x0010
	lcall	_buffer0_hexdump
;	character.c:207: break;
	ljmp	00138$
;	character.c:209: case '?':
00129$:
;	character.c:210: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:211: printf_tiny("\033[1;33m|************ Processing [?] *******************|\n\r");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:212: printf_tiny("\033[1;33m|***********************************************|\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:213: printf_tiny(" \033[1;34m\r\n|***********************************************|\n\r");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:214: printf_tiny(" \033[1;34m|*************** HEAP REPORT *******************|\n\r");
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:215: printf_tiny(" \033[1;34m|***********************************************|\n\r");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	character.c:216: for(int i=0;i<*new_buffer_index;i++)
	mov	dptr,#_command_processing_PARM_6
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_command_processing_PARM_7
	movx	a,@dptr
	mov	_command_processing_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_command_processing_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_command_processing_sloc3_1_0 + 2),a
	mov	dptr,#_command_processing_PARM_3
	movx	a,@dptr
	mov	_command_processing_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_command_processing_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_command_processing_sloc2_1_0 + 2),a
	mov	r0,#0x00
	mov	r1,#0x00
00143$:
	mov	dpl,_command_processing_sloc2_1_0
	mov	dph,(_command_processing_sloc2_1_0 + 1)
	mov	b,(_command_processing_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r1
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00254$
	ljmp	00134$
00254$:
;	character.c:219: if(new_buffer_arr[i] == NULL)
	mov	a,r0
	add	a,r0
	mov	_command_processing_sloc1_1_0,a
	mov	a,r1
	rlc	a
	mov	(_command_processing_sloc1_1_0 + 1),a
	mov	a,_command_processing_sloc1_1_0
	add	a,#_new_buffer_arr
	mov	_command_processing_sloc0_1_0,a
	mov	a,(_command_processing_sloc1_1_0 + 1)
	addc	a,#(_new_buffer_arr >> 8)
	mov	(_command_processing_sloc0_1_0 + 1),a
	mov	dpl,_command_processing_sloc0_1_0
	mov	dph,(_command_processing_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	orl	a,r3
	jnz	00131$
;	character.c:221: printf_tiny("\033[1;36m\n\rBuffer [%d] already cleared!!\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:222: break;
	ljmp	00134$
00131$:
;	character.c:224: printf("\033[1;36m\n\r**Buffer [%d]**\n\r",i);
	push	ar5
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
;	character.c:225: printf("\033[1;0m\n\rBuffer [%d] : Start Address = [%p] \n\r",i,new_buffer_arr[i]);
	mov	dpl,_command_processing_sloc0_1_0
	mov	dph,(_command_processing_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:226: printf("\033[1;0m\n\rBuffer [%d] : End Address   = [%p] \n\r",i,new_buffer_arr[i] + buffer_size_arr[i]);
	mov	dpl,_command_processing_sloc0_1_0
	mov	dph,(_command_processing_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_command_processing_sloc1_1_0
	add	a,#_buffer_size_arr
	mov	r2,a
	mov	a,(_command_processing_sloc1_1_0 + 1)
	addc	a,#(_buffer_size_arr >> 8)
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	push	ar6
	push	ar0
	push	ar1
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:227: printf("\033[1;0m\n\rBuffer [%d] : Total Size    = [%d] \n\r",i,buffer_size_arr[i]);
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	push	ar2
	push	ar7
	push	ar0
	push	ar1
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:228: if(i == 0)
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r0
	orl	a,r1
	jnz	00144$
;	character.c:230: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*storage_character_count);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	push	ar0
	push	ar1
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
	pop	ar1
;	character.c:231: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*total_characters_count);
	mov	dpl,_command_processing_sloc3_1_0
	mov	dph,(_command_processing_sloc3_1_0 + 1)
	mov	b,(_command_processing_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	push	ar0
	push	ar1
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
00144$:
;	character.c:216: for(int i=0;i<*new_buffer_index;i++)
	inc	r0
	cjne	r0,#0x00,00257$
	inc	r1
00257$:
	ljmp	00143$
00134$:
;	character.c:235: printf_tiny("\033[1;33m|***********************************************|\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	character.c:236: *storage_character_count = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	character.c:237: *total_characters_count = 0;
	mov	dpl,_command_processing_sloc3_1_0
	mov	dph,(_command_processing_sloc3_1_0 + 1)
	mov	b,(_command_processing_sloc3_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	character.c:239: length = 32;
	mov	dptr,#_length
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	character.c:240: buffer0_hexdump(length);
	mov	dptr,#0x0020
	lcall	_buffer0_hexdump
;	character.c:241: empty_buffer0();
	lcall	_empty_buffer0
;	character.c:245: }
00138$:
;	character.c:247: return ALL_BUFFER_NOT_CLEARED;
	mov	dptr,#0x0002
;	character.c:248: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[1;34m"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[1;34m%p :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[1;34m XX"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x1b
	.ascii "[1;34m %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[1;34m %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x1b
	.ascii "[1;33m|***********************************************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x1b
	.ascii "[1;33m|************ Processing [+] *******************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x1b
	.ascii "[1;0"
	.db 0x0a
	.db 0x0d
	.ascii "Enter size:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x1b
	.ascii "[1;0mSize after atoi = %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x1b
	.ascii "[1;31mInvalid Input : The buffer size should be in the range"
	.ascii " [30, 300]"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x1b
	.ascii "[1;31mInvalid input : Failed to allocate buffer"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x1b
	.ascii "[1;0mNew buffer index = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x1b
	.ascii "[1;0mNew buffer allocated successfully : Buffer[%d]"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x1b
	.ascii "[1;0mTotal Number of Buffers including buffer0 & buffer1 = ["
	.ascii "%d]"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x1b
	.ascii "[1;0mTotal Filled Buffers = [%d] "
	.db 0x09
	.ascii " Total Empty Buffers = [%d] "
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x1b
	.ascii "[1;33m|************ Processing [-] *******************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x1b
	.ascii "[1;0m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter buffer number to be deleted:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x1b
	.ascii "[1;0mCurrent number of buffers are [%d] (index starting from"
	.ascii " 0):"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x1b
	.ascii "[1;31mInvalid input : invalid digits entered "
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x1b
	.ascii "[1;31mInvalid input : buffer number can't be 0"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x1b
	.ascii "[1;31mInvalid input : buffer[%d] was already cleared earlier"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x1b
	.ascii "[1;31mInvalid input : buffer number doesn't exist"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x1b
	.ascii "[1;0mBuffer [%d] requested to be deleted"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x1b
	.ascii "[1;0mBuffer[%d] de-allocated successfully  "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x1b
	.ascii "[1;0mTotal Number of Buffers after deallocation = [%d]"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x1b
	.ascii "[1;33m|************ Processing [@] *******************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x1b
	.ascii "[1;0mBuffer[%d] freed"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x1b
	.ascii "[1;0mBuffer[%d] was already NULL"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0d
	.db 0x0a
	.ascii "|************ Processing [=] *******************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x1b
	.ascii "[1;33m|************ Processing [?] *******************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii " "
	.db 0x1b
	.ascii "[1;34m"
	.db 0x0d
	.db 0x0a
	.ascii "|***********************************************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii " "
	.db 0x1b
	.ascii "[1;34m|*************** HEAP REPORT *******************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii " "
	.db 0x1b
	.ascii "[1;34m|***********************************************|"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x1b
	.ascii "[1;36m"
	.db 0x0a
	.db 0x0d
	.ascii "Buffer [%d] already cleared!!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.db 0x1b
	.ascii "[1;36m"
	.db 0x0a
	.db 0x0d
	.ascii "**Buffer [%d]**"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x1b
	.ascii "[1;0m"
	.db 0x0a
	.db 0x0d
	.ascii "Buffer [%d] : Start Address = [%p] "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x1b
	.ascii "[1;0m"
	.db 0x0a
	.db 0x0d
	.ascii "Buffer [%d] : End Address   = [%p] "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x1b
	.ascii "[1;0m"
	.db 0x0a
	.db 0x0d
	.ascii "Buffer [%d] : Total Size    = [%d] "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x1b
	.ascii "[1;0m"
	.db 0x0a
	.db 0x0d
	.ascii "Buffer[%d] : Number of storage characters since last ?= [%d]"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__size:
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
__xinit__buffer_to_delete:
	.byte #0x00, #0x00	;  0
__xinit__buff_not_cleared:
	.byte #0x00, #0x00	;  0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__buffer0and1_size:
	.byte #0x00, #0x00	;  0
	.area CABS    (ABS,CODE)
