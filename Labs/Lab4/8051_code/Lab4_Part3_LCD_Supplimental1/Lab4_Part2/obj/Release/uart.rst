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
      000496                        482 _putchar_c_65536_94:
      000496                        483 	.ds 2
      000498                        484 _getchar_save_cursor_address_131072_98:
      000498                        485 	.ds 1
      000499                        486 _print_colored_PARM_2:
      000499                        487 	.ds 2
      00049B                        488 _print_colored_str_65536_99:
      00049B                        489 	.ds 3
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
      001113                        531 _uart_init:
                           000007   532 	ar7 = 0x07
                           000006   533 	ar6 = 0x06
                           000005   534 	ar5 = 0x05
                           000004   535 	ar4 = 0x04
                           000003   536 	ar3 = 0x03
                           000002   537 	ar2 = 0x02
                           000001   538 	ar1 = 0x01
                           000000   539 	ar0 = 0x00
                                    540 ;	uart.c:51: SCON = 0x50;    // UART in mode 1 (8 bit), REN=1
      001113 75 98 50         [24]  541 	mov	_SCON,#0x50
                                    542 ;	uart.c:52: TMOD |= 0x20;   // Timer 1 in mode 2
      001116 43 89 20         [24]  543 	orl	_TMOD,#0x20
                                    544 ;	uart.c:53: TH1 = 0xFD;     // 9600 Baud rate at 11.059MHz
      001119 75 8D FD         [24]  545 	mov	_TH1,#0xfd
                                    546 ;	uart.c:54: TL1 = 0xFD;     // 9600 Baud rate at 11.059MHz
      00111C 75 8B FD         [24]  547 	mov	_TL1,#0xfd
                                    548 ;	uart.c:55: TI = 0;         // Clear transmit interrupt flag
                                    549 ;	assignBit
      00111F C2 99            [12]  550 	clr	_TI
                                    551 ;	uart.c:56: SBUF = 0;       // Clear transmit buffer
      001121 75 99 00         [24]  552 	mov	_SBUF,#0x00
                                    553 ;	uart.c:57: TR1 = 1;        // Timer 1 run
                                    554 ;	assignBit
      001124 D2 8E            [12]  555 	setb	_TR1
                                    556 ;	uart.c:58: ES = 1;         // Enable serial interrupt
                                    557 ;	assignBit
      001126 D2 AC            [12]  558 	setb	_ES
                                    559 ;	uart.c:59: EA = 1;         // Enable global interrupt
                                    560 ;	assignBit
      001128 D2 AF            [12]  561 	setb	_EA
                                    562 ;	uart.c:60: }
      00112A 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'putchar'
                                    566 ;------------------------------------------------------------
                                    567 ;c                         Allocated with name '_putchar_c_65536_94'
                                    568 ;------------------------------------------------------------
                                    569 ;	uart.c:63: int putchar (int c) {
                                    570 ;	-----------------------------------------
                                    571 ;	 function putchar
                                    572 ;	-----------------------------------------
      00112B                        573 _putchar:
      00112B AF 83            [24]  574 	mov	r7,dph
      00112D E5 82            [12]  575 	mov	a,dpl
      00112F 90 04 96         [24]  576 	mov	dptr,#_putchar_c_65536_94
      001132 F0               [24]  577 	movx	@dptr,a
      001133 EF               [12]  578 	mov	a,r7
      001134 A3               [24]  579 	inc	dptr
      001135 F0               [24]  580 	movx	@dptr,a
                                    581 ;	uart.c:64: while (!TI);    // Wait for the transmit interrupt flag to be set
      001136                        582 00101$:
      001136 30 99 FD         [24]  583 	jnb	_TI,00101$
                                    584 ;	uart.c:65: SBUF = c;       // Load the transmit buffer with the character to send
      001139 90 04 96         [24]  585 	mov	dptr,#_putchar_c_65536_94
      00113C E0               [24]  586 	movx	a,@dptr
      00113D FE               [12]  587 	mov	r6,a
      00113E A3               [24]  588 	inc	dptr
      00113F E0               [24]  589 	movx	a,@dptr
      001140 FF               [12]  590 	mov	r7,a
      001141 8E 99            [24]  591 	mov	_SBUF,r6
                                    592 ;	uart.c:66: TI = 0;         // Clear transmit interrupt flag
                                    593 ;	assignBit
      001143 C2 99            [12]  594 	clr	_TI
                                    595 ;	uart.c:67: return c;
      001145 8E 82            [24]  596 	mov	dpl,r6
      001147 8F 83            [24]  597 	mov	dph,r7
                                    598 ;	uart.c:68: }
      001149 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'getchar'
                                    602 ;------------------------------------------------------------
                                    603 ;save_cursor_address       Allocated with name '_getchar_save_cursor_address_131072_98'
                                    604 ;------------------------------------------------------------
                                    605 ;	uart.c:71: int getchar (void)
                                    606 ;	-----------------------------------------
                                    607 ;	 function getchar
                                    608 ;	-----------------------------------------
      00114A                        609 _getchar:
                                    610 ;	uart.c:73: while (!RI)     // Wait for the receive interrupt flag to be set
      00114A                        611 00101$:
      00114A 20 98 5A         [24]  612 	jb	_RI,00103$
                                    613 ;	uart.c:75: volatile uint8_t save_cursor_address = get_cursor_address();   // Save the current cursor address
      00114D 12 01 74         [24]  614 	lcall	_get_cursor_address
      001150 E5 82            [12]  615 	mov	a,dpl
      001152 90 04 98         [24]  616 	mov	dptr,#_getchar_save_cursor_address_131072_98
      001155 F0               [24]  617 	movx	@dptr,a
                                    618 ;	uart.c:76: lcdgotoaddr(0x59);      // Set the cursor to the start of the line that displays the time
      001156 75 82 59         [24]  619 	mov	dpl,#0x59
      001159 12 01 81         [24]  620 	lcall	_lcdgotoaddr
                                    621 ;	uart.c:77: lcdputch(minutes_tens_digit);   // Display the tens digit of the minutes
      00115C 90 05 16         [24]  622 	mov	dptr,#_minutes_tens_digit
      00115F E0               [24]  623 	movx	a,@dptr
      001160 F5 82            [12]  624 	mov	dpl,a
      001162 12 02 57         [24]  625 	lcall	_lcdputch
                                    626 ;	uart.c:78: lcdputch(minutes_ones_digit);   // Display the ones digit of the minutes
      001165 90 05 15         [24]  627 	mov	dptr,#_minutes_ones_digit
      001168 E0               [24]  628 	movx	a,@dptr
      001169 F5 82            [12]  629 	mov	dpl,a
      00116B 12 02 57         [24]  630 	lcall	_lcdputch
                                    631 ;	uart.c:79: lcdputch(':');          // Display the colon separator
      00116E 75 82 3A         [24]  632 	mov	dpl,#0x3a
      001171 12 02 57         [24]  633 	lcall	_lcdputch
                                    634 ;	uart.c:80: lcdputch(seconds_tens_digit);   // Display the tens digit of the seconds
      001174 90 05 14         [24]  635 	mov	dptr,#_seconds_tens_digit
      001177 E0               [24]  636 	movx	a,@dptr
      001178 F5 82            [12]  637 	mov	dpl,a
      00117A 12 02 57         [24]  638 	lcall	_lcdputch
                                    639 ;	uart.c:81: lcdputch(seconds_ones_digit);   // Display the ones digit of the seconds
      00117D 90 05 13         [24]  640 	mov	dptr,#_seconds_ones_digit
      001180 E0               [24]  641 	movx	a,@dptr
      001181 F5 82            [12]  642 	mov	dpl,a
      001183 12 02 57         [24]  643 	lcall	_lcdputch
                                    644 ;	uart.c:82: lcdputch('.');          // Display the decimal point separator
      001186 75 82 2E         [24]  645 	mov	dpl,#0x2e
      001189 12 02 57         [24]  646 	lcall	_lcdputch
                                    647 ;	uart.c:83: lcdputch(tenth_of_second);      // Display the tenths of seconds
      00118C 90 05 12         [24]  648 	mov	dptr,#_tenth_of_second
      00118F E0               [24]  649 	movx	a,@dptr
      001190 F5 82            [12]  650 	mov	dpl,a
      001192 12 02 57         [24]  651 	lcall	_lcdputch
                                    652 ;	uart.c:84: lcdgotoaddr(save_cursor_address);   // Restore the cursor to the previous location
      001195 90 04 98         [24]  653 	mov	dptr,#_getchar_save_cursor_address_131072_98
      001198 E0               [24]  654 	movx	a,@dptr
      001199 F5 82            [12]  655 	mov	dpl,a
      00119B 12 01 81         [24]  656 	lcall	_lcdgotoaddr
                                    657 ;	uart.c:85: update_lcd = 0;         // Reset the flag that indicates a change in the time display
      00119E 90 05 10         [24]  658 	mov	dptr,#_update_lcd
      0011A1 E4               [12]  659 	clr	a
      0011A2 F0               [24]  660 	movx	@dptr,a
      0011A3 A3               [24]  661 	inc	dptr
      0011A4 F0               [24]  662 	movx	@dptr,a
      0011A5 80 A3            [24]  663 	sjmp	00101$
      0011A7                        664 00103$:
                                    665 ;	uart.c:87: RI = 0;             // Clear receive interrupt flag
                                    666 ;	assignBit
      0011A7 C2 98            [12]  667 	clr	_RI
                                    668 ;	uart.c:88: return SBUF;        // Return the received character from the receive buffer
      0011A9 AE 99            [24]  669 	mov	r6,_SBUF
      0011AB 7F 00            [12]  670 	mov	r7,#0x00
      0011AD 8E 82            [24]  671 	mov	dpl,r6
      0011AF 8F 83            [24]  672 	mov	dph,r7
                                    673 ;	uart.c:89: }
      0011B1 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'print_colored'
                                    677 ;------------------------------------------------------------
                                    678 ;color_code                Allocated with name '_print_colored_PARM_2'
                                    679 ;str                       Allocated with name '_print_colored_str_65536_99'
                                    680 ;------------------------------------------------------------
                                    681 ;	uart.c:92: void print_colored(char* str, int color_code) {
                                    682 ;	-----------------------------------------
                                    683 ;	 function print_colored
                                    684 ;	-----------------------------------------
      0011B2                        685 _print_colored:
      0011B2 AF F0            [24]  686 	mov	r7,b
      0011B4 AE 83            [24]  687 	mov	r6,dph
      0011B6 E5 82            [12]  688 	mov	a,dpl
      0011B8 90 04 9B         [24]  689 	mov	dptr,#_print_colored_str_65536_99
      0011BB F0               [24]  690 	movx	@dptr,a
      0011BC EE               [12]  691 	mov	a,r6
      0011BD A3               [24]  692 	inc	dptr
      0011BE F0               [24]  693 	movx	@dptr,a
      0011BF EF               [12]  694 	mov	a,r7
      0011C0 A3               [24]  695 	inc	dptr
      0011C1 F0               [24]  696 	movx	@dptr,a
                                    697 ;	uart.c:93: printf("\033[1;%dm%s\033[0m", color_code, str);
      0011C2 90 04 9B         [24]  698 	mov	dptr,#_print_colored_str_65536_99
      0011C5 E0               [24]  699 	movx	a,@dptr
      0011C6 C0 E0            [24]  700 	push	acc
      0011C8 A3               [24]  701 	inc	dptr
      0011C9 E0               [24]  702 	movx	a,@dptr
      0011CA C0 E0            [24]  703 	push	acc
      0011CC A3               [24]  704 	inc	dptr
      0011CD E0               [24]  705 	movx	a,@dptr
      0011CE C0 E0            [24]  706 	push	acc
      0011D0 90 04 99         [24]  707 	mov	dptr,#_print_colored_PARM_2
      0011D3 E0               [24]  708 	movx	a,@dptr
      0011D4 C0 E0            [24]  709 	push	acc
      0011D6 A3               [24]  710 	inc	dptr
      0011D7 E0               [24]  711 	movx	a,@dptr
      0011D8 C0 E0            [24]  712 	push	acc
      0011DA 74 58            [12]  713 	mov	a,#___str_0
      0011DC C0 E0            [24]  714 	push	acc
      0011DE 74 2F            [12]  715 	mov	a,#(___str_0 >> 8)
      0011E0 C0 E0            [24]  716 	push	acc
      0011E2 74 80            [12]  717 	mov	a,#0x80
      0011E4 C0 E0            [24]  718 	push	acc
      0011E6 12 20 B5         [24]  719 	lcall	_printf
      0011E9 E5 81            [12]  720 	mov	a,sp
      0011EB 24 F8            [12]  721 	add	a,#0xf8
      0011ED F5 81            [12]  722 	mov	sp,a
                                    723 ;	uart.c:94: }
      0011EF 22               [24]  724 	ret
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'print_UI'
                                    727 ;------------------------------------------------------------
                                    728 ;	uart.c:97: void print_UI(void)
                                    729 ;	-----------------------------------------
                                    730 ;	 function print_UI
                                    731 ;	-----------------------------------------
      0011F0                        732 _print_UI:
                                    733 ;	uart.c:99: print_colored("+-------------------------------------------------+\n\r", 35);
      0011F0 90 04 99         [24]  734 	mov	dptr,#_print_colored_PARM_2
      0011F3 74 23            [12]  735 	mov	a,#0x23
      0011F5 F0               [24]  736 	movx	@dptr,a
      0011F6 E4               [12]  737 	clr	a
      0011F7 A3               [24]  738 	inc	dptr
      0011F8 F0               [24]  739 	movx	@dptr,a
      0011F9 90 2F 66         [24]  740 	mov	dptr,#___str_1
      0011FC 75 F0 80         [24]  741 	mov	b,#0x80
      0011FF 12 11 B2         [24]  742 	lcall	_print_colored
                                    743 ;	uart.c:100: print_colored("|           USER INTERFACE Lab 4 Part 2           |\n\r", 35);
      001202 90 04 99         [24]  744 	mov	dptr,#_print_colored_PARM_2
      001205 74 23            [12]  745 	mov	a,#0x23
      001207 F0               [24]  746 	movx	@dptr,a
      001208 E4               [12]  747 	clr	a
      001209 A3               [24]  748 	inc	dptr
      00120A F0               [24]  749 	movx	@dptr,a
      00120B 90 2F 9C         [24]  750 	mov	dptr,#___str_2
      00120E 75 F0 80         [24]  751 	mov	b,#0x80
      001211 12 11 B2         [24]  752 	lcall	_print_colored
                                    753 ;	uart.c:101: print_colored("|                      LCD                        |\n\r", 35);
      001214 90 04 99         [24]  754 	mov	dptr,#_print_colored_PARM_2
      001217 74 23            [12]  755 	mov	a,#0x23
      001219 F0               [24]  756 	movx	@dptr,a
      00121A E4               [12]  757 	clr	a
      00121B A3               [24]  758 	inc	dptr
      00121C F0               [24]  759 	movx	@dptr,a
      00121D 90 2F D2         [24]  760 	mov	dptr,#___str_3
      001220 75 F0 80         [24]  761 	mov	b,#0x80
      001223 12 11 B2         [24]  762 	lcall	_print_colored
                                    763 ;	uart.c:102: print_colored("+-------------------------------------------------+\n\r\n\r", 35);
      001226 90 04 99         [24]  764 	mov	dptr,#_print_colored_PARM_2
      001229 74 23            [12]  765 	mov	a,#0x23
      00122B F0               [24]  766 	movx	@dptr,a
      00122C E4               [12]  767 	clr	a
      00122D A3               [24]  768 	inc	dptr
      00122E F0               [24]  769 	movx	@dptr,a
      00122F 90 30 08         [24]  770 	mov	dptr,#___str_4
      001232 75 F0 80         [24]  771 	mov	b,#0x80
      001235 12 11 B2         [24]  772 	lcall	_print_colored
                                    773 ;	uart.c:104: printf("        ");
      001238 74 40            [12]  774 	mov	a,#___str_5
      00123A C0 E0            [24]  775 	push	acc
      00123C 74 30            [12]  776 	mov	a,#(___str_5 >> 8)
      00123E C0 E0            [24]  777 	push	acc
      001240 74 80            [12]  778 	mov	a,#0x80
      001242 C0 E0            [24]  779 	push	acc
      001244 12 20 B5         [24]  780 	lcall	_printf
      001247 15 81            [12]  781 	dec	sp
      001249 15 81            [12]  782 	dec	sp
      00124B 15 81            [12]  783 	dec	sp
                                    784 ;	uart.c:105: print_colored("Please select an option below:\n\r", 34);
      00124D 90 04 99         [24]  785 	mov	dptr,#_print_colored_PARM_2
      001250 74 22            [12]  786 	mov	a,#0x22
      001252 F0               [24]  787 	movx	@dptr,a
      001253 E4               [12]  788 	clr	a
      001254 A3               [24]  789 	inc	dptr
      001255 F0               [24]  790 	movx	@dptr,a
      001256 90 30 49         [24]  791 	mov	dptr,#___str_6
      001259 75 F0 80         [24]  792 	mov	b,#0x80
      00125C 12 11 B2         [24]  793 	lcall	_print_colored
                                    794 ;	uart.c:106: printf("\n\r");
      00125F 74 6A            [12]  795 	mov	a,#___str_7
      001261 C0 E0            [24]  796 	push	acc
      001263 74 30            [12]  797 	mov	a,#(___str_7 >> 8)
      001265 C0 E0            [24]  798 	push	acc
      001267 74 80            [12]  799 	mov	a,#0x80
      001269 C0 E0            [24]  800 	push	acc
      00126B 12 20 B5         [24]  801 	lcall	_printf
      00126E 15 81            [12]  802 	dec	sp
      001270 15 81            [12]  803 	dec	sp
      001272 15 81            [12]  804 	dec	sp
                                    805 ;	uart.c:108: printf("   ");
      001274 74 6D            [12]  806 	mov	a,#___str_8
      001276 C0 E0            [24]  807 	push	acc
      001278 74 30            [12]  808 	mov	a,#(___str_8 >> 8)
      00127A C0 E0            [24]  809 	push	acc
      00127C 74 80            [12]  810 	mov	a,#0x80
      00127E C0 E0            [24]  811 	push	acc
      001280 12 20 B5         [24]  812 	lcall	_printf
      001283 15 81            [12]  813 	dec	sp
      001285 15 81            [12]  814 	dec	sp
      001287 15 81            [12]  815 	dec	sp
                                    816 ;	uart.c:109: print_colored("+---------------------------------------------+\n\r", 36);
      001289 90 04 99         [24]  817 	mov	dptr,#_print_colored_PARM_2
      00128C 74 24            [12]  818 	mov	a,#0x24
      00128E F0               [24]  819 	movx	@dptr,a
      00128F E4               [12]  820 	clr	a
      001290 A3               [24]  821 	inc	dptr
      001291 F0               [24]  822 	movx	@dptr,a
      001292 90 30 71         [24]  823 	mov	dptr,#___str_9
      001295 75 F0 80         [24]  824 	mov	b,#0x80
      001298 12 11 B2         [24]  825 	lcall	_print_colored
                                    826 ;	uart.c:110: printf("   ");
      00129B 74 6D            [12]  827 	mov	a,#___str_8
      00129D C0 E0            [24]  828 	push	acc
      00129F 74 30            [12]  829 	mov	a,#(___str_8 >> 8)
      0012A1 C0 E0            [24]  830 	push	acc
      0012A3 74 80            [12]  831 	mov	a,#0x80
      0012A5 C0 E0            [24]  832 	push	acc
      0012A7 12 20 B5         [24]  833 	lcall	_printf
      0012AA 15 81            [12]  834 	dec	sp
      0012AC 15 81            [12]  835 	dec	sp
      0012AE 15 81            [12]  836 	dec	sp
                                    837 ;	uart.c:111: print_colored("| ", 36);
      0012B0 90 04 99         [24]  838 	mov	dptr,#_print_colored_PARM_2
      0012B3 74 24            [12]  839 	mov	a,#0x24
      0012B5 F0               [24]  840 	movx	@dptr,a
      0012B6 E4               [12]  841 	clr	a
      0012B7 A3               [24]  842 	inc	dptr
      0012B8 F0               [24]  843 	movx	@dptr,a
      0012B9 90 30 A3         [24]  844 	mov	dptr,#___str_10
      0012BC 75 F0 80         [24]  845 	mov	b,#0x80
      0012BF 12 11 B2         [24]  846 	lcall	_print_colored
                                    847 ;	uart.c:112: print_colored("[A] Write a character to LCD                ", 31);
      0012C2 90 04 99         [24]  848 	mov	dptr,#_print_colored_PARM_2
      0012C5 74 1F            [12]  849 	mov	a,#0x1f
      0012C7 F0               [24]  850 	movx	@dptr,a
      0012C8 E4               [12]  851 	clr	a
      0012C9 A3               [24]  852 	inc	dptr
      0012CA F0               [24]  853 	movx	@dptr,a
      0012CB 90 30 A6         [24]  854 	mov	dptr,#___str_11
      0012CE 75 F0 80         [24]  855 	mov	b,#0x80
      0012D1 12 11 B2         [24]  856 	lcall	_print_colored
                                    857 ;	uart.c:113: print_colored("| ", 36);
      0012D4 90 04 99         [24]  858 	mov	dptr,#_print_colored_PARM_2
      0012D7 74 24            [12]  859 	mov	a,#0x24
      0012D9 F0               [24]  860 	movx	@dptr,a
      0012DA E4               [12]  861 	clr	a
      0012DB A3               [24]  862 	inc	dptr
      0012DC F0               [24]  863 	movx	@dptr,a
      0012DD 90 30 A3         [24]  864 	mov	dptr,#___str_10
      0012E0 75 F0 80         [24]  865 	mov	b,#0x80
      0012E3 12 11 B2         [24]  866 	lcall	_print_colored
                                    867 ;	uart.c:114: printf("\n\r");
      0012E6 74 6A            [12]  868 	mov	a,#___str_7
      0012E8 C0 E0            [24]  869 	push	acc
      0012EA 74 30            [12]  870 	mov	a,#(___str_7 >> 8)
      0012EC C0 E0            [24]  871 	push	acc
      0012EE 74 80            [12]  872 	mov	a,#0x80
      0012F0 C0 E0            [24]  873 	push	acc
      0012F2 12 20 B5         [24]  874 	lcall	_printf
      0012F5 15 81            [12]  875 	dec	sp
      0012F7 15 81            [12]  876 	dec	sp
      0012F9 15 81            [12]  877 	dec	sp
                                    878 ;	uart.c:116: printf("   ");
      0012FB 74 6D            [12]  879 	mov	a,#___str_8
      0012FD C0 E0            [24]  880 	push	acc
      0012FF 74 30            [12]  881 	mov	a,#(___str_8 >> 8)
      001301 C0 E0            [24]  882 	push	acc
      001303 74 80            [12]  883 	mov	a,#0x80
      001305 C0 E0            [24]  884 	push	acc
      001307 12 20 B5         [24]  885 	lcall	_printf
      00130A 15 81            [12]  886 	dec	sp
      00130C 15 81            [12]  887 	dec	sp
      00130E 15 81            [12]  888 	dec	sp
                                    889 ;	uart.c:117: print_colored("| ", 36);
      001310 90 04 99         [24]  890 	mov	dptr,#_print_colored_PARM_2
      001313 74 24            [12]  891 	mov	a,#0x24
      001315 F0               [24]  892 	movx	@dptr,a
      001316 E4               [12]  893 	clr	a
      001317 A3               [24]  894 	inc	dptr
      001318 F0               [24]  895 	movx	@dptr,a
      001319 90 30 A3         [24]  896 	mov	dptr,#___str_10
      00131C 75 F0 80         [24]  897 	mov	b,#0x80
      00131F 12 11 B2         [24]  898 	lcall	_print_colored
                                    899 ;	uart.c:118: print_colored("[B] Write a string to LCD                   ", 32);
      001322 90 04 99         [24]  900 	mov	dptr,#_print_colored_PARM_2
      001325 74 20            [12]  901 	mov	a,#0x20
      001327 F0               [24]  902 	movx	@dptr,a
      001328 E4               [12]  903 	clr	a
      001329 A3               [24]  904 	inc	dptr
      00132A F0               [24]  905 	movx	@dptr,a
      00132B 90 30 D3         [24]  906 	mov	dptr,#___str_12
      00132E 75 F0 80         [24]  907 	mov	b,#0x80
      001331 12 11 B2         [24]  908 	lcall	_print_colored
                                    909 ;	uart.c:119: print_colored("| ", 36);
      001334 90 04 99         [24]  910 	mov	dptr,#_print_colored_PARM_2
      001337 74 24            [12]  911 	mov	a,#0x24
      001339 F0               [24]  912 	movx	@dptr,a
      00133A E4               [12]  913 	clr	a
      00133B A3               [24]  914 	inc	dptr
      00133C F0               [24]  915 	movx	@dptr,a
      00133D 90 30 A3         [24]  916 	mov	dptr,#___str_10
      001340 75 F0 80         [24]  917 	mov	b,#0x80
      001343 12 11 B2         [24]  918 	lcall	_print_colored
                                    919 ;	uart.c:120: printf("\n\r");
      001346 74 6A            [12]  920 	mov	a,#___str_7
      001348 C0 E0            [24]  921 	push	acc
      00134A 74 30            [12]  922 	mov	a,#(___str_7 >> 8)
      00134C C0 E0            [24]  923 	push	acc
      00134E 74 80            [12]  924 	mov	a,#0x80
      001350 C0 E0            [24]  925 	push	acc
      001352 12 20 B5         [24]  926 	lcall	_printf
      001355 15 81            [12]  927 	dec	sp
      001357 15 81            [12]  928 	dec	sp
      001359 15 81            [12]  929 	dec	sp
                                    930 ;	uart.c:122: printf("   ");
      00135B 74 6D            [12]  931 	mov	a,#___str_8
      00135D C0 E0            [24]  932 	push	acc
      00135F 74 30            [12]  933 	mov	a,#(___str_8 >> 8)
      001361 C0 E0            [24]  934 	push	acc
      001363 74 80            [12]  935 	mov	a,#0x80
      001365 C0 E0            [24]  936 	push	acc
      001367 12 20 B5         [24]  937 	lcall	_printf
      00136A 15 81            [12]  938 	dec	sp
      00136C 15 81            [12]  939 	dec	sp
      00136E 15 81            [12]  940 	dec	sp
                                    941 ;	uart.c:123: print_colored("| ", 36);
      001370 90 04 99         [24]  942 	mov	dptr,#_print_colored_PARM_2
      001373 74 24            [12]  943 	mov	a,#0x24
      001375 F0               [24]  944 	movx	@dptr,a
      001376 E4               [12]  945 	clr	a
      001377 A3               [24]  946 	inc	dptr
      001378 F0               [24]  947 	movx	@dptr,a
      001379 90 30 A3         [24]  948 	mov	dptr,#___str_10
      00137C 75 F0 80         [24]  949 	mov	b,#0x80
      00137F 12 11 B2         [24]  950 	lcall	_print_colored
                                    951 ;	uart.c:124: print_colored("[C] Go to Address (0xNN)                    ", 33);
      001382 90 04 99         [24]  952 	mov	dptr,#_print_colored_PARM_2
      001385 74 21            [12]  953 	mov	a,#0x21
      001387 F0               [24]  954 	movx	@dptr,a
      001388 E4               [12]  955 	clr	a
      001389 A3               [24]  956 	inc	dptr
      00138A F0               [24]  957 	movx	@dptr,a
      00138B 90 31 00         [24]  958 	mov	dptr,#___str_13
      00138E 75 F0 80         [24]  959 	mov	b,#0x80
      001391 12 11 B2         [24]  960 	lcall	_print_colored
                                    961 ;	uart.c:125: print_colored("| ", 36);
      001394 90 04 99         [24]  962 	mov	dptr,#_print_colored_PARM_2
      001397 74 24            [12]  963 	mov	a,#0x24
      001399 F0               [24]  964 	movx	@dptr,a
      00139A E4               [12]  965 	clr	a
      00139B A3               [24]  966 	inc	dptr
      00139C F0               [24]  967 	movx	@dptr,a
      00139D 90 30 A3         [24]  968 	mov	dptr,#___str_10
      0013A0 75 F0 80         [24]  969 	mov	b,#0x80
      0013A3 12 11 B2         [24]  970 	lcall	_print_colored
                                    971 ;	uart.c:126: printf("\n\r");
      0013A6 74 6A            [12]  972 	mov	a,#___str_7
      0013A8 C0 E0            [24]  973 	push	acc
      0013AA 74 30            [12]  974 	mov	a,#(___str_7 >> 8)
      0013AC C0 E0            [24]  975 	push	acc
      0013AE 74 80            [12]  976 	mov	a,#0x80
      0013B0 C0 E0            [24]  977 	push	acc
      0013B2 12 20 B5         [24]  978 	lcall	_printf
      0013B5 15 81            [12]  979 	dec	sp
      0013B7 15 81            [12]  980 	dec	sp
      0013B9 15 81            [12]  981 	dec	sp
                                    982 ;	uart.c:128: printf("   ");
      0013BB 74 6D            [12]  983 	mov	a,#___str_8
      0013BD C0 E0            [24]  984 	push	acc
      0013BF 74 30            [12]  985 	mov	a,#(___str_8 >> 8)
      0013C1 C0 E0            [24]  986 	push	acc
      0013C3 74 80            [12]  987 	mov	a,#0x80
      0013C5 C0 E0            [24]  988 	push	acc
      0013C7 12 20 B5         [24]  989 	lcall	_printf
      0013CA 15 81            [12]  990 	dec	sp
      0013CC 15 81            [12]  991 	dec	sp
      0013CE 15 81            [12]  992 	dec	sp
                                    993 ;	uart.c:129: print_colored("| ", 36);
      0013D0 90 04 99         [24]  994 	mov	dptr,#_print_colored_PARM_2
      0013D3 74 24            [12]  995 	mov	a,#0x24
      0013D5 F0               [24]  996 	movx	@dptr,a
      0013D6 E4               [12]  997 	clr	a
      0013D7 A3               [24]  998 	inc	dptr
      0013D8 F0               [24]  999 	movx	@dptr,a
      0013D9 90 30 A3         [24] 1000 	mov	dptr,#___str_10
      0013DC 75 F0 80         [24] 1001 	mov	b,#0x80
      0013DF 12 11 B2         [24] 1002 	lcall	_print_colored
                                   1003 ;	uart.c:130: print_colored("[D] Go to Co-ordinates (x,y)                ", 31);
      0013E2 90 04 99         [24] 1004 	mov	dptr,#_print_colored_PARM_2
      0013E5 74 1F            [12] 1005 	mov	a,#0x1f
      0013E7 F0               [24] 1006 	movx	@dptr,a
      0013E8 E4               [12] 1007 	clr	a
      0013E9 A3               [24] 1008 	inc	dptr
      0013EA F0               [24] 1009 	movx	@dptr,a
      0013EB 90 31 2D         [24] 1010 	mov	dptr,#___str_14
      0013EE 75 F0 80         [24] 1011 	mov	b,#0x80
      0013F1 12 11 B2         [24] 1012 	lcall	_print_colored
                                   1013 ;	uart.c:131: print_colored("| ", 36);
      0013F4 90 04 99         [24] 1014 	mov	dptr,#_print_colored_PARM_2
      0013F7 74 24            [12] 1015 	mov	a,#0x24
      0013F9 F0               [24] 1016 	movx	@dptr,a
      0013FA E4               [12] 1017 	clr	a
      0013FB A3               [24] 1018 	inc	dptr
      0013FC F0               [24] 1019 	movx	@dptr,a
      0013FD 90 30 A3         [24] 1020 	mov	dptr,#___str_10
      001400 75 F0 80         [24] 1021 	mov	b,#0x80
      001403 12 11 B2         [24] 1022 	lcall	_print_colored
                                   1023 ;	uart.c:132: printf("\n\r");
      001406 74 6A            [12] 1024 	mov	a,#___str_7
      001408 C0 E0            [24] 1025 	push	acc
      00140A 74 30            [12] 1026 	mov	a,#(___str_7 >> 8)
      00140C C0 E0            [24] 1027 	push	acc
      00140E 74 80            [12] 1028 	mov	a,#0x80
      001410 C0 E0            [24] 1029 	push	acc
      001412 12 20 B5         [24] 1030 	lcall	_printf
      001415 15 81            [12] 1031 	dec	sp
      001417 15 81            [12] 1032 	dec	sp
      001419 15 81            [12] 1033 	dec	sp
                                   1034 ;	uart.c:134: printf("   ");
      00141B 74 6D            [12] 1035 	mov	a,#___str_8
      00141D C0 E0            [24] 1036 	push	acc
      00141F 74 30            [12] 1037 	mov	a,#(___str_8 >> 8)
      001421 C0 E0            [24] 1038 	push	acc
      001423 74 80            [12] 1039 	mov	a,#0x80
      001425 C0 E0            [24] 1040 	push	acc
      001427 12 20 B5         [24] 1041 	lcall	_printf
      00142A 15 81            [12] 1042 	dec	sp
      00142C 15 81            [12] 1043 	dec	sp
      00142E 15 81            [12] 1044 	dec	sp
                                   1045 ;	uart.c:135: print_colored("| ", 36);
      001430 90 04 99         [24] 1046 	mov	dptr,#_print_colored_PARM_2
      001433 74 24            [12] 1047 	mov	a,#0x24
      001435 F0               [24] 1048 	movx	@dptr,a
      001436 E4               [12] 1049 	clr	a
      001437 A3               [24] 1050 	inc	dptr
      001438 F0               [24] 1051 	movx	@dptr,a
      001439 90 30 A3         [24] 1052 	mov	dptr,#___str_10
      00143C 75 F0 80         [24] 1053 	mov	b,#0x80
      00143F 12 11 B2         [24] 1054 	lcall	_print_colored
                                   1055 ;	uart.c:136: print_colored("[E] Stop Elapsed Time                       ", 32);
      001442 90 04 99         [24] 1056 	mov	dptr,#_print_colored_PARM_2
      001445 74 20            [12] 1057 	mov	a,#0x20
      001447 F0               [24] 1058 	movx	@dptr,a
      001448 E4               [12] 1059 	clr	a
      001449 A3               [24] 1060 	inc	dptr
      00144A F0               [24] 1061 	movx	@dptr,a
      00144B 90 31 5A         [24] 1062 	mov	dptr,#___str_15
      00144E 75 F0 80         [24] 1063 	mov	b,#0x80
      001451 12 11 B2         [24] 1064 	lcall	_print_colored
                                   1065 ;	uart.c:137: print_colored("| ", 36);
      001454 90 04 99         [24] 1066 	mov	dptr,#_print_colored_PARM_2
      001457 74 24            [12] 1067 	mov	a,#0x24
      001459 F0               [24] 1068 	movx	@dptr,a
      00145A E4               [12] 1069 	clr	a
      00145B A3               [24] 1070 	inc	dptr
      00145C F0               [24] 1071 	movx	@dptr,a
      00145D 90 30 A3         [24] 1072 	mov	dptr,#___str_10
      001460 75 F0 80         [24] 1073 	mov	b,#0x80
      001463 12 11 B2         [24] 1074 	lcall	_print_colored
                                   1075 ;	uart.c:138: printf("\n\r");
      001466 74 6A            [12] 1076 	mov	a,#___str_7
      001468 C0 E0            [24] 1077 	push	acc
      00146A 74 30            [12] 1078 	mov	a,#(___str_7 >> 8)
      00146C C0 E0            [24] 1079 	push	acc
      00146E 74 80            [12] 1080 	mov	a,#0x80
      001470 C0 E0            [24] 1081 	push	acc
      001472 12 20 B5         [24] 1082 	lcall	_printf
      001475 15 81            [12] 1083 	dec	sp
      001477 15 81            [12] 1084 	dec	sp
      001479 15 81            [12] 1085 	dec	sp
                                   1086 ;	uart.c:140: printf("   ");
      00147B 74 6D            [12] 1087 	mov	a,#___str_8
      00147D C0 E0            [24] 1088 	push	acc
      00147F 74 30            [12] 1089 	mov	a,#(___str_8 >> 8)
      001481 C0 E0            [24] 1090 	push	acc
      001483 74 80            [12] 1091 	mov	a,#0x80
      001485 C0 E0            [24] 1092 	push	acc
      001487 12 20 B5         [24] 1093 	lcall	_printf
      00148A 15 81            [12] 1094 	dec	sp
      00148C 15 81            [12] 1095 	dec	sp
      00148E 15 81            [12] 1096 	dec	sp
                                   1097 ;	uart.c:141: print_colored("| ", 36);
      001490 90 04 99         [24] 1098 	mov	dptr,#_print_colored_PARM_2
      001493 74 24            [12] 1099 	mov	a,#0x24
      001495 F0               [24] 1100 	movx	@dptr,a
      001496 E4               [12] 1101 	clr	a
      001497 A3               [24] 1102 	inc	dptr
      001498 F0               [24] 1103 	movx	@dptr,a
      001499 90 30 A3         [24] 1104 	mov	dptr,#___str_10
      00149C 75 F0 80         [24] 1105 	mov	b,#0x80
      00149F 12 11 B2         [24] 1106 	lcall	_print_colored
                                   1107 ;	uart.c:142: print_colored("[F] Resume Elapsed Time                     ", 33);
      0014A2 90 04 99         [24] 1108 	mov	dptr,#_print_colored_PARM_2
      0014A5 74 21            [12] 1109 	mov	a,#0x21
      0014A7 F0               [24] 1110 	movx	@dptr,a
      0014A8 E4               [12] 1111 	clr	a
      0014A9 A3               [24] 1112 	inc	dptr
      0014AA F0               [24] 1113 	movx	@dptr,a
      0014AB 90 31 87         [24] 1114 	mov	dptr,#___str_16
      0014AE 75 F0 80         [24] 1115 	mov	b,#0x80
      0014B1 12 11 B2         [24] 1116 	lcall	_print_colored
                                   1117 ;	uart.c:143: print_colored("| ", 36);
      0014B4 90 04 99         [24] 1118 	mov	dptr,#_print_colored_PARM_2
      0014B7 74 24            [12] 1119 	mov	a,#0x24
      0014B9 F0               [24] 1120 	movx	@dptr,a
      0014BA E4               [12] 1121 	clr	a
      0014BB A3               [24] 1122 	inc	dptr
      0014BC F0               [24] 1123 	movx	@dptr,a
      0014BD 90 30 A3         [24] 1124 	mov	dptr,#___str_10
      0014C0 75 F0 80         [24] 1125 	mov	b,#0x80
      0014C3 12 11 B2         [24] 1126 	lcall	_print_colored
                                   1127 ;	uart.c:144: printf("\n\r");
      0014C6 74 6A            [12] 1128 	mov	a,#___str_7
      0014C8 C0 E0            [24] 1129 	push	acc
      0014CA 74 30            [12] 1130 	mov	a,#(___str_7 >> 8)
      0014CC C0 E0            [24] 1131 	push	acc
      0014CE 74 80            [12] 1132 	mov	a,#0x80
      0014D0 C0 E0            [24] 1133 	push	acc
      0014D2 12 20 B5         [24] 1134 	lcall	_printf
      0014D5 15 81            [12] 1135 	dec	sp
      0014D7 15 81            [12] 1136 	dec	sp
      0014D9 15 81            [12] 1137 	dec	sp
                                   1138 ;	uart.c:146: printf("   ");
      0014DB 74 6D            [12] 1139 	mov	a,#___str_8
      0014DD C0 E0            [24] 1140 	push	acc
      0014DF 74 30            [12] 1141 	mov	a,#(___str_8 >> 8)
      0014E1 C0 E0            [24] 1142 	push	acc
      0014E3 74 80            [12] 1143 	mov	a,#0x80
      0014E5 C0 E0            [24] 1144 	push	acc
      0014E7 12 20 B5         [24] 1145 	lcall	_printf
      0014EA 15 81            [12] 1146 	dec	sp
      0014EC 15 81            [12] 1147 	dec	sp
      0014EE 15 81            [12] 1148 	dec	sp
                                   1149 ;	uart.c:147: print_colored("| ", 36);
      0014F0 90 04 99         [24] 1150 	mov	dptr,#_print_colored_PARM_2
      0014F3 74 24            [12] 1151 	mov	a,#0x24
      0014F5 F0               [24] 1152 	movx	@dptr,a
      0014F6 E4               [12] 1153 	clr	a
      0014F7 A3               [24] 1154 	inc	dptr
      0014F8 F0               [24] 1155 	movx	@dptr,a
      0014F9 90 30 A3         [24] 1156 	mov	dptr,#___str_10
      0014FC 75 F0 80         [24] 1157 	mov	b,#0x80
      0014FF 12 11 B2         [24] 1158 	lcall	_print_colored
                                   1159 ;	uart.c:148: print_colored("[G] Reset time to 00:00:0                   ", 31);
      001502 90 04 99         [24] 1160 	mov	dptr,#_print_colored_PARM_2
      001505 74 1F            [12] 1161 	mov	a,#0x1f
      001507 F0               [24] 1162 	movx	@dptr,a
      001508 E4               [12] 1163 	clr	a
      001509 A3               [24] 1164 	inc	dptr
      00150A F0               [24] 1165 	movx	@dptr,a
      00150B 90 31 B4         [24] 1166 	mov	dptr,#___str_17
      00150E 75 F0 80         [24] 1167 	mov	b,#0x80
      001511 12 11 B2         [24] 1168 	lcall	_print_colored
                                   1169 ;	uart.c:149: print_colored("| ", 36);
      001514 90 04 99         [24] 1170 	mov	dptr,#_print_colored_PARM_2
      001517 74 24            [12] 1171 	mov	a,#0x24
      001519 F0               [24] 1172 	movx	@dptr,a
      00151A E4               [12] 1173 	clr	a
      00151B A3               [24] 1174 	inc	dptr
      00151C F0               [24] 1175 	movx	@dptr,a
      00151D 90 30 A3         [24] 1176 	mov	dptr,#___str_10
      001520 75 F0 80         [24] 1177 	mov	b,#0x80
      001523 12 11 B2         [24] 1178 	lcall	_print_colored
                                   1179 ;	uart.c:150: printf("\n\r");
      001526 74 6A            [12] 1180 	mov	a,#___str_7
      001528 C0 E0            [24] 1181 	push	acc
      00152A 74 30            [12] 1182 	mov	a,#(___str_7 >> 8)
      00152C C0 E0            [24] 1183 	push	acc
      00152E 74 80            [12] 1184 	mov	a,#0x80
      001530 C0 E0            [24] 1185 	push	acc
      001532 12 20 B5         [24] 1186 	lcall	_printf
      001535 15 81            [12] 1187 	dec	sp
      001537 15 81            [12] 1188 	dec	sp
      001539 15 81            [12] 1189 	dec	sp
                                   1190 ;	uart.c:152: printf("   ");
      00153B 74 6D            [12] 1191 	mov	a,#___str_8
      00153D C0 E0            [24] 1192 	push	acc
      00153F 74 30            [12] 1193 	mov	a,#(___str_8 >> 8)
      001541 C0 E0            [24] 1194 	push	acc
      001543 74 80            [12] 1195 	mov	a,#0x80
      001545 C0 E0            [24] 1196 	push	acc
      001547 12 20 B5         [24] 1197 	lcall	_printf
      00154A 15 81            [12] 1198 	dec	sp
      00154C 15 81            [12] 1199 	dec	sp
      00154E 15 81            [12] 1200 	dec	sp
                                   1201 ;	uart.c:153: print_colored("| ", 36);
      001550 90 04 99         [24] 1202 	mov	dptr,#_print_colored_PARM_2
      001553 74 24            [12] 1203 	mov	a,#0x24
      001555 F0               [24] 1204 	movx	@dptr,a
      001556 E4               [12] 1205 	clr	a
      001557 A3               [24] 1206 	inc	dptr
      001558 F0               [24] 1207 	movx	@dptr,a
      001559 90 30 A3         [24] 1208 	mov	dptr,#___str_10
      00155C 75 F0 80         [24] 1209 	mov	b,#0x80
      00155F 12 11 B2         [24] 1210 	lcall	_print_colored
                                   1211 ;	uart.c:154: print_colored("[H] LCD HEX Dump                            ", 32);
      001562 90 04 99         [24] 1212 	mov	dptr,#_print_colored_PARM_2
      001565 74 20            [12] 1213 	mov	a,#0x20
      001567 F0               [24] 1214 	movx	@dptr,a
      001568 E4               [12] 1215 	clr	a
      001569 A3               [24] 1216 	inc	dptr
      00156A F0               [24] 1217 	movx	@dptr,a
      00156B 90 31 E1         [24] 1218 	mov	dptr,#___str_18
      00156E 75 F0 80         [24] 1219 	mov	b,#0x80
      001571 12 11 B2         [24] 1220 	lcall	_print_colored
                                   1221 ;	uart.c:155: print_colored("| ", 36);
      001574 90 04 99         [24] 1222 	mov	dptr,#_print_colored_PARM_2
      001577 74 24            [12] 1223 	mov	a,#0x24
      001579 F0               [24] 1224 	movx	@dptr,a
      00157A E4               [12] 1225 	clr	a
      00157B A3               [24] 1226 	inc	dptr
      00157C F0               [24] 1227 	movx	@dptr,a
      00157D 90 30 A3         [24] 1228 	mov	dptr,#___str_10
      001580 75 F0 80         [24] 1229 	mov	b,#0x80
      001583 12 11 B2         [24] 1230 	lcall	_print_colored
                                   1231 ;	uart.c:156: printf("\n\r");
      001586 74 6A            [12] 1232 	mov	a,#___str_7
      001588 C0 E0            [24] 1233 	push	acc
      00158A 74 30            [12] 1234 	mov	a,#(___str_7 >> 8)
      00158C C0 E0            [24] 1235 	push	acc
      00158E 74 80            [12] 1236 	mov	a,#0x80
      001590 C0 E0            [24] 1237 	push	acc
      001592 12 20 B5         [24] 1238 	lcall	_printf
      001595 15 81            [12] 1239 	dec	sp
      001597 15 81            [12] 1240 	dec	sp
      001599 15 81            [12] 1241 	dec	sp
                                   1242 ;	uart.c:158: printf("   ");
      00159B 74 6D            [12] 1243 	mov	a,#___str_8
      00159D C0 E0            [24] 1244 	push	acc
      00159F 74 30            [12] 1245 	mov	a,#(___str_8 >> 8)
      0015A1 C0 E0            [24] 1246 	push	acc
      0015A3 74 80            [12] 1247 	mov	a,#0x80
      0015A5 C0 E0            [24] 1248 	push	acc
      0015A7 12 20 B5         [24] 1249 	lcall	_printf
      0015AA 15 81            [12] 1250 	dec	sp
      0015AC 15 81            [12] 1251 	dec	sp
      0015AE 15 81            [12] 1252 	dec	sp
                                   1253 ;	uart.c:159: print_colored("| ", 36);
      0015B0 90 04 99         [24] 1254 	mov	dptr,#_print_colored_PARM_2
      0015B3 74 24            [12] 1255 	mov	a,#0x24
      0015B5 F0               [24] 1256 	movx	@dptr,a
      0015B6 E4               [12] 1257 	clr	a
      0015B7 A3               [24] 1258 	inc	dptr
      0015B8 F0               [24] 1259 	movx	@dptr,a
      0015B9 90 30 A3         [24] 1260 	mov	dptr,#___str_10
      0015BC 75 F0 80         [24] 1261 	mov	b,#0x80
      0015BF 12 11 B2         [24] 1262 	lcall	_print_colored
                                   1263 ;	uart.c:160: print_colored("[I] Input Custom Characters                 ", 33);
      0015C2 90 04 99         [24] 1264 	mov	dptr,#_print_colored_PARM_2
      0015C5 74 21            [12] 1265 	mov	a,#0x21
      0015C7 F0               [24] 1266 	movx	@dptr,a
      0015C8 E4               [12] 1267 	clr	a
      0015C9 A3               [24] 1268 	inc	dptr
      0015CA F0               [24] 1269 	movx	@dptr,a
      0015CB 90 32 0E         [24] 1270 	mov	dptr,#___str_19
      0015CE 75 F0 80         [24] 1271 	mov	b,#0x80
      0015D1 12 11 B2         [24] 1272 	lcall	_print_colored
                                   1273 ;	uart.c:161: print_colored("| ", 36);
      0015D4 90 04 99         [24] 1274 	mov	dptr,#_print_colored_PARM_2
      0015D7 74 24            [12] 1275 	mov	a,#0x24
      0015D9 F0               [24] 1276 	movx	@dptr,a
      0015DA E4               [12] 1277 	clr	a
      0015DB A3               [24] 1278 	inc	dptr
      0015DC F0               [24] 1279 	movx	@dptr,a
      0015DD 90 30 A3         [24] 1280 	mov	dptr,#___str_10
      0015E0 75 F0 80         [24] 1281 	mov	b,#0x80
      0015E3 12 11 B2         [24] 1282 	lcall	_print_colored
                                   1283 ;	uart.c:162: printf("\n\r");
      0015E6 74 6A            [12] 1284 	mov	a,#___str_7
      0015E8 C0 E0            [24] 1285 	push	acc
      0015EA 74 30            [12] 1286 	mov	a,#(___str_7 >> 8)
      0015EC C0 E0            [24] 1287 	push	acc
      0015EE 74 80            [12] 1288 	mov	a,#0x80
      0015F0 C0 E0            [24] 1289 	push	acc
      0015F2 12 20 B5         [24] 1290 	lcall	_printf
      0015F5 15 81            [12] 1291 	dec	sp
      0015F7 15 81            [12] 1292 	dec	sp
      0015F9 15 81            [12] 1293 	dec	sp
                                   1294 ;	uart.c:164: printf("   ");
      0015FB 74 6D            [12] 1295 	mov	a,#___str_8
      0015FD C0 E0            [24] 1296 	push	acc
      0015FF 74 30            [12] 1297 	mov	a,#(___str_8 >> 8)
      001601 C0 E0            [24] 1298 	push	acc
      001603 74 80            [12] 1299 	mov	a,#0x80
      001605 C0 E0            [24] 1300 	push	acc
      001607 12 20 B5         [24] 1301 	lcall	_printf
      00160A 15 81            [12] 1302 	dec	sp
      00160C 15 81            [12] 1303 	dec	sp
      00160E 15 81            [12] 1304 	dec	sp
                                   1305 ;	uart.c:165: print_colored("| ", 36);
      001610 90 04 99         [24] 1306 	mov	dptr,#_print_colored_PARM_2
      001613 74 24            [12] 1307 	mov	a,#0x24
      001615 F0               [24] 1308 	movx	@dptr,a
      001616 E4               [12] 1309 	clr	a
      001617 A3               [24] 1310 	inc	dptr
      001618 F0               [24] 1311 	movx	@dptr,a
      001619 90 30 A3         [24] 1312 	mov	dptr,#___str_10
      00161C 75 F0 80         [24] 1313 	mov	b,#0x80
      00161F 12 11 B2         [24] 1314 	lcall	_print_colored
                                   1315 ;	uart.c:166: print_colored("[J] Load Smiley Logo                        ", 33);
      001622 90 04 99         [24] 1316 	mov	dptr,#_print_colored_PARM_2
      001625 74 21            [12] 1317 	mov	a,#0x21
      001627 F0               [24] 1318 	movx	@dptr,a
      001628 E4               [12] 1319 	clr	a
      001629 A3               [24] 1320 	inc	dptr
      00162A F0               [24] 1321 	movx	@dptr,a
      00162B 90 32 3B         [24] 1322 	mov	dptr,#___str_20
      00162E 75 F0 80         [24] 1323 	mov	b,#0x80
      001631 12 11 B2         [24] 1324 	lcall	_print_colored
                                   1325 ;	uart.c:167: print_colored("| ", 36);
      001634 90 04 99         [24] 1326 	mov	dptr,#_print_colored_PARM_2
      001637 74 24            [12] 1327 	mov	a,#0x24
      001639 F0               [24] 1328 	movx	@dptr,a
      00163A E4               [12] 1329 	clr	a
      00163B A3               [24] 1330 	inc	dptr
      00163C F0               [24] 1331 	movx	@dptr,a
      00163D 90 30 A3         [24] 1332 	mov	dptr,#___str_10
      001640 75 F0 80         [24] 1333 	mov	b,#0x80
      001643 12 11 B2         [24] 1334 	lcall	_print_colored
                                   1335 ;	uart.c:168: printf("\n\r");
      001646 74 6A            [12] 1336 	mov	a,#___str_7
      001648 C0 E0            [24] 1337 	push	acc
      00164A 74 30            [12] 1338 	mov	a,#(___str_7 >> 8)
      00164C C0 E0            [24] 1339 	push	acc
      00164E 74 80            [12] 1340 	mov	a,#0x80
      001650 C0 E0            [24] 1341 	push	acc
      001652 12 20 B5         [24] 1342 	lcall	_printf
      001655 15 81            [12] 1343 	dec	sp
      001657 15 81            [12] 1344 	dec	sp
      001659 15 81            [12] 1345 	dec	sp
                                   1346 ;	uart.c:170: printf("   ");
      00165B 74 6D            [12] 1347 	mov	a,#___str_8
      00165D C0 E0            [24] 1348 	push	acc
      00165F 74 30            [12] 1349 	mov	a,#(___str_8 >> 8)
      001661 C0 E0            [24] 1350 	push	acc
      001663 74 80            [12] 1351 	mov	a,#0x80
      001665 C0 E0            [24] 1352 	push	acc
      001667 12 20 B5         [24] 1353 	lcall	_printf
      00166A 15 81            [12] 1354 	dec	sp
      00166C 15 81            [12] 1355 	dec	sp
      00166E 15 81            [12] 1356 	dec	sp
                                   1357 ;	uart.c:171: print_colored("| ", 36);
      001670 90 04 99         [24] 1358 	mov	dptr,#_print_colored_PARM_2
      001673 74 24            [12] 1359 	mov	a,#0x24
      001675 F0               [24] 1360 	movx	@dptr,a
      001676 E4               [12] 1361 	clr	a
      001677 A3               [24] 1362 	inc	dptr
      001678 F0               [24] 1363 	movx	@dptr,a
      001679 90 30 A3         [24] 1364 	mov	dptr,#___str_10
      00167C 75 F0 80         [24] 1365 	mov	b,#0x80
      00167F 12 11 B2         [24] 1366 	lcall	_print_colored
                                   1367 ;	uart.c:172: print_colored("[K] Load CU Logo                            ", 33);
      001682 90 04 99         [24] 1368 	mov	dptr,#_print_colored_PARM_2
      001685 74 21            [12] 1369 	mov	a,#0x21
      001687 F0               [24] 1370 	movx	@dptr,a
      001688 E4               [12] 1371 	clr	a
      001689 A3               [24] 1372 	inc	dptr
      00168A F0               [24] 1373 	movx	@dptr,a
      00168B 90 32 68         [24] 1374 	mov	dptr,#___str_21
      00168E 75 F0 80         [24] 1375 	mov	b,#0x80
      001691 12 11 B2         [24] 1376 	lcall	_print_colored
                                   1377 ;	uart.c:173: print_colored("| ", 36);
      001694 90 04 99         [24] 1378 	mov	dptr,#_print_colored_PARM_2
      001697 74 24            [12] 1379 	mov	a,#0x24
      001699 F0               [24] 1380 	movx	@dptr,a
      00169A E4               [12] 1381 	clr	a
      00169B A3               [24] 1382 	inc	dptr
      00169C F0               [24] 1383 	movx	@dptr,a
      00169D 90 30 A3         [24] 1384 	mov	dptr,#___str_10
      0016A0 75 F0 80         [24] 1385 	mov	b,#0x80
      0016A3 12 11 B2         [24] 1386 	lcall	_print_colored
                                   1387 ;	uart.c:174: printf("\n\r");
      0016A6 74 6A            [12] 1388 	mov	a,#___str_7
      0016A8 C0 E0            [24] 1389 	push	acc
      0016AA 74 30            [12] 1390 	mov	a,#(___str_7 >> 8)
      0016AC C0 E0            [24] 1391 	push	acc
      0016AE 74 80            [12] 1392 	mov	a,#0x80
      0016B0 C0 E0            [24] 1393 	push	acc
      0016B2 12 20 B5         [24] 1394 	lcall	_printf
      0016B5 15 81            [12] 1395 	dec	sp
      0016B7 15 81            [12] 1396 	dec	sp
      0016B9 15 81            [12] 1397 	dec	sp
                                   1398 ;	uart.c:176: printf("   ");
      0016BB 74 6D            [12] 1399 	mov	a,#___str_8
      0016BD C0 E0            [24] 1400 	push	acc
      0016BF 74 30            [12] 1401 	mov	a,#(___str_8 >> 8)
      0016C1 C0 E0            [24] 1402 	push	acc
      0016C3 74 80            [12] 1403 	mov	a,#0x80
      0016C5 C0 E0            [24] 1404 	push	acc
      0016C7 12 20 B5         [24] 1405 	lcall	_printf
      0016CA 15 81            [12] 1406 	dec	sp
      0016CC 15 81            [12] 1407 	dec	sp
      0016CE 15 81            [12] 1408 	dec	sp
                                   1409 ;	uart.c:177: print_colored("| ", 36);
      0016D0 90 04 99         [24] 1410 	mov	dptr,#_print_colored_PARM_2
      0016D3 74 24            [12] 1411 	mov	a,#0x24
      0016D5 F0               [24] 1412 	movx	@dptr,a
      0016D6 E4               [12] 1413 	clr	a
      0016D7 A3               [24] 1414 	inc	dptr
      0016D8 F0               [24] 1415 	movx	@dptr,a
      0016D9 90 30 A3         [24] 1416 	mov	dptr,#___str_10
      0016DC 75 F0 80         [24] 1417 	mov	b,#0x80
      0016DF 12 11 B2         [24] 1418 	lcall	_print_colored
                                   1419 ;	uart.c:178: print_colored("[P] Print Author Info                       ", 31);
      0016E2 90 04 99         [24] 1420 	mov	dptr,#_print_colored_PARM_2
      0016E5 74 1F            [12] 1421 	mov	a,#0x1f
      0016E7 F0               [24] 1422 	movx	@dptr,a
      0016E8 E4               [12] 1423 	clr	a
      0016E9 A3               [24] 1424 	inc	dptr
      0016EA F0               [24] 1425 	movx	@dptr,a
      0016EB 90 32 95         [24] 1426 	mov	dptr,#___str_22
      0016EE 75 F0 80         [24] 1427 	mov	b,#0x80
      0016F1 12 11 B2         [24] 1428 	lcall	_print_colored
                                   1429 ;	uart.c:179: print_colored("| ", 36);
      0016F4 90 04 99         [24] 1430 	mov	dptr,#_print_colored_PARM_2
      0016F7 74 24            [12] 1431 	mov	a,#0x24
      0016F9 F0               [24] 1432 	movx	@dptr,a
      0016FA E4               [12] 1433 	clr	a
      0016FB A3               [24] 1434 	inc	dptr
      0016FC F0               [24] 1435 	movx	@dptr,a
      0016FD 90 30 A3         [24] 1436 	mov	dptr,#___str_10
      001700 75 F0 80         [24] 1437 	mov	b,#0x80
      001703 12 11 B2         [24] 1438 	lcall	_print_colored
                                   1439 ;	uart.c:180: printf("\n\r");
      001706 74 6A            [12] 1440 	mov	a,#___str_7
      001708 C0 E0            [24] 1441 	push	acc
      00170A 74 30            [12] 1442 	mov	a,#(___str_7 >> 8)
      00170C C0 E0            [24] 1443 	push	acc
      00170E 74 80            [12] 1444 	mov	a,#0x80
      001710 C0 E0            [24] 1445 	push	acc
      001712 12 20 B5         [24] 1446 	lcall	_printf
      001715 15 81            [12] 1447 	dec	sp
      001717 15 81            [12] 1448 	dec	sp
      001719 15 81            [12] 1449 	dec	sp
                                   1450 ;	uart.c:182: printf("   ");
      00171B 74 6D            [12] 1451 	mov	a,#___str_8
      00171D C0 E0            [24] 1452 	push	acc
      00171F 74 30            [12] 1453 	mov	a,#(___str_8 >> 8)
      001721 C0 E0            [24] 1454 	push	acc
      001723 74 80            [12] 1455 	mov	a,#0x80
      001725 C0 E0            [24] 1456 	push	acc
      001727 12 20 B5         [24] 1457 	lcall	_printf
      00172A 15 81            [12] 1458 	dec	sp
      00172C 15 81            [12] 1459 	dec	sp
      00172E 15 81            [12] 1460 	dec	sp
                                   1461 ;	uart.c:183: print_colored("| ", 36);
      001730 90 04 99         [24] 1462 	mov	dptr,#_print_colored_PARM_2
      001733 74 24            [12] 1463 	mov	a,#0x24
      001735 F0               [24] 1464 	movx	@dptr,a
      001736 E4               [12] 1465 	clr	a
      001737 A3               [24] 1466 	inc	dptr
      001738 F0               [24] 1467 	movx	@dptr,a
      001739 90 30 A3         [24] 1468 	mov	dptr,#___str_10
      00173C 75 F0 80         [24] 1469 	mov	b,#0x80
      00173F 12 11 B2         [24] 1470 	lcall	_print_colored
                                   1471 ;	uart.c:184: print_colored("[Z] Clear LCD Screen                        ", 32);
      001742 90 04 99         [24] 1472 	mov	dptr,#_print_colored_PARM_2
      001745 74 20            [12] 1473 	mov	a,#0x20
      001747 F0               [24] 1474 	movx	@dptr,a
      001748 E4               [12] 1475 	clr	a
      001749 A3               [24] 1476 	inc	dptr
      00174A F0               [24] 1477 	movx	@dptr,a
      00174B 90 32 C2         [24] 1478 	mov	dptr,#___str_23
      00174E 75 F0 80         [24] 1479 	mov	b,#0x80
      001751 12 11 B2         [24] 1480 	lcall	_print_colored
                                   1481 ;	uart.c:185: print_colored("| ", 36);
      001754 90 04 99         [24] 1482 	mov	dptr,#_print_colored_PARM_2
      001757 74 24            [12] 1483 	mov	a,#0x24
      001759 F0               [24] 1484 	movx	@dptr,a
      00175A E4               [12] 1485 	clr	a
      00175B A3               [24] 1486 	inc	dptr
      00175C F0               [24] 1487 	movx	@dptr,a
      00175D 90 30 A3         [24] 1488 	mov	dptr,#___str_10
      001760 75 F0 80         [24] 1489 	mov	b,#0x80
      001763 12 11 B2         [24] 1490 	lcall	_print_colored
                                   1491 ;	uart.c:186: printf("\n\r");
      001766 74 6A            [12] 1492 	mov	a,#___str_7
      001768 C0 E0            [24] 1493 	push	acc
      00176A 74 30            [12] 1494 	mov	a,#(___str_7 >> 8)
      00176C C0 E0            [24] 1495 	push	acc
      00176E 74 80            [12] 1496 	mov	a,#0x80
      001770 C0 E0            [24] 1497 	push	acc
      001772 12 20 B5         [24] 1498 	lcall	_printf
      001775 15 81            [12] 1499 	dec	sp
      001777 15 81            [12] 1500 	dec	sp
      001779 15 81            [12] 1501 	dec	sp
                                   1502 ;	uart.c:188: printf("   ");
      00177B 74 6D            [12] 1503 	mov	a,#___str_8
      00177D C0 E0            [24] 1504 	push	acc
      00177F 74 30            [12] 1505 	mov	a,#(___str_8 >> 8)
      001781 C0 E0            [24] 1506 	push	acc
      001783 74 80            [12] 1507 	mov	a,#0x80
      001785 C0 E0            [24] 1508 	push	acc
      001787 12 20 B5         [24] 1509 	lcall	_printf
      00178A 15 81            [12] 1510 	dec	sp
      00178C 15 81            [12] 1511 	dec	sp
      00178E 15 81            [12] 1512 	dec	sp
                                   1513 ;	uart.c:189: print_colored("+---------------------------------------------+\n\r", 36);
      001790 90 04 99         [24] 1514 	mov	dptr,#_print_colored_PARM_2
      001793 74 24            [12] 1515 	mov	a,#0x24
      001795 F0               [24] 1516 	movx	@dptr,a
      001796 E4               [12] 1517 	clr	a
      001797 A3               [24] 1518 	inc	dptr
      001798 F0               [24] 1519 	movx	@dptr,a
      001799 90 30 71         [24] 1520 	mov	dptr,#___str_9
      00179C 75 F0 80         [24] 1521 	mov	b,#0x80
      00179F 12 11 B2         [24] 1522 	lcall	_print_colored
                                   1523 ;	uart.c:190: printf("\n\r");
      0017A2 74 6A            [12] 1524 	mov	a,#___str_7
      0017A4 C0 E0            [24] 1525 	push	acc
      0017A6 74 30            [12] 1526 	mov	a,#(___str_7 >> 8)
      0017A8 C0 E0            [24] 1527 	push	acc
      0017AA 74 80            [12] 1528 	mov	a,#0x80
      0017AC C0 E0            [24] 1529 	push	acc
      0017AE 12 20 B5         [24] 1530 	lcall	_printf
      0017B1 15 81            [12] 1531 	dec	sp
      0017B3 15 81            [12] 1532 	dec	sp
      0017B5 15 81            [12] 1533 	dec	sp
                                   1534 ;	uart.c:191: }
      0017B7 22               [24] 1535 	ret
                                   1536 	.area CSEG    (CODE)
                                   1537 	.area CONST   (CODE)
                                   1538 	.area CONST   (CODE)
      002F58                       1539 ___str_0:
      002F58 1B                    1540 	.db 0x1b
      002F59 5B 31 3B 25 64 6D 25  1541 	.ascii "[1;%dm%s"
             73
      002F61 1B                    1542 	.db 0x1b
      002F62 5B 30 6D              1543 	.ascii "[0m"
      002F65 00                    1544 	.db 0x00
                                   1545 	.area CSEG    (CODE)
                                   1546 	.area CONST   (CODE)
      002F66                       1547 ___str_1:
      002F66 2B 2D 2D 2D 2D 2D 2D  1548 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      002F99 0A                    1549 	.db 0x0a
      002F9A 0D                    1550 	.db 0x0d
      002F9B 00                    1551 	.db 0x00
                                   1552 	.area CSEG    (CODE)
                                   1553 	.area CONST   (CODE)
      002F9C                       1554 ___str_2:
      002F9C 7C 20 20 20 20 20 20  1555 	.ascii "|           USER INTERFACE Lab 4 Part 2           |"
             20 20 20 20 20 55 53
             45 52 20 49 4E 54 45
             52 46 41 43 45 20 4C
             61 62 20 34 20 50 61
             72 74 20 32 20 20 20
             20 20 20 20 20 20 20
             20 7C
      002FCF 0A                    1556 	.db 0x0a
      002FD0 0D                    1557 	.db 0x0d
      002FD1 00                    1558 	.db 0x00
                                   1559 	.area CSEG    (CODE)
                                   1560 	.area CONST   (CODE)
      002FD2                       1561 ___str_3:
      002FD2 7C 20 20 20 20 20 20  1562 	.ascii "|                      LCD                        |"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 4C 43 44 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      003005 0A                    1563 	.db 0x0a
      003006 0D                    1564 	.db 0x0d
      003007 00                    1565 	.db 0x00
                                   1566 	.area CSEG    (CODE)
                                   1567 	.area CONST   (CODE)
      003008                       1568 ___str_4:
      003008 2B 2D 2D 2D 2D 2D 2D  1569 	.ascii "+-------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      00303B 0A                    1570 	.db 0x0a
      00303C 0D                    1571 	.db 0x0d
      00303D 0A                    1572 	.db 0x0a
      00303E 0D                    1573 	.db 0x0d
      00303F 00                    1574 	.db 0x00
                                   1575 	.area CSEG    (CODE)
                                   1576 	.area CONST   (CODE)
      003040                       1577 ___str_5:
      003040 20 20 20 20 20 20 20  1578 	.ascii "        "
             20
      003048 00                    1579 	.db 0x00
                                   1580 	.area CSEG    (CODE)
                                   1581 	.area CONST   (CODE)
      003049                       1582 ___str_6:
      003049 50 6C 65 61 73 65 20  1583 	.ascii "Please select an option below:"
             73 65 6C 65 63 74 20
             61 6E 20 6F 70 74 69
             6F 6E 20 62 65 6C 6F
             77 3A
      003067 0A                    1584 	.db 0x0a
      003068 0D                    1585 	.db 0x0d
      003069 00                    1586 	.db 0x00
                                   1587 	.area CSEG    (CODE)
                                   1588 	.area CONST   (CODE)
      00306A                       1589 ___str_7:
      00306A 0A                    1590 	.db 0x0a
      00306B 0D                    1591 	.db 0x0d
      00306C 00                    1592 	.db 0x00
                                   1593 	.area CSEG    (CODE)
                                   1594 	.area CONST   (CODE)
      00306D                       1595 ___str_8:
      00306D 20 20 20              1596 	.ascii "   "
      003070 00                    1597 	.db 0x00
                                   1598 	.area CSEG    (CODE)
                                   1599 	.area CONST   (CODE)
      003071                       1600 ___str_9:
      003071 2B 2D 2D 2D 2D 2D 2D  1601 	.ascii "+---------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2B
      0030A0 0A                    1602 	.db 0x0a
      0030A1 0D                    1603 	.db 0x0d
      0030A2 00                    1604 	.db 0x00
                                   1605 	.area CSEG    (CODE)
                                   1606 	.area CONST   (CODE)
      0030A3                       1607 ___str_10:
      0030A3 7C 20                 1608 	.ascii "| "
      0030A5 00                    1609 	.db 0x00
                                   1610 	.area CSEG    (CODE)
                                   1611 	.area CONST   (CODE)
      0030A6                       1612 ___str_11:
      0030A6 5B 41 5D 20 57 72 69  1613 	.ascii "[A] Write a character to LCD                "
             74 65 20 61 20 63 68
             61 72 61 63 74 65 72
             20 74 6F 20 4C 43 44
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0030D2 00                    1614 	.db 0x00
                                   1615 	.area CSEG    (CODE)
                                   1616 	.area CONST   (CODE)
      0030D3                       1617 ___str_12:
      0030D3 5B 42 5D 20 57 72 69  1618 	.ascii "[B] Write a string to LCD                   "
             74 65 20 61 20 73 74
             72 69 6E 67 20 74 6F
             20 4C 43 44 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0030FF 00                    1619 	.db 0x00
                                   1620 	.area CSEG    (CODE)
                                   1621 	.area CONST   (CODE)
      003100                       1622 ___str_13:
      003100 5B 43 5D 20 47 6F 20  1623 	.ascii "[C] Go to Address (0xNN)                    "
             74 6F 20 41 64 64 72
             65 73 73 20 28 30 78
             4E 4E 29 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00312C 00                    1624 	.db 0x00
                                   1625 	.area CSEG    (CODE)
                                   1626 	.area CONST   (CODE)
      00312D                       1627 ___str_14:
      00312D 5B 44 5D 20 47 6F 20  1628 	.ascii "[D] Go to Co-ordinates (x,y)                "
             74 6F 20 43 6F 2D 6F
             72 64 69 6E 61 74 65
             73 20 28 78 2C 79 29
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003159 00                    1629 	.db 0x00
                                   1630 	.area CSEG    (CODE)
                                   1631 	.area CONST   (CODE)
      00315A                       1632 ___str_15:
      00315A 5B 45 5D 20 53 74 6F  1633 	.ascii "[E] Stop Elapsed Time                       "
             70 20 45 6C 61 70 73
             65 64 20 54 69 6D 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003186 00                    1634 	.db 0x00
                                   1635 	.area CSEG    (CODE)
                                   1636 	.area CONST   (CODE)
      003187                       1637 ___str_16:
      003187 5B 46 5D 20 52 65 73  1638 	.ascii "[F] Resume Elapsed Time                     "
             75 6D 65 20 45 6C 61
             70 73 65 64 20 54 69
             6D 65 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0031B3 00                    1639 	.db 0x00
                                   1640 	.area CSEG    (CODE)
                                   1641 	.area CONST   (CODE)
      0031B4                       1642 ___str_17:
      0031B4 5B 47 5D 20 52 65 73  1643 	.ascii "[G] Reset time to 00:00:0                   "
             65 74 20 74 69 6D 65
             20 74 6F 20 30 30 3A
             30 30 3A 30 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0031E0 00                    1644 	.db 0x00
                                   1645 	.area CSEG    (CODE)
                                   1646 	.area CONST   (CODE)
      0031E1                       1647 ___str_18:
      0031E1 5B 48 5D 20 4C 43 44  1648 	.ascii "[H] LCD HEX Dump                            "
             20 48 45 58 20 44 75
             6D 70 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00320D 00                    1649 	.db 0x00
                                   1650 	.area CSEG    (CODE)
                                   1651 	.area CONST   (CODE)
      00320E                       1652 ___str_19:
      00320E 5B 49 5D 20 49 6E 70  1653 	.ascii "[I] Input Custom Characters                 "
             75 74 20 43 75 73 74
             6F 6D 20 43 68 61 72
             61 63 74 65 72 73 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00323A 00                    1654 	.db 0x00
                                   1655 	.area CSEG    (CODE)
                                   1656 	.area CONST   (CODE)
      00323B                       1657 ___str_20:
      00323B 5B 4A 5D 20 4C 6F 61  1658 	.ascii "[J] Load Smiley Logo                        "
             64 20 53 6D 69 6C 65
             79 20 4C 6F 67 6F 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003267 00                    1659 	.db 0x00
                                   1660 	.area CSEG    (CODE)
                                   1661 	.area CONST   (CODE)
      003268                       1662 ___str_21:
      003268 5B 4B 5D 20 4C 6F 61  1663 	.ascii "[K] Load CU Logo                            "
             64 20 43 55 20 4C 6F
             67 6F 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003294 00                    1664 	.db 0x00
                                   1665 	.area CSEG    (CODE)
                                   1666 	.area CONST   (CODE)
      003295                       1667 ___str_22:
      003295 5B 50 5D 20 50 72 69  1668 	.ascii "[P] Print Author Info                       "
             6E 74 20 41 75 74 68
             6F 72 20 49 6E 66 6F
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0032C1 00                    1669 	.db 0x00
                                   1670 	.area CSEG    (CODE)
                                   1671 	.area CONST   (CODE)
      0032C2                       1672 ___str_23:
      0032C2 5B 5A 5D 20 43 6C 65  1673 	.ascii "[Z] Clear LCD Screen                        "
             61 72 20 4C 43 44 20
             53 63 72 65 65 6E 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0032EE 00                    1674 	.db 0x00
                                   1675 	.area CSEG    (CODE)
                                   1676 	.area XINIT   (CODE)
                                   1677 	.area CABS    (ABS,CODE)
