                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module command_processing
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2c_eeprom_read
                                     12 	.globl _i2c_eeprom_write
                                     13 	.globl _print_hex_number
                                     14 	.globl _parse_user_input
                                     15 	.globl _putchar
                                     16 	.globl _printf_tiny
                                     17 	.globl _printf
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _TXD0
                                     94 	.globl _RXD0
                                     95 	.globl _BREG_F7
                                     96 	.globl _BREG_F6
                                     97 	.globl _BREG_F5
                                     98 	.globl _BREG_F4
                                     99 	.globl _BREG_F3
                                    100 	.globl _BREG_F2
                                    101 	.globl _BREG_F1
                                    102 	.globl _BREG_F0
                                    103 	.globl _P5_7
                                    104 	.globl _P5_6
                                    105 	.globl _P5_5
                                    106 	.globl _P5_4
                                    107 	.globl _P5_3
                                    108 	.globl _P5_2
                                    109 	.globl _P5_1
                                    110 	.globl _P5_0
                                    111 	.globl _P4_7
                                    112 	.globl _P4_6
                                    113 	.globl _P4_5
                                    114 	.globl _P4_4
                                    115 	.globl _P4_3
                                    116 	.globl _P4_2
                                    117 	.globl _P4_1
                                    118 	.globl _P4_0
                                    119 	.globl _PX0L
                                    120 	.globl _PT0L
                                    121 	.globl _PX1L
                                    122 	.globl _PT1L
                                    123 	.globl _PSL
                                    124 	.globl _PT2L
                                    125 	.globl _PPCL
                                    126 	.globl _EC
                                    127 	.globl _CCF0
                                    128 	.globl _CCF1
                                    129 	.globl _CCF2
                                    130 	.globl _CCF3
                                    131 	.globl _CCF4
                                    132 	.globl _CR
                                    133 	.globl _CF
                                    134 	.globl _TF2
                                    135 	.globl _EXF2
                                    136 	.globl _RCLK
                                    137 	.globl _TCLK
                                    138 	.globl _EXEN2
                                    139 	.globl _TR2
                                    140 	.globl _C_T2
                                    141 	.globl _CP_RL2
                                    142 	.globl _T2CON_7
                                    143 	.globl _T2CON_6
                                    144 	.globl _T2CON_5
                                    145 	.globl _T2CON_4
                                    146 	.globl _T2CON_3
                                    147 	.globl _T2CON_2
                                    148 	.globl _T2CON_1
                                    149 	.globl _T2CON_0
                                    150 	.globl _PT2
                                    151 	.globl _ET2
                                    152 	.globl _B
                                    153 	.globl _ACC
                                    154 	.globl _PSW
                                    155 	.globl _IP
                                    156 	.globl _P3
                                    157 	.globl _IE
                                    158 	.globl _P2
                                    159 	.globl _SBUF
                                    160 	.globl _SCON
                                    161 	.globl _P1
                                    162 	.globl _TH1
                                    163 	.globl _TH0
                                    164 	.globl _TL1
                                    165 	.globl _TL0
                                    166 	.globl _TMOD
                                    167 	.globl _TCON
                                    168 	.globl _PCON
                                    169 	.globl _DPH
                                    170 	.globl _DPL
                                    171 	.globl _SP
                                    172 	.globl _P0
                                    173 	.globl _SBUF0
                                    174 	.globl _DP0L
                                    175 	.globl _DP0H
                                    176 	.globl _EECON
                                    177 	.globl _KBF
                                    178 	.globl _KBE
                                    179 	.globl _KBLS
                                    180 	.globl _BRL
                                    181 	.globl _BDRCON
                                    182 	.globl _T2MOD
                                    183 	.globl _SPDAT
                                    184 	.globl _SPSTA
                                    185 	.globl _SPCON
                                    186 	.globl _SADEN
                                    187 	.globl _SADDR
                                    188 	.globl _WDTPRG
                                    189 	.globl _WDTRST
                                    190 	.globl _P5
                                    191 	.globl _P4
                                    192 	.globl _IPH1
                                    193 	.globl _IPL1
                                    194 	.globl _IPH0
                                    195 	.globl _IPL0
                                    196 	.globl _IEN1
                                    197 	.globl _IEN0
                                    198 	.globl _CMOD
                                    199 	.globl _CL
                                    200 	.globl _CH
                                    201 	.globl _CCON
                                    202 	.globl _CCAPM4
                                    203 	.globl _CCAPM3
                                    204 	.globl _CCAPM2
                                    205 	.globl _CCAPM1
                                    206 	.globl _CCAPM0
                                    207 	.globl _CCAP4L
                                    208 	.globl _CCAP3L
                                    209 	.globl _CCAP2L
                                    210 	.globl _CCAP1L
                                    211 	.globl _CCAP0L
                                    212 	.globl _CCAP4H
                                    213 	.globl _CCAP3H
                                    214 	.globl _CCAP2H
                                    215 	.globl _CCAP1H
                                    216 	.globl _CCAP0H
                                    217 	.globl _CKCON1
                                    218 	.globl _CKCON0
                                    219 	.globl _CKRL
                                    220 	.globl _AUXR1
                                    221 	.globl _AUXR
                                    222 	.globl _TH2
                                    223 	.globl _TL2
                                    224 	.globl _RCAP2H
                                    225 	.globl _RCAP2L
                                    226 	.globl _T2CON
                                    227 	.globl _EEPROM_hexump_PARM_2
                                    228 	.globl _handler_wr_to_eeprom
                                    229 	.globl _handler_rd_to_eeprom
                                    230 	.globl _EEPROM_hexump
                                    231 	.globl _handler_EEPROM_hexdump
                                    232 	.globl _fill_EEPROM_with_ff
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
                                    674 ; indirectly addressable internal ram data
                                    675 ;--------------------------------------------------------
                                    676 	.area ISEG    (DATA)
                                    677 ;--------------------------------------------------------
                                    678 ; absolute internal ram data
                                    679 ;--------------------------------------------------------
                                    680 	.area IABS    (ABS,DATA)
                                    681 	.area IABS    (ABS,DATA)
                                    682 ;--------------------------------------------------------
                                    683 ; bit data
                                    684 ;--------------------------------------------------------
                                    685 	.area BSEG    (BIT)
                                    686 ;--------------------------------------------------------
                                    687 ; paged external ram data
                                    688 ;--------------------------------------------------------
                                    689 	.area PSEG    (PAG,XDATA)
                                    690 ;--------------------------------------------------------
                                    691 ; external ram data
                                    692 ;--------------------------------------------------------
                                    693 	.area XSEG    (XDATA)
                           000000   694 Lcommand_processing.EEPROM_hexump$end_address$1_0$104==.
      000400                        695 _EEPROM_hexump_PARM_2:
      000400                        696 	.ds 2
                           000002   697 Lcommand_processing.EEPROM_hexump$start_address$1_0$104==.
      000402                        698 _EEPROM_hexump_start_address_65536_104:
      000402                        699 	.ds 2
                                    700 ;--------------------------------------------------------
                                    701 ; absolute external ram data
                                    702 ;--------------------------------------------------------
                                    703 	.area XABS    (ABS,XDATA)
                                    704 ;--------------------------------------------------------
                                    705 ; external initialized ram data
                                    706 ;--------------------------------------------------------
                                    707 	.area XISEG   (XDATA)
                                    708 	.area HOME    (CODE)
                                    709 	.area GSINIT0 (CODE)
                                    710 	.area GSINIT1 (CODE)
                                    711 	.area GSINIT2 (CODE)
                                    712 	.area GSINIT3 (CODE)
                                    713 	.area GSINIT4 (CODE)
                                    714 	.area GSINIT5 (CODE)
                                    715 	.area GSINIT  (CODE)
                                    716 	.area GSFINAL (CODE)
                                    717 	.area CSEG    (CODE)
                                    718 ;--------------------------------------------------------
                                    719 ; global & static initialisations
                                    720 ;--------------------------------------------------------
                                    721 	.area HOME    (CODE)
                                    722 	.area GSINIT  (CODE)
                                    723 	.area GSFINAL (CODE)
                                    724 	.area GSINIT  (CODE)
                                    725 ;--------------------------------------------------------
                                    726 ; Home
                                    727 ;--------------------------------------------------------
                                    728 	.area HOME    (CODE)
                                    729 	.area HOME    (CODE)
                                    730 ;--------------------------------------------------------
                                    731 ; code
                                    732 ;--------------------------------------------------------
                                    733 	.area CSEG    (CODE)
                                    734 ;------------------------------------------------------------
                                    735 ;Allocation info for local variables in function 'handler_wr_to_eeprom'
                                    736 ;------------------------------------------------------------
                                    737 ;data_read                 Allocated with name '_handler_wr_to_eeprom_data_read_65536_95'
                                    738 ;addr_read                 Allocated with name '_handler_wr_to_eeprom_addr_read_65536_95'
                                    739 ;------------------------------------------------------------
                           000000   740 	G$handler_wr_to_eeprom$0$0 ==.
                           000000   741 	C$command_processing.c$45$0_0$95 ==.
                                    742 ;	command_processing.c:45: void handler_wr_to_eeprom(void)
                                    743 ;	-----------------------------------------
                                    744 ;	 function handler_wr_to_eeprom
                                    745 ;	-----------------------------------------
      002062                        746 _handler_wr_to_eeprom:
                           000007   747 	ar7 = 0x07
                           000006   748 	ar6 = 0x06
                           000005   749 	ar5 = 0x05
                           000004   750 	ar4 = 0x04
                           000003   751 	ar3 = 0x03
                           000002   752 	ar2 = 0x02
                           000001   753 	ar1 = 0x01
                           000000   754 	ar0 = 0x00
                           000000   755 	C$command_processing.c$50$1_0$95 ==.
                                    756 ;	command_processing.c:50: printf_tiny("\033[1;33m\n\rWriting to EEPROM !!\r\n");
      002062 74 67            [12]  757 	mov	a,#___str_0
      002064 C0 E0            [24]  758 	push	acc
      002066 74 3C            [12]  759 	mov	a,#(___str_0 >> 8)
      002068 C0 E0            [24]  760 	push	acc
      00206A 12 30 A8         [24]  761 	lcall	_printf_tiny
      00206D 15 81            [12]  762 	dec	sp
      00206F 15 81            [12]  763 	dec	sp
                           00000F   764 	C$command_processing.c$52$1_0$95 ==.
                                    765 ;	command_processing.c:52: printf_tiny("\033[1;33m\n\rEnter Data to put into EEPROM\r\n\t");
      002071 74 87            [12]  766 	mov	a,#___str_1
      002073 C0 E0            [24]  767 	push	acc
      002075 74 3C            [12]  768 	mov	a,#(___str_1 >> 8)
      002077 C0 E0            [24]  769 	push	acc
      002079 12 30 A8         [24]  770 	lcall	_printf_tiny
      00207C 15 81            [12]  771 	dec	sp
      00207E 15 81            [12]  772 	dec	sp
                           00001E   773 	C$command_processing.c$53$1_0$95 ==.
                                    774 ;	command_processing.c:53: data_read = parse_user_input(HEX_BASE);
      002080 75 82 10         [24]  775 	mov	dpl,#0x10
      002083 12 29 4D         [24]  776 	lcall	_parse_user_input
      002086 AE 82            [24]  777 	mov	r6,dpl
      002088 AF 83            [24]  778 	mov	r7,dph
                           000028   779 	C$command_processing.c$56$1_0$95 ==.
                                    780 ;	command_processing.c:56: if(data_read >= 0 && data_read <= ASCII_MAX)
      00208A 8E 04            [24]  781 	mov	ar4,r6
      00208C 8F 05            [24]  782 	mov	ar5,r7
      00208E C3               [12]  783 	clr	c
      00208F 74 FF            [12]  784 	mov	a,#0xff
      002091 9C               [12]  785 	subb	a,r4
      002092 E4               [12]  786 	clr	a
      002093 9D               [12]  787 	subb	a,r5
      002094 50 18            [24]  788 	jnc	00103$
                           000034   789 	C$command_processing.c$61$2_0$97 ==.
                                    790 ;	command_processing.c:61: printf("\033[1;31m\n\rInvalid Data Range!! \n\rData has to be between 0x00 to 0xFF \033[0m\r\n");
      002096 74 B1            [12]  791 	mov	a,#___str_2
      002098 C0 E0            [24]  792 	push	acc
      00209A 74 3C            [12]  793 	mov	a,#(___str_2 >> 8)
      00209C C0 E0            [24]  794 	push	acc
      00209E 74 80            [12]  795 	mov	a,#0x80
      0020A0 C0 E0            [24]  796 	push	acc
      0020A2 12 32 1F         [24]  797 	lcall	_printf
      0020A5 15 81            [12]  798 	dec	sp
      0020A7 15 81            [12]  799 	dec	sp
      0020A9 15 81            [12]  800 	dec	sp
                           000049   801 	C$command_processing.c$62$2_0$97 ==.
                                    802 ;	command_processing.c:62: return;
      0020AB 02 21 48         [24]  803 	ljmp	00109$
      0020AE                        804 00103$:
                           00004C   805 	C$command_processing.c$65$1_0$95 ==.
                                    806 ;	command_processing.c:65: printf("\r\n");
      0020AE C0 07            [24]  807 	push	ar7
      0020B0 C0 06            [24]  808 	push	ar6
      0020B2 74 FC            [12]  809 	mov	a,#___str_3
      0020B4 C0 E0            [24]  810 	push	acc
      0020B6 74 3C            [12]  811 	mov	a,#(___str_3 >> 8)
      0020B8 C0 E0            [24]  812 	push	acc
      0020BA 74 80            [12]  813 	mov	a,#0x80
      0020BC C0 E0            [24]  814 	push	acc
      0020BE 12 32 1F         [24]  815 	lcall	_printf
      0020C1 15 81            [12]  816 	dec	sp
      0020C3 15 81            [12]  817 	dec	sp
      0020C5 15 81            [12]  818 	dec	sp
                           000065   819 	C$command_processing.c$67$1_0$95 ==.
                                    820 ;	command_processing.c:67: printf_tiny("\033[1;33m\n\rEnter Address to put into EEPROM\r\n");
      0020C7 74 FF            [12]  821 	mov	a,#___str_4
      0020C9 C0 E0            [24]  822 	push	acc
      0020CB 74 3C            [12]  823 	mov	a,#(___str_4 >> 8)
      0020CD C0 E0            [24]  824 	push	acc
      0020CF 12 30 A8         [24]  825 	lcall	_printf_tiny
      0020D2 15 81            [12]  826 	dec	sp
      0020D4 15 81            [12]  827 	dec	sp
                           000074   828 	C$command_processing.c$68$1_0$95 ==.
                                    829 ;	command_processing.c:68: addr_read = parse_user_input(HEX_BASE );
      0020D6 75 82 10         [24]  830 	mov	dpl,#0x10
      0020D9 12 29 4D         [24]  831 	lcall	_parse_user_input
      0020DC AC 82            [24]  832 	mov	r4,dpl
      0020DE AD 83            [24]  833 	mov	r5,dph
      0020E0 D0 06            [24]  834 	pop	ar6
      0020E2 D0 07            [24]  835 	pop	ar7
                           000082   836 	C$command_processing.c$70$1_0$95 ==.
                                    837 ;	command_processing.c:70: if(addr_read >= 0 && addr_read <= ADDR_MAX)
      0020E4 8C 02            [24]  838 	mov	ar2,r4
      0020E6 8D 03            [24]  839 	mov	ar3,r5
      0020E8 C3               [12]  840 	clr	c
      0020E9 74 FF            [12]  841 	mov	a,#0xff
      0020EB 9A               [12]  842 	subb	a,r2
      0020EC 74 07            [12]  843 	mov	a,#0x07
      0020EE 9B               [12]  844 	subb	a,r3
      0020EF 50 17            [24]  845 	jnc	00107$
                           00008F   846 	C$command_processing.c$76$2_0$99 ==.
                                    847 ;	command_processing.c:76: printf("\033[1;31m\n\rInvalid Address Range!!\n\rAddress has to be between 0x000 to 0x7FF\033[0m\r\n");
      0020F1 74 2B            [12]  848 	mov	a,#___str_5
      0020F3 C0 E0            [24]  849 	push	acc
      0020F5 74 3D            [12]  850 	mov	a,#(___str_5 >> 8)
      0020F7 C0 E0            [24]  851 	push	acc
      0020F9 74 80            [12]  852 	mov	a,#0x80
      0020FB C0 E0            [24]  853 	push	acc
      0020FD 12 32 1F         [24]  854 	lcall	_printf
      002100 15 81            [12]  855 	dec	sp
      002102 15 81            [12]  856 	dec	sp
      002104 15 81            [12]  857 	dec	sp
                           0000A4   858 	C$command_processing.c$77$2_0$99 ==.
                                    859 ;	command_processing.c:77: return;
      002106 80 40            [24]  860 	sjmp	00109$
      002108                        861 00107$:
                           0000A6   862 	C$command_processing.c$79$1_0$95 ==.
                                    863 ;	command_processing.c:79: printf("\r\n");
      002108 C0 07            [24]  864 	push	ar7
      00210A C0 06            [24]  865 	push	ar6
      00210C C0 05            [24]  866 	push	ar5
      00210E C0 04            [24]  867 	push	ar4
      002110 74 FC            [12]  868 	mov	a,#___str_3
      002112 C0 E0            [24]  869 	push	acc
      002114 74 3C            [12]  870 	mov	a,#(___str_3 >> 8)
      002116 C0 E0            [24]  871 	push	acc
      002118 74 80            [12]  872 	mov	a,#0x80
      00211A C0 E0            [24]  873 	push	acc
      00211C 12 32 1F         [24]  874 	lcall	_printf
      00211F 15 81            [12]  875 	dec	sp
      002121 15 81            [12]  876 	dec	sp
      002123 15 81            [12]  877 	dec	sp
      002125 D0 04            [24]  878 	pop	ar4
      002127 D0 05            [24]  879 	pop	ar5
      002129 D0 06            [24]  880 	pop	ar6
      00212B D0 07            [24]  881 	pop	ar7
                           0000CB   882 	C$command_processing.c$81$1_0$95 ==.
                                    883 ;	command_processing.c:81: i2c_eeprom_write(addr_read,data_read);
      00212D 90 04 08         [24]  884 	mov	dptr,#_i2c_eeprom_write_PARM_2
      002130 EE               [12]  885 	mov	a,r6
      002131 F0               [24]  886 	movx	@dptr,a
      002132 8C 82            [24]  887 	mov	dpl,r4
      002134 8D 83            [24]  888 	mov	dph,r5
      002136 12 25 14         [24]  889 	lcall	_i2c_eeprom_write
                           0000D7   890 	C$command_processing.c$82$1_0$95 ==.
                                    891 ;	command_processing.c:82: printf_tiny("\033[1;33m\n\rFinished writting to EEPROM !!\r\n");
      002139 74 7C            [12]  892 	mov	a,#___str_6
      00213B C0 E0            [24]  893 	push	acc
      00213D 74 3D            [12]  894 	mov	a,#(___str_6 >> 8)
      00213F C0 E0            [24]  895 	push	acc
      002141 12 30 A8         [24]  896 	lcall	_printf_tiny
      002144 15 81            [12]  897 	dec	sp
      002146 15 81            [12]  898 	dec	sp
      002148                        899 00109$:
                           0000E6   900 	C$command_processing.c$84$1_0$95 ==.
                                    901 ;	command_processing.c:84: }
                           0000E6   902 	C$command_processing.c$84$1_0$95 ==.
                           0000E6   903 	XG$handler_wr_to_eeprom$0$0 ==.
      002148 22               [24]  904 	ret
                                    905 ;------------------------------------------------------------
                                    906 ;Allocation info for local variables in function 'handler_rd_to_eeprom'
                                    907 ;------------------------------------------------------------
                                    908 ;addr_read                 Allocated with name '_handler_rd_to_eeprom_addr_read_65536_101'
                                    909 ;byte_read1                Allocated with name '_handler_rd_to_eeprom_byte_read1_65536_101'
                                    910 ;------------------------------------------------------------
                           0000E7   911 	G$handler_rd_to_eeprom$0$0 ==.
                           0000E7   912 	C$command_processing.c$86$1_0$101 ==.
                                    913 ;	command_processing.c:86: void handler_rd_to_eeprom(void)
                                    914 ;	-----------------------------------------
                                    915 ;	 function handler_rd_to_eeprom
                                    916 ;	-----------------------------------------
      002149                        917 _handler_rd_to_eeprom:
                           0000E7   918 	C$command_processing.c$90$1_0$101 ==.
                                    919 ;	command_processing.c:90: printf_tiny("\033[1;33m\n\rReading from EEPROM !!\r\n");
      002149 74 A6            [12]  920 	mov	a,#___str_7
      00214B C0 E0            [24]  921 	push	acc
      00214D 74 3D            [12]  922 	mov	a,#(___str_7 >> 8)
      00214F C0 E0            [24]  923 	push	acc
      002151 12 30 A8         [24]  924 	lcall	_printf_tiny
      002154 15 81            [12]  925 	dec	sp
      002156 15 81            [12]  926 	dec	sp
                           0000F6   927 	C$command_processing.c$92$1_0$101 ==.
                                    928 ;	command_processing.c:92: printf_tiny("\033[1;33m\n\rEnter Address to put into EEPROM\r\n");
      002158 74 FF            [12]  929 	mov	a,#___str_4
      00215A C0 E0            [24]  930 	push	acc
      00215C 74 3C            [12]  931 	mov	a,#(___str_4 >> 8)
      00215E C0 E0            [24]  932 	push	acc
      002160 12 30 A8         [24]  933 	lcall	_printf_tiny
      002163 15 81            [12]  934 	dec	sp
      002165 15 81            [12]  935 	dec	sp
                           000105   936 	C$command_processing.c$93$1_0$101 ==.
                                    937 ;	command_processing.c:93: addr_read = parse_user_input(HEX_BASE );
      002167 75 82 10         [24]  938 	mov	dpl,#0x10
      00216A 12 29 4D         [24]  939 	lcall	_parse_user_input
      00216D AE 82            [24]  940 	mov	r6,dpl
      00216F AF 83            [24]  941 	mov	r7,dph
                           00010F   942 	C$command_processing.c$94$1_0$101 ==.
                                    943 ;	command_processing.c:94: if(addr_read >= 0 && addr_read <= ADDR_MAX)
      002171 8E 04            [24]  944 	mov	ar4,r6
      002173 8F 05            [24]  945 	mov	ar5,r7
      002175 C3               [12]  946 	clr	c
      002176 74 FF            [12]  947 	mov	a,#0xff
      002178 9C               [12]  948 	subb	a,r4
      002179 74 07            [12]  949 	mov	a,#0x07
      00217B 9D               [12]  950 	subb	a,r5
      00217C 50 17            [24]  951 	jnc	00103$
                           00011C   952 	C$command_processing.c$100$2_0$103 ==.
                                    953 ;	command_processing.c:100: printf("\033[1;31m\n\rInvalid Adress Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      00217E 74 C8            [12]  954 	mov	a,#___str_8
      002180 C0 E0            [24]  955 	push	acc
      002182 74 3D            [12]  956 	mov	a,#(___str_8 >> 8)
      002184 C0 E0            [24]  957 	push	acc
      002186 74 80            [12]  958 	mov	a,#0x80
      002188 C0 E0            [24]  959 	push	acc
      00218A 12 32 1F         [24]  960 	lcall	_printf
      00218D 15 81            [12]  961 	dec	sp
      00218F 15 81            [12]  962 	dec	sp
      002191 15 81            [12]  963 	dec	sp
                           000131   964 	C$command_processing.c$101$2_0$103 ==.
                                    965 ;	command_processing.c:101: return;
      002193 80 60            [24]  966 	sjmp	00105$
      002195                        967 00103$:
                           000133   968 	C$command_processing.c$103$1_0$101 ==.
                                    969 ;	command_processing.c:103: printf("\r\n");
      002195 C0 07            [24]  970 	push	ar7
      002197 C0 06            [24]  971 	push	ar6
      002199 74 FC            [12]  972 	mov	a,#___str_3
      00219B C0 E0            [24]  973 	push	acc
      00219D 74 3C            [12]  974 	mov	a,#(___str_3 >> 8)
      00219F C0 E0            [24]  975 	push	acc
      0021A1 74 80            [12]  976 	mov	a,#0x80
      0021A3 C0 E0            [24]  977 	push	acc
      0021A5 12 32 1F         [24]  978 	lcall	_printf
      0021A8 15 81            [12]  979 	dec	sp
      0021AA 15 81            [12]  980 	dec	sp
      0021AC 15 81            [12]  981 	dec	sp
      0021AE D0 06            [24]  982 	pop	ar6
      0021B0 D0 07            [24]  983 	pop	ar7
                           000150   984 	C$command_processing.c$105$1_0$101 ==.
                                    985 ;	command_processing.c:105: byte_read1 = i2c_eeprom_read(addr_read);
      0021B2 8E 82            [24]  986 	mov	dpl,r6
      0021B4 8F 83            [24]  987 	mov	dph,r7
      0021B6 C0 07            [24]  988 	push	ar7
      0021B8 C0 06            [24]  989 	push	ar6
      0021BA 12 25 77         [24]  990 	lcall	_i2c_eeprom_read
      0021BD AD 82            [24]  991 	mov	r5,dpl
                           00015D   992 	C$command_processing.c$106$1_0$101 ==.
                                    993 ;	command_processing.c:106: printf_tiny("\033[1;33m\n\rReading from EEPROM Completed!!\r\n");
      0021BF C0 05            [24]  994 	push	ar5
      0021C1 74 19            [12]  995 	mov	a,#___str_9
      0021C3 C0 E0            [24]  996 	push	acc
      0021C5 74 3E            [12]  997 	mov	a,#(___str_9 >> 8)
      0021C7 C0 E0            [24]  998 	push	acc
      0021C9 12 30 A8         [24]  999 	lcall	_printf_tiny
      0021CC 15 81            [12] 1000 	dec	sp
      0021CE 15 81            [12] 1001 	dec	sp
      0021D0 D0 05            [24] 1002 	pop	ar5
      0021D2 D0 06            [24] 1003 	pop	ar6
      0021D4 D0 07            [24] 1004 	pop	ar7
                           000174  1005 	C$command_processing.c$107$1_0$101 ==.
                                   1006 ;	command_processing.c:107: printf("\n\rData = %x present at Location = 0%x \n\r",byte_read1,addr_read);
      0021D6 7C 00            [12] 1007 	mov	r4,#0x00
      0021D8 C0 06            [24] 1008 	push	ar6
      0021DA C0 07            [24] 1009 	push	ar7
      0021DC C0 05            [24] 1010 	push	ar5
      0021DE C0 04            [24] 1011 	push	ar4
      0021E0 74 44            [12] 1012 	mov	a,#___str_10
      0021E2 C0 E0            [24] 1013 	push	acc
      0021E4 74 3E            [12] 1014 	mov	a,#(___str_10 >> 8)
      0021E6 C0 E0            [24] 1015 	push	acc
      0021E8 74 80            [12] 1016 	mov	a,#0x80
      0021EA C0 E0            [24] 1017 	push	acc
      0021EC 12 32 1F         [24] 1018 	lcall	_printf
      0021EF E5 81            [12] 1019 	mov	a,sp
      0021F1 24 F9            [12] 1020 	add	a,#0xf9
      0021F3 F5 81            [12] 1021 	mov	sp,a
      0021F5                       1022 00105$:
                           000193  1023 	C$command_processing.c$109$1_0$101 ==.
                                   1024 ;	command_processing.c:109: }
                           000193  1025 	C$command_processing.c$109$1_0$101 ==.
                           000193  1026 	XG$handler_rd_to_eeprom$0$0 ==.
      0021F5 22               [24] 1027 	ret
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'EEPROM_hexump'
                                   1030 ;------------------------------------------------------------
                                   1031 ;end_address               Allocated with name '_EEPROM_hexump_PARM_2'
                                   1032 ;start_address             Allocated with name '_EEPROM_hexump_start_address_65536_104'
                                   1033 ;count                     Allocated with name '_EEPROM_hexump_count_65537_106'
                                   1034 ;i                         Allocated with name '_EEPROM_hexump_i_65537_106'
                                   1035 ;temp_storage              Allocated with name '_EEPROM_hexump_temp_storage_65537_106'
                                   1036 ;data_byte                 Allocated with name '_EEPROM_hexump_data_byte_65537_106'
                                   1037 ;address                   Allocated with name '_EEPROM_hexump_address_65537_106'
                                   1038 ;------------------------------------------------------------
                           000194  1039 	G$EEPROM_hexump$0$0 ==.
                           000194  1040 	C$command_processing.c$112$1_0$105 ==.
                                   1041 ;	command_processing.c:112: void EEPROM_hexump(uint16_t start_address, uint16_t end_address)
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function EEPROM_hexump
                                   1044 ;	-----------------------------------------
      0021F6                       1045 _EEPROM_hexump:
      0021F6 AF 83            [24] 1046 	mov	r7,dph
      0021F8 E5 82            [12] 1047 	mov	a,dpl
      0021FA 90 04 02         [24] 1048 	mov	dptr,#_EEPROM_hexump_start_address_65536_104
      0021FD F0               [24] 1049 	movx	@dptr,a
      0021FE EF               [12] 1050 	mov	a,r7
      0021FF A3               [24] 1051 	inc	dptr
      002200 F0               [24] 1052 	movx	@dptr,a
                           00019F  1053 	C$command_processing.c$114$1_0$105 ==.
                                   1054 ;	command_processing.c:114: printf_tiny("\033[1;34m\n\rI2C EEPROM DUMP!!\r\n");
      002201 74 6D            [12] 1055 	mov	a,#___str_11
      002203 C0 E0            [24] 1056 	push	acc
      002205 74 3E            [12] 1057 	mov	a,#(___str_11 >> 8)
      002207 C0 E0            [24] 1058 	push	acc
      002209 12 30 A8         [24] 1059 	lcall	_printf_tiny
      00220C 15 81            [12] 1060 	dec	sp
      00220E 15 81            [12] 1061 	dec	sp
                           0001AE  1062 	C$command_processing.c$117$2_0$106 ==.
                                   1063 ;	command_processing.c:117: __xdata uint16_t address = start_address;
      002210 90 04 02         [24] 1064 	mov	dptr,#_EEPROM_hexump_start_address_65536_104
      002213 E0               [24] 1065 	movx	a,@dptr
      002214 FE               [12] 1066 	mov	r6,a
      002215 A3               [24] 1067 	inc	dptr
      002216 E0               [24] 1068 	movx	a,@dptr
      002217 FF               [12] 1069 	mov	r7,a
                           0001B6  1070 	C$command_processing.c$119$1_1$106 ==.
                                   1071 ;	command_processing.c:119: while (address <= end_address) {
      002218 90 04 00         [24] 1072 	mov	dptr,#_EEPROM_hexump_PARM_2
      00221B E0               [24] 1073 	movx	a,@dptr
      00221C FC               [12] 1074 	mov	r4,a
      00221D A3               [24] 1075 	inc	dptr
      00221E E0               [24] 1076 	movx	a,@dptr
      00221F FD               [12] 1077 	mov	r5,a
      002220 7B 00            [12] 1078 	mov	r3,#0x00
      002222                       1079 00103$:
      002222 C3               [12] 1080 	clr	c
      002223 EC               [12] 1081 	mov	a,r4
      002224 9E               [12] 1082 	subb	a,r6
      002225 ED               [12] 1083 	mov	a,r5
      002226 9F               [12] 1084 	subb	a,r7
      002227 50 03            [24] 1085 	jnc	00121$
      002229 02 22 F7         [24] 1086 	ljmp	00105$
      00222C                       1087 00121$:
                           0001CA  1088 	C$command_processing.c$120$2_1$107 ==.
                                   1089 ;	command_processing.c:120: if (count % DIVIDE_BY_16 == 0) {
      00222C EB               [12] 1090 	mov	a,r3
      00222D 54 0F            [12] 1091 	anl	a,#0x0f
      00222F 70 5A            [24] 1092 	jnz	00102$
                           0001CF  1093 	C$command_processing.c$121$1_1$105 ==.
                                   1094 ;	command_processing.c:121: putchar('\n');
      002231 C0 04            [24] 1095 	push	ar4
      002233 C0 05            [24] 1096 	push	ar5
      002235 90 00 0A         [24] 1097 	mov	dptr,#0x000a
      002238 C0 07            [24] 1098 	push	ar7
      00223A C0 06            [24] 1099 	push	ar6
      00223C C0 05            [24] 1100 	push	ar5
      00223E C0 04            [24] 1101 	push	ar4
      002240 C0 03            [24] 1102 	push	ar3
      002242 12 27 62         [24] 1103 	lcall	_putchar
                           0001E3  1104 	C$command_processing.c$122$3_1$108 ==.
                                   1105 ;	command_processing.c:122: putchar('\r');
      002245 90 00 0D         [24] 1106 	mov	dptr,#0x000d
      002248 12 27 62         [24] 1107 	lcall	_putchar
      00224B D0 03            [24] 1108 	pop	ar3
      00224D D0 04            [24] 1109 	pop	ar4
      00224F D0 05            [24] 1110 	pop	ar5
      002251 D0 06            [24] 1111 	pop	ar6
      002253 D0 07            [24] 1112 	pop	ar7
                           0001F3  1113 	C$command_processing.c$123$3_1$108 ==.
                                   1114 ;	command_processing.c:123: print_hex_number(address, 3);
      002255 8E 00            [24] 1115 	mov	ar0,r6
      002257 8F 01            [24] 1116 	mov	ar1,r7
      002259 7A 00            [12] 1117 	mov	r2,#0x00
      00225B 7D 00            [12] 1118 	mov	r5,#0x00
      00225D 90 04 5A         [24] 1119 	mov	dptr,#_print_hex_number_PARM_2
      002260 74 03            [12] 1120 	mov	a,#0x03
      002262 F0               [24] 1121 	movx	@dptr,a
      002263 88 82            [24] 1122 	mov	dpl,r0
      002265 89 83            [24] 1123 	mov	dph,r1
      002267 8A F0            [24] 1124 	mov	b,r2
      002269 ED               [12] 1125 	mov	a,r5
      00226A C0 07            [24] 1126 	push	ar7
      00226C C0 06            [24] 1127 	push	ar6
      00226E C0 05            [24] 1128 	push	ar5
      002270 C0 04            [24] 1129 	push	ar4
      002272 C0 03            [24] 1130 	push	ar3
      002274 12 2B 68         [24] 1131 	lcall	_print_hex_number
                           000215  1132 	C$command_processing.c$124$3_1$108 ==.
                                   1133 ;	command_processing.c:124: putchar(':');
      002277 90 00 3A         [24] 1134 	mov	dptr,#0x003a
      00227A 12 27 62         [24] 1135 	lcall	_putchar
      00227D D0 03            [24] 1136 	pop	ar3
      00227F D0 04            [24] 1137 	pop	ar4
      002281 D0 05            [24] 1138 	pop	ar5
      002283 D0 06            [24] 1139 	pop	ar6
      002285 D0 07            [24] 1140 	pop	ar7
                           000225  1141 	C$command_processing.c$134$1_1$105 ==.
                                   1142 ;	command_processing.c:134: return;
      002287 D0 05            [24] 1143 	pop	ar5
      002289 D0 04            [24] 1144 	pop	ar4
                           000229  1145 	C$command_processing.c$124$2_1$107 ==.
                                   1146 ;	command_processing.c:124: putchar(':');
      00228B                       1147 00102$:
                           000229  1148 	C$command_processing.c$126$1_1$105 ==.
                                   1149 ;	command_processing.c:126: putchar(ASCII_SPACE);//space
      00228B C0 04            [24] 1150 	push	ar4
      00228D C0 05            [24] 1151 	push	ar5
      00228F 90 00 20         [24] 1152 	mov	dptr,#0x0020
      002292 C0 07            [24] 1153 	push	ar7
      002294 C0 06            [24] 1154 	push	ar6
      002296 C0 05            [24] 1155 	push	ar5
      002298 C0 04            [24] 1156 	push	ar4
      00229A C0 03            [24] 1157 	push	ar3
      00229C 12 27 62         [24] 1158 	lcall	_putchar
      00229F D0 03            [24] 1159 	pop	ar3
      0022A1 D0 04            [24] 1160 	pop	ar4
      0022A3 D0 05            [24] 1161 	pop	ar5
      0022A5 D0 06            [24] 1162 	pop	ar6
      0022A7 D0 07            [24] 1163 	pop	ar7
                           000247  1164 	C$command_processing.c$127$2_1$107 ==.
                                   1165 ;	command_processing.c:127: data_byte = i2c_eeprom_read(address);
      0022A9 8E 82            [24] 1166 	mov	dpl,r6
      0022AB 8F 83            [24] 1167 	mov	dph,r7
      0022AD C0 07            [24] 1168 	push	ar7
      0022AF C0 06            [24] 1169 	push	ar6
      0022B1 C0 05            [24] 1170 	push	ar5
      0022B3 C0 04            [24] 1171 	push	ar4
      0022B5 C0 03            [24] 1172 	push	ar3
      0022B7 12 25 77         [24] 1173 	lcall	_i2c_eeprom_read
      0022BA AA 82            [24] 1174 	mov	r2,dpl
      0022BC D0 03            [24] 1175 	pop	ar3
      0022BE D0 04            [24] 1176 	pop	ar4
      0022C0 D0 05            [24] 1177 	pop	ar5
                           000260  1178 	C$command_processing.c$128$2_1$107 ==.
                                   1179 ;	command_processing.c:128: print_hex_number(data_byte, 2);
      0022C2 8A 00            [24] 1180 	mov	ar0,r2
      0022C4 79 00            [12] 1181 	mov	r1,#0x00
      0022C6 7A 00            [12] 1182 	mov	r2,#0x00
      0022C8 7D 00            [12] 1183 	mov	r5,#0x00
      0022CA 90 04 5A         [24] 1184 	mov	dptr,#_print_hex_number_PARM_2
      0022CD 74 02            [12] 1185 	mov	a,#0x02
      0022CF F0               [24] 1186 	movx	@dptr,a
      0022D0 88 82            [24] 1187 	mov	dpl,r0
      0022D2 89 83            [24] 1188 	mov	dph,r1
      0022D4 8A F0            [24] 1189 	mov	b,r2
      0022D6 ED               [12] 1190 	mov	a,r5
      0022D7 C0 05            [24] 1191 	push	ar5
      0022D9 C0 04            [24] 1192 	push	ar4
      0022DB C0 03            [24] 1193 	push	ar3
      0022DD 12 2B 68         [24] 1194 	lcall	_print_hex_number
      0022E0 D0 03            [24] 1195 	pop	ar3
      0022E2 D0 04            [24] 1196 	pop	ar4
      0022E4 D0 05            [24] 1197 	pop	ar5
      0022E6 D0 06            [24] 1198 	pop	ar6
      0022E8 D0 07            [24] 1199 	pop	ar7
                           000288  1200 	C$command_processing.c$130$2_1$107 ==.
                                   1201 ;	command_processing.c:130: address++;
      0022EA 0E               [12] 1202 	inc	r6
      0022EB BE 00 01         [24] 1203 	cjne	r6,#0x00,00124$
      0022EE 0F               [12] 1204 	inc	r7
      0022EF                       1205 00124$:
                           00028D  1206 	C$command_processing.c$131$2_1$107 ==.
                                   1207 ;	command_processing.c:131: count++;
      0022EF 0B               [12] 1208 	inc	r3
      0022F0 D0 05            [24] 1209 	pop	ar5
      0022F2 D0 04            [24] 1210 	pop	ar4
      0022F4 02 22 22         [24] 1211 	ljmp	00103$
      0022F7                       1212 00105$:
                           000295  1213 	C$command_processing.c$133$1_1$106 ==.
                                   1214 ;	command_processing.c:133: printf("\033[0m\r\n");
      0022F7 74 8A            [12] 1215 	mov	a,#___str_12
      0022F9 C0 E0            [24] 1216 	push	acc
      0022FB 74 3E            [12] 1217 	mov	a,#(___str_12 >> 8)
      0022FD C0 E0            [24] 1218 	push	acc
      0022FF 74 80            [12] 1219 	mov	a,#0x80
      002301 C0 E0            [24] 1220 	push	acc
      002303 12 32 1F         [24] 1221 	lcall	_printf
      002306 15 81            [12] 1222 	dec	sp
      002308 15 81            [12] 1223 	dec	sp
      00230A 15 81            [12] 1224 	dec	sp
                           0002AA  1225 	C$command_processing.c$134$1_1$106 ==.
                                   1226 ;	command_processing.c:134: return;
                           0002AA  1227 	C$command_processing.c$135$1_1$105 ==.
                                   1228 ;	command_processing.c:135: }
                           0002AA  1229 	C$command_processing.c$135$1_1$105 ==.
                           0002AA  1230 	XG$EEPROM_hexump$0$0 ==.
      00230C 22               [24] 1231 	ret
                                   1232 ;------------------------------------------------------------
                                   1233 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   1234 ;------------------------------------------------------------
                                   1235 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65536_110'
                                   1236 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65537_113'
                                   1237 ;------------------------------------------------------------
                           0002AB  1238 	G$handler_EEPROM_hexdump$0$0 ==.
                           0002AB  1239 	C$command_processing.c$138$1_1$110 ==.
                                   1240 ;	command_processing.c:138: void handler_EEPROM_hexdump(void)
                                   1241 ;	-----------------------------------------
                                   1242 ;	 function handler_EEPROM_hexdump
                                   1243 ;	-----------------------------------------
      00230D                       1244 _handler_EEPROM_hexdump:
                           0002AB  1245 	C$command_processing.c$141$1_0$110 ==.
                                   1246 ;	command_processing.c:141: printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
      00230D 74 91            [12] 1247 	mov	a,#___str_13
      00230F C0 E0            [24] 1248 	push	acc
      002311 74 3E            [12] 1249 	mov	a,#(___str_13 >> 8)
      002313 C0 E0            [24] 1250 	push	acc
      002315 12 30 A8         [24] 1251 	lcall	_printf_tiny
      002318 15 81            [12] 1252 	dec	sp
      00231A 15 81            [12] 1253 	dec	sp
                           0002BA  1254 	C$command_processing.c$142$1_0$110 ==.
                                   1255 ;	command_processing.c:142: start_addr = parse_user_input(HEX_BASE);
      00231C 75 82 10         [24] 1256 	mov	dpl,#0x10
      00231F 12 29 4D         [24] 1257 	lcall	_parse_user_input
      002322 AE 82            [24] 1258 	mov	r6,dpl
      002324 AF 83            [24] 1259 	mov	r7,dph
                           0002C4  1260 	C$command_processing.c$144$1_0$110 ==.
                                   1261 ;	command_processing.c:144: if(start_addr >= 0 && start_addr <= ADDR_MAX)
      002326 8E 04            [24] 1262 	mov	ar4,r6
      002328 8F 05            [24] 1263 	mov	ar5,r7
      00232A C3               [12] 1264 	clr	c
      00232B 74 FF            [12] 1265 	mov	a,#0xff
      00232D 9C               [12] 1266 	subb	a,r4
      00232E 74 07            [12] 1267 	mov	a,#0x07
      002330 9D               [12] 1268 	subb	a,r5
      002331 50 17            [24] 1269 	jnc	00103$
                           0002D1  1270 	C$command_processing.c$149$2_0$112 ==.
                                   1271 ;	command_processing.c:149: printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      002333 74 BD            [12] 1272 	mov	a,#___str_14
      002335 C0 E0            [24] 1273 	push	acc
      002337 74 3E            [12] 1274 	mov	a,#(___str_14 >> 8)
      002339 C0 E0            [24] 1275 	push	acc
      00233B 74 80            [12] 1276 	mov	a,#0x80
      00233D C0 E0            [24] 1277 	push	acc
      00233F 12 32 1F         [24] 1278 	lcall	_printf
      002342 15 81            [12] 1279 	dec	sp
      002344 15 81            [12] 1280 	dec	sp
      002346 15 81            [12] 1281 	dec	sp
                           0002E6  1282 	C$command_processing.c$150$2_0$112 ==.
                                   1283 ;	command_processing.c:150: return;
      002348 80 54            [24] 1284 	sjmp	00109$
      00234A                       1285 00103$:
                           0002E8  1286 	C$command_processing.c$155$1_1$113 ==.
                                   1287 ;	command_processing.c:155: printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
      00234A C0 07            [24] 1288 	push	ar7
      00234C C0 06            [24] 1289 	push	ar6
      00234E 74 15            [12] 1290 	mov	a,#___str_15
      002350 C0 E0            [24] 1291 	push	acc
      002352 74 3F            [12] 1292 	mov	a,#(___str_15 >> 8)
      002354 C0 E0            [24] 1293 	push	acc
      002356 12 30 A8         [24] 1294 	lcall	_printf_tiny
      002359 15 81            [12] 1295 	dec	sp
      00235B 15 81            [12] 1296 	dec	sp
                           0002FB  1297 	C$command_processing.c$156$1_1$113 ==.
                                   1298 ;	command_processing.c:156: end_addr = parse_user_input(HEX_BASE);
      00235D 75 82 10         [24] 1299 	mov	dpl,#0x10
      002360 12 29 4D         [24] 1300 	lcall	_parse_user_input
      002363 AC 82            [24] 1301 	mov	r4,dpl
      002365 AD 83            [24] 1302 	mov	r5,dph
      002367 D0 06            [24] 1303 	pop	ar6
      002369 D0 07            [24] 1304 	pop	ar7
                           000309  1305 	C$command_processing.c$158$1_1$113 ==.
                                   1306 ;	command_processing.c:158: if(end_addr >= 0 && end_addr <= ADDR_MAX)
      00236B 8C 02            [24] 1307 	mov	ar2,r4
      00236D 8D 03            [24] 1308 	mov	ar3,r5
      00236F C3               [12] 1309 	clr	c
      002370 74 FF            [12] 1310 	mov	a,#0xff
      002372 9A               [12] 1311 	subb	a,r2
      002373 74 07            [12] 1312 	mov	a,#0x07
      002375 9B               [12] 1313 	subb	a,r3
      002376 50 17            [24] 1314 	jnc	00107$
                           000316  1315 	C$command_processing.c$163$2_1$115 ==.
                                   1316 ;	command_processing.c:163: printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      002378 74 3F            [12] 1317 	mov	a,#___str_16
      00237A C0 E0            [24] 1318 	push	acc
      00237C 74 3F            [12] 1319 	mov	a,#(___str_16 >> 8)
      00237E C0 E0            [24] 1320 	push	acc
      002380 74 80            [12] 1321 	mov	a,#0x80
      002382 C0 E0            [24] 1322 	push	acc
      002384 12 32 1F         [24] 1323 	lcall	_printf
      002387 15 81            [12] 1324 	dec	sp
      002389 15 81            [12] 1325 	dec	sp
      00238B 15 81            [12] 1326 	dec	sp
                           00032B  1327 	C$command_processing.c$164$2_1$115 ==.
                                   1328 ;	command_processing.c:164: return;
      00238D 80 0F            [24] 1329 	sjmp	00109$
      00238F                       1330 00107$:
                           00032D  1331 	C$command_processing.c$167$1_1$113 ==.
                                   1332 ;	command_processing.c:167: EEPROM_hexump(start_addr,end_addr);
      00238F 90 04 00         [24] 1333 	mov	dptr,#_EEPROM_hexump_PARM_2
      002392 EC               [12] 1334 	mov	a,r4
      002393 F0               [24] 1335 	movx	@dptr,a
      002394 ED               [12] 1336 	mov	a,r5
      002395 A3               [24] 1337 	inc	dptr
      002396 F0               [24] 1338 	movx	@dptr,a
      002397 8E 82            [24] 1339 	mov	dpl,r6
      002399 8F 83            [24] 1340 	mov	dph,r7
      00239B 12 21 F6         [24] 1341 	lcall	_EEPROM_hexump
      00239E                       1342 00109$:
                           00033C  1343 	C$command_processing.c$168$1_1$110 ==.
                                   1344 ;	command_processing.c:168: }
                           00033C  1345 	C$command_processing.c$168$1_1$110 ==.
                           00033C  1346 	XG$handler_EEPROM_hexdump$0$0 ==.
      00239E 22               [24] 1347 	ret
                                   1348 ;------------------------------------------------------------
                                   1349 ;Allocation info for local variables in function 'fill_EEPROM_with_ff'
                                   1350 ;------------------------------------------------------------
                                   1351 ;i                         Allocated with name '_fill_EEPROM_with_ff_i_65536_117'
                                   1352 ;j                         Allocated with name '_fill_EEPROM_with_ff_j_262144_120'
                                   1353 ;------------------------------------------------------------
                           00033D  1354 	G$fill_EEPROM_with_ff$0$0 ==.
                           00033D  1355 	C$command_processing.c$170$1_1$117 ==.
                                   1356 ;	command_processing.c:170: void fill_EEPROM_with_ff(void)
                                   1357 ;	-----------------------------------------
                                   1358 ;	 function fill_EEPROM_with_ff
                                   1359 ;	-----------------------------------------
      00239F                       1360 _fill_EEPROM_with_ff:
                           00033D  1361 	C$command_processing.c$173$1_0$117 ==.
                                   1362 ;	command_processing.c:173: printf_tiny("\033[1;33m\n\rFlashing EEPROM with 0xFF data at all addresses!!\r\nPLEASE WAIT!!\n\r");
      00239F 74 95            [12] 1363 	mov	a,#___str_17
      0023A1 C0 E0            [24] 1364 	push	acc
      0023A3 74 3F            [12] 1365 	mov	a,#(___str_17 >> 8)
      0023A5 C0 E0            [24] 1366 	push	acc
      0023A7 12 30 A8         [24] 1367 	lcall	_printf_tiny
      0023AA 15 81            [12] 1368 	dec	sp
      0023AC 15 81            [12] 1369 	dec	sp
                           00034C  1370 	C$command_processing.c$175$1_0$117 ==.
                                   1371 ;	command_processing.c:175: for (i = 0x000; i <= 0x7FF; i++)
      0023AE 7E 00            [12] 1372 	mov	r6,#0x00
      0023B0 7F 00            [12] 1373 	mov	r7,#0x00
                           000350  1374 	C$command_processing.c$178$1_0$117 ==.
                                   1375 ;	command_processing.c:178: for(int j=0;j<1000;j++);
      0023B2                       1376 00111$:
      0023B2 7C 00            [12] 1377 	mov	r4,#0x00
      0023B4 7D 00            [12] 1378 	mov	r5,#0x00
      0023B6                       1379 00104$:
      0023B6 C3               [12] 1380 	clr	c
      0023B7 EC               [12] 1381 	mov	a,r4
      0023B8 94 E8            [12] 1382 	subb	a,#0xe8
      0023BA ED               [12] 1383 	mov	a,r5
      0023BB 64 80            [12] 1384 	xrl	a,#0x80
      0023BD 94 83            [12] 1385 	subb	a,#0x83
      0023BF 50 07            [24] 1386 	jnc	00101$
      0023C1 0C               [12] 1387 	inc	r4
      0023C2 BC 00 F1         [24] 1388 	cjne	r4,#0x00,00104$
      0023C5 0D               [12] 1389 	inc	r5
      0023C6 80 EE            [24] 1390 	sjmp	00104$
      0023C8                       1391 00101$:
                           000366  1392 	C$command_processing.c$179$3_0$119 ==.
                                   1393 ;	command_processing.c:179: i2c_eeprom_write(i, 0xFF);
      0023C8 90 04 08         [24] 1394 	mov	dptr,#_i2c_eeprom_write_PARM_2
      0023CB 74 FF            [12] 1395 	mov	a,#0xff
      0023CD F0               [24] 1396 	movx	@dptr,a
      0023CE 8E 82            [24] 1397 	mov	dpl,r6
      0023D0 8F 83            [24] 1398 	mov	dph,r7
      0023D2 C0 07            [24] 1399 	push	ar7
      0023D4 C0 06            [24] 1400 	push	ar6
      0023D6 12 25 14         [24] 1401 	lcall	_i2c_eeprom_write
      0023D9 D0 06            [24] 1402 	pop	ar6
      0023DB D0 07            [24] 1403 	pop	ar7
                           00037B  1404 	C$command_processing.c$175$2_0$118 ==.
                                   1405 ;	command_processing.c:175: for (i = 0x000; i <= 0x7FF; i++)
      0023DD 0E               [12] 1406 	inc	r6
      0023DE BE 00 01         [24] 1407 	cjne	r6,#0x00,00130$
      0023E1 0F               [12] 1408 	inc	r7
      0023E2                       1409 00130$:
      0023E2 8E 04            [24] 1410 	mov	ar4,r6
      0023E4 8F 05            [24] 1411 	mov	ar5,r7
      0023E6 C3               [12] 1412 	clr	c
      0023E7 74 FF            [12] 1413 	mov	a,#0xff
      0023E9 9C               [12] 1414 	subb	a,r4
      0023EA 74 07            [12] 1415 	mov	a,#0x07
      0023EC 9D               [12] 1416 	subb	a,r5
      0023ED 50 C3            [24] 1417 	jnc	00111$
                           00038D  1418 	C$command_processing.c$181$1_0$117 ==.
                                   1419 ;	command_processing.c:181: printf_tiny("\033[1;33m\n\rEEPROM filled with 0xFF\r\n");
      0023EF 74 E1            [12] 1420 	mov	a,#___str_18
      0023F1 C0 E0            [24] 1421 	push	acc
      0023F3 74 3F            [12] 1422 	mov	a,#(___str_18 >> 8)
      0023F5 C0 E0            [24] 1423 	push	acc
      0023F7 12 30 A8         [24] 1424 	lcall	_printf_tiny
      0023FA 15 81            [12] 1425 	dec	sp
      0023FC 15 81            [12] 1426 	dec	sp
                           00039C  1427 	C$command_processing.c$183$1_0$117 ==.
                                   1428 ;	command_processing.c:183: }
                           00039C  1429 	C$command_processing.c$183$1_0$117 ==.
                           00039C  1430 	XG$fill_EEPROM_with_ff$0$0 ==.
      0023FE 22               [24] 1431 	ret
                                   1432 	.area CSEG    (CODE)
                                   1433 	.area CONST   (CODE)
                           000000  1434 Fcommand_processing$__str_0$0_0$0 == .
                                   1435 	.area CONST   (CODE)
      003C67                       1436 ___str_0:
      003C67 1B                    1437 	.db 0x1b
      003C68 5B 31 3B 33 33 6D     1438 	.ascii "[1;33m"
      003C6E 0A                    1439 	.db 0x0a
      003C6F 0D                    1440 	.db 0x0d
      003C70 57 72 69 74 69 6E 67  1441 	.ascii "Writing to EEPROM !!"
             20 74 6F 20 45 45 50
             52 4F 4D 20 21 21
      003C84 0D                    1442 	.db 0x0d
      003C85 0A                    1443 	.db 0x0a
      003C86 00                    1444 	.db 0x00
                                   1445 	.area CSEG    (CODE)
                           00039D  1446 Fcommand_processing$__str_1$0_0$0 == .
                                   1447 	.area CONST   (CODE)
      003C87                       1448 ___str_1:
      003C87 1B                    1449 	.db 0x1b
      003C88 5B 31 3B 33 33 6D     1450 	.ascii "[1;33m"
      003C8E 0A                    1451 	.db 0x0a
      003C8F 0D                    1452 	.db 0x0d
      003C90 45 6E 74 65 72 20 44  1453 	.ascii "Enter Data to put into EEPROM"
             61 74 61 20 74 6F 20
             70 75 74 20 69 6E 74
             6F 20 45 45 50 52 4F
             4D
      003CAD 0D                    1454 	.db 0x0d
      003CAE 0A                    1455 	.db 0x0a
      003CAF 09                    1456 	.db 0x09
      003CB0 00                    1457 	.db 0x00
                                   1458 	.area CSEG    (CODE)
                           00039D  1459 Fcommand_processing$__str_2$0_0$0 == .
                                   1460 	.area CONST   (CODE)
      003CB1                       1461 ___str_2:
      003CB1 1B                    1462 	.db 0x1b
      003CB2 5B 31 3B 33 31 6D     1463 	.ascii "[1;31m"
      003CB8 0A                    1464 	.db 0x0a
      003CB9 0D                    1465 	.db 0x0d
      003CBA 49 6E 76 61 6C 69 64  1466 	.ascii "Invalid Data Range!! "
             20 44 61 74 61 20 52
             61 6E 67 65 21 21 20
      003CCF 0A                    1467 	.db 0x0a
      003CD0 0D                    1468 	.db 0x0d
      003CD1 44 61 74 61 20 68 61  1469 	.ascii "Data has to be between 0x00 to 0xFF "
             73 20 74 6F 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 78 30 30 20
             74 6F 20 30 78 46 46
             20
      003CF5 1B                    1470 	.db 0x1b
      003CF6 5B 30 6D              1471 	.ascii "[0m"
      003CF9 0D                    1472 	.db 0x0d
      003CFA 0A                    1473 	.db 0x0a
      003CFB 00                    1474 	.db 0x00
                                   1475 	.area CSEG    (CODE)
                           00039D  1476 Fcommand_processing$__str_3$0_0$0 == .
                                   1477 	.area CONST   (CODE)
      003CFC                       1478 ___str_3:
      003CFC 0D                    1479 	.db 0x0d
      003CFD 0A                    1480 	.db 0x0a
      003CFE 00                    1481 	.db 0x00
                                   1482 	.area CSEG    (CODE)
                           00039D  1483 Fcommand_processing$__str_4$0_0$0 == .
                                   1484 	.area CONST   (CODE)
      003CFF                       1485 ___str_4:
      003CFF 1B                    1486 	.db 0x1b
      003D00 5B 31 3B 33 33 6D     1487 	.ascii "[1;33m"
      003D06 0A                    1488 	.db 0x0a
      003D07 0D                    1489 	.db 0x0d
      003D08 45 6E 74 65 72 20 41  1490 	.ascii "Enter Address to put into EEPROM"
             64 64 72 65 73 73 20
             74 6F 20 70 75 74 20
             69 6E 74 6F 20 45 45
             50 52 4F 4D
      003D28 0D                    1491 	.db 0x0d
      003D29 0A                    1492 	.db 0x0a
      003D2A 00                    1493 	.db 0x00
                                   1494 	.area CSEG    (CODE)
                           00039D  1495 Fcommand_processing$__str_5$0_0$0 == .
                                   1496 	.area CONST   (CODE)
      003D2B                       1497 ___str_5:
      003D2B 1B                    1498 	.db 0x1b
      003D2C 5B 31 3B 33 31 6D     1499 	.ascii "[1;31m"
      003D32 0A                    1500 	.db 0x0a
      003D33 0D                    1501 	.db 0x0d
      003D34 49 6E 76 61 6C 69 64  1502 	.ascii "Invalid Address Range!!"
             20 41 64 64 72 65 73
             73 20 52 61 6E 67 65
             21 21
      003D4B 0A                    1503 	.db 0x0a
      003D4C 0D                    1504 	.db 0x0d
      003D4D 41 64 64 72 65 73 73  1505 	.ascii "Address has to be between 0x000 to 0x7FF"
             20 68 61 73 20 74 6F
             20 62 65 20 62 65 74
             77 65 65 6E 20 30 78
             30 30 30 20 74 6F 20
             30 78 37 46 46
      003D75 1B                    1506 	.db 0x1b
      003D76 5B 30 6D              1507 	.ascii "[0m"
      003D79 0D                    1508 	.db 0x0d
      003D7A 0A                    1509 	.db 0x0a
      003D7B 00                    1510 	.db 0x00
                                   1511 	.area CSEG    (CODE)
                           00039D  1512 Fcommand_processing$__str_6$0_0$0 == .
                                   1513 	.area CONST   (CODE)
      003D7C                       1514 ___str_6:
      003D7C 1B                    1515 	.db 0x1b
      003D7D 5B 31 3B 33 33 6D     1516 	.ascii "[1;33m"
      003D83 0A                    1517 	.db 0x0a
      003D84 0D                    1518 	.db 0x0d
      003D85 46 69 6E 69 73 68 65  1519 	.ascii "Finished writting to EEPROM !!"
             64 20 77 72 69 74 74
             69 6E 67 20 74 6F 20
             45 45 50 52 4F 4D 20
             21 21
      003DA3 0D                    1520 	.db 0x0d
      003DA4 0A                    1521 	.db 0x0a
      003DA5 00                    1522 	.db 0x00
                                   1523 	.area CSEG    (CODE)
                           00039D  1524 Fcommand_processing$__str_7$0_0$0 == .
                                   1525 	.area CONST   (CODE)
      003DA6                       1526 ___str_7:
      003DA6 1B                    1527 	.db 0x1b
      003DA7 5B 31 3B 33 33 6D     1528 	.ascii "[1;33m"
      003DAD 0A                    1529 	.db 0x0a
      003DAE 0D                    1530 	.db 0x0d
      003DAF 52 65 61 64 69 6E 67  1531 	.ascii "Reading from EEPROM !!"
             20 66 72 6F 6D 20 45
             45 50 52 4F 4D 20 21
             21
      003DC5 0D                    1532 	.db 0x0d
      003DC6 0A                    1533 	.db 0x0a
      003DC7 00                    1534 	.db 0x00
                                   1535 	.area CSEG    (CODE)
                           00039D  1536 Fcommand_processing$__str_8$0_0$0 == .
                                   1537 	.area CONST   (CODE)
      003DC8                       1538 ___str_8:
      003DC8 1B                    1539 	.db 0x1b
      003DC9 5B 31 3B 33 31 6D     1540 	.ascii "[1;31m"
      003DCF 0A                    1541 	.db 0x0a
      003DD0 0D                    1542 	.db 0x0d
      003DD1 49 6E 76 61 6C 69 64  1543 	.ascii "Invalid Adress Range!!"
             20 41 64 72 65 73 73
             20 52 61 6E 67 65 21
             21
      003DE7 0A                    1544 	.db 0x0a
      003DE8 0D                    1545 	.db 0x0d
      003DE9 20 41 64 64 72 65 73  1546 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      003E12 1B                    1547 	.db 0x1b
      003E13 5B 30 6D              1548 	.ascii "[0m"
      003E16 0D                    1549 	.db 0x0d
      003E17 0A                    1550 	.db 0x0a
      003E18 00                    1551 	.db 0x00
                                   1552 	.area CSEG    (CODE)
                           00039D  1553 Fcommand_processing$__str_9$0_0$0 == .
                                   1554 	.area CONST   (CODE)
      003E19                       1555 ___str_9:
      003E19 1B                    1556 	.db 0x1b
      003E1A 5B 31 3B 33 33 6D     1557 	.ascii "[1;33m"
      003E20 0A                    1558 	.db 0x0a
      003E21 0D                    1559 	.db 0x0d
      003E22 52 65 61 64 69 6E 67  1560 	.ascii "Reading from EEPROM Completed!!"
             20 66 72 6F 6D 20 45
             45 50 52 4F 4D 20 43
             6F 6D 70 6C 65 74 65
             64 21 21
      003E41 0D                    1561 	.db 0x0d
      003E42 0A                    1562 	.db 0x0a
      003E43 00                    1563 	.db 0x00
                                   1564 	.area CSEG    (CODE)
                           00039D  1565 Fcommand_processing$__str_10$0_0$0 == .
                                   1566 	.area CONST   (CODE)
      003E44                       1567 ___str_10:
      003E44 0A                    1568 	.db 0x0a
      003E45 0D                    1569 	.db 0x0d
      003E46 44 61 74 61 20 3D 20  1570 	.ascii "Data = %x present at Location = 0%x "
             25 78 20 70 72 65 73
             65 6E 74 20 61 74 20
             4C 6F 63 61 74 69 6F
             6E 20 3D 20 30 25 78
             20
      003E6A 0A                    1571 	.db 0x0a
      003E6B 0D                    1572 	.db 0x0d
      003E6C 00                    1573 	.db 0x00
                                   1574 	.area CSEG    (CODE)
                           00039D  1575 Fcommand_processing$__str_11$0_0$0 == .
                                   1576 	.area CONST   (CODE)
      003E6D                       1577 ___str_11:
      003E6D 1B                    1578 	.db 0x1b
      003E6E 5B 31 3B 33 34 6D     1579 	.ascii "[1;34m"
      003E74 0A                    1580 	.db 0x0a
      003E75 0D                    1581 	.db 0x0d
      003E76 49 32 43 20 45 45 50  1582 	.ascii "I2C EEPROM DUMP!!"
             52 4F 4D 20 44 55 4D
             50 21 21
      003E87 0D                    1583 	.db 0x0d
      003E88 0A                    1584 	.db 0x0a
      003E89 00                    1585 	.db 0x00
                                   1586 	.area CSEG    (CODE)
                           00039D  1587 Fcommand_processing$__str_12$0_0$0 == .
                                   1588 	.area CONST   (CODE)
      003E8A                       1589 ___str_12:
      003E8A 1B                    1590 	.db 0x1b
      003E8B 5B 30 6D              1591 	.ascii "[0m"
      003E8E 0D                    1592 	.db 0x0d
      003E8F 0A                    1593 	.db 0x0a
      003E90 00                    1594 	.db 0x00
                                   1595 	.area CSEG    (CODE)
                           00039D  1596 Fcommand_processing$__str_13$0_0$0 == .
                                   1597 	.area CONST   (CODE)
      003E91                       1598 ___str_13:
      003E91 1B                    1599 	.db 0x1b
      003E92 5B 31 3B 33 33 6D     1600 	.ascii "[1;33m"
      003E98 0A                    1601 	.db 0x0a
      003E99 0D                    1602 	.db 0x0d
      003E9A 45 6E 74 65 72 20 53  1603 	.ascii "Enter Start Address for HEX Dump"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70
      003EBA 0D                    1604 	.db 0x0d
      003EBB 0A                    1605 	.db 0x0a
      003EBC 00                    1606 	.db 0x00
                                   1607 	.area CSEG    (CODE)
                           00039D  1608 Fcommand_processing$__str_14$0_0$0 == .
                                   1609 	.area CONST   (CODE)
      003EBD                       1610 ___str_14:
      003EBD 1B                    1611 	.db 0x1b
      003EBE 5B 31 3B 33 31 6D     1612 	.ascii "[1;31m"
      003EC4 0A                    1613 	.db 0x0a
      003EC5 0D                    1614 	.db 0x0d
      003EC6 49 6E 76 61 6C 69 64  1615 	.ascii "Invalid Start Address Range!!"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             20 52 61 6E 67 65 21
             21
      003EE3 0A                    1616 	.db 0x0a
      003EE4 0D                    1617 	.db 0x0d
      003EE5 20 41 64 64 72 65 73  1618 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      003F0E 1B                    1619 	.db 0x1b
      003F0F 5B 30 6D              1620 	.ascii "[0m"
      003F12 0D                    1621 	.db 0x0d
      003F13 0A                    1622 	.db 0x0a
      003F14 00                    1623 	.db 0x00
                                   1624 	.area CSEG    (CODE)
                           00039D  1625 Fcommand_processing$__str_15$0_0$0 == .
                                   1626 	.area CONST   (CODE)
      003F15                       1627 ___str_15:
      003F15 1B                    1628 	.db 0x1b
      003F16 5B 31 3B 33 33 6D     1629 	.ascii "[1;33m"
      003F1C 0A                    1630 	.db 0x0a
      003F1D 0D                    1631 	.db 0x0d
      003F1E 45 6E 74 65 72 20 45  1632 	.ascii "Enter End Address for HEX Dump"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70
      003F3C 0D                    1633 	.db 0x0d
      003F3D 0A                    1634 	.db 0x0a
      003F3E 00                    1635 	.db 0x00
                                   1636 	.area CSEG    (CODE)
                           00039D  1637 Fcommand_processing$__str_16$0_0$0 == .
                                   1638 	.area CONST   (CODE)
      003F3F                       1639 ___str_16:
      003F3F 1B                    1640 	.db 0x1b
      003F40 5B 31 3B 33 31 6D     1641 	.ascii "[1;31m"
      003F46 0A                    1642 	.db 0x0a
      003F47 0D                    1643 	.db 0x0d
      003F48 49 6E 76 61 6C 69 64  1644 	.ascii "Invalid End Address Range!!"
             20 45 6E 64 20 41 64
             64 72 65 73 73 20 52
             61 6E 67 65 21 21
      003F63 0A                    1645 	.db 0x0a
      003F64 0D                    1646 	.db 0x0d
      003F65 20 41 64 64 72 65 73  1647 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      003F8E 1B                    1648 	.db 0x1b
      003F8F 5B 30 6D              1649 	.ascii "[0m"
      003F92 0D                    1650 	.db 0x0d
      003F93 0A                    1651 	.db 0x0a
      003F94 00                    1652 	.db 0x00
                                   1653 	.area CSEG    (CODE)
                           00039D  1654 Fcommand_processing$__str_17$0_0$0 == .
                                   1655 	.area CONST   (CODE)
      003F95                       1656 ___str_17:
      003F95 1B                    1657 	.db 0x1b
      003F96 5B 31 3B 33 33 6D     1658 	.ascii "[1;33m"
      003F9C 0A                    1659 	.db 0x0a
      003F9D 0D                    1660 	.db 0x0d
      003F9E 46 6C 61 73 68 69 6E  1661 	.ascii "Flashing EEPROM with 0xFF data at all addresses!!"
             67 20 45 45 50 52 4F
             4D 20 77 69 74 68 20
             30 78 46 46 20 64 61
             74 61 20 61 74 20 61
             6C 6C 20 61 64 64 72
             65 73 73 65 73 21 21
      003FCF 0D                    1662 	.db 0x0d
      003FD0 0A                    1663 	.db 0x0a
      003FD1 50 4C 45 41 53 45 20  1664 	.ascii "PLEASE WAIT!!"
             57 41 49 54 21 21
      003FDE 0A                    1665 	.db 0x0a
      003FDF 0D                    1666 	.db 0x0d
      003FE0 00                    1667 	.db 0x00
                                   1668 	.area CSEG    (CODE)
                           00039D  1669 Fcommand_processing$__str_18$0_0$0 == .
                                   1670 	.area CONST   (CODE)
      003FE1                       1671 ___str_18:
      003FE1 1B                    1672 	.db 0x1b
      003FE2 5B 31 3B 33 33 6D     1673 	.ascii "[1;33m"
      003FE8 0A                    1674 	.db 0x0a
      003FE9 0D                    1675 	.db 0x0d
      003FEA 45 45 50 52 4F 4D 20  1676 	.ascii "EEPROM filled with 0xFF"
             66 69 6C 6C 65 64 20
             77 69 74 68 20 30 78
             46 46
      004001 0D                    1677 	.db 0x0d
      004002 0A                    1678 	.db 0x0a
      004003 00                    1679 	.db 0x00
                                   1680 	.area CSEG    (CODE)
                                   1681 	.area XINIT   (CODE)
                                   1682 	.area CABS    (ABS,CODE)
