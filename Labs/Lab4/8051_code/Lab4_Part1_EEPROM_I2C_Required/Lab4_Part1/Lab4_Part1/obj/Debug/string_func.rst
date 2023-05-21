                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module string_func
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _TXD0
                                     87 	.globl _RXD0
                                     88 	.globl _BREG_F7
                                     89 	.globl _BREG_F6
                                     90 	.globl _BREG_F5
                                     91 	.globl _BREG_F4
                                     92 	.globl _BREG_F3
                                     93 	.globl _BREG_F2
                                     94 	.globl _BREG_F1
                                     95 	.globl _BREG_F0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _B
                                    146 	.globl _ACC
                                    147 	.globl _PSW
                                    148 	.globl _IP
                                    149 	.globl _P3
                                    150 	.globl _IE
                                    151 	.globl _P2
                                    152 	.globl _SBUF
                                    153 	.globl _SCON
                                    154 	.globl _P1
                                    155 	.globl _TH1
                                    156 	.globl _TH0
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TMOD
                                    160 	.globl _TCON
                                    161 	.globl _PCON
                                    162 	.globl _DPH
                                    163 	.globl _DPL
                                    164 	.globl _SP
                                    165 	.globl _P0
                                    166 	.globl _SBUF0
                                    167 	.globl _DP0L
                                    168 	.globl _DP0H
                                    169 	.globl _EECON
                                    170 	.globl _KBF
                                    171 	.globl _KBE
                                    172 	.globl _KBLS
                                    173 	.globl _BRL
                                    174 	.globl _BDRCON
                                    175 	.globl _T2MOD
                                    176 	.globl _SPDAT
                                    177 	.globl _SPSTA
                                    178 	.globl _SPCON
                                    179 	.globl _SADEN
                                    180 	.globl _SADDR
                                    181 	.globl _WDTPRG
                                    182 	.globl _WDTRST
                                    183 	.globl _P5
                                    184 	.globl _P4
                                    185 	.globl _IPH1
                                    186 	.globl _IPL1
                                    187 	.globl _IPH0
                                    188 	.globl _IPL0
                                    189 	.globl _IEN1
                                    190 	.globl _IEN0
                                    191 	.globl _CMOD
                                    192 	.globl _CL
                                    193 	.globl _CH
                                    194 	.globl _CCON
                                    195 	.globl _CCAPM4
                                    196 	.globl _CCAPM3
                                    197 	.globl _CCAPM2
                                    198 	.globl _CCAPM1
                                    199 	.globl _CCAPM0
                                    200 	.globl _CCAP4L
                                    201 	.globl _CCAP3L
                                    202 	.globl _CCAP2L
                                    203 	.globl _CCAP1L
                                    204 	.globl _CCAP0L
                                    205 	.globl _CCAP4H
                                    206 	.globl _CCAP3H
                                    207 	.globl _CCAP2H
                                    208 	.globl _CCAP1H
                                    209 	.globl _CCAP0H
                                    210 	.globl _CKCON1
                                    211 	.globl _CKCON0
                                    212 	.globl _CKRL
                                    213 	.globl _AUXR1
                                    214 	.globl _AUXR
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _T2CON
                                    220 	.globl _getchar
                                    221 	.globl _putchar
                                    222 	.globl _gets_
                                    223 	.globl _puts_
                                    224 	.globl _my_printf
                                    225 ;--------------------------------------------------------
                                    226 ; special function registers
                                    227 ;--------------------------------------------------------
                                    228 	.area RSEG    (ABS,DATA)
      000000                        229 	.org 0x0000
                           0000C8   230 G$T2CON$0_0$0 == 0x00c8
                           0000C8   231 _T2CON	=	0x00c8
                           0000CA   232 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   233 _RCAP2L	=	0x00ca
                           0000CB   234 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   235 _RCAP2H	=	0x00cb
                           0000CC   236 G$TL2$0_0$0 == 0x00cc
                           0000CC   237 _TL2	=	0x00cc
                           0000CD   238 G$TH2$0_0$0 == 0x00cd
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 G$AUXR$0_0$0 == 0x008e
                           00008E   241 _AUXR	=	0x008e
                           0000A2   242 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 G$CKRL$0_0$0 == 0x0097
                           000097   245 _CKRL	=	0x0097
                           00008F   246 G$CKCON0$0_0$0 == 0x008f
                           00008F   247 _CKCON0	=	0x008f
                           0000AF   248 G$CKCON1$0_0$0 == 0x00af
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   251 _CCAP0H	=	0x00fa
                           0000FB   252 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   253 _CCAP1H	=	0x00fb
                           0000FC   254 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   263 _CCAP1L	=	0x00eb
                           0000EC   264 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   265 _CCAP2L	=	0x00ec
                           0000ED   266 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   267 _CCAP3L	=	0x00ed
                           0000EE   268 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   269 _CCAP4L	=	0x00ee
                           0000DA   270 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   271 _CCAPM0	=	0x00da
                           0000DB   272 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   275 _CCAPM2	=	0x00dc
                           0000DD   276 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   277 _CCAPM3	=	0x00dd
                           0000DE   278 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   279 _CCAPM4	=	0x00de
                           0000D8   280 G$CCON$0_0$0 == 0x00d8
                           0000D8   281 _CCON	=	0x00d8
                           0000F9   282 G$CH$0_0$0 == 0x00f9
                           0000F9   283 _CH	=	0x00f9
                           0000E9   284 G$CL$0_0$0 == 0x00e9
                           0000E9   285 _CL	=	0x00e9
                           0000D9   286 G$CMOD$0_0$0 == 0x00d9
                           0000D9   287 _CMOD	=	0x00d9
                           0000A8   288 G$IEN0$0_0$0 == 0x00a8
                           0000A8   289 _IEN0	=	0x00a8
                           0000B1   290 G$IEN1$0_0$0 == 0x00b1
                           0000B1   291 _IEN1	=	0x00b1
                           0000B8   292 G$IPL0$0_0$0 == 0x00b8
                           0000B8   293 _IPL0	=	0x00b8
                           0000B7   294 G$IPH0$0_0$0 == 0x00b7
                           0000B7   295 _IPH0	=	0x00b7
                           0000B2   296 G$IPL1$0_0$0 == 0x00b2
                           0000B2   297 _IPL1	=	0x00b2
                           0000B3   298 G$IPH1$0_0$0 == 0x00b3
                           0000B3   299 _IPH1	=	0x00b3
                           0000C0   300 G$P4$0_0$0 == 0x00c0
                           0000C0   301 _P4	=	0x00c0
                           0000E8   302 G$P5$0_0$0 == 0x00e8
                           0000E8   303 _P5	=	0x00e8
                           0000A6   304 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   305 _WDTRST	=	0x00a6
                           0000A7   306 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   307 _WDTPRG	=	0x00a7
                           0000A9   308 G$SADDR$0_0$0 == 0x00a9
                           0000A9   309 _SADDR	=	0x00a9
                           0000B9   310 G$SADEN$0_0$0 == 0x00b9
                           0000B9   311 _SADEN	=	0x00b9
                           0000C3   312 G$SPCON$0_0$0 == 0x00c3
                           0000C3   313 _SPCON	=	0x00c3
                           0000C4   314 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   315 _SPSTA	=	0x00c4
                           0000C5   316 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   317 _SPDAT	=	0x00c5
                           0000C9   318 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   319 _T2MOD	=	0x00c9
                           00009B   320 G$BDRCON$0_0$0 == 0x009b
                           00009B   321 _BDRCON	=	0x009b
                           00009A   322 G$BRL$0_0$0 == 0x009a
                           00009A   323 _BRL	=	0x009a
                           00009C   324 G$KBLS$0_0$0 == 0x009c
                           00009C   325 _KBLS	=	0x009c
                           00009D   326 G$KBE$0_0$0 == 0x009d
                           00009D   327 _KBE	=	0x009d
                           00009E   328 G$KBF$0_0$0 == 0x009e
                           00009E   329 _KBF	=	0x009e
                           0000D2   330 G$EECON$0_0$0 == 0x00d2
                           0000D2   331 _EECON	=	0x00d2
                           000083   332 G$DP0H$0_0$0 == 0x0083
                           000083   333 _DP0H	=	0x0083
                           000082   334 G$DP0L$0_0$0 == 0x0082
                           000082   335 _DP0L	=	0x0082
                           000099   336 G$SBUF0$0_0$0 == 0x0099
                           000099   337 _SBUF0	=	0x0099
                           000080   338 G$P0$0_0$0 == 0x0080
                           000080   339 _P0	=	0x0080
                           000081   340 G$SP$0_0$0 == 0x0081
                           000081   341 _SP	=	0x0081
                           000082   342 G$DPL$0_0$0 == 0x0082
                           000082   343 _DPL	=	0x0082
                           000083   344 G$DPH$0_0$0 == 0x0083
                           000083   345 _DPH	=	0x0083
                           000087   346 G$PCON$0_0$0 == 0x0087
                           000087   347 _PCON	=	0x0087
                           000088   348 G$TCON$0_0$0 == 0x0088
                           000088   349 _TCON	=	0x0088
                           000089   350 G$TMOD$0_0$0 == 0x0089
                           000089   351 _TMOD	=	0x0089
                           00008A   352 G$TL0$0_0$0 == 0x008a
                           00008A   353 _TL0	=	0x008a
                           00008B   354 G$TL1$0_0$0 == 0x008b
                           00008B   355 _TL1	=	0x008b
                           00008C   356 G$TH0$0_0$0 == 0x008c
                           00008C   357 _TH0	=	0x008c
                           00008D   358 G$TH1$0_0$0 == 0x008d
                           00008D   359 _TH1	=	0x008d
                           000090   360 G$P1$0_0$0 == 0x0090
                           000090   361 _P1	=	0x0090
                           000098   362 G$SCON$0_0$0 == 0x0098
                           000098   363 _SCON	=	0x0098
                           000099   364 G$SBUF$0_0$0 == 0x0099
                           000099   365 _SBUF	=	0x0099
                           0000A0   366 G$P2$0_0$0 == 0x00a0
                           0000A0   367 _P2	=	0x00a0
                           0000A8   368 G$IE$0_0$0 == 0x00a8
                           0000A8   369 _IE	=	0x00a8
                           0000B0   370 G$P3$0_0$0 == 0x00b0
                           0000B0   371 _P3	=	0x00b0
                           0000B8   372 G$IP$0_0$0 == 0x00b8
                           0000B8   373 _IP	=	0x00b8
                           0000D0   374 G$PSW$0_0$0 == 0x00d0
                           0000D0   375 _PSW	=	0x00d0
                           0000E0   376 G$ACC$0_0$0 == 0x00e0
                           0000E0   377 _ACC	=	0x00e0
                           0000F0   378 G$B$0_0$0 == 0x00f0
                           0000F0   379 _B	=	0x00f0
                                    380 ;--------------------------------------------------------
                                    381 ; special function bits
                                    382 ;--------------------------------------------------------
                                    383 	.area RSEG    (ABS,DATA)
      000000                        384 	.org 0x0000
                           0000AD   385 G$ET2$0_0$0 == 0x00ad
                           0000AD   386 _ET2	=	0x00ad
                           0000BD   387 G$PT2$0_0$0 == 0x00bd
                           0000BD   388 _PT2	=	0x00bd
                           0000C8   389 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   390 _T2CON_0	=	0x00c8
                           0000C9   391 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   392 _T2CON_1	=	0x00c9
                           0000CA   393 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   394 _T2CON_2	=	0x00ca
                           0000CB   395 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   396 _T2CON_3	=	0x00cb
                           0000CC   397 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   398 _T2CON_4	=	0x00cc
                           0000CD   399 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   400 _T2CON_5	=	0x00cd
                           0000CE   401 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   402 _T2CON_6	=	0x00ce
                           0000CF   403 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   404 _T2CON_7	=	0x00cf
                           0000C8   405 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   406 _CP_RL2	=	0x00c8
                           0000C9   407 G$C_T2$0_0$0 == 0x00c9
                           0000C9   408 _C_T2	=	0x00c9
                           0000CA   409 G$TR2$0_0$0 == 0x00ca
                           0000CA   410 _TR2	=	0x00ca
                           0000CB   411 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   412 _EXEN2	=	0x00cb
                           0000CC   413 G$TCLK$0_0$0 == 0x00cc
                           0000CC   414 _TCLK	=	0x00cc
                           0000CD   415 G$RCLK$0_0$0 == 0x00cd
                           0000CD   416 _RCLK	=	0x00cd
                           0000CE   417 G$EXF2$0_0$0 == 0x00ce
                           0000CE   418 _EXF2	=	0x00ce
                           0000CF   419 G$TF2$0_0$0 == 0x00cf
                           0000CF   420 _TF2	=	0x00cf
                           0000DF   421 G$CF$0_0$0 == 0x00df
                           0000DF   422 _CF	=	0x00df
                           0000DE   423 G$CR$0_0$0 == 0x00de
                           0000DE   424 _CR	=	0x00de
                           0000DC   425 G$CCF4$0_0$0 == 0x00dc
                           0000DC   426 _CCF4	=	0x00dc
                           0000DB   427 G$CCF3$0_0$0 == 0x00db
                           0000DB   428 _CCF3	=	0x00db
                           0000DA   429 G$CCF2$0_0$0 == 0x00da
                           0000DA   430 _CCF2	=	0x00da
                           0000D9   431 G$CCF1$0_0$0 == 0x00d9
                           0000D9   432 _CCF1	=	0x00d9
                           0000D8   433 G$CCF0$0_0$0 == 0x00d8
                           0000D8   434 _CCF0	=	0x00d8
                           0000AE   435 G$EC$0_0$0 == 0x00ae
                           0000AE   436 _EC	=	0x00ae
                           0000BE   437 G$PPCL$0_0$0 == 0x00be
                           0000BE   438 _PPCL	=	0x00be
                           0000BD   439 G$PT2L$0_0$0 == 0x00bd
                           0000BD   440 _PT2L	=	0x00bd
                           0000BC   441 G$PSL$0_0$0 == 0x00bc
                           0000BC   442 _PSL	=	0x00bc
                           0000BB   443 G$PT1L$0_0$0 == 0x00bb
                           0000BB   444 _PT1L	=	0x00bb
                           0000BA   445 G$PX1L$0_0$0 == 0x00ba
                           0000BA   446 _PX1L	=	0x00ba
                           0000B9   447 G$PT0L$0_0$0 == 0x00b9
                           0000B9   448 _PT0L	=	0x00b9
                           0000B8   449 G$PX0L$0_0$0 == 0x00b8
                           0000B8   450 _PX0L	=	0x00b8
                           0000C0   451 G$P4_0$0_0$0 == 0x00c0
                           0000C0   452 _P4_0	=	0x00c0
                           0000C1   453 G$P4_1$0_0$0 == 0x00c1
                           0000C1   454 _P4_1	=	0x00c1
                           0000C2   455 G$P4_2$0_0$0 == 0x00c2
                           0000C2   456 _P4_2	=	0x00c2
                           0000C3   457 G$P4_3$0_0$0 == 0x00c3
                           0000C3   458 _P4_3	=	0x00c3
                           0000C4   459 G$P4_4$0_0$0 == 0x00c4
                           0000C4   460 _P4_4	=	0x00c4
                           0000C5   461 G$P4_5$0_0$0 == 0x00c5
                           0000C5   462 _P4_5	=	0x00c5
                           0000C6   463 G$P4_6$0_0$0 == 0x00c6
                           0000C6   464 _P4_6	=	0x00c6
                           0000C7   465 G$P4_7$0_0$0 == 0x00c7
                           0000C7   466 _P4_7	=	0x00c7
                           0000E8   467 G$P5_0$0_0$0 == 0x00e8
                           0000E8   468 _P5_0	=	0x00e8
                           0000E9   469 G$P5_1$0_0$0 == 0x00e9
                           0000E9   470 _P5_1	=	0x00e9
                           0000EA   471 G$P5_2$0_0$0 == 0x00ea
                           0000EA   472 _P5_2	=	0x00ea
                           0000EB   473 G$P5_3$0_0$0 == 0x00eb
                           0000EB   474 _P5_3	=	0x00eb
                           0000EC   475 G$P5_4$0_0$0 == 0x00ec
                           0000EC   476 _P5_4	=	0x00ec
                           0000ED   477 G$P5_5$0_0$0 == 0x00ed
                           0000ED   478 _P5_5	=	0x00ed
                           0000EE   479 G$P5_6$0_0$0 == 0x00ee
                           0000EE   480 _P5_6	=	0x00ee
                           0000EF   481 G$P5_7$0_0$0 == 0x00ef
                           0000EF   482 _P5_7	=	0x00ef
                           0000F0   483 G$BREG_F0$0_0$0 == 0x00f0
                           0000F0   484 _BREG_F0	=	0x00f0
                           0000F1   485 G$BREG_F1$0_0$0 == 0x00f1
                           0000F1   486 _BREG_F1	=	0x00f1
                           0000F2   487 G$BREG_F2$0_0$0 == 0x00f2
                           0000F2   488 _BREG_F2	=	0x00f2
                           0000F3   489 G$BREG_F3$0_0$0 == 0x00f3
                           0000F3   490 _BREG_F3	=	0x00f3
                           0000F4   491 G$BREG_F4$0_0$0 == 0x00f4
                           0000F4   492 _BREG_F4	=	0x00f4
                           0000F5   493 G$BREG_F5$0_0$0 == 0x00f5
                           0000F5   494 _BREG_F5	=	0x00f5
                           0000F6   495 G$BREG_F6$0_0$0 == 0x00f6
                           0000F6   496 _BREG_F6	=	0x00f6
                           0000F7   497 G$BREG_F7$0_0$0 == 0x00f7
                           0000F7   498 _BREG_F7	=	0x00f7
                           0000B0   499 G$RXD0$0_0$0 == 0x00b0
                           0000B0   500 _RXD0	=	0x00b0
                           0000B1   501 G$TXD0$0_0$0 == 0x00b1
                           0000B1   502 _TXD0	=	0x00b1
                           000080   503 G$P0_0$0_0$0 == 0x0080
                           000080   504 _P0_0	=	0x0080
                           000081   505 G$P0_1$0_0$0 == 0x0081
                           000081   506 _P0_1	=	0x0081
                           000082   507 G$P0_2$0_0$0 == 0x0082
                           000082   508 _P0_2	=	0x0082
                           000083   509 G$P0_3$0_0$0 == 0x0083
                           000083   510 _P0_3	=	0x0083
                           000084   511 G$P0_4$0_0$0 == 0x0084
                           000084   512 _P0_4	=	0x0084
                           000085   513 G$P0_5$0_0$0 == 0x0085
                           000085   514 _P0_5	=	0x0085
                           000086   515 G$P0_6$0_0$0 == 0x0086
                           000086   516 _P0_6	=	0x0086
                           000087   517 G$P0_7$0_0$0 == 0x0087
                           000087   518 _P0_7	=	0x0087
                           000088   519 G$IT0$0_0$0 == 0x0088
                           000088   520 _IT0	=	0x0088
                           000089   521 G$IE0$0_0$0 == 0x0089
                           000089   522 _IE0	=	0x0089
                           00008A   523 G$IT1$0_0$0 == 0x008a
                           00008A   524 _IT1	=	0x008a
                           00008B   525 G$IE1$0_0$0 == 0x008b
                           00008B   526 _IE1	=	0x008b
                           00008C   527 G$TR0$0_0$0 == 0x008c
                           00008C   528 _TR0	=	0x008c
                           00008D   529 G$TF0$0_0$0 == 0x008d
                           00008D   530 _TF0	=	0x008d
                           00008E   531 G$TR1$0_0$0 == 0x008e
                           00008E   532 _TR1	=	0x008e
                           00008F   533 G$TF1$0_0$0 == 0x008f
                           00008F   534 _TF1	=	0x008f
                           000090   535 G$P1_0$0_0$0 == 0x0090
                           000090   536 _P1_0	=	0x0090
                           000091   537 G$P1_1$0_0$0 == 0x0091
                           000091   538 _P1_1	=	0x0091
                           000092   539 G$P1_2$0_0$0 == 0x0092
                           000092   540 _P1_2	=	0x0092
                           000093   541 G$P1_3$0_0$0 == 0x0093
                           000093   542 _P1_3	=	0x0093
                           000094   543 G$P1_4$0_0$0 == 0x0094
                           000094   544 _P1_4	=	0x0094
                           000095   545 G$P1_5$0_0$0 == 0x0095
                           000095   546 _P1_5	=	0x0095
                           000096   547 G$P1_6$0_0$0 == 0x0096
                           000096   548 _P1_6	=	0x0096
                           000097   549 G$P1_7$0_0$0 == 0x0097
                           000097   550 _P1_7	=	0x0097
                           000098   551 G$RI$0_0$0 == 0x0098
                           000098   552 _RI	=	0x0098
                           000099   553 G$TI$0_0$0 == 0x0099
                           000099   554 _TI	=	0x0099
                           00009A   555 G$RB8$0_0$0 == 0x009a
                           00009A   556 _RB8	=	0x009a
                           00009B   557 G$TB8$0_0$0 == 0x009b
                           00009B   558 _TB8	=	0x009b
                           00009C   559 G$REN$0_0$0 == 0x009c
                           00009C   560 _REN	=	0x009c
                           00009D   561 G$SM2$0_0$0 == 0x009d
                           00009D   562 _SM2	=	0x009d
                           00009E   563 G$SM1$0_0$0 == 0x009e
                           00009E   564 _SM1	=	0x009e
                           00009F   565 G$SM0$0_0$0 == 0x009f
                           00009F   566 _SM0	=	0x009f
                           0000A0   567 G$P2_0$0_0$0 == 0x00a0
                           0000A0   568 _P2_0	=	0x00a0
                           0000A1   569 G$P2_1$0_0$0 == 0x00a1
                           0000A1   570 _P2_1	=	0x00a1
                           0000A2   571 G$P2_2$0_0$0 == 0x00a2
                           0000A2   572 _P2_2	=	0x00a2
                           0000A3   573 G$P2_3$0_0$0 == 0x00a3
                           0000A3   574 _P2_3	=	0x00a3
                           0000A4   575 G$P2_4$0_0$0 == 0x00a4
                           0000A4   576 _P2_4	=	0x00a4
                           0000A5   577 G$P2_5$0_0$0 == 0x00a5
                           0000A5   578 _P2_5	=	0x00a5
                           0000A6   579 G$P2_6$0_0$0 == 0x00a6
                           0000A6   580 _P2_6	=	0x00a6
                           0000A7   581 G$P2_7$0_0$0 == 0x00a7
                           0000A7   582 _P2_7	=	0x00a7
                           0000A8   583 G$EX0$0_0$0 == 0x00a8
                           0000A8   584 _EX0	=	0x00a8
                           0000A9   585 G$ET0$0_0$0 == 0x00a9
                           0000A9   586 _ET0	=	0x00a9
                           0000AA   587 G$EX1$0_0$0 == 0x00aa
                           0000AA   588 _EX1	=	0x00aa
                           0000AB   589 G$ET1$0_0$0 == 0x00ab
                           0000AB   590 _ET1	=	0x00ab
                           0000AC   591 G$ES$0_0$0 == 0x00ac
                           0000AC   592 _ES	=	0x00ac
                           0000AF   593 G$EA$0_0$0 == 0x00af
                           0000AF   594 _EA	=	0x00af
                           0000B0   595 G$P3_0$0_0$0 == 0x00b0
                           0000B0   596 _P3_0	=	0x00b0
                           0000B1   597 G$P3_1$0_0$0 == 0x00b1
                           0000B1   598 _P3_1	=	0x00b1
                           0000B2   599 G$P3_2$0_0$0 == 0x00b2
                           0000B2   600 _P3_2	=	0x00b2
                           0000B3   601 G$P3_3$0_0$0 == 0x00b3
                           0000B3   602 _P3_3	=	0x00b3
                           0000B4   603 G$P3_4$0_0$0 == 0x00b4
                           0000B4   604 _P3_4	=	0x00b4
                           0000B5   605 G$P3_5$0_0$0 == 0x00b5
                           0000B5   606 _P3_5	=	0x00b5
                           0000B6   607 G$P3_6$0_0$0 == 0x00b6
                           0000B6   608 _P3_6	=	0x00b6
                           0000B7   609 G$P3_7$0_0$0 == 0x00b7
                           0000B7   610 _P3_7	=	0x00b7
                           0000B0   611 G$RXD$0_0$0 == 0x00b0
                           0000B0   612 _RXD	=	0x00b0
                           0000B1   613 G$TXD$0_0$0 == 0x00b1
                           0000B1   614 _TXD	=	0x00b1
                           0000B2   615 G$INT0$0_0$0 == 0x00b2
                           0000B2   616 _INT0	=	0x00b2
                           0000B3   617 G$INT1$0_0$0 == 0x00b3
                           0000B3   618 _INT1	=	0x00b3
                           0000B4   619 G$T0$0_0$0 == 0x00b4
                           0000B4   620 _T0	=	0x00b4
                           0000B5   621 G$T1$0_0$0 == 0x00b5
                           0000B5   622 _T1	=	0x00b5
                           0000B6   623 G$WR$0_0$0 == 0x00b6
                           0000B6   624 _WR	=	0x00b6
                           0000B7   625 G$RD$0_0$0 == 0x00b7
                           0000B7   626 _RD	=	0x00b7
                           0000B8   627 G$PX0$0_0$0 == 0x00b8
                           0000B8   628 _PX0	=	0x00b8
                           0000B9   629 G$PT0$0_0$0 == 0x00b9
                           0000B9   630 _PT0	=	0x00b9
                           0000BA   631 G$PX1$0_0$0 == 0x00ba
                           0000BA   632 _PX1	=	0x00ba
                           0000BB   633 G$PT1$0_0$0 == 0x00bb
                           0000BB   634 _PT1	=	0x00bb
                           0000BC   635 G$PS$0_0$0 == 0x00bc
                           0000BC   636 _PS	=	0x00bc
                           0000D0   637 G$P$0_0$0 == 0x00d0
                           0000D0   638 _P	=	0x00d0
                           0000D1   639 G$F1$0_0$0 == 0x00d1
                           0000D1   640 _F1	=	0x00d1
                           0000D2   641 G$OV$0_0$0 == 0x00d2
                           0000D2   642 _OV	=	0x00d2
                           0000D3   643 G$RS0$0_0$0 == 0x00d3
                           0000D3   644 _RS0	=	0x00d3
                           0000D4   645 G$RS1$0_0$0 == 0x00d4
                           0000D4   646 _RS1	=	0x00d4
                           0000D5   647 G$F0$0_0$0 == 0x00d5
                           0000D5   648 _F0	=	0x00d5
                           0000D6   649 G$AC$0_0$0 == 0x00d6
                           0000D6   650 _AC	=	0x00d6
                           0000D7   651 G$CY$0_0$0 == 0x00d7
                           0000D7   652 _CY	=	0x00d7
                                    653 ;--------------------------------------------------------
                                    654 ; overlayable register banks
                                    655 ;--------------------------------------------------------
                                    656 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        657 	.ds 8
                                    658 ;--------------------------------------------------------
                                    659 ; internal ram data
                                    660 ;--------------------------------------------------------
                                    661 	.area DSEG    (DATA)
                                    662 ;--------------------------------------------------------
                                    663 ; overlayable items in internal ram
                                    664 ;--------------------------------------------------------
                                    665 ;--------------------------------------------------------
                                    666 ; indirectly addressable internal ram data
                                    667 ;--------------------------------------------------------
                                    668 	.area ISEG    (DATA)
                                    669 ;--------------------------------------------------------
                                    670 ; absolute internal ram data
                                    671 ;--------------------------------------------------------
                                    672 	.area IABS    (ABS,DATA)
                                    673 	.area IABS    (ABS,DATA)
                                    674 ;--------------------------------------------------------
                                    675 ; bit data
                                    676 ;--------------------------------------------------------
                                    677 	.area BSEG    (BIT)
                                    678 ;--------------------------------------------------------
                                    679 ; paged external ram data
                                    680 ;--------------------------------------------------------
                                    681 	.area PSEG    (PAG,XDATA)
                                    682 ;--------------------------------------------------------
                                    683 ; external ram data
                                    684 ;--------------------------------------------------------
                                    685 	.area XSEG    (XDATA)
                           000000   686 Lstring_func.putchar$c$1_0$49==.
      00040F                        687 _putchar_c_65536_49:
      00040F                        688 	.ds 2
                           000002   689 Lstring_func.gets_$ch$1_0$51==.
      000411                        690 _gets__ch_65536_51:
      000411                        691 	.ds 2
                           000004   692 Lstring_func.puts_$ch$1_0$56==.
      000413                        693 _puts__ch_65536_56:
      000413                        694 	.ds 2
                           000006   695 Lstring_func.my_printf$text_ptr$1_0$60==.
      000415                        696 _my_printf_text_ptr_65536_60:
      000415                        697 	.ds 2
                                    698 ;--------------------------------------------------------
                                    699 ; absolute external ram data
                                    700 ;--------------------------------------------------------
                                    701 	.area XABS    (ABS,XDATA)
                                    702 ;--------------------------------------------------------
                                    703 ; external initialized ram data
                                    704 ;--------------------------------------------------------
                                    705 	.area XISEG   (XDATA)
                                    706 	.area HOME    (CODE)
                                    707 	.area GSINIT0 (CODE)
                                    708 	.area GSINIT1 (CODE)
                                    709 	.area GSINIT2 (CODE)
                                    710 	.area GSINIT3 (CODE)
                                    711 	.area GSINIT4 (CODE)
                                    712 	.area GSINIT5 (CODE)
                                    713 	.area GSINIT  (CODE)
                                    714 	.area GSFINAL (CODE)
                                    715 	.area CSEG    (CODE)
                                    716 ;--------------------------------------------------------
                                    717 ; global & static initialisations
                                    718 ;--------------------------------------------------------
                                    719 	.area HOME    (CODE)
                                    720 	.area GSINIT  (CODE)
                                    721 	.area GSFINAL (CODE)
                                    722 	.area GSINIT  (CODE)
                                    723 ;--------------------------------------------------------
                                    724 ; Home
                                    725 ;--------------------------------------------------------
                                    726 	.area HOME    (CODE)
                                    727 	.area HOME    (CODE)
                                    728 ;--------------------------------------------------------
                                    729 ; code
                                    730 ;--------------------------------------------------------
                                    731 	.area CSEG    (CODE)
                                    732 ;------------------------------------------------------------
                                    733 ;Allocation info for local variables in function 'getchar'
                                    734 ;------------------------------------------------------------
                           000000   735 	G$getchar$0$0 ==.
                           000000   736 	C$string_func.c$35$0_0$48 ==.
                                    737 ;	string_func.c:35: int getchar (void)
                                    738 ;	-----------------------------------------
                                    739 ;	 function getchar
                                    740 ;	-----------------------------------------
      002754                        741 _getchar:
                           000007   742 	ar7 = 0x07
                           000006   743 	ar6 = 0x06
                           000005   744 	ar5 = 0x05
                           000004   745 	ar4 = 0x04
                           000003   746 	ar3 = 0x03
                           000002   747 	ar2 = 0x02
                           000001   748 	ar1 = 0x01
                           000000   749 	ar0 = 0x00
                           000000   750 	C$string_func.c$37$1_0$48 ==.
                                    751 ;	string_func.c:37: while (!RI); //Wait till the Character is received
      002754                        752 00101$:
                           000000   753 	C$string_func.c$38$1_0$48 ==.
                                    754 ;	string_func.c:38: RI = 0;			// Clear the RI flag
                                    755 ;	assignBit
      002754 10 98 02         [24]  756 	jbc	_RI,00114$
      002757 80 FB            [24]  757 	sjmp	00101$
      002759                        758 00114$:
                           000005   759 	C$string_func.c$39$1_0$48 ==.
                                    760 ;	string_func.c:39: return SBUF;  	// Return the Character
      002759 AE 99            [24]  761 	mov	r6,_SBUF
      00275B 7F 00            [12]  762 	mov	r7,#0x00
      00275D 8E 82            [24]  763 	mov	dpl,r6
      00275F 8F 83            [24]  764 	mov	dph,r7
                           00000D   765 	C$string_func.c$40$1_0$48 ==.
                                    766 ;	string_func.c:40: }
                           00000D   767 	C$string_func.c$40$1_0$48 ==.
                           00000D   768 	XG$getchar$0$0 ==.
      002761 22               [24]  769 	ret
                                    770 ;------------------------------------------------------------
                                    771 ;Allocation info for local variables in function 'putchar'
                                    772 ;------------------------------------------------------------
                                    773 ;c                         Allocated with name '_putchar_c_65536_49'
                                    774 ;------------------------------------------------------------
                           00000E   775 	G$putchar$0$0 ==.
                           00000E   776 	C$string_func.c$52$1_0$50 ==.
                                    777 ;	string_func.c:52: int putchar (int c)
                                    778 ;	-----------------------------------------
                                    779 ;	 function putchar
                                    780 ;	-----------------------------------------
      002762                        781 _putchar:
      002762 AF 83            [24]  782 	mov	r7,dph
      002764 E5 82            [12]  783 	mov	a,dpl
      002766 90 04 0F         [24]  784 	mov	dptr,#_putchar_c_65536_49
      002769 F0               [24]  785 	movx	@dptr,a
      00276A EF               [12]  786 	mov	a,r7
      00276B A3               [24]  787 	inc	dptr
      00276C F0               [24]  788 	movx	@dptr,a
                           000019   789 	C$string_func.c$54$1_0$50 ==.
                                    790 ;	string_func.c:54: while(!TI); //Wait till the Transmitter is ready
      00276D                        791 00101$:
      00276D 30 99 FD         [24]  792 	jnb	_TI,00101$
                           00001C   793 	C$string_func.c$55$1_0$50 ==.
                                    794 ;	string_func.c:55: SBUF = c; //write character to SBUF
      002770 90 04 0F         [24]  795 	mov	dptr,#_putchar_c_65536_49
      002773 E0               [24]  796 	movx	a,@dptr
      002774 FE               [12]  797 	mov	r6,a
      002775 A3               [24]  798 	inc	dptr
      002776 E0               [24]  799 	movx	a,@dptr
      002777 FF               [12]  800 	mov	r7,a
      002778 8E 99            [24]  801 	mov	_SBUF,r6
                           000026   802 	C$string_func.c$56$1_0$50 ==.
                                    803 ;	string_func.c:56: TI = 0; //Clear the TI flag
                                    804 ;	assignBit
      00277A C2 99            [12]  805 	clr	_TI
                           000028   806 	C$string_func.c$57$1_0$50 ==.
                                    807 ;	string_func.c:57: return c;
      00277C 8E 82            [24]  808 	mov	dpl,r6
      00277E 8F 83            [24]  809 	mov	dph,r7
                           00002C   810 	C$string_func.c$58$1_0$50 ==.
                                    811 ;	string_func.c:58: }
                           00002C   812 	C$string_func.c$58$1_0$50 ==.
                           00002C   813 	XG$putchar$0$0 ==.
      002780 22               [24]  814 	ret
                                    815 ;------------------------------------------------------------
                                    816 ;Allocation info for local variables in function 'gets_'
                                    817 ;------------------------------------------------------------
                                    818 ;ch                        Allocated with name '_gets__ch_65536_51'
                                    819 ;i                         Allocated with name '_gets__i_131072_53'
                                    820 ;c                         Allocated with name '_gets__c_196608_54'
                                    821 ;------------------------------------------------------------
                           00002D   822 	G$gets_$0$0 ==.
                           00002D   823 	C$string_func.c$69$1_0$53 ==.
                                    824 ;	string_func.c:69: void gets_(__xdata char *ch) {
                                    825 ;	-----------------------------------------
                                    826 ;	 function gets_
                                    827 ;	-----------------------------------------
      002781                        828 _gets_:
      002781 AF 83            [24]  829 	mov	r7,dph
      002783 E5 82            [12]  830 	mov	a,dpl
      002785 90 04 11         [24]  831 	mov	dptr,#_gets__ch_65536_51
      002788 F0               [24]  832 	movx	@dptr,a
      002789 EF               [12]  833 	mov	a,r7
      00278A A3               [24]  834 	inc	dptr
      00278B F0               [24]  835 	movx	@dptr,a
                           000038   836 	C$string_func.c$70$3_0$54 ==.
                                    837 ;	string_func.c:70: for (int i = 0; ; i++) {
      00278C 90 04 11         [24]  838 	mov	dptr,#_gets__ch_65536_51
      00278F E0               [24]  839 	movx	a,@dptr
      002790 FE               [12]  840 	mov	r6,a
      002791 A3               [24]  841 	inc	dptr
      002792 E0               [24]  842 	movx	a,@dptr
      002793 FF               [12]  843 	mov	r7,a
      002794 7C 00            [12]  844 	mov	r4,#0x00
      002796 7D 00            [12]  845 	mov	r5,#0x00
      002798                        846 00105$:
                           000044   847 	C$string_func.c$71$3_0$54 ==.
                                    848 ;	string_func.c:71: char c = getchar();
      002798 C0 07            [24]  849 	push	ar7
      00279A C0 06            [24]  850 	push	ar6
      00279C C0 05            [24]  851 	push	ar5
      00279E C0 04            [24]  852 	push	ar4
      0027A0 12 27 54         [24]  853 	lcall	_getchar
      0027A3 AA 82            [24]  854 	mov	r2,dpl
                           000051   855 	C$string_func.c$72$3_0$54 ==.
                                    856 ;	string_func.c:72: putchar(c);
      0027A5 8A 01            [24]  857 	mov	ar1,r2
      0027A7 7B 00            [12]  858 	mov	r3,#0x00
      0027A9 89 82            [24]  859 	mov	dpl,r1
      0027AB 8B 83            [24]  860 	mov	dph,r3
      0027AD C0 02            [24]  861 	push	ar2
      0027AF 12 27 62         [24]  862 	lcall	_putchar
      0027B2 D0 02            [24]  863 	pop	ar2
      0027B4 D0 04            [24]  864 	pop	ar4
      0027B6 D0 05            [24]  865 	pop	ar5
      0027B8 D0 06            [24]  866 	pop	ar6
      0027BA D0 07            [24]  867 	pop	ar7
                           000068   868 	C$string_func.c$73$3_0$54 ==.
                                    869 ;	string_func.c:73: if (c == '\r' || c == '\n') {
      0027BC BA 0D 02         [24]  870 	cjne	r2,#0x0d,00118$
      0027BF 80 03            [24]  871 	sjmp	00101$
      0027C1                        872 00118$:
      0027C1 BA 0A 14         [24]  873 	cjne	r2,#0x0a,00102$
      0027C4                        874 00101$:
                           000070   875 	C$string_func.c$74$4_0$55 ==.
                                    876 ;	string_func.c:74: *(ch + i) = '\0';
      0027C4 90 04 11         [24]  877 	mov	dptr,#_gets__ch_65536_51
      0027C7 E0               [24]  878 	movx	a,@dptr
      0027C8 F9               [12]  879 	mov	r1,a
      0027C9 A3               [24]  880 	inc	dptr
      0027CA E0               [24]  881 	movx	a,@dptr
      0027CB FB               [12]  882 	mov	r3,a
      0027CC EC               [12]  883 	mov	a,r4
      0027CD 29               [12]  884 	add	a,r1
      0027CE F5 82            [12]  885 	mov	dpl,a
      0027D0 ED               [12]  886 	mov	a,r5
      0027D1 3B               [12]  887 	addc	a,r3
      0027D2 F5 83            [12]  888 	mov	dph,a
      0027D4 E4               [12]  889 	clr	a
      0027D5 F0               [24]  890 	movx	@dptr,a
                           000082   891 	C$string_func.c$75$4_0$55 ==.
                                    892 ;	string_func.c:75: break;
      0027D6 80 11            [24]  893 	sjmp	00107$
      0027D8                        894 00102$:
                           000084   895 	C$string_func.c$77$3_0$54 ==.
                                    896 ;	string_func.c:77: *(ch + i) = c;
      0027D8 EC               [12]  897 	mov	a,r4
      0027D9 2E               [12]  898 	add	a,r6
      0027DA F5 82            [12]  899 	mov	dpl,a
      0027DC ED               [12]  900 	mov	a,r5
      0027DD 3F               [12]  901 	addc	a,r7
      0027DE F5 83            [12]  902 	mov	dph,a
      0027E0 EA               [12]  903 	mov	a,r2
      0027E1 F0               [24]  904 	movx	@dptr,a
                           00008E   905 	C$string_func.c$70$2_0$53 ==.
                                    906 ;	string_func.c:70: for (int i = 0; ; i++) {
      0027E2 0C               [12]  907 	inc	r4
      0027E3 BC 00 B2         [24]  908 	cjne	r4,#0x00,00105$
      0027E6 0D               [12]  909 	inc	r5
      0027E7 80 AF            [24]  910 	sjmp	00105$
      0027E9                        911 00107$:
                           000095   912 	C$string_func.c$79$2_0$53 ==.
                                    913 ;	string_func.c:79: }
                           000095   914 	C$string_func.c$79$2_0$53 ==.
                           000095   915 	XG$gets_$0$0 ==.
      0027E9 22               [24]  916 	ret
                                    917 ;------------------------------------------------------------
                                    918 ;Allocation info for local variables in function 'puts_'
                                    919 ;------------------------------------------------------------
                                    920 ;ch                        Allocated with name '_puts__ch_65536_56'
                                    921 ;------------------------------------------------------------
                           000096   922 	G$puts_$0$0 ==.
                           000096   923 	C$string_func.c$89$2_0$58 ==.
                                    924 ;	string_func.c:89: void puts_(__xdata char *ch) {
                                    925 ;	-----------------------------------------
                                    926 ;	 function puts_
                                    927 ;	-----------------------------------------
      0027EA                        928 _puts_:
      0027EA AF 83            [24]  929 	mov	r7,dph
      0027EC E5 82            [12]  930 	mov	a,dpl
      0027EE 90 04 13         [24]  931 	mov	dptr,#_puts__ch_65536_56
      0027F1 F0               [24]  932 	movx	@dptr,a
      0027F2 EF               [12]  933 	mov	a,r7
      0027F3 A3               [24]  934 	inc	dptr
      0027F4 F0               [24]  935 	movx	@dptr,a
      0027F5 90 04 13         [24]  936 	mov	dptr,#_puts__ch_65536_56
      0027F8 E0               [24]  937 	movx	a,@dptr
      0027F9 FE               [12]  938 	mov	r6,a
      0027FA A3               [24]  939 	inc	dptr
      0027FB E0               [24]  940 	movx	a,@dptr
      0027FC FF               [12]  941 	mov	r7,a
      0027FD                        942 00103$:
                           0000A9   943 	C$string_func.c$90$2_0$58 ==.
                                    944 ;	string_func.c:90: for (; *ch; ch++) {
      0027FD 8E 82            [24]  945 	mov	dpl,r6
      0027FF 8F 83            [24]  946 	mov	dph,r7
      002801 E0               [24]  947 	movx	a,@dptr
      002802 FD               [12]  948 	mov	r5,a
      002803 60 20            [24]  949 	jz	00109$
                           0000B1   950 	C$string_func.c$91$3_0$59 ==.
                                    951 ;	string_func.c:91: putchar(*ch);
      002805 7C 00            [12]  952 	mov	r4,#0x00
      002807 8D 82            [24]  953 	mov	dpl,r5
      002809 8C 83            [24]  954 	mov	dph,r4
      00280B C0 07            [24]  955 	push	ar7
      00280D C0 06            [24]  956 	push	ar6
      00280F 12 27 62         [24]  957 	lcall	_putchar
      002812 D0 06            [24]  958 	pop	ar6
      002814 D0 07            [24]  959 	pop	ar7
                           0000C2   960 	C$string_func.c$90$2_0$58 ==.
                                    961 ;	string_func.c:90: for (; *ch; ch++) {
      002816 0E               [12]  962 	inc	r6
      002817 BE 00 01         [24]  963 	cjne	r6,#0x00,00117$
      00281A 0F               [12]  964 	inc	r7
      00281B                        965 00117$:
      00281B 90 04 13         [24]  966 	mov	dptr,#_puts__ch_65536_56
      00281E EE               [12]  967 	mov	a,r6
      00281F F0               [24]  968 	movx	@dptr,a
      002820 EF               [12]  969 	mov	a,r7
      002821 A3               [24]  970 	inc	dptr
      002822 F0               [24]  971 	movx	@dptr,a
      002823 80 D8            [24]  972 	sjmp	00103$
      002825                        973 00109$:
      002825 90 04 13         [24]  974 	mov	dptr,#_puts__ch_65536_56
      002828 EE               [12]  975 	mov	a,r6
      002829 F0               [24]  976 	movx	@dptr,a
      00282A EF               [12]  977 	mov	a,r7
      00282B A3               [24]  978 	inc	dptr
      00282C F0               [24]  979 	movx	@dptr,a
                           0000D9   980 	C$string_func.c$93$2_0$58 ==.
                                    981 ;	string_func.c:93: }
                           0000D9   982 	C$string_func.c$93$2_0$58 ==.
                           0000D9   983 	XG$puts_$0$0 ==.
      00282D 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'my_printf'
                                    987 ;------------------------------------------------------------
                                    988 ;text_ptr                  Allocated with name '_my_printf_text_ptr_65536_60'
                                    989 ;------------------------------------------------------------
                           0000DA   990 	G$my_printf$0$0 ==.
                           0000DA   991 	C$string_func.c$95$2_0$61 ==.
                                    992 ;	string_func.c:95: void my_printf(__xdata uint8_t* text_ptr)
                                    993 ;	-----------------------------------------
                                    994 ;	 function my_printf
                                    995 ;	-----------------------------------------
      00282E                        996 _my_printf:
      00282E AF 83            [24]  997 	mov	r7,dph
      002830 E5 82            [12]  998 	mov	a,dpl
      002832 90 04 15         [24]  999 	mov	dptr,#_my_printf_text_ptr_65536_60
      002835 F0               [24] 1000 	movx	@dptr,a
      002836 EF               [12] 1001 	mov	a,r7
      002837 A3               [24] 1002 	inc	dptr
      002838 F0               [24] 1003 	movx	@dptr,a
                           0000E5  1004 	C$string_func.c$97$1_0$61 ==.
                                   1005 ;	string_func.c:97: while(*text_ptr!='\0')
      002839 90 04 15         [24] 1006 	mov	dptr,#_my_printf_text_ptr_65536_60
      00283C E0               [24] 1007 	movx	a,@dptr
      00283D FE               [12] 1008 	mov	r6,a
      00283E A3               [24] 1009 	inc	dptr
      00283F E0               [24] 1010 	movx	a,@dptr
      002840 FF               [12] 1011 	mov	r7,a
      002841                       1012 00101$:
      002841 8E 82            [24] 1013 	mov	dpl,r6
      002843 8F 83            [24] 1014 	mov	dph,r7
      002845 E0               [24] 1015 	movx	a,@dptr
      002846 FD               [12] 1016 	mov	r5,a
      002847 60 20            [24] 1017 	jz	00108$
                           0000F5  1018 	C$string_func.c$99$2_0$62 ==.
                                   1019 ;	string_func.c:99: putchar(*text_ptr);
      002849 7C 00            [12] 1020 	mov	r4,#0x00
      00284B 8D 82            [24] 1021 	mov	dpl,r5
      00284D 8C 83            [24] 1022 	mov	dph,r4
      00284F C0 07            [24] 1023 	push	ar7
      002851 C0 06            [24] 1024 	push	ar6
      002853 12 27 62         [24] 1025 	lcall	_putchar
      002856 D0 06            [24] 1026 	pop	ar6
      002858 D0 07            [24] 1027 	pop	ar7
                           000106  1028 	C$string_func.c$100$2_0$62 ==.
                                   1029 ;	string_func.c:100: text_ptr++;
      00285A 0E               [12] 1030 	inc	r6
      00285B BE 00 01         [24] 1031 	cjne	r6,#0x00,00116$
      00285E 0F               [12] 1032 	inc	r7
      00285F                       1033 00116$:
      00285F 90 04 15         [24] 1034 	mov	dptr,#_my_printf_text_ptr_65536_60
      002862 EE               [12] 1035 	mov	a,r6
      002863 F0               [24] 1036 	movx	@dptr,a
      002864 EF               [12] 1037 	mov	a,r7
      002865 A3               [24] 1038 	inc	dptr
      002866 F0               [24] 1039 	movx	@dptr,a
      002867 80 D8            [24] 1040 	sjmp	00101$
      002869                       1041 00108$:
      002869 90 04 15         [24] 1042 	mov	dptr,#_my_printf_text_ptr_65536_60
      00286C EE               [12] 1043 	mov	a,r6
      00286D F0               [24] 1044 	movx	@dptr,a
      00286E EF               [12] 1045 	mov	a,r7
      00286F A3               [24] 1046 	inc	dptr
      002870 F0               [24] 1047 	movx	@dptr,a
                           00011D  1048 	C$string_func.c$102$1_0$61 ==.
                                   1049 ;	string_func.c:102: return;
                           00011D  1050 	C$string_func.c$103$1_0$61 ==.
                                   1051 ;	string_func.c:103: }
                           00011D  1052 	C$string_func.c$103$1_0$61 ==.
                           00011D  1053 	XG$my_printf$0$0 ==.
      002871 22               [24] 1054 	ret
                                   1055 	.area CSEG    (CODE)
                                   1056 	.area CONST   (CODE)
                                   1057 	.area XINIT   (CODE)
                                   1058 	.area CABS    (ABS,CODE)
