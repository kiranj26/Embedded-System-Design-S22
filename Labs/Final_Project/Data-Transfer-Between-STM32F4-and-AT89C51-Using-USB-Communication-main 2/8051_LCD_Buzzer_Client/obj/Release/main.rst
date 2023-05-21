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
                                     12 	.globl _init_timer
                                     13 	.globl _timer0_ISR
                                     14 	.globl _delay_sec
                                     15 	.globl _delay_ms
                                     16 	.globl __sdcc_external_startup
                                     17 	.globl _get_cursor_address
                                     18 	.globl _handle_newuser_custom_char
                                     19 	.globl _handle_unlock_custom_char
                                     20 	.globl _handle_lock_custom_char
                                     21 	.globl _handler_lcdclear
                                     22 	.globl _lcdputstr
                                     23 	.globl _lcdgotoxy
                                     24 	.globl _lcdgotoaddr
                                     25 	.globl _init_lcd
                                     26 	.globl _uart_init
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _PS
                                     36 	.globl _PT1
                                     37 	.globl _PX1
                                     38 	.globl _PT0
                                     39 	.globl _PX0
                                     40 	.globl _RD
                                     41 	.globl _WR
                                     42 	.globl _T1
                                     43 	.globl _T0
                                     44 	.globl _INT1
                                     45 	.globl _INT0
                                     46 	.globl _TXD
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _EA
                                     57 	.globl _ES
                                     58 	.globl _ET1
                                     59 	.globl _EX1
                                     60 	.globl _ET0
                                     61 	.globl _EX0
                                     62 	.globl _P2_7
                                     63 	.globl _P2_6
                                     64 	.globl _P2_5
                                     65 	.globl _P2_4
                                     66 	.globl _P2_3
                                     67 	.globl _P2_2
                                     68 	.globl _P2_1
                                     69 	.globl _P2_0
                                     70 	.globl _SM0
                                     71 	.globl _SM1
                                     72 	.globl _SM2
                                     73 	.globl _REN
                                     74 	.globl _TB8
                                     75 	.globl _RB8
                                     76 	.globl _TI
                                     77 	.globl _RI
                                     78 	.globl _P1_7
                                     79 	.globl _P1_6
                                     80 	.globl _P1_5
                                     81 	.globl _P1_4
                                     82 	.globl _P1_3
                                     83 	.globl _P1_2
                                     84 	.globl _P1_1
                                     85 	.globl _P1_0
                                     86 	.globl _TF1
                                     87 	.globl _TR1
                                     88 	.globl _TF0
                                     89 	.globl _TR0
                                     90 	.globl _IE1
                                     91 	.globl _IT1
                                     92 	.globl _IE0
                                     93 	.globl _IT0
                                     94 	.globl _P0_7
                                     95 	.globl _P0_6
                                     96 	.globl _P0_5
                                     97 	.globl _P0_4
                                     98 	.globl _P0_3
                                     99 	.globl _P0_2
                                    100 	.globl _P0_1
                                    101 	.globl _P0_0
                                    102 	.globl _TXD0
                                    103 	.globl _RXD0
                                    104 	.globl _BREG_F7
                                    105 	.globl _BREG_F6
                                    106 	.globl _BREG_F5
                                    107 	.globl _BREG_F4
                                    108 	.globl _BREG_F3
                                    109 	.globl _BREG_F2
                                    110 	.globl _BREG_F1
                                    111 	.globl _BREG_F0
                                    112 	.globl _P5_7
                                    113 	.globl _P5_6
                                    114 	.globl _P5_5
                                    115 	.globl _P5_4
                                    116 	.globl _P5_3
                                    117 	.globl _P5_2
                                    118 	.globl _P5_1
                                    119 	.globl _P5_0
                                    120 	.globl _P4_7
                                    121 	.globl _P4_6
                                    122 	.globl _P4_5
                                    123 	.globl _P4_4
                                    124 	.globl _P4_3
                                    125 	.globl _P4_2
                                    126 	.globl _P4_1
                                    127 	.globl _P4_0
                                    128 	.globl _PX0L
                                    129 	.globl _PT0L
                                    130 	.globl _PX1L
                                    131 	.globl _PT1L
                                    132 	.globl _PSL
                                    133 	.globl _PT2L
                                    134 	.globl _PPCL
                                    135 	.globl _EC
                                    136 	.globl _CCF0
                                    137 	.globl _CCF1
                                    138 	.globl _CCF2
                                    139 	.globl _CCF3
                                    140 	.globl _CCF4
                                    141 	.globl _CR
                                    142 	.globl _CF
                                    143 	.globl _TF2
                                    144 	.globl _EXF2
                                    145 	.globl _RCLK
                                    146 	.globl _TCLK
                                    147 	.globl _EXEN2
                                    148 	.globl _TR2
                                    149 	.globl _C_T2
                                    150 	.globl _CP_RL2
                                    151 	.globl _T2CON_7
                                    152 	.globl _T2CON_6
                                    153 	.globl _T2CON_5
                                    154 	.globl _T2CON_4
                                    155 	.globl _T2CON_3
                                    156 	.globl _T2CON_2
                                    157 	.globl _T2CON_1
                                    158 	.globl _T2CON_0
                                    159 	.globl _PT2
                                    160 	.globl _ET2
                                    161 	.globl _B
                                    162 	.globl _ACC
                                    163 	.globl _PSW
                                    164 	.globl _IP
                                    165 	.globl _P3
                                    166 	.globl _IE
                                    167 	.globl _P2
                                    168 	.globl _SBUF
                                    169 	.globl _SCON
                                    170 	.globl _P1
                                    171 	.globl _TH1
                                    172 	.globl _TH0
                                    173 	.globl _TL1
                                    174 	.globl _TL0
                                    175 	.globl _TMOD
                                    176 	.globl _TCON
                                    177 	.globl _PCON
                                    178 	.globl _DPH
                                    179 	.globl _DPL
                                    180 	.globl _SP
                                    181 	.globl _P0
                                    182 	.globl _SBUF0
                                    183 	.globl _DP0L
                                    184 	.globl _DP0H
                                    185 	.globl _EECON
                                    186 	.globl _KBF
                                    187 	.globl _KBE
                                    188 	.globl _KBLS
                                    189 	.globl _BRL
                                    190 	.globl _BDRCON
                                    191 	.globl _T2MOD
                                    192 	.globl _SPDAT
                                    193 	.globl _SPSTA
                                    194 	.globl _SPCON
                                    195 	.globl _SADEN
                                    196 	.globl _SADDR
                                    197 	.globl _WDTPRG
                                    198 	.globl _WDTRST
                                    199 	.globl _P5
                                    200 	.globl _P4
                                    201 	.globl _IPH1
                                    202 	.globl _IPL1
                                    203 	.globl _IPH0
                                    204 	.globl _IPL0
                                    205 	.globl _IEN1
                                    206 	.globl _IEN0
                                    207 	.globl _CMOD
                                    208 	.globl _CL
                                    209 	.globl _CH
                                    210 	.globl _CCON
                                    211 	.globl _CCAPM4
                                    212 	.globl _CCAPM3
                                    213 	.globl _CCAPM2
                                    214 	.globl _CCAPM1
                                    215 	.globl _CCAPM0
                                    216 	.globl _CCAP4L
                                    217 	.globl _CCAP3L
                                    218 	.globl _CCAP2L
                                    219 	.globl _CCAP1L
                                    220 	.globl _CCAP0L
                                    221 	.globl _CCAP4H
                                    222 	.globl _CCAP3H
                                    223 	.globl _CCAP2H
                                    224 	.globl _CCAP1H
                                    225 	.globl _CCAP0H
                                    226 	.globl _CKCON1
                                    227 	.globl _CKCON0
                                    228 	.globl _CKRL
                                    229 	.globl _AUXR1
                                    230 	.globl _AUXR
                                    231 	.globl _TH2
                                    232 	.globl _TL2
                                    233 	.globl _RCAP2H
                                    234 	.globl _RCAP2L
                                    235 	.globl _T2CON
                                    236 	.globl _minutes_tens_digit
                                    237 	.globl _minutes_ones_digit
                                    238 	.globl _seconds_tens_digit
                                    239 	.globl _seconds_ones_digit
                                    240 	.globl _tenth_of_second
                                    241 	.globl _update_lcd
                                    242 ;--------------------------------------------------------
                                    243 ; special function registers
                                    244 ;--------------------------------------------------------
                                    245 	.area RSEG    (ABS,DATA)
      000000                        246 	.org 0x0000
                           0000C8   247 _T2CON	=	0x00c8
                           0000CA   248 _RCAP2L	=	0x00ca
                           0000CB   249 _RCAP2H	=	0x00cb
                           0000CC   250 _TL2	=	0x00cc
                           0000CD   251 _TH2	=	0x00cd
                           00008E   252 _AUXR	=	0x008e
                           0000A2   253 _AUXR1	=	0x00a2
                           000097   254 _CKRL	=	0x0097
                           00008F   255 _CKCON0	=	0x008f
                           0000AF   256 _CKCON1	=	0x00af
                           0000FA   257 _CCAP0H	=	0x00fa
                           0000FB   258 _CCAP1H	=	0x00fb
                           0000FC   259 _CCAP2H	=	0x00fc
                           0000FD   260 _CCAP3H	=	0x00fd
                           0000FE   261 _CCAP4H	=	0x00fe
                           0000EA   262 _CCAP0L	=	0x00ea
                           0000EB   263 _CCAP1L	=	0x00eb
                           0000EC   264 _CCAP2L	=	0x00ec
                           0000ED   265 _CCAP3L	=	0x00ed
                           0000EE   266 _CCAP4L	=	0x00ee
                           0000DA   267 _CCAPM0	=	0x00da
                           0000DB   268 _CCAPM1	=	0x00db
                           0000DC   269 _CCAPM2	=	0x00dc
                           0000DD   270 _CCAPM3	=	0x00dd
                           0000DE   271 _CCAPM4	=	0x00de
                           0000D8   272 _CCON	=	0x00d8
                           0000F9   273 _CH	=	0x00f9
                           0000E9   274 _CL	=	0x00e9
                           0000D9   275 _CMOD	=	0x00d9
                           0000A8   276 _IEN0	=	0x00a8
                           0000B1   277 _IEN1	=	0x00b1
                           0000B8   278 _IPL0	=	0x00b8
                           0000B7   279 _IPH0	=	0x00b7
                           0000B2   280 _IPL1	=	0x00b2
                           0000B3   281 _IPH1	=	0x00b3
                           0000C0   282 _P4	=	0x00c0
                           0000E8   283 _P5	=	0x00e8
                           0000A6   284 _WDTRST	=	0x00a6
                           0000A7   285 _WDTPRG	=	0x00a7
                           0000A9   286 _SADDR	=	0x00a9
                           0000B9   287 _SADEN	=	0x00b9
                           0000C3   288 _SPCON	=	0x00c3
                           0000C4   289 _SPSTA	=	0x00c4
                           0000C5   290 _SPDAT	=	0x00c5
                           0000C9   291 _T2MOD	=	0x00c9
                           00009B   292 _BDRCON	=	0x009b
                           00009A   293 _BRL	=	0x009a
                           00009C   294 _KBLS	=	0x009c
                           00009D   295 _KBE	=	0x009d
                           00009E   296 _KBF	=	0x009e
                           0000D2   297 _EECON	=	0x00d2
                           000083   298 _DP0H	=	0x0083
                           000082   299 _DP0L	=	0x0082
                           000099   300 _SBUF0	=	0x0099
                           000080   301 _P0	=	0x0080
                           000081   302 _SP	=	0x0081
                           000082   303 _DPL	=	0x0082
                           000083   304 _DPH	=	0x0083
                           000087   305 _PCON	=	0x0087
                           000088   306 _TCON	=	0x0088
                           000089   307 _TMOD	=	0x0089
                           00008A   308 _TL0	=	0x008a
                           00008B   309 _TL1	=	0x008b
                           00008C   310 _TH0	=	0x008c
                           00008D   311 _TH1	=	0x008d
                           000090   312 _P1	=	0x0090
                           000098   313 _SCON	=	0x0098
                           000099   314 _SBUF	=	0x0099
                           0000A0   315 _P2	=	0x00a0
                           0000A8   316 _IE	=	0x00a8
                           0000B0   317 _P3	=	0x00b0
                           0000B8   318 _IP	=	0x00b8
                           0000D0   319 _PSW	=	0x00d0
                           0000E0   320 _ACC	=	0x00e0
                           0000F0   321 _B	=	0x00f0
                                    322 ;--------------------------------------------------------
                                    323 ; special function bits
                                    324 ;--------------------------------------------------------
                                    325 	.area RSEG    (ABS,DATA)
      000000                        326 	.org 0x0000
                           0000AD   327 _ET2	=	0x00ad
                           0000BD   328 _PT2	=	0x00bd
                           0000C8   329 _T2CON_0	=	0x00c8
                           0000C9   330 _T2CON_1	=	0x00c9
                           0000CA   331 _T2CON_2	=	0x00ca
                           0000CB   332 _T2CON_3	=	0x00cb
                           0000CC   333 _T2CON_4	=	0x00cc
                           0000CD   334 _T2CON_5	=	0x00cd
                           0000CE   335 _T2CON_6	=	0x00ce
                           0000CF   336 _T2CON_7	=	0x00cf
                           0000C8   337 _CP_RL2	=	0x00c8
                           0000C9   338 _C_T2	=	0x00c9
                           0000CA   339 _TR2	=	0x00ca
                           0000CB   340 _EXEN2	=	0x00cb
                           0000CC   341 _TCLK	=	0x00cc
                           0000CD   342 _RCLK	=	0x00cd
                           0000CE   343 _EXF2	=	0x00ce
                           0000CF   344 _TF2	=	0x00cf
                           0000DF   345 _CF	=	0x00df
                           0000DE   346 _CR	=	0x00de
                           0000DC   347 _CCF4	=	0x00dc
                           0000DB   348 _CCF3	=	0x00db
                           0000DA   349 _CCF2	=	0x00da
                           0000D9   350 _CCF1	=	0x00d9
                           0000D8   351 _CCF0	=	0x00d8
                           0000AE   352 _EC	=	0x00ae
                           0000BE   353 _PPCL	=	0x00be
                           0000BD   354 _PT2L	=	0x00bd
                           0000BC   355 _PSL	=	0x00bc
                           0000BB   356 _PT1L	=	0x00bb
                           0000BA   357 _PX1L	=	0x00ba
                           0000B9   358 _PT0L	=	0x00b9
                           0000B8   359 _PX0L	=	0x00b8
                           0000C0   360 _P4_0	=	0x00c0
                           0000C1   361 _P4_1	=	0x00c1
                           0000C2   362 _P4_2	=	0x00c2
                           0000C3   363 _P4_3	=	0x00c3
                           0000C4   364 _P4_4	=	0x00c4
                           0000C5   365 _P4_5	=	0x00c5
                           0000C6   366 _P4_6	=	0x00c6
                           0000C7   367 _P4_7	=	0x00c7
                           0000E8   368 _P5_0	=	0x00e8
                           0000E9   369 _P5_1	=	0x00e9
                           0000EA   370 _P5_2	=	0x00ea
                           0000EB   371 _P5_3	=	0x00eb
                           0000EC   372 _P5_4	=	0x00ec
                           0000ED   373 _P5_5	=	0x00ed
                           0000EE   374 _P5_6	=	0x00ee
                           0000EF   375 _P5_7	=	0x00ef
                           0000F0   376 _BREG_F0	=	0x00f0
                           0000F1   377 _BREG_F1	=	0x00f1
                           0000F2   378 _BREG_F2	=	0x00f2
                           0000F3   379 _BREG_F3	=	0x00f3
                           0000F4   380 _BREG_F4	=	0x00f4
                           0000F5   381 _BREG_F5	=	0x00f5
                           0000F6   382 _BREG_F6	=	0x00f6
                           0000F7   383 _BREG_F7	=	0x00f7
                           0000B0   384 _RXD0	=	0x00b0
                           0000B1   385 _TXD0	=	0x00b1
                           000080   386 _P0_0	=	0x0080
                           000081   387 _P0_1	=	0x0081
                           000082   388 _P0_2	=	0x0082
                           000083   389 _P0_3	=	0x0083
                           000084   390 _P0_4	=	0x0084
                           000085   391 _P0_5	=	0x0085
                           000086   392 _P0_6	=	0x0086
                           000087   393 _P0_7	=	0x0087
                           000088   394 _IT0	=	0x0088
                           000089   395 _IE0	=	0x0089
                           00008A   396 _IT1	=	0x008a
                           00008B   397 _IE1	=	0x008b
                           00008C   398 _TR0	=	0x008c
                           00008D   399 _TF0	=	0x008d
                           00008E   400 _TR1	=	0x008e
                           00008F   401 _TF1	=	0x008f
                           000090   402 _P1_0	=	0x0090
                           000091   403 _P1_1	=	0x0091
                           000092   404 _P1_2	=	0x0092
                           000093   405 _P1_3	=	0x0093
                           000094   406 _P1_4	=	0x0094
                           000095   407 _P1_5	=	0x0095
                           000096   408 _P1_6	=	0x0096
                           000097   409 _P1_7	=	0x0097
                           000098   410 _RI	=	0x0098
                           000099   411 _TI	=	0x0099
                           00009A   412 _RB8	=	0x009a
                           00009B   413 _TB8	=	0x009b
                           00009C   414 _REN	=	0x009c
                           00009D   415 _SM2	=	0x009d
                           00009E   416 _SM1	=	0x009e
                           00009F   417 _SM0	=	0x009f
                           0000A0   418 _P2_0	=	0x00a0
                           0000A1   419 _P2_1	=	0x00a1
                           0000A2   420 _P2_2	=	0x00a2
                           0000A3   421 _P2_3	=	0x00a3
                           0000A4   422 _P2_4	=	0x00a4
                           0000A5   423 _P2_5	=	0x00a5
                           0000A6   424 _P2_6	=	0x00a6
                           0000A7   425 _P2_7	=	0x00a7
                           0000A8   426 _EX0	=	0x00a8
                           0000A9   427 _ET0	=	0x00a9
                           0000AA   428 _EX1	=	0x00aa
                           0000AB   429 _ET1	=	0x00ab
                           0000AC   430 _ES	=	0x00ac
                           0000AF   431 _EA	=	0x00af
                           0000B0   432 _P3_0	=	0x00b0
                           0000B1   433 _P3_1	=	0x00b1
                           0000B2   434 _P3_2	=	0x00b2
                           0000B3   435 _P3_3	=	0x00b3
                           0000B4   436 _P3_4	=	0x00b4
                           0000B5   437 _P3_5	=	0x00b5
                           0000B6   438 _P3_6	=	0x00b6
                           0000B7   439 _P3_7	=	0x00b7
                           0000B0   440 _RXD	=	0x00b0
                           0000B1   441 _TXD	=	0x00b1
                           0000B2   442 _INT0	=	0x00b2
                           0000B3   443 _INT1	=	0x00b3
                           0000B4   444 _T0	=	0x00b4
                           0000B5   445 _T1	=	0x00b5
                           0000B6   446 _WR	=	0x00b6
                           0000B7   447 _RD	=	0x00b7
                           0000B8   448 _PX0	=	0x00b8
                           0000B9   449 _PT0	=	0x00b9
                           0000BA   450 _PX1	=	0x00ba
                           0000BB   451 _PT1	=	0x00bb
                           0000BC   452 _PS	=	0x00bc
                           0000D0   453 _P	=	0x00d0
                           0000D1   454 _F1	=	0x00d1
                           0000D2   455 _OV	=	0x00d2
                           0000D3   456 _RS0	=	0x00d3
                           0000D4   457 _RS1	=	0x00d4
                           0000D5   458 _F0	=	0x00d5
                           0000D6   459 _AC	=	0x00d6
                           0000D7   460 _CY	=	0x00d7
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable register banks
                                    463 ;--------------------------------------------------------
                                    464 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        465 	.ds 8
                                    466 ;--------------------------------------------------------
                                    467 ; overlayable bit register bank
                                    468 ;--------------------------------------------------------
                                    469 	.area BIT_BANK	(REL,OVR,DATA)
      000022                        470 bits:
      000022                        471 	.ds 1
                           008000   472 	b0 = bits[0]
                           008100   473 	b1 = bits[1]
                           008200   474 	b2 = bits[2]
                           008300   475 	b3 = bits[3]
                           008400   476 	b4 = bits[4]
                           008500   477 	b5 = bits[5]
                           008600   478 	b6 = bits[6]
                           008700   479 	b7 = bits[7]
                                    480 ;--------------------------------------------------------
                                    481 ; internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area DSEG    (DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; overlayable items in internal ram
                                    486 ;--------------------------------------------------------
                                    487 ;--------------------------------------------------------
                                    488 ; Stack segment in internal ram
                                    489 ;--------------------------------------------------------
                                    490 	.area	SSEG
      00002D                        491 __start__stack:
      00002D                        492 	.ds	1
                                    493 
                                    494 ;--------------------------------------------------------
                                    495 ; indirectly addressable internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area ISEG    (DATA)
                                    498 ;--------------------------------------------------------
                                    499 ; absolute internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area IABS    (ABS,DATA)
                                    502 	.area IABS    (ABS,DATA)
                                    503 ;--------------------------------------------------------
                                    504 ; bit data
                                    505 ;--------------------------------------------------------
                                    506 	.area BSEG    (BIT)
      00000C                        507 _main_sloc0_1_0:
      00000C                        508 	.ds 1
                                    509 ;--------------------------------------------------------
                                    510 ; paged external ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area PSEG    (PAG,XDATA)
                                    513 ;--------------------------------------------------------
                                    514 ; external ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area XSEG    (XDATA)
      0004F1                        517 _delay_ms_ms_65536_102:
      0004F1                        518 	.ds 2
      0004F3                        519 _delay_sec_sec_65536_106:
      0004F3                        520 	.ds 2
      0004F5                        521 _timer0_ISR_counter_02s_65537_110:
      0004F5                        522 	.ds 2
      0004F7                        523 _timer0_ISR_save_cursor_addr_65537_110:
      0004F7                        524 	.ds 1
      0004F8                        525 _main_fingerprint_count_65536_120:
      0004F8                        526 	.ds 2
      0004FA                        527 _main_char_detected_196608_122:
      0004FA                        528 	.ds 1
                                    529 ;--------------------------------------------------------
                                    530 ; absolute external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XABS    (ABS,XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; external initialized ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XISEG   (XDATA)
      000575                        537 _update_lcd::
      000575                        538 	.ds 2
      000577                        539 _tenth_of_second::
      000577                        540 	.ds 1
      000578                        541 _seconds_ones_digit::
      000578                        542 	.ds 1
      000579                        543 _seconds_tens_digit::
      000579                        544 	.ds 1
      00057A                        545 _minutes_ones_digit::
      00057A                        546 	.ds 1
      00057B                        547 _minutes_tens_digit::
      00057B                        548 	.ds 1
                                    549 	.area HOME    (CODE)
                                    550 	.area GSINIT0 (CODE)
                                    551 	.area GSINIT1 (CODE)
                                    552 	.area GSINIT2 (CODE)
                                    553 	.area GSINIT3 (CODE)
                                    554 	.area GSINIT4 (CODE)
                                    555 	.area GSINIT5 (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.area GSFINAL (CODE)
                                    558 	.area CSEG    (CODE)
                                    559 ;--------------------------------------------------------
                                    560 ; interrupt vector
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
      000000                        563 __interrupt_vect:
      000000 02 00 3F         [24]  564 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  565 	reti
      000004                        566 	.ds	7
      00000B 02 12 5D         [24]  567 	ljmp	_timer0_ISR
                                    568 ;--------------------------------------------------------
                                    569 ; global & static initialisations
                                    570 ;--------------------------------------------------------
                                    571 	.area HOME    (CODE)
                                    572 	.area GSINIT  (CODE)
                                    573 	.area GSFINAL (CODE)
                                    574 	.area GSINIT  (CODE)
                                    575 	.globl __sdcc_gsinit_startup
                                    576 	.globl __sdcc_program_startup
                                    577 	.globl __start__stack
                                    578 	.globl __mcs51_genXINIT
                                    579 	.globl __mcs51_genXRAMCLEAR
                                    580 	.globl __mcs51_genRAMCLEAR
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'timer0_ISR'
                                    583 ;------------------------------------------------------------
                                    584 ;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_110'
                                    585 ;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_110'
                                    586 ;------------------------------------------------------------
                                    587 ;	main.c:73: static int counter_02s = 0; // Initialize a static variable called counter_02s with a value of 0
      000098 90 04 F5         [24]  588 	mov	dptr,#_timer0_ISR_counter_02s_65537_110
      00009B E4               [12]  589 	clr	a
      00009C F0               [24]  590 	movx	@dptr,a
      00009D A3               [24]  591 	inc	dptr
      00009E F0               [24]  592 	movx	@dptr,a
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'main'
                                    595 ;------------------------------------------------------------
                                    596 ;fingerprint_count         Allocated with name '_main_fingerprint_count_65536_120'
                                    597 ;char_detected             Allocated with name '_main_char_detected_196608_122'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:129: static int fingerprint_count = 0;
      00009F 90 04 F8         [24]  600 	mov	dptr,#_main_fingerprint_count_65536_120
      0000A2 E4               [12]  601 	clr	a
      0000A3 F0               [24]  602 	movx	@dptr,a
      0000A4 A3               [24]  603 	inc	dptr
      0000A5 F0               [24]  604 	movx	@dptr,a
                                    605 	.area GSFINAL (CODE)
      0000A6 02 00 0E         [24]  606 	ljmp	__sdcc_program_startup
                                    607 ;--------------------------------------------------------
                                    608 ; Home
                                    609 ;--------------------------------------------------------
                                    610 	.area HOME    (CODE)
                                    611 	.area HOME    (CODE)
      00000E                        612 __sdcc_program_startup:
      00000E 02 13 4E         [24]  613 	ljmp	_main
                                    614 ;	return from main will return to caller
                                    615 ;--------------------------------------------------------
                                    616 ; code
                                    617 ;--------------------------------------------------------
                                    618 	.area CSEG    (CODE)
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    621 ;------------------------------------------------------------
                                    622 ;	main.c:40: _sdcc_external_startup()
                                    623 ;	-----------------------------------------
                                    624 ;	 function _sdcc_external_startup
                                    625 ;	-----------------------------------------
      0011E7                        626 __sdcc_external_startup:
                           000007   627 	ar7 = 0x07
                           000006   628 	ar6 = 0x06
                           000005   629 	ar5 = 0x05
                           000004   630 	ar4 = 0x04
                           000003   631 	ar3 = 0x03
                           000002   632 	ar2 = 0x02
                           000001   633 	ar1 = 0x01
                           000000   634 	ar0 = 0x00
                                    635 ;	main.c:43: AUXR |= (XRS1 | XRS0);
      0011E7 43 8E 0C         [24]  636 	orl	_AUXR,#0x0c
                                    637 ;	main.c:45: return 0;
      0011EA 90 00 00         [24]  638 	mov	dptr,#0x0000
                                    639 ;	main.c:46: }
      0011ED 22               [24]  640 	ret
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'delay_ms'
                                    643 ;------------------------------------------------------------
                                    644 ;ms                        Allocated with name '_delay_ms_ms_65536_102'
                                    645 ;i                         Allocated with name '_delay_ms_i_65536_103'
                                    646 ;j                         Allocated with name '_delay_ms_j_65536_103'
                                    647 ;------------------------------------------------------------
                                    648 ;	main.c:56: void delay_ms(unsigned int ms) {
                                    649 ;	-----------------------------------------
                                    650 ;	 function delay_ms
                                    651 ;	-----------------------------------------
      0011EE                        652 _delay_ms:
      0011EE AF 83            [24]  653 	mov	r7,dph
      0011F0 E5 82            [12]  654 	mov	a,dpl
      0011F2 90 04 F1         [24]  655 	mov	dptr,#_delay_ms_ms_65536_102
      0011F5 F0               [24]  656 	movx	@dptr,a
      0011F6 EF               [12]  657 	mov	a,r7
      0011F7 A3               [24]  658 	inc	dptr
      0011F8 F0               [24]  659 	movx	@dptr,a
                                    660 ;	main.c:58: for(i = 0; i < ms; i++)
      0011F9 90 04 F1         [24]  661 	mov	dptr,#_delay_ms_ms_65536_102
      0011FC E0               [24]  662 	movx	a,@dptr
      0011FD FE               [12]  663 	mov	r6,a
      0011FE A3               [24]  664 	inc	dptr
      0011FF E0               [24]  665 	movx	a,@dptr
      001200 FF               [12]  666 	mov	r7,a
      001201 7C 00            [12]  667 	mov	r4,#0x00
      001203 7D 00            [12]  668 	mov	r5,#0x00
      001205                        669 00107$:
      001205 C3               [12]  670 	clr	c
      001206 EC               [12]  671 	mov	a,r4
      001207 9E               [12]  672 	subb	a,r6
      001208 ED               [12]  673 	mov	a,r5
      001209 9F               [12]  674 	subb	a,r7
      00120A 50 14            [24]  675 	jnc	00109$
                                    676 ;	main.c:59: for(j = 0; j < 1275; j++);
      00120C 7A FB            [12]  677 	mov	r2,#0xfb
      00120E 7B 04            [12]  678 	mov	r3,#0x04
      001210                        679 00105$:
      001210 1A               [12]  680 	dec	r2
      001211 BA FF 01         [24]  681 	cjne	r2,#0xff,00130$
      001214 1B               [12]  682 	dec	r3
      001215                        683 00130$:
      001215 EA               [12]  684 	mov	a,r2
      001216 4B               [12]  685 	orl	a,r3
      001217 70 F7            [24]  686 	jnz	00105$
                                    687 ;	main.c:58: for(i = 0; i < ms; i++)
      001219 0C               [12]  688 	inc	r4
      00121A BC 00 E8         [24]  689 	cjne	r4,#0x00,00107$
      00121D 0D               [12]  690 	inc	r5
      00121E 80 E5            [24]  691 	sjmp	00107$
      001220                        692 00109$:
                                    693 ;	main.c:60: }
      001220 22               [24]  694 	ret
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'delay_sec'
                                    697 ;------------------------------------------------------------
                                    698 ;sec                       Allocated with name '_delay_sec_sec_65536_106'
                                    699 ;i                         Allocated with name '_delay_sec_i_65536_107'
                                    700 ;------------------------------------------------------------
                                    701 ;	main.c:62: void delay_sec(unsigned int sec) {
                                    702 ;	-----------------------------------------
                                    703 ;	 function delay_sec
                                    704 ;	-----------------------------------------
      001221                        705 _delay_sec:
      001221 AF 83            [24]  706 	mov	r7,dph
      001223 E5 82            [12]  707 	mov	a,dpl
      001225 90 04 F3         [24]  708 	mov	dptr,#_delay_sec_sec_65536_106
      001228 F0               [24]  709 	movx	@dptr,a
      001229 EF               [12]  710 	mov	a,r7
      00122A A3               [24]  711 	inc	dptr
      00122B F0               [24]  712 	movx	@dptr,a
                                    713 ;	main.c:64: for(i = 0; i < sec; i++)
      00122C 90 04 F3         [24]  714 	mov	dptr,#_delay_sec_sec_65536_106
      00122F E0               [24]  715 	movx	a,@dptr
      001230 FE               [12]  716 	mov	r6,a
      001231 A3               [24]  717 	inc	dptr
      001232 E0               [24]  718 	movx	a,@dptr
      001233 FF               [12]  719 	mov	r7,a
      001234 7C 00            [12]  720 	mov	r4,#0x00
      001236 7D 00            [12]  721 	mov	r5,#0x00
      001238                        722 00103$:
      001238 C3               [12]  723 	clr	c
      001239 EC               [12]  724 	mov	a,r4
      00123A 9E               [12]  725 	subb	a,r6
      00123B ED               [12]  726 	mov	a,r5
      00123C 9F               [12]  727 	subb	a,r7
      00123D 50 1D            [24]  728 	jnc	00105$
                                    729 ;	main.c:65: delay_ms(1000);
      00123F 90 03 E8         [24]  730 	mov	dptr,#0x03e8
      001242 C0 07            [24]  731 	push	ar7
      001244 C0 06            [24]  732 	push	ar6
      001246 C0 05            [24]  733 	push	ar5
      001248 C0 04            [24]  734 	push	ar4
      00124A 12 11 EE         [24]  735 	lcall	_delay_ms
      00124D D0 04            [24]  736 	pop	ar4
      00124F D0 05            [24]  737 	pop	ar5
      001251 D0 06            [24]  738 	pop	ar6
      001253 D0 07            [24]  739 	pop	ar7
                                    740 ;	main.c:64: for(i = 0; i < sec; i++)
      001255 0C               [12]  741 	inc	r4
      001256 BC 00 DF         [24]  742 	cjne	r4,#0x00,00103$
      001259 0D               [12]  743 	inc	r5
      00125A 80 DC            [24]  744 	sjmp	00103$
      00125C                        745 00105$:
                                    746 ;	main.c:66: }
      00125C 22               [24]  747 	ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'timer0_ISR'
                                    750 ;------------------------------------------------------------
                                    751 ;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_110'
                                    752 ;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_110'
                                    753 ;------------------------------------------------------------
                                    754 ;	main.c:68: void timer0_ISR() __interrupt(1) { // Define Timer 0 interrupt service routine
                                    755 ;	-----------------------------------------
                                    756 ;	 function timer0_ISR
                                    757 ;	-----------------------------------------
      00125D                        758 _timer0_ISR:
      00125D C0 22            [24]  759 	push	bits
      00125F C0 E0            [24]  760 	push	acc
      001261 C0 F0            [24]  761 	push	b
      001263 C0 82            [24]  762 	push	dpl
      001265 C0 83            [24]  763 	push	dph
      001267 C0 07            [24]  764 	push	(0+7)
      001269 C0 06            [24]  765 	push	(0+6)
      00126B C0 05            [24]  766 	push	(0+5)
      00126D C0 04            [24]  767 	push	(0+4)
      00126F C0 03            [24]  768 	push	(0+3)
      001271 C0 02            [24]  769 	push	(0+2)
      001273 C0 01            [24]  770 	push	(0+1)
      001275 C0 00            [24]  771 	push	(0+0)
      001277 C0 D0            [24]  772 	push	psw
      001279 75 D0 00         [24]  773 	mov	psw,#0x00
                                    774 ;	main.c:69: EA = 0;     // Disable interrupts
                                    775 ;	assignBit
      00127C C2 AF            [12]  776 	clr	_EA
                                    777 ;	main.c:71: TF0 = 0;    // Clear Timer 0 interrupt flag
                                    778 ;	assignBit
      00127E C2 8D            [12]  779 	clr	_TF0
                                    780 ;	main.c:74: volatile uint8_t save_cursor_addr = get_cursor_address(); // Get the current cursor address and store it in save_cursor_addr
      001280 12 01 7B         [24]  781 	lcall	_get_cursor_address
      001283 E5 82            [12]  782 	mov	a,dpl
      001285 90 04 F7         [24]  783 	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_110
      001288 F0               [24]  784 	movx	@dptr,a
                                    785 ;	main.c:77: if (counter_02s == 2) { // If the counter_02s equals 2, which means 0.2 seconds have passed
      001289 90 04 F5         [24]  786 	mov	dptr,#_timer0_ISR_counter_02s_65537_110
      00128C E0               [24]  787 	movx	a,@dptr
      00128D FE               [12]  788 	mov	r6,a
      00128E A3               [24]  789 	inc	dptr
      00128F E0               [24]  790 	movx	a,@dptr
      001290 FF               [12]  791 	mov	r7,a
      001291 BE 02 1A         [24]  792 	cjne	r6,#0x02,00102$
      001294 BF 00 17         [24]  793 	cjne	r7,#0x00,00102$
                                    794 ;	main.c:78: P1_1 = P1_1 ^ 1;    // Toggle pin P1_1
      001297 B2 91            [12]  795 	cpl	_P1_1
                                    796 ;	main.c:79: update_lcd  = 1;    // Set the update_lcd flag to 1 to update the LCD
      001299 90 05 75         [24]  797 	mov	dptr,#_update_lcd
      00129C 74 01            [12]  798 	mov	a,#0x01
      00129E F0               [24]  799 	movx	@dptr,a
      00129F E4               [12]  800 	clr	a
      0012A0 A3               [24]  801 	inc	dptr
      0012A1 F0               [24]  802 	movx	@dptr,a
                                    803 ;	main.c:80: counter_02s = 0;    // Reset the counter_02s
      0012A2 90 04 F5         [24]  804 	mov	dptr,#_timer0_ISR_counter_02s_65537_110
      0012A5 F0               [24]  805 	movx	@dptr,a
      0012A6 A3               [24]  806 	inc	dptr
      0012A7 F0               [24]  807 	movx	@dptr,a
                                    808 ;	main.c:81: tenth_of_second++;  // Increment the tenth of a second counter
      0012A8 90 05 77         [24]  809 	mov	dptr,#_tenth_of_second
      0012AB E0               [24]  810 	movx	a,@dptr
      0012AC 04               [12]  811 	inc	a
      0012AD F0               [24]  812 	movx	@dptr,a
      0012AE                        813 00102$:
                                    814 ;	main.c:83: counter_02s++;  // Increment the counter_02s
      0012AE 90 04 F5         [24]  815 	mov	dptr,#_timer0_ISR_counter_02s_65537_110
      0012B1 E0               [24]  816 	movx	a,@dptr
      0012B2 24 01            [12]  817 	add	a,#0x01
      0012B4 F0               [24]  818 	movx	@dptr,a
      0012B5 A3               [24]  819 	inc	dptr
      0012B6 E0               [24]  820 	movx	a,@dptr
      0012B7 34 00            [12]  821 	addc	a,#0x00
      0012B9 F0               [24]  822 	movx	@dptr,a
                                    823 ;	main.c:85: TL0 = 0xfd;     // Set the low value of Timer 0 to 0xfd
      0012BA 75 8A FD         [24]  824 	mov	_TL0,#0xfd
                                    825 ;	main.c:86: TH0 = 0x4b;     // Set the high value of Timer 0 to 0x4b
      0012BD 75 8C 4B         [24]  826 	mov	_TH0,#0x4b
                                    827 ;	main.c:88: if (tenth_of_second == ':') { // If the tenth of a second counter equals ':', which means 1 second has passed
      0012C0 90 05 77         [24]  828 	mov	dptr,#_tenth_of_second
      0012C3 E0               [24]  829 	movx	a,@dptr
      0012C4 FF               [12]  830 	mov	r7,a
      0012C5 BF 3A 4A         [24]  831 	cjne	r7,#0x3a,00112$
                                    832 ;	main.c:89: tenth_of_second = '0'; // Reset the tenth of a second counter to '0'
      0012C8 90 05 77         [24]  833 	mov	dptr,#_tenth_of_second
      0012CB 74 30            [12]  834 	mov	a,#0x30
      0012CD F0               [24]  835 	movx	@dptr,a
                                    836 ;	main.c:90: seconds_ones_digit++; // Increment the first digit of the seconds counter
      0012CE 90 05 78         [24]  837 	mov	dptr,#_seconds_ones_digit
      0012D1 E0               [24]  838 	movx	a,@dptr
      0012D2 04               [12]  839 	inc	a
      0012D3 F0               [24]  840 	movx	@dptr,a
                                    841 ;	main.c:92: if (seconds_ones_digit == ':') { // If the first digit of the seconds counter equals ':', which means 10 seconds have passed
      0012D4 E0               [24]  842 	movx	a,@dptr
      0012D5 FF               [12]  843 	mov	r7,a
      0012D6 BF 3A 39         [24]  844 	cjne	r7,#0x3a,00112$
                                    845 ;	main.c:93: seconds_ones_digit = '0'; // Reset the first digit of the seconds counter to '0'
      0012D9 90 05 78         [24]  846 	mov	dptr,#_seconds_ones_digit
      0012DC 74 30            [12]  847 	mov	a,#0x30
      0012DE F0               [24]  848 	movx	@dptr,a
                                    849 ;	main.c:94: seconds_tens_digit++; // Increment the second digit of the seconds counter
      0012DF 90 05 79         [24]  850 	mov	dptr,#_seconds_tens_digit
      0012E2 E0               [24]  851 	movx	a,@dptr
      0012E3 04               [12]  852 	inc	a
      0012E4 F0               [24]  853 	movx	@dptr,a
                                    854 ;	main.c:96: if (seconds_tens_digit == '6') { // If the second digit of the seconds counter equals '6', which means 1 minute has passed
      0012E5 E0               [24]  855 	movx	a,@dptr
      0012E6 FF               [12]  856 	mov	r7,a
      0012E7 BF 36 28         [24]  857 	cjne	r7,#0x36,00112$
                                    858 ;	main.c:97: seconds_tens_digit = '0'; // Reset the second digit of the seconds counter to '0'
      0012EA 90 05 79         [24]  859 	mov	dptr,#_seconds_tens_digit
      0012ED 74 30            [12]  860 	mov	a,#0x30
      0012EF F0               [24]  861 	movx	@dptr,a
                                    862 ;	main.c:98: minutes_ones_digit++; // Increment the first digit of the minutes counter
      0012F0 90 05 7A         [24]  863 	mov	dptr,#_minutes_ones_digit
      0012F3 E0               [24]  864 	movx	a,@dptr
      0012F4 04               [12]  865 	inc	a
      0012F5 F0               [24]  866 	movx	@dptr,a
                                    867 ;	main.c:100: if (minutes_ones_digit == ':') { // If the first digit of the minutes counter equals ':', which means 10 minutes have passed
      0012F6 E0               [24]  868 	movx	a,@dptr
      0012F7 FF               [12]  869 	mov	r7,a
      0012F8 BF 3A 17         [24]  870 	cjne	r7,#0x3a,00112$
                                    871 ;	main.c:101: minutes_ones_digit = '0'; // Reset the first digit of the minutes counter to '0'
      0012FB 90 05 7A         [24]  872 	mov	dptr,#_minutes_ones_digit
      0012FE 74 30            [12]  873 	mov	a,#0x30
      001300 F0               [24]  874 	movx	@dptr,a
                                    875 ;	main.c:102: minutes_tens_digit++; // Increment the second digit of the minutes counter
      001301 90 05 7B         [24]  876 	mov	dptr,#_minutes_tens_digit
      001304 E0               [24]  877 	movx	a,@dptr
      001305 04               [12]  878 	inc	a
      001306 F0               [24]  879 	movx	@dptr,a
                                    880 ;	main.c:104: if (minutes_tens_digit == '6') { // If the second digit of the minutes counter equals '6', which means 1 hour has passed
      001307 E0               [24]  881 	movx	a,@dptr
      001308 FF               [12]  882 	mov	r7,a
      001309 BF 36 06         [24]  883 	cjne	r7,#0x36,00112$
                                    884 ;	main.c:105: minutes_tens_digit = '0'; // Reset the second digit of the minutes counter to '0'
      00130C 90 05 7B         [24]  885 	mov	dptr,#_minutes_tens_digit
      00130F 74 30            [12]  886 	mov	a,#0x30
      001311 F0               [24]  887 	movx	@dptr,a
      001312                        888 00112$:
                                    889 ;	main.c:111: lcdgotoaddr(save_cursor_addr); // Move the cursor to the previous cursor address
      001312 90 04 F7         [24]  890 	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_110
      001315 E0               [24]  891 	movx	a,@dptr
      001316 F5 82            [12]  892 	mov	dpl,a
      001318 12 01 88         [24]  893 	lcall	_lcdgotoaddr
                                    894 ;	main.c:112: EA=1; // Enable interrupts
                                    895 ;	assignBit
      00131B D2 AF            [12]  896 	setb	_EA
                                    897 ;	main.c:113: }
      00131D D0 D0            [24]  898 	pop	psw
      00131F D0 00            [24]  899 	pop	(0+0)
      001321 D0 01            [24]  900 	pop	(0+1)
      001323 D0 02            [24]  901 	pop	(0+2)
      001325 D0 03            [24]  902 	pop	(0+3)
      001327 D0 04            [24]  903 	pop	(0+4)
      001329 D0 05            [24]  904 	pop	(0+5)
      00132B D0 06            [24]  905 	pop	(0+6)
      00132D D0 07            [24]  906 	pop	(0+7)
      00132F D0 83            [24]  907 	pop	dph
      001331 D0 82            [24]  908 	pop	dpl
      001333 D0 F0            [24]  909 	pop	b
      001335 D0 E0            [24]  910 	pop	acc
      001337 D0 22            [24]  911 	pop	bits
      001339 32               [24]  912 	reti
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'init_timer'
                                    915 ;------------------------------------------------------------
                                    916 ;	main.c:116: void init_timer(void){
                                    917 ;	-----------------------------------------
                                    918 ;	 function init_timer
                                    919 ;	-----------------------------------------
      00133A                        920 _init_timer:
                                    921 ;	main.c:117: TCON=TCON&(~0x30);   // Clearing the last 2 bits in TCON register
      00133A 53 88 CF         [24]  922 	anl	_TCON,#0xcf
                                    923 ;	main.c:118: TMOD |= 0x01;        // Setting the Timer 0 mode to 16-bit mode
      00133D 43 89 01         [24]  924 	orl	_TMOD,#0x01
                                    925 ;	main.c:119: TL0 = 0xfd;          // Setting the initial value of Timer 0 low byte
      001340 75 8A FD         [24]  926 	mov	_TL0,#0xfd
                                    927 ;	main.c:120: TH0 = 0x4b;          // Setting the initial value of Timer 0 high byte
      001343 75 8C 4B         [24]  928 	mov	_TH0,#0x4b
                                    929 ;	main.c:121: IE   |=0x82;         // Enabling Timer 0 interrupt
      001346 43 A8 82         [24]  930 	orl	_IE,#0x82
                                    931 ;	main.c:122: PT0 = 1;             // Setting the Timer 0 interrupt priority to high
                                    932 ;	assignBit
      001349 D2 B9            [12]  933 	setb	_PT0
                                    934 ;	main.c:123: TR0 = 1;             // Starting Timer 0
                                    935 ;	assignBit
      00134B D2 8C            [12]  936 	setb	_TR0
                                    937 ;	main.c:124: }
      00134D 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'main'
                                    941 ;------------------------------------------------------------
                                    942 ;fingerprint_count         Allocated with name '_main_fingerprint_count_65536_120'
                                    943 ;char_detected             Allocated with name '_main_char_detected_196608_122'
                                    944 ;------------------------------------------------------------
                                    945 ;	main.c:127: void main(void)
                                    946 ;	-----------------------------------------
                                    947 ;	 function main
                                    948 ;	-----------------------------------------
      00134E                        949 _main:
                                    950 ;	main.c:131: uart_init();        // Initialize UART for serial communication
      00134E 12 15 13         [24]  951 	lcall	_uart_init
                                    952 ;	main.c:132: init_lcd();         // Initialize LCD
      001351 12 01 19         [24]  953 	lcall	_init_lcd
                                    954 ;	main.c:135: lcdgotoxy('0','0');
      001354 90 04 06         [24]  955 	mov	dptr,#_lcdgotoxy_PARM_2
      001357 74 30            [12]  956 	mov	a,#0x30
      001359 F0               [24]  957 	movx	@dptr,a
      00135A 75 82 30         [24]  958 	mov	dpl,#0x30
      00135D 12 01 A5         [24]  959 	lcall	_lcdgotoxy
                                    960 ;	main.c:136: lcdputstr("Hello");
      001360 90 2D B8         [24]  961 	mov	dptr,#___str_0
      001363 75 F0 80         [24]  962 	mov	b,#0x80
      001366 12 02 C1         [24]  963 	lcall	_lcdputstr
                                    964 ;	main.c:137: lcdgotoxy('1','0');
      001369 90 04 06         [24]  965 	mov	dptr,#_lcdgotoxy_PARM_2
      00136C 74 30            [12]  966 	mov	a,#0x30
      00136E F0               [24]  967 	movx	@dptr,a
      00136F 75 82 31         [24]  968 	mov	dpl,#0x31
      001372 12 01 A5         [24]  969 	lcall	_lcdgotoxy
                                    970 ;	main.c:138: lcdputstr("STM32F411E-Disco");
      001375 90 2D BE         [24]  971 	mov	dptr,#___str_1
      001378 75 F0 80         [24]  972 	mov	b,#0x80
      00137B 12 02 C1         [24]  973 	lcall	_lcdputstr
                                    974 ;	main.c:139: lcdgotoxy('0','0');
      00137E 90 04 06         [24]  975 	mov	dptr,#_lcdgotoxy_PARM_2
      001381 74 30            [12]  976 	mov	a,#0x30
      001383 F0               [24]  977 	movx	@dptr,a
      001384 75 82 30         [24]  978 	mov	dpl,#0x30
      001387 12 01 A5         [24]  979 	lcall	_lcdgotoxy
                                    980 ;	main.c:140: delay_sec(1);
      00138A 90 00 01         [24]  981 	mov	dptr,#0x0001
      00138D 12 12 21         [24]  982 	lcall	_delay_sec
                                    983 ;	main.c:141: while(1)
      001390                        984 00111$:
                                    985 ;	main.c:152: if(RI)
      001390 30 98 FD         [24]  986 	jnb	_RI,00111$
                                    987 ;	main.c:155: char_detected = SBUF;           // Store the character in a variable
      001393 90 04 FA         [24]  988 	mov	dptr,#_main_char_detected_196608_122
      001396 E5 99            [12]  989 	mov	a,_SBUF
      001398 F0               [24]  990 	movx	@dptr,a
                                    991 ;	main.c:159: RI = 0;                         // Reset the flag
                                    992 ;	assignBit
      001399 C2 98            [12]  993 	clr	_RI
                                    994 ;	main.c:161: switch(char_detected)           // Perform a certain action based on the received character
      00139B 90 04 FA         [24]  995 	mov	dptr,#_main_char_detected_196608_122
      00139E E0               [24]  996 	movx	a,@dptr
      00139F FF               [12]  997 	mov	r7,a
      0013A0 BF 41 02         [24]  998 	cjne	r7,#0x41,00144$
      0013A3 80 19            [24]  999 	sjmp	00101$
      0013A5                       1000 00144$:
      0013A5 BF 42 02         [24] 1001 	cjne	r7,#0x42,00145$
      0013A8 80 70            [24] 1002 	sjmp	00102$
      0013AA                       1003 00145$:
      0013AA BF 43 03         [24] 1004 	cjne	r7,#0x43,00146$
      0013AD 02 14 5F         [24] 1005 	ljmp	00103$
      0013B0                       1006 00146$:
      0013B0 BF 44 03         [24] 1007 	cjne	r7,#0x44,00147$
      0013B3 02 14 A4         [24] 1008 	ljmp	00104$
      0013B6                       1009 00147$:
      0013B6 BF 5A 03         [24] 1010 	cjne	r7,#0x5a,00148$
      0013B9 02 14 FB         [24] 1011 	ljmp	00105$
      0013BC                       1012 00148$:
                                   1013 ;	main.c:163: case 'A':                       // If the character 'L' is received
      0013BC 80 D2            [24] 1014 	sjmp	00111$
      0013BE                       1015 00101$:
                                   1016 ;	main.c:176: }
      0013BE D2 0C            [12] 1017 	setb	_main_sloc0_1_0
      0013C0 10 AF 02         [24] 1018 	jbc	ea,00149$
      0013C3 C2 0C            [12] 1019 	clr	_main_sloc0_1_0
      0013C5                       1020 00149$:
                                   1021 ;	main.c:167: handler_lcdclear();
      0013C5 12 03 15         [24] 1022 	lcall	_handler_lcdclear
                                   1023 ;	main.c:168: lcdgotoxy('0','0');
      0013C8 90 04 06         [24] 1024 	mov	dptr,#_lcdgotoxy_PARM_2
      0013CB 74 30            [12] 1025 	mov	a,#0x30
      0013CD F0               [24] 1026 	movx	@dptr,a
      0013CE 75 82 30         [24] 1027 	mov	dpl,#0x30
      0013D1 12 01 A5         [24] 1028 	lcall	_lcdgotoxy
                                   1029 ;	main.c:169: lcdputstr("|   New User   |");
      0013D4 90 2D CF         [24] 1030 	mov	dptr,#___str_2
      0013D7 75 F0 80         [24] 1031 	mov	b,#0x80
      0013DA 12 02 C1         [24] 1032 	lcall	_lcdputstr
                                   1033 ;	main.c:170: lcdgotoxy('1','0');
      0013DD 90 04 06         [24] 1034 	mov	dptr,#_lcdgotoxy_PARM_2
      0013E0 74 30            [12] 1035 	mov	a,#0x30
      0013E2 F0               [24] 1036 	movx	@dptr,a
      0013E3 75 82 31         [24] 1037 	mov	dpl,#0x31
      0013E6 12 01 A5         [24] 1038 	lcall	_lcdgotoxy
                                   1039 ;	main.c:171: lcdputstr("|   Enrolled   |");
      0013E9 90 2D E0         [24] 1040 	mov	dptr,#___str_3
      0013EC 75 F0 80         [24] 1041 	mov	b,#0x80
      0013EF 12 02 C1         [24] 1042 	lcall	_lcdputstr
                                   1043 ;	main.c:172: lcdgotoxy('0','0');
      0013F2 90 04 06         [24] 1044 	mov	dptr,#_lcdgotoxy_PARM_2
      0013F5 74 30            [12] 1045 	mov	a,#0x30
      0013F7 F0               [24] 1046 	movx	@dptr,a
      0013F8 75 82 30         [24] 1047 	mov	dpl,#0x30
      0013FB 12 01 A5         [24] 1048 	lcall	_lcdgotoxy
                                   1049 ;	main.c:173: handle_newuser_custom_char();
      0013FE 12 10 3D         [24] 1050 	lcall	_handle_newuser_custom_char
                                   1051 ;	main.c:174: delay_sec(1);
      001401 90 00 01         [24] 1052 	mov	dptr,#0x0001
      001404 12 12 21         [24] 1053 	lcall	_delay_sec
                                   1054 ;	main.c:175: fingerprint_count++;
      001407 90 04 F8         [24] 1055 	mov	dptr,#_main_fingerprint_count_65536_120
      00140A E0               [24] 1056 	movx	a,@dptr
      00140B 24 01            [12] 1057 	add	a,#0x01
      00140D F0               [24] 1058 	movx	@dptr,a
      00140E A3               [24] 1059 	inc	dptr
      00140F E0               [24] 1060 	movx	a,@dptr
      001410 34 00            [12] 1061 	addc	a,#0x00
      001412 F0               [24] 1062 	movx	@dptr,a
      001413 A2 0C            [12] 1063 	mov	c,_main_sloc0_1_0
      001415 92 AF            [24] 1064 	mov	ea,c
                                   1065 ;	main.c:177: break;
      001417 02 13 90         [24] 1066 	ljmp	00111$
                                   1067 ;	main.c:179: case 'B': // If the character 'A' is received
      00141A                       1068 00102$:
                                   1069 ;	main.c:180: handler_lcdclear();
      00141A 12 03 15         [24] 1070 	lcall	_handler_lcdclear
                                   1071 ;	main.c:181: lcdgotoxy('0','0');
      00141D 90 04 06         [24] 1072 	mov	dptr,#_lcdgotoxy_PARM_2
      001420 74 30            [12] 1073 	mov	a,#0x30
      001422 F0               [24] 1074 	movx	@dptr,a
      001423 75 82 30         [24] 1075 	mov	dpl,#0x30
      001426 12 01 A5         [24] 1076 	lcall	_lcdgotoxy
                                   1077 ;	main.c:182: lcdputstr("|      User    |");
      001429 90 2D F1         [24] 1078 	mov	dptr,#___str_4
      00142C 75 F0 80         [24] 1079 	mov	b,#0x80
      00142F 12 02 C1         [24] 1080 	lcall	_lcdputstr
                                   1081 ;	main.c:183: lcdgotoxy('1','0');
      001432 90 04 06         [24] 1082 	mov	dptr,#_lcdgotoxy_PARM_2
      001435 74 30            [12] 1083 	mov	a,#0x30
      001437 F0               [24] 1084 	movx	@dptr,a
      001438 75 82 31         [24] 1085 	mov	dpl,#0x31
      00143B 12 01 A5         [24] 1086 	lcall	_lcdgotoxy
                                   1087 ;	main.c:184: lcdputstr("|  Authorized  |");
      00143E 90 2E 02         [24] 1088 	mov	dptr,#___str_5
      001441 75 F0 80         [24] 1089 	mov	b,#0x80
      001444 12 02 C1         [24] 1090 	lcall	_lcdputstr
                                   1091 ;	main.c:185: lcdgotoxy('0','0');
      001447 90 04 06         [24] 1092 	mov	dptr,#_lcdgotoxy_PARM_2
      00144A 74 30            [12] 1093 	mov	a,#0x30
      00144C F0               [24] 1094 	movx	@dptr,a
      00144D 75 82 30         [24] 1095 	mov	dpl,#0x30
      001450 12 01 A5         [24] 1096 	lcall	_lcdgotoxy
                                   1097 ;	main.c:186: handle_unlock_custom_char();
      001453 12 0E D2         [24] 1098 	lcall	_handle_unlock_custom_char
                                   1099 ;	main.c:187: delay_sec(1);
      001456 90 00 01         [24] 1100 	mov	dptr,#0x0001
      001459 12 12 21         [24] 1101 	lcall	_delay_sec
                                   1102 ;	main.c:188: break;
      00145C 02 13 90         [24] 1103 	ljmp	00111$
                                   1104 ;	main.c:190: case 'C': // If the character 'B' is received
      00145F                       1105 00103$:
                                   1106 ;	main.c:191: handler_lcdclear();
      00145F 12 03 15         [24] 1107 	lcall	_handler_lcdclear
                                   1108 ;	main.c:192: lcdgotoxy('0','0');
      001462 90 04 06         [24] 1109 	mov	dptr,#_lcdgotoxy_PARM_2
      001465 74 30            [12] 1110 	mov	a,#0x30
      001467 F0               [24] 1111 	movx	@dptr,a
      001468 75 82 30         [24] 1112 	mov	dpl,#0x30
      00146B 12 01 A5         [24] 1113 	lcall	_lcdgotoxy
                                   1114 ;	main.c:193: lcdputstr("|     User     |");
      00146E 90 2E 13         [24] 1115 	mov	dptr,#___str_6
      001471 75 F0 80         [24] 1116 	mov	b,#0x80
      001474 12 02 C1         [24] 1117 	lcall	_lcdputstr
                                   1118 ;	main.c:194: lcdgotoxy('1','0');
      001477 90 04 06         [24] 1119 	mov	dptr,#_lcdgotoxy_PARM_2
      00147A 74 30            [12] 1120 	mov	a,#0x30
      00147C F0               [24] 1121 	movx	@dptr,a
      00147D 75 82 31         [24] 1122 	mov	dpl,#0x31
      001480 12 01 A5         [24] 1123 	lcall	_lcdgotoxy
                                   1124 ;	main.c:195: lcdputstr("| Un-Authorized|");
      001483 90 2E 24         [24] 1125 	mov	dptr,#___str_7
      001486 75 F0 80         [24] 1126 	mov	b,#0x80
      001489 12 02 C1         [24] 1127 	lcall	_lcdputstr
                                   1128 ;	main.c:196: lcdgotoxy('0','0');
      00148C 90 04 06         [24] 1129 	mov	dptr,#_lcdgotoxy_PARM_2
      00148F 74 30            [12] 1130 	mov	a,#0x30
      001491 F0               [24] 1131 	movx	@dptr,a
      001492 75 82 30         [24] 1132 	mov	dpl,#0x30
      001495 12 01 A5         [24] 1133 	lcall	_lcdgotoxy
                                   1134 ;	main.c:197: handle_lock_custom_char();
      001498 12 0D 67         [24] 1135 	lcall	_handle_lock_custom_char
                                   1136 ;	main.c:198: delay_sec(1);
      00149B 90 00 01         [24] 1137 	mov	dptr,#0x0001
      00149E 12 12 21         [24] 1138 	lcall	_delay_sec
                                   1139 ;	main.c:199: break;
      0014A1 02 13 90         [24] 1140 	ljmp	00111$
                                   1141 ;	main.c:201: case 'D': // If the character 'C' is received
      0014A4                       1142 00104$:
                                   1143 ;	main.c:202: handler_lcdclear();
      0014A4 12 03 15         [24] 1144 	lcall	_handler_lcdclear
                                   1145 ;	main.c:203: lcdgotoxy('0','0');
      0014A7 90 04 06         [24] 1146 	mov	dptr,#_lcdgotoxy_PARM_2
      0014AA 74 30            [12] 1147 	mov	a,#0x30
      0014AC F0               [24] 1148 	movx	@dptr,a
      0014AD 75 82 30         [24] 1149 	mov	dpl,#0x30
      0014B0 12 01 A5         [24] 1150 	lcall	_lcdgotoxy
                                   1151 ;	main.c:204: lcdputstr("|  Existing    |");
      0014B3 90 2E 35         [24] 1152 	mov	dptr,#___str_8
      0014B6 75 F0 80         [24] 1153 	mov	b,#0x80
      0014B9 12 02 C1         [24] 1154 	lcall	_lcdputstr
                                   1155 ;	main.c:205: lcdgotoxy('1','0');
      0014BC 90 04 06         [24] 1156 	mov	dptr,#_lcdgotoxy_PARM_2
      0014BF 74 30            [12] 1157 	mov	a,#0x30
      0014C1 F0               [24] 1158 	movx	@dptr,a
      0014C2 75 82 31         [24] 1159 	mov	dpl,#0x31
      0014C5 12 01 A5         [24] 1160 	lcall	_lcdgotoxy
                                   1161 ;	main.c:206: lcdputstr("|  Data Base   |");
      0014C8 90 2E 46         [24] 1162 	mov	dptr,#___str_9
      0014CB 75 F0 80         [24] 1163 	mov	b,#0x80
      0014CE 12 02 C1         [24] 1164 	lcall	_lcdputstr
                                   1165 ;	main.c:207: lcdgotoxy('2','0');
      0014D1 90 04 06         [24] 1166 	mov	dptr,#_lcdgotoxy_PARM_2
      0014D4 74 30            [12] 1167 	mov	a,#0x30
      0014D6 F0               [24] 1168 	movx	@dptr,a
      0014D7 75 82 32         [24] 1169 	mov	dpl,#0x32
      0014DA 12 01 A5         [24] 1170 	lcall	_lcdgotoxy
                                   1171 ;	main.c:208: lcdputstr("|   Cleared    |");
      0014DD 90 2E 57         [24] 1172 	mov	dptr,#___str_10
      0014E0 75 F0 80         [24] 1173 	mov	b,#0x80
      0014E3 12 02 C1         [24] 1174 	lcall	_lcdputstr
                                   1175 ;	main.c:209: lcdgotoxy('0','0');
      0014E6 90 04 06         [24] 1176 	mov	dptr,#_lcdgotoxy_PARM_2
      0014E9 74 30            [12] 1177 	mov	a,#0x30
      0014EB F0               [24] 1178 	movx	@dptr,a
      0014EC 75 82 30         [24] 1179 	mov	dpl,#0x30
      0014EF 12 01 A5         [24] 1180 	lcall	_lcdgotoxy
                                   1181 ;	main.c:210: delay_sec(1);
      0014F2 90 00 01         [24] 1182 	mov	dptr,#0x0001
      0014F5 12 12 21         [24] 1183 	lcall	_delay_sec
                                   1184 ;	main.c:212: break;
      0014F8 02 13 90         [24] 1185 	ljmp	00111$
                                   1186 ;	main.c:271: case 'Z': // If the character 'P' is received
      0014FB                       1187 00105$:
                                   1188 ;	main.c:272: handler_lcdclear();
      0014FB 12 03 15         [24] 1189 	lcall	_handler_lcdclear
                                   1190 ;	main.c:273: lcdgotoxy('0','0');
      0014FE 90 04 06         [24] 1191 	mov	dptr,#_lcdgotoxy_PARM_2
      001501 74 30            [12] 1192 	mov	a,#0x30
      001503 F0               [24] 1193 	movx	@dptr,a
      001504 75 82 30         [24] 1194 	mov	dpl,#0x30
      001507 12 01 A5         [24] 1195 	lcall	_lcdgotoxy
                                   1196 ;	main.c:274: delay_sec(1);
      00150A 90 00 01         [24] 1197 	mov	dptr,#0x0001
      00150D 12 12 21         [24] 1198 	lcall	_delay_sec
                                   1199 ;	main.c:275: break;
                                   1200 ;	main.c:279: }
                                   1201 ;	main.c:282: }
      001510 02 13 90         [24] 1202 	ljmp	00111$
                                   1203 	.area CSEG    (CODE)
                                   1204 	.area CONST   (CODE)
                                   1205 	.area CONST   (CODE)
      002DB8                       1206 ___str_0:
      002DB8 48 65 6C 6C 6F        1207 	.ascii "Hello"
      002DBD 00                    1208 	.db 0x00
                                   1209 	.area CSEG    (CODE)
                                   1210 	.area CONST   (CODE)
      002DBE                       1211 ___str_1:
      002DBE 53 54 4D 33 32 46 34  1212 	.ascii "STM32F411E-Disco"
             31 31 45 2D 44 69 73
             63 6F
      002DCE 00                    1213 	.db 0x00
                                   1214 	.area CSEG    (CODE)
                                   1215 	.area CONST   (CODE)
      002DCF                       1216 ___str_2:
      002DCF 7C 20 20 20 4E 65 77  1217 	.ascii "|   New User   |"
             20 55 73 65 72 20 20
             20 7C
      002DDF 00                    1218 	.db 0x00
                                   1219 	.area CSEG    (CODE)
                                   1220 	.area CONST   (CODE)
      002DE0                       1221 ___str_3:
      002DE0 7C 20 20 20 45 6E 72  1222 	.ascii "|   Enrolled   |"
             6F 6C 6C 65 64 20 20
             20 7C
      002DF0 00                    1223 	.db 0x00
                                   1224 	.area CSEG    (CODE)
                                   1225 	.area CONST   (CODE)
      002DF1                       1226 ___str_4:
      002DF1 7C 20 20 20 20 20 20  1227 	.ascii "|      User    |"
             55 73 65 72 20 20 20
             20 7C
      002E01 00                    1228 	.db 0x00
                                   1229 	.area CSEG    (CODE)
                                   1230 	.area CONST   (CODE)
      002E02                       1231 ___str_5:
      002E02 7C 20 20 41 75 74 68  1232 	.ascii "|  Authorized  |"
             6F 72 69 7A 65 64 20
             20 7C
      002E12 00                    1233 	.db 0x00
                                   1234 	.area CSEG    (CODE)
                                   1235 	.area CONST   (CODE)
      002E13                       1236 ___str_6:
      002E13 7C 20 20 20 20 20 55  1237 	.ascii "|     User     |"
             73 65 72 20 20 20 20
             20 7C
      002E23 00                    1238 	.db 0x00
                                   1239 	.area CSEG    (CODE)
                                   1240 	.area CONST   (CODE)
      002E24                       1241 ___str_7:
      002E24 7C 20 55 6E 2D 41 75  1242 	.ascii "| Un-Authorized|"
             74 68 6F 72 69 7A 65
             64 7C
      002E34 00                    1243 	.db 0x00
                                   1244 	.area CSEG    (CODE)
                                   1245 	.area CONST   (CODE)
      002E35                       1246 ___str_8:
      002E35 7C 20 20 45 78 69 73  1247 	.ascii "|  Existing    |"
             74 69 6E 67 20 20 20
             20 7C
      002E45 00                    1248 	.db 0x00
                                   1249 	.area CSEG    (CODE)
                                   1250 	.area CONST   (CODE)
      002E46                       1251 ___str_9:
      002E46 7C 20 20 44 61 74 61  1252 	.ascii "|  Data Base   |"
             20 42 61 73 65 20 20
             20 7C
      002E56 00                    1253 	.db 0x00
                                   1254 	.area CSEG    (CODE)
                                   1255 	.area CONST   (CODE)
      002E57                       1256 ___str_10:
      002E57 7C 20 20 20 43 6C 65  1257 	.ascii "|   Cleared    |"
             61 72 65 64 20 20 20
             20 7C
      002E67 00                    1258 	.db 0x00
                                   1259 	.area CSEG    (CODE)
                                   1260 	.area XINIT   (CODE)
      002F62                       1261 __xinit__update_lcd:
      002F62 00 00                 1262 	.byte #0x00, #0x00	;  0
      002F64                       1263 __xinit__tenth_of_second:
      002F64 30                    1264 	.db #0x30	; 48	'0'
      002F65                       1265 __xinit__seconds_ones_digit:
      002F65 30                    1266 	.db #0x30	; 48	'0'
      002F66                       1267 __xinit__seconds_tens_digit:
      002F66 30                    1268 	.db #0x30	; 48	'0'
      002F67                       1269 __xinit__minutes_ones_digit:
      002F67 30                    1270 	.db #0x30	; 48	'0'
      002F68                       1271 __xinit__minutes_tens_digit:
      002F68 30                    1272 	.db #0x30	; 48	'0'
                                   1273 	.area CABS    (ABS,CODE)
