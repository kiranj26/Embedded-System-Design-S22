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
                                     12 	.globl _eraseBlock
                                     13 	.globl _programMemory
                                     14 	.globl _readDeviceID3
                                     15 	.globl _readDeviceID2
                                     16 	.globl _readDeviceID1
                                     17 	.globl _readManufacturerID
                                     18 	.globl _puts_
                                     19 	.globl _gets_
                                     20 	.globl _printf
                                     21 	.globl _P5_7
                                     22 	.globl _P5_6
                                     23 	.globl _P5_5
                                     24 	.globl _P5_4
                                     25 	.globl _P5_3
                                     26 	.globl _P5_2
                                     27 	.globl _P5_1
                                     28 	.globl _P5_0
                                     29 	.globl _P4_7
                                     30 	.globl _P4_6
                                     31 	.globl _P4_5
                                     32 	.globl _P4_4
                                     33 	.globl _P4_3
                                     34 	.globl _P4_2
                                     35 	.globl _P4_1
                                     36 	.globl _P4_0
                                     37 	.globl _PX0L
                                     38 	.globl _PT0L
                                     39 	.globl _PX1L
                                     40 	.globl _PT1L
                                     41 	.globl _PSL
                                     42 	.globl _PT2L
                                     43 	.globl _PPCL
                                     44 	.globl _EC
                                     45 	.globl _CCF0
                                     46 	.globl _CCF1
                                     47 	.globl _CCF2
                                     48 	.globl _CCF3
                                     49 	.globl _CCF4
                                     50 	.globl _CR
                                     51 	.globl _CF
                                     52 	.globl _TF2
                                     53 	.globl _EXF2
                                     54 	.globl _RCLK
                                     55 	.globl _TCLK
                                     56 	.globl _EXEN2
                                     57 	.globl _TR2
                                     58 	.globl _C_T2
                                     59 	.globl _CP_RL2
                                     60 	.globl _T2CON_7
                                     61 	.globl _T2CON_6
                                     62 	.globl _T2CON_5
                                     63 	.globl _T2CON_4
                                     64 	.globl _T2CON_3
                                     65 	.globl _T2CON_2
                                     66 	.globl _T2CON_1
                                     67 	.globl _T2CON_0
                                     68 	.globl _PT2
                                     69 	.globl _ET2
                                     70 	.globl _CY
                                     71 	.globl _AC
                                     72 	.globl _F0
                                     73 	.globl _RS1
                                     74 	.globl _RS0
                                     75 	.globl _OV
                                     76 	.globl _F1
                                     77 	.globl _P
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _RD
                                     84 	.globl _WR
                                     85 	.globl _T1
                                     86 	.globl _T0
                                     87 	.globl _INT1
                                     88 	.globl _INT0
                                     89 	.globl _TXD
                                     90 	.globl _RXD
                                     91 	.globl _P3_7
                                     92 	.globl _P3_6
                                     93 	.globl _P3_5
                                     94 	.globl _P3_4
                                     95 	.globl _P3_3
                                     96 	.globl _P3_2
                                     97 	.globl _P3_1
                                     98 	.globl _P3_0
                                     99 	.globl _EA
                                    100 	.globl _ES
                                    101 	.globl _ET1
                                    102 	.globl _EX1
                                    103 	.globl _ET0
                                    104 	.globl _EX0
                                    105 	.globl _P2_7
                                    106 	.globl _P2_6
                                    107 	.globl _P2_5
                                    108 	.globl _P2_4
                                    109 	.globl _P2_3
                                    110 	.globl _P2_2
                                    111 	.globl _P2_1
                                    112 	.globl _P2_0
                                    113 	.globl _SM0
                                    114 	.globl _SM1
                                    115 	.globl _SM2
                                    116 	.globl _REN
                                    117 	.globl _TB8
                                    118 	.globl _RB8
                                    119 	.globl _TI
                                    120 	.globl _RI
                                    121 	.globl _P1_7
                                    122 	.globl _P1_6
                                    123 	.globl _P1_5
                                    124 	.globl _P1_4
                                    125 	.globl _P1_3
                                    126 	.globl _P1_2
                                    127 	.globl _P1_1
                                    128 	.globl _P1_0
                                    129 	.globl _TF1
                                    130 	.globl _TR1
                                    131 	.globl _TF0
                                    132 	.globl _TR0
                                    133 	.globl _IE1
                                    134 	.globl _IT1
                                    135 	.globl _IE0
                                    136 	.globl _IT0
                                    137 	.globl _P0_7
                                    138 	.globl _P0_6
                                    139 	.globl _P0_5
                                    140 	.globl _P0_4
                                    141 	.globl _P0_3
                                    142 	.globl _P0_2
                                    143 	.globl _P0_1
                                    144 	.globl _P0_0
                                    145 	.globl _TXD0
                                    146 	.globl _RXD0
                                    147 	.globl _BREG_F7
                                    148 	.globl _BREG_F6
                                    149 	.globl _BREG_F5
                                    150 	.globl _BREG_F4
                                    151 	.globl _BREG_F3
                                    152 	.globl _BREG_F2
                                    153 	.globl _BREG_F1
                                    154 	.globl _BREG_F0
                                    155 	.globl _EECON
                                    156 	.globl _KBF
                                    157 	.globl _KBE
                                    158 	.globl _KBLS
                                    159 	.globl _BRL
                                    160 	.globl _BDRCON
                                    161 	.globl _T2MOD
                                    162 	.globl _SPDAT
                                    163 	.globl _SPSTA
                                    164 	.globl _SPCON
                                    165 	.globl _SADEN
                                    166 	.globl _SADDR
                                    167 	.globl _WDTPRG
                                    168 	.globl _WDTRST
                                    169 	.globl _P5
                                    170 	.globl _P4
                                    171 	.globl _IPH1
                                    172 	.globl _IPL1
                                    173 	.globl _IPH0
                                    174 	.globl _IPL0
                                    175 	.globl _IEN1
                                    176 	.globl _IEN0
                                    177 	.globl _CMOD
                                    178 	.globl _CL
                                    179 	.globl _CH
                                    180 	.globl _CCON
                                    181 	.globl _CCAPM4
                                    182 	.globl _CCAPM3
                                    183 	.globl _CCAPM2
                                    184 	.globl _CCAPM1
                                    185 	.globl _CCAPM0
                                    186 	.globl _CCAP4L
                                    187 	.globl _CCAP3L
                                    188 	.globl _CCAP2L
                                    189 	.globl _CCAP1L
                                    190 	.globl _CCAP0L
                                    191 	.globl _CCAP4H
                                    192 	.globl _CCAP3H
                                    193 	.globl _CCAP2H
                                    194 	.globl _CCAP1H
                                    195 	.globl _CCAP0H
                                    196 	.globl _CKCON1
                                    197 	.globl _CKCON0
                                    198 	.globl _CKRL
                                    199 	.globl _AUXR1
                                    200 	.globl _AUXR
                                    201 	.globl _TH2
                                    202 	.globl _TL2
                                    203 	.globl _RCAP2H
                                    204 	.globl _RCAP2L
                                    205 	.globl _T2CON
                                    206 	.globl _B
                                    207 	.globl _ACC
                                    208 	.globl _PSW
                                    209 	.globl _IP
                                    210 	.globl _P3
                                    211 	.globl _IE
                                    212 	.globl _P2
                                    213 	.globl _SBUF
                                    214 	.globl _SCON
                                    215 	.globl _P1
                                    216 	.globl _TH1
                                    217 	.globl _TH0
                                    218 	.globl _TL1
                                    219 	.globl _TL0
                                    220 	.globl _TMOD
                                    221 	.globl _TCON
                                    222 	.globl _PCON
                                    223 	.globl _DPH
                                    224 	.globl _DPL
                                    225 	.globl _SP
                                    226 	.globl _P0
                                    227 	.globl _SBUF0
                                    228 	.globl _DP0L
                                    229 	.globl _DP0H
                                    230 	.globl _getchar
                                    231 	.globl _putchar
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           000083   237 _DP0H	=	0x0083
                           000082   238 _DP0L	=	0x0082
                           000099   239 _SBUF0	=	0x0099
                           000080   240 _P0	=	0x0080
                           000081   241 _SP	=	0x0081
                           000082   242 _DPL	=	0x0082
                           000083   243 _DPH	=	0x0083
                           000087   244 _PCON	=	0x0087
                           000088   245 _TCON	=	0x0088
                           000089   246 _TMOD	=	0x0089
                           00008A   247 _TL0	=	0x008a
                           00008B   248 _TL1	=	0x008b
                           00008C   249 _TH0	=	0x008c
                           00008D   250 _TH1	=	0x008d
                           000090   251 _P1	=	0x0090
                           000098   252 _SCON	=	0x0098
                           000099   253 _SBUF	=	0x0099
                           0000A0   254 _P2	=	0x00a0
                           0000A8   255 _IE	=	0x00a8
                           0000B0   256 _P3	=	0x00b0
                           0000B8   257 _IP	=	0x00b8
                           0000D0   258 _PSW	=	0x00d0
                           0000E0   259 _ACC	=	0x00e0
                           0000F0   260 _B	=	0x00f0
                           0000C8   261 _T2CON	=	0x00c8
                           0000CA   262 _RCAP2L	=	0x00ca
                           0000CB   263 _RCAP2H	=	0x00cb
                           0000CC   264 _TL2	=	0x00cc
                           0000CD   265 _TH2	=	0x00cd
                           00008E   266 _AUXR	=	0x008e
                           0000A2   267 _AUXR1	=	0x00a2
                           000097   268 _CKRL	=	0x0097
                           00008F   269 _CKCON0	=	0x008f
                           0000AF   270 _CKCON1	=	0x00af
                           0000FA   271 _CCAP0H	=	0x00fa
                           0000FB   272 _CCAP1H	=	0x00fb
                           0000FC   273 _CCAP2H	=	0x00fc
                           0000FD   274 _CCAP3H	=	0x00fd
                           0000FE   275 _CCAP4H	=	0x00fe
                           0000EA   276 _CCAP0L	=	0x00ea
                           0000EB   277 _CCAP1L	=	0x00eb
                           0000EC   278 _CCAP2L	=	0x00ec
                           0000ED   279 _CCAP3L	=	0x00ed
                           0000EE   280 _CCAP4L	=	0x00ee
                           0000DA   281 _CCAPM0	=	0x00da
                           0000DB   282 _CCAPM1	=	0x00db
                           0000DC   283 _CCAPM2	=	0x00dc
                           0000DD   284 _CCAPM3	=	0x00dd
                           0000DE   285 _CCAPM4	=	0x00de
                           0000D8   286 _CCON	=	0x00d8
                           0000F9   287 _CH	=	0x00f9
                           0000E9   288 _CL	=	0x00e9
                           0000D9   289 _CMOD	=	0x00d9
                           0000A8   290 _IEN0	=	0x00a8
                           0000B1   291 _IEN1	=	0x00b1
                           0000B8   292 _IPL0	=	0x00b8
                           0000B7   293 _IPH0	=	0x00b7
                           0000B2   294 _IPL1	=	0x00b2
                           0000B3   295 _IPH1	=	0x00b3
                           0000C0   296 _P4	=	0x00c0
                           0000E8   297 _P5	=	0x00e8
                           0000A6   298 _WDTRST	=	0x00a6
                           0000A7   299 _WDTPRG	=	0x00a7
                           0000A9   300 _SADDR	=	0x00a9
                           0000B9   301 _SADEN	=	0x00b9
                           0000C3   302 _SPCON	=	0x00c3
                           0000C4   303 _SPSTA	=	0x00c4
                           0000C5   304 _SPDAT	=	0x00c5
                           0000C9   305 _T2MOD	=	0x00c9
                           00009B   306 _BDRCON	=	0x009b
                           00009A   307 _BRL	=	0x009a
                           00009C   308 _KBLS	=	0x009c
                           00009D   309 _KBE	=	0x009d
                           00009E   310 _KBF	=	0x009e
                           0000D2   311 _EECON	=	0x00d2
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           0000F0   317 _BREG_F0	=	0x00f0
                           0000F1   318 _BREG_F1	=	0x00f1
                           0000F2   319 _BREG_F2	=	0x00f2
                           0000F3   320 _BREG_F3	=	0x00f3
                           0000F4   321 _BREG_F4	=	0x00f4
                           0000F5   322 _BREG_F5	=	0x00f5
                           0000F6   323 _BREG_F6	=	0x00f6
                           0000F7   324 _BREG_F7	=	0x00f7
                           0000B0   325 _RXD0	=	0x00b0
                           0000B1   326 _TXD0	=	0x00b1
                           000080   327 _P0_0	=	0x0080
                           000081   328 _P0_1	=	0x0081
                           000082   329 _P0_2	=	0x0082
                           000083   330 _P0_3	=	0x0083
                           000084   331 _P0_4	=	0x0084
                           000085   332 _P0_5	=	0x0085
                           000086   333 _P0_6	=	0x0086
                           000087   334 _P0_7	=	0x0087
                           000088   335 _IT0	=	0x0088
                           000089   336 _IE0	=	0x0089
                           00008A   337 _IT1	=	0x008a
                           00008B   338 _IE1	=	0x008b
                           00008C   339 _TR0	=	0x008c
                           00008D   340 _TF0	=	0x008d
                           00008E   341 _TR1	=	0x008e
                           00008F   342 _TF1	=	0x008f
                           000090   343 _P1_0	=	0x0090
                           000091   344 _P1_1	=	0x0091
                           000092   345 _P1_2	=	0x0092
                           000093   346 _P1_3	=	0x0093
                           000094   347 _P1_4	=	0x0094
                           000095   348 _P1_5	=	0x0095
                           000096   349 _P1_6	=	0x0096
                           000097   350 _P1_7	=	0x0097
                           000098   351 _RI	=	0x0098
                           000099   352 _TI	=	0x0099
                           00009A   353 _RB8	=	0x009a
                           00009B   354 _TB8	=	0x009b
                           00009C   355 _REN	=	0x009c
                           00009D   356 _SM2	=	0x009d
                           00009E   357 _SM1	=	0x009e
                           00009F   358 _SM0	=	0x009f
                           0000A0   359 _P2_0	=	0x00a0
                           0000A1   360 _P2_1	=	0x00a1
                           0000A2   361 _P2_2	=	0x00a2
                           0000A3   362 _P2_3	=	0x00a3
                           0000A4   363 _P2_4	=	0x00a4
                           0000A5   364 _P2_5	=	0x00a5
                           0000A6   365 _P2_6	=	0x00a6
                           0000A7   366 _P2_7	=	0x00a7
                           0000A8   367 _EX0	=	0x00a8
                           0000A9   368 _ET0	=	0x00a9
                           0000AA   369 _EX1	=	0x00aa
                           0000AB   370 _ET1	=	0x00ab
                           0000AC   371 _ES	=	0x00ac
                           0000AF   372 _EA	=	0x00af
                           0000B0   373 _P3_0	=	0x00b0
                           0000B1   374 _P3_1	=	0x00b1
                           0000B2   375 _P3_2	=	0x00b2
                           0000B3   376 _P3_3	=	0x00b3
                           0000B4   377 _P3_4	=	0x00b4
                           0000B5   378 _P3_5	=	0x00b5
                           0000B6   379 _P3_6	=	0x00b6
                           0000B7   380 _P3_7	=	0x00b7
                           0000B0   381 _RXD	=	0x00b0
                           0000B1   382 _TXD	=	0x00b1
                           0000B2   383 _INT0	=	0x00b2
                           0000B3   384 _INT1	=	0x00b3
                           0000B4   385 _T0	=	0x00b4
                           0000B5   386 _T1	=	0x00b5
                           0000B6   387 _WR	=	0x00b6
                           0000B7   388 _RD	=	0x00b7
                           0000B8   389 _PX0	=	0x00b8
                           0000B9   390 _PT0	=	0x00b9
                           0000BA   391 _PX1	=	0x00ba
                           0000BB   392 _PT1	=	0x00bb
                           0000BC   393 _PS	=	0x00bc
                           0000D0   394 _P	=	0x00d0
                           0000D1   395 _F1	=	0x00d1
                           0000D2   396 _OV	=	0x00d2
                           0000D3   397 _RS0	=	0x00d3
                           0000D4   398 _RS1	=	0x00d4
                           0000D5   399 _F0	=	0x00d5
                           0000D6   400 _AC	=	0x00d6
                           0000D7   401 _CY	=	0x00d7
                           0000AD   402 _ET2	=	0x00ad
                           0000BD   403 _PT2	=	0x00bd
                           0000C8   404 _T2CON_0	=	0x00c8
                           0000C9   405 _T2CON_1	=	0x00c9
                           0000CA   406 _T2CON_2	=	0x00ca
                           0000CB   407 _T2CON_3	=	0x00cb
                           0000CC   408 _T2CON_4	=	0x00cc
                           0000CD   409 _T2CON_5	=	0x00cd
                           0000CE   410 _T2CON_6	=	0x00ce
                           0000CF   411 _T2CON_7	=	0x00cf
                           0000C8   412 _CP_RL2	=	0x00c8
                           0000C9   413 _C_T2	=	0x00c9
                           0000CA   414 _TR2	=	0x00ca
                           0000CB   415 _EXEN2	=	0x00cb
                           0000CC   416 _TCLK	=	0x00cc
                           0000CD   417 _RCLK	=	0x00cd
                           0000CE   418 _EXF2	=	0x00ce
                           0000CF   419 _TF2	=	0x00cf
                           0000DF   420 _CF	=	0x00df
                           0000DE   421 _CR	=	0x00de
                           0000DC   422 _CCF4	=	0x00dc
                           0000DB   423 _CCF3	=	0x00db
                           0000DA   424 _CCF2	=	0x00da
                           0000D9   425 _CCF1	=	0x00d9
                           0000D8   426 _CCF0	=	0x00d8
                           0000AE   427 _EC	=	0x00ae
                           0000BE   428 _PPCL	=	0x00be
                           0000BD   429 _PT2L	=	0x00bd
                           0000BC   430 _PSL	=	0x00bc
                           0000BB   431 _PT1L	=	0x00bb
                           0000BA   432 _PX1L	=	0x00ba
                           0000B9   433 _PT0L	=	0x00b9
                           0000B8   434 _PX0L	=	0x00b8
                           0000C0   435 _P4_0	=	0x00c0
                           0000C1   436 _P4_1	=	0x00c1
                           0000C2   437 _P4_2	=	0x00c2
                           0000C3   438 _P4_3	=	0x00c3
                           0000C4   439 _P4_4	=	0x00c4
                           0000C5   440 _P4_5	=	0x00c5
                           0000C6   441 _P4_6	=	0x00c6
                           0000C7   442 _P4_7	=	0x00c7
                           0000E8   443 _P5_0	=	0x00e8
                           0000E9   444 _P5_1	=	0x00e9
                           0000EA   445 _P5_2	=	0x00ea
                           0000EB   446 _P5_3	=	0x00eb
                           0000EC   447 _P5_4	=	0x00ec
                           0000ED   448 _P5_5	=	0x00ed
                           0000EE   449 _P5_6	=	0x00ee
                           0000EF   450 _P5_7	=	0x00ef
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable register banks
                                    453 ;--------------------------------------------------------
                                    454 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        455 	.ds 8
                                    456 ;--------------------------------------------------------
                                    457 ; internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area DSEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable items in internal ram
                                    462 ;--------------------------------------------------------
                                    463 ;--------------------------------------------------------
                                    464 ; Stack segment in internal ram
                                    465 ;--------------------------------------------------------
                                    466 	.area	SSEG
      000014                        467 __start__stack:
      000014                        468 	.ds	1
                                    469 
                                    470 ;--------------------------------------------------------
                                    471 ; indirectly addressable internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area ISEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; absolute internal ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area IABS    (ABS,DATA)
                                    478 	.area IABS    (ABS,DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; bit data
                                    481 ;--------------------------------------------------------
                                    482 	.area BSEG    (BIT)
                                    483 ;--------------------------------------------------------
                                    484 ; paged external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area PSEG    (PAG,XDATA)
                                    487 ;--------------------------------------------------------
                                    488 ; external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XSEG    (XDATA)
      000400                        491 _putchar_c_65536_17:
      000400                        492 	.ds 2
      000402                        493 _gets__ch_65536_19:
      000402                        494 	.ds 2
      000404                        495 _puts__ch_65536_24:
      000404                        496 	.ds 2
                                    497 ;--------------------------------------------------------
                                    498 ; absolute external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XABS    (ABS,XDATA)
                                    501 ;--------------------------------------------------------
                                    502 ; external initialized ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area XISEG   (XDATA)
                                    505 	.area HOME    (CODE)
                                    506 	.area GSINIT0 (CODE)
                                    507 	.area GSINIT1 (CODE)
                                    508 	.area GSINIT2 (CODE)
                                    509 	.area GSINIT3 (CODE)
                                    510 	.area GSINIT4 (CODE)
                                    511 	.area GSINIT5 (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.area GSFINAL (CODE)
                                    514 	.area CSEG    (CODE)
                                    515 ;--------------------------------------------------------
                                    516 ; interrupt vector
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
      002000                        519 __interrupt_vect:
      002000 02 20 06         [24]  520 	ljmp	__sdcc_gsinit_startup
                                    521 ;--------------------------------------------------------
                                    522 ; global & static initialisations
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.area GSFINAL (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.globl __sdcc_gsinit_startup
                                    529 	.globl __sdcc_program_startup
                                    530 	.globl __start__stack
                                    531 	.globl __mcs51_genXINIT
                                    532 	.globl __mcs51_genXRAMCLEAR
                                    533 	.globl __mcs51_genRAMCLEAR
                                    534 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  535 	ljmp	__sdcc_program_startup
                                    536 ;--------------------------------------------------------
                                    537 ; Home
                                    538 ;--------------------------------------------------------
                                    539 	.area HOME    (CODE)
                                    540 	.area HOME    (CODE)
      002003                        541 __sdcc_program_startup:
      002003 02 22 C5         [24]  542 	ljmp	_main
                                    543 ;	return from main will return to caller
                                    544 ;--------------------------------------------------------
                                    545 ; code
                                    546 ;--------------------------------------------------------
                                    547 	.area CSEG    (CODE)
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'getchar'
                                    550 ;------------------------------------------------------------
                                    551 ;	main.c:14: int getchar (void)
                                    552 ;	-----------------------------------------
                                    553 ;	 function getchar
                                    554 ;	-----------------------------------------
      002062                        555 _getchar:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
                                    564 ;	main.c:16: while (!RI); //Wait till the Character is received
      002062                        565 00101$:
                                    566 ;	main.c:17: RI = 0;			// Clear the RI flag
                                    567 ;	assignBit
      002062 10 98 02         [24]  568 	jbc	_RI,00114$
      002065 80 FB            [24]  569 	sjmp	00101$
      002067                        570 00114$:
                                    571 ;	main.c:18: return SBUF;  	// Return the Character
      002067 AE 99            [24]  572 	mov	r6,_SBUF
      002069 7F 00            [12]  573 	mov	r7,#0x00
      00206B 8E 82            [24]  574 	mov	dpl,r6
      00206D 8F 83            [24]  575 	mov	dph,r7
                                    576 ;	main.c:19: }
      00206F 22               [24]  577 	ret
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'putchar'
                                    580 ;------------------------------------------------------------
                                    581 ;c                         Allocated with name '_putchar_c_65536_17'
                                    582 ;------------------------------------------------------------
                                    583 ;	main.c:31: int putchar (int c)
                                    584 ;	-----------------------------------------
                                    585 ;	 function putchar
                                    586 ;	-----------------------------------------
      002070                        587 _putchar:
      002070 AF 83            [24]  588 	mov	r7,dph
      002072 E5 82            [12]  589 	mov	a,dpl
      002074 90 04 00         [24]  590 	mov	dptr,#_putchar_c_65536_17
      002077 F0               [24]  591 	movx	@dptr,a
      002078 EF               [12]  592 	mov	a,r7
      002079 A3               [24]  593 	inc	dptr
      00207A F0               [24]  594 	movx	@dptr,a
                                    595 ;	main.c:33: while(!TI); //Wait till the Transmitter is ready
      00207B                        596 00101$:
      00207B 30 99 FD         [24]  597 	jnb	_TI,00101$
                                    598 ;	main.c:34: SBUF = c; //write character to SBUF
      00207E 90 04 00         [24]  599 	mov	dptr,#_putchar_c_65536_17
      002081 E0               [24]  600 	movx	a,@dptr
      002082 FE               [12]  601 	mov	r6,a
      002083 A3               [24]  602 	inc	dptr
      002084 E0               [24]  603 	movx	a,@dptr
      002085 FF               [12]  604 	mov	r7,a
      002086 8E 99            [24]  605 	mov	_SBUF,r6
                                    606 ;	main.c:35: TI = 0; //Clear the TI flag
                                    607 ;	assignBit
      002088 C2 99            [12]  608 	clr	_TI
                                    609 ;	main.c:36: return c;
      00208A 8E 82            [24]  610 	mov	dpl,r6
      00208C 8F 83            [24]  611 	mov	dph,r7
                                    612 ;	main.c:37: }
      00208E 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'gets_'
                                    616 ;------------------------------------------------------------
                                    617 ;ch                        Allocated with name '_gets__ch_65536_19'
                                    618 ;i                         Allocated with name '_gets__i_131072_21'
                                    619 ;c                         Allocated with name '_gets__c_196608_22'
                                    620 ;------------------------------------------------------------
                                    621 ;	main.c:49: void gets_(__xdata char *ch) {
                                    622 ;	-----------------------------------------
                                    623 ;	 function gets_
                                    624 ;	-----------------------------------------
      00208F                        625 _gets_:
      00208F AF 83            [24]  626 	mov	r7,dph
      002091 E5 82            [12]  627 	mov	a,dpl
      002093 90 04 02         [24]  628 	mov	dptr,#_gets__ch_65536_19
      002096 F0               [24]  629 	movx	@dptr,a
      002097 EF               [12]  630 	mov	a,r7
      002098 A3               [24]  631 	inc	dptr
      002099 F0               [24]  632 	movx	@dptr,a
                                    633 ;	main.c:50: for (int i = 0; ; i++) {
      00209A 90 04 02         [24]  634 	mov	dptr,#_gets__ch_65536_19
      00209D E0               [24]  635 	movx	a,@dptr
      00209E FE               [12]  636 	mov	r6,a
      00209F A3               [24]  637 	inc	dptr
      0020A0 E0               [24]  638 	movx	a,@dptr
      0020A1 FF               [12]  639 	mov	r7,a
      0020A2 7C 00            [12]  640 	mov	r4,#0x00
      0020A4 7D 00            [12]  641 	mov	r5,#0x00
      0020A6                        642 00105$:
                                    643 ;	main.c:51: char c = getchar();
      0020A6 C0 07            [24]  644 	push	ar7
      0020A8 C0 06            [24]  645 	push	ar6
      0020AA C0 05            [24]  646 	push	ar5
      0020AC C0 04            [24]  647 	push	ar4
      0020AE 12 20 62         [24]  648 	lcall	_getchar
      0020B1 AA 82            [24]  649 	mov	r2,dpl
                                    650 ;	main.c:52: putchar(c);
      0020B3 8A 01            [24]  651 	mov	ar1,r2
      0020B5 7B 00            [12]  652 	mov	r3,#0x00
      0020B7 89 82            [24]  653 	mov	dpl,r1
      0020B9 8B 83            [24]  654 	mov	dph,r3
      0020BB C0 02            [24]  655 	push	ar2
      0020BD 12 20 70         [24]  656 	lcall	_putchar
      0020C0 D0 02            [24]  657 	pop	ar2
      0020C2 D0 04            [24]  658 	pop	ar4
      0020C4 D0 05            [24]  659 	pop	ar5
      0020C6 D0 06            [24]  660 	pop	ar6
      0020C8 D0 07            [24]  661 	pop	ar7
                                    662 ;	main.c:53: if (c == '\r' || c == '\n') {
      0020CA BA 0D 02         [24]  663 	cjne	r2,#0x0d,00118$
      0020CD 80 03            [24]  664 	sjmp	00101$
      0020CF                        665 00118$:
      0020CF BA 0A 13         [24]  666 	cjne	r2,#0x0a,00102$
      0020D2                        667 00101$:
                                    668 ;	main.c:54: *(ch + i) = '\0';
      0020D2 90 04 02         [24]  669 	mov	dptr,#_gets__ch_65536_19
      0020D5 E0               [24]  670 	movx	a,@dptr
      0020D6 F9               [12]  671 	mov	r1,a
      0020D7 A3               [24]  672 	inc	dptr
      0020D8 E0               [24]  673 	movx	a,@dptr
      0020D9 FB               [12]  674 	mov	r3,a
      0020DA EC               [12]  675 	mov	a,r4
      0020DB 29               [12]  676 	add	a,r1
      0020DC F5 82            [12]  677 	mov	dpl,a
      0020DE ED               [12]  678 	mov	a,r5
      0020DF 3B               [12]  679 	addc	a,r3
      0020E0 F5 83            [12]  680 	mov	dph,a
      0020E2 E4               [12]  681 	clr	a
      0020E3 F0               [24]  682 	movx	@dptr,a
                                    683 ;	main.c:55: break;
      0020E4 22               [24]  684 	ret
      0020E5                        685 00102$:
                                    686 ;	main.c:57: *(ch + i) = c;
      0020E5 EC               [12]  687 	mov	a,r4
      0020E6 2E               [12]  688 	add	a,r6
      0020E7 F5 82            [12]  689 	mov	dpl,a
      0020E9 ED               [12]  690 	mov	a,r5
      0020EA 3F               [12]  691 	addc	a,r7
      0020EB F5 83            [12]  692 	mov	dph,a
      0020ED EA               [12]  693 	mov	a,r2
      0020EE F0               [24]  694 	movx	@dptr,a
                                    695 ;	main.c:50: for (int i = 0; ; i++) {
      0020EF 0C               [12]  696 	inc	r4
      0020F0 BC 00 B3         [24]  697 	cjne	r4,#0x00,00105$
      0020F3 0D               [12]  698 	inc	r5
                                    699 ;	main.c:59: }
      0020F4 80 B0            [24]  700 	sjmp	00105$
                                    701 ;------------------------------------------------------------
                                    702 ;Allocation info for local variables in function 'puts_'
                                    703 ;------------------------------------------------------------
                                    704 ;ch                        Allocated with name '_puts__ch_65536_24'
                                    705 ;------------------------------------------------------------
                                    706 ;	main.c:69: void puts_(__xdata char *ch) {
                                    707 ;	-----------------------------------------
                                    708 ;	 function puts_
                                    709 ;	-----------------------------------------
      0020F6                        710 _puts_:
      0020F6 AF 83            [24]  711 	mov	r7,dph
      0020F8 E5 82            [12]  712 	mov	a,dpl
      0020FA 90 04 04         [24]  713 	mov	dptr,#_puts__ch_65536_24
      0020FD F0               [24]  714 	movx	@dptr,a
      0020FE EF               [12]  715 	mov	a,r7
      0020FF A3               [24]  716 	inc	dptr
      002100 F0               [24]  717 	movx	@dptr,a
      002101 90 04 04         [24]  718 	mov	dptr,#_puts__ch_65536_24
      002104 E0               [24]  719 	movx	a,@dptr
      002105 FE               [12]  720 	mov	r6,a
      002106 A3               [24]  721 	inc	dptr
      002107 E0               [24]  722 	movx	a,@dptr
      002108 FF               [12]  723 	mov	r7,a
      002109                        724 00103$:
                                    725 ;	main.c:70: for (; *ch; ch++) {
      002109 8E 82            [24]  726 	mov	dpl,r6
      00210B 8F 83            [24]  727 	mov	dph,r7
      00210D E0               [24]  728 	movx	a,@dptr
      00210E FD               [12]  729 	mov	r5,a
      00210F 60 20            [24]  730 	jz	00109$
                                    731 ;	main.c:71: putchar(*ch);
      002111 7C 00            [12]  732 	mov	r4,#0x00
      002113 8D 82            [24]  733 	mov	dpl,r5
      002115 8C 83            [24]  734 	mov	dph,r4
      002117 C0 07            [24]  735 	push	ar7
      002119 C0 06            [24]  736 	push	ar6
      00211B 12 20 70         [24]  737 	lcall	_putchar
      00211E D0 06            [24]  738 	pop	ar6
      002120 D0 07            [24]  739 	pop	ar7
                                    740 ;	main.c:70: for (; *ch; ch++) {
      002122 0E               [12]  741 	inc	r6
      002123 BE 00 01         [24]  742 	cjne	r6,#0x00,00117$
      002126 0F               [12]  743 	inc	r7
      002127                        744 00117$:
      002127 90 04 04         [24]  745 	mov	dptr,#_puts__ch_65536_24
      00212A EE               [12]  746 	mov	a,r6
      00212B F0               [24]  747 	movx	@dptr,a
      00212C EF               [12]  748 	mov	a,r7
      00212D A3               [24]  749 	inc	dptr
      00212E F0               [24]  750 	movx	@dptr,a
      00212F 80 D8            [24]  751 	sjmp	00103$
      002131                        752 00109$:
      002131 90 04 04         [24]  753 	mov	dptr,#_puts__ch_65536_24
      002134 EE               [12]  754 	mov	a,r6
      002135 F0               [24]  755 	movx	@dptr,a
      002136 EF               [12]  756 	mov	a,r7
      002137 A3               [24]  757 	inc	dptr
      002138 F0               [24]  758 	movx	@dptr,a
                                    759 ;	main.c:73: }
      002139 22               [24]  760 	ret
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'readManufacturerID'
                                    763 ;------------------------------------------------------------
                                    764 ;	main.c:81: void readManufacturerID() {
                                    765 ;	-----------------------------------------
                                    766 ;	 function readManufacturerID
                                    767 ;	-----------------------------------------
      00213A                        768 _readManufacturerID:
                                    769 ;	main.c:87: __endasm;
      00213A 79 00            [12]  770 	mov	r1,#0 ; set command code to 00h
      00213C 75 82 00         [24]  771 	mov	DPL, #0 ; set DPTR to address 0000h
      00213F 75 83 00         [24]  772 	mov	DPH, #0
      002142 12 FF F0         [24]  773 	LCALL	0xFFF0 ; call bootloader API
                                    774 ;	main.c:89: printf("The manufacturer ID value is %x \r\n",ACC);  // print result to serial port
      002145 AE E0            [24]  775 	mov	r6,_ACC
      002147 7F 00            [12]  776 	mov	r7,#0x00
      002149 C0 06            [24]  777 	push	ar6
      00214B C0 07            [24]  778 	push	ar7
      00214D 74 AB            [12]  779 	mov	a,#___str_0
      00214F C0 E0            [24]  780 	push	acc
      002151 74 2D            [12]  781 	mov	a,#(___str_0 >> 8)
      002153 C0 E0            [24]  782 	push	acc
      002155 74 80            [12]  783 	mov	a,#0x80
      002157 C0 E0            [24]  784 	push	acc
      002159 12 23 3F         [24]  785 	lcall	_printf
      00215C E5 81            [12]  786 	mov	a,sp
      00215E 24 FB            [12]  787 	add	a,#0xfb
      002160 F5 81            [12]  788 	mov	sp,a
                                    789 ;	main.c:90: }
      002162 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'readDeviceID1'
                                    793 ;------------------------------------------------------------
                                    794 ;	main.c:97: void readDeviceID1() {
                                    795 ;	-----------------------------------------
                                    796 ;	 function readDeviceID1
                                    797 ;	-----------------------------------------
      002163                        798 _readDeviceID1:
                                    799 ;	main.c:104: __endasm;
      002163 79 00            [12]  800 	mov	r1,#0 ; set command code to 00h
      002165 75 82 01         [24]  801 	mov	DPL, #1 ; set DPTR to address 0001h
      002168 75 83 00         [24]  802 	mov	DPH, #0
      00216B 12 FF F0         [24]  803 	LCALL	0xFFF0 ; call bootloader API
                                    804 ;	main.c:107: printf("The device ID1 value is %x \r\n",ACC);
      00216E AE E0            [24]  805 	mov	r6,_ACC
      002170 7F 00            [12]  806 	mov	r7,#0x00
      002172 C0 06            [24]  807 	push	ar6
      002174 C0 07            [24]  808 	push	ar7
      002176 74 CE            [12]  809 	mov	a,#___str_1
      002178 C0 E0            [24]  810 	push	acc
      00217A 74 2D            [12]  811 	mov	a,#(___str_1 >> 8)
      00217C C0 E0            [24]  812 	push	acc
      00217E 74 80            [12]  813 	mov	a,#0x80
      002180 C0 E0            [24]  814 	push	acc
      002182 12 23 3F         [24]  815 	lcall	_printf
      002185 E5 81            [12]  816 	mov	a,sp
      002187 24 FB            [12]  817 	add	a,#0xfb
      002189 F5 81            [12]  818 	mov	sp,a
                                    819 ;	main.c:108: }
      00218B 22               [24]  820 	ret
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'readDeviceID2'
                                    823 ;------------------------------------------------------------
                                    824 ;	main.c:116: void readDeviceID2() {
                                    825 ;	-----------------------------------------
                                    826 ;	 function readDeviceID2
                                    827 ;	-----------------------------------------
      00218C                        828 _readDeviceID2:
                                    829 ;	main.c:123: __endasm;
      00218C 79 00            [12]  830 	mov	r1,#0
      00218E 75 82 02         [24]  831 	mov	DPL, #2
      002191 75 83 00         [24]  832 	mov	DPH, #0
      002194 12 FF F0         [24]  833 	LCALL	0xFFF0
                                    834 ;	main.c:126: printf("The device ID2 value is %x \r\n",ACC);
      002197 AE E0            [24]  835 	mov	r6,_ACC
      002199 7F 00            [12]  836 	mov	r7,#0x00
      00219B C0 06            [24]  837 	push	ar6
      00219D C0 07            [24]  838 	push	ar7
      00219F 74 EC            [12]  839 	mov	a,#___str_2
      0021A1 C0 E0            [24]  840 	push	acc
      0021A3 74 2D            [12]  841 	mov	a,#(___str_2 >> 8)
      0021A5 C0 E0            [24]  842 	push	acc
      0021A7 74 80            [12]  843 	mov	a,#0x80
      0021A9 C0 E0            [24]  844 	push	acc
      0021AB 12 23 3F         [24]  845 	lcall	_printf
      0021AE E5 81            [12]  846 	mov	a,sp
      0021B0 24 FB            [12]  847 	add	a,#0xfb
      0021B2 F5 81            [12]  848 	mov	sp,a
                                    849 ;	main.c:127: }
      0021B4 22               [24]  850 	ret
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'readDeviceID3'
                                    853 ;------------------------------------------------------------
                                    854 ;	main.c:135: void readDeviceID3() {
                                    855 ;	-----------------------------------------
                                    856 ;	 function readDeviceID3
                                    857 ;	-----------------------------------------
      0021B5                        858 _readDeviceID3:
                                    859 ;	main.c:142: __endasm;
      0021B5 79 00            [12]  860 	mov	r1,#0
      0021B7 75 82 03         [24]  861 	mov	DPL, #3
      0021BA 75 83 00         [24]  862 	mov	DPH, #0
      0021BD 12 FF F0         [24]  863 	LCALL	0xFFF0
                                    864 ;	main.c:145: printf("The device ID3 value is %x \r\n",ACC);
      0021C0 AE E0            [24]  865 	mov	r6,_ACC
      0021C2 7F 00            [12]  866 	mov	r7,#0x00
      0021C4 C0 06            [24]  867 	push	ar6
      0021C6 C0 07            [24]  868 	push	ar7
      0021C8 74 0A            [12]  869 	mov	a,#___str_3
      0021CA C0 E0            [24]  870 	push	acc
      0021CC 74 2E            [12]  871 	mov	a,#(___str_3 >> 8)
      0021CE C0 E0            [24]  872 	push	acc
      0021D0 74 80            [12]  873 	mov	a,#0x80
      0021D2 C0 E0            [24]  874 	push	acc
      0021D4 12 23 3F         [24]  875 	lcall	_printf
      0021D7 E5 81            [12]  876 	mov	a,sp
      0021D9 24 FB            [12]  877 	add	a,#0xfb
      0021DB F5 81            [12]  878 	mov	sp,a
                                    879 ;	main.c:146: }
      0021DD 22               [24]  880 	ret
                                    881 ;------------------------------------------------------------
                                    882 ;Allocation info for local variables in function 'programMemory'
                                    883 ;------------------------------------------------------------
                                    884 ;	main.c:153: void programMemory() {
                                    885 ;	-----------------------------------------
                                    886 ;	 function programMemory
                                    887 ;	-----------------------------------------
      0021DE                        888 _programMemory:
                                    889 ;	main.c:155: printf("Programming 0x0 with 0x55 \r\n");
      0021DE 74 28            [12]  890 	mov	a,#___str_4
      0021E0 C0 E0            [24]  891 	push	acc
      0021E2 74 2E            [12]  892 	mov	a,#(___str_4 >> 8)
      0021E4 C0 E0            [24]  893 	push	acc
      0021E6 74 80            [12]  894 	mov	a,#0x80
      0021E8 C0 E0            [24]  895 	push	acc
      0021EA 12 23 3F         [24]  896 	lcall	_printf
      0021ED 15 81            [12]  897 	dec	sp
      0021EF 15 81            [12]  898 	dec	sp
      0021F1 15 81            [12]  899 	dec	sp
                                    900 ;	main.c:162: __endasm ;
      0021F3 79 02            [12]  901 	mov	r1,#2
      0021F5 E5 55            [12]  902 	mov	a, 0x55
      0021F7 75 82 00         [24]  903 	mov	DPL, #0x00
      0021FA 75 83 40         [24]  904 	mov	DPH, #0x40
      0021FD 12 FF F0         [24]  905 	LCALL	0xFFF0
                                    906 ;	main.c:165: printf("Before while \n\r");
      002200 74 45            [12]  907 	mov	a,#___str_5
      002202 C0 E0            [24]  908 	push	acc
      002204 74 2E            [12]  909 	mov	a,#(___str_5 >> 8)
      002206 C0 E0            [24]  910 	push	acc
      002208 74 80            [12]  911 	mov	a,#0x80
      00220A C0 E0            [24]  912 	push	acc
      00220C 12 23 3F         [24]  913 	lcall	_printf
      00220F 15 81            [12]  914 	dec	sp
      002211 15 81            [12]  915 	dec	sp
      002213 15 81            [12]  916 	dec	sp
                                    917 ;	main.c:166: while(!ACC);
      002215                        918 00101$:
      002215 E5 E0            [12]  919 	mov	a,_ACC
      002217 60 FC            [24]  920 	jz	00101$
                                    921 ;	main.c:167: printf("After while \n\r");
      002219 74 55            [12]  922 	mov	a,#___str_6
      00221B C0 E0            [24]  923 	push	acc
      00221D 74 2E            [12]  924 	mov	a,#(___str_6 >> 8)
      00221F C0 E0            [24]  925 	push	acc
      002221 74 80            [12]  926 	mov	a,#0x80
      002223 C0 E0            [24]  927 	push	acc
      002225 12 23 3F         [24]  928 	lcall	_printf
      002228 15 81            [12]  929 	dec	sp
      00222A 15 81            [12]  930 	dec	sp
      00222C 15 81            [12]  931 	dec	sp
                                    932 ;	main.c:175: __endasm ;
      00222E E4               [12]  933 	clr	a
      00222F 75 82 00         [24]  934 	mov	DPL, #0x00
      002232 75 83 40         [24]  935 	mov	DPH, #0x40
      002235 93               [24]  936 	movc	a, @a+dptr
                                    937 ;	main.c:176: printf("The programmed value is %x \r\n",ACC);
      002236 AE E0            [24]  938 	mov	r6,_ACC
      002238 7F 00            [12]  939 	mov	r7,#0x00
      00223A C0 06            [24]  940 	push	ar6
      00223C C0 07            [24]  941 	push	ar7
      00223E 74 64            [12]  942 	mov	a,#___str_7
      002240 C0 E0            [24]  943 	push	acc
      002242 74 2E            [12]  944 	mov	a,#(___str_7 >> 8)
      002244 C0 E0            [24]  945 	push	acc
      002246 74 80            [12]  946 	mov	a,#0x80
      002248 C0 E0            [24]  947 	push	acc
      00224A 12 23 3F         [24]  948 	lcall	_printf
      00224D E5 81            [12]  949 	mov	a,sp
      00224F 24 FB            [12]  950 	add	a,#0xfb
      002251 F5 81            [12]  951 	mov	sp,a
                                    952 ;	main.c:177: }
      002253 22               [24]  953 	ret
                                    954 ;------------------------------------------------------------
                                    955 ;Allocation info for local variables in function 'eraseBlock'
                                    956 ;------------------------------------------------------------
                                    957 ;addr                      Allocated with name '_eraseBlock_addr_65536_33'
                                    958 ;------------------------------------------------------------
                                    959 ;	main.c:185: void eraseBlock() {
                                    960 ;	-----------------------------------------
                                    961 ;	 function eraseBlock
                                    962 ;	-----------------------------------------
      002254                        963 _eraseBlock:
                                    964 ;	main.c:187: *addr = 0x1234;
      002254 90 40 00         [24]  965 	mov	dptr,#0x4000
      002257 75 F0 00         [24]  966 	mov	b,#0x00
      00225A 74 34            [12]  967 	mov	a,#0x34
      00225C 12 22 D6         [24]  968 	lcall	__gptrput
      00225F A3               [24]  969 	inc	dptr
      002260 74 12            [12]  970 	mov	a,#0x12
      002262 12 22 D6         [24]  971 	lcall	__gptrput
                                    972 ;	main.c:188: printf("Before erasing block at address 0x4000: 0x%x\r\n", *addr);
      002265 90 40 00         [24]  973 	mov	dptr,#0x4000
      002268 75 F0 00         [24]  974 	mov	b,#0x00
      00226B 12 2D 8B         [24]  975 	lcall	__gptrget
      00226E FE               [12]  976 	mov	r6,a
      00226F A3               [24]  977 	inc	dptr
      002270 12 2D 8B         [24]  978 	lcall	__gptrget
      002273 FF               [12]  979 	mov	r7,a
      002274 C0 06            [24]  980 	push	ar6
      002276 C0 07            [24]  981 	push	ar7
      002278 74 82            [12]  982 	mov	a,#___str_8
      00227A C0 E0            [24]  983 	push	acc
      00227C 74 2E            [12]  984 	mov	a,#(___str_8 >> 8)
      00227E C0 E0            [24]  985 	push	acc
      002280 74 80            [12]  986 	mov	a,#0x80
      002282 C0 E0            [24]  987 	push	acc
      002284 12 23 3F         [24]  988 	lcall	_printf
      002287 E5 81            [12]  989 	mov	a,sp
      002289 24 FB            [12]  990 	add	a,#0xfb
      00228B F5 81            [12]  991 	mov	sp,a
                                    992 ;	main.c:199: __endasm ;
      00228D 79 01            [12]  993 	mov	r1,#1
      00228F 75 83 00         [24]  994 	mov	DPH, #0x00
      002292 85 83 E0         [24]  995 	mov	ACC, DPH
      002295 12 FF F0         [24]  996 	LCALL	0xFFF0
                                    997 ;	main.c:202: while(!ACC);
      002298                        998 00101$:
      002298 E5 E0            [12]  999 	mov	a,_ACC
      00229A 60 FC            [24] 1000 	jz	00101$
                                   1001 ;	main.c:204: printf("After erasing block at address 0x4000: 0x%x\r\n", *addr);
      00229C 90 40 00         [24] 1002 	mov	dptr,#0x4000
      00229F 75 F0 00         [24] 1003 	mov	b,#0x00
      0022A2 12 2D 8B         [24] 1004 	lcall	__gptrget
      0022A5 FE               [12] 1005 	mov	r6,a
      0022A6 A3               [24] 1006 	inc	dptr
      0022A7 12 2D 8B         [24] 1007 	lcall	__gptrget
      0022AA FF               [12] 1008 	mov	r7,a
      0022AB C0 06            [24] 1009 	push	ar6
      0022AD C0 07            [24] 1010 	push	ar7
      0022AF 74 B1            [12] 1011 	mov	a,#___str_9
      0022B1 C0 E0            [24] 1012 	push	acc
      0022B3 74 2E            [12] 1013 	mov	a,#(___str_9 >> 8)
      0022B5 C0 E0            [24] 1014 	push	acc
      0022B7 74 80            [12] 1015 	mov	a,#0x80
      0022B9 C0 E0            [24] 1016 	push	acc
      0022BB 12 23 3F         [24] 1017 	lcall	_printf
      0022BE E5 81            [12] 1018 	mov	a,sp
      0022C0 24 FB            [12] 1019 	add	a,#0xfb
      0022C2 F5 81            [12] 1020 	mov	sp,a
                                   1021 ;	main.c:205: }
      0022C4 22               [24] 1022 	ret
                                   1023 ;------------------------------------------------------------
                                   1024 ;Allocation info for local variables in function 'main'
                                   1025 ;------------------------------------------------------------
                                   1026 ;	main.c:212: int main(void)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function main
                                   1029 ;	-----------------------------------------
      0022C5                       1030 _main:
                                   1031 ;	main.c:215: readManufacturerID();
      0022C5 12 21 3A         [24] 1032 	lcall	_readManufacturerID
                                   1033 ;	main.c:216: readDeviceID1();
      0022C8 12 21 63         [24] 1034 	lcall	_readDeviceID1
                                   1035 ;	main.c:217: readDeviceID2();
      0022CB 12 21 8C         [24] 1036 	lcall	_readDeviceID2
                                   1037 ;	main.c:218: readDeviceID3();
      0022CE 12 21 B5         [24] 1038 	lcall	_readDeviceID3
                                   1039 ;	main.c:220: programMemory();
      0022D1 12 21 DE         [24] 1040 	lcall	_programMemory
                                   1041 ;	main.c:222: while(1)
      0022D4                       1042 00102$:
                                   1043 ;	main.c:226: }
      0022D4 80 FE            [24] 1044 	sjmp	00102$
                                   1045 	.area CSEG    (CODE)
                                   1046 	.area CONST   (CODE)
                                   1047 	.area CONST   (CODE)
      002DAB                       1048 ___str_0:
      002DAB 54 68 65 20 6D 61 6E  1049 	.ascii "The manufacturer ID value is %x "
             75 66 61 63 74 75 72
             65 72 20 49 44 20 76
             61 6C 75 65 20 69 73
             20 25 78 20
      002DCB 0D                    1050 	.db 0x0d
      002DCC 0A                    1051 	.db 0x0a
      002DCD 00                    1052 	.db 0x00
                                   1053 	.area CSEG    (CODE)
                                   1054 	.area CONST   (CODE)
      002DCE                       1055 ___str_1:
      002DCE 54 68 65 20 64 65 76  1056 	.ascii "The device ID1 value is %x "
             69 63 65 20 49 44 31
             20 76 61 6C 75 65 20
             69 73 20 25 78 20
      002DE9 0D                    1057 	.db 0x0d
      002DEA 0A                    1058 	.db 0x0a
      002DEB 00                    1059 	.db 0x00
                                   1060 	.area CSEG    (CODE)
                                   1061 	.area CONST   (CODE)
      002DEC                       1062 ___str_2:
      002DEC 54 68 65 20 64 65 76  1063 	.ascii "The device ID2 value is %x "
             69 63 65 20 49 44 32
             20 76 61 6C 75 65 20
             69 73 20 25 78 20
      002E07 0D                    1064 	.db 0x0d
      002E08 0A                    1065 	.db 0x0a
      002E09 00                    1066 	.db 0x00
                                   1067 	.area CSEG    (CODE)
                                   1068 	.area CONST   (CODE)
      002E0A                       1069 ___str_3:
      002E0A 54 68 65 20 64 65 76  1070 	.ascii "The device ID3 value is %x "
             69 63 65 20 49 44 33
             20 76 61 6C 75 65 20
             69 73 20 25 78 20
      002E25 0D                    1071 	.db 0x0d
      002E26 0A                    1072 	.db 0x0a
      002E27 00                    1073 	.db 0x00
                                   1074 	.area CSEG    (CODE)
                                   1075 	.area CONST   (CODE)
      002E28                       1076 ___str_4:
      002E28 50 72 6F 67 72 61 6D  1077 	.ascii "Programming 0x0 with 0x55 "
             6D 69 6E 67 20 30 78
             30 20 77 69 74 68 20
             30 78 35 35 20
      002E42 0D                    1078 	.db 0x0d
      002E43 0A                    1079 	.db 0x0a
      002E44 00                    1080 	.db 0x00
                                   1081 	.area CSEG    (CODE)
                                   1082 	.area CONST   (CODE)
      002E45                       1083 ___str_5:
      002E45 42 65 66 6F 72 65 20  1084 	.ascii "Before while "
             77 68 69 6C 65 20
      002E52 0A                    1085 	.db 0x0a
      002E53 0D                    1086 	.db 0x0d
      002E54 00                    1087 	.db 0x00
                                   1088 	.area CSEG    (CODE)
                                   1089 	.area CONST   (CODE)
      002E55                       1090 ___str_6:
      002E55 41 66 74 65 72 20 77  1091 	.ascii "After while "
             68 69 6C 65 20
      002E61 0A                    1092 	.db 0x0a
      002E62 0D                    1093 	.db 0x0d
      002E63 00                    1094 	.db 0x00
                                   1095 	.area CSEG    (CODE)
                                   1096 	.area CONST   (CODE)
      002E64                       1097 ___str_7:
      002E64 54 68 65 20 70 72 6F  1098 	.ascii "The programmed value is %x "
             67 72 61 6D 6D 65 64
             20 76 61 6C 75 65 20
             69 73 20 25 78 20
      002E7F 0D                    1099 	.db 0x0d
      002E80 0A                    1100 	.db 0x0a
      002E81 00                    1101 	.db 0x00
                                   1102 	.area CSEG    (CODE)
                                   1103 	.area CONST   (CODE)
      002E82                       1104 ___str_8:
      002E82 42 65 66 6F 72 65 20  1105 	.ascii "Before erasing block at address 0x4000: 0x%x"
             65 72 61 73 69 6E 67
             20 62 6C 6F 63 6B 20
             61 74 20 61 64 64 72
             65 73 73 20 30 78 34
             30 30 30 3A 20 30 78
             25 78
      002EAE 0D                    1106 	.db 0x0d
      002EAF 0A                    1107 	.db 0x0a
      002EB0 00                    1108 	.db 0x00
                                   1109 	.area CSEG    (CODE)
                                   1110 	.area CONST   (CODE)
      002EB1                       1111 ___str_9:
      002EB1 41 66 74 65 72 20 65  1112 	.ascii "After erasing block at address 0x4000: 0x%x"
             72 61 73 69 6E 67 20
             62 6C 6F 63 6B 20 61
             74 20 61 64 64 72 65
             73 73 20 30 78 34 30
             30 30 3A 20 30 78 25
             78
      002EDC 0D                    1113 	.db 0x0d
      002EDD 0A                    1114 	.db 0x0a
      002EDE 00                    1115 	.db 0x00
                                   1116 	.area CSEG    (CODE)
                                   1117 	.area XINIT   (CODE)
                                   1118 	.area CABS    (ABS,CODE)
