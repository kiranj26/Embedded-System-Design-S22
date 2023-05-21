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
                                     14 	.globl __sdcc_external_startup
                                     15 	.globl _get_cursor_address
                                     16 	.globl _handle_sadsmiley_custom_char
                                     17 	.globl _handle_cu_custom_char
                                     18 	.globl _handler_custom_char
                                     19 	.globl _handler_lcd_hexdump
                                     20 	.globl _handler_reset_time
                                     21 	.globl _handler_resume_time
                                     22 	.globl _handler_stop_time
                                     23 	.globl _handler_lcdclear
                                     24 	.globl _handler_lcdgotoaddress
                                     25 	.globl _handler_lcdgotoxy
                                     26 	.globl _handler_wr_str_lcd
                                     27 	.globl _handler_wr_c_lcd
                                     28 	.globl _print_author
                                     29 	.globl _lcdputch
                                     30 	.globl _lcdgotoaddr
                                     31 	.globl _init_lcd
                                     32 	.globl _print_UI
                                     33 	.globl _print_colored
                                     34 	.globl _putchar
                                     35 	.globl _uart_init
                                     36 	.globl _printf_tiny
                                     37 	.globl _printf
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _PS
                                     47 	.globl _PT1
                                     48 	.globl _PX1
                                     49 	.globl _PT0
                                     50 	.globl _PX0
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _EA
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _TXD0
                                    114 	.globl _RXD0
                                    115 	.globl _BREG_F7
                                    116 	.globl _BREG_F6
                                    117 	.globl _BREG_F5
                                    118 	.globl _BREG_F4
                                    119 	.globl _BREG_F3
                                    120 	.globl _BREG_F2
                                    121 	.globl _BREG_F1
                                    122 	.globl _BREG_F0
                                    123 	.globl _P5_7
                                    124 	.globl _P5_6
                                    125 	.globl _P5_5
                                    126 	.globl _P5_4
                                    127 	.globl _P5_3
                                    128 	.globl _P5_2
                                    129 	.globl _P5_1
                                    130 	.globl _P5_0
                                    131 	.globl _P4_7
                                    132 	.globl _P4_6
                                    133 	.globl _P4_5
                                    134 	.globl _P4_4
                                    135 	.globl _P4_3
                                    136 	.globl _P4_2
                                    137 	.globl _P4_1
                                    138 	.globl _P4_0
                                    139 	.globl _PX0L
                                    140 	.globl _PT0L
                                    141 	.globl _PX1L
                                    142 	.globl _PT1L
                                    143 	.globl _PSL
                                    144 	.globl _PT2L
                                    145 	.globl _PPCL
                                    146 	.globl _EC
                                    147 	.globl _CCF0
                                    148 	.globl _CCF1
                                    149 	.globl _CCF2
                                    150 	.globl _CCF3
                                    151 	.globl _CCF4
                                    152 	.globl _CR
                                    153 	.globl _CF
                                    154 	.globl _TF2
                                    155 	.globl _EXF2
                                    156 	.globl _RCLK
                                    157 	.globl _TCLK
                                    158 	.globl _EXEN2
                                    159 	.globl _TR2
                                    160 	.globl _C_T2
                                    161 	.globl _CP_RL2
                                    162 	.globl _T2CON_7
                                    163 	.globl _T2CON_6
                                    164 	.globl _T2CON_5
                                    165 	.globl _T2CON_4
                                    166 	.globl _T2CON_3
                                    167 	.globl _T2CON_2
                                    168 	.globl _T2CON_1
                                    169 	.globl _T2CON_0
                                    170 	.globl _PT2
                                    171 	.globl _ET2
                                    172 	.globl _B
                                    173 	.globl _ACC
                                    174 	.globl _PSW
                                    175 	.globl _IP
                                    176 	.globl _P3
                                    177 	.globl _IE
                                    178 	.globl _P2
                                    179 	.globl _SBUF
                                    180 	.globl _SCON
                                    181 	.globl _P1
                                    182 	.globl _TH1
                                    183 	.globl _TH0
                                    184 	.globl _TL1
                                    185 	.globl _TL0
                                    186 	.globl _TMOD
                                    187 	.globl _TCON
                                    188 	.globl _PCON
                                    189 	.globl _DPH
                                    190 	.globl _DPL
                                    191 	.globl _SP
                                    192 	.globl _P0
                                    193 	.globl _SBUF0
                                    194 	.globl _DP0L
                                    195 	.globl _DP0H
                                    196 	.globl _EECON
                                    197 	.globl _KBF
                                    198 	.globl _KBE
                                    199 	.globl _KBLS
                                    200 	.globl _BRL
                                    201 	.globl _BDRCON
                                    202 	.globl _T2MOD
                                    203 	.globl _SPDAT
                                    204 	.globl _SPSTA
                                    205 	.globl _SPCON
                                    206 	.globl _SADEN
                                    207 	.globl _SADDR
                                    208 	.globl _WDTPRG
                                    209 	.globl _WDTRST
                                    210 	.globl _P5
                                    211 	.globl _P4
                                    212 	.globl _IPH1
                                    213 	.globl _IPL1
                                    214 	.globl _IPH0
                                    215 	.globl _IPL0
                                    216 	.globl _IEN1
                                    217 	.globl _IEN0
                                    218 	.globl _CMOD
                                    219 	.globl _CL
                                    220 	.globl _CH
                                    221 	.globl _CCON
                                    222 	.globl _CCAPM4
                                    223 	.globl _CCAPM3
                                    224 	.globl _CCAPM2
                                    225 	.globl _CCAPM1
                                    226 	.globl _CCAPM0
                                    227 	.globl _CCAP4L
                                    228 	.globl _CCAP3L
                                    229 	.globl _CCAP2L
                                    230 	.globl _CCAP1L
                                    231 	.globl _CCAP0L
                                    232 	.globl _CCAP4H
                                    233 	.globl _CCAP3H
                                    234 	.globl _CCAP2H
                                    235 	.globl _CCAP1H
                                    236 	.globl _CCAP0H
                                    237 	.globl _CKCON1
                                    238 	.globl _CKCON0
                                    239 	.globl _CKRL
                                    240 	.globl _AUXR1
                                    241 	.globl _AUXR
                                    242 	.globl _TH2
                                    243 	.globl _TL2
                                    244 	.globl _RCAP2H
                                    245 	.globl _RCAP2L
                                    246 	.globl _T2CON
                                    247 	.globl _minutes_tens_digit
                                    248 	.globl _minutes_ones_digit
                                    249 	.globl _seconds_tens_digit
                                    250 	.globl _seconds_ones_digit
                                    251 	.globl _tenth_of_second
                                    252 	.globl _update_lcd
                                    253 ;--------------------------------------------------------
                                    254 ; special function registers
                                    255 ;--------------------------------------------------------
                                    256 	.area RSEG    (ABS,DATA)
      000000                        257 	.org 0x0000
                           0000C8   258 _T2CON	=	0x00c8
                           0000CA   259 _RCAP2L	=	0x00ca
                           0000CB   260 _RCAP2H	=	0x00cb
                           0000CC   261 _TL2	=	0x00cc
                           0000CD   262 _TH2	=	0x00cd
                           00008E   263 _AUXR	=	0x008e
                           0000A2   264 _AUXR1	=	0x00a2
                           000097   265 _CKRL	=	0x0097
                           00008F   266 _CKCON0	=	0x008f
                           0000AF   267 _CKCON1	=	0x00af
                           0000FA   268 _CCAP0H	=	0x00fa
                           0000FB   269 _CCAP1H	=	0x00fb
                           0000FC   270 _CCAP2H	=	0x00fc
                           0000FD   271 _CCAP3H	=	0x00fd
                           0000FE   272 _CCAP4H	=	0x00fe
                           0000EA   273 _CCAP0L	=	0x00ea
                           0000EB   274 _CCAP1L	=	0x00eb
                           0000EC   275 _CCAP2L	=	0x00ec
                           0000ED   276 _CCAP3L	=	0x00ed
                           0000EE   277 _CCAP4L	=	0x00ee
                           0000DA   278 _CCAPM0	=	0x00da
                           0000DB   279 _CCAPM1	=	0x00db
                           0000DC   280 _CCAPM2	=	0x00dc
                           0000DD   281 _CCAPM3	=	0x00dd
                           0000DE   282 _CCAPM4	=	0x00de
                           0000D8   283 _CCON	=	0x00d8
                           0000F9   284 _CH	=	0x00f9
                           0000E9   285 _CL	=	0x00e9
                           0000D9   286 _CMOD	=	0x00d9
                           0000A8   287 _IEN0	=	0x00a8
                           0000B1   288 _IEN1	=	0x00b1
                           0000B8   289 _IPL0	=	0x00b8
                           0000B7   290 _IPH0	=	0x00b7
                           0000B2   291 _IPL1	=	0x00b2
                           0000B3   292 _IPH1	=	0x00b3
                           0000C0   293 _P4	=	0x00c0
                           0000E8   294 _P5	=	0x00e8
                           0000A6   295 _WDTRST	=	0x00a6
                           0000A7   296 _WDTPRG	=	0x00a7
                           0000A9   297 _SADDR	=	0x00a9
                           0000B9   298 _SADEN	=	0x00b9
                           0000C3   299 _SPCON	=	0x00c3
                           0000C4   300 _SPSTA	=	0x00c4
                           0000C5   301 _SPDAT	=	0x00c5
                           0000C9   302 _T2MOD	=	0x00c9
                           00009B   303 _BDRCON	=	0x009b
                           00009A   304 _BRL	=	0x009a
                           00009C   305 _KBLS	=	0x009c
                           00009D   306 _KBE	=	0x009d
                           00009E   307 _KBF	=	0x009e
                           0000D2   308 _EECON	=	0x00d2
                           000083   309 _DP0H	=	0x0083
                           000082   310 _DP0L	=	0x0082
                           000099   311 _SBUF0	=	0x0099
                           000080   312 _P0	=	0x0080
                           000081   313 _SP	=	0x0081
                           000082   314 _DPL	=	0x0082
                           000083   315 _DPH	=	0x0083
                           000087   316 _PCON	=	0x0087
                           000088   317 _TCON	=	0x0088
                           000089   318 _TMOD	=	0x0089
                           00008A   319 _TL0	=	0x008a
                           00008B   320 _TL1	=	0x008b
                           00008C   321 _TH0	=	0x008c
                           00008D   322 _TH1	=	0x008d
                           000090   323 _P1	=	0x0090
                           000098   324 _SCON	=	0x0098
                           000099   325 _SBUF	=	0x0099
                           0000A0   326 _P2	=	0x00a0
                           0000A8   327 _IE	=	0x00a8
                           0000B0   328 _P3	=	0x00b0
                           0000B8   329 _IP	=	0x00b8
                           0000D0   330 _PSW	=	0x00d0
                           0000E0   331 _ACC	=	0x00e0
                           0000F0   332 _B	=	0x00f0
                                    333 ;--------------------------------------------------------
                                    334 ; special function bits
                                    335 ;--------------------------------------------------------
                                    336 	.area RSEG    (ABS,DATA)
      000000                        337 	.org 0x0000
                           0000AD   338 _ET2	=	0x00ad
                           0000BD   339 _PT2	=	0x00bd
                           0000C8   340 _T2CON_0	=	0x00c8
                           0000C9   341 _T2CON_1	=	0x00c9
                           0000CA   342 _T2CON_2	=	0x00ca
                           0000CB   343 _T2CON_3	=	0x00cb
                           0000CC   344 _T2CON_4	=	0x00cc
                           0000CD   345 _T2CON_5	=	0x00cd
                           0000CE   346 _T2CON_6	=	0x00ce
                           0000CF   347 _T2CON_7	=	0x00cf
                           0000C8   348 _CP_RL2	=	0x00c8
                           0000C9   349 _C_T2	=	0x00c9
                           0000CA   350 _TR2	=	0x00ca
                           0000CB   351 _EXEN2	=	0x00cb
                           0000CC   352 _TCLK	=	0x00cc
                           0000CD   353 _RCLK	=	0x00cd
                           0000CE   354 _EXF2	=	0x00ce
                           0000CF   355 _TF2	=	0x00cf
                           0000DF   356 _CF	=	0x00df
                           0000DE   357 _CR	=	0x00de
                           0000DC   358 _CCF4	=	0x00dc
                           0000DB   359 _CCF3	=	0x00db
                           0000DA   360 _CCF2	=	0x00da
                           0000D9   361 _CCF1	=	0x00d9
                           0000D8   362 _CCF0	=	0x00d8
                           0000AE   363 _EC	=	0x00ae
                           0000BE   364 _PPCL	=	0x00be
                           0000BD   365 _PT2L	=	0x00bd
                           0000BC   366 _PSL	=	0x00bc
                           0000BB   367 _PT1L	=	0x00bb
                           0000BA   368 _PX1L	=	0x00ba
                           0000B9   369 _PT0L	=	0x00b9
                           0000B8   370 _PX0L	=	0x00b8
                           0000C0   371 _P4_0	=	0x00c0
                           0000C1   372 _P4_1	=	0x00c1
                           0000C2   373 _P4_2	=	0x00c2
                           0000C3   374 _P4_3	=	0x00c3
                           0000C4   375 _P4_4	=	0x00c4
                           0000C5   376 _P4_5	=	0x00c5
                           0000C6   377 _P4_6	=	0x00c6
                           0000C7   378 _P4_7	=	0x00c7
                           0000E8   379 _P5_0	=	0x00e8
                           0000E9   380 _P5_1	=	0x00e9
                           0000EA   381 _P5_2	=	0x00ea
                           0000EB   382 _P5_3	=	0x00eb
                           0000EC   383 _P5_4	=	0x00ec
                           0000ED   384 _P5_5	=	0x00ed
                           0000EE   385 _P5_6	=	0x00ee
                           0000EF   386 _P5_7	=	0x00ef
                           0000F0   387 _BREG_F0	=	0x00f0
                           0000F1   388 _BREG_F1	=	0x00f1
                           0000F2   389 _BREG_F2	=	0x00f2
                           0000F3   390 _BREG_F3	=	0x00f3
                           0000F4   391 _BREG_F4	=	0x00f4
                           0000F5   392 _BREG_F5	=	0x00f5
                           0000F6   393 _BREG_F6	=	0x00f6
                           0000F7   394 _BREG_F7	=	0x00f7
                           0000B0   395 _RXD0	=	0x00b0
                           0000B1   396 _TXD0	=	0x00b1
                           000080   397 _P0_0	=	0x0080
                           000081   398 _P0_1	=	0x0081
                           000082   399 _P0_2	=	0x0082
                           000083   400 _P0_3	=	0x0083
                           000084   401 _P0_4	=	0x0084
                           000085   402 _P0_5	=	0x0085
                           000086   403 _P0_6	=	0x0086
                           000087   404 _P0_7	=	0x0087
                           000088   405 _IT0	=	0x0088
                           000089   406 _IE0	=	0x0089
                           00008A   407 _IT1	=	0x008a
                           00008B   408 _IE1	=	0x008b
                           00008C   409 _TR0	=	0x008c
                           00008D   410 _TF0	=	0x008d
                           00008E   411 _TR1	=	0x008e
                           00008F   412 _TF1	=	0x008f
                           000090   413 _P1_0	=	0x0090
                           000091   414 _P1_1	=	0x0091
                           000092   415 _P1_2	=	0x0092
                           000093   416 _P1_3	=	0x0093
                           000094   417 _P1_4	=	0x0094
                           000095   418 _P1_5	=	0x0095
                           000096   419 _P1_6	=	0x0096
                           000097   420 _P1_7	=	0x0097
                           000098   421 _RI	=	0x0098
                           000099   422 _TI	=	0x0099
                           00009A   423 _RB8	=	0x009a
                           00009B   424 _TB8	=	0x009b
                           00009C   425 _REN	=	0x009c
                           00009D   426 _SM2	=	0x009d
                           00009E   427 _SM1	=	0x009e
                           00009F   428 _SM0	=	0x009f
                           0000A0   429 _P2_0	=	0x00a0
                           0000A1   430 _P2_1	=	0x00a1
                           0000A2   431 _P2_2	=	0x00a2
                           0000A3   432 _P2_3	=	0x00a3
                           0000A4   433 _P2_4	=	0x00a4
                           0000A5   434 _P2_5	=	0x00a5
                           0000A6   435 _P2_6	=	0x00a6
                           0000A7   436 _P2_7	=	0x00a7
                           0000A8   437 _EX0	=	0x00a8
                           0000A9   438 _ET0	=	0x00a9
                           0000AA   439 _EX1	=	0x00aa
                           0000AB   440 _ET1	=	0x00ab
                           0000AC   441 _ES	=	0x00ac
                           0000AF   442 _EA	=	0x00af
                           0000B0   443 _P3_0	=	0x00b0
                           0000B1   444 _P3_1	=	0x00b1
                           0000B2   445 _P3_2	=	0x00b2
                           0000B3   446 _P3_3	=	0x00b3
                           0000B4   447 _P3_4	=	0x00b4
                           0000B5   448 _P3_5	=	0x00b5
                           0000B6   449 _P3_6	=	0x00b6
                           0000B7   450 _P3_7	=	0x00b7
                           0000B0   451 _RXD	=	0x00b0
                           0000B1   452 _TXD	=	0x00b1
                           0000B2   453 _INT0	=	0x00b2
                           0000B3   454 _INT1	=	0x00b3
                           0000B4   455 _T0	=	0x00b4
                           0000B5   456 _T1	=	0x00b5
                           0000B6   457 _WR	=	0x00b6
                           0000B7   458 _RD	=	0x00b7
                           0000B8   459 _PX0	=	0x00b8
                           0000B9   460 _PT0	=	0x00b9
                           0000BA   461 _PX1	=	0x00ba
                           0000BB   462 _PT1	=	0x00bb
                           0000BC   463 _PS	=	0x00bc
                           0000D0   464 _P	=	0x00d0
                           0000D1   465 _F1	=	0x00d1
                           0000D2   466 _OV	=	0x00d2
                           0000D3   467 _RS0	=	0x00d3
                           0000D4   468 _RS1	=	0x00d4
                           0000D5   469 _F0	=	0x00d5
                           0000D6   470 _AC	=	0x00d6
                           0000D7   471 _CY	=	0x00d7
                                    472 ;--------------------------------------------------------
                                    473 ; overlayable register banks
                                    474 ;--------------------------------------------------------
                                    475 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        476 	.ds 8
                                    477 ;--------------------------------------------------------
                                    478 ; overlayable bit register bank
                                    479 ;--------------------------------------------------------
                                    480 	.area BIT_BANK	(REL,OVR,DATA)
      000022                        481 bits:
      000022                        482 	.ds 1
                           008000   483 	b0 = bits[0]
                           008100   484 	b1 = bits[1]
                           008200   485 	b2 = bits[2]
                           008300   486 	b3 = bits[3]
                           008400   487 	b4 = bits[4]
                           008500   488 	b5 = bits[5]
                           008600   489 	b6 = bits[6]
                           008700   490 	b7 = bits[7]
                                    491 ;--------------------------------------------------------
                                    492 ; internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area DSEG    (DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; overlayable items in internal ram
                                    497 ;--------------------------------------------------------
                                    498 ;--------------------------------------------------------
                                    499 ; Stack segment in internal ram
                                    500 ;--------------------------------------------------------
                                    501 	.area	SSEG
      00002D                        502 __start__stack:
      00002D                        503 	.ds	1
                                    504 
                                    505 ;--------------------------------------------------------
                                    506 ; indirectly addressable internal ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area ISEG    (DATA)
                                    509 ;--------------------------------------------------------
                                    510 ; absolute internal ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area IABS    (ABS,DATA)
                                    513 	.area IABS    (ABS,DATA)
                                    514 ;--------------------------------------------------------
                                    515 ; bit data
                                    516 ;--------------------------------------------------------
                                    517 	.area BSEG    (BIT)
      000009                        518 _main_sloc0_1_0:
      000009                        519 	.ds 1
                                    520 ;--------------------------------------------------------
                                    521 ; paged external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area PSEG    (PAG,XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XSEG    (XDATA)
      000491                        528 _timer0_ISR_counter_02s_65537_100:
      000491                        529 	.ds 2
      000493                        530 _timer0_ISR_save_cursor_addr_65537_100:
      000493                        531 	.ds 1
      000494                        532 _main_save_cursor_address_196608_112:
      000494                        533 	.ds 1
      000495                        534 _main_char_detected_196608_113:
      000495                        535 	.ds 1
                                    536 ;--------------------------------------------------------
                                    537 ; absolute external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XABS    (ABS,XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; external initialized ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XISEG   (XDATA)
      000510                        544 _update_lcd::
      000510                        545 	.ds 2
      000512                        546 _tenth_of_second::
      000512                        547 	.ds 1
      000513                        548 _seconds_ones_digit::
      000513                        549 	.ds 1
      000514                        550 _seconds_tens_digit::
      000514                        551 	.ds 1
      000515                        552 _minutes_ones_digit::
      000515                        553 	.ds 1
      000516                        554 _minutes_tens_digit::
      000516                        555 	.ds 1
                                    556 	.area HOME    (CODE)
                                    557 	.area GSINIT0 (CODE)
                                    558 	.area GSINIT1 (CODE)
                                    559 	.area GSINIT2 (CODE)
                                    560 	.area GSINIT3 (CODE)
                                    561 	.area GSINIT4 (CODE)
                                    562 	.area GSINIT5 (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.area GSFINAL (CODE)
                                    565 	.area CSEG    (CODE)
                                    566 ;--------------------------------------------------------
                                    567 ; interrupt vector
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
      000000                        570 __interrupt_vect:
      000000 02 00 3F         [24]  571 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  572 	reti
      000004                        573 	.ds	7
      00000B 02 0D 97         [24]  574 	ljmp	_timer0_ISR
                                    575 ;--------------------------------------------------------
                                    576 ; global & static initialisations
                                    577 ;--------------------------------------------------------
                                    578 	.area HOME    (CODE)
                                    579 	.area GSINIT  (CODE)
                                    580 	.area GSFINAL (CODE)
                                    581 	.area GSINIT  (CODE)
                                    582 	.globl __sdcc_gsinit_startup
                                    583 	.globl __sdcc_program_startup
                                    584 	.globl __start__stack
                                    585 	.globl __mcs51_genXINIT
                                    586 	.globl __mcs51_genXRAMCLEAR
                                    587 	.globl __mcs51_genRAMCLEAR
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'timer0_ISR'
                                    590 ;------------------------------------------------------------
                                    591 ;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_100'
                                    592 ;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_100'
                                    593 ;------------------------------------------------------------
                                    594 ;	main.c:60: static int counter_02s = 0; // Initialize a static variable called counter_02s with a value of 0
      000098 90 04 91         [24]  595 	mov	dptr,#_timer0_ISR_counter_02s_65537_100
      00009B E4               [12]  596 	clr	a
      00009C F0               [24]  597 	movx	@dptr,a
      00009D A3               [24]  598 	inc	dptr
      00009E F0               [24]  599 	movx	@dptr,a
                                    600 	.area GSFINAL (CODE)
      00009F 02 00 0E         [24]  601 	ljmp	__sdcc_program_startup
                                    602 ;--------------------------------------------------------
                                    603 ; Home
                                    604 ;--------------------------------------------------------
                                    605 	.area HOME    (CODE)
                                    606 	.area HOME    (CODE)
      00000E                        607 __sdcc_program_startup:
      00000E 02 0E 88         [24]  608 	ljmp	_main
                                    609 ;	return from main will return to caller
                                    610 ;--------------------------------------------------------
                                    611 ; code
                                    612 ;--------------------------------------------------------
                                    613 	.area CSEG    (CODE)
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    616 ;------------------------------------------------------------
                                    617 ;	main.c:40: _sdcc_external_startup()
                                    618 ;	-----------------------------------------
                                    619 ;	 function _sdcc_external_startup
                                    620 ;	-----------------------------------------
      000D90                        621 __sdcc_external_startup:
                           000007   622 	ar7 = 0x07
                           000006   623 	ar6 = 0x06
                           000005   624 	ar5 = 0x05
                           000004   625 	ar4 = 0x04
                           000003   626 	ar3 = 0x03
                           000002   627 	ar2 = 0x02
                           000001   628 	ar1 = 0x01
                           000000   629 	ar0 = 0x00
                                    630 ;	main.c:43: AUXR |= (XRS1 | XRS0);
      000D90 43 8E 0C         [24]  631 	orl	_AUXR,#0x0c
                                    632 ;	main.c:45: return 0;
      000D93 90 00 00         [24]  633 	mov	dptr,#0x0000
                                    634 ;	main.c:46: }
      000D96 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'timer0_ISR'
                                    638 ;------------------------------------------------------------
                                    639 ;counter_02s               Allocated with name '_timer0_ISR_counter_02s_65537_100'
                                    640 ;save_cursor_addr          Allocated with name '_timer0_ISR_save_cursor_addr_65537_100'
                                    641 ;------------------------------------------------------------
                                    642 ;	main.c:55: void timer0_ISR() __interrupt(1) { // Define Timer 0 interrupt service routine
                                    643 ;	-----------------------------------------
                                    644 ;	 function timer0_ISR
                                    645 ;	-----------------------------------------
      000D97                        646 _timer0_ISR:
      000D97 C0 22            [24]  647 	push	bits
      000D99 C0 E0            [24]  648 	push	acc
      000D9B C0 F0            [24]  649 	push	b
      000D9D C0 82            [24]  650 	push	dpl
      000D9F C0 83            [24]  651 	push	dph
      000DA1 C0 07            [24]  652 	push	(0+7)
      000DA3 C0 06            [24]  653 	push	(0+6)
      000DA5 C0 05            [24]  654 	push	(0+5)
      000DA7 C0 04            [24]  655 	push	(0+4)
      000DA9 C0 03            [24]  656 	push	(0+3)
      000DAB C0 02            [24]  657 	push	(0+2)
      000DAD C0 01            [24]  658 	push	(0+1)
      000DAF C0 00            [24]  659 	push	(0+0)
      000DB1 C0 D0            [24]  660 	push	psw
      000DB3 75 D0 00         [24]  661 	mov	psw,#0x00
                                    662 ;	main.c:56: EA = 0;     // Disable interrupts
                                    663 ;	assignBit
      000DB6 C2 AF            [12]  664 	clr	_EA
                                    665 ;	main.c:58: TF0 = 0;    // Clear Timer 0 interrupt flag
                                    666 ;	assignBit
      000DB8 C2 8D            [12]  667 	clr	_TF0
                                    668 ;	main.c:61: volatile uint8_t save_cursor_addr = get_cursor_address(); // Get the current cursor address and store it in save_cursor_addr
      000DBA 12 01 74         [24]  669 	lcall	_get_cursor_address
      000DBD E5 82            [12]  670 	mov	a,dpl
      000DBF 90 04 93         [24]  671 	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_100
      000DC2 F0               [24]  672 	movx	@dptr,a
                                    673 ;	main.c:63: if (counter_02s == 2) { // If the counter_02s equals 2, which means 0.2 seconds have passed
      000DC3 90 04 91         [24]  674 	mov	dptr,#_timer0_ISR_counter_02s_65537_100
      000DC6 E0               [24]  675 	movx	a,@dptr
      000DC7 FE               [12]  676 	mov	r6,a
      000DC8 A3               [24]  677 	inc	dptr
      000DC9 E0               [24]  678 	movx	a,@dptr
      000DCA FF               [12]  679 	mov	r7,a
      000DCB BE 02 1A         [24]  680 	cjne	r6,#0x02,00102$
      000DCE BF 00 17         [24]  681 	cjne	r7,#0x00,00102$
                                    682 ;	main.c:64: P1_1 = P1_1 ^ 1;    // Toggle pin P1_1
      000DD1 B2 91            [12]  683 	cpl	_P1_1
                                    684 ;	main.c:65: update_lcd  = 1;    // Set the update_lcd flag to 1 to update the LCD
      000DD3 90 05 10         [24]  685 	mov	dptr,#_update_lcd
      000DD6 74 01            [12]  686 	mov	a,#0x01
      000DD8 F0               [24]  687 	movx	@dptr,a
      000DD9 E4               [12]  688 	clr	a
      000DDA A3               [24]  689 	inc	dptr
      000DDB F0               [24]  690 	movx	@dptr,a
                                    691 ;	main.c:66: counter_02s = 0;    // Reset the counter_02s
      000DDC 90 04 91         [24]  692 	mov	dptr,#_timer0_ISR_counter_02s_65537_100
      000DDF F0               [24]  693 	movx	@dptr,a
      000DE0 A3               [24]  694 	inc	dptr
      000DE1 F0               [24]  695 	movx	@dptr,a
                                    696 ;	main.c:67: tenth_of_second++;  // Increment the tenth of a second counter
      000DE2 90 05 12         [24]  697 	mov	dptr,#_tenth_of_second
      000DE5 E0               [24]  698 	movx	a,@dptr
      000DE6 04               [12]  699 	inc	a
      000DE7 F0               [24]  700 	movx	@dptr,a
      000DE8                        701 00102$:
                                    702 ;	main.c:69: counter_02s++;  // Increment the counter_02s
      000DE8 90 04 91         [24]  703 	mov	dptr,#_timer0_ISR_counter_02s_65537_100
      000DEB E0               [24]  704 	movx	a,@dptr
      000DEC 24 01            [12]  705 	add	a,#0x01
      000DEE F0               [24]  706 	movx	@dptr,a
      000DEF A3               [24]  707 	inc	dptr
      000DF0 E0               [24]  708 	movx	a,@dptr
      000DF1 34 00            [12]  709 	addc	a,#0x00
      000DF3 F0               [24]  710 	movx	@dptr,a
                                    711 ;	main.c:71: TL0 = 0xfd;     // Set the low value of Timer 0 to 0xfd
      000DF4 75 8A FD         [24]  712 	mov	_TL0,#0xfd
                                    713 ;	main.c:72: TH0 = 0x4b;     // Set the high value of Timer 0 to 0x4b
      000DF7 75 8C 4B         [24]  714 	mov	_TH0,#0x4b
                                    715 ;	main.c:74: if (tenth_of_second == ':') { // If the tenth of a second counter equals ':', which means 1 second has passed
      000DFA 90 05 12         [24]  716 	mov	dptr,#_tenth_of_second
      000DFD E0               [24]  717 	movx	a,@dptr
      000DFE FF               [12]  718 	mov	r7,a
      000DFF BF 3A 4A         [24]  719 	cjne	r7,#0x3a,00112$
                                    720 ;	main.c:75: tenth_of_second = '0'; // Reset the tenth of a second counter to '0'
      000E02 90 05 12         [24]  721 	mov	dptr,#_tenth_of_second
      000E05 74 30            [12]  722 	mov	a,#0x30
      000E07 F0               [24]  723 	movx	@dptr,a
                                    724 ;	main.c:76: seconds_ones_digit++; // Increment the first digit of the seconds counter
      000E08 90 05 13         [24]  725 	mov	dptr,#_seconds_ones_digit
      000E0B E0               [24]  726 	movx	a,@dptr
      000E0C 04               [12]  727 	inc	a
      000E0D F0               [24]  728 	movx	@dptr,a
                                    729 ;	main.c:78: if (seconds_ones_digit == ':') { // If the first digit of the seconds counter equals ':', which means 10 seconds have passed
      000E0E E0               [24]  730 	movx	a,@dptr
      000E0F FF               [12]  731 	mov	r7,a
      000E10 BF 3A 39         [24]  732 	cjne	r7,#0x3a,00112$
                                    733 ;	main.c:79: seconds_ones_digit = '0'; // Reset the first digit of the seconds counter to '0'
      000E13 90 05 13         [24]  734 	mov	dptr,#_seconds_ones_digit
      000E16 74 30            [12]  735 	mov	a,#0x30
      000E18 F0               [24]  736 	movx	@dptr,a
                                    737 ;	main.c:80: seconds_tens_digit++; // Increment the second digit of the seconds counter
      000E19 90 05 14         [24]  738 	mov	dptr,#_seconds_tens_digit
      000E1C E0               [24]  739 	movx	a,@dptr
      000E1D 04               [12]  740 	inc	a
      000E1E F0               [24]  741 	movx	@dptr,a
                                    742 ;	main.c:82: if (seconds_tens_digit == '6') { // If the second digit of the seconds counter equals '6', which means 1 minute has passed
      000E1F E0               [24]  743 	movx	a,@dptr
      000E20 FF               [12]  744 	mov	r7,a
      000E21 BF 36 28         [24]  745 	cjne	r7,#0x36,00112$
                                    746 ;	main.c:83: seconds_tens_digit = '0'; // Reset the second digit of the seconds counter to '0'
      000E24 90 05 14         [24]  747 	mov	dptr,#_seconds_tens_digit
      000E27 74 30            [12]  748 	mov	a,#0x30
      000E29 F0               [24]  749 	movx	@dptr,a
                                    750 ;	main.c:84: minutes_ones_digit++; // Increment the first digit of the minutes counter
      000E2A 90 05 15         [24]  751 	mov	dptr,#_minutes_ones_digit
      000E2D E0               [24]  752 	movx	a,@dptr
      000E2E 04               [12]  753 	inc	a
      000E2F F0               [24]  754 	movx	@dptr,a
                                    755 ;	main.c:86: if (minutes_ones_digit == ':') { // If the first digit of the minutes counter equals ':', which means 10 minutes have passed
      000E30 E0               [24]  756 	movx	a,@dptr
      000E31 FF               [12]  757 	mov	r7,a
      000E32 BF 3A 17         [24]  758 	cjne	r7,#0x3a,00112$
                                    759 ;	main.c:87: minutes_ones_digit = '0'; // Reset the first digit of the minutes counter to '0'
      000E35 90 05 15         [24]  760 	mov	dptr,#_minutes_ones_digit
      000E38 74 30            [12]  761 	mov	a,#0x30
      000E3A F0               [24]  762 	movx	@dptr,a
                                    763 ;	main.c:88: minutes_tens_digit++; // Increment the second digit of the minutes counter
      000E3B 90 05 16         [24]  764 	mov	dptr,#_minutes_tens_digit
      000E3E E0               [24]  765 	movx	a,@dptr
      000E3F 04               [12]  766 	inc	a
      000E40 F0               [24]  767 	movx	@dptr,a
                                    768 ;	main.c:90: if (minutes_tens_digit == '6') { // If the second digit of the minutes counter equals '6', which means 1 hour has passed
      000E41 E0               [24]  769 	movx	a,@dptr
      000E42 FF               [12]  770 	mov	r7,a
      000E43 BF 36 06         [24]  771 	cjne	r7,#0x36,00112$
                                    772 ;	main.c:91: minutes_tens_digit = '0'; // Reset the second digit of the minutes counter to '0'
      000E46 90 05 16         [24]  773 	mov	dptr,#_minutes_tens_digit
      000E49 74 30            [12]  774 	mov	a,#0x30
      000E4B F0               [24]  775 	movx	@dptr,a
      000E4C                        776 00112$:
                                    777 ;	main.c:97: lcdgotoaddr(save_cursor_addr); // Move the cursor to the previous cursor address
      000E4C 90 04 93         [24]  778 	mov	dptr,#_timer0_ISR_save_cursor_addr_65537_100
      000E4F E0               [24]  779 	movx	a,@dptr
      000E50 F5 82            [12]  780 	mov	dpl,a
      000E52 12 01 81         [24]  781 	lcall	_lcdgotoaddr
                                    782 ;	main.c:98: EA=1; // Enable interrupts
                                    783 ;	assignBit
      000E55 D2 AF            [12]  784 	setb	_EA
                                    785 ;	main.c:99: }
      000E57 D0 D0            [24]  786 	pop	psw
      000E59 D0 00            [24]  787 	pop	(0+0)
      000E5B D0 01            [24]  788 	pop	(0+1)
      000E5D D0 02            [24]  789 	pop	(0+2)
      000E5F D0 03            [24]  790 	pop	(0+3)
      000E61 D0 04            [24]  791 	pop	(0+4)
      000E63 D0 05            [24]  792 	pop	(0+5)
      000E65 D0 06            [24]  793 	pop	(0+6)
      000E67 D0 07            [24]  794 	pop	(0+7)
      000E69 D0 83            [24]  795 	pop	dph
      000E6B D0 82            [24]  796 	pop	dpl
      000E6D D0 F0            [24]  797 	pop	b
      000E6F D0 E0            [24]  798 	pop	acc
      000E71 D0 22            [24]  799 	pop	bits
      000E73 32               [24]  800 	reti
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'init_timer'
                                    803 ;------------------------------------------------------------
                                    804 ;	main.c:102: void init_timer(void){
                                    805 ;	-----------------------------------------
                                    806 ;	 function init_timer
                                    807 ;	-----------------------------------------
      000E74                        808 _init_timer:
                                    809 ;	main.c:103: TCON=TCON&(~0x30);   // Clearing the last 2 bits in TCON register
      000E74 53 88 CF         [24]  810 	anl	_TCON,#0xcf
                                    811 ;	main.c:104: TMOD |= 0x01;        // Setting the Timer 0 mode to 16-bit mode
      000E77 43 89 01         [24]  812 	orl	_TMOD,#0x01
                                    813 ;	main.c:105: TL0 = 0xfd;          // Setting the initial value of Timer 0 low byte
      000E7A 75 8A FD         [24]  814 	mov	_TL0,#0xfd
                                    815 ;	main.c:106: TH0 = 0x4b;          // Setting the initial value of Timer 0 high byte
      000E7D 75 8C 4B         [24]  816 	mov	_TH0,#0x4b
                                    817 ;	main.c:107: IE   |=0x82;         // Enabling Timer 0 interrupt
      000E80 43 A8 82         [24]  818 	orl	_IE,#0x82
                                    819 ;	main.c:108: PT0 = 1;             // Setting the Timer 0 interrupt priority to high
                                    820 ;	assignBit
      000E83 D2 B9            [12]  821 	setb	_PT0
                                    822 ;	main.c:109: TR0 = 1;             // Starting Timer 0
                                    823 ;	assignBit
      000E85 D2 8C            [12]  824 	setb	_TR0
                                    825 ;	main.c:110: }
      000E87 22               [24]  826 	ret
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'main'
                                    829 ;------------------------------------------------------------
                                    830 ;save_cursor_address       Allocated with name '_main_save_cursor_address_196608_112'
                                    831 ;char_detected             Allocated with name '_main_char_detected_196608_113'
                                    832 ;------------------------------------------------------------
                                    833 ;	main.c:113: void main(void)
                                    834 ;	-----------------------------------------
                                    835 ;	 function main
                                    836 ;	-----------------------------------------
      000E88                        837 _main:
                                    838 ;	main.c:115: uart_init();        // Initialize UART for serial communication
      000E88 12 11 13         [24]  839 	lcall	_uart_init
                                    840 ;	main.c:116: init_lcd();         // Initialize LCD
      000E8B 12 01 12         [24]  841 	lcall	_init_lcd
                                    842 ;	main.c:117: init_timer();       // Initialize Timer for timing functionality
      000E8E 12 0E 74         [24]  843 	lcall	_init_timer
                                    844 ;	main.c:118: print_UI();         // Print the UI (User Interface) on the LCD
      000E91 12 11 F0         [24]  845 	lcall	_print_UI
                                    846 ;	main.c:120: while(1)
      000E94                        847 00122$:
                                    848 ;	main.c:122: if(update_lcd) // If the LCD needs to be updated
      000E94 90 05 10         [24]  849 	mov	dptr,#_update_lcd
      000E97 E0               [24]  850 	movx	a,@dptr
      000E98 FE               [12]  851 	mov	r6,a
      000E99 A3               [24]  852 	inc	dptr
      000E9A E0               [24]  853 	movx	a,@dptr
      000E9B FF               [12]  854 	mov	r7,a
      000E9C 4E               [12]  855 	orl	a,r6
      000E9D 60 58            [24]  856 	jz	00102$
                                    857 ;	main.c:124: volatile uint8_t save_cursor_address = get_cursor_address(); // Save the current cursor address
      000E9F 12 01 74         [24]  858 	lcall	_get_cursor_address
      000EA2 E5 82            [12]  859 	mov	a,dpl
      000EA4 90 04 94         [24]  860 	mov	dptr,#_main_save_cursor_address_196608_112
      000EA7 F0               [24]  861 	movx	@dptr,a
                                    862 ;	main.c:125: lcdgotoaddr(0x59);              // Move the cursor to the specific location on the LCD
      000EA8 75 82 59         [24]  863 	mov	dpl,#0x59
      000EAB 12 01 81         [24]  864 	lcall	_lcdgotoaddr
                                    865 ;	main.c:126: lcdputch(minutes_tens_digit);           // Display the tens digit of minutes on the LCD
      000EAE 90 05 16         [24]  866 	mov	dptr,#_minutes_tens_digit
      000EB1 E0               [24]  867 	movx	a,@dptr
      000EB2 F5 82            [12]  868 	mov	dpl,a
      000EB4 12 02 57         [24]  869 	lcall	_lcdputch
                                    870 ;	main.c:127: lcdputch(minutes_ones_digit);           // Display the ones digit of minutes on the LCD
      000EB7 90 05 15         [24]  871 	mov	dptr,#_minutes_ones_digit
      000EBA E0               [24]  872 	movx	a,@dptr
      000EBB F5 82            [12]  873 	mov	dpl,a
      000EBD 12 02 57         [24]  874 	lcall	_lcdputch
                                    875 ;	main.c:128: lcdputch(':');                  // Display a colon on the LCD
      000EC0 75 82 3A         [24]  876 	mov	dpl,#0x3a
      000EC3 12 02 57         [24]  877 	lcall	_lcdputch
                                    878 ;	main.c:129: lcdputch(seconds_tens_digit);           // Display the tens digit of seconds on the LCD
      000EC6 90 05 14         [24]  879 	mov	dptr,#_seconds_tens_digit
      000EC9 E0               [24]  880 	movx	a,@dptr
      000ECA F5 82            [12]  881 	mov	dpl,a
      000ECC 12 02 57         [24]  882 	lcall	_lcdputch
                                    883 ;	main.c:130: lcdputch(seconds_ones_digit);           // Display the ones digit of seconds on the LCD
      000ECF 90 05 13         [24]  884 	mov	dptr,#_seconds_ones_digit
      000ED2 E0               [24]  885 	movx	a,@dptr
      000ED3 F5 82            [12]  886 	mov	dpl,a
      000ED5 12 02 57         [24]  887 	lcall	_lcdputch
                                    888 ;	main.c:131: lcdputch('.');                  // Display a period on the LCD
      000ED8 75 82 2E         [24]  889 	mov	dpl,#0x2e
      000EDB 12 02 57         [24]  890 	lcall	_lcdputch
                                    891 ;	main.c:132: lcdputch(tenth_of_second);     // Display the tenths digit of seconds on the LCD
      000EDE 90 05 12         [24]  892 	mov	dptr,#_tenth_of_second
      000EE1 E0               [24]  893 	movx	a,@dptr
      000EE2 F5 82            [12]  894 	mov	dpl,a
      000EE4 12 02 57         [24]  895 	lcall	_lcdputch
                                    896 ;	main.c:133: update_lcd = 0;                 // Reset the flag to indicate that the LCD has been updated
      000EE7 90 05 10         [24]  897 	mov	dptr,#_update_lcd
      000EEA E4               [12]  898 	clr	a
      000EEB F0               [24]  899 	movx	@dptr,a
      000EEC A3               [24]  900 	inc	dptr
      000EED F0               [24]  901 	movx	@dptr,a
                                    902 ;	main.c:134: lcdgotoaddr(save_cursor_address); // Restore the cursor address
      000EEE 90 04 94         [24]  903 	mov	dptr,#_main_save_cursor_address_196608_112
      000EF1 E0               [24]  904 	movx	a,@dptr
      000EF2 F5 82            [12]  905 	mov	dpl,a
      000EF4 12 01 81         [24]  906 	lcall	_lcdgotoaddr
      000EF7                        907 00102$:
                                    908 ;	main.c:138: if(RI)
      000EF7 30 98 9A         [24]  909 	jnb	_RI,00122$
                                    910 ;	main.c:141: char_detected = SBUF;           // Store the character in a variable
      000EFA 90 04 95         [24]  911 	mov	dptr,#_main_char_detected_196608_113
      000EFD E5 99            [12]  912 	mov	a,_SBUF
      000EFF F0               [24]  913 	movx	@dptr,a
                                    914 ;	main.c:142: putchar(char_detected);         // Display the character on the serial terminal
      000F00 E0               [24]  915 	movx	a,@dptr
      000F01 FF               [12]  916 	mov	r7,a
      000F02 FD               [12]  917 	mov	r5,a
      000F03 7E 00            [12]  918 	mov	r6,#0x00
      000F05 8D 82            [24]  919 	mov	dpl,r5
      000F07 8E 83            [24]  920 	mov	dph,r6
      000F09 C0 07            [24]  921 	push	ar7
      000F0B 12 11 2B         [24]  922 	lcall	_putchar
                                    923 ;	main.c:143: printf("\n\r");                 // Move to the next line on the serial terminal
      000F0E 74 38            [12]  924 	mov	a,#___str_0
      000F10 C0 E0            [24]  925 	push	acc
      000F12 74 2F            [12]  926 	mov	a,#(___str_0 >> 8)
      000F14 C0 E0            [24]  927 	push	acc
      000F16 74 80            [12]  928 	mov	a,#0x80
      000F18 C0 E0            [24]  929 	push	acc
      000F1A 12 20 B5         [24]  930 	lcall	_printf
      000F1D 15 81            [12]  931 	dec	sp
      000F1F 15 81            [12]  932 	dec	sp
      000F21 15 81            [12]  933 	dec	sp
                                    934 ;	main.c:144: RI = 0;                         // Reset the flag
                                    935 ;	assignBit
      000F23 C2 98            [12]  936 	clr	_RI
                                    937 ;	main.c:145: putchar(' ');                   // Add a space to separate characters for readability
      000F25 90 00 20         [24]  938 	mov	dptr,#0x0020
      000F28 12 11 2B         [24]  939 	lcall	_putchar
      000F2B D0 07            [24]  940 	pop	ar7
                                    941 ;	main.c:146: switch(char_detected)           // Perform a certain action based on the received character
      000F2D BF 41 00         [24]  942 	cjne	r7,#0x41,00148$
      000F30                        943 00148$:
      000F30 50 03            [24]  944 	jnc	00149$
      000F32 02 11 01         [24]  945 	ljmp	00117$
      000F35                        946 00149$:
      000F35 EF               [12]  947 	mov	a,r7
      000F36 24 A5            [12]  948 	add	a,#0xff - 0x5a
      000F38 50 03            [24]  949 	jnc	00150$
      000F3A 02 11 01         [24]  950 	ljmp	00117$
      000F3D                        951 00150$:
      000F3D EF               [12]  952 	mov	a,r7
      000F3E 24 BF            [12]  953 	add	a,#0xbf
      000F40 FF               [12]  954 	mov	r7,a
      000F41 24 0A            [12]  955 	add	a,#(00151$-3-.)
      000F43 83               [24]  956 	movc	a,@a+pc
      000F44 F5 82            [12]  957 	mov	dpl,a
      000F46 EF               [12]  958 	mov	a,r7
      000F47 24 1E            [12]  959 	add	a,#(00152$-3-.)
      000F49 83               [24]  960 	movc	a,@a+pc
      000F4A F5 83            [12]  961 	mov	dph,a
      000F4C E4               [12]  962 	clr	a
      000F4D 73               [24]  963 	jmp	@a+dptr
      000F4E                        964 00151$:
      000F4E 93                     965 	.db	00104$
      000F4F AB                     966 	.db	00105$
      000F50 C3                     967 	.db	00106$
      000F51 DB                     968 	.db	00107$
      000F52 0B                     969 	.db	00109$
      000F53 23                     970 	.db	00110$
      000F54 3B                     971 	.db	00111$
      000F55 53                     972 	.db	00112$
      000F56 6B                     973 	.db	00113$
      000F57 95                     974 	.db	00114$
      000F58 BF                     975 	.db	00115$
      000F59 82                     976 	.db	00103$
      000F5A 01                     977 	.db	00117$
      000F5B 01                     978 	.db	00117$
      000F5C 01                     979 	.db	00117$
      000F5D E9                     980 	.db	00116$
      000F5E 01                     981 	.db	00117$
      000F5F 01                     982 	.db	00117$
      000F60 01                     983 	.db	00117$
      000F61 01                     984 	.db	00117$
      000F62 01                     985 	.db	00117$
      000F63 01                     986 	.db	00117$
      000F64 01                     987 	.db	00117$
      000F65 01                     988 	.db	00117$
      000F66 01                     989 	.db	00117$
      000F67 F3                     990 	.db	00108$
      000F68                        991 00152$:
      000F68 0F                     992 	.db	00104$>>8
      000F69 0F                     993 	.db	00105$>>8
      000F6A 0F                     994 	.db	00106$>>8
      000F6B 0F                     995 	.db	00107$>>8
      000F6C 10                     996 	.db	00109$>>8
      000F6D 10                     997 	.db	00110$>>8
      000F6E 10                     998 	.db	00111$>>8
      000F6F 10                     999 	.db	00112$>>8
      000F70 10                    1000 	.db	00113$>>8
      000F71 10                    1001 	.db	00114$>>8
      000F72 10                    1002 	.db	00115$>>8
      000F73 0F                    1003 	.db	00103$>>8
      000F74 11                    1004 	.db	00117$>>8
      000F75 11                    1005 	.db	00117$>>8
      000F76 11                    1006 	.db	00117$>>8
      000F77 10                    1007 	.db	00116$>>8
      000F78 11                    1008 	.db	00117$>>8
      000F79 11                    1009 	.db	00117$>>8
      000F7A 11                    1010 	.db	00117$>>8
      000F7B 11                    1011 	.db	00117$>>8
      000F7C 11                    1012 	.db	00117$>>8
      000F7D 11                    1013 	.db	00117$>>8
      000F7E 11                    1014 	.db	00117$>>8
      000F7F 11                    1015 	.db	00117$>>8
      000F80 11                    1016 	.db	00117$>>8
      000F81 0F                    1017 	.db	00108$>>8
                                   1018 ;	main.c:148: case 'L':                       // If the character 'L' is received
      000F82                       1019 00103$:
                                   1020 ;	main.c:152: }
      000F82 D2 09            [12] 1021 	setb	_main_sloc0_1_0
      000F84 10 AF 02         [24] 1022 	jbc	ea,00153$
      000F87 C2 09            [12] 1023 	clr	_main_sloc0_1_0
      000F89                       1024 00153$:
                                   1025 ;	main.c:151: print_UI();             // Print the UI on the LCD
      000F89 12 11 F0         [24] 1026 	lcall	_print_UI
      000F8C A2 09            [12] 1027 	mov	c,_main_sloc0_1_0
      000F8E 92 AF            [24] 1028 	mov	ea,c
                                   1029 ;	main.c:153: break;
      000F90 02 0E 94         [24] 1030 	ljmp	00122$
                                   1031 ;	main.c:155: case 'A': // If the character 'A' is received
      000F93                       1032 00104$:
                                   1033 ;	main.c:156: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      000F93 90 04 99         [24] 1034 	mov	dptr,#_print_colored_PARM_2
      000F96 74 24            [12] 1035 	mov	a,#0x24
      000F98 F0               [24] 1036 	movx	@dptr,a
      000F99 E4               [12] 1037 	clr	a
      000F9A A3               [24] 1038 	inc	dptr
      000F9B F0               [24] 1039 	movx	@dptr,a
      000F9C 90 2F 38         [24] 1040 	mov	dptr,#___str_0
      000F9F 75 F0 80         [24] 1041 	mov	b,#0x80
      000FA2 12 11 B2         [24] 1042 	lcall	_print_colored
                                   1043 ;	main.c:157: handler_wr_c_lcd();         // Handle writing a single character to the LCD
      000FA5 12 03 40         [24] 1044 	lcall	_handler_wr_c_lcd
                                   1045 ;	main.c:158: break;
      000FA8 02 0E 94         [24] 1046 	ljmp	00122$
                                   1047 ;	main.c:160: case 'B': // If the character 'B' is received
      000FAB                       1048 00105$:
                                   1049 ;	main.c:161: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      000FAB 90 04 99         [24] 1050 	mov	dptr,#_print_colored_PARM_2
      000FAE 74 24            [12] 1051 	mov	a,#0x24
      000FB0 F0               [24] 1052 	movx	@dptr,a
      000FB1 E4               [12] 1053 	clr	a
      000FB2 A3               [24] 1054 	inc	dptr
      000FB3 F0               [24] 1055 	movx	@dptr,a
      000FB4 90 2F 38         [24] 1056 	mov	dptr,#___str_0
      000FB7 75 F0 80         [24] 1057 	mov	b,#0x80
      000FBA 12 11 B2         [24] 1058 	lcall	_print_colored
                                   1059 ;	main.c:162: handler_wr_str_lcd();       // Handle writing a string to the LCD
      000FBD 12 03 8B         [24] 1060 	lcall	_handler_wr_str_lcd
                                   1061 ;	main.c:163: break;
      000FC0 02 0E 94         [24] 1062 	ljmp	00122$
                                   1063 ;	main.c:165: case 'C': // If the character 'C' is received
      000FC3                       1064 00106$:
                                   1065 ;	main.c:166: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      000FC3 90 04 99         [24] 1066 	mov	dptr,#_print_colored_PARM_2
      000FC6 74 24            [12] 1067 	mov	a,#0x24
      000FC8 F0               [24] 1068 	movx	@dptr,a
      000FC9 E4               [12] 1069 	clr	a
      000FCA A3               [24] 1070 	inc	dptr
      000FCB F0               [24] 1071 	movx	@dptr,a
      000FCC 90 2F 38         [24] 1072 	mov	dptr,#___str_0
      000FCF 75 F0 80         [24] 1073 	mov	b,#0x80
      000FD2 12 11 B2         [24] 1074 	lcall	_print_colored
                                   1075 ;	main.c:167: handler_lcdgotoaddress();   // Handle moving the cursor to a specific address on the LCD
      000FD5 12 05 0C         [24] 1076 	lcall	_handler_lcdgotoaddress
                                   1077 ;	main.c:168: break;
      000FD8 02 0E 94         [24] 1078 	ljmp	00122$
                                   1079 ;	main.c:170: case 'D': // If the character 'D' is received
      000FDB                       1080 00107$:
                                   1081 ;	main.c:171: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      000FDB 90 04 99         [24] 1082 	mov	dptr,#_print_colored_PARM_2
      000FDE 74 24            [12] 1083 	mov	a,#0x24
      000FE0 F0               [24] 1084 	movx	@dptr,a
      000FE1 E4               [12] 1085 	clr	a
      000FE2 A3               [24] 1086 	inc	dptr
      000FE3 F0               [24] 1087 	movx	@dptr,a
      000FE4 90 2F 38         [24] 1088 	mov	dptr,#___str_0
      000FE7 75 F0 80         [24] 1089 	mov	b,#0x80
      000FEA 12 11 B2         [24] 1090 	lcall	_print_colored
                                   1091 ;	main.c:172: handler_lcdgotoxy();        // Handle moving the cursor to a specific row and column on the LCD
      000FED 12 04 5B         [24] 1092 	lcall	_handler_lcdgotoxy
                                   1093 ;	main.c:173: break;
      000FF0 02 0E 94         [24] 1094 	ljmp	00122$
                                   1095 ;	main.c:175: case 'Z': // If the character 'Z' is received
      000FF3                       1096 00108$:
                                   1097 ;	main.c:176: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      000FF3 90 04 99         [24] 1098 	mov	dptr,#_print_colored_PARM_2
      000FF6 74 24            [12] 1099 	mov	a,#0x24
      000FF8 F0               [24] 1100 	movx	@dptr,a
      000FF9 E4               [12] 1101 	clr	a
      000FFA A3               [24] 1102 	inc	dptr
      000FFB F0               [24] 1103 	movx	@dptr,a
      000FFC 90 2F 38         [24] 1104 	mov	dptr,#___str_0
      000FFF 75 F0 80         [24] 1105 	mov	b,#0x80
      001002 12 11 B2         [24] 1106 	lcall	_print_colored
                                   1107 ;	main.c:177: handler_lcdclear();         // Handle clearing the LCD
      001005 12 03 0E         [24] 1108 	lcall	_handler_lcdclear
                                   1109 ;	main.c:178: break;
      001008 02 0E 94         [24] 1110 	ljmp	00122$
                                   1111 ;	main.c:180: case 'E': // If the character 'E' is received
      00100B                       1112 00109$:
                                   1113 ;	main.c:181: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      00100B 90 04 99         [24] 1114 	mov	dptr,#_print_colored_PARM_2
      00100E 74 24            [12] 1115 	mov	a,#0x24
      001010 F0               [24] 1116 	movx	@dptr,a
      001011 E4               [12] 1117 	clr	a
      001012 A3               [24] 1118 	inc	dptr
      001013 F0               [24] 1119 	movx	@dptr,a
      001014 90 2F 38         [24] 1120 	mov	dptr,#___str_0
      001017 75 F0 80         [24] 1121 	mov	b,#0x80
      00101A 12 11 B2         [24] 1122 	lcall	_print_colored
                                   1123 ;	main.c:182: handler_stop_time();        // Call the function to stop the timer
      00101D 12 05 BF         [24] 1124 	lcall	_handler_stop_time
                                   1125 ;	main.c:183: break;
      001020 02 0E 94         [24] 1126 	ljmp	00122$
                                   1127 ;	main.c:185: case 'F': // If the character 'F' is received
      001023                       1128 00110$:
                                   1129 ;	main.c:186: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      001023 90 04 99         [24] 1130 	mov	dptr,#_print_colored_PARM_2
      001026 74 24            [12] 1131 	mov	a,#0x24
      001028 F0               [24] 1132 	movx	@dptr,a
      001029 E4               [12] 1133 	clr	a
      00102A A3               [24] 1134 	inc	dptr
      00102B F0               [24] 1135 	movx	@dptr,a
      00102C 90 2F 38         [24] 1136 	mov	dptr,#___str_0
      00102F 75 F0 80         [24] 1137 	mov	b,#0x80
      001032 12 11 B2         [24] 1138 	lcall	_print_colored
                                   1139 ;	main.c:187: handler_resume_time();      // Call the function to resume the timer
      001035 12 05 D2         [24] 1140 	lcall	_handler_resume_time
                                   1141 ;	main.c:188: break;
      001038 02 0E 94         [24] 1142 	ljmp	00122$
                                   1143 ;	main.c:190: case 'G': // If the character 'G' is received
      00103B                       1144 00111$:
                                   1145 ;	main.c:191: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      00103B 90 04 99         [24] 1146 	mov	dptr,#_print_colored_PARM_2
      00103E 74 24            [12] 1147 	mov	a,#0x24
      001040 F0               [24] 1148 	movx	@dptr,a
      001041 E4               [12] 1149 	clr	a
      001042 A3               [24] 1150 	inc	dptr
      001043 F0               [24] 1151 	movx	@dptr,a
      001044 90 2F 38         [24] 1152 	mov	dptr,#___str_0
      001047 75 F0 80         [24] 1153 	mov	b,#0x80
      00104A 12 11 B2         [24] 1154 	lcall	_print_colored
                                   1155 ;	main.c:192: handler_reset_time();       // Call the function to reset the timer
      00104D 12 05 E5         [24] 1156 	lcall	_handler_reset_time
                                   1157 ;	main.c:193: break;
      001050 02 0E 94         [24] 1158 	ljmp	00122$
                                   1159 ;	main.c:195: case 'H': // If the character 'H' is received
      001053                       1160 00112$:
                                   1161 ;	main.c:196: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      001053 90 04 99         [24] 1162 	mov	dptr,#_print_colored_PARM_2
      001056 74 24            [12] 1163 	mov	a,#0x24
      001058 F0               [24] 1164 	movx	@dptr,a
      001059 E4               [12] 1165 	clr	a
      00105A A3               [24] 1166 	inc	dptr
      00105B F0               [24] 1167 	movx	@dptr,a
      00105C 90 2F 38         [24] 1168 	mov	dptr,#___str_0
      00105F 75 F0 80         [24] 1169 	mov	b,#0x80
      001062 12 11 B2         [24] 1170 	lcall	_print_colored
                                   1171 ;	main.c:197: handler_lcd_hexdump();      // Call the function to dump the contents of the LCD
      001065 12 06 3B         [24] 1172 	lcall	_handler_lcd_hexdump
                                   1173 ;	main.c:198: break;
      001068 02 0E 94         [24] 1174 	ljmp	00122$
                                   1175 ;	main.c:200: case 'I': // If the character 'I' is received
      00106B                       1176 00113$:
                                   1177 ;	main.c:201: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      00106B 90 04 99         [24] 1178 	mov	dptr,#_print_colored_PARM_2
      00106E 74 24            [12] 1179 	mov	a,#0x24
      001070 F0               [24] 1180 	movx	@dptr,a
      001071 E4               [12] 1181 	clr	a
      001072 A3               [24] 1182 	inc	dptr
      001073 F0               [24] 1183 	movx	@dptr,a
      001074 90 2F 38         [24] 1184 	mov	dptr,#___str_0
      001077 75 F0 80         [24] 1185 	mov	b,#0x80
      00107A 12 11 B2         [24] 1186 	lcall	_print_colored
                                   1187 ;	main.c:202: handler_custom_char();      // Call the function to create custom characters for the LCD
      00107D 12 09 13         [24] 1188 	lcall	_handler_custom_char
                                   1189 ;	main.c:203: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      001080 90 04 99         [24] 1190 	mov	dptr,#_print_colored_PARM_2
      001083 74 24            [12] 1191 	mov	a,#0x24
      001085 F0               [24] 1192 	movx	@dptr,a
      001086 E4               [12] 1193 	clr	a
      001087 A3               [24] 1194 	inc	dptr
      001088 F0               [24] 1195 	movx	@dptr,a
      001089 90 2F 38         [24] 1196 	mov	dptr,#___str_0
      00108C 75 F0 80         [24] 1197 	mov	b,#0x80
      00108F 12 11 B2         [24] 1198 	lcall	_print_colored
                                   1199 ;	main.c:204: break;
      001092 02 0E 94         [24] 1200 	ljmp	00122$
                                   1201 ;	main.c:206: case 'J': // If the character 'J' is received
      001095                       1202 00114$:
                                   1203 ;	main.c:207: print_colored("\n\r", 36);            // Print a colored newline on the serial terminal
      001095 90 04 99         [24] 1204 	mov	dptr,#_print_colored_PARM_2
      001098 74 24            [12] 1205 	mov	a,#0x24
      00109A F0               [24] 1206 	movx	@dptr,a
      00109B E4               [12] 1207 	clr	a
      00109C A3               [24] 1208 	inc	dptr
      00109D F0               [24] 1209 	movx	@dptr,a
      00109E 90 2F 38         [24] 1210 	mov	dptr,#___str_0
      0010A1 75 F0 80         [24] 1211 	mov	b,#0x80
      0010A4 12 11 B2         [24] 1212 	lcall	_print_colored
                                   1213 ;	main.c:208: handle_sadsmiley_custom_char();       // Call the function to create a custom sad smiley character for the LCD
      0010A7 12 0B AA         [24] 1214 	lcall	_handle_sadsmiley_custom_char
                                   1215 ;	main.c:209: print_colored("\n\r", 36);            // Print a colored newline on the serial terminal
      0010AA 90 04 99         [24] 1216 	mov	dptr,#_print_colored_PARM_2
      0010AD 74 24            [12] 1217 	mov	a,#0x24
      0010AF F0               [24] 1218 	movx	@dptr,a
      0010B0 E4               [12] 1219 	clr	a
      0010B1 A3               [24] 1220 	inc	dptr
      0010B2 F0               [24] 1221 	movx	@dptr,a
      0010B3 90 2F 38         [24] 1222 	mov	dptr,#___str_0
      0010B6 75 F0 80         [24] 1223 	mov	b,#0x80
      0010B9 12 11 B2         [24] 1224 	lcall	_print_colored
                                   1225 ;	main.c:210: break;
      0010BC 02 0E 94         [24] 1226 	ljmp	00122$
                                   1227 ;	main.c:212: case 'K': // If the character 'K' is received
      0010BF                       1228 00115$:
                                   1229 ;	main.c:213: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      0010BF 90 04 99         [24] 1230 	mov	dptr,#_print_colored_PARM_2
      0010C2 74 24            [12] 1231 	mov	a,#0x24
      0010C4 F0               [24] 1232 	movx	@dptr,a
      0010C5 E4               [12] 1233 	clr	a
      0010C6 A3               [24] 1234 	inc	dptr
      0010C7 F0               [24] 1235 	movx	@dptr,a
      0010C8 90 2F 38         [24] 1236 	mov	dptr,#___str_0
      0010CB 75 F0 80         [24] 1237 	mov	b,#0x80
      0010CE 12 11 B2         [24] 1238 	lcall	_print_colored
                                   1239 ;	main.c:214: handle_cu_custom_char();    // Call the function to create a custom "CU" character for the LCD
      0010D1 12 09 FF         [24] 1240 	lcall	_handle_cu_custom_char
                                   1241 ;	main.c:215: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      0010D4 90 04 99         [24] 1242 	mov	dptr,#_print_colored_PARM_2
      0010D7 74 24            [12] 1243 	mov	a,#0x24
      0010D9 F0               [24] 1244 	movx	@dptr,a
      0010DA E4               [12] 1245 	clr	a
      0010DB A3               [24] 1246 	inc	dptr
      0010DC F0               [24] 1247 	movx	@dptr,a
      0010DD 90 2F 38         [24] 1248 	mov	dptr,#___str_0
      0010E0 75 F0 80         [24] 1249 	mov	b,#0x80
      0010E3 12 11 B2         [24] 1250 	lcall	_print_colored
                                   1251 ;	main.c:216: break;
      0010E6 02 0E 94         [24] 1252 	ljmp	00122$
                                   1253 ;	main.c:218: case 'P': // If the character 'P' is received
      0010E9                       1254 00116$:
                                   1255 ;	main.c:219: print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
      0010E9 90 04 99         [24] 1256 	mov	dptr,#_print_colored_PARM_2
      0010EC 74 24            [12] 1257 	mov	a,#0x24
      0010EE F0               [24] 1258 	movx	@dptr,a
      0010EF E4               [12] 1259 	clr	a
      0010F0 A3               [24] 1260 	inc	dptr
      0010F1 F0               [24] 1261 	movx	@dptr,a
      0010F2 90 2F 38         [24] 1262 	mov	dptr,#___str_0
      0010F5 75 F0 80         [24] 1263 	mov	b,#0x80
      0010F8 12 11 B2         [24] 1264 	lcall	_print_colored
                                   1265 ;	main.c:220: print_author();             // Print the author name on the serial terminal
      0010FB 12 0D 60         [24] 1266 	lcall	_print_author
                                   1267 ;	main.c:221: break;
      0010FE 02 0E 94         [24] 1268 	ljmp	00122$
                                   1269 ;	main.c:223: default:  // If an invalid character is received
      001101                       1270 00117$:
                                   1271 ;	main.c:224: printf_tiny("\033[1;31mInvalid Character!!\n\r");  // Print a colored error message on the serial terminal
      001101 74 3B            [12] 1272 	mov	a,#___str_1
      001103 C0 E0            [24] 1273 	push	acc
      001105 74 2F            [12] 1274 	mov	a,#(___str_1 >> 8)
      001107 C0 E0            [24] 1275 	push	acc
      001109 12 1A 00         [24] 1276 	lcall	_printf_tiny
      00110C 15 81            [12] 1277 	dec	sp
      00110E 15 81            [12] 1278 	dec	sp
                                   1279 ;	main.c:226: }
                                   1280 ;	main.c:229: }
      001110 02 0E 94         [24] 1281 	ljmp	00122$
                                   1282 	.area CSEG    (CODE)
                                   1283 	.area CONST   (CODE)
                                   1284 	.area CONST   (CODE)
      002F38                       1285 ___str_0:
      002F38 0A                    1286 	.db 0x0a
      002F39 0D                    1287 	.db 0x0d
      002F3A 00                    1288 	.db 0x00
                                   1289 	.area CSEG    (CODE)
                                   1290 	.area CONST   (CODE)
      002F3B                       1291 ___str_1:
      002F3B 1B                    1292 	.db 0x1b
      002F3C 5B 31 3B 33 31 6D 49  1293 	.ascii "[1;31mInvalid Character!!"
             6E 76 61 6C 69 64 20
             43 68 61 72 61 63 74
             65 72 21 21
      002F55 0A                    1294 	.db 0x0a
      002F56 0D                    1295 	.db 0x0d
      002F57 00                    1296 	.db 0x00
                                   1297 	.area CSEG    (CODE)
                                   1298 	.area XINIT   (CODE)
      003301                       1299 __xinit__update_lcd:
      003301 00 00                 1300 	.byte #0x00, #0x00	;  0
      003303                       1301 __xinit__tenth_of_second:
      003303 30                    1302 	.db #0x30	; 48	'0'
      003304                       1303 __xinit__seconds_ones_digit:
      003304 30                    1304 	.db #0x30	; 48	'0'
      003305                       1305 __xinit__seconds_tens_digit:
      003305 30                    1306 	.db #0x30	; 48	'0'
      003306                       1307 __xinit__minutes_ones_digit:
      003306 30                    1308 	.db #0x30	; 48	'0'
      003307                       1309 __xinit__minutes_tens_digit:
      003307 30                    1310 	.db #0x30	; 48	'0'
                                   1311 	.area CABS    (ABS,CODE)
