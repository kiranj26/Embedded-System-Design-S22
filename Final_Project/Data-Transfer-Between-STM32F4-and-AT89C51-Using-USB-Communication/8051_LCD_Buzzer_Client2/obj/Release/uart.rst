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
                                     13 	.globl _uart_init
                                     14 	.globl _get_cursor_address
                                     15 	.globl _lcdputch
                                     16 	.globl _lcdgotoaddr
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
                                    227 	.globl _print_colored_PARM_2
                                    228 	.globl _putchar
                                    229 	.globl _getchar
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           0000C8   235 _T2CON	=	0x00c8
                           0000CA   236 _RCAP2L	=	0x00ca
                           0000CB   237 _RCAP2H	=	0x00cb
                           0000CC   238 _TL2	=	0x00cc
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 _AUXR	=	0x008e
                           0000A2   241 _AUXR1	=	0x00a2
                           000097   242 _CKRL	=	0x0097
                           00008F   243 _CKCON0	=	0x008f
                           0000AF   244 _CKCON1	=	0x00af
                           0000FA   245 _CCAP0H	=	0x00fa
                           0000FB   246 _CCAP1H	=	0x00fb
                           0000FC   247 _CCAP2H	=	0x00fc
                           0000FD   248 _CCAP3H	=	0x00fd
                           0000FE   249 _CCAP4H	=	0x00fe
                           0000EA   250 _CCAP0L	=	0x00ea
                           0000EB   251 _CCAP1L	=	0x00eb
                           0000EC   252 _CCAP2L	=	0x00ec
                           0000ED   253 _CCAP3L	=	0x00ed
                           0000EE   254 _CCAP4L	=	0x00ee
                           0000DA   255 _CCAPM0	=	0x00da
                           0000DB   256 _CCAPM1	=	0x00db
                           0000DC   257 _CCAPM2	=	0x00dc
                           0000DD   258 _CCAPM3	=	0x00dd
                           0000DE   259 _CCAPM4	=	0x00de
                           0000D8   260 _CCON	=	0x00d8
                           0000F9   261 _CH	=	0x00f9
                           0000E9   262 _CL	=	0x00e9
                           0000D9   263 _CMOD	=	0x00d9
                           0000A8   264 _IEN0	=	0x00a8
                           0000B1   265 _IEN1	=	0x00b1
                           0000B8   266 _IPL0	=	0x00b8
                           0000B7   267 _IPH0	=	0x00b7
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000C0   270 _P4	=	0x00c0
                           0000E8   271 _P5	=	0x00e8
                           0000A6   272 _WDTRST	=	0x00a6
                           0000A7   273 _WDTPRG	=	0x00a7
                           0000A9   274 _SADDR	=	0x00a9
                           0000B9   275 _SADEN	=	0x00b9
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C9   279 _T2MOD	=	0x00c9
                           00009B   280 _BDRCON	=	0x009b
                           00009A   281 _BRL	=	0x009a
                           00009C   282 _KBLS	=	0x009c
                           00009D   283 _KBE	=	0x009d
                           00009E   284 _KBF	=	0x009e
                           0000D2   285 _EECON	=	0x00d2
                           000083   286 _DP0H	=	0x0083
                           000082   287 _DP0L	=	0x0082
                           000099   288 _SBUF0	=	0x0099
                           000080   289 _P0	=	0x0080
                           000081   290 _SP	=	0x0081
                           000082   291 _DPL	=	0x0082
                           000083   292 _DPH	=	0x0083
                           000087   293 _PCON	=	0x0087
                           000088   294 _TCON	=	0x0088
                           000089   295 _TMOD	=	0x0089
                           00008A   296 _TL0	=	0x008a
                           00008B   297 _TL1	=	0x008b
                           00008C   298 _TH0	=	0x008c
                           00008D   299 _TH1	=	0x008d
                           000090   300 _P1	=	0x0090
                           000098   301 _SCON	=	0x0098
                           000099   302 _SBUF	=	0x0099
                           0000A0   303 _P2	=	0x00a0
                           0000A8   304 _IE	=	0x00a8
                           0000B0   305 _P3	=	0x00b0
                           0000B8   306 _IP	=	0x00b8
                           0000D0   307 _PSW	=	0x00d0
                           0000E0   308 _ACC	=	0x00e0
                           0000F0   309 _B	=	0x00f0
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           0000AD   315 _ET2	=	0x00ad
                           0000BD   316 _PT2	=	0x00bd
                           0000C8   317 _T2CON_0	=	0x00c8
                           0000C9   318 _T2CON_1	=	0x00c9
                           0000CA   319 _T2CON_2	=	0x00ca
                           0000CB   320 _T2CON_3	=	0x00cb
                           0000CC   321 _T2CON_4	=	0x00cc
                           0000CD   322 _T2CON_5	=	0x00cd
                           0000CE   323 _T2CON_6	=	0x00ce
                           0000CF   324 _T2CON_7	=	0x00cf
                           0000C8   325 _CP_RL2	=	0x00c8
                           0000C9   326 _C_T2	=	0x00c9
                           0000CA   327 _TR2	=	0x00ca
                           0000CB   328 _EXEN2	=	0x00cb
                           0000CC   329 _TCLK	=	0x00cc
                           0000CD   330 _RCLK	=	0x00cd
                           0000CE   331 _EXF2	=	0x00ce
                           0000CF   332 _TF2	=	0x00cf
                           0000DF   333 _CF	=	0x00df
                           0000DE   334 _CR	=	0x00de
                           0000DC   335 _CCF4	=	0x00dc
                           0000DB   336 _CCF3	=	0x00db
                           0000DA   337 _CCF2	=	0x00da
                           0000D9   338 _CCF1	=	0x00d9
                           0000D8   339 _CCF0	=	0x00d8
                           0000AE   340 _EC	=	0x00ae
                           0000BE   341 _PPCL	=	0x00be
                           0000BD   342 _PT2L	=	0x00bd
                           0000BC   343 _PSL	=	0x00bc
                           0000BB   344 _PT1L	=	0x00bb
                           0000BA   345 _PX1L	=	0x00ba
                           0000B9   346 _PT0L	=	0x00b9
                           0000B8   347 _PX0L	=	0x00b8
                           0000C0   348 _P4_0	=	0x00c0
                           0000C1   349 _P4_1	=	0x00c1
                           0000C2   350 _P4_2	=	0x00c2
                           0000C3   351 _P4_3	=	0x00c3
                           0000C4   352 _P4_4	=	0x00c4
                           0000C5   353 _P4_5	=	0x00c5
                           0000C6   354 _P4_6	=	0x00c6
                           0000C7   355 _P4_7	=	0x00c7
                           0000E8   356 _P5_0	=	0x00e8
                           0000E9   357 _P5_1	=	0x00e9
                           0000EA   358 _P5_2	=	0x00ea
                           0000EB   359 _P5_3	=	0x00eb
                           0000EC   360 _P5_4	=	0x00ec
                           0000ED   361 _P5_5	=	0x00ed
                           0000EE   362 _P5_6	=	0x00ee
                           0000EF   363 _P5_7	=	0x00ef
                           0000F0   364 _BREG_F0	=	0x00f0
                           0000F1   365 _BREG_F1	=	0x00f1
                           0000F2   366 _BREG_F2	=	0x00f2
                           0000F3   367 _BREG_F3	=	0x00f3
                           0000F4   368 _BREG_F4	=	0x00f4
                           0000F5   369 _BREG_F5	=	0x00f5
                           0000F6   370 _BREG_F6	=	0x00f6
                           0000F7   371 _BREG_F7	=	0x00f7
                           0000B0   372 _RXD0	=	0x00b0
                           0000B1   373 _TXD0	=	0x00b1
                           000080   374 _P0_0	=	0x0080
                           000081   375 _P0_1	=	0x0081
                           000082   376 _P0_2	=	0x0082
                           000083   377 _P0_3	=	0x0083
                           000084   378 _P0_4	=	0x0084
                           000085   379 _P0_5	=	0x0085
                           000086   380 _P0_6	=	0x0086
                           000087   381 _P0_7	=	0x0087
                           000088   382 _IT0	=	0x0088
                           000089   383 _IE0	=	0x0089
                           00008A   384 _IT1	=	0x008a
                           00008B   385 _IE1	=	0x008b
                           00008C   386 _TR0	=	0x008c
                           00008D   387 _TF0	=	0x008d
                           00008E   388 _TR1	=	0x008e
                           00008F   389 _TF1	=	0x008f
                           000090   390 _P1_0	=	0x0090
                           000091   391 _P1_1	=	0x0091
                           000092   392 _P1_2	=	0x0092
                           000093   393 _P1_3	=	0x0093
                           000094   394 _P1_4	=	0x0094
                           000095   395 _P1_5	=	0x0095
                           000096   396 _P1_6	=	0x0096
                           000097   397 _P1_7	=	0x0097
                           000098   398 _RI	=	0x0098
                           000099   399 _TI	=	0x0099
                           00009A   400 _RB8	=	0x009a
                           00009B   401 _TB8	=	0x009b
                           00009C   402 _REN	=	0x009c
                           00009D   403 _SM2	=	0x009d
                           00009E   404 _SM1	=	0x009e
                           00009F   405 _SM0	=	0x009f
                           0000A0   406 _P2_0	=	0x00a0
                           0000A1   407 _P2_1	=	0x00a1
                           0000A2   408 _P2_2	=	0x00a2
                           0000A3   409 _P2_3	=	0x00a3
                           0000A4   410 _P2_4	=	0x00a4
                           0000A5   411 _P2_5	=	0x00a5
                           0000A6   412 _P2_6	=	0x00a6
                           0000A7   413 _P2_7	=	0x00a7
                           0000A8   414 _EX0	=	0x00a8
                           0000A9   415 _ET0	=	0x00a9
                           0000AA   416 _EX1	=	0x00aa
                           0000AB   417 _ET1	=	0x00ab
                           0000AC   418 _ES	=	0x00ac
                           0000AF   419 _EA	=	0x00af
                           0000B0   420 _P3_0	=	0x00b0
                           0000B1   421 _P3_1	=	0x00b1
                           0000B2   422 _P3_2	=	0x00b2
                           0000B3   423 _P3_3	=	0x00b3
                           0000B4   424 _P3_4	=	0x00b4
                           0000B5   425 _P3_5	=	0x00b5
                           0000B6   426 _P3_6	=	0x00b6
                           0000B7   427 _P3_7	=	0x00b7
                           0000B0   428 _RXD	=	0x00b0
                           0000B1   429 _TXD	=	0x00b1
                           0000B2   430 _INT0	=	0x00b2
                           0000B3   431 _INT1	=	0x00b3
                           0000B4   432 _T0	=	0x00b4
                           0000B5   433 _T1	=	0x00b5
                           0000B6   434 _WR	=	0x00b6
                           0000B7   435 _RD	=	0x00b7
                           0000B8   436 _PX0	=	0x00b8
                           0000B9   437 _PT0	=	0x00b9
                           0000BA   438 _PX1	=	0x00ba
                           0000BB   439 _PT1	=	0x00bb
                           0000BC   440 _PS	=	0x00bc
                           0000D0   441 _P	=	0x00d0
                           0000D1   442 _F1	=	0x00d1
                           0000D2   443 _OV	=	0x00d2
                           0000D3   444 _RS0	=	0x00d3
                           0000D4   445 _RS1	=	0x00d4
                           0000D5   446 _F0	=	0x00d5
                           0000D6   447 _AC	=	0x00d6
                           0000D7   448 _CY	=	0x00d7
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable register banks
                                    451 ;--------------------------------------------------------
                                    452 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        453 	.ds 8
                                    454 ;--------------------------------------------------------
                                    455 ; internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area DSEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable items in internal ram
                                    460 ;--------------------------------------------------------
                                    461 ;--------------------------------------------------------
                                    462 ; indirectly addressable internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area ISEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area IABS    (ABS,DATA)
                                    469 	.area IABS    (ABS,DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; bit data
                                    472 ;--------------------------------------------------------
                                    473 	.area BSEG    (BIT)
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
      0004FD                        482 _putchar_c_65536_97:
      0004FD                        483 	.ds 2
      0004FF                        484 _getchar_save_cursor_address_131072_101:
      0004FF                        485 	.ds 1
      000500                        486 _print_colored_PARM_2:
      000500                        487 	.ds 2
      000502                        488 _print_colored_str_65536_102:
      000502                        489 	.ds 3
                                    490 ;--------------------------------------------------------
                                    491 ; absolute external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area XABS    (ABS,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external initialized ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XISEG   (XDATA)
                                    498 	.area HOME    (CODE)
                                    499 	.area GSINIT0 (CODE)
                                    500 	.area GSINIT1 (CODE)
                                    501 	.area GSINIT2 (CODE)
                                    502 	.area GSINIT3 (CODE)
                                    503 	.area GSINIT4 (CODE)
                                    504 	.area GSINIT5 (CODE)
                                    505 	.area GSINIT  (CODE)
                                    506 	.area GSFINAL (CODE)
                                    507 	.area CSEG    (CODE)
                                    508 ;--------------------------------------------------------
                                    509 ; global & static initialisations
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.area GSFINAL (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 ;--------------------------------------------------------
                                    516 ; Home
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area HOME    (CODE)
                                    520 ;--------------------------------------------------------
                                    521 ; code
                                    522 ;--------------------------------------------------------
                                    523 	.area CSEG    (CODE)
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'uart_init'
                                    526 ;------------------------------------------------------------
                                    527 ;	uart.c:48: void uart_init()
                                    528 ;	-----------------------------------------
                                    529 ;	 function uart_init
                                    530 ;	-----------------------------------------
      0015AA                        531 _uart_init:
                           000007   532 	ar7 = 0x07
                           000006   533 	ar6 = 0x06
                           000005   534 	ar5 = 0x05
                           000004   535 	ar4 = 0x04
                           000003   536 	ar3 = 0x03
                           000002   537 	ar2 = 0x02
                           000001   538 	ar1 = 0x01
                           000000   539 	ar0 = 0x00
                                    540 ;	uart.c:51: SCON = 0x50;    // UART in mode 1 (8 bit), REN=1
      0015AA 75 98 50         [24]  541 	mov	_SCON,#0x50
                                    542 ;	uart.c:52: TMOD |= 0x20;   // Timer 1 in mode 2
      0015AD 43 89 20         [24]  543 	orl	_TMOD,#0x20
                                    544 ;	uart.c:53: TH1 = 0xFD;     // 9600 Baud rate at 11.059MHz
      0015B0 75 8D FD         [24]  545 	mov	_TH1,#0xfd
                                    546 ;	uart.c:54: TL1 = 0xFD;     // 9600 Baud rate at 11.059MHz
      0015B3 75 8B FD         [24]  547 	mov	_TL1,#0xfd
                                    548 ;	uart.c:55: TI = 0;         // Clear transmit interrupt flag
                                    549 ;	assignBit
      0015B6 C2 99            [12]  550 	clr	_TI
                                    551 ;	uart.c:56: SBUF = 0;       // Clear transmit buffer
      0015B8 75 99 00         [24]  552 	mov	_SBUF,#0x00
                                    553 ;	uart.c:57: TR1 = 1;        // Timer 1 run
                                    554 ;	assignBit
      0015BB D2 8E            [12]  555 	setb	_TR1
                                    556 ;	uart.c:58: ES = 1;         // Enable serial interrupt
                                    557 ;	assignBit
      0015BD D2 AC            [12]  558 	setb	_ES
                                    559 ;	uart.c:59: EA = 1;         // Enable global interrupt
                                    560 ;	assignBit
      0015BF D2 AF            [12]  561 	setb	_EA
                                    562 ;	uart.c:60: }
      0015C1 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'putchar'
                                    566 ;------------------------------------------------------------
                                    567 ;c                         Allocated with name '_putchar_c_65536_97'
                                    568 ;------------------------------------------------------------
                                    569 ;	uart.c:63: int putchar (int c) {
                                    570 ;	-----------------------------------------
                                    571 ;	 function putchar
                                    572 ;	-----------------------------------------
      0015C2                        573 _putchar:
      0015C2 AF 83            [24]  574 	mov	r7,dph
      0015C4 E5 82            [12]  575 	mov	a,dpl
      0015C6 90 04 FD         [24]  576 	mov	dptr,#_putchar_c_65536_97
      0015C9 F0               [24]  577 	movx	@dptr,a
      0015CA EF               [12]  578 	mov	a,r7
      0015CB A3               [24]  579 	inc	dptr
      0015CC F0               [24]  580 	movx	@dptr,a
                                    581 ;	uart.c:64: while (!TI);    // Wait for the transmit interrupt flag to be set
      0015CD                        582 00101$:
      0015CD 30 99 FD         [24]  583 	jnb	_TI,00101$
                                    584 ;	uart.c:65: SBUF = c;       // Load the transmit buffer with the character to send
      0015D0 90 04 FD         [24]  585 	mov	dptr,#_putchar_c_65536_97
      0015D3 E0               [24]  586 	movx	a,@dptr
      0015D4 FE               [12]  587 	mov	r6,a
      0015D5 A3               [24]  588 	inc	dptr
      0015D6 E0               [24]  589 	movx	a,@dptr
      0015D7 FF               [12]  590 	mov	r7,a
      0015D8 8E 99            [24]  591 	mov	_SBUF,r6
                                    592 ;	uart.c:66: TI = 0;         // Clear transmit interrupt flag
                                    593 ;	assignBit
      0015DA C2 99            [12]  594 	clr	_TI
                                    595 ;	uart.c:67: return c;
      0015DC 8E 82            [24]  596 	mov	dpl,r6
      0015DE 8F 83            [24]  597 	mov	dph,r7
                                    598 ;	uart.c:68: }
      0015E0 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'getchar'
                                    602 ;------------------------------------------------------------
                                    603 ;save_cursor_address       Allocated with name '_getchar_save_cursor_address_131072_101'
                                    604 ;------------------------------------------------------------
                                    605 ;	uart.c:71: int getchar (void)
                                    606 ;	-----------------------------------------
                                    607 ;	 function getchar
                                    608 ;	-----------------------------------------
      0015E1                        609 _getchar:
                                    610 ;	uart.c:73: while (!RI)     // Wait for the receive interrupt flag to be set
      0015E1                        611 00101$:
      0015E1 20 98 5A         [24]  612 	jb	_RI,00103$
                                    613 ;	uart.c:75: volatile uint8_t save_cursor_address = get_cursor_address();   // Save the current cursor address
      0015E4 12 02 0C         [24]  614 	lcall	_get_cursor_address
      0015E7 E5 82            [12]  615 	mov	a,dpl
      0015E9 90 04 FF         [24]  616 	mov	dptr,#_getchar_save_cursor_address_131072_101
      0015EC F0               [24]  617 	movx	@dptr,a
                                    618 ;	uart.c:76: lcdgotoaddr(0x59);      // Set the cursor to the start of the line that displays the time
      0015ED 75 82 59         [24]  619 	mov	dpl,#0x59
      0015F0 12 02 19         [24]  620 	lcall	_lcdgotoaddr
                                    621 ;	uart.c:77: lcdputch(minutes_tens_digit);   // Display the tens digit of the minutes
      0015F3 90 05 7D         [24]  622 	mov	dptr,#_minutes_tens_digit
      0015F6 E0               [24]  623 	movx	a,@dptr
      0015F7 F5 82            [12]  624 	mov	dpl,a
      0015F9 12 02 EF         [24]  625 	lcall	_lcdputch
                                    626 ;	uart.c:78: lcdputch(minutes_ones_digit);   // Display the ones digit of the minutes
      0015FC 90 05 7C         [24]  627 	mov	dptr,#_minutes_ones_digit
      0015FF E0               [24]  628 	movx	a,@dptr
      001600 F5 82            [12]  629 	mov	dpl,a
      001602 12 02 EF         [24]  630 	lcall	_lcdputch
                                    631 ;	uart.c:79: lcdputch(':');          // Display the colon separator
      001605 75 82 3A         [24]  632 	mov	dpl,#0x3a
      001608 12 02 EF         [24]  633 	lcall	_lcdputch
                                    634 ;	uart.c:80: lcdputch(seconds_tens_digit);   // Display the tens digit of the seconds
      00160B 90 05 7B         [24]  635 	mov	dptr,#_seconds_tens_digit
      00160E E0               [24]  636 	movx	a,@dptr
      00160F F5 82            [12]  637 	mov	dpl,a
      001611 12 02 EF         [24]  638 	lcall	_lcdputch
                                    639 ;	uart.c:81: lcdputch(seconds_ones_digit);   // Display the ones digit of the seconds
      001614 90 05 7A         [24]  640 	mov	dptr,#_seconds_ones_digit
      001617 E0               [24]  641 	movx	a,@dptr
      001618 F5 82            [12]  642 	mov	dpl,a
      00161A 12 02 EF         [24]  643 	lcall	_lcdputch
                                    644 ;	uart.c:82: lcdputch('.');          // Display the decimal point separator
      00161D 75 82 2E         [24]  645 	mov	dpl,#0x2e
      001620 12 02 EF         [24]  646 	lcall	_lcdputch
                                    647 ;	uart.c:83: lcdputch(tenth_of_second);      // Display the tenths of seconds
      001623 90 05 79         [24]  648 	mov	dptr,#_tenth_of_second
      001626 E0               [24]  649 	movx	a,@dptr
      001627 F5 82            [12]  650 	mov	dpl,a
      001629 12 02 EF         [24]  651 	lcall	_lcdputch
                                    652 ;	uart.c:84: lcdgotoaddr(save_cursor_address);   // Restore the cursor to the previous location
      00162C 90 04 FF         [24]  653 	mov	dptr,#_getchar_save_cursor_address_131072_101
      00162F E0               [24]  654 	movx	a,@dptr
      001630 F5 82            [12]  655 	mov	dpl,a
      001632 12 02 19         [24]  656 	lcall	_lcdgotoaddr
                                    657 ;	uart.c:85: update_lcd = 0;         // Reset the flag that indicates a change in the time display
      001635 90 05 77         [24]  658 	mov	dptr,#_update_lcd
      001638 E4               [12]  659 	clr	a
      001639 F0               [24]  660 	movx	@dptr,a
      00163A A3               [24]  661 	inc	dptr
      00163B F0               [24]  662 	movx	@dptr,a
      00163C 80 A3            [24]  663 	sjmp	00101$
      00163E                        664 00103$:
                                    665 ;	uart.c:87: RI = 0;             // Clear receive interrupt flag
                                    666 ;	assignBit
      00163E C2 98            [12]  667 	clr	_RI
                                    668 ;	uart.c:88: return SBUF;        // Return the received character from the receive buffer
      001640 AE 99            [24]  669 	mov	r6,_SBUF
      001642 7F 00            [12]  670 	mov	r7,#0x00
      001644 8E 82            [24]  671 	mov	dpl,r6
      001646 8F 83            [24]  672 	mov	dph,r7
                                    673 ;	uart.c:89: }
      001648 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'print_colored'
                                    677 ;------------------------------------------------------------
                                    678 ;color_code                Allocated with name '_print_colored_PARM_2'
                                    679 ;str                       Allocated with name '_print_colored_str_65536_102'
                                    680 ;------------------------------------------------------------
                                    681 ;	uart.c:92: void print_colored(char* str, int color_code) {
                                    682 ;	-----------------------------------------
                                    683 ;	 function print_colored
                                    684 ;	-----------------------------------------
      001649                        685 _print_colored:
      001649 AF F0            [24]  686 	mov	r7,b
      00164B AE 83            [24]  687 	mov	r6,dph
      00164D E5 82            [12]  688 	mov	a,dpl
      00164F 90 05 02         [24]  689 	mov	dptr,#_print_colored_str_65536_102
      001652 F0               [24]  690 	movx	@dptr,a
      001653 EE               [12]  691 	mov	a,r6
      001654 A3               [24]  692 	inc	dptr
      001655 F0               [24]  693 	movx	@dptr,a
      001656 EF               [12]  694 	mov	a,r7
      001657 A3               [24]  695 	inc	dptr
      001658 F0               [24]  696 	movx	@dptr,a
                                    697 ;	uart.c:93: printf("\033[1;%dm%s\033[0m", color_code, str);
      001659 90 05 02         [24]  698 	mov	dptr,#_print_colored_str_65536_102
      00165C E0               [24]  699 	movx	a,@dptr
      00165D C0 E0            [24]  700 	push	acc
      00165F A3               [24]  701 	inc	dptr
      001660 E0               [24]  702 	movx	a,@dptr
      001661 C0 E0            [24]  703 	push	acc
      001663 A3               [24]  704 	inc	dptr
      001664 E0               [24]  705 	movx	a,@dptr
      001665 C0 E0            [24]  706 	push	acc
      001667 90 05 00         [24]  707 	mov	dptr,#_print_colored_PARM_2
      00166A E0               [24]  708 	movx	a,@dptr
      00166B C0 E0            [24]  709 	push	acc
      00166D A3               [24]  710 	inc	dptr
      00166E E0               [24]  711 	movx	a,@dptr
      00166F C0 E0            [24]  712 	push	acc
      001671 74 FF            [12]  713 	mov	a,#___str_0
      001673 C0 E0            [24]  714 	push	acc
      001675 74 2E            [12]  715 	mov	a,#(___str_0 >> 8)
      001677 C0 E0            [24]  716 	push	acc
      001679 74 80            [12]  717 	mov	a,#0x80
      00167B C0 E0            [24]  718 	push	acc
      00167D 12 1F CC         [24]  719 	lcall	_printf
      001680 E5 81            [12]  720 	mov	a,sp
      001682 24 F8            [12]  721 	add	a,#0xf8
      001684 F5 81            [12]  722 	mov	sp,a
                                    723 ;	uart.c:94: }
      001686 22               [24]  724 	ret
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'print_UI'
                                    727 ;------------------------------------------------------------
                                    728 ;	uart.c:97: void print_UI(void)
                                    729 ;	-----------------------------------------
                                    730 ;	 function print_UI
                                    731 ;	-----------------------------------------
      001687                        732 _print_UI:
                                    733 ;	uart.c:99: print_colored("+-------------------------------------------------+\n\r", 35);
      001687 90 05 00         [24]  734 	mov	dptr,#_print_colored_PARM_2
      00168A 74 23            [12]  735 	mov	a,#0x23
      00168C F0               [24]  736 	movx	@dptr,a
      00168D E4               [12]  737 	clr	a
      00168E A3               [24]  738 	inc	dptr
      00168F F0               [24]  739 	movx	@dptr,a
      001690 90 2F 0D         [24]  740 	mov	dptr,#___str_1
      001693 75 F0 80         [24]  741 	mov	b,#0x80
      001696 12 16 49         [24]  742 	lcall	_print_colored
                                    743 ;	uart.c:100: print_colored("|           Hello STM32F411E-Discovery            |\n\r", 35);
      001699 90 05 00         [24]  744 	mov	dptr,#_print_colored_PARM_2
      00169C 74 23            [12]  745 	mov	a,#0x23
      00169E F0               [24]  746 	movx	@dptr,a
      00169F E4               [12]  747 	clr	a
      0016A0 A3               [24]  748 	inc	dptr
      0016A1 F0               [24]  749 	movx	@dptr,a
      0016A2 90 2F 43         [24]  750 	mov	dptr,#___str_2
      0016A5 75 F0 80         [24]  751 	mov	b,#0x80
      0016A8 12 16 49         [24]  752 	lcall	_print_colored
                                    753 ;	uart.c:101: print_colored("|                                                 |\n\r", 35);
      0016AB 90 05 00         [24]  754 	mov	dptr,#_print_colored_PARM_2
      0016AE 74 23            [12]  755 	mov	a,#0x23
      0016B0 F0               [24]  756 	movx	@dptr,a
      0016B1 E4               [12]  757 	clr	a
      0016B2 A3               [24]  758 	inc	dptr
      0016B3 F0               [24]  759 	movx	@dptr,a
      0016B4 90 2F 79         [24]  760 	mov	dptr,#___str_3
      0016B7 75 F0 80         [24]  761 	mov	b,#0x80
      0016BA 12 16 49         [24]  762 	lcall	_print_colored
                                    763 ;	uart.c:102: print_colored("+-------------------------------------------------+\n\r\n\r", 35);
      0016BD 90 05 00         [24]  764 	mov	dptr,#_print_colored_PARM_2
      0016C0 74 23            [12]  765 	mov	a,#0x23
      0016C2 F0               [24]  766 	movx	@dptr,a
      0016C3 E4               [12]  767 	clr	a
      0016C4 A3               [24]  768 	inc	dptr
      0016C5 F0               [24]  769 	movx	@dptr,a
      0016C6 90 2F AF         [24]  770 	mov	dptr,#___str_4
      0016C9 75 F0 80         [24]  771 	mov	b,#0x80
                                    772 ;	uart.c:191: }
      0016CC 02 16 49         [24]  773 	ljmp	_print_colored
                                    774 	.area CSEG    (CODE)
                                    775 	.area CONST   (CODE)
                                    776 	.area CONST   (CODE)
      002EFF                        777 ___str_0:
      002EFF 1B                     778 	.db 0x1b
      002F00 5B 31 3B 25 64 6D 25   779 	.ascii "[1;%dm%s"
             73
      002F08 1B                     780 	.db 0x1b
      002F09 5B 30 6D               781 	.ascii "[0m"
      002F0C 00                     782 	.db 0x00
                                    783 	.area CSEG    (CODE)
                                    784 	.area CONST   (CODE)
      002F0D                        785 ___str_1:
      002F0D 2B 2D 2D 2D 2D 2D 2D   786 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      002F40 0A                     787 	.db 0x0a
      002F41 0D                     788 	.db 0x0d
      002F42 00                     789 	.db 0x00
                                    790 	.area CSEG    (CODE)
                                    791 	.area CONST   (CODE)
      002F43                        792 ___str_2:
      002F43 7C 20 20 20 20 20 20   793 	.ascii "|           Hello STM32F411E-Discovery            |"
             20 20 20 20 20 48 65
             6C 6C 6F 20 53 54 4D
             33 32 46 34 31 31 45
             2D 44 69 73 63 6F 76
             65 72 79 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      002F76 0A                     794 	.db 0x0a
      002F77 0D                     795 	.db 0x0d
      002F78 00                     796 	.db 0x00
                                    797 	.area CSEG    (CODE)
                                    798 	.area CONST   (CODE)
      002F79                        799 ___str_3:
      002F79 7C 20 20 20 20 20 20   800 	.ascii "|                                                 |"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      002FAC 0A                     801 	.db 0x0a
      002FAD 0D                     802 	.db 0x0d
      002FAE 00                     803 	.db 0x00
                                    804 	.area CSEG    (CODE)
                                    805 	.area CONST   (CODE)
      002FAF                        806 ___str_4:
      002FAF 2B 2D 2D 2D 2D 2D 2D   807 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      002FE2 0A                     808 	.db 0x0a
      002FE3 0D                     809 	.db 0x0d
      002FE4 0A                     810 	.db 0x0a
      002FE5 0D                     811 	.db 0x0d
      002FE6 00                     812 	.db 0x00
                                    813 	.area CSEG    (CODE)
                                    814 	.area XINIT   (CODE)
                                    815 	.area CABS    (ABS,CODE)
