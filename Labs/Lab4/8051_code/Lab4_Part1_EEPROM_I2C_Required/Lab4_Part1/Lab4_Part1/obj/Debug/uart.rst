                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _print_UI
                                     12 	.globl _print_colored
                                     13 	.globl _print_hex_number
                                     14 	.globl _parse_user_input
                                     15 	.globl _char_to_int
                                     16 	.globl _int_to_char
                                     17 	.globl _initialize_uart_timer
                                     18 	.globl _strchr
                                     19 	.globl _putchar
                                     20 	.globl _getchar
                                     21 	.globl _printf
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _TXD0
                                     98 	.globl _RXD0
                                     99 	.globl _BREG_F7
                                    100 	.globl _BREG_F6
                                    101 	.globl _BREG_F5
                                    102 	.globl _BREG_F4
                                    103 	.globl _BREG_F3
                                    104 	.globl _BREG_F2
                                    105 	.globl _BREG_F1
                                    106 	.globl _BREG_F0
                                    107 	.globl _P5_7
                                    108 	.globl _P5_6
                                    109 	.globl _P5_5
                                    110 	.globl _P5_4
                                    111 	.globl _P5_3
                                    112 	.globl _P5_2
                                    113 	.globl _P5_1
                                    114 	.globl _P5_0
                                    115 	.globl _P4_7
                                    116 	.globl _P4_6
                                    117 	.globl _P4_5
                                    118 	.globl _P4_4
                                    119 	.globl _P4_3
                                    120 	.globl _P4_2
                                    121 	.globl _P4_1
                                    122 	.globl _P4_0
                                    123 	.globl _PX0L
                                    124 	.globl _PT0L
                                    125 	.globl _PX1L
                                    126 	.globl _PT1L
                                    127 	.globl _PSL
                                    128 	.globl _PT2L
                                    129 	.globl _PPCL
                                    130 	.globl _EC
                                    131 	.globl _CCF0
                                    132 	.globl _CCF1
                                    133 	.globl _CCF2
                                    134 	.globl _CCF3
                                    135 	.globl _CCF4
                                    136 	.globl _CR
                                    137 	.globl _CF
                                    138 	.globl _TF2
                                    139 	.globl _EXF2
                                    140 	.globl _RCLK
                                    141 	.globl _TCLK
                                    142 	.globl _EXEN2
                                    143 	.globl _TR2
                                    144 	.globl _C_T2
                                    145 	.globl _CP_RL2
                                    146 	.globl _T2CON_7
                                    147 	.globl _T2CON_6
                                    148 	.globl _T2CON_5
                                    149 	.globl _T2CON_4
                                    150 	.globl _T2CON_3
                                    151 	.globl _T2CON_2
                                    152 	.globl _T2CON_1
                                    153 	.globl _T2CON_0
                                    154 	.globl _PT2
                                    155 	.globl _ET2
                                    156 	.globl _B
                                    157 	.globl _ACC
                                    158 	.globl _PSW
                                    159 	.globl _IP
                                    160 	.globl _P3
                                    161 	.globl _IE
                                    162 	.globl _P2
                                    163 	.globl _SBUF
                                    164 	.globl _SCON
                                    165 	.globl _P1
                                    166 	.globl _TH1
                                    167 	.globl _TH0
                                    168 	.globl _TL1
                                    169 	.globl _TL0
                                    170 	.globl _TMOD
                                    171 	.globl _TCON
                                    172 	.globl _PCON
                                    173 	.globl _DPH
                                    174 	.globl _DPL
                                    175 	.globl _SP
                                    176 	.globl _P0
                                    177 	.globl _SBUF0
                                    178 	.globl _DP0L
                                    179 	.globl _DP0H
                                    180 	.globl _EECON
                                    181 	.globl _KBF
                                    182 	.globl _KBE
                                    183 	.globl _KBLS
                                    184 	.globl _BRL
                                    185 	.globl _BDRCON
                                    186 	.globl _T2MOD
                                    187 	.globl _SPDAT
                                    188 	.globl _SPSTA
                                    189 	.globl _SPCON
                                    190 	.globl _SADEN
                                    191 	.globl _SADDR
                                    192 	.globl _WDTPRG
                                    193 	.globl _WDTRST
                                    194 	.globl _P5
                                    195 	.globl _P4
                                    196 	.globl _IPH1
                                    197 	.globl _IPL1
                                    198 	.globl _IPH0
                                    199 	.globl _IPL0
                                    200 	.globl _IEN1
                                    201 	.globl _IEN0
                                    202 	.globl _CMOD
                                    203 	.globl _CL
                                    204 	.globl _CH
                                    205 	.globl _CCON
                                    206 	.globl _CCAPM4
                                    207 	.globl _CCAPM3
                                    208 	.globl _CCAPM2
                                    209 	.globl _CCAPM1
                                    210 	.globl _CCAPM0
                                    211 	.globl _CCAP4L
                                    212 	.globl _CCAP3L
                                    213 	.globl _CCAP2L
                                    214 	.globl _CCAP1L
                                    215 	.globl _CCAP0L
                                    216 	.globl _CCAP4H
                                    217 	.globl _CCAP3H
                                    218 	.globl _CCAP2H
                                    219 	.globl _CCAP1H
                                    220 	.globl _CCAP0H
                                    221 	.globl _CKCON1
                                    222 	.globl _CKCON0
                                    223 	.globl _CKRL
                                    224 	.globl _AUXR1
                                    225 	.globl _AUXR
                                    226 	.globl _TH2
                                    227 	.globl _TL2
                                    228 	.globl _RCAP2H
                                    229 	.globl _RCAP2L
                                    230 	.globl _T2CON
                                    231 	.globl _print_colored_PARM_2
                                    232 	.globl _print_hex_number_PARM_2
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
                           000000   670 Luart.print_hex_number$sloc3$0_1$0==.
      000008                        671 _print_hex_number_sloc3_1_0:
      000008                        672 	.ds 2
                           000002   673 Luart.print_hex_number$sloc4$0_1$0==.
      00000A                        674 _print_hex_number_sloc4_1_0:
      00000A                        675 	.ds 4
                                    676 ;--------------------------------------------------------
                                    677 ; overlayable items in internal ram
                                    678 ;--------------------------------------------------------
                                    679 ;--------------------------------------------------------
                                    680 ; indirectly addressable internal ram data
                                    681 ;--------------------------------------------------------
                                    682 	.area ISEG    (DATA)
                                    683 ;--------------------------------------------------------
                                    684 ; absolute internal ram data
                                    685 ;--------------------------------------------------------
                                    686 	.area IABS    (ABS,DATA)
                                    687 	.area IABS    (ABS,DATA)
                                    688 ;--------------------------------------------------------
                                    689 ; bit data
                                    690 ;--------------------------------------------------------
                                    691 	.area BSEG    (BIT)
                           000000   692 Luart.print_hex_number$sloc0$0_1$0==.
      000000                        693 _print_hex_number_sloc0_1_0:
      000000                        694 	.ds 1
                           000001   695 Luart.print_hex_number$sloc1$0_1$0==.
      000001                        696 _print_hex_number_sloc1_1_0:
      000001                        697 	.ds 1
                           000002   698 Luart.print_hex_number$sloc2$0_1$0==.
      000002                        699 _print_hex_number_sloc2_1_0:
      000002                        700 	.ds 1
                                    701 ;--------------------------------------------------------
                                    702 ; paged external ram data
                                    703 ;--------------------------------------------------------
                                    704 	.area PSEG    (PAG,XDATA)
                                    705 ;--------------------------------------------------------
                                    706 ; external ram data
                                    707 ;--------------------------------------------------------
                                    708 	.area XSEG    (XDATA)
                           000000   709 Luart.int_to_char$num$1_0$68==.
      000417                        710 _int_to_char_num_65536_68:
      000417                        711 	.ds 2
                           000002   712 Luart.int_to_char$hex_digits$1_0$69==.
      000419                        713 _int_to_char_hex_digits_65536_69:
      000419                        714 	.ds 17
                           000013   715 Luart.char_to_int$ch$1_0$71==.
      00042A                        716 _char_to_int_ch_65536_71:
      00042A                        717 	.ds 1
                           000014   718 Luart.parse_user_input$base$1_0$74==.
      00042B                        719 _parse_user_input_base_65536_74:
      00042B                        720 	.ds 1
                           000015   721 Luart.parse_user_input$number$1_0$75==.
      00042C                        722 _parse_user_input_number_65536_75:
      00042C                        723 	.ds 2
                           000017   724 Luart.parse_user_input$digits$1_0$75==.
      00042E                        725 _parse_user_input_digits_65536_75:
      00042E                        726 	.ds 40
                           00003F   727 Luart.parse_user_input$digit_count$1_0$75==.
      000456                        728 _parse_user_input_digit_count_65536_75:
      000456                        729 	.ds 2
                           000041   730 Luart.parse_user_input$current_char$1_0$75==.
      000458                        731 _parse_user_input_current_char_65536_75:
      000458                        732 	.ds 2
                           000043   733 Luart.print_hex_number$width$1_0$82==.
      00045A                        734 _print_hex_number_PARM_2:
      00045A                        735 	.ds 1
                           000044   736 Luart.print_hex_number$num$1_0$82==.
      00045B                        737 _print_hex_number_num_65536_82:
      00045B                        738 	.ds 4
                           000048   739 Luart.print_hex_number$ascii_buffer$1_0$83==.
      00045F                        740 _print_hex_number_ascii_buffer_65536_83:
      00045F                        741 	.ds 10
                           000052   742 Luart.print_hex_number$digit_count$1_0$83==.
      000469                        743 _print_hex_number_digit_count_65536_83:
      000469                        744 	.ds 1
                           000053   745 Luart.print_colored$color_code$1_0$93==.
      00046A                        746 _print_colored_PARM_2:
      00046A                        747 	.ds 2
                           000055   748 Luart.print_colored$str$1_0$93==.
      00046C                        749 _print_colored_str_65536_93:
      00046C                        750 	.ds 3
                                    751 ;--------------------------------------------------------
                                    752 ; absolute external ram data
                                    753 ;--------------------------------------------------------
                                    754 	.area XABS    (ABS,XDATA)
                                    755 ;--------------------------------------------------------
                                    756 ; external initialized ram data
                                    757 ;--------------------------------------------------------
                                    758 	.area XISEG   (XDATA)
                                    759 	.area HOME    (CODE)
                                    760 	.area GSINIT0 (CODE)
                                    761 	.area GSINIT1 (CODE)
                                    762 	.area GSINIT2 (CODE)
                                    763 	.area GSINIT3 (CODE)
                                    764 	.area GSINIT4 (CODE)
                                    765 	.area GSINIT5 (CODE)
                                    766 	.area GSINIT  (CODE)
                                    767 	.area GSFINAL (CODE)
                                    768 	.area CSEG    (CODE)
                                    769 ;--------------------------------------------------------
                                    770 ; global & static initialisations
                                    771 ;--------------------------------------------------------
                                    772 	.area HOME    (CODE)
                                    773 	.area GSINIT  (CODE)
                                    774 	.area GSFINAL (CODE)
                                    775 	.area GSINIT  (CODE)
                                    776 ;--------------------------------------------------------
                                    777 ; Home
                                    778 ;--------------------------------------------------------
                                    779 	.area HOME    (CODE)
                                    780 	.area HOME    (CODE)
                                    781 ;--------------------------------------------------------
                                    782 ; code
                                    783 ;--------------------------------------------------------
                                    784 	.area CSEG    (CODE)
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'initialize_uart_timer'
                                    787 ;------------------------------------------------------------
                           000000   788 	G$initialize_uart_timer$0$0 ==.
                           000000   789 	C$uart.c$40$0_0$67 ==.
                                    790 ;	uart.c:40: void initialize_uart_timer() {
                                    791 ;	-----------------------------------------
                                    792 ;	 function initialize_uart_timer
                                    793 ;	-----------------------------------------
      002872                        794 _initialize_uart_timer:
                           000007   795 	ar7 = 0x07
                           000006   796 	ar6 = 0x06
                           000005   797 	ar5 = 0x05
                           000004   798 	ar4 = 0x04
                           000003   799 	ar3 = 0x03
                           000002   800 	ar2 = 0x02
                           000001   801 	ar1 = 0x01
                           000000   802 	ar0 = 0x00
                           000000   803 	C$uart.c$41$1_0$67 ==.
                                    804 ;	uart.c:41: IEN0 |= 0x80;           // Enable interrupts
      002872 43 A8 80         [24]  805 	orl	_IEN0,#0x80
                           000003   806 	C$uart.c$42$1_0$67 ==.
                                    807 ;	uart.c:42: IPL0 |= 0x10;           // Set interrupt priority to 1
      002875 43 B8 10         [24]  808 	orl	_IPL0,#0x10
                           000006   809 	C$uart.c$43$1_0$67 ==.
                                    810 ;	uart.c:43: TMOD |= 0x20;           // Set Timer 1 mode to 8-bit auto-reload mode
      002878 43 89 20         [24]  811 	orl	_TMOD,#0x20
                           000009   812 	C$uart.c$44$1_0$67 ==.
                                    813 ;	uart.c:44: SCON = (SCON & 0xCF) | 0x50;    // Set Timer 1 to Mode 2 (8-bit auto-reload mode)
      00287B E5 98            [12]  814 	mov	a,_SCON
      00287D 54 CF            [12]  815 	anl	a,#0xcf
      00287F 44 50            [12]  816 	orl	a,#0x50
      002881 F5 98            [12]  817 	mov	_SCON,a
                           000011   818 	C$uart.c$45$1_0$67 ==.
                                    819 ;	uart.c:45: TCON = (TCON & 0xBF) | 0x40;    // Set baud rate of 9600 Baud Rate = 11.0592 MHz / (32 * (256 - 0xFD)) = 9600
      002883 E5 88            [12]  820 	mov	a,_TCON
      002885 54 BF            [12]  821 	anl	a,#0xbf
      002887 44 40            [12]  822 	orl	a,#0x40
      002889 F5 88            [12]  823 	mov	_TCON,a
                           000019   824 	C$uart.c$46$1_0$67 ==.
                                    825 ;	uart.c:46: TH1 = 0xFD;             // Set UART with 8-bit mode with 1 stop bit
      00288B 75 8D FD         [24]  826 	mov	_TH1,#0xfd
                           00001C   827 	C$uart.c$47$1_0$67 ==.
                                    828 ;	uart.c:47: TI = 1;                 // Enable the UART transmitter
                                    829 ;	assignBit
      00288E D2 99            [12]  830 	setb	_TI
                           00001E   831 	C$uart.c$48$1_0$67 ==.
                                    832 ;	uart.c:48: }
                           00001E   833 	C$uart.c$48$1_0$67 ==.
                           00001E   834 	XG$initialize_uart_timer$0$0 ==.
      002890 22               [24]  835 	ret
                                    836 ;------------------------------------------------------------
                                    837 ;Allocation info for local variables in function 'int_to_char'
                                    838 ;------------------------------------------------------------
                                    839 ;num                       Allocated with name '_int_to_char_num_65536_68'
                                    840 ;hex_digits                Allocated with name '_int_to_char_hex_digits_65536_69'
                                    841 ;------------------------------------------------------------
                           00001F   842 	G$int_to_char$0$0 ==.
                           00001F   843 	C$uart.c$50$1_0$69 ==.
                                    844 ;	uart.c:50: char int_to_char(int num) {
                                    845 ;	-----------------------------------------
                                    846 ;	 function int_to_char
                                    847 ;	-----------------------------------------
      002891                        848 _int_to_char:
      002891 AF 83            [24]  849 	mov	r7,dph
      002893 E5 82            [12]  850 	mov	a,dpl
      002895 90 04 17         [24]  851 	mov	dptr,#_int_to_char_num_65536_68
      002898 F0               [24]  852 	movx	@dptr,a
      002899 EF               [12]  853 	mov	a,r7
      00289A A3               [24]  854 	inc	dptr
      00289B F0               [24]  855 	movx	@dptr,a
                           00002A   856 	C$uart.c$51$2_0$69 ==.
                                    857 ;	uart.c:51: const char hex_digits[] = "0123456789ABCDEF"; // Hexadecimal digits
      00289C 90 04 19         [24]  858 	mov	dptr,#_int_to_char_hex_digits_65536_69
      00289F 74 30            [12]  859 	mov	a,#0x30
      0028A1 F0               [24]  860 	movx	@dptr,a
      0028A2 90 04 1A         [24]  861 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0001)
      0028A5 04               [12]  862 	inc	a
      0028A6 F0               [24]  863 	movx	@dptr,a
      0028A7 90 04 1B         [24]  864 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0002)
      0028AA 04               [12]  865 	inc	a
      0028AB F0               [24]  866 	movx	@dptr,a
      0028AC 90 04 1C         [24]  867 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0003)
      0028AF 04               [12]  868 	inc	a
      0028B0 F0               [24]  869 	movx	@dptr,a
      0028B1 90 04 1D         [24]  870 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0004)
      0028B4 04               [12]  871 	inc	a
      0028B5 F0               [24]  872 	movx	@dptr,a
      0028B6 90 04 1E         [24]  873 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0005)
      0028B9 04               [12]  874 	inc	a
      0028BA F0               [24]  875 	movx	@dptr,a
      0028BB 90 04 1F         [24]  876 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0006)
      0028BE 04               [12]  877 	inc	a
      0028BF F0               [24]  878 	movx	@dptr,a
      0028C0 90 04 20         [24]  879 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0007)
      0028C3 04               [12]  880 	inc	a
      0028C4 F0               [24]  881 	movx	@dptr,a
      0028C5 90 04 21         [24]  882 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0008)
      0028C8 04               [12]  883 	inc	a
      0028C9 F0               [24]  884 	movx	@dptr,a
      0028CA 90 04 22         [24]  885 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0009)
      0028CD 04               [12]  886 	inc	a
      0028CE F0               [24]  887 	movx	@dptr,a
      0028CF 90 04 23         [24]  888 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000a)
      0028D2 74 41            [12]  889 	mov	a,#0x41
      0028D4 F0               [24]  890 	movx	@dptr,a
      0028D5 90 04 24         [24]  891 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000b)
      0028D8 04               [12]  892 	inc	a
      0028D9 F0               [24]  893 	movx	@dptr,a
      0028DA 90 04 25         [24]  894 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000c)
      0028DD 04               [12]  895 	inc	a
      0028DE F0               [24]  896 	movx	@dptr,a
      0028DF 90 04 26         [24]  897 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000d)
      0028E2 04               [12]  898 	inc	a
      0028E3 F0               [24]  899 	movx	@dptr,a
      0028E4 90 04 27         [24]  900 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000e)
      0028E7 04               [12]  901 	inc	a
      0028E8 F0               [24]  902 	movx	@dptr,a
      0028E9 90 04 28         [24]  903 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x000f)
      0028EC 04               [12]  904 	inc	a
      0028ED F0               [24]  905 	movx	@dptr,a
      0028EE 90 04 29         [24]  906 	mov	dptr,#(_int_to_char_hex_digits_65536_69 + 0x0010)
      0028F1 E4               [12]  907 	clr	a
      0028F2 F0               [24]  908 	movx	@dptr,a
                           000081   909 	C$uart.c$52$1_0$69 ==.
                                    910 ;	uart.c:52: if (num >= 0 && num <= 15) {
      0028F3 90 04 17         [24]  911 	mov	dptr,#_int_to_char_num_65536_68
      0028F6 E0               [24]  912 	movx	a,@dptr
      0028F7 FE               [12]  913 	mov	r6,a
      0028F8 A3               [24]  914 	inc	dptr
      0028F9 E0               [24]  915 	movx	a,@dptr
      0028FA FF               [12]  916 	mov	r7,a
      0028FB 20 E7 1F         [24]  917 	jb	acc.7,00102$
      0028FE C3               [12]  918 	clr	c
      0028FF 74 0F            [12]  919 	mov	a,#0x0f
      002901 9E               [12]  920 	subb	a,r6
      002902 74 80            [12]  921 	mov	a,#(0x00 ^ 0x80)
      002904 8F F0            [24]  922 	mov	b,r7
      002906 63 F0 80         [24]  923 	xrl	b,#0x80
      002909 95 F0            [12]  924 	subb	a,b
      00290B 40 10            [24]  925 	jc	00102$
                           00009B   926 	C$uart.c$53$2_0$70 ==.
                                    927 ;	uart.c:53: return hex_digits[num];
      00290D EE               [12]  928 	mov	a,r6
      00290E 24 19            [12]  929 	add	a,#_int_to_char_hex_digits_65536_69
      002910 F5 82            [12]  930 	mov	dpl,a
      002912 EF               [12]  931 	mov	a,r7
      002913 34 04            [12]  932 	addc	a,#(_int_to_char_hex_digits_65536_69 >> 8)
      002915 F5 83            [12]  933 	mov	dph,a
      002917 E0               [24]  934 	movx	a,@dptr
      002918 FF               [12]  935 	mov	r7,a
      002919 F5 82            [12]  936 	mov	dpl,a
      00291B 80 03            [24]  937 	sjmp	00104$
      00291D                        938 00102$:
                           0000AB   939 	C$uart.c$55$1_0$69 ==.
                                    940 ;	uart.c:55: return '0';
      00291D 75 82 30         [24]  941 	mov	dpl,#0x30
      002920                        942 00104$:
                           0000AE   943 	C$uart.c$56$1_0$69 ==.
                                    944 ;	uart.c:56: }
                           0000AE   945 	C$uart.c$56$1_0$69 ==.
                           0000AE   946 	XG$int_to_char$0$0 ==.
      002920 22               [24]  947 	ret
                                    948 ;------------------------------------------------------------
                                    949 ;Allocation info for local variables in function 'char_to_int'
                                    950 ;------------------------------------------------------------
                                    951 ;ch                        Allocated with name '_char_to_int_ch_65536_71'
                                    952 ;hex_digits                Allocated with name '_char_to_int_hex_digits_65536_72'
                                    953 ;pos                       Allocated with name '_char_to_int_pos_65536_72'
                                    954 ;------------------------------------------------------------
                           0000AF   955 	G$char_to_int$0$0 ==.
                           0000AF   956 	C$uart.c$58$1_0$72 ==.
                                    957 ;	uart.c:58: uint8_t char_to_int(uint8_t ch) {
                                    958 ;	-----------------------------------------
                                    959 ;	 function char_to_int
                                    960 ;	-----------------------------------------
      002921                        961 _char_to_int:
      002921 E5 82            [12]  962 	mov	a,dpl
      002923 90 04 2A         [24]  963 	mov	dptr,#_char_to_int_ch_65536_71
      002926 F0               [24]  964 	movx	@dptr,a
                           0000B5   965 	C$uart.c$59$2_0$72 ==.
                                    966 ;	uart.c:59: const char *hex_digits = "0123456789abcdefABCDEF"; // Hexadecimal digits
                           0000B5   967 	C$uart.c$60$1_0$72 ==.
                                    968 ;	uart.c:60: const char *pos = strchr(hex_digits, ch); // Get position of character in hexadecimal digits
      002927 E0               [24]  969 	movx	a,@dptr
      002928 90 04 6F         [24]  970 	mov	dptr,#_strchr_PARM_2
      00292B F0               [24]  971 	movx	@dptr,a
      00292C 90 41 55         [24]  972 	mov	dptr,#___str_1
      00292F 75 F0 80         [24]  973 	mov	b,#0x80
      002932 12 30 3F         [24]  974 	lcall	_strchr
      002935 AD 82            [24]  975 	mov	r5,dpl
      002937 AE 83            [24]  976 	mov	r6,dph
      002939 AF F0            [24]  977 	mov	r7,b
                           0000C9   978 	C$uart.c$61$1_0$72 ==.
                                    979 ;	uart.c:61: if (pos != NULL) {
      00293B ED               [12]  980 	mov	a,r5
      00293C 4E               [12]  981 	orl	a,r6
      00293D 60 0A            [24]  982 	jz	00102$
                           0000CD   983 	C$uart.c$62$1_0$72 ==.
                                    984 ;	uart.c:62: return (uint8_t)(pos - hex_digits);
      00293F 7F 55            [12]  985 	mov	r7,#___str_1
      002941 ED               [12]  986 	mov	a,r5
      002942 C3               [12]  987 	clr	c
      002943 9F               [12]  988 	subb	a,r7
      002944 FD               [12]  989 	mov	r5,a
      002945 F5 82            [12]  990 	mov	dpl,a
      002947 80 03            [24]  991 	sjmp	00103$
      002949                        992 00102$:
                           0000D7   993 	C$uart.c$64$1_0$72 ==.
                                    994 ;	uart.c:64: return 0;
      002949 75 82 00         [24]  995 	mov	dpl,#0x00
      00294C                        996 00103$:
                           0000DA   997 	C$uart.c$65$1_0$72 ==.
                                    998 ;	uart.c:65: }
                           0000DA   999 	C$uart.c$65$1_0$72 ==.
                           0000DA  1000 	XG$char_to_int$0$0 ==.
      00294C 22               [24] 1001 	ret
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'parse_user_input'
                                   1004 ;------------------------------------------------------------
                                   1005 ;base                      Allocated with name '_parse_user_input_base_65536_74'
                                   1006 ;number                    Allocated with name '_parse_user_input_number_65536_75'
                                   1007 ;digits                    Allocated with name '_parse_user_input_digits_65536_75'
                                   1008 ;digit_count               Allocated with name '_parse_user_input_digit_count_65536_75'
                                   1009 ;i                         Allocated with name '_parse_user_input_i_65536_75'
                                   1010 ;current_char              Allocated with name '_parse_user_input_current_char_65536_75'
                                   1011 ;------------------------------------------------------------
                           0000DB  1012 	G$parse_user_input$0$0 ==.
                           0000DB  1013 	C$uart.c$67$1_0$75 ==.
                                   1014 ;	uart.c:67: uint16_t parse_user_input(uint8_t base)
                                   1015 ;	-----------------------------------------
                                   1016 ;	 function parse_user_input
                                   1017 ;	-----------------------------------------
      00294D                       1018 _parse_user_input:
      00294D E5 82            [12] 1019 	mov	a,dpl
      00294F 90 04 2B         [24] 1020 	mov	dptr,#_parse_user_input_base_65536_74
      002952 F0               [24] 1021 	movx	@dptr,a
                           0000E1  1022 	C$uart.c$69$2_0$75 ==.
                                   1023 ;	uart.c:69: uint16_t number = 0;
      002953 90 04 2C         [24] 1024 	mov	dptr,#_parse_user_input_number_65536_75
      002956 E4               [12] 1025 	clr	a
      002957 F0               [24] 1026 	movx	@dptr,a
      002958 A3               [24] 1027 	inc	dptr
      002959 F0               [24] 1028 	movx	@dptr,a
                           0000E8  1029 	C$uart.c$70$2_0$75 ==.
                                   1030 ;	uart.c:70: uint16_t digits[MAX_DIGITS] = {0};
      00295A 90 04 2E         [24] 1031 	mov	dptr,#_parse_user_input_digits_65536_75
      00295D F0               [24] 1032 	movx	@dptr,a
      00295E A3               [24] 1033 	inc	dptr
      00295F F0               [24] 1034 	movx	@dptr,a
      002960 90 04 30         [24] 1035 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0002)
      002963 F0               [24] 1036 	movx	@dptr,a
      002964 A3               [24] 1037 	inc	dptr
      002965 F0               [24] 1038 	movx	@dptr,a
      002966 90 04 32         [24] 1039 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0004)
      002969 F0               [24] 1040 	movx	@dptr,a
      00296A A3               [24] 1041 	inc	dptr
      00296B F0               [24] 1042 	movx	@dptr,a
      00296C 90 04 34         [24] 1043 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0006)
      00296F F0               [24] 1044 	movx	@dptr,a
      002970 A3               [24] 1045 	inc	dptr
      002971 F0               [24] 1046 	movx	@dptr,a
      002972 90 04 36         [24] 1047 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0008)
      002975 F0               [24] 1048 	movx	@dptr,a
      002976 A3               [24] 1049 	inc	dptr
      002977 F0               [24] 1050 	movx	@dptr,a
      002978 90 04 38         [24] 1051 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x000a)
      00297B F0               [24] 1052 	movx	@dptr,a
      00297C A3               [24] 1053 	inc	dptr
      00297D F0               [24] 1054 	movx	@dptr,a
      00297E 90 04 3A         [24] 1055 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x000c)
      002981 F0               [24] 1056 	movx	@dptr,a
      002982 A3               [24] 1057 	inc	dptr
      002983 F0               [24] 1058 	movx	@dptr,a
      002984 90 04 3C         [24] 1059 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x000e)
      002987 F0               [24] 1060 	movx	@dptr,a
      002988 A3               [24] 1061 	inc	dptr
      002989 F0               [24] 1062 	movx	@dptr,a
      00298A 90 04 3E         [24] 1063 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0010)
      00298D F0               [24] 1064 	movx	@dptr,a
      00298E A3               [24] 1065 	inc	dptr
      00298F F0               [24] 1066 	movx	@dptr,a
      002990 90 04 40         [24] 1067 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0012)
      002993 F0               [24] 1068 	movx	@dptr,a
      002994 A3               [24] 1069 	inc	dptr
      002995 F0               [24] 1070 	movx	@dptr,a
      002996 90 04 42         [24] 1071 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0014)
      002999 F0               [24] 1072 	movx	@dptr,a
      00299A A3               [24] 1073 	inc	dptr
      00299B F0               [24] 1074 	movx	@dptr,a
      00299C 90 04 44         [24] 1075 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0016)
      00299F F0               [24] 1076 	movx	@dptr,a
      0029A0 A3               [24] 1077 	inc	dptr
      0029A1 F0               [24] 1078 	movx	@dptr,a
      0029A2 90 04 46         [24] 1079 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0018)
      0029A5 F0               [24] 1080 	movx	@dptr,a
      0029A6 A3               [24] 1081 	inc	dptr
      0029A7 F0               [24] 1082 	movx	@dptr,a
      0029A8 90 04 48         [24] 1083 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x001a)
      0029AB F0               [24] 1084 	movx	@dptr,a
      0029AC A3               [24] 1085 	inc	dptr
      0029AD F0               [24] 1086 	movx	@dptr,a
      0029AE 90 04 4A         [24] 1087 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x001c)
      0029B1 F0               [24] 1088 	movx	@dptr,a
      0029B2 A3               [24] 1089 	inc	dptr
      0029B3 F0               [24] 1090 	movx	@dptr,a
      0029B4 90 04 4C         [24] 1091 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x001e)
      0029B7 F0               [24] 1092 	movx	@dptr,a
      0029B8 A3               [24] 1093 	inc	dptr
      0029B9 F0               [24] 1094 	movx	@dptr,a
      0029BA 90 04 4E         [24] 1095 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0020)
      0029BD F0               [24] 1096 	movx	@dptr,a
      0029BE A3               [24] 1097 	inc	dptr
      0029BF F0               [24] 1098 	movx	@dptr,a
      0029C0 90 04 50         [24] 1099 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0022)
      0029C3 F0               [24] 1100 	movx	@dptr,a
      0029C4 A3               [24] 1101 	inc	dptr
      0029C5 F0               [24] 1102 	movx	@dptr,a
      0029C6 90 04 52         [24] 1103 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0024)
      0029C9 F0               [24] 1104 	movx	@dptr,a
      0029CA A3               [24] 1105 	inc	dptr
      0029CB F0               [24] 1106 	movx	@dptr,a
      0029CC 90 04 54         [24] 1107 	mov	dptr,#(_parse_user_input_digits_65536_75 + 0x0026)
      0029CF F0               [24] 1108 	movx	@dptr,a
      0029D0 A3               [24] 1109 	inc	dptr
      0029D1 F0               [24] 1110 	movx	@dptr,a
                           000160  1111 	C$uart.c$71$2_0$75 ==.
                                   1112 ;	uart.c:71: uint16_t digit_count = 0;
      0029D2 90 04 56         [24] 1113 	mov	dptr,#_parse_user_input_digit_count_65536_75
      0029D5 F0               [24] 1114 	movx	@dptr,a
      0029D6 A3               [24] 1115 	inc	dptr
      0029D7 F0               [24] 1116 	movx	@dptr,a
                           000166  1117 	C$uart.c$73$2_0$75 ==.
                                   1118 ;	uart.c:73: uint16_t current_char = 0;
      0029D8 90 04 58         [24] 1119 	mov	dptr,#_parse_user_input_current_char_65536_75
      0029DB F0               [24] 1120 	movx	@dptr,a
      0029DC A3               [24] 1121 	inc	dptr
      0029DD F0               [24] 1122 	movx	@dptr,a
                           00016C  1123 	C$uart.c$75$1_0$75 ==.
                                   1124 ;	uart.c:75: while (current_char != CARRIAGE_RETURN) {   // Loop until the input is complete.
      0029DE                       1125 00113$:
      0029DE 90 04 58         [24] 1126 	mov	dptr,#_parse_user_input_current_char_65536_75
      0029E1 E0               [24] 1127 	movx	a,@dptr
      0029E2 FE               [12] 1128 	mov	r6,a
      0029E3 A3               [24] 1129 	inc	dptr
      0029E4 E0               [24] 1130 	movx	a,@dptr
      0029E5 FF               [12] 1131 	mov	r7,a
      0029E6 BE 0D 06         [24] 1132 	cjne	r6,#0x0d,00159$
      0029E9 BF 00 03         [24] 1133 	cjne	r7,#0x00,00159$
      0029EC 02 2A D6         [24] 1134 	ljmp	00130$
      0029EF                       1135 00159$:
                           00017D  1136 	C$uart.c$76$2_0$76 ==.
                                   1137 ;	uart.c:76: current_char = getchar();               // Read the next character.
      0029EF 12 27 54         [24] 1138 	lcall	_getchar
      0029F2 AE 82            [24] 1139 	mov	r6,dpl
      0029F4 AF 83            [24] 1140 	mov	r7,dph
      0029F6 90 04 58         [24] 1141 	mov	dptr,#_parse_user_input_current_char_65536_75
      0029F9 EE               [12] 1142 	mov	a,r6
      0029FA F0               [24] 1143 	movx	@dptr,a
      0029FB EF               [12] 1144 	mov	a,r7
      0029FC A3               [24] 1145 	inc	dptr
      0029FD F0               [24] 1146 	movx	@dptr,a
                           00018C  1147 	C$uart.c$78$2_0$76 ==.
                                   1148 ;	uart.c:78: if (((current_char >= '0') && (current_char <= '9')) || // Check if the character is a valid digit.
      0029FE 8E 04            [24] 1149 	mov	ar4,r6
      002A00 8F 05            [24] 1150 	mov	ar5,r7
      002A02 C3               [12] 1151 	clr	c
      002A03 EC               [12] 1152 	mov	a,r4
      002A04 94 30            [12] 1153 	subb	a,#0x30
      002A06 ED               [12] 1154 	mov	a,r5
      002A07 94 00            [12] 1155 	subb	a,#0x00
      002A09 40 07            [24] 1156 	jc	00110$
      002A0B 74 39            [12] 1157 	mov	a,#0x39
      002A0D 9C               [12] 1158 	subb	a,r4
      002A0E E4               [12] 1159 	clr	a
      002A0F 9D               [12] 1160 	subb	a,r5
      002A10 50 20            [24] 1161 	jnc	00105$
      002A12                       1162 00110$:
                           0001A0  1163 	C$uart.c$79$2_0$76 ==.
                                   1164 ;	uart.c:79: ((current_char >= 'a') && (current_char <= 'f')) ||
      002A12 C3               [12] 1165 	clr	c
      002A13 EC               [12] 1166 	mov	a,r4
      002A14 94 61            [12] 1167 	subb	a,#0x61
      002A16 ED               [12] 1168 	mov	a,r5
      002A17 94 00            [12] 1169 	subb	a,#0x00
      002A19 40 07            [24] 1170 	jc	00112$
      002A1B 74 66            [12] 1171 	mov	a,#0x66
      002A1D 9C               [12] 1172 	subb	a,r4
      002A1E E4               [12] 1173 	clr	a
      002A1F 9D               [12] 1174 	subb	a,r5
      002A20 50 10            [24] 1175 	jnc	00105$
      002A22                       1176 00112$:
                           0001B0  1177 	C$uart.c$80$2_0$76 ==.
                                   1178 ;	uart.c:80: ((current_char >= 'A') && (current_char <= 'F')))
      002A22 C3               [12] 1179 	clr	c
      002A23 EC               [12] 1180 	mov	a,r4
      002A24 94 41            [12] 1181 	subb	a,#0x41
      002A26 ED               [12] 1182 	mov	a,r5
      002A27 94 00            [12] 1183 	subb	a,#0x00
      002A29 40 5F            [24] 1184 	jc	00106$
      002A2B 74 46            [12] 1185 	mov	a,#0x46
      002A2D 9C               [12] 1186 	subb	a,r4
      002A2E E4               [12] 1187 	clr	a
      002A2F 9D               [12] 1188 	subb	a,r5
      002A30 40 58            [24] 1189 	jc	00106$
      002A32                       1190 00105$:
                           0001C0  1191 	C$uart.c$82$3_0$77 ==.
                                   1192 ;	uart.c:82: putchar(current_char);                              // Echo the character back to the user.
      002A32 8E 02            [24] 1193 	mov	ar2,r6
      002A34 8F 03            [24] 1194 	mov	ar3,r7
      002A36 8A 82            [24] 1195 	mov	dpl,r2
      002A38 8B 83            [24] 1196 	mov	dph,r3
      002A3A C0 07            [24] 1197 	push	ar7
      002A3C C0 06            [24] 1198 	push	ar6
      002A3E 12 27 62         [24] 1199 	lcall	_putchar
      002A41 D0 06            [24] 1200 	pop	ar6
      002A43 D0 07            [24] 1201 	pop	ar7
                           0001D3  1202 	C$uart.c$83$3_0$77 ==.
                                   1203 ;	uart.c:83: digits[digit_count] = char_to_int(current_char);    // Convert the character to a digit and store it in the digits array.
      002A45 90 04 56         [24] 1204 	mov	dptr,#_parse_user_input_digit_count_65536_75
      002A48 E0               [24] 1205 	movx	a,@dptr
      002A49 FA               [12] 1206 	mov	r2,a
      002A4A A3               [24] 1207 	inc	dptr
      002A4B E0               [24] 1208 	movx	a,@dptr
      002A4C FB               [12] 1209 	mov	r3,a
      002A4D EA               [12] 1210 	mov	a,r2
      002A4E 2A               [12] 1211 	add	a,r2
      002A4F F8               [12] 1212 	mov	r0,a
      002A50 EB               [12] 1213 	mov	a,r3
      002A51 33               [12] 1214 	rlc	a
      002A52 F9               [12] 1215 	mov	r1,a
      002A53 E8               [12] 1216 	mov	a,r0
      002A54 24 2E            [12] 1217 	add	a,#_parse_user_input_digits_65536_75
      002A56 F8               [12] 1218 	mov	r0,a
      002A57 E9               [12] 1219 	mov	a,r1
      002A58 34 04            [12] 1220 	addc	a,#(_parse_user_input_digits_65536_75 >> 8)
      002A5A F9               [12] 1221 	mov	r1,a
      002A5B 8E 82            [24] 1222 	mov	dpl,r6
      002A5D C0 03            [24] 1223 	push	ar3
      002A5F C0 02            [24] 1224 	push	ar2
      002A61 C0 01            [24] 1225 	push	ar1
      002A63 C0 00            [24] 1226 	push	ar0
      002A65 12 29 21         [24] 1227 	lcall	_char_to_int
      002A68 AF 82            [24] 1228 	mov	r7,dpl
      002A6A D0 00            [24] 1229 	pop	ar0
      002A6C D0 01            [24] 1230 	pop	ar1
      002A6E D0 02            [24] 1231 	pop	ar2
      002A70 D0 03            [24] 1232 	pop	ar3
      002A72 7E 00            [12] 1233 	mov	r6,#0x00
      002A74 88 82            [24] 1234 	mov	dpl,r0
      002A76 89 83            [24] 1235 	mov	dph,r1
      002A78 EF               [12] 1236 	mov	a,r7
      002A79 F0               [24] 1237 	movx	@dptr,a
      002A7A EE               [12] 1238 	mov	a,r6
      002A7B A3               [24] 1239 	inc	dptr
      002A7C F0               [24] 1240 	movx	@dptr,a
                           00020B  1241 	C$uart.c$84$3_0$77 ==.
                                   1242 ;	uart.c:84: digit_count++;                                      // Increment the digit count.
      002A7D 90 04 56         [24] 1243 	mov	dptr,#_parse_user_input_digit_count_65536_75
      002A80 04               [12] 1244 	inc	a
      002A81 2A               [12] 1245 	add	a,r2
      002A82 F0               [24] 1246 	movx	@dptr,a
      002A83 E4               [12] 1247 	clr	a
      002A84 3B               [12] 1248 	addc	a,r3
      002A85 A3               [24] 1249 	inc	dptr
      002A86 F0               [24] 1250 	movx	@dptr,a
      002A87 02 29 DE         [24] 1251 	ljmp	00113$
      002A8A                       1252 00106$:
                           000218  1253 	C$uart.c$86$2_0$76 ==.
                                   1254 ;	uart.c:86: else if (current_char == BACKSPACE) // Check for backspace.
      002A8A BC 08 05         [24] 1255 	cjne	r4,#0x08,00166$
      002A8D BD 00 02         [24] 1256 	cjne	r5,#0x00,00166$
      002A90 80 03            [24] 1257 	sjmp	00167$
      002A92                       1258 00166$:
      002A92 02 29 DE         [24] 1259 	ljmp	00113$
      002A95                       1260 00167$:
                           000223  1261 	C$uart.c$88$3_0$78 ==.
                                   1262 ;	uart.c:88: if (digit_count > 0)    // Check if there are any digits to delete.
      002A95 90 04 56         [24] 1263 	mov	dptr,#_parse_user_input_digit_count_65536_75
      002A98 E0               [24] 1264 	movx	a,@dptr
      002A99 FE               [12] 1265 	mov	r6,a
      002A9A A3               [24] 1266 	inc	dptr
      002A9B E0               [24] 1267 	movx	a,@dptr
      002A9C FF               [12] 1268 	mov	r7,a
      002A9D 90 04 56         [24] 1269 	mov	dptr,#_parse_user_input_digit_count_65536_75
      002AA0 E0               [24] 1270 	movx	a,@dptr
      002AA1 F5 F0            [12] 1271 	mov	b,a
      002AA3 A3               [24] 1272 	inc	dptr
      002AA4 E0               [24] 1273 	movx	a,@dptr
      002AA5 45 F0            [12] 1274 	orl	a,b
      002AA7 70 03            [24] 1275 	jnz	00168$
      002AA9 02 29 DE         [24] 1276 	ljmp	00113$
      002AAC                       1277 00168$:
                           00023A  1278 	C$uart.c$90$4_0$79 ==.
                                   1279 ;	uart.c:90: putchar(BACKSPACE); // Move the cursor back one position.
      002AAC 90 00 08         [24] 1280 	mov	dptr,#0x0008
      002AAF C0 07            [24] 1281 	push	ar7
      002AB1 C0 06            [24] 1282 	push	ar6
      002AB3 12 27 62         [24] 1283 	lcall	_putchar
                           000244  1284 	C$uart.c$91$4_0$79 ==.
                                   1285 ;	uart.c:91: putchar(SPACE);     // Print a space to overwrite the previous digit.
      002AB6 90 00 20         [24] 1286 	mov	dptr,#0x0020
      002AB9 12 27 62         [24] 1287 	lcall	_putchar
                           00024A  1288 	C$uart.c$92$4_0$79 ==.
                                   1289 ;	uart.c:92: putchar(BACKSPACE); // Move the cursor back one position again.
      002ABC 90 00 08         [24] 1290 	mov	dptr,#0x0008
      002ABF 12 27 62         [24] 1291 	lcall	_putchar
      002AC2 D0 06            [24] 1292 	pop	ar6
      002AC4 D0 07            [24] 1293 	pop	ar7
                           000254  1294 	C$uart.c$93$4_0$79 ==.
                                   1295 ;	uart.c:93: digit_count--;      // Decrement the digit count.
      002AC6 1E               [12] 1296 	dec	r6
      002AC7 BE FF 01         [24] 1297 	cjne	r6,#0xff,00169$
      002ACA 1F               [12] 1298 	dec	r7
      002ACB                       1299 00169$:
      002ACB 90 04 56         [24] 1300 	mov	dptr,#_parse_user_input_digit_count_65536_75
      002ACE EE               [12] 1301 	mov	a,r6
      002ACF F0               [24] 1302 	movx	@dptr,a
      002AD0 EF               [12] 1303 	mov	a,r7
      002AD1 A3               [24] 1304 	inc	dptr
      002AD2 F0               [24] 1305 	movx	@dptr,a
      002AD3 02 29 DE         [24] 1306 	ljmp	00113$
                           000264  1307 	C$uart.c$98$1_0$75 ==.
                                   1308 ;	uart.c:98: for(i = 0; i < digit_count; i++) // Iterate over the digits.
      002AD6                       1309 00130$:
      002AD6 90 04 2B         [24] 1310 	mov	dptr,#_parse_user_input_base_65536_74
      002AD9 E0               [24] 1311 	movx	a,@dptr
      002ADA FF               [12] 1312 	mov	r7,a
      002ADB 90 04 56         [24] 1313 	mov	dptr,#_parse_user_input_digit_count_65536_75
      002ADE E0               [24] 1314 	movx	a,@dptr
      002ADF FD               [12] 1315 	mov	r5,a
      002AE0 A3               [24] 1316 	inc	dptr
      002AE1 E0               [24] 1317 	movx	a,@dptr
      002AE2 FE               [12] 1318 	mov	r6,a
      002AE3 7B 00            [12] 1319 	mov	r3,#0x00
      002AE5 7C 00            [12] 1320 	mov	r4,#0x00
      002AE7                       1321 00118$:
      002AE7 C3               [12] 1322 	clr	c
      002AE8 EB               [12] 1323 	mov	a,r3
      002AE9 9D               [12] 1324 	subb	a,r5
      002AEA EC               [12] 1325 	mov	a,r4
      002AEB 9E               [12] 1326 	subb	a,r6
      002AEC 50 6E            [24] 1327 	jnc	00116$
                           00027C  1328 	C$uart.c$100$1_0$75 ==.
                                   1329 ;	uart.c:100: number *= base;             // Multiply the current value of number by the base.
      002AEE C0 05            [24] 1330 	push	ar5
      002AF0 C0 06            [24] 1331 	push	ar6
      002AF2 90 04 2C         [24] 1332 	mov	dptr,#_parse_user_input_number_65536_75
      002AF5 E0               [24] 1333 	movx	a,@dptr
      002AF6 F9               [12] 1334 	mov	r1,a
      002AF7 A3               [24] 1335 	inc	dptr
      002AF8 E0               [24] 1336 	movx	a,@dptr
      002AF9 FA               [12] 1337 	mov	r2,a
      002AFA 90 04 73         [24] 1338 	mov	dptr,#__mulint_PARM_2
      002AFD EF               [12] 1339 	mov	a,r7
      002AFE F0               [24] 1340 	movx	@dptr,a
      002AFF E4               [12] 1341 	clr	a
      002B00 A3               [24] 1342 	inc	dptr
      002B01 F0               [24] 1343 	movx	@dptr,a
      002B02 89 82            [24] 1344 	mov	dpl,r1
      002B04 8A 83            [24] 1345 	mov	dph,r2
      002B06 C0 07            [24] 1346 	push	ar7
      002B08 C0 06            [24] 1347 	push	ar6
      002B0A C0 05            [24] 1348 	push	ar5
      002B0C C0 04            [24] 1349 	push	ar4
      002B0E C0 03            [24] 1350 	push	ar3
      002B10 12 31 B1         [24] 1351 	lcall	__mulint
      002B13 E5 82            [12] 1352 	mov	a,dpl
      002B15 85 83 F0         [24] 1353 	mov	b,dph
      002B18 D0 03            [24] 1354 	pop	ar3
      002B1A D0 04            [24] 1355 	pop	ar4
      002B1C D0 05            [24] 1356 	pop	ar5
      002B1E D0 06            [24] 1357 	pop	ar6
      002B20 D0 07            [24] 1358 	pop	ar7
      002B22 90 04 2C         [24] 1359 	mov	dptr,#_parse_user_input_number_65536_75
      002B25 F0               [24] 1360 	movx	@dptr,a
      002B26 E5 F0            [12] 1361 	mov	a,b
      002B28 A3               [24] 1362 	inc	dptr
      002B29 F0               [24] 1363 	movx	@dptr,a
                           0002B8  1364 	C$uart.c$101$3_0$81 ==.
                                   1365 ;	uart.c:101: number += digits[i];        // Add the current digit to number.
      002B2A EB               [12] 1366 	mov	a,r3
      002B2B 2B               [12] 1367 	add	a,r3
      002B2C F9               [12] 1368 	mov	r1,a
      002B2D EC               [12] 1369 	mov	a,r4
      002B2E 33               [12] 1370 	rlc	a
      002B2F FA               [12] 1371 	mov	r2,a
      002B30 E9               [12] 1372 	mov	a,r1
      002B31 24 2E            [12] 1373 	add	a,#_parse_user_input_digits_65536_75
      002B33 F5 82            [12] 1374 	mov	dpl,a
      002B35 EA               [12] 1375 	mov	a,r2
      002B36 34 04            [12] 1376 	addc	a,#(_parse_user_input_digits_65536_75 >> 8)
      002B38 F5 83            [12] 1377 	mov	dph,a
      002B3A E0               [24] 1378 	movx	a,@dptr
      002B3B F9               [12] 1379 	mov	r1,a
      002B3C A3               [24] 1380 	inc	dptr
      002B3D E0               [24] 1381 	movx	a,@dptr
      002B3E FA               [12] 1382 	mov	r2,a
      002B3F 90 04 2C         [24] 1383 	mov	dptr,#_parse_user_input_number_65536_75
      002B42 E0               [24] 1384 	movx	a,@dptr
      002B43 F8               [12] 1385 	mov	r0,a
      002B44 A3               [24] 1386 	inc	dptr
      002B45 E0               [24] 1387 	movx	a,@dptr
      002B46 FE               [12] 1388 	mov	r6,a
      002B47 90 04 2C         [24] 1389 	mov	dptr,#_parse_user_input_number_65536_75
      002B4A E9               [12] 1390 	mov	a,r1
      002B4B 28               [12] 1391 	add	a,r0
      002B4C F0               [24] 1392 	movx	@dptr,a
      002B4D EA               [12] 1393 	mov	a,r2
      002B4E 3E               [12] 1394 	addc	a,r6
      002B4F A3               [24] 1395 	inc	dptr
      002B50 F0               [24] 1396 	movx	@dptr,a
                           0002DF  1397 	C$uart.c$98$2_0$80 ==.
                                   1398 ;	uart.c:98: for(i = 0; i < digit_count; i++) // Iterate over the digits.
      002B51 0B               [12] 1399 	inc	r3
      002B52 BB 00 01         [24] 1400 	cjne	r3,#0x00,00171$
      002B55 0C               [12] 1401 	inc	r4
      002B56                       1402 00171$:
      002B56 D0 06            [24] 1403 	pop	ar6
      002B58 D0 05            [24] 1404 	pop	ar5
      002B5A 80 8B            [24] 1405 	sjmp	00118$
      002B5C                       1406 00116$:
                           0002EA  1407 	C$uart.c$103$1_0$75 ==.
                                   1408 ;	uart.c:103: return number;
      002B5C 90 04 2C         [24] 1409 	mov	dptr,#_parse_user_input_number_65536_75
      002B5F E0               [24] 1410 	movx	a,@dptr
      002B60 FE               [12] 1411 	mov	r6,a
      002B61 A3               [24] 1412 	inc	dptr
      002B62 E0               [24] 1413 	movx	a,@dptr
                           0002F1  1414 	C$uart.c$104$1_0$75 ==.
                                   1415 ;	uart.c:104: }
                           0002F1  1416 	C$uart.c$104$1_0$75 ==.
                           0002F1  1417 	XG$parse_user_input$0$0 ==.
      002B63 8E 82            [24] 1418 	mov	dpl,r6
      002B65 F5 83            [12] 1419 	mov	dph,a
      002B67 22               [24] 1420 	ret
                                   1421 ;------------------------------------------------------------
                                   1422 ;Allocation info for local variables in function 'print_hex_number'
                                   1423 ;------------------------------------------------------------
                                   1424 ;sloc3                     Allocated with name '_print_hex_number_sloc3_1_0'
                                   1425 ;sloc4                     Allocated with name '_print_hex_number_sloc4_1_0'
                                   1426 ;width                     Allocated with name '_print_hex_number_PARM_2'
                                   1427 ;num                       Allocated with name '_print_hex_number_num_65536_82'
                                   1428 ;ascii_buffer              Allocated with name '_print_hex_number_ascii_buffer_65536_83'
                                   1429 ;temp_val                  Allocated with name '_print_hex_number_temp_val_65536_83'
                                   1430 ;digit_count               Allocated with name '_print_hex_number_digit_count_65536_83'
                                   1431 ;val_check                 Allocated with name '_print_hex_number_val_check_65536_83'
                                   1432 ;------------------------------------------------------------
                           0002F6  1433 	G$print_hex_number$0$0 ==.
                           0002F6  1434 	C$uart.c$162$1_0$83 ==.
                                   1435 ;	uart.c:162: void print_hex_number(uint32_t num, uint8_t width) {
                                   1436 ;	-----------------------------------------
                                   1437 ;	 function print_hex_number
                                   1438 ;	-----------------------------------------
      002B68                       1439 _print_hex_number:
      002B68 AF 82            [24] 1440 	mov	r7,dpl
      002B6A AE 83            [24] 1441 	mov	r6,dph
      002B6C AD F0            [24] 1442 	mov	r5,b
      002B6E FC               [12] 1443 	mov	r4,a
      002B6F 90 04 5B         [24] 1444 	mov	dptr,#_print_hex_number_num_65536_82
      002B72 EF               [12] 1445 	mov	a,r7
      002B73 F0               [24] 1446 	movx	@dptr,a
      002B74 EE               [12] 1447 	mov	a,r6
      002B75 A3               [24] 1448 	inc	dptr
      002B76 F0               [24] 1449 	movx	@dptr,a
      002B77 ED               [12] 1450 	mov	a,r5
      002B78 A3               [24] 1451 	inc	dptr
      002B79 F0               [24] 1452 	movx	@dptr,a
      002B7A EC               [12] 1453 	mov	a,r4
      002B7B A3               [24] 1454 	inc	dptr
      002B7C F0               [24] 1455 	movx	@dptr,a
                           00030B  1456 	C$uart.c$167$2_0$84 ==.
                                   1457 ;	uart.c:167: for (digit_count = width; digit_count > 1; digit_count--) {  // loop through each digit, starting from the most significant and going down to the second least significant
      002B7D 90 04 5A         [24] 1458 	mov	dptr,#_print_hex_number_PARM_2
      002B80 E0               [24] 1459 	movx	a,@dptr
      002B81 FF               [12] 1460 	mov	r7,a
      002B82 90 04 5B         [24] 1461 	mov	dptr,#_print_hex_number_num_65536_82
      002B85 E0               [24] 1462 	movx	a,@dptr
      002B86 FB               [12] 1463 	mov	r3,a
      002B87 A3               [24] 1464 	inc	dptr
      002B88 E0               [24] 1465 	movx	a,@dptr
      002B89 FC               [12] 1466 	mov	r4,a
      002B8A A3               [24] 1467 	inc	dptr
      002B8B E0               [24] 1468 	movx	a,@dptr
      002B8C FD               [12] 1469 	mov	r5,a
      002B8D A3               [24] 1470 	inc	dptr
      002B8E E0               [24] 1471 	movx	a,@dptr
      002B8F FE               [12] 1472 	mov	r6,a
      002B90 C3               [12] 1473 	clr	c
      002B91 74 0F            [12] 1474 	mov	a,#0x0f
      002B93 9B               [12] 1475 	subb	a,r3
      002B94 E4               [12] 1476 	clr	a
      002B95 9C               [12] 1477 	subb	a,r4
      002B96 E4               [12] 1478 	clr	a
      002B97 9D               [12] 1479 	subb	a,r5
      002B98 E4               [12] 1480 	clr	a
      002B99 9E               [12] 1481 	subb	a,r6
      002B9A 92 00            [24] 1482 	mov	_print_hex_number_sloc0_1_0,c
      002B9C C3               [12] 1483 	clr	c
      002B9D 74 FF            [12] 1484 	mov	a,#0xff
      002B9F 9B               [12] 1485 	subb	a,r3
      002BA0 E4               [12] 1486 	clr	a
      002BA1 9C               [12] 1487 	subb	a,r4
      002BA2 E4               [12] 1488 	clr	a
      002BA3 9D               [12] 1489 	subb	a,r5
      002BA4 E4               [12] 1490 	clr	a
      002BA5 9E               [12] 1491 	subb	a,r6
      002BA6 92 01            [24] 1492 	mov	_print_hex_number_sloc1_1_0,c
      002BA8 C3               [12] 1493 	clr	c
      002BA9 74 FF            [12] 1494 	mov	a,#0xff
      002BAB 9B               [12] 1495 	subb	a,r3
      002BAC 74 0F            [12] 1496 	mov	a,#0x0f
      002BAE 9C               [12] 1497 	subb	a,r4
      002BAF E4               [12] 1498 	clr	a
      002BB0 9D               [12] 1499 	subb	a,r5
      002BB1 E4               [12] 1500 	clr	a
      002BB2 9E               [12] 1501 	subb	a,r6
      002BB3 92 02            [24] 1502 	mov	_print_hex_number_sloc2_1_0,c
      002BB5                       1503 00117$:
      002BB5 C3               [12] 1504 	clr	c
      002BB6 74 81            [12] 1505 	mov	a,#(0x01 ^ 0x80)
      002BB8 8F F0            [24] 1506 	mov	b,r7
      002BBA 63 F0 80         [24] 1507 	xrl	b,#0x80
      002BBD 95 F0            [12] 1508 	subb	a,b
      002BBF 50 3B            [24] 1509 	jnc	00132$
                           00034F  1510 	C$uart.c$168$3_0$85 ==.
                                   1511 ;	uart.c:168: switch (digit_count) {
      002BC1 BF 02 02         [24] 1512 	cjne	r7,#0x02,00176$
      002BC4 80 26            [24] 1513 	sjmp	00107$
      002BC6                       1514 00176$:
      002BC6 BF 03 02         [24] 1515 	cjne	r7,#0x03,00177$
      002BC9 80 12            [24] 1516 	sjmp	00104$
      002BCB                       1517 00177$:
      002BCB BF 04 2B         [24] 1518 	cjne	r7,#0x04,00118$
                           00035C  1519 	C$uart.c$171$4_0$86 ==.
                                   1520 ;	uart.c:171: if (num <= val_check) {
      002BCE 20 02 28         [24] 1521 	jb	_print_hex_number_sloc2_1_0,00118$
                           00035F  1522 	C$uart.c$172$5_0$87 ==.
                                   1523 ;	uart.c:172: putchar('0');           // if num is less than or equal to value_check, print a leading zero
      002BD1 90 00 30         [24] 1524 	mov	dptr,#0x0030
      002BD4 C0 07            [24] 1525 	push	ar7
      002BD6 12 27 62         [24] 1526 	lcall	_putchar
      002BD9 D0 07            [24] 1527 	pop	ar7
                           000369  1528 	C$uart.c$174$4_0$86 ==.
                                   1529 ;	uart.c:174: break;
                           000369  1530 	C$uart.c$175$4_0$86 ==.
                                   1531 ;	uart.c:175: case 3:
      002BDB 80 1C            [24] 1532 	sjmp	00118$
      002BDD                       1533 00104$:
                           00036B  1534 	C$uart.c$177$4_0$86 ==.
                                   1535 ;	uart.c:177: if (num <= val_check) {
      002BDD 20 01 19         [24] 1536 	jb	_print_hex_number_sloc1_1_0,00118$
                           00036E  1537 	C$uart.c$178$5_0$88 ==.
                                   1538 ;	uart.c:178: putchar('0');           // if num is less than or equal to value_check, print a leading zero
      002BE0 90 00 30         [24] 1539 	mov	dptr,#0x0030
      002BE3 C0 07            [24] 1540 	push	ar7
      002BE5 12 27 62         [24] 1541 	lcall	_putchar
      002BE8 D0 07            [24] 1542 	pop	ar7
                           000378  1543 	C$uart.c$180$4_0$86 ==.
                                   1544 ;	uart.c:180: break;
                           000378  1545 	C$uart.c$181$4_0$86 ==.
                                   1546 ;	uart.c:181: case 2:
      002BEA 80 0D            [24] 1547 	sjmp	00118$
      002BEC                       1548 00107$:
                           00037A  1549 	C$uart.c$183$4_0$86 ==.
                                   1550 ;	uart.c:183: if (num <= val_check) {
      002BEC 20 00 0A         [24] 1551 	jb	_print_hex_number_sloc0_1_0,00118$
                           00037D  1552 	C$uart.c$184$5_0$89 ==.
                                   1553 ;	uart.c:184: putchar('0');           // if num is less than or equal to value_check, print a leading zero
      002BEF 90 00 30         [24] 1554 	mov	dptr,#0x0030
      002BF2 C0 07            [24] 1555 	push	ar7
      002BF4 12 27 62         [24] 1556 	lcall	_putchar
      002BF7 D0 07            [24] 1557 	pop	ar7
                           000387  1558 	C$uart.c$187$3_0$85 ==.
                                   1559 ;	uart.c:187: }
      002BF9                       1560 00118$:
                           000387  1561 	C$uart.c$167$2_0$84 ==.
                                   1562 ;	uart.c:167: for (digit_count = width; digit_count > 1; digit_count--) {  // loop through each digit, starting from the most significant and going down to the second least significant
      002BF9 1F               [12] 1563 	dec	r7
                           000388  1564 	C$uart.c$190$2_0$83 ==.
                                   1565 ;	uart.c:190: do {
      002BFA 80 B9            [24] 1566 	sjmp	00117$
      002BFC                       1567 00132$:
      002BFC                       1568 00112$:
                           00038A  1569 	C$uart.c$191$2_0$90 ==.
                                   1570 ;	uart.c:191: ascii_buffer[digit_count] = int_to_char(num % 16);  // store the ASCII representation of the current digit in the buffer
      002BFC EF               [12] 1571 	mov	a,r7
      002BFD FD               [12] 1572 	mov	r5,a
      002BFE 33               [12] 1573 	rlc	a
      002BFF 95 E0            [12] 1574 	subb	a,acc
      002C01 FE               [12] 1575 	mov	r6,a
      002C02 ED               [12] 1576 	mov	a,r5
      002C03 24 5F            [12] 1577 	add	a,#_print_hex_number_ascii_buffer_65536_83
      002C05 F5 08            [12] 1578 	mov	_print_hex_number_sloc3_1_0,a
      002C07 EE               [12] 1579 	mov	a,r6
      002C08 34 04            [12] 1580 	addc	a,#(_print_hex_number_ascii_buffer_65536_83 >> 8)
      002C0A F5 09            [12] 1581 	mov	(_print_hex_number_sloc3_1_0 + 1),a
      002C0C 90 04 5B         [24] 1582 	mov	dptr,#_print_hex_number_num_65536_82
      002C0F E0               [24] 1583 	movx	a,@dptr
      002C10 F5 0A            [12] 1584 	mov	_print_hex_number_sloc4_1_0,a
      002C12 A3               [24] 1585 	inc	dptr
      002C13 E0               [24] 1586 	movx	a,@dptr
      002C14 F5 0B            [12] 1587 	mov	(_print_hex_number_sloc4_1_0 + 1),a
      002C16 A3               [24] 1588 	inc	dptr
      002C17 E0               [24] 1589 	movx	a,@dptr
      002C18 F5 0C            [12] 1590 	mov	(_print_hex_number_sloc4_1_0 + 2),a
      002C1A A3               [24] 1591 	inc	dptr
      002C1B E0               [24] 1592 	movx	a,@dptr
      002C1C F5 0D            [12] 1593 	mov	(_print_hex_number_sloc4_1_0 + 3),a
      002C1E 74 0F            [12] 1594 	mov	a,#0x0f
      002C20 55 0A            [12] 1595 	anl	a,_print_hex_number_sloc4_1_0
      002C22 F8               [12] 1596 	mov	r0,a
      002C23 7C 00            [12] 1597 	mov	r4,#0x00
      002C25 88 82            [24] 1598 	mov	dpl,r0
      002C27 8C 83            [24] 1599 	mov	dph,r4
      002C29 C0 07            [24] 1600 	push	ar7
      002C2B 12 28 91         [24] 1601 	lcall	_int_to_char
      002C2E AE 82            [24] 1602 	mov	r6,dpl
      002C30 D0 07            [24] 1603 	pop	ar7
      002C32 85 08 82         [24] 1604 	mov	dpl,_print_hex_number_sloc3_1_0
      002C35 85 09 83         [24] 1605 	mov	dph,(_print_hex_number_sloc3_1_0 + 1)
      002C38 EE               [12] 1606 	mov	a,r6
      002C39 F0               [24] 1607 	movx	@dptr,a
                           0003C8  1608 	C$uart.c$192$2_0$90 ==.
                                   1609 ;	uart.c:192: num /= 16;          // shift num to the right by one digit (divide by 16)
      002C3A AB 0A            [24] 1610 	mov	r3,_print_hex_number_sloc4_1_0
      002C3C E5 0B            [12] 1611 	mov	a,(_print_hex_number_sloc4_1_0 + 1)
      002C3E C4               [12] 1612 	swap	a
      002C3F CB               [12] 1613 	xch	a,r3
      002C40 C4               [12] 1614 	swap	a
      002C41 54 0F            [12] 1615 	anl	a,#0x0f
      002C43 6B               [12] 1616 	xrl	a,r3
      002C44 CB               [12] 1617 	xch	a,r3
      002C45 54 0F            [12] 1618 	anl	a,#0x0f
      002C47 CB               [12] 1619 	xch	a,r3
      002C48 6B               [12] 1620 	xrl	a,r3
      002C49 CB               [12] 1621 	xch	a,r3
      002C4A FC               [12] 1622 	mov	r4,a
      002C4B E5 0C            [12] 1623 	mov	a,(_print_hex_number_sloc4_1_0 + 2)
      002C4D C4               [12] 1624 	swap	a
      002C4E 54 F0            [12] 1625 	anl	a,#0xf0
      002C50 4C               [12] 1626 	orl	a,r4
      002C51 FC               [12] 1627 	mov	r4,a
      002C52 AD 0C            [24] 1628 	mov	r5,(_print_hex_number_sloc4_1_0 + 2)
      002C54 E5 0D            [12] 1629 	mov	a,(_print_hex_number_sloc4_1_0 + 3)
      002C56 C4               [12] 1630 	swap	a
      002C57 CD               [12] 1631 	xch	a,r5
      002C58 C4               [12] 1632 	swap	a
      002C59 54 0F            [12] 1633 	anl	a,#0x0f
      002C5B 6D               [12] 1634 	xrl	a,r5
      002C5C CD               [12] 1635 	xch	a,r5
      002C5D 54 0F            [12] 1636 	anl	a,#0x0f
      002C5F CD               [12] 1637 	xch	a,r5
      002C60 6D               [12] 1638 	xrl	a,r5
      002C61 CD               [12] 1639 	xch	a,r5
      002C62 FE               [12] 1640 	mov	r6,a
      002C63 90 04 5B         [24] 1641 	mov	dptr,#_print_hex_number_num_65536_82
      002C66 EB               [12] 1642 	mov	a,r3
      002C67 F0               [24] 1643 	movx	@dptr,a
      002C68 EC               [12] 1644 	mov	a,r4
      002C69 A3               [24] 1645 	inc	dptr
      002C6A F0               [24] 1646 	movx	@dptr,a
      002C6B ED               [12] 1647 	mov	a,r5
      002C6C A3               [24] 1648 	inc	dptr
      002C6D F0               [24] 1649 	movx	@dptr,a
      002C6E EE               [12] 1650 	mov	a,r6
      002C6F A3               [24] 1651 	inc	dptr
      002C70 F0               [24] 1652 	movx	@dptr,a
                           0003FF  1653 	C$uart.c$193$2_0$90 ==.
                                   1654 ;	uart.c:193: digit_count++;      // increment the digit counter
      002C71 0F               [12] 1655 	inc	r7
                           000400  1656 	C$uart.c$194$1_0$83 ==.
                                   1657 ;	uart.c:194: } while (num > 0);      // continue the loop until num becomes 0
      002C72 90 04 5B         [24] 1658 	mov	dptr,#_print_hex_number_num_65536_82
      002C75 E0               [24] 1659 	movx	a,@dptr
      002C76 F5 F0            [12] 1660 	mov	b,a
      002C78 A3               [24] 1661 	inc	dptr
      002C79 E0               [24] 1662 	movx	a,@dptr
      002C7A 42 F0            [12] 1663 	orl	b,a
      002C7C A3               [24] 1664 	inc	dptr
      002C7D E0               [24] 1665 	movx	a,@dptr
      002C7E 42 F0            [12] 1666 	orl	b,a
      002C80 A3               [24] 1667 	inc	dptr
      002C81 E0               [24] 1668 	movx	a,@dptr
      002C82 45 F0            [12] 1669 	orl	a,b
      002C84 60 03            [24] 1670 	jz	00183$
      002C86 02 2B FC         [24] 1671 	ljmp	00112$
      002C89                       1672 00183$:
                           000417  1673 	C$uart.c$196$2_0$91 ==.
                                   1674 ;	uart.c:196: for (digit_count -= 1; digit_count >= 0; digit_count--) {  // loop through the buffer in reverse order to print the digits in the correct order
      002C89 EF               [12] 1675 	mov	a,r7
      002C8A 14               [12] 1676 	dec	a
      002C8B 90 04 69         [24] 1677 	mov	dptr,#_print_hex_number_digit_count_65536_83
      002C8E F0               [24] 1678 	movx	@dptr,a
      002C8F E0               [24] 1679 	movx	a,@dptr
      002C90 FF               [12] 1680 	mov	r7,a
      002C91                       1681 00120$:
      002C91 EF               [12] 1682 	mov	a,r7
      002C92 20 E7 22         [24] 1683 	jb	acc.7,00122$
                           000423  1684 	C$uart.c$197$3_0$92 ==.
                                   1685 ;	uart.c:197: putchar(ascii_buffer[digit_count]);                     // print the current digit
      002C95 EF               [12] 1686 	mov	a,r7
      002C96 FD               [12] 1687 	mov	r5,a
      002C97 33               [12] 1688 	rlc	a
      002C98 95 E0            [12] 1689 	subb	a,acc
      002C9A FE               [12] 1690 	mov	r6,a
      002C9B ED               [12] 1691 	mov	a,r5
      002C9C 24 5F            [12] 1692 	add	a,#_print_hex_number_ascii_buffer_65536_83
      002C9E F5 82            [12] 1693 	mov	dpl,a
      002CA0 EE               [12] 1694 	mov	a,r6
      002CA1 34 04            [12] 1695 	addc	a,#(_print_hex_number_ascii_buffer_65536_83 >> 8)
      002CA3 F5 83            [12] 1696 	mov	dph,a
      002CA5 E0               [24] 1697 	movx	a,@dptr
      002CA6 FE               [12] 1698 	mov	r6,a
      002CA7 7D 00            [12] 1699 	mov	r5,#0x00
      002CA9 8E 82            [24] 1700 	mov	dpl,r6
      002CAB 8D 83            [24] 1701 	mov	dph,r5
      002CAD C0 07            [24] 1702 	push	ar7
      002CAF 12 27 62         [24] 1703 	lcall	_putchar
      002CB2 D0 07            [24] 1704 	pop	ar7
                           000442  1705 	C$uart.c$196$2_0$91 ==.
                                   1706 ;	uart.c:196: for (digit_count -= 1; digit_count >= 0; digit_count--) {  // loop through the buffer in reverse order to print the digits in the correct order
      002CB4 1F               [12] 1707 	dec	r7
      002CB5 80 DA            [24] 1708 	sjmp	00120$
      002CB7                       1709 00122$:
                           000445  1710 	C$uart.c$199$2_0$83 ==.
                                   1711 ;	uart.c:199: }
                           000445  1712 	C$uart.c$199$2_0$83 ==.
                           000445  1713 	XG$print_hex_number$0$0 ==.
      002CB7 22               [24] 1714 	ret
                                   1715 ;------------------------------------------------------------
                                   1716 ;Allocation info for local variables in function 'print_colored'
                                   1717 ;------------------------------------------------------------
                                   1718 ;color_code                Allocated with name '_print_colored_PARM_2'
                                   1719 ;str                       Allocated with name '_print_colored_str_65536_93'
                                   1720 ;------------------------------------------------------------
                           000446  1721 	G$print_colored$0$0 ==.
                           000446  1722 	C$uart.c$202$2_0$94 ==.
                                   1723 ;	uart.c:202: void print_colored(char* str, int color_code) {
                                   1724 ;	-----------------------------------------
                                   1725 ;	 function print_colored
                                   1726 ;	-----------------------------------------
      002CB8                       1727 _print_colored:
      002CB8 AF F0            [24] 1728 	mov	r7,b
      002CBA AE 83            [24] 1729 	mov	r6,dph
      002CBC E5 82            [12] 1730 	mov	a,dpl
      002CBE 90 04 6C         [24] 1731 	mov	dptr,#_print_colored_str_65536_93
      002CC1 F0               [24] 1732 	movx	@dptr,a
      002CC2 EE               [12] 1733 	mov	a,r6
      002CC3 A3               [24] 1734 	inc	dptr
      002CC4 F0               [24] 1735 	movx	@dptr,a
      002CC5 EF               [12] 1736 	mov	a,r7
      002CC6 A3               [24] 1737 	inc	dptr
      002CC7 F0               [24] 1738 	movx	@dptr,a
                           000456  1739 	C$uart.c$203$1_0$94 ==.
                                   1740 ;	uart.c:203: printf("\033[1;%dm%s\033[0m", color_code, str);
      002CC8 90 04 6C         [24] 1741 	mov	dptr,#_print_colored_str_65536_93
      002CCB E0               [24] 1742 	movx	a,@dptr
      002CCC C0 E0            [24] 1743 	push	acc
      002CCE A3               [24] 1744 	inc	dptr
      002CCF E0               [24] 1745 	movx	a,@dptr
      002CD0 C0 E0            [24] 1746 	push	acc
      002CD2 A3               [24] 1747 	inc	dptr
      002CD3 E0               [24] 1748 	movx	a,@dptr
      002CD4 C0 E0            [24] 1749 	push	acc
      002CD6 90 04 6A         [24] 1750 	mov	dptr,#_print_colored_PARM_2
      002CD9 E0               [24] 1751 	movx	a,@dptr
      002CDA C0 E0            [24] 1752 	push	acc
      002CDC A3               [24] 1753 	inc	dptr
      002CDD E0               [24] 1754 	movx	a,@dptr
      002CDE C0 E0            [24] 1755 	push	acc
      002CE0 74 6C            [12] 1756 	mov	a,#___str_2
      002CE2 C0 E0            [24] 1757 	push	acc
      002CE4 74 41            [12] 1758 	mov	a,#(___str_2 >> 8)
      002CE6 C0 E0            [24] 1759 	push	acc
      002CE8 74 80            [12] 1760 	mov	a,#0x80
      002CEA C0 E0            [24] 1761 	push	acc
      002CEC 12 32 1F         [24] 1762 	lcall	_printf
      002CEF E5 81            [12] 1763 	mov	a,sp
      002CF1 24 F8            [12] 1764 	add	a,#0xf8
      002CF3 F5 81            [12] 1765 	mov	sp,a
                           000483  1766 	C$uart.c$204$1_0$94 ==.
                                   1767 ;	uart.c:204: }
                           000483  1768 	C$uart.c$204$1_0$94 ==.
                           000483  1769 	XG$print_colored$0$0 ==.
      002CF5 22               [24] 1770 	ret
                                   1771 ;------------------------------------------------------------
                                   1772 ;Allocation info for local variables in function 'print_UI'
                                   1773 ;------------------------------------------------------------
                           000484  1774 	G$print_UI$0$0 ==.
                           000484  1775 	C$uart.c$205$1_0$96 ==.
                                   1776 ;	uart.c:205: void print_UI(void)
                                   1777 ;	-----------------------------------------
                                   1778 ;	 function print_UI
                                   1779 ;	-----------------------------------------
      002CF6                       1780 _print_UI:
                           000484  1781 	C$uart.c$207$1_0$96 ==.
                                   1782 ;	uart.c:207: printf("\n\r");
      002CF6 74 7A            [12] 1783 	mov	a,#___str_3
      002CF8 C0 E0            [24] 1784 	push	acc
      002CFA 74 41            [12] 1785 	mov	a,#(___str_3 >> 8)
      002CFC C0 E0            [24] 1786 	push	acc
      002CFE 74 80            [12] 1787 	mov	a,#0x80
      002D00 C0 E0            [24] 1788 	push	acc
      002D02 12 32 1F         [24] 1789 	lcall	_printf
      002D05 15 81            [12] 1790 	dec	sp
      002D07 15 81            [12] 1791 	dec	sp
      002D09 15 81            [12] 1792 	dec	sp
                           000499  1793 	C$uart.c$208$1_0$96 ==.
                                   1794 ;	uart.c:208: print_colored("+-------------------------------------------------+\n\r", 35);
      002D0B 90 04 6A         [24] 1795 	mov	dptr,#_print_colored_PARM_2
      002D0E 74 23            [12] 1796 	mov	a,#0x23
      002D10 F0               [24] 1797 	movx	@dptr,a
      002D11 E4               [12] 1798 	clr	a
      002D12 A3               [24] 1799 	inc	dptr
      002D13 F0               [24] 1800 	movx	@dptr,a
      002D14 90 41 7D         [24] 1801 	mov	dptr,#___str_4
      002D17 75 F0 80         [24] 1802 	mov	b,#0x80
      002D1A 12 2C B8         [24] 1803 	lcall	_print_colored
                           0004AB  1804 	C$uart.c$209$1_0$96 ==.
                                   1805 ;	uart.c:209: print_colored("|                                                 |\n\r", 35);
      002D1D 90 04 6A         [24] 1806 	mov	dptr,#_print_colored_PARM_2
      002D20 74 23            [12] 1807 	mov	a,#0x23
      002D22 F0               [24] 1808 	movx	@dptr,a
      002D23 E4               [12] 1809 	clr	a
      002D24 A3               [24] 1810 	inc	dptr
      002D25 F0               [24] 1811 	movx	@dptr,a
      002D26 90 41 B3         [24] 1812 	mov	dptr,#___str_5
      002D29 75 F0 80         [24] 1813 	mov	b,#0x80
      002D2C 12 2C B8         [24] 1814 	lcall	_print_colored
                           0004BD  1815 	C$uart.c$210$1_0$96 ==.
                                   1816 ;	uart.c:210: print_colored("|           USER INTERFACE Lab 4 Required         |\n\r", 35);
      002D2F 90 04 6A         [24] 1817 	mov	dptr,#_print_colored_PARM_2
      002D32 74 23            [12] 1818 	mov	a,#0x23
      002D34 F0               [24] 1819 	movx	@dptr,a
      002D35 E4               [12] 1820 	clr	a
      002D36 A3               [24] 1821 	inc	dptr
      002D37 F0               [24] 1822 	movx	@dptr,a
      002D38 90 41 E9         [24] 1823 	mov	dptr,#___str_6
      002D3B 75 F0 80         [24] 1824 	mov	b,#0x80
      002D3E 12 2C B8         [24] 1825 	lcall	_print_colored
                           0004CF  1826 	C$uart.c$211$1_0$96 ==.
                                   1827 ;	uart.c:211: print_colored("|                   I2C & EEPROM                  |\n\r", 35);
      002D41 90 04 6A         [24] 1828 	mov	dptr,#_print_colored_PARM_2
      002D44 74 23            [12] 1829 	mov	a,#0x23
      002D46 F0               [24] 1830 	movx	@dptr,a
      002D47 E4               [12] 1831 	clr	a
      002D48 A3               [24] 1832 	inc	dptr
      002D49 F0               [24] 1833 	movx	@dptr,a
      002D4A 90 42 1F         [24] 1834 	mov	dptr,#___str_7
      002D4D 75 F0 80         [24] 1835 	mov	b,#0x80
      002D50 12 2C B8         [24] 1836 	lcall	_print_colored
                           0004E1  1837 	C$uart.c$212$1_0$96 ==.
                                   1838 ;	uart.c:212: print_colored("|                                                 |\n\r", 35);
      002D53 90 04 6A         [24] 1839 	mov	dptr,#_print_colored_PARM_2
      002D56 74 23            [12] 1840 	mov	a,#0x23
      002D58 F0               [24] 1841 	movx	@dptr,a
      002D59 E4               [12] 1842 	clr	a
      002D5A A3               [24] 1843 	inc	dptr
      002D5B F0               [24] 1844 	movx	@dptr,a
      002D5C 90 41 B3         [24] 1845 	mov	dptr,#___str_5
      002D5F 75 F0 80         [24] 1846 	mov	b,#0x80
      002D62 12 2C B8         [24] 1847 	lcall	_print_colored
                           0004F3  1848 	C$uart.c$213$1_0$96 ==.
                                   1849 ;	uart.c:213: print_colored("+-------------------------------------------------+\n\r\n\r", 35);
      002D65 90 04 6A         [24] 1850 	mov	dptr,#_print_colored_PARM_2
      002D68 74 23            [12] 1851 	mov	a,#0x23
      002D6A F0               [24] 1852 	movx	@dptr,a
      002D6B E4               [12] 1853 	clr	a
      002D6C A3               [24] 1854 	inc	dptr
      002D6D F0               [24] 1855 	movx	@dptr,a
      002D6E 90 42 55         [24] 1856 	mov	dptr,#___str_8
      002D71 75 F0 80         [24] 1857 	mov	b,#0x80
      002D74 12 2C B8         [24] 1858 	lcall	_print_colored
                           000505  1859 	C$uart.c$215$1_0$96 ==.
                                   1860 ;	uart.c:215: printf("        ");
      002D77 74 8D            [12] 1861 	mov	a,#___str_9
      002D79 C0 E0            [24] 1862 	push	acc
      002D7B 74 42            [12] 1863 	mov	a,#(___str_9 >> 8)
      002D7D C0 E0            [24] 1864 	push	acc
      002D7F 74 80            [12] 1865 	mov	a,#0x80
      002D81 C0 E0            [24] 1866 	push	acc
      002D83 12 32 1F         [24] 1867 	lcall	_printf
      002D86 15 81            [12] 1868 	dec	sp
      002D88 15 81            [12] 1869 	dec	sp
      002D8A 15 81            [12] 1870 	dec	sp
                           00051A  1871 	C$uart.c$216$1_0$96 ==.
                                   1872 ;	uart.c:216: print_colored("Please select an option below:\n\r", 37);
      002D8C 90 04 6A         [24] 1873 	mov	dptr,#_print_colored_PARM_2
      002D8F 74 25            [12] 1874 	mov	a,#0x25
      002D91 F0               [24] 1875 	movx	@dptr,a
      002D92 E4               [12] 1876 	clr	a
      002D93 A3               [24] 1877 	inc	dptr
      002D94 F0               [24] 1878 	movx	@dptr,a
      002D95 90 42 96         [24] 1879 	mov	dptr,#___str_10
      002D98 75 F0 80         [24] 1880 	mov	b,#0x80
      002D9B 12 2C B8         [24] 1881 	lcall	_print_colored
                           00052C  1882 	C$uart.c$217$1_0$96 ==.
                                   1883 ;	uart.c:217: printf("\n\r");
      002D9E 74 7A            [12] 1884 	mov	a,#___str_3
      002DA0 C0 E0            [24] 1885 	push	acc
      002DA2 74 41            [12] 1886 	mov	a,#(___str_3 >> 8)
      002DA4 C0 E0            [24] 1887 	push	acc
      002DA6 74 80            [12] 1888 	mov	a,#0x80
      002DA8 C0 E0            [24] 1889 	push	acc
      002DAA 12 32 1F         [24] 1890 	lcall	_printf
      002DAD 15 81            [12] 1891 	dec	sp
      002DAF 15 81            [12] 1892 	dec	sp
      002DB1 15 81            [12] 1893 	dec	sp
                           000541  1894 	C$uart.c$219$1_0$96 ==.
                                   1895 ;	uart.c:219: printf("   ");
      002DB3 74 B7            [12] 1896 	mov	a,#___str_11
      002DB5 C0 E0            [24] 1897 	push	acc
      002DB7 74 42            [12] 1898 	mov	a,#(___str_11 >> 8)
      002DB9 C0 E0            [24] 1899 	push	acc
      002DBB 74 80            [12] 1900 	mov	a,#0x80
      002DBD C0 E0            [24] 1901 	push	acc
      002DBF 12 32 1F         [24] 1902 	lcall	_printf
      002DC2 15 81            [12] 1903 	dec	sp
      002DC4 15 81            [12] 1904 	dec	sp
      002DC6 15 81            [12] 1905 	dec	sp
                           000556  1906 	C$uart.c$220$1_0$96 ==.
                                   1907 ;	uart.c:220: print_colored("+---------------------------------------------+\n\r", 36);
      002DC8 90 04 6A         [24] 1908 	mov	dptr,#_print_colored_PARM_2
      002DCB 74 24            [12] 1909 	mov	a,#0x24
      002DCD F0               [24] 1910 	movx	@dptr,a
      002DCE E4               [12] 1911 	clr	a
      002DCF A3               [24] 1912 	inc	dptr
      002DD0 F0               [24] 1913 	movx	@dptr,a
      002DD1 90 42 BB         [24] 1914 	mov	dptr,#___str_12
      002DD4 75 F0 80         [24] 1915 	mov	b,#0x80
      002DD7 12 2C B8         [24] 1916 	lcall	_print_colored
                           000568  1917 	C$uart.c$221$1_0$96 ==.
                                   1918 ;	uart.c:221: printf("   ");
      002DDA 74 B7            [12] 1919 	mov	a,#___str_11
      002DDC C0 E0            [24] 1920 	push	acc
      002DDE 74 42            [12] 1921 	mov	a,#(___str_11 >> 8)
      002DE0 C0 E0            [24] 1922 	push	acc
      002DE2 74 80            [12] 1923 	mov	a,#0x80
      002DE4 C0 E0            [24] 1924 	push	acc
      002DE6 12 32 1F         [24] 1925 	lcall	_printf
      002DE9 15 81            [12] 1926 	dec	sp
      002DEB 15 81            [12] 1927 	dec	sp
      002DED 15 81            [12] 1928 	dec	sp
                           00057D  1929 	C$uart.c$222$1_0$96 ==.
                                   1930 ;	uart.c:222: print_colored("| ", 36);
      002DEF 90 04 6A         [24] 1931 	mov	dptr,#_print_colored_PARM_2
      002DF2 74 24            [12] 1932 	mov	a,#0x24
      002DF4 F0               [24] 1933 	movx	@dptr,a
      002DF5 E4               [12] 1934 	clr	a
      002DF6 A3               [24] 1935 	inc	dptr
      002DF7 F0               [24] 1936 	movx	@dptr,a
      002DF8 90 42 ED         [24] 1937 	mov	dptr,#___str_13
      002DFB 75 F0 80         [24] 1938 	mov	b,#0x80
      002DFE 12 2C B8         [24] 1939 	lcall	_print_colored
                           00058F  1940 	C$uart.c$223$1_0$96 ==.
                                   1941 ;	uart.c:223: print_colored("[W] Write to EEPROM                         ", 36);
      002E01 90 04 6A         [24] 1942 	mov	dptr,#_print_colored_PARM_2
      002E04 74 24            [12] 1943 	mov	a,#0x24
      002E06 F0               [24] 1944 	movx	@dptr,a
      002E07 E4               [12] 1945 	clr	a
      002E08 A3               [24] 1946 	inc	dptr
      002E09 F0               [24] 1947 	movx	@dptr,a
      002E0A 90 42 F0         [24] 1948 	mov	dptr,#___str_14
      002E0D 75 F0 80         [24] 1949 	mov	b,#0x80
      002E10 12 2C B8         [24] 1950 	lcall	_print_colored
                           0005A1  1951 	C$uart.c$224$1_0$96 ==.
                                   1952 ;	uart.c:224: print_colored("| ", 36);
      002E13 90 04 6A         [24] 1953 	mov	dptr,#_print_colored_PARM_2
      002E16 74 24            [12] 1954 	mov	a,#0x24
      002E18 F0               [24] 1955 	movx	@dptr,a
      002E19 E4               [12] 1956 	clr	a
      002E1A A3               [24] 1957 	inc	dptr
      002E1B F0               [24] 1958 	movx	@dptr,a
      002E1C 90 42 ED         [24] 1959 	mov	dptr,#___str_13
      002E1F 75 F0 80         [24] 1960 	mov	b,#0x80
      002E22 12 2C B8         [24] 1961 	lcall	_print_colored
                           0005B3  1962 	C$uart.c$225$1_0$96 ==.
                                   1963 ;	uart.c:225: printf("\n\r");
      002E25 74 7A            [12] 1964 	mov	a,#___str_3
      002E27 C0 E0            [24] 1965 	push	acc
      002E29 74 41            [12] 1966 	mov	a,#(___str_3 >> 8)
      002E2B C0 E0            [24] 1967 	push	acc
      002E2D 74 80            [12] 1968 	mov	a,#0x80
      002E2F C0 E0            [24] 1969 	push	acc
      002E31 12 32 1F         [24] 1970 	lcall	_printf
      002E34 15 81            [12] 1971 	dec	sp
      002E36 15 81            [12] 1972 	dec	sp
      002E38 15 81            [12] 1973 	dec	sp
                           0005C8  1974 	C$uart.c$227$1_0$96 ==.
                                   1975 ;	uart.c:227: printf("   ");
      002E3A 74 B7            [12] 1976 	mov	a,#___str_11
      002E3C C0 E0            [24] 1977 	push	acc
      002E3E 74 42            [12] 1978 	mov	a,#(___str_11 >> 8)
      002E40 C0 E0            [24] 1979 	push	acc
      002E42 74 80            [12] 1980 	mov	a,#0x80
      002E44 C0 E0            [24] 1981 	push	acc
      002E46 12 32 1F         [24] 1982 	lcall	_printf
      002E49 15 81            [12] 1983 	dec	sp
      002E4B 15 81            [12] 1984 	dec	sp
      002E4D 15 81            [12] 1985 	dec	sp
                           0005DD  1986 	C$uart.c$228$1_0$96 ==.
                                   1987 ;	uart.c:228: print_colored("| ", 36);
      002E4F 90 04 6A         [24] 1988 	mov	dptr,#_print_colored_PARM_2
      002E52 74 24            [12] 1989 	mov	a,#0x24
      002E54 F0               [24] 1990 	movx	@dptr,a
      002E55 E4               [12] 1991 	clr	a
      002E56 A3               [24] 1992 	inc	dptr
      002E57 F0               [24] 1993 	movx	@dptr,a
      002E58 90 42 ED         [24] 1994 	mov	dptr,#___str_13
      002E5B 75 F0 80         [24] 1995 	mov	b,#0x80
      002E5E 12 2C B8         [24] 1996 	lcall	_print_colored
                           0005EF  1997 	C$uart.c$229$1_0$96 ==.
                                   1998 ;	uart.c:229: print_colored("[R] Read from EEPROM                        ", 33);
      002E61 90 04 6A         [24] 1999 	mov	dptr,#_print_colored_PARM_2
      002E64 74 21            [12] 2000 	mov	a,#0x21
      002E66 F0               [24] 2001 	movx	@dptr,a
      002E67 E4               [12] 2002 	clr	a
      002E68 A3               [24] 2003 	inc	dptr
      002E69 F0               [24] 2004 	movx	@dptr,a
      002E6A 90 43 1D         [24] 2005 	mov	dptr,#___str_15
      002E6D 75 F0 80         [24] 2006 	mov	b,#0x80
      002E70 12 2C B8         [24] 2007 	lcall	_print_colored
                           000601  2008 	C$uart.c$230$1_0$96 ==.
                                   2009 ;	uart.c:230: print_colored("| ", 36);
      002E73 90 04 6A         [24] 2010 	mov	dptr,#_print_colored_PARM_2
      002E76 74 24            [12] 2011 	mov	a,#0x24
      002E78 F0               [24] 2012 	movx	@dptr,a
      002E79 E4               [12] 2013 	clr	a
      002E7A A3               [24] 2014 	inc	dptr
      002E7B F0               [24] 2015 	movx	@dptr,a
      002E7C 90 42 ED         [24] 2016 	mov	dptr,#___str_13
      002E7F 75 F0 80         [24] 2017 	mov	b,#0x80
      002E82 12 2C B8         [24] 2018 	lcall	_print_colored
                           000613  2019 	C$uart.c$231$1_0$96 ==.
                                   2020 ;	uart.c:231: printf("\n\r");
      002E85 74 7A            [12] 2021 	mov	a,#___str_3
      002E87 C0 E0            [24] 2022 	push	acc
      002E89 74 41            [12] 2023 	mov	a,#(___str_3 >> 8)
      002E8B C0 E0            [24] 2024 	push	acc
      002E8D 74 80            [12] 2025 	mov	a,#0x80
      002E8F C0 E0            [24] 2026 	push	acc
      002E91 12 32 1F         [24] 2027 	lcall	_printf
      002E94 15 81            [12] 2028 	dec	sp
      002E96 15 81            [12] 2029 	dec	sp
      002E98 15 81            [12] 2030 	dec	sp
                           000628  2031 	C$uart.c$233$1_0$96 ==.
                                   2032 ;	uart.c:233: printf("   ");
      002E9A 74 B7            [12] 2033 	mov	a,#___str_11
      002E9C C0 E0            [24] 2034 	push	acc
      002E9E 74 42            [12] 2035 	mov	a,#(___str_11 >> 8)
      002EA0 C0 E0            [24] 2036 	push	acc
      002EA2 74 80            [12] 2037 	mov	a,#0x80
      002EA4 C0 E0            [24] 2038 	push	acc
      002EA6 12 32 1F         [24] 2039 	lcall	_printf
      002EA9 15 81            [12] 2040 	dec	sp
      002EAB 15 81            [12] 2041 	dec	sp
      002EAD 15 81            [12] 2042 	dec	sp
                           00063D  2043 	C$uart.c$234$1_0$96 ==.
                                   2044 ;	uart.c:234: print_colored("| ", 36);
      002EAF 90 04 6A         [24] 2045 	mov	dptr,#_print_colored_PARM_2
      002EB2 74 24            [12] 2046 	mov	a,#0x24
      002EB4 F0               [24] 2047 	movx	@dptr,a
      002EB5 E4               [12] 2048 	clr	a
      002EB6 A3               [24] 2049 	inc	dptr
      002EB7 F0               [24] 2050 	movx	@dptr,a
      002EB8 90 42 ED         [24] 2051 	mov	dptr,#___str_13
      002EBB 75 F0 80         [24] 2052 	mov	b,#0x80
      002EBE 12 2C B8         [24] 2053 	lcall	_print_colored
                           00064F  2054 	C$uart.c$235$1_0$96 ==.
                                   2055 ;	uart.c:235: print_colored("[F] EEPROM Dump                             ", 32);
      002EC1 90 04 6A         [24] 2056 	mov	dptr,#_print_colored_PARM_2
      002EC4 74 20            [12] 2057 	mov	a,#0x20
      002EC6 F0               [24] 2058 	movx	@dptr,a
      002EC7 E4               [12] 2059 	clr	a
      002EC8 A3               [24] 2060 	inc	dptr
      002EC9 F0               [24] 2061 	movx	@dptr,a
      002ECA 90 43 4A         [24] 2062 	mov	dptr,#___str_16
      002ECD 75 F0 80         [24] 2063 	mov	b,#0x80
      002ED0 12 2C B8         [24] 2064 	lcall	_print_colored
                           000661  2065 	C$uart.c$236$1_0$96 ==.
                                   2066 ;	uart.c:236: print_colored("| ", 36);
      002ED3 90 04 6A         [24] 2067 	mov	dptr,#_print_colored_PARM_2
      002ED6 74 24            [12] 2068 	mov	a,#0x24
      002ED8 F0               [24] 2069 	movx	@dptr,a
      002ED9 E4               [12] 2070 	clr	a
      002EDA A3               [24] 2071 	inc	dptr
      002EDB F0               [24] 2072 	movx	@dptr,a
      002EDC 90 42 ED         [24] 2073 	mov	dptr,#___str_13
      002EDF 75 F0 80         [24] 2074 	mov	b,#0x80
      002EE2 12 2C B8         [24] 2075 	lcall	_print_colored
                           000673  2076 	C$uart.c$237$1_0$96 ==.
                                   2077 ;	uart.c:237: printf("\n\r");
      002EE5 74 7A            [12] 2078 	mov	a,#___str_3
      002EE7 C0 E0            [24] 2079 	push	acc
      002EE9 74 41            [12] 2080 	mov	a,#(___str_3 >> 8)
      002EEB C0 E0            [24] 2081 	push	acc
      002EED 74 80            [12] 2082 	mov	a,#0x80
      002EEF C0 E0            [24] 2083 	push	acc
      002EF1 12 32 1F         [24] 2084 	lcall	_printf
      002EF4 15 81            [12] 2085 	dec	sp
      002EF6 15 81            [12] 2086 	dec	sp
      002EF8 15 81            [12] 2087 	dec	sp
                           000688  2088 	C$uart.c$239$1_0$96 ==.
                                   2089 ;	uart.c:239: printf("   ");
      002EFA 74 B7            [12] 2090 	mov	a,#___str_11
      002EFC C0 E0            [24] 2091 	push	acc
      002EFE 74 42            [12] 2092 	mov	a,#(___str_11 >> 8)
      002F00 C0 E0            [24] 2093 	push	acc
      002F02 74 80            [12] 2094 	mov	a,#0x80
      002F04 C0 E0            [24] 2095 	push	acc
      002F06 12 32 1F         [24] 2096 	lcall	_printf
      002F09 15 81            [12] 2097 	dec	sp
      002F0B 15 81            [12] 2098 	dec	sp
      002F0D 15 81            [12] 2099 	dec	sp
                           00069D  2100 	C$uart.c$240$1_0$96 ==.
                                   2101 ;	uart.c:240: print_colored("| ", 36);
      002F0F 90 04 6A         [24] 2102 	mov	dptr,#_print_colored_PARM_2
      002F12 74 24            [12] 2103 	mov	a,#0x24
      002F14 F0               [24] 2104 	movx	@dptr,a
      002F15 E4               [12] 2105 	clr	a
      002F16 A3               [24] 2106 	inc	dptr
      002F17 F0               [24] 2107 	movx	@dptr,a
      002F18 90 42 ED         [24] 2108 	mov	dptr,#___str_13
      002F1B 75 F0 80         [24] 2109 	mov	b,#0x80
      002F1E 12 2C B8         [24] 2110 	lcall	_print_colored
                           0006AF  2111 	C$uart.c$241$1_0$96 ==.
                                   2112 ;	uart.c:241: print_colored("[X] Reset EEPROM                            ", 31);
      002F21 90 04 6A         [24] 2113 	mov	dptr,#_print_colored_PARM_2
      002F24 74 1F            [12] 2114 	mov	a,#0x1f
      002F26 F0               [24] 2115 	movx	@dptr,a
      002F27 E4               [12] 2116 	clr	a
      002F28 A3               [24] 2117 	inc	dptr
      002F29 F0               [24] 2118 	movx	@dptr,a
      002F2A 90 43 77         [24] 2119 	mov	dptr,#___str_17
      002F2D 75 F0 80         [24] 2120 	mov	b,#0x80
      002F30 12 2C B8         [24] 2121 	lcall	_print_colored
                           0006C1  2122 	C$uart.c$242$1_0$96 ==.
                                   2123 ;	uart.c:242: print_colored("| ", 36);
      002F33 90 04 6A         [24] 2124 	mov	dptr,#_print_colored_PARM_2
      002F36 74 24            [12] 2125 	mov	a,#0x24
      002F38 F0               [24] 2126 	movx	@dptr,a
      002F39 E4               [12] 2127 	clr	a
      002F3A A3               [24] 2128 	inc	dptr
      002F3B F0               [24] 2129 	movx	@dptr,a
      002F3C 90 42 ED         [24] 2130 	mov	dptr,#___str_13
      002F3F 75 F0 80         [24] 2131 	mov	b,#0x80
      002F42 12 2C B8         [24] 2132 	lcall	_print_colored
                           0006D3  2133 	C$uart.c$243$1_0$96 ==.
                                   2134 ;	uart.c:243: printf("\n\r");
      002F45 74 7A            [12] 2135 	mov	a,#___str_3
      002F47 C0 E0            [24] 2136 	push	acc
      002F49 74 41            [12] 2137 	mov	a,#(___str_3 >> 8)
      002F4B C0 E0            [24] 2138 	push	acc
      002F4D 74 80            [12] 2139 	mov	a,#0x80
      002F4F C0 E0            [24] 2140 	push	acc
      002F51 12 32 1F         [24] 2141 	lcall	_printf
      002F54 15 81            [12] 2142 	dec	sp
      002F56 15 81            [12] 2143 	dec	sp
      002F58 15 81            [12] 2144 	dec	sp
                           0006E8  2145 	C$uart.c$245$1_0$96 ==.
                                   2146 ;	uart.c:245: printf("   ");
      002F5A 74 B7            [12] 2147 	mov	a,#___str_11
      002F5C C0 E0            [24] 2148 	push	acc
      002F5E 74 42            [12] 2149 	mov	a,#(___str_11 >> 8)
      002F60 C0 E0            [24] 2150 	push	acc
      002F62 74 80            [12] 2151 	mov	a,#0x80
      002F64 C0 E0            [24] 2152 	push	acc
      002F66 12 32 1F         [24] 2153 	lcall	_printf
      002F69 15 81            [12] 2154 	dec	sp
      002F6B 15 81            [12] 2155 	dec	sp
      002F6D 15 81            [12] 2156 	dec	sp
                           0006FD  2157 	C$uart.c$246$1_0$96 ==.
                                   2158 ;	uart.c:246: print_colored("| ", 36);
      002F6F 90 04 6A         [24] 2159 	mov	dptr,#_print_colored_PARM_2
      002F72 74 24            [12] 2160 	mov	a,#0x24
      002F74 F0               [24] 2161 	movx	@dptr,a
      002F75 E4               [12] 2162 	clr	a
      002F76 A3               [24] 2163 	inc	dptr
      002F77 F0               [24] 2164 	movx	@dptr,a
      002F78 90 42 ED         [24] 2165 	mov	dptr,#___str_13
      002F7B 75 F0 80         [24] 2166 	mov	b,#0x80
      002F7E 12 2C B8         [24] 2167 	lcall	_print_colored
                           00070F  2168 	C$uart.c$247$1_0$96 ==.
                                   2169 ;	uart.c:247: print_colored("[C] Fill EEPROM with 0xFF                   ", 34);
      002F81 90 04 6A         [24] 2170 	mov	dptr,#_print_colored_PARM_2
      002F84 74 22            [12] 2171 	mov	a,#0x22
      002F86 F0               [24] 2172 	movx	@dptr,a
      002F87 E4               [12] 2173 	clr	a
      002F88 A3               [24] 2174 	inc	dptr
      002F89 F0               [24] 2175 	movx	@dptr,a
      002F8A 90 43 A4         [24] 2176 	mov	dptr,#___str_18
      002F8D 75 F0 80         [24] 2177 	mov	b,#0x80
      002F90 12 2C B8         [24] 2178 	lcall	_print_colored
                           000721  2179 	C$uart.c$248$1_0$96 ==.
                                   2180 ;	uart.c:248: print_colored("| ", 36);
      002F93 90 04 6A         [24] 2181 	mov	dptr,#_print_colored_PARM_2
      002F96 74 24            [12] 2182 	mov	a,#0x24
      002F98 F0               [24] 2183 	movx	@dptr,a
      002F99 E4               [12] 2184 	clr	a
      002F9A A3               [24] 2185 	inc	dptr
      002F9B F0               [24] 2186 	movx	@dptr,a
      002F9C 90 42 ED         [24] 2187 	mov	dptr,#___str_13
      002F9F 75 F0 80         [24] 2188 	mov	b,#0x80
      002FA2 12 2C B8         [24] 2189 	lcall	_print_colored
                           000733  2190 	C$uart.c$249$1_0$96 ==.
                                   2191 ;	uart.c:249: printf("\n\r");
      002FA5 74 7A            [12] 2192 	mov	a,#___str_3
      002FA7 C0 E0            [24] 2193 	push	acc
      002FA9 74 41            [12] 2194 	mov	a,#(___str_3 >> 8)
      002FAB C0 E0            [24] 2195 	push	acc
      002FAD 74 80            [12] 2196 	mov	a,#0x80
      002FAF C0 E0            [24] 2197 	push	acc
      002FB1 12 32 1F         [24] 2198 	lcall	_printf
      002FB4 15 81            [12] 2199 	dec	sp
      002FB6 15 81            [12] 2200 	dec	sp
      002FB8 15 81            [12] 2201 	dec	sp
                           000748  2202 	C$uart.c$251$1_0$96 ==.
                                   2203 ;	uart.c:251: printf("   ");
      002FBA 74 B7            [12] 2204 	mov	a,#___str_11
      002FBC C0 E0            [24] 2205 	push	acc
      002FBE 74 42            [12] 2206 	mov	a,#(___str_11 >> 8)
      002FC0 C0 E0            [24] 2207 	push	acc
      002FC2 74 80            [12] 2208 	mov	a,#0x80
      002FC4 C0 E0            [24] 2209 	push	acc
      002FC6 12 32 1F         [24] 2210 	lcall	_printf
      002FC9 15 81            [12] 2211 	dec	sp
      002FCB 15 81            [12] 2212 	dec	sp
      002FCD 15 81            [12] 2213 	dec	sp
                           00075D  2214 	C$uart.c$252$1_0$96 ==.
                                   2215 ;	uart.c:252: print_colored("+---------------------------------------------+\n\r", 36);
      002FCF 90 04 6A         [24] 2216 	mov	dptr,#_print_colored_PARM_2
      002FD2 74 24            [12] 2217 	mov	a,#0x24
      002FD4 F0               [24] 2218 	movx	@dptr,a
      002FD5 E4               [12] 2219 	clr	a
      002FD6 A3               [24] 2220 	inc	dptr
      002FD7 F0               [24] 2221 	movx	@dptr,a
      002FD8 90 42 BB         [24] 2222 	mov	dptr,#___str_12
      002FDB 75 F0 80         [24] 2223 	mov	b,#0x80
      002FDE 12 2C B8         [24] 2224 	lcall	_print_colored
                           00076F  2225 	C$uart.c$253$1_0$96 ==.
                                   2226 ;	uart.c:253: printf("\n\r");
      002FE1 74 7A            [12] 2227 	mov	a,#___str_3
      002FE3 C0 E0            [24] 2228 	push	acc
      002FE5 74 41            [12] 2229 	mov	a,#(___str_3 >> 8)
      002FE7 C0 E0            [24] 2230 	push	acc
      002FE9 74 80            [12] 2231 	mov	a,#0x80
      002FEB C0 E0            [24] 2232 	push	acc
      002FED 12 32 1F         [24] 2233 	lcall	_printf
      002FF0 15 81            [12] 2234 	dec	sp
      002FF2 15 81            [12] 2235 	dec	sp
      002FF4 15 81            [12] 2236 	dec	sp
                           000784  2237 	C$uart.c$255$1_0$96 ==.
                                   2238 ;	uart.c:255: print_colored("+-------------------------------------------------+\n\r", 35);
      002FF6 90 04 6A         [24] 2239 	mov	dptr,#_print_colored_PARM_2
      002FF9 74 23            [12] 2240 	mov	a,#0x23
      002FFB F0               [24] 2241 	movx	@dptr,a
      002FFC E4               [12] 2242 	clr	a
      002FFD A3               [24] 2243 	inc	dptr
      002FFE F0               [24] 2244 	movx	@dptr,a
      002FFF 90 41 7D         [24] 2245 	mov	dptr,#___str_4
      003002 75 F0 80         [24] 2246 	mov	b,#0x80
      003005 12 2C B8         [24] 2247 	lcall	_print_colored
                           000796  2248 	C$uart.c$256$1_0$96 ==.
                                   2249 ;	uart.c:256: print_colored("|                                                 |\n\r", 35);
      003008 90 04 6A         [24] 2250 	mov	dptr,#_print_colored_PARM_2
      00300B 74 23            [12] 2251 	mov	a,#0x23
      00300D F0               [24] 2252 	movx	@dptr,a
      00300E E4               [12] 2253 	clr	a
      00300F A3               [24] 2254 	inc	dptr
      003010 F0               [24] 2255 	movx	@dptr,a
      003011 90 41 B3         [24] 2256 	mov	dptr,#___str_5
      003014 75 F0 80         [24] 2257 	mov	b,#0x80
      003017 12 2C B8         [24] 2258 	lcall	_print_colored
                           0007A8  2259 	C$uart.c$257$1_0$96 ==.
                                   2260 ;	uart.c:257: print_colored("|                                                 |\n\r", 35);
      00301A 90 04 6A         [24] 2261 	mov	dptr,#_print_colored_PARM_2
      00301D 74 23            [12] 2262 	mov	a,#0x23
      00301F F0               [24] 2263 	movx	@dptr,a
      003020 E4               [12] 2264 	clr	a
      003021 A3               [24] 2265 	inc	dptr
      003022 F0               [24] 2266 	movx	@dptr,a
      003023 90 41 B3         [24] 2267 	mov	dptr,#___str_5
      003026 75 F0 80         [24] 2268 	mov	b,#0x80
      003029 12 2C B8         [24] 2269 	lcall	_print_colored
                           0007BA  2270 	C$uart.c$258$1_0$96 ==.
                                   2271 ;	uart.c:258: print_colored("+-------------------------------------------------+\n\r\n\r", 35);
      00302C 90 04 6A         [24] 2272 	mov	dptr,#_print_colored_PARM_2
      00302F 74 23            [12] 2273 	mov	a,#0x23
      003031 F0               [24] 2274 	movx	@dptr,a
      003032 E4               [12] 2275 	clr	a
      003033 A3               [24] 2276 	inc	dptr
      003034 F0               [24] 2277 	movx	@dptr,a
      003035 90 42 55         [24] 2278 	mov	dptr,#___str_8
      003038 75 F0 80         [24] 2279 	mov	b,#0x80
      00303B 12 2C B8         [24] 2280 	lcall	_print_colored
                           0007CC  2281 	C$uart.c$260$1_0$96 ==.
                                   2282 ;	uart.c:260: }
                           0007CC  2283 	C$uart.c$260$1_0$96 ==.
                           0007CC  2284 	XG$print_UI$0$0 ==.
      00303E 22               [24] 2285 	ret
                                   2286 	.area CSEG    (CODE)
                                   2287 	.area CONST   (CODE)
                           000000  2288 Fuart$__str_1$0_0$0 == .
                                   2289 	.area CONST   (CODE)
      004155                       2290 ___str_1:
      004155 30 31 32 33 34 35 36  2291 	.ascii "0123456789abcdefABCDEF"
             37 38 39 61 62 63 64
             65 66 41 42 43 44 45
             46
      00416B 00                    2292 	.db 0x00
                                   2293 	.area CSEG    (CODE)
                           0007CD  2294 Fuart$__str_2$0_0$0 == .
                                   2295 	.area CONST   (CODE)
      00416C                       2296 ___str_2:
      00416C 1B                    2297 	.db 0x1b
      00416D 5B 31 3B 25 64 6D 25  2298 	.ascii "[1;%dm%s"
             73
      004175 1B                    2299 	.db 0x1b
      004176 5B 30 6D              2300 	.ascii "[0m"
      004179 00                    2301 	.db 0x00
                                   2302 	.area CSEG    (CODE)
                           0007CD  2303 Fuart$__str_3$0_0$0 == .
                                   2304 	.area CONST   (CODE)
      00417A                       2305 ___str_3:
      00417A 0A                    2306 	.db 0x0a
      00417B 0D                    2307 	.db 0x0d
      00417C 00                    2308 	.db 0x00
                                   2309 	.area CSEG    (CODE)
                           0007CD  2310 Fuart$__str_4$0_0$0 == .
                                   2311 	.area CONST   (CODE)
      00417D                       2312 ___str_4:
      00417D 2B 2D 2D 2D 2D 2D 2D  2313 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      0041B0 0A                    2314 	.db 0x0a
      0041B1 0D                    2315 	.db 0x0d
      0041B2 00                    2316 	.db 0x00
                                   2317 	.area CSEG    (CODE)
                           0007CD  2318 Fuart$__str_5$0_0$0 == .
                                   2319 	.area CONST   (CODE)
      0041B3                       2320 ___str_5:
      0041B3 7C 20 20 20 20 20 20  2321 	.ascii "|                                                 |"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0041E6 0A                    2322 	.db 0x0a
      0041E7 0D                    2323 	.db 0x0d
      0041E8 00                    2324 	.db 0x00
                                   2325 	.area CSEG    (CODE)
                           0007CD  2326 Fuart$__str_6$0_0$0 == .
                                   2327 	.area CONST   (CODE)
      0041E9                       2328 ___str_6:
      0041E9 7C 20 20 20 20 20 20  2329 	.ascii "|           USER INTERFACE Lab 4 Required         |"
             20 20 20 20 20 55 53
             45 52 20 49 4E 54 45
             52 46 41 43 45 20 4C
             61 62 20 34 20 52 65
             71 75 69 72 65 64 20
             20 20 20 20 20 20 20
             20 7C
      00421C 0A                    2330 	.db 0x0a
      00421D 0D                    2331 	.db 0x0d
      00421E 00                    2332 	.db 0x00
                                   2333 	.area CSEG    (CODE)
                           0007CD  2334 Fuart$__str_7$0_0$0 == .
                                   2335 	.area CONST   (CODE)
      00421F                       2336 ___str_7:
      00421F 7C 20 20 20 20 20 20  2337 	.ascii "|                   I2C & EEPROM                  |"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 49
             32 43 20 26 20 45 45
             50 52 4F 4D 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      004252 0A                    2338 	.db 0x0a
      004253 0D                    2339 	.db 0x0d
      004254 00                    2340 	.db 0x00
                                   2341 	.area CSEG    (CODE)
                           0007CD  2342 Fuart$__str_8$0_0$0 == .
                                   2343 	.area CONST   (CODE)
      004255                       2344 ___str_8:
      004255 2B 2D 2D 2D 2D 2D 2D  2345 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      004288 0A                    2346 	.db 0x0a
      004289 0D                    2347 	.db 0x0d
      00428A 0A                    2348 	.db 0x0a
      00428B 0D                    2349 	.db 0x0d
      00428C 00                    2350 	.db 0x00
                                   2351 	.area CSEG    (CODE)
                           0007CD  2352 Fuart$__str_9$0_0$0 == .
                                   2353 	.area CONST   (CODE)
      00428D                       2354 ___str_9:
      00428D 20 20 20 20 20 20 20  2355 	.ascii "        "
             20
      004295 00                    2356 	.db 0x00
                                   2357 	.area CSEG    (CODE)
                           0007CD  2358 Fuart$__str_10$0_0$0 == .
                                   2359 	.area CONST   (CODE)
      004296                       2360 ___str_10:
      004296 50 6C 65 61 73 65 20  2361 	.ascii "Please select an option below:"
             73 65 6C 65 63 74 20
             61 6E 20 6F 70 74 69
             6F 6E 20 62 65 6C 6F
             77 3A
      0042B4 0A                    2362 	.db 0x0a
      0042B5 0D                    2363 	.db 0x0d
      0042B6 00                    2364 	.db 0x00
                                   2365 	.area CSEG    (CODE)
                           0007CD  2366 Fuart$__str_11$0_0$0 == .
                                   2367 	.area CONST   (CODE)
      0042B7                       2368 ___str_11:
      0042B7 20 20 20              2369 	.ascii "   "
      0042BA 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                           0007CD  2372 Fuart$__str_12$0_0$0 == .
                                   2373 	.area CONST   (CODE)
      0042BB                       2374 ___str_12:
      0042BB 2B 2D 2D 2D 2D 2D 2D  2375 	.ascii "+---------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2B
      0042EA 0A                    2376 	.db 0x0a
      0042EB 0D                    2377 	.db 0x0d
      0042EC 00                    2378 	.db 0x00
                                   2379 	.area CSEG    (CODE)
                           0007CD  2380 Fuart$__str_13$0_0$0 == .
                                   2381 	.area CONST   (CODE)
      0042ED                       2382 ___str_13:
      0042ED 7C 20                 2383 	.ascii "| "
      0042EF 00                    2384 	.db 0x00
                                   2385 	.area CSEG    (CODE)
                           0007CD  2386 Fuart$__str_14$0_0$0 == .
                                   2387 	.area CONST   (CODE)
      0042F0                       2388 ___str_14:
      0042F0 5B 57 5D 20 57 72 69  2389 	.ascii "[W] Write to EEPROM                         "
             74 65 20 74 6F 20 45
             45 50 52 4F 4D 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00431C 00                    2390 	.db 0x00
                                   2391 	.area CSEG    (CODE)
                           0007CD  2392 Fuart$__str_15$0_0$0 == .
                                   2393 	.area CONST   (CODE)
      00431D                       2394 ___str_15:
      00431D 5B 52 5D 20 52 65 61  2395 	.ascii "[R] Read from EEPROM                        "
             64 20 66 72 6F 6D 20
             45 45 50 52 4F 4D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004349 00                    2396 	.db 0x00
                                   2397 	.area CSEG    (CODE)
                           0007CD  2398 Fuart$__str_16$0_0$0 == .
                                   2399 	.area CONST   (CODE)
      00434A                       2400 ___str_16:
      00434A 5B 46 5D 20 45 45 50  2401 	.ascii "[F] EEPROM Dump                             "
             52 4F 4D 20 44 75 6D
             70 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004376 00                    2402 	.db 0x00
                                   2403 	.area CSEG    (CODE)
                           0007CD  2404 Fuart$__str_17$0_0$0 == .
                                   2405 	.area CONST   (CODE)
      004377                       2406 ___str_17:
      004377 5B 58 5D 20 52 65 73  2407 	.ascii "[X] Reset EEPROM                            "
             65 74 20 45 45 50 52
             4F 4D 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0043A3 00                    2408 	.db 0x00
                                   2409 	.area CSEG    (CODE)
                           0007CD  2410 Fuart$__str_18$0_0$0 == .
                                   2411 	.area CONST   (CODE)
      0043A4                       2412 ___str_18:
      0043A4 5B 43 5D 20 46 69 6C  2413 	.ascii "[C] Fill EEPROM with 0xFF                   "
             6C 20 45 45 50 52 4F
             4D 20 77 69 74 68 20
             30 78 46 46 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0043D0 00                    2414 	.db 0x00
                                   2415 	.area CSEG    (CODE)
                                   2416 	.area XINIT   (CODE)
                                   2417 	.area CABS    (ABS,CODE)
