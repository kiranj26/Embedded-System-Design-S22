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
                                     17 	.globl _normalBeep
                                     18 	.globl _fastBeep
                                     19 	.globl _get_cursor_address
                                     20 	.globl _handle_newuser_custom_char
                                     21 	.globl _handle_unlock_custom_char
                                     22 	.globl _handle_lock_custom_char
                                     23 	.globl _handler_lcdclear
                                     24 	.globl _lcdputstr
                                     25 	.globl _lcdgotoxy
                                     26 	.globl _lcdgotoaddr
                                     27 	.globl _init_lcd
                                     28 	.globl _uart_init
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _PS
                                     38 	.globl _PT1
                                     39 	.globl _PX1
                                     40 	.globl _PT0
                                     41 	.globl _PX0
                                     42 	.globl _RD
                                     43 	.globl _WR
                                     44 	.globl _T1
                                     45 	.globl _T0
                                     46 	.globl _INT1
                                     47 	.globl _INT0
                                     48 	.globl _TXD
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _EA
                                     59 	.globl _ES
                                     60 	.globl _ET1
                                     61 	.globl _EX1
                                     62 	.globl _ET0
                                     63 	.globl _EX0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _SM0
                                     73 	.globl _SM1
                                     74 	.globl _SM2
                                     75 	.globl _REN
                                     76 	.globl _TB8
                                     77 	.globl _RB8
                                     78 	.globl _TI
                                     79 	.globl _RI
                                     80 	.globl _P1_7
                                     81 	.globl _P1_6
                                     82 	.globl _P1_5
                                     83 	.globl _P1_4
                                     84 	.globl _P1_3
                                     85 	.globl _P1_2
                                     86 	.globl _P1_1
                                     87 	.globl _P1_0
                                     88 	.globl _TF1
                                     89 	.globl _TR1
                                     90 	.globl _TF0
                                     91 	.globl _TR0
                                     92 	.globl _IE1
                                     93 	.globl _IT1
                                     94 	.globl _IE0
                                     95 	.globl _IT0
                                     96 	.globl _P0_7
                                     97 	.globl _P0_6
                                     98 	.globl _P0_5
                                     99 	.globl _P0_4
                                    100 	.globl _P0_3
                                    101 	.globl _P0_2
                                    102 	.globl _P0_1
                                    103 	.globl _P0_0
                                    104 	.globl _TXD0
                                    105 	.globl _RXD0
                                    106 	.globl _BREG_F7
                                    107 	.globl _BREG_F6
                                    108 	.globl _BREG_F5
                                    109 	.globl _BREG_F4
                                    110 	.globl _BREG_F3
                                    111 	.globl _BREG_F2
                                    112 	.globl _BREG_F1
                                    113 	.globl _BREG_F0
                                    114 	.globl _P5_7
                                    115 	.globl _P5_6
                                    116 	.globl _P5_5
                                    117 	.globl _P5_4
                                    118 	.globl _P5_3
                                    119 	.globl _P5_2
                                    120 	.globl _P5_1
                                    121 	.globl _P5_0
                                    122 	.globl _P4_7
                                    123 	.globl _P4_6
                                    124 	.globl _P4_5
                                    125 	.globl _P4_4
                                    126 	.globl _P4_3
                                    127 	.globl _P4_2
                                    128 	.globl _P4_1
                                    129 	.globl _P4_0
                                    130 	.globl _PX0L
                                    131 	.globl _PT0L
                                    132 	.globl _PX1L
                                    133 	.globl _PT1L
                                    134 	.globl _PSL
                                    135 	.globl _PT2L
                                    136 	.globl _PPCL
                                    137 	.globl _EC
                                    138 	.globl _CCF0
                                    139 	.globl _CCF1
                                    140 	.globl _CCF2
                                    141 	.globl _CCF3
                                    142 	.globl _CCF4
                                    143 	.globl _CR
                                    144 	.globl _CF
                                    145 	.globl _TF2
                                    146 	.globl _EXF2
                                    147 	.globl _RCLK
                                    148 	.globl _TCLK
                                    149 	.globl _EXEN2
                                    150 	.globl _TR2
                                    151 	.globl _C_T2
                                    152 	.globl _CP_RL2
                                    153 	.globl _T2CON_7
                                    154 	.globl _T2CON_6
                                    155 	.globl _T2CON_5
                                    156 	.globl _T2CON_4
                                    157 	.globl _T2CON_3
                                    158 	.globl _T2CON_2
                                    159 	.globl _T2CON_1
                                    160 	.globl _T2CON_0
                                    161 	.globl _PT2
                                    162 	.globl _ET2
                                    163 	.globl _B
                                    164 	.globl _ACC
                                    165 	.globl _PSW
                                    166 	.globl _IP
                                    167 	.globl _P3
                                    168 	.globl _IE
                                    169 	.globl _P2
                                    170 	.globl _SBUF
                                    171 	.globl _SCON
                                    172 	.globl _P1
                                    173 	.globl _TH1
                                    174 	.globl _TH0
                                    175 	.globl _TL1
                                    176 	.globl _TL0
                                    177 	.globl _TMOD
                                    178 	.globl _TCON
                                    179 	.globl _PCON
                                    180 	.globl _DPH
                                    181 	.globl _DPL
                                    182 	.globl _SP
                                    183 	.globl _P0
                                    184 	.globl _SBUF0
                                    185 	.globl _DP0L
                                    186 	.globl _DP0H
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _TH2
                                    234 	.globl _TL2
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _T2CON
                                    238 	.globl _minutes_tens_digit
                                    239 	.globl _minutes_ones_digit
                                    240 	.globl _seconds_tens_digit
                                    241 	.globl _seconds_ones_digit
                                    242 	.globl _tenth_of_second
                                    243 	.globl _update_lcd
                                    244 ;--------------------------------------------------------
                                    245 ; special function registers
                                    246 ;--------------------------------------------------------
                                    247 	.area RSEG    (ABS,DATA)
      000000                        248 	.org 0x0000
                           0000C8   249 _T2CON	=	0x00c8
                           0000CA   250 _RCAP2L	=	0x00ca
                           0000CB   251 _RCAP2H	=	0x00cb
                           0000CC   252 _TL2	=	0x00cc
                           0000CD   253 _TH2	=	0x00cd
                           00008E   254 _AUXR	=	0x008e
                           0000A2   255 _AUXR1	=	0x00a2
                           000097   256 _CKRL	=	0x0097
                           00008F   257 _CKCON0	=	0x008f
                           0000AF   258 _CKCON1	=	0x00af
                           0000FA   259 _CCAP0H	=	0x00fa
                           0000FB   260 _CCAP1H	=	0x00fb
                           0000FC   261 _CCAP2H	=	0x00fc
                           0000FD   262 _CCAP3H	=	0x00fd
                           0000FE   263 _CCAP4H	=	0x00fe
                           0000EA   264 _CCAP0L	=	0x00ea
                           0000EB   265 _CCAP1L	=	0x00eb
                           0000EC   266 _CCAP2L	=	0x00ec
                           0000ED   267 _CCAP3L	=	0x00ed
                           0000EE   268 _CCAP4L	=	0x00ee
                           0000DA   269 _CCAPM0	=	0x00da
                           0000DB   270 _CCAPM1	=	0x00db
                           0000DC   271 _CCAPM2	=	0x00dc
                           0000DD   272 _CCAPM3	=	0x00dd
                           0000DE   273 _CCAPM4	=	0x00de
                           0000D8   274 _CCON	=	0x00d8
                           0000F9   275 _CH	=	0x00f9
                           0000E9   276 _CL	=	0x00e9
                           0000D9   277 _CMOD	=	0x00d9
                           0000A8   278 _IEN0	=	0x00a8
                           0000B1   279 _IEN1	=	0x00b1
                           0000B8   280 _IPL0	=	0x00b8
                           0000B7   281 _IPH0	=	0x00b7
                           0000B2   282 _IPL1	=	0x00b2
                           0000B3   283 _IPH1	=	0x00b3
                           0000C0   284 _P4	=	0x00c0
                           0000E8   285 _P5	=	0x00e8
                           0000A6   286 _WDTRST	=	0x00a6
                           0000A7   287 _WDTPRG	=	0x00a7
                           0000A9   288 _SADDR	=	0x00a9
                           0000B9   289 _SADEN	=	0x00b9
                           0000C3   290 _SPCON	=	0x00c3
                           0000C4   291 _SPSTA	=	0x00c4
                           0000C5   292 _SPDAT	=	0x00c5
                           0000C9   293 _T2MOD	=	0x00c9
                           00009B   294 _BDRCON	=	0x009b
                           00009A   295 _BRL	=	0x009a
                           00009C   296 _KBLS	=	0x009c
                           00009D   297 _KBE	=	0x009d
                           00009E   298 _KBF	=	0x009e
                           0000D2   299 _EECON	=	0x00d2
                           000083   300 _DP0H	=	0x0083
                           000082   301 _DP0L	=	0x0082
                           000099   302 _SBUF0	=	0x0099
                           000080   303 _P0	=	0x0080
                           000081   304 _SP	=	0x0081
                           000082   305 _DPL	=	0x0082
                           000083   306 _DPH	=	0x0083
                           000087   307 _PCON	=	0x0087
                           000088   308 _TCON	=	0x0088
                           000089   309 _TMOD	=	0x0089
                           00008A   310 _TL0	=	0x008a
                           00008B   311 _TL1	=	0x008b
                           00008C   312 _TH0	=	0x008c
                           00008D   313 _TH1	=	0x008d
                           000090   314 _P1	=	0x0090
                           000098   315 _SCON	=	0x0098
                           000099   316 _SBUF	=	0x0099
                           0000A0   317 _P2	=	0x00a0
                           0000A8   318 _IE	=	0x00a8
                           0000B0   319 _P3	=	0x00b0
                           0000B8   320 _IP	=	0x00b8
                           0000D0   321 _PSW	=	0x00d0
                           0000E0   322 _ACC	=	0x00e0
                           0000F0   323 _B	=	0x00f0
                                    324 ;--------------------------------------------------------
                                    325 ; special function bits
                                    326 ;--------------------------------------------------------
                                    327 	.area RSEG    (ABS,DATA)
      000000                        328 	.org 0x0000
                           0000AD   329 _ET2	=	0x00ad
                           0000BD   330 _PT2	=	0x00bd
                           0000C8   331 _T2CON_0	=	0x00c8
                           0000C9   332 _T2CON_1	=	0x00c9
                           0000CA   333 _T2CON_2	=	0x00ca
                           0000CB   334 _T2CON_3	=	0x00cb
                           0000CC   335 _T2CON_4	=	0x00cc
                           0000CD   336 _T2CON_5	=	0x00cd
                           0000CE   337 _T2CON_6	=	0x00ce
                           0000CF   338 _T2CON_7	=	0x00cf
                           0000C8   339 _CP_RL2	=	0x00c8
                           0000C9   340 _C_T2	=	0x00c9
                           0000CA   341 _TR2	=	0x00ca
                           0000CB   342 _EXEN2	=	0x00cb
                           0000CC   343 _TCLK	=	0x00cc
                           0000CD   344 _RCLK	=	0x00cd
                           0000CE   345 _EXF2	=	0x00ce
                           0000CF   346 _TF2	=	0x00cf
                           0000DF   347 _CF	=	0x00df
                           0000DE   348 _CR	=	0x00de
                           0000DC   349 _CCF4	=	0x00dc
                           0000DB   350 _CCF3	=	0x00db
                           0000DA   351 _CCF2	=	0x00da
                           0000D9   352 _CCF1	=	0x00d9
                           0000D8   353 _CCF0	=	0x00d8
                           0000AE   354 _EC	=	0x00ae
                           0000BE   355 _PPCL	=	0x00be
                           0000BD   356 _PT2L	=	0x00bd
                           0000BC   357 _PSL	=	0x00bc
                           0000BB   358 _PT1L	=	0x00bb
                           0000BA   359 _PX1L	=	0x00ba
                           0000B9   360 _PT0L	=	0x00b9
                           0000B8   361 _PX0L	=	0x00b8
                           0000C0   362 _P4_0	=	0x00c0
                           0000C1   363 _P4_1	=	0x00c1
                           0000C2   364 _P4_2	=	0x00c2
                           0000C3   365 _P4_3	=	0x00c3
                           0000C4   366 _P4_4	=	0x00c4
                           0000C5   367 _P4_5	=	0x00c5
                           0000C6   368 _P4_6	=	0x00c6
                           0000C7   369 _P4_7	=	0x00c7
                           0000E8   370 _P5_0	=	0x00e8
                           0000E9   371 _P5_1	=	0x00e9
                           0000EA   372 _P5_2	=	0x00ea
                           0000EB   373 _P5_3	=	0x00eb
                           0000EC   374 _P5_4	=	0x00ec
                           0000ED   375 _P5_5	=	0x00ed
                           0000EE   376 _P5_6	=	0x00ee
                           0000EF   377 _P5_7	=	0x00ef
                           0000F0   378 _BREG_F0	=	0x00f0
                           0000F1   379 _BREG_F1	=	0x00f1
                           0000F2   380 _BREG_F2	=	0x00f2
                           0000F3   381 _BREG_F3	=	0x00f3
                           0000F4   382 _BREG_F4	=	0x00f4
                           0000F5   383 _BREG_F5	=	0x00f5
                           0000F6   384 _BREG_F6	=	0x00f6
                           0000F7   385 _BREG_F7	=	0x00f7
                           0000B0   386 _RXD0	=	0x00b0
                           0000B1   387 _TXD0	=	0x00b1
                           000080   388 _P0_0	=	0x0080
                           000081   389 _P0_1	=	0x0081
                           000082   390 _P0_2	=	0x0082
                           000083   391 _P0_3	=	0x0083
                           000084   392 _P0_4	=	0x0084
                           000085   393 _P0_5	=	0x0085
                           000086   394 _P0_6	=	0x0086
                           000087   395 _P0_7	=	0x0087
                           000088   396 _IT0	=	0x0088
                           000089   397 _IE0	=	0x0089
                           00008A   398 _IT1	=	0x008a
                           00008B   399 _IE1	=	0x008b
                           00008C   400 _TR0	=	0x008c
                           00008D   401 _TF0	=	0x008d
                           00008E   402 _TR1	=	0x008e
                           00008F   403 _TF1	=	0x008f
                           000090   404 _P1_0	=	0x0090
                           000091   405 _P1_1	=	0x0091
                           000092   406 _P1_2	=	0x0092
                           000093   407 _P1_3	=	0x0093
                           000094   408 _P1_4	=	0x0094
                           000095   409 _P1_5	=	0x0095
                           000096   410 _P1_6	=	0x0096
                           000097   411 _P1_7	=	0x0097
                           000098   412 _RI	=	0x0098
                           000099   413 _TI	=	0x0099
                           00009A   414 _RB8	=	0x009a
                           00009B   415 _TB8	=	0x009b
                           00009C   416 _REN	=	0x009c
                           00009D   417 _SM2	=	0x009d
                           00009E   418 _SM1	=	0x009e
                           00009F   419 _SM0	=	0x009f
                           0000A0   420 _P2_0	=	0x00a0
                           0000A1   421 _P2_1	=	0x00a1
                           0000A2   422 _P2_2	=	0x00a2
                           0000A3   423 _P2_3	=	0x00a3
                           0000A4   424 _P2_4	=	0x00a4
                           0000A5   425 _P2_5	=	0x00a5
                           0000A6   426 _P2_6	=	0x00a6
                           0000A7   427 _P2_7	=	0x00a7
                           0000A8   428 _EX0	=	0x00a8
                           0000A9   429 _ET0	=	0x00a9
                           0000AA   430 _EX1	=	0x00aa
                           0000AB   431 _ET1	=	0x00ab
                           0000AC   432 _ES	=	0x00ac
                           0000AF   433 _EA	=	0x00af
                           0000B0   434 _P3_0	=	0x00b0
                           0000B1   435 _P3_1	=	0x00b1
                           0000B2   436 _P3_2	=	0x00b2
                           0000B3   437 _P3_3	=	0x00b3
                           0000B4   438 _P3_4	=	0x00b4
                           0000B5   439 _P3_5	=	0x00b5
                           0000B6   440 _P3_6	=	0x00b6
                           0000B7   441 _P3_7	=	0x00b7
                           0000B0   442 _RXD	=	0x00b0
                           0000B1   443 _TXD	=	0x00b1
                           0000B2   444 _INT0	=	0x00b2
                           0000B3   445 _INT1	=	0x00b3
                           0000B4   446 _T0	=	0x00b4
                           0000B5   447 _T1	=	0x00b5
                           0000B6   448 _WR	=	0x00b6
                           0000B7   449 _RD	=	0x00b7
                           0000B8   450 _PX0	=	0x00b8
                           0000B9   451 _PT0	=	0x00b9
                           0000BA   452 _PX1	=	0x00ba
                           0000BB   453 _PT1	=	0x00bb
                           0000BC   454 _PS	=	0x00bc
                           0000D0   455 _P	=	0x00d0
                           0000D1   456 _F1	=	0x00d1
                           0000D2   457 _OV	=	0x00d2
                           0000D3   458 _RS0	=	0x00d3
                           0000D4   459 _RS1	=	0x00d4
                           0000D5   460 _F0	=	0x00d5
                           0000D6   461 _AC	=	0x00d6
                           0000D7   462 _CY	=	0x00d7
                                    463 ;--------------------------------------------------------
                                    464 ; overlayable register banks
                                    465 ;--------------------------------------------------------
                                    466 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        467 	.ds 8
                                    468 ;--------------------------------------------------------
                                    469 ; overlayable bit register bank
                                    470 ;--------------------------------------------------------
                                    471 	.area BIT_BANK	(REL,OVR,DATA)
      000022                        472 bits:
      000022                        473 	.ds 1
                           008000   474 	b0 = bits[0]
                           008100   475 	b1 = bits[1]
                           008200   476 	b2 = bits[2]
                           008300   477 	b3 = bits[3]
                           008400   478 	b4 = bits[4]
                           008500   479 	b5 = bits[5]
                           008600   480 	b6 = bits[6]
                           008700   481 	b7 = bits[7]
                                    482 ;--------------------------------------------------------
                                    483 ; internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area DSEG    (DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; overlayable items in internal ram
                                    488 ;--------------------------------------------------------
                                    489 ;--------------------------------------------------------
                                    490 ; Stack segment in internal ram
                                    491 ;--------------------------------------------------------
                                    492 	.area	SSEG
      00002D                        493 __start__stack:
      00002D                        494 	.ds	1
                                    495 
                                    496 ;--------------------------------------------------------
                                    497 ; indirectly addressable internal ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area ISEG    (DATA)
                                    500 ;--------------------------------------------------------
                                    501 ; absolute internal ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area IABS    (ABS,DATA)
                                    504 	.area IABS    (ABS,DATA)
                                    505 ;--------------------------------------------------------
                                    506 ; bit data
                                    507 ;--------------------------------------------------------
                                    508 	.area BSEG    (BIT)
      00000C                        509 _main_sloc0_1_0:
      00000C                        510 	.ds 1
                                    511 ;--------------------------------------------------------
                                    512 ; paged external ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area PSEG    (PAG,XDATA)
                                    515 ;--------------------------------------------------------
                                    516 ; external ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XSEG    (XDATA)
      0004F3                        519 _delay_ms_ms_65536_103:
      0004F3                        520 	.ds 2
      0004F5                        521 _delay_sec_sec_65536_107:
      0004F5                        522 	.ds 2
      0004F7                        523 _timer0_ISR_counter_02s_65537_111:
      0004F7                        524 	.ds 2
      0004F9                        525 _timer0_ISR_save_cursor_addr_65537_111:
      0004F9                        526 	.ds 1
      0004FA                        527 _main_fingerprint_count_65536_121:
      0004FA                        528 	.ds 2
      0004FC                        529 _main_char_detected_196608_123:
      0004FC                        530 	.ds 1
                                    531 ;--------------------------------------------------------
                                    532 ; absolute external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XABS    (ABS,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; external initialized ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XISEG   (XDATA)
      000577                        539 _update_lcd::
      000577                        540 	.ds 2
      000579                        541 _tenth_of_second::
      000579                        542 	.ds 1
      00057A                        543 _seconds_ones_digit::
      00057A                        544 	.ds 1
      00057B                        545 _seconds_tens_digit::
      00057B                        546 	.ds 1
      00057C                        547 _minutes_ones_digit::
      00057C                        548 	.ds 1
      00057D                        549 _minutes_tens_digit::
      00057D                        550 	.ds 1
                                    551 	.area HOME    (CODE)
                                    552 	.area GSINIT0 (CODE)
                                    553 	.area GSINIT1 (CODE)
                                    554 	.area GSINIT2 (CODE)
                                    555 	.area GSINIT3 (CODE)
                                    556 	.area GSINIT4 (CODE)
                                    557 	.area GSINIT5 (CODE)
                                    558 	.area GSINIT  (CODE)
                                    559 	.area GSFINAL (CODE)
                                    560 	.area CSEG    (CODE)
                                    561 ;--------------------------------------------------------
                                    562 ; interrupt vector
                                    563 ;--------------------------------------------------------
                                    564 	.area HOME    (CODE)
      000000                        565 __interrupt_vect:
      000000 02 00 3F         [24]  566 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  567 	reti
      000004                        568 	.ds	7
      00000B 02 12 EE         [24]  569 	ljmp	_timer0_ISR
                                    570 ;--------------------------------------------------------
                                    571 ; global & static initialisations
                                    572 ;--------------------------------------------------------
                                    573 	.area HOME    (CODE)
                                    574 	.area GSINIT  (CODE)
                                    575 	.area GSFINAL (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.globl __sdcc_gsinit_startup
                                    578 	.globl __sdcc_program_startup
                                    579 	.globl __start__stack
                                    580 	.globl __mcs51_genXINIT
                                    581 	.globl __mcs51_genXRAMCLEAR
                                    582 	.globl __mcs51_genRAMCLEAR
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'timer0_ISR'
                                    585 ;------------------------------------------------------------
                                    586 ;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_111'
                                    587 ;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_111'
                                    588 ;------------------------------------------------------------
                                    589 ;	main.c:74: static int counter_02s = 0; // Initialize a static variable called counter_02s with a value of 0
      000098 90 04 F7         [24]  590 	mov	dptr,#_timer0_ISR_counter_02s_65537_111
      00009B E4               [12]  591 	clr	a
      00009C F0               [24]  592 	movx	@dptr,a
      00009D A3               [24]  593 	inc	dptr
      00009E F0               [24]  594 	movx	@dptr,a
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'main'
                                    597 ;------------------------------------------------------------
                                    598 ;fingerprint_count         Allocated with name '_main_fingerprint_count_65536_121'
                                    599 ;char_detected             Allocated with name '_main_char_detected_196608_123'
                                    600 ;------------------------------------------------------------
                                    601 ;	main.c:131: static int fingerprint_count = 0;
      00009F 90 04 FA         [24]  602 	mov	dptr,#_main_fingerprint_count_65536_121
      0000A2 E4               [12]  603 	clr	a
      0000A3 F0               [24]  604 	movx	@dptr,a
      0000A4 A3               [24]  605 	inc	dptr
      0000A5 F0               [24]  606 	movx	@dptr,a
                                    607 	.area GSFINAL (CODE)
      0000A6 02 00 0E         [24]  608 	ljmp	__sdcc_program_startup
                                    609 ;--------------------------------------------------------
                                    610 ; Home
                                    611 ;--------------------------------------------------------
                                    612 	.area HOME    (CODE)
                                    613 	.area HOME    (CODE)
      00000E                        614 __sdcc_program_startup:
      00000E 02 13 DF         [24]  615 	ljmp	_main
                                    616 ;	return from main will return to caller
                                    617 ;--------------------------------------------------------
                                    618 ; code
                                    619 ;--------------------------------------------------------
                                    620 	.area CSEG    (CODE)
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    623 ;------------------------------------------------------------
                                    624 ;	main.c:41: _sdcc_external_startup()
                                    625 ;	-----------------------------------------
                                    626 ;	 function _sdcc_external_startup
                                    627 ;	-----------------------------------------
      001278                        628 __sdcc_external_startup:
                           000007   629 	ar7 = 0x07
                           000006   630 	ar6 = 0x06
                           000005   631 	ar5 = 0x05
                           000004   632 	ar4 = 0x04
                           000003   633 	ar3 = 0x03
                           000002   634 	ar2 = 0x02
                           000001   635 	ar1 = 0x01
                           000000   636 	ar0 = 0x00
                                    637 ;	main.c:44: AUXR |= (XRS1 | XRS0);
      001278 43 8E 0C         [24]  638 	orl	_AUXR,#0x0c
                                    639 ;	main.c:46: return 0;
      00127B 90 00 00         [24]  640 	mov	dptr,#0x0000
                                    641 ;	main.c:47: }
      00127E 22               [24]  642 	ret
                                    643 ;------------------------------------------------------------
                                    644 ;Allocation info for local variables in function 'delay_ms'
                                    645 ;------------------------------------------------------------
                                    646 ;ms                        Allocated with name '_delay_ms_ms_65536_103'
                                    647 ;i                         Allocated with name '_delay_ms_i_65536_104'
                                    648 ;j                         Allocated with name '_delay_ms_j_65536_104'
                                    649 ;------------------------------------------------------------
                                    650 ;	main.c:57: void delay_ms(unsigned int ms) {
                                    651 ;	-----------------------------------------
                                    652 ;	 function delay_ms
                                    653 ;	-----------------------------------------
      00127F                        654 _delay_ms:
      00127F AF 83            [24]  655 	mov	r7,dph
      001281 E5 82            [12]  656 	mov	a,dpl
      001283 90 04 F3         [24]  657 	mov	dptr,#_delay_ms_ms_65536_103
      001286 F0               [24]  658 	movx	@dptr,a
      001287 EF               [12]  659 	mov	a,r7
      001288 A3               [24]  660 	inc	dptr
      001289 F0               [24]  661 	movx	@dptr,a
                                    662 ;	main.c:59: for(i = 0; i < ms; i++)
      00128A 90 04 F3         [24]  663 	mov	dptr,#_delay_ms_ms_65536_103
      00128D E0               [24]  664 	movx	a,@dptr
      00128E FE               [12]  665 	mov	r6,a
      00128F A3               [24]  666 	inc	dptr
      001290 E0               [24]  667 	movx	a,@dptr
      001291 FF               [12]  668 	mov	r7,a
      001292 7C 00            [12]  669 	mov	r4,#0x00
      001294 7D 00            [12]  670 	mov	r5,#0x00
      001296                        671 00107$:
      001296 C3               [12]  672 	clr	c
      001297 EC               [12]  673 	mov	a,r4
      001298 9E               [12]  674 	subb	a,r6
      001299 ED               [12]  675 	mov	a,r5
      00129A 9F               [12]  676 	subb	a,r7
      00129B 50 14            [24]  677 	jnc	00109$
                                    678 ;	main.c:60: for(j = 0; j < 1275; j++);
      00129D 7A FB            [12]  679 	mov	r2,#0xfb
      00129F 7B 04            [12]  680 	mov	r3,#0x04
      0012A1                        681 00105$:
      0012A1 1A               [12]  682 	dec	r2
      0012A2 BA FF 01         [24]  683 	cjne	r2,#0xff,00130$
      0012A5 1B               [12]  684 	dec	r3
      0012A6                        685 00130$:
      0012A6 EA               [12]  686 	mov	a,r2
      0012A7 4B               [12]  687 	orl	a,r3
      0012A8 70 F7            [24]  688 	jnz	00105$
                                    689 ;	main.c:59: for(i = 0; i < ms; i++)
      0012AA 0C               [12]  690 	inc	r4
      0012AB BC 00 E8         [24]  691 	cjne	r4,#0x00,00107$
      0012AE 0D               [12]  692 	inc	r5
      0012AF 80 E5            [24]  693 	sjmp	00107$
      0012B1                        694 00109$:
                                    695 ;	main.c:61: }
      0012B1 22               [24]  696 	ret
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'delay_sec'
                                    699 ;------------------------------------------------------------
                                    700 ;sec                       Allocated with name '_delay_sec_sec_65536_107'
                                    701 ;i                         Allocated with name '_delay_sec_i_65536_108'
                                    702 ;------------------------------------------------------------
                                    703 ;	main.c:63: void delay_sec(unsigned int sec) {
                                    704 ;	-----------------------------------------
                                    705 ;	 function delay_sec
                                    706 ;	-----------------------------------------
      0012B2                        707 _delay_sec:
      0012B2 AF 83            [24]  708 	mov	r7,dph
      0012B4 E5 82            [12]  709 	mov	a,dpl
      0012B6 90 04 F5         [24]  710 	mov	dptr,#_delay_sec_sec_65536_107
      0012B9 F0               [24]  711 	movx	@dptr,a
      0012BA EF               [12]  712 	mov	a,r7
      0012BB A3               [24]  713 	inc	dptr
      0012BC F0               [24]  714 	movx	@dptr,a
                                    715 ;	main.c:65: for(i = 0; i < sec; i++)
      0012BD 90 04 F5         [24]  716 	mov	dptr,#_delay_sec_sec_65536_107
      0012C0 E0               [24]  717 	movx	a,@dptr
      0012C1 FE               [12]  718 	mov	r6,a
      0012C2 A3               [24]  719 	inc	dptr
      0012C3 E0               [24]  720 	movx	a,@dptr
      0012C4 FF               [12]  721 	mov	r7,a
      0012C5 7C 00            [12]  722 	mov	r4,#0x00
      0012C7 7D 00            [12]  723 	mov	r5,#0x00
      0012C9                        724 00103$:
      0012C9 C3               [12]  725 	clr	c
      0012CA EC               [12]  726 	mov	a,r4
      0012CB 9E               [12]  727 	subb	a,r6
      0012CC ED               [12]  728 	mov	a,r5
      0012CD 9F               [12]  729 	subb	a,r7
      0012CE 50 1D            [24]  730 	jnc	00105$
                                    731 ;	main.c:66: delay_ms(1000);
      0012D0 90 03 E8         [24]  732 	mov	dptr,#0x03e8
      0012D3 C0 07            [24]  733 	push	ar7
      0012D5 C0 06            [24]  734 	push	ar6
      0012D7 C0 05            [24]  735 	push	ar5
      0012D9 C0 04            [24]  736 	push	ar4
      0012DB 12 12 7F         [24]  737 	lcall	_delay_ms
      0012DE D0 04            [24]  738 	pop	ar4
      0012E0 D0 05            [24]  739 	pop	ar5
      0012E2 D0 06            [24]  740 	pop	ar6
      0012E4 D0 07            [24]  741 	pop	ar7
                                    742 ;	main.c:65: for(i = 0; i < sec; i++)
      0012E6 0C               [12]  743 	inc	r4
      0012E7 BC 00 DF         [24]  744 	cjne	r4,#0x00,00103$
      0012EA 0D               [12]  745 	inc	r5
      0012EB 80 DC            [24]  746 	sjmp	00103$
      0012ED                        747 00105$:
                                    748 ;	main.c:67: }
      0012ED 22               [24]  749 	ret
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'timer0_ISR'
                                    752 ;------------------------------------------------------------
                                    753 ;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_111'
                                    754 ;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_111'
                                    755 ;------------------------------------------------------------
                                    756 ;	main.c:69: void timer0_ISR() __interrupt(1) { // Define Timer 0 interrupt service routine
                                    757 ;	-----------------------------------------
                                    758 ;	 function timer0_ISR
                                    759 ;	-----------------------------------------
      0012EE                        760 _timer0_ISR:
      0012EE C0 22            [24]  761 	push	bits
      0012F0 C0 E0            [24]  762 	push	acc
      0012F2 C0 F0            [24]  763 	push	b
      0012F4 C0 82            [24]  764 	push	dpl
      0012F6 C0 83            [24]  765 	push	dph
      0012F8 C0 07            [24]  766 	push	(0+7)
      0012FA C0 06            [24]  767 	push	(0+6)
      0012FC C0 05            [24]  768 	push	(0+5)
      0012FE C0 04            [24]  769 	push	(0+4)
      001300 C0 03            [24]  770 	push	(0+3)
      001302 C0 02            [24]  771 	push	(0+2)
      001304 C0 01            [24]  772 	push	(0+1)
      001306 C0 00            [24]  773 	push	(0+0)
      001308 C0 D0            [24]  774 	push	psw
      00130A 75 D0 00         [24]  775 	mov	psw,#0x00
                                    776 ;	main.c:70: EA = 0;     // Disable interrupts
                                    777 ;	assignBit
      00130D C2 AF            [12]  778 	clr	_EA
                                    779 ;	main.c:72: TF0 = 0;    // Clear Timer 0 interrupt flag
                                    780 ;	assignBit
      00130F C2 8D            [12]  781 	clr	_TF0
                                    782 ;	main.c:75: volatile uint8_t save_cursor_addr = get_cursor_address(); // Get the current cursor address and store it in save_cursor_addr
      001311 12 02 0C         [24]  783 	lcall	_get_cursor_address
      001314 E5 82            [12]  784 	mov	a,dpl
      001316 90 04 F9         [24]  785 	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_111
      001319 F0               [24]  786 	movx	@dptr,a
                                    787 ;	main.c:79: if (counter_02s == 2) { // If the counter_02s equals 2, which means 0.2 seconds have passed
      00131A 90 04 F7         [24]  788 	mov	dptr,#_timer0_ISR_counter_02s_65537_111
      00131D E0               [24]  789 	movx	a,@dptr
      00131E FE               [12]  790 	mov	r6,a
      00131F A3               [24]  791 	inc	dptr
      001320 E0               [24]  792 	movx	a,@dptr
      001321 FF               [12]  793 	mov	r7,a
      001322 BE 02 1A         [24]  794 	cjne	r6,#0x02,00102$
      001325 BF 00 17         [24]  795 	cjne	r7,#0x00,00102$
                                    796 ;	main.c:80: P1_1 = P1_1 ^ 1;    // Toggle pin P1_1
      001328 B2 91            [12]  797 	cpl	_P1_1
                                    798 ;	main.c:81: update_lcd  = 1;    // Set the update_lcd flag to 1 to update the LCD
      00132A 90 05 77         [24]  799 	mov	dptr,#_update_lcd
      00132D 74 01            [12]  800 	mov	a,#0x01
      00132F F0               [24]  801 	movx	@dptr,a
      001330 E4               [12]  802 	clr	a
      001331 A3               [24]  803 	inc	dptr
      001332 F0               [24]  804 	movx	@dptr,a
                                    805 ;	main.c:82: counter_02s = 0;    // Reset the counter_02s
      001333 90 04 F7         [24]  806 	mov	dptr,#_timer0_ISR_counter_02s_65537_111
      001336 F0               [24]  807 	movx	@dptr,a
      001337 A3               [24]  808 	inc	dptr
      001338 F0               [24]  809 	movx	@dptr,a
                                    810 ;	main.c:83: tenth_of_second++;  // Increment the tenth of a second counter
      001339 90 05 79         [24]  811 	mov	dptr,#_tenth_of_second
      00133C E0               [24]  812 	movx	a,@dptr
      00133D 04               [12]  813 	inc	a
      00133E F0               [24]  814 	movx	@dptr,a
      00133F                        815 00102$:
                                    816 ;	main.c:85: counter_02s++;  // Increment the counter_02s
      00133F 90 04 F7         [24]  817 	mov	dptr,#_timer0_ISR_counter_02s_65537_111
      001342 E0               [24]  818 	movx	a,@dptr
      001343 24 01            [12]  819 	add	a,#0x01
      001345 F0               [24]  820 	movx	@dptr,a
      001346 A3               [24]  821 	inc	dptr
      001347 E0               [24]  822 	movx	a,@dptr
      001348 34 00            [12]  823 	addc	a,#0x00
      00134A F0               [24]  824 	movx	@dptr,a
                                    825 ;	main.c:87: TL0 = 0xfd;     // Set the low value of Timer 0 to 0xfd
      00134B 75 8A FD         [24]  826 	mov	_TL0,#0xfd
                                    827 ;	main.c:88: TH0 = 0x4b;     // Set the high value of Timer 0 to 0x4b
      00134E 75 8C 4B         [24]  828 	mov	_TH0,#0x4b
                                    829 ;	main.c:90: if (tenth_of_second == ':') { // If the tenth of a second counter equals ':', which means 1 second has passed
      001351 90 05 79         [24]  830 	mov	dptr,#_tenth_of_second
      001354 E0               [24]  831 	movx	a,@dptr
      001355 FF               [12]  832 	mov	r7,a
      001356 BF 3A 4A         [24]  833 	cjne	r7,#0x3a,00112$
                                    834 ;	main.c:91: tenth_of_second = '0'; // Reset the tenth of a second counter to '0'
      001359 90 05 79         [24]  835 	mov	dptr,#_tenth_of_second
      00135C 74 30            [12]  836 	mov	a,#0x30
      00135E F0               [24]  837 	movx	@dptr,a
                                    838 ;	main.c:92: seconds_ones_digit++; // Increment the first digit of the seconds counter
      00135F 90 05 7A         [24]  839 	mov	dptr,#_seconds_ones_digit
      001362 E0               [24]  840 	movx	a,@dptr
      001363 04               [12]  841 	inc	a
      001364 F0               [24]  842 	movx	@dptr,a
                                    843 ;	main.c:94: if (seconds_ones_digit == ':') { // If the first digit of the seconds counter equals ':', which means 10 seconds have passed
      001365 E0               [24]  844 	movx	a,@dptr
      001366 FF               [12]  845 	mov	r7,a
      001367 BF 3A 39         [24]  846 	cjne	r7,#0x3a,00112$
                                    847 ;	main.c:95: seconds_ones_digit = '0'; // Reset the first digit of the seconds counter to '0'
      00136A 90 05 7A         [24]  848 	mov	dptr,#_seconds_ones_digit
      00136D 74 30            [12]  849 	mov	a,#0x30
      00136F F0               [24]  850 	movx	@dptr,a
                                    851 ;	main.c:96: seconds_tens_digit++; // Increment the second digit of the seconds counter
      001370 90 05 7B         [24]  852 	mov	dptr,#_seconds_tens_digit
      001373 E0               [24]  853 	movx	a,@dptr
      001374 04               [12]  854 	inc	a
      001375 F0               [24]  855 	movx	@dptr,a
                                    856 ;	main.c:98: if (seconds_tens_digit == '6') { // If the second digit of the seconds counter equals '6', which means 1 minute has passed
      001376 E0               [24]  857 	movx	a,@dptr
      001377 FF               [12]  858 	mov	r7,a
      001378 BF 36 28         [24]  859 	cjne	r7,#0x36,00112$
                                    860 ;	main.c:99: seconds_tens_digit = '0'; // Reset the second digit of the seconds counter to '0'
      00137B 90 05 7B         [24]  861 	mov	dptr,#_seconds_tens_digit
      00137E 74 30            [12]  862 	mov	a,#0x30
      001380 F0               [24]  863 	movx	@dptr,a
                                    864 ;	main.c:100: minutes_ones_digit++; // Increment the first digit of the minutes counter
      001381 90 05 7C         [24]  865 	mov	dptr,#_minutes_ones_digit
      001384 E0               [24]  866 	movx	a,@dptr
      001385 04               [12]  867 	inc	a
      001386 F0               [24]  868 	movx	@dptr,a
                                    869 ;	main.c:102: if (minutes_ones_digit == ':') { // If the first digit of the minutes counter equals ':', which means 10 minutes have passed
      001387 E0               [24]  870 	movx	a,@dptr
      001388 FF               [12]  871 	mov	r7,a
      001389 BF 3A 17         [24]  872 	cjne	r7,#0x3a,00112$
                                    873 ;	main.c:103: minutes_ones_digit = '0'; // Reset the first digit of the minutes counter to '0'
      00138C 90 05 7C         [24]  874 	mov	dptr,#_minutes_ones_digit
      00138F 74 30            [12]  875 	mov	a,#0x30
      001391 F0               [24]  876 	movx	@dptr,a
                                    877 ;	main.c:104: minutes_tens_digit++; // Increment the second digit of the minutes counter
      001392 90 05 7D         [24]  878 	mov	dptr,#_minutes_tens_digit
      001395 E0               [24]  879 	movx	a,@dptr
      001396 04               [12]  880 	inc	a
      001397 F0               [24]  881 	movx	@dptr,a
                                    882 ;	main.c:106: if (minutes_tens_digit == '6') { // If the second digit of the minutes counter equals '6', which means 1 hour has passed
      001398 E0               [24]  883 	movx	a,@dptr
      001399 FF               [12]  884 	mov	r7,a
      00139A BF 36 06         [24]  885 	cjne	r7,#0x36,00112$
                                    886 ;	main.c:107: minutes_tens_digit = '0'; // Reset the second digit of the minutes counter to '0'
      00139D 90 05 7D         [24]  887 	mov	dptr,#_minutes_tens_digit
      0013A0 74 30            [12]  888 	mov	a,#0x30
      0013A2 F0               [24]  889 	movx	@dptr,a
      0013A3                        890 00112$:
                                    891 ;	main.c:113: lcdgotoaddr(save_cursor_addr); // Move the cursor to the previous cursor address
      0013A3 90 04 F9         [24]  892 	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_111
      0013A6 E0               [24]  893 	movx	a,@dptr
      0013A7 F5 82            [12]  894 	mov	dpl,a
      0013A9 12 02 19         [24]  895 	lcall	_lcdgotoaddr
                                    896 ;	main.c:114: EA=1; // Enable interrupts
                                    897 ;	assignBit
      0013AC D2 AF            [12]  898 	setb	_EA
                                    899 ;	main.c:115: }
      0013AE D0 D0            [24]  900 	pop	psw
      0013B0 D0 00            [24]  901 	pop	(0+0)
      0013B2 D0 01            [24]  902 	pop	(0+1)
      0013B4 D0 02            [24]  903 	pop	(0+2)
      0013B6 D0 03            [24]  904 	pop	(0+3)
      0013B8 D0 04            [24]  905 	pop	(0+4)
      0013BA D0 05            [24]  906 	pop	(0+5)
      0013BC D0 06            [24]  907 	pop	(0+6)
      0013BE D0 07            [24]  908 	pop	(0+7)
      0013C0 D0 83            [24]  909 	pop	dph
      0013C2 D0 82            [24]  910 	pop	dpl
      0013C4 D0 F0            [24]  911 	pop	b
      0013C6 D0 E0            [24]  912 	pop	acc
      0013C8 D0 22            [24]  913 	pop	bits
      0013CA 32               [24]  914 	reti
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'init_timer'
                                    917 ;------------------------------------------------------------
                                    918 ;	main.c:118: void init_timer(void){
                                    919 ;	-----------------------------------------
                                    920 ;	 function init_timer
                                    921 ;	-----------------------------------------
      0013CB                        922 _init_timer:
                                    923 ;	main.c:119: TCON=TCON&(~0x30);   // Clearing the last 2 bits in TCON register
      0013CB 53 88 CF         [24]  924 	anl	_TCON,#0xcf
                                    925 ;	main.c:120: TMOD |= 0x01;        // Setting the Timer 0 mode to 16-bit mode
      0013CE 43 89 01         [24]  926 	orl	_TMOD,#0x01
                                    927 ;	main.c:121: TL0 = 0xfd;          // Setting the initial value of Timer 0 low byte
      0013D1 75 8A FD         [24]  928 	mov	_TL0,#0xfd
                                    929 ;	main.c:122: TH0 = 0x4b;          // Setting the initial value of Timer 0 high byte
      0013D4 75 8C 4B         [24]  930 	mov	_TH0,#0x4b
                                    931 ;	main.c:123: IE   |=0x82;         // Enabling Timer 0 interrupt
      0013D7 43 A8 82         [24]  932 	orl	_IE,#0x82
                                    933 ;	main.c:124: PT0 = 1;             // Setting the Timer 0 interrupt priority to high
                                    934 ;	assignBit
      0013DA D2 B9            [12]  935 	setb	_PT0
                                    936 ;	main.c:125: TR0 = 1;             // Starting Timer 0
                                    937 ;	assignBit
      0013DC D2 8C            [12]  938 	setb	_TR0
                                    939 ;	main.c:126: }
      0013DE 22               [24]  940 	ret
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'main'
                                    943 ;------------------------------------------------------------
                                    944 ;fingerprint_count         Allocated with name '_main_fingerprint_count_65536_121'
                                    945 ;char_detected             Allocated with name '_main_char_detected_196608_123'
                                    946 ;------------------------------------------------------------
                                    947 ;	main.c:129: void main(void)
                                    948 ;	-----------------------------------------
                                    949 ;	 function main
                                    950 ;	-----------------------------------------
      0013DF                        951 _main:
                                    952 ;	main.c:133: uart_init();        // Initialize UART for serial communication
      0013DF 12 15 AA         [24]  953 	lcall	_uart_init
                                    954 ;	main.c:134: init_lcd();         // Initialize LCD
      0013E2 12 01 AA         [24]  955 	lcall	_init_lcd
                                    956 ;	main.c:137: lcdgotoxy('0','0');
      0013E5 90 04 08         [24]  957 	mov	dptr,#_lcdgotoxy_PARM_2
      0013E8 74 30            [12]  958 	mov	a,#0x30
      0013EA F0               [24]  959 	movx	@dptr,a
      0013EB 75 82 30         [24]  960 	mov	dpl,#0x30
      0013EE 12 02 36         [24]  961 	lcall	_lcdgotoxy
                                    962 ;	main.c:138: lcdputstr("Hello");
      0013F1 90 2E 4F         [24]  963 	mov	dptr,#___str_0
      0013F4 75 F0 80         [24]  964 	mov	b,#0x80
      0013F7 12 03 52         [24]  965 	lcall	_lcdputstr
                                    966 ;	main.c:139: lcdgotoxy('1','0');
      0013FA 90 04 08         [24]  967 	mov	dptr,#_lcdgotoxy_PARM_2
      0013FD 74 30            [12]  968 	mov	a,#0x30
      0013FF F0               [24]  969 	movx	@dptr,a
      001400 75 82 31         [24]  970 	mov	dpl,#0x31
      001403 12 02 36         [24]  971 	lcall	_lcdgotoxy
                                    972 ;	main.c:140: lcdputstr("STM32F411E-Disco");
      001406 90 2E 55         [24]  973 	mov	dptr,#___str_1
      001409 75 F0 80         [24]  974 	mov	b,#0x80
      00140C 12 03 52         [24]  975 	lcall	_lcdputstr
                                    976 ;	main.c:141: lcdgotoxy('0','0');
      00140F 90 04 08         [24]  977 	mov	dptr,#_lcdgotoxy_PARM_2
      001412 74 30            [12]  978 	mov	a,#0x30
      001414 F0               [24]  979 	movx	@dptr,a
      001415 75 82 30         [24]  980 	mov	dpl,#0x30
      001418 12 02 36         [24]  981 	lcall	_lcdgotoxy
                                    982 ;	main.c:142: delay_sec(1);
      00141B 90 00 01         [24]  983 	mov	dptr,#0x0001
      00141E 12 12 B2         [24]  984 	lcall	_delay_sec
                                    985 ;	main.c:144: while(1)
      001421                        986 00111$:
                                    987 ;	main.c:155: if(RI)
      001421 30 98 FD         [24]  988 	jnb	_RI,00111$
                                    989 ;	main.c:158: char_detected = SBUF;           // Store the character in a variable
      001424 90 04 FC         [24]  990 	mov	dptr,#_main_char_detected_196608_123
      001427 E5 99            [12]  991 	mov	a,_SBUF
      001429 F0               [24]  992 	movx	@dptr,a
                                    993 ;	main.c:162: RI = 0;                         // Reset the flag
                                    994 ;	assignBit
      00142A C2 98            [12]  995 	clr	_RI
                                    996 ;	main.c:164: switch(char_detected)           // Perform a certain action based on the received character
      00142C 90 04 FC         [24]  997 	mov	dptr,#_main_char_detected_196608_123
      00142F E0               [24]  998 	movx	a,@dptr
      001430 FF               [12]  999 	mov	r7,a
      001431 BF 41 02         [24] 1000 	cjne	r7,#0x41,00144$
      001434 80 19            [24] 1001 	sjmp	00101$
      001436                       1002 00144$:
      001436 BF 42 02         [24] 1003 	cjne	r7,#0x42,00145$
      001439 80 70            [24] 1004 	sjmp	00102$
      00143B                       1005 00145$:
      00143B BF 43 03         [24] 1006 	cjne	r7,#0x43,00146$
      00143E 02 14 F3         [24] 1007 	ljmp	00103$
      001441                       1008 00146$:
      001441 BF 44 03         [24] 1009 	cjne	r7,#0x44,00147$
      001444 02 15 3B         [24] 1010 	ljmp	00104$
      001447                       1011 00147$:
      001447 BF 5A 03         [24] 1012 	cjne	r7,#0x5a,00148$
      00144A 02 15 92         [24] 1013 	ljmp	00105$
      00144D                       1014 00148$:
                                   1015 ;	main.c:166: case 'A':                       // If the character 'L' is received
      00144D 80 D2            [24] 1016 	sjmp	00111$
      00144F                       1017 00101$:
                                   1018 ;	main.c:179: }
      00144F D2 0C            [12] 1019 	setb	_main_sloc0_1_0
      001451 10 AF 02         [24] 1020 	jbc	ea,00149$
      001454 C2 0C            [12] 1021 	clr	_main_sloc0_1_0
      001456                       1022 00149$:
                                   1023 ;	main.c:170: handler_lcdclear();
      001456 12 03 A6         [24] 1024 	lcall	_handler_lcdclear
                                   1025 ;	main.c:171: lcdgotoxy('0','0');
      001459 90 04 08         [24] 1026 	mov	dptr,#_lcdgotoxy_PARM_2
      00145C 74 30            [12] 1027 	mov	a,#0x30
      00145E F0               [24] 1028 	movx	@dptr,a
      00145F 75 82 30         [24] 1029 	mov	dpl,#0x30
      001462 12 02 36         [24] 1030 	lcall	_lcdgotoxy
                                   1031 ;	main.c:172: lcdputstr("|   New User   |");
      001465 90 2E 66         [24] 1032 	mov	dptr,#___str_2
      001468 75 F0 80         [24] 1033 	mov	b,#0x80
      00146B 12 03 52         [24] 1034 	lcall	_lcdputstr
                                   1035 ;	main.c:173: lcdgotoxy('1','0');
      00146E 90 04 08         [24] 1036 	mov	dptr,#_lcdgotoxy_PARM_2
      001471 74 30            [12] 1037 	mov	a,#0x30
      001473 F0               [24] 1038 	movx	@dptr,a
      001474 75 82 31         [24] 1039 	mov	dpl,#0x31
      001477 12 02 36         [24] 1040 	lcall	_lcdgotoxy
                                   1041 ;	main.c:174: lcdputstr("|   Enrolled   |");
      00147A 90 2E 77         [24] 1042 	mov	dptr,#___str_3
      00147D 75 F0 80         [24] 1043 	mov	b,#0x80
      001480 12 03 52         [24] 1044 	lcall	_lcdputstr
                                   1045 ;	main.c:175: lcdgotoxy('0','0');
      001483 90 04 08         [24] 1046 	mov	dptr,#_lcdgotoxy_PARM_2
      001486 74 30            [12] 1047 	mov	a,#0x30
      001488 F0               [24] 1048 	movx	@dptr,a
      001489 75 82 30         [24] 1049 	mov	dpl,#0x30
      00148C 12 02 36         [24] 1050 	lcall	_lcdgotoxy
                                   1051 ;	main.c:176: handle_newuser_custom_char();
      00148F 12 10 CE         [24] 1052 	lcall	_handle_newuser_custom_char
                                   1053 ;	main.c:177: delay_sec(1);
      001492 90 00 01         [24] 1054 	mov	dptr,#0x0001
      001495 12 12 B2         [24] 1055 	lcall	_delay_sec
                                   1056 ;	main.c:178: fingerprint_count++;
      001498 90 04 FA         [24] 1057 	mov	dptr,#_main_fingerprint_count_65536_121
      00149B E0               [24] 1058 	movx	a,@dptr
      00149C 24 01            [12] 1059 	add	a,#0x01
      00149E F0               [24] 1060 	movx	@dptr,a
      00149F A3               [24] 1061 	inc	dptr
      0014A0 E0               [24] 1062 	movx	a,@dptr
      0014A1 34 00            [12] 1063 	addc	a,#0x00
      0014A3 F0               [24] 1064 	movx	@dptr,a
      0014A4 A2 0C            [12] 1065 	mov	c,_main_sloc0_1_0
      0014A6 92 AF            [24] 1066 	mov	ea,c
                                   1067 ;	main.c:180: break;
      0014A8 02 14 21         [24] 1068 	ljmp	00111$
                                   1069 ;	main.c:182: case 'B': // If the character 'A' is received
      0014AB                       1070 00102$:
                                   1071 ;	main.c:183: handler_lcdclear();
      0014AB 12 03 A6         [24] 1072 	lcall	_handler_lcdclear
                                   1073 ;	main.c:184: lcdgotoxy('0','0');
      0014AE 90 04 08         [24] 1074 	mov	dptr,#_lcdgotoxy_PARM_2
      0014B1 74 30            [12] 1075 	mov	a,#0x30
      0014B3 F0               [24] 1076 	movx	@dptr,a
      0014B4 75 82 30         [24] 1077 	mov	dpl,#0x30
      0014B7 12 02 36         [24] 1078 	lcall	_lcdgotoxy
                                   1079 ;	main.c:185: lcdputstr("|      User    |");
      0014BA 90 2E 88         [24] 1080 	mov	dptr,#___str_4
      0014BD 75 F0 80         [24] 1081 	mov	b,#0x80
      0014C0 12 03 52         [24] 1082 	lcall	_lcdputstr
                                   1083 ;	main.c:186: lcdgotoxy('1','0');
      0014C3 90 04 08         [24] 1084 	mov	dptr,#_lcdgotoxy_PARM_2
      0014C6 74 30            [12] 1085 	mov	a,#0x30
      0014C8 F0               [24] 1086 	movx	@dptr,a
      0014C9 75 82 31         [24] 1087 	mov	dpl,#0x31
      0014CC 12 02 36         [24] 1088 	lcall	_lcdgotoxy
                                   1089 ;	main.c:187: lcdputstr("|  Authorized  |");
      0014CF 90 2E 99         [24] 1090 	mov	dptr,#___str_5
      0014D2 75 F0 80         [24] 1091 	mov	b,#0x80
      0014D5 12 03 52         [24] 1092 	lcall	_lcdputstr
                                   1093 ;	main.c:188: lcdgotoxy('0','0');
      0014D8 90 04 08         [24] 1094 	mov	dptr,#_lcdgotoxy_PARM_2
      0014DB 74 30            [12] 1095 	mov	a,#0x30
      0014DD F0               [24] 1096 	movx	@dptr,a
      0014DE 75 82 30         [24] 1097 	mov	dpl,#0x30
      0014E1 12 02 36         [24] 1098 	lcall	_lcdgotoxy
                                   1099 ;	main.c:189: handle_unlock_custom_char();
      0014E4 12 0F 63         [24] 1100 	lcall	_handle_unlock_custom_char
                                   1101 ;	main.c:190: normalBeep();
      0014E7 12 01 0B         [24] 1102 	lcall	_normalBeep
                                   1103 ;	main.c:191: delay_sec(1);
      0014EA 90 00 01         [24] 1104 	mov	dptr,#0x0001
      0014ED 12 12 B2         [24] 1105 	lcall	_delay_sec
                                   1106 ;	main.c:192: break;
      0014F0 02 14 21         [24] 1107 	ljmp	00111$
                                   1108 ;	main.c:194: case 'C': // If the character 'B' is received
      0014F3                       1109 00103$:
                                   1110 ;	main.c:195: handler_lcdclear();
      0014F3 12 03 A6         [24] 1111 	lcall	_handler_lcdclear
                                   1112 ;	main.c:196: lcdgotoxy('0','0');
      0014F6 90 04 08         [24] 1113 	mov	dptr,#_lcdgotoxy_PARM_2
      0014F9 74 30            [12] 1114 	mov	a,#0x30
      0014FB F0               [24] 1115 	movx	@dptr,a
      0014FC 75 82 30         [24] 1116 	mov	dpl,#0x30
      0014FF 12 02 36         [24] 1117 	lcall	_lcdgotoxy
                                   1118 ;	main.c:197: lcdputstr("|     User     |");
      001502 90 2E AA         [24] 1119 	mov	dptr,#___str_6
      001505 75 F0 80         [24] 1120 	mov	b,#0x80
      001508 12 03 52         [24] 1121 	lcall	_lcdputstr
                                   1122 ;	main.c:198: lcdgotoxy('1','0');
      00150B 90 04 08         [24] 1123 	mov	dptr,#_lcdgotoxy_PARM_2
      00150E 74 30            [12] 1124 	mov	a,#0x30
      001510 F0               [24] 1125 	movx	@dptr,a
      001511 75 82 31         [24] 1126 	mov	dpl,#0x31
      001514 12 02 36         [24] 1127 	lcall	_lcdgotoxy
                                   1128 ;	main.c:199: lcdputstr("| Un-Authorized|");
      001517 90 2E BB         [24] 1129 	mov	dptr,#___str_7
      00151A 75 F0 80         [24] 1130 	mov	b,#0x80
      00151D 12 03 52         [24] 1131 	lcall	_lcdputstr
                                   1132 ;	main.c:200: lcdgotoxy('0','0');
      001520 90 04 08         [24] 1133 	mov	dptr,#_lcdgotoxy_PARM_2
      001523 74 30            [12] 1134 	mov	a,#0x30
      001525 F0               [24] 1135 	movx	@dptr,a
      001526 75 82 30         [24] 1136 	mov	dpl,#0x30
      001529 12 02 36         [24] 1137 	lcall	_lcdgotoxy
                                   1138 ;	main.c:201: handle_lock_custom_char();
      00152C 12 0D F8         [24] 1139 	lcall	_handle_lock_custom_char
                                   1140 ;	main.c:202: fastBeep();
      00152F 12 00 DC         [24] 1141 	lcall	_fastBeep
                                   1142 ;	main.c:203: delay_sec(1);
      001532 90 00 01         [24] 1143 	mov	dptr,#0x0001
      001535 12 12 B2         [24] 1144 	lcall	_delay_sec
                                   1145 ;	main.c:204: break;
      001538 02 14 21         [24] 1146 	ljmp	00111$
                                   1147 ;	main.c:206: case 'D': // If the character 'C' is received
      00153B                       1148 00104$:
                                   1149 ;	main.c:207: handler_lcdclear();
      00153B 12 03 A6         [24] 1150 	lcall	_handler_lcdclear
                                   1151 ;	main.c:208: lcdgotoxy('0','0');
      00153E 90 04 08         [24] 1152 	mov	dptr,#_lcdgotoxy_PARM_2
      001541 74 30            [12] 1153 	mov	a,#0x30
      001543 F0               [24] 1154 	movx	@dptr,a
      001544 75 82 30         [24] 1155 	mov	dpl,#0x30
      001547 12 02 36         [24] 1156 	lcall	_lcdgotoxy
                                   1157 ;	main.c:209: lcdputstr("|  Existing    |");
      00154A 90 2E CC         [24] 1158 	mov	dptr,#___str_8
      00154D 75 F0 80         [24] 1159 	mov	b,#0x80
      001550 12 03 52         [24] 1160 	lcall	_lcdputstr
                                   1161 ;	main.c:210: lcdgotoxy('1','0');
      001553 90 04 08         [24] 1162 	mov	dptr,#_lcdgotoxy_PARM_2
      001556 74 30            [12] 1163 	mov	a,#0x30
      001558 F0               [24] 1164 	movx	@dptr,a
      001559 75 82 31         [24] 1165 	mov	dpl,#0x31
      00155C 12 02 36         [24] 1166 	lcall	_lcdgotoxy
                                   1167 ;	main.c:211: lcdputstr("|  Data Base   |");
      00155F 90 2E DD         [24] 1168 	mov	dptr,#___str_9
      001562 75 F0 80         [24] 1169 	mov	b,#0x80
      001565 12 03 52         [24] 1170 	lcall	_lcdputstr
                                   1171 ;	main.c:212: lcdgotoxy('2','0');
      001568 90 04 08         [24] 1172 	mov	dptr,#_lcdgotoxy_PARM_2
      00156B 74 30            [12] 1173 	mov	a,#0x30
      00156D F0               [24] 1174 	movx	@dptr,a
      00156E 75 82 32         [24] 1175 	mov	dpl,#0x32
      001571 12 02 36         [24] 1176 	lcall	_lcdgotoxy
                                   1177 ;	main.c:213: lcdputstr("|   Cleared    |");
      001574 90 2E EE         [24] 1178 	mov	dptr,#___str_10
      001577 75 F0 80         [24] 1179 	mov	b,#0x80
      00157A 12 03 52         [24] 1180 	lcall	_lcdputstr
                                   1181 ;	main.c:214: lcdgotoxy('0','0');
      00157D 90 04 08         [24] 1182 	mov	dptr,#_lcdgotoxy_PARM_2
      001580 74 30            [12] 1183 	mov	a,#0x30
      001582 F0               [24] 1184 	movx	@dptr,a
      001583 75 82 30         [24] 1185 	mov	dpl,#0x30
      001586 12 02 36         [24] 1186 	lcall	_lcdgotoxy
                                   1187 ;	main.c:215: delay_sec(1);
      001589 90 00 01         [24] 1188 	mov	dptr,#0x0001
      00158C 12 12 B2         [24] 1189 	lcall	_delay_sec
                                   1190 ;	main.c:217: break;
      00158F 02 14 21         [24] 1191 	ljmp	00111$
                                   1192 ;	main.c:276: case 'Z': // If the character 'P' is received
      001592                       1193 00105$:
                                   1194 ;	main.c:277: handler_lcdclear();
      001592 12 03 A6         [24] 1195 	lcall	_handler_lcdclear
                                   1196 ;	main.c:278: lcdgotoxy('0','0');
      001595 90 04 08         [24] 1197 	mov	dptr,#_lcdgotoxy_PARM_2
      001598 74 30            [12] 1198 	mov	a,#0x30
      00159A F0               [24] 1199 	movx	@dptr,a
      00159B 75 82 30         [24] 1200 	mov	dpl,#0x30
      00159E 12 02 36         [24] 1201 	lcall	_lcdgotoxy
                                   1202 ;	main.c:279: delay_sec(1);
      0015A1 90 00 01         [24] 1203 	mov	dptr,#0x0001
      0015A4 12 12 B2         [24] 1204 	lcall	_delay_sec
                                   1205 ;	main.c:280: break;
                                   1206 ;	main.c:284: }
                                   1207 ;	main.c:287: }
      0015A7 02 14 21         [24] 1208 	ljmp	00111$
                                   1209 	.area CSEG    (CODE)
                                   1210 	.area CONST   (CODE)
                                   1211 	.area CONST   (CODE)
      002E4F                       1212 ___str_0:
      002E4F 48 65 6C 6C 6F        1213 	.ascii "Hello"
      002E54 00                    1214 	.db 0x00
                                   1215 	.area CSEG    (CODE)
                                   1216 	.area CONST   (CODE)
      002E55                       1217 ___str_1:
      002E55 53 54 4D 33 32 46 34  1218 	.ascii "STM32F411E-Disco"
             31 31 45 2D 44 69 73
             63 6F
      002E65 00                    1219 	.db 0x00
                                   1220 	.area CSEG    (CODE)
                                   1221 	.area CONST   (CODE)
      002E66                       1222 ___str_2:
      002E66 7C 20 20 20 4E 65 77  1223 	.ascii "|   New User   |"
             20 55 73 65 72 20 20
             20 7C
      002E76 00                    1224 	.db 0x00
                                   1225 	.area CSEG    (CODE)
                                   1226 	.area CONST   (CODE)
      002E77                       1227 ___str_3:
      002E77 7C 20 20 20 45 6E 72  1228 	.ascii "|   Enrolled   |"
             6F 6C 6C 65 64 20 20
             20 7C
      002E87 00                    1229 	.db 0x00
                                   1230 	.area CSEG    (CODE)
                                   1231 	.area CONST   (CODE)
      002E88                       1232 ___str_4:
      002E88 7C 20 20 20 20 20 20  1233 	.ascii "|      User    |"
             55 73 65 72 20 20 20
             20 7C
      002E98 00                    1234 	.db 0x00
                                   1235 	.area CSEG    (CODE)
                                   1236 	.area CONST   (CODE)
      002E99                       1237 ___str_5:
      002E99 7C 20 20 41 75 74 68  1238 	.ascii "|  Authorized  |"
             6F 72 69 7A 65 64 20
             20 7C
      002EA9 00                    1239 	.db 0x00
                                   1240 	.area CSEG    (CODE)
                                   1241 	.area CONST   (CODE)
      002EAA                       1242 ___str_6:
      002EAA 7C 20 20 20 20 20 55  1243 	.ascii "|     User     |"
             73 65 72 20 20 20 20
             20 7C
      002EBA 00                    1244 	.db 0x00
                                   1245 	.area CSEG    (CODE)
                                   1246 	.area CONST   (CODE)
      002EBB                       1247 ___str_7:
      002EBB 7C 20 55 6E 2D 41 75  1248 	.ascii "| Un-Authorized|"
             74 68 6F 72 69 7A 65
             64 7C
      002ECB 00                    1249 	.db 0x00
                                   1250 	.area CSEG    (CODE)
                                   1251 	.area CONST   (CODE)
      002ECC                       1252 ___str_8:
      002ECC 7C 20 20 45 78 69 73  1253 	.ascii "|  Existing    |"
             74 69 6E 67 20 20 20
             20 7C
      002EDC 00                    1254 	.db 0x00
                                   1255 	.area CSEG    (CODE)
                                   1256 	.area CONST   (CODE)
      002EDD                       1257 ___str_9:
      002EDD 7C 20 20 44 61 74 61  1258 	.ascii "|  Data Base   |"
             20 42 61 73 65 20 20
             20 7C
      002EED 00                    1259 	.db 0x00
                                   1260 	.area CSEG    (CODE)
                                   1261 	.area CONST   (CODE)
      002EEE                       1262 ___str_10:
      002EEE 7C 20 20 20 43 6C 65  1263 	.ascii "|   Cleared    |"
             61 72 65 64 20 20 20
             20 7C
      002EFE 00                    1264 	.db 0x00
                                   1265 	.area CSEG    (CODE)
                                   1266 	.area XINIT   (CODE)
      002FF9                       1267 __xinit__update_lcd:
      002FF9 00 00                 1268 	.byte #0x00, #0x00	;  0
      002FFB                       1269 __xinit__tenth_of_second:
      002FFB 30                    1270 	.db #0x30	; 48	'0'
      002FFC                       1271 __xinit__seconds_ones_digit:
      002FFC 30                    1272 	.db #0x30	; 48	'0'
      002FFD                       1273 __xinit__seconds_tens_digit:
      002FFD 30                    1274 	.db #0x30	; 48	'0'
      002FFE                       1275 __xinit__minutes_ones_digit:
      002FFE 30                    1276 	.db #0x30	; 48	'0'
      002FFF                       1277 __xinit__minutes_tens_digit:
      002FFF 30                    1278 	.db #0x30	; 48	'0'
                                   1279 	.area CABS    (ABS,CODE)
