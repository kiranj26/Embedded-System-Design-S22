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
                                    224 ;--------------------------------------------------------
                                    225 ; special function registers
                                    226 ;--------------------------------------------------------
                                    227 	.area RSEG    (ABS,DATA)
      000000                        228 	.org 0x0000
                           0000C8   229 _T2CON	=	0x00c8
                           0000CA   230 _RCAP2L	=	0x00ca
                           0000CB   231 _RCAP2H	=	0x00cb
                           0000CC   232 _TL2	=	0x00cc
                           0000CD   233 _TH2	=	0x00cd
                           00008E   234 _AUXR	=	0x008e
                           0000A2   235 _AUXR1	=	0x00a2
                           000097   236 _CKRL	=	0x0097
                           00008F   237 _CKCON0	=	0x008f
                           0000AF   238 _CKCON1	=	0x00af
                           0000FA   239 _CCAP0H	=	0x00fa
                           0000FB   240 _CCAP1H	=	0x00fb
                           0000FC   241 _CCAP2H	=	0x00fc
                           0000FD   242 _CCAP3H	=	0x00fd
                           0000FE   243 _CCAP4H	=	0x00fe
                           0000EA   244 _CCAP0L	=	0x00ea
                           0000EB   245 _CCAP1L	=	0x00eb
                           0000EC   246 _CCAP2L	=	0x00ec
                           0000ED   247 _CCAP3L	=	0x00ed
                           0000EE   248 _CCAP4L	=	0x00ee
                           0000DA   249 _CCAPM0	=	0x00da
                           0000DB   250 _CCAPM1	=	0x00db
                           0000DC   251 _CCAPM2	=	0x00dc
                           0000DD   252 _CCAPM3	=	0x00dd
                           0000DE   253 _CCAPM4	=	0x00de
                           0000D8   254 _CCON	=	0x00d8
                           0000F9   255 _CH	=	0x00f9
                           0000E9   256 _CL	=	0x00e9
                           0000D9   257 _CMOD	=	0x00d9
                           0000A8   258 _IEN0	=	0x00a8
                           0000B1   259 _IEN1	=	0x00b1
                           0000B8   260 _IPL0	=	0x00b8
                           0000B7   261 _IPH0	=	0x00b7
                           0000B2   262 _IPL1	=	0x00b2
                           0000B3   263 _IPH1	=	0x00b3
                           0000C0   264 _P4	=	0x00c0
                           0000E8   265 _P5	=	0x00e8
                           0000A6   266 _WDTRST	=	0x00a6
                           0000A7   267 _WDTPRG	=	0x00a7
                           0000A9   268 _SADDR	=	0x00a9
                           0000B9   269 _SADEN	=	0x00b9
                           0000C3   270 _SPCON	=	0x00c3
                           0000C4   271 _SPSTA	=	0x00c4
                           0000C5   272 _SPDAT	=	0x00c5
                           0000C9   273 _T2MOD	=	0x00c9
                           00009B   274 _BDRCON	=	0x009b
                           00009A   275 _BRL	=	0x009a
                           00009C   276 _KBLS	=	0x009c
                           00009D   277 _KBE	=	0x009d
                           00009E   278 _KBF	=	0x009e
                           0000D2   279 _EECON	=	0x00d2
                           000083   280 _DP0H	=	0x0083
                           000082   281 _DP0L	=	0x0082
                           000099   282 _SBUF0	=	0x0099
                           000080   283 _P0	=	0x0080
                           000081   284 _SP	=	0x0081
                           000082   285 _DPL	=	0x0082
                           000083   286 _DPH	=	0x0083
                           000087   287 _PCON	=	0x0087
                           000088   288 _TCON	=	0x0088
                           000089   289 _TMOD	=	0x0089
                           00008A   290 _TL0	=	0x008a
                           00008B   291 _TL1	=	0x008b
                           00008C   292 _TH0	=	0x008c
                           00008D   293 _TH1	=	0x008d
                           000090   294 _P1	=	0x0090
                           000098   295 _SCON	=	0x0098
                           000099   296 _SBUF	=	0x0099
                           0000A0   297 _P2	=	0x00a0
                           0000A8   298 _IE	=	0x00a8
                           0000B0   299 _P3	=	0x00b0
                           0000B8   300 _IP	=	0x00b8
                           0000D0   301 _PSW	=	0x00d0
                           0000E0   302 _ACC	=	0x00e0
                           0000F0   303 _B	=	0x00f0
                                    304 ;--------------------------------------------------------
                                    305 ; special function bits
                                    306 ;--------------------------------------------------------
                                    307 	.area RSEG    (ABS,DATA)
      000000                        308 	.org 0x0000
                           0000AD   309 _ET2	=	0x00ad
                           0000BD   310 _PT2	=	0x00bd
                           0000C8   311 _T2CON_0	=	0x00c8
                           0000C9   312 _T2CON_1	=	0x00c9
                           0000CA   313 _T2CON_2	=	0x00ca
                           0000CB   314 _T2CON_3	=	0x00cb
                           0000CC   315 _T2CON_4	=	0x00cc
                           0000CD   316 _T2CON_5	=	0x00cd
                           0000CE   317 _T2CON_6	=	0x00ce
                           0000CF   318 _T2CON_7	=	0x00cf
                           0000C8   319 _CP_RL2	=	0x00c8
                           0000C9   320 _C_T2	=	0x00c9
                           0000CA   321 _TR2	=	0x00ca
                           0000CB   322 _EXEN2	=	0x00cb
                           0000CC   323 _TCLK	=	0x00cc
                           0000CD   324 _RCLK	=	0x00cd
                           0000CE   325 _EXF2	=	0x00ce
                           0000CF   326 _TF2	=	0x00cf
                           0000DF   327 _CF	=	0x00df
                           0000DE   328 _CR	=	0x00de
                           0000DC   329 _CCF4	=	0x00dc
                           0000DB   330 _CCF3	=	0x00db
                           0000DA   331 _CCF2	=	0x00da
                           0000D9   332 _CCF1	=	0x00d9
                           0000D8   333 _CCF0	=	0x00d8
                           0000AE   334 _EC	=	0x00ae
                           0000BE   335 _PPCL	=	0x00be
                           0000BD   336 _PT2L	=	0x00bd
                           0000BC   337 _PSL	=	0x00bc
                           0000BB   338 _PT1L	=	0x00bb
                           0000BA   339 _PX1L	=	0x00ba
                           0000B9   340 _PT0L	=	0x00b9
                           0000B8   341 _PX0L	=	0x00b8
                           0000C0   342 _P4_0	=	0x00c0
                           0000C1   343 _P4_1	=	0x00c1
                           0000C2   344 _P4_2	=	0x00c2
                           0000C3   345 _P4_3	=	0x00c3
                           0000C4   346 _P4_4	=	0x00c4
                           0000C5   347 _P4_5	=	0x00c5
                           0000C6   348 _P4_6	=	0x00c6
                           0000C7   349 _P4_7	=	0x00c7
                           0000E8   350 _P5_0	=	0x00e8
                           0000E9   351 _P5_1	=	0x00e9
                           0000EA   352 _P5_2	=	0x00ea
                           0000EB   353 _P5_3	=	0x00eb
                           0000EC   354 _P5_4	=	0x00ec
                           0000ED   355 _P5_5	=	0x00ed
                           0000EE   356 _P5_6	=	0x00ee
                           0000EF   357 _P5_7	=	0x00ef
                           0000F0   358 _BREG_F0	=	0x00f0
                           0000F1   359 _BREG_F1	=	0x00f1
                           0000F2   360 _BREG_F2	=	0x00f2
                           0000F3   361 _BREG_F3	=	0x00f3
                           0000F4   362 _BREG_F4	=	0x00f4
                           0000F5   363 _BREG_F5	=	0x00f5
                           0000F6   364 _BREG_F6	=	0x00f6
                           0000F7   365 _BREG_F7	=	0x00f7
                           0000B0   366 _RXD0	=	0x00b0
                           0000B1   367 _TXD0	=	0x00b1
                           000080   368 _P0_0	=	0x0080
                           000081   369 _P0_1	=	0x0081
                           000082   370 _P0_2	=	0x0082
                           000083   371 _P0_3	=	0x0083
                           000084   372 _P0_4	=	0x0084
                           000085   373 _P0_5	=	0x0085
                           000086   374 _P0_6	=	0x0086
                           000087   375 _P0_7	=	0x0087
                           000088   376 _IT0	=	0x0088
                           000089   377 _IE0	=	0x0089
                           00008A   378 _IT1	=	0x008a
                           00008B   379 _IE1	=	0x008b
                           00008C   380 _TR0	=	0x008c
                           00008D   381 _TF0	=	0x008d
                           00008E   382 _TR1	=	0x008e
                           00008F   383 _TF1	=	0x008f
                           000090   384 _P1_0	=	0x0090
                           000091   385 _P1_1	=	0x0091
                           000092   386 _P1_2	=	0x0092
                           000093   387 _P1_3	=	0x0093
                           000094   388 _P1_4	=	0x0094
                           000095   389 _P1_5	=	0x0095
                           000096   390 _P1_6	=	0x0096
                           000097   391 _P1_7	=	0x0097
                           000098   392 _RI	=	0x0098
                           000099   393 _TI	=	0x0099
                           00009A   394 _RB8	=	0x009a
                           00009B   395 _TB8	=	0x009b
                           00009C   396 _REN	=	0x009c
                           00009D   397 _SM2	=	0x009d
                           00009E   398 _SM1	=	0x009e
                           00009F   399 _SM0	=	0x009f
                           0000A0   400 _P2_0	=	0x00a0
                           0000A1   401 _P2_1	=	0x00a1
                           0000A2   402 _P2_2	=	0x00a2
                           0000A3   403 _P2_3	=	0x00a3
                           0000A4   404 _P2_4	=	0x00a4
                           0000A5   405 _P2_5	=	0x00a5
                           0000A6   406 _P2_6	=	0x00a6
                           0000A7   407 _P2_7	=	0x00a7
                           0000A8   408 _EX0	=	0x00a8
                           0000A9   409 _ET0	=	0x00a9
                           0000AA   410 _EX1	=	0x00aa
                           0000AB   411 _ET1	=	0x00ab
                           0000AC   412 _ES	=	0x00ac
                           0000AF   413 _EA	=	0x00af
                           0000B0   414 _P3_0	=	0x00b0
                           0000B1   415 _P3_1	=	0x00b1
                           0000B2   416 _P3_2	=	0x00b2
                           0000B3   417 _P3_3	=	0x00b3
                           0000B4   418 _P3_4	=	0x00b4
                           0000B5   419 _P3_5	=	0x00b5
                           0000B6   420 _P3_6	=	0x00b6
                           0000B7   421 _P3_7	=	0x00b7
                           0000B0   422 _RXD	=	0x00b0
                           0000B1   423 _TXD	=	0x00b1
                           0000B2   424 _INT0	=	0x00b2
                           0000B3   425 _INT1	=	0x00b3
                           0000B4   426 _T0	=	0x00b4
                           0000B5   427 _T1	=	0x00b5
                           0000B6   428 _WR	=	0x00b6
                           0000B7   429 _RD	=	0x00b7
                           0000B8   430 _PX0	=	0x00b8
                           0000B9   431 _PT0	=	0x00b9
                           0000BA   432 _PX1	=	0x00ba
                           0000BB   433 _PT1	=	0x00bb
                           0000BC   434 _PS	=	0x00bc
                           0000D0   435 _P	=	0x00d0
                           0000D1   436 _F1	=	0x00d1
                           0000D2   437 _OV	=	0x00d2
                           0000D3   438 _RS0	=	0x00d3
                           0000D4   439 _RS1	=	0x00d4
                           0000D5   440 _F0	=	0x00d5
                           0000D6   441 _AC	=	0x00d6
                           0000D7   442 _CY	=	0x00d7
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable register banks
                                    445 ;--------------------------------------------------------
                                    446 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        447 	.ds 8
                                    448 ;--------------------------------------------------------
                                    449 ; internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area DSEG    (DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable items in internal ram
                                    454 ;--------------------------------------------------------
                                    455 ;--------------------------------------------------------
                                    456 ; indirectly addressable internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area ISEG    (DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; absolute internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area IABS    (ABS,DATA)
                                    463 	.area IABS    (ABS,DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; bit data
                                    466 ;--------------------------------------------------------
                                    467 	.area BSEG    (BIT)
                                    468 ;--------------------------------------------------------
                                    469 ; paged external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area PSEG    (PAG,XDATA)
                                    472 ;--------------------------------------------------------
                                    473 ; external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area XSEG    (XDATA)
      001C65                        476 _putchar_c_65536_7:
      001C65                        477 	.ds 2
      001C67                        478 _gets__ch_65536_9:
      001C67                        479 	.ds 2
      001C69                        480 _puts__ch_65536_14:
      001C69                        481 	.ds 2
                                    482 ;--------------------------------------------------------
                                    483 ; absolute external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XABS    (ABS,XDATA)
                                    486 ;--------------------------------------------------------
                                    487 ; external initialized ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XISEG   (XDATA)
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT0 (CODE)
                                    492 	.area GSINIT1 (CODE)
                                    493 	.area GSINIT2 (CODE)
                                    494 	.area GSINIT3 (CODE)
                                    495 	.area GSINIT4 (CODE)
                                    496 	.area GSINIT5 (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area CSEG    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; global & static initialisations
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; Home
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
                                    511 	.area HOME    (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; code
                                    514 ;--------------------------------------------------------
                                    515 	.area CSEG    (CODE)
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'getchar'
                                    518 ;------------------------------------------------------------
                                    519 ;	string_func.c:34: int getchar (void)
                                    520 ;	-----------------------------------------
                                    521 ;	 function getchar
                                    522 ;	-----------------------------------------
      003298                        523 _getchar:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
                                    532 ;	string_func.c:36: while (!RI); //Wait till the Character is received
      003298                        533 00101$:
                                    534 ;	string_func.c:37: RI = 0;			// Clear the RI flag
                                    535 ;	assignBit
      003298 10 98 02         [24]  536 	jbc	_RI,00114$
      00329B 80 FB            [24]  537 	sjmp	00101$
      00329D                        538 00114$:
                                    539 ;	string_func.c:38: return SBUF;  	// Return the Character
      00329D AE 99            [24]  540 	mov	r6,_SBUF
      00329F 7F 00            [12]  541 	mov	r7,#0x00
      0032A1 8E 82            [24]  542 	mov	dpl,r6
      0032A3 8F 83            [24]  543 	mov	dph,r7
                                    544 ;	string_func.c:39: }
      0032A5 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'putchar'
                                    548 ;------------------------------------------------------------
                                    549 ;c                         Allocated with name '_putchar_c_65536_7'
                                    550 ;------------------------------------------------------------
                                    551 ;	string_func.c:51: int putchar (int c)
                                    552 ;	-----------------------------------------
                                    553 ;	 function putchar
                                    554 ;	-----------------------------------------
      0032A6                        555 _putchar:
      0032A6 AF 83            [24]  556 	mov	r7,dph
      0032A8 E5 82            [12]  557 	mov	a,dpl
      0032AA 90 1C 65         [24]  558 	mov	dptr,#_putchar_c_65536_7
      0032AD F0               [24]  559 	movx	@dptr,a
      0032AE EF               [12]  560 	mov	a,r7
      0032AF A3               [24]  561 	inc	dptr
      0032B0 F0               [24]  562 	movx	@dptr,a
                                    563 ;	string_func.c:53: while(!TI); //Wait till the Transmitter is ready
      0032B1                        564 00101$:
      0032B1 30 99 FD         [24]  565 	jnb	_TI,00101$
                                    566 ;	string_func.c:54: SBUF = c; //write character to SBUF
      0032B4 90 1C 65         [24]  567 	mov	dptr,#_putchar_c_65536_7
      0032B7 E0               [24]  568 	movx	a,@dptr
      0032B8 FE               [12]  569 	mov	r6,a
      0032B9 A3               [24]  570 	inc	dptr
      0032BA E0               [24]  571 	movx	a,@dptr
      0032BB FF               [12]  572 	mov	r7,a
      0032BC 8E 99            [24]  573 	mov	_SBUF,r6
                                    574 ;	string_func.c:55: TI = 0; //Clear the TI flag
                                    575 ;	assignBit
      0032BE C2 99            [12]  576 	clr	_TI
                                    577 ;	string_func.c:56: return c;
      0032C0 8E 82            [24]  578 	mov	dpl,r6
      0032C2 8F 83            [24]  579 	mov	dph,r7
                                    580 ;	string_func.c:57: }
      0032C4 22               [24]  581 	ret
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'gets_'
                                    584 ;------------------------------------------------------------
                                    585 ;ch                        Allocated with name '_gets__ch_65536_9'
                                    586 ;i                         Allocated with name '_gets__i_131072_11'
                                    587 ;c                         Allocated with name '_gets__c_196608_12'
                                    588 ;------------------------------------------------------------
                                    589 ;	string_func.c:68: void gets_(__xdata char *ch) {
                                    590 ;	-----------------------------------------
                                    591 ;	 function gets_
                                    592 ;	-----------------------------------------
      0032C5                        593 _gets_:
      0032C5 AF 83            [24]  594 	mov	r7,dph
      0032C7 E5 82            [12]  595 	mov	a,dpl
      0032C9 90 1C 67         [24]  596 	mov	dptr,#_gets__ch_65536_9
      0032CC F0               [24]  597 	movx	@dptr,a
      0032CD EF               [12]  598 	mov	a,r7
      0032CE A3               [24]  599 	inc	dptr
      0032CF F0               [24]  600 	movx	@dptr,a
                                    601 ;	string_func.c:69: for (int i = 0; ; i++) {
      0032D0 90 1C 67         [24]  602 	mov	dptr,#_gets__ch_65536_9
      0032D3 E0               [24]  603 	movx	a,@dptr
      0032D4 FE               [12]  604 	mov	r6,a
      0032D5 A3               [24]  605 	inc	dptr
      0032D6 E0               [24]  606 	movx	a,@dptr
      0032D7 FF               [12]  607 	mov	r7,a
      0032D8 7C 00            [12]  608 	mov	r4,#0x00
      0032DA 7D 00            [12]  609 	mov	r5,#0x00
      0032DC                        610 00105$:
                                    611 ;	string_func.c:70: char c = getchar();
      0032DC C0 07            [24]  612 	push	ar7
      0032DE C0 06            [24]  613 	push	ar6
      0032E0 C0 05            [24]  614 	push	ar5
      0032E2 C0 04            [24]  615 	push	ar4
      0032E4 12 32 98         [24]  616 	lcall	_getchar
      0032E7 AA 82            [24]  617 	mov	r2,dpl
                                    618 ;	string_func.c:71: putchar(c);
      0032E9 8A 01            [24]  619 	mov	ar1,r2
      0032EB 7B 00            [12]  620 	mov	r3,#0x00
      0032ED 89 82            [24]  621 	mov	dpl,r1
      0032EF 8B 83            [24]  622 	mov	dph,r3
      0032F1 C0 02            [24]  623 	push	ar2
      0032F3 12 32 A6         [24]  624 	lcall	_putchar
      0032F6 D0 02            [24]  625 	pop	ar2
      0032F8 D0 04            [24]  626 	pop	ar4
      0032FA D0 05            [24]  627 	pop	ar5
      0032FC D0 06            [24]  628 	pop	ar6
      0032FE D0 07            [24]  629 	pop	ar7
                                    630 ;	string_func.c:72: if (c == '\r' || c == '\n') {
      003300 BA 0D 02         [24]  631 	cjne	r2,#0x0d,00118$
      003303 80 03            [24]  632 	sjmp	00101$
      003305                        633 00118$:
      003305 BA 0A 13         [24]  634 	cjne	r2,#0x0a,00102$
      003308                        635 00101$:
                                    636 ;	string_func.c:73: *(ch + i) = '\0';
      003308 90 1C 67         [24]  637 	mov	dptr,#_gets__ch_65536_9
      00330B E0               [24]  638 	movx	a,@dptr
      00330C F9               [12]  639 	mov	r1,a
      00330D A3               [24]  640 	inc	dptr
      00330E E0               [24]  641 	movx	a,@dptr
      00330F FB               [12]  642 	mov	r3,a
      003310 EC               [12]  643 	mov	a,r4
      003311 29               [12]  644 	add	a,r1
      003312 F5 82            [12]  645 	mov	dpl,a
      003314 ED               [12]  646 	mov	a,r5
      003315 3B               [12]  647 	addc	a,r3
      003316 F5 83            [12]  648 	mov	dph,a
      003318 E4               [12]  649 	clr	a
      003319 F0               [24]  650 	movx	@dptr,a
                                    651 ;	string_func.c:74: break;
      00331A 22               [24]  652 	ret
      00331B                        653 00102$:
                                    654 ;	string_func.c:76: *(ch + i) = c;
      00331B EC               [12]  655 	mov	a,r4
      00331C 2E               [12]  656 	add	a,r6
      00331D F5 82            [12]  657 	mov	dpl,a
      00331F ED               [12]  658 	mov	a,r5
      003320 3F               [12]  659 	addc	a,r7
      003321 F5 83            [12]  660 	mov	dph,a
      003323 EA               [12]  661 	mov	a,r2
      003324 F0               [24]  662 	movx	@dptr,a
                                    663 ;	string_func.c:69: for (int i = 0; ; i++) {
      003325 0C               [12]  664 	inc	r4
      003326 BC 00 B3         [24]  665 	cjne	r4,#0x00,00105$
      003329 0D               [12]  666 	inc	r5
                                    667 ;	string_func.c:78: }
      00332A 80 B0            [24]  668 	sjmp	00105$
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'puts_'
                                    671 ;------------------------------------------------------------
                                    672 ;ch                        Allocated with name '_puts__ch_65536_14'
                                    673 ;------------------------------------------------------------
                                    674 ;	string_func.c:88: void puts_(__xdata char *ch) {
                                    675 ;	-----------------------------------------
                                    676 ;	 function puts_
                                    677 ;	-----------------------------------------
      00332C                        678 _puts_:
      00332C AF 83            [24]  679 	mov	r7,dph
      00332E E5 82            [12]  680 	mov	a,dpl
      003330 90 1C 69         [24]  681 	mov	dptr,#_puts__ch_65536_14
      003333 F0               [24]  682 	movx	@dptr,a
      003334 EF               [12]  683 	mov	a,r7
      003335 A3               [24]  684 	inc	dptr
      003336 F0               [24]  685 	movx	@dptr,a
      003337 90 1C 69         [24]  686 	mov	dptr,#_puts__ch_65536_14
      00333A E0               [24]  687 	movx	a,@dptr
      00333B FE               [12]  688 	mov	r6,a
      00333C A3               [24]  689 	inc	dptr
      00333D E0               [24]  690 	movx	a,@dptr
      00333E FF               [12]  691 	mov	r7,a
      00333F                        692 00103$:
                                    693 ;	string_func.c:89: for (; *ch; ch++) {
      00333F 8E 82            [24]  694 	mov	dpl,r6
      003341 8F 83            [24]  695 	mov	dph,r7
      003343 E0               [24]  696 	movx	a,@dptr
      003344 FD               [12]  697 	mov	r5,a
      003345 60 20            [24]  698 	jz	00109$
                                    699 ;	string_func.c:90: putchar(*ch);
      003347 7C 00            [12]  700 	mov	r4,#0x00
      003349 8D 82            [24]  701 	mov	dpl,r5
      00334B 8C 83            [24]  702 	mov	dph,r4
      00334D C0 07            [24]  703 	push	ar7
      00334F C0 06            [24]  704 	push	ar6
      003351 12 32 A6         [24]  705 	lcall	_putchar
      003354 D0 06            [24]  706 	pop	ar6
      003356 D0 07            [24]  707 	pop	ar7
                                    708 ;	string_func.c:89: for (; *ch; ch++) {
      003358 0E               [12]  709 	inc	r6
      003359 BE 00 01         [24]  710 	cjne	r6,#0x00,00117$
      00335C 0F               [12]  711 	inc	r7
      00335D                        712 00117$:
      00335D 90 1C 69         [24]  713 	mov	dptr,#_puts__ch_65536_14
      003360 EE               [12]  714 	mov	a,r6
      003361 F0               [24]  715 	movx	@dptr,a
      003362 EF               [12]  716 	mov	a,r7
      003363 A3               [24]  717 	inc	dptr
      003364 F0               [24]  718 	movx	@dptr,a
      003365 80 D8            [24]  719 	sjmp	00103$
      003367                        720 00109$:
      003367 90 1C 69         [24]  721 	mov	dptr,#_puts__ch_65536_14
      00336A EE               [12]  722 	mov	a,r6
      00336B F0               [24]  723 	movx	@dptr,a
      00336C EF               [12]  724 	mov	a,r7
      00336D A3               [24]  725 	inc	dptr
      00336E F0               [24]  726 	movx	@dptr,a
                                    727 ;	string_func.c:92: }
      00336F 22               [24]  728 	ret
                                    729 	.area CSEG    (CODE)
                                    730 	.area CONST   (CODE)
                                    731 	.area XINIT   (CODE)
                                    732 	.area CABS    (ABS,CODE)
