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
                           0000C8   230 _T2CON	=	0x00c8
                           0000CA   231 _RCAP2L	=	0x00ca
                           0000CB   232 _RCAP2H	=	0x00cb
                           0000CC   233 _TL2	=	0x00cc
                           0000CD   234 _TH2	=	0x00cd
                           00008E   235 _AUXR	=	0x008e
                           0000A2   236 _AUXR1	=	0x00a2
                           000097   237 _CKRL	=	0x0097
                           00008F   238 _CKCON0	=	0x008f
                           0000AF   239 _CKCON1	=	0x00af
                           0000FA   240 _CCAP0H	=	0x00fa
                           0000FB   241 _CCAP1H	=	0x00fb
                           0000FC   242 _CCAP2H	=	0x00fc
                           0000FD   243 _CCAP3H	=	0x00fd
                           0000FE   244 _CCAP4H	=	0x00fe
                           0000EA   245 _CCAP0L	=	0x00ea
                           0000EB   246 _CCAP1L	=	0x00eb
                           0000EC   247 _CCAP2L	=	0x00ec
                           0000ED   248 _CCAP3L	=	0x00ed
                           0000EE   249 _CCAP4L	=	0x00ee
                           0000DA   250 _CCAPM0	=	0x00da
                           0000DB   251 _CCAPM1	=	0x00db
                           0000DC   252 _CCAPM2	=	0x00dc
                           0000DD   253 _CCAPM3	=	0x00dd
                           0000DE   254 _CCAPM4	=	0x00de
                           0000D8   255 _CCON	=	0x00d8
                           0000F9   256 _CH	=	0x00f9
                           0000E9   257 _CL	=	0x00e9
                           0000D9   258 _CMOD	=	0x00d9
                           0000A8   259 _IEN0	=	0x00a8
                           0000B1   260 _IEN1	=	0x00b1
                           0000B8   261 _IPL0	=	0x00b8
                           0000B7   262 _IPH0	=	0x00b7
                           0000B2   263 _IPL1	=	0x00b2
                           0000B3   264 _IPH1	=	0x00b3
                           0000C0   265 _P4	=	0x00c0
                           0000E8   266 _P5	=	0x00e8
                           0000A6   267 _WDTRST	=	0x00a6
                           0000A7   268 _WDTPRG	=	0x00a7
                           0000A9   269 _SADDR	=	0x00a9
                           0000B9   270 _SADEN	=	0x00b9
                           0000C3   271 _SPCON	=	0x00c3
                           0000C4   272 _SPSTA	=	0x00c4
                           0000C5   273 _SPDAT	=	0x00c5
                           0000C9   274 _T2MOD	=	0x00c9
                           00009B   275 _BDRCON	=	0x009b
                           00009A   276 _BRL	=	0x009a
                           00009C   277 _KBLS	=	0x009c
                           00009D   278 _KBE	=	0x009d
                           00009E   279 _KBF	=	0x009e
                           0000D2   280 _EECON	=	0x00d2
                           000083   281 _DP0H	=	0x0083
                           000082   282 _DP0L	=	0x0082
                           000099   283 _SBUF0	=	0x0099
                           000080   284 _P0	=	0x0080
                           000081   285 _SP	=	0x0081
                           000082   286 _DPL	=	0x0082
                           000083   287 _DPH	=	0x0083
                           000087   288 _PCON	=	0x0087
                           000088   289 _TCON	=	0x0088
                           000089   290 _TMOD	=	0x0089
                           00008A   291 _TL0	=	0x008a
                           00008B   292 _TL1	=	0x008b
                           00008C   293 _TH0	=	0x008c
                           00008D   294 _TH1	=	0x008d
                           000090   295 _P1	=	0x0090
                           000098   296 _SCON	=	0x0098
                           000099   297 _SBUF	=	0x0099
                           0000A0   298 _P2	=	0x00a0
                           0000A8   299 _IE	=	0x00a8
                           0000B0   300 _P3	=	0x00b0
                           0000B8   301 _IP	=	0x00b8
                           0000D0   302 _PSW	=	0x00d0
                           0000E0   303 _ACC	=	0x00e0
                           0000F0   304 _B	=	0x00f0
                                    305 ;--------------------------------------------------------
                                    306 ; special function bits
                                    307 ;--------------------------------------------------------
                                    308 	.area RSEG    (ABS,DATA)
      000000                        309 	.org 0x0000
                           0000AD   310 _ET2	=	0x00ad
                           0000BD   311 _PT2	=	0x00bd
                           0000C8   312 _T2CON_0	=	0x00c8
                           0000C9   313 _T2CON_1	=	0x00c9
                           0000CA   314 _T2CON_2	=	0x00ca
                           0000CB   315 _T2CON_3	=	0x00cb
                           0000CC   316 _T2CON_4	=	0x00cc
                           0000CD   317 _T2CON_5	=	0x00cd
                           0000CE   318 _T2CON_6	=	0x00ce
                           0000CF   319 _T2CON_7	=	0x00cf
                           0000C8   320 _CP_RL2	=	0x00c8
                           0000C9   321 _C_T2	=	0x00c9
                           0000CA   322 _TR2	=	0x00ca
                           0000CB   323 _EXEN2	=	0x00cb
                           0000CC   324 _TCLK	=	0x00cc
                           0000CD   325 _RCLK	=	0x00cd
                           0000CE   326 _EXF2	=	0x00ce
                           0000CF   327 _TF2	=	0x00cf
                           0000DF   328 _CF	=	0x00df
                           0000DE   329 _CR	=	0x00de
                           0000DC   330 _CCF4	=	0x00dc
                           0000DB   331 _CCF3	=	0x00db
                           0000DA   332 _CCF2	=	0x00da
                           0000D9   333 _CCF1	=	0x00d9
                           0000D8   334 _CCF0	=	0x00d8
                           0000AE   335 _EC	=	0x00ae
                           0000BE   336 _PPCL	=	0x00be
                           0000BD   337 _PT2L	=	0x00bd
                           0000BC   338 _PSL	=	0x00bc
                           0000BB   339 _PT1L	=	0x00bb
                           0000BA   340 _PX1L	=	0x00ba
                           0000B9   341 _PT0L	=	0x00b9
                           0000B8   342 _PX0L	=	0x00b8
                           0000C0   343 _P4_0	=	0x00c0
                           0000C1   344 _P4_1	=	0x00c1
                           0000C2   345 _P4_2	=	0x00c2
                           0000C3   346 _P4_3	=	0x00c3
                           0000C4   347 _P4_4	=	0x00c4
                           0000C5   348 _P4_5	=	0x00c5
                           0000C6   349 _P4_6	=	0x00c6
                           0000C7   350 _P4_7	=	0x00c7
                           0000E8   351 _P5_0	=	0x00e8
                           0000E9   352 _P5_1	=	0x00e9
                           0000EA   353 _P5_2	=	0x00ea
                           0000EB   354 _P5_3	=	0x00eb
                           0000EC   355 _P5_4	=	0x00ec
                           0000ED   356 _P5_5	=	0x00ed
                           0000EE   357 _P5_6	=	0x00ee
                           0000EF   358 _P5_7	=	0x00ef
                           0000F0   359 _BREG_F0	=	0x00f0
                           0000F1   360 _BREG_F1	=	0x00f1
                           0000F2   361 _BREG_F2	=	0x00f2
                           0000F3   362 _BREG_F3	=	0x00f3
                           0000F4   363 _BREG_F4	=	0x00f4
                           0000F5   364 _BREG_F5	=	0x00f5
                           0000F6   365 _BREG_F6	=	0x00f6
                           0000F7   366 _BREG_F7	=	0x00f7
                           0000B0   367 _RXD0	=	0x00b0
                           0000B1   368 _TXD0	=	0x00b1
                           000080   369 _P0_0	=	0x0080
                           000081   370 _P0_1	=	0x0081
                           000082   371 _P0_2	=	0x0082
                           000083   372 _P0_3	=	0x0083
                           000084   373 _P0_4	=	0x0084
                           000085   374 _P0_5	=	0x0085
                           000086   375 _P0_6	=	0x0086
                           000087   376 _P0_7	=	0x0087
                           000088   377 _IT0	=	0x0088
                           000089   378 _IE0	=	0x0089
                           00008A   379 _IT1	=	0x008a
                           00008B   380 _IE1	=	0x008b
                           00008C   381 _TR0	=	0x008c
                           00008D   382 _TF0	=	0x008d
                           00008E   383 _TR1	=	0x008e
                           00008F   384 _TF1	=	0x008f
                           000090   385 _P1_0	=	0x0090
                           000091   386 _P1_1	=	0x0091
                           000092   387 _P1_2	=	0x0092
                           000093   388 _P1_3	=	0x0093
                           000094   389 _P1_4	=	0x0094
                           000095   390 _P1_5	=	0x0095
                           000096   391 _P1_6	=	0x0096
                           000097   392 _P1_7	=	0x0097
                           000098   393 _RI	=	0x0098
                           000099   394 _TI	=	0x0099
                           00009A   395 _RB8	=	0x009a
                           00009B   396 _TB8	=	0x009b
                           00009C   397 _REN	=	0x009c
                           00009D   398 _SM2	=	0x009d
                           00009E   399 _SM1	=	0x009e
                           00009F   400 _SM0	=	0x009f
                           0000A0   401 _P2_0	=	0x00a0
                           0000A1   402 _P2_1	=	0x00a1
                           0000A2   403 _P2_2	=	0x00a2
                           0000A3   404 _P2_3	=	0x00a3
                           0000A4   405 _P2_4	=	0x00a4
                           0000A5   406 _P2_5	=	0x00a5
                           0000A6   407 _P2_6	=	0x00a6
                           0000A7   408 _P2_7	=	0x00a7
                           0000A8   409 _EX0	=	0x00a8
                           0000A9   410 _ET0	=	0x00a9
                           0000AA   411 _EX1	=	0x00aa
                           0000AB   412 _ET1	=	0x00ab
                           0000AC   413 _ES	=	0x00ac
                           0000AF   414 _EA	=	0x00af
                           0000B0   415 _P3_0	=	0x00b0
                           0000B1   416 _P3_1	=	0x00b1
                           0000B2   417 _P3_2	=	0x00b2
                           0000B3   418 _P3_3	=	0x00b3
                           0000B4   419 _P3_4	=	0x00b4
                           0000B5   420 _P3_5	=	0x00b5
                           0000B6   421 _P3_6	=	0x00b6
                           0000B7   422 _P3_7	=	0x00b7
                           0000B0   423 _RXD	=	0x00b0
                           0000B1   424 _TXD	=	0x00b1
                           0000B2   425 _INT0	=	0x00b2
                           0000B3   426 _INT1	=	0x00b3
                           0000B4   427 _T0	=	0x00b4
                           0000B5   428 _T1	=	0x00b5
                           0000B6   429 _WR	=	0x00b6
                           0000B7   430 _RD	=	0x00b7
                           0000B8   431 _PX0	=	0x00b8
                           0000B9   432 _PT0	=	0x00b9
                           0000BA   433 _PX1	=	0x00ba
                           0000BB   434 _PT1	=	0x00bb
                           0000BC   435 _PS	=	0x00bc
                           0000D0   436 _P	=	0x00d0
                           0000D1   437 _F1	=	0x00d1
                           0000D2   438 _OV	=	0x00d2
                           0000D3   439 _RS0	=	0x00d3
                           0000D4   440 _RS1	=	0x00d4
                           0000D5   441 _F0	=	0x00d5
                           0000D6   442 _AC	=	0x00d6
                           0000D7   443 _CY	=	0x00d7
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable register banks
                                    446 ;--------------------------------------------------------
                                    447 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        448 	.ds 8
                                    449 ;--------------------------------------------------------
                                    450 ; internal ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area DSEG    (DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; overlayable items in internal ram
                                    455 ;--------------------------------------------------------
                                    456 ;--------------------------------------------------------
                                    457 ; indirectly addressable internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area ISEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; absolute internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area IABS    (ABS,DATA)
                                    464 	.area IABS    (ABS,DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; bit data
                                    467 ;--------------------------------------------------------
                                    468 	.area BSEG    (BIT)
                                    469 ;--------------------------------------------------------
                                    470 ; paged external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area PSEG    (PAG,XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XSEG    (XDATA)
      000445                        477 _putchar_c_65536_49:
      000445                        478 	.ds 2
      000447                        479 _gets__ch_65536_51:
      000447                        480 	.ds 2
      000449                        481 _puts__ch_65536_56:
      000449                        482 	.ds 2
      00044B                        483 _my_printf_text_ptr_65536_60:
      00044B                        484 	.ds 2
                                    485 ;--------------------------------------------------------
                                    486 ; absolute external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XABS    (ABS,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; external initialized ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XISEG   (XDATA)
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT0 (CODE)
                                    495 	.area GSINIT1 (CODE)
                                    496 	.area GSINIT2 (CODE)
                                    497 	.area GSINIT3 (CODE)
                                    498 	.area GSINIT4 (CODE)
                                    499 	.area GSINIT5 (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.area GSFINAL (CODE)
                                    502 	.area CSEG    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; global & static initialisations
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; Home
                                    512 ;--------------------------------------------------------
                                    513 	.area HOME    (CODE)
                                    514 	.area HOME    (CODE)
                                    515 ;--------------------------------------------------------
                                    516 ; code
                                    517 ;--------------------------------------------------------
                                    518 	.area CSEG    (CODE)
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'getchar'
                                    521 ;------------------------------------------------------------
                                    522 ;	string_func.c:35: int getchar (void)
                                    523 ;	-----------------------------------------
                                    524 ;	 function getchar
                                    525 ;	-----------------------------------------
      0027AE                        526 _getchar:
                           000007   527 	ar7 = 0x07
                           000006   528 	ar6 = 0x06
                           000005   529 	ar5 = 0x05
                           000004   530 	ar4 = 0x04
                           000003   531 	ar3 = 0x03
                           000002   532 	ar2 = 0x02
                           000001   533 	ar1 = 0x01
                           000000   534 	ar0 = 0x00
                                    535 ;	string_func.c:37: while (!RI); //Wait till the Character is received
      0027AE                        536 00101$:
                                    537 ;	string_func.c:38: RI = 0;			// Clear the RI flag
                                    538 ;	assignBit
      0027AE 10 98 02         [24]  539 	jbc	_RI,00114$
      0027B1 80 FB            [24]  540 	sjmp	00101$
      0027B3                        541 00114$:
                                    542 ;	string_func.c:39: return SBUF;  	// Return the Character
      0027B3 AE 99            [24]  543 	mov	r6,_SBUF
      0027B5 7F 00            [12]  544 	mov	r7,#0x00
      0027B7 8E 82            [24]  545 	mov	dpl,r6
      0027B9 8F 83            [24]  546 	mov	dph,r7
                                    547 ;	string_func.c:40: }
      0027BB 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'putchar'
                                    551 ;------------------------------------------------------------
                                    552 ;c                         Allocated with name '_putchar_c_65536_49'
                                    553 ;------------------------------------------------------------
                                    554 ;	string_func.c:53: int putchar (int c)
                                    555 ;	-----------------------------------------
                                    556 ;	 function putchar
                                    557 ;	-----------------------------------------
      0027BC                        558 _putchar:
      0027BC AF 83            [24]  559 	mov	r7,dph
      0027BE E5 82            [12]  560 	mov	a,dpl
      0027C0 90 04 45         [24]  561 	mov	dptr,#_putchar_c_65536_49
      0027C3 F0               [24]  562 	movx	@dptr,a
      0027C4 EF               [12]  563 	mov	a,r7
      0027C5 A3               [24]  564 	inc	dptr
      0027C6 F0               [24]  565 	movx	@dptr,a
                                    566 ;	string_func.c:55: while(!TI); //Wait till the Transmitter is ready
      0027C7                        567 00101$:
      0027C7 30 99 FD         [24]  568 	jnb	_TI,00101$
                                    569 ;	string_func.c:56: SBUF = c; //write character to SBUF
      0027CA 90 04 45         [24]  570 	mov	dptr,#_putchar_c_65536_49
      0027CD E0               [24]  571 	movx	a,@dptr
      0027CE FE               [12]  572 	mov	r6,a
      0027CF A3               [24]  573 	inc	dptr
      0027D0 E0               [24]  574 	movx	a,@dptr
      0027D1 FF               [12]  575 	mov	r7,a
      0027D2 8E 99            [24]  576 	mov	_SBUF,r6
                                    577 ;	string_func.c:57: TI = 0; //Clear the TI flag
                                    578 ;	assignBit
      0027D4 C2 99            [12]  579 	clr	_TI
                                    580 ;	string_func.c:58: return c;
      0027D6 8E 82            [24]  581 	mov	dpl,r6
      0027D8 8F 83            [24]  582 	mov	dph,r7
                                    583 ;	string_func.c:59: }
      0027DA 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'gets_'
                                    587 ;------------------------------------------------------------
                                    588 ;ch                        Allocated with name '_gets__ch_65536_51'
                                    589 ;i                         Allocated with name '_gets__i_131072_53'
                                    590 ;c                         Allocated with name '_gets__c_196608_54'
                                    591 ;------------------------------------------------------------
                                    592 ;	string_func.c:70: void gets_(__xdata char *ch) {
                                    593 ;	-----------------------------------------
                                    594 ;	 function gets_
                                    595 ;	-----------------------------------------
      0027DB                        596 _gets_:
      0027DB AF 83            [24]  597 	mov	r7,dph
      0027DD E5 82            [12]  598 	mov	a,dpl
      0027DF 90 04 47         [24]  599 	mov	dptr,#_gets__ch_65536_51
      0027E2 F0               [24]  600 	movx	@dptr,a
      0027E3 EF               [12]  601 	mov	a,r7
      0027E4 A3               [24]  602 	inc	dptr
      0027E5 F0               [24]  603 	movx	@dptr,a
                                    604 ;	string_func.c:71: for (int i = 0; ; i++) {
      0027E6 90 04 47         [24]  605 	mov	dptr,#_gets__ch_65536_51
      0027E9 E0               [24]  606 	movx	a,@dptr
      0027EA FE               [12]  607 	mov	r6,a
      0027EB A3               [24]  608 	inc	dptr
      0027EC E0               [24]  609 	movx	a,@dptr
      0027ED FF               [12]  610 	mov	r7,a
      0027EE 7C 00            [12]  611 	mov	r4,#0x00
      0027F0 7D 00            [12]  612 	mov	r5,#0x00
      0027F2                        613 00105$:
                                    614 ;	string_func.c:72: char c = getchar();
      0027F2 C0 07            [24]  615 	push	ar7
      0027F4 C0 06            [24]  616 	push	ar6
      0027F6 C0 05            [24]  617 	push	ar5
      0027F8 C0 04            [24]  618 	push	ar4
      0027FA 12 27 AE         [24]  619 	lcall	_getchar
      0027FD AA 82            [24]  620 	mov	r2,dpl
                                    621 ;	string_func.c:73: putchar(c);
      0027FF 8A 01            [24]  622 	mov	ar1,r2
      002801 7B 00            [12]  623 	mov	r3,#0x00
      002803 89 82            [24]  624 	mov	dpl,r1
      002805 8B 83            [24]  625 	mov	dph,r3
      002807 C0 02            [24]  626 	push	ar2
      002809 12 27 BC         [24]  627 	lcall	_putchar
      00280C D0 02            [24]  628 	pop	ar2
      00280E D0 04            [24]  629 	pop	ar4
      002810 D0 05            [24]  630 	pop	ar5
      002812 D0 06            [24]  631 	pop	ar6
      002814 D0 07            [24]  632 	pop	ar7
                                    633 ;	string_func.c:74: if (c == '\r' || c == '\n') {
      002816 BA 0D 02         [24]  634 	cjne	r2,#0x0d,00118$
      002819 80 03            [24]  635 	sjmp	00101$
      00281B                        636 00118$:
      00281B BA 0A 13         [24]  637 	cjne	r2,#0x0a,00102$
      00281E                        638 00101$:
                                    639 ;	string_func.c:75: *(ch + i) = '\0';
      00281E 90 04 47         [24]  640 	mov	dptr,#_gets__ch_65536_51
      002821 E0               [24]  641 	movx	a,@dptr
      002822 F9               [12]  642 	mov	r1,a
      002823 A3               [24]  643 	inc	dptr
      002824 E0               [24]  644 	movx	a,@dptr
      002825 FB               [12]  645 	mov	r3,a
      002826 EC               [12]  646 	mov	a,r4
      002827 29               [12]  647 	add	a,r1
      002828 F5 82            [12]  648 	mov	dpl,a
      00282A ED               [12]  649 	mov	a,r5
      00282B 3B               [12]  650 	addc	a,r3
      00282C F5 83            [12]  651 	mov	dph,a
      00282E E4               [12]  652 	clr	a
      00282F F0               [24]  653 	movx	@dptr,a
                                    654 ;	string_func.c:76: break;
      002830 22               [24]  655 	ret
      002831                        656 00102$:
                                    657 ;	string_func.c:78: *(ch + i) = c;
      002831 EC               [12]  658 	mov	a,r4
      002832 2E               [12]  659 	add	a,r6
      002833 F5 82            [12]  660 	mov	dpl,a
      002835 ED               [12]  661 	mov	a,r5
      002836 3F               [12]  662 	addc	a,r7
      002837 F5 83            [12]  663 	mov	dph,a
      002839 EA               [12]  664 	mov	a,r2
      00283A F0               [24]  665 	movx	@dptr,a
                                    666 ;	string_func.c:71: for (int i = 0; ; i++) {
      00283B 0C               [12]  667 	inc	r4
      00283C BC 00 B3         [24]  668 	cjne	r4,#0x00,00105$
      00283F 0D               [12]  669 	inc	r5
                                    670 ;	string_func.c:80: }
      002840 80 B0            [24]  671 	sjmp	00105$
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'puts_'
                                    674 ;------------------------------------------------------------
                                    675 ;ch                        Allocated with name '_puts__ch_65536_56'
                                    676 ;------------------------------------------------------------
                                    677 ;	string_func.c:90: void puts_(__xdata char *ch) {
                                    678 ;	-----------------------------------------
                                    679 ;	 function puts_
                                    680 ;	-----------------------------------------
      002842                        681 _puts_:
      002842 AF 83            [24]  682 	mov	r7,dph
      002844 E5 82            [12]  683 	mov	a,dpl
      002846 90 04 49         [24]  684 	mov	dptr,#_puts__ch_65536_56
      002849 F0               [24]  685 	movx	@dptr,a
      00284A EF               [12]  686 	mov	a,r7
      00284B A3               [24]  687 	inc	dptr
      00284C F0               [24]  688 	movx	@dptr,a
      00284D 90 04 49         [24]  689 	mov	dptr,#_puts__ch_65536_56
      002850 E0               [24]  690 	movx	a,@dptr
      002851 FE               [12]  691 	mov	r6,a
      002852 A3               [24]  692 	inc	dptr
      002853 E0               [24]  693 	movx	a,@dptr
      002854 FF               [12]  694 	mov	r7,a
      002855                        695 00103$:
                                    696 ;	string_func.c:91: for (; *ch; ch++) {
      002855 8E 82            [24]  697 	mov	dpl,r6
      002857 8F 83            [24]  698 	mov	dph,r7
      002859 E0               [24]  699 	movx	a,@dptr
      00285A FD               [12]  700 	mov	r5,a
      00285B 60 20            [24]  701 	jz	00109$
                                    702 ;	string_func.c:92: putchar(*ch);
      00285D 7C 00            [12]  703 	mov	r4,#0x00
      00285F 8D 82            [24]  704 	mov	dpl,r5
      002861 8C 83            [24]  705 	mov	dph,r4
      002863 C0 07            [24]  706 	push	ar7
      002865 C0 06            [24]  707 	push	ar6
      002867 12 27 BC         [24]  708 	lcall	_putchar
      00286A D0 06            [24]  709 	pop	ar6
      00286C D0 07            [24]  710 	pop	ar7
                                    711 ;	string_func.c:91: for (; *ch; ch++) {
      00286E 0E               [12]  712 	inc	r6
      00286F BE 00 01         [24]  713 	cjne	r6,#0x00,00117$
      002872 0F               [12]  714 	inc	r7
      002873                        715 00117$:
      002873 90 04 49         [24]  716 	mov	dptr,#_puts__ch_65536_56
      002876 EE               [12]  717 	mov	a,r6
      002877 F0               [24]  718 	movx	@dptr,a
      002878 EF               [12]  719 	mov	a,r7
      002879 A3               [24]  720 	inc	dptr
      00287A F0               [24]  721 	movx	@dptr,a
      00287B 80 D8            [24]  722 	sjmp	00103$
      00287D                        723 00109$:
      00287D 90 04 49         [24]  724 	mov	dptr,#_puts__ch_65536_56
      002880 EE               [12]  725 	mov	a,r6
      002881 F0               [24]  726 	movx	@dptr,a
      002882 EF               [12]  727 	mov	a,r7
      002883 A3               [24]  728 	inc	dptr
      002884 F0               [24]  729 	movx	@dptr,a
                                    730 ;	string_func.c:94: }
      002885 22               [24]  731 	ret
                                    732 ;------------------------------------------------------------
                                    733 ;Allocation info for local variables in function 'my_printf'
                                    734 ;------------------------------------------------------------
                                    735 ;text_ptr                  Allocated with name '_my_printf_text_ptr_65536_60'
                                    736 ;------------------------------------------------------------
                                    737 ;	string_func.c:96: void my_printf(__xdata uint8_t* text_ptr)
                                    738 ;	-----------------------------------------
                                    739 ;	 function my_printf
                                    740 ;	-----------------------------------------
      002886                        741 _my_printf:
      002886 AF 83            [24]  742 	mov	r7,dph
      002888 E5 82            [12]  743 	mov	a,dpl
      00288A 90 04 4B         [24]  744 	mov	dptr,#_my_printf_text_ptr_65536_60
      00288D F0               [24]  745 	movx	@dptr,a
      00288E EF               [12]  746 	mov	a,r7
      00288F A3               [24]  747 	inc	dptr
      002890 F0               [24]  748 	movx	@dptr,a
                                    749 ;	string_func.c:98: while(*text_ptr!='\0')
      002891 90 04 4B         [24]  750 	mov	dptr,#_my_printf_text_ptr_65536_60
      002894 E0               [24]  751 	movx	a,@dptr
      002895 FE               [12]  752 	mov	r6,a
      002896 A3               [24]  753 	inc	dptr
      002897 E0               [24]  754 	movx	a,@dptr
      002898 FF               [12]  755 	mov	r7,a
      002899                        756 00101$:
      002899 8E 82            [24]  757 	mov	dpl,r6
      00289B 8F 83            [24]  758 	mov	dph,r7
      00289D E0               [24]  759 	movx	a,@dptr
      00289E FD               [12]  760 	mov	r5,a
      00289F 60 20            [24]  761 	jz	00108$
                                    762 ;	string_func.c:100: putchar(*text_ptr);
      0028A1 7C 00            [12]  763 	mov	r4,#0x00
      0028A3 8D 82            [24]  764 	mov	dpl,r5
      0028A5 8C 83            [24]  765 	mov	dph,r4
      0028A7 C0 07            [24]  766 	push	ar7
      0028A9 C0 06            [24]  767 	push	ar6
      0028AB 12 27 BC         [24]  768 	lcall	_putchar
      0028AE D0 06            [24]  769 	pop	ar6
      0028B0 D0 07            [24]  770 	pop	ar7
                                    771 ;	string_func.c:101: text_ptr++;
      0028B2 0E               [12]  772 	inc	r6
      0028B3 BE 00 01         [24]  773 	cjne	r6,#0x00,00116$
      0028B6 0F               [12]  774 	inc	r7
      0028B7                        775 00116$:
      0028B7 90 04 4B         [24]  776 	mov	dptr,#_my_printf_text_ptr_65536_60
      0028BA EE               [12]  777 	mov	a,r6
      0028BB F0               [24]  778 	movx	@dptr,a
      0028BC EF               [12]  779 	mov	a,r7
      0028BD A3               [24]  780 	inc	dptr
      0028BE F0               [24]  781 	movx	@dptr,a
      0028BF 80 D8            [24]  782 	sjmp	00101$
      0028C1                        783 00108$:
      0028C1 90 04 4B         [24]  784 	mov	dptr,#_my_printf_text_ptr_65536_60
      0028C4 EE               [12]  785 	mov	a,r6
      0028C5 F0               [24]  786 	movx	@dptr,a
      0028C6 EF               [12]  787 	mov	a,r7
      0028C7 A3               [24]  788 	inc	dptr
      0028C8 F0               [24]  789 	movx	@dptr,a
                                    790 ;	string_func.c:103: return;
                                    791 ;	string_func.c:104: }
      0028C9 22               [24]  792 	ret
                                    793 	.area CSEG    (CODE)
                                    794 	.area CONST   (CODE)
                                    795 	.area XINIT   (CODE)
                                    796 	.area CABS    (ABS,CODE)
