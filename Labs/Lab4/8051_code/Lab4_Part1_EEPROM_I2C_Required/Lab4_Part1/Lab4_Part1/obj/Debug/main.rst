                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl __sdcc_external_startup
                                     13 	.globl _fill_EEPROM_with_ff
                                     14 	.globl _handler_EEPROM_hexdump
                                     15 	.globl _handler_wr_to_eeprom
                                     16 	.globl _handler_rd_to_eeprom
                                     17 	.globl _i2c_handler_eeprom_reset
                                     18 	.globl _print_UI
                                     19 	.globl _print_colored
                                     20 	.globl _initialize_uart_timer
                                     21 	.globl _printf_tiny
                                     22 	.globl _putchar
                                     23 	.globl _getchar
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _F1
                                     31 	.globl _P
                                     32 	.globl _PS
                                     33 	.globl _PT1
                                     34 	.globl _PX1
                                     35 	.globl _PT0
                                     36 	.globl _PX0
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _EA
                                     54 	.globl _ES
                                     55 	.globl _ET1
                                     56 	.globl _EX1
                                     57 	.globl _ET0
                                     58 	.globl _EX0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _SM0
                                     68 	.globl _SM1
                                     69 	.globl _SM2
                                     70 	.globl _REN
                                     71 	.globl _TB8
                                     72 	.globl _RB8
                                     73 	.globl _TI
                                     74 	.globl _RI
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _TF1
                                     84 	.globl _TR1
                                     85 	.globl _TF0
                                     86 	.globl _TR0
                                     87 	.globl _IE1
                                     88 	.globl _IT1
                                     89 	.globl _IE0
                                     90 	.globl _IT0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _TXD0
                                    100 	.globl _RXD0
                                    101 	.globl _BREG_F7
                                    102 	.globl _BREG_F6
                                    103 	.globl _BREG_F5
                                    104 	.globl _BREG_F4
                                    105 	.globl _BREG_F3
                                    106 	.globl _BREG_F2
                                    107 	.globl _BREG_F1
                                    108 	.globl _BREG_F0
                                    109 	.globl _P5_7
                                    110 	.globl _P5_6
                                    111 	.globl _P5_5
                                    112 	.globl _P5_4
                                    113 	.globl _P5_3
                                    114 	.globl _P5_2
                                    115 	.globl _P5_1
                                    116 	.globl _P5_0
                                    117 	.globl _P4_7
                                    118 	.globl _P4_6
                                    119 	.globl _P4_5
                                    120 	.globl _P4_4
                                    121 	.globl _P4_3
                                    122 	.globl _P4_2
                                    123 	.globl _P4_1
                                    124 	.globl _P4_0
                                    125 	.globl _PX0L
                                    126 	.globl _PT0L
                                    127 	.globl _PX1L
                                    128 	.globl _PT1L
                                    129 	.globl _PSL
                                    130 	.globl _PT2L
                                    131 	.globl _PPCL
                                    132 	.globl _EC
                                    133 	.globl _CCF0
                                    134 	.globl _CCF1
                                    135 	.globl _CCF2
                                    136 	.globl _CCF3
                                    137 	.globl _CCF4
                                    138 	.globl _CR
                                    139 	.globl _CF
                                    140 	.globl _TF2
                                    141 	.globl _EXF2
                                    142 	.globl _RCLK
                                    143 	.globl _TCLK
                                    144 	.globl _EXEN2
                                    145 	.globl _TR2
                                    146 	.globl _C_T2
                                    147 	.globl _CP_RL2
                                    148 	.globl _T2CON_7
                                    149 	.globl _T2CON_6
                                    150 	.globl _T2CON_5
                                    151 	.globl _T2CON_4
                                    152 	.globl _T2CON_3
                                    153 	.globl _T2CON_2
                                    154 	.globl _T2CON_1
                                    155 	.globl _T2CON_0
                                    156 	.globl _PT2
                                    157 	.globl _ET2
                                    158 	.globl _B
                                    159 	.globl _ACC
                                    160 	.globl _PSW
                                    161 	.globl _IP
                                    162 	.globl _P3
                                    163 	.globl _IE
                                    164 	.globl _P2
                                    165 	.globl _SBUF
                                    166 	.globl _SCON
                                    167 	.globl _P1
                                    168 	.globl _TH1
                                    169 	.globl _TH0
                                    170 	.globl _TL1
                                    171 	.globl _TL0
                                    172 	.globl _TMOD
                                    173 	.globl _TCON
                                    174 	.globl _PCON
                                    175 	.globl _DPH
                                    176 	.globl _DPL
                                    177 	.globl _SP
                                    178 	.globl _P0
                                    179 	.globl _SBUF0
                                    180 	.globl _DP0L
                                    181 	.globl _DP0H
                                    182 	.globl _EECON
                                    183 	.globl _KBF
                                    184 	.globl _KBE
                                    185 	.globl _KBLS
                                    186 	.globl _BRL
                                    187 	.globl _BDRCON
                                    188 	.globl _T2MOD
                                    189 	.globl _SPDAT
                                    190 	.globl _SPSTA
                                    191 	.globl _SPCON
                                    192 	.globl _SADEN
                                    193 	.globl _SADDR
                                    194 	.globl _WDTPRG
                                    195 	.globl _WDTRST
                                    196 	.globl _P5
                                    197 	.globl _P4
                                    198 	.globl _IPH1
                                    199 	.globl _IPL1
                                    200 	.globl _IPH0
                                    201 	.globl _IPL0
                                    202 	.globl _IEN1
                                    203 	.globl _IEN0
                                    204 	.globl _CMOD
                                    205 	.globl _CL
                                    206 	.globl _CH
                                    207 	.globl _CCON
                                    208 	.globl _CCAPM4
                                    209 	.globl _CCAPM3
                                    210 	.globl _CCAPM2
                                    211 	.globl _CCAPM1
                                    212 	.globl _CCAPM0
                                    213 	.globl _CCAP4L
                                    214 	.globl _CCAP3L
                                    215 	.globl _CCAP2L
                                    216 	.globl _CCAP1L
                                    217 	.globl _CCAP0L
                                    218 	.globl _CCAP4H
                                    219 	.globl _CCAP3H
                                    220 	.globl _CCAP2H
                                    221 	.globl _CCAP1H
                                    222 	.globl _CCAP0H
                                    223 	.globl _CKCON1
                                    224 	.globl _CKCON0
                                    225 	.globl _CKRL
                                    226 	.globl _AUXR1
                                    227 	.globl _AUXR
                                    228 	.globl _TH2
                                    229 	.globl _TL2
                                    230 	.globl _RCAP2H
                                    231 	.globl _RCAP2L
                                    232 	.globl _T2CON
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           0000C8   238 G$T2CON$0_0$0 == 0x00c8
                           0000C8   239 _T2CON	=	0x00c8
                           0000CA   240 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   243 _RCAP2H	=	0x00cb
                           0000CC   244 G$TL2$0_0$0 == 0x00cc
                           0000CC   245 _TL2	=	0x00cc
                           0000CD   246 G$TH2$0_0$0 == 0x00cd
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 G$AUXR$0_0$0 == 0x008e
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 G$CKRL$0_0$0 == 0x0097
                           000097   253 _CKRL	=	0x0097
                           00008F   254 G$CKCON0$0_0$0 == 0x008f
                           00008F   255 _CKCON0	=	0x008f
                           0000AF   256 G$CKCON1$0_0$0 == 0x00af
                           0000AF   257 _CKCON1	=	0x00af
                           0000FA   258 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   259 _CCAP0H	=	0x00fa
                           0000FB   260 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   261 _CCAP1H	=	0x00fb
                           0000FC   262 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   263 _CCAP2H	=	0x00fc
                           0000FD   264 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   267 _CCAP4H	=	0x00fe
                           0000EA   268 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   269 _CCAP0L	=	0x00ea
                           0000EB   270 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   271 _CCAP1L	=	0x00eb
                           0000EC   272 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   273 _CCAP2L	=	0x00ec
                           0000ED   274 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   275 _CCAP3L	=	0x00ed
                           0000EE   276 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   277 _CCAP4L	=	0x00ee
                           0000DA   278 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   279 _CCAPM0	=	0x00da
                           0000DB   280 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   281 _CCAPM1	=	0x00db
                           0000DC   282 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   283 _CCAPM2	=	0x00dc
                           0000DD   284 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   285 _CCAPM3	=	0x00dd
                           0000DE   286 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   287 _CCAPM4	=	0x00de
                           0000D8   288 G$CCON$0_0$0 == 0x00d8
                           0000D8   289 _CCON	=	0x00d8
                           0000F9   290 G$CH$0_0$0 == 0x00f9
                           0000F9   291 _CH	=	0x00f9
                           0000E9   292 G$CL$0_0$0 == 0x00e9
                           0000E9   293 _CL	=	0x00e9
                           0000D9   294 G$CMOD$0_0$0 == 0x00d9
                           0000D9   295 _CMOD	=	0x00d9
                           0000A8   296 G$IEN0$0_0$0 == 0x00a8
                           0000A8   297 _IEN0	=	0x00a8
                           0000B1   298 G$IEN1$0_0$0 == 0x00b1
                           0000B1   299 _IEN1	=	0x00b1
                           0000B8   300 G$IPL0$0_0$0 == 0x00b8
                           0000B8   301 _IPL0	=	0x00b8
                           0000B7   302 G$IPH0$0_0$0 == 0x00b7
                           0000B7   303 _IPH0	=	0x00b7
                           0000B2   304 G$IPL1$0_0$0 == 0x00b2
                           0000B2   305 _IPL1	=	0x00b2
                           0000B3   306 G$IPH1$0_0$0 == 0x00b3
                           0000B3   307 _IPH1	=	0x00b3
                           0000C0   308 G$P4$0_0$0 == 0x00c0
                           0000C0   309 _P4	=	0x00c0
                           0000E8   310 G$P5$0_0$0 == 0x00e8
                           0000E8   311 _P5	=	0x00e8
                           0000A6   312 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   313 _WDTRST	=	0x00a6
                           0000A7   314 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   315 _WDTPRG	=	0x00a7
                           0000A9   316 G$SADDR$0_0$0 == 0x00a9
                           0000A9   317 _SADDR	=	0x00a9
                           0000B9   318 G$SADEN$0_0$0 == 0x00b9
                           0000B9   319 _SADEN	=	0x00b9
                           0000C3   320 G$SPCON$0_0$0 == 0x00c3
                           0000C3   321 _SPCON	=	0x00c3
                           0000C4   322 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   323 _SPSTA	=	0x00c4
                           0000C5   324 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   325 _SPDAT	=	0x00c5
                           0000C9   326 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   327 _T2MOD	=	0x00c9
                           00009B   328 G$BDRCON$0_0$0 == 0x009b
                           00009B   329 _BDRCON	=	0x009b
                           00009A   330 G$BRL$0_0$0 == 0x009a
                           00009A   331 _BRL	=	0x009a
                           00009C   332 G$KBLS$0_0$0 == 0x009c
                           00009C   333 _KBLS	=	0x009c
                           00009D   334 G$KBE$0_0$0 == 0x009d
                           00009D   335 _KBE	=	0x009d
                           00009E   336 G$KBF$0_0$0 == 0x009e
                           00009E   337 _KBF	=	0x009e
                           0000D2   338 G$EECON$0_0$0 == 0x00d2
                           0000D2   339 _EECON	=	0x00d2
                           000083   340 G$DP0H$0_0$0 == 0x0083
                           000083   341 _DP0H	=	0x0083
                           000082   342 G$DP0L$0_0$0 == 0x0082
                           000082   343 _DP0L	=	0x0082
                           000099   344 G$SBUF0$0_0$0 == 0x0099
                           000099   345 _SBUF0	=	0x0099
                           000080   346 G$P0$0_0$0 == 0x0080
                           000080   347 _P0	=	0x0080
                           000081   348 G$SP$0_0$0 == 0x0081
                           000081   349 _SP	=	0x0081
                           000082   350 G$DPL$0_0$0 == 0x0082
                           000082   351 _DPL	=	0x0082
                           000083   352 G$DPH$0_0$0 == 0x0083
                           000083   353 _DPH	=	0x0083
                           000087   354 G$PCON$0_0$0 == 0x0087
                           000087   355 _PCON	=	0x0087
                           000088   356 G$TCON$0_0$0 == 0x0088
                           000088   357 _TCON	=	0x0088
                           000089   358 G$TMOD$0_0$0 == 0x0089
                           000089   359 _TMOD	=	0x0089
                           00008A   360 G$TL0$0_0$0 == 0x008a
                           00008A   361 _TL0	=	0x008a
                           00008B   362 G$TL1$0_0$0 == 0x008b
                           00008B   363 _TL1	=	0x008b
                           00008C   364 G$TH0$0_0$0 == 0x008c
                           00008C   365 _TH0	=	0x008c
                           00008D   366 G$TH1$0_0$0 == 0x008d
                           00008D   367 _TH1	=	0x008d
                           000090   368 G$P1$0_0$0 == 0x0090
                           000090   369 _P1	=	0x0090
                           000098   370 G$SCON$0_0$0 == 0x0098
                           000098   371 _SCON	=	0x0098
                           000099   372 G$SBUF$0_0$0 == 0x0099
                           000099   373 _SBUF	=	0x0099
                           0000A0   374 G$P2$0_0$0 == 0x00a0
                           0000A0   375 _P2	=	0x00a0
                           0000A8   376 G$IE$0_0$0 == 0x00a8
                           0000A8   377 _IE	=	0x00a8
                           0000B0   378 G$P3$0_0$0 == 0x00b0
                           0000B0   379 _P3	=	0x00b0
                           0000B8   380 G$IP$0_0$0 == 0x00b8
                           0000B8   381 _IP	=	0x00b8
                           0000D0   382 G$PSW$0_0$0 == 0x00d0
                           0000D0   383 _PSW	=	0x00d0
                           0000E0   384 G$ACC$0_0$0 == 0x00e0
                           0000E0   385 _ACC	=	0x00e0
                           0000F0   386 G$B$0_0$0 == 0x00f0
                           0000F0   387 _B	=	0x00f0
                                    388 ;--------------------------------------------------------
                                    389 ; special function bits
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
                           0000AD   393 G$ET2$0_0$0 == 0x00ad
                           0000AD   394 _ET2	=	0x00ad
                           0000BD   395 G$PT2$0_0$0 == 0x00bd
                           0000BD   396 _PT2	=	0x00bd
                           0000C8   397 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   398 _T2CON_0	=	0x00c8
                           0000C9   399 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   400 _T2CON_1	=	0x00c9
                           0000CA   401 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   402 _T2CON_2	=	0x00ca
                           0000CB   403 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   404 _T2CON_3	=	0x00cb
                           0000CC   405 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   406 _T2CON_4	=	0x00cc
                           0000CD   407 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   408 _T2CON_5	=	0x00cd
                           0000CE   409 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   410 _T2CON_6	=	0x00ce
                           0000CF   411 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   412 _T2CON_7	=	0x00cf
                           0000C8   413 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   414 _CP_RL2	=	0x00c8
                           0000C9   415 G$C_T2$0_0$0 == 0x00c9
                           0000C9   416 _C_T2	=	0x00c9
                           0000CA   417 G$TR2$0_0$0 == 0x00ca
                           0000CA   418 _TR2	=	0x00ca
                           0000CB   419 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   420 _EXEN2	=	0x00cb
                           0000CC   421 G$TCLK$0_0$0 == 0x00cc
                           0000CC   422 _TCLK	=	0x00cc
                           0000CD   423 G$RCLK$0_0$0 == 0x00cd
                           0000CD   424 _RCLK	=	0x00cd
                           0000CE   425 G$EXF2$0_0$0 == 0x00ce
                           0000CE   426 _EXF2	=	0x00ce
                           0000CF   427 G$TF2$0_0$0 == 0x00cf
                           0000CF   428 _TF2	=	0x00cf
                           0000DF   429 G$CF$0_0$0 == 0x00df
                           0000DF   430 _CF	=	0x00df
                           0000DE   431 G$CR$0_0$0 == 0x00de
                           0000DE   432 _CR	=	0x00de
                           0000DC   433 G$CCF4$0_0$0 == 0x00dc
                           0000DC   434 _CCF4	=	0x00dc
                           0000DB   435 G$CCF3$0_0$0 == 0x00db
                           0000DB   436 _CCF3	=	0x00db
                           0000DA   437 G$CCF2$0_0$0 == 0x00da
                           0000DA   438 _CCF2	=	0x00da
                           0000D9   439 G$CCF1$0_0$0 == 0x00d9
                           0000D9   440 _CCF1	=	0x00d9
                           0000D8   441 G$CCF0$0_0$0 == 0x00d8
                           0000D8   442 _CCF0	=	0x00d8
                           0000AE   443 G$EC$0_0$0 == 0x00ae
                           0000AE   444 _EC	=	0x00ae
                           0000BE   445 G$PPCL$0_0$0 == 0x00be
                           0000BE   446 _PPCL	=	0x00be
                           0000BD   447 G$PT2L$0_0$0 == 0x00bd
                           0000BD   448 _PT2L	=	0x00bd
                           0000BC   449 G$PSL$0_0$0 == 0x00bc
                           0000BC   450 _PSL	=	0x00bc
                           0000BB   451 G$PT1L$0_0$0 == 0x00bb
                           0000BB   452 _PT1L	=	0x00bb
                           0000BA   453 G$PX1L$0_0$0 == 0x00ba
                           0000BA   454 _PX1L	=	0x00ba
                           0000B9   455 G$PT0L$0_0$0 == 0x00b9
                           0000B9   456 _PT0L	=	0x00b9
                           0000B8   457 G$PX0L$0_0$0 == 0x00b8
                           0000B8   458 _PX0L	=	0x00b8
                           0000C0   459 G$P4_0$0_0$0 == 0x00c0
                           0000C0   460 _P4_0	=	0x00c0
                           0000C1   461 G$P4_1$0_0$0 == 0x00c1
                           0000C1   462 _P4_1	=	0x00c1
                           0000C2   463 G$P4_2$0_0$0 == 0x00c2
                           0000C2   464 _P4_2	=	0x00c2
                           0000C3   465 G$P4_3$0_0$0 == 0x00c3
                           0000C3   466 _P4_3	=	0x00c3
                           0000C4   467 G$P4_4$0_0$0 == 0x00c4
                           0000C4   468 _P4_4	=	0x00c4
                           0000C5   469 G$P4_5$0_0$0 == 0x00c5
                           0000C5   470 _P4_5	=	0x00c5
                           0000C6   471 G$P4_6$0_0$0 == 0x00c6
                           0000C6   472 _P4_6	=	0x00c6
                           0000C7   473 G$P4_7$0_0$0 == 0x00c7
                           0000C7   474 _P4_7	=	0x00c7
                           0000E8   475 G$P5_0$0_0$0 == 0x00e8
                           0000E8   476 _P5_0	=	0x00e8
                           0000E9   477 G$P5_1$0_0$0 == 0x00e9
                           0000E9   478 _P5_1	=	0x00e9
                           0000EA   479 G$P5_2$0_0$0 == 0x00ea
                           0000EA   480 _P5_2	=	0x00ea
                           0000EB   481 G$P5_3$0_0$0 == 0x00eb
                           0000EB   482 _P5_3	=	0x00eb
                           0000EC   483 G$P5_4$0_0$0 == 0x00ec
                           0000EC   484 _P5_4	=	0x00ec
                           0000ED   485 G$P5_5$0_0$0 == 0x00ed
                           0000ED   486 _P5_5	=	0x00ed
                           0000EE   487 G$P5_6$0_0$0 == 0x00ee
                           0000EE   488 _P5_6	=	0x00ee
                           0000EF   489 G$P5_7$0_0$0 == 0x00ef
                           0000EF   490 _P5_7	=	0x00ef
                           0000F0   491 G$BREG_F0$0_0$0 == 0x00f0
                           0000F0   492 _BREG_F0	=	0x00f0
                           0000F1   493 G$BREG_F1$0_0$0 == 0x00f1
                           0000F1   494 _BREG_F1	=	0x00f1
                           0000F2   495 G$BREG_F2$0_0$0 == 0x00f2
                           0000F2   496 _BREG_F2	=	0x00f2
                           0000F3   497 G$BREG_F3$0_0$0 == 0x00f3
                           0000F3   498 _BREG_F3	=	0x00f3
                           0000F4   499 G$BREG_F4$0_0$0 == 0x00f4
                           0000F4   500 _BREG_F4	=	0x00f4
                           0000F5   501 G$BREG_F5$0_0$0 == 0x00f5
                           0000F5   502 _BREG_F5	=	0x00f5
                           0000F6   503 G$BREG_F6$0_0$0 == 0x00f6
                           0000F6   504 _BREG_F6	=	0x00f6
                           0000F7   505 G$BREG_F7$0_0$0 == 0x00f7
                           0000F7   506 _BREG_F7	=	0x00f7
                           0000B0   507 G$RXD0$0_0$0 == 0x00b0
                           0000B0   508 _RXD0	=	0x00b0
                           0000B1   509 G$TXD0$0_0$0 == 0x00b1
                           0000B1   510 _TXD0	=	0x00b1
                           000080   511 G$P0_0$0_0$0 == 0x0080
                           000080   512 _P0_0	=	0x0080
                           000081   513 G$P0_1$0_0$0 == 0x0081
                           000081   514 _P0_1	=	0x0081
                           000082   515 G$P0_2$0_0$0 == 0x0082
                           000082   516 _P0_2	=	0x0082
                           000083   517 G$P0_3$0_0$0 == 0x0083
                           000083   518 _P0_3	=	0x0083
                           000084   519 G$P0_4$0_0$0 == 0x0084
                           000084   520 _P0_4	=	0x0084
                           000085   521 G$P0_5$0_0$0 == 0x0085
                           000085   522 _P0_5	=	0x0085
                           000086   523 G$P0_6$0_0$0 == 0x0086
                           000086   524 _P0_6	=	0x0086
                           000087   525 G$P0_7$0_0$0 == 0x0087
                           000087   526 _P0_7	=	0x0087
                           000088   527 G$IT0$0_0$0 == 0x0088
                           000088   528 _IT0	=	0x0088
                           000089   529 G$IE0$0_0$0 == 0x0089
                           000089   530 _IE0	=	0x0089
                           00008A   531 G$IT1$0_0$0 == 0x008a
                           00008A   532 _IT1	=	0x008a
                           00008B   533 G$IE1$0_0$0 == 0x008b
                           00008B   534 _IE1	=	0x008b
                           00008C   535 G$TR0$0_0$0 == 0x008c
                           00008C   536 _TR0	=	0x008c
                           00008D   537 G$TF0$0_0$0 == 0x008d
                           00008D   538 _TF0	=	0x008d
                           00008E   539 G$TR1$0_0$0 == 0x008e
                           00008E   540 _TR1	=	0x008e
                           00008F   541 G$TF1$0_0$0 == 0x008f
                           00008F   542 _TF1	=	0x008f
                           000090   543 G$P1_0$0_0$0 == 0x0090
                           000090   544 _P1_0	=	0x0090
                           000091   545 G$P1_1$0_0$0 == 0x0091
                           000091   546 _P1_1	=	0x0091
                           000092   547 G$P1_2$0_0$0 == 0x0092
                           000092   548 _P1_2	=	0x0092
                           000093   549 G$P1_3$0_0$0 == 0x0093
                           000093   550 _P1_3	=	0x0093
                           000094   551 G$P1_4$0_0$0 == 0x0094
                           000094   552 _P1_4	=	0x0094
                           000095   553 G$P1_5$0_0$0 == 0x0095
                           000095   554 _P1_5	=	0x0095
                           000096   555 G$P1_6$0_0$0 == 0x0096
                           000096   556 _P1_6	=	0x0096
                           000097   557 G$P1_7$0_0$0 == 0x0097
                           000097   558 _P1_7	=	0x0097
                           000098   559 G$RI$0_0$0 == 0x0098
                           000098   560 _RI	=	0x0098
                           000099   561 G$TI$0_0$0 == 0x0099
                           000099   562 _TI	=	0x0099
                           00009A   563 G$RB8$0_0$0 == 0x009a
                           00009A   564 _RB8	=	0x009a
                           00009B   565 G$TB8$0_0$0 == 0x009b
                           00009B   566 _TB8	=	0x009b
                           00009C   567 G$REN$0_0$0 == 0x009c
                           00009C   568 _REN	=	0x009c
                           00009D   569 G$SM2$0_0$0 == 0x009d
                           00009D   570 _SM2	=	0x009d
                           00009E   571 G$SM1$0_0$0 == 0x009e
                           00009E   572 _SM1	=	0x009e
                           00009F   573 G$SM0$0_0$0 == 0x009f
                           00009F   574 _SM0	=	0x009f
                           0000A0   575 G$P2_0$0_0$0 == 0x00a0
                           0000A0   576 _P2_0	=	0x00a0
                           0000A1   577 G$P2_1$0_0$0 == 0x00a1
                           0000A1   578 _P2_1	=	0x00a1
                           0000A2   579 G$P2_2$0_0$0 == 0x00a2
                           0000A2   580 _P2_2	=	0x00a2
                           0000A3   581 G$P2_3$0_0$0 == 0x00a3
                           0000A3   582 _P2_3	=	0x00a3
                           0000A4   583 G$P2_4$0_0$0 == 0x00a4
                           0000A4   584 _P2_4	=	0x00a4
                           0000A5   585 G$P2_5$0_0$0 == 0x00a5
                           0000A5   586 _P2_5	=	0x00a5
                           0000A6   587 G$P2_6$0_0$0 == 0x00a6
                           0000A6   588 _P2_6	=	0x00a6
                           0000A7   589 G$P2_7$0_0$0 == 0x00a7
                           0000A7   590 _P2_7	=	0x00a7
                           0000A8   591 G$EX0$0_0$0 == 0x00a8
                           0000A8   592 _EX0	=	0x00a8
                           0000A9   593 G$ET0$0_0$0 == 0x00a9
                           0000A9   594 _ET0	=	0x00a9
                           0000AA   595 G$EX1$0_0$0 == 0x00aa
                           0000AA   596 _EX1	=	0x00aa
                           0000AB   597 G$ET1$0_0$0 == 0x00ab
                           0000AB   598 _ET1	=	0x00ab
                           0000AC   599 G$ES$0_0$0 == 0x00ac
                           0000AC   600 _ES	=	0x00ac
                           0000AF   601 G$EA$0_0$0 == 0x00af
                           0000AF   602 _EA	=	0x00af
                           0000B0   603 G$P3_0$0_0$0 == 0x00b0
                           0000B0   604 _P3_0	=	0x00b0
                           0000B1   605 G$P3_1$0_0$0 == 0x00b1
                           0000B1   606 _P3_1	=	0x00b1
                           0000B2   607 G$P3_2$0_0$0 == 0x00b2
                           0000B2   608 _P3_2	=	0x00b2
                           0000B3   609 G$P3_3$0_0$0 == 0x00b3
                           0000B3   610 _P3_3	=	0x00b3
                           0000B4   611 G$P3_4$0_0$0 == 0x00b4
                           0000B4   612 _P3_4	=	0x00b4
                           0000B5   613 G$P3_5$0_0$0 == 0x00b5
                           0000B5   614 _P3_5	=	0x00b5
                           0000B6   615 G$P3_6$0_0$0 == 0x00b6
                           0000B6   616 _P3_6	=	0x00b6
                           0000B7   617 G$P3_7$0_0$0 == 0x00b7
                           0000B7   618 _P3_7	=	0x00b7
                           0000B0   619 G$RXD$0_0$0 == 0x00b0
                           0000B0   620 _RXD	=	0x00b0
                           0000B1   621 G$TXD$0_0$0 == 0x00b1
                           0000B1   622 _TXD	=	0x00b1
                           0000B2   623 G$INT0$0_0$0 == 0x00b2
                           0000B2   624 _INT0	=	0x00b2
                           0000B3   625 G$INT1$0_0$0 == 0x00b3
                           0000B3   626 _INT1	=	0x00b3
                           0000B4   627 G$T0$0_0$0 == 0x00b4
                           0000B4   628 _T0	=	0x00b4
                           0000B5   629 G$T1$0_0$0 == 0x00b5
                           0000B5   630 _T1	=	0x00b5
                           0000B6   631 G$WR$0_0$0 == 0x00b6
                           0000B6   632 _WR	=	0x00b6
                           0000B7   633 G$RD$0_0$0 == 0x00b7
                           0000B7   634 _RD	=	0x00b7
                           0000B8   635 G$PX0$0_0$0 == 0x00b8
                           0000B8   636 _PX0	=	0x00b8
                           0000B9   637 G$PT0$0_0$0 == 0x00b9
                           0000B9   638 _PT0	=	0x00b9
                           0000BA   639 G$PX1$0_0$0 == 0x00ba
                           0000BA   640 _PX1	=	0x00ba
                           0000BB   641 G$PT1$0_0$0 == 0x00bb
                           0000BB   642 _PT1	=	0x00bb
                           0000BC   643 G$PS$0_0$0 == 0x00bc
                           0000BC   644 _PS	=	0x00bc
                           0000D0   645 G$P$0_0$0 == 0x00d0
                           0000D0   646 _P	=	0x00d0
                           0000D1   647 G$F1$0_0$0 == 0x00d1
                           0000D1   648 _F1	=	0x00d1
                           0000D2   649 G$OV$0_0$0 == 0x00d2
                           0000D2   650 _OV	=	0x00d2
                           0000D3   651 G$RS0$0_0$0 == 0x00d3
                           0000D3   652 _RS0	=	0x00d3
                           0000D4   653 G$RS1$0_0$0 == 0x00d4
                           0000D4   654 _RS1	=	0x00d4
                           0000D5   655 G$F0$0_0$0 == 0x00d5
                           0000D5   656 _F0	=	0x00d5
                           0000D6   657 G$AC$0_0$0 == 0x00d6
                           0000D6   658 _AC	=	0x00d6
                           0000D7   659 G$CY$0_0$0 == 0x00d7
                           0000D7   660 _CY	=	0x00d7
                                    661 ;--------------------------------------------------------
                                    662 ; overlayable register banks
                                    663 ;--------------------------------------------------------
                                    664 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        665 	.ds 8
                                    666 ;--------------------------------------------------------
                                    667 ; internal ram data
                                    668 ;--------------------------------------------------------
                                    669 	.area DSEG    (DATA)
                                    670 ;--------------------------------------------------------
                                    671 ; overlayable items in internal ram
                                    672 ;--------------------------------------------------------
                                    673 ;--------------------------------------------------------
                                    674 ; Stack segment in internal ram
                                    675 ;--------------------------------------------------------
                                    676 	.area	SSEG
      000021                        677 __start__stack:
      000021                        678 	.ds	1
                                    679 
                                    680 ;--------------------------------------------------------
                                    681 ; indirectly addressable internal ram data
                                    682 ;--------------------------------------------------------
                                    683 	.area ISEG    (DATA)
                                    684 ;--------------------------------------------------------
                                    685 ; absolute internal ram data
                                    686 ;--------------------------------------------------------
                                    687 	.area IABS    (ABS,DATA)
                                    688 	.area IABS    (ABS,DATA)
                                    689 ;--------------------------------------------------------
                                    690 ; bit data
                                    691 ;--------------------------------------------------------
                                    692 	.area BSEG    (BIT)
                                    693 ;--------------------------------------------------------
                                    694 ; paged external ram data
                                    695 ;--------------------------------------------------------
                                    696 	.area PSEG    (PAG,XDATA)
                                    697 ;--------------------------------------------------------
                                    698 ; external ram data
                                    699 ;--------------------------------------------------------
                                    700 	.area XSEG    (XDATA)
                                    701 ;--------------------------------------------------------
                                    702 ; absolute external ram data
                                    703 ;--------------------------------------------------------
                                    704 	.area XABS    (ABS,XDATA)
                                    705 ;--------------------------------------------------------
                                    706 ; external initialized ram data
                                    707 ;--------------------------------------------------------
                                    708 	.area XISEG   (XDATA)
                                    709 	.area HOME    (CODE)
                                    710 	.area GSINIT0 (CODE)
                                    711 	.area GSINIT1 (CODE)
                                    712 	.area GSINIT2 (CODE)
                                    713 	.area GSINIT3 (CODE)
                                    714 	.area GSINIT4 (CODE)
                                    715 	.area GSINIT5 (CODE)
                                    716 	.area GSINIT  (CODE)
                                    717 	.area GSFINAL (CODE)
                                    718 	.area CSEG    (CODE)
                                    719 ;--------------------------------------------------------
                                    720 ; interrupt vector
                                    721 ;--------------------------------------------------------
                                    722 	.area HOME    (CODE)
      002000                        723 __interrupt_vect:
      002000 02 20 06         [24]  724 	ljmp	__sdcc_gsinit_startup
                                    725 ;--------------------------------------------------------
                                    726 ; global & static initialisations
                                    727 ;--------------------------------------------------------
                                    728 	.area HOME    (CODE)
                                    729 	.area GSINIT  (CODE)
                                    730 	.area GSFINAL (CODE)
                                    731 	.area GSINIT  (CODE)
                                    732 	.globl __sdcc_gsinit_startup
                                    733 	.globl __sdcc_program_startup
                                    734 	.globl __start__stack
                                    735 	.globl __mcs51_genXINIT
                                    736 	.globl __mcs51_genXRAMCLEAR
                                    737 	.globl __mcs51_genRAMCLEAR
                                    738 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  739 	ljmp	__sdcc_program_startup
                                    740 ;--------------------------------------------------------
                                    741 ; Home
                                    742 ;--------------------------------------------------------
                                    743 	.area HOME    (CODE)
                                    744 	.area HOME    (CODE)
      002003                        745 __sdcc_program_startup:
      002003 02 26 15         [24]  746 	ljmp	_main
                                    747 ;	return from main will return to caller
                                    748 ;--------------------------------------------------------
                                    749 ; code
                                    750 ;--------------------------------------------------------
                                    751 	.area CSEG    (CODE)
                                    752 ;------------------------------------------------------------
                                    753 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    754 ;------------------------------------------------------------
                           000000   755 	G$_sdcc_external_startup$0$0 ==.
                           000000   756 	C$main.c$46$0_0$89 ==.
                                    757 ;	main.c:46: _sdcc_external_startup()
                                    758 ;	-----------------------------------------
                                    759 ;	 function _sdcc_external_startup
                                    760 ;	-----------------------------------------
      00260E                        761 __sdcc_external_startup:
                           000007   762 	ar7 = 0x07
                           000006   763 	ar6 = 0x06
                           000005   764 	ar5 = 0x05
                           000004   765 	ar4 = 0x04
                           000003   766 	ar3 = 0x03
                           000002   767 	ar2 = 0x02
                           000001   768 	ar1 = 0x01
                           000000   769 	ar0 = 0x00
                           000000   770 	C$main.c$49$1_0$89 ==.
                                    771 ;	main.c:49: AUXR |= (XRS1 | XRS0);
      00260E 43 8E 0C         [24]  772 	orl	_AUXR,#0x0c
                           000003   773 	C$main.c$52$1_0$89 ==.
                                    774 ;	main.c:52: return 0;
      002611 90 00 00         [24]  775 	mov	dptr,#0x0000
                           000006   776 	C$main.c$53$1_0$89 ==.
                                    777 ;	main.c:53: }
                           000006   778 	C$main.c$53$1_0$89 ==.
                           000006   779 	XG$_sdcc_external_startup$0$0 ==.
      002614 22               [24]  780 	ret
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'main'
                                    783 ;------------------------------------------------------------
                                    784 ;char_detected             Allocated with name '_main_char_detected_131073_93'
                                    785 ;------------------------------------------------------------
                           000007   786 	G$main$0$0 ==.
                           000007   787 	C$main.c$64$1_0$91 ==.
                                    788 ;	main.c:64: void main(void)
                                    789 ;	-----------------------------------------
                                    790 ;	 function main
                                    791 ;	-----------------------------------------
      002615                        792 _main:
                           000007   793 	C$main.c$66$1_0$91 ==.
                                    794 ;	main.c:66: initialize_uart_timer();        // Initialize UART and timer for serial communication
      002615 12 28 72         [24]  795 	lcall	_initialize_uart_timer
                           00000A   796 	C$main.c$67$1_0$91 ==.
                                    797 ;	main.c:67: i2c_handler_eeprom_reset();     // Reset EEPROM
      002618 12 25 F2         [24]  798 	lcall	_i2c_handler_eeprom_reset
                           00000D   799 	C$main.c$68$1_0$91 ==.
                                    800 ;	main.c:68: print_UI();                     // Print the user interface menu
      00261B 12 2C F6         [24]  801 	lcall	_print_UI
                           000010   802 	C$main.c$70$1_0$91 ==.
                                    803 ;	main.c:70: while(1)
      00261E                        804 00109$:
                           000010   805 	C$main.c$74$2_0$92 ==.
                                    806 ;	main.c:74: print_colored("+-------------------------------------------------+\n\r", 36);
      00261E 90 04 6A         [24]  807 	mov	dptr,#_print_colored_PARM_2
      002621 74 24            [12]  808 	mov	a,#0x24
      002623 F0               [24]  809 	movx	@dptr,a
      002624 E4               [12]  810 	clr	a
      002625 A3               [24]  811 	inc	dptr
      002626 F0               [24]  812 	movx	@dptr,a
      002627 90 40 04         [24]  813 	mov	dptr,#___str_0
      00262A 75 F0 80         [24]  814 	mov	b,#0x80
      00262D 12 2C B8         [24]  815 	lcall	_print_colored
                           000022   816 	C$main.c$75$2_0$92 ==.
                                    817 ;	main.c:75: print_colored("|                                                 |\n\r", 36);
      002630 90 04 6A         [24]  818 	mov	dptr,#_print_colored_PARM_2
      002633 74 24            [12]  819 	mov	a,#0x24
      002635 F0               [24]  820 	movx	@dptr,a
      002636 E4               [12]  821 	clr	a
      002637 A3               [24]  822 	inc	dptr
      002638 F0               [24]  823 	movx	@dptr,a
      002639 90 40 3A         [24]  824 	mov	dptr,#___str_1
      00263C 75 F0 80         [24]  825 	mov	b,#0x80
      00263F 12 2C B8         [24]  826 	lcall	_print_colored
                           000034   827 	C$main.c$76$2_0$92 ==.
                                    828 ;	main.c:76: print_colored("|                Enter Character                  |\n\r", 36);
      002642 90 04 6A         [24]  829 	mov	dptr,#_print_colored_PARM_2
      002645 74 24            [12]  830 	mov	a,#0x24
      002647 F0               [24]  831 	movx	@dptr,a
      002648 E4               [12]  832 	clr	a
      002649 A3               [24]  833 	inc	dptr
      00264A F0               [24]  834 	movx	@dptr,a
      00264B 90 40 70         [24]  835 	mov	dptr,#___str_2
      00264E 75 F0 80         [24]  836 	mov	b,#0x80
      002651 12 2C B8         [24]  837 	lcall	_print_colored
                           000046   838 	C$main.c$77$2_0$92 ==.
                                    839 ;	main.c:77: print_colored("|                                                 |\n\r", 36);
      002654 90 04 6A         [24]  840 	mov	dptr,#_print_colored_PARM_2
      002657 74 24            [12]  841 	mov	a,#0x24
      002659 F0               [24]  842 	movx	@dptr,a
      00265A E4               [12]  843 	clr	a
      00265B A3               [24]  844 	inc	dptr
      00265C F0               [24]  845 	movx	@dptr,a
      00265D 90 40 3A         [24]  846 	mov	dptr,#___str_1
      002660 75 F0 80         [24]  847 	mov	b,#0x80
      002663 12 2C B8         [24]  848 	lcall	_print_colored
                           000058   849 	C$main.c$78$2_0$92 ==.
                                    850 ;	main.c:78: print_colored("+-------------------------------------------------+\n\r\n\r", 36);
      002666 90 04 6A         [24]  851 	mov	dptr,#_print_colored_PARM_2
      002669 74 24            [12]  852 	mov	a,#0x24
      00266B F0               [24]  853 	movx	@dptr,a
      00266C E4               [12]  854 	clr	a
      00266D A3               [24]  855 	inc	dptr
      00266E F0               [24]  856 	movx	@dptr,a
      00266F 90 40 A6         [24]  857 	mov	dptr,#___str_3
      002672 75 F0 80         [24]  858 	mov	b,#0x80
      002675 12 2C B8         [24]  859 	lcall	_print_colored
                           00006A   860 	C$main.c$82$2_1$93 ==.
                                    861 ;	main.c:82: char_detected = getchar();
      002678 12 27 54         [24]  862 	lcall	_getchar
      00267B AE 82            [24]  863 	mov	r6,dpl
                           00006F   864 	C$main.c$83$2_1$93 ==.
                                    865 ;	main.c:83: putchar(char_detected);
      00267D 8E 05            [24]  866 	mov	ar5,r6
      00267F 7F 00            [12]  867 	mov	r7,#0x00
      002681 8D 82            [24]  868 	mov	dpl,r5
      002683 8F 83            [24]  869 	mov	dph,r7
      002685 C0 06            [24]  870 	push	ar6
      002687 12 27 62         [24]  871 	lcall	_putchar
                           00007C   872 	C$main.c$84$2_1$93 ==.
                                    873 ;	main.c:84: putchar(' ');
      00268A 90 00 20         [24]  874 	mov	dptr,#0x0020
      00268D 12 27 62         [24]  875 	lcall	_putchar
      002690 D0 06            [24]  876 	pop	ar6
                           000084   877 	C$main.c$87$2_1$93 ==.
                                    878 ;	main.c:87: switch(char_detected)
      002692 BE 43 02         [24]  879 	cjne	r6,#0x43,00137$
      002695 80 53            [24]  880 	sjmp	00104$
      002697                        881 00137$:
      002697 BE 46 02         [24]  882 	cjne	r6,#0x46,00138$
      00269A 80 39            [24]  883 	sjmp	00103$
      00269C                        884 00138$:
      00269C BE 52 02         [24]  885 	cjne	r6,#0x52,00139$
      00269F 80 1F            [24]  886 	sjmp	00102$
      0026A1                        887 00139$:
      0026A1 BE 57 02         [24]  888 	cjne	r6,#0x57,00140$
      0026A4 80 05            [24]  889 	sjmp	00101$
      0026A6                        890 00140$:
                           000098   891 	C$main.c$89$3_1$94 ==.
                                    892 ;	main.c:89: case 'W':
      0026A6 BE 58 7A         [24]  893 	cjne	r6,#0x58,00106$
      0026A9 80 54            [24]  894 	sjmp	00105$
      0026AB                        895 00101$:
                           00009D   896 	C$main.c$90$3_1$94 ==.
                                    897 ;	main.c:90: printf_tiny("\n\r");
      0026AB 74 DE            [12]  898 	mov	a,#___str_4
      0026AD C0 E0            [24]  899 	push	acc
      0026AF 74 40            [12]  900 	mov	a,#(___str_4 >> 8)
      0026B1 C0 E0            [24]  901 	push	acc
      0026B3 12 30 A8         [24]  902 	lcall	_printf_tiny
      0026B6 15 81            [12]  903 	dec	sp
      0026B8 15 81            [12]  904 	dec	sp
                           0000AC   905 	C$main.c$91$3_1$94 ==.
                                    906 ;	main.c:91: handler_wr_to_eeprom();         // Handle the "W" command to write to EEPROM
      0026BA 12 20 62         [24]  907 	lcall	_handler_wr_to_eeprom
                           0000AF   908 	C$main.c$92$3_1$94 ==.
                                    909 ;	main.c:92: break;
      0026BD 02 26 1E         [24]  910 	ljmp	00109$
                           0000B2   911 	C$main.c$93$3_1$94 ==.
                                    912 ;	main.c:93: case 'R':
      0026C0                        913 00102$:
                           0000B2   914 	C$main.c$94$3_1$94 ==.
                                    915 ;	main.c:94: printf_tiny("\n\r");
      0026C0 74 DE            [12]  916 	mov	a,#___str_4
      0026C2 C0 E0            [24]  917 	push	acc
      0026C4 74 40            [12]  918 	mov	a,#(___str_4 >> 8)
      0026C6 C0 E0            [24]  919 	push	acc
      0026C8 12 30 A8         [24]  920 	lcall	_printf_tiny
      0026CB 15 81            [12]  921 	dec	sp
      0026CD 15 81            [12]  922 	dec	sp
                           0000C1   923 	C$main.c$95$3_1$94 ==.
                                    924 ;	main.c:95: handler_rd_to_eeprom();         // Handle the "R" command to read from EEPROM
      0026CF 12 21 49         [24]  925 	lcall	_handler_rd_to_eeprom
                           0000C4   926 	C$main.c$96$3_1$94 ==.
                                    927 ;	main.c:96: break;
      0026D2 02 26 1E         [24]  928 	ljmp	00109$
                           0000C7   929 	C$main.c$97$3_1$94 ==.
                                    930 ;	main.c:97: case 'F':
      0026D5                        931 00103$:
                           0000C7   932 	C$main.c$98$3_1$94 ==.
                                    933 ;	main.c:98: printf_tiny("\n\r");
      0026D5 74 DE            [12]  934 	mov	a,#___str_4
      0026D7 C0 E0            [24]  935 	push	acc
      0026D9 74 40            [12]  936 	mov	a,#(___str_4 >> 8)
      0026DB C0 E0            [24]  937 	push	acc
      0026DD 12 30 A8         [24]  938 	lcall	_printf_tiny
      0026E0 15 81            [12]  939 	dec	sp
      0026E2 15 81            [12]  940 	dec	sp
                           0000D6   941 	C$main.c$99$3_1$94 ==.
                                    942 ;	main.c:99: handler_EEPROM_hexdump();       // Handle the "F" command to dump the EEPROM data in hex format
      0026E4 12 23 0D         [24]  943 	lcall	_handler_EEPROM_hexdump
                           0000D9   944 	C$main.c$100$3_1$94 ==.
                                    945 ;	main.c:100: break;
      0026E7 02 26 1E         [24]  946 	ljmp	00109$
                           0000DC   947 	C$main.c$101$3_1$94 ==.
                                    948 ;	main.c:101: case 'C':
      0026EA                        949 00104$:
                           0000DC   950 	C$main.c$102$3_1$94 ==.
                                    951 ;	main.c:102: printf_tiny("\n\r");
      0026EA 74 DE            [12]  952 	mov	a,#___str_4
      0026EC C0 E0            [24]  953 	push	acc
      0026EE 74 40            [12]  954 	mov	a,#(___str_4 >> 8)
      0026F0 C0 E0            [24]  955 	push	acc
      0026F2 12 30 A8         [24]  956 	lcall	_printf_tiny
      0026F5 15 81            [12]  957 	dec	sp
      0026F7 15 81            [12]  958 	dec	sp
                           0000EB   959 	C$main.c$103$3_1$94 ==.
                                    960 ;	main.c:103: fill_EEPROM_with_ff();          // Handle the "C" command to fill the EEPROM with 0xFF
      0026F9 12 23 9F         [24]  961 	lcall	_fill_EEPROM_with_ff
                           0000EE   962 	C$main.c$104$3_1$94 ==.
                                    963 ;	main.c:104: break;
      0026FC 02 26 1E         [24]  964 	ljmp	00109$
                           0000F1   965 	C$main.c$105$3_1$94 ==.
                                    966 ;	main.c:105: case 'X':
      0026FF                        967 00105$:
                           0000F1   968 	C$main.c$106$3_1$94 ==.
                                    969 ;	main.c:106: printf_tiny("\n\r");
      0026FF 74 DE            [12]  970 	mov	a,#___str_4
      002701 C0 E0            [24]  971 	push	acc
      002703 74 40            [12]  972 	mov	a,#(___str_4 >> 8)
      002705 C0 E0            [24]  973 	push	acc
      002707 12 30 A8         [24]  974 	lcall	_printf_tiny
      00270A 15 81            [12]  975 	dec	sp
      00270C 15 81            [12]  976 	dec	sp
                           000100   977 	C$main.c$107$3_1$94 ==.
                                    978 ;	main.c:107: i2c_handler_eeprom_reset();     // Handle the "X" command to reset the EEPROM
      00270E 12 25 F2         [24]  979 	lcall	_i2c_handler_eeprom_reset
                           000103   980 	C$main.c$108$3_1$94 ==.
                                    981 ;	main.c:108: printf_tiny("\033[1;33m\n\rEEPROM reseted\r\n");
      002711 74 E1            [12]  982 	mov	a,#___str_5
      002713 C0 E0            [24]  983 	push	acc
      002715 74 40            [12]  984 	mov	a,#(___str_5 >> 8)
      002717 C0 E0            [24]  985 	push	acc
      002719 12 30 A8         [24]  986 	lcall	_printf_tiny
      00271C 15 81            [12]  987 	dec	sp
      00271E 15 81            [12]  988 	dec	sp
                           000112   989 	C$main.c$109$3_1$94 ==.
                                    990 ;	main.c:109: break;
      002720 02 26 1E         [24]  991 	ljmp	00109$
                           000115   992 	C$main.c$110$3_1$94 ==.
                                    993 ;	main.c:110: default:
      002723                        994 00106$:
                           000115   995 	C$main.c$111$3_1$94 ==.
                                    996 ;	main.c:111: printf_tiny("\n\r");
      002723 74 DE            [12]  997 	mov	a,#___str_4
      002725 C0 E0            [24]  998 	push	acc
      002727 74 40            [12]  999 	mov	a,#(___str_4 >> 8)
      002729 C0 E0            [24] 1000 	push	acc
      00272B 12 30 A8         [24] 1001 	lcall	_printf_tiny
      00272E 15 81            [12] 1002 	dec	sp
      002730 15 81            [12] 1003 	dec	sp
                           000124  1004 	C$main.c$112$3_1$94 ==.
                                   1005 ;	main.c:112: printf_tiny("\033[1;31mInvalid Character!!\n\r");
      002732 74 FB            [12] 1006 	mov	a,#___str_6
      002734 C0 E0            [24] 1007 	push	acc
      002736 74 40            [12] 1008 	mov	a,#(___str_6 >> 8)
      002738 C0 E0            [24] 1009 	push	acc
      00273A 12 30 A8         [24] 1010 	lcall	_printf_tiny
      00273D 15 81            [12] 1011 	dec	sp
      00273F 15 81            [12] 1012 	dec	sp
                           000133  1013 	C$main.c$113$3_1$94 ==.
                                   1014 ;	main.c:113: printf_tiny("\033[1;31mAvailable Options: Available Characters W-R-F-C-X!!\n\r");
      002741 74 18            [12] 1015 	mov	a,#___str_7
      002743 C0 E0            [24] 1016 	push	acc
      002745 74 41            [12] 1017 	mov	a,#(___str_7 >> 8)
      002747 C0 E0            [24] 1018 	push	acc
      002749 12 30 A8         [24] 1019 	lcall	_printf_tiny
      00274C 15 81            [12] 1020 	dec	sp
      00274E 15 81            [12] 1021 	dec	sp
                           000142  1022 	C$main.c$115$1_0$91 ==.
                                   1023 ;	main.c:115: }
      002750 02 26 1E         [24] 1024 	ljmp	00109$
                           000145  1025 	C$main.c$117$1_0$91 ==.
                                   1026 ;	main.c:117: }
                           000145  1027 	C$main.c$117$1_0$91 ==.
                           000145  1028 	XG$main$0$0 ==.
      002753 22               [24] 1029 	ret
                                   1030 	.area CSEG    (CODE)
                                   1031 	.area CONST   (CODE)
                           000000  1032 Fmain$__str_0$0_0$0 == .
                                   1033 	.area CONST   (CODE)
      004004                       1034 ___str_0:
      004004 2B 2D 2D 2D 2D 2D 2D  1035 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      004037 0A                    1036 	.db 0x0a
      004038 0D                    1037 	.db 0x0d
      004039 00                    1038 	.db 0x00
                                   1039 	.area CSEG    (CODE)
                           000146  1040 Fmain$__str_1$0_0$0 == .
                                   1041 	.area CONST   (CODE)
      00403A                       1042 ___str_1:
      00403A 7C 20 20 20 20 20 20  1043 	.ascii "|                                                 |"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      00406D 0A                    1044 	.db 0x0a
      00406E 0D                    1045 	.db 0x0d
      00406F 00                    1046 	.db 0x00
                                   1047 	.area CSEG    (CODE)
                           000146  1048 Fmain$__str_2$0_0$0 == .
                                   1049 	.area CONST   (CODE)
      004070                       1050 ___str_2:
      004070 7C 20 20 20 20 20 20  1051 	.ascii "|                Enter Character                  |"
             20 20 20 20 20 20 20
             20 20 20 45 6E 74 65
             72 20 43 68 61 72 61
             63 74 65 72 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0040A3 0A                    1052 	.db 0x0a
      0040A4 0D                    1053 	.db 0x0d
      0040A5 00                    1054 	.db 0x00
                                   1055 	.area CSEG    (CODE)
                           000146  1056 Fmain$__str_3$0_0$0 == .
                                   1057 	.area CONST   (CODE)
      0040A6                       1058 ___str_3:
      0040A6 2B 2D 2D 2D 2D 2D 2D  1059 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      0040D9 0A                    1060 	.db 0x0a
      0040DA 0D                    1061 	.db 0x0d
      0040DB 0A                    1062 	.db 0x0a
      0040DC 0D                    1063 	.db 0x0d
      0040DD 00                    1064 	.db 0x00
                                   1065 	.area CSEG    (CODE)
                           000146  1066 Fmain$__str_4$0_0$0 == .
                                   1067 	.area CONST   (CODE)
      0040DE                       1068 ___str_4:
      0040DE 0A                    1069 	.db 0x0a
      0040DF 0D                    1070 	.db 0x0d
      0040E0 00                    1071 	.db 0x00
                                   1072 	.area CSEG    (CODE)
                           000146  1073 Fmain$__str_5$0_0$0 == .
                                   1074 	.area CONST   (CODE)
      0040E1                       1075 ___str_5:
      0040E1 1B                    1076 	.db 0x1b
      0040E2 5B 31 3B 33 33 6D     1077 	.ascii "[1;33m"
      0040E8 0A                    1078 	.db 0x0a
      0040E9 0D                    1079 	.db 0x0d
      0040EA 45 45 50 52 4F 4D 20  1080 	.ascii "EEPROM reseted"
             72 65 73 65 74 65 64
      0040F8 0D                    1081 	.db 0x0d
      0040F9 0A                    1082 	.db 0x0a
      0040FA 00                    1083 	.db 0x00
                                   1084 	.area CSEG    (CODE)
                           000146  1085 Fmain$__str_6$0_0$0 == .
                                   1086 	.area CONST   (CODE)
      0040FB                       1087 ___str_6:
      0040FB 1B                    1088 	.db 0x1b
      0040FC 5B 31 3B 33 31 6D 49  1089 	.ascii "[1;31mInvalid Character!!"
             6E 76 61 6C 69 64 20
             43 68 61 72 61 63 74
             65 72 21 21
      004115 0A                    1090 	.db 0x0a
      004116 0D                    1091 	.db 0x0d
      004117 00                    1092 	.db 0x00
                                   1093 	.area CSEG    (CODE)
                           000146  1094 Fmain$__str_7$0_0$0 == .
                                   1095 	.area CONST   (CODE)
      004118                       1096 ___str_7:
      004118 1B                    1097 	.db 0x1b
      004119 5B 31 3B 33 31 6D 41  1098 	.ascii "[1;31mAvailable Options: Available Characters W-R-F-C-X!!"
             76 61 69 6C 61 62 6C
             65 20 4F 70 74 69 6F
             6E 73 3A 20 41 76 61
             69 6C 61 62 6C 65 20
             43 68 61 72 61 63 74
             65 72 73 20 57 2D 52
             2D 46 2D 43 2D 58 21
             21
      004152 0A                    1099 	.db 0x0a
      004153 0D                    1100 	.db 0x0d
      004154 00                    1101 	.db 0x00
                                   1102 	.area CSEG    (CODE)
                                   1103 	.area XINIT   (CODE)
                                   1104 	.area CABS    (ABS,CODE)
