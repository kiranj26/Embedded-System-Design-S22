                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module buffer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Buffer_Size_Error_Correction
                                     12 	.globl _gets_
                                     13 	.globl _printf_tiny
                                     14 	.globl _printf
                                     15 	.globl _atoi
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _TXD0
                                     92 	.globl _RXD0
                                     93 	.globl _BREG_F7
                                     94 	.globl _BREG_F6
                                     95 	.globl _BREG_F5
                                     96 	.globl _BREG_F4
                                     97 	.globl _BREG_F3
                                     98 	.globl _BREG_F2
                                     99 	.globl _BREG_F1
                                    100 	.globl _BREG_F0
                                    101 	.globl _P5_7
                                    102 	.globl _P5_6
                                    103 	.globl _P5_5
                                    104 	.globl _P5_4
                                    105 	.globl _P5_3
                                    106 	.globl _P5_2
                                    107 	.globl _P5_1
                                    108 	.globl _P5_0
                                    109 	.globl _P4_7
                                    110 	.globl _P4_6
                                    111 	.globl _P4_5
                                    112 	.globl _P4_4
                                    113 	.globl _P4_3
                                    114 	.globl _P4_2
                                    115 	.globl _P4_1
                                    116 	.globl _P4_0
                                    117 	.globl _PX0L
                                    118 	.globl _PT0L
                                    119 	.globl _PX1L
                                    120 	.globl _PT1L
                                    121 	.globl _PSL
                                    122 	.globl _PT2L
                                    123 	.globl _PPCL
                                    124 	.globl _EC
                                    125 	.globl _CCF0
                                    126 	.globl _CCF1
                                    127 	.globl _CCF2
                                    128 	.globl _CCF3
                                    129 	.globl _CCF4
                                    130 	.globl _CR
                                    131 	.globl _CF
                                    132 	.globl _TF2
                                    133 	.globl _EXF2
                                    134 	.globl _RCLK
                                    135 	.globl _TCLK
                                    136 	.globl _EXEN2
                                    137 	.globl _TR2
                                    138 	.globl _C_T2
                                    139 	.globl _CP_RL2
                                    140 	.globl _T2CON_7
                                    141 	.globl _T2CON_6
                                    142 	.globl _T2CON_5
                                    143 	.globl _T2CON_4
                                    144 	.globl _T2CON_3
                                    145 	.globl _T2CON_2
                                    146 	.globl _T2CON_1
                                    147 	.globl _T2CON_0
                                    148 	.globl _PT2
                                    149 	.globl _ET2
                                    150 	.globl _B
                                    151 	.globl _ACC
                                    152 	.globl _PSW
                                    153 	.globl _IP
                                    154 	.globl _P3
                                    155 	.globl _IE
                                    156 	.globl _P2
                                    157 	.globl _SBUF
                                    158 	.globl _SCON
                                    159 	.globl _P1
                                    160 	.globl _TH1
                                    161 	.globl _TH0
                                    162 	.globl _TL1
                                    163 	.globl _TL0
                                    164 	.globl _TMOD
                                    165 	.globl _TCON
                                    166 	.globl _PCON
                                    167 	.globl _DPH
                                    168 	.globl _DPL
                                    169 	.globl _SP
                                    170 	.globl _P0
                                    171 	.globl _SBUF0
                                    172 	.globl _DP0L
                                    173 	.globl _DP0H
                                    174 	.globl _EECON
                                    175 	.globl _KBF
                                    176 	.globl _KBE
                                    177 	.globl _KBLS
                                    178 	.globl _BRL
                                    179 	.globl _BDRCON
                                    180 	.globl _T2MOD
                                    181 	.globl _SPDAT
                                    182 	.globl _SPSTA
                                    183 	.globl _SPCON
                                    184 	.globl _SADEN
                                    185 	.globl _SADDR
                                    186 	.globl _WDTPRG
                                    187 	.globl _WDTRST
                                    188 	.globl _P5
                                    189 	.globl _P4
                                    190 	.globl _IPH1
                                    191 	.globl _IPL1
                                    192 	.globl _IPH0
                                    193 	.globl _IPL0
                                    194 	.globl _IEN1
                                    195 	.globl _IEN0
                                    196 	.globl _CMOD
                                    197 	.globl _CL
                                    198 	.globl _CH
                                    199 	.globl _CCON
                                    200 	.globl _CCAPM4
                                    201 	.globl _CCAPM3
                                    202 	.globl _CCAPM2
                                    203 	.globl _CCAPM1
                                    204 	.globl _CCAPM0
                                    205 	.globl _CCAP4L
                                    206 	.globl _CCAP3L
                                    207 	.globl _CCAP2L
                                    208 	.globl _CCAP1L
                                    209 	.globl _CCAP0L
                                    210 	.globl _CCAP4H
                                    211 	.globl _CCAP3H
                                    212 	.globl _CCAP2H
                                    213 	.globl _CCAP1H
                                    214 	.globl _CCAP0H
                                    215 	.globl _CKCON1
                                    216 	.globl _CKCON0
                                    217 	.globl _CKRL
                                    218 	.globl _AUXR1
                                    219 	.globl _AUXR
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _RCAP2H
                                    223 	.globl _RCAP2L
                                    224 	.globl _T2CON
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
      001B70                        477 _Buffer_Size_Error_Correction_input_65536_47:
      001B70                        478 	.ds 5
                                    479 ;--------------------------------------------------------
                                    480 ; absolute external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XABS    (ABS,XDATA)
                                    483 ;--------------------------------------------------------
                                    484 ; external initialized ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area XISEG   (XDATA)
                                    487 	.area HOME    (CODE)
                                    488 	.area GSINIT0 (CODE)
                                    489 	.area GSINIT1 (CODE)
                                    490 	.area GSINIT2 (CODE)
                                    491 	.area GSINIT3 (CODE)
                                    492 	.area GSINIT4 (CODE)
                                    493 	.area GSINIT5 (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.area GSFINAL (CODE)
                                    496 	.area CSEG    (CODE)
                                    497 ;--------------------------------------------------------
                                    498 ; global & static initialisations
                                    499 ;--------------------------------------------------------
                                    500 	.area HOME    (CODE)
                                    501 	.area GSINIT  (CODE)
                                    502 	.area GSFINAL (CODE)
                                    503 	.area GSINIT  (CODE)
                                    504 ;--------------------------------------------------------
                                    505 ; Home
                                    506 ;--------------------------------------------------------
                                    507 	.area HOME    (CODE)
                                    508 	.area HOME    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; code
                                    511 ;--------------------------------------------------------
                                    512 	.area CSEG    (CODE)
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'Buffer_Size_Error_Correction'
                                    515 ;------------------------------------------------------------
                                    516 ;input                     Allocated with name '_Buffer_Size_Error_Correction_input_65536_47'
                                    517 ;num                       Allocated with name '_Buffer_Size_Error_Correction_num_65536_47'
                                    518 ;------------------------------------------------------------
                                    519 ;	buffer.c:28: __xdata int Buffer_Size_Error_Correction(void)
                                    520 ;	-----------------------------------------
                                    521 ;	 function Buffer_Size_Error_Correction
                                    522 ;	-----------------------------------------
      002062                        523 _Buffer_Size_Error_Correction:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
                                    532 ;	buffer.c:30: __xdata char input[5] = {'0', '0', '0', '0', '\0'};
      002062 90 1B 70         [24]  533 	mov	dptr,#_Buffer_Size_Error_Correction_input_65536_47
      002065 74 30            [12]  534 	mov	a,#0x30
      002067 F0               [24]  535 	movx	@dptr,a
      002068 90 1B 71         [24]  536 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65536_47 + 0x0001)
      00206B F0               [24]  537 	movx	@dptr,a
      00206C 90 1B 72         [24]  538 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65536_47 + 0x0002)
      00206F F0               [24]  539 	movx	@dptr,a
      002070 90 1B 73         [24]  540 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65536_47 + 0x0003)
      002073 F0               [24]  541 	movx	@dptr,a
      002074 90 1B 74         [24]  542 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65536_47 + 0x0004)
      002077 E4               [12]  543 	clr	a
      002078 F0               [24]  544 	movx	@dptr,a
                                    545 ;	buffer.c:33: while (1) {
      002079                        546 00116$:
                                    547 ;	buffer.c:34: printf("\033[33m");
      002079 74 A1            [12]  548 	mov	a,#___str_0
      00207B C0 E0            [24]  549 	push	acc
      00207D 74 43            [12]  550 	mov	a,#(___str_0 >> 8)
      00207F C0 E0            [24]  551 	push	acc
      002081 74 80            [12]  552 	mov	a,#0x80
      002083 C0 E0            [24]  553 	push	acc
      002085 12 39 57         [24]  554 	lcall	_printf
      002088 15 81            [12]  555 	dec	sp
      00208A 15 81            [12]  556 	dec	sp
      00208C 15 81            [12]  557 	dec	sp
                                    558 ;	buffer.c:35: printf_tiny("\n\rEnter input:");
      00208E 74 A7            [12]  559 	mov	a,#___str_1
      002090 C0 E0            [24]  560 	push	acc
      002092 74 43            [12]  561 	mov	a,#(___str_1 >> 8)
      002094 C0 E0            [24]  562 	push	acc
      002096 12 35 27         [24]  563 	lcall	_printf_tiny
      002099 15 81            [12]  564 	dec	sp
      00209B 15 81            [12]  565 	dec	sp
                                    566 ;	buffer.c:36: gets_(input);
      00209D 90 1B 70         [24]  567 	mov	dptr,#_Buffer_Size_Error_Correction_input_65536_47
      0020A0 12 31 E6         [24]  568 	lcall	_gets_
                                    569 ;	buffer.c:38: if (input[0] < '0' || input[0] > '9' ||
      0020A3 90 1B 70         [24]  570 	mov	dptr,#_Buffer_Size_Error_Correction_input_65536_47
      0020A6 E0               [24]  571 	movx	a,@dptr
      0020A7 FF               [12]  572 	mov	r7,a
      0020A8 BF 30 00         [24]  573 	cjne	r7,#0x30,00160$
      0020AB                        574 00160$:
      0020AB 40 32            [24]  575 	jc	00101$
      0020AD EF               [12]  576 	mov	a,r7
      0020AE 24 C6            [12]  577 	add	a,#0xff - 0x39
      0020B0 40 2D            [24]  578 	jc	00101$
                                    579 ;	buffer.c:39: input[1] < '0' || input[1] > '9' ||
      0020B2 90 1B 71         [24]  580 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65536_47 + 0x0001)
      0020B5 E0               [24]  581 	movx	a,@dptr
      0020B6 FF               [12]  582 	mov	r7,a
      0020B7 BF 30 00         [24]  583 	cjne	r7,#0x30,00163$
      0020BA                        584 00163$:
      0020BA 40 23            [24]  585 	jc	00101$
      0020BC EF               [12]  586 	mov	a,r7
      0020BD 24 C6            [12]  587 	add	a,#0xff - 0x39
      0020BF 40 1E            [24]  588 	jc	00101$
                                    589 ;	buffer.c:40: input[2] < '0' || input[2] > '9' ||
      0020C1 90 1B 72         [24]  590 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65536_47 + 0x0002)
      0020C4 E0               [24]  591 	movx	a,@dptr
      0020C5 FF               [12]  592 	mov	r7,a
      0020C6 BF 30 00         [24]  593 	cjne	r7,#0x30,00166$
      0020C9                        594 00166$:
      0020C9 40 14            [24]  595 	jc	00101$
      0020CB EF               [12]  596 	mov	a,r7
      0020CC 24 C6            [12]  597 	add	a,#0xff - 0x39
      0020CE 40 0F            [24]  598 	jc	00101$
                                    599 ;	buffer.c:41: input[3] < '0' || input[3] > '9') {
      0020D0 90 1B 73         [24]  600 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65536_47 + 0x0003)
      0020D3 E0               [24]  601 	movx	a,@dptr
      0020D4 FF               [12]  602 	mov	r7,a
      0020D5 BF 30 00         [24]  603 	cjne	r7,#0x30,00169$
      0020D8                        604 00169$:
      0020D8 40 05            [24]  605 	jc	00101$
      0020DA EF               [12]  606 	mov	a,r7
      0020DB 24 C6            [12]  607 	add	a,#0xff - 0x39
      0020DD 50 2D            [24]  608 	jnc	00102$
      0020DF                        609 00101$:
                                    610 ;	buffer.c:42: printf("\033[0;31m\nInvalid input. Please enter four digits between 0 and 9.\n\r");
      0020DF 74 B6            [12]  611 	mov	a,#___str_2
      0020E1 C0 E0            [24]  612 	push	acc
      0020E3 74 43            [12]  613 	mov	a,#(___str_2 >> 8)
      0020E5 C0 E0            [24]  614 	push	acc
      0020E7 74 80            [12]  615 	mov	a,#0x80
      0020E9 C0 E0            [24]  616 	push	acc
      0020EB 12 39 57         [24]  617 	lcall	_printf
      0020EE 15 81            [12]  618 	dec	sp
      0020F0 15 81            [12]  619 	dec	sp
      0020F2 15 81            [12]  620 	dec	sp
                                    621 ;	buffer.c:43: printf("\033[0;31mValid Input Examples : 0064,9876,0001,0096, etc\n");
      0020F4 74 F9            [12]  622 	mov	a,#___str_3
      0020F6 C0 E0            [24]  623 	push	acc
      0020F8 74 43            [12]  624 	mov	a,#(___str_3 >> 8)
      0020FA C0 E0            [24]  625 	push	acc
      0020FC 74 80            [12]  626 	mov	a,#0x80
      0020FE C0 E0            [24]  627 	push	acc
      002100 12 39 57         [24]  628 	lcall	_printf
      002103 15 81            [12]  629 	dec	sp
      002105 15 81            [12]  630 	dec	sp
      002107 15 81            [12]  631 	dec	sp
                                    632 ;	buffer.c:46: continue;
      002109 02 20 79         [24]  633 	ljmp	00116$
      00210C                        634 00102$:
                                    635 ;	buffer.c:49: num = atoi(input);
      00210C 90 1B 70         [24]  636 	mov	dptr,#_Buffer_Size_Error_Correction_input_65536_47
      00210F 75 F0 00         [24]  637 	mov	b,#0x00
      002112 12 33 E8         [24]  638 	lcall	_atoi
      002115 AE 82            [24]  639 	mov	r6,dpl
      002117 AF 83            [24]  640 	mov	r7,dph
                                    641 ;	buffer.c:50: if (num < 64 || num > 5600) {
      002119 C3               [12]  642 	clr	c
      00211A EE               [12]  643 	mov	a,r6
      00211B 94 40            [12]  644 	subb	a,#0x40
      00211D EF               [12]  645 	mov	a,r7
      00211E 64 80            [12]  646 	xrl	a,#0x80
      002120 94 80            [12]  647 	subb	a,#0x80
      002122 40 0E            [24]  648 	jc	00110$
      002124 74 E0            [12]  649 	mov	a,#0xe0
      002126 9E               [12]  650 	subb	a,r6
      002127 74 95            [12]  651 	mov	a,#(0x15 ^ 0x80)
      002129 8F F0            [24]  652 	mov	b,r7
      00212B 63 F0 80         [24]  653 	xrl	b,#0x80
      00212E 95 F0            [12]  654 	subb	a,b
      002130 50 12            [24]  655 	jnc	00111$
      002132                        656 00110$:
                                    657 ;	buffer.c:51: printf_tiny("\033[0;31m\nInvalid input.Input data should be between 64 and 5600.\n");
      002132 74 31            [12]  658 	mov	a,#___str_4
      002134 C0 E0            [24]  659 	push	acc
      002136 74 44            [12]  660 	mov	a,#(___str_4 >> 8)
      002138 C0 E0            [24]  661 	push	acc
      00213A 12 35 27         [24]  662 	lcall	_printf_tiny
      00213D 15 81            [12]  663 	dec	sp
      00213F 15 81            [12]  664 	dec	sp
                                    665 ;	buffer.c:53: continue;
      002141 02 20 79         [24]  666 	ljmp	00116$
      002144                        667 00111$:
                                    668 ;	buffer.c:55: if (num % 32 != 0) {
      002144 90 1C 82         [24]  669 	mov	dptr,#__modsint_PARM_2
      002147 74 20            [12]  670 	mov	a,#0x20
      002149 F0               [24]  671 	movx	@dptr,a
      00214A E4               [12]  672 	clr	a
      00214B A3               [24]  673 	inc	dptr
      00214C F0               [24]  674 	movx	@dptr,a
      00214D 8E 82            [24]  675 	mov	dpl,r6
      00214F 8F 83            [24]  676 	mov	dph,r7
      002151 C0 07            [24]  677 	push	ar7
      002153 C0 06            [24]  678 	push	ar6
      002155 12 37 F5         [24]  679 	lcall	__modsint
      002158 E5 82            [12]  680 	mov	a,dpl
      00215A 85 83 F0         [24]  681 	mov	b,dph
      00215D D0 06            [24]  682 	pop	ar6
      00215F D0 07            [24]  683 	pop	ar7
      002161 45 F0            [12]  684 	orl	a,b
      002163 60 12            [24]  685 	jz	00117$
                                    686 ;	buffer.c:56: printf_tiny("\033[0;31m\nInvalid input.Input not divisible by 32.\n");
      002165 74 72            [12]  687 	mov	a,#___str_5
      002167 C0 E0            [24]  688 	push	acc
      002169 74 44            [12]  689 	mov	a,#(___str_5 >> 8)
      00216B C0 E0            [24]  690 	push	acc
      00216D 12 35 27         [24]  691 	lcall	_printf_tiny
      002170 15 81            [12]  692 	dec	sp
      002172 15 81            [12]  693 	dec	sp
                                    694 ;	buffer.c:58: continue;
      002174 02 20 79         [24]  695 	ljmp	00116$
                                    696 ;	buffer.c:60: break;
      002177                        697 00117$:
                                    698 ;	buffer.c:62: return num;
      002177 8E 82            [24]  699 	mov	dpl,r6
      002179 8F 83            [24]  700 	mov	dph,r7
                                    701 ;	buffer.c:63: }
      00217B 22               [24]  702 	ret
                                    703 	.area CSEG    (CODE)
                                    704 	.area CONST   (CODE)
                                    705 	.area CONST   (CODE)
      0043A1                        706 ___str_0:
      0043A1 1B                     707 	.db 0x1b
      0043A2 5B 33 33 6D            708 	.ascii "[33m"
      0043A6 00                     709 	.db 0x00
                                    710 	.area CSEG    (CODE)
                                    711 	.area CONST   (CODE)
      0043A7                        712 ___str_1:
      0043A7 0A                     713 	.db 0x0a
      0043A8 0D                     714 	.db 0x0d
      0043A9 45 6E 74 65 72 20 69   715 	.ascii "Enter input:"
             6E 70 75 74 3A
      0043B5 00                     716 	.db 0x00
                                    717 	.area CSEG    (CODE)
                                    718 	.area CONST   (CODE)
      0043B6                        719 ___str_2:
      0043B6 1B                     720 	.db 0x1b
      0043B7 5B 30 3B 33 31 6D      721 	.ascii "[0;31m"
      0043BD 0A                     722 	.db 0x0a
      0043BE 49 6E 76 61 6C 69 64   723 	.ascii "Invalid input. Please enter four digits between 0 and 9."
             20 69 6E 70 75 74 2E
             20 50 6C 65 61 73 65
             20 65 6E 74 65 72 20
             66 6F 75 72 20 64 69
             67 69 74 73 20 62 65
             74 77 65 65 6E 20 30
             20 61 6E 64 20 39 2E
      0043F6 0A                     724 	.db 0x0a
      0043F7 0D                     725 	.db 0x0d
      0043F8 00                     726 	.db 0x00
                                    727 	.area CSEG    (CODE)
                                    728 	.area CONST   (CODE)
      0043F9                        729 ___str_3:
      0043F9 1B                     730 	.db 0x1b
      0043FA 5B 30 3B 33 31 6D 56   731 	.ascii "[0;31mValid Input Examples : 0064,9876,0001,0096, etc"
             61 6C 69 64 20 49 6E
             70 75 74 20 45 78 61
             6D 70 6C 65 73 20 3A
             20 30 30 36 34 2C 39
             38 37 36 2C 30 30 30
             31 2C 30 30 39 36 2C
             20 65 74 63
      00442F 0A                     732 	.db 0x0a
      004430 00                     733 	.db 0x00
                                    734 	.area CSEG    (CODE)
                                    735 	.area CONST   (CODE)
      004431                        736 ___str_4:
      004431 1B                     737 	.db 0x1b
      004432 5B 30 3B 33 31 6D      738 	.ascii "[0;31m"
      004438 0A                     739 	.db 0x0a
      004439 49 6E 76 61 6C 69 64   740 	.ascii "Invalid input.Input data should be between 64 and 5600."
             20 69 6E 70 75 74 2E
             49 6E 70 75 74 20 64
             61 74 61 20 73 68 6F
             75 6C 64 20 62 65 20
             62 65 74 77 65 65 6E
             20 36 34 20 61 6E 64
             20 35 36 30 30 2E
      004470 0A                     741 	.db 0x0a
      004471 00                     742 	.db 0x00
                                    743 	.area CSEG    (CODE)
                                    744 	.area CONST   (CODE)
      004472                        745 ___str_5:
      004472 1B                     746 	.db 0x1b
      004473 5B 30 3B 33 31 6D      747 	.ascii "[0;31m"
      004479 0A                     748 	.db 0x0a
      00447A 49 6E 76 61 6C 69 64   749 	.ascii "Invalid input.Input not divisible by 32."
             20 69 6E 70 75 74 2E
             49 6E 70 75 74 20 6E
             6F 74 20 64 69 76 69
             73 69 62 6C 65 20 62
             79 20 33 32 2E
      0044A2 0A                     750 	.db 0x0a
      0044A3 00                     751 	.db 0x00
                                    752 	.area CSEG    (CODE)
                                    753 	.area XINIT   (CODE)
                                    754 	.area CABS    (ABS,CODE)
