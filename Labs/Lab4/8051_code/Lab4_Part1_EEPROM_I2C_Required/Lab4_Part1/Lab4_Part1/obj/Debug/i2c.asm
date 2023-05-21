;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _no_acknowledge
	.globl _i2c_clock_tick
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
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
	.globl _PLS
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
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
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
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _i2c_eeprom_write_PARM_2
	.globl _i2c_sda
	.globl _i2c_scl
	.globl _i2c_acknowledge_check
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_write_byte
	.globl _i2c_read_byte
	.globl _i2c_eeprom_write
	.globl _i2c_eeprom_read
	.globl _i2c_handler_eeprom_reset
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
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$DP0H$0_0$0 == 0x0083
_DP0H	=	0x0083
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DP0L$0_0$0 == 0x0082
_DP0L	=	0x0082
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF0$0_0$0 == 0x0099
_SBUF0	=	0x0099
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
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
G$PLS$0_0$0 == 0x00bc
_PLS	=	0x00bc
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
G$RXD0$0_0$0 == 0x00b0
_RXD0	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$TXD0$0_0$0 == 0x00b1
_TXD0	=	0x00b1
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
Li2c.i2c_sda$value$1_0$33==.
_i2c_sda_value_65536_33:
	.ds 1
Li2c.i2c_scl$value$1_0$35==.
_i2c_scl_value_65536_35:
	.ds 1
Li2c.i2c_write_byte$data_byte$1_0$43==.
_i2c_write_byte_data_byte_65536_43:
	.ds 1
Li2c.i2c_read_byte$byte_value$1_0$48==.
_i2c_read_byte_byte_value_65536_48:
	.ds 1
Li2c.i2c_eeprom_write$data_byte$1_0$53==.
_i2c_eeprom_write_PARM_2:
	.ds 1
Li2c.i2c_eeprom_write$address$1_0$53==.
_i2c_eeprom_write_address_65536_53:
	.ds 2
Li2c.i2c_eeprom_write$address_LSB$1_0$54==.
_i2c_eeprom_write_address_LSB_65536_54:
	.ds 1
Li2c.i2c_eeprom_read$address$1_0$55==.
_i2c_eeprom_read_address_65536_55:
	.ds 2
Li2c.i2c_eeprom_read$address_LSB$1_0$56==.
_i2c_eeprom_read_address_LSB_65536_56:
	.ds 1
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
;Allocation info for local variables in function 'i2c_clock_tick'
;------------------------------------------------------------
	G$i2c_clock_tick$0$0 ==.
	C$i2c.c$25$0_0$32 ==.
;	i2c.c:25: void i2c_clock_tick(void)
;	-----------------------------------------
;	 function i2c_clock_tick
;	-----------------------------------------
_i2c_clock_tick:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$i2c.c$28$1_0$32 ==.
;	i2c.c:28: i2c_scl(1);
	mov	dpl,#0x01
	lcall	_i2c_scl
	C$i2c.c$30$1_0$32 ==.
;	i2c.c:30: i2c_scl(0);
	mov	dpl,#0x00
	lcall	_i2c_scl
	C$i2c.c$31$1_0$32 ==.
;	i2c.c:31: return;
	C$i2c.c$32$1_0$32 ==.
;	i2c.c:32: }
	C$i2c.c$32$1_0$32 ==.
	XG$i2c_clock_tick$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_sda'
;------------------------------------------------------------
;value                     Allocated with name '_i2c_sda_value_65536_33'
;------------------------------------------------------------
	G$i2c_sda$0$0 ==.
	C$i2c.c$34$1_0$34 ==.
;	i2c.c:34: void i2c_sda(uint8_t value)
;	-----------------------------------------
;	 function i2c_sda
;	-----------------------------------------
_i2c_sda:
	mov	a,dpl
	mov	dptr,#_i2c_sda_value_65536_33
	movx	@dptr,a
	C$i2c.c$37$1_0$34 ==.
;	i2c.c:37: I2C_SDA_PIN = (value == 1) ? 1 : 0;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
	mov	a,r7
	sjmp	00104$
00103$:
	clr	a
00104$:
;	assignBit
	add	a,#0xff
	mov	_P1_6,c
	C$i2c.c$38$1_0$34 ==.
;	i2c.c:38: }
	C$i2c.c$38$1_0$34 ==.
	XG$i2c_sda$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_scl'
;------------------------------------------------------------
;value                     Allocated with name '_i2c_scl_value_65536_35'
;------------------------------------------------------------
	G$i2c_scl$0$0 ==.
	C$i2c.c$40$1_0$36 ==.
;	i2c.c:40: void i2c_scl(uint8_t value)
;	-----------------------------------------
;	 function i2c_scl
;	-----------------------------------------
_i2c_scl:
	mov	a,dpl
	mov	dptr,#_i2c_scl_value_65536_35
	movx	@dptr,a
	C$i2c.c$43$1_0$36 ==.
;	i2c.c:43: I2C_SCL_PIN = (value == 1) ? 1 : 0;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
	mov	a,r7
	sjmp	00104$
00103$:
	clr	a
00104$:
;	assignBit
	add	a,#0xff
	mov	_P1_5,c
	C$i2c.c$44$1_0$36 ==.
;	i2c.c:44: }
	C$i2c.c$44$1_0$36 ==.
	XG$i2c_scl$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_acknowledge_check'
;------------------------------------------------------------
	G$i2c_acknowledge_check$0$0 ==.
	C$i2c.c$46$1_0$37 ==.
;	i2c.c:46: void i2c_acknowledge_check()
;	-----------------------------------------
;	 function i2c_acknowledge_check
;	-----------------------------------------
_i2c_acknowledge_check:
	C$i2c.c$49$1_0$37 ==.
;	i2c.c:49: i2c_clock_tick();
	lcall	_i2c_clock_tick
	C$i2c.c$50$1_0$37 ==.
;	i2c.c:50: while(I2C_SDA_PIN);
00101$:
	jb	_P1_6,00101$
	C$i2c.c$51$1_0$37 ==.
;	i2c.c:51: return;
	C$i2c.c$53$1_0$37 ==.
;	i2c.c:53: }
	C$i2c.c$53$1_0$37 ==.
	XG$i2c_acknowledge_check$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'no_acknowledge'
;------------------------------------------------------------
	G$no_acknowledge$0$0 ==.
	C$i2c.c$54$1_0$38 ==.
;	i2c.c:54: void no_acknowledge()
;	-----------------------------------------
;	 function no_acknowledge
;	-----------------------------------------
_no_acknowledge:
	C$i2c.c$57$1_0$38 ==.
;	i2c.c:57: i2c_scl(0);
	mov	dpl,#0x00
	lcall	_i2c_scl
	C$i2c.c$58$1_0$38 ==.
;	i2c.c:58: i2c_sda(1);
	mov	dpl,#0x01
	lcall	_i2c_sda
	C$i2c.c$59$1_0$38 ==.
;	i2c.c:59: i2c_scl(1);
	mov	dpl,#0x01
	lcall	_i2c_scl
	C$i2c.c$60$1_0$38 ==.
;	i2c.c:60: i2c_sda(0);
	mov	dpl,#0x00
	lcall	_i2c_sda
	C$i2c.c$61$1_0$38 ==.
;	i2c.c:61: return;
	C$i2c.c$62$1_0$38 ==.
;	i2c.c:62: }
	C$i2c.c$62$1_0$38 ==.
	XG$no_acknowledge$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
	G$i2c_start$0$0 ==.
	C$i2c.c$64$1_0$40 ==.
;	i2c.c:64: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
	C$i2c.c$67$1_0$40 ==.
;	i2c.c:67: i2c_sda(1);
	mov	dpl,#0x01
	lcall	_i2c_sda
	C$i2c.c$68$1_0$40 ==.
;	i2c.c:68: i2c_scl(1);
	mov	dpl,#0x01
	lcall	_i2c_scl
	C$i2c.c$69$1_0$40 ==.
;	i2c.c:69: i2c_sda(0);
	mov	dpl,#0x00
	lcall	_i2c_sda
	C$i2c.c$70$1_0$40 ==.
;	i2c.c:70: i2c_scl(0);
	mov	dpl,#0x00
	lcall	_i2c_scl
	C$i2c.c$71$1_0$40 ==.
;	i2c.c:71: return;
	C$i2c.c$72$1_0$40 ==.
;	i2c.c:72: }
	C$i2c.c$72$1_0$40 ==.
	XG$i2c_start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
	G$i2c_stop$0$0 ==.
	C$i2c.c$74$1_0$42 ==.
;	i2c.c:74: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
	C$i2c.c$77$1_0$42 ==.
;	i2c.c:77: i2c_sda(0);
	mov	dpl,#0x00
	lcall	_i2c_sda
	C$i2c.c$78$1_0$42 ==.
;	i2c.c:78: i2c_scl(1);
	mov	dpl,#0x01
	lcall	_i2c_scl
	C$i2c.c$79$1_0$42 ==.
;	i2c.c:79: i2c_sda(1);
	mov	dpl,#0x01
	lcall	_i2c_sda
	C$i2c.c$80$1_0$42 ==.
;	i2c.c:80: i2c_scl(0);
	mov	dpl,#0x00
	lcall	_i2c_scl
	C$i2c.c$81$1_0$42 ==.
;	i2c.c:81: return;
	C$i2c.c$82$1_0$42 ==.
;	i2c.c:82: }
	C$i2c.c$82$1_0$42 ==.
	XG$i2c_stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_byte'
;------------------------------------------------------------
;data_byte                 Allocated with name '_i2c_write_byte_data_byte_65536_43'
;i                         Allocated with name '_i2c_write_byte_i_131072_45'
;------------------------------------------------------------
	G$i2c_write_byte$0$0 ==.
	C$i2c.c$84$1_0$44 ==.
;	i2c.c:84: void i2c_write_byte(uint8_t data_byte)
;	-----------------------------------------
;	 function i2c_write_byte
;	-----------------------------------------
_i2c_write_byte:
	mov	a,dpl
	mov	dptr,#_i2c_write_byte_data_byte_65536_43
	movx	@dptr,a
	C$i2c.c$87$1_0$44 ==.
;	i2c.c:87: i2c_scl(0); // Set SCL to low
	mov	dpl,#0x00
	lcall	_i2c_scl
	C$i2c.c$88$1_0$44 ==.
;	i2c.c:88: for (uint8_t i = 0; i < 8; i++)
	mov	r7,#0x00
00103$:
	cjne	r7,#0x08,00122$
00122$:
	jnc	00101$
	C$i2c.c$91$3_0$46 ==.
;	i2c.c:91: i2c_sda((data_byte & I2C_MSB_MASK) ? 1 : 0);
	mov	dptr,#_i2c_write_byte_data_byte_65536_43
	movx	a,@dptr
	jnb	acc.7,00107$
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00108$
00107$:
	mov	r5,#0x00
	mov	r6,#0x00
00108$:
	mov	dpl,r5
	push	ar7
	lcall	_i2c_sda
	C$i2c.c$93$3_0$46 ==.
;	i2c.c:93: i2c_clock_tick();
	lcall	_i2c_clock_tick
	pop	ar7
	C$i2c.c$95$3_0$46 ==.
;	i2c.c:95: data_byte = data_byte << 1;
	mov	dptr,#_i2c_write_byte_data_byte_65536_43
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	movx	@dptr,a
	C$i2c.c$88$2_0$45 ==.
;	i2c.c:88: for (uint8_t i = 0; i < 8; i++)
	inc	r7
	sjmp	00103$
00101$:
	C$i2c.c$97$1_0$44 ==.
;	i2c.c:97: i2c_sda(0); // Set SDA to low
	mov	dpl,#0x00
	lcall	_i2c_sda
	C$i2c.c$98$1_0$44 ==.
;	i2c.c:98: return;
	C$i2c.c$99$1_0$44 ==.
;	i2c.c:99: }
	C$i2c.c$99$1_0$44 ==.
	XG$i2c_write_byte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_byte'
;------------------------------------------------------------
;byte_value                Allocated with name '_i2c_read_byte_byte_value_65536_48'
;bit_position              Allocated with name '_i2c_read_byte_bit_position_65537_49'
;------------------------------------------------------------
	G$i2c_read_byte$0$0 ==.
	C$i2c.c$103$1_0$48 ==.
;	i2c.c:103: uint8_t i2c_read_byte(void)
;	-----------------------------------------
;	 function i2c_read_byte
;	-----------------------------------------
_i2c_read_byte:
	C$i2c.c$106$2_0$48 ==.
;	i2c.c:106: uint8_t byte_value = 0;
	mov	dptr,#_i2c_read_byte_byte_value_65536_48
	clr	a
	movx	@dptr,a
	C$i2c.c$107$1_0$48 ==.
;	i2c.c:107: i2c_sda(1);
	mov	dpl,#0x01
	lcall	_i2c_sda
	C$i2c.c$111$1_1$48 ==.
;	i2c.c:111: while (bit_position < 8)
	mov	r7,#0x00
00104$:
	cjne	r7,#0x08,00122$
00122$:
	jnc	00106$
	C$i2c.c$114$2_1$50 ==.
;	i2c.c:114: i2c_scl(1);
	mov	dpl,#0x01
	push	ar7
	lcall	_i2c_scl
	pop	ar7
	C$i2c.c$115$2_1$50 ==.
;	i2c.c:115: byte_value = byte_value << 1;
	mov	dptr,#_i2c_read_byte_byte_value_65536_48
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	C$i2c.c$118$2_1$50 ==.
;	i2c.c:118: if(I2C_SDA_PIN)
	jnb	_P1_6,00102$
	C$i2c.c$120$3_1$51 ==.
;	i2c.c:120: byte_value |= I2C_LSB_HIGH_MASK;
	mov	dptr,#_i2c_read_byte_byte_value_65536_48
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$i2c.c$124$3_1$52 ==.
;	i2c.c:124: byte_value &= I2C_LSB_LOW_MASK;
	mov	dptr,#_i2c_read_byte_byte_value_65536_48
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
00103$:
	C$i2c.c$128$2_1$50 ==.
;	i2c.c:128: i2c_scl(0);
	mov	dpl,#0x00
	push	ar7
	lcall	_i2c_scl
	pop	ar7
	C$i2c.c$129$2_1$50 ==.
;	i2c.c:129: bit_position++;
	inc	r7
	sjmp	00104$
00106$:
	C$i2c.c$133$1_1$49 ==.
;	i2c.c:133: return byte_value;
	mov	dptr,#_i2c_read_byte_byte_value_65536_48
	movx	a,@dptr
	C$i2c.c$134$1_1$48 ==.
;	i2c.c:134: }
	C$i2c.c$134$1_1$48 ==.
	XG$i2c_read_byte$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_eeprom_write'
;------------------------------------------------------------
;data_byte                 Allocated with name '_i2c_eeprom_write_PARM_2'
;address                   Allocated with name '_i2c_eeprom_write_address_65536_53'
;address_LSB               Allocated with name '_i2c_eeprom_write_address_LSB_65536_54'
;address_MSB               Allocated with name '_i2c_eeprom_write_address_MSB_65536_54'
;------------------------------------------------------------
	G$i2c_eeprom_write$0$0 ==.
	C$i2c.c$137$1_1$54 ==.
;	i2c.c:137: void i2c_eeprom_write(uint16_t address,uint8_t data_byte)
;	-----------------------------------------
;	 function i2c_eeprom_write
;	-----------------------------------------
_i2c_eeprom_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_eeprom_write_address_65536_53
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$i2c.c$142$1_0$54 ==.
;	i2c.c:142: address_LSB = (uint8_t) address;
	mov	dptr,#_i2c_eeprom_write_address_65536_53
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2c_eeprom_write_address_LSB_65536_54
	mov	a,r6
	movx	@dptr,a
	C$i2c.c$144$1_0$54 ==.
;	i2c.c:144: address = address >> 7;
	mov	a,r7
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	mov	r7,a
	mov	dptr,#_i2c_eeprom_write_address_65536_53
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$i2c.c$146$1_0$54 ==.
;	i2c.c:146: address_MSB = (uint8_t) address;
	mov	dptr,#_i2c_eeprom_write_address_65536_53
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$i2c.c$148$1_0$54 ==.
;	i2c.c:148: address_MSB |= I2C_DEVICE_ADDR_MASK;
	mov	a,#0xa0
	orl	a,r6
	C$i2c.c$150$1_0$54 ==.
;	i2c.c:150: address_MSB &= I2C_DEVICE_ADDR_MASK_2;
	C$i2c.c$151$1_0$54 ==.
;	i2c.c:151: address_MSB &= I2C_WRITE_MASK;
	anl	a,#(0xaf&0xfe)
	mov	r7,a
	C$i2c.c$154$1_0$54 ==.
;	i2c.c:154: i2c_start();
	push	ar7
	lcall	_i2c_start
	pop	ar7
	C$i2c.c$156$1_0$54 ==.
;	i2c.c:156: i2c_write_byte(address_MSB);
	mov	dpl,r7
	lcall	_i2c_write_byte
	C$i2c.c$158$1_0$54 ==.
;	i2c.c:158: i2c_acknowledge_check();
	lcall	_i2c_acknowledge_check
	C$i2c.c$160$1_0$54 ==.
;	i2c.c:160: i2c_write_byte(address_LSB);
	mov	dptr,#_i2c_eeprom_write_address_LSB_65536_54
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write_byte
	C$i2c.c$162$1_0$54 ==.
;	i2c.c:162: i2c_acknowledge_check();
	lcall	_i2c_acknowledge_check
	C$i2c.c$164$1_0$54 ==.
;	i2c.c:164: i2c_write_byte(data_byte);
	mov	dptr,#_i2c_eeprom_write_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write_byte
	C$i2c.c$166$1_0$54 ==.
;	i2c.c:166: i2c_acknowledge_check();
	lcall	_i2c_acknowledge_check
	C$i2c.c$168$1_0$54 ==.
;	i2c.c:168: i2c_stop();
	lcall	_i2c_stop
	C$i2c.c$170$1_0$54 ==.
;	i2c.c:170: return;
	C$i2c.c$171$1_0$54 ==.
;	i2c.c:171: }
	C$i2c.c$171$1_0$54 ==.
	XG$i2c_eeprom_write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_eeprom_read'
;------------------------------------------------------------
;address                   Allocated with name '_i2c_eeprom_read_address_65536_55'
;address_LSB               Allocated with name '_i2c_eeprom_read_address_LSB_65536_56'
;address_MSB               Allocated with name '_i2c_eeprom_read_address_MSB_65536_56'
;data_value                Allocated with name '_i2c_eeprom_read_data_value_65536_56'
;------------------------------------------------------------
	G$i2c_eeprom_read$0$0 ==.
	C$i2c.c$173$1_0$56 ==.
;	i2c.c:173: uint8_t i2c_eeprom_read(uint16_t address)
;	-----------------------------------------
;	 function i2c_eeprom_read
;	-----------------------------------------
_i2c_eeprom_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_eeprom_read_address_65536_55
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$i2c.c$177$1_0$56 ==.
;	i2c.c:177: address_LSB = (uint8_t) address;
	mov	dptr,#_i2c_eeprom_read_address_65536_55
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i2c_eeprom_read_address_LSB_65536_56
	mov	a,r6
	movx	@dptr,a
	C$i2c.c$179$1_0$56 ==.
;	i2c.c:179: address = address >> 7;
	mov	a,r7
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	mov	r7,a
	mov	dptr,#_i2c_eeprom_read_address_65536_55
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$i2c.c$181$1_0$56 ==.
;	i2c.c:181: address_MSB = (uint8_t) address;
	mov	dptr,#_i2c_eeprom_read_address_65536_55
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$i2c.c$183$1_0$56 ==.
;	i2c.c:183: address_MSB |= I2C_DEVICE_ADDR_MASK;
	mov	a,#0xa0
	orl	a,r6
	C$i2c.c$185$1_0$56 ==.
;	i2c.c:185: address_MSB &= I2C_DEVICE_ADDR_MASK_2;
	C$i2c.c$186$1_0$56 ==.
;	i2c.c:186: address_MSB &= I2C_WRITE_MASK;
	anl	a,#(0xaf&0xfe)
	mov	r7,a
	C$i2c.c$189$1_0$56 ==.
;	i2c.c:189: i2c_start();
	push	ar7
	lcall	_i2c_start
	pop	ar7
	C$i2c.c$191$1_0$56 ==.
;	i2c.c:191: i2c_write_byte(address_MSB);
	mov	dpl,r7
	push	ar7
	lcall	_i2c_write_byte
	C$i2c.c$193$1_0$56 ==.
;	i2c.c:193: i2c_acknowledge_check();
	lcall	_i2c_acknowledge_check
	C$i2c.c$195$1_0$56 ==.
;	i2c.c:195: i2c_write_byte(address_LSB);
	mov	dptr,#_i2c_eeprom_read_address_LSB_65536_56
	movx	a,@dptr
	mov	dpl,a
	lcall	_i2c_write_byte
	C$i2c.c$197$1_0$56 ==.
;	i2c.c:197: i2c_acknowledge_check();
	lcall	_i2c_acknowledge_check
	pop	ar7
	C$i2c.c$199$1_0$56 ==.
;	i2c.c:199: address_MSB |= I2C_READ_MASK;
	orl	ar7,#0x01
	C$i2c.c$201$1_0$56 ==.
;	i2c.c:201: i2c_start();
	push	ar7
	lcall	_i2c_start
	pop	ar7
	C$i2c.c$203$1_0$56 ==.
;	i2c.c:203: i2c_write_byte(address_MSB);
	mov	dpl,r7
	lcall	_i2c_write_byte
	C$i2c.c$205$1_0$56 ==.
;	i2c.c:205: i2c_acknowledge_check();
	lcall	_i2c_acknowledge_check
	C$i2c.c$207$1_0$56 ==.
;	i2c.c:207: data_value = i2c_read_byte();
	lcall	_i2c_read_byte
	mov	r7,dpl
	C$i2c.c$209$1_0$56 ==.
;	i2c.c:209: no_acknowledge();
	push	ar7
	lcall	_no_acknowledge
	C$i2c.c$211$1_0$56 ==.
;	i2c.c:211: i2c_stop();
	lcall	_i2c_stop
	pop	ar7
	C$i2c.c$213$1_0$56 ==.
;	i2c.c:213: return data_value;
	mov	dpl,r7
	C$i2c.c$214$1_0$56 ==.
;	i2c.c:214: }
	C$i2c.c$214$1_0$56 ==.
	XG$i2c_eeprom_read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_handler_eeprom_reset'
;------------------------------------------------------------
;i                         Allocated with name '_i2c_handler_eeprom_reset_i_65536_57'
;------------------------------------------------------------
	G$i2c_handler_eeprom_reset$0$0 ==.
	C$i2c.c$216$1_0$57 ==.
;	i2c.c:216: void i2c_handler_eeprom_reset()
;	-----------------------------------------
;	 function i2c_handler_eeprom_reset
;	-----------------------------------------
_i2c_handler_eeprom_reset:
	C$i2c.c$220$1_0$57 ==.
;	i2c.c:220: i2c_start();
	lcall	_i2c_start
	C$i2c.c$221$1_0$57 ==.
;	i2c.c:221: for(i=0;i<9;i++)    // Send 9 clock ticks with SDA high
	mov	r7,#0x00
00102$:
	C$i2c.c$224$3_0$59 ==.
;	i2c.c:224: i2c_sda(1);
	mov	dpl,#0x01
	push	ar7
	lcall	_i2c_sda
	C$i2c.c$226$3_0$59 ==.
;	i2c.c:226: i2c_clock_tick();
	lcall	_i2c_clock_tick
	pop	ar7
	C$i2c.c$221$2_0$58 ==.
;	i2c.c:221: for(i=0;i<9;i++)    // Send 9 clock ticks with SDA high
	inc	r7
	cjne	r7,#0x09,00115$
00115$:
	jc	00102$
	C$i2c.c$229$1_0$57 ==.
;	i2c.c:229: i2c_stop();
	lcall	_i2c_stop
	C$i2c.c$230$1_0$57 ==.
;	i2c.c:230: return;
	C$i2c.c$231$1_0$57 ==.
;	i2c.c:231: }
	C$i2c.c$231$1_0$57 ==.
	XG$i2c_handler_eeprom_reset$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
