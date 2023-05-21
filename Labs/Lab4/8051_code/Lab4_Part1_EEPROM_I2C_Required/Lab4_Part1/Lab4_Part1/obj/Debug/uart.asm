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
	.globl _print_hex_number
	.globl _parse_user_input
	.globl _char_to_int
	.globl _int_to_char
	.globl _initialize_uart_timer
	.globl _strchr
	.globl _putchar
	.globl _getchar
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
	.globl _print_hex_number_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$T2CON$0_0$0 == 0x00c8
_T2CON	=	0x00c8
G$RCAP2L$0_0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0_0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0_0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0_0$0 == 0x00cd
_TH2	=	0x00cd
G$AUXR$0_0$0 == 0x008e
_AUXR	=	0x008e
G$AUXR1$0_0$0 == 0x00a2
_AUXR1	=	0x00a2
G$CKRL$0_0$0 == 0x0097
_CKRL	=	0x0097
G$CKCON0$0_0$0 == 0x008f
_CKCON0	=	0x008f
G$CKCON1$0_0$0 == 0x00af
_CKCON1	=	0x00af
G$CCAP0H$0_0$0 == 0x00fa
_CCAP0H	=	0x00fa
G$CCAP1H$0_0$0 == 0x00fb
_CCAP1H	=	0x00fb
G$CCAP2H$0_0$0 == 0x00fc
_CCAP2H	=	0x00fc
G$CCAP3H$0_0$0 == 0x00fd
_CCAP3H	=	0x00fd
G$CCAP4H$0_0$0 == 0x00fe
_CCAP4H	=	0x00fe
G$CCAP0L$0_0$0 == 0x00ea
_CCAP0L	=	0x00ea
G$CCAP1L$0_0$0 == 0x00eb
_CCAP1L	=	0x00eb
G$CCAP2L$0_0$0 == 0x00ec
_CCAP2L	=	0x00ec
G$CCAP3L$0_0$0 == 0x00ed
_CCAP3L	=	0x00ed
G$CCAP4L$0_0$0 == 0x00ee
_CCAP4L	=	0x00ee
G$CCAPM0$0_0$0 == 0x00da
_CCAPM0	=	0x00da
G$CCAPM1$0_0$0 == 0x00db
_CCAPM1	=	0x00db
G$CCAPM2$0_0$0 == 0x00dc
_CCAPM2	=	0x00dc
G$CCAPM3$0_0$0 == 0x00dd
_CCAPM3	=	0x00dd
G$CCAPM4$0_0$0 == 0x00de
_CCAPM4	=	0x00de
G$CCON$0_0$0 == 0x00d8
_CCON	=	0x00d8
G$CH$0_0$0 == 0x00f9
_CH	=	0x00f9
G$CL$0_0$0 == 0x00e9
_CL	=	0x00e9
G$CMOD$0_0$0 == 0x00d9
_CMOD	=	0x00d9
G$IEN0$0_0$0 == 0x00a8
_IEN0	=	0x00a8
G$IEN1$0_0$0 == 0x00b1
_IEN1	=	0x00b1
G$IPL0$0_0$0 == 0x00b8
_IPL0	=	0x00b8
G$IPH0$0_0$0 == 0x00b7
_IPH0	=	0x00b7
G$IPL1$0_0$0 == 0x00b2
_IPL1	=	0x00b2
G$IPH1$0_0$0 == 0x00b3
_IPH1	=	0x00b3
G$P4$0_0$0 == 0x00c0
_P4	=	0x00c0
G$P5$0_0$0 == 0x00e8
_P5	=	0x00e8
G$WDTRST$0_0$0 == 0x00a6
_WDTRST	=	0x00a6
G$WDTPRG$0_0$0 == 0x00a7
_WDTPRG	=	0x00a7
G$SADDR$0_0$0 == 0x00a9
_SADDR	=	0x00a9
G$SADEN$0_0$0 == 0x00b9
_SADEN	=	0x00b9
G$SPCON$0_0$0 == 0x00c3
_SPCON	=	0x00c3
G$SPSTA$0_0$0 == 0x00c4
_SPSTA	=	0x00c4
G$SPDAT$0_0$0 == 0x00c5
_SPDAT	=	0x00c5
G$T2MOD$0_0$0 == 0x00c9
_T2MOD	=	0x00c9
G$BDRCON$0_0$0 == 0x009b
_BDRCON	=	0x009b
G$BRL$0_0$0 == 0x009a
_BRL	=	0x009a
G$KBLS$0_0$0 == 0x009c
_KBLS	=	0x009c
G$KBE$0_0$0 == 0x009d
_KBE	=	0x009d
G$KBF$0_0$0 == 0x009e
_KBF	=	0x009e
G$EECON$0_0$0 == 0x00d2
_EECON	=	0x00d2
G$DP0H$0_0$0 == 0x0083
_DP0H	=	0x0083
G$DP0L$0_0$0 == 0x0082
_DP0L	=	0x0082
G$SBUF0$0_0$0 == 0x0099
_SBUF0	=	0x0099
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ET2$0_0$0 == 0x00ad
_ET2	=	0x00ad
G$PT2$0_0$0 == 0x00bd
_PT2	=	0x00bd
G$T2CON_0$0_0$0 == 0x00c8
_T2CON_0	=	0x00c8
G$T2CON_1$0_0$0 == 0x00c9
_T2CON_1	=	0x00c9
G$T2CON_2$0_0$0 == 0x00ca
_T2CON_2	=	0x00ca
G$T2CON_3$0_0$0 == 0x00cb
_T2CON_3	=	0x00cb
G$T2CON_4$0_0$0 == 0x00cc
_T2CON_4	=	0x00cc
G$T2CON_5$0_0$0 == 0x00cd
_T2CON_5	=	0x00cd
G$T2CON_6$0_0$0 == 0x00ce
_T2CON_6	=	0x00ce
G$T2CON_7$0_0$0 == 0x00cf
_T2CON_7	=	0x00cf
G$CP_RL2$0_0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0_0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0_0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0_0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0_0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0_0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0_0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0_0$0 == 0x00cf
_TF2	=	0x00cf
G$CF$0_0$0 == 0x00df
_CF	=	0x00df
G$CR$0_0$0 == 0x00de
_CR	=	0x00de
G$CCF4$0_0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0_0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0_0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0_0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0_0$0 == 0x00d8
_CCF0	=	0x00d8
G$EC$0_0$0 == 0x00ae
_EC	=	0x00ae
G$PPCL$0_0$0 == 0x00be
_PPCL	=	0x00be
G$PT2L$0_0$0 == 0x00bd
_PT2L	=	0x00bd
G$PSL$0_0$0 == 0x00bc
_PSL	=	0x00bc
G$PT1L$0_0$0 == 0x00bb
_PT1L	=	0x00bb
G$PX1L$0_0$0 == 0x00ba
_PX1L	=	0x00ba
G$PT0L$0_0$0 == 0x00b9
_PT0L	=	0x00b9
G$PX0L$0_0$0 == 0x00b8
_PX0L	=	0x00b8
G$P4_0$0_0$0 == 0x00c0
_P4_0	=	0x00c0
G$P4_1$0_0$0 == 0x00c1
_P4_1	=	0x00c1
G$P4_2$0_0$0 == 0x00c2
_P4_2	=	0x00c2
G$P4_3$0_0$0 == 0x00c3
_P4_3	=	0x00c3
G$P4_4$0_0$0 == 0x00c4
_P4_4	=	0x00c4
G$P4_5$0_0$0 == 0x00c5
_P4_5	=	0x00c5
G$P4_6$0_0$0 == 0x00c6
_P4_6	=	0x00c6
G$P4_7$0_0$0 == 0x00c7
_P4_7	=	0x00c7
G$P5_0$0_0$0 == 0x00e8
_P5_0	=	0x00e8
G$P5_1$0_0$0 == 0x00e9
_P5_1	=	0x00e9
G$P5_2$0_0$0 == 0x00ea
_P5_2	=	0x00ea
G$P5_3$0_0$0 == 0x00eb
_P5_3	=	0x00eb
G$P5_4$0_0$0 == 0x00ec
_P5_4	=	0x00ec
G$P5_5$0_0$0 == 0x00ed
_P5_5	=	0x00ed
G$P5_6$0_0$0 == 0x00ee
_P5_6	=	0x00ee
G$P5_7$0_0$0 == 0x00ef
_P5_7	=	0x00ef
G$BREG_F0$0_0$0 == 0x00f0
_BREG_F0	=	0x00f0
G$BREG_F1$0_0$0 == 0x00f1
_BREG_F1	=	0x00f1
G$BREG_F2$0_0$0 == 0x00f2
_BREG_F2	=	0x00f2
G$BREG_F3$0_0$0 == 0x00f3
_BREG_F3	=	0x00f3
G$BREG_F4$0_0$0 == 0x00f4
_BREG_F4	=	0x00f4
G$BREG_F5$0_0$0 == 0x00f5
_BREG_F5	=	0x00f5
G$BREG_F6$0_0$0 == 0x00f6
_BREG_F6	=	0x00f6
G$BREG_F7$0_0$0 == 0x00f7
_BREG_F7	=	0x00f7
G$RXD0$0_0$0 == 0x00b0
_RXD0	=	0x00b0
G$TXD0$0_0$0 == 0x00b1
_TXD0	=	0x00b1
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
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
Luart.print_hex_number$sloc3$0_1$0==.
_print_hex_number_sloc3_1_0:
	.ds 2
Luart.print_hex_number$sloc4$0_1$0==.
_print_hex_number_sloc4_1_0:
	.ds 4
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
Luart.print_hex_number$sloc0$0_1$0==.
_print_hex_number_sloc0_1_0:
	.ds 1
Luart.print_hex_number$sloc1$0_1$0==.
_print_hex_number_sloc1_1_0:
	.ds 1
Luart.print_hex_number$sloc2$0_1$0==.
_print_hex_number_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Luart.int_to_char$num$1_0$68==.
_int_to_char_num_65536_68:
	.ds 2
Luart.int_to_char$hex_digits$1_0$69==.
_int_to_char_hex_digits_65536_69:
	.ds 17
Luart.char_to_int$ch$1_0$71==.
_char_to_int_ch_65536_71:
	.ds 1
Luart.parse_user_input$base$1_0$74==.
_parse_user_input_base_65536_74:
	.ds 1
Luart.parse_user_input$number$1_0$75==.
_parse_user_input_number_65536_75:
	.ds 2
Luart.parse_user_input$digits$1_0$75==.
_parse_user_input_digits_65536_75:
	.ds 40
Luart.parse_user_input$digit_count$1_0$75==.
_parse_user_input_digit_count_65536_75:
	.ds 2
Luart.parse_user_input$current_char$1_0$75==.
_parse_user_input_current_char_65536_75:
	.ds 2
Luart.print_hex_number$width$1_0$82==.
_print_hex_number_PARM_2:
	.ds 1
Luart.print_hex_number$num$1_0$82==.
_print_hex_number_num_65536_82:
	.ds 4
Luart.print_hex_number$ascii_buffer$1_0$83==.
_print_hex_number_ascii_buffer_65536_83:
	.ds 10
Luart.print_hex_number$digit_count$1_0$83==.
_print_hex_number_digit_count_65536_83:
	.ds 1
Luart.print_colored$color_code$1_0$93==.
_print_colored_PARM_2:
	.ds 2
Luart.print_colored$str$1_0$93==.
_print_colored_str_65536_93:
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
;Allocation info for local variables in function 'initialize_uart_timer'
;------------------------------------------------------------
	G$initialize_uart_timer$0$0 ==.
	C$uart.c$40$0_0$67 ==.
;	uart.c:40: void initialize_uart_timer() {
;	-----------------------------------------
;	 function initialize_uart_timer
;	-----------------------------------------
_initialize_uart_timer:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$uart.c$41$1_0$67 ==.
;	uart.c:41: IEN0 |= 0x80;           // Enable interrupts
	orl	_IEN0,#0x80
	C$uart.c$42$1_0$67 ==.
;	uart.c:42: IPL0 |= 0x10;           // Set interrupt priority to 1
	orl	_IPL0,#0x10
	C$uart.c$43$1_0$67 ==.
;	uart.c:43: TMOD |= 0x20;           // Set Timer 1 mode to 8-bit auto-reload mode
	orl	_TMOD,#0x20
	C$uart.c$44$1_0$67 ==.
;	uart.c:44: SCON = (SCON & 0xCF) | 0x50;    // Set Timer 1 to Mode 2 (8-bit auto-reload mode)
	mov	a,_SCON
	anl	a,#0xcf
	orl	a,#0x50
	mov	_SCON,a
	C$uart.c$45$1_0$67 ==.
;	uart.c:45: TCON = (TCON & 0xBF) | 0x40;    // Set baud rate of 9600 Baud Rate = 11.0592 MHz / (32 * (256 - 0xFD)) = 9600
	mov	a,_TCON
	anl	a,#0xbf
	orl	a,#0x40
	mov	_TCON,a
	C$uart.c$46$1_0$67 ==.
;	uart.c:46: TH1 = 0xFD;             // Set UART with 8-bit mode with 1 stop bit
	mov	_TH1,#0xfd
	C$uart.c$47$1_0$67 ==.
;	uart.c:47: TI = 1;                 // Enable the UART transmitter
;	assignBit
	setb	_TI
	C$uart.c$48$1_0$67 ==.
;	uart.c:48: }
	C$uart.c$48$1_0$67 ==.
	XG$initialize_uart_timer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int_to_char'
;------------------------------------------------------------
;num                       Allocated with name '_int_to_char_num_65536_68'
;hex_digits                Allocated with name '_int_to_char_hex_digits_65536_69'
;------------------------------------------------------------
	G$int_to_char$0$0 ==.
	C$uart.c$50$1_0$69 ==.
;	uart.c:50: char int_to_char(int num) {
;	-----------------------------------------
;	 function int_to_char
;	-----------------------------------------
_int_to_char:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_int_to_char_num_65536_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$uart.c$51$2_0$69 ==.
;	uart.c:51: const char hex_digits[] = "0123456789ABCDEF"; // Hexadecimal digits
	mov	dptr,#_int_to_char_hex_digits_65536_69
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0001)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0002)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0003)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0004)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0005)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0006)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0007)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0008)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0009)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000a)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000b)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000c)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000d)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000e)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000f)
	inc	a
	movx	@dptr,a
	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0010)
	clr	a
	movx	@dptr,a
	C$uart.c$52$1_0$69 ==.
;	uart.c:52: if (num >= 0 && num <= 15) {
	mov	dptr,#_int_to_char_num_65536_68
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00102$
	clr	c
	mov	a,#0x0f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	C$uart.c$53$2_0$70 ==.
;	uart.c:53: return hex_digits[num];
	mov	a,r6
	add	a,#_int_to_char_hex_digits_65536_69
	mov	dpl,a
	mov	a,r7
	addc	a,#(_int_to_char_hex_digits_65536_69 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	sjmp	00104$
00102$:
	C$uart.c$55$1_0$69 ==.
;	uart.c:55: return '0';
	mov	dpl,#0x30
00104$:
	C$uart.c$56$1_0$69 ==.
;	uart.c:56: }
	C$uart.c$56$1_0$69 ==.
	XG$int_to_char$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'char_to_int'
;------------------------------------------------------------
;ch                        Allocated with name '_char_to_int_ch_65536_71'
;hex_digits                Allocated with name '_char_to_int_hex_digits_65536_72'
;pos                       Allocated with name '_char_to_int_pos_65536_72'
;------------------------------------------------------------
	G$char_to_int$0$0 ==.
	C$uart.c$58$1_0$72 ==.
;	uart.c:58: uint8_t char_to_int(uint8_t ch) {
;	-----------------------------------------
;	 function char_to_int
;	-----------------------------------------
_char_to_int:
	mov	a,dpl
	mov	dptr,#_char_to_int_ch_65536_71
	movx	@dptr,a
	C$uart.c$59$2_0$72 ==.
;	uart.c:59: const char *hex_digits = "0123456789abcdefABCDEF"; // Hexadecimal digits
	C$uart.c$60$1_0$72 ==.
;	uart.c:60: const char *pos = strchr(hex_digits, ch); // Get position of character in hexadecimal digits
	movx	a,@dptr
	mov	dptr,#_strchr_PARM_2
	movx	@dptr,a
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$uart.c$61$1_0$72 ==.
;	uart.c:61: if (pos != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
	C$uart.c$62$1_0$72 ==.
;	uart.c:62: return (uint8_t)(pos - hex_digits);
	mov	r7,#___str_1
	mov	a,r5
	clr	c
	subb	a,r7
	mov	r5,a
	mov	dpl,a
	sjmp	00103$
00102$:
	C$uart.c$64$1_0$72 ==.
;	uart.c:64: return 0;
	mov	dpl,#0x00
00103$:
	C$uart.c$65$1_0$72 ==.
;	uart.c:65: }
	C$uart.c$65$1_0$72 ==.
	XG$char_to_int$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_user_input'
;------------------------------------------------------------
;base                      Allocated with name '_parse_user_input_base_65536_74'
;number                    Allocated with name '_parse_user_input_number_65536_75'
;digits                    Allocated with name '_parse_user_input_digits_65536_75'
;digit_count               Allocated with name '_parse_user_input_digit_count_65536_75'
;i                         Allocated with name '_parse_user_input_i_65536_75'
;current_char              Allocated with name '_parse_user_input_current_char_65536_75'
;------------------------------------------------------------
	G$parse_user_input$0$0 ==.
	C$uart.c$67$1_0$75 ==.
;	uart.c:67: uint16_t parse_user_input(uint8_t base)
;	-----------------------------------------
;	 function parse_user_input
;	-----------------------------------------
_parse_user_input:
	mov	a,dpl
	mov	dptr,#_parse_user_input_base_65536_74
	movx	@dptr,a
	C$uart.c$69$2_0$75 ==.
;	uart.c:69: uint16_t number = 0;
	mov	dptr,#_parse_user_input_number_65536_75
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$uart.c$70$2_0$75 ==.
;	uart.c:70: uint16_t digits[MAX_DIGITS] = {0};
	mov	dptr,#_parse_user_input_digits_65536_75
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0004)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0006)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0008)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x000a)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x000c)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x000e)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0010)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0012)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0014)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0016)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0018)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x001a)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x001c)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x001e)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0020)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0022)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0024)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0026)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$uart.c$71$2_0$75 ==.
;	uart.c:71: uint16_t digit_count = 0;
	mov	dptr,#_parse_user_input_digit_count_65536_75
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$uart.c$73$2_0$75 ==.
;	uart.c:73: uint16_t current_char = 0;
	mov	dptr,#_parse_user_input_current_char_65536_75
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$uart.c$75$1_0$75 ==.
;	uart.c:75: while (current_char != CARRIAGE_RETURN) {   // Loop until the input is complete.
00113$:
	mov	dptr,#_parse_user_input_current_char_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0d,00159$
	cjne	r7,#0x00,00159$
	ljmp	00130$
00159$:
	C$uart.c$76$2_0$76 ==.
;	uart.c:76: current_char = getchar();               // Read the next character.
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_parse_user_input_current_char_65536_75
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$uart.c$78$2_0$76 ==.
;	uart.c:78: if (((current_char >= '0') && (current_char <= '9')) || // Check if the character is a valid digit.
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,#0x30
	mov	a,r5
	subb	a,#0x00
	jc	00110$
	mov	a,#0x39
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00105$
00110$:
	C$uart.c$79$2_0$76 ==.
;	uart.c:79: ((current_char >= 'a') && (current_char <= 'f')) ||
	clr	c
	mov	a,r4
	subb	a,#0x61
	mov	a,r5
	subb	a,#0x00
	jc	00112$
	mov	a,#0x66
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00105$
00112$:
	C$uart.c$80$2_0$76 ==.
;	uart.c:80: ((current_char >= 'A') && (current_char <= 'F')))
	clr	c
	mov	a,r4
	subb	a,#0x41
	mov	a,r5
	subb	a,#0x00
	jc	00106$
	mov	a,#0x46
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00106$
00105$:
	C$uart.c$82$3_0$77 ==.
;	uart.c:82: putchar(current_char);                              // Echo the character back to the user.
	mov	ar2,r6
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
	C$uart.c$83$3_0$77 ==.
;	uart.c:83: digits[digit_count] = char_to_int(current_char);    // Convert the character to a digit and store it in the digits array.
	mov	dptr,#_parse_user_input_digit_count_65536_75
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r2
	mov	r0,a
	mov	a,r3
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,#_parse_user_input_digits_65536_75
	mov	r0,a
	mov	a,r1
	addc	a,#(_parse_user_input_digits_65536_75 >> 8)
	mov	r1,a
	mov	dpl,r6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_char_to_int
	mov	r7,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	r6,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$uart.c$84$3_0$77 ==.
;	uart.c:84: digit_count++;                                      // Increment the digit count.
	mov	dptr,#_parse_user_input_digit_count_65536_75
	inc	a
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00113$
00106$:
	C$uart.c$86$2_0$76 ==.
;	uart.c:86: else if (current_char == BACKSPACE) // Check for backspace.
	cjne	r4,#0x08,00166$
	cjne	r5,#0x00,00166$
	sjmp	00167$
00166$:
	ljmp	00113$
00167$:
	C$uart.c$88$3_0$78 ==.
;	uart.c:88: if (digit_count > 0)    // Check if there are any digits to delete.
	mov	dptr,#_parse_user_input_digit_count_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_parse_user_input_digit_count_65536_75
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00168$
	ljmp	00113$
00168$:
	C$uart.c$90$4_0$79 ==.
;	uart.c:90: putchar(BACKSPACE); // Move the cursor back one position.
	mov	dptr,#0x0008
	push	ar7
	push	ar6
	lcall	_putchar
	C$uart.c$91$4_0$79 ==.
;	uart.c:91: putchar(SPACE);     // Print a space to overwrite the previous digit.
	mov	dptr,#0x0020
	lcall	_putchar
	C$uart.c$92$4_0$79 ==.
;	uart.c:92: putchar(BACKSPACE); // Move the cursor back one position again.
	mov	dptr,#0x0008
	lcall	_putchar
	pop	ar6
	pop	ar7
	C$uart.c$93$4_0$79 ==.
;	uart.c:93: digit_count--;      // Decrement the digit count.
	dec	r6
	cjne	r6,#0xff,00169$
	dec	r7
00169$:
	mov	dptr,#_parse_user_input_digit_count_65536_75
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00113$
	C$uart.c$98$1_0$75 ==.
;	uart.c:98: for(i = 0; i < digit_count; i++) // Iterate over the digits.
00130$:
	mov	dptr,#_parse_user_input_base_65536_74
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_parse_user_input_digit_count_65536_75
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r3,#0x00
	mov	r4,#0x00
00118$:
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jnc	00116$
	C$uart.c$100$1_0$75 ==.
;	uart.c:100: number *= base;             // Multiply the current value of number by the base.
	push	ar5
	push	ar6
	mov	dptr,#_parse_user_input_number_65536_75
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_parse_user_input_number_65536_75
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	C$uart.c$101$3_0$81 ==.
;	uart.c:101: number += digits[i];        // Add the current digit to number.
	mov	a,r3
	add	a,r3
	mov	r1,a
	mov	a,r4
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,#_parse_user_input_digits_65536_75
	mov	dpl,a
	mov	a,r2
	addc	a,#(_parse_user_input_digits_65536_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_parse_user_input_number_65536_75
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_parse_user_input_number_65536_75
	mov	a,r1
	add	a,r0
	movx	@dptr,a
	mov	a,r2
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	C$uart.c$98$2_0$80 ==.
;	uart.c:98: for(i = 0; i < digit_count; i++) // Iterate over the digits.
	inc	r3
	cjne	r3,#0x00,00171$
	inc	r4
00171$:
	pop	ar6
	pop	ar5
	sjmp	00118$
00116$:
	C$uart.c$103$1_0$75 ==.
;	uart.c:103: return number;
	mov	dptr,#_parse_user_input_number_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$uart.c$104$1_0$75 ==.
;	uart.c:104: }
	C$uart.c$104$1_0$75 ==.
	XG$parse_user_input$0$0 ==.
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_hex_number'
;------------------------------------------------------------
;sloc3                     Allocated with name '_print_hex_number_sloc3_1_0'
;sloc4                     Allocated with name '_print_hex_number_sloc4_1_0'
;width                     Allocated with name '_print_hex_number_PARM_2'
;num                       Allocated with name '_print_hex_number_num_65536_82'
;ascii_buffer              Allocated with name '_print_hex_number_ascii_buffer_65536_83'
;temp_val                  Allocated with name '_print_hex_number_temp_val_65536_83'
;digit_count               Allocated with name '_print_hex_number_digit_count_65536_83'
;val_check                 Allocated with name '_print_hex_number_val_check_65536_83'
;------------------------------------------------------------
	G$print_hex_number$0$0 ==.
	C$uart.c$162$1_0$83 ==.
;	uart.c:162: void print_hex_number(uint32_t num, uint8_t width) {
;	-----------------------------------------
;	 function print_hex_number
;	-----------------------------------------
_print_hex_number:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_print_hex_number_num_65536_82
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$uart.c$167$2_0$84 ==.
;	uart.c:167: for (digit_count = width; digit_count > 1; digit_count--) {  // loop through each digit, starting from the most significant and going down to the second least significant
	mov	dptr,#_print_hex_number_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_print_hex_number_num_65536_82
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x0f
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	_print_hex_number_sloc0_1_0,c
	clr	c
	mov	a,#0xff
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	_print_hex_number_sloc1_1_0,c
	clr	c
	mov	a,#0xff
	subb	a,r3
	mov	a,#0x0f
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	_print_hex_number_sloc2_1_0,c
00117$:
	clr	c
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00132$
	C$uart.c$168$3_0$85 ==.
;	uart.c:168: switch (digit_count) {
	cjne	r7,#0x02,00176$
	sjmp	00107$
00176$:
	cjne	r7,#0x03,00177$
	sjmp	00104$
00177$:
	cjne	r7,#0x04,00118$
	C$uart.c$171$4_0$86 ==.
;	uart.c:171: if (num <= val_check) {
	jb	_print_hex_number_sloc2_1_0,00118$
	C$uart.c$172$5_0$87 ==.
;	uart.c:172: putchar('0');           // if num is less than or equal to value_check, print a leading zero
	mov	dptr,#0x0030
	push	ar7
	lcall	_putchar
	pop	ar7
	C$uart.c$174$4_0$86 ==.
;	uart.c:174: break;
	C$uart.c$175$4_0$86 ==.
;	uart.c:175: case 3:
	sjmp	00118$
00104$:
	C$uart.c$177$4_0$86 ==.
;	uart.c:177: if (num <= val_check) {
	jb	_print_hex_number_sloc1_1_0,00118$
	C$uart.c$178$5_0$88 ==.
;	uart.c:178: putchar('0');           // if num is less than or equal to value_check, print a leading zero
	mov	dptr,#0x0030
	push	ar7
	lcall	_putchar
	pop	ar7
	C$uart.c$180$4_0$86 ==.
;	uart.c:180: break;
	C$uart.c$181$4_0$86 ==.
;	uart.c:181: case 2:
	sjmp	00118$
00107$:
	C$uart.c$183$4_0$86 ==.
;	uart.c:183: if (num <= val_check) {
	jb	_print_hex_number_sloc0_1_0,00118$
	C$uart.c$184$5_0$89 ==.
;	uart.c:184: putchar('0');           // if num is less than or equal to value_check, print a leading zero
	mov	dptr,#0x0030
	push	ar7
	lcall	_putchar
	pop	ar7
	C$uart.c$187$3_0$85 ==.
;	uart.c:187: }
00118$:
	C$uart.c$167$2_0$84 ==.
;	uart.c:167: for (digit_count = width; digit_count > 1; digit_count--) {  // loop through each digit, starting from the most significant and going down to the second least significant
	dec	r7
	C$uart.c$190$2_0$83 ==.
;	uart.c:190: do {
	sjmp	00117$
00132$:
00112$:
	C$uart.c$191$2_0$90 ==.
;	uart.c:191: ascii_buffer[digit_count] = int_to_char(num % 16);  // store the ASCII representation of the current digit in the buffer
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_print_hex_number_ascii_buffer_65536_83
	mov	_print_hex_number_sloc3_1_0,a
	mov	a,r6
	addc	a,#(_print_hex_number_ascii_buffer_65536_83 >> 8)
	mov	(_print_hex_number_sloc3_1_0 + 1),a
	mov	dptr,#_print_hex_number_num_65536_82
	movx	a,@dptr
	mov	_print_hex_number_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_print_hex_number_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_print_hex_number_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_print_hex_number_sloc4_1_0 + 3),a
	mov	a,#0x0f
	anl	a,_print_hex_number_sloc4_1_0
	mov	r0,a
	mov	r4,#0x00
	mov	dpl,r0
	mov	dph,r4
	push	ar7
	lcall	_int_to_char
	mov	r6,dpl
	pop	ar7
	mov	dpl,_print_hex_number_sloc3_1_0
	mov	dph,(_print_hex_number_sloc3_1_0 + 1)
	mov	a,r6
	movx	@dptr,a
	C$uart.c$192$2_0$90 ==.
;	uart.c:192: num /= 16;          // shift num to the right by one digit (divide by 16)
	mov	r3,_print_hex_number_sloc4_1_0
	mov	a,(_print_hex_number_sloc4_1_0 + 1)
	swap	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	r4,a
	mov	a,(_print_hex_number_sloc4_1_0 + 2)
	swap	a
	anl	a,#0xf0
	orl	a,r4
	mov	r4,a
	mov	r5,(_print_hex_number_sloc4_1_0 + 2)
	mov	a,(_print_hex_number_sloc4_1_0 + 3)
	swap	a
	xch	a,r5
	swap	a
	anl	a,#0x0f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x0f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r6,a
	mov	dptr,#_print_hex_number_num_65536_82
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$uart.c$193$2_0$90 ==.
;	uart.c:193: digit_count++;      // increment the digit counter
	inc	r7
	C$uart.c$194$1_0$83 ==.
;	uart.c:194: } while (num > 0);      // continue the loop until num becomes 0
	mov	dptr,#_print_hex_number_num_65536_82
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00183$
	ljmp	00112$
00183$:
	C$uart.c$196$2_0$91 ==.
;	uart.c:196: for (digit_count -= 1; digit_count >= 0; digit_count--) {  // loop through the buffer in reverse order to print the digits in the correct order
	mov	a,r7
	dec	a
	mov	dptr,#_print_hex_number_digit_count_65536_83
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
00120$:
	mov	a,r7
	jb	acc.7,00122$
	C$uart.c$197$3_0$92 ==.
;	uart.c:197: putchar(ascii_buffer[digit_count]);                     // print the current digit
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,#_print_hex_number_ascii_buffer_65536_83
	mov	dpl,a
	mov	a,r6
	addc	a,#(_print_hex_number_ascii_buffer_65536_83 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	_putchar
	pop	ar7
	C$uart.c$196$2_0$91 ==.
;	uart.c:196: for (digit_count -= 1; digit_count >= 0; digit_count--) {  // loop through the buffer in reverse order to print the digits in the correct order
	dec	r7
	sjmp	00120$
00122$:
	C$uart.c$199$2_0$83 ==.
;	uart.c:199: }
	C$uart.c$199$2_0$83 ==.
	XG$print_hex_number$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_colored'
;------------------------------------------------------------
;color_code                Allocated with name '_print_colored_PARM_2'
;str                       Allocated with name '_print_colored_str_65536_93'
;------------------------------------------------------------
	G$print_colored$0$0 ==.
	C$uart.c$202$2_0$94 ==.
;	uart.c:202: void print_colored(char* str, int color_code) {
;	-----------------------------------------
;	 function print_colored
;	-----------------------------------------
_print_colored:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_print_colored_str_65536_93
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$uart.c$203$1_0$94 ==.
;	uart.c:203: printf("\033[1;%dm%s\033[0m", color_code, str);
	mov	dptr,#_print_colored_str_65536_93
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
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	C$uart.c$204$1_0$94 ==.
;	uart.c:204: }
	C$uart.c$204$1_0$94 ==.
	XG$print_colored$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_UI'
;------------------------------------------------------------
	G$print_UI$0$0 ==.
	C$uart.c$205$1_0$96 ==.
;	uart.c:205: void print_UI(void)
;	-----------------------------------------
;	 function print_UI
;	-----------------------------------------
_print_UI:
	C$uart.c$207$1_0$96 ==.
;	uart.c:207: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$208$1_0$96 ==.
;	uart.c:208: print_colored("+-------------------------------------------------+\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$209$1_0$96 ==.
;	uart.c:209: print_colored("|                                                 |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$210$1_0$96 ==.
;	uart.c:210: print_colored("|           USER INTERFACE Lab 4 Required         |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$211$1_0$96 ==.
;	uart.c:211: print_colored("|                   I2C & EEPROM                  |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$212$1_0$96 ==.
;	uart.c:212: print_colored("|                                                 |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$213$1_0$96 ==.
;	uart.c:213: print_colored("+-------------------------------------------------+\n\r\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$215$1_0$96 ==.
;	uart.c:215: printf("        ");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$216$1_0$96 ==.
;	uart.c:216: print_colored("Please select an option below:\n\r", 37);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x25
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$217$1_0$96 ==.
;	uart.c:217: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$219$1_0$96 ==.
;	uart.c:219: printf("   ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$220$1_0$96 ==.
;	uart.c:220: print_colored("+---------------------------------------------+\n\r", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$221$1_0$96 ==.
;	uart.c:221: printf("   ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$222$1_0$96 ==.
;	uart.c:222: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$223$1_0$96 ==.
;	uart.c:223: print_colored("[W] Write to EEPROM                         ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$224$1_0$96 ==.
;	uart.c:224: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$225$1_0$96 ==.
;	uart.c:225: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$227$1_0$96 ==.
;	uart.c:227: printf("   ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$228$1_0$96 ==.
;	uart.c:228: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$229$1_0$96 ==.
;	uart.c:229: print_colored("[R] Read from EEPROM                        ", 33);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$230$1_0$96 ==.
;	uart.c:230: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$231$1_0$96 ==.
;	uart.c:231: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$233$1_0$96 ==.
;	uart.c:233: printf("   ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$234$1_0$96 ==.
;	uart.c:234: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$235$1_0$96 ==.
;	uart.c:235: print_colored("[F] EEPROM Dump                             ", 32);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$236$1_0$96 ==.
;	uart.c:236: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$237$1_0$96 ==.
;	uart.c:237: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$239$1_0$96 ==.
;	uart.c:239: printf("   ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$240$1_0$96 ==.
;	uart.c:240: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$241$1_0$96 ==.
;	uart.c:241: print_colored("[X] Reset EEPROM                            ", 31);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$242$1_0$96 ==.
;	uart.c:242: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$243$1_0$96 ==.
;	uart.c:243: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$245$1_0$96 ==.
;	uart.c:245: printf("   ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$246$1_0$96 ==.
;	uart.c:246: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$247$1_0$96 ==.
;	uart.c:247: print_colored("[C] Fill EEPROM with 0xFF                   ", 34);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$248$1_0$96 ==.
;	uart.c:248: print_colored("| ", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$249$1_0$96 ==.
;	uart.c:249: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$251$1_0$96 ==.
;	uart.c:251: printf("   ");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$252$1_0$96 ==.
;	uart.c:252: print_colored("+---------------------------------------------+\n\r", 36);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x24
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$253$1_0$96 ==.
;	uart.c:253: printf("\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$uart.c$255$1_0$96 ==.
;	uart.c:255: print_colored("+-------------------------------------------------+\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$256$1_0$96 ==.
;	uart.c:256: print_colored("|                                                 |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$257$1_0$96 ==.
;	uart.c:257: print_colored("|                                                 |\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$258$1_0$96 ==.
;	uart.c:258: print_colored("+-------------------------------------------------+\n\r\n\r", 35);
	mov	dptr,#_print_colored_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_print_colored
	C$uart.c$260$1_0$96 ==.
;	uart.c:260: }
	C$uart.c$260$1_0$96 ==.
	XG$print_UI$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fuart$__str_1$0_0$0 == .
	.area CONST   (CODE)
___str_1:
	.ascii "0123456789abcdefABCDEF"
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[1;%dm%s"
	.db 0x1b
	.ascii "[0m"
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.ascii "+-------------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_5$0_0$0 == .
	.area CONST   (CODE)
___str_5:
	.ascii "|                                                 |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_6$0_0$0 == .
	.area CONST   (CODE)
___str_6:
	.ascii "|           USER INTERFACE Lab 4 Required         |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_7$0_0$0 == .
	.area CONST   (CODE)
___str_7:
	.ascii "|                   I2C & EEPROM                  |"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_8$0_0$0 == .
	.area CONST   (CODE)
___str_8:
	.ascii "+-------------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_9$0_0$0 == .
	.area CONST   (CODE)
___str_9:
	.ascii "        "
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_10$0_0$0 == .
	.area CONST   (CODE)
___str_10:
	.ascii "Please select an option below:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_11$0_0$0 == .
	.area CONST   (CODE)
___str_11:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_12$0_0$0 == .
	.area CONST   (CODE)
___str_12:
	.ascii "+---------------------------------------------+"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_13$0_0$0 == .
	.area CONST   (CODE)
___str_13:
	.ascii "| "
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_14$0_0$0 == .
	.area CONST   (CODE)
___str_14:
	.ascii "[W] Write to EEPROM                         "
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_15$0_0$0 == .
	.area CONST   (CODE)
___str_15:
	.ascii "[R] Read from EEPROM                        "
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_16$0_0$0 == .
	.area CONST   (CODE)
___str_16:
	.ascii "[F] EEPROM Dump                             "
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_17$0_0$0 == .
	.area CONST   (CODE)
___str_17:
	.ascii "[X] Reset EEPROM                            "
	.db 0x00
	.area CSEG    (CODE)
Fuart$__str_18$0_0$0 == .
	.area CONST   (CODE)
___str_18:
	.ascii "[C] Fill EEPROM with 0xFF                   "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
