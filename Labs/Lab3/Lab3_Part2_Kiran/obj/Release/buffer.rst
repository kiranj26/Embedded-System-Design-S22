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
      001B70                        477 _Buffer_Size_Error_Correction_input_65537_48:
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
                                    516 ;input                     Allocated with name '_Buffer_Size_Error_Correction_input_65537_48'
                                    517 ;num                       Allocated with name '_Buffer_Size_Error_Correction_num_65537_48'
                                    518 ;------------------------------------------------------------
                                    519 ;	buffer.c:37: __xdata int Buffer_Size_Error_Correction(void)
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
                                    532 ;	buffer.c:39: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002062 74 95            [12]  533 	mov	a,#___str_0
      002064 C0 E0            [24]  534 	push	acc
      002066 74 44            [12]  535 	mov	a,#(___str_0 >> 8)
      002068 C0 E0            [24]  536 	push	acc
      00206A 12 36 1B         [24]  537 	lcall	_printf_tiny
      00206D 15 81            [12]  538 	dec	sp
      00206F 15 81            [12]  539 	dec	sp
                                    540 ;	buffer.c:40: printf_tiny("|  Buffer 0 and Buffer 1 Allocation Processing  |\n\r");
      002071 74 D0            [12]  541 	mov	a,#___str_1
      002073 C0 E0            [24]  542 	push	acc
      002075 74 44            [12]  543 	mov	a,#(___str_1 >> 8)
      002077 C0 E0            [24]  544 	push	acc
      002079 12 36 1B         [24]  545 	lcall	_printf_tiny
      00207C 15 81            [12]  546 	dec	sp
      00207E 15 81            [12]  547 	dec	sp
                                    548 ;	buffer.c:41: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002080 74 95            [12]  549 	mov	a,#___str_0
      002082 C0 E0            [24]  550 	push	acc
      002084 74 44            [12]  551 	mov	a,#(___str_0 >> 8)
      002086 C0 E0            [24]  552 	push	acc
      002088 12 36 1B         [24]  553 	lcall	_printf_tiny
      00208B 15 81            [12]  554 	dec	sp
      00208D 15 81            [12]  555 	dec	sp
                                    556 ;	buffer.c:43: __xdata char input[5] = {'0', '0', '0', '0', '\0'}; // Initialize input array
      00208F 90 1B 70         [24]  557 	mov	dptr,#_Buffer_Size_Error_Correction_input_65537_48
      002092 74 30            [12]  558 	mov	a,#0x30
      002094 F0               [24]  559 	movx	@dptr,a
      002095 90 1B 71         [24]  560 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65537_48 + 0x0001)
      002098 F0               [24]  561 	movx	@dptr,a
      002099 90 1B 72         [24]  562 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65537_48 + 0x0002)
      00209C F0               [24]  563 	movx	@dptr,a
      00209D 90 1B 73         [24]  564 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65537_48 + 0x0003)
      0020A0 F0               [24]  565 	movx	@dptr,a
      0020A1 90 1B 74         [24]  566 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65537_48 + 0x0004)
      0020A4 E4               [12]  567 	clr	a
      0020A5 F0               [24]  568 	movx	@dptr,a
                                    569 ;	buffer.c:46: while (1) {
      0020A6                        570 00116$:
                                    571 ;	buffer.c:47: printf_tiny("\033[1;36m\n\r|***********************************************|\n\r");
      0020A6 74 04            [12]  572 	mov	a,#___str_2
      0020A8 C0 E0            [24]  573 	push	acc
      0020AA 74 45            [12]  574 	mov	a,#(___str_2 >> 8)
      0020AC C0 E0            [24]  575 	push	acc
      0020AE 12 36 1B         [24]  576 	lcall	_printf_tiny
      0020B1 15 81            [12]  577 	dec	sp
      0020B3 15 81            [12]  578 	dec	sp
                                    579 ;	buffer.c:48: printf_tiny("\033[1;36m|       Enter the size for buffer0 & buffer1    |\n\r");
      0020B5 74 41            [12]  580 	mov	a,#___str_3
      0020B7 C0 E0            [24]  581 	push	acc
      0020B9 74 45            [12]  582 	mov	a,#(___str_3 >> 8)
      0020BB C0 E0            [24]  583 	push	acc
      0020BD 12 36 1B         [24]  584 	lcall	_printf_tiny
      0020C0 15 81            [12]  585 	dec	sp
      0020C2 15 81            [12]  586 	dec	sp
                                    587 ;	buffer.c:49: printf_tiny("\033[1;36m|***********************************************|\n\r");
      0020C4 74 7C            [12]  588 	mov	a,#___str_4
      0020C6 C0 E0            [24]  589 	push	acc
      0020C8 74 45            [12]  590 	mov	a,#(___str_4 >> 8)
      0020CA C0 E0            [24]  591 	push	acc
      0020CC 12 36 1B         [24]  592 	lcall	_printf_tiny
      0020CF 15 81            [12]  593 	dec	sp
      0020D1 15 81            [12]  594 	dec	sp
                                    595 ;	buffer.c:52: gets_(input);                                   // Read user input as a string
      0020D3 90 1B 70         [24]  596 	mov	dptr,#_Buffer_Size_Error_Correction_input_65537_48
      0020D6 12 32 DA         [24]  597 	lcall	_gets_
                                    598 ;	buffer.c:54: if (input[0] < '0' || input[0] > '9' ||         // Check if the input is not a number
      0020D9 90 1B 70         [24]  599 	mov	dptr,#_Buffer_Size_Error_Correction_input_65537_48
      0020DC E0               [24]  600 	movx	a,@dptr
      0020DD FF               [12]  601 	mov	r7,a
      0020DE BF 30 00         [24]  602 	cjne	r7,#0x30,00160$
      0020E1                        603 00160$:
      0020E1 40 32            [24]  604 	jc	00101$
      0020E3 EF               [12]  605 	mov	a,r7
      0020E4 24 C6            [12]  606 	add	a,#0xff - 0x39
      0020E6 40 2D            [24]  607 	jc	00101$
                                    608 ;	buffer.c:55: input[1] < '0' || input[1] > '9' ||
      0020E8 90 1B 71         [24]  609 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65537_48 + 0x0001)
      0020EB E0               [24]  610 	movx	a,@dptr
      0020EC FF               [12]  611 	mov	r7,a
      0020ED BF 30 00         [24]  612 	cjne	r7,#0x30,00163$
      0020F0                        613 00163$:
      0020F0 40 23            [24]  614 	jc	00101$
      0020F2 EF               [12]  615 	mov	a,r7
      0020F3 24 C6            [12]  616 	add	a,#0xff - 0x39
      0020F5 40 1E            [24]  617 	jc	00101$
                                    618 ;	buffer.c:56: input[2] < '0' || input[2] > '9' ||
      0020F7 90 1B 72         [24]  619 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65537_48 + 0x0002)
      0020FA E0               [24]  620 	movx	a,@dptr
      0020FB FF               [12]  621 	mov	r7,a
      0020FC BF 30 00         [24]  622 	cjne	r7,#0x30,00166$
      0020FF                        623 00166$:
      0020FF 40 14            [24]  624 	jc	00101$
      002101 EF               [12]  625 	mov	a,r7
      002102 24 C6            [12]  626 	add	a,#0xff - 0x39
      002104 40 0F            [24]  627 	jc	00101$
                                    628 ;	buffer.c:57: input[3] < '0' || input[3] > '9') {
      002106 90 1B 73         [24]  629 	mov	dptr,#(_Buffer_Size_Error_Correction_input_65537_48 + 0x0003)
      002109 E0               [24]  630 	movx	a,@dptr
      00210A FF               [12]  631 	mov	r7,a
      00210B BF 30 00         [24]  632 	cjne	r7,#0x30,00169$
      00210E                        633 00169$:
      00210E 40 05            [24]  634 	jc	00101$
      002110 EF               [12]  635 	mov	a,r7
      002111 24 C6            [12]  636 	add	a,#0xff - 0x39
      002113 50 2D            [24]  637 	jnc	00102$
      002115                        638 00101$:
                                    639 ;	buffer.c:58: printf("\033[0;31m\nInvalid input. Please enter four digits between 0 and 9.\n\r"); // Display error message
      002115 74 B7            [12]  640 	mov	a,#___str_5
      002117 C0 E0            [24]  641 	push	acc
      002119 74 45            [12]  642 	mov	a,#(___str_5 >> 8)
      00211B C0 E0            [24]  643 	push	acc
      00211D 74 80            [12]  644 	mov	a,#0x80
      00211F C0 E0            [24]  645 	push	acc
      002121 12 3A 4B         [24]  646 	lcall	_printf
      002124 15 81            [12]  647 	dec	sp
      002126 15 81            [12]  648 	dec	sp
      002128 15 81            [12]  649 	dec	sp
                                    650 ;	buffer.c:59: printf("\033[0;31mValid Input Examples : 0064,9876,0001,0096, etc\n");
      00212A 74 FA            [12]  651 	mov	a,#___str_6
      00212C C0 E0            [24]  652 	push	acc
      00212E 74 45            [12]  653 	mov	a,#(___str_6 >> 8)
      002130 C0 E0            [24]  654 	push	acc
      002132 74 80            [12]  655 	mov	a,#0x80
      002134 C0 E0            [24]  656 	push	acc
      002136 12 3A 4B         [24]  657 	lcall	_printf
      002139 15 81            [12]  658 	dec	sp
      00213B 15 81            [12]  659 	dec	sp
      00213D 15 81            [12]  660 	dec	sp
                                    661 ;	buffer.c:61: continue;                                   // Start over the loop
      00213F 02 20 A6         [24]  662 	ljmp	00116$
      002142                        663 00102$:
                                    664 ;	buffer.c:64: num = atoi(input);                              // Convert input to integer
      002142 90 1B 70         [24]  665 	mov	dptr,#_Buffer_Size_Error_Correction_input_65537_48
      002145 75 F0 00         [24]  666 	mov	b,#0x00
      002148 12 34 DC         [24]  667 	lcall	_atoi
      00214B AE 82            [24]  668 	mov	r6,dpl
      00214D AF 83            [24]  669 	mov	r7,dph
                                    670 ;	buffer.c:65: if (num < 64 || num > 5600) {                   // Check if the input is outside the valid range
      00214F C3               [12]  671 	clr	c
      002150 EE               [12]  672 	mov	a,r6
      002151 94 40            [12]  673 	subb	a,#0x40
      002153 EF               [12]  674 	mov	a,r7
      002154 64 80            [12]  675 	xrl	a,#0x80
      002156 94 80            [12]  676 	subb	a,#0x80
      002158 40 0E            [24]  677 	jc	00110$
      00215A 74 E0            [12]  678 	mov	a,#0xe0
      00215C 9E               [12]  679 	subb	a,r6
      00215D 74 95            [12]  680 	mov	a,#(0x15 ^ 0x80)
      00215F 8F F0            [24]  681 	mov	b,r7
      002161 63 F0 80         [24]  682 	xrl	b,#0x80
      002164 95 F0            [12]  683 	subb	a,b
      002166 50 12            [24]  684 	jnc	00111$
      002168                        685 00110$:
                                    686 ;	buffer.c:66: printf_tiny("\033[0;31m\nInvalid input.Input data should be between 64 and 5600.\n"); // Display error message
      002168 74 32            [12]  687 	mov	a,#___str_7
      00216A C0 E0            [24]  688 	push	acc
      00216C 74 46            [12]  689 	mov	a,#(___str_7 >> 8)
      00216E C0 E0            [24]  690 	push	acc
      002170 12 36 1B         [24]  691 	lcall	_printf_tiny
      002173 15 81            [12]  692 	dec	sp
      002175 15 81            [12]  693 	dec	sp
                                    694 ;	buffer.c:68: continue;                                   // Start over the loop
      002177 02 20 A6         [24]  695 	ljmp	00116$
      00217A                        696 00111$:
                                    697 ;	buffer.c:70: if (num % 32 != 0) {                            // Check if the input is not divisible by 32
      00217A 90 1C 84         [24]  698 	mov	dptr,#__modsint_PARM_2
      00217D 74 20            [12]  699 	mov	a,#0x20
      00217F F0               [24]  700 	movx	@dptr,a
      002180 E4               [12]  701 	clr	a
      002181 A3               [24]  702 	inc	dptr
      002182 F0               [24]  703 	movx	@dptr,a
      002183 8E 82            [24]  704 	mov	dpl,r6
      002185 8F 83            [24]  705 	mov	dph,r7
      002187 C0 07            [24]  706 	push	ar7
      002189 C0 06            [24]  707 	push	ar6
      00218B 12 38 E9         [24]  708 	lcall	__modsint
      00218E E5 82            [12]  709 	mov	a,dpl
      002190 85 83 F0         [24]  710 	mov	b,dph
      002193 D0 06            [24]  711 	pop	ar6
      002195 D0 07            [24]  712 	pop	ar7
      002197 45 F0            [12]  713 	orl	a,b
      002199 60 12            [24]  714 	jz	00117$
                                    715 ;	buffer.c:71: printf_tiny("\033[0;31m\nInvalid input.Input not divisible by 32.\n"); // Display error message
      00219B 74 73            [12]  716 	mov	a,#___str_8
      00219D C0 E0            [24]  717 	push	acc
      00219F 74 46            [12]  718 	mov	a,#(___str_8 >> 8)
      0021A1 C0 E0            [24]  719 	push	acc
      0021A3 12 36 1B         [24]  720 	lcall	_printf_tiny
      0021A6 15 81            [12]  721 	dec	sp
      0021A8 15 81            [12]  722 	dec	sp
                                    723 ;	buffer.c:73: continue;                                   // Start over the loop
      0021AA 02 20 A6         [24]  724 	ljmp	00116$
                                    725 ;	buffer.c:75: break;                                          // Exit the loop when the input is valid
      0021AD                        726 00117$:
                                    727 ;	buffer.c:77: return num;                                         // Return the valid buffer size entered by the user
      0021AD 8E 82            [24]  728 	mov	dpl,r6
      0021AF 8F 83            [24]  729 	mov	dph,r7
                                    730 ;	buffer.c:78: }
      0021B1 22               [24]  731 	ret
                                    732 	.area CSEG    (CODE)
                                    733 	.area CONST   (CODE)
                                    734 	.area CONST   (CODE)
      004495                        735 ___str_0:
      004495 1B                     736 	.db 0x1b
      004496 5B 31 3B 33 33 6D 7C   737 	.ascii "[1;33m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0044CD 0A                     738 	.db 0x0a
      0044CE 0D                     739 	.db 0x0d
      0044CF 00                     740 	.db 0x00
                                    741 	.area CSEG    (CODE)
                                    742 	.area CONST   (CODE)
      0044D0                        743 ___str_1:
      0044D0 7C 20 20 42 75 66 66   744 	.ascii "|  Buffer 0 and Buffer 1 Allocation Processing  |"
             65 72 20 30 20 61 6E
             64 20 42 75 66 66 65
             72 20 31 20 41 6C 6C
             6F 63 61 74 69 6F 6E
             20 50 72 6F 63 65 73
             73 69 6E 67 20 20 7C
      004501 0A                     745 	.db 0x0a
      004502 0D                     746 	.db 0x0d
      004503 00                     747 	.db 0x00
                                    748 	.area CSEG    (CODE)
                                    749 	.area CONST   (CODE)
      004504                        750 ___str_2:
      004504 1B                     751 	.db 0x1b
      004505 5B 31 3B 33 36 6D      752 	.ascii "[1;36m"
      00450B 0A                     753 	.db 0x0a
      00450C 0D                     754 	.db 0x0d
      00450D 7C 2A 2A 2A 2A 2A 2A   755 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      00453E 0A                     756 	.db 0x0a
      00453F 0D                     757 	.db 0x0d
      004540 00                     758 	.db 0x00
                                    759 	.area CSEG    (CODE)
                                    760 	.area CONST   (CODE)
      004541                        761 ___str_3:
      004541 1B                     762 	.db 0x1b
      004542 5B 31 3B 33 36 6D 7C   763 	.ascii "[1;36m|       Enter the size for buffer0 & buffer1    |"
             20 20 20 20 20 20 20
             45 6E 74 65 72 20 74
             68 65 20 73 69 7A 65
             20 66 6F 72 20 62 75
             66 66 65 72 30 20 26
             20 62 75 66 66 65 72
             31 20 20 20 20 7C
      004579 0A                     764 	.db 0x0a
      00457A 0D                     765 	.db 0x0d
      00457B 00                     766 	.db 0x00
                                    767 	.area CSEG    (CODE)
                                    768 	.area CONST   (CODE)
      00457C                        769 ___str_4:
      00457C 1B                     770 	.db 0x1b
      00457D 5B 31 3B 33 36 6D 7C   771 	.ascii "[1;36m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0045B4 0A                     772 	.db 0x0a
      0045B5 0D                     773 	.db 0x0d
      0045B6 00                     774 	.db 0x00
                                    775 	.area CSEG    (CODE)
                                    776 	.area CONST   (CODE)
      0045B7                        777 ___str_5:
      0045B7 1B                     778 	.db 0x1b
      0045B8 5B 30 3B 33 31 6D      779 	.ascii "[0;31m"
      0045BE 0A                     780 	.db 0x0a
      0045BF 49 6E 76 61 6C 69 64   781 	.ascii "Invalid input. Please enter four digits between 0 and 9."
             20 69 6E 70 75 74 2E
             20 50 6C 65 61 73 65
             20 65 6E 74 65 72 20
             66 6F 75 72 20 64 69
             67 69 74 73 20 62 65
             74 77 65 65 6E 20 30
             20 61 6E 64 20 39 2E
      0045F7 0A                     782 	.db 0x0a
      0045F8 0D                     783 	.db 0x0d
      0045F9 00                     784 	.db 0x00
                                    785 	.area CSEG    (CODE)
                                    786 	.area CONST   (CODE)
      0045FA                        787 ___str_6:
      0045FA 1B                     788 	.db 0x1b
      0045FB 5B 30 3B 33 31 6D 56   789 	.ascii "[0;31mValid Input Examples : 0064,9876,0001,0096, etc"
             61 6C 69 64 20 49 6E
             70 75 74 20 45 78 61
             6D 70 6C 65 73 20 3A
             20 30 30 36 34 2C 39
             38 37 36 2C 30 30 30
             31 2C 30 30 39 36 2C
             20 65 74 63
      004630 0A                     790 	.db 0x0a
      004631 00                     791 	.db 0x00
                                    792 	.area CSEG    (CODE)
                                    793 	.area CONST   (CODE)
      004632                        794 ___str_7:
      004632 1B                     795 	.db 0x1b
      004633 5B 30 3B 33 31 6D      796 	.ascii "[0;31m"
      004639 0A                     797 	.db 0x0a
      00463A 49 6E 76 61 6C 69 64   798 	.ascii "Invalid input.Input data should be between 64 and 5600."
             20 69 6E 70 75 74 2E
             49 6E 70 75 74 20 64
             61 74 61 20 73 68 6F
             75 6C 64 20 62 65 20
             62 65 74 77 65 65 6E
             20 36 34 20 61 6E 64
             20 35 36 30 30 2E
      004671 0A                     799 	.db 0x0a
      004672 00                     800 	.db 0x00
                                    801 	.area CSEG    (CODE)
                                    802 	.area CONST   (CODE)
      004673                        803 ___str_8:
      004673 1B                     804 	.db 0x1b
      004674 5B 30 3B 33 31 6D      805 	.ascii "[0;31m"
      00467A 0A                     806 	.db 0x0a
      00467B 49 6E 76 61 6C 69 64   807 	.ascii "Invalid input.Input not divisible by 32."
             20 69 6E 70 75 74 2E
             49 6E 70 75 74 20 6E
             6F 74 20 64 69 76 69
             73 69 62 6C 65 20 62
             79 20 33 32 2E
      0046A3 0A                     808 	.db 0x0a
      0046A4 00                     809 	.db 0x00
                                    810 	.area CSEG    (CODE)
                                    811 	.area XINIT   (CODE)
                                    812 	.area CABS    (ABS,CODE)
