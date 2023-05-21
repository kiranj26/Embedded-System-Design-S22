                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _print_author
                                     12 	.globl _handle_sadsmiley_custom_char
                                     13 	.globl _handle_cu_custom_char
                                     14 	.globl _handler_custom_char
                                     15 	.globl _create_custom_char
                                     16 	.globl _get_hex_value
                                     17 	.globl _handler_lcd_hexdump
                                     18 	.globl _read_lcd_address
                                     19 	.globl _handler_reset_time
                                     20 	.globl _handler_resume_time
                                     21 	.globl _handler_stop_time
                                     22 	.globl _handler_lcdgotoaddress
                                     23 	.globl _handler_lcdgotoxy
                                     24 	.globl _handler_wr_str_lcd
                                     25 	.globl _handler_wr_c_lcd
                                     26 	.globl _handler_lcdclear
                                     27 	.globl _lcdputstr
                                     28 	.globl _lcdputch
                                     29 	.globl _lcdgotoxy
                                     30 	.globl _lcdgotoaddr
                                     31 	.globl _get_cursor_address
                                     32 	.globl _init_lcd
                                     33 	.globl _set_time_variables
                                     34 	.globl _lcdbusywait
                                     35 	.globl _delay
                                     36 	.globl _putchar
                                     37 	.globl _getchar
                                     38 	.globl _strtol
                                     39 	.globl _printf_tiny
                                     40 	.globl _printf
                                     41 	.globl _toupper
                                     42 	.globl _P5_7
                                     43 	.globl _P5_6
                                     44 	.globl _P5_5
                                     45 	.globl _P5_4
                                     46 	.globl _P5_3
                                     47 	.globl _P5_2
                                     48 	.globl _P5_1
                                     49 	.globl _P5_0
                                     50 	.globl _P4_7
                                     51 	.globl _P4_6
                                     52 	.globl _P4_5
                                     53 	.globl _P4_4
                                     54 	.globl _P4_3
                                     55 	.globl _P4_2
                                     56 	.globl _P4_1
                                     57 	.globl _P4_0
                                     58 	.globl _PX0L
                                     59 	.globl _PT0L
                                     60 	.globl _PX1L
                                     61 	.globl _PT1L
                                     62 	.globl _PSL
                                     63 	.globl _PT2L
                                     64 	.globl _PPCL
                                     65 	.globl _EC
                                     66 	.globl _CCF0
                                     67 	.globl _CCF1
                                     68 	.globl _CCF2
                                     69 	.globl _CCF3
                                     70 	.globl _CCF4
                                     71 	.globl _CR
                                     72 	.globl _CF
                                     73 	.globl _TF2
                                     74 	.globl _EXF2
                                     75 	.globl _RCLK
                                     76 	.globl _TCLK
                                     77 	.globl _EXEN2
                                     78 	.globl _TR2
                                     79 	.globl _C_T2
                                     80 	.globl _CP_RL2
                                     81 	.globl _T2CON_7
                                     82 	.globl _T2CON_6
                                     83 	.globl _T2CON_5
                                     84 	.globl _T2CON_4
                                     85 	.globl _T2CON_3
                                     86 	.globl _T2CON_2
                                     87 	.globl _T2CON_1
                                     88 	.globl _T2CON_0
                                     89 	.globl _PT2
                                     90 	.globl _ET2
                                     91 	.globl _CY
                                     92 	.globl _AC
                                     93 	.globl _F0
                                     94 	.globl _RS1
                                     95 	.globl _RS0
                                     96 	.globl _OV
                                     97 	.globl _F1
                                     98 	.globl _P
                                     99 	.globl _PS
                                    100 	.globl _PT1
                                    101 	.globl _PX1
                                    102 	.globl _PT0
                                    103 	.globl _PX0
                                    104 	.globl _RD
                                    105 	.globl _WR
                                    106 	.globl _T1
                                    107 	.globl _T0
                                    108 	.globl _INT1
                                    109 	.globl _INT0
                                    110 	.globl _TXD
                                    111 	.globl _RXD
                                    112 	.globl _P3_7
                                    113 	.globl _P3_6
                                    114 	.globl _P3_5
                                    115 	.globl _P3_4
                                    116 	.globl _P3_3
                                    117 	.globl _P3_2
                                    118 	.globl _P3_1
                                    119 	.globl _P3_0
                                    120 	.globl _EA
                                    121 	.globl _ES
                                    122 	.globl _ET1
                                    123 	.globl _EX1
                                    124 	.globl _ET0
                                    125 	.globl _EX0
                                    126 	.globl _P2_7
                                    127 	.globl _P2_6
                                    128 	.globl _P2_5
                                    129 	.globl _P2_4
                                    130 	.globl _P2_3
                                    131 	.globl _P2_2
                                    132 	.globl _P2_1
                                    133 	.globl _P2_0
                                    134 	.globl _SM0
                                    135 	.globl _SM1
                                    136 	.globl _SM2
                                    137 	.globl _REN
                                    138 	.globl _TB8
                                    139 	.globl _RB8
                                    140 	.globl _TI
                                    141 	.globl _RI
                                    142 	.globl _P1_7
                                    143 	.globl _P1_6
                                    144 	.globl _P1_5
                                    145 	.globl _P1_4
                                    146 	.globl _P1_3
                                    147 	.globl _P1_2
                                    148 	.globl _P1_1
                                    149 	.globl _P1_0
                                    150 	.globl _TF1
                                    151 	.globl _TR1
                                    152 	.globl _TF0
                                    153 	.globl _TR0
                                    154 	.globl _IE1
                                    155 	.globl _IT1
                                    156 	.globl _IE0
                                    157 	.globl _IT0
                                    158 	.globl _P0_7
                                    159 	.globl _P0_6
                                    160 	.globl _P0_5
                                    161 	.globl _P0_4
                                    162 	.globl _P0_3
                                    163 	.globl _P0_2
                                    164 	.globl _P0_1
                                    165 	.globl _P0_0
                                    166 	.globl _EECON
                                    167 	.globl _KBF
                                    168 	.globl _KBE
                                    169 	.globl _KBLS
                                    170 	.globl _BRL
                                    171 	.globl _BDRCON
                                    172 	.globl _T2MOD
                                    173 	.globl _SPDAT
                                    174 	.globl _SPSTA
                                    175 	.globl _SPCON
                                    176 	.globl _SADEN
                                    177 	.globl _SADDR
                                    178 	.globl _WDTPRG
                                    179 	.globl _WDTRST
                                    180 	.globl _P5
                                    181 	.globl _P4
                                    182 	.globl _IPH1
                                    183 	.globl _IPL1
                                    184 	.globl _IPH0
                                    185 	.globl _IPL0
                                    186 	.globl _IEN1
                                    187 	.globl _IEN0
                                    188 	.globl _CMOD
                                    189 	.globl _CL
                                    190 	.globl _CH
                                    191 	.globl _CCON
                                    192 	.globl _CCAPM4
                                    193 	.globl _CCAPM3
                                    194 	.globl _CCAPM2
                                    195 	.globl _CCAPM1
                                    196 	.globl _CCAPM0
                                    197 	.globl _CCAP4L
                                    198 	.globl _CCAP3L
                                    199 	.globl _CCAP2L
                                    200 	.globl _CCAP1L
                                    201 	.globl _CCAP0L
                                    202 	.globl _CCAP4H
                                    203 	.globl _CCAP3H
                                    204 	.globl _CCAP2H
                                    205 	.globl _CCAP1H
                                    206 	.globl _CCAP0H
                                    207 	.globl _CKCON1
                                    208 	.globl _CKCON0
                                    209 	.globl _CKRL
                                    210 	.globl _AUXR1
                                    211 	.globl _AUXR
                                    212 	.globl _TH2
                                    213 	.globl _TL2
                                    214 	.globl _RCAP2H
                                    215 	.globl _RCAP2L
                                    216 	.globl _T2CON
                                    217 	.globl _B
                                    218 	.globl _ACC
                                    219 	.globl _PSW
                                    220 	.globl _IP
                                    221 	.globl _P3
                                    222 	.globl _IE
                                    223 	.globl _P2
                                    224 	.globl _SBUF
                                    225 	.globl _SCON
                                    226 	.globl _P1
                                    227 	.globl _TH1
                                    228 	.globl _TH0
                                    229 	.globl _TL1
                                    230 	.globl _TL0
                                    231 	.globl _TMOD
                                    232 	.globl _TCON
                                    233 	.globl _PCON
                                    234 	.globl _DPH
                                    235 	.globl _DPL
                                    236 	.globl _SP
                                    237 	.globl _P0
                                    238 	.globl _save_cursor_address
                                    239 	.globl _create_custom_char_PARM_2
                                    240 	.globl _read_lcd_address_PARM_2
                                    241 	.globl _lcdgotoxy_PARM_2
                                    242 	.globl _string
                                    243 	.globl _lcd_ptr
                                    244 ;--------------------------------------------------------
                                    245 ; special function registers
                                    246 ;--------------------------------------------------------
                                    247 	.area RSEG    (ABS,DATA)
      000000                        248 	.org 0x0000
                           000080   249 _P0	=	0x0080
                           000081   250 _SP	=	0x0081
                           000082   251 _DPL	=	0x0082
                           000083   252 _DPH	=	0x0083
                           000087   253 _PCON	=	0x0087
                           000088   254 _TCON	=	0x0088
                           000089   255 _TMOD	=	0x0089
                           00008A   256 _TL0	=	0x008a
                           00008B   257 _TL1	=	0x008b
                           00008C   258 _TH0	=	0x008c
                           00008D   259 _TH1	=	0x008d
                           000090   260 _P1	=	0x0090
                           000098   261 _SCON	=	0x0098
                           000099   262 _SBUF	=	0x0099
                           0000A0   263 _P2	=	0x00a0
                           0000A8   264 _IE	=	0x00a8
                           0000B0   265 _P3	=	0x00b0
                           0000B8   266 _IP	=	0x00b8
                           0000D0   267 _PSW	=	0x00d0
                           0000E0   268 _ACC	=	0x00e0
                           0000F0   269 _B	=	0x00f0
                           0000C8   270 _T2CON	=	0x00c8
                           0000CA   271 _RCAP2L	=	0x00ca
                           0000CB   272 _RCAP2H	=	0x00cb
                           0000CC   273 _TL2	=	0x00cc
                           0000CD   274 _TH2	=	0x00cd
                           00008E   275 _AUXR	=	0x008e
                           0000A2   276 _AUXR1	=	0x00a2
                           000097   277 _CKRL	=	0x0097
                           00008F   278 _CKCON0	=	0x008f
                           0000AF   279 _CKCON1	=	0x00af
                           0000FA   280 _CCAP0H	=	0x00fa
                           0000FB   281 _CCAP1H	=	0x00fb
                           0000FC   282 _CCAP2H	=	0x00fc
                           0000FD   283 _CCAP3H	=	0x00fd
                           0000FE   284 _CCAP4H	=	0x00fe
                           0000EA   285 _CCAP0L	=	0x00ea
                           0000EB   286 _CCAP1L	=	0x00eb
                           0000EC   287 _CCAP2L	=	0x00ec
                           0000ED   288 _CCAP3L	=	0x00ed
                           0000EE   289 _CCAP4L	=	0x00ee
                           0000DA   290 _CCAPM0	=	0x00da
                           0000DB   291 _CCAPM1	=	0x00db
                           0000DC   292 _CCAPM2	=	0x00dc
                           0000DD   293 _CCAPM3	=	0x00dd
                           0000DE   294 _CCAPM4	=	0x00de
                           0000D8   295 _CCON	=	0x00d8
                           0000F9   296 _CH	=	0x00f9
                           0000E9   297 _CL	=	0x00e9
                           0000D9   298 _CMOD	=	0x00d9
                           0000A8   299 _IEN0	=	0x00a8
                           0000B1   300 _IEN1	=	0x00b1
                           0000B8   301 _IPL0	=	0x00b8
                           0000B7   302 _IPH0	=	0x00b7
                           0000B2   303 _IPL1	=	0x00b2
                           0000B3   304 _IPH1	=	0x00b3
                           0000C0   305 _P4	=	0x00c0
                           0000E8   306 _P5	=	0x00e8
                           0000A6   307 _WDTRST	=	0x00a6
                           0000A7   308 _WDTPRG	=	0x00a7
                           0000A9   309 _SADDR	=	0x00a9
                           0000B9   310 _SADEN	=	0x00b9
                           0000C3   311 _SPCON	=	0x00c3
                           0000C4   312 _SPSTA	=	0x00c4
                           0000C5   313 _SPDAT	=	0x00c5
                           0000C9   314 _T2MOD	=	0x00c9
                           00009B   315 _BDRCON	=	0x009b
                           00009A   316 _BRL	=	0x009a
                           00009C   317 _KBLS	=	0x009c
                           00009D   318 _KBE	=	0x009d
                           00009E   319 _KBF	=	0x009e
                           0000D2   320 _EECON	=	0x00d2
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                           000080   326 _P0_0	=	0x0080
                           000081   327 _P0_1	=	0x0081
                           000082   328 _P0_2	=	0x0082
                           000083   329 _P0_3	=	0x0083
                           000084   330 _P0_4	=	0x0084
                           000085   331 _P0_5	=	0x0085
                           000086   332 _P0_6	=	0x0086
                           000087   333 _P0_7	=	0x0087
                           000088   334 _IT0	=	0x0088
                           000089   335 _IE0	=	0x0089
                           00008A   336 _IT1	=	0x008a
                           00008B   337 _IE1	=	0x008b
                           00008C   338 _TR0	=	0x008c
                           00008D   339 _TF0	=	0x008d
                           00008E   340 _TR1	=	0x008e
                           00008F   341 _TF1	=	0x008f
                           000090   342 _P1_0	=	0x0090
                           000091   343 _P1_1	=	0x0091
                           000092   344 _P1_2	=	0x0092
                           000093   345 _P1_3	=	0x0093
                           000094   346 _P1_4	=	0x0094
                           000095   347 _P1_5	=	0x0095
                           000096   348 _P1_6	=	0x0096
                           000097   349 _P1_7	=	0x0097
                           000098   350 _RI	=	0x0098
                           000099   351 _TI	=	0x0099
                           00009A   352 _RB8	=	0x009a
                           00009B   353 _TB8	=	0x009b
                           00009C   354 _REN	=	0x009c
                           00009D   355 _SM2	=	0x009d
                           00009E   356 _SM1	=	0x009e
                           00009F   357 _SM0	=	0x009f
                           0000A0   358 _P2_0	=	0x00a0
                           0000A1   359 _P2_1	=	0x00a1
                           0000A2   360 _P2_2	=	0x00a2
                           0000A3   361 _P2_3	=	0x00a3
                           0000A4   362 _P2_4	=	0x00a4
                           0000A5   363 _P2_5	=	0x00a5
                           0000A6   364 _P2_6	=	0x00a6
                           0000A7   365 _P2_7	=	0x00a7
                           0000A8   366 _EX0	=	0x00a8
                           0000A9   367 _ET0	=	0x00a9
                           0000AA   368 _EX1	=	0x00aa
                           0000AB   369 _ET1	=	0x00ab
                           0000AC   370 _ES	=	0x00ac
                           0000AF   371 _EA	=	0x00af
                           0000B0   372 _P3_0	=	0x00b0
                           0000B1   373 _P3_1	=	0x00b1
                           0000B2   374 _P3_2	=	0x00b2
                           0000B3   375 _P3_3	=	0x00b3
                           0000B4   376 _P3_4	=	0x00b4
                           0000B5   377 _P3_5	=	0x00b5
                           0000B6   378 _P3_6	=	0x00b6
                           0000B7   379 _P3_7	=	0x00b7
                           0000B0   380 _RXD	=	0x00b0
                           0000B1   381 _TXD	=	0x00b1
                           0000B2   382 _INT0	=	0x00b2
                           0000B3   383 _INT1	=	0x00b3
                           0000B4   384 _T0	=	0x00b4
                           0000B5   385 _T1	=	0x00b5
                           0000B6   386 _WR	=	0x00b6
                           0000B7   387 _RD	=	0x00b7
                           0000B8   388 _PX0	=	0x00b8
                           0000B9   389 _PT0	=	0x00b9
                           0000BA   390 _PX1	=	0x00ba
                           0000BB   391 _PT1	=	0x00bb
                           0000BC   392 _PS	=	0x00bc
                           0000D0   393 _P	=	0x00d0
                           0000D1   394 _F1	=	0x00d1
                           0000D2   395 _OV	=	0x00d2
                           0000D3   396 _RS0	=	0x00d3
                           0000D4   397 _RS1	=	0x00d4
                           0000D5   398 _F0	=	0x00d5
                           0000D6   399 _AC	=	0x00d6
                           0000D7   400 _CY	=	0x00d7
                           0000AD   401 _ET2	=	0x00ad
                           0000BD   402 _PT2	=	0x00bd
                           0000C8   403 _T2CON_0	=	0x00c8
                           0000C9   404 _T2CON_1	=	0x00c9
                           0000CA   405 _T2CON_2	=	0x00ca
                           0000CB   406 _T2CON_3	=	0x00cb
                           0000CC   407 _T2CON_4	=	0x00cc
                           0000CD   408 _T2CON_5	=	0x00cd
                           0000CE   409 _T2CON_6	=	0x00ce
                           0000CF   410 _T2CON_7	=	0x00cf
                           0000C8   411 _CP_RL2	=	0x00c8
                           0000C9   412 _C_T2	=	0x00c9
                           0000CA   413 _TR2	=	0x00ca
                           0000CB   414 _EXEN2	=	0x00cb
                           0000CC   415 _TCLK	=	0x00cc
                           0000CD   416 _RCLK	=	0x00cd
                           0000CE   417 _EXF2	=	0x00ce
                           0000CF   418 _TF2	=	0x00cf
                           0000DF   419 _CF	=	0x00df
                           0000DE   420 _CR	=	0x00de
                           0000DC   421 _CCF4	=	0x00dc
                           0000DB   422 _CCF3	=	0x00db
                           0000DA   423 _CCF2	=	0x00da
                           0000D9   424 _CCF1	=	0x00d9
                           0000D8   425 _CCF0	=	0x00d8
                           0000AE   426 _EC	=	0x00ae
                           0000BE   427 _PPCL	=	0x00be
                           0000BD   428 _PT2L	=	0x00bd
                           0000BC   429 _PSL	=	0x00bc
                           0000BB   430 _PT1L	=	0x00bb
                           0000BA   431 _PX1L	=	0x00ba
                           0000B9   432 _PT0L	=	0x00b9
                           0000B8   433 _PX0L	=	0x00b8
                           0000C0   434 _P4_0	=	0x00c0
                           0000C1   435 _P4_1	=	0x00c1
                           0000C2   436 _P4_2	=	0x00c2
                           0000C3   437 _P4_3	=	0x00c3
                           0000C4   438 _P4_4	=	0x00c4
                           0000C5   439 _P4_5	=	0x00c5
                           0000C6   440 _P4_6	=	0x00c6
                           0000C7   441 _P4_7	=	0x00c7
                           0000E8   442 _P5_0	=	0x00e8
                           0000E9   443 _P5_1	=	0x00e9
                           0000EA   444 _P5_2	=	0x00ea
                           0000EB   445 _P5_3	=	0x00eb
                           0000EC   446 _P5_4	=	0x00ec
                           0000ED   447 _P5_5	=	0x00ed
                           0000EE   448 _P5_6	=	0x00ee
                           0000EF   449 _P5_7	=	0x00ef
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable register banks
                                    452 ;--------------------------------------------------------
                                    453 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        454 	.ds 8
                                    455 ;--------------------------------------------------------
                                    456 ; internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area DSEG    (DATA)
      000008                        459 _create_custom_char_sloc0_1_0:
      000008                        460 	.ds 3
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable items in internal ram
                                    463 ;--------------------------------------------------------
                                    464 ;--------------------------------------------------------
                                    465 ; indirectly addressable internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area ISEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; absolute internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area IABS    (ABS,DATA)
                                    472 	.area IABS    (ABS,DATA)
                                    473 ;--------------------------------------------------------
                                    474 ; bit data
                                    475 ;--------------------------------------------------------
                                    476 	.area BSEG    (BIT)
      000000                        477 _handler_wr_c_lcd_sloc0_1_0:
      000000                        478 	.ds 1
      000001                        479 _handler_wr_str_lcd_sloc0_1_0:
      000001                        480 	.ds 1
      000002                        481 _handler_lcdgotoxy_sloc0_1_0:
      000002                        482 	.ds 1
      000003                        483 _handler_lcdgotoaddress_sloc0_1_0:
      000003                        484 	.ds 1
      000004                        485 _handler_lcd_hexdump_sloc0_1_0:
      000004                        486 	.ds 1
      000005                        487 _handler_custom_char_sloc0_1_0:
      000005                        488 	.ds 1
      000006                        489 _handle_cu_custom_char_sloc0_1_0:
      000006                        490 	.ds 1
      000007                        491 _handle_sadsmiley_custom_char_sloc0_1_0:
      000007                        492 	.ds 1
      000008                        493 _print_author_sloc0_1_0:
      000008                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; paged external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area PSEG    (PAG,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XSEG    (XDATA)
                           00F000   503 _lcd_ptr	=	0xf000
      000400                        504 _string::
      000400                        505 	.ds 3
      000403                        506 _delay_milliseconds_65536_92:
      000403                        507 	.ds 2
      000405                        508 _lcdgotoaddr_address_65536_104:
      000405                        509 	.ds 1
      000406                        510 _lcdgotoxy_PARM_2:
      000406                        511 	.ds 1
      000407                        512 _lcdgotoxy_row_65536_106:
      000407                        513 	.ds 1
      000408                        514 _lcdgotoxy_address_65536_107:
      000408                        515 	.ds 1
      000409                        516 _lcdputch_cc_65536_114:
      000409                        517 	.ds 1
      00040A                        518 _lcdputstr_ss_65536_117:
      00040A                        519 	.ds 3
      00040D                        520 _handler_wr_str_lcd_k_65537_127:
      00040D                        521 	.ds 2
      00040F                        522 _handler_lcdgotoaddress_str_65536_140:
      00040F                        523 	.ds 50
      000441                        524 _handler_lcdgotoaddress_c_65537_141:
      000441                        525 	.ds 1
      000442                        526 _read_lcd_address_PARM_2:
      000442                        527 	.ds 1
      000443                        528 _read_lcd_address_is_ddram_65536_151:
      000443                        529 	.ds 1
      000444                        530 _get_hex_value_hex_value_65536_165:
      000444                        531 	.ds 1
      000445                        532 _create_custom_char_PARM_2:
      000445                        533 	.ds 3
      000448                        534 _create_custom_char_char_code_65536_170:
      000448                        535 	.ds 1
      000449                        536 _handler_custom_char_row_values_65539_178:
      000449                        537 	.ds 8
      000451                        538 _handle_cu_custom_char_row_vals1_65537_183:
      000451                        539 	.ds 8
      000459                        540 _handle_cu_custom_char_row_vals2_65538_185:
      000459                        541 	.ds 8
      000461                        542 _handle_cu_custom_char_row_vals3_65539_187:
      000461                        543 	.ds 8
      000469                        544 _handle_cu_custom_char_row_vals4_65540_189:
      000469                        545 	.ds 8
      000471                        546 _handle_sadsmiley_custom_char_row_vals1_65537_193:
      000471                        547 	.ds 8
      000479                        548 _handle_sadsmiley_custom_char_row_vals2_65538_195:
      000479                        549 	.ds 8
      000481                        550 _handle_sadsmiley_custom_char_row_vals3_65539_197:
      000481                        551 	.ds 8
      000489                        552 _handle_sadsmiley_custom_char_row_vals4_65540_199:
      000489                        553 	.ds 8
                                    554 ;--------------------------------------------------------
                                    555 ; absolute external ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area XABS    (ABS,XDATA)
                                    558 ;--------------------------------------------------------
                                    559 ; external initialized ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area XISEG   (XDATA)
      00050F                        562 _save_cursor_address::
      00050F                        563 	.ds 1
                                    564 	.area HOME    (CODE)
                                    565 	.area GSINIT0 (CODE)
                                    566 	.area GSINIT1 (CODE)
                                    567 	.area GSINIT2 (CODE)
                                    568 	.area GSINIT3 (CODE)
                                    569 	.area GSINIT4 (CODE)
                                    570 	.area GSINIT5 (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 	.area GSFINAL (CODE)
                                    573 	.area CSEG    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; global & static initialisations
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME    (CODE)
                                    578 	.area GSINIT  (CODE)
                                    579 	.area GSFINAL (CODE)
                                    580 	.area GSINIT  (CODE)
                                    581 ;--------------------------------------------------------
                                    582 ; Home
                                    583 ;--------------------------------------------------------
                                    584 	.area HOME    (CODE)
                                    585 	.area HOME    (CODE)
                                    586 ;--------------------------------------------------------
                                    587 ; code
                                    588 ;--------------------------------------------------------
                                    589 	.area CSEG    (CODE)
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'delay'
                                    592 ;------------------------------------------------------------
                                    593 ;milliseconds              Allocated with name '_delay_milliseconds_65536_92'
                                    594 ;i                         Allocated with name '_delay_i_131072_94'
                                    595 ;------------------------------------------------------------
                                    596 ;	lcd.c:77: void delay(int milliseconds)
                                    597 ;	-----------------------------------------
                                    598 ;	 function delay
                                    599 ;	-----------------------------------------
      0000A2                        600 _delay:
                           000007   601 	ar7 = 0x07
                           000006   602 	ar6 = 0x06
                           000005   603 	ar5 = 0x05
                           000004   604 	ar4 = 0x04
                           000003   605 	ar3 = 0x03
                           000002   606 	ar2 = 0x02
                           000001   607 	ar1 = 0x01
                           000000   608 	ar0 = 0x00
      0000A2 AF 83            [24]  609 	mov	r7,dph
      0000A4 E5 82            [12]  610 	mov	a,dpl
      0000A6 90 04 03         [24]  611 	mov	dptr,#_delay_milliseconds_65536_92
      0000A9 F0               [24]  612 	movx	@dptr,a
      0000AA EF               [12]  613 	mov	a,r7
      0000AB A3               [24]  614 	inc	dptr
      0000AC F0               [24]  615 	movx	@dptr,a
                                    616 ;	lcd.c:80: for(int i = 0; i < milliseconds * COUNT_ONE_MILLISECOND; i++);
      0000AD 90 04 03         [24]  617 	mov	dptr,#_delay_milliseconds_65536_92
      0000B0 E0               [24]  618 	movx	a,@dptr
      0000B1 FE               [12]  619 	mov	r6,a
      0000B2 A3               [24]  620 	inc	dptr
      0000B3 E0               [24]  621 	movx	a,@dptr
      0000B4 FF               [12]  622 	mov	r7,a
      0000B5 90 04 AE         [24]  623 	mov	dptr,#__mulint_PARM_2
      0000B8 EE               [12]  624 	mov	a,r6
      0000B9 F0               [24]  625 	movx	@dptr,a
      0000BA EF               [12]  626 	mov	a,r7
      0000BB A3               [24]  627 	inc	dptr
      0000BC F0               [24]  628 	movx	@dptr,a
      0000BD 90 00 52         [24]  629 	mov	dptr,#0x0052
      0000C0 12 1B 09         [24]  630 	lcall	__mulint
      0000C3 AE 82            [24]  631 	mov	r6,dpl
      0000C5 AF 83            [24]  632 	mov	r7,dph
      0000C7 7C 00            [12]  633 	mov	r4,#0x00
      0000C9 7D 00            [12]  634 	mov	r5,#0x00
      0000CB                        635 00103$:
      0000CB C3               [12]  636 	clr	c
      0000CC EC               [12]  637 	mov	a,r4
      0000CD 9E               [12]  638 	subb	a,r6
      0000CE ED               [12]  639 	mov	a,r5
      0000CF 64 80            [12]  640 	xrl	a,#0x80
      0000D1 8F F0            [24]  641 	mov	b,r7
      0000D3 63 F0 80         [24]  642 	xrl	b,#0x80
      0000D6 95 F0            [12]  643 	subb	a,b
      0000D8 50 07            [24]  644 	jnc	00105$
      0000DA 0C               [12]  645 	inc	r4
      0000DB BC 00 ED         [24]  646 	cjne	r4,#0x00,00103$
      0000DE 0D               [12]  647 	inc	r5
      0000DF 80 EA            [24]  648 	sjmp	00103$
      0000E1                        649 00105$:
                                    650 ;	lcd.c:81: }
      0000E1 22               [24]  651 	ret
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'lcdbusywait'
                                    654 ;------------------------------------------------------------
                                    655 ;BUSY_FLAG_MASK            Allocated with name '_lcdbusywait_BUSY_FLAG_MASK_65536_96'
                                    656 ;COMMAND_ADDRESS           Allocated with name '_lcdbusywait_COMMAND_ADDRESS_65536_96'
                                    657 ;------------------------------------------------------------
                                    658 ;	lcd.c:85: void lcdbusywait(void)
                                    659 ;	-----------------------------------------
                                    660 ;	 function lcdbusywait
                                    661 ;	-----------------------------------------
      0000E2                        662 _lcdbusywait:
                                    663 ;	lcd.c:94: LCD_RS = 0;
                                    664 ;	assignBit
      0000E2 C2 92            [12]  665 	clr	_P1_2
                                    666 ;	lcd.c:95: LCD_RW = 1;
                                    667 ;	assignBit
      0000E4 D2 93            [12]  668 	setb	_P1_3
                                    669 ;	lcd.c:98: while ((* (volatile uint8_t *) COMMAND_ADDRESS) & BUSY_FLAG_MASK)
      0000E6                        670 00101$:
      0000E6 90 F0 00         [24]  671 	mov	dptr,#0xf000
      0000E9 75 F0 00         [24]  672 	mov	b,#0x00
      0000EC 12 2A E1         [24]  673 	lcall	__gptrget
      0000EF 30 E7 08         [24]  674 	jnb	acc.7,00104$
                                    675 ;	lcd.c:101: delay(10);
      0000F2 90 00 0A         [24]  676 	mov	dptr,#0x000a
      0000F5 12 00 A2         [24]  677 	lcall	_delay
      0000F8 80 EC            [24]  678 	sjmp	00101$
      0000FA                        679 00104$:
                                    680 ;	lcd.c:103: }
      0000FA 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'set_time_variables'
                                    684 ;------------------------------------------------------------
                                    685 ;	lcd.c:106: void set_time_variables(void)
                                    686 ;	-----------------------------------------
                                    687 ;	 function set_time_variables
                                    688 ;	-----------------------------------------
      0000FB                        689 _set_time_variables:
                                    690 ;	lcd.c:109: tenth_of_second     = '0';
      0000FB 90 05 12         [24]  691 	mov	dptr,#_tenth_of_second
      0000FE 74 30            [12]  692 	mov	a,#0x30
      000100 F0               [24]  693 	movx	@dptr,a
                                    694 ;	lcd.c:110: seconds_ones_digit  = '0';
      000101 90 05 13         [24]  695 	mov	dptr,#_seconds_ones_digit
      000104 F0               [24]  696 	movx	@dptr,a
                                    697 ;	lcd.c:111: seconds_tens_digit  = '0';
      000105 90 05 14         [24]  698 	mov	dptr,#_seconds_tens_digit
      000108 F0               [24]  699 	movx	@dptr,a
                                    700 ;	lcd.c:112: minutes_ones_digit  = '0';
      000109 90 05 15         [24]  701 	mov	dptr,#_minutes_ones_digit
      00010C F0               [24]  702 	movx	@dptr,a
                                    703 ;	lcd.c:113: minutes_tens_digit  = '0';
      00010D 90 05 16         [24]  704 	mov	dptr,#_minutes_tens_digit
      000110 F0               [24]  705 	movx	@dptr,a
                                    706 ;	lcd.c:114: }
      000111 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'init_lcd'
                                    710 ;------------------------------------------------------------
                                    711 ;	lcd.c:116: void init_lcd(void){
                                    712 ;	-----------------------------------------
                                    713 ;	 function init_lcd
                                    714 ;	-----------------------------------------
      000112                        715 _init_lcd:
                                    716 ;	lcd.c:118: LCD_RS = 0;
                                    717 ;	assignBit
      000112 C2 92            [12]  718 	clr	_P1_2
                                    719 ;	lcd.c:119: LCD_RW = 0;
                                    720 ;	assignBit
      000114 C2 93            [12]  721 	clr	_P1_3
                                    722 ;	lcd.c:121: delay(160);
      000116 90 00 A0         [24]  723 	mov	dptr,#0x00a0
      000119 12 00 A2         [24]  724 	lcall	_delay
                                    725 ;	lcd.c:124: lcd_ptr = 0x30;
      00011C 90 F0 00         [24]  726 	mov	dptr,#_lcd_ptr
      00011F 74 30            [12]  727 	mov	a,#0x30
      000121 F0               [24]  728 	movx	@dptr,a
                                    729 ;	lcd.c:126: delay(170);
      000122 90 00 AA         [24]  730 	mov	dptr,#0x00aa
      000125 12 00 A2         [24]  731 	lcall	_delay
                                    732 ;	lcd.c:128: lcd_ptr = 0x30;
      000128 90 F0 00         [24]  733 	mov	dptr,#_lcd_ptr
      00012B 74 30            [12]  734 	mov	a,#0x30
      00012D F0               [24]  735 	movx	@dptr,a
                                    736 ;	lcd.c:130: delay(150);
      00012E 90 00 96         [24]  737 	mov	dptr,#0x0096
      000131 12 00 A2         [24]  738 	lcall	_delay
                                    739 ;	lcd.c:133: lcd_ptr = 0x30;
      000134 90 F0 00         [24]  740 	mov	dptr,#_lcd_ptr
      000137 74 30            [12]  741 	mov	a,#0x30
      000139 F0               [24]  742 	movx	@dptr,a
                                    743 ;	lcd.c:135: lcdbusywait();
      00013A 12 00 E2         [24]  744 	lcall	_lcdbusywait
                                    745 ;	lcd.c:137: LCD_RS = 0;
                                    746 ;	assignBit
      00013D C2 92            [12]  747 	clr	_P1_2
                                    748 ;	lcd.c:138: LCD_RW = 0;
                                    749 ;	assignBit
      00013F C2 93            [12]  750 	clr	_P1_3
                                    751 ;	lcd.c:140: lcd_ptr = 0x38;
      000141 90 F0 00         [24]  752 	mov	dptr,#_lcd_ptr
      000144 74 38            [12]  753 	mov	a,#0x38
      000146 F0               [24]  754 	movx	@dptr,a
                                    755 ;	lcd.c:142: lcdbusywait();
      000147 12 00 E2         [24]  756 	lcall	_lcdbusywait
                                    757 ;	lcd.c:145: LCD_RS = 0;
                                    758 ;	assignBit
      00014A C2 92            [12]  759 	clr	_P1_2
                                    760 ;	lcd.c:146: LCD_RW = 0;
                                    761 ;	assignBit
      00014C C2 93            [12]  762 	clr	_P1_3
                                    763 ;	lcd.c:148: lcd_ptr = 0x0F;
      00014E 90 F0 00         [24]  764 	mov	dptr,#_lcd_ptr
      000151 74 0F            [12]  765 	mov	a,#0x0f
      000153 F0               [24]  766 	movx	@dptr,a
                                    767 ;	lcd.c:150: lcdbusywait();
      000154 12 00 E2         [24]  768 	lcall	_lcdbusywait
                                    769 ;	lcd.c:153: LCD_RS = 0;
                                    770 ;	assignBit
      000157 C2 92            [12]  771 	clr	_P1_2
                                    772 ;	lcd.c:154: LCD_RW = 0;
                                    773 ;	assignBit
      000159 C2 93            [12]  774 	clr	_P1_3
                                    775 ;	lcd.c:156: lcd_ptr = 0x01;
      00015B 90 F0 00         [24]  776 	mov	dptr,#_lcd_ptr
      00015E 74 01            [12]  777 	mov	a,#0x01
      000160 F0               [24]  778 	movx	@dptr,a
                                    779 ;	lcd.c:158: lcdbusywait();
      000161 12 00 E2         [24]  780 	lcall	_lcdbusywait
                                    781 ;	lcd.c:161: LCD_RS = 0;
                                    782 ;	assignBit
      000164 C2 92            [12]  783 	clr	_P1_2
                                    784 ;	lcd.c:162: LCD_RW = 0;
                                    785 ;	assignBit
      000166 C2 93            [12]  786 	clr	_P1_3
                                    787 ;	lcd.c:164: lcd_ptr = 0x06;
      000168 90 F0 00         [24]  788 	mov	dptr,#_lcd_ptr
      00016B 74 06            [12]  789 	mov	a,#0x06
      00016D F0               [24]  790 	movx	@dptr,a
                                    791 ;	lcd.c:166: lcdbusywait();
      00016E 12 00 E2         [24]  792 	lcall	_lcdbusywait
                                    793 ;	lcd.c:169: set_time_variables();
                                    794 ;	lcd.c:170: }
      000171 02 00 FB         [24]  795 	ljmp	_set_time_variables
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'get_cursor_address'
                                    798 ;------------------------------------------------------------
                                    799 ;address                   Allocated with name '_get_cursor_address_address_65537_103'
                                    800 ;------------------------------------------------------------
                                    801 ;	lcd.c:173: uint8_t get_cursor_address(){
                                    802 ;	-----------------------------------------
                                    803 ;	 function get_cursor_address
                                    804 ;	-----------------------------------------
      000174                        805 _get_cursor_address:
                                    806 ;	lcd.c:174: LCD_RS = 0; // Set RS pin low
                                    807 ;	assignBit
      000174 C2 92            [12]  808 	clr	_P1_2
                                    809 ;	lcd.c:175: LCD_RW = 1; // Set RW pin high
                                    810 ;	assignBit
      000176 D2 93            [12]  811 	setb	_P1_3
                                    812 ;	lcd.c:177: uint8_t address = lcd_ptr & (~0x80); // Mask out the MSB of lcd_ptr and assign it to address
      000178 90 F0 00         [24]  813 	mov	dptr,#_lcd_ptr
      00017B E0               [24]  814 	movx	a,@dptr
      00017C 54 7F            [12]  815 	anl	a,#0x7f
                                    816 ;	lcd.c:178: return address; // Return the address
                                    817 ;	lcd.c:179: }
      00017E F5 82            [12]  818 	mov	dpl,a
      000180 22               [24]  819 	ret
                                    820 ;------------------------------------------------------------
                                    821 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    822 ;------------------------------------------------------------
                                    823 ;address                   Allocated with name '_lcdgotoaddr_address_65536_104'
                                    824 ;------------------------------------------------------------
                                    825 ;	lcd.c:182: void lcdgotoaddr(unsigned char address){
                                    826 ;	-----------------------------------------
                                    827 ;	 function lcdgotoaddr
                                    828 ;	-----------------------------------------
      000181                        829 _lcdgotoaddr:
      000181 E5 82            [12]  830 	mov	a,dpl
      000183 90 04 05         [24]  831 	mov	dptr,#_lcdgotoaddr_address_65536_104
      000186 F0               [24]  832 	movx	@dptr,a
                                    833 ;	lcd.c:183: LCD_RS = 0; // Set RS pin low
                                    834 ;	assignBit
      000187 C2 92            [12]  835 	clr	_P1_2
                                    836 ;	lcd.c:184: LCD_RW = 0; // Set RW pin low
                                    837 ;	assignBit
      000189 C2 93            [12]  838 	clr	_P1_3
                                    839 ;	lcd.c:186: address = address | 0x80; // Set the MSB of address to 1
      00018B 90 04 05         [24]  840 	mov	dptr,#_lcdgotoaddr_address_65536_104
      00018E E0               [24]  841 	movx	a,@dptr
      00018F 43 E0 80         [24]  842 	orl	acc,#0x80
      000192 F0               [24]  843 	movx	@dptr,a
                                    844 ;	lcd.c:187: lcd_ptr = address; // Assign the address to lcd_ptr
      000193 90 04 05         [24]  845 	mov	dptr,#_lcdgotoaddr_address_65536_104
      000196 E0               [24]  846 	movx	a,@dptr
      000197 90 F0 00         [24]  847 	mov	dptr,#_lcd_ptr
      00019A F0               [24]  848 	movx	@dptr,a
                                    849 ;	lcd.c:188: lcdbusywait(); // Wait for the LCD to be not busy
                                    850 ;	lcd.c:189: }
      00019B 02 00 E2         [24]  851 	ljmp	_lcdbusywait
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'lcdgotoxy'
                                    854 ;------------------------------------------------------------
                                    855 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    856 ;row                       Allocated with name '_lcdgotoxy_row_65536_106'
                                    857 ;address                   Allocated with name '_lcdgotoxy_address_65536_107'
                                    858 ;------------------------------------------------------------
                                    859 ;	lcd.c:192: void lcdgotoxy(unsigned char row, unsigned char column) {
                                    860 ;	-----------------------------------------
                                    861 ;	 function lcdgotoxy
                                    862 ;	-----------------------------------------
      00019E                        863 _lcdgotoxy:
      00019E E5 82            [12]  864 	mov	a,dpl
      0001A0 90 04 07         [24]  865 	mov	dptr,#_lcdgotoxy_row_65536_106
      0001A3 F0               [24]  866 	movx	@dptr,a
                                    867 ;	lcd.c:194: switch (row) {          // Select address based on the row number
      0001A4 E0               [24]  868 	movx	a,@dptr
      0001A5 FF               [12]  869 	mov	r7,a
      0001A6 E4               [12]  870 	clr	a
      0001A7 BF 30 01         [24]  871 	cjne	r7,#0x30,00173$
      0001AA 04               [12]  872 	inc	a
      0001AB                        873 00173$:
      0001AB FE               [12]  874 	mov	r6,a
      0001AC 70 0F            [24]  875 	jnz	00101$
      0001AE BF 31 02         [24]  876 	cjne	r7,#0x31,00176$
      0001B1 80 11            [24]  877 	sjmp	00102$
      0001B3                        878 00176$:
      0001B3 BF 32 02         [24]  879 	cjne	r7,#0x32,00177$
      0001B6 80 14            [24]  880 	sjmp	00103$
      0001B8                        881 00177$:
                                    882 ;	lcd.c:195: case '0':
      0001B8 BF 33 21         [24]  883 	cjne	r7,#0x33,00105$
      0001BB 80 17            [24]  884 	sjmp	00104$
      0001BD                        885 00101$:
                                    886 ;	lcd.c:196: address = (0x00);
      0001BD 90 04 08         [24]  887 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001C0 E4               [12]  888 	clr	a
      0001C1 F0               [24]  889 	movx	@dptr,a
                                    890 ;	lcd.c:197: break;
                                    891 ;	lcd.c:198: case '1':
      0001C2 80 1D            [24]  892 	sjmp	00106$
      0001C4                        893 00102$:
                                    894 ;	lcd.c:199: address = (0x40);
      0001C4 90 04 08         [24]  895 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001C7 74 40            [12]  896 	mov	a,#0x40
      0001C9 F0               [24]  897 	movx	@dptr,a
                                    898 ;	lcd.c:200: break;
                                    899 ;	lcd.c:201: case '2':
      0001CA 80 15            [24]  900 	sjmp	00106$
      0001CC                        901 00103$:
                                    902 ;	lcd.c:202: address = (0x10);
      0001CC 90 04 08         [24]  903 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001CF 74 10            [12]  904 	mov	a,#0x10
      0001D1 F0               [24]  905 	movx	@dptr,a
                                    906 ;	lcd.c:203: break;
                                    907 ;	lcd.c:204: case '3':
      0001D2 80 0D            [24]  908 	sjmp	00106$
      0001D4                        909 00104$:
                                    910 ;	lcd.c:205: address = (0x50);
      0001D4 90 04 08         [24]  911 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001D7 74 50            [12]  912 	mov	a,#0x50
      0001D9 F0               [24]  913 	movx	@dptr,a
                                    914 ;	lcd.c:206: break;
                                    915 ;	lcd.c:207: default:
      0001DA 80 05            [24]  916 	sjmp	00106$
      0001DC                        917 00105$:
                                    918 ;	lcd.c:208: address = (0x00);
      0001DC 90 04 08         [24]  919 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001DF E4               [12]  920 	clr	a
      0001E0 F0               [24]  921 	movx	@dptr,a
                                    922 ;	lcd.c:210: }
      0001E1                        923 00106$:
                                    924 ;	lcd.c:212: if (row == '0' && column == '4') {
      0001E1 EE               [12]  925 	mov	a,r6
      0001E2 60 12            [24]  926 	jz	00120$
      0001E4 90 04 06         [24]  927 	mov	dptr,#_lcdgotoxy_PARM_2
      0001E7 E0               [24]  928 	movx	a,@dptr
      0001E8 FF               [12]  929 	mov	r7,a
      0001E9 BF 34 0A         [24]  930 	cjne	r7,#0x34,00120$
                                    931 ;	lcd.c:213: address |= 0x04;
      0001EC 90 04 08         [24]  932 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001EF E0               [24]  933 	movx	a,@dptr
      0001F0 43 E0 04         [24]  934 	orl	acc,#0x04
      0001F3 F0               [24]  935 	movx	@dptr,a
      0001F4 80 55            [24]  936 	sjmp	00121$
      0001F6                        937 00120$:
                                    938 ;	lcd.c:215: else if (row == '4' && column == '0') {
      0001F6 90 04 07         [24]  939 	mov	dptr,#_lcdgotoxy_row_65536_106
      0001F9 E0               [24]  940 	movx	a,@dptr
      0001FA FF               [12]  941 	mov	r7,a
      0001FB BF 34 12         [24]  942 	cjne	r7,#0x34,00116$
      0001FE 90 04 06         [24]  943 	mov	dptr,#_lcdgotoxy_PARM_2
      000201 E0               [24]  944 	movx	a,@dptr
      000202 FF               [12]  945 	mov	r7,a
      000203 BF 30 0A         [24]  946 	cjne	r7,#0x30,00116$
                                    947 ;	lcd.c:216: address |= 0x40;
      000206 90 04 08         [24]  948 	mov	dptr,#_lcdgotoxy_address_65536_107
      000209 E0               [24]  949 	movx	a,@dptr
      00020A 43 E0 40         [24]  950 	orl	acc,#0x40
      00020D F0               [24]  951 	movx	@dptr,a
      00020E 80 3B            [24]  952 	sjmp	00121$
      000210                        953 00116$:
                                    954 ;	lcd.c:218: else if (column >= 'A' && column <= 'F') {
      000210 90 04 06         [24]  955 	mov	dptr,#_lcdgotoxy_PARM_2
      000213 E0               [24]  956 	movx	a,@dptr
      000214 FF               [12]  957 	mov	r7,a
      000215 BF 41 00         [24]  958 	cjne	r7,#0x41,00186$
      000218                        959 00186$:
      000218 40 13            [24]  960 	jc	00112$
      00021A EF               [12]  961 	mov	a,r7
      00021B 24 B9            [12]  962 	add	a,#0xff - 0x46
      00021D 40 0E            [24]  963 	jc	00112$
                                    964 ;	lcd.c:219: address |= (column - '7');
      00021F 8F 06            [24]  965 	mov	ar6,r7
      000221 EE               [12]  966 	mov	a,r6
      000222 24 C9            [12]  967 	add	a,#0xc9
      000224 FE               [12]  968 	mov	r6,a
      000225 90 04 08         [24]  969 	mov	dptr,#_lcdgotoxy_address_65536_107
      000228 E0               [24]  970 	movx	a,@dptr
      000229 4E               [12]  971 	orl	a,r6
      00022A F0               [24]  972 	movx	@dptr,a
      00022B 80 1E            [24]  973 	sjmp	00121$
      00022D                        974 00112$:
                                    975 ;	lcd.c:221: else if (column >= '0' && column <= '9') {
      00022D BF 30 00         [24]  976 	cjne	r7,#0x30,00189$
      000230                        977 00189$:
      000230 40 11            [24]  978 	jc	00108$
      000232 EF               [12]  979 	mov	a,r7
      000233 24 C6            [12]  980 	add	a,#0xff - 0x39
      000235 40 0C            [24]  981 	jc	00108$
                                    982 ;	lcd.c:222: address |= (column - '0');
      000237 EF               [12]  983 	mov	a,r7
      000238 24 D0            [12]  984 	add	a,#0xd0
      00023A FF               [12]  985 	mov	r7,a
      00023B 90 04 08         [24]  986 	mov	dptr,#_lcdgotoxy_address_65536_107
      00023E E0               [24]  987 	movx	a,@dptr
      00023F 4F               [12]  988 	orl	a,r7
      000240 F0               [24]  989 	movx	@dptr,a
      000241 80 08            [24]  990 	sjmp	00121$
      000243                        991 00108$:
                                    992 ;	lcd.c:225: address |= ('8' - 48);
      000243 90 04 08         [24]  993 	mov	dptr,#_lcdgotoxy_address_65536_107
      000246 E0               [24]  994 	movx	a,@dptr
      000247 43 E0 08         [24]  995 	orl	acc,#0x08
      00024A F0               [24]  996 	movx	@dptr,a
      00024B                        997 00121$:
                                    998 ;	lcd.c:227: lcdgotoaddr(address);   // Call lcdgotoaddr function with the calculated address
      00024B 90 04 08         [24]  999 	mov	dptr,#_lcdgotoxy_address_65536_107
      00024E E0               [24] 1000 	movx	a,@dptr
      00024F F5 82            [12] 1001 	mov	dpl,a
      000251 12 01 81         [24] 1002 	lcall	_lcdgotoaddr
                                   1003 ;	lcd.c:228: lcdbusywait();          // Wait for the LCD to be not busy
                                   1004 ;	lcd.c:229: }
      000254 02 00 E2         [24] 1005 	ljmp	_lcdbusywait
                                   1006 ;------------------------------------------------------------
                                   1007 ;Allocation info for local variables in function 'lcdputch'
                                   1008 ;------------------------------------------------------------
                                   1009 ;cc                        Allocated with name '_lcdputch_cc_65536_114'
                                   1010 ;cursor_address            Allocated with name '_lcdputch_cursor_address_65536_115'
                                   1011 ;------------------------------------------------------------
                                   1012 ;	lcd.c:232: void lcdputch(char cc){
                                   1013 ;	-----------------------------------------
                                   1014 ;	 function lcdputch
                                   1015 ;	-----------------------------------------
      000257                       1016 _lcdputch:
      000257 E5 82            [12] 1017 	mov	a,dpl
      000259 90 04 09         [24] 1018 	mov	dptr,#_lcdputch_cc_65536_114
      00025C F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	lcd.c:233: unsigned char cursor_address = get_cursor_address(); // get the current cursor address
      00025D 12 01 74         [24] 1021 	lcall	_get_cursor_address
      000260 AF 82            [24] 1022 	mov	r7,dpl
                                   1023 ;	lcd.c:234: LCD_RS=1;       // set the RS pin high to send data
                                   1024 ;	assignBit
      000262 D2 92            [12] 1025 	setb	_P1_2
                                   1026 ;	lcd.c:235: LCD_RW=0;       // set the RW pin low to write to the LCD
                                   1027 ;	assignBit
      000264 C2 93            [12] 1028 	clr	_P1_3
                                   1029 ;	lcd.c:236: lcd_ptr=cc;     // put the character to the LCD data bus
      000266 90 04 09         [24] 1030 	mov	dptr,#_lcdputch_cc_65536_114
      000269 E0               [24] 1031 	movx	a,@dptr
      00026A 90 F0 00         [24] 1032 	mov	dptr,#_lcd_ptr
      00026D F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	lcd.c:237: lcdbusywait();  // wait until the LCD is not busy
      00026E C0 07            [24] 1035 	push	ar7
      000270 12 00 E2         [24] 1036 	lcall	_lcdbusywait
      000273 D0 07            [24] 1037 	pop	ar7
                                   1038 ;	lcd.c:240: switch(cursor_address) {
      000275 BF 0F 02         [24] 1039 	cjne	r7,#0x0f,00124$
      000278 80 0F            [24] 1040 	sjmp	00101$
      00027A                       1041 00124$:
      00027A BF 1F 02         [24] 1042 	cjne	r7,#0x1f,00125$
      00027D 80 22            [24] 1043 	sjmp	00103$
      00027F                       1044 00125$:
      00027F BF 4F 02         [24] 1045 	cjne	r7,#0x4f,00126$
      000282 80 11            [24] 1046 	sjmp	00102$
      000284                       1047 00126$:
                                   1048 ;	lcd.c:241: case 0x0F:
      000284 BF 5F 32         [24] 1049 	cjne	r7,#0x5f,00106$
      000287 80 24            [24] 1050 	sjmp	00104$
      000289                       1051 00101$:
                                   1052 ;	lcd.c:242: lcdgotoxy('1', '0');
      000289 90 04 06         [24] 1053 	mov	dptr,#_lcdgotoxy_PARM_2
      00028C 74 30            [12] 1054 	mov	a,#0x30
      00028E F0               [24] 1055 	movx	@dptr,a
      00028F 75 82 31         [24] 1056 	mov	dpl,#0x31
                                   1057 ;	lcd.c:243: break;
                                   1058 ;	lcd.c:244: case 0x4F:
      000292 02 01 9E         [24] 1059 	ljmp	_lcdgotoxy
      000295                       1060 00102$:
                                   1061 ;	lcd.c:245: lcdgotoxy('2', '0');
      000295 90 04 06         [24] 1062 	mov	dptr,#_lcdgotoxy_PARM_2
      000298 74 30            [12] 1063 	mov	a,#0x30
      00029A F0               [24] 1064 	movx	@dptr,a
      00029B 75 82 32         [24] 1065 	mov	dpl,#0x32
                                   1066 ;	lcd.c:246: break;
                                   1067 ;	lcd.c:247: case 0x1F:
      00029E 02 01 9E         [24] 1068 	ljmp	_lcdgotoxy
      0002A1                       1069 00103$:
                                   1070 ;	lcd.c:248: lcdgotoxy('0', '0');
      0002A1 90 04 06         [24] 1071 	mov	dptr,#_lcdgotoxy_PARM_2
      0002A4 74 30            [12] 1072 	mov	a,#0x30
      0002A6 F0               [24] 1073 	movx	@dptr,a
      0002A7 75 82 30         [24] 1074 	mov	dpl,#0x30
                                   1075 ;	lcd.c:249: break;
                                   1076 ;	lcd.c:250: case 0x5F:
      0002AA 02 01 9E         [24] 1077 	ljmp	_lcdgotoxy
      0002AD                       1078 00104$:
                                   1079 ;	lcd.c:251: lcdgotoxy('0', '0');
      0002AD 90 04 06         [24] 1080 	mov	dptr,#_lcdgotoxy_PARM_2
      0002B0 74 30            [12] 1081 	mov	a,#0x30
      0002B2 F0               [24] 1082 	movx	@dptr,a
      0002B3 75 82 30         [24] 1083 	mov	dpl,#0x30
                                   1084 ;	lcd.c:253: }
                                   1085 ;	lcd.c:254: }
      0002B6 02 01 9E         [24] 1086 	ljmp	_lcdgotoxy
      0002B9                       1087 00106$:
      0002B9 22               [24] 1088 	ret
                                   1089 ;------------------------------------------------------------
                                   1090 ;Allocation info for local variables in function 'lcdputstr'
                                   1091 ;------------------------------------------------------------
                                   1092 ;ss                        Allocated with name '_lcdputstr_ss_65536_117'
                                   1093 ;i                         Allocated with name '_lcdputstr_i_65536_118'
                                   1094 ;------------------------------------------------------------
                                   1095 ;	lcd.c:256: void lcdputstr(char *ss){
                                   1096 ;	-----------------------------------------
                                   1097 ;	 function lcdputstr
                                   1098 ;	-----------------------------------------
      0002BA                       1099 _lcdputstr:
      0002BA AF F0            [24] 1100 	mov	r7,b
      0002BC AE 83            [24] 1101 	mov	r6,dph
      0002BE E5 82            [12] 1102 	mov	a,dpl
      0002C0 90 04 0A         [24] 1103 	mov	dptr,#_lcdputstr_ss_65536_117
      0002C3 F0               [24] 1104 	movx	@dptr,a
      0002C4 EE               [12] 1105 	mov	a,r6
      0002C5 A3               [24] 1106 	inc	dptr
      0002C6 F0               [24] 1107 	movx	@dptr,a
      0002C7 EF               [12] 1108 	mov	a,r7
      0002C8 A3               [24] 1109 	inc	dptr
      0002C9 F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	lcd.c:258: while(ss[i]!='\0'){     // loop until end of string
      0002CA 90 04 0A         [24] 1112 	mov	dptr,#_lcdputstr_ss_65536_117
      0002CD E0               [24] 1113 	movx	a,@dptr
      0002CE FD               [12] 1114 	mov	r5,a
      0002CF A3               [24] 1115 	inc	dptr
      0002D0 E0               [24] 1116 	movx	a,@dptr
      0002D1 FE               [12] 1117 	mov	r6,a
      0002D2 A3               [24] 1118 	inc	dptr
      0002D3 E0               [24] 1119 	movx	a,@dptr
      0002D4 FF               [12] 1120 	mov	r7,a
      0002D5 7B 00            [12] 1121 	mov	r3,#0x00
      0002D7 7C 00            [12] 1122 	mov	r4,#0x00
      0002D9                       1123 00101$:
      0002D9 EB               [12] 1124 	mov	a,r3
      0002DA 2D               [12] 1125 	add	a,r5
      0002DB F8               [12] 1126 	mov	r0,a
      0002DC EC               [12] 1127 	mov	a,r4
      0002DD 3E               [12] 1128 	addc	a,r6
      0002DE F9               [12] 1129 	mov	r1,a
      0002DF 8F 02            [24] 1130 	mov	ar2,r7
      0002E1 88 82            [24] 1131 	mov	dpl,r0
      0002E3 89 83            [24] 1132 	mov	dph,r1
      0002E5 8A F0            [24] 1133 	mov	b,r2
      0002E7 12 2A E1         [24] 1134 	lcall	__gptrget
      0002EA FA               [12] 1135 	mov	r2,a
      0002EB 60 20            [24] 1136 	jz	00104$
                                   1137 ;	lcd.c:259: lcdputch(ss[i]);    // print each character
      0002ED 8A 82            [24] 1138 	mov	dpl,r2
      0002EF C0 07            [24] 1139 	push	ar7
      0002F1 C0 06            [24] 1140 	push	ar6
      0002F3 C0 05            [24] 1141 	push	ar5
      0002F5 C0 04            [24] 1142 	push	ar4
      0002F7 C0 03            [24] 1143 	push	ar3
      0002F9 12 02 57         [24] 1144 	lcall	_lcdputch
      0002FC D0 03            [24] 1145 	pop	ar3
      0002FE D0 04            [24] 1146 	pop	ar4
      000300 D0 05            [24] 1147 	pop	ar5
      000302 D0 06            [24] 1148 	pop	ar6
      000304 D0 07            [24] 1149 	pop	ar7
                                   1150 ;	lcd.c:260: i++;
      000306 0B               [12] 1151 	inc	r3
      000307 BB 00 CF         [24] 1152 	cjne	r3,#0x00,00101$
      00030A 0C               [12] 1153 	inc	r4
      00030B 80 CC            [24] 1154 	sjmp	00101$
      00030D                       1155 00104$:
                                   1156 ;	lcd.c:262: }
      00030D 22               [24] 1157 	ret
                                   1158 ;------------------------------------------------------------
                                   1159 ;Allocation info for local variables in function 'handler_lcdclear'
                                   1160 ;------------------------------------------------------------
                                   1161 ;	lcd.c:263: void handler_lcdclear(void){
                                   1162 ;	-----------------------------------------
                                   1163 ;	 function handler_lcdclear
                                   1164 ;	-----------------------------------------
      00030E                       1165 _handler_lcdclear:
                                   1166 ;	lcd.c:264: LCD_RS=0;               // set RS pin to low
                                   1167 ;	assignBit
      00030E C2 92            [12] 1168 	clr	_P1_2
                                   1169 ;	lcd.c:265: LCD_RW=0;               // set RW pin to low
                                   1170 ;	assignBit
      000310 C2 93            [12] 1171 	clr	_P1_3
                                   1172 ;	lcd.c:266: lcd_ptr=0x01;           // reset pointer to first line
      000312 90 F0 00         [24] 1173 	mov	dptr,#_lcd_ptr
      000315 74 01            [12] 1174 	mov	a,#0x01
      000317 F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	lcd.c:267: lcdbusywait();          // wait until LCD is ready
      000318 12 00 E2         [24] 1177 	lcall	_lcdbusywait
                                   1178 ;	lcd.c:268: lcdgotoaddr(0x00);      // move cursor to the beginning of the first line
      00031B 75 82 00         [24] 1179 	mov	dpl,#0x00
      00031E 12 01 81         [24] 1180 	lcall	_lcdgotoaddr
                                   1181 ;	lcd.c:269: lcdputstr("       ");   // write 7 spaces to clear the first line
      000321 90 2B 69         [24] 1182 	mov	dptr,#___str_0
      000324 75 F0 80         [24] 1183 	mov	b,#0x80
      000327 12 02 BA         [24] 1184 	lcall	_lcdputstr
                                   1185 ;	lcd.c:270: lcdgotoaddr(0x00);      // move cursor back to the beginning of the first line
      00032A 75 82 00         [24] 1186 	mov	dpl,#0x00
      00032D 12 01 81         [24] 1187 	lcall	_lcdgotoaddr
                                   1188 ;	lcd.c:271: printf_tiny("\033[1;33m\n\rLCD Cleared!!\r\n"); // print a message to indicate LCD has been cleared
      000330 74 71            [12] 1189 	mov	a,#___str_1
      000332 C0 E0            [24] 1190 	push	acc
      000334 74 2B            [12] 1191 	mov	a,#(___str_1 >> 8)
      000336 C0 E0            [24] 1192 	push	acc
      000338 12 1A 00         [24] 1193 	lcall	_printf_tiny
      00033B 15 81            [12] 1194 	dec	sp
      00033D 15 81            [12] 1195 	dec	sp
                                   1196 ;	lcd.c:272: }
      00033F 22               [24] 1197 	ret
                                   1198 ;------------------------------------------------------------
                                   1199 ;Allocation info for local variables in function 'handler_wr_c_lcd'
                                   1200 ;------------------------------------------------------------
                                   1201 ;lcd_input                 Allocated with name '_handler_wr_c_lcd_lcd_input_65536_123'
                                   1202 ;------------------------------------------------------------
                                   1203 ;	lcd.c:274: void handler_wr_c_lcd(void)
                                   1204 ;	-----------------------------------------
                                   1205 ;	 function handler_wr_c_lcd
                                   1206 ;	-----------------------------------------
      000340                       1207 _handler_wr_c_lcd:
                                   1208 ;	lcd.c:277: printf_tiny("\033[1;33m\n\rEnter Character to put on LCD !!\r\n"); // print a message to ask the user to enter a character
      000340 74 8A            [12] 1209 	mov	a,#___str_2
      000342 C0 E0            [24] 1210 	push	acc
      000344 74 2B            [12] 1211 	mov	a,#(___str_2 >> 8)
      000346 C0 E0            [24] 1212 	push	acc
      000348 12 1A 00         [24] 1213 	lcall	_printf_tiny
      00034B 15 81            [12] 1214 	dec	sp
      00034D 15 81            [12] 1215 	dec	sp
                                   1216 ;	lcd.c:278: lcd_input = getchar();  // get the input character from the user
      00034F 12 11 4A         [24] 1217 	lcall	_getchar
      000352 AE 82            [24] 1218 	mov	r6,dpl
                                   1219 ;	lcd.c:282: }
      000354 D2 00            [12] 1220 	setb	_handler_wr_c_lcd_sloc0_1_0
      000356 10 AF 02         [24] 1221 	jbc	ea,00103$
      000359 C2 00            [12] 1222 	clr	_handler_wr_c_lcd_sloc0_1_0
      00035B                       1223 00103$:
                                   1224 ;	lcd.c:281: lcdputch(lcd_input); // write the input character to the LCD
      00035B 8E 82            [24] 1225 	mov	dpl,r6
      00035D C0 06            [24] 1226 	push	ar6
      00035F 12 02 57         [24] 1227 	lcall	_lcdputch
      000362 A2 00            [12] 1228 	mov	c,_handler_wr_c_lcd_sloc0_1_0
      000364 92 AF            [24] 1229 	mov	ea,c
                                   1230 ;	lcd.c:283: printf_tiny("\n\rEntered Char = %c\n\r",lcd_input); // print the entered character
      000366 7F 00            [12] 1231 	mov	r7,#0x00
      000368 C0 07            [24] 1232 	push	ar7
      00036A 74 B6            [12] 1233 	mov	a,#___str_3
      00036C C0 E0            [24] 1234 	push	acc
      00036E 74 2B            [12] 1235 	mov	a,#(___str_3 >> 8)
      000370 C0 E0            [24] 1236 	push	acc
      000372 12 1A 00         [24] 1237 	lcall	_printf_tiny
      000375 E5 81            [12] 1238 	mov	a,sp
      000377 24 FC            [12] 1239 	add	a,#0xfc
      000379 F5 81            [12] 1240 	mov	sp,a
                                   1241 ;	lcd.c:284: printf_tiny("\n\r");
      00037B 74 CC            [12] 1242 	mov	a,#___str_4
      00037D C0 E0            [24] 1243 	push	acc
      00037F 74 2B            [12] 1244 	mov	a,#(___str_4 >> 8)
      000381 C0 E0            [24] 1245 	push	acc
      000383 12 1A 00         [24] 1246 	lcall	_printf_tiny
      000386 15 81            [12] 1247 	dec	sp
      000388 15 81            [12] 1248 	dec	sp
                                   1249 ;	lcd.c:285: }
      00038A 22               [24] 1250 	ret
                                   1251 ;------------------------------------------------------------
                                   1252 ;Allocation info for local variables in function 'handler_wr_str_lcd'
                                   1253 ;------------------------------------------------------------
                                   1254 ;k                         Allocated with name '_handler_wr_str_lcd_k_65537_127'
                                   1255 ;i                         Allocated with name '_handler_wr_str_lcd_i_65537_127'
                                   1256 ;ch                        Allocated with name '_handler_wr_str_lcd_ch_65537_127'
                                   1257 ;------------------------------------------------------------
                                   1258 ;	lcd.c:287: void handler_wr_str_lcd(void)
                                   1259 ;	-----------------------------------------
                                   1260 ;	 function handler_wr_str_lcd
                                   1261 ;	-----------------------------------------
      00038B                       1262 _handler_wr_str_lcd:
                                   1263 ;	lcd.c:289: printf_tiny("\033[1;33m\n\rEnter String to put on LCD !!\r\n"); // print a message to ask the user to enter a string
      00038B 74 CF            [12] 1264 	mov	a,#___str_5
      00038D C0 E0            [24] 1265 	push	acc
      00038F 74 2B            [12] 1266 	mov	a,#(___str_5 >> 8)
      000391 C0 E0            [24] 1267 	push	acc
      000393 12 1A 00         [24] 1268 	lcall	_printf_tiny
      000396 15 81            [12] 1269 	dec	sp
      000398 15 81            [12] 1270 	dec	sp
                                   1271 ;	lcd.c:290: int k = 1;
      00039A 90 04 0D         [24] 1272 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      00039D 74 01            [12] 1273 	mov	a,#0x01
      00039F F0               [24] 1274 	movx	@dptr,a
      0003A0 E4               [12] 1275 	clr	a
      0003A1 A3               [24] 1276 	inc	dptr
      0003A2 F0               [24] 1277 	movx	@dptr,a
                                   1278 ;	lcd.c:294: while(k){
      0003A3 7E 00            [12] 1279 	mov	r6,#0x00
      0003A5 7F 00            [12] 1280 	mov	r7,#0x00
      0003A7                       1281 00104$:
      0003A7 90 04 0D         [24] 1282 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      0003AA E0               [24] 1283 	movx	a,@dptr
      0003AB F5 F0            [12] 1284 	mov	b,a
      0003AD A3               [24] 1285 	inc	dptr
      0003AE E0               [24] 1286 	movx	a,@dptr
      0003AF 45 F0            [12] 1287 	orl	a,b
      0003B1 60 3D            [24] 1288 	jz	00106$
                                   1289 ;	lcd.c:295: ch=getchar();       // get each character from the user until the enter key is pressed
      0003B3 C0 07            [24] 1290 	push	ar7
      0003B5 C0 06            [24] 1291 	push	ar6
      0003B7 12 11 4A         [24] 1292 	lcall	_getchar
      0003BA AC 82            [24] 1293 	mov	r4,dpl
      0003BC AD 83            [24] 1294 	mov	r5,dph
      0003BE D0 06            [24] 1295 	pop	ar6
      0003C0 D0 07            [24] 1296 	pop	ar7
                                   1297 ;	lcd.c:296: if(ch=='\r'){
      0003C2 BC 0D 09         [24] 1298 	cjne	r4,#0x0d,00102$
                                   1299 ;	lcd.c:297: k=0;            // exit the loop when the enter key is pressed
      0003C5 90 04 0D         [24] 1300 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      0003C8 E4               [12] 1301 	clr	a
      0003C9 F0               [24] 1302 	movx	@dptr,a
      0003CA A3               [24] 1303 	inc	dptr
      0003CB F0               [24] 1304 	movx	@dptr,a
      0003CC 80 D9            [24] 1305 	sjmp	00104$
      0003CE                       1306 00102$:
                                   1307 ;	lcd.c:300: *(string+i)=ch; // store each character in a string array
      0003CE 90 04 00         [24] 1308 	mov	dptr,#_string
      0003D1 E0               [24] 1309 	movx	a,@dptr
      0003D2 FA               [12] 1310 	mov	r2,a
      0003D3 A3               [24] 1311 	inc	dptr
      0003D4 E0               [24] 1312 	movx	a,@dptr
      0003D5 FB               [12] 1313 	mov	r3,a
      0003D6 A3               [24] 1314 	inc	dptr
      0003D7 E0               [24] 1315 	movx	a,@dptr
      0003D8 FD               [12] 1316 	mov	r5,a
      0003D9 EE               [12] 1317 	mov	a,r6
      0003DA 2A               [12] 1318 	add	a,r2
      0003DB FA               [12] 1319 	mov	r2,a
      0003DC EF               [12] 1320 	mov	a,r7
      0003DD 3B               [12] 1321 	addc	a,r3
      0003DE FB               [12] 1322 	mov	r3,a
      0003DF 8A 82            [24] 1323 	mov	dpl,r2
      0003E1 8B 83            [24] 1324 	mov	dph,r3
      0003E3 8D F0            [24] 1325 	mov	b,r5
      0003E5 EC               [12] 1326 	mov	a,r4
      0003E6 12 19 E5         [24] 1327 	lcall	__gptrput
                                   1328 ;	lcd.c:301: i++;
      0003E9 0E               [12] 1329 	inc	r6
      0003EA BE 00 BA         [24] 1330 	cjne	r6,#0x00,00104$
      0003ED 0F               [12] 1331 	inc	r7
      0003EE 80 B7            [24] 1332 	sjmp	00104$
      0003F0                       1333 00106$:
                                   1334 ;	lcd.c:304: *(string+i)='\0';       // add null character to mark the end of the string
      0003F0 90 04 00         [24] 1335 	mov	dptr,#_string
      0003F3 E0               [24] 1336 	movx	a,@dptr
      0003F4 FB               [12] 1337 	mov	r3,a
      0003F5 A3               [24] 1338 	inc	dptr
      0003F6 E0               [24] 1339 	movx	a,@dptr
      0003F7 FC               [12] 1340 	mov	r4,a
      0003F8 A3               [24] 1341 	inc	dptr
      0003F9 E0               [24] 1342 	movx	a,@dptr
      0003FA FD               [12] 1343 	mov	r5,a
      0003FB EE               [12] 1344 	mov	a,r6
      0003FC 2B               [12] 1345 	add	a,r3
      0003FD FE               [12] 1346 	mov	r6,a
      0003FE EF               [12] 1347 	mov	a,r7
      0003FF 3C               [12] 1348 	addc	a,r4
      000400 FF               [12] 1349 	mov	r7,a
      000401 8D 02            [24] 1350 	mov	ar2,r5
      000403 8E 82            [24] 1351 	mov	dpl,r6
      000405 8F 83            [24] 1352 	mov	dph,r7
      000407 8A F0            [24] 1353 	mov	b,r2
      000409 E4               [12] 1354 	clr	a
      00040A 12 19 E5         [24] 1355 	lcall	__gptrput
                                   1356 ;	lcd.c:308: }
      00040D D2 01            [12] 1357 	setb	_handler_wr_str_lcd_sloc0_1_0
      00040F 10 AF 02         [24] 1358 	jbc	ea,00126$
      000412 C2 01            [12] 1359 	clr	_handler_wr_str_lcd_sloc0_1_0
      000414                       1360 00126$:
                                   1361 ;	lcd.c:307: lcdputstr(string);  // write the string to the LCD
      000414 90 04 00         [24] 1362 	mov	dptr,#_string
      000417 E0               [24] 1363 	movx	a,@dptr
      000418 FD               [12] 1364 	mov	r5,a
      000419 A3               [24] 1365 	inc	dptr
      00041A E0               [24] 1366 	movx	a,@dptr
      00041B FE               [12] 1367 	mov	r6,a
      00041C A3               [24] 1368 	inc	dptr
      00041D E0               [24] 1369 	movx	a,@dptr
      00041E FF               [12] 1370 	mov	r7,a
      00041F 8D 82            [24] 1371 	mov	dpl,r5
      000421 8E 83            [24] 1372 	mov	dph,r6
      000423 8F F0            [24] 1373 	mov	b,r7
      000425 12 02 BA         [24] 1374 	lcall	_lcdputstr
      000428 A2 01            [12] 1375 	mov	c,_handler_wr_str_lcd_sloc0_1_0
      00042A 92 AF            [24] 1376 	mov	ea,c
                                   1377 ;	lcd.c:309: printf_tiny("Entered String = %s\n\r",string); // print the entered string
      00042C 90 04 00         [24] 1378 	mov	dptr,#_string
      00042F E0               [24] 1379 	movx	a,@dptr
      000430 C0 E0            [24] 1380 	push	acc
      000432 A3               [24] 1381 	inc	dptr
      000433 E0               [24] 1382 	movx	a,@dptr
      000434 C0 E0            [24] 1383 	push	acc
      000436 A3               [24] 1384 	inc	dptr
      000437 E0               [24] 1385 	movx	a,@dptr
      000438 C0 E0            [24] 1386 	push	acc
      00043A 74 F8            [12] 1387 	mov	a,#___str_6
      00043C C0 E0            [24] 1388 	push	acc
      00043E 74 2B            [12] 1389 	mov	a,#(___str_6 >> 8)
      000440 C0 E0            [24] 1390 	push	acc
      000442 12 1A 00         [24] 1391 	lcall	_printf_tiny
      000445 E5 81            [12] 1392 	mov	a,sp
      000447 24 FB            [12] 1393 	add	a,#0xfb
      000449 F5 81            [12] 1394 	mov	sp,a
                                   1395 ;	lcd.c:310: printf_tiny("\n\r");
      00044B 74 CC            [12] 1396 	mov	a,#___str_4
      00044D C0 E0            [24] 1397 	push	acc
      00044F 74 2B            [12] 1398 	mov	a,#(___str_4 >> 8)
      000451 C0 E0            [24] 1399 	push	acc
      000453 12 1A 00         [24] 1400 	lcall	_printf_tiny
      000456 15 81            [12] 1401 	dec	sp
      000458 15 81            [12] 1402 	dec	sp
                                   1403 ;	lcd.c:311: }
      00045A 22               [24] 1404 	ret
                                   1405 ;------------------------------------------------------------
                                   1406 ;Allocation info for local variables in function 'handler_lcdgotoxy'
                                   1407 ;------------------------------------------------------------
                                   1408 ;x_coordinate_ch           Allocated with name '_handler_lcdgotoxy_x_coordinate_ch_65536_133'
                                   1409 ;y_coordinate_ch           Allocated with name '_handler_lcdgotoxy_y_coordinate_ch_65537_134'
                                   1410 ;------------------------------------------------------------
                                   1411 ;	lcd.c:314: void handler_lcdgotoxy(void)
                                   1412 ;	-----------------------------------------
                                   1413 ;	 function handler_lcdgotoxy
                                   1414 ;	-----------------------------------------
      00045B                       1415 _handler_lcdgotoxy:
                                   1416 ;	lcd.c:318: printf_tiny("\033[1;33m\n\rEnter X-Co-ordinate to put on LCD !!\r\n");
      00045B 74 0E            [12] 1417 	mov	a,#___str_7
      00045D C0 E0            [24] 1418 	push	acc
      00045F 74 2C            [12] 1419 	mov	a,#(___str_7 >> 8)
      000461 C0 E0            [24] 1420 	push	acc
      000463 12 1A 00         [24] 1421 	lcall	_printf_tiny
      000466 15 81            [12] 1422 	dec	sp
      000468 15 81            [12] 1423 	dec	sp
                                   1424 ;	lcd.c:319: x_coordinate_ch  = toupper(getchar());
      00046A 12 11 4A         [24] 1425 	lcall	_getchar
      00046D 12 20 28         [24] 1426 	lcall	_toupper
      000470 AE 82            [24] 1427 	mov	r6,dpl
                                   1428 ;	lcd.c:322: printf_tiny("X-Cordinate = %c\n\r",x_coordinate_ch);
      000472 8E 05            [24] 1429 	mov	ar5,r6
      000474 7F 00            [12] 1430 	mov	r7,#0x00
      000476 C0 06            [24] 1431 	push	ar6
      000478 C0 05            [24] 1432 	push	ar5
      00047A C0 07            [24] 1433 	push	ar7
      00047C 74 3E            [12] 1434 	mov	a,#___str_8
      00047E C0 E0            [24] 1435 	push	acc
      000480 74 2C            [12] 1436 	mov	a,#(___str_8 >> 8)
      000482 C0 E0            [24] 1437 	push	acc
      000484 12 1A 00         [24] 1438 	lcall	_printf_tiny
      000487 E5 81            [12] 1439 	mov	a,sp
      000489 24 FC            [12] 1440 	add	a,#0xfc
      00048B F5 81            [12] 1441 	mov	sp,a
                                   1442 ;	lcd.c:325: printf_tiny("\033[1;33m\n\rEnter Y-Co-ordinate to put on LCD !!\r\n");
      00048D 74 51            [12] 1443 	mov	a,#___str_9
      00048F C0 E0            [24] 1444 	push	acc
      000491 74 2C            [12] 1445 	mov	a,#(___str_9 >> 8)
      000493 C0 E0            [24] 1446 	push	acc
      000495 12 1A 00         [24] 1447 	lcall	_printf_tiny
      000498 15 81            [12] 1448 	dec	sp
      00049A 15 81            [12] 1449 	dec	sp
                                   1450 ;	lcd.c:326: char y_coordinate_ch  = toupper(getchar());
      00049C 12 11 4A         [24] 1451 	lcall	_getchar
      00049F 12 20 28         [24] 1452 	lcall	_toupper
      0004A2 AD 82            [24] 1453 	mov	r5,dpl
                                   1454 ;	lcd.c:329: printf_tiny("Y-Cordinate = %c\n\r",y_coordinate_ch);
      0004A4 8D 04            [24] 1455 	mov	ar4,r5
      0004A6 7F 00            [12] 1456 	mov	r7,#0x00
      0004A8 C0 05            [24] 1457 	push	ar5
      0004AA C0 04            [24] 1458 	push	ar4
      0004AC C0 07            [24] 1459 	push	ar7
      0004AE 74 81            [12] 1460 	mov	a,#___str_10
      0004B0 C0 E0            [24] 1461 	push	acc
      0004B2 74 2C            [12] 1462 	mov	a,#(___str_10 >> 8)
      0004B4 C0 E0            [24] 1463 	push	acc
      0004B6 12 1A 00         [24] 1464 	lcall	_printf_tiny
      0004B9 E5 81            [12] 1465 	mov	a,sp
      0004BB 24 FC            [12] 1466 	add	a,#0xfc
      0004BD F5 81            [12] 1467 	mov	sp,a
      0004BF D0 05            [24] 1468 	pop	ar5
      0004C1 D0 06            [24] 1469 	pop	ar6
                                   1470 ;	lcd.c:332: if (x_coordinate_ch >= '0' && x_coordinate_ch <= '3'){
      0004C3 BE 30 00         [24] 1471 	cjne	r6,#0x30,00119$
      0004C6                       1472 00119$:
      0004C6 40 05            [24] 1473 	jc	00106$
      0004C8 EE               [12] 1474 	mov	a,r6
      0004C9 24 CC            [12] 1475 	add	a,#0xff - 0x33
      0004CB 50 1A            [24] 1476 	jnc	00107$
      0004CD                       1477 00106$:
                                   1478 ;	lcd.c:334: } else if (y_coordinate_ch >= '0' && y_coordinate_ch <= 'F') {
      0004CD BD 30 00         [24] 1479 	cjne	r5,#0x30,00122$
      0004D0                       1480 00122$:
      0004D0 40 05            [24] 1481 	jc	00102$
      0004D2 ED               [12] 1482 	mov	a,r5
      0004D3 24 B9            [12] 1483 	add	a,#0xff - 0x46
      0004D5 50 10            [24] 1484 	jnc	00107$
      0004D7                       1485 00102$:
                                   1486 ;	lcd.c:337: printf_tiny("\033[1;31mInvalid coordinate!!\n\r");
      0004D7 74 94            [12] 1487 	mov	a,#___str_11
      0004D9 C0 E0            [24] 1488 	push	acc
      0004DB 74 2C            [12] 1489 	mov	a,#(___str_11 >> 8)
      0004DD C0 E0            [24] 1490 	push	acc
      0004DF 12 1A 00         [24] 1491 	lcall	_printf_tiny
      0004E2 15 81            [12] 1492 	dec	sp
      0004E4 15 81            [12] 1493 	dec	sp
                                   1494 ;	lcd.c:338: return;
      0004E6 22               [24] 1495 	ret
      0004E7                       1496 00107$:
                                   1497 ;	lcd.c:344: }
      0004E7 D2 02            [12] 1498 	setb	_handler_lcdgotoxy_sloc0_1_0
      0004E9 10 AF 02         [24] 1499 	jbc	ea,00125$
      0004EC C2 02            [12] 1500 	clr	_handler_lcdgotoxy_sloc0_1_0
      0004EE                       1501 00125$:
                                   1502 ;	lcd.c:343: lcdgotoxy(x_coordinate_ch, y_coordinate_ch);
      0004EE 90 04 06         [24] 1503 	mov	dptr,#_lcdgotoxy_PARM_2
      0004F1 ED               [12] 1504 	mov	a,r5
      0004F2 F0               [24] 1505 	movx	@dptr,a
      0004F3 8E 82            [24] 1506 	mov	dpl,r6
      0004F5 12 01 9E         [24] 1507 	lcall	_lcdgotoxy
      0004F8 A2 02            [12] 1508 	mov	c,_handler_lcdgotoxy_sloc0_1_0
      0004FA 92 AF            [24] 1509 	mov	ea,c
                                   1510 ;	lcd.c:347: printf_tiny("\033[1;33m\n\rCursor Movement Completed!!\r\n");
      0004FC 74 B2            [12] 1511 	mov	a,#___str_12
      0004FE C0 E0            [24] 1512 	push	acc
      000500 74 2C            [12] 1513 	mov	a,#(___str_12 >> 8)
      000502 C0 E0            [24] 1514 	push	acc
      000504 12 1A 00         [24] 1515 	lcall	_printf_tiny
      000507 15 81            [12] 1516 	dec	sp
      000509 15 81            [12] 1517 	dec	sp
                                   1518 ;	lcd.c:348: }
      00050B 22               [24] 1519 	ret
                                   1520 ;------------------------------------------------------------
                                   1521 ;Allocation info for local variables in function 'handler_lcdgotoaddress'
                                   1522 ;------------------------------------------------------------
                                   1523 ;str                       Allocated with name '_handler_lcdgotoaddress_str_65536_140'
                                   1524 ;i                         Allocated with name '_handler_lcdgotoaddress_i_65537_141'
                                   1525 ;c                         Allocated with name '_handler_lcdgotoaddress_c_65537_141'
                                   1526 ;num                       Allocated with name '_handler_lcdgotoaddress_num_65538_143'
                                   1527 ;------------------------------------------------------------
                                   1528 ;	lcd.c:352: void handler_lcdgotoaddress(void)
                                   1529 ;	-----------------------------------------
                                   1530 ;	 function handler_lcdgotoaddress
                                   1531 ;	-----------------------------------------
      00050C                       1532 _handler_lcdgotoaddress:
                                   1533 ;	lcd.c:355: printf_tiny("\033[1;33m\n\rEnter address to put onto the LCD !!\r\n");
      00050C 74 D9            [12] 1534 	mov	a,#___str_13
      00050E C0 E0            [24] 1535 	push	acc
      000510 74 2C            [12] 1536 	mov	a,#(___str_13 >> 8)
      000512 C0 E0            [24] 1537 	push	acc
      000514 12 1A 00         [24] 1538 	lcall	_printf_tiny
      000517 15 81            [12] 1539 	dec	sp
      000519 15 81            [12] 1540 	dec	sp
                                   1541 ;	lcd.c:359: char c = getchar();
      00051B 12 11 4A         [24] 1542 	lcall	_getchar
      00051E AE 82            [24] 1543 	mov	r6,dpl
      000520 90 04 41         [24] 1544 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      000523 EE               [12] 1545 	mov	a,r6
      000524 F0               [24] 1546 	movx	@dptr,a
                                   1547 ;	lcd.c:360: while (c != '\r' && i < 49) { // Read characters until enter is pressed or limit is reached
      000525 7E 00            [12] 1548 	mov	r6,#0x00
      000527 7F 00            [12] 1549 	mov	r7,#0x00
      000529                       1550 00102$:
      000529 90 04 41         [24] 1551 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      00052C E0               [24] 1552 	movx	a,@dptr
      00052D FD               [12] 1553 	mov	r5,a
      00052E BD 0D 02         [24] 1554 	cjne	r5,#0x0d,00120$
      000531 80 32            [24] 1555 	sjmp	00104$
      000533                       1556 00120$:
      000533 C3               [12] 1557 	clr	c
      000534 EE               [12] 1558 	mov	a,r6
      000535 94 31            [12] 1559 	subb	a,#0x31
      000537 EF               [12] 1560 	mov	a,r7
      000538 64 80            [12] 1561 	xrl	a,#0x80
      00053A 94 80            [12] 1562 	subb	a,#0x80
      00053C 50 27            [24] 1563 	jnc	00104$
                                   1564 ;	lcd.c:361: str[i++] = c;
      00053E EE               [12] 1565 	mov	a,r6
      00053F 24 0F            [12] 1566 	add	a,#_handler_lcdgotoaddress_str_65536_140
      000541 F5 82            [12] 1567 	mov	dpl,a
      000543 EF               [12] 1568 	mov	a,r7
      000544 34 04            [12] 1569 	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      000546 F5 83            [12] 1570 	mov	dph,a
      000548 0E               [12] 1571 	inc	r6
      000549 BE 00 01         [24] 1572 	cjne	r6,#0x00,00122$
      00054C 0F               [12] 1573 	inc	r7
      00054D                       1574 00122$:
      00054D ED               [12] 1575 	mov	a,r5
      00054E F0               [24] 1576 	movx	@dptr,a
                                   1577 ;	lcd.c:362: c = getchar();
      00054F C0 07            [24] 1578 	push	ar7
      000551 C0 06            [24] 1579 	push	ar6
      000553 12 11 4A         [24] 1580 	lcall	_getchar
      000556 AC 82            [24] 1581 	mov	r4,dpl
      000558 AD 83            [24] 1582 	mov	r5,dph
      00055A D0 06            [24] 1583 	pop	ar6
      00055C D0 07            [24] 1584 	pop	ar7
      00055E 90 04 41         [24] 1585 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      000561 EC               [12] 1586 	mov	a,r4
      000562 F0               [24] 1587 	movx	@dptr,a
      000563 80 C4            [24] 1588 	sjmp	00102$
      000565                       1589 00104$:
                                   1590 ;	lcd.c:364: str[i] = '\0';
      000565 EE               [12] 1591 	mov	a,r6
      000566 24 0F            [12] 1592 	add	a,#_handler_lcdgotoaddress_str_65536_140
      000568 F5 82            [12] 1593 	mov	dpl,a
      00056A EF               [12] 1594 	mov	a,r7
      00056B 34 04            [12] 1595 	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      00056D F5 83            [12] 1596 	mov	dph,a
      00056F E4               [12] 1597 	clr	a
      000570 F0               [24] 1598 	movx	@dptr,a
                                   1599 ;	lcd.c:367: printf("Address Entered = %s\n\r",str);
      000571 74 0F            [12] 1600 	mov	a,#_handler_lcdgotoaddress_str_65536_140
      000573 C0 E0            [24] 1601 	push	acc
      000575 74 04            [12] 1602 	mov	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      000577 C0 E0            [24] 1603 	push	acc
      000579 E4               [12] 1604 	clr	a
      00057A C0 E0            [24] 1605 	push	acc
      00057C 74 09            [12] 1606 	mov	a,#___str_14
      00057E C0 E0            [24] 1607 	push	acc
      000580 74 2D            [12] 1608 	mov	a,#(___str_14 >> 8)
      000582 C0 E0            [24] 1609 	push	acc
      000584 74 80            [12] 1610 	mov	a,#0x80
      000586 C0 E0            [24] 1611 	push	acc
      000588 12 20 B5         [24] 1612 	lcall	_printf
      00058B E5 81            [12] 1613 	mov	a,sp
      00058D 24 FA            [12] 1614 	add	a,#0xfa
      00058F F5 81            [12] 1615 	mov	sp,a
                                   1616 ;	lcd.c:370: long int num = strtol(str, NULL, 16);
      000591 90 04 9E         [24] 1617 	mov	dptr,#_strtol_PARM_2
      000594 E4               [12] 1618 	clr	a
      000595 F0               [24] 1619 	movx	@dptr,a
      000596 A3               [24] 1620 	inc	dptr
      000597 F0               [24] 1621 	movx	@dptr,a
      000598 A3               [24] 1622 	inc	dptr
      000599 F0               [24] 1623 	movx	@dptr,a
      00059A 90 04 A1         [24] 1624 	mov	dptr,#_strtol_PARM_3
      00059D 74 10            [12] 1625 	mov	a,#0x10
      00059F F0               [24] 1626 	movx	@dptr,a
      0005A0 E4               [12] 1627 	clr	a
      0005A1 A3               [24] 1628 	inc	dptr
      0005A2 F0               [24] 1629 	movx	@dptr,a
      0005A3 90 04 0F         [24] 1630 	mov	dptr,#_handler_lcdgotoaddress_str_65536_140
      0005A6 75 F0 00         [24] 1631 	mov	b,#0x00
      0005A9 12 17 B8         [24] 1632 	lcall	_strtol
      0005AC AC 82            [24] 1633 	mov	r4,dpl
                                   1634 ;	lcd.c:376: }
      0005AE D2 03            [12] 1635 	setb	_handler_lcdgotoaddress_sloc0_1_0
      0005B0 10 AF 02         [24] 1636 	jbc	ea,00123$
      0005B3 C2 03            [12] 1637 	clr	_handler_lcdgotoaddress_sloc0_1_0
      0005B5                       1638 00123$:
                                   1639 ;	lcd.c:375: lcdgotoaddr((char)num);
      0005B5 8C 82            [24] 1640 	mov	dpl,r4
      0005B7 12 01 81         [24] 1641 	lcall	_lcdgotoaddr
      0005BA A2 03            [12] 1642 	mov	c,_handler_lcdgotoaddress_sloc0_1_0
      0005BC 92 AF            [24] 1643 	mov	ea,c
                                   1644 ;	lcd.c:377: return;
                                   1645 ;	lcd.c:378: }
      0005BE 22               [24] 1646 	ret
                                   1647 ;------------------------------------------------------------
                                   1648 ;Allocation info for local variables in function 'handler_stop_time'
                                   1649 ;------------------------------------------------------------
                                   1650 ;	lcd.c:381: void handler_stop_time(void)
                                   1651 ;	-----------------------------------------
                                   1652 ;	 function handler_stop_time
                                   1653 ;	-----------------------------------------
      0005BF                       1654 _handler_stop_time:
                                   1655 ;	lcd.c:383: printf_tiny("\033[1;33m\n\rTime Paused !!\r\n");
      0005BF 74 20            [12] 1656 	mov	a,#___str_15
      0005C1 C0 E0            [24] 1657 	push	acc
      0005C3 74 2D            [12] 1658 	mov	a,#(___str_15 >> 8)
      0005C5 C0 E0            [24] 1659 	push	acc
      0005C7 12 1A 00         [24] 1660 	lcall	_printf_tiny
      0005CA 15 81            [12] 1661 	dec	sp
      0005CC 15 81            [12] 1662 	dec	sp
                                   1663 ;	lcd.c:386: TCON &=~(0x10);
      0005CE 53 88 EF         [24] 1664 	anl	_TCON,#0xef
                                   1665 ;	lcd.c:387: }
      0005D1 22               [24] 1666 	ret
                                   1667 ;------------------------------------------------------------
                                   1668 ;Allocation info for local variables in function 'handler_resume_time'
                                   1669 ;------------------------------------------------------------
                                   1670 ;	lcd.c:390: void handler_resume_time(void)
                                   1671 ;	-----------------------------------------
                                   1672 ;	 function handler_resume_time
                                   1673 ;	-----------------------------------------
      0005D2                       1674 _handler_resume_time:
                                   1675 ;	lcd.c:393: printf_tiny("\033[1;33m\n\rTime Resumed !!\r\n");
      0005D2 74 3A            [12] 1676 	mov	a,#___str_16
      0005D4 C0 E0            [24] 1677 	push	acc
      0005D6 74 2D            [12] 1678 	mov	a,#(___str_16 >> 8)
      0005D8 C0 E0            [24] 1679 	push	acc
      0005DA 12 1A 00         [24] 1680 	lcall	_printf_tiny
      0005DD 15 81            [12] 1681 	dec	sp
      0005DF 15 81            [12] 1682 	dec	sp
                                   1683 ;	lcd.c:396: TCON |=0x10;
      0005E1 43 88 10         [24] 1684 	orl	_TCON,#0x10
                                   1685 ;	lcd.c:397: }
      0005E4 22               [24] 1686 	ret
                                   1687 ;------------------------------------------------------------
                                   1688 ;Allocation info for local variables in function 'handler_reset_time'
                                   1689 ;------------------------------------------------------------
                                   1690 ;	lcd.c:400: void handler_reset_time(void)
                                   1691 ;	-----------------------------------------
                                   1692 ;	 function handler_reset_time
                                   1693 ;	-----------------------------------------
      0005E5                       1694 _handler_reset_time:
                                   1695 ;	lcd.c:403: printf_tiny("\033[1;33m\n\rTime Reset !!\r\n");
      0005E5 74 55            [12] 1696 	mov	a,#___str_17
      0005E7 C0 E0            [24] 1697 	push	acc
      0005E9 74 2D            [12] 1698 	mov	a,#(___str_17 >> 8)
      0005EB C0 E0            [24] 1699 	push	acc
      0005ED 12 1A 00         [24] 1700 	lcall	_printf_tiny
      0005F0 15 81            [12] 1701 	dec	sp
      0005F2 15 81            [12] 1702 	dec	sp
                                   1703 ;	lcd.c:406: tenth_of_second     = '0';
      0005F4 90 05 12         [24] 1704 	mov	dptr,#_tenth_of_second
      0005F7 74 30            [12] 1705 	mov	a,#0x30
      0005F9 F0               [24] 1706 	movx	@dptr,a
                                   1707 ;	lcd.c:407: seconds_ones_digit  = '0';
      0005FA 90 05 13         [24] 1708 	mov	dptr,#_seconds_ones_digit
      0005FD F0               [24] 1709 	movx	@dptr,a
                                   1710 ;	lcd.c:408: seconds_tens_digit  = '0';
      0005FE 90 05 14         [24] 1711 	mov	dptr,#_seconds_tens_digit
      000601 F0               [24] 1712 	movx	@dptr,a
                                   1713 ;	lcd.c:409: minutes_ones_digit  = '0';
      000602 90 05 15         [24] 1714 	mov	dptr,#_minutes_ones_digit
      000605 F0               [24] 1715 	movx	@dptr,a
                                   1716 ;	lcd.c:410: minutes_tens_digit  = '0';
      000606 90 05 16         [24] 1717 	mov	dptr,#_minutes_tens_digit
      000609 F0               [24] 1718 	movx	@dptr,a
                                   1719 ;	lcd.c:411: }
      00060A 22               [24] 1720 	ret
                                   1721 ;------------------------------------------------------------
                                   1722 ;Allocation info for local variables in function 'read_lcd_address'
                                   1723 ;------------------------------------------------------------
                                   1724 ;address                   Allocated with name '_read_lcd_address_PARM_2'
                                   1725 ;is_ddram                  Allocated with name '_read_lcd_address_is_ddram_65536_151'
                                   1726 ;------------------------------------------------------------
                                   1727 ;	lcd.c:414: uint8_t read_lcd_address(uint8_t is_ddram, uint8_t address) {
                                   1728 ;	-----------------------------------------
                                   1729 ;	 function read_lcd_address
                                   1730 ;	-----------------------------------------
      00060B                       1731 _read_lcd_address:
      00060B E5 82            [12] 1732 	mov	a,dpl
      00060D 90 04 43         [24] 1733 	mov	dptr,#_read_lcd_address_is_ddram_65536_151
      000610 F0               [24] 1734 	movx	@dptr,a
                                   1735 ;	lcd.c:416: if (is_ddram == 1) {
      000611 E0               [24] 1736 	movx	a,@dptr
      000612 FF               [12] 1737 	mov	r7,a
      000613 BF 01 0B         [24] 1738 	cjne	r7,#0x01,00102$
                                   1739 ;	lcd.c:417: lcdgotoaddr(address);
      000616 90 04 42         [24] 1740 	mov	dptr,#_read_lcd_address_PARM_2
      000619 E0               [24] 1741 	movx	a,@dptr
      00061A F5 82            [12] 1742 	mov	dpl,a
      00061C 12 01 81         [24] 1743 	lcall	_lcdgotoaddr
      00061F 80 0F            [24] 1744 	sjmp	00103$
      000621                       1745 00102$:
                                   1746 ;	lcd.c:419: LCD_RS = 0;
                                   1747 ;	assignBit
      000621 C2 92            [12] 1748 	clr	_P1_2
                                   1749 ;	lcd.c:420: LCD_RW = 0;
                                   1750 ;	assignBit
      000623 C2 93            [12] 1751 	clr	_P1_3
                                   1752 ;	lcd.c:421: lcd_ptr = address;
      000625 90 04 42         [24] 1753 	mov	dptr,#_read_lcd_address_PARM_2
      000628 E0               [24] 1754 	movx	a,@dptr
      000629 90 F0 00         [24] 1755 	mov	dptr,#_lcd_ptr
      00062C F0               [24] 1756 	movx	@dptr,a
                                   1757 ;	lcd.c:422: lcdbusywait();
      00062D 12 00 E2         [24] 1758 	lcall	_lcdbusywait
      000630                       1759 00103$:
                                   1760 ;	lcd.c:426: LCD_RS = 1;
                                   1761 ;	assignBit
      000630 D2 92            [12] 1762 	setb	_P1_2
                                   1763 ;	lcd.c:427: LCD_RW = 1;
                                   1764 ;	assignBit
      000632 D2 93            [12] 1765 	setb	_P1_3
                                   1766 ;	lcd.c:430: return lcd_ptr;
      000634 90 F0 00         [24] 1767 	mov	dptr,#_lcd_ptr
      000637 E0               [24] 1768 	movx	a,@dptr
                                   1769 ;	lcd.c:431: }
      000638 F5 82            [12] 1770 	mov	dpl,a
      00063A 22               [24] 1771 	ret
                                   1772 ;------------------------------------------------------------
                                   1773 ;Allocation info for local variables in function 'handler_lcd_hexdump'
                                   1774 ;------------------------------------------------------------
                                   1775 ;k                         Allocated with name '_handler_lcd_hexdump_k_196608_158'
                                   1776 ;k                         Allocated with name '_handler_lcd_hexdump_k_196608_161'
                                   1777 ;------------------------------------------------------------
                                   1778 ;	lcd.c:432: void handler_lcd_hexdump(void)
                                   1779 ;	-----------------------------------------
                                   1780 ;	 function handler_lcd_hexdump
                                   1781 ;	-----------------------------------------
      00063B                       1782 _handler_lcd_hexdump:
                                   1783 ;	lcd.c:460: }
      00063B D2 04            [12] 1784 	setb	_handler_lcd_hexdump_sloc0_1_0
      00063D 10 AF 02         [24] 1785 	jbc	ea,00141$
      000640 C2 04            [12] 1786 	clr	_handler_lcd_hexdump_sloc0_1_0
      000642                       1787 00141$:
                                   1788 ;	lcd.c:435: printf("\033[1;34m");                           // Set terminal color to blue
      000642 74 6E            [12] 1789 	mov	a,#___str_18
      000644 C0 E0            [24] 1790 	push	acc
      000646 74 2D            [12] 1791 	mov	a,#(___str_18 >> 8)
      000648 C0 E0            [24] 1792 	push	acc
      00064A 74 80            [12] 1793 	mov	a,#0x80
      00064C C0 E0            [24] 1794 	push	acc
      00064E 12 20 B5         [24] 1795 	lcall	_printf
      000651 15 81            [12] 1796 	dec	sp
      000653 15 81            [12] 1797 	dec	sp
      000655 15 81            [12] 1798 	dec	sp
                                   1799 ;	lcd.c:436: save_cursor_address=get_cursor_address();       // Save the current cursor address
      000657 12 01 74         [24] 1800 	lcall	_get_cursor_address
      00065A E5 82            [12] 1801 	mov	a,dpl
      00065C 90 05 0F         [24] 1802 	mov	dptr,#_save_cursor_address
      00065F F0               [24] 1803 	movx	@dptr,a
                                   1804 ;	lcd.c:437: printf("\n\rPrinting Hexdump of DDRAM\n\r");
      000660 74 76            [12] 1805 	mov	a,#___str_19
      000662 C0 E0            [24] 1806 	push	acc
      000664 74 2D            [12] 1807 	mov	a,#(___str_19 >> 8)
      000666 C0 E0            [24] 1808 	push	acc
      000668 74 80            [12] 1809 	mov	a,#0x80
      00066A C0 E0            [24] 1810 	push	acc
      00066C 12 20 B5         [24] 1811 	lcall	_printf
      00066F 15 81            [12] 1812 	dec	sp
      000671 15 81            [12] 1813 	dec	sp
      000673 15 81            [12] 1814 	dec	sp
                                   1815 ;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
      000675 7E 00            [12] 1816 	mov	r6,#0x00
      000677 7F 00            [12] 1817 	mov	r7,#0x00
      000679                       1818 00108$:
      000679 8E 04            [24] 1819 	mov	ar4,r6
      00067B 8F 05            [24] 1820 	mov	ar5,r7
      00067D C3               [12] 1821 	clr	c
      00067E 74 5F            [12] 1822 	mov	a,#0x5f
      000680 9C               [12] 1823 	subb	a,r4
      000681 E4               [12] 1824 	clr	a
      000682 9D               [12] 1825 	subb	a,r5
      000683 40 5D            [24] 1826 	jc	00103$
                                   1827 ;	lcd.c:441: if(k%16 == 0){                              // Print new line and address every 16 bytes
      000685 EC               [12] 1828 	mov	a,r4
      000686 54 0F            [12] 1829 	anl	a,#0x0f
      000688 70 21            [24] 1830 	jnz	00102$
                                   1831 ;	lcd.c:442: printf("\n\r0x%02x: ",k);
      00068A C0 07            [24] 1832 	push	ar7
      00068C C0 06            [24] 1833 	push	ar6
      00068E C0 06            [24] 1834 	push	ar6
      000690 C0 07            [24] 1835 	push	ar7
      000692 74 94            [12] 1836 	mov	a,#___str_20
      000694 C0 E0            [24] 1837 	push	acc
      000696 74 2D            [12] 1838 	mov	a,#(___str_20 >> 8)
      000698 C0 E0            [24] 1839 	push	acc
      00069A 74 80            [12] 1840 	mov	a,#0x80
      00069C C0 E0            [24] 1841 	push	acc
      00069E 12 20 B5         [24] 1842 	lcall	_printf
      0006A1 E5 81            [12] 1843 	mov	a,sp
      0006A3 24 FB            [12] 1844 	add	a,#0xfb
      0006A5 F5 81            [12] 1845 	mov	sp,a
      0006A7 D0 06            [24] 1846 	pop	ar6
      0006A9 D0 07            [24] 1847 	pop	ar7
      0006AB                       1848 00102$:
                                   1849 ;	lcd.c:444: printf("0x%02x ",read_lcd_address(1,k));    // Read and print the value at the current address
      0006AB 90 04 42         [24] 1850 	mov	dptr,#_read_lcd_address_PARM_2
      0006AE EE               [12] 1851 	mov	a,r6
      0006AF F0               [24] 1852 	movx	@dptr,a
      0006B0 75 82 01         [24] 1853 	mov	dpl,#0x01
      0006B3 C0 07            [24] 1854 	push	ar7
      0006B5 C0 06            [24] 1855 	push	ar6
      0006B7 12 06 0B         [24] 1856 	lcall	_read_lcd_address
      0006BA AD 82            [24] 1857 	mov	r5,dpl
      0006BC 7C 00            [12] 1858 	mov	r4,#0x00
      0006BE C0 05            [24] 1859 	push	ar5
      0006C0 C0 04            [24] 1860 	push	ar4
      0006C2 74 9F            [12] 1861 	mov	a,#___str_21
      0006C4 C0 E0            [24] 1862 	push	acc
      0006C6 74 2D            [12] 1863 	mov	a,#(___str_21 >> 8)
      0006C8 C0 E0            [24] 1864 	push	acc
      0006CA 74 80            [12] 1865 	mov	a,#0x80
      0006CC C0 E0            [24] 1866 	push	acc
      0006CE 12 20 B5         [24] 1867 	lcall	_printf
      0006D1 E5 81            [12] 1868 	mov	a,sp
      0006D3 24 FB            [12] 1869 	add	a,#0xfb
      0006D5 F5 81            [12] 1870 	mov	sp,a
      0006D7 D0 06            [24] 1871 	pop	ar6
      0006D9 D0 07            [24] 1872 	pop	ar7
                                   1873 ;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
      0006DB 0E               [12] 1874 	inc	r6
      0006DC BE 00 9A         [24] 1875 	cjne	r6,#0x00,00108$
      0006DF 0F               [12] 1876 	inc	r7
      0006E0 80 97            [24] 1877 	sjmp	00108$
      0006E2                       1878 00103$:
                                   1879 ;	lcd.c:447: printf("\n\r\n\rPrinting Hexdump of CGRAM\n\r");
      0006E2 74 A7            [12] 1880 	mov	a,#___str_22
      0006E4 C0 E0            [24] 1881 	push	acc
      0006E6 74 2D            [12] 1882 	mov	a,#(___str_22 >> 8)
      0006E8 C0 E0            [24] 1883 	push	acc
      0006EA 74 80            [12] 1884 	mov	a,#0x80
      0006EC C0 E0            [24] 1885 	push	acc
      0006EE 12 20 B5         [24] 1886 	lcall	_printf
      0006F1 15 81            [12] 1887 	dec	sp
      0006F3 15 81            [12] 1888 	dec	sp
      0006F5 15 81            [12] 1889 	dec	sp
                                   1890 ;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
      0006F7 7E 40            [12] 1891 	mov	r6,#0x40
      0006F9 7F 00            [12] 1892 	mov	r7,#0x00
      0006FB                       1893 00111$:
      0006FB 8E 04            [24] 1894 	mov	ar4,r6
      0006FD 8F 05            [24] 1895 	mov	ar5,r7
      0006FF C3               [12] 1896 	clr	c
      000700 74 7F            [12] 1897 	mov	a,#0x7f
      000702 9C               [12] 1898 	subb	a,r4
      000703 E4               [12] 1899 	clr	a
      000704 9D               [12] 1900 	subb	a,r5
      000705 40 5D            [24] 1901 	jc	00106$
                                   1902 ;	lcd.c:451: if(k%16 == 0){                              // Print new line and address every 16 bytes
      000707 EC               [12] 1903 	mov	a,r4
      000708 54 0F            [12] 1904 	anl	a,#0x0f
      00070A 70 21            [24] 1905 	jnz	00105$
                                   1906 ;	lcd.c:452: printf("\n\r0x%02x: ",k);
      00070C C0 07            [24] 1907 	push	ar7
      00070E C0 06            [24] 1908 	push	ar6
      000710 C0 06            [24] 1909 	push	ar6
      000712 C0 07            [24] 1910 	push	ar7
      000714 74 94            [12] 1911 	mov	a,#___str_20
      000716 C0 E0            [24] 1912 	push	acc
      000718 74 2D            [12] 1913 	mov	a,#(___str_20 >> 8)
      00071A C0 E0            [24] 1914 	push	acc
      00071C 74 80            [12] 1915 	mov	a,#0x80
      00071E C0 E0            [24] 1916 	push	acc
      000720 12 20 B5         [24] 1917 	lcall	_printf
      000723 E5 81            [12] 1918 	mov	a,sp
      000725 24 FB            [12] 1919 	add	a,#0xfb
      000727 F5 81            [12] 1920 	mov	sp,a
      000729 D0 06            [24] 1921 	pop	ar6
      00072B D0 07            [24] 1922 	pop	ar7
      00072D                       1923 00105$:
                                   1924 ;	lcd.c:454: printf("0x%02x ",read_lcd_address(0,k));    // Read and print the value at the current address
      00072D 90 04 42         [24] 1925 	mov	dptr,#_read_lcd_address_PARM_2
      000730 EE               [12] 1926 	mov	a,r6
      000731 F0               [24] 1927 	movx	@dptr,a
      000732 75 82 00         [24] 1928 	mov	dpl,#0x00
      000735 C0 07            [24] 1929 	push	ar7
      000737 C0 06            [24] 1930 	push	ar6
      000739 12 06 0B         [24] 1931 	lcall	_read_lcd_address
      00073C AD 82            [24] 1932 	mov	r5,dpl
      00073E 7C 00            [12] 1933 	mov	r4,#0x00
      000740 C0 05            [24] 1934 	push	ar5
      000742 C0 04            [24] 1935 	push	ar4
      000744 74 9F            [12] 1936 	mov	a,#___str_21
      000746 C0 E0            [24] 1937 	push	acc
      000748 74 2D            [12] 1938 	mov	a,#(___str_21 >> 8)
      00074A C0 E0            [24] 1939 	push	acc
      00074C 74 80            [12] 1940 	mov	a,#0x80
      00074E C0 E0            [24] 1941 	push	acc
      000750 12 20 B5         [24] 1942 	lcall	_printf
      000753 E5 81            [12] 1943 	mov	a,sp
      000755 24 FB            [12] 1944 	add	a,#0xfb
      000757 F5 81            [12] 1945 	mov	sp,a
      000759 D0 06            [24] 1946 	pop	ar6
      00075B D0 07            [24] 1947 	pop	ar7
                                   1948 ;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
      00075D 0E               [12] 1949 	inc	r6
      00075E BE 00 9A         [24] 1950 	cjne	r6,#0x00,00111$
      000761 0F               [12] 1951 	inc	r7
      000762 80 97            [24] 1952 	sjmp	00111$
      000764                       1953 00106$:
                                   1954 ;	lcd.c:457: printf("\n\r");
      000764 74 CC            [12] 1955 	mov	a,#___str_4
      000766 C0 E0            [24] 1956 	push	acc
      000768 74 2B            [12] 1957 	mov	a,#(___str_4 >> 8)
      00076A C0 E0            [24] 1958 	push	acc
      00076C 74 80            [12] 1959 	mov	a,#0x80
      00076E C0 E0            [24] 1960 	push	acc
      000770 12 20 B5         [24] 1961 	lcall	_printf
      000773 15 81            [12] 1962 	dec	sp
      000775 15 81            [12] 1963 	dec	sp
      000777 15 81            [12] 1964 	dec	sp
                                   1965 ;	lcd.c:458: lcdgotoaddr(save_cursor_address);               // Restore the original cursor position
      000779 90 05 0F         [24] 1966 	mov	dptr,#_save_cursor_address
      00077C E0               [24] 1967 	movx	a,@dptr
      00077D F5 82            [12] 1968 	mov	dpl,a
      00077F 12 01 81         [24] 1969 	lcall	_lcdgotoaddr
                                   1970 ;	lcd.c:459: printf("\033[0m");                              // Reset terminal color to default
      000782 74 C7            [12] 1971 	mov	a,#___str_23
      000784 C0 E0            [24] 1972 	push	acc
      000786 74 2D            [12] 1973 	mov	a,#(___str_23 >> 8)
      000788 C0 E0            [24] 1974 	push	acc
      00078A 74 80            [12] 1975 	mov	a,#0x80
      00078C C0 E0            [24] 1976 	push	acc
      00078E 12 20 B5         [24] 1977 	lcall	_printf
      000791 15 81            [12] 1978 	dec	sp
      000793 15 81            [12] 1979 	dec	sp
      000795 15 81            [12] 1980 	dec	sp
      000797 A2 04            [12] 1981 	mov	c,_handler_lcd_hexdump_sloc0_1_0
      000799 92 AF            [24] 1982 	mov	ea,c
                                   1983 ;	lcd.c:461: }
      00079B 22               [24] 1984 	ret
                                   1985 ;------------------------------------------------------------
                                   1986 ;Allocation info for local variables in function 'get_hex_value'
                                   1987 ;------------------------------------------------------------
                                   1988 ;digit1                    Allocated with name '_get_hex_value_digit1_65536_165'
                                   1989 ;digit2                    Allocated with name '_get_hex_value_digit2_65536_165'
                                   1990 ;hex_value                 Allocated with name '_get_hex_value_hex_value_65536_165'
                                   1991 ;------------------------------------------------------------
                                   1992 ;	lcd.c:463: unsigned char get_hex_value(void) {
                                   1993 ;	-----------------------------------------
                                   1994 ;	 function get_hex_value
                                   1995 ;	-----------------------------------------
      00079C                       1996 _get_hex_value:
                                   1997 ;	lcd.c:465: printf("\n\rEnter a hexadecimal value between (00 to 1F) or (40 to 58): ");
      00079C 74 CC            [12] 1998 	mov	a,#___str_24
      00079E C0 E0            [24] 1999 	push	acc
      0007A0 74 2D            [12] 2000 	mov	a,#(___str_24 >> 8)
      0007A2 C0 E0            [24] 2001 	push	acc
      0007A4 74 80            [12] 2002 	mov	a,#0x80
      0007A6 C0 E0            [24] 2003 	push	acc
      0007A8 12 20 B5         [24] 2004 	lcall	_printf
      0007AB 15 81            [12] 2005 	dec	sp
      0007AD 15 81            [12] 2006 	dec	sp
      0007AF 15 81            [12] 2007 	dec	sp
                                   2008 ;	lcd.c:467: while (1) {                         //loop until a valid input is entered
      0007B1                       2009 00116$:
                                   2010 ;	lcd.c:468: digit1 = putchar(getchar());    //get first digit from input and display it
      0007B1 12 11 4A         [24] 2011 	lcall	_getchar
      0007B4 12 11 2B         [24] 2012 	lcall	_putchar
      0007B7 AE 82            [24] 2013 	mov	r6,dpl
                                   2014 ;	lcd.c:469: digit2 = putchar(getchar());    //get second digit from input and display it
      0007B9 C0 06            [24] 2015 	push	ar6
      0007BB 12 11 4A         [24] 2016 	lcall	_getchar
      0007BE 12 11 2B         [24] 2017 	lcall	_putchar
      0007C1 AD 82            [24] 2018 	mov	r5,dpl
      0007C3 AF 83            [24] 2019 	mov	r7,dph
      0007C5 D0 06            [24] 2020 	pop	ar6
                                   2021 ;	lcd.c:472: if (digit1 >= '0' && digit1 <= '9' && digit2 >= '0' && digit2 <= '9') {
      0007C7 BE 30 00         [24] 2022 	cjne	r6,#0x30,00160$
      0007CA                       2023 00160$:
      0007CA 40 24            [24] 2024 	jc	00110$
      0007CC EE               [12] 2025 	mov	a,r6
      0007CD 24 C6            [12] 2026 	add	a,#0xff - 0x39
      0007CF 40 1F            [24] 2027 	jc	00110$
      0007D1 BD 30 00         [24] 2028 	cjne	r5,#0x30,00163$
      0007D4                       2029 00163$:
      0007D4 40 1A            [24] 2030 	jc	00110$
      0007D6 ED               [12] 2031 	mov	a,r5
      0007D7 24 C6            [12] 2032 	add	a,#0xff - 0x39
      0007D9 40 15            [24] 2033 	jc	00110$
                                   2034 ;	lcd.c:473: hex_value = ((digit1 - '0') << 4) | (digit2 - '0'); //convert the digits to a hexadecimal value
      0007DB 8E 07            [24] 2035 	mov	ar7,r6
      0007DD EF               [12] 2036 	mov	a,r7
      0007DE 24 D0            [12] 2037 	add	a,#0xd0
      0007E0 C4               [12] 2038 	swap	a
      0007E1 54 F0            [12] 2039 	anl	a,#0xf0
      0007E3 FF               [12] 2040 	mov	r7,a
      0007E4 8D 04            [24] 2041 	mov	ar4,r5
      0007E6 EC               [12] 2042 	mov	a,r4
      0007E7 24 D0            [12] 2043 	add	a,#0xd0
      0007E9 90 04 44         [24] 2044 	mov	dptr,#_get_hex_value_hex_value_65536_165
      0007EC 4F               [12] 2045 	orl	a,r7
      0007ED F0               [24] 2046 	movx	@dptr,a
                                   2047 ;	lcd.c:474: break; //break the loop
      0007EE 80 5A            [24] 2048 	sjmp	00117$
      0007F0                       2049 00110$:
                                   2050 ;	lcd.c:477: else if ((digit1 == '0' || digit1 == '1' || digit1 == '4' || digit1 == '5') && (digit2 >= 'A' && digit2 <= 'F')) {
      0007F0 BE 30 02         [24] 2051 	cjne	r6,#0x30,00166$
      0007F3 80 0D            [24] 2052 	sjmp	00108$
      0007F5                       2053 00166$:
      0007F5 BE 31 02         [24] 2054 	cjne	r6,#0x31,00167$
      0007F8 80 08            [24] 2055 	sjmp	00108$
      0007FA                       2056 00167$:
      0007FA BE 34 02         [24] 2057 	cjne	r6,#0x34,00168$
      0007FD 80 03            [24] 2058 	sjmp	00108$
      0007FF                       2059 00168$:
      0007FF BE 35 1B         [24] 2060 	cjne	r6,#0x35,00102$
      000802                       2061 00108$:
      000802 BD 41 00         [24] 2062 	cjne	r5,#0x41,00171$
      000805                       2063 00171$:
      000805 40 16            [24] 2064 	jc	00102$
      000807 ED               [12] 2065 	mov	a,r5
      000808 24 B9            [12] 2066 	add	a,#0xff - 0x46
      00080A 40 11            [24] 2067 	jc	00102$
                                   2068 ;	lcd.c:478: hex_value = ((digit1 - '0') << 4) | (digit2 - '7'); //convert the digits to a hexadecimal value
      00080C EE               [12] 2069 	mov	a,r6
      00080D 24 D0            [12] 2070 	add	a,#0xd0
      00080F C4               [12] 2071 	swap	a
      000810 54 F0            [12] 2072 	anl	a,#0xf0
      000812 FE               [12] 2073 	mov	r6,a
      000813 ED               [12] 2074 	mov	a,r5
      000814 24 C9            [12] 2075 	add	a,#0xc9
      000816 90 04 44         [24] 2076 	mov	dptr,#_get_hex_value_hex_value_65536_165
      000819 4E               [12] 2077 	orl	a,r6
      00081A F0               [24] 2078 	movx	@dptr,a
                                   2079 ;	lcd.c:479: break; //break the loop
      00081B 80 2D            [24] 2080 	sjmp	00117$
      00081D                       2081 00102$:
                                   2082 ;	lcd.c:482: printf("\n\rInvalid input. ");      //display error message if input is invalid
      00081D 74 0B            [12] 2083 	mov	a,#___str_25
      00081F C0 E0            [24] 2084 	push	acc
      000821 74 2E            [12] 2085 	mov	a,#(___str_25 >> 8)
      000823 C0 E0            [24] 2086 	push	acc
      000825 74 80            [12] 2087 	mov	a,#0x80
      000827 C0 E0            [24] 2088 	push	acc
      000829 12 20 B5         [24] 2089 	lcall	_printf
      00082C 15 81            [12] 2090 	dec	sp
      00082E 15 81            [12] 2091 	dec	sp
      000830 15 81            [12] 2092 	dec	sp
                                   2093 ;	lcd.c:484: printf("Please enter a valid input: "); //prompt user to enter a valid input
      000832 74 1D            [12] 2094 	mov	a,#___str_26
      000834 C0 E0            [24] 2095 	push	acc
      000836 74 2E            [12] 2096 	mov	a,#(___str_26 >> 8)
      000838 C0 E0            [24] 2097 	push	acc
      00083A 74 80            [12] 2098 	mov	a,#0x80
      00083C C0 E0            [24] 2099 	push	acc
      00083E 12 20 B5         [24] 2100 	lcall	_printf
      000841 15 81            [12] 2101 	dec	sp
      000843 15 81            [12] 2102 	dec	sp
      000845 15 81            [12] 2103 	dec	sp
      000847 02 07 B1         [24] 2104 	ljmp	00116$
      00084A                       2105 00117$:
                                   2106 ;	lcd.c:486: return hex_value;                           //return the hexadecimal value
      00084A 90 04 44         [24] 2107 	mov	dptr,#_get_hex_value_hex_value_65536_165
      00084D E0               [24] 2108 	movx	a,@dptr
                                   2109 ;	lcd.c:487: }
      00084E F5 82            [12] 2110 	mov	dpl,a
      000850 22               [24] 2111 	ret
                                   2112 ;------------------------------------------------------------
                                   2113 ;Allocation info for local variables in function 'create_custom_char'
                                   2114 ;------------------------------------------------------------
                                   2115 ;sloc0                     Allocated with name '_create_custom_char_sloc0_1_0'
                                   2116 ;row_values                Allocated with name '_create_custom_char_PARM_2'
                                   2117 ;char_code                 Allocated with name '_create_custom_char_char_code_65536_170'
                                   2118 ;bit_6                     Allocated with name '_create_custom_char_bit_6_65536_171'
                                   2119 ;code_num                  Allocated with name '_create_custom_char_code_num_65536_171'
                                   2120 ;bit_3_shift               Allocated with name '_create_custom_char_bit_3_shift_65536_171'
                                   2121 ;char_num                  Allocated with name '_create_custom_char_char_num_65536_171'
                                   2122 ;i                         Allocated with name '_create_custom_char_i_65537_172'
                                   2123 ;------------------------------------------------------------
                                   2124 ;	lcd.c:488: void create_custom_char(unsigned char char_code, unsigned char row_values[]) {
                                   2125 ;	-----------------------------------------
                                   2126 ;	 function create_custom_char
                                   2127 ;	-----------------------------------------
      000851                       2128 _create_custom_char:
      000851 E5 82            [12] 2129 	mov	a,dpl
      000853 90 04 48         [24] 2130 	mov	dptr,#_create_custom_char_char_code_65536_170
      000856 F0               [24] 2131 	movx	@dptr,a
                                   2132 ;	lcd.c:491: unsigned char code_num = char_code - '0';
      000857 E0               [24] 2133 	movx	a,@dptr
                                   2134 ;	lcd.c:492: unsigned char bit_3_shift = code_num << 3;
      000858 24 D0            [12] 2135 	add	a,#0xd0
      00085A C4               [12] 2136 	swap	a
      00085B 03               [12] 2137 	rr	a
      00085C 54 F8            [12] 2138 	anl	a,#0xf8
      00085E FF               [12] 2139 	mov	r7,a
                                   2140 ;	lcd.c:493: unsigned char char_num = bit_6 | bit_3_shift;
      00085F 43 07 40         [24] 2141 	orl	ar7,#0x40
                                   2142 ;	lcd.c:496: printf_tiny("\n\rThe custom character with code 0x%x has been created.", char_num);
      000862 8F 05            [24] 2143 	mov	ar5,r7
      000864 7E 00            [12] 2144 	mov	r6,#0x00
      000866 C0 07            [24] 2145 	push	ar7
      000868 C0 06            [24] 2146 	push	ar6
      00086A C0 05            [24] 2147 	push	ar5
      00086C C0 05            [24] 2148 	push	ar5
      00086E C0 06            [24] 2149 	push	ar6
      000870 74 3A            [12] 2150 	mov	a,#___str_27
      000872 C0 E0            [24] 2151 	push	acc
      000874 74 2E            [12] 2152 	mov	a,#(___str_27 >> 8)
      000876 C0 E0            [24] 2153 	push	acc
      000878 12 1A 00         [24] 2154 	lcall	_printf_tiny
      00087B E5 81            [12] 2155 	mov	a,sp
      00087D 24 FC            [12] 2156 	add	a,#0xfc
      00087F F5 81            [12] 2157 	mov	sp,a
      000881 D0 05            [24] 2158 	pop	ar5
      000883 D0 06            [24] 2159 	pop	ar6
      000885 D0 07            [24] 2160 	pop	ar7
                                   2161 ;	lcd.c:500: while (i < 8) {
      000887 90 04 45         [24] 2162 	mov	dptr,#_create_custom_char_PARM_2
      00088A E0               [24] 2163 	movx	a,@dptr
      00088B F5 08            [12] 2164 	mov	_create_custom_char_sloc0_1_0,a
      00088D A3               [24] 2165 	inc	dptr
      00088E E0               [24] 2166 	movx	a,@dptr
      00088F F5 09            [12] 2167 	mov	(_create_custom_char_sloc0_1_0 + 1),a
      000891 A3               [24] 2168 	inc	dptr
      000892 E0               [24] 2169 	movx	a,@dptr
      000893 F5 0A            [12] 2170 	mov	(_create_custom_char_sloc0_1_0 + 2),a
      000895 78 00            [12] 2171 	mov	r0,#0x00
      000897 79 00            [12] 2172 	mov	r1,#0x00
      000899                       2173 00101$:
      000899 C3               [12] 2174 	clr	c
      00089A E8               [12] 2175 	mov	a,r0
      00089B 94 08            [12] 2176 	subb	a,#0x08
      00089D E9               [12] 2177 	mov	a,r1
      00089E 64 80            [12] 2178 	xrl	a,#0x80
      0008A0 94 80            [12] 2179 	subb	a,#0x80
      0008A2 40 01            [24] 2180 	jc	00115$
      0008A4 22               [24] 2181 	ret
      0008A5                       2182 00115$:
                                   2183 ;	lcd.c:502: LCD_RS = 0;
                                   2184 ;	assignBit
      0008A5 C2 92            [12] 2185 	clr	_P1_2
                                   2186 ;	lcd.c:503: LCD_RW = 0;
                                   2187 ;	assignBit
      0008A7 C2 93            [12] 2188 	clr	_P1_3
                                   2189 ;	lcd.c:505: lcd_ptr = char_num + i;
      0008A9 88 04            [24] 2190 	mov	ar4,r0
      0008AB 8F 03            [24] 2191 	mov	ar3,r7
      0008AD 90 F0 00         [24] 2192 	mov	dptr,#_lcd_ptr
      0008B0 EC               [12] 2193 	mov	a,r4
      0008B1 2B               [12] 2194 	add	a,r3
      0008B2 F0               [24] 2195 	movx	@dptr,a
                                   2196 ;	lcd.c:507: printf_tiny("\n\rLCD_ptr = %x", char_num + i);
      0008B3 E8               [12] 2197 	mov	a,r0
      0008B4 2D               [12] 2198 	add	a,r5
      0008B5 FB               [12] 2199 	mov	r3,a
      0008B6 E9               [12] 2200 	mov	a,r1
      0008B7 3E               [12] 2201 	addc	a,r6
      0008B8 FC               [12] 2202 	mov	r4,a
      0008B9 C0 07            [24] 2203 	push	ar7
      0008BB C0 06            [24] 2204 	push	ar6
      0008BD C0 05            [24] 2205 	push	ar5
      0008BF C0 01            [24] 2206 	push	ar1
      0008C1 C0 00            [24] 2207 	push	ar0
      0008C3 C0 03            [24] 2208 	push	ar3
      0008C5 C0 04            [24] 2209 	push	ar4
      0008C7 74 72            [12] 2210 	mov	a,#___str_28
      0008C9 C0 E0            [24] 2211 	push	acc
      0008CB 74 2E            [12] 2212 	mov	a,#(___str_28 >> 8)
      0008CD C0 E0            [24] 2213 	push	acc
      0008CF 12 1A 00         [24] 2214 	lcall	_printf_tiny
      0008D2 E5 81            [12] 2215 	mov	a,sp
      0008D4 24 FC            [12] 2216 	add	a,#0xfc
      0008D6 F5 81            [12] 2217 	mov	sp,a
                                   2218 ;	lcd.c:509: lcdbusywait();
      0008D8 12 00 E2         [24] 2219 	lcall	_lcdbusywait
      0008DB D0 00            [24] 2220 	pop	ar0
      0008DD D0 01            [24] 2221 	pop	ar1
                                   2222 ;	lcd.c:511: LCD_RS = 1;
                                   2223 ;	assignBit
      0008DF D2 92            [12] 2224 	setb	_P1_2
                                   2225 ;	lcd.c:512: LCD_RW = 0;
                                   2226 ;	assignBit
      0008E1 C2 93            [12] 2227 	clr	_P1_3
                                   2228 ;	lcd.c:513: lcd_ptr = row_values[i];
      0008E3 E8               [12] 2229 	mov	a,r0
      0008E4 25 08            [12] 2230 	add	a,_create_custom_char_sloc0_1_0
      0008E6 FA               [12] 2231 	mov	r2,a
      0008E7 E9               [12] 2232 	mov	a,r1
      0008E8 35 09            [12] 2233 	addc	a,(_create_custom_char_sloc0_1_0 + 1)
      0008EA FB               [12] 2234 	mov	r3,a
      0008EB AC 0A            [24] 2235 	mov	r4,(_create_custom_char_sloc0_1_0 + 2)
      0008ED 8A 82            [24] 2236 	mov	dpl,r2
      0008EF 8B 83            [24] 2237 	mov	dph,r3
      0008F1 8C F0            [24] 2238 	mov	b,r4
      0008F3 12 2A E1         [24] 2239 	lcall	__gptrget
      0008F6 90 F0 00         [24] 2240 	mov	dptr,#_lcd_ptr
      0008F9 F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	lcd.c:514: lcdbusywait();
      0008FA C0 01            [24] 2243 	push	ar1
      0008FC C0 00            [24] 2244 	push	ar0
      0008FE 12 00 E2         [24] 2245 	lcall	_lcdbusywait
      000901 D0 00            [24] 2246 	pop	ar0
      000903 D0 01            [24] 2247 	pop	ar1
      000905 D0 05            [24] 2248 	pop	ar5
      000907 D0 06            [24] 2249 	pop	ar6
      000909 D0 07            [24] 2250 	pop	ar7
                                   2251 ;	lcd.c:516: i++;
      00090B 08               [12] 2252 	inc	r0
      00090C B8 00 01         [24] 2253 	cjne	r0,#0x00,00116$
      00090F 09               [12] 2254 	inc	r1
      000910                       2255 00116$:
                                   2256 ;	lcd.c:518: }
      000910 02 08 99         [24] 2257 	ljmp	00101$
                                   2258 ;------------------------------------------------------------
                                   2259 ;Allocation info for local variables in function 'handler_custom_char'
                                   2260 ;------------------------------------------------------------
                                   2261 ;save_address              Allocated with name '_handler_custom_char_save_address_65537_176'
                                   2262 ;char_code                 Allocated with name '_handler_custom_char_char_code_65538_177'
                                   2263 ;row_values                Allocated with name '_handler_custom_char_row_values_65539_178'
                                   2264 ;j                         Allocated with name '_handler_custom_char_j_65539_178'
                                   2265 ;------------------------------------------------------------
                                   2266 ;	lcd.c:520: void handler_custom_char(void) {
                                   2267 ;	-----------------------------------------
                                   2268 ;	 function handler_custom_char
                                   2269 ;	-----------------------------------------
      000913                       2270 _handler_custom_char:
                                   2271 ;	lcd.c:521: printf("\033[0;33m"); // Set text color to yellow
      000913 74 81            [12] 2272 	mov	a,#___str_29
      000915 C0 E0            [24] 2273 	push	acc
      000917 74 2E            [12] 2274 	mov	a,#(___str_29 >> 8)
      000919 C0 E0            [24] 2275 	push	acc
      00091B 74 80            [12] 2276 	mov	a,#0x80
      00091D C0 E0            [24] 2277 	push	acc
      00091F 12 20 B5         [24] 2278 	lcall	_printf
      000922 15 81            [12] 2279 	dec	sp
      000924 15 81            [12] 2280 	dec	sp
      000926 15 81            [12] 2281 	dec	sp
                                   2282 ;	lcd.c:524: unsigned int save_address = get_cursor_address();
      000928 12 01 74         [24] 2283 	lcall	_get_cursor_address
      00092B AF 82            [24] 2284 	mov	r7,dpl
                                   2285 ;	lcd.c:526: printf_tiny("Please enter the code for the custom character: ");
      00092D C0 07            [24] 2286 	push	ar7
      00092F 74 89            [12] 2287 	mov	a,#___str_30
      000931 C0 E0            [24] 2288 	push	acc
      000933 74 2E            [12] 2289 	mov	a,#(___str_30 >> 8)
      000935 C0 E0            [24] 2290 	push	acc
      000937 12 1A 00         [24] 2291 	lcall	_printf_tiny
      00093A 15 81            [12] 2292 	dec	sp
      00093C 15 81            [12] 2293 	dec	sp
                                   2294 ;	lcd.c:528: unsigned char char_code = getchar();
      00093E 12 11 4A         [24] 2295 	lcall	_getchar
      000941 AD 82            [24] 2296 	mov	r5,dpl
                                   2297 ;	lcd.c:531: printf_tiny("%c\n\r", char_code);
      000943 8D 04            [24] 2298 	mov	ar4,r5
      000945 7E 00            [12] 2299 	mov	r6,#0x00
      000947 C0 05            [24] 2300 	push	ar5
      000949 C0 04            [24] 2301 	push	ar4
      00094B C0 06            [24] 2302 	push	ar6
      00094D 74 BA            [12] 2303 	mov	a,#___str_31
      00094F C0 E0            [24] 2304 	push	acc
      000951 74 2E            [12] 2305 	mov	a,#(___str_31 >> 8)
      000953 C0 E0            [24] 2306 	push	acc
      000955 12 1A 00         [24] 2307 	lcall	_printf_tiny
      000958 E5 81            [12] 2308 	mov	a,sp
      00095A 24 FC            [12] 2309 	add	a,#0xfc
      00095C F5 81            [12] 2310 	mov	sp,a
      00095E D0 05            [24] 2311 	pop	ar5
      000960 D0 07            [24] 2312 	pop	ar7
                                   2313 ;	lcd.c:537: while (j < 8) { // Loop through each row of the custom character and get its value from the user
      000962 7E 00            [12] 2314 	mov	r6,#0x00
      000964                       2315 00101$:
      000964 BE 08 00         [24] 2316 	cjne	r6,#0x08,00115$
      000967                       2317 00115$:
      000967 50 4B            [24] 2318 	jnc	00103$
                                   2319 ;	lcd.c:538: printf_tiny("\n\rPlease enter the value for row %d: ", j);
      000969 8E 03            [24] 2320 	mov	ar3,r6
      00096B 7C 00            [12] 2321 	mov	r4,#0x00
      00096D C0 07            [24] 2322 	push	ar7
      00096F C0 06            [24] 2323 	push	ar6
      000971 C0 05            [24] 2324 	push	ar5
      000973 C0 03            [24] 2325 	push	ar3
      000975 C0 04            [24] 2326 	push	ar4
      000977 74 BF            [12] 2327 	mov	a,#___str_32
      000979 C0 E0            [24] 2328 	push	acc
      00097B 74 2E            [12] 2329 	mov	a,#(___str_32 >> 8)
      00097D C0 E0            [24] 2330 	push	acc
      00097F 12 1A 00         [24] 2331 	lcall	_printf_tiny
      000982 E5 81            [12] 2332 	mov	a,sp
      000984 24 FC            [12] 2333 	add	a,#0xfc
      000986 F5 81            [12] 2334 	mov	sp,a
      000988 D0 05            [24] 2335 	pop	ar5
      00098A D0 06            [24] 2336 	pop	ar6
                                   2337 ;	lcd.c:539: row_values[j] = get_hex_value();
      00098C EE               [12] 2338 	mov	a,r6
      00098D 24 49            [12] 2339 	add	a,#_handler_custom_char_row_values_65539_178
      00098F FB               [12] 2340 	mov	r3,a
      000990 E4               [12] 2341 	clr	a
      000991 34 04            [12] 2342 	addc	a,#(_handler_custom_char_row_values_65539_178 >> 8)
      000993 FC               [12] 2343 	mov	r4,a
      000994 C0 06            [24] 2344 	push	ar6
      000996 C0 05            [24] 2345 	push	ar5
      000998 C0 04            [24] 2346 	push	ar4
      00099A C0 03            [24] 2347 	push	ar3
      00099C 12 07 9C         [24] 2348 	lcall	_get_hex_value
      00099F AA 82            [24] 2349 	mov	r2,dpl
      0009A1 D0 03            [24] 2350 	pop	ar3
      0009A3 D0 04            [24] 2351 	pop	ar4
      0009A5 D0 05            [24] 2352 	pop	ar5
      0009A7 D0 06            [24] 2353 	pop	ar6
      0009A9 D0 07            [24] 2354 	pop	ar7
      0009AB 8B 82            [24] 2355 	mov	dpl,r3
      0009AD 8C 83            [24] 2356 	mov	dph,r4
      0009AF EA               [12] 2357 	mov	a,r2
      0009B0 F0               [24] 2358 	movx	@dptr,a
                                   2359 ;	lcd.c:540: j++;
      0009B1 0E               [12] 2360 	inc	r6
      0009B2 80 B0            [24] 2361 	sjmp	00101$
      0009B4                       2362 00103$:
                                   2363 ;	lcd.c:555: }
      0009B4 D2 05            [12] 2364 	setb	_handler_custom_char_sloc0_1_0
      0009B6 10 AF 02         [24] 2365 	jbc	ea,00117$
      0009B9 C2 05            [12] 2366 	clr	_handler_custom_char_sloc0_1_0
      0009BB                       2367 00117$:
                                   2368 ;	lcd.c:545: create_custom_char(char_code, row_values);
      0009BB 90 04 45         [24] 2369 	mov	dptr,#_create_custom_char_PARM_2
      0009BE 74 49            [12] 2370 	mov	a,#_handler_custom_char_row_values_65539_178
      0009C0 F0               [24] 2371 	movx	@dptr,a
      0009C1 74 04            [12] 2372 	mov	a,#(_handler_custom_char_row_values_65539_178 >> 8)
      0009C3 A3               [24] 2373 	inc	dptr
      0009C4 F0               [24] 2374 	movx	@dptr,a
      0009C5 E4               [12] 2375 	clr	a
      0009C6 A3               [24] 2376 	inc	dptr
      0009C7 F0               [24] 2377 	movx	@dptr,a
      0009C8 8D 82            [24] 2378 	mov	dpl,r5
      0009CA C0 07            [24] 2379 	push	ar7
      0009CC C0 05            [24] 2380 	push	ar5
      0009CE 12 08 51         [24] 2381 	lcall	_create_custom_char
                                   2382 ;	lcd.c:548: handler_lcdgotoxy();
      0009D1 12 04 5B         [24] 2383 	lcall	_handler_lcdgotoxy
      0009D4 D0 05            [24] 2384 	pop	ar5
                                   2385 ;	lcd.c:551: lcdputch(char_code - '0');
      0009D6 ED               [12] 2386 	mov	a,r5
      0009D7 24 D0            [12] 2387 	add	a,#0xd0
      0009D9 F5 82            [12] 2388 	mov	dpl,a
      0009DB 12 02 57         [24] 2389 	lcall	_lcdputch
      0009DE D0 07            [24] 2390 	pop	ar7
                                   2391 ;	lcd.c:554: lcdgotoaddr(save_address);
      0009E0 8F 82            [24] 2392 	mov	dpl,r7
      0009E2 12 01 81         [24] 2393 	lcall	_lcdgotoaddr
      0009E5 A2 05            [12] 2394 	mov	c,_handler_custom_char_sloc0_1_0
      0009E7 92 AF            [24] 2395 	mov	ea,c
                                   2396 ;	lcd.c:558: printf("\033[0m");
      0009E9 74 C7            [12] 2397 	mov	a,#___str_23
      0009EB C0 E0            [24] 2398 	push	acc
      0009ED 74 2D            [12] 2399 	mov	a,#(___str_23 >> 8)
      0009EF C0 E0            [24] 2400 	push	acc
      0009F1 74 80            [12] 2401 	mov	a,#0x80
      0009F3 C0 E0            [24] 2402 	push	acc
      0009F5 12 20 B5         [24] 2403 	lcall	_printf
      0009F8 15 81            [12] 2404 	dec	sp
      0009FA 15 81            [12] 2405 	dec	sp
      0009FC 15 81            [12] 2406 	dec	sp
                                   2407 ;	lcd.c:559: }
      0009FE 22               [24] 2408 	ret
                                   2409 ;------------------------------------------------------------
                                   2410 ;Allocation info for local variables in function 'handle_cu_custom_char'
                                   2411 ;------------------------------------------------------------
                                   2412 ;ccode1                    Allocated with name '_handle_cu_custom_char_ccode1_65537_183'
                                   2413 ;row_vals1                 Allocated with name '_handle_cu_custom_char_row_vals1_65537_183'
                                   2414 ;ccode2                    Allocated with name '_handle_cu_custom_char_ccode2_65538_185'
                                   2415 ;row_vals2                 Allocated with name '_handle_cu_custom_char_row_vals2_65538_185'
                                   2416 ;ccode3                    Allocated with name '_handle_cu_custom_char_ccode3_65539_187'
                                   2417 ;row_vals3                 Allocated with name '_handle_cu_custom_char_row_vals3_65539_187'
                                   2418 ;ccode4                    Allocated with name '_handle_cu_custom_char_ccode4_65540_189'
                                   2419 ;row_vals4                 Allocated with name '_handle_cu_custom_char_row_vals4_65540_189'
                                   2420 ;------------------------------------------------------------
                                   2421 ;	lcd.c:561: void handle_cu_custom_char(void)
                                   2422 ;	-----------------------------------------
                                   2423 ;	 function handle_cu_custom_char
                                   2424 ;	-----------------------------------------
      0009FF                       2425 _handle_cu_custom_char:
                                   2426 ;	lcd.c:563: printf("\033[0;33m");                           // Set text color to yellow
      0009FF 74 81            [12] 2427 	mov	a,#___str_29
      000A01 C0 E0            [24] 2428 	push	acc
      000A03 74 2E            [12] 2429 	mov	a,#(___str_29 >> 8)
      000A05 C0 E0            [24] 2430 	push	acc
      000A07 74 80            [12] 2431 	mov	a,#0x80
      000A09 C0 E0            [24] 2432 	push	acc
      000A0B 12 20 B5         [24] 2433 	lcall	_printf
      000A0E 15 81            [12] 2434 	dec	sp
      000A10 15 81            [12] 2435 	dec	sp
      000A12 15 81            [12] 2436 	dec	sp
                                   2437 ;	lcd.c:564: save_cursor_address = get_cursor_address();     // Get current cursor address and save it in a variable
      000A14 12 01 74         [24] 2438 	lcall	_get_cursor_address
      000A17 E5 82            [12] 2439 	mov	a,dpl
      000A19 90 05 0F         [24] 2440 	mov	dptr,#_save_cursor_address
      000A1C F0               [24] 2441 	movx	@dptr,a
                                   2442 ;	lcd.c:568: unsigned char row_vals1[8] = {0x00, 0x00, 0x0F, 0x08, 0x08, 0x09, 0x09, 0x09};
      000A1D 90 04 51         [24] 2443 	mov	dptr,#_handle_cu_custom_char_row_vals1_65537_183
      000A20 E4               [12] 2444 	clr	a
      000A21 F0               [24] 2445 	movx	@dptr,a
      000A22 90 04 52         [24] 2446 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0001)
      000A25 F0               [24] 2447 	movx	@dptr,a
      000A26 90 04 53         [24] 2448 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0002)
      000A29 74 0F            [12] 2449 	mov	a,#0x0f
      000A2B F0               [24] 2450 	movx	@dptr,a
      000A2C 90 04 54         [24] 2451 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0003)
      000A2F 74 08            [12] 2452 	mov	a,#0x08
      000A31 F0               [24] 2453 	movx	@dptr,a
      000A32 90 04 55         [24] 2454 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0004)
      000A35 F0               [24] 2455 	movx	@dptr,a
      000A36 90 04 56         [24] 2456 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0005)
      000A39 04               [12] 2457 	inc	a
      000A3A F0               [24] 2458 	movx	@dptr,a
      000A3B 90 04 57         [24] 2459 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0006)
      000A3E F0               [24] 2460 	movx	@dptr,a
      000A3F 90 04 58         [24] 2461 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0007)
      000A42 F0               [24] 2462 	movx	@dptr,a
                                   2463 ;	lcd.c:573: }
      000A43 D2 06            [12] 2464 	setb	_handle_cu_custom_char_sloc0_1_0
      000A45 10 AF 02         [24] 2465 	jbc	ea,00103$
      000A48 C2 06            [12] 2466 	clr	_handle_cu_custom_char_sloc0_1_0
      000A4A                       2467 00103$:
                                   2468 ;	lcd.c:570: create_custom_char(ccode1, row_vals1);      // Call function to create custom character on the LCD
      000A4A 90 04 45         [24] 2469 	mov	dptr,#_create_custom_char_PARM_2
      000A4D 74 51            [12] 2470 	mov	a,#_handle_cu_custom_char_row_vals1_65537_183
      000A4F F0               [24] 2471 	movx	@dptr,a
      000A50 74 04            [12] 2472 	mov	a,#(_handle_cu_custom_char_row_vals1_65537_183 >> 8)
      000A52 A3               [24] 2473 	inc	dptr
      000A53 F0               [24] 2474 	movx	@dptr,a
      000A54 E4               [12] 2475 	clr	a
      000A55 A3               [24] 2476 	inc	dptr
      000A56 F0               [24] 2477 	movx	@dptr,a
      000A57 75 82 31         [24] 2478 	mov	dpl,#0x31
      000A5A 12 08 51         [24] 2479 	lcall	_create_custom_char
                                   2480 ;	lcd.c:571: lcdgotoxy('1', '4');                        // Move cursor to position to display custom character 1
      000A5D 90 04 06         [24] 2481 	mov	dptr,#_lcdgotoxy_PARM_2
      000A60 74 34            [12] 2482 	mov	a,#0x34
      000A62 F0               [24] 2483 	movx	@dptr,a
      000A63 75 82 31         [24] 2484 	mov	dpl,#0x31
      000A66 12 01 9E         [24] 2485 	lcall	_lcdgotoxy
                                   2486 ;	lcd.c:572: lcdputch(ccode1 - '0');                     // Display custom character 1 on the LCD screen
      000A69 75 82 01         [24] 2487 	mov	dpl,#0x01
      000A6C 12 02 57         [24] 2488 	lcall	_lcdputch
      000A6F A2 06            [12] 2489 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000A71 92 AF            [24] 2490 	mov	ea,c
                                   2491 ;	lcd.c:577: unsigned char row_vals2[8] = {0x00, 0x00, 0x18, 0x00, 0x00, 0x02, 0x02, 0x02};
      000A73 90 04 59         [24] 2492 	mov	dptr,#_handle_cu_custom_char_row_vals2_65538_185
      000A76 E4               [12] 2493 	clr	a
      000A77 F0               [24] 2494 	movx	@dptr,a
      000A78 90 04 5A         [24] 2495 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0001)
      000A7B F0               [24] 2496 	movx	@dptr,a
      000A7C 90 04 5B         [24] 2497 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0002)
      000A7F 74 18            [12] 2498 	mov	a,#0x18
      000A81 F0               [24] 2499 	movx	@dptr,a
      000A82 90 04 5C         [24] 2500 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0003)
      000A85 E4               [12] 2501 	clr	a
      000A86 F0               [24] 2502 	movx	@dptr,a
      000A87 90 04 5D         [24] 2503 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0004)
      000A8A F0               [24] 2504 	movx	@dptr,a
      000A8B 90 04 5E         [24] 2505 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0005)
      000A8E 74 02            [12] 2506 	mov	a,#0x02
      000A90 F0               [24] 2507 	movx	@dptr,a
      000A91 90 04 5F         [24] 2508 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0006)
      000A94 F0               [24] 2509 	movx	@dptr,a
      000A95 90 04 60         [24] 2510 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0007)
      000A98 F0               [24] 2511 	movx	@dptr,a
                                   2512 ;	lcd.c:583: }
      000A99 D2 06            [12] 2513 	setb	_handle_cu_custom_char_sloc0_1_0
      000A9B 10 AF 02         [24] 2514 	jbc	ea,00104$
      000A9E C2 06            [12] 2515 	clr	_handle_cu_custom_char_sloc0_1_0
      000AA0                       2516 00104$:
                                   2517 ;	lcd.c:579: create_custom_char(ccode2, row_vals2);      // Call function to create custom character on the LCD
      000AA0 90 04 45         [24] 2518 	mov	dptr,#_create_custom_char_PARM_2
      000AA3 74 59            [12] 2519 	mov	a,#_handle_cu_custom_char_row_vals2_65538_185
      000AA5 F0               [24] 2520 	movx	@dptr,a
      000AA6 74 04            [12] 2521 	mov	a,#(_handle_cu_custom_char_row_vals2_65538_185 >> 8)
      000AA8 A3               [24] 2522 	inc	dptr
      000AA9 F0               [24] 2523 	movx	@dptr,a
      000AAA E4               [12] 2524 	clr	a
      000AAB A3               [24] 2525 	inc	dptr
      000AAC F0               [24] 2526 	movx	@dptr,a
      000AAD 75 82 32         [24] 2527 	mov	dpl,#0x32
      000AB0 12 08 51         [24] 2528 	lcall	_create_custom_char
                                   2529 ;	lcd.c:580: lcdgotoxy('1', '5');                        // Move cursor to position to display custom character 2
      000AB3 90 04 06         [24] 2530 	mov	dptr,#_lcdgotoxy_PARM_2
      000AB6 74 35            [12] 2531 	mov	a,#0x35
      000AB8 F0               [24] 2532 	movx	@dptr,a
      000AB9 75 82 31         [24] 2533 	mov	dpl,#0x31
      000ABC 12 01 9E         [24] 2534 	lcall	_lcdgotoxy
                                   2535 ;	lcd.c:581: lcdputch(ccode2 - '0');                     // Display custom character 2 on the LCD screen
      000ABF 75 82 02         [24] 2536 	mov	dpl,#0x02
      000AC2 12 02 57         [24] 2537 	lcall	_lcdputch
                                   2538 ;	lcd.c:582: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000AC5 90 05 0F         [24] 2539 	mov	dptr,#_save_cursor_address
      000AC8 E0               [24] 2540 	movx	a,@dptr
      000AC9 F5 82            [12] 2541 	mov	dpl,a
      000ACB 12 01 81         [24] 2542 	lcall	_lcdgotoaddr
      000ACE A2 06            [12] 2543 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000AD0 92 AF            [24] 2544 	mov	ea,c
                                   2545 ;	lcd.c:587: unsigned char row_vals3[8] = {0x09, 0x09, 0x09, 0x0F, 0x01, 0x01, 0x00, 0x00};
      000AD2 90 04 61         [24] 2546 	mov	dptr,#_handle_cu_custom_char_row_vals3_65539_187
      000AD5 74 09            [12] 2547 	mov	a,#0x09
      000AD7 F0               [24] 2548 	movx	@dptr,a
      000AD8 90 04 62         [24] 2549 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0001)
      000ADB F0               [24] 2550 	movx	@dptr,a
      000ADC 90 04 63         [24] 2551 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0002)
      000ADF F0               [24] 2552 	movx	@dptr,a
      000AE0 90 04 64         [24] 2553 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0003)
      000AE3 74 0F            [12] 2554 	mov	a,#0x0f
      000AE5 F0               [24] 2555 	movx	@dptr,a
      000AE6 90 04 65         [24] 2556 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0004)
      000AE9 74 01            [12] 2557 	mov	a,#0x01
      000AEB F0               [24] 2558 	movx	@dptr,a
      000AEC 90 04 66         [24] 2559 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0005)
      000AEF F0               [24] 2560 	movx	@dptr,a
      000AF0 90 04 67         [24] 2561 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0006)
      000AF3 E4               [12] 2562 	clr	a
      000AF4 F0               [24] 2563 	movx	@dptr,a
      000AF5 90 04 68         [24] 2564 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0007)
      000AF8 F0               [24] 2565 	movx	@dptr,a
                                   2566 ;	lcd.c:593: }
      000AF9 D2 06            [12] 2567 	setb	_handle_cu_custom_char_sloc0_1_0
      000AFB 10 AF 02         [24] 2568 	jbc	ea,00105$
      000AFE C2 06            [12] 2569 	clr	_handle_cu_custom_char_sloc0_1_0
      000B00                       2570 00105$:
                                   2571 ;	lcd.c:589: create_custom_char(ccode3, row_vals3);      // Call function to create custom character on the LCD
      000B00 90 04 45         [24] 2572 	mov	dptr,#_create_custom_char_PARM_2
      000B03 74 61            [12] 2573 	mov	a,#_handle_cu_custom_char_row_vals3_65539_187
      000B05 F0               [24] 2574 	movx	@dptr,a
      000B06 74 04            [12] 2575 	mov	a,#(_handle_cu_custom_char_row_vals3_65539_187 >> 8)
      000B08 A3               [24] 2576 	inc	dptr
      000B09 F0               [24] 2577 	movx	@dptr,a
      000B0A E4               [12] 2578 	clr	a
      000B0B A3               [24] 2579 	inc	dptr
      000B0C F0               [24] 2580 	movx	@dptr,a
      000B0D 75 82 33         [24] 2581 	mov	dpl,#0x33
      000B10 12 08 51         [24] 2582 	lcall	_create_custom_char
                                   2583 ;	lcd.c:590: lcdgotoxy('2', '4');                        // Move cursor to position to display custom character 3
      000B13 90 04 06         [24] 2584 	mov	dptr,#_lcdgotoxy_PARM_2
      000B16 74 34            [12] 2585 	mov	a,#0x34
      000B18 F0               [24] 2586 	movx	@dptr,a
      000B19 75 82 32         [24] 2587 	mov	dpl,#0x32
      000B1C 12 01 9E         [24] 2588 	lcall	_lcdgotoxy
                                   2589 ;	lcd.c:591: lcdputch(ccode3 - '0');                     // Display custom character 3 on the LCD screen
      000B1F 75 82 03         [24] 2590 	mov	dpl,#0x03
      000B22 12 02 57         [24] 2591 	lcall	_lcdputch
                                   2592 ;	lcd.c:592: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000B25 90 05 0F         [24] 2593 	mov	dptr,#_save_cursor_address
      000B28 E0               [24] 2594 	movx	a,@dptr
      000B29 F5 82            [12] 2595 	mov	dpl,a
      000B2B 12 01 81         [24] 2596 	lcall	_lcdgotoaddr
      000B2E A2 06            [12] 2597 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000B30 92 AF            [24] 2598 	mov	ea,c
                                   2599 ;	lcd.c:597: unsigned char row_vals4[8] = {0x02, 0x02, 0x02, 0x1A, 0x02, 0x1E, 0x00, 0x00};
      000B32 90 04 69         [24] 2600 	mov	dptr,#_handle_cu_custom_char_row_vals4_65540_189
      000B35 74 02            [12] 2601 	mov	a,#0x02
      000B37 F0               [24] 2602 	movx	@dptr,a
      000B38 90 04 6A         [24] 2603 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0001)
      000B3B F0               [24] 2604 	movx	@dptr,a
      000B3C 90 04 6B         [24] 2605 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0002)
      000B3F F0               [24] 2606 	movx	@dptr,a
      000B40 90 04 6C         [24] 2607 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0003)
      000B43 74 1A            [12] 2608 	mov	a,#0x1a
      000B45 F0               [24] 2609 	movx	@dptr,a
      000B46 90 04 6D         [24] 2610 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0004)
      000B49 74 02            [12] 2611 	mov	a,#0x02
      000B4B F0               [24] 2612 	movx	@dptr,a
      000B4C 90 04 6E         [24] 2613 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0005)
      000B4F 74 1E            [12] 2614 	mov	a,#0x1e
      000B51 F0               [24] 2615 	movx	@dptr,a
      000B52 90 04 6F         [24] 2616 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0006)
      000B55 E4               [12] 2617 	clr	a
      000B56 F0               [24] 2618 	movx	@dptr,a
      000B57 90 04 70         [24] 2619 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0007)
      000B5A F0               [24] 2620 	movx	@dptr,a
                                   2621 ;	lcd.c:603: }
      000B5B D2 06            [12] 2622 	setb	_handle_cu_custom_char_sloc0_1_0
      000B5D 10 AF 02         [24] 2623 	jbc	ea,00106$
      000B60 C2 06            [12] 2624 	clr	_handle_cu_custom_char_sloc0_1_0
      000B62                       2625 00106$:
                                   2626 ;	lcd.c:599: create_custom_char(ccode4, row_vals4);      // Call function to create custom character on the LCD
      000B62 90 04 45         [24] 2627 	mov	dptr,#_create_custom_char_PARM_2
      000B65 74 69            [12] 2628 	mov	a,#_handle_cu_custom_char_row_vals4_65540_189
      000B67 F0               [24] 2629 	movx	@dptr,a
      000B68 74 04            [12] 2630 	mov	a,#(_handle_cu_custom_char_row_vals4_65540_189 >> 8)
      000B6A A3               [24] 2631 	inc	dptr
      000B6B F0               [24] 2632 	movx	@dptr,a
      000B6C E4               [12] 2633 	clr	a
      000B6D A3               [24] 2634 	inc	dptr
      000B6E F0               [24] 2635 	movx	@dptr,a
      000B6F 75 82 34         [24] 2636 	mov	dpl,#0x34
      000B72 12 08 51         [24] 2637 	lcall	_create_custom_char
                                   2638 ;	lcd.c:600: lcdgotoxy('2', '5');                        // Move cursor to position to display custom character 4
      000B75 90 04 06         [24] 2639 	mov	dptr,#_lcdgotoxy_PARM_2
      000B78 74 35            [12] 2640 	mov	a,#0x35
      000B7A F0               [24] 2641 	movx	@dptr,a
      000B7B 75 82 32         [24] 2642 	mov	dpl,#0x32
      000B7E 12 01 9E         [24] 2643 	lcall	_lcdgotoxy
                                   2644 ;	lcd.c:601: lcdputch(ccode4 - '0');                     // Display custom character 4 on the LCD screen
      000B81 75 82 04         [24] 2645 	mov	dpl,#0x04
      000B84 12 02 57         [24] 2646 	lcall	_lcdputch
                                   2647 ;	lcd.c:602: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000B87 90 05 0F         [24] 2648 	mov	dptr,#_save_cursor_address
      000B8A E0               [24] 2649 	movx	a,@dptr
      000B8B F5 82            [12] 2650 	mov	dpl,a
      000B8D 12 01 81         [24] 2651 	lcall	_lcdgotoaddr
      000B90 A2 06            [12] 2652 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000B92 92 AF            [24] 2653 	mov	ea,c
                                   2654 ;	lcd.c:605: printf("\033[0m");                              // Reset text color to default
      000B94 74 C7            [12] 2655 	mov	a,#___str_23
      000B96 C0 E0            [24] 2656 	push	acc
      000B98 74 2D            [12] 2657 	mov	a,#(___str_23 >> 8)
      000B9A C0 E0            [24] 2658 	push	acc
      000B9C 74 80            [12] 2659 	mov	a,#0x80
      000B9E C0 E0            [24] 2660 	push	acc
      000BA0 12 20 B5         [24] 2661 	lcall	_printf
      000BA3 15 81            [12] 2662 	dec	sp
      000BA5 15 81            [12] 2663 	dec	sp
      000BA7 15 81            [12] 2664 	dec	sp
                                   2665 ;	lcd.c:606: }
      000BA9 22               [24] 2666 	ret
                                   2667 ;------------------------------------------------------------
                                   2668 ;Allocation info for local variables in function 'handle_sadsmiley_custom_char'
                                   2669 ;------------------------------------------------------------
                                   2670 ;ccode1                    Allocated with name '_handle_sadsmiley_custom_char_ccode1_65537_193'
                                   2671 ;row_vals1                 Allocated with name '_handle_sadsmiley_custom_char_row_vals1_65537_193'
                                   2672 ;ccode2                    Allocated with name '_handle_sadsmiley_custom_char_ccode2_65538_195'
                                   2673 ;row_vals2                 Allocated with name '_handle_sadsmiley_custom_char_row_vals2_65538_195'
                                   2674 ;ccode3                    Allocated with name '_handle_sadsmiley_custom_char_ccode3_65539_197'
                                   2675 ;row_vals3                 Allocated with name '_handle_sadsmiley_custom_char_row_vals3_65539_197'
                                   2676 ;ccode4                    Allocated with name '_handle_sadsmiley_custom_char_ccode4_65540_199'
                                   2677 ;row_vals4                 Allocated with name '_handle_sadsmiley_custom_char_row_vals4_65540_199'
                                   2678 ;------------------------------------------------------------
                                   2679 ;	lcd.c:609: void handle_sadsmiley_custom_char(void)
                                   2680 ;	-----------------------------------------
                                   2681 ;	 function handle_sadsmiley_custom_char
                                   2682 ;	-----------------------------------------
      000BAA                       2683 _handle_sadsmiley_custom_char:
                                   2684 ;	lcd.c:612: printf("\033[0;33m");
      000BAA 74 81            [12] 2685 	mov	a,#___str_29
      000BAC C0 E0            [24] 2686 	push	acc
      000BAE 74 2E            [12] 2687 	mov	a,#(___str_29 >> 8)
      000BB0 C0 E0            [24] 2688 	push	acc
      000BB2 74 80            [12] 2689 	mov	a,#0x80
      000BB4 C0 E0            [24] 2690 	push	acc
      000BB6 12 20 B5         [24] 2691 	lcall	_printf
      000BB9 15 81            [12] 2692 	dec	sp
      000BBB 15 81            [12] 2693 	dec	sp
      000BBD 15 81            [12] 2694 	dec	sp
                                   2695 ;	lcd.c:615: save_cursor_address = get_cursor_address();
      000BBF 12 01 74         [24] 2696 	lcall	_get_cursor_address
      000BC2 E5 82            [12] 2697 	mov	a,dpl
      000BC4 90 05 0F         [24] 2698 	mov	dptr,#_save_cursor_address
      000BC7 F0               [24] 2699 	movx	@dptr,a
                                   2700 ;	lcd.c:619: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
      000BC8 90 04 71         [24] 2701 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals1_65537_193
      000BCB 74 1F            [12] 2702 	mov	a,#0x1f
      000BCD F0               [24] 2703 	movx	@dptr,a
      000BCE 90 04 72         [24] 2704 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0001)
      000BD1 F0               [24] 2705 	movx	@dptr,a
      000BD2 90 04 73         [24] 2706 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0002)
      000BD5 74 11            [12] 2707 	mov	a,#0x11
      000BD7 F0               [24] 2708 	movx	@dptr,a
      000BD8 90 04 74         [24] 2709 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0003)
      000BDB 74 15            [12] 2710 	mov	a,#0x15
      000BDD F0               [24] 2711 	movx	@dptr,a
      000BDE 90 04 75         [24] 2712 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0004)
      000BE1 74 11            [12] 2713 	mov	a,#0x11
      000BE3 F0               [24] 2714 	movx	@dptr,a
      000BE4 90 04 76         [24] 2715 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0005)
      000BE7 74 1F            [12] 2716 	mov	a,#0x1f
      000BE9 F0               [24] 2717 	movx	@dptr,a
      000BEA 90 04 77         [24] 2718 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0006)
      000BED F0               [24] 2719 	movx	@dptr,a
      000BEE 90 04 78         [24] 2720 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0007)
      000BF1 F0               [24] 2721 	movx	@dptr,a
                                   2722 ;	lcd.c:626: }
      000BF2 D2 07            [12] 2723 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000BF4 10 AF 02         [24] 2724 	jbc	ea,00103$
      000BF7 C2 07            [12] 2725 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000BF9                       2726 00103$:
                                   2727 ;	lcd.c:622: create_custom_char(ccode1, row_vals1);
      000BF9 90 04 45         [24] 2728 	mov	dptr,#_create_custom_char_PARM_2
      000BFC 74 71            [12] 2729 	mov	a,#_handle_sadsmiley_custom_char_row_vals1_65537_193
      000BFE F0               [24] 2730 	movx	@dptr,a
      000BFF 74 04            [12] 2731 	mov	a,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 >> 8)
      000C01 A3               [24] 2732 	inc	dptr
      000C02 F0               [24] 2733 	movx	@dptr,a
      000C03 E4               [12] 2734 	clr	a
      000C04 A3               [24] 2735 	inc	dptr
      000C05 F0               [24] 2736 	movx	@dptr,a
      000C06 75 82 31         [24] 2737 	mov	dpl,#0x31
      000C09 12 08 51         [24] 2738 	lcall	_create_custom_char
                                   2739 ;	lcd.c:624: lcdgotoxy('1', '4');
      000C0C 90 04 06         [24] 2740 	mov	dptr,#_lcdgotoxy_PARM_2
      000C0F 74 34            [12] 2741 	mov	a,#0x34
      000C11 F0               [24] 2742 	movx	@dptr,a
      000C12 75 82 31         [24] 2743 	mov	dpl,#0x31
      000C15 12 01 9E         [24] 2744 	lcall	_lcdgotoxy
                                   2745 ;	lcd.c:625: lcdputch(ccode1 - '0');
      000C18 75 82 01         [24] 2746 	mov	dpl,#0x01
      000C1B 12 02 57         [24] 2747 	lcall	_lcdputch
      000C1E A2 07            [12] 2748 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000C20 92 AF            [24] 2749 	mov	ea,c
                                   2750 ;	lcd.c:630: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
      000C22 90 04 79         [24] 2751 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals2_65538_195
      000C25 74 1F            [12] 2752 	mov	a,#0x1f
      000C27 F0               [24] 2753 	movx	@dptr,a
      000C28 90 04 7A         [24] 2754 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0001)
      000C2B F0               [24] 2755 	movx	@dptr,a
      000C2C 90 04 7B         [24] 2756 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0002)
      000C2F 74 11            [12] 2757 	mov	a,#0x11
      000C31 F0               [24] 2758 	movx	@dptr,a
      000C32 90 04 7C         [24] 2759 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0003)
      000C35 74 15            [12] 2760 	mov	a,#0x15
      000C37 F0               [24] 2761 	movx	@dptr,a
      000C38 90 04 7D         [24] 2762 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0004)
      000C3B 74 11            [12] 2763 	mov	a,#0x11
      000C3D F0               [24] 2764 	movx	@dptr,a
      000C3E 90 04 7E         [24] 2765 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0005)
      000C41 74 1F            [12] 2766 	mov	a,#0x1f
      000C43 F0               [24] 2767 	movx	@dptr,a
      000C44 90 04 7F         [24] 2768 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0006)
      000C47 F0               [24] 2769 	movx	@dptr,a
      000C48 90 04 80         [24] 2770 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0007)
      000C4B F0               [24] 2771 	movx	@dptr,a
                                   2772 ;	lcd.c:639: }
      000C4C D2 07            [12] 2773 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000C4E 10 AF 02         [24] 2774 	jbc	ea,00104$
      000C51 C2 07            [12] 2775 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000C53                       2776 00104$:
                                   2777 ;	lcd.c:633: create_custom_char(ccode2, row_vals2);
      000C53 90 04 45         [24] 2778 	mov	dptr,#_create_custom_char_PARM_2
      000C56 74 79            [12] 2779 	mov	a,#_handle_sadsmiley_custom_char_row_vals2_65538_195
      000C58 F0               [24] 2780 	movx	@dptr,a
      000C59 74 04            [12] 2781 	mov	a,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 >> 8)
      000C5B A3               [24] 2782 	inc	dptr
      000C5C F0               [24] 2783 	movx	@dptr,a
      000C5D E4               [12] 2784 	clr	a
      000C5E A3               [24] 2785 	inc	dptr
      000C5F F0               [24] 2786 	movx	@dptr,a
      000C60 75 82 32         [24] 2787 	mov	dpl,#0x32
      000C63 12 08 51         [24] 2788 	lcall	_create_custom_char
                                   2789 ;	lcd.c:635: lcdgotoxy('1', '5');
      000C66 90 04 06         [24] 2790 	mov	dptr,#_lcdgotoxy_PARM_2
      000C69 74 35            [12] 2791 	mov	a,#0x35
      000C6B F0               [24] 2792 	movx	@dptr,a
      000C6C 75 82 31         [24] 2793 	mov	dpl,#0x31
      000C6F 12 01 9E         [24] 2794 	lcall	_lcdgotoxy
                                   2795 ;	lcd.c:636: lcdputch(ccode2 - '0');
      000C72 75 82 02         [24] 2796 	mov	dpl,#0x02
      000C75 12 02 57         [24] 2797 	lcall	_lcdputch
                                   2798 ;	lcd.c:638: lcdgotoaddr(save_cursor_address);
      000C78 90 05 0F         [24] 2799 	mov	dptr,#_save_cursor_address
      000C7B E0               [24] 2800 	movx	a,@dptr
      000C7C F5 82            [12] 2801 	mov	dpl,a
      000C7E 12 01 81         [24] 2802 	lcall	_lcdgotoaddr
      000C81 A2 07            [12] 2803 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000C83 92 AF            [24] 2804 	mov	ea,c
                                   2805 ;	lcd.c:643: unsigned char row_vals3[8] = {0x1F, 0x1F, 0x1F, 0x10, 0x1B, 0x1C, 0x1F, 0x1F};
      000C85 90 04 81         [24] 2806 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals3_65539_197
      000C88 74 1F            [12] 2807 	mov	a,#0x1f
      000C8A F0               [24] 2808 	movx	@dptr,a
      000C8B 90 04 82         [24] 2809 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0001)
      000C8E F0               [24] 2810 	movx	@dptr,a
      000C8F 90 04 83         [24] 2811 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0002)
      000C92 F0               [24] 2812 	movx	@dptr,a
      000C93 90 04 84         [24] 2813 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0003)
      000C96 74 10            [12] 2814 	mov	a,#0x10
      000C98 F0               [24] 2815 	movx	@dptr,a
      000C99 90 04 85         [24] 2816 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0004)
      000C9C 74 1B            [12] 2817 	mov	a,#0x1b
      000C9E F0               [24] 2818 	movx	@dptr,a
      000C9F 90 04 86         [24] 2819 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0005)
      000CA2 04               [12] 2820 	inc	a
      000CA3 F0               [24] 2821 	movx	@dptr,a
      000CA4 90 04 87         [24] 2822 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0006)
      000CA7 74 1F            [12] 2823 	mov	a,#0x1f
      000CA9 F0               [24] 2824 	movx	@dptr,a
      000CAA 90 04 88         [24] 2825 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0007)
      000CAD F0               [24] 2826 	movx	@dptr,a
                                   2827 ;	lcd.c:652: }
      000CAE D2 07            [12] 2828 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000CB0 10 AF 02         [24] 2829 	jbc	ea,00105$
      000CB3 C2 07            [12] 2830 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000CB5                       2831 00105$:
                                   2832 ;	lcd.c:646: create_custom_char(ccode3, row_vals3);
      000CB5 90 04 45         [24] 2833 	mov	dptr,#_create_custom_char_PARM_2
      000CB8 74 81            [12] 2834 	mov	a,#_handle_sadsmiley_custom_char_row_vals3_65539_197
      000CBA F0               [24] 2835 	movx	@dptr,a
      000CBB 74 04            [12] 2836 	mov	a,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 >> 8)
      000CBD A3               [24] 2837 	inc	dptr
      000CBE F0               [24] 2838 	movx	@dptr,a
      000CBF E4               [12] 2839 	clr	a
      000CC0 A3               [24] 2840 	inc	dptr
      000CC1 F0               [24] 2841 	movx	@dptr,a
      000CC2 75 82 33         [24] 2842 	mov	dpl,#0x33
      000CC5 12 08 51         [24] 2843 	lcall	_create_custom_char
                                   2844 ;	lcd.c:648: lcdgotoxy('2', '4');
      000CC8 90 04 06         [24] 2845 	mov	dptr,#_lcdgotoxy_PARM_2
      000CCB 74 34            [12] 2846 	mov	a,#0x34
      000CCD F0               [24] 2847 	movx	@dptr,a
      000CCE 75 82 32         [24] 2848 	mov	dpl,#0x32
      000CD1 12 01 9E         [24] 2849 	lcall	_lcdgotoxy
                                   2850 ;	lcd.c:649: lcdputch(ccode3 - '0');
      000CD4 75 82 03         [24] 2851 	mov	dpl,#0x03
      000CD7 12 02 57         [24] 2852 	lcall	_lcdputch
                                   2853 ;	lcd.c:651: lcdgotoaddr(save_cursor_address);
      000CDA 90 05 0F         [24] 2854 	mov	dptr,#_save_cursor_address
      000CDD E0               [24] 2855 	movx	a,@dptr
      000CDE F5 82            [12] 2856 	mov	dpl,a
      000CE0 12 01 81         [24] 2857 	lcall	_lcdgotoaddr
      000CE3 A2 07            [12] 2858 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000CE5 92 AF            [24] 2859 	mov	ea,c
                                   2860 ;	lcd.c:656: unsigned char row_vals4[8] = {0x1F, 0x1F, 0x1F, 0x01, 0x1B, 0x07, 0x1F, 0x1F};
      000CE7 90 04 89         [24] 2861 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals4_65540_199
      000CEA 74 1F            [12] 2862 	mov	a,#0x1f
      000CEC F0               [24] 2863 	movx	@dptr,a
      000CED 90 04 8A         [24] 2864 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0001)
      000CF0 F0               [24] 2865 	movx	@dptr,a
      000CF1 90 04 8B         [24] 2866 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0002)
      000CF4 F0               [24] 2867 	movx	@dptr,a
      000CF5 90 04 8C         [24] 2868 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0003)
      000CF8 74 01            [12] 2869 	mov	a,#0x01
      000CFA F0               [24] 2870 	movx	@dptr,a
      000CFB 90 04 8D         [24] 2871 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0004)
      000CFE 74 1B            [12] 2872 	mov	a,#0x1b
      000D00 F0               [24] 2873 	movx	@dptr,a
      000D01 90 04 8E         [24] 2874 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0005)
      000D04 74 07            [12] 2875 	mov	a,#0x07
      000D06 F0               [24] 2876 	movx	@dptr,a
      000D07 90 04 8F         [24] 2877 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0006)
      000D0A 74 1F            [12] 2878 	mov	a,#0x1f
      000D0C F0               [24] 2879 	movx	@dptr,a
      000D0D 90 04 90         [24] 2880 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0007)
      000D10 F0               [24] 2881 	movx	@dptr,a
                                   2882 ;	lcd.c:665: }
      000D11 D2 07            [12] 2883 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000D13 10 AF 02         [24] 2884 	jbc	ea,00106$
      000D16 C2 07            [12] 2885 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000D18                       2886 00106$:
                                   2887 ;	lcd.c:659: create_custom_char(ccode4, row_vals4);
      000D18 90 04 45         [24] 2888 	mov	dptr,#_create_custom_char_PARM_2
      000D1B 74 89            [12] 2889 	mov	a,#_handle_sadsmiley_custom_char_row_vals4_65540_199
      000D1D F0               [24] 2890 	movx	@dptr,a
      000D1E 74 04            [12] 2891 	mov	a,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 >> 8)
      000D20 A3               [24] 2892 	inc	dptr
      000D21 F0               [24] 2893 	movx	@dptr,a
      000D22 E4               [12] 2894 	clr	a
      000D23 A3               [24] 2895 	inc	dptr
      000D24 F0               [24] 2896 	movx	@dptr,a
      000D25 75 82 34         [24] 2897 	mov	dpl,#0x34
      000D28 12 08 51         [24] 2898 	lcall	_create_custom_char
                                   2899 ;	lcd.c:661: lcdgotoxy('2', '5');
      000D2B 90 04 06         [24] 2900 	mov	dptr,#_lcdgotoxy_PARM_2
      000D2E 74 35            [12] 2901 	mov	a,#0x35
      000D30 F0               [24] 2902 	movx	@dptr,a
      000D31 75 82 32         [24] 2903 	mov	dpl,#0x32
      000D34 12 01 9E         [24] 2904 	lcall	_lcdgotoxy
                                   2905 ;	lcd.c:662: lcdputch(ccode4 - '0');
      000D37 75 82 04         [24] 2906 	mov	dpl,#0x04
      000D3A 12 02 57         [24] 2907 	lcall	_lcdputch
                                   2908 ;	lcd.c:664: lcdgotoaddr(save_cursor_address);
      000D3D 90 05 0F         [24] 2909 	mov	dptr,#_save_cursor_address
      000D40 E0               [24] 2910 	movx	a,@dptr
      000D41 F5 82            [12] 2911 	mov	dpl,a
      000D43 12 01 81         [24] 2912 	lcall	_lcdgotoaddr
      000D46 A2 07            [12] 2913 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000D48 92 AF            [24] 2914 	mov	ea,c
                                   2915 ;	lcd.c:668: printf("\033[0m");
      000D4A 74 C7            [12] 2916 	mov	a,#___str_23
      000D4C C0 E0            [24] 2917 	push	acc
      000D4E 74 2D            [12] 2918 	mov	a,#(___str_23 >> 8)
      000D50 C0 E0            [24] 2919 	push	acc
      000D52 74 80            [12] 2920 	mov	a,#0x80
      000D54 C0 E0            [24] 2921 	push	acc
      000D56 12 20 B5         [24] 2922 	lcall	_printf
      000D59 15 81            [12] 2923 	dec	sp
      000D5B 15 81            [12] 2924 	dec	sp
      000D5D 15 81            [12] 2925 	dec	sp
                                   2926 ;	lcd.c:669: }
      000D5F 22               [24] 2927 	ret
                                   2928 ;------------------------------------------------------------
                                   2929 ;Allocation info for local variables in function 'print_author'
                                   2930 ;------------------------------------------------------------
                                   2931 ;str                       Allocated with name '_print_author_str_65537_203'
                                   2932 ;------------------------------------------------------------
                                   2933 ;	lcd.c:672: void print_author(void)
                                   2934 ;	-----------------------------------------
                                   2935 ;	 function print_author
                                   2936 ;	-----------------------------------------
      000D60                       2937 _print_author:
                                   2938 ;	lcd.c:675: printf_tiny("\033[1;33m\n\rAuthor Info Printed !!\r\n");
      000D60 74 E5            [12] 2939 	mov	a,#___str_33
      000D62 C0 E0            [24] 2940 	push	acc
      000D64 74 2E            [12] 2941 	mov	a,#(___str_33 >> 8)
      000D66 C0 E0            [24] 2942 	push	acc
      000D68 12 1A 00         [24] 2943 	lcall	_printf_tiny
      000D6B 15 81            [12] 2944 	dec	sp
      000D6D 15 81            [12] 2945 	dec	sp
                                   2946 ;	lcd.c:679: str = "Kiran Jojare    ESD Summer 2023 Lab 4           ";
                                   2947 ;	lcd.c:690: }
      000D6F D2 08            [12] 2948 	setb	_print_author_sloc0_1_0
      000D71 10 AF 02         [24] 2949 	jbc	ea,00103$
      000D74 C2 08            [12] 2950 	clr	_print_author_sloc0_1_0
      000D76                       2951 00103$:
                                   2952 ;	lcd.c:685: lcdgotoaddr(0x00);
      000D76 75 82 00         [24] 2953 	mov	dpl,#0x00
      000D79 12 01 81         [24] 2954 	lcall	_lcdgotoaddr
                                   2955 ;	lcd.c:686: lcdputstr(str);
      000D7C 90 2F 07         [24] 2956 	mov	dptr,#___str_34
      000D7F 75 F0 80         [24] 2957 	mov	b,#0x80
      000D82 12 02 BA         [24] 2958 	lcall	_lcdputstr
                                   2959 ;	lcd.c:689: lcdgotoaddr(0x00);
      000D85 75 82 00         [24] 2960 	mov	dpl,#0x00
      000D88 12 01 81         [24] 2961 	lcall	_lcdgotoaddr
      000D8B A2 08            [12] 2962 	mov	c,_print_author_sloc0_1_0
      000D8D 92 AF            [24] 2963 	mov	ea,c
                                   2964 ;	lcd.c:691: return;
                                   2965 ;	lcd.c:692: }
      000D8F 22               [24] 2966 	ret
                                   2967 	.area CSEG    (CODE)
                                   2968 	.area CONST   (CODE)
                                   2969 	.area CONST   (CODE)
      002B69                       2970 ___str_0:
      002B69 20 20 20 20 20 20 20  2971 	.ascii "       "
      002B70 00                    2972 	.db 0x00
                                   2973 	.area CSEG    (CODE)
                                   2974 	.area CONST   (CODE)
      002B71                       2975 ___str_1:
      002B71 1B                    2976 	.db 0x1b
      002B72 5B 31 3B 33 33 6D     2977 	.ascii "[1;33m"
      002B78 0A                    2978 	.db 0x0a
      002B79 0D                    2979 	.db 0x0d
      002B7A 4C 43 44 20 43 6C 65  2980 	.ascii "LCD Cleared!!"
             61 72 65 64 21 21
      002B87 0D                    2981 	.db 0x0d
      002B88 0A                    2982 	.db 0x0a
      002B89 00                    2983 	.db 0x00
                                   2984 	.area CSEG    (CODE)
                                   2985 	.area CONST   (CODE)
      002B8A                       2986 ___str_2:
      002B8A 1B                    2987 	.db 0x1b
      002B8B 5B 31 3B 33 33 6D     2988 	.ascii "[1;33m"
      002B91 0A                    2989 	.db 0x0a
      002B92 0D                    2990 	.db 0x0d
      002B93 45 6E 74 65 72 20 43  2991 	.ascii "Enter Character to put on LCD !!"
             68 61 72 61 63 74 65
             72 20 74 6F 20 70 75
             74 20 6F 6E 20 4C 43
             44 20 21 21
      002BB3 0D                    2992 	.db 0x0d
      002BB4 0A                    2993 	.db 0x0a
      002BB5 00                    2994 	.db 0x00
                                   2995 	.area CSEG    (CODE)
                                   2996 	.area CONST   (CODE)
      002BB6                       2997 ___str_3:
      002BB6 0A                    2998 	.db 0x0a
      002BB7 0D                    2999 	.db 0x0d
      002BB8 45 6E 74 65 72 65 64  3000 	.ascii "Entered Char = %c"
             20 43 68 61 72 20 3D
             20 25 63
      002BC9 0A                    3001 	.db 0x0a
      002BCA 0D                    3002 	.db 0x0d
      002BCB 00                    3003 	.db 0x00
                                   3004 	.area CSEG    (CODE)
                                   3005 	.area CONST   (CODE)
      002BCC                       3006 ___str_4:
      002BCC 0A                    3007 	.db 0x0a
      002BCD 0D                    3008 	.db 0x0d
      002BCE 00                    3009 	.db 0x00
                                   3010 	.area CSEG    (CODE)
                                   3011 	.area CONST   (CODE)
      002BCF                       3012 ___str_5:
      002BCF 1B                    3013 	.db 0x1b
      002BD0 5B 31 3B 33 33 6D     3014 	.ascii "[1;33m"
      002BD6 0A                    3015 	.db 0x0a
      002BD7 0D                    3016 	.db 0x0d
      002BD8 45 6E 74 65 72 20 53  3017 	.ascii "Enter String to put on LCD !!"
             74 72 69 6E 67 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002BF5 0D                    3018 	.db 0x0d
      002BF6 0A                    3019 	.db 0x0a
      002BF7 00                    3020 	.db 0x00
                                   3021 	.area CSEG    (CODE)
                                   3022 	.area CONST   (CODE)
      002BF8                       3023 ___str_6:
      002BF8 45 6E 74 65 72 65 64  3024 	.ascii "Entered String = %s"
             20 53 74 72 69 6E 67
             20 3D 20 25 73
      002C0B 0A                    3025 	.db 0x0a
      002C0C 0D                    3026 	.db 0x0d
      002C0D 00                    3027 	.db 0x00
                                   3028 	.area CSEG    (CODE)
                                   3029 	.area CONST   (CODE)
      002C0E                       3030 ___str_7:
      002C0E 1B                    3031 	.db 0x1b
      002C0F 5B 31 3B 33 33 6D     3032 	.ascii "[1;33m"
      002C15 0A                    3033 	.db 0x0a
      002C16 0D                    3034 	.db 0x0d
      002C17 45 6E 74 65 72 20 58  3035 	.ascii "Enter X-Co-ordinate to put on LCD !!"
             2D 43 6F 2D 6F 72 64
             69 6E 61 74 65 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002C3B 0D                    3036 	.db 0x0d
      002C3C 0A                    3037 	.db 0x0a
      002C3D 00                    3038 	.db 0x00
                                   3039 	.area CSEG    (CODE)
                                   3040 	.area CONST   (CODE)
      002C3E                       3041 ___str_8:
      002C3E 58 2D 43 6F 72 64 69  3042 	.ascii "X-Cordinate = %c"
             6E 61 74 65 20 3D 20
             25 63
      002C4E 0A                    3043 	.db 0x0a
      002C4F 0D                    3044 	.db 0x0d
      002C50 00                    3045 	.db 0x00
                                   3046 	.area CSEG    (CODE)
                                   3047 	.area CONST   (CODE)
      002C51                       3048 ___str_9:
      002C51 1B                    3049 	.db 0x1b
      002C52 5B 31 3B 33 33 6D     3050 	.ascii "[1;33m"
      002C58 0A                    3051 	.db 0x0a
      002C59 0D                    3052 	.db 0x0d
      002C5A 45 6E 74 65 72 20 59  3053 	.ascii "Enter Y-Co-ordinate to put on LCD !!"
             2D 43 6F 2D 6F 72 64
             69 6E 61 74 65 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002C7E 0D                    3054 	.db 0x0d
      002C7F 0A                    3055 	.db 0x0a
      002C80 00                    3056 	.db 0x00
                                   3057 	.area CSEG    (CODE)
                                   3058 	.area CONST   (CODE)
      002C81                       3059 ___str_10:
      002C81 59 2D 43 6F 72 64 69  3060 	.ascii "Y-Cordinate = %c"
             6E 61 74 65 20 3D 20
             25 63
      002C91 0A                    3061 	.db 0x0a
      002C92 0D                    3062 	.db 0x0d
      002C93 00                    3063 	.db 0x00
                                   3064 	.area CSEG    (CODE)
                                   3065 	.area CONST   (CODE)
      002C94                       3066 ___str_11:
      002C94 1B                    3067 	.db 0x1b
      002C95 5B 31 3B 33 31 6D 49  3068 	.ascii "[1;31mInvalid coordinate!!"
             6E 76 61 6C 69 64 20
             63 6F 6F 72 64 69 6E
             61 74 65 21 21
      002CAF 0A                    3069 	.db 0x0a
      002CB0 0D                    3070 	.db 0x0d
      002CB1 00                    3071 	.db 0x00
                                   3072 	.area CSEG    (CODE)
                                   3073 	.area CONST   (CODE)
      002CB2                       3074 ___str_12:
      002CB2 1B                    3075 	.db 0x1b
      002CB3 5B 31 3B 33 33 6D     3076 	.ascii "[1;33m"
      002CB9 0A                    3077 	.db 0x0a
      002CBA 0D                    3078 	.db 0x0d
      002CBB 43 75 72 73 6F 72 20  3079 	.ascii "Cursor Movement Completed!!"
             4D 6F 76 65 6D 65 6E
             74 20 43 6F 6D 70 6C
             65 74 65 64 21 21
      002CD6 0D                    3080 	.db 0x0d
      002CD7 0A                    3081 	.db 0x0a
      002CD8 00                    3082 	.db 0x00
                                   3083 	.area CSEG    (CODE)
                                   3084 	.area CONST   (CODE)
      002CD9                       3085 ___str_13:
      002CD9 1B                    3086 	.db 0x1b
      002CDA 5B 31 3B 33 33 6D     3087 	.ascii "[1;33m"
      002CE0 0A                    3088 	.db 0x0a
      002CE1 0D                    3089 	.db 0x0d
      002CE2 45 6E 74 65 72 20 61  3090 	.ascii "Enter address to put onto the LCD !!"
             64 64 72 65 73 73 20
             74 6F 20 70 75 74 20
             6F 6E 74 6F 20 74 68
             65 20 4C 43 44 20 21
             21
      002D06 0D                    3091 	.db 0x0d
      002D07 0A                    3092 	.db 0x0a
      002D08 00                    3093 	.db 0x00
                                   3094 	.area CSEG    (CODE)
                                   3095 	.area CONST   (CODE)
      002D09                       3096 ___str_14:
      002D09 41 64 64 72 65 73 73  3097 	.ascii "Address Entered = %s"
             20 45 6E 74 65 72 65
             64 20 3D 20 25 73
      002D1D 0A                    3098 	.db 0x0a
      002D1E 0D                    3099 	.db 0x0d
      002D1F 00                    3100 	.db 0x00
                                   3101 	.area CSEG    (CODE)
                                   3102 	.area CONST   (CODE)
      002D20                       3103 ___str_15:
      002D20 1B                    3104 	.db 0x1b
      002D21 5B 31 3B 33 33 6D     3105 	.ascii "[1;33m"
      002D27 0A                    3106 	.db 0x0a
      002D28 0D                    3107 	.db 0x0d
      002D29 54 69 6D 65 20 50 61  3108 	.ascii "Time Paused !!"
             75 73 65 64 20 21 21
      002D37 0D                    3109 	.db 0x0d
      002D38 0A                    3110 	.db 0x0a
      002D39 00                    3111 	.db 0x00
                                   3112 	.area CSEG    (CODE)
                                   3113 	.area CONST   (CODE)
      002D3A                       3114 ___str_16:
      002D3A 1B                    3115 	.db 0x1b
      002D3B 5B 31 3B 33 33 6D     3116 	.ascii "[1;33m"
      002D41 0A                    3117 	.db 0x0a
      002D42 0D                    3118 	.db 0x0d
      002D43 54 69 6D 65 20 52 65  3119 	.ascii "Time Resumed !!"
             73 75 6D 65 64 20 21
             21
      002D52 0D                    3120 	.db 0x0d
      002D53 0A                    3121 	.db 0x0a
      002D54 00                    3122 	.db 0x00
                                   3123 	.area CSEG    (CODE)
                                   3124 	.area CONST   (CODE)
      002D55                       3125 ___str_17:
      002D55 1B                    3126 	.db 0x1b
      002D56 5B 31 3B 33 33 6D     3127 	.ascii "[1;33m"
      002D5C 0A                    3128 	.db 0x0a
      002D5D 0D                    3129 	.db 0x0d
      002D5E 54 69 6D 65 20 52 65  3130 	.ascii "Time Reset !!"
             73 65 74 20 21 21
      002D6B 0D                    3131 	.db 0x0d
      002D6C 0A                    3132 	.db 0x0a
      002D6D 00                    3133 	.db 0x00
                                   3134 	.area CSEG    (CODE)
                                   3135 	.area CONST   (CODE)
      002D6E                       3136 ___str_18:
      002D6E 1B                    3137 	.db 0x1b
      002D6F 5B 31 3B 33 34 6D     3138 	.ascii "[1;34m"
      002D75 00                    3139 	.db 0x00
                                   3140 	.area CSEG    (CODE)
                                   3141 	.area CONST   (CODE)
      002D76                       3142 ___str_19:
      002D76 0A                    3143 	.db 0x0a
      002D77 0D                    3144 	.db 0x0d
      002D78 50 72 69 6E 74 69 6E  3145 	.ascii "Printing Hexdump of DDRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 44
             44 52 41 4D
      002D91 0A                    3146 	.db 0x0a
      002D92 0D                    3147 	.db 0x0d
      002D93 00                    3148 	.db 0x00
                                   3149 	.area CSEG    (CODE)
                                   3150 	.area CONST   (CODE)
      002D94                       3151 ___str_20:
      002D94 0A                    3152 	.db 0x0a
      002D95 0D                    3153 	.db 0x0d
      002D96 30 78 25 30 32 78 3A  3154 	.ascii "0x%02x: "
             20
      002D9E 00                    3155 	.db 0x00
                                   3156 	.area CSEG    (CODE)
                                   3157 	.area CONST   (CODE)
      002D9F                       3158 ___str_21:
      002D9F 30 78 25 30 32 78 20  3159 	.ascii "0x%02x "
      002DA6 00                    3160 	.db 0x00
                                   3161 	.area CSEG    (CODE)
                                   3162 	.area CONST   (CODE)
      002DA7                       3163 ___str_22:
      002DA7 0A                    3164 	.db 0x0a
      002DA8 0D                    3165 	.db 0x0d
      002DA9 0A                    3166 	.db 0x0a
      002DAA 0D                    3167 	.db 0x0d
      002DAB 50 72 69 6E 74 69 6E  3168 	.ascii "Printing Hexdump of CGRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 43
             47 52 41 4D
      002DC4 0A                    3169 	.db 0x0a
      002DC5 0D                    3170 	.db 0x0d
      002DC6 00                    3171 	.db 0x00
                                   3172 	.area CSEG    (CODE)
                                   3173 	.area CONST   (CODE)
      002DC7                       3174 ___str_23:
      002DC7 1B                    3175 	.db 0x1b
      002DC8 5B 30 6D              3176 	.ascii "[0m"
      002DCB 00                    3177 	.db 0x00
                                   3178 	.area CSEG    (CODE)
                                   3179 	.area CONST   (CODE)
      002DCC                       3180 ___str_24:
      002DCC 0A                    3181 	.db 0x0a
      002DCD 0D                    3182 	.db 0x0d
      002DCE 45 6E 74 65 72 20 61  3183 	.ascii "Enter a hexadecimal value between (00 to 1F) or (40 to 58): "
             20 68 65 78 61 64 65
             63 69 6D 61 6C 20 76
             61 6C 75 65 20 62 65
             74 77 65 65 6E 20 28
             30 30 20 74 6F 20 31
             46 29 20 6F 72 20 28
             34 30 20 74 6F 20 35
             38 29 3A 20
      002E0A 00                    3184 	.db 0x00
                                   3185 	.area CSEG    (CODE)
                                   3186 	.area CONST   (CODE)
      002E0B                       3187 ___str_25:
      002E0B 0A                    3188 	.db 0x0a
      002E0C 0D                    3189 	.db 0x0d
      002E0D 49 6E 76 61 6C 69 64  3190 	.ascii "Invalid input. "
             20 69 6E 70 75 74 2E
             20
      002E1C 00                    3191 	.db 0x00
                                   3192 	.area CSEG    (CODE)
                                   3193 	.area CONST   (CODE)
      002E1D                       3194 ___str_26:
      002E1D 50 6C 65 61 73 65 20  3195 	.ascii "Please enter a valid input: "
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             69 6E 70 75 74 3A 20
      002E39 00                    3196 	.db 0x00
                                   3197 	.area CSEG    (CODE)
                                   3198 	.area CONST   (CODE)
      002E3A                       3199 ___str_27:
      002E3A 0A                    3200 	.db 0x0a
      002E3B 0D                    3201 	.db 0x0d
      002E3C 54 68 65 20 63 75 73  3202 	.ascii "The custom character with code 0x%x has been created."
             74 6F 6D 20 63 68 61
             72 61 63 74 65 72 20
             77 69 74 68 20 63 6F
             64 65 20 30 78 25 78
             20 68 61 73 20 62 65
             65 6E 20 63 72 65 61
             74 65 64 2E
      002E71 00                    3203 	.db 0x00
                                   3204 	.area CSEG    (CODE)
                                   3205 	.area CONST   (CODE)
      002E72                       3206 ___str_28:
      002E72 0A                    3207 	.db 0x0a
      002E73 0D                    3208 	.db 0x0d
      002E74 4C 43 44 5F 70 74 72  3209 	.ascii "LCD_ptr = %x"
             20 3D 20 25 78
      002E80 00                    3210 	.db 0x00
                                   3211 	.area CSEG    (CODE)
                                   3212 	.area CONST   (CODE)
      002E81                       3213 ___str_29:
      002E81 1B                    3214 	.db 0x1b
      002E82 5B 30 3B 33 33 6D     3215 	.ascii "[0;33m"
      002E88 00                    3216 	.db 0x00
                                   3217 	.area CSEG    (CODE)
                                   3218 	.area CONST   (CODE)
      002E89                       3219 ___str_30:
      002E89 50 6C 65 61 73 65 20  3220 	.ascii "Please enter the code for the custom character: "
             65 6E 74 65 72 20 74
             68 65 20 63 6F 64 65
             20 66 6F 72 20 74 68
             65 20 63 75 73 74 6F
             6D 20 63 68 61 72 61
             63 74 65 72 3A 20
      002EB9 00                    3221 	.db 0x00
                                   3222 	.area CSEG    (CODE)
                                   3223 	.area CONST   (CODE)
      002EBA                       3224 ___str_31:
      002EBA 25 63                 3225 	.ascii "%c"
      002EBC 0A                    3226 	.db 0x0a
      002EBD 0D                    3227 	.db 0x0d
      002EBE 00                    3228 	.db 0x00
                                   3229 	.area CSEG    (CODE)
                                   3230 	.area CONST   (CODE)
      002EBF                       3231 ___str_32:
      002EBF 0A                    3232 	.db 0x0a
      002EC0 0D                    3233 	.db 0x0d
      002EC1 50 6C 65 61 73 65 20  3234 	.ascii "Please enter the value for row %d: "
             65 6E 74 65 72 20 74
             68 65 20 76 61 6C 75
             65 20 66 6F 72 20 72
             6F 77 20 25 64 3A 20
      002EE4 00                    3235 	.db 0x00
                                   3236 	.area CSEG    (CODE)
                                   3237 	.area CONST   (CODE)
      002EE5                       3238 ___str_33:
      002EE5 1B                    3239 	.db 0x1b
      002EE6 5B 31 3B 33 33 6D     3240 	.ascii "[1;33m"
      002EEC 0A                    3241 	.db 0x0a
      002EED 0D                    3242 	.db 0x0d
      002EEE 41 75 74 68 6F 72 20  3243 	.ascii "Author Info Printed !!"
             49 6E 66 6F 20 50 72
             69 6E 74 65 64 20 21
             21
      002F04 0D                    3244 	.db 0x0d
      002F05 0A                    3245 	.db 0x0a
      002F06 00                    3246 	.db 0x00
                                   3247 	.area CSEG    (CODE)
                                   3248 	.area CONST   (CODE)
      002F07                       3249 ___str_34:
      002F07 4B 69 72 61 6E 20 4A  3250 	.ascii "Kiran Jojare    ESD Summer 2023 Lab 4           "
             6F 6A 61 72 65 20 20
             20 20 45 53 44 20 53
             75 6D 6D 65 72 20 32
             30 32 33 20 4C 61 62
             20 34 20 20 20 20 20
             20 20 20 20 20 20
      002F37 00                    3251 	.db 0x00
                                   3252 	.area CSEG    (CODE)
                                   3253 	.area XINIT   (CODE)
      003300                       3254 __xinit__save_cursor_address:
      003300 00                    3255 	.db #0x00	; 0
                                   3256 	.area CABS    (ABS,CODE)
