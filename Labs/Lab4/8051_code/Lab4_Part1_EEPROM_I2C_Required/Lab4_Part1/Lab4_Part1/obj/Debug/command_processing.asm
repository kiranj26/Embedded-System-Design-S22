;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module command_processing
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2c_eeprom_read
	.globl _i2c_eeprom_write
	.globl _print_hex_number
	.globl _parse_user_input
	.globl _putchar
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
	.globl _EEPROM_hexump_PARM_2
	.globl _handler_wr_to_eeprom
	.globl _handler_rd_to_eeprom
	.globl _EEPROM_hexump
	.globl _handler_EEPROM_hexdump
	.globl _fill_EEPROM_with_ff
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
Lcommand_processing.EEPROM_hexump$end_address$1_0$104==.
_EEPROM_hexump_PARM_2:
	.ds 2
Lcommand_processing.EEPROM_hexump$start_address$1_0$104==.
_EEPROM_hexump_start_address_65536_104:
	.ds 2
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
;Allocation info for local variables in function 'handler_wr_to_eeprom'
;------------------------------------------------------------
;data_read                 Allocated with name '_handler_wr_to_eeprom_data_read_65536_95'
;addr_read                 Allocated with name '_handler_wr_to_eeprom_addr_read_65536_95'
;------------------------------------------------------------
	G$handler_wr_to_eeprom$0$0 ==.
	C$command_processing.c$45$0_0$95 ==.
;	command_processing.c:45: void handler_wr_to_eeprom(void)
;	-----------------------------------------
;	 function handler_wr_to_eeprom
;	-----------------------------------------
_handler_wr_to_eeprom:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$command_processing.c$50$1_0$95 ==.
;	command_processing.c:50: printf_tiny("\033[1;33m\n\rWriting to EEPROM !!\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$52$1_0$95 ==.
;	command_processing.c:52: printf_tiny("\033[1;33m\n\rEnter Data to put into EEPROM\r\n\t");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$53$1_0$95 ==.
;	command_processing.c:53: data_read = parse_user_input(HEX_BASE);
	mov	dpl,#0x10
	lcall	_parse_user_input
	mov	r6,dpl
	mov	r7,dph
	C$command_processing.c$56$1_0$95 ==.
;	command_processing.c:56: if(data_read >= 0 && data_read <= ASCII_MAX)
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00103$
	C$command_processing.c$61$2_0$97 ==.
;	command_processing.c:61: printf("\033[1;31m\n\rInvalid Data Range!! \n\rData has to be between 0x00 to 0xFF \033[0m\r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$command_processing.c$62$2_0$97 ==.
;	command_processing.c:62: return;
	ljmp	00109$
00103$:
	C$command_processing.c$65$1_0$95 ==.
;	command_processing.c:65: printf("\r\n");
	push	ar7
	push	ar6
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
	C$command_processing.c$67$1_0$95 ==.
;	command_processing.c:67: printf_tiny("\033[1;33m\n\rEnter Address to put into EEPROM\r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$68$1_0$95 ==.
;	command_processing.c:68: addr_read = parse_user_input(HEX_BASE );
	mov	dpl,#0x10
	lcall	_parse_user_input
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	C$command_processing.c$70$1_0$95 ==.
;	command_processing.c:70: if(addr_read >= 0 && addr_read <= ADDR_MAX)
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x07
	subb	a,r3
	jnc	00107$
	C$command_processing.c$76$2_0$99 ==.
;	command_processing.c:76: printf("\033[1;31m\n\rInvalid Address Range!!\n\rAddress has to be between 0x000 to 0x7FF\033[0m\r\n");
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
	C$command_processing.c$77$2_0$99 ==.
;	command_processing.c:77: return;
	sjmp	00109$
00107$:
	C$command_processing.c$79$1_0$95 ==.
;	command_processing.c:79: printf("\r\n");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$command_processing.c$81$1_0$95 ==.
;	command_processing.c:81: i2c_eeprom_write(addr_read,data_read);
	mov	dptr,#_i2c_eeprom_write_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_i2c_eeprom_write
	C$command_processing.c$82$1_0$95 ==.
;	command_processing.c:82: printf_tiny("\033[1;33m\n\rFinished writting to EEPROM !!\r\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00109$:
	C$command_processing.c$84$1_0$95 ==.
;	command_processing.c:84: }
	C$command_processing.c$84$1_0$95 ==.
	XG$handler_wr_to_eeprom$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_rd_to_eeprom'
;------------------------------------------------------------
;addr_read                 Allocated with name '_handler_rd_to_eeprom_addr_read_65536_101'
;byte_read1                Allocated with name '_handler_rd_to_eeprom_byte_read1_65536_101'
;------------------------------------------------------------
	G$handler_rd_to_eeprom$0$0 ==.
	C$command_processing.c$86$1_0$101 ==.
;	command_processing.c:86: void handler_rd_to_eeprom(void)
;	-----------------------------------------
;	 function handler_rd_to_eeprom
;	-----------------------------------------
_handler_rd_to_eeprom:
	C$command_processing.c$90$1_0$101 ==.
;	command_processing.c:90: printf_tiny("\033[1;33m\n\rReading from EEPROM !!\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$92$1_0$101 ==.
;	command_processing.c:92: printf_tiny("\033[1;33m\n\rEnter Address to put into EEPROM\r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$93$1_0$101 ==.
;	command_processing.c:93: addr_read = parse_user_input(HEX_BASE );
	mov	dpl,#0x10
	lcall	_parse_user_input
	mov	r6,dpl
	mov	r7,dph
	C$command_processing.c$94$1_0$101 ==.
;	command_processing.c:94: if(addr_read >= 0 && addr_read <= ADDR_MAX)
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
	jnc	00103$
	C$command_processing.c$100$2_0$103 ==.
;	command_processing.c:100: printf("\033[1;31m\n\rInvalid Adress Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
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
	C$command_processing.c$101$2_0$103 ==.
;	command_processing.c:101: return;
	sjmp	00105$
00103$:
	C$command_processing.c$103$1_0$101 ==.
;	command_processing.c:103: printf("\r\n");
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
	C$command_processing.c$105$1_0$101 ==.
;	command_processing.c:105: byte_read1 = i2c_eeprom_read(addr_read);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_i2c_eeprom_read
	mov	r5,dpl
	C$command_processing.c$106$1_0$101 ==.
;	command_processing.c:106: printf_tiny("\033[1;33m\n\rReading from EEPROM Completed!!\r\n");
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$command_processing.c$107$1_0$101 ==.
;	command_processing.c:107: printf("\n\rData = %x present at Location = 0%x \n\r",byte_read1,addr_read);
	mov	r4,#0x00
	push	ar6
	push	ar7
	push	ar5
	push	ar4
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00105$:
	C$command_processing.c$109$1_0$101 ==.
;	command_processing.c:109: }
	C$command_processing.c$109$1_0$101 ==.
	XG$handler_rd_to_eeprom$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EEPROM_hexump'
;------------------------------------------------------------
;end_address               Allocated with name '_EEPROM_hexump_PARM_2'
;start_address             Allocated with name '_EEPROM_hexump_start_address_65536_104'
;count                     Allocated with name '_EEPROM_hexump_count_65537_106'
;i                         Allocated with name '_EEPROM_hexump_i_65537_106'
;temp_storage              Allocated with name '_EEPROM_hexump_temp_storage_65537_106'
;data_byte                 Allocated with name '_EEPROM_hexump_data_byte_65537_106'
;address                   Allocated with name '_EEPROM_hexump_address_65537_106'
;------------------------------------------------------------
	G$EEPROM_hexump$0$0 ==.
	C$command_processing.c$112$1_0$105 ==.
;	command_processing.c:112: void EEPROM_hexump(uint16_t start_address, uint16_t end_address)
;	-----------------------------------------
;	 function EEPROM_hexump
;	-----------------------------------------
_EEPROM_hexump:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_EEPROM_hexump_start_address_65536_104
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$command_processing.c$114$1_0$105 ==.
;	command_processing.c:114: printf_tiny("\033[1;34m\n\rI2C EEPROM DUMP!!\r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$117$2_0$106 ==.
;	command_processing.c:117: __xdata uint16_t address = start_address;
	mov	dptr,#_EEPROM_hexump_start_address_65536_104
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$command_processing.c$119$1_1$106 ==.
;	command_processing.c:119: while (address <= end_address) {
	mov	dptr,#_EEPROM_hexump_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00121$
	ljmp	00105$
00121$:
	C$command_processing.c$120$2_1$107 ==.
;	command_processing.c:120: if (count % DIVIDE_BY_16 == 0) {
	mov	a,r3
	anl	a,#0x0f
	jnz	00102$
	C$command_processing.c$121$1_1$105 ==.
;	command_processing.c:121: putchar('\n');
	push	ar4
	push	ar5
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	C$command_processing.c$122$3_1$108 ==.
;	command_processing.c:122: putchar('\r');
	mov	dptr,#0x000d
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$command_processing.c$123$3_1$108 ==.
;	command_processing.c:123: print_hex_number(address, 3);
	mov	ar0,r6
	mov	ar1,r7
	mov	r2,#0x00
	mov	r5,#0x00
	mov	dptr,#_print_hex_number_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_print_hex_number
	C$command_processing.c$124$3_1$108 ==.
;	command_processing.c:124: putchar(':');
	mov	dptr,#0x003a
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$command_processing.c$134$1_1$105 ==.
;	command_processing.c:134: return;
	pop	ar5
	pop	ar4
	C$command_processing.c$124$2_1$107 ==.
;	command_processing.c:124: putchar(':');
00102$:
	C$command_processing.c$126$1_1$105 ==.
;	command_processing.c:126: putchar(ASCII_SPACE);//space
	push	ar4
	push	ar5
	mov	dptr,#0x0020
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$command_processing.c$127$2_1$107 ==.
;	command_processing.c:127: data_byte = i2c_eeprom_read(address);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2c_eeprom_read
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	C$command_processing.c$128$2_1$107 ==.
;	command_processing.c:128: print_hex_number(data_byte, 2);
	mov	ar0,r2
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r5,#0x00
	mov	dptr,#_print_hex_number_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r5
	push	ar5
	push	ar4
	push	ar3
	lcall	_print_hex_number
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$command_processing.c$130$2_1$107 ==.
;	command_processing.c:130: address++;
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	C$command_processing.c$131$2_1$107 ==.
;	command_processing.c:131: count++;
	inc	r3
	pop	ar5
	pop	ar4
	ljmp	00103$
00105$:
	C$command_processing.c$133$1_1$106 ==.
;	command_processing.c:133: printf("\033[0m\r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$command_processing.c$134$1_1$106 ==.
;	command_processing.c:134: return;
	C$command_processing.c$135$1_1$105 ==.
;	command_processing.c:135: }
	C$command_processing.c$135$1_1$105 ==.
	XG$EEPROM_hexump$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handler_EEPROM_hexdump'
;------------------------------------------------------------
;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65536_110'
;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65537_113'
;------------------------------------------------------------
	G$handler_EEPROM_hexdump$0$0 ==.
	C$command_processing.c$138$1_1$110 ==.
;	command_processing.c:138: void handler_EEPROM_hexdump(void)
;	-----------------------------------------
;	 function handler_EEPROM_hexdump
;	-----------------------------------------
_handler_EEPROM_hexdump:
	C$command_processing.c$141$1_0$110 ==.
;	command_processing.c:141: printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$142$1_0$110 ==.
;	command_processing.c:142: start_addr = parse_user_input(HEX_BASE);
	mov	dpl,#0x10
	lcall	_parse_user_input
	mov	r6,dpl
	mov	r7,dph
	C$command_processing.c$144$1_0$110 ==.
;	command_processing.c:144: if(start_addr >= 0 && start_addr <= ADDR_MAX)
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
	jnc	00103$
	C$command_processing.c$149$2_0$112 ==.
;	command_processing.c:149: printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$command_processing.c$150$2_0$112 ==.
;	command_processing.c:150: return;
	sjmp	00109$
00103$:
	C$command_processing.c$155$1_1$113 ==.
;	command_processing.c:155: printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$156$1_1$113 ==.
;	command_processing.c:156: end_addr = parse_user_input(HEX_BASE);
	mov	dpl,#0x10
	lcall	_parse_user_input
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	C$command_processing.c$158$1_1$113 ==.
;	command_processing.c:158: if(end_addr >= 0 && end_addr <= ADDR_MAX)
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x07
	subb	a,r3
	jnc	00107$
	C$command_processing.c$163$2_1$115 ==.
;	command_processing.c:163: printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$command_processing.c$164$2_1$115 ==.
;	command_processing.c:164: return;
	sjmp	00109$
00107$:
	C$command_processing.c$167$1_1$113 ==.
;	command_processing.c:167: EEPROM_hexump(start_addr,end_addr);
	mov	dptr,#_EEPROM_hexump_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_EEPROM_hexump
00109$:
	C$command_processing.c$168$1_1$110 ==.
;	command_processing.c:168: }
	C$command_processing.c$168$1_1$110 ==.
	XG$handler_EEPROM_hexdump$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fill_EEPROM_with_ff'
;------------------------------------------------------------
;i                         Allocated with name '_fill_EEPROM_with_ff_i_65536_117'
;j                         Allocated with name '_fill_EEPROM_with_ff_j_262144_120'
;------------------------------------------------------------
	G$fill_EEPROM_with_ff$0$0 ==.
	C$command_processing.c$170$1_1$117 ==.
;	command_processing.c:170: void fill_EEPROM_with_ff(void)
;	-----------------------------------------
;	 function fill_EEPROM_with_ff
;	-----------------------------------------
_fill_EEPROM_with_ff:
	C$command_processing.c$173$1_0$117 ==.
;	command_processing.c:173: printf_tiny("\033[1;33m\n\rFlashing EEPROM with 0xFF data at all addresses!!\r\nPLEASE WAIT!!\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$175$1_0$117 ==.
;	command_processing.c:175: for (i = 0x000; i <= 0x7FF; i++)
	mov	r6,#0x00
	mov	r7,#0x00
	C$command_processing.c$178$1_0$117 ==.
;	command_processing.c:178: for(int j=0;j<1000;j++);
00111$:
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	clr	c
	mov	a,r4
	subb	a,#0xe8
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00101$
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00101$:
	C$command_processing.c$179$3_0$119 ==.
;	command_processing.c:179: i2c_eeprom_write(i, 0xFF);
	mov	dptr,#_i2c_eeprom_write_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_i2c_eeprom_write
	pop	ar6
	pop	ar7
	C$command_processing.c$175$2_0$118 ==.
;	command_processing.c:175: for (i = 0x000; i <= 0x7FF; i++)
	inc	r6
	cjne	r6,#0x00,00130$
	inc	r7
00130$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
	jnc	00111$
	C$command_processing.c$181$1_0$117 ==.
;	command_processing.c:181: printf_tiny("\033[1;33m\n\rEEPROM filled with 0xFF\r\n");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$command_processing.c$183$1_0$117 ==.
;	command_processing.c:183: }
	C$command_processing.c$183$1_0$117 ==.
	XG$fill_EEPROM_with_ff$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fcommand_processing$__str_0$0_0$0 == .
	.area CONST   (CODE)
___str_0:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Writing to EEPROM !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_1$0_0$0 == .
	.area CONST   (CODE)
___str_1:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter Data to put into EEPROM"
	.db 0x0d
	.db 0x0a
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.db 0x1b
	.ascii "[1;31m"
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Data Range!! "
	.db 0x0a
	.db 0x0d
	.ascii "Data has to be between 0x00 to 0xFF "
	.db 0x1b
	.ascii "[0m"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter Address to put into EEPROM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_5$0_0$0 == .
	.area CONST   (CODE)
___str_5:
	.db 0x1b
	.ascii "[1;31m"
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Address Range!!"
	.db 0x0a
	.db 0x0d
	.ascii "Address has to be between 0x000 to 0x7FF"
	.db 0x1b
	.ascii "[0m"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_6$0_0$0 == .
	.area CONST   (CODE)
___str_6:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Finished writting to EEPROM !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_7$0_0$0 == .
	.area CONST   (CODE)
___str_7:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Reading from EEPROM !!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_8$0_0$0 == .
	.area CONST   (CODE)
___str_8:
	.db 0x1b
	.ascii "[1;31m"
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Adress Range!!"
	.db 0x0a
	.db 0x0d
	.ascii " Address has to be between 0x000 to 0x7FF"
	.db 0x1b
	.ascii "[0m"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_9$0_0$0 == .
	.area CONST   (CODE)
___str_9:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Reading from EEPROM Completed!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_10$0_0$0 == .
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "Data = %x present at Location = 0%x "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_11$0_0$0 == .
	.area CONST   (CODE)
___str_11:
	.db 0x1b
	.ascii "[1;34m"
	.db 0x0a
	.db 0x0d
	.ascii "I2C EEPROM DUMP!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_12$0_0$0 == .
	.area CONST   (CODE)
___str_12:
	.db 0x1b
	.ascii "[0m"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_13$0_0$0 == .
	.area CONST   (CODE)
___str_13:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter Start Address for HEX Dump"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_14$0_0$0 == .
	.area CONST   (CODE)
___str_14:
	.db 0x1b
	.ascii "[1;31m"
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Start Address Range!!"
	.db 0x0a
	.db 0x0d
	.ascii " Address has to be between 0x000 to 0x7FF"
	.db 0x1b
	.ascii "[0m"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_15$0_0$0 == .
	.area CONST   (CODE)
___str_15:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Enter End Address for HEX Dump"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_16$0_0$0 == .
	.area CONST   (CODE)
___str_16:
	.db 0x1b
	.ascii "[1;31m"
	.db 0x0a
	.db 0x0d
	.ascii "Invalid End Address Range!!"
	.db 0x0a
	.db 0x0d
	.ascii " Address has to be between 0x000 to 0x7FF"
	.db 0x1b
	.ascii "[0m"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_17$0_0$0 == .
	.area CONST   (CODE)
___str_17:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "Flashing EEPROM with 0xFF data at all addresses!!"
	.db 0x0d
	.db 0x0a
	.ascii "PLEASE WAIT!!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fcommand_processing$__str_18$0_0$0 == .
	.area CONST   (CODE)
___str_18:
	.db 0x1b
	.ascii "[1;33m"
	.db 0x0a
	.db 0x0d
	.ascii "EEPROM filled with 0xFF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
