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
                                     12 	.globl _handle_newuser_custom_char
                                     13 	.globl _handle_unlock_custom_char
                                     14 	.globl _handle_lock_custom_char
                                     15 	.globl _handle_sadsmiley_custom_char
                                     16 	.globl _handle_cu_custom_char
                                     17 	.globl _handler_custom_char
                                     18 	.globl _create_custom_char
                                     19 	.globl _get_hex_value
                                     20 	.globl _handler_lcd_hexdump
                                     21 	.globl _read_lcd_address
                                     22 	.globl _handler_reset_time
                                     23 	.globl _handler_resume_time
                                     24 	.globl _handler_stop_time
                                     25 	.globl _handler_lcdgotoaddress
                                     26 	.globl _handler_lcdgotoxy
                                     27 	.globl _handler_wr_str_lcd
                                     28 	.globl _handler_wr_c_lcd
                                     29 	.globl _handler_lcdclear
                                     30 	.globl _lcdputstr
                                     31 	.globl _lcdputch
                                     32 	.globl _lcdgotoxy
                                     33 	.globl _lcdgotoaddr
                                     34 	.globl _get_cursor_address
                                     35 	.globl _init_lcd
                                     36 	.globl _set_time_variables
                                     37 	.globl _lcdbusywait
                                     38 	.globl _delay
                                     39 	.globl _putchar
                                     40 	.globl _getchar
                                     41 	.globl _strtol
                                     42 	.globl _printf_tiny
                                     43 	.globl _printf
                                     44 	.globl _toupper
                                     45 	.globl _P5_7
                                     46 	.globl _P5_6
                                     47 	.globl _P5_5
                                     48 	.globl _P5_4
                                     49 	.globl _P5_3
                                     50 	.globl _P5_2
                                     51 	.globl _P5_1
                                     52 	.globl _P5_0
                                     53 	.globl _P4_7
                                     54 	.globl _P4_6
                                     55 	.globl _P4_5
                                     56 	.globl _P4_4
                                     57 	.globl _P4_3
                                     58 	.globl _P4_2
                                     59 	.globl _P4_1
                                     60 	.globl _P4_0
                                     61 	.globl _PX0L
                                     62 	.globl _PT0L
                                     63 	.globl _PX1L
                                     64 	.globl _PT1L
                                     65 	.globl _PSL
                                     66 	.globl _PT2L
                                     67 	.globl _PPCL
                                     68 	.globl _EC
                                     69 	.globl _CCF0
                                     70 	.globl _CCF1
                                     71 	.globl _CCF2
                                     72 	.globl _CCF3
                                     73 	.globl _CCF4
                                     74 	.globl _CR
                                     75 	.globl _CF
                                     76 	.globl _TF2
                                     77 	.globl _EXF2
                                     78 	.globl _RCLK
                                     79 	.globl _TCLK
                                     80 	.globl _EXEN2
                                     81 	.globl _TR2
                                     82 	.globl _C_T2
                                     83 	.globl _CP_RL2
                                     84 	.globl _T2CON_7
                                     85 	.globl _T2CON_6
                                     86 	.globl _T2CON_5
                                     87 	.globl _T2CON_4
                                     88 	.globl _T2CON_3
                                     89 	.globl _T2CON_2
                                     90 	.globl _T2CON_1
                                     91 	.globl _T2CON_0
                                     92 	.globl _PT2
                                     93 	.globl _ET2
                                     94 	.globl _CY
                                     95 	.globl _AC
                                     96 	.globl _F0
                                     97 	.globl _RS1
                                     98 	.globl _RS0
                                     99 	.globl _OV
                                    100 	.globl _F1
                                    101 	.globl _P
                                    102 	.globl _PS
                                    103 	.globl _PT1
                                    104 	.globl _PX1
                                    105 	.globl _PT0
                                    106 	.globl _PX0
                                    107 	.globl _RD
                                    108 	.globl _WR
                                    109 	.globl _T1
                                    110 	.globl _T0
                                    111 	.globl _INT1
                                    112 	.globl _INT0
                                    113 	.globl _TXD
                                    114 	.globl _RXD
                                    115 	.globl _P3_7
                                    116 	.globl _P3_6
                                    117 	.globl _P3_5
                                    118 	.globl _P3_4
                                    119 	.globl _P3_3
                                    120 	.globl _P3_2
                                    121 	.globl _P3_1
                                    122 	.globl _P3_0
                                    123 	.globl _EA
                                    124 	.globl _ES
                                    125 	.globl _ET1
                                    126 	.globl _EX1
                                    127 	.globl _ET0
                                    128 	.globl _EX0
                                    129 	.globl _P2_7
                                    130 	.globl _P2_6
                                    131 	.globl _P2_5
                                    132 	.globl _P2_4
                                    133 	.globl _P2_3
                                    134 	.globl _P2_2
                                    135 	.globl _P2_1
                                    136 	.globl _P2_0
                                    137 	.globl _SM0
                                    138 	.globl _SM1
                                    139 	.globl _SM2
                                    140 	.globl _REN
                                    141 	.globl _TB8
                                    142 	.globl _RB8
                                    143 	.globl _TI
                                    144 	.globl _RI
                                    145 	.globl _P1_7
                                    146 	.globl _P1_6
                                    147 	.globl _P1_5
                                    148 	.globl _P1_4
                                    149 	.globl _P1_3
                                    150 	.globl _P1_2
                                    151 	.globl _P1_1
                                    152 	.globl _P1_0
                                    153 	.globl _TF1
                                    154 	.globl _TR1
                                    155 	.globl _TF0
                                    156 	.globl _TR0
                                    157 	.globl _IE1
                                    158 	.globl _IT1
                                    159 	.globl _IE0
                                    160 	.globl _IT0
                                    161 	.globl _P0_7
                                    162 	.globl _P0_6
                                    163 	.globl _P0_5
                                    164 	.globl _P0_4
                                    165 	.globl _P0_3
                                    166 	.globl _P0_2
                                    167 	.globl _P0_1
                                    168 	.globl _P0_0
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
                                    220 	.globl _B
                                    221 	.globl _ACC
                                    222 	.globl _PSW
                                    223 	.globl _IP
                                    224 	.globl _P3
                                    225 	.globl _IE
                                    226 	.globl _P2
                                    227 	.globl _SBUF
                                    228 	.globl _SCON
                                    229 	.globl _P1
                                    230 	.globl _TH1
                                    231 	.globl _TH0
                                    232 	.globl _TL1
                                    233 	.globl _TL0
                                    234 	.globl _TMOD
                                    235 	.globl _TCON
                                    236 	.globl _PCON
                                    237 	.globl _DPH
                                    238 	.globl _DPL
                                    239 	.globl _SP
                                    240 	.globl _P0
                                    241 	.globl _save_cursor_address
                                    242 	.globl _create_custom_char_PARM_2
                                    243 	.globl _read_lcd_address_PARM_2
                                    244 	.globl _lcdgotoxy_PARM_2
                                    245 	.globl _string
                                    246 	.globl _lcd_ptr
                                    247 ;--------------------------------------------------------
                                    248 ; special function registers
                                    249 ;--------------------------------------------------------
                                    250 	.area RSEG    (ABS,DATA)
      000000                        251 	.org 0x0000
                           000080   252 _P0	=	0x0080
                           000081   253 _SP	=	0x0081
                           000082   254 _DPL	=	0x0082
                           000083   255 _DPH	=	0x0083
                           000087   256 _PCON	=	0x0087
                           000088   257 _TCON	=	0x0088
                           000089   258 _TMOD	=	0x0089
                           00008A   259 _TL0	=	0x008a
                           00008B   260 _TL1	=	0x008b
                           00008C   261 _TH0	=	0x008c
                           00008D   262 _TH1	=	0x008d
                           000090   263 _P1	=	0x0090
                           000098   264 _SCON	=	0x0098
                           000099   265 _SBUF	=	0x0099
                           0000A0   266 _P2	=	0x00a0
                           0000A8   267 _IE	=	0x00a8
                           0000B0   268 _P3	=	0x00b0
                           0000B8   269 _IP	=	0x00b8
                           0000D0   270 _PSW	=	0x00d0
                           0000E0   271 _ACC	=	0x00e0
                           0000F0   272 _B	=	0x00f0
                           0000C8   273 _T2CON	=	0x00c8
                           0000CA   274 _RCAP2L	=	0x00ca
                           0000CB   275 _RCAP2H	=	0x00cb
                           0000CC   276 _TL2	=	0x00cc
                           0000CD   277 _TH2	=	0x00cd
                           00008E   278 _AUXR	=	0x008e
                           0000A2   279 _AUXR1	=	0x00a2
                           000097   280 _CKRL	=	0x0097
                           00008F   281 _CKCON0	=	0x008f
                           0000AF   282 _CKCON1	=	0x00af
                           0000FA   283 _CCAP0H	=	0x00fa
                           0000FB   284 _CCAP1H	=	0x00fb
                           0000FC   285 _CCAP2H	=	0x00fc
                           0000FD   286 _CCAP3H	=	0x00fd
                           0000FE   287 _CCAP4H	=	0x00fe
                           0000EA   288 _CCAP0L	=	0x00ea
                           0000EB   289 _CCAP1L	=	0x00eb
                           0000EC   290 _CCAP2L	=	0x00ec
                           0000ED   291 _CCAP3L	=	0x00ed
                           0000EE   292 _CCAP4L	=	0x00ee
                           0000DA   293 _CCAPM0	=	0x00da
                           0000DB   294 _CCAPM1	=	0x00db
                           0000DC   295 _CCAPM2	=	0x00dc
                           0000DD   296 _CCAPM3	=	0x00dd
                           0000DE   297 _CCAPM4	=	0x00de
                           0000D8   298 _CCON	=	0x00d8
                           0000F9   299 _CH	=	0x00f9
                           0000E9   300 _CL	=	0x00e9
                           0000D9   301 _CMOD	=	0x00d9
                           0000A8   302 _IEN0	=	0x00a8
                           0000B1   303 _IEN1	=	0x00b1
                           0000B8   304 _IPL0	=	0x00b8
                           0000B7   305 _IPH0	=	0x00b7
                           0000B2   306 _IPL1	=	0x00b2
                           0000B3   307 _IPH1	=	0x00b3
                           0000C0   308 _P4	=	0x00c0
                           0000E8   309 _P5	=	0x00e8
                           0000A6   310 _WDTRST	=	0x00a6
                           0000A7   311 _WDTPRG	=	0x00a7
                           0000A9   312 _SADDR	=	0x00a9
                           0000B9   313 _SADEN	=	0x00b9
                           0000C3   314 _SPCON	=	0x00c3
                           0000C4   315 _SPSTA	=	0x00c4
                           0000C5   316 _SPDAT	=	0x00c5
                           0000C9   317 _T2MOD	=	0x00c9
                           00009B   318 _BDRCON	=	0x009b
                           00009A   319 _BRL	=	0x009a
                           00009C   320 _KBLS	=	0x009c
                           00009D   321 _KBE	=	0x009d
                           00009E   322 _KBF	=	0x009e
                           0000D2   323 _EECON	=	0x00d2
                                    324 ;--------------------------------------------------------
                                    325 ; special function bits
                                    326 ;--------------------------------------------------------
                                    327 	.area RSEG    (ABS,DATA)
      000000                        328 	.org 0x0000
                           000080   329 _P0_0	=	0x0080
                           000081   330 _P0_1	=	0x0081
                           000082   331 _P0_2	=	0x0082
                           000083   332 _P0_3	=	0x0083
                           000084   333 _P0_4	=	0x0084
                           000085   334 _P0_5	=	0x0085
                           000086   335 _P0_6	=	0x0086
                           000087   336 _P0_7	=	0x0087
                           000088   337 _IT0	=	0x0088
                           000089   338 _IE0	=	0x0089
                           00008A   339 _IT1	=	0x008a
                           00008B   340 _IE1	=	0x008b
                           00008C   341 _TR0	=	0x008c
                           00008D   342 _TF0	=	0x008d
                           00008E   343 _TR1	=	0x008e
                           00008F   344 _TF1	=	0x008f
                           000090   345 _P1_0	=	0x0090
                           000091   346 _P1_1	=	0x0091
                           000092   347 _P1_2	=	0x0092
                           000093   348 _P1_3	=	0x0093
                           000094   349 _P1_4	=	0x0094
                           000095   350 _P1_5	=	0x0095
                           000096   351 _P1_6	=	0x0096
                           000097   352 _P1_7	=	0x0097
                           000098   353 _RI	=	0x0098
                           000099   354 _TI	=	0x0099
                           00009A   355 _RB8	=	0x009a
                           00009B   356 _TB8	=	0x009b
                           00009C   357 _REN	=	0x009c
                           00009D   358 _SM2	=	0x009d
                           00009E   359 _SM1	=	0x009e
                           00009F   360 _SM0	=	0x009f
                           0000A0   361 _P2_0	=	0x00a0
                           0000A1   362 _P2_1	=	0x00a1
                           0000A2   363 _P2_2	=	0x00a2
                           0000A3   364 _P2_3	=	0x00a3
                           0000A4   365 _P2_4	=	0x00a4
                           0000A5   366 _P2_5	=	0x00a5
                           0000A6   367 _P2_6	=	0x00a6
                           0000A7   368 _P2_7	=	0x00a7
                           0000A8   369 _EX0	=	0x00a8
                           0000A9   370 _ET0	=	0x00a9
                           0000AA   371 _EX1	=	0x00aa
                           0000AB   372 _ET1	=	0x00ab
                           0000AC   373 _ES	=	0x00ac
                           0000AF   374 _EA	=	0x00af
                           0000B0   375 _P3_0	=	0x00b0
                           0000B1   376 _P3_1	=	0x00b1
                           0000B2   377 _P3_2	=	0x00b2
                           0000B3   378 _P3_3	=	0x00b3
                           0000B4   379 _P3_4	=	0x00b4
                           0000B5   380 _P3_5	=	0x00b5
                           0000B6   381 _P3_6	=	0x00b6
                           0000B7   382 _P3_7	=	0x00b7
                           0000B0   383 _RXD	=	0x00b0
                           0000B1   384 _TXD	=	0x00b1
                           0000B2   385 _INT0	=	0x00b2
                           0000B3   386 _INT1	=	0x00b3
                           0000B4   387 _T0	=	0x00b4
                           0000B5   388 _T1	=	0x00b5
                           0000B6   389 _WR	=	0x00b6
                           0000B7   390 _RD	=	0x00b7
                           0000B8   391 _PX0	=	0x00b8
                           0000B9   392 _PT0	=	0x00b9
                           0000BA   393 _PX1	=	0x00ba
                           0000BB   394 _PT1	=	0x00bb
                           0000BC   395 _PS	=	0x00bc
                           0000D0   396 _P	=	0x00d0
                           0000D1   397 _F1	=	0x00d1
                           0000D2   398 _OV	=	0x00d2
                           0000D3   399 _RS0	=	0x00d3
                           0000D4   400 _RS1	=	0x00d4
                           0000D5   401 _F0	=	0x00d5
                           0000D6   402 _AC	=	0x00d6
                           0000D7   403 _CY	=	0x00d7
                           0000AD   404 _ET2	=	0x00ad
                           0000BD   405 _PT2	=	0x00bd
                           0000C8   406 _T2CON_0	=	0x00c8
                           0000C9   407 _T2CON_1	=	0x00c9
                           0000CA   408 _T2CON_2	=	0x00ca
                           0000CB   409 _T2CON_3	=	0x00cb
                           0000CC   410 _T2CON_4	=	0x00cc
                           0000CD   411 _T2CON_5	=	0x00cd
                           0000CE   412 _T2CON_6	=	0x00ce
                           0000CF   413 _T2CON_7	=	0x00cf
                           0000C8   414 _CP_RL2	=	0x00c8
                           0000C9   415 _C_T2	=	0x00c9
                           0000CA   416 _TR2	=	0x00ca
                           0000CB   417 _EXEN2	=	0x00cb
                           0000CC   418 _TCLK	=	0x00cc
                           0000CD   419 _RCLK	=	0x00cd
                           0000CE   420 _EXF2	=	0x00ce
                           0000CF   421 _TF2	=	0x00cf
                           0000DF   422 _CF	=	0x00df
                           0000DE   423 _CR	=	0x00de
                           0000DC   424 _CCF4	=	0x00dc
                           0000DB   425 _CCF3	=	0x00db
                           0000DA   426 _CCF2	=	0x00da
                           0000D9   427 _CCF1	=	0x00d9
                           0000D8   428 _CCF0	=	0x00d8
                           0000AE   429 _EC	=	0x00ae
                           0000BE   430 _PPCL	=	0x00be
                           0000BD   431 _PT2L	=	0x00bd
                           0000BC   432 _PSL	=	0x00bc
                           0000BB   433 _PT1L	=	0x00bb
                           0000BA   434 _PX1L	=	0x00ba
                           0000B9   435 _PT0L	=	0x00b9
                           0000B8   436 _PX0L	=	0x00b8
                           0000C0   437 _P4_0	=	0x00c0
                           0000C1   438 _P4_1	=	0x00c1
                           0000C2   439 _P4_2	=	0x00c2
                           0000C3   440 _P4_3	=	0x00c3
                           0000C4   441 _P4_4	=	0x00c4
                           0000C5   442 _P4_5	=	0x00c5
                           0000C6   443 _P4_6	=	0x00c6
                           0000C7   444 _P4_7	=	0x00c7
                           0000E8   445 _P5_0	=	0x00e8
                           0000E9   446 _P5_1	=	0x00e9
                           0000EA   447 _P5_2	=	0x00ea
                           0000EB   448 _P5_3	=	0x00eb
                           0000EC   449 _P5_4	=	0x00ec
                           0000ED   450 _P5_5	=	0x00ed
                           0000EE   451 _P5_6	=	0x00ee
                           0000EF   452 _P5_7	=	0x00ef
                                    453 ;--------------------------------------------------------
                                    454 ; overlayable register banks
                                    455 ;--------------------------------------------------------
                                    456 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        457 	.ds 8
                                    458 ;--------------------------------------------------------
                                    459 ; internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area DSEG    (DATA)
      000008                        462 _create_custom_char_sloc0_1_0:
      000008                        463 	.ds 3
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable items in internal ram
                                    466 ;--------------------------------------------------------
                                    467 ;--------------------------------------------------------
                                    468 ; indirectly addressable internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area ISEG    (DATA)
                                    471 ;--------------------------------------------------------
                                    472 ; absolute internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area IABS    (ABS,DATA)
                                    475 	.area IABS    (ABS,DATA)
                                    476 ;--------------------------------------------------------
                                    477 ; bit data
                                    478 ;--------------------------------------------------------
                                    479 	.area BSEG    (BIT)
      000000                        480 _handler_wr_c_lcd_sloc0_1_0:
      000000                        481 	.ds 1
      000001                        482 _handler_wr_str_lcd_sloc0_1_0:
      000001                        483 	.ds 1
      000002                        484 _handler_lcdgotoxy_sloc0_1_0:
      000002                        485 	.ds 1
      000003                        486 _handler_lcdgotoaddress_sloc0_1_0:
      000003                        487 	.ds 1
      000004                        488 _handler_lcd_hexdump_sloc0_1_0:
      000004                        489 	.ds 1
      000005                        490 _handler_custom_char_sloc0_1_0:
      000005                        491 	.ds 1
      000006                        492 _handle_cu_custom_char_sloc0_1_0:
      000006                        493 	.ds 1
      000007                        494 _handle_sadsmiley_custom_char_sloc0_1_0:
      000007                        495 	.ds 1
      000008                        496 _handle_lock_custom_char_sloc0_1_0:
      000008                        497 	.ds 1
      000009                        498 _handle_unlock_custom_char_sloc0_1_0:
      000009                        499 	.ds 1
      00000A                        500 _handle_newuser_custom_char_sloc0_1_0:
      00000A                        501 	.ds 1
      00000B                        502 _print_author_sloc0_1_0:
      00000B                        503 	.ds 1
                                    504 ;--------------------------------------------------------
                                    505 ; paged external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area PSEG    (PAG,XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XSEG    (XDATA)
                           00F000   512 _lcd_ptr	=	0xf000
      000400                        513 _string::
      000400                        514 	.ds 3
      000403                        515 _delay_milliseconds_65536_92:
      000403                        516 	.ds 2
      000405                        517 _lcdgotoaddr_address_65536_104:
      000405                        518 	.ds 1
      000406                        519 _lcdgotoxy_PARM_2:
      000406                        520 	.ds 1
      000407                        521 _lcdgotoxy_row_65536_106:
      000407                        522 	.ds 1
      000408                        523 _lcdgotoxy_address_65536_107:
      000408                        524 	.ds 1
      000409                        525 _lcdputch_cc_65536_114:
      000409                        526 	.ds 1
      00040A                        527 _lcdputstr_ss_65536_117:
      00040A                        528 	.ds 3
      00040D                        529 _handler_wr_str_lcd_k_65537_127:
      00040D                        530 	.ds 2
      00040F                        531 _handler_lcdgotoaddress_str_65536_140:
      00040F                        532 	.ds 50
      000441                        533 _handler_lcdgotoaddress_c_65537_141:
      000441                        534 	.ds 1
      000442                        535 _read_lcd_address_PARM_2:
      000442                        536 	.ds 1
      000443                        537 _read_lcd_address_is_ddram_65536_151:
      000443                        538 	.ds 1
      000444                        539 _get_hex_value_hex_value_65536_165:
      000444                        540 	.ds 1
      000445                        541 _create_custom_char_PARM_2:
      000445                        542 	.ds 3
      000448                        543 _create_custom_char_char_code_65536_170:
      000448                        544 	.ds 1
      000449                        545 _handler_custom_char_row_values_65539_178:
      000449                        546 	.ds 8
      000451                        547 _handle_cu_custom_char_row_vals1_65537_183:
      000451                        548 	.ds 8
      000459                        549 _handle_cu_custom_char_row_vals2_65538_185:
      000459                        550 	.ds 8
      000461                        551 _handle_cu_custom_char_row_vals3_65539_187:
      000461                        552 	.ds 8
      000469                        553 _handle_cu_custom_char_row_vals4_65540_189:
      000469                        554 	.ds 8
      000471                        555 _handle_sadsmiley_custom_char_row_vals1_65537_193:
      000471                        556 	.ds 8
      000479                        557 _handle_sadsmiley_custom_char_row_vals2_65538_195:
      000479                        558 	.ds 8
      000481                        559 _handle_sadsmiley_custom_char_row_vals3_65539_197:
      000481                        560 	.ds 8
      000489                        561 _handle_sadsmiley_custom_char_row_vals4_65540_199:
      000489                        562 	.ds 8
      000491                        563 _handle_lock_custom_char_row_vals1_65536_202:
      000491                        564 	.ds 8
      000499                        565 _handle_lock_custom_char_row_vals2_65537_204:
      000499                        566 	.ds 8
      0004A1                        567 _handle_lock_custom_char_row_vals3_65538_206:
      0004A1                        568 	.ds 8
      0004A9                        569 _handle_lock_custom_char_row_vals4_65539_208:
      0004A9                        570 	.ds 8
      0004B1                        571 _handle_unlock_custom_char_row_vals1_65536_211:
      0004B1                        572 	.ds 8
      0004B9                        573 _handle_unlock_custom_char_row_vals2_65537_213:
      0004B9                        574 	.ds 8
      0004C1                        575 _handle_unlock_custom_char_row_vals3_65538_215:
      0004C1                        576 	.ds 8
      0004C9                        577 _handle_unlock_custom_char_row_vals4_65539_217:
      0004C9                        578 	.ds 8
      0004D1                        579 _handle_newuser_custom_char_row_vals1_65536_220:
      0004D1                        580 	.ds 8
      0004D9                        581 _handle_newuser_custom_char_row_vals2_65537_222:
      0004D9                        582 	.ds 8
      0004E1                        583 _handle_newuser_custom_char_row_vals3_65538_224:
      0004E1                        584 	.ds 8
      0004E9                        585 _handle_newuser_custom_char_row_vals4_65539_226:
      0004E9                        586 	.ds 8
                                    587 ;--------------------------------------------------------
                                    588 ; absolute external ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XABS    (ABS,XDATA)
                                    591 ;--------------------------------------------------------
                                    592 ; external initialized ram data
                                    593 ;--------------------------------------------------------
                                    594 	.area XISEG   (XDATA)
      000574                        595 _save_cursor_address::
      000574                        596 	.ds 1
                                    597 	.area HOME    (CODE)
                                    598 	.area GSINIT0 (CODE)
                                    599 	.area GSINIT1 (CODE)
                                    600 	.area GSINIT2 (CODE)
                                    601 	.area GSINIT3 (CODE)
                                    602 	.area GSINIT4 (CODE)
                                    603 	.area GSINIT5 (CODE)
                                    604 	.area GSINIT  (CODE)
                                    605 	.area GSFINAL (CODE)
                                    606 	.area CSEG    (CODE)
                                    607 ;--------------------------------------------------------
                                    608 ; global & static initialisations
                                    609 ;--------------------------------------------------------
                                    610 	.area HOME    (CODE)
                                    611 	.area GSINIT  (CODE)
                                    612 	.area GSFINAL (CODE)
                                    613 	.area GSINIT  (CODE)
                                    614 ;--------------------------------------------------------
                                    615 ; Home
                                    616 ;--------------------------------------------------------
                                    617 	.area HOME    (CODE)
                                    618 	.area HOME    (CODE)
                                    619 ;--------------------------------------------------------
                                    620 ; code
                                    621 ;--------------------------------------------------------
                                    622 	.area CSEG    (CODE)
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'delay'
                                    625 ;------------------------------------------------------------
                                    626 ;milliseconds              Allocated with name '_delay_milliseconds_65536_92'
                                    627 ;i                         Allocated with name '_delay_i_131072_94'
                                    628 ;------------------------------------------------------------
                                    629 ;	lcd.c:77: void delay(int milliseconds)
                                    630 ;	-----------------------------------------
                                    631 ;	 function delay
                                    632 ;	-----------------------------------------
      0000A9                        633 _delay:
                           000007   634 	ar7 = 0x07
                           000006   635 	ar6 = 0x06
                           000005   636 	ar5 = 0x05
                           000004   637 	ar4 = 0x04
                           000003   638 	ar3 = 0x03
                           000002   639 	ar2 = 0x02
                           000001   640 	ar1 = 0x01
                           000000   641 	ar0 = 0x00
      0000A9 AF 83            [24]  642 	mov	r7,dph
      0000AB E5 82            [12]  643 	mov	a,dpl
      0000AD 90 04 03         [24]  644 	mov	dptr,#_delay_milliseconds_65536_92
      0000B0 F0               [24]  645 	movx	@dptr,a
      0000B1 EF               [12]  646 	mov	a,r7
      0000B2 A3               [24]  647 	inc	dptr
      0000B3 F0               [24]  648 	movx	@dptr,a
                                    649 ;	lcd.c:80: for(int i = 0; i < milliseconds * COUNT_ONE_MILLISECOND; i++);
      0000B4 90 04 03         [24]  650 	mov	dptr,#_delay_milliseconds_65536_92
      0000B7 E0               [24]  651 	movx	a,@dptr
      0000B8 FE               [12]  652 	mov	r6,a
      0000B9 A3               [24]  653 	inc	dptr
      0000BA E0               [24]  654 	movx	a,@dptr
      0000BB FF               [12]  655 	mov	r7,a
      0000BC 90 05 13         [24]  656 	mov	dptr,#__mulint_PARM_2
      0000BF EE               [12]  657 	mov	a,r6
      0000C0 F0               [24]  658 	movx	@dptr,a
      0000C1 EF               [12]  659 	mov	a,r7
      0000C2 A3               [24]  660 	inc	dptr
      0000C3 F0               [24]  661 	movx	@dptr,a
      0000C4 90 00 52         [24]  662 	mov	dptr,#0x0052
      0000C7 12 19 89         [24]  663 	lcall	__mulint
      0000CA AE 82            [24]  664 	mov	r6,dpl
      0000CC AF 83            [24]  665 	mov	r7,dph
      0000CE 7C 00            [12]  666 	mov	r4,#0x00
      0000D0 7D 00            [12]  667 	mov	r5,#0x00
      0000D2                        668 00103$:
      0000D2 C3               [12]  669 	clr	c
      0000D3 EC               [12]  670 	mov	a,r4
      0000D4 9E               [12]  671 	subb	a,r6
      0000D5 ED               [12]  672 	mov	a,r5
      0000D6 64 80            [12]  673 	xrl	a,#0x80
      0000D8 8F F0            [24]  674 	mov	b,r7
      0000DA 63 F0 80         [24]  675 	xrl	b,#0x80
      0000DD 95 F0            [12]  676 	subb	a,b
      0000DF 50 07            [24]  677 	jnc	00105$
      0000E1 0C               [12]  678 	inc	r4
      0000E2 BC 00 ED         [24]  679 	cjne	r4,#0x00,00103$
      0000E5 0D               [12]  680 	inc	r5
      0000E6 80 EA            [24]  681 	sjmp	00103$
      0000E8                        682 00105$:
                                    683 ;	lcd.c:81: }
      0000E8 22               [24]  684 	ret
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'lcdbusywait'
                                    687 ;------------------------------------------------------------
                                    688 ;BUSY_FLAG_MASK            Allocated with name '_lcdbusywait_BUSY_FLAG_MASK_65536_96'
                                    689 ;COMMAND_ADDRESS           Allocated with name '_lcdbusywait_COMMAND_ADDRESS_65536_96'
                                    690 ;------------------------------------------------------------
                                    691 ;	lcd.c:85: void lcdbusywait(void)
                                    692 ;	-----------------------------------------
                                    693 ;	 function lcdbusywait
                                    694 ;	-----------------------------------------
      0000E9                        695 _lcdbusywait:
                                    696 ;	lcd.c:94: LCD_RS = 0;
                                    697 ;	assignBit
      0000E9 C2 92            [12]  698 	clr	_P1_2
                                    699 ;	lcd.c:95: LCD_RW = 1;
                                    700 ;	assignBit
      0000EB D2 93            [12]  701 	setb	_P1_3
                                    702 ;	lcd.c:98: while ((* (volatile uint8_t *) COMMAND_ADDRESS) & BUSY_FLAG_MASK)
      0000ED                        703 00101$:
      0000ED 90 F0 00         [24]  704 	mov	dptr,#0xf000
      0000F0 75 F0 00         [24]  705 	mov	b,#0x00
      0000F3 12 29 61         [24]  706 	lcall	__gptrget
      0000F6 30 E7 08         [24]  707 	jnb	acc.7,00104$
                                    708 ;	lcd.c:101: delay(10);
      0000F9 90 00 0A         [24]  709 	mov	dptr,#0x000a
      0000FC 12 00 A9         [24]  710 	lcall	_delay
      0000FF 80 EC            [24]  711 	sjmp	00101$
      000101                        712 00104$:
                                    713 ;	lcd.c:103: }
      000101 22               [24]  714 	ret
                                    715 ;------------------------------------------------------------
                                    716 ;Allocation info for local variables in function 'set_time_variables'
                                    717 ;------------------------------------------------------------
                                    718 ;	lcd.c:106: void set_time_variables(void)
                                    719 ;	-----------------------------------------
                                    720 ;	 function set_time_variables
                                    721 ;	-----------------------------------------
      000102                        722 _set_time_variables:
                                    723 ;	lcd.c:109: tenth_of_second     = '0';
      000102 90 05 77         [24]  724 	mov	dptr,#_tenth_of_second
      000105 74 30            [12]  725 	mov	a,#0x30
      000107 F0               [24]  726 	movx	@dptr,a
                                    727 ;	lcd.c:110: seconds_ones_digit  = '0';
      000108 90 05 78         [24]  728 	mov	dptr,#_seconds_ones_digit
      00010B F0               [24]  729 	movx	@dptr,a
                                    730 ;	lcd.c:111: seconds_tens_digit  = '0';
      00010C 90 05 79         [24]  731 	mov	dptr,#_seconds_tens_digit
      00010F F0               [24]  732 	movx	@dptr,a
                                    733 ;	lcd.c:112: minutes_ones_digit  = '0';
      000110 90 05 7A         [24]  734 	mov	dptr,#_minutes_ones_digit
      000113 F0               [24]  735 	movx	@dptr,a
                                    736 ;	lcd.c:113: minutes_tens_digit  = '0';
      000114 90 05 7B         [24]  737 	mov	dptr,#_minutes_tens_digit
      000117 F0               [24]  738 	movx	@dptr,a
                                    739 ;	lcd.c:114: }
      000118 22               [24]  740 	ret
                                    741 ;------------------------------------------------------------
                                    742 ;Allocation info for local variables in function 'init_lcd'
                                    743 ;------------------------------------------------------------
                                    744 ;	lcd.c:116: void init_lcd(void){
                                    745 ;	-----------------------------------------
                                    746 ;	 function init_lcd
                                    747 ;	-----------------------------------------
      000119                        748 _init_lcd:
                                    749 ;	lcd.c:118: LCD_RS = 0;
                                    750 ;	assignBit
      000119 C2 92            [12]  751 	clr	_P1_2
                                    752 ;	lcd.c:119: LCD_RW = 0;
                                    753 ;	assignBit
      00011B C2 93            [12]  754 	clr	_P1_3
                                    755 ;	lcd.c:121: delay(160);
      00011D 90 00 A0         [24]  756 	mov	dptr,#0x00a0
      000120 12 00 A9         [24]  757 	lcall	_delay
                                    758 ;	lcd.c:124: lcd_ptr = 0x30;
      000123 90 F0 00         [24]  759 	mov	dptr,#_lcd_ptr
      000126 74 30            [12]  760 	mov	a,#0x30
      000128 F0               [24]  761 	movx	@dptr,a
                                    762 ;	lcd.c:126: delay(170);
      000129 90 00 AA         [24]  763 	mov	dptr,#0x00aa
      00012C 12 00 A9         [24]  764 	lcall	_delay
                                    765 ;	lcd.c:128: lcd_ptr = 0x30;
      00012F 90 F0 00         [24]  766 	mov	dptr,#_lcd_ptr
      000132 74 30            [12]  767 	mov	a,#0x30
      000134 F0               [24]  768 	movx	@dptr,a
                                    769 ;	lcd.c:130: delay(150);
      000135 90 00 96         [24]  770 	mov	dptr,#0x0096
      000138 12 00 A9         [24]  771 	lcall	_delay
                                    772 ;	lcd.c:133: lcd_ptr = 0x30;
      00013B 90 F0 00         [24]  773 	mov	dptr,#_lcd_ptr
      00013E 74 30            [12]  774 	mov	a,#0x30
      000140 F0               [24]  775 	movx	@dptr,a
                                    776 ;	lcd.c:135: lcdbusywait();
      000141 12 00 E9         [24]  777 	lcall	_lcdbusywait
                                    778 ;	lcd.c:137: LCD_RS = 0;
                                    779 ;	assignBit
      000144 C2 92            [12]  780 	clr	_P1_2
                                    781 ;	lcd.c:138: LCD_RW = 0;
                                    782 ;	assignBit
      000146 C2 93            [12]  783 	clr	_P1_3
                                    784 ;	lcd.c:140: lcd_ptr = 0x38;
      000148 90 F0 00         [24]  785 	mov	dptr,#_lcd_ptr
      00014B 74 38            [12]  786 	mov	a,#0x38
      00014D F0               [24]  787 	movx	@dptr,a
                                    788 ;	lcd.c:142: lcdbusywait();
      00014E 12 00 E9         [24]  789 	lcall	_lcdbusywait
                                    790 ;	lcd.c:145: LCD_RS = 0;
                                    791 ;	assignBit
      000151 C2 92            [12]  792 	clr	_P1_2
                                    793 ;	lcd.c:146: LCD_RW = 0;
                                    794 ;	assignBit
      000153 C2 93            [12]  795 	clr	_P1_3
                                    796 ;	lcd.c:148: lcd_ptr = 0x0F;
      000155 90 F0 00         [24]  797 	mov	dptr,#_lcd_ptr
      000158 74 0F            [12]  798 	mov	a,#0x0f
      00015A F0               [24]  799 	movx	@dptr,a
                                    800 ;	lcd.c:150: lcdbusywait();
      00015B 12 00 E9         [24]  801 	lcall	_lcdbusywait
                                    802 ;	lcd.c:153: LCD_RS = 0;
                                    803 ;	assignBit
      00015E C2 92            [12]  804 	clr	_P1_2
                                    805 ;	lcd.c:154: LCD_RW = 0;
                                    806 ;	assignBit
      000160 C2 93            [12]  807 	clr	_P1_3
                                    808 ;	lcd.c:156: lcd_ptr = 0x01;
      000162 90 F0 00         [24]  809 	mov	dptr,#_lcd_ptr
      000165 74 01            [12]  810 	mov	a,#0x01
      000167 F0               [24]  811 	movx	@dptr,a
                                    812 ;	lcd.c:158: lcdbusywait();
      000168 12 00 E9         [24]  813 	lcall	_lcdbusywait
                                    814 ;	lcd.c:161: LCD_RS = 0;
                                    815 ;	assignBit
      00016B C2 92            [12]  816 	clr	_P1_2
                                    817 ;	lcd.c:162: LCD_RW = 0;
                                    818 ;	assignBit
      00016D C2 93            [12]  819 	clr	_P1_3
                                    820 ;	lcd.c:164: lcd_ptr = 0x06;
      00016F 90 F0 00         [24]  821 	mov	dptr,#_lcd_ptr
      000172 74 06            [12]  822 	mov	a,#0x06
      000174 F0               [24]  823 	movx	@dptr,a
                                    824 ;	lcd.c:166: lcdbusywait();
      000175 12 00 E9         [24]  825 	lcall	_lcdbusywait
                                    826 ;	lcd.c:169: set_time_variables();
                                    827 ;	lcd.c:170: }
      000178 02 01 02         [24]  828 	ljmp	_set_time_variables
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'get_cursor_address'
                                    831 ;------------------------------------------------------------
                                    832 ;address                   Allocated with name '_get_cursor_address_address_65537_103'
                                    833 ;------------------------------------------------------------
                                    834 ;	lcd.c:173: uint8_t get_cursor_address(){
                                    835 ;	-----------------------------------------
                                    836 ;	 function get_cursor_address
                                    837 ;	-----------------------------------------
      00017B                        838 _get_cursor_address:
                                    839 ;	lcd.c:174: LCD_RS = 0; // Set RS pin low
                                    840 ;	assignBit
      00017B C2 92            [12]  841 	clr	_P1_2
                                    842 ;	lcd.c:175: LCD_RW = 1; // Set RW pin high
                                    843 ;	assignBit
      00017D D2 93            [12]  844 	setb	_P1_3
                                    845 ;	lcd.c:177: uint8_t address = lcd_ptr & (~0x80); // Mask out the MSB of lcd_ptr and assign it to address
      00017F 90 F0 00         [24]  846 	mov	dptr,#_lcd_ptr
      000182 E0               [24]  847 	movx	a,@dptr
      000183 54 7F            [12]  848 	anl	a,#0x7f
                                    849 ;	lcd.c:178: return address; // Return the address
                                    850 ;	lcd.c:179: }
      000185 F5 82            [12]  851 	mov	dpl,a
      000187 22               [24]  852 	ret
                                    853 ;------------------------------------------------------------
                                    854 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    855 ;------------------------------------------------------------
                                    856 ;address                   Allocated with name '_lcdgotoaddr_address_65536_104'
                                    857 ;------------------------------------------------------------
                                    858 ;	lcd.c:182: void lcdgotoaddr(unsigned char address){
                                    859 ;	-----------------------------------------
                                    860 ;	 function lcdgotoaddr
                                    861 ;	-----------------------------------------
      000188                        862 _lcdgotoaddr:
      000188 E5 82            [12]  863 	mov	a,dpl
      00018A 90 04 05         [24]  864 	mov	dptr,#_lcdgotoaddr_address_65536_104
      00018D F0               [24]  865 	movx	@dptr,a
                                    866 ;	lcd.c:183: LCD_RS = 0; // Set RS pin low
                                    867 ;	assignBit
      00018E C2 92            [12]  868 	clr	_P1_2
                                    869 ;	lcd.c:184: LCD_RW = 0; // Set RW pin low
                                    870 ;	assignBit
      000190 C2 93            [12]  871 	clr	_P1_3
                                    872 ;	lcd.c:186: address = address | 0x80; // Set the MSB of address to 1
      000192 90 04 05         [24]  873 	mov	dptr,#_lcdgotoaddr_address_65536_104
      000195 E0               [24]  874 	movx	a,@dptr
      000196 43 E0 80         [24]  875 	orl	acc,#0x80
      000199 F0               [24]  876 	movx	@dptr,a
                                    877 ;	lcd.c:187: lcd_ptr = address; // Assign the address to lcd_ptr
      00019A 90 04 05         [24]  878 	mov	dptr,#_lcdgotoaddr_address_65536_104
      00019D E0               [24]  879 	movx	a,@dptr
      00019E 90 F0 00         [24]  880 	mov	dptr,#_lcd_ptr
      0001A1 F0               [24]  881 	movx	@dptr,a
                                    882 ;	lcd.c:188: lcdbusywait(); // Wait for the LCD to be not busy
                                    883 ;	lcd.c:189: }
      0001A2 02 00 E9         [24]  884 	ljmp	_lcdbusywait
                                    885 ;------------------------------------------------------------
                                    886 ;Allocation info for local variables in function 'lcdgotoxy'
                                    887 ;------------------------------------------------------------
                                    888 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    889 ;row                       Allocated with name '_lcdgotoxy_row_65536_106'
                                    890 ;address                   Allocated with name '_lcdgotoxy_address_65536_107'
                                    891 ;------------------------------------------------------------
                                    892 ;	lcd.c:192: void lcdgotoxy(unsigned char row, unsigned char column) {
                                    893 ;	-----------------------------------------
                                    894 ;	 function lcdgotoxy
                                    895 ;	-----------------------------------------
      0001A5                        896 _lcdgotoxy:
      0001A5 E5 82            [12]  897 	mov	a,dpl
      0001A7 90 04 07         [24]  898 	mov	dptr,#_lcdgotoxy_row_65536_106
      0001AA F0               [24]  899 	movx	@dptr,a
                                    900 ;	lcd.c:194: switch (row) {          // Select address based on the row number
      0001AB E0               [24]  901 	movx	a,@dptr
      0001AC FF               [12]  902 	mov	r7,a
      0001AD E4               [12]  903 	clr	a
      0001AE BF 30 01         [24]  904 	cjne	r7,#0x30,00173$
      0001B1 04               [12]  905 	inc	a
      0001B2                        906 00173$:
      0001B2 FE               [12]  907 	mov	r6,a
      0001B3 70 0F            [24]  908 	jnz	00101$
      0001B5 BF 31 02         [24]  909 	cjne	r7,#0x31,00176$
      0001B8 80 11            [24]  910 	sjmp	00102$
      0001BA                        911 00176$:
      0001BA BF 32 02         [24]  912 	cjne	r7,#0x32,00177$
      0001BD 80 14            [24]  913 	sjmp	00103$
      0001BF                        914 00177$:
                                    915 ;	lcd.c:195: case '0':
      0001BF BF 33 21         [24]  916 	cjne	r7,#0x33,00105$
      0001C2 80 17            [24]  917 	sjmp	00104$
      0001C4                        918 00101$:
                                    919 ;	lcd.c:196: address = (0x00);
      0001C4 90 04 08         [24]  920 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001C7 E4               [12]  921 	clr	a
      0001C8 F0               [24]  922 	movx	@dptr,a
                                    923 ;	lcd.c:197: break;
                                    924 ;	lcd.c:198: case '1':
      0001C9 80 1D            [24]  925 	sjmp	00106$
      0001CB                        926 00102$:
                                    927 ;	lcd.c:199: address = (0x40);
      0001CB 90 04 08         [24]  928 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001CE 74 40            [12]  929 	mov	a,#0x40
      0001D0 F0               [24]  930 	movx	@dptr,a
                                    931 ;	lcd.c:200: break;
                                    932 ;	lcd.c:201: case '2':
      0001D1 80 15            [24]  933 	sjmp	00106$
      0001D3                        934 00103$:
                                    935 ;	lcd.c:202: address = (0x10);
      0001D3 90 04 08         [24]  936 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001D6 74 10            [12]  937 	mov	a,#0x10
      0001D8 F0               [24]  938 	movx	@dptr,a
                                    939 ;	lcd.c:203: break;
                                    940 ;	lcd.c:204: case '3':
      0001D9 80 0D            [24]  941 	sjmp	00106$
      0001DB                        942 00104$:
                                    943 ;	lcd.c:205: address = (0x50);
      0001DB 90 04 08         [24]  944 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001DE 74 50            [12]  945 	mov	a,#0x50
      0001E0 F0               [24]  946 	movx	@dptr,a
                                    947 ;	lcd.c:206: break;
                                    948 ;	lcd.c:207: default:
      0001E1 80 05            [24]  949 	sjmp	00106$
      0001E3                        950 00105$:
                                    951 ;	lcd.c:208: address = (0x00);
      0001E3 90 04 08         [24]  952 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001E6 E4               [12]  953 	clr	a
      0001E7 F0               [24]  954 	movx	@dptr,a
                                    955 ;	lcd.c:210: }
      0001E8                        956 00106$:
                                    957 ;	lcd.c:212: if (row == '0' && column == '4') {
      0001E8 EE               [12]  958 	mov	a,r6
      0001E9 60 12            [24]  959 	jz	00120$
      0001EB 90 04 06         [24]  960 	mov	dptr,#_lcdgotoxy_PARM_2
      0001EE E0               [24]  961 	movx	a,@dptr
      0001EF FF               [12]  962 	mov	r7,a
      0001F0 BF 34 0A         [24]  963 	cjne	r7,#0x34,00120$
                                    964 ;	lcd.c:213: address |= 0x04;
      0001F3 90 04 08         [24]  965 	mov	dptr,#_lcdgotoxy_address_65536_107
      0001F6 E0               [24]  966 	movx	a,@dptr
      0001F7 43 E0 04         [24]  967 	orl	acc,#0x04
      0001FA F0               [24]  968 	movx	@dptr,a
      0001FB 80 55            [24]  969 	sjmp	00121$
      0001FD                        970 00120$:
                                    971 ;	lcd.c:215: else if (row == '4' && column == '0') {
      0001FD 90 04 07         [24]  972 	mov	dptr,#_lcdgotoxy_row_65536_106
      000200 E0               [24]  973 	movx	a,@dptr
      000201 FF               [12]  974 	mov	r7,a
      000202 BF 34 12         [24]  975 	cjne	r7,#0x34,00116$
      000205 90 04 06         [24]  976 	mov	dptr,#_lcdgotoxy_PARM_2
      000208 E0               [24]  977 	movx	a,@dptr
      000209 FF               [12]  978 	mov	r7,a
      00020A BF 30 0A         [24]  979 	cjne	r7,#0x30,00116$
                                    980 ;	lcd.c:216: address |= 0x40;
      00020D 90 04 08         [24]  981 	mov	dptr,#_lcdgotoxy_address_65536_107
      000210 E0               [24]  982 	movx	a,@dptr
      000211 43 E0 40         [24]  983 	orl	acc,#0x40
      000214 F0               [24]  984 	movx	@dptr,a
      000215 80 3B            [24]  985 	sjmp	00121$
      000217                        986 00116$:
                                    987 ;	lcd.c:218: else if (column >= 'A' && column <= 'F') {
      000217 90 04 06         [24]  988 	mov	dptr,#_lcdgotoxy_PARM_2
      00021A E0               [24]  989 	movx	a,@dptr
      00021B FF               [12]  990 	mov	r7,a
      00021C BF 41 00         [24]  991 	cjne	r7,#0x41,00186$
      00021F                        992 00186$:
      00021F 40 13            [24]  993 	jc	00112$
      000221 EF               [12]  994 	mov	a,r7
      000222 24 B9            [12]  995 	add	a,#0xff - 0x46
      000224 40 0E            [24]  996 	jc	00112$
                                    997 ;	lcd.c:219: address |= (column - '7');
      000226 8F 06            [24]  998 	mov	ar6,r7
      000228 EE               [12]  999 	mov	a,r6
      000229 24 C9            [12] 1000 	add	a,#0xc9
      00022B FE               [12] 1001 	mov	r6,a
      00022C 90 04 08         [24] 1002 	mov	dptr,#_lcdgotoxy_address_65536_107
      00022F E0               [24] 1003 	movx	a,@dptr
      000230 4E               [12] 1004 	orl	a,r6
      000231 F0               [24] 1005 	movx	@dptr,a
      000232 80 1E            [24] 1006 	sjmp	00121$
      000234                       1007 00112$:
                                   1008 ;	lcd.c:221: else if (column >= '0' && column <= '9') {
      000234 BF 30 00         [24] 1009 	cjne	r7,#0x30,00189$
      000237                       1010 00189$:
      000237 40 11            [24] 1011 	jc	00108$
      000239 EF               [12] 1012 	mov	a,r7
      00023A 24 C6            [12] 1013 	add	a,#0xff - 0x39
      00023C 40 0C            [24] 1014 	jc	00108$
                                   1015 ;	lcd.c:222: address |= (column - '0');
      00023E EF               [12] 1016 	mov	a,r7
      00023F 24 D0            [12] 1017 	add	a,#0xd0
      000241 FF               [12] 1018 	mov	r7,a
      000242 90 04 08         [24] 1019 	mov	dptr,#_lcdgotoxy_address_65536_107
      000245 E0               [24] 1020 	movx	a,@dptr
      000246 4F               [12] 1021 	orl	a,r7
      000247 F0               [24] 1022 	movx	@dptr,a
      000248 80 08            [24] 1023 	sjmp	00121$
      00024A                       1024 00108$:
                                   1025 ;	lcd.c:225: address |= ('8' - 48);
      00024A 90 04 08         [24] 1026 	mov	dptr,#_lcdgotoxy_address_65536_107
      00024D E0               [24] 1027 	movx	a,@dptr
      00024E 43 E0 08         [24] 1028 	orl	acc,#0x08
      000251 F0               [24] 1029 	movx	@dptr,a
      000252                       1030 00121$:
                                   1031 ;	lcd.c:227: lcdgotoaddr(address);   // Call lcdgotoaddr function with the calculated address
      000252 90 04 08         [24] 1032 	mov	dptr,#_lcdgotoxy_address_65536_107
      000255 E0               [24] 1033 	movx	a,@dptr
      000256 F5 82            [12] 1034 	mov	dpl,a
      000258 12 01 88         [24] 1035 	lcall	_lcdgotoaddr
                                   1036 ;	lcd.c:228: lcdbusywait();          // Wait for the LCD to be not busy
                                   1037 ;	lcd.c:229: }
      00025B 02 00 E9         [24] 1038 	ljmp	_lcdbusywait
                                   1039 ;------------------------------------------------------------
                                   1040 ;Allocation info for local variables in function 'lcdputch'
                                   1041 ;------------------------------------------------------------
                                   1042 ;cc                        Allocated with name '_lcdputch_cc_65536_114'
                                   1043 ;cursor_address            Allocated with name '_lcdputch_cursor_address_65536_115'
                                   1044 ;------------------------------------------------------------
                                   1045 ;	lcd.c:232: void lcdputch(char cc){
                                   1046 ;	-----------------------------------------
                                   1047 ;	 function lcdputch
                                   1048 ;	-----------------------------------------
      00025E                       1049 _lcdputch:
      00025E E5 82            [12] 1050 	mov	a,dpl
      000260 90 04 09         [24] 1051 	mov	dptr,#_lcdputch_cc_65536_114
      000263 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	lcd.c:233: unsigned char cursor_address = get_cursor_address(); // get the current cursor address
      000264 12 01 7B         [24] 1054 	lcall	_get_cursor_address
      000267 AF 82            [24] 1055 	mov	r7,dpl
                                   1056 ;	lcd.c:234: LCD_RS=1;       // set the RS pin high to send data
                                   1057 ;	assignBit
      000269 D2 92            [12] 1058 	setb	_P1_2
                                   1059 ;	lcd.c:235: LCD_RW=0;       // set the RW pin low to write to the LCD
                                   1060 ;	assignBit
      00026B C2 93            [12] 1061 	clr	_P1_3
                                   1062 ;	lcd.c:236: lcd_ptr=cc;     // put the character to the LCD data bus
      00026D 90 04 09         [24] 1063 	mov	dptr,#_lcdputch_cc_65536_114
      000270 E0               [24] 1064 	movx	a,@dptr
      000271 90 F0 00         [24] 1065 	mov	dptr,#_lcd_ptr
      000274 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	lcd.c:237: lcdbusywait();  // wait until the LCD is not busy
      000275 C0 07            [24] 1068 	push	ar7
      000277 12 00 E9         [24] 1069 	lcall	_lcdbusywait
      00027A D0 07            [24] 1070 	pop	ar7
                                   1071 ;	lcd.c:240: switch(cursor_address) {
      00027C BF 0F 02         [24] 1072 	cjne	r7,#0x0f,00124$
      00027F 80 0F            [24] 1073 	sjmp	00101$
      000281                       1074 00124$:
      000281 BF 1F 02         [24] 1075 	cjne	r7,#0x1f,00125$
      000284 80 22            [24] 1076 	sjmp	00103$
      000286                       1077 00125$:
      000286 BF 4F 02         [24] 1078 	cjne	r7,#0x4f,00126$
      000289 80 11            [24] 1079 	sjmp	00102$
      00028B                       1080 00126$:
                                   1081 ;	lcd.c:241: case 0x0F:
      00028B BF 5F 32         [24] 1082 	cjne	r7,#0x5f,00106$
      00028E 80 24            [24] 1083 	sjmp	00104$
      000290                       1084 00101$:
                                   1085 ;	lcd.c:242: lcdgotoxy('1', '0');
      000290 90 04 06         [24] 1086 	mov	dptr,#_lcdgotoxy_PARM_2
      000293 74 30            [12] 1087 	mov	a,#0x30
      000295 F0               [24] 1088 	movx	@dptr,a
      000296 75 82 31         [24] 1089 	mov	dpl,#0x31
                                   1090 ;	lcd.c:243: break;
                                   1091 ;	lcd.c:244: case 0x4F:
      000299 02 01 A5         [24] 1092 	ljmp	_lcdgotoxy
      00029C                       1093 00102$:
                                   1094 ;	lcd.c:245: lcdgotoxy('2', '0');
      00029C 90 04 06         [24] 1095 	mov	dptr,#_lcdgotoxy_PARM_2
      00029F 74 30            [12] 1096 	mov	a,#0x30
      0002A1 F0               [24] 1097 	movx	@dptr,a
      0002A2 75 82 32         [24] 1098 	mov	dpl,#0x32
                                   1099 ;	lcd.c:246: break;
                                   1100 ;	lcd.c:247: case 0x1F:
      0002A5 02 01 A5         [24] 1101 	ljmp	_lcdgotoxy
      0002A8                       1102 00103$:
                                   1103 ;	lcd.c:248: lcdgotoxy('0', '0');
      0002A8 90 04 06         [24] 1104 	mov	dptr,#_lcdgotoxy_PARM_2
      0002AB 74 30            [12] 1105 	mov	a,#0x30
      0002AD F0               [24] 1106 	movx	@dptr,a
      0002AE 75 82 30         [24] 1107 	mov	dpl,#0x30
                                   1108 ;	lcd.c:249: break;
                                   1109 ;	lcd.c:250: case 0x5F:
      0002B1 02 01 A5         [24] 1110 	ljmp	_lcdgotoxy
      0002B4                       1111 00104$:
                                   1112 ;	lcd.c:251: lcdgotoxy('0', '0');
      0002B4 90 04 06         [24] 1113 	mov	dptr,#_lcdgotoxy_PARM_2
      0002B7 74 30            [12] 1114 	mov	a,#0x30
      0002B9 F0               [24] 1115 	movx	@dptr,a
      0002BA 75 82 30         [24] 1116 	mov	dpl,#0x30
                                   1117 ;	lcd.c:253: }
                                   1118 ;	lcd.c:254: }
      0002BD 02 01 A5         [24] 1119 	ljmp	_lcdgotoxy
      0002C0                       1120 00106$:
      0002C0 22               [24] 1121 	ret
                                   1122 ;------------------------------------------------------------
                                   1123 ;Allocation info for local variables in function 'lcdputstr'
                                   1124 ;------------------------------------------------------------
                                   1125 ;ss                        Allocated with name '_lcdputstr_ss_65536_117'
                                   1126 ;i                         Allocated with name '_lcdputstr_i_65536_118'
                                   1127 ;------------------------------------------------------------
                                   1128 ;	lcd.c:256: void lcdputstr(char *ss){
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function lcdputstr
                                   1131 ;	-----------------------------------------
      0002C1                       1132 _lcdputstr:
      0002C1 AF F0            [24] 1133 	mov	r7,b
      0002C3 AE 83            [24] 1134 	mov	r6,dph
      0002C5 E5 82            [12] 1135 	mov	a,dpl
      0002C7 90 04 0A         [24] 1136 	mov	dptr,#_lcdputstr_ss_65536_117
      0002CA F0               [24] 1137 	movx	@dptr,a
      0002CB EE               [12] 1138 	mov	a,r6
      0002CC A3               [24] 1139 	inc	dptr
      0002CD F0               [24] 1140 	movx	@dptr,a
      0002CE EF               [12] 1141 	mov	a,r7
      0002CF A3               [24] 1142 	inc	dptr
      0002D0 F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	lcd.c:258: while(ss[i]!='\0'){     // loop until end of string
      0002D1 90 04 0A         [24] 1145 	mov	dptr,#_lcdputstr_ss_65536_117
      0002D4 E0               [24] 1146 	movx	a,@dptr
      0002D5 FD               [12] 1147 	mov	r5,a
      0002D6 A3               [24] 1148 	inc	dptr
      0002D7 E0               [24] 1149 	movx	a,@dptr
      0002D8 FE               [12] 1150 	mov	r6,a
      0002D9 A3               [24] 1151 	inc	dptr
      0002DA E0               [24] 1152 	movx	a,@dptr
      0002DB FF               [12] 1153 	mov	r7,a
      0002DC 7B 00            [12] 1154 	mov	r3,#0x00
      0002DE 7C 00            [12] 1155 	mov	r4,#0x00
      0002E0                       1156 00101$:
      0002E0 EB               [12] 1157 	mov	a,r3
      0002E1 2D               [12] 1158 	add	a,r5
      0002E2 F8               [12] 1159 	mov	r0,a
      0002E3 EC               [12] 1160 	mov	a,r4
      0002E4 3E               [12] 1161 	addc	a,r6
      0002E5 F9               [12] 1162 	mov	r1,a
      0002E6 8F 02            [24] 1163 	mov	ar2,r7
      0002E8 88 82            [24] 1164 	mov	dpl,r0
      0002EA 89 83            [24] 1165 	mov	dph,r1
      0002EC 8A F0            [24] 1166 	mov	b,r2
      0002EE 12 29 61         [24] 1167 	lcall	__gptrget
      0002F1 FA               [12] 1168 	mov	r2,a
      0002F2 60 20            [24] 1169 	jz	00104$
                                   1170 ;	lcd.c:259: lcdputch(ss[i]);    // print each character
      0002F4 8A 82            [24] 1171 	mov	dpl,r2
      0002F6 C0 07            [24] 1172 	push	ar7
      0002F8 C0 06            [24] 1173 	push	ar6
      0002FA C0 05            [24] 1174 	push	ar5
      0002FC C0 04            [24] 1175 	push	ar4
      0002FE C0 03            [24] 1176 	push	ar3
      000300 12 02 5E         [24] 1177 	lcall	_lcdputch
      000303 D0 03            [24] 1178 	pop	ar3
      000305 D0 04            [24] 1179 	pop	ar4
      000307 D0 05            [24] 1180 	pop	ar5
      000309 D0 06            [24] 1181 	pop	ar6
      00030B D0 07            [24] 1182 	pop	ar7
                                   1183 ;	lcd.c:260: i++;
      00030D 0B               [12] 1184 	inc	r3
      00030E BB 00 CF         [24] 1185 	cjne	r3,#0x00,00101$
      000311 0C               [12] 1186 	inc	r4
      000312 80 CC            [24] 1187 	sjmp	00101$
      000314                       1188 00104$:
                                   1189 ;	lcd.c:262: }
      000314 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'handler_lcdclear'
                                   1193 ;------------------------------------------------------------
                                   1194 ;	lcd.c:263: void handler_lcdclear(void){
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function handler_lcdclear
                                   1197 ;	-----------------------------------------
      000315                       1198 _handler_lcdclear:
                                   1199 ;	lcd.c:264: LCD_RS=0;               // set RS pin to low
                                   1200 ;	assignBit
      000315 C2 92            [12] 1201 	clr	_P1_2
                                   1202 ;	lcd.c:265: LCD_RW=0;               // set RW pin to low
                                   1203 ;	assignBit
      000317 C2 93            [12] 1204 	clr	_P1_3
                                   1205 ;	lcd.c:266: lcd_ptr=0x01;           // reset pointer to first line
      000319 90 F0 00         [24] 1206 	mov	dptr,#_lcd_ptr
      00031C 74 01            [12] 1207 	mov	a,#0x01
      00031E F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	lcd.c:267: lcdbusywait();          // wait until LCD is ready
      00031F 12 00 E9         [24] 1210 	lcall	_lcdbusywait
                                   1211 ;	lcd.c:268: lcdgotoaddr(0x00);      // move cursor to the beginning of the first line
      000322 75 82 00         [24] 1212 	mov	dpl,#0x00
      000325 12 01 88         [24] 1213 	lcall	_lcdgotoaddr
                                   1214 ;	lcd.c:269: lcdputstr("       ");   // write 7 spaces to clear the first line
      000328 90 29 E9         [24] 1215 	mov	dptr,#___str_0
      00032B 75 F0 80         [24] 1216 	mov	b,#0x80
      00032E 12 02 C1         [24] 1217 	lcall	_lcdputstr
                                   1218 ;	lcd.c:270: lcdgotoaddr(0x00);      // move cursor back to the beginning of the first line
      000331 75 82 00         [24] 1219 	mov	dpl,#0x00
      000334 12 01 88         [24] 1220 	lcall	_lcdgotoaddr
                                   1221 ;	lcd.c:271: printf_tiny("\033[1;33m\n\rLCD Cleared!!\r\n"); // print a message to indicate LCD has been cleared
      000337 74 F1            [12] 1222 	mov	a,#___str_1
      000339 C0 E0            [24] 1223 	push	acc
      00033B 74 29            [12] 1224 	mov	a,#(___str_1 >> 8)
      00033D C0 E0            [24] 1225 	push	acc
      00033F 12 18 80         [24] 1226 	lcall	_printf_tiny
      000342 15 81            [12] 1227 	dec	sp
      000344 15 81            [12] 1228 	dec	sp
                                   1229 ;	lcd.c:272: }
      000346 22               [24] 1230 	ret
                                   1231 ;------------------------------------------------------------
                                   1232 ;Allocation info for local variables in function 'handler_wr_c_lcd'
                                   1233 ;------------------------------------------------------------
                                   1234 ;lcd_input                 Allocated with name '_handler_wr_c_lcd_lcd_input_65536_123'
                                   1235 ;------------------------------------------------------------
                                   1236 ;	lcd.c:274: void handler_wr_c_lcd(void)
                                   1237 ;	-----------------------------------------
                                   1238 ;	 function handler_wr_c_lcd
                                   1239 ;	-----------------------------------------
      000347                       1240 _handler_wr_c_lcd:
                                   1241 ;	lcd.c:277: printf_tiny("\033[1;33m\n\rEnter Character to put on LCD !!\r\n"); // print a message to ask the user to enter a character
      000347 74 0A            [12] 1242 	mov	a,#___str_2
      000349 C0 E0            [24] 1243 	push	acc
      00034B 74 2A            [12] 1244 	mov	a,#(___str_2 >> 8)
      00034D C0 E0            [24] 1245 	push	acc
      00034F 12 18 80         [24] 1246 	lcall	_printf_tiny
      000352 15 81            [12] 1247 	dec	sp
      000354 15 81            [12] 1248 	dec	sp
                                   1249 ;	lcd.c:278: lcd_input = getchar();  // get the input character from the user
      000356 12 15 4A         [24] 1250 	lcall	_getchar
      000359 AE 82            [24] 1251 	mov	r6,dpl
                                   1252 ;	lcd.c:282: }
      00035B D2 00            [12] 1253 	setb	_handler_wr_c_lcd_sloc0_1_0
      00035D 10 AF 02         [24] 1254 	jbc	ea,00103$
      000360 C2 00            [12] 1255 	clr	_handler_wr_c_lcd_sloc0_1_0
      000362                       1256 00103$:
                                   1257 ;	lcd.c:281: lcdputch(lcd_input); // write the input character to the LCD
      000362 8E 82            [24] 1258 	mov	dpl,r6
      000364 C0 06            [24] 1259 	push	ar6
      000366 12 02 5E         [24] 1260 	lcall	_lcdputch
      000369 A2 00            [12] 1261 	mov	c,_handler_wr_c_lcd_sloc0_1_0
      00036B 92 AF            [24] 1262 	mov	ea,c
                                   1263 ;	lcd.c:283: printf_tiny("\n\rEntered Char = %c\n\r",lcd_input); // print the entered character
      00036D 7F 00            [12] 1264 	mov	r7,#0x00
      00036F C0 07            [24] 1265 	push	ar7
      000371 74 36            [12] 1266 	mov	a,#___str_3
      000373 C0 E0            [24] 1267 	push	acc
      000375 74 2A            [12] 1268 	mov	a,#(___str_3 >> 8)
      000377 C0 E0            [24] 1269 	push	acc
      000379 12 18 80         [24] 1270 	lcall	_printf_tiny
      00037C E5 81            [12] 1271 	mov	a,sp
      00037E 24 FC            [12] 1272 	add	a,#0xfc
      000380 F5 81            [12] 1273 	mov	sp,a
                                   1274 ;	lcd.c:284: printf_tiny("\n\r");
      000382 74 4C            [12] 1275 	mov	a,#___str_4
      000384 C0 E0            [24] 1276 	push	acc
      000386 74 2A            [12] 1277 	mov	a,#(___str_4 >> 8)
      000388 C0 E0            [24] 1278 	push	acc
      00038A 12 18 80         [24] 1279 	lcall	_printf_tiny
      00038D 15 81            [12] 1280 	dec	sp
      00038F 15 81            [12] 1281 	dec	sp
                                   1282 ;	lcd.c:285: }
      000391 22               [24] 1283 	ret
                                   1284 ;------------------------------------------------------------
                                   1285 ;Allocation info for local variables in function 'handler_wr_str_lcd'
                                   1286 ;------------------------------------------------------------
                                   1287 ;k                         Allocated with name '_handler_wr_str_lcd_k_65537_127'
                                   1288 ;i                         Allocated with name '_handler_wr_str_lcd_i_65537_127'
                                   1289 ;ch                        Allocated with name '_handler_wr_str_lcd_ch_65537_127'
                                   1290 ;------------------------------------------------------------
                                   1291 ;	lcd.c:287: void handler_wr_str_lcd(void)
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function handler_wr_str_lcd
                                   1294 ;	-----------------------------------------
      000392                       1295 _handler_wr_str_lcd:
                                   1296 ;	lcd.c:289: printf_tiny("\033[1;33m\n\rEnter String to put on LCD !!\r\n"); // print a message to ask the user to enter a string
      000392 74 4F            [12] 1297 	mov	a,#___str_5
      000394 C0 E0            [24] 1298 	push	acc
      000396 74 2A            [12] 1299 	mov	a,#(___str_5 >> 8)
      000398 C0 E0            [24] 1300 	push	acc
      00039A 12 18 80         [24] 1301 	lcall	_printf_tiny
      00039D 15 81            [12] 1302 	dec	sp
      00039F 15 81            [12] 1303 	dec	sp
                                   1304 ;	lcd.c:290: int k = 1;
      0003A1 90 04 0D         [24] 1305 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      0003A4 74 01            [12] 1306 	mov	a,#0x01
      0003A6 F0               [24] 1307 	movx	@dptr,a
      0003A7 E4               [12] 1308 	clr	a
      0003A8 A3               [24] 1309 	inc	dptr
      0003A9 F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	lcd.c:294: while(k){
      0003AA 7E 00            [12] 1312 	mov	r6,#0x00
      0003AC 7F 00            [12] 1313 	mov	r7,#0x00
      0003AE                       1314 00104$:
      0003AE 90 04 0D         [24] 1315 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      0003B1 E0               [24] 1316 	movx	a,@dptr
      0003B2 F5 F0            [12] 1317 	mov	b,a
      0003B4 A3               [24] 1318 	inc	dptr
      0003B5 E0               [24] 1319 	movx	a,@dptr
      0003B6 45 F0            [12] 1320 	orl	a,b
      0003B8 60 3D            [24] 1321 	jz	00106$
                                   1322 ;	lcd.c:295: ch=getchar();       // get each character from the user until the enter key is pressed
      0003BA C0 07            [24] 1323 	push	ar7
      0003BC C0 06            [24] 1324 	push	ar6
      0003BE 12 15 4A         [24] 1325 	lcall	_getchar
      0003C1 AC 82            [24] 1326 	mov	r4,dpl
      0003C3 AD 83            [24] 1327 	mov	r5,dph
      0003C5 D0 06            [24] 1328 	pop	ar6
      0003C7 D0 07            [24] 1329 	pop	ar7
                                   1330 ;	lcd.c:296: if(ch=='\r'){
      0003C9 BC 0D 09         [24] 1331 	cjne	r4,#0x0d,00102$
                                   1332 ;	lcd.c:297: k=0;            // exit the loop when the enter key is pressed
      0003CC 90 04 0D         [24] 1333 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      0003CF E4               [12] 1334 	clr	a
      0003D0 F0               [24] 1335 	movx	@dptr,a
      0003D1 A3               [24] 1336 	inc	dptr
      0003D2 F0               [24] 1337 	movx	@dptr,a
      0003D3 80 D9            [24] 1338 	sjmp	00104$
      0003D5                       1339 00102$:
                                   1340 ;	lcd.c:300: *(string+i)=ch; // store each character in a string array
      0003D5 90 04 00         [24] 1341 	mov	dptr,#_string
      0003D8 E0               [24] 1342 	movx	a,@dptr
      0003D9 FA               [12] 1343 	mov	r2,a
      0003DA A3               [24] 1344 	inc	dptr
      0003DB E0               [24] 1345 	movx	a,@dptr
      0003DC FB               [12] 1346 	mov	r3,a
      0003DD A3               [24] 1347 	inc	dptr
      0003DE E0               [24] 1348 	movx	a,@dptr
      0003DF FD               [12] 1349 	mov	r5,a
      0003E0 EE               [12] 1350 	mov	a,r6
      0003E1 2A               [12] 1351 	add	a,r2
      0003E2 FA               [12] 1352 	mov	r2,a
      0003E3 EF               [12] 1353 	mov	a,r7
      0003E4 3B               [12] 1354 	addc	a,r3
      0003E5 FB               [12] 1355 	mov	r3,a
      0003E6 8A 82            [24] 1356 	mov	dpl,r2
      0003E8 8B 83            [24] 1357 	mov	dph,r3
      0003EA 8D F0            [24] 1358 	mov	b,r5
      0003EC EC               [12] 1359 	mov	a,r4
      0003ED 12 18 65         [24] 1360 	lcall	__gptrput
                                   1361 ;	lcd.c:301: i++;
      0003F0 0E               [12] 1362 	inc	r6
      0003F1 BE 00 BA         [24] 1363 	cjne	r6,#0x00,00104$
      0003F4 0F               [12] 1364 	inc	r7
      0003F5 80 B7            [24] 1365 	sjmp	00104$
      0003F7                       1366 00106$:
                                   1367 ;	lcd.c:304: *(string+i)='\0';       // add null character to mark the end of the string
      0003F7 90 04 00         [24] 1368 	mov	dptr,#_string
      0003FA E0               [24] 1369 	movx	a,@dptr
      0003FB FB               [12] 1370 	mov	r3,a
      0003FC A3               [24] 1371 	inc	dptr
      0003FD E0               [24] 1372 	movx	a,@dptr
      0003FE FC               [12] 1373 	mov	r4,a
      0003FF A3               [24] 1374 	inc	dptr
      000400 E0               [24] 1375 	movx	a,@dptr
      000401 FD               [12] 1376 	mov	r5,a
      000402 EE               [12] 1377 	mov	a,r6
      000403 2B               [12] 1378 	add	a,r3
      000404 FE               [12] 1379 	mov	r6,a
      000405 EF               [12] 1380 	mov	a,r7
      000406 3C               [12] 1381 	addc	a,r4
      000407 FF               [12] 1382 	mov	r7,a
      000408 8D 02            [24] 1383 	mov	ar2,r5
      00040A 8E 82            [24] 1384 	mov	dpl,r6
      00040C 8F 83            [24] 1385 	mov	dph,r7
      00040E 8A F0            [24] 1386 	mov	b,r2
      000410 E4               [12] 1387 	clr	a
      000411 12 18 65         [24] 1388 	lcall	__gptrput
                                   1389 ;	lcd.c:308: }
      000414 D2 01            [12] 1390 	setb	_handler_wr_str_lcd_sloc0_1_0
      000416 10 AF 02         [24] 1391 	jbc	ea,00126$
      000419 C2 01            [12] 1392 	clr	_handler_wr_str_lcd_sloc0_1_0
      00041B                       1393 00126$:
                                   1394 ;	lcd.c:307: lcdputstr(string);  // write the string to the LCD
      00041B 90 04 00         [24] 1395 	mov	dptr,#_string
      00041E E0               [24] 1396 	movx	a,@dptr
      00041F FD               [12] 1397 	mov	r5,a
      000420 A3               [24] 1398 	inc	dptr
      000421 E0               [24] 1399 	movx	a,@dptr
      000422 FE               [12] 1400 	mov	r6,a
      000423 A3               [24] 1401 	inc	dptr
      000424 E0               [24] 1402 	movx	a,@dptr
      000425 FF               [12] 1403 	mov	r7,a
      000426 8D 82            [24] 1404 	mov	dpl,r5
      000428 8E 83            [24] 1405 	mov	dph,r6
      00042A 8F F0            [24] 1406 	mov	b,r7
      00042C 12 02 C1         [24] 1407 	lcall	_lcdputstr
      00042F A2 01            [12] 1408 	mov	c,_handler_wr_str_lcd_sloc0_1_0
      000431 92 AF            [24] 1409 	mov	ea,c
                                   1410 ;	lcd.c:309: printf_tiny("Entered String = %s\n\r",string); // print the entered string
      000433 90 04 00         [24] 1411 	mov	dptr,#_string
      000436 E0               [24] 1412 	movx	a,@dptr
      000437 C0 E0            [24] 1413 	push	acc
      000439 A3               [24] 1414 	inc	dptr
      00043A E0               [24] 1415 	movx	a,@dptr
      00043B C0 E0            [24] 1416 	push	acc
      00043D A3               [24] 1417 	inc	dptr
      00043E E0               [24] 1418 	movx	a,@dptr
      00043F C0 E0            [24] 1419 	push	acc
      000441 74 78            [12] 1420 	mov	a,#___str_6
      000443 C0 E0            [24] 1421 	push	acc
      000445 74 2A            [12] 1422 	mov	a,#(___str_6 >> 8)
      000447 C0 E0            [24] 1423 	push	acc
      000449 12 18 80         [24] 1424 	lcall	_printf_tiny
      00044C E5 81            [12] 1425 	mov	a,sp
      00044E 24 FB            [12] 1426 	add	a,#0xfb
      000450 F5 81            [12] 1427 	mov	sp,a
                                   1428 ;	lcd.c:310: printf_tiny("\n\r");
      000452 74 4C            [12] 1429 	mov	a,#___str_4
      000454 C0 E0            [24] 1430 	push	acc
      000456 74 2A            [12] 1431 	mov	a,#(___str_4 >> 8)
      000458 C0 E0            [24] 1432 	push	acc
      00045A 12 18 80         [24] 1433 	lcall	_printf_tiny
      00045D 15 81            [12] 1434 	dec	sp
      00045F 15 81            [12] 1435 	dec	sp
                                   1436 ;	lcd.c:311: }
      000461 22               [24] 1437 	ret
                                   1438 ;------------------------------------------------------------
                                   1439 ;Allocation info for local variables in function 'handler_lcdgotoxy'
                                   1440 ;------------------------------------------------------------
                                   1441 ;x_coordinate_ch           Allocated with name '_handler_lcdgotoxy_x_coordinate_ch_65536_133'
                                   1442 ;y_coordinate_ch           Allocated with name '_handler_lcdgotoxy_y_coordinate_ch_65537_134'
                                   1443 ;------------------------------------------------------------
                                   1444 ;	lcd.c:314: void handler_lcdgotoxy(void)
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function handler_lcdgotoxy
                                   1447 ;	-----------------------------------------
      000462                       1448 _handler_lcdgotoxy:
                                   1449 ;	lcd.c:318: printf_tiny("\033[1;33m\n\rEnter X-Co-ordinate to put on LCD !!\r\n");
      000462 74 8E            [12] 1450 	mov	a,#___str_7
      000464 C0 E0            [24] 1451 	push	acc
      000466 74 2A            [12] 1452 	mov	a,#(___str_7 >> 8)
      000468 C0 E0            [24] 1453 	push	acc
      00046A 12 18 80         [24] 1454 	lcall	_printf_tiny
      00046D 15 81            [12] 1455 	dec	sp
      00046F 15 81            [12] 1456 	dec	sp
                                   1457 ;	lcd.c:319: x_coordinate_ch  = toupper(getchar());
      000471 12 15 4A         [24] 1458 	lcall	_getchar
      000474 12 1E A8         [24] 1459 	lcall	_toupper
      000477 AE 82            [24] 1460 	mov	r6,dpl
                                   1461 ;	lcd.c:322: printf_tiny("X-Cordinate = %c\n\r",x_coordinate_ch);
      000479 8E 05            [24] 1462 	mov	ar5,r6
      00047B 7F 00            [12] 1463 	mov	r7,#0x00
      00047D C0 06            [24] 1464 	push	ar6
      00047F C0 05            [24] 1465 	push	ar5
      000481 C0 07            [24] 1466 	push	ar7
      000483 74 BE            [12] 1467 	mov	a,#___str_8
      000485 C0 E0            [24] 1468 	push	acc
      000487 74 2A            [12] 1469 	mov	a,#(___str_8 >> 8)
      000489 C0 E0            [24] 1470 	push	acc
      00048B 12 18 80         [24] 1471 	lcall	_printf_tiny
      00048E E5 81            [12] 1472 	mov	a,sp
      000490 24 FC            [12] 1473 	add	a,#0xfc
      000492 F5 81            [12] 1474 	mov	sp,a
                                   1475 ;	lcd.c:325: printf_tiny("\033[1;33m\n\rEnter Y-Co-ordinate to put on LCD !!\r\n");
      000494 74 D1            [12] 1476 	mov	a,#___str_9
      000496 C0 E0            [24] 1477 	push	acc
      000498 74 2A            [12] 1478 	mov	a,#(___str_9 >> 8)
      00049A C0 E0            [24] 1479 	push	acc
      00049C 12 18 80         [24] 1480 	lcall	_printf_tiny
      00049F 15 81            [12] 1481 	dec	sp
      0004A1 15 81            [12] 1482 	dec	sp
                                   1483 ;	lcd.c:326: char y_coordinate_ch  = toupper(getchar());
      0004A3 12 15 4A         [24] 1484 	lcall	_getchar
      0004A6 12 1E A8         [24] 1485 	lcall	_toupper
      0004A9 AD 82            [24] 1486 	mov	r5,dpl
                                   1487 ;	lcd.c:329: printf_tiny("Y-Cordinate = %c\n\r",y_coordinate_ch);
      0004AB 8D 04            [24] 1488 	mov	ar4,r5
      0004AD 7F 00            [12] 1489 	mov	r7,#0x00
      0004AF C0 05            [24] 1490 	push	ar5
      0004B1 C0 04            [24] 1491 	push	ar4
      0004B3 C0 07            [24] 1492 	push	ar7
      0004B5 74 01            [12] 1493 	mov	a,#___str_10
      0004B7 C0 E0            [24] 1494 	push	acc
      0004B9 74 2B            [12] 1495 	mov	a,#(___str_10 >> 8)
      0004BB C0 E0            [24] 1496 	push	acc
      0004BD 12 18 80         [24] 1497 	lcall	_printf_tiny
      0004C0 E5 81            [12] 1498 	mov	a,sp
      0004C2 24 FC            [12] 1499 	add	a,#0xfc
      0004C4 F5 81            [12] 1500 	mov	sp,a
      0004C6 D0 05            [24] 1501 	pop	ar5
      0004C8 D0 06            [24] 1502 	pop	ar6
                                   1503 ;	lcd.c:332: if (x_coordinate_ch >= '0' && x_coordinate_ch <= '3'){
      0004CA BE 30 00         [24] 1504 	cjne	r6,#0x30,00119$
      0004CD                       1505 00119$:
      0004CD 40 05            [24] 1506 	jc	00106$
      0004CF EE               [12] 1507 	mov	a,r6
      0004D0 24 CC            [12] 1508 	add	a,#0xff - 0x33
      0004D2 50 1A            [24] 1509 	jnc	00107$
      0004D4                       1510 00106$:
                                   1511 ;	lcd.c:334: } else if (y_coordinate_ch >= '0' && y_coordinate_ch <= 'F') {
      0004D4 BD 30 00         [24] 1512 	cjne	r5,#0x30,00122$
      0004D7                       1513 00122$:
      0004D7 40 05            [24] 1514 	jc	00102$
      0004D9 ED               [12] 1515 	mov	a,r5
      0004DA 24 B9            [12] 1516 	add	a,#0xff - 0x46
      0004DC 50 10            [24] 1517 	jnc	00107$
      0004DE                       1518 00102$:
                                   1519 ;	lcd.c:337: printf_tiny("\033[1;31mInvalid coordinate!!\n\r");
      0004DE 74 14            [12] 1520 	mov	a,#___str_11
      0004E0 C0 E0            [24] 1521 	push	acc
      0004E2 74 2B            [12] 1522 	mov	a,#(___str_11 >> 8)
      0004E4 C0 E0            [24] 1523 	push	acc
      0004E6 12 18 80         [24] 1524 	lcall	_printf_tiny
      0004E9 15 81            [12] 1525 	dec	sp
      0004EB 15 81            [12] 1526 	dec	sp
                                   1527 ;	lcd.c:338: return;
      0004ED 22               [24] 1528 	ret
      0004EE                       1529 00107$:
                                   1530 ;	lcd.c:344: }
      0004EE D2 02            [12] 1531 	setb	_handler_lcdgotoxy_sloc0_1_0
      0004F0 10 AF 02         [24] 1532 	jbc	ea,00125$
      0004F3 C2 02            [12] 1533 	clr	_handler_lcdgotoxy_sloc0_1_0
      0004F5                       1534 00125$:
                                   1535 ;	lcd.c:343: lcdgotoxy(x_coordinate_ch, y_coordinate_ch);
      0004F5 90 04 06         [24] 1536 	mov	dptr,#_lcdgotoxy_PARM_2
      0004F8 ED               [12] 1537 	mov	a,r5
      0004F9 F0               [24] 1538 	movx	@dptr,a
      0004FA 8E 82            [24] 1539 	mov	dpl,r6
      0004FC 12 01 A5         [24] 1540 	lcall	_lcdgotoxy
      0004FF A2 02            [12] 1541 	mov	c,_handler_lcdgotoxy_sloc0_1_0
      000501 92 AF            [24] 1542 	mov	ea,c
                                   1543 ;	lcd.c:347: printf_tiny("\033[1;33m\n\rCursor Movement Completed!!\r\n");
      000503 74 32            [12] 1544 	mov	a,#___str_12
      000505 C0 E0            [24] 1545 	push	acc
      000507 74 2B            [12] 1546 	mov	a,#(___str_12 >> 8)
      000509 C0 E0            [24] 1547 	push	acc
      00050B 12 18 80         [24] 1548 	lcall	_printf_tiny
      00050E 15 81            [12] 1549 	dec	sp
      000510 15 81            [12] 1550 	dec	sp
                                   1551 ;	lcd.c:348: }
      000512 22               [24] 1552 	ret
                                   1553 ;------------------------------------------------------------
                                   1554 ;Allocation info for local variables in function 'handler_lcdgotoaddress'
                                   1555 ;------------------------------------------------------------
                                   1556 ;str                       Allocated with name '_handler_lcdgotoaddress_str_65536_140'
                                   1557 ;i                         Allocated with name '_handler_lcdgotoaddress_i_65537_141'
                                   1558 ;c                         Allocated with name '_handler_lcdgotoaddress_c_65537_141'
                                   1559 ;num                       Allocated with name '_handler_lcdgotoaddress_num_65538_143'
                                   1560 ;------------------------------------------------------------
                                   1561 ;	lcd.c:352: void handler_lcdgotoaddress(void)
                                   1562 ;	-----------------------------------------
                                   1563 ;	 function handler_lcdgotoaddress
                                   1564 ;	-----------------------------------------
      000513                       1565 _handler_lcdgotoaddress:
                                   1566 ;	lcd.c:355: printf_tiny("\033[1;33m\n\rEnter address to put onto the LCD !!\r\n");
      000513 74 59            [12] 1567 	mov	a,#___str_13
      000515 C0 E0            [24] 1568 	push	acc
      000517 74 2B            [12] 1569 	mov	a,#(___str_13 >> 8)
      000519 C0 E0            [24] 1570 	push	acc
      00051B 12 18 80         [24] 1571 	lcall	_printf_tiny
      00051E 15 81            [12] 1572 	dec	sp
      000520 15 81            [12] 1573 	dec	sp
                                   1574 ;	lcd.c:359: char c = getchar();
      000522 12 15 4A         [24] 1575 	lcall	_getchar
      000525 AE 82            [24] 1576 	mov	r6,dpl
      000527 90 04 41         [24] 1577 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      00052A EE               [12] 1578 	mov	a,r6
      00052B F0               [24] 1579 	movx	@dptr,a
                                   1580 ;	lcd.c:360: while (c != '\r' && i < 49) { // Read characters until enter is pressed or limit is reached
      00052C 7E 00            [12] 1581 	mov	r6,#0x00
      00052E 7F 00            [12] 1582 	mov	r7,#0x00
      000530                       1583 00102$:
      000530 90 04 41         [24] 1584 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      000533 E0               [24] 1585 	movx	a,@dptr
      000534 FD               [12] 1586 	mov	r5,a
      000535 BD 0D 02         [24] 1587 	cjne	r5,#0x0d,00120$
      000538 80 32            [24] 1588 	sjmp	00104$
      00053A                       1589 00120$:
      00053A C3               [12] 1590 	clr	c
      00053B EE               [12] 1591 	mov	a,r6
      00053C 94 31            [12] 1592 	subb	a,#0x31
      00053E EF               [12] 1593 	mov	a,r7
      00053F 64 80            [12] 1594 	xrl	a,#0x80
      000541 94 80            [12] 1595 	subb	a,#0x80
      000543 50 27            [24] 1596 	jnc	00104$
                                   1597 ;	lcd.c:361: str[i++] = c;
      000545 EE               [12] 1598 	mov	a,r6
      000546 24 0F            [12] 1599 	add	a,#_handler_lcdgotoaddress_str_65536_140
      000548 F5 82            [12] 1600 	mov	dpl,a
      00054A EF               [12] 1601 	mov	a,r7
      00054B 34 04            [12] 1602 	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      00054D F5 83            [12] 1603 	mov	dph,a
      00054F 0E               [12] 1604 	inc	r6
      000550 BE 00 01         [24] 1605 	cjne	r6,#0x00,00122$
      000553 0F               [12] 1606 	inc	r7
      000554                       1607 00122$:
      000554 ED               [12] 1608 	mov	a,r5
      000555 F0               [24] 1609 	movx	@dptr,a
                                   1610 ;	lcd.c:362: c = getchar();
      000556 C0 07            [24] 1611 	push	ar7
      000558 C0 06            [24] 1612 	push	ar6
      00055A 12 15 4A         [24] 1613 	lcall	_getchar
      00055D AC 82            [24] 1614 	mov	r4,dpl
      00055F AD 83            [24] 1615 	mov	r5,dph
      000561 D0 06            [24] 1616 	pop	ar6
      000563 D0 07            [24] 1617 	pop	ar7
      000565 90 04 41         [24] 1618 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      000568 EC               [12] 1619 	mov	a,r4
      000569 F0               [24] 1620 	movx	@dptr,a
      00056A 80 C4            [24] 1621 	sjmp	00102$
      00056C                       1622 00104$:
                                   1623 ;	lcd.c:364: str[i] = '\0';
      00056C EE               [12] 1624 	mov	a,r6
      00056D 24 0F            [12] 1625 	add	a,#_handler_lcdgotoaddress_str_65536_140
      00056F F5 82            [12] 1626 	mov	dpl,a
      000571 EF               [12] 1627 	mov	a,r7
      000572 34 04            [12] 1628 	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      000574 F5 83            [12] 1629 	mov	dph,a
      000576 E4               [12] 1630 	clr	a
      000577 F0               [24] 1631 	movx	@dptr,a
                                   1632 ;	lcd.c:367: printf("Address Entered = %s\n\r",str);
      000578 74 0F            [12] 1633 	mov	a,#_handler_lcdgotoaddress_str_65536_140
      00057A C0 E0            [24] 1634 	push	acc
      00057C 74 04            [12] 1635 	mov	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      00057E C0 E0            [24] 1636 	push	acc
      000580 E4               [12] 1637 	clr	a
      000581 C0 E0            [24] 1638 	push	acc
      000583 74 89            [12] 1639 	mov	a,#___str_14
      000585 C0 E0            [24] 1640 	push	acc
      000587 74 2B            [12] 1641 	mov	a,#(___str_14 >> 8)
      000589 C0 E0            [24] 1642 	push	acc
      00058B 74 80            [12] 1643 	mov	a,#0x80
      00058D C0 E0            [24] 1644 	push	acc
      00058F 12 1F 35         [24] 1645 	lcall	_printf
      000592 E5 81            [12] 1646 	mov	a,sp
      000594 24 FA            [12] 1647 	add	a,#0xfa
      000596 F5 81            [12] 1648 	mov	sp,a
                                   1649 ;	lcd.c:370: long int num = strtol(str, NULL, 16);
      000598 90 05 03         [24] 1650 	mov	dptr,#_strtol_PARM_2
      00059B E4               [12] 1651 	clr	a
      00059C F0               [24] 1652 	movx	@dptr,a
      00059D A3               [24] 1653 	inc	dptr
      00059E F0               [24] 1654 	movx	@dptr,a
      00059F A3               [24] 1655 	inc	dptr
      0005A0 F0               [24] 1656 	movx	@dptr,a
      0005A1 90 05 06         [24] 1657 	mov	dptr,#_strtol_PARM_3
      0005A4 74 10            [12] 1658 	mov	a,#0x10
      0005A6 F0               [24] 1659 	movx	@dptr,a
      0005A7 E4               [12] 1660 	clr	a
      0005A8 A3               [24] 1661 	inc	dptr
      0005A9 F0               [24] 1662 	movx	@dptr,a
      0005AA 90 04 0F         [24] 1663 	mov	dptr,#_handler_lcdgotoaddress_str_65536_140
      0005AD 75 F0 00         [24] 1664 	mov	b,#0x00
      0005B0 12 16 38         [24] 1665 	lcall	_strtol
      0005B3 AC 82            [24] 1666 	mov	r4,dpl
                                   1667 ;	lcd.c:376: }
      0005B5 D2 03            [12] 1668 	setb	_handler_lcdgotoaddress_sloc0_1_0
      0005B7 10 AF 02         [24] 1669 	jbc	ea,00123$
      0005BA C2 03            [12] 1670 	clr	_handler_lcdgotoaddress_sloc0_1_0
      0005BC                       1671 00123$:
                                   1672 ;	lcd.c:375: lcdgotoaddr((char)num);
      0005BC 8C 82            [24] 1673 	mov	dpl,r4
      0005BE 12 01 88         [24] 1674 	lcall	_lcdgotoaddr
      0005C1 A2 03            [12] 1675 	mov	c,_handler_lcdgotoaddress_sloc0_1_0
      0005C3 92 AF            [24] 1676 	mov	ea,c
                                   1677 ;	lcd.c:377: return;
                                   1678 ;	lcd.c:378: }
      0005C5 22               [24] 1679 	ret
                                   1680 ;------------------------------------------------------------
                                   1681 ;Allocation info for local variables in function 'handler_stop_time'
                                   1682 ;------------------------------------------------------------
                                   1683 ;	lcd.c:381: void handler_stop_time(void)
                                   1684 ;	-----------------------------------------
                                   1685 ;	 function handler_stop_time
                                   1686 ;	-----------------------------------------
      0005C6                       1687 _handler_stop_time:
                                   1688 ;	lcd.c:383: printf_tiny("\033[1;33m\n\rTime Paused !!\r\n");
      0005C6 74 A0            [12] 1689 	mov	a,#___str_15
      0005C8 C0 E0            [24] 1690 	push	acc
      0005CA 74 2B            [12] 1691 	mov	a,#(___str_15 >> 8)
      0005CC C0 E0            [24] 1692 	push	acc
      0005CE 12 18 80         [24] 1693 	lcall	_printf_tiny
      0005D1 15 81            [12] 1694 	dec	sp
      0005D3 15 81            [12] 1695 	dec	sp
                                   1696 ;	lcd.c:386: TCON &=~(0x10);
      0005D5 53 88 EF         [24] 1697 	anl	_TCON,#0xef
                                   1698 ;	lcd.c:387: }
      0005D8 22               [24] 1699 	ret
                                   1700 ;------------------------------------------------------------
                                   1701 ;Allocation info for local variables in function 'handler_resume_time'
                                   1702 ;------------------------------------------------------------
                                   1703 ;	lcd.c:390: void handler_resume_time(void)
                                   1704 ;	-----------------------------------------
                                   1705 ;	 function handler_resume_time
                                   1706 ;	-----------------------------------------
      0005D9                       1707 _handler_resume_time:
                                   1708 ;	lcd.c:393: printf_tiny("\033[1;33m\n\rTime Resumed !!\r\n");
      0005D9 74 BA            [12] 1709 	mov	a,#___str_16
      0005DB C0 E0            [24] 1710 	push	acc
      0005DD 74 2B            [12] 1711 	mov	a,#(___str_16 >> 8)
      0005DF C0 E0            [24] 1712 	push	acc
      0005E1 12 18 80         [24] 1713 	lcall	_printf_tiny
      0005E4 15 81            [12] 1714 	dec	sp
      0005E6 15 81            [12] 1715 	dec	sp
                                   1716 ;	lcd.c:396: TCON |=0x10;
      0005E8 43 88 10         [24] 1717 	orl	_TCON,#0x10
                                   1718 ;	lcd.c:397: }
      0005EB 22               [24] 1719 	ret
                                   1720 ;------------------------------------------------------------
                                   1721 ;Allocation info for local variables in function 'handler_reset_time'
                                   1722 ;------------------------------------------------------------
                                   1723 ;	lcd.c:400: void handler_reset_time(void)
                                   1724 ;	-----------------------------------------
                                   1725 ;	 function handler_reset_time
                                   1726 ;	-----------------------------------------
      0005EC                       1727 _handler_reset_time:
                                   1728 ;	lcd.c:403: printf_tiny("\033[1;33m\n\rTime Reset !!\r\n");
      0005EC 74 D5            [12] 1729 	mov	a,#___str_17
      0005EE C0 E0            [24] 1730 	push	acc
      0005F0 74 2B            [12] 1731 	mov	a,#(___str_17 >> 8)
      0005F2 C0 E0            [24] 1732 	push	acc
      0005F4 12 18 80         [24] 1733 	lcall	_printf_tiny
      0005F7 15 81            [12] 1734 	dec	sp
      0005F9 15 81            [12] 1735 	dec	sp
                                   1736 ;	lcd.c:406: tenth_of_second     = '0';
      0005FB 90 05 77         [24] 1737 	mov	dptr,#_tenth_of_second
      0005FE 74 30            [12] 1738 	mov	a,#0x30
      000600 F0               [24] 1739 	movx	@dptr,a
                                   1740 ;	lcd.c:407: seconds_ones_digit  = '0';
      000601 90 05 78         [24] 1741 	mov	dptr,#_seconds_ones_digit
      000604 F0               [24] 1742 	movx	@dptr,a
                                   1743 ;	lcd.c:408: seconds_tens_digit  = '0';
      000605 90 05 79         [24] 1744 	mov	dptr,#_seconds_tens_digit
      000608 F0               [24] 1745 	movx	@dptr,a
                                   1746 ;	lcd.c:409: minutes_ones_digit  = '0';
      000609 90 05 7A         [24] 1747 	mov	dptr,#_minutes_ones_digit
      00060C F0               [24] 1748 	movx	@dptr,a
                                   1749 ;	lcd.c:410: minutes_tens_digit  = '0';
      00060D 90 05 7B         [24] 1750 	mov	dptr,#_minutes_tens_digit
      000610 F0               [24] 1751 	movx	@dptr,a
                                   1752 ;	lcd.c:411: }
      000611 22               [24] 1753 	ret
                                   1754 ;------------------------------------------------------------
                                   1755 ;Allocation info for local variables in function 'read_lcd_address'
                                   1756 ;------------------------------------------------------------
                                   1757 ;address                   Allocated with name '_read_lcd_address_PARM_2'
                                   1758 ;is_ddram                  Allocated with name '_read_lcd_address_is_ddram_65536_151'
                                   1759 ;------------------------------------------------------------
                                   1760 ;	lcd.c:414: uint8_t read_lcd_address(uint8_t is_ddram, uint8_t address) {
                                   1761 ;	-----------------------------------------
                                   1762 ;	 function read_lcd_address
                                   1763 ;	-----------------------------------------
      000612                       1764 _read_lcd_address:
      000612 E5 82            [12] 1765 	mov	a,dpl
      000614 90 04 43         [24] 1766 	mov	dptr,#_read_lcd_address_is_ddram_65536_151
      000617 F0               [24] 1767 	movx	@dptr,a
                                   1768 ;	lcd.c:416: if (is_ddram == 1) {
      000618 E0               [24] 1769 	movx	a,@dptr
      000619 FF               [12] 1770 	mov	r7,a
      00061A BF 01 0B         [24] 1771 	cjne	r7,#0x01,00102$
                                   1772 ;	lcd.c:417: lcdgotoaddr(address);
      00061D 90 04 42         [24] 1773 	mov	dptr,#_read_lcd_address_PARM_2
      000620 E0               [24] 1774 	movx	a,@dptr
      000621 F5 82            [12] 1775 	mov	dpl,a
      000623 12 01 88         [24] 1776 	lcall	_lcdgotoaddr
      000626 80 0F            [24] 1777 	sjmp	00103$
      000628                       1778 00102$:
                                   1779 ;	lcd.c:419: LCD_RS = 0;
                                   1780 ;	assignBit
      000628 C2 92            [12] 1781 	clr	_P1_2
                                   1782 ;	lcd.c:420: LCD_RW = 0;
                                   1783 ;	assignBit
      00062A C2 93            [12] 1784 	clr	_P1_3
                                   1785 ;	lcd.c:421: lcd_ptr = address;
      00062C 90 04 42         [24] 1786 	mov	dptr,#_read_lcd_address_PARM_2
      00062F E0               [24] 1787 	movx	a,@dptr
      000630 90 F0 00         [24] 1788 	mov	dptr,#_lcd_ptr
      000633 F0               [24] 1789 	movx	@dptr,a
                                   1790 ;	lcd.c:422: lcdbusywait();
      000634 12 00 E9         [24] 1791 	lcall	_lcdbusywait
      000637                       1792 00103$:
                                   1793 ;	lcd.c:426: LCD_RS = 1;
                                   1794 ;	assignBit
      000637 D2 92            [12] 1795 	setb	_P1_2
                                   1796 ;	lcd.c:427: LCD_RW = 1;
                                   1797 ;	assignBit
      000639 D2 93            [12] 1798 	setb	_P1_3
                                   1799 ;	lcd.c:430: return lcd_ptr;
      00063B 90 F0 00         [24] 1800 	mov	dptr,#_lcd_ptr
      00063E E0               [24] 1801 	movx	a,@dptr
                                   1802 ;	lcd.c:431: }
      00063F F5 82            [12] 1803 	mov	dpl,a
      000641 22               [24] 1804 	ret
                                   1805 ;------------------------------------------------------------
                                   1806 ;Allocation info for local variables in function 'handler_lcd_hexdump'
                                   1807 ;------------------------------------------------------------
                                   1808 ;k                         Allocated with name '_handler_lcd_hexdump_k_196608_158'
                                   1809 ;k                         Allocated with name '_handler_lcd_hexdump_k_196608_161'
                                   1810 ;------------------------------------------------------------
                                   1811 ;	lcd.c:432: void handler_lcd_hexdump(void)
                                   1812 ;	-----------------------------------------
                                   1813 ;	 function handler_lcd_hexdump
                                   1814 ;	-----------------------------------------
      000642                       1815 _handler_lcd_hexdump:
                                   1816 ;	lcd.c:460: }
      000642 D2 04            [12] 1817 	setb	_handler_lcd_hexdump_sloc0_1_0
      000644 10 AF 02         [24] 1818 	jbc	ea,00141$
      000647 C2 04            [12] 1819 	clr	_handler_lcd_hexdump_sloc0_1_0
      000649                       1820 00141$:
                                   1821 ;	lcd.c:435: printf("\033[1;34m");                           // Set terminal color to blue
      000649 74 EE            [12] 1822 	mov	a,#___str_18
      00064B C0 E0            [24] 1823 	push	acc
      00064D 74 2B            [12] 1824 	mov	a,#(___str_18 >> 8)
      00064F C0 E0            [24] 1825 	push	acc
      000651 74 80            [12] 1826 	mov	a,#0x80
      000653 C0 E0            [24] 1827 	push	acc
      000655 12 1F 35         [24] 1828 	lcall	_printf
      000658 15 81            [12] 1829 	dec	sp
      00065A 15 81            [12] 1830 	dec	sp
      00065C 15 81            [12] 1831 	dec	sp
                                   1832 ;	lcd.c:436: save_cursor_address=get_cursor_address();       // Save the current cursor address
      00065E 12 01 7B         [24] 1833 	lcall	_get_cursor_address
      000661 E5 82            [12] 1834 	mov	a,dpl
      000663 90 05 74         [24] 1835 	mov	dptr,#_save_cursor_address
      000666 F0               [24] 1836 	movx	@dptr,a
                                   1837 ;	lcd.c:437: printf("\n\rPrinting Hexdump of DDRAM\n\r");
      000667 74 F6            [12] 1838 	mov	a,#___str_19
      000669 C0 E0            [24] 1839 	push	acc
      00066B 74 2B            [12] 1840 	mov	a,#(___str_19 >> 8)
      00066D C0 E0            [24] 1841 	push	acc
      00066F 74 80            [12] 1842 	mov	a,#0x80
      000671 C0 E0            [24] 1843 	push	acc
      000673 12 1F 35         [24] 1844 	lcall	_printf
      000676 15 81            [12] 1845 	dec	sp
      000678 15 81            [12] 1846 	dec	sp
      00067A 15 81            [12] 1847 	dec	sp
                                   1848 ;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
      00067C 7E 00            [12] 1849 	mov	r6,#0x00
      00067E 7F 00            [12] 1850 	mov	r7,#0x00
      000680                       1851 00108$:
      000680 8E 04            [24] 1852 	mov	ar4,r6
      000682 8F 05            [24] 1853 	mov	ar5,r7
      000684 C3               [12] 1854 	clr	c
      000685 74 5F            [12] 1855 	mov	a,#0x5f
      000687 9C               [12] 1856 	subb	a,r4
      000688 E4               [12] 1857 	clr	a
      000689 9D               [12] 1858 	subb	a,r5
      00068A 40 5D            [24] 1859 	jc	00103$
                                   1860 ;	lcd.c:441: if(k%16 == 0){                              // Print new line and address every 16 bytes
      00068C EC               [12] 1861 	mov	a,r4
      00068D 54 0F            [12] 1862 	anl	a,#0x0f
      00068F 70 21            [24] 1863 	jnz	00102$
                                   1864 ;	lcd.c:442: printf("\n\r0x%02x: ",k);
      000691 C0 07            [24] 1865 	push	ar7
      000693 C0 06            [24] 1866 	push	ar6
      000695 C0 06            [24] 1867 	push	ar6
      000697 C0 07            [24] 1868 	push	ar7
      000699 74 14            [12] 1869 	mov	a,#___str_20
      00069B C0 E0            [24] 1870 	push	acc
      00069D 74 2C            [12] 1871 	mov	a,#(___str_20 >> 8)
      00069F C0 E0            [24] 1872 	push	acc
      0006A1 74 80            [12] 1873 	mov	a,#0x80
      0006A3 C0 E0            [24] 1874 	push	acc
      0006A5 12 1F 35         [24] 1875 	lcall	_printf
      0006A8 E5 81            [12] 1876 	mov	a,sp
      0006AA 24 FB            [12] 1877 	add	a,#0xfb
      0006AC F5 81            [12] 1878 	mov	sp,a
      0006AE D0 06            [24] 1879 	pop	ar6
      0006B0 D0 07            [24] 1880 	pop	ar7
      0006B2                       1881 00102$:
                                   1882 ;	lcd.c:444: printf("0x%02x ",read_lcd_address(1,k));    // Read and print the value at the current address
      0006B2 90 04 42         [24] 1883 	mov	dptr,#_read_lcd_address_PARM_2
      0006B5 EE               [12] 1884 	mov	a,r6
      0006B6 F0               [24] 1885 	movx	@dptr,a
      0006B7 75 82 01         [24] 1886 	mov	dpl,#0x01
      0006BA C0 07            [24] 1887 	push	ar7
      0006BC C0 06            [24] 1888 	push	ar6
      0006BE 12 06 12         [24] 1889 	lcall	_read_lcd_address
      0006C1 AD 82            [24] 1890 	mov	r5,dpl
      0006C3 7C 00            [12] 1891 	mov	r4,#0x00
      0006C5 C0 05            [24] 1892 	push	ar5
      0006C7 C0 04            [24] 1893 	push	ar4
      0006C9 74 1F            [12] 1894 	mov	a,#___str_21
      0006CB C0 E0            [24] 1895 	push	acc
      0006CD 74 2C            [12] 1896 	mov	a,#(___str_21 >> 8)
      0006CF C0 E0            [24] 1897 	push	acc
      0006D1 74 80            [12] 1898 	mov	a,#0x80
      0006D3 C0 E0            [24] 1899 	push	acc
      0006D5 12 1F 35         [24] 1900 	lcall	_printf
      0006D8 E5 81            [12] 1901 	mov	a,sp
      0006DA 24 FB            [12] 1902 	add	a,#0xfb
      0006DC F5 81            [12] 1903 	mov	sp,a
      0006DE D0 06            [24] 1904 	pop	ar6
      0006E0 D0 07            [24] 1905 	pop	ar7
                                   1906 ;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
      0006E2 0E               [12] 1907 	inc	r6
      0006E3 BE 00 9A         [24] 1908 	cjne	r6,#0x00,00108$
      0006E6 0F               [12] 1909 	inc	r7
      0006E7 80 97            [24] 1910 	sjmp	00108$
      0006E9                       1911 00103$:
                                   1912 ;	lcd.c:447: printf("\n\r\n\rPrinting Hexdump of CGRAM\n\r");
      0006E9 74 27            [12] 1913 	mov	a,#___str_22
      0006EB C0 E0            [24] 1914 	push	acc
      0006ED 74 2C            [12] 1915 	mov	a,#(___str_22 >> 8)
      0006EF C0 E0            [24] 1916 	push	acc
      0006F1 74 80            [12] 1917 	mov	a,#0x80
      0006F3 C0 E0            [24] 1918 	push	acc
      0006F5 12 1F 35         [24] 1919 	lcall	_printf
      0006F8 15 81            [12] 1920 	dec	sp
      0006FA 15 81            [12] 1921 	dec	sp
      0006FC 15 81            [12] 1922 	dec	sp
                                   1923 ;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
      0006FE 7E 40            [12] 1924 	mov	r6,#0x40
      000700 7F 00            [12] 1925 	mov	r7,#0x00
      000702                       1926 00111$:
      000702 8E 04            [24] 1927 	mov	ar4,r6
      000704 8F 05            [24] 1928 	mov	ar5,r7
      000706 C3               [12] 1929 	clr	c
      000707 74 7F            [12] 1930 	mov	a,#0x7f
      000709 9C               [12] 1931 	subb	a,r4
      00070A E4               [12] 1932 	clr	a
      00070B 9D               [12] 1933 	subb	a,r5
      00070C 40 5D            [24] 1934 	jc	00106$
                                   1935 ;	lcd.c:451: if(k%16 == 0){                              // Print new line and address every 16 bytes
      00070E EC               [12] 1936 	mov	a,r4
      00070F 54 0F            [12] 1937 	anl	a,#0x0f
      000711 70 21            [24] 1938 	jnz	00105$
                                   1939 ;	lcd.c:452: printf("\n\r0x%02x: ",k);
      000713 C0 07            [24] 1940 	push	ar7
      000715 C0 06            [24] 1941 	push	ar6
      000717 C0 06            [24] 1942 	push	ar6
      000719 C0 07            [24] 1943 	push	ar7
      00071B 74 14            [12] 1944 	mov	a,#___str_20
      00071D C0 E0            [24] 1945 	push	acc
      00071F 74 2C            [12] 1946 	mov	a,#(___str_20 >> 8)
      000721 C0 E0            [24] 1947 	push	acc
      000723 74 80            [12] 1948 	mov	a,#0x80
      000725 C0 E0            [24] 1949 	push	acc
      000727 12 1F 35         [24] 1950 	lcall	_printf
      00072A E5 81            [12] 1951 	mov	a,sp
      00072C 24 FB            [12] 1952 	add	a,#0xfb
      00072E F5 81            [12] 1953 	mov	sp,a
      000730 D0 06            [24] 1954 	pop	ar6
      000732 D0 07            [24] 1955 	pop	ar7
      000734                       1956 00105$:
                                   1957 ;	lcd.c:454: printf("0x%02x ",read_lcd_address(0,k));    // Read and print the value at the current address
      000734 90 04 42         [24] 1958 	mov	dptr,#_read_lcd_address_PARM_2
      000737 EE               [12] 1959 	mov	a,r6
      000738 F0               [24] 1960 	movx	@dptr,a
      000739 75 82 00         [24] 1961 	mov	dpl,#0x00
      00073C C0 07            [24] 1962 	push	ar7
      00073E C0 06            [24] 1963 	push	ar6
      000740 12 06 12         [24] 1964 	lcall	_read_lcd_address
      000743 AD 82            [24] 1965 	mov	r5,dpl
      000745 7C 00            [12] 1966 	mov	r4,#0x00
      000747 C0 05            [24] 1967 	push	ar5
      000749 C0 04            [24] 1968 	push	ar4
      00074B 74 1F            [12] 1969 	mov	a,#___str_21
      00074D C0 E0            [24] 1970 	push	acc
      00074F 74 2C            [12] 1971 	mov	a,#(___str_21 >> 8)
      000751 C0 E0            [24] 1972 	push	acc
      000753 74 80            [12] 1973 	mov	a,#0x80
      000755 C0 E0            [24] 1974 	push	acc
      000757 12 1F 35         [24] 1975 	lcall	_printf
      00075A E5 81            [12] 1976 	mov	a,sp
      00075C 24 FB            [12] 1977 	add	a,#0xfb
      00075E F5 81            [12] 1978 	mov	sp,a
      000760 D0 06            [24] 1979 	pop	ar6
      000762 D0 07            [24] 1980 	pop	ar7
                                   1981 ;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
      000764 0E               [12] 1982 	inc	r6
      000765 BE 00 9A         [24] 1983 	cjne	r6,#0x00,00111$
      000768 0F               [12] 1984 	inc	r7
      000769 80 97            [24] 1985 	sjmp	00111$
      00076B                       1986 00106$:
                                   1987 ;	lcd.c:457: printf("\n\r");
      00076B 74 4C            [12] 1988 	mov	a,#___str_4
      00076D C0 E0            [24] 1989 	push	acc
      00076F 74 2A            [12] 1990 	mov	a,#(___str_4 >> 8)
      000771 C0 E0            [24] 1991 	push	acc
      000773 74 80            [12] 1992 	mov	a,#0x80
      000775 C0 E0            [24] 1993 	push	acc
      000777 12 1F 35         [24] 1994 	lcall	_printf
      00077A 15 81            [12] 1995 	dec	sp
      00077C 15 81            [12] 1996 	dec	sp
      00077E 15 81            [12] 1997 	dec	sp
                                   1998 ;	lcd.c:458: lcdgotoaddr(save_cursor_address);               // Restore the original cursor position
      000780 90 05 74         [24] 1999 	mov	dptr,#_save_cursor_address
      000783 E0               [24] 2000 	movx	a,@dptr
      000784 F5 82            [12] 2001 	mov	dpl,a
      000786 12 01 88         [24] 2002 	lcall	_lcdgotoaddr
                                   2003 ;	lcd.c:459: printf("\033[0m");                              // Reset terminal color to default
      000789 74 47            [12] 2004 	mov	a,#___str_23
      00078B C0 E0            [24] 2005 	push	acc
      00078D 74 2C            [12] 2006 	mov	a,#(___str_23 >> 8)
      00078F C0 E0            [24] 2007 	push	acc
      000791 74 80            [12] 2008 	mov	a,#0x80
      000793 C0 E0            [24] 2009 	push	acc
      000795 12 1F 35         [24] 2010 	lcall	_printf
      000798 15 81            [12] 2011 	dec	sp
      00079A 15 81            [12] 2012 	dec	sp
      00079C 15 81            [12] 2013 	dec	sp
      00079E A2 04            [12] 2014 	mov	c,_handler_lcd_hexdump_sloc0_1_0
      0007A0 92 AF            [24] 2015 	mov	ea,c
                                   2016 ;	lcd.c:461: }
      0007A2 22               [24] 2017 	ret
                                   2018 ;------------------------------------------------------------
                                   2019 ;Allocation info for local variables in function 'get_hex_value'
                                   2020 ;------------------------------------------------------------
                                   2021 ;digit1                    Allocated with name '_get_hex_value_digit1_65536_165'
                                   2022 ;digit2                    Allocated with name '_get_hex_value_digit2_65536_165'
                                   2023 ;hex_value                 Allocated with name '_get_hex_value_hex_value_65536_165'
                                   2024 ;------------------------------------------------------------
                                   2025 ;	lcd.c:463: unsigned char get_hex_value(void) {
                                   2026 ;	-----------------------------------------
                                   2027 ;	 function get_hex_value
                                   2028 ;	-----------------------------------------
      0007A3                       2029 _get_hex_value:
                                   2030 ;	lcd.c:465: printf("\n\rEnter a hexadecimal value between (00 to 1F) or (40 to 58): ");
      0007A3 74 4C            [12] 2031 	mov	a,#___str_24
      0007A5 C0 E0            [24] 2032 	push	acc
      0007A7 74 2C            [12] 2033 	mov	a,#(___str_24 >> 8)
      0007A9 C0 E0            [24] 2034 	push	acc
      0007AB 74 80            [12] 2035 	mov	a,#0x80
      0007AD C0 E0            [24] 2036 	push	acc
      0007AF 12 1F 35         [24] 2037 	lcall	_printf
      0007B2 15 81            [12] 2038 	dec	sp
      0007B4 15 81            [12] 2039 	dec	sp
      0007B6 15 81            [12] 2040 	dec	sp
                                   2041 ;	lcd.c:467: while (1) {                         //loop until a valid input is entered
      0007B8                       2042 00116$:
                                   2043 ;	lcd.c:468: digit1 = putchar(getchar());    //get first digit from input and display it
      0007B8 12 15 4A         [24] 2044 	lcall	_getchar
      0007BB 12 15 2B         [24] 2045 	lcall	_putchar
      0007BE AE 82            [24] 2046 	mov	r6,dpl
                                   2047 ;	lcd.c:469: digit2 = putchar(getchar());    //get second digit from input and display it
      0007C0 C0 06            [24] 2048 	push	ar6
      0007C2 12 15 4A         [24] 2049 	lcall	_getchar
      0007C5 12 15 2B         [24] 2050 	lcall	_putchar
      0007C8 AD 82            [24] 2051 	mov	r5,dpl
      0007CA AF 83            [24] 2052 	mov	r7,dph
      0007CC D0 06            [24] 2053 	pop	ar6
                                   2054 ;	lcd.c:472: if (digit1 >= '0' && digit1 <= '9' && digit2 >= '0' && digit2 <= '9') {
      0007CE BE 30 00         [24] 2055 	cjne	r6,#0x30,00160$
      0007D1                       2056 00160$:
      0007D1 40 24            [24] 2057 	jc	00110$
      0007D3 EE               [12] 2058 	mov	a,r6
      0007D4 24 C6            [12] 2059 	add	a,#0xff - 0x39
      0007D6 40 1F            [24] 2060 	jc	00110$
      0007D8 BD 30 00         [24] 2061 	cjne	r5,#0x30,00163$
      0007DB                       2062 00163$:
      0007DB 40 1A            [24] 2063 	jc	00110$
      0007DD ED               [12] 2064 	mov	a,r5
      0007DE 24 C6            [12] 2065 	add	a,#0xff - 0x39
      0007E0 40 15            [24] 2066 	jc	00110$
                                   2067 ;	lcd.c:473: hex_value = ((digit1 - '0') << 4) | (digit2 - '0'); //convert the digits to a hexadecimal value
      0007E2 8E 07            [24] 2068 	mov	ar7,r6
      0007E4 EF               [12] 2069 	mov	a,r7
      0007E5 24 D0            [12] 2070 	add	a,#0xd0
      0007E7 C4               [12] 2071 	swap	a
      0007E8 54 F0            [12] 2072 	anl	a,#0xf0
      0007EA FF               [12] 2073 	mov	r7,a
      0007EB 8D 04            [24] 2074 	mov	ar4,r5
      0007ED EC               [12] 2075 	mov	a,r4
      0007EE 24 D0            [12] 2076 	add	a,#0xd0
      0007F0 90 04 44         [24] 2077 	mov	dptr,#_get_hex_value_hex_value_65536_165
      0007F3 4F               [12] 2078 	orl	a,r7
      0007F4 F0               [24] 2079 	movx	@dptr,a
                                   2080 ;	lcd.c:474: break; //break the loop
      0007F5 80 5A            [24] 2081 	sjmp	00117$
      0007F7                       2082 00110$:
                                   2083 ;	lcd.c:477: else if ((digit1 == '0' || digit1 == '1' || digit1 == '4' || digit1 == '5') && (digit2 >= 'A' && digit2 <= 'F')) {
      0007F7 BE 30 02         [24] 2084 	cjne	r6,#0x30,00166$
      0007FA 80 0D            [24] 2085 	sjmp	00108$
      0007FC                       2086 00166$:
      0007FC BE 31 02         [24] 2087 	cjne	r6,#0x31,00167$
      0007FF 80 08            [24] 2088 	sjmp	00108$
      000801                       2089 00167$:
      000801 BE 34 02         [24] 2090 	cjne	r6,#0x34,00168$
      000804 80 03            [24] 2091 	sjmp	00108$
      000806                       2092 00168$:
      000806 BE 35 1B         [24] 2093 	cjne	r6,#0x35,00102$
      000809                       2094 00108$:
      000809 BD 41 00         [24] 2095 	cjne	r5,#0x41,00171$
      00080C                       2096 00171$:
      00080C 40 16            [24] 2097 	jc	00102$
      00080E ED               [12] 2098 	mov	a,r5
      00080F 24 B9            [12] 2099 	add	a,#0xff - 0x46
      000811 40 11            [24] 2100 	jc	00102$
                                   2101 ;	lcd.c:478: hex_value = ((digit1 - '0') << 4) | (digit2 - '7'); //convert the digits to a hexadecimal value
      000813 EE               [12] 2102 	mov	a,r6
      000814 24 D0            [12] 2103 	add	a,#0xd0
      000816 C4               [12] 2104 	swap	a
      000817 54 F0            [12] 2105 	anl	a,#0xf0
      000819 FE               [12] 2106 	mov	r6,a
      00081A ED               [12] 2107 	mov	a,r5
      00081B 24 C9            [12] 2108 	add	a,#0xc9
      00081D 90 04 44         [24] 2109 	mov	dptr,#_get_hex_value_hex_value_65536_165
      000820 4E               [12] 2110 	orl	a,r6
      000821 F0               [24] 2111 	movx	@dptr,a
                                   2112 ;	lcd.c:479: break; //break the loop
      000822 80 2D            [24] 2113 	sjmp	00117$
      000824                       2114 00102$:
                                   2115 ;	lcd.c:482: printf("\n\rInvalid input. ");      //display error message if input is invalid
      000824 74 8B            [12] 2116 	mov	a,#___str_25
      000826 C0 E0            [24] 2117 	push	acc
      000828 74 2C            [12] 2118 	mov	a,#(___str_25 >> 8)
      00082A C0 E0            [24] 2119 	push	acc
      00082C 74 80            [12] 2120 	mov	a,#0x80
      00082E C0 E0            [24] 2121 	push	acc
      000830 12 1F 35         [24] 2122 	lcall	_printf
      000833 15 81            [12] 2123 	dec	sp
      000835 15 81            [12] 2124 	dec	sp
      000837 15 81            [12] 2125 	dec	sp
                                   2126 ;	lcd.c:484: printf("Please enter a valid input: "); //prompt user to enter a valid input
      000839 74 9D            [12] 2127 	mov	a,#___str_26
      00083B C0 E0            [24] 2128 	push	acc
      00083D 74 2C            [12] 2129 	mov	a,#(___str_26 >> 8)
      00083F C0 E0            [24] 2130 	push	acc
      000841 74 80            [12] 2131 	mov	a,#0x80
      000843 C0 E0            [24] 2132 	push	acc
      000845 12 1F 35         [24] 2133 	lcall	_printf
      000848 15 81            [12] 2134 	dec	sp
      00084A 15 81            [12] 2135 	dec	sp
      00084C 15 81            [12] 2136 	dec	sp
      00084E 02 07 B8         [24] 2137 	ljmp	00116$
      000851                       2138 00117$:
                                   2139 ;	lcd.c:486: return hex_value;                           //return the hexadecimal value
      000851 90 04 44         [24] 2140 	mov	dptr,#_get_hex_value_hex_value_65536_165
      000854 E0               [24] 2141 	movx	a,@dptr
                                   2142 ;	lcd.c:487: }
      000855 F5 82            [12] 2143 	mov	dpl,a
      000857 22               [24] 2144 	ret
                                   2145 ;------------------------------------------------------------
                                   2146 ;Allocation info for local variables in function 'create_custom_char'
                                   2147 ;------------------------------------------------------------
                                   2148 ;sloc0                     Allocated with name '_create_custom_char_sloc0_1_0'
                                   2149 ;row_values                Allocated with name '_create_custom_char_PARM_2'
                                   2150 ;char_code                 Allocated with name '_create_custom_char_char_code_65536_170'
                                   2151 ;bit_6                     Allocated with name '_create_custom_char_bit_6_65536_171'
                                   2152 ;code_num                  Allocated with name '_create_custom_char_code_num_65536_171'
                                   2153 ;bit_3_shift               Allocated with name '_create_custom_char_bit_3_shift_65536_171'
                                   2154 ;char_num                  Allocated with name '_create_custom_char_char_num_65536_171'
                                   2155 ;i                         Allocated with name '_create_custom_char_i_65537_172'
                                   2156 ;------------------------------------------------------------
                                   2157 ;	lcd.c:488: void create_custom_char(unsigned char char_code, unsigned char row_values[]) {
                                   2158 ;	-----------------------------------------
                                   2159 ;	 function create_custom_char
                                   2160 ;	-----------------------------------------
      000858                       2161 _create_custom_char:
      000858 E5 82            [12] 2162 	mov	a,dpl
      00085A 90 04 48         [24] 2163 	mov	dptr,#_create_custom_char_char_code_65536_170
      00085D F0               [24] 2164 	movx	@dptr,a
                                   2165 ;	lcd.c:491: unsigned char code_num = char_code - '0';
      00085E E0               [24] 2166 	movx	a,@dptr
                                   2167 ;	lcd.c:492: unsigned char bit_3_shift = code_num << 3;
      00085F 24 D0            [12] 2168 	add	a,#0xd0
      000861 C4               [12] 2169 	swap	a
      000862 03               [12] 2170 	rr	a
      000863 54 F8            [12] 2171 	anl	a,#0xf8
      000865 FF               [12] 2172 	mov	r7,a
                                   2173 ;	lcd.c:493: unsigned char char_num = bit_6 | bit_3_shift;
      000866 43 07 40         [24] 2174 	orl	ar7,#0x40
                                   2175 ;	lcd.c:496: printf_tiny("\n\rThe custom character with code 0x%x has been created.", char_num);
      000869 8F 05            [24] 2176 	mov	ar5,r7
      00086B 7E 00            [12] 2177 	mov	r6,#0x00
      00086D C0 07            [24] 2178 	push	ar7
      00086F C0 06            [24] 2179 	push	ar6
      000871 C0 05            [24] 2180 	push	ar5
      000873 C0 05            [24] 2181 	push	ar5
      000875 C0 06            [24] 2182 	push	ar6
      000877 74 BA            [12] 2183 	mov	a,#___str_27
      000879 C0 E0            [24] 2184 	push	acc
      00087B 74 2C            [12] 2185 	mov	a,#(___str_27 >> 8)
      00087D C0 E0            [24] 2186 	push	acc
      00087F 12 18 80         [24] 2187 	lcall	_printf_tiny
      000882 E5 81            [12] 2188 	mov	a,sp
      000884 24 FC            [12] 2189 	add	a,#0xfc
      000886 F5 81            [12] 2190 	mov	sp,a
      000888 D0 05            [24] 2191 	pop	ar5
      00088A D0 06            [24] 2192 	pop	ar6
      00088C D0 07            [24] 2193 	pop	ar7
                                   2194 ;	lcd.c:500: while (i < 8) {
      00088E 90 04 45         [24] 2195 	mov	dptr,#_create_custom_char_PARM_2
      000891 E0               [24] 2196 	movx	a,@dptr
      000892 F5 08            [12] 2197 	mov	_create_custom_char_sloc0_1_0,a
      000894 A3               [24] 2198 	inc	dptr
      000895 E0               [24] 2199 	movx	a,@dptr
      000896 F5 09            [12] 2200 	mov	(_create_custom_char_sloc0_1_0 + 1),a
      000898 A3               [24] 2201 	inc	dptr
      000899 E0               [24] 2202 	movx	a,@dptr
      00089A F5 0A            [12] 2203 	mov	(_create_custom_char_sloc0_1_0 + 2),a
      00089C 78 00            [12] 2204 	mov	r0,#0x00
      00089E 79 00            [12] 2205 	mov	r1,#0x00
      0008A0                       2206 00101$:
      0008A0 C3               [12] 2207 	clr	c
      0008A1 E8               [12] 2208 	mov	a,r0
      0008A2 94 08            [12] 2209 	subb	a,#0x08
      0008A4 E9               [12] 2210 	mov	a,r1
      0008A5 64 80            [12] 2211 	xrl	a,#0x80
      0008A7 94 80            [12] 2212 	subb	a,#0x80
      0008A9 40 01            [24] 2213 	jc	00115$
      0008AB 22               [24] 2214 	ret
      0008AC                       2215 00115$:
                                   2216 ;	lcd.c:502: LCD_RS = 0;
                                   2217 ;	assignBit
      0008AC C2 92            [12] 2218 	clr	_P1_2
                                   2219 ;	lcd.c:503: LCD_RW = 0;
                                   2220 ;	assignBit
      0008AE C2 93            [12] 2221 	clr	_P1_3
                                   2222 ;	lcd.c:505: lcd_ptr = char_num + i;
      0008B0 88 04            [24] 2223 	mov	ar4,r0
      0008B2 8F 03            [24] 2224 	mov	ar3,r7
      0008B4 90 F0 00         [24] 2225 	mov	dptr,#_lcd_ptr
      0008B7 EC               [12] 2226 	mov	a,r4
      0008B8 2B               [12] 2227 	add	a,r3
      0008B9 F0               [24] 2228 	movx	@dptr,a
                                   2229 ;	lcd.c:507: printf_tiny("\n\rLCD_ptr = %x", char_num + i);
      0008BA E8               [12] 2230 	mov	a,r0
      0008BB 2D               [12] 2231 	add	a,r5
      0008BC FB               [12] 2232 	mov	r3,a
      0008BD E9               [12] 2233 	mov	a,r1
      0008BE 3E               [12] 2234 	addc	a,r6
      0008BF FC               [12] 2235 	mov	r4,a
      0008C0 C0 07            [24] 2236 	push	ar7
      0008C2 C0 06            [24] 2237 	push	ar6
      0008C4 C0 05            [24] 2238 	push	ar5
      0008C6 C0 01            [24] 2239 	push	ar1
      0008C8 C0 00            [24] 2240 	push	ar0
      0008CA C0 03            [24] 2241 	push	ar3
      0008CC C0 04            [24] 2242 	push	ar4
      0008CE 74 F2            [12] 2243 	mov	a,#___str_28
      0008D0 C0 E0            [24] 2244 	push	acc
      0008D2 74 2C            [12] 2245 	mov	a,#(___str_28 >> 8)
      0008D4 C0 E0            [24] 2246 	push	acc
      0008D6 12 18 80         [24] 2247 	lcall	_printf_tiny
      0008D9 E5 81            [12] 2248 	mov	a,sp
      0008DB 24 FC            [12] 2249 	add	a,#0xfc
      0008DD F5 81            [12] 2250 	mov	sp,a
                                   2251 ;	lcd.c:509: lcdbusywait();
      0008DF 12 00 E9         [24] 2252 	lcall	_lcdbusywait
      0008E2 D0 00            [24] 2253 	pop	ar0
      0008E4 D0 01            [24] 2254 	pop	ar1
                                   2255 ;	lcd.c:511: LCD_RS = 1;
                                   2256 ;	assignBit
      0008E6 D2 92            [12] 2257 	setb	_P1_2
                                   2258 ;	lcd.c:512: LCD_RW = 0;
                                   2259 ;	assignBit
      0008E8 C2 93            [12] 2260 	clr	_P1_3
                                   2261 ;	lcd.c:513: lcd_ptr = row_values[i];
      0008EA E8               [12] 2262 	mov	a,r0
      0008EB 25 08            [12] 2263 	add	a,_create_custom_char_sloc0_1_0
      0008ED FA               [12] 2264 	mov	r2,a
      0008EE E9               [12] 2265 	mov	a,r1
      0008EF 35 09            [12] 2266 	addc	a,(_create_custom_char_sloc0_1_0 + 1)
      0008F1 FB               [12] 2267 	mov	r3,a
      0008F2 AC 0A            [24] 2268 	mov	r4,(_create_custom_char_sloc0_1_0 + 2)
      0008F4 8A 82            [24] 2269 	mov	dpl,r2
      0008F6 8B 83            [24] 2270 	mov	dph,r3
      0008F8 8C F0            [24] 2271 	mov	b,r4
      0008FA 12 29 61         [24] 2272 	lcall	__gptrget
      0008FD 90 F0 00         [24] 2273 	mov	dptr,#_lcd_ptr
      000900 F0               [24] 2274 	movx	@dptr,a
                                   2275 ;	lcd.c:514: lcdbusywait();
      000901 C0 01            [24] 2276 	push	ar1
      000903 C0 00            [24] 2277 	push	ar0
      000905 12 00 E9         [24] 2278 	lcall	_lcdbusywait
      000908 D0 00            [24] 2279 	pop	ar0
      00090A D0 01            [24] 2280 	pop	ar1
      00090C D0 05            [24] 2281 	pop	ar5
      00090E D0 06            [24] 2282 	pop	ar6
      000910 D0 07            [24] 2283 	pop	ar7
                                   2284 ;	lcd.c:516: i++;
      000912 08               [12] 2285 	inc	r0
      000913 B8 00 01         [24] 2286 	cjne	r0,#0x00,00116$
      000916 09               [12] 2287 	inc	r1
      000917                       2288 00116$:
                                   2289 ;	lcd.c:518: }
      000917 02 08 A0         [24] 2290 	ljmp	00101$
                                   2291 ;------------------------------------------------------------
                                   2292 ;Allocation info for local variables in function 'handler_custom_char'
                                   2293 ;------------------------------------------------------------
                                   2294 ;save_address              Allocated with name '_handler_custom_char_save_address_65537_176'
                                   2295 ;char_code                 Allocated with name '_handler_custom_char_char_code_65538_177'
                                   2296 ;row_values                Allocated with name '_handler_custom_char_row_values_65539_178'
                                   2297 ;j                         Allocated with name '_handler_custom_char_j_65539_178'
                                   2298 ;------------------------------------------------------------
                                   2299 ;	lcd.c:520: void handler_custom_char(void) {
                                   2300 ;	-----------------------------------------
                                   2301 ;	 function handler_custom_char
                                   2302 ;	-----------------------------------------
      00091A                       2303 _handler_custom_char:
                                   2304 ;	lcd.c:521: printf("\033[0;33m"); // Set text color to yellow
      00091A 74 01            [12] 2305 	mov	a,#___str_29
      00091C C0 E0            [24] 2306 	push	acc
      00091E 74 2D            [12] 2307 	mov	a,#(___str_29 >> 8)
      000920 C0 E0            [24] 2308 	push	acc
      000922 74 80            [12] 2309 	mov	a,#0x80
      000924 C0 E0            [24] 2310 	push	acc
      000926 12 1F 35         [24] 2311 	lcall	_printf
      000929 15 81            [12] 2312 	dec	sp
      00092B 15 81            [12] 2313 	dec	sp
      00092D 15 81            [12] 2314 	dec	sp
                                   2315 ;	lcd.c:524: unsigned int save_address = get_cursor_address();
      00092F 12 01 7B         [24] 2316 	lcall	_get_cursor_address
      000932 AF 82            [24] 2317 	mov	r7,dpl
                                   2318 ;	lcd.c:526: printf_tiny("Please enter the code for the custom character: ");
      000934 C0 07            [24] 2319 	push	ar7
      000936 74 09            [12] 2320 	mov	a,#___str_30
      000938 C0 E0            [24] 2321 	push	acc
      00093A 74 2D            [12] 2322 	mov	a,#(___str_30 >> 8)
      00093C C0 E0            [24] 2323 	push	acc
      00093E 12 18 80         [24] 2324 	lcall	_printf_tiny
      000941 15 81            [12] 2325 	dec	sp
      000943 15 81            [12] 2326 	dec	sp
                                   2327 ;	lcd.c:528: unsigned char char_code = getchar();
      000945 12 15 4A         [24] 2328 	lcall	_getchar
      000948 AD 82            [24] 2329 	mov	r5,dpl
                                   2330 ;	lcd.c:531: printf_tiny("%c\n\r", char_code);
      00094A 8D 04            [24] 2331 	mov	ar4,r5
      00094C 7E 00            [12] 2332 	mov	r6,#0x00
      00094E C0 05            [24] 2333 	push	ar5
      000950 C0 04            [24] 2334 	push	ar4
      000952 C0 06            [24] 2335 	push	ar6
      000954 74 3A            [12] 2336 	mov	a,#___str_31
      000956 C0 E0            [24] 2337 	push	acc
      000958 74 2D            [12] 2338 	mov	a,#(___str_31 >> 8)
      00095A C0 E0            [24] 2339 	push	acc
      00095C 12 18 80         [24] 2340 	lcall	_printf_tiny
      00095F E5 81            [12] 2341 	mov	a,sp
      000961 24 FC            [12] 2342 	add	a,#0xfc
      000963 F5 81            [12] 2343 	mov	sp,a
      000965 D0 05            [24] 2344 	pop	ar5
      000967 D0 07            [24] 2345 	pop	ar7
                                   2346 ;	lcd.c:537: while (j < 8) { // Loop through each row of the custom character and get its value from the user
      000969 7E 00            [12] 2347 	mov	r6,#0x00
      00096B                       2348 00101$:
      00096B BE 08 00         [24] 2349 	cjne	r6,#0x08,00115$
      00096E                       2350 00115$:
      00096E 50 4B            [24] 2351 	jnc	00103$
                                   2352 ;	lcd.c:538: printf_tiny("\n\rPlease enter the value for row %d: ", j);
      000970 8E 03            [24] 2353 	mov	ar3,r6
      000972 7C 00            [12] 2354 	mov	r4,#0x00
      000974 C0 07            [24] 2355 	push	ar7
      000976 C0 06            [24] 2356 	push	ar6
      000978 C0 05            [24] 2357 	push	ar5
      00097A C0 03            [24] 2358 	push	ar3
      00097C C0 04            [24] 2359 	push	ar4
      00097E 74 3F            [12] 2360 	mov	a,#___str_32
      000980 C0 E0            [24] 2361 	push	acc
      000982 74 2D            [12] 2362 	mov	a,#(___str_32 >> 8)
      000984 C0 E0            [24] 2363 	push	acc
      000986 12 18 80         [24] 2364 	lcall	_printf_tiny
      000989 E5 81            [12] 2365 	mov	a,sp
      00098B 24 FC            [12] 2366 	add	a,#0xfc
      00098D F5 81            [12] 2367 	mov	sp,a
      00098F D0 05            [24] 2368 	pop	ar5
      000991 D0 06            [24] 2369 	pop	ar6
                                   2370 ;	lcd.c:539: row_values[j] = get_hex_value();
      000993 EE               [12] 2371 	mov	a,r6
      000994 24 49            [12] 2372 	add	a,#_handler_custom_char_row_values_65539_178
      000996 FB               [12] 2373 	mov	r3,a
      000997 E4               [12] 2374 	clr	a
      000998 34 04            [12] 2375 	addc	a,#(_handler_custom_char_row_values_65539_178 >> 8)
      00099A FC               [12] 2376 	mov	r4,a
      00099B C0 06            [24] 2377 	push	ar6
      00099D C0 05            [24] 2378 	push	ar5
      00099F C0 04            [24] 2379 	push	ar4
      0009A1 C0 03            [24] 2380 	push	ar3
      0009A3 12 07 A3         [24] 2381 	lcall	_get_hex_value
      0009A6 AA 82            [24] 2382 	mov	r2,dpl
      0009A8 D0 03            [24] 2383 	pop	ar3
      0009AA D0 04            [24] 2384 	pop	ar4
      0009AC D0 05            [24] 2385 	pop	ar5
      0009AE D0 06            [24] 2386 	pop	ar6
      0009B0 D0 07            [24] 2387 	pop	ar7
      0009B2 8B 82            [24] 2388 	mov	dpl,r3
      0009B4 8C 83            [24] 2389 	mov	dph,r4
      0009B6 EA               [12] 2390 	mov	a,r2
      0009B7 F0               [24] 2391 	movx	@dptr,a
                                   2392 ;	lcd.c:540: j++;
      0009B8 0E               [12] 2393 	inc	r6
      0009B9 80 B0            [24] 2394 	sjmp	00101$
      0009BB                       2395 00103$:
                                   2396 ;	lcd.c:555: }
      0009BB D2 05            [12] 2397 	setb	_handler_custom_char_sloc0_1_0
      0009BD 10 AF 02         [24] 2398 	jbc	ea,00117$
      0009C0 C2 05            [12] 2399 	clr	_handler_custom_char_sloc0_1_0
      0009C2                       2400 00117$:
                                   2401 ;	lcd.c:545: create_custom_char(char_code, row_values);
      0009C2 90 04 45         [24] 2402 	mov	dptr,#_create_custom_char_PARM_2
      0009C5 74 49            [12] 2403 	mov	a,#_handler_custom_char_row_values_65539_178
      0009C7 F0               [24] 2404 	movx	@dptr,a
      0009C8 74 04            [12] 2405 	mov	a,#(_handler_custom_char_row_values_65539_178 >> 8)
      0009CA A3               [24] 2406 	inc	dptr
      0009CB F0               [24] 2407 	movx	@dptr,a
      0009CC E4               [12] 2408 	clr	a
      0009CD A3               [24] 2409 	inc	dptr
      0009CE F0               [24] 2410 	movx	@dptr,a
      0009CF 8D 82            [24] 2411 	mov	dpl,r5
      0009D1 C0 07            [24] 2412 	push	ar7
      0009D3 C0 05            [24] 2413 	push	ar5
      0009D5 12 08 58         [24] 2414 	lcall	_create_custom_char
                                   2415 ;	lcd.c:548: handler_lcdgotoxy();
      0009D8 12 04 62         [24] 2416 	lcall	_handler_lcdgotoxy
      0009DB D0 05            [24] 2417 	pop	ar5
                                   2418 ;	lcd.c:551: lcdputch(char_code - '0');
      0009DD ED               [12] 2419 	mov	a,r5
      0009DE 24 D0            [12] 2420 	add	a,#0xd0
      0009E0 F5 82            [12] 2421 	mov	dpl,a
      0009E2 12 02 5E         [24] 2422 	lcall	_lcdputch
      0009E5 D0 07            [24] 2423 	pop	ar7
                                   2424 ;	lcd.c:554: lcdgotoaddr(save_address);
      0009E7 8F 82            [24] 2425 	mov	dpl,r7
      0009E9 12 01 88         [24] 2426 	lcall	_lcdgotoaddr
      0009EC A2 05            [12] 2427 	mov	c,_handler_custom_char_sloc0_1_0
      0009EE 92 AF            [24] 2428 	mov	ea,c
                                   2429 ;	lcd.c:558: printf("\033[0m");
      0009F0 74 47            [12] 2430 	mov	a,#___str_23
      0009F2 C0 E0            [24] 2431 	push	acc
      0009F4 74 2C            [12] 2432 	mov	a,#(___str_23 >> 8)
      0009F6 C0 E0            [24] 2433 	push	acc
      0009F8 74 80            [12] 2434 	mov	a,#0x80
      0009FA C0 E0            [24] 2435 	push	acc
      0009FC 12 1F 35         [24] 2436 	lcall	_printf
      0009FF 15 81            [12] 2437 	dec	sp
      000A01 15 81            [12] 2438 	dec	sp
      000A03 15 81            [12] 2439 	dec	sp
                                   2440 ;	lcd.c:559: }
      000A05 22               [24] 2441 	ret
                                   2442 ;------------------------------------------------------------
                                   2443 ;Allocation info for local variables in function 'handle_cu_custom_char'
                                   2444 ;------------------------------------------------------------
                                   2445 ;ccode1                    Allocated with name '_handle_cu_custom_char_ccode1_65537_183'
                                   2446 ;row_vals1                 Allocated with name '_handle_cu_custom_char_row_vals1_65537_183'
                                   2447 ;ccode2                    Allocated with name '_handle_cu_custom_char_ccode2_65538_185'
                                   2448 ;row_vals2                 Allocated with name '_handle_cu_custom_char_row_vals2_65538_185'
                                   2449 ;ccode3                    Allocated with name '_handle_cu_custom_char_ccode3_65539_187'
                                   2450 ;row_vals3                 Allocated with name '_handle_cu_custom_char_row_vals3_65539_187'
                                   2451 ;ccode4                    Allocated with name '_handle_cu_custom_char_ccode4_65540_189'
                                   2452 ;row_vals4                 Allocated with name '_handle_cu_custom_char_row_vals4_65540_189'
                                   2453 ;------------------------------------------------------------
                                   2454 ;	lcd.c:561: void handle_cu_custom_char(void)
                                   2455 ;	-----------------------------------------
                                   2456 ;	 function handle_cu_custom_char
                                   2457 ;	-----------------------------------------
      000A06                       2458 _handle_cu_custom_char:
                                   2459 ;	lcd.c:563: printf("\033[0;33m");                           // Set text color to yellow
      000A06 74 01            [12] 2460 	mov	a,#___str_29
      000A08 C0 E0            [24] 2461 	push	acc
      000A0A 74 2D            [12] 2462 	mov	a,#(___str_29 >> 8)
      000A0C C0 E0            [24] 2463 	push	acc
      000A0E 74 80            [12] 2464 	mov	a,#0x80
      000A10 C0 E0            [24] 2465 	push	acc
      000A12 12 1F 35         [24] 2466 	lcall	_printf
      000A15 15 81            [12] 2467 	dec	sp
      000A17 15 81            [12] 2468 	dec	sp
      000A19 15 81            [12] 2469 	dec	sp
                                   2470 ;	lcd.c:564: save_cursor_address = get_cursor_address();     // Get current cursor address and save it in a variable
      000A1B 12 01 7B         [24] 2471 	lcall	_get_cursor_address
      000A1E E5 82            [12] 2472 	mov	a,dpl
      000A20 90 05 74         [24] 2473 	mov	dptr,#_save_cursor_address
      000A23 F0               [24] 2474 	movx	@dptr,a
                                   2475 ;	lcd.c:568: unsigned char row_vals1[8] = {0x00, 0x00, 0x0F, 0x08, 0x08, 0x09, 0x09, 0x09};
      000A24 90 04 51         [24] 2476 	mov	dptr,#_handle_cu_custom_char_row_vals1_65537_183
      000A27 E4               [12] 2477 	clr	a
      000A28 F0               [24] 2478 	movx	@dptr,a
      000A29 90 04 52         [24] 2479 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0001)
      000A2C F0               [24] 2480 	movx	@dptr,a
      000A2D 90 04 53         [24] 2481 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0002)
      000A30 74 0F            [12] 2482 	mov	a,#0x0f
      000A32 F0               [24] 2483 	movx	@dptr,a
      000A33 90 04 54         [24] 2484 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0003)
      000A36 74 08            [12] 2485 	mov	a,#0x08
      000A38 F0               [24] 2486 	movx	@dptr,a
      000A39 90 04 55         [24] 2487 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0004)
      000A3C F0               [24] 2488 	movx	@dptr,a
      000A3D 90 04 56         [24] 2489 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0005)
      000A40 04               [12] 2490 	inc	a
      000A41 F0               [24] 2491 	movx	@dptr,a
      000A42 90 04 57         [24] 2492 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0006)
      000A45 F0               [24] 2493 	movx	@dptr,a
      000A46 90 04 58         [24] 2494 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0007)
      000A49 F0               [24] 2495 	movx	@dptr,a
                                   2496 ;	lcd.c:573: }
      000A4A D2 06            [12] 2497 	setb	_handle_cu_custom_char_sloc0_1_0
      000A4C 10 AF 02         [24] 2498 	jbc	ea,00103$
      000A4F C2 06            [12] 2499 	clr	_handle_cu_custom_char_sloc0_1_0
      000A51                       2500 00103$:
                                   2501 ;	lcd.c:570: create_custom_char(ccode1, row_vals1);      // Call function to create custom character on the LCD
      000A51 90 04 45         [24] 2502 	mov	dptr,#_create_custom_char_PARM_2
      000A54 74 51            [12] 2503 	mov	a,#_handle_cu_custom_char_row_vals1_65537_183
      000A56 F0               [24] 2504 	movx	@dptr,a
      000A57 74 04            [12] 2505 	mov	a,#(_handle_cu_custom_char_row_vals1_65537_183 >> 8)
      000A59 A3               [24] 2506 	inc	dptr
      000A5A F0               [24] 2507 	movx	@dptr,a
      000A5B E4               [12] 2508 	clr	a
      000A5C A3               [24] 2509 	inc	dptr
      000A5D F0               [24] 2510 	movx	@dptr,a
      000A5E 75 82 31         [24] 2511 	mov	dpl,#0x31
      000A61 12 08 58         [24] 2512 	lcall	_create_custom_char
                                   2513 ;	lcd.c:571: lcdgotoxy('1', '4');                        // Move cursor to position to display custom character 1
      000A64 90 04 06         [24] 2514 	mov	dptr,#_lcdgotoxy_PARM_2
      000A67 74 34            [12] 2515 	mov	a,#0x34
      000A69 F0               [24] 2516 	movx	@dptr,a
      000A6A 75 82 31         [24] 2517 	mov	dpl,#0x31
      000A6D 12 01 A5         [24] 2518 	lcall	_lcdgotoxy
                                   2519 ;	lcd.c:572: lcdputch(ccode1 - '0');                     // Display custom character 1 on the LCD screen
      000A70 75 82 01         [24] 2520 	mov	dpl,#0x01
      000A73 12 02 5E         [24] 2521 	lcall	_lcdputch
      000A76 A2 06            [12] 2522 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000A78 92 AF            [24] 2523 	mov	ea,c
                                   2524 ;	lcd.c:577: unsigned char row_vals2[8] = {0x00, 0x00, 0x18, 0x00, 0x00, 0x02, 0x02, 0x02};
      000A7A 90 04 59         [24] 2525 	mov	dptr,#_handle_cu_custom_char_row_vals2_65538_185
      000A7D E4               [12] 2526 	clr	a
      000A7E F0               [24] 2527 	movx	@dptr,a
      000A7F 90 04 5A         [24] 2528 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0001)
      000A82 F0               [24] 2529 	movx	@dptr,a
      000A83 90 04 5B         [24] 2530 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0002)
      000A86 74 18            [12] 2531 	mov	a,#0x18
      000A88 F0               [24] 2532 	movx	@dptr,a
      000A89 90 04 5C         [24] 2533 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0003)
      000A8C E4               [12] 2534 	clr	a
      000A8D F0               [24] 2535 	movx	@dptr,a
      000A8E 90 04 5D         [24] 2536 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0004)
      000A91 F0               [24] 2537 	movx	@dptr,a
      000A92 90 04 5E         [24] 2538 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0005)
      000A95 74 02            [12] 2539 	mov	a,#0x02
      000A97 F0               [24] 2540 	movx	@dptr,a
      000A98 90 04 5F         [24] 2541 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0006)
      000A9B F0               [24] 2542 	movx	@dptr,a
      000A9C 90 04 60         [24] 2543 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0007)
      000A9F F0               [24] 2544 	movx	@dptr,a
                                   2545 ;	lcd.c:583: }
      000AA0 D2 06            [12] 2546 	setb	_handle_cu_custom_char_sloc0_1_0
      000AA2 10 AF 02         [24] 2547 	jbc	ea,00104$
      000AA5 C2 06            [12] 2548 	clr	_handle_cu_custom_char_sloc0_1_0
      000AA7                       2549 00104$:
                                   2550 ;	lcd.c:579: create_custom_char(ccode2, row_vals2);      // Call function to create custom character on the LCD
      000AA7 90 04 45         [24] 2551 	mov	dptr,#_create_custom_char_PARM_2
      000AAA 74 59            [12] 2552 	mov	a,#_handle_cu_custom_char_row_vals2_65538_185
      000AAC F0               [24] 2553 	movx	@dptr,a
      000AAD 74 04            [12] 2554 	mov	a,#(_handle_cu_custom_char_row_vals2_65538_185 >> 8)
      000AAF A3               [24] 2555 	inc	dptr
      000AB0 F0               [24] 2556 	movx	@dptr,a
      000AB1 E4               [12] 2557 	clr	a
      000AB2 A3               [24] 2558 	inc	dptr
      000AB3 F0               [24] 2559 	movx	@dptr,a
      000AB4 75 82 32         [24] 2560 	mov	dpl,#0x32
      000AB7 12 08 58         [24] 2561 	lcall	_create_custom_char
                                   2562 ;	lcd.c:580: lcdgotoxy('1', '5');                        // Move cursor to position to display custom character 2
      000ABA 90 04 06         [24] 2563 	mov	dptr,#_lcdgotoxy_PARM_2
      000ABD 74 35            [12] 2564 	mov	a,#0x35
      000ABF F0               [24] 2565 	movx	@dptr,a
      000AC0 75 82 31         [24] 2566 	mov	dpl,#0x31
      000AC3 12 01 A5         [24] 2567 	lcall	_lcdgotoxy
                                   2568 ;	lcd.c:581: lcdputch(ccode2 - '0');                     // Display custom character 2 on the LCD screen
      000AC6 75 82 02         [24] 2569 	mov	dpl,#0x02
      000AC9 12 02 5E         [24] 2570 	lcall	_lcdputch
                                   2571 ;	lcd.c:582: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000ACC 90 05 74         [24] 2572 	mov	dptr,#_save_cursor_address
      000ACF E0               [24] 2573 	movx	a,@dptr
      000AD0 F5 82            [12] 2574 	mov	dpl,a
      000AD2 12 01 88         [24] 2575 	lcall	_lcdgotoaddr
      000AD5 A2 06            [12] 2576 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000AD7 92 AF            [24] 2577 	mov	ea,c
                                   2578 ;	lcd.c:587: unsigned char row_vals3[8] = {0x09, 0x09, 0x09, 0x0F, 0x01, 0x01, 0x00, 0x00};
      000AD9 90 04 61         [24] 2579 	mov	dptr,#_handle_cu_custom_char_row_vals3_65539_187
      000ADC 74 09            [12] 2580 	mov	a,#0x09
      000ADE F0               [24] 2581 	movx	@dptr,a
      000ADF 90 04 62         [24] 2582 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0001)
      000AE2 F0               [24] 2583 	movx	@dptr,a
      000AE3 90 04 63         [24] 2584 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0002)
      000AE6 F0               [24] 2585 	movx	@dptr,a
      000AE7 90 04 64         [24] 2586 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0003)
      000AEA 74 0F            [12] 2587 	mov	a,#0x0f
      000AEC F0               [24] 2588 	movx	@dptr,a
      000AED 90 04 65         [24] 2589 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0004)
      000AF0 74 01            [12] 2590 	mov	a,#0x01
      000AF2 F0               [24] 2591 	movx	@dptr,a
      000AF3 90 04 66         [24] 2592 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0005)
      000AF6 F0               [24] 2593 	movx	@dptr,a
      000AF7 90 04 67         [24] 2594 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0006)
      000AFA E4               [12] 2595 	clr	a
      000AFB F0               [24] 2596 	movx	@dptr,a
      000AFC 90 04 68         [24] 2597 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0007)
      000AFF F0               [24] 2598 	movx	@dptr,a
                                   2599 ;	lcd.c:593: }
      000B00 D2 06            [12] 2600 	setb	_handle_cu_custom_char_sloc0_1_0
      000B02 10 AF 02         [24] 2601 	jbc	ea,00105$
      000B05 C2 06            [12] 2602 	clr	_handle_cu_custom_char_sloc0_1_0
      000B07                       2603 00105$:
                                   2604 ;	lcd.c:589: create_custom_char(ccode3, row_vals3);      // Call function to create custom character on the LCD
      000B07 90 04 45         [24] 2605 	mov	dptr,#_create_custom_char_PARM_2
      000B0A 74 61            [12] 2606 	mov	a,#_handle_cu_custom_char_row_vals3_65539_187
      000B0C F0               [24] 2607 	movx	@dptr,a
      000B0D 74 04            [12] 2608 	mov	a,#(_handle_cu_custom_char_row_vals3_65539_187 >> 8)
      000B0F A3               [24] 2609 	inc	dptr
      000B10 F0               [24] 2610 	movx	@dptr,a
      000B11 E4               [12] 2611 	clr	a
      000B12 A3               [24] 2612 	inc	dptr
      000B13 F0               [24] 2613 	movx	@dptr,a
      000B14 75 82 33         [24] 2614 	mov	dpl,#0x33
      000B17 12 08 58         [24] 2615 	lcall	_create_custom_char
                                   2616 ;	lcd.c:590: lcdgotoxy('2', '4');                        // Move cursor to position to display custom character 3
      000B1A 90 04 06         [24] 2617 	mov	dptr,#_lcdgotoxy_PARM_2
      000B1D 74 34            [12] 2618 	mov	a,#0x34
      000B1F F0               [24] 2619 	movx	@dptr,a
      000B20 75 82 32         [24] 2620 	mov	dpl,#0x32
      000B23 12 01 A5         [24] 2621 	lcall	_lcdgotoxy
                                   2622 ;	lcd.c:591: lcdputch(ccode3 - '0');                     // Display custom character 3 on the LCD screen
      000B26 75 82 03         [24] 2623 	mov	dpl,#0x03
      000B29 12 02 5E         [24] 2624 	lcall	_lcdputch
                                   2625 ;	lcd.c:592: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000B2C 90 05 74         [24] 2626 	mov	dptr,#_save_cursor_address
      000B2F E0               [24] 2627 	movx	a,@dptr
      000B30 F5 82            [12] 2628 	mov	dpl,a
      000B32 12 01 88         [24] 2629 	lcall	_lcdgotoaddr
      000B35 A2 06            [12] 2630 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000B37 92 AF            [24] 2631 	mov	ea,c
                                   2632 ;	lcd.c:597: unsigned char row_vals4[8] = {0x02, 0x02, 0x02, 0x1A, 0x02, 0x1E, 0x00, 0x00};
      000B39 90 04 69         [24] 2633 	mov	dptr,#_handle_cu_custom_char_row_vals4_65540_189
      000B3C 74 02            [12] 2634 	mov	a,#0x02
      000B3E F0               [24] 2635 	movx	@dptr,a
      000B3F 90 04 6A         [24] 2636 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0001)
      000B42 F0               [24] 2637 	movx	@dptr,a
      000B43 90 04 6B         [24] 2638 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0002)
      000B46 F0               [24] 2639 	movx	@dptr,a
      000B47 90 04 6C         [24] 2640 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0003)
      000B4A 74 1A            [12] 2641 	mov	a,#0x1a
      000B4C F0               [24] 2642 	movx	@dptr,a
      000B4D 90 04 6D         [24] 2643 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0004)
      000B50 74 02            [12] 2644 	mov	a,#0x02
      000B52 F0               [24] 2645 	movx	@dptr,a
      000B53 90 04 6E         [24] 2646 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0005)
      000B56 74 1E            [12] 2647 	mov	a,#0x1e
      000B58 F0               [24] 2648 	movx	@dptr,a
      000B59 90 04 6F         [24] 2649 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0006)
      000B5C E4               [12] 2650 	clr	a
      000B5D F0               [24] 2651 	movx	@dptr,a
      000B5E 90 04 70         [24] 2652 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0007)
      000B61 F0               [24] 2653 	movx	@dptr,a
                                   2654 ;	lcd.c:603: }
      000B62 D2 06            [12] 2655 	setb	_handle_cu_custom_char_sloc0_1_0
      000B64 10 AF 02         [24] 2656 	jbc	ea,00106$
      000B67 C2 06            [12] 2657 	clr	_handle_cu_custom_char_sloc0_1_0
      000B69                       2658 00106$:
                                   2659 ;	lcd.c:599: create_custom_char(ccode4, row_vals4);      // Call function to create custom character on the LCD
      000B69 90 04 45         [24] 2660 	mov	dptr,#_create_custom_char_PARM_2
      000B6C 74 69            [12] 2661 	mov	a,#_handle_cu_custom_char_row_vals4_65540_189
      000B6E F0               [24] 2662 	movx	@dptr,a
      000B6F 74 04            [12] 2663 	mov	a,#(_handle_cu_custom_char_row_vals4_65540_189 >> 8)
      000B71 A3               [24] 2664 	inc	dptr
      000B72 F0               [24] 2665 	movx	@dptr,a
      000B73 E4               [12] 2666 	clr	a
      000B74 A3               [24] 2667 	inc	dptr
      000B75 F0               [24] 2668 	movx	@dptr,a
      000B76 75 82 34         [24] 2669 	mov	dpl,#0x34
      000B79 12 08 58         [24] 2670 	lcall	_create_custom_char
                                   2671 ;	lcd.c:600: lcdgotoxy('2', '5');                        // Move cursor to position to display custom character 4
      000B7C 90 04 06         [24] 2672 	mov	dptr,#_lcdgotoxy_PARM_2
      000B7F 74 35            [12] 2673 	mov	a,#0x35
      000B81 F0               [24] 2674 	movx	@dptr,a
      000B82 75 82 32         [24] 2675 	mov	dpl,#0x32
      000B85 12 01 A5         [24] 2676 	lcall	_lcdgotoxy
                                   2677 ;	lcd.c:601: lcdputch(ccode4 - '0');                     // Display custom character 4 on the LCD screen
      000B88 75 82 04         [24] 2678 	mov	dpl,#0x04
      000B8B 12 02 5E         [24] 2679 	lcall	_lcdputch
                                   2680 ;	lcd.c:602: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000B8E 90 05 74         [24] 2681 	mov	dptr,#_save_cursor_address
      000B91 E0               [24] 2682 	movx	a,@dptr
      000B92 F5 82            [12] 2683 	mov	dpl,a
      000B94 12 01 88         [24] 2684 	lcall	_lcdgotoaddr
      000B97 A2 06            [12] 2685 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000B99 92 AF            [24] 2686 	mov	ea,c
                                   2687 ;	lcd.c:605: printf("\033[0m");                              // Reset text color to default
      000B9B 74 47            [12] 2688 	mov	a,#___str_23
      000B9D C0 E0            [24] 2689 	push	acc
      000B9F 74 2C            [12] 2690 	mov	a,#(___str_23 >> 8)
      000BA1 C0 E0            [24] 2691 	push	acc
      000BA3 74 80            [12] 2692 	mov	a,#0x80
      000BA5 C0 E0            [24] 2693 	push	acc
      000BA7 12 1F 35         [24] 2694 	lcall	_printf
      000BAA 15 81            [12] 2695 	dec	sp
      000BAC 15 81            [12] 2696 	dec	sp
      000BAE 15 81            [12] 2697 	dec	sp
                                   2698 ;	lcd.c:606: }
      000BB0 22               [24] 2699 	ret
                                   2700 ;------------------------------------------------------------
                                   2701 ;Allocation info for local variables in function 'handle_sadsmiley_custom_char'
                                   2702 ;------------------------------------------------------------
                                   2703 ;ccode1                    Allocated with name '_handle_sadsmiley_custom_char_ccode1_65537_193'
                                   2704 ;row_vals1                 Allocated with name '_handle_sadsmiley_custom_char_row_vals1_65537_193'
                                   2705 ;ccode2                    Allocated with name '_handle_sadsmiley_custom_char_ccode2_65538_195'
                                   2706 ;row_vals2                 Allocated with name '_handle_sadsmiley_custom_char_row_vals2_65538_195'
                                   2707 ;ccode3                    Allocated with name '_handle_sadsmiley_custom_char_ccode3_65539_197'
                                   2708 ;row_vals3                 Allocated with name '_handle_sadsmiley_custom_char_row_vals3_65539_197'
                                   2709 ;ccode4                    Allocated with name '_handle_sadsmiley_custom_char_ccode4_65540_199'
                                   2710 ;row_vals4                 Allocated with name '_handle_sadsmiley_custom_char_row_vals4_65540_199'
                                   2711 ;------------------------------------------------------------
                                   2712 ;	lcd.c:611: void handle_sadsmiley_custom_char(void)
                                   2713 ;	-----------------------------------------
                                   2714 ;	 function handle_sadsmiley_custom_char
                                   2715 ;	-----------------------------------------
      000BB1                       2716 _handle_sadsmiley_custom_char:
                                   2717 ;	lcd.c:614: printf("\033[0;33m");
      000BB1 74 01            [12] 2718 	mov	a,#___str_29
      000BB3 C0 E0            [24] 2719 	push	acc
      000BB5 74 2D            [12] 2720 	mov	a,#(___str_29 >> 8)
      000BB7 C0 E0            [24] 2721 	push	acc
      000BB9 74 80            [12] 2722 	mov	a,#0x80
      000BBB C0 E0            [24] 2723 	push	acc
      000BBD 12 1F 35         [24] 2724 	lcall	_printf
      000BC0 15 81            [12] 2725 	dec	sp
      000BC2 15 81            [12] 2726 	dec	sp
      000BC4 15 81            [12] 2727 	dec	sp
                                   2728 ;	lcd.c:617: save_cursor_address = get_cursor_address();
      000BC6 12 01 7B         [24] 2729 	lcall	_get_cursor_address
      000BC9 E5 82            [12] 2730 	mov	a,dpl
      000BCB 90 05 74         [24] 2731 	mov	dptr,#_save_cursor_address
      000BCE F0               [24] 2732 	movx	@dptr,a
                                   2733 ;	lcd.c:621: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
      000BCF 90 04 71         [24] 2734 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals1_65537_193
      000BD2 74 1F            [12] 2735 	mov	a,#0x1f
      000BD4 F0               [24] 2736 	movx	@dptr,a
      000BD5 90 04 72         [24] 2737 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0001)
      000BD8 F0               [24] 2738 	movx	@dptr,a
      000BD9 90 04 73         [24] 2739 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0002)
      000BDC 74 11            [12] 2740 	mov	a,#0x11
      000BDE F0               [24] 2741 	movx	@dptr,a
      000BDF 90 04 74         [24] 2742 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0003)
      000BE2 74 15            [12] 2743 	mov	a,#0x15
      000BE4 F0               [24] 2744 	movx	@dptr,a
      000BE5 90 04 75         [24] 2745 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0004)
      000BE8 74 11            [12] 2746 	mov	a,#0x11
      000BEA F0               [24] 2747 	movx	@dptr,a
      000BEB 90 04 76         [24] 2748 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0005)
      000BEE 74 1F            [12] 2749 	mov	a,#0x1f
      000BF0 F0               [24] 2750 	movx	@dptr,a
      000BF1 90 04 77         [24] 2751 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0006)
      000BF4 F0               [24] 2752 	movx	@dptr,a
      000BF5 90 04 78         [24] 2753 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0007)
      000BF8 F0               [24] 2754 	movx	@dptr,a
                                   2755 ;	lcd.c:628: }
      000BF9 D2 07            [12] 2756 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000BFB 10 AF 02         [24] 2757 	jbc	ea,00103$
      000BFE C2 07            [12] 2758 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000C00                       2759 00103$:
                                   2760 ;	lcd.c:624: create_custom_char(ccode1, row_vals1);
      000C00 90 04 45         [24] 2761 	mov	dptr,#_create_custom_char_PARM_2
      000C03 74 71            [12] 2762 	mov	a,#_handle_sadsmiley_custom_char_row_vals1_65537_193
      000C05 F0               [24] 2763 	movx	@dptr,a
      000C06 74 04            [12] 2764 	mov	a,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 >> 8)
      000C08 A3               [24] 2765 	inc	dptr
      000C09 F0               [24] 2766 	movx	@dptr,a
      000C0A E4               [12] 2767 	clr	a
      000C0B A3               [24] 2768 	inc	dptr
      000C0C F0               [24] 2769 	movx	@dptr,a
      000C0D 75 82 31         [24] 2770 	mov	dpl,#0x31
      000C10 12 08 58         [24] 2771 	lcall	_create_custom_char
                                   2772 ;	lcd.c:626: lcdgotoxy('1', '4');
      000C13 90 04 06         [24] 2773 	mov	dptr,#_lcdgotoxy_PARM_2
      000C16 74 34            [12] 2774 	mov	a,#0x34
      000C18 F0               [24] 2775 	movx	@dptr,a
      000C19 75 82 31         [24] 2776 	mov	dpl,#0x31
      000C1C 12 01 A5         [24] 2777 	lcall	_lcdgotoxy
                                   2778 ;	lcd.c:627: lcdputch(ccode1 - '0');
      000C1F 75 82 01         [24] 2779 	mov	dpl,#0x01
      000C22 12 02 5E         [24] 2780 	lcall	_lcdputch
      000C25 A2 07            [12] 2781 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000C27 92 AF            [24] 2782 	mov	ea,c
                                   2783 ;	lcd.c:632: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
      000C29 90 04 79         [24] 2784 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals2_65538_195
      000C2C 74 1F            [12] 2785 	mov	a,#0x1f
      000C2E F0               [24] 2786 	movx	@dptr,a
      000C2F 90 04 7A         [24] 2787 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0001)
      000C32 F0               [24] 2788 	movx	@dptr,a
      000C33 90 04 7B         [24] 2789 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0002)
      000C36 74 11            [12] 2790 	mov	a,#0x11
      000C38 F0               [24] 2791 	movx	@dptr,a
      000C39 90 04 7C         [24] 2792 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0003)
      000C3C 74 15            [12] 2793 	mov	a,#0x15
      000C3E F0               [24] 2794 	movx	@dptr,a
      000C3F 90 04 7D         [24] 2795 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0004)
      000C42 74 11            [12] 2796 	mov	a,#0x11
      000C44 F0               [24] 2797 	movx	@dptr,a
      000C45 90 04 7E         [24] 2798 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0005)
      000C48 74 1F            [12] 2799 	mov	a,#0x1f
      000C4A F0               [24] 2800 	movx	@dptr,a
      000C4B 90 04 7F         [24] 2801 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0006)
      000C4E F0               [24] 2802 	movx	@dptr,a
      000C4F 90 04 80         [24] 2803 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0007)
      000C52 F0               [24] 2804 	movx	@dptr,a
                                   2805 ;	lcd.c:641: }
      000C53 D2 07            [12] 2806 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000C55 10 AF 02         [24] 2807 	jbc	ea,00104$
      000C58 C2 07            [12] 2808 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000C5A                       2809 00104$:
                                   2810 ;	lcd.c:635: create_custom_char(ccode2, row_vals2);
      000C5A 90 04 45         [24] 2811 	mov	dptr,#_create_custom_char_PARM_2
      000C5D 74 79            [12] 2812 	mov	a,#_handle_sadsmiley_custom_char_row_vals2_65538_195
      000C5F F0               [24] 2813 	movx	@dptr,a
      000C60 74 04            [12] 2814 	mov	a,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 >> 8)
      000C62 A3               [24] 2815 	inc	dptr
      000C63 F0               [24] 2816 	movx	@dptr,a
      000C64 E4               [12] 2817 	clr	a
      000C65 A3               [24] 2818 	inc	dptr
      000C66 F0               [24] 2819 	movx	@dptr,a
      000C67 75 82 32         [24] 2820 	mov	dpl,#0x32
      000C6A 12 08 58         [24] 2821 	lcall	_create_custom_char
                                   2822 ;	lcd.c:637: lcdgotoxy('1', '5');
      000C6D 90 04 06         [24] 2823 	mov	dptr,#_lcdgotoxy_PARM_2
      000C70 74 35            [12] 2824 	mov	a,#0x35
      000C72 F0               [24] 2825 	movx	@dptr,a
      000C73 75 82 31         [24] 2826 	mov	dpl,#0x31
      000C76 12 01 A5         [24] 2827 	lcall	_lcdgotoxy
                                   2828 ;	lcd.c:638: lcdputch(ccode2 - '0');
      000C79 75 82 02         [24] 2829 	mov	dpl,#0x02
      000C7C 12 02 5E         [24] 2830 	lcall	_lcdputch
                                   2831 ;	lcd.c:640: lcdgotoaddr(save_cursor_address);
      000C7F 90 05 74         [24] 2832 	mov	dptr,#_save_cursor_address
      000C82 E0               [24] 2833 	movx	a,@dptr
      000C83 F5 82            [12] 2834 	mov	dpl,a
      000C85 12 01 88         [24] 2835 	lcall	_lcdgotoaddr
      000C88 A2 07            [12] 2836 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000C8A 92 AF            [24] 2837 	mov	ea,c
                                   2838 ;	lcd.c:645: unsigned char row_vals3[8] = {0x1F, 0x1F, 0x1F, 0x10, 0x1B, 0x1C, 0x1F, 0x1F};
      000C8C 90 04 81         [24] 2839 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals3_65539_197
      000C8F 74 1F            [12] 2840 	mov	a,#0x1f
      000C91 F0               [24] 2841 	movx	@dptr,a
      000C92 90 04 82         [24] 2842 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0001)
      000C95 F0               [24] 2843 	movx	@dptr,a
      000C96 90 04 83         [24] 2844 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0002)
      000C99 F0               [24] 2845 	movx	@dptr,a
      000C9A 90 04 84         [24] 2846 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0003)
      000C9D 74 10            [12] 2847 	mov	a,#0x10
      000C9F F0               [24] 2848 	movx	@dptr,a
      000CA0 90 04 85         [24] 2849 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0004)
      000CA3 74 1B            [12] 2850 	mov	a,#0x1b
      000CA5 F0               [24] 2851 	movx	@dptr,a
      000CA6 90 04 86         [24] 2852 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0005)
      000CA9 04               [12] 2853 	inc	a
      000CAA F0               [24] 2854 	movx	@dptr,a
      000CAB 90 04 87         [24] 2855 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0006)
      000CAE 74 1F            [12] 2856 	mov	a,#0x1f
      000CB0 F0               [24] 2857 	movx	@dptr,a
      000CB1 90 04 88         [24] 2858 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0007)
      000CB4 F0               [24] 2859 	movx	@dptr,a
                                   2860 ;	lcd.c:654: }
      000CB5 D2 07            [12] 2861 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000CB7 10 AF 02         [24] 2862 	jbc	ea,00105$
      000CBA C2 07            [12] 2863 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000CBC                       2864 00105$:
                                   2865 ;	lcd.c:648: create_custom_char(ccode3, row_vals3);
      000CBC 90 04 45         [24] 2866 	mov	dptr,#_create_custom_char_PARM_2
      000CBF 74 81            [12] 2867 	mov	a,#_handle_sadsmiley_custom_char_row_vals3_65539_197
      000CC1 F0               [24] 2868 	movx	@dptr,a
      000CC2 74 04            [12] 2869 	mov	a,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 >> 8)
      000CC4 A3               [24] 2870 	inc	dptr
      000CC5 F0               [24] 2871 	movx	@dptr,a
      000CC6 E4               [12] 2872 	clr	a
      000CC7 A3               [24] 2873 	inc	dptr
      000CC8 F0               [24] 2874 	movx	@dptr,a
      000CC9 75 82 33         [24] 2875 	mov	dpl,#0x33
      000CCC 12 08 58         [24] 2876 	lcall	_create_custom_char
                                   2877 ;	lcd.c:650: lcdgotoxy('2', '4');
      000CCF 90 04 06         [24] 2878 	mov	dptr,#_lcdgotoxy_PARM_2
      000CD2 74 34            [12] 2879 	mov	a,#0x34
      000CD4 F0               [24] 2880 	movx	@dptr,a
      000CD5 75 82 32         [24] 2881 	mov	dpl,#0x32
      000CD8 12 01 A5         [24] 2882 	lcall	_lcdgotoxy
                                   2883 ;	lcd.c:651: lcdputch(ccode3 - '0');
      000CDB 75 82 03         [24] 2884 	mov	dpl,#0x03
      000CDE 12 02 5E         [24] 2885 	lcall	_lcdputch
                                   2886 ;	lcd.c:653: lcdgotoaddr(save_cursor_address);
      000CE1 90 05 74         [24] 2887 	mov	dptr,#_save_cursor_address
      000CE4 E0               [24] 2888 	movx	a,@dptr
      000CE5 F5 82            [12] 2889 	mov	dpl,a
      000CE7 12 01 88         [24] 2890 	lcall	_lcdgotoaddr
      000CEA A2 07            [12] 2891 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000CEC 92 AF            [24] 2892 	mov	ea,c
                                   2893 ;	lcd.c:658: unsigned char row_vals4[8] = {0x1F, 0x1F, 0x1F, 0x01, 0x1B, 0x07, 0x1F, 0x1F};
      000CEE 90 04 89         [24] 2894 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals4_65540_199
      000CF1 74 1F            [12] 2895 	mov	a,#0x1f
      000CF3 F0               [24] 2896 	movx	@dptr,a
      000CF4 90 04 8A         [24] 2897 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0001)
      000CF7 F0               [24] 2898 	movx	@dptr,a
      000CF8 90 04 8B         [24] 2899 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0002)
      000CFB F0               [24] 2900 	movx	@dptr,a
      000CFC 90 04 8C         [24] 2901 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0003)
      000CFF 74 01            [12] 2902 	mov	a,#0x01
      000D01 F0               [24] 2903 	movx	@dptr,a
      000D02 90 04 8D         [24] 2904 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0004)
      000D05 74 1B            [12] 2905 	mov	a,#0x1b
      000D07 F0               [24] 2906 	movx	@dptr,a
      000D08 90 04 8E         [24] 2907 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0005)
      000D0B 74 07            [12] 2908 	mov	a,#0x07
      000D0D F0               [24] 2909 	movx	@dptr,a
      000D0E 90 04 8F         [24] 2910 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0006)
      000D11 74 1F            [12] 2911 	mov	a,#0x1f
      000D13 F0               [24] 2912 	movx	@dptr,a
      000D14 90 04 90         [24] 2913 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0007)
      000D17 F0               [24] 2914 	movx	@dptr,a
                                   2915 ;	lcd.c:667: }
      000D18 D2 07            [12] 2916 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000D1A 10 AF 02         [24] 2917 	jbc	ea,00106$
      000D1D C2 07            [12] 2918 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000D1F                       2919 00106$:
                                   2920 ;	lcd.c:661: create_custom_char(ccode4, row_vals4);
      000D1F 90 04 45         [24] 2921 	mov	dptr,#_create_custom_char_PARM_2
      000D22 74 89            [12] 2922 	mov	a,#_handle_sadsmiley_custom_char_row_vals4_65540_199
      000D24 F0               [24] 2923 	movx	@dptr,a
      000D25 74 04            [12] 2924 	mov	a,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 >> 8)
      000D27 A3               [24] 2925 	inc	dptr
      000D28 F0               [24] 2926 	movx	@dptr,a
      000D29 E4               [12] 2927 	clr	a
      000D2A A3               [24] 2928 	inc	dptr
      000D2B F0               [24] 2929 	movx	@dptr,a
      000D2C 75 82 34         [24] 2930 	mov	dpl,#0x34
      000D2F 12 08 58         [24] 2931 	lcall	_create_custom_char
                                   2932 ;	lcd.c:663: lcdgotoxy('2', '5');
      000D32 90 04 06         [24] 2933 	mov	dptr,#_lcdgotoxy_PARM_2
      000D35 74 35            [12] 2934 	mov	a,#0x35
      000D37 F0               [24] 2935 	movx	@dptr,a
      000D38 75 82 32         [24] 2936 	mov	dpl,#0x32
      000D3B 12 01 A5         [24] 2937 	lcall	_lcdgotoxy
                                   2938 ;	lcd.c:664: lcdputch(ccode4 - '0');
      000D3E 75 82 04         [24] 2939 	mov	dpl,#0x04
      000D41 12 02 5E         [24] 2940 	lcall	_lcdputch
                                   2941 ;	lcd.c:666: lcdgotoaddr(save_cursor_address);
      000D44 90 05 74         [24] 2942 	mov	dptr,#_save_cursor_address
      000D47 E0               [24] 2943 	movx	a,@dptr
      000D48 F5 82            [12] 2944 	mov	dpl,a
      000D4A 12 01 88         [24] 2945 	lcall	_lcdgotoaddr
      000D4D A2 07            [12] 2946 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000D4F 92 AF            [24] 2947 	mov	ea,c
                                   2948 ;	lcd.c:670: printf("\033[0m");
      000D51 74 47            [12] 2949 	mov	a,#___str_23
      000D53 C0 E0            [24] 2950 	push	acc
      000D55 74 2C            [12] 2951 	mov	a,#(___str_23 >> 8)
      000D57 C0 E0            [24] 2952 	push	acc
      000D59 74 80            [12] 2953 	mov	a,#0x80
      000D5B C0 E0            [24] 2954 	push	acc
      000D5D 12 1F 35         [24] 2955 	lcall	_printf
      000D60 15 81            [12] 2956 	dec	sp
      000D62 15 81            [12] 2957 	dec	sp
      000D64 15 81            [12] 2958 	dec	sp
                                   2959 ;	lcd.c:671: }
      000D66 22               [24] 2960 	ret
                                   2961 ;------------------------------------------------------------
                                   2962 ;Allocation info for local variables in function 'handle_lock_custom_char'
                                   2963 ;------------------------------------------------------------
                                   2964 ;ccode1                    Allocated with name '_handle_lock_custom_char_ccode1_65536_202'
                                   2965 ;row_vals1                 Allocated with name '_handle_lock_custom_char_row_vals1_65536_202'
                                   2966 ;ccode2                    Allocated with name '_handle_lock_custom_char_ccode2_65537_204'
                                   2967 ;row_vals2                 Allocated with name '_handle_lock_custom_char_row_vals2_65537_204'
                                   2968 ;ccode3                    Allocated with name '_handle_lock_custom_char_ccode3_65538_206'
                                   2969 ;row_vals3                 Allocated with name '_handle_lock_custom_char_row_vals3_65538_206'
                                   2970 ;ccode4                    Allocated with name '_handle_lock_custom_char_ccode4_65539_208'
                                   2971 ;row_vals4                 Allocated with name '_handle_lock_custom_char_row_vals4_65539_208'
                                   2972 ;------------------------------------------------------------
                                   2973 ;	lcd.c:672: void handle_lock_custom_char(void)
                                   2974 ;	-----------------------------------------
                                   2975 ;	 function handle_lock_custom_char
                                   2976 ;	-----------------------------------------
      000D67                       2977 _handle_lock_custom_char:
                                   2978 ;	lcd.c:676: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000D67 90 04 91         [24] 2979 	mov	dptr,#_handle_lock_custom_char_row_vals1_65536_202
      000D6A 74 1F            [12] 2980 	mov	a,#0x1f
      000D6C F0               [24] 2981 	movx	@dptr,a
      000D6D 90 04 92         [24] 2982 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0001)
      000D70 F0               [24] 2983 	movx	@dptr,a
      000D71 90 04 93         [24] 2984 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0002)
      000D74 F0               [24] 2985 	movx	@dptr,a
      000D75 90 04 94         [24] 2986 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0003)
      000D78 F0               [24] 2987 	movx	@dptr,a
      000D79 90 04 95         [24] 2988 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0004)
      000D7C F0               [24] 2989 	movx	@dptr,a
      000D7D 90 04 96         [24] 2990 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0005)
      000D80 F0               [24] 2991 	movx	@dptr,a
      000D81 90 04 97         [24] 2992 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0006)
      000D84 F0               [24] 2993 	movx	@dptr,a
      000D85 90 04 98         [24] 2994 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0007)
      000D88 F0               [24] 2995 	movx	@dptr,a
                                   2996 ;	lcd.c:683: }
      000D89 D2 08            [12] 2997 	setb	_handle_lock_custom_char_sloc0_1_0
      000D8B 10 AF 02         [24] 2998 	jbc	ea,00103$
      000D8E C2 08            [12] 2999 	clr	_handle_lock_custom_char_sloc0_1_0
      000D90                       3000 00103$:
                                   3001 ;	lcd.c:679: create_custom_char(ccode1, row_vals1);
      000D90 90 04 45         [24] 3002 	mov	dptr,#_create_custom_char_PARM_2
      000D93 74 91            [12] 3003 	mov	a,#_handle_lock_custom_char_row_vals1_65536_202
      000D95 F0               [24] 3004 	movx	@dptr,a
      000D96 74 04            [12] 3005 	mov	a,#(_handle_lock_custom_char_row_vals1_65536_202 >> 8)
      000D98 A3               [24] 3006 	inc	dptr
      000D99 F0               [24] 3007 	movx	@dptr,a
      000D9A E4               [12] 3008 	clr	a
      000D9B A3               [24] 3009 	inc	dptr
      000D9C F0               [24] 3010 	movx	@dptr,a
      000D9D 75 82 31         [24] 3011 	mov	dpl,#0x31
      000DA0 12 08 58         [24] 3012 	lcall	_create_custom_char
                                   3013 ;	lcd.c:681: lcdgotoxy('3', '7');
      000DA3 90 04 06         [24] 3014 	mov	dptr,#_lcdgotoxy_PARM_2
      000DA6 74 37            [12] 3015 	mov	a,#0x37
      000DA8 F0               [24] 3016 	movx	@dptr,a
      000DA9 75 82 33         [24] 3017 	mov	dpl,#0x33
      000DAC 12 01 A5         [24] 3018 	lcall	_lcdgotoxy
                                   3019 ;	lcd.c:682: lcdputch(ccode1 - '0');
      000DAF 75 82 01         [24] 3020 	mov	dpl,#0x01
      000DB2 12 02 5E         [24] 3021 	lcall	_lcdputch
      000DB5 A2 08            [12] 3022 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000DB7 92 AF            [24] 3023 	mov	ea,c
                                   3024 ;	lcd.c:687: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000DB9 90 04 99         [24] 3025 	mov	dptr,#_handle_lock_custom_char_row_vals2_65537_204
      000DBC 74 1F            [12] 3026 	mov	a,#0x1f
      000DBE F0               [24] 3027 	movx	@dptr,a
      000DBF 90 04 9A         [24] 3028 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0001)
      000DC2 F0               [24] 3029 	movx	@dptr,a
      000DC3 90 04 9B         [24] 3030 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0002)
      000DC6 F0               [24] 3031 	movx	@dptr,a
      000DC7 90 04 9C         [24] 3032 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0003)
      000DCA F0               [24] 3033 	movx	@dptr,a
      000DCB 90 04 9D         [24] 3034 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0004)
      000DCE F0               [24] 3035 	movx	@dptr,a
      000DCF 90 04 9E         [24] 3036 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0005)
      000DD2 F0               [24] 3037 	movx	@dptr,a
      000DD3 90 04 9F         [24] 3038 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0006)
      000DD6 F0               [24] 3039 	movx	@dptr,a
      000DD7 90 04 A0         [24] 3040 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0007)
      000DDA F0               [24] 3041 	movx	@dptr,a
                                   3042 ;	lcd.c:696: }
      000DDB D2 08            [12] 3043 	setb	_handle_lock_custom_char_sloc0_1_0
      000DDD 10 AF 02         [24] 3044 	jbc	ea,00104$
      000DE0 C2 08            [12] 3045 	clr	_handle_lock_custom_char_sloc0_1_0
      000DE2                       3046 00104$:
                                   3047 ;	lcd.c:690: create_custom_char(ccode2, row_vals2);
      000DE2 90 04 45         [24] 3048 	mov	dptr,#_create_custom_char_PARM_2
      000DE5 74 99            [12] 3049 	mov	a,#_handle_lock_custom_char_row_vals2_65537_204
      000DE7 F0               [24] 3050 	movx	@dptr,a
      000DE8 74 04            [12] 3051 	mov	a,#(_handle_lock_custom_char_row_vals2_65537_204 >> 8)
      000DEA A3               [24] 3052 	inc	dptr
      000DEB F0               [24] 3053 	movx	@dptr,a
      000DEC E4               [12] 3054 	clr	a
      000DED A3               [24] 3055 	inc	dptr
      000DEE F0               [24] 3056 	movx	@dptr,a
      000DEF 75 82 32         [24] 3057 	mov	dpl,#0x32
      000DF2 12 08 58         [24] 3058 	lcall	_create_custom_char
                                   3059 ;	lcd.c:692: lcdgotoxy('3', '8');
      000DF5 90 04 06         [24] 3060 	mov	dptr,#_lcdgotoxy_PARM_2
      000DF8 74 38            [12] 3061 	mov	a,#0x38
      000DFA F0               [24] 3062 	movx	@dptr,a
      000DFB 75 82 33         [24] 3063 	mov	dpl,#0x33
      000DFE 12 01 A5         [24] 3064 	lcall	_lcdgotoxy
                                   3065 ;	lcd.c:693: lcdputch(ccode2 - '0');
      000E01 75 82 02         [24] 3066 	mov	dpl,#0x02
      000E04 12 02 5E         [24] 3067 	lcall	_lcdputch
                                   3068 ;	lcd.c:695: lcdgotoaddr(save_cursor_address);
      000E07 90 05 74         [24] 3069 	mov	dptr,#_save_cursor_address
      000E0A E0               [24] 3070 	movx	a,@dptr
      000E0B F5 82            [12] 3071 	mov	dpl,a
      000E0D 12 01 88         [24] 3072 	lcall	_lcdgotoaddr
      000E10 A2 08            [12] 3073 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000E12 92 AF            [24] 3074 	mov	ea,c
                                   3075 ;	lcd.c:700: unsigned char row_vals3[8] = {0x03, 0x04, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10};
      000E14 90 04 A1         [24] 3076 	mov	dptr,#_handle_lock_custom_char_row_vals3_65538_206
      000E17 74 03            [12] 3077 	mov	a,#0x03
      000E19 F0               [24] 3078 	movx	@dptr,a
      000E1A 90 04 A2         [24] 3079 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0001)
      000E1D 04               [12] 3080 	inc	a
      000E1E F0               [24] 3081 	movx	@dptr,a
      000E1F 90 04 A3         [24] 3082 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0002)
      000E22 23               [12] 3083 	rl	a
      000E23 F0               [24] 3084 	movx	@dptr,a
      000E24 90 04 A4         [24] 3085 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0003)
      000E27 23               [12] 3086 	rl	a
      000E28 F0               [24] 3087 	movx	@dptr,a
      000E29 90 04 A5         [24] 3088 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0004)
      000E2C F0               [24] 3089 	movx	@dptr,a
      000E2D 90 04 A6         [24] 3090 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0005)
      000E30 F0               [24] 3091 	movx	@dptr,a
      000E31 90 04 A7         [24] 3092 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0006)
      000E34 F0               [24] 3093 	movx	@dptr,a
      000E35 90 04 A8         [24] 3094 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0007)
      000E38 F0               [24] 3095 	movx	@dptr,a
                                   3096 ;	lcd.c:709: }
      000E39 D2 08            [12] 3097 	setb	_handle_lock_custom_char_sloc0_1_0
      000E3B 10 AF 02         [24] 3098 	jbc	ea,00105$
      000E3E C2 08            [12] 3099 	clr	_handle_lock_custom_char_sloc0_1_0
      000E40                       3100 00105$:
                                   3101 ;	lcd.c:703: create_custom_char(ccode3, row_vals3);
      000E40 90 04 45         [24] 3102 	mov	dptr,#_create_custom_char_PARM_2
      000E43 74 A1            [12] 3103 	mov	a,#_handle_lock_custom_char_row_vals3_65538_206
      000E45 F0               [24] 3104 	movx	@dptr,a
      000E46 74 04            [12] 3105 	mov	a,#(_handle_lock_custom_char_row_vals3_65538_206 >> 8)
      000E48 A3               [24] 3106 	inc	dptr
      000E49 F0               [24] 3107 	movx	@dptr,a
      000E4A E4               [12] 3108 	clr	a
      000E4B A3               [24] 3109 	inc	dptr
      000E4C F0               [24] 3110 	movx	@dptr,a
      000E4D 75 82 33         [24] 3111 	mov	dpl,#0x33
      000E50 12 08 58         [24] 3112 	lcall	_create_custom_char
                                   3113 ;	lcd.c:705: lcdgotoxy('2', '7');
      000E53 90 04 06         [24] 3114 	mov	dptr,#_lcdgotoxy_PARM_2
      000E56 74 37            [12] 3115 	mov	a,#0x37
      000E58 F0               [24] 3116 	movx	@dptr,a
      000E59 75 82 32         [24] 3117 	mov	dpl,#0x32
      000E5C 12 01 A5         [24] 3118 	lcall	_lcdgotoxy
                                   3119 ;	lcd.c:706: lcdputch(ccode3 - '0');
      000E5F 75 82 03         [24] 3120 	mov	dpl,#0x03
      000E62 12 02 5E         [24] 3121 	lcall	_lcdputch
                                   3122 ;	lcd.c:708: lcdgotoaddr(save_cursor_address);
      000E65 90 05 74         [24] 3123 	mov	dptr,#_save_cursor_address
      000E68 E0               [24] 3124 	movx	a,@dptr
      000E69 F5 82            [12] 3125 	mov	dpl,a
      000E6B 12 01 88         [24] 3126 	lcall	_lcdgotoaddr
      000E6E A2 08            [12] 3127 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000E70 92 AF            [24] 3128 	mov	ea,c
                                   3129 ;	lcd.c:713: unsigned char row_vals4[8] = {0x18, 0x04, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01};
      000E72 90 04 A9         [24] 3130 	mov	dptr,#_handle_lock_custom_char_row_vals4_65539_208
      000E75 74 18            [12] 3131 	mov	a,#0x18
      000E77 F0               [24] 3132 	movx	@dptr,a
      000E78 90 04 AA         [24] 3133 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0001)
      000E7B 74 04            [12] 3134 	mov	a,#0x04
      000E7D F0               [24] 3135 	movx	@dptr,a
      000E7E 90 04 AB         [24] 3136 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0002)
      000E81 03               [12] 3137 	rr	a
      000E82 F0               [24] 3138 	movx	@dptr,a
      000E83 90 04 AC         [24] 3139 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0003)
      000E86 14               [12] 3140 	dec	a
      000E87 F0               [24] 3141 	movx	@dptr,a
      000E88 90 04 AD         [24] 3142 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0004)
      000E8B F0               [24] 3143 	movx	@dptr,a
      000E8C 90 04 AE         [24] 3144 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0005)
      000E8F F0               [24] 3145 	movx	@dptr,a
      000E90 90 04 AF         [24] 3146 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0006)
      000E93 F0               [24] 3147 	movx	@dptr,a
      000E94 90 04 B0         [24] 3148 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0007)
      000E97 F0               [24] 3149 	movx	@dptr,a
                                   3150 ;	lcd.c:722: }
      000E98 D2 08            [12] 3151 	setb	_handle_lock_custom_char_sloc0_1_0
      000E9A 10 AF 02         [24] 3152 	jbc	ea,00106$
      000E9D C2 08            [12] 3153 	clr	_handle_lock_custom_char_sloc0_1_0
      000E9F                       3154 00106$:
                                   3155 ;	lcd.c:716: create_custom_char(ccode4, row_vals4);
      000E9F 90 04 45         [24] 3156 	mov	dptr,#_create_custom_char_PARM_2
      000EA2 74 A9            [12] 3157 	mov	a,#_handle_lock_custom_char_row_vals4_65539_208
      000EA4 F0               [24] 3158 	movx	@dptr,a
      000EA5 74 04            [12] 3159 	mov	a,#(_handle_lock_custom_char_row_vals4_65539_208 >> 8)
      000EA7 A3               [24] 3160 	inc	dptr
      000EA8 F0               [24] 3161 	movx	@dptr,a
      000EA9 E4               [12] 3162 	clr	a
      000EAA A3               [24] 3163 	inc	dptr
      000EAB F0               [24] 3164 	movx	@dptr,a
      000EAC 75 82 34         [24] 3165 	mov	dpl,#0x34
      000EAF 12 08 58         [24] 3166 	lcall	_create_custom_char
                                   3167 ;	lcd.c:718: lcdgotoxy('2', '8');
      000EB2 90 04 06         [24] 3168 	mov	dptr,#_lcdgotoxy_PARM_2
      000EB5 74 38            [12] 3169 	mov	a,#0x38
      000EB7 F0               [24] 3170 	movx	@dptr,a
      000EB8 75 82 32         [24] 3171 	mov	dpl,#0x32
      000EBB 12 01 A5         [24] 3172 	lcall	_lcdgotoxy
                                   3173 ;	lcd.c:719: lcdputch(ccode4 - '0');
      000EBE 75 82 04         [24] 3174 	mov	dpl,#0x04
      000EC1 12 02 5E         [24] 3175 	lcall	_lcdputch
                                   3176 ;	lcd.c:721: lcdgotoaddr(save_cursor_address);
      000EC4 90 05 74         [24] 3177 	mov	dptr,#_save_cursor_address
      000EC7 E0               [24] 3178 	movx	a,@dptr
      000EC8 F5 82            [12] 3179 	mov	dpl,a
      000ECA 12 01 88         [24] 3180 	lcall	_lcdgotoaddr
      000ECD A2 08            [12] 3181 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000ECF 92 AF            [24] 3182 	mov	ea,c
                                   3183 ;	lcd.c:724: }
      000ED1 22               [24] 3184 	ret
                                   3185 ;------------------------------------------------------------
                                   3186 ;Allocation info for local variables in function 'handle_unlock_custom_char'
                                   3187 ;------------------------------------------------------------
                                   3188 ;ccode1                    Allocated with name '_handle_unlock_custom_char_ccode1_65536_211'
                                   3189 ;row_vals1                 Allocated with name '_handle_unlock_custom_char_row_vals1_65536_211'
                                   3190 ;ccode2                    Allocated with name '_handle_unlock_custom_char_ccode2_65537_213'
                                   3191 ;row_vals2                 Allocated with name '_handle_unlock_custom_char_row_vals2_65537_213'
                                   3192 ;ccode3                    Allocated with name '_handle_unlock_custom_char_ccode3_65538_215'
                                   3193 ;row_vals3                 Allocated with name '_handle_unlock_custom_char_row_vals3_65538_215'
                                   3194 ;ccode4                    Allocated with name '_handle_unlock_custom_char_ccode4_65539_217'
                                   3195 ;row_vals4                 Allocated with name '_handle_unlock_custom_char_row_vals4_65539_217'
                                   3196 ;------------------------------------------------------------
                                   3197 ;	lcd.c:726: void handle_unlock_custom_char(void)
                                   3198 ;	-----------------------------------------
                                   3199 ;	 function handle_unlock_custom_char
                                   3200 ;	-----------------------------------------
      000ED2                       3201 _handle_unlock_custom_char:
                                   3202 ;	lcd.c:730: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000ED2 90 04 B1         [24] 3203 	mov	dptr,#_handle_unlock_custom_char_row_vals1_65536_211
      000ED5 74 1F            [12] 3204 	mov	a,#0x1f
      000ED7 F0               [24] 3205 	movx	@dptr,a
      000ED8 90 04 B2         [24] 3206 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0001)
      000EDB F0               [24] 3207 	movx	@dptr,a
      000EDC 90 04 B3         [24] 3208 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0002)
      000EDF F0               [24] 3209 	movx	@dptr,a
      000EE0 90 04 B4         [24] 3210 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0003)
      000EE3 F0               [24] 3211 	movx	@dptr,a
      000EE4 90 04 B5         [24] 3212 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0004)
      000EE7 F0               [24] 3213 	movx	@dptr,a
      000EE8 90 04 B6         [24] 3214 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0005)
      000EEB F0               [24] 3215 	movx	@dptr,a
      000EEC 90 04 B7         [24] 3216 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0006)
      000EEF F0               [24] 3217 	movx	@dptr,a
      000EF0 90 04 B8         [24] 3218 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0007)
      000EF3 F0               [24] 3219 	movx	@dptr,a
                                   3220 ;	lcd.c:737: }
      000EF4 D2 09            [12] 3221 	setb	_handle_unlock_custom_char_sloc0_1_0
      000EF6 10 AF 02         [24] 3222 	jbc	ea,00103$
      000EF9 C2 09            [12] 3223 	clr	_handle_unlock_custom_char_sloc0_1_0
      000EFB                       3224 00103$:
                                   3225 ;	lcd.c:733: create_custom_char(ccode1, row_vals1);
      000EFB 90 04 45         [24] 3226 	mov	dptr,#_create_custom_char_PARM_2
      000EFE 74 B1            [12] 3227 	mov	a,#_handle_unlock_custom_char_row_vals1_65536_211
      000F00 F0               [24] 3228 	movx	@dptr,a
      000F01 74 04            [12] 3229 	mov	a,#(_handle_unlock_custom_char_row_vals1_65536_211 >> 8)
      000F03 A3               [24] 3230 	inc	dptr
      000F04 F0               [24] 3231 	movx	@dptr,a
      000F05 E4               [12] 3232 	clr	a
      000F06 A3               [24] 3233 	inc	dptr
      000F07 F0               [24] 3234 	movx	@dptr,a
      000F08 75 82 31         [24] 3235 	mov	dpl,#0x31
      000F0B 12 08 58         [24] 3236 	lcall	_create_custom_char
                                   3237 ;	lcd.c:735: lcdgotoxy('3', '7');
      000F0E 90 04 06         [24] 3238 	mov	dptr,#_lcdgotoxy_PARM_2
      000F11 74 37            [12] 3239 	mov	a,#0x37
      000F13 F0               [24] 3240 	movx	@dptr,a
      000F14 75 82 33         [24] 3241 	mov	dpl,#0x33
      000F17 12 01 A5         [24] 3242 	lcall	_lcdgotoxy
                                   3243 ;	lcd.c:736: lcdputch(ccode1 - '0');
      000F1A 75 82 01         [24] 3244 	mov	dpl,#0x01
      000F1D 12 02 5E         [24] 3245 	lcall	_lcdputch
      000F20 A2 09            [12] 3246 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      000F22 92 AF            [24] 3247 	mov	ea,c
                                   3248 ;	lcd.c:741: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000F24 90 04 B9         [24] 3249 	mov	dptr,#_handle_unlock_custom_char_row_vals2_65537_213
      000F27 74 1F            [12] 3250 	mov	a,#0x1f
      000F29 F0               [24] 3251 	movx	@dptr,a
      000F2A 90 04 BA         [24] 3252 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0001)
      000F2D F0               [24] 3253 	movx	@dptr,a
      000F2E 90 04 BB         [24] 3254 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0002)
      000F31 F0               [24] 3255 	movx	@dptr,a
      000F32 90 04 BC         [24] 3256 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0003)
      000F35 F0               [24] 3257 	movx	@dptr,a
      000F36 90 04 BD         [24] 3258 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0004)
      000F39 F0               [24] 3259 	movx	@dptr,a
      000F3A 90 04 BE         [24] 3260 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0005)
      000F3D F0               [24] 3261 	movx	@dptr,a
      000F3E 90 04 BF         [24] 3262 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0006)
      000F41 F0               [24] 3263 	movx	@dptr,a
      000F42 90 04 C0         [24] 3264 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0007)
      000F45 F0               [24] 3265 	movx	@dptr,a
                                   3266 ;	lcd.c:750: }
      000F46 D2 09            [12] 3267 	setb	_handle_unlock_custom_char_sloc0_1_0
      000F48 10 AF 02         [24] 3268 	jbc	ea,00104$
      000F4B C2 09            [12] 3269 	clr	_handle_unlock_custom_char_sloc0_1_0
      000F4D                       3270 00104$:
                                   3271 ;	lcd.c:744: create_custom_char(ccode2, row_vals2);
      000F4D 90 04 45         [24] 3272 	mov	dptr,#_create_custom_char_PARM_2
      000F50 74 B9            [12] 3273 	mov	a,#_handle_unlock_custom_char_row_vals2_65537_213
      000F52 F0               [24] 3274 	movx	@dptr,a
      000F53 74 04            [12] 3275 	mov	a,#(_handle_unlock_custom_char_row_vals2_65537_213 >> 8)
      000F55 A3               [24] 3276 	inc	dptr
      000F56 F0               [24] 3277 	movx	@dptr,a
      000F57 E4               [12] 3278 	clr	a
      000F58 A3               [24] 3279 	inc	dptr
      000F59 F0               [24] 3280 	movx	@dptr,a
      000F5A 75 82 32         [24] 3281 	mov	dpl,#0x32
      000F5D 12 08 58         [24] 3282 	lcall	_create_custom_char
                                   3283 ;	lcd.c:746: lcdgotoxy('3', '8');
      000F60 90 04 06         [24] 3284 	mov	dptr,#_lcdgotoxy_PARM_2
      000F63 74 38            [12] 3285 	mov	a,#0x38
      000F65 F0               [24] 3286 	movx	@dptr,a
      000F66 75 82 33         [24] 3287 	mov	dpl,#0x33
      000F69 12 01 A5         [24] 3288 	lcall	_lcdgotoxy
                                   3289 ;	lcd.c:747: lcdputch(ccode2 - '0');
      000F6C 75 82 02         [24] 3290 	mov	dpl,#0x02
      000F6F 12 02 5E         [24] 3291 	lcall	_lcdputch
                                   3292 ;	lcd.c:749: lcdgotoaddr(save_cursor_address);
      000F72 90 05 74         [24] 3293 	mov	dptr,#_save_cursor_address
      000F75 E0               [24] 3294 	movx	a,@dptr
      000F76 F5 82            [12] 3295 	mov	dpl,a
      000F78 12 01 88         [24] 3296 	lcall	_lcdgotoaddr
      000F7B A2 09            [12] 3297 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      000F7D 92 AF            [24] 3298 	mov	ea,c
                                   3299 ;	lcd.c:754: unsigned char row_vals3[8] = {0x18, 0x04, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01};
      000F7F 90 04 C1         [24] 3300 	mov	dptr,#_handle_unlock_custom_char_row_vals3_65538_215
      000F82 74 18            [12] 3301 	mov	a,#0x18
      000F84 F0               [24] 3302 	movx	@dptr,a
      000F85 90 04 C2         [24] 3303 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0001)
      000F88 74 04            [12] 3304 	mov	a,#0x04
      000F8A F0               [24] 3305 	movx	@dptr,a
      000F8B 90 04 C3         [24] 3306 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0002)
      000F8E 03               [12] 3307 	rr	a
      000F8F F0               [24] 3308 	movx	@dptr,a
      000F90 90 04 C4         [24] 3309 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0003)
      000F93 14               [12] 3310 	dec	a
      000F94 F0               [24] 3311 	movx	@dptr,a
      000F95 90 04 C5         [24] 3312 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0004)
      000F98 F0               [24] 3313 	movx	@dptr,a
      000F99 90 04 C6         [24] 3314 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0005)
      000F9C F0               [24] 3315 	movx	@dptr,a
      000F9D 90 04 C7         [24] 3316 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0006)
      000FA0 F0               [24] 3317 	movx	@dptr,a
      000FA1 90 04 C8         [24] 3318 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0007)
      000FA4 F0               [24] 3319 	movx	@dptr,a
                                   3320 ;	lcd.c:764: }
      000FA5 D2 09            [12] 3321 	setb	_handle_unlock_custom_char_sloc0_1_0
      000FA7 10 AF 02         [24] 3322 	jbc	ea,00105$
      000FAA C2 09            [12] 3323 	clr	_handle_unlock_custom_char_sloc0_1_0
      000FAC                       3324 00105$:
                                   3325 ;	lcd.c:758: create_custom_char(ccode3, row_vals3);
      000FAC 90 04 45         [24] 3326 	mov	dptr,#_create_custom_char_PARM_2
      000FAF 74 C1            [12] 3327 	mov	a,#_handle_unlock_custom_char_row_vals3_65538_215
      000FB1 F0               [24] 3328 	movx	@dptr,a
      000FB2 74 04            [12] 3329 	mov	a,#(_handle_unlock_custom_char_row_vals3_65538_215 >> 8)
      000FB4 A3               [24] 3330 	inc	dptr
      000FB5 F0               [24] 3331 	movx	@dptr,a
      000FB6 E4               [12] 3332 	clr	a
      000FB7 A3               [24] 3333 	inc	dptr
      000FB8 F0               [24] 3334 	movx	@dptr,a
      000FB9 75 82 33         [24] 3335 	mov	dpl,#0x33
      000FBC 12 08 58         [24] 3336 	lcall	_create_custom_char
                                   3337 ;	lcd.c:760: lcdgotoxy('2', '6');
      000FBF 90 04 06         [24] 3338 	mov	dptr,#_lcdgotoxy_PARM_2
      000FC2 74 36            [12] 3339 	mov	a,#0x36
      000FC4 F0               [24] 3340 	movx	@dptr,a
      000FC5 75 82 32         [24] 3341 	mov	dpl,#0x32
      000FC8 12 01 A5         [24] 3342 	lcall	_lcdgotoxy
                                   3343 ;	lcd.c:761: lcdputch(ccode3 - '0');
      000FCB 75 82 03         [24] 3344 	mov	dpl,#0x03
      000FCE 12 02 5E         [24] 3345 	lcall	_lcdputch
                                   3346 ;	lcd.c:763: lcdgotoaddr(save_cursor_address);
      000FD1 90 05 74         [24] 3347 	mov	dptr,#_save_cursor_address
      000FD4 E0               [24] 3348 	movx	a,@dptr
      000FD5 F5 82            [12] 3349 	mov	dpl,a
      000FD7 12 01 88         [24] 3350 	lcall	_lcdgotoaddr
      000FDA A2 09            [12] 3351 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      000FDC 92 AF            [24] 3352 	mov	ea,c
                                   3353 ;	lcd.c:769: unsigned char row_vals4[8] = {0x03, 0x04, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10};
      000FDE 90 04 C9         [24] 3354 	mov	dptr,#_handle_unlock_custom_char_row_vals4_65539_217
      000FE1 74 03            [12] 3355 	mov	a,#0x03
      000FE3 F0               [24] 3356 	movx	@dptr,a
      000FE4 90 04 CA         [24] 3357 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0001)
      000FE7 04               [12] 3358 	inc	a
      000FE8 F0               [24] 3359 	movx	@dptr,a
      000FE9 90 04 CB         [24] 3360 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0002)
      000FEC 23               [12] 3361 	rl	a
      000FED F0               [24] 3362 	movx	@dptr,a
      000FEE 90 04 CC         [24] 3363 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0003)
      000FF1 23               [12] 3364 	rl	a
      000FF2 F0               [24] 3365 	movx	@dptr,a
      000FF3 90 04 CD         [24] 3366 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0004)
      000FF6 F0               [24] 3367 	movx	@dptr,a
      000FF7 90 04 CE         [24] 3368 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0005)
      000FFA F0               [24] 3369 	movx	@dptr,a
      000FFB 90 04 CF         [24] 3370 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0006)
      000FFE F0               [24] 3371 	movx	@dptr,a
      000FFF 90 04 D0         [24] 3372 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0007)
      001002 F0               [24] 3373 	movx	@dptr,a
                                   3374 ;	lcd.c:779: }
      001003 D2 09            [12] 3375 	setb	_handle_unlock_custom_char_sloc0_1_0
      001005 10 AF 02         [24] 3376 	jbc	ea,00106$
      001008 C2 09            [12] 3377 	clr	_handle_unlock_custom_char_sloc0_1_0
      00100A                       3378 00106$:
                                   3379 ;	lcd.c:773: create_custom_char(ccode4, row_vals4);
      00100A 90 04 45         [24] 3380 	mov	dptr,#_create_custom_char_PARM_2
      00100D 74 C9            [12] 3381 	mov	a,#_handle_unlock_custom_char_row_vals4_65539_217
      00100F F0               [24] 3382 	movx	@dptr,a
      001010 74 04            [12] 3383 	mov	a,#(_handle_unlock_custom_char_row_vals4_65539_217 >> 8)
      001012 A3               [24] 3384 	inc	dptr
      001013 F0               [24] 3385 	movx	@dptr,a
      001014 E4               [12] 3386 	clr	a
      001015 A3               [24] 3387 	inc	dptr
      001016 F0               [24] 3388 	movx	@dptr,a
      001017 75 82 34         [24] 3389 	mov	dpl,#0x34
      00101A 12 08 58         [24] 3390 	lcall	_create_custom_char
                                   3391 ;	lcd.c:775: lcdgotoxy('2', '5');
      00101D 90 04 06         [24] 3392 	mov	dptr,#_lcdgotoxy_PARM_2
      001020 74 35            [12] 3393 	mov	a,#0x35
      001022 F0               [24] 3394 	movx	@dptr,a
      001023 75 82 32         [24] 3395 	mov	dpl,#0x32
      001026 12 01 A5         [24] 3396 	lcall	_lcdgotoxy
                                   3397 ;	lcd.c:776: lcdputch(ccode4 - '0');
      001029 75 82 04         [24] 3398 	mov	dpl,#0x04
      00102C 12 02 5E         [24] 3399 	lcall	_lcdputch
                                   3400 ;	lcd.c:778: lcdgotoaddr(save_cursor_address);
      00102F 90 05 74         [24] 3401 	mov	dptr,#_save_cursor_address
      001032 E0               [24] 3402 	movx	a,@dptr
      001033 F5 82            [12] 3403 	mov	dpl,a
      001035 12 01 88         [24] 3404 	lcall	_lcdgotoaddr
      001038 A2 09            [12] 3405 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      00103A 92 AF            [24] 3406 	mov	ea,c
                                   3407 ;	lcd.c:781: }
      00103C 22               [24] 3408 	ret
                                   3409 ;------------------------------------------------------------
                                   3410 ;Allocation info for local variables in function 'handle_newuser_custom_char'
                                   3411 ;------------------------------------------------------------
                                   3412 ;ccode1                    Allocated with name '_handle_newuser_custom_char_ccode1_65536_220'
                                   3413 ;row_vals1                 Allocated with name '_handle_newuser_custom_char_row_vals1_65536_220'
                                   3414 ;ccode2                    Allocated with name '_handle_newuser_custom_char_ccode2_65537_222'
                                   3415 ;row_vals2                 Allocated with name '_handle_newuser_custom_char_row_vals2_65537_222'
                                   3416 ;ccode3                    Allocated with name '_handle_newuser_custom_char_ccode3_65538_224'
                                   3417 ;row_vals3                 Allocated with name '_handle_newuser_custom_char_row_vals3_65538_224'
                                   3418 ;ccode4                    Allocated with name '_handle_newuser_custom_char_ccode4_65539_226'
                                   3419 ;row_vals4                 Allocated with name '_handle_newuser_custom_char_row_vals4_65539_226'
                                   3420 ;------------------------------------------------------------
                                   3421 ;	lcd.c:782: void handle_newuser_custom_char(void)
                                   3422 ;	-----------------------------------------
                                   3423 ;	 function handle_newuser_custom_char
                                   3424 ;	-----------------------------------------
      00103D                       3425 _handle_newuser_custom_char:
                                   3426 ;	lcd.c:786: unsigned char row_vals1[8] = {0x00, 0x00, 0x07, 0x08, 0x10, 0x10, 0x10, 0x10};
      00103D 90 04 D1         [24] 3427 	mov	dptr,#_handle_newuser_custom_char_row_vals1_65536_220
      001040 E4               [12] 3428 	clr	a
      001041 F0               [24] 3429 	movx	@dptr,a
      001042 90 04 D2         [24] 3430 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0001)
      001045 F0               [24] 3431 	movx	@dptr,a
      001046 90 04 D3         [24] 3432 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0002)
      001049 74 07            [12] 3433 	mov	a,#0x07
      00104B F0               [24] 3434 	movx	@dptr,a
      00104C 90 04 D4         [24] 3435 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0003)
      00104F 04               [12] 3436 	inc	a
      001050 F0               [24] 3437 	movx	@dptr,a
      001051 90 04 D5         [24] 3438 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0004)
      001054 23               [12] 3439 	rl	a
      001055 F0               [24] 3440 	movx	@dptr,a
      001056 90 04 D6         [24] 3441 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0005)
      001059 F0               [24] 3442 	movx	@dptr,a
      00105A 90 04 D7         [24] 3443 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0006)
      00105D F0               [24] 3444 	movx	@dptr,a
      00105E 90 04 D8         [24] 3445 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0007)
      001061 F0               [24] 3446 	movx	@dptr,a
                                   3447 ;	lcd.c:793: }
      001062 D2 0A            [12] 3448 	setb	_handle_newuser_custom_char_sloc0_1_0
      001064 10 AF 02         [24] 3449 	jbc	ea,00103$
      001067 C2 0A            [12] 3450 	clr	_handle_newuser_custom_char_sloc0_1_0
      001069                       3451 00103$:
                                   3452 ;	lcd.c:789: create_custom_char(ccode1, row_vals1);
      001069 90 04 45         [24] 3453 	mov	dptr,#_create_custom_char_PARM_2
      00106C 74 D1            [12] 3454 	mov	a,#_handle_newuser_custom_char_row_vals1_65536_220
      00106E F0               [24] 3455 	movx	@dptr,a
      00106F 74 04            [12] 3456 	mov	a,#(_handle_newuser_custom_char_row_vals1_65536_220 >> 8)
      001071 A3               [24] 3457 	inc	dptr
      001072 F0               [24] 3458 	movx	@dptr,a
      001073 E4               [12] 3459 	clr	a
      001074 A3               [24] 3460 	inc	dptr
      001075 F0               [24] 3461 	movx	@dptr,a
      001076 75 82 31         [24] 3462 	mov	dpl,#0x31
      001079 12 08 58         [24] 3463 	lcall	_create_custom_char
                                   3464 ;	lcd.c:791: lcdgotoxy('3', '7');
      00107C 90 04 06         [24] 3465 	mov	dptr,#_lcdgotoxy_PARM_2
      00107F 74 37            [12] 3466 	mov	a,#0x37
      001081 F0               [24] 3467 	movx	@dptr,a
      001082 75 82 33         [24] 3468 	mov	dpl,#0x33
      001085 12 01 A5         [24] 3469 	lcall	_lcdgotoxy
                                   3470 ;	lcd.c:792: lcdputch(ccode1 - '0');
      001088 75 82 01         [24] 3471 	mov	dpl,#0x01
      00108B 12 02 5E         [24] 3472 	lcall	_lcdputch
      00108E A2 0A            [12] 3473 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      001090 92 AF            [24] 3474 	mov	ea,c
                                   3475 ;	lcd.c:797: unsigned char row_vals2[8] = {0x00, 0x00, 0x1C, 0x02, 0x09, 0x1D, 0x09, 0x01};
      001092 90 04 D9         [24] 3476 	mov	dptr,#_handle_newuser_custom_char_row_vals2_65537_222
      001095 E4               [12] 3477 	clr	a
      001096 F0               [24] 3478 	movx	@dptr,a
      001097 90 04 DA         [24] 3479 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0001)
      00109A F0               [24] 3480 	movx	@dptr,a
      00109B 90 04 DB         [24] 3481 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0002)
      00109E 74 1C            [12] 3482 	mov	a,#0x1c
      0010A0 F0               [24] 3483 	movx	@dptr,a
      0010A1 90 04 DC         [24] 3484 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0003)
      0010A4 74 02            [12] 3485 	mov	a,#0x02
      0010A6 F0               [24] 3486 	movx	@dptr,a
      0010A7 90 04 DD         [24] 3487 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0004)
      0010AA 74 09            [12] 3488 	mov	a,#0x09
      0010AC F0               [24] 3489 	movx	@dptr,a
      0010AD 90 04 DE         [24] 3490 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0005)
      0010B0 74 1D            [12] 3491 	mov	a,#0x1d
      0010B2 F0               [24] 3492 	movx	@dptr,a
      0010B3 90 04 DF         [24] 3493 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0006)
      0010B6 74 09            [12] 3494 	mov	a,#0x09
      0010B8 F0               [24] 3495 	movx	@dptr,a
      0010B9 90 04 E0         [24] 3496 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0007)
      0010BC 74 01            [12] 3497 	mov	a,#0x01
      0010BE F0               [24] 3498 	movx	@dptr,a
                                   3499 ;	lcd.c:806: }
      0010BF D2 0A            [12] 3500 	setb	_handle_newuser_custom_char_sloc0_1_0
      0010C1 10 AF 02         [24] 3501 	jbc	ea,00104$
      0010C4 C2 0A            [12] 3502 	clr	_handle_newuser_custom_char_sloc0_1_0
      0010C6                       3503 00104$:
                                   3504 ;	lcd.c:800: create_custom_char(ccode2, row_vals2);
      0010C6 90 04 45         [24] 3505 	mov	dptr,#_create_custom_char_PARM_2
      0010C9 74 D9            [12] 3506 	mov	a,#_handle_newuser_custom_char_row_vals2_65537_222
      0010CB F0               [24] 3507 	movx	@dptr,a
      0010CC 74 04            [12] 3508 	mov	a,#(_handle_newuser_custom_char_row_vals2_65537_222 >> 8)
      0010CE A3               [24] 3509 	inc	dptr
      0010CF F0               [24] 3510 	movx	@dptr,a
      0010D0 E4               [12] 3511 	clr	a
      0010D1 A3               [24] 3512 	inc	dptr
      0010D2 F0               [24] 3513 	movx	@dptr,a
      0010D3 75 82 32         [24] 3514 	mov	dpl,#0x32
      0010D6 12 08 58         [24] 3515 	lcall	_create_custom_char
                                   3516 ;	lcd.c:802: lcdgotoxy('3', '8');
      0010D9 90 04 06         [24] 3517 	mov	dptr,#_lcdgotoxy_PARM_2
      0010DC 74 38            [12] 3518 	mov	a,#0x38
      0010DE F0               [24] 3519 	movx	@dptr,a
      0010DF 75 82 33         [24] 3520 	mov	dpl,#0x33
      0010E2 12 01 A5         [24] 3521 	lcall	_lcdgotoxy
                                   3522 ;	lcd.c:803: lcdputch(ccode2 - '0');
      0010E5 75 82 02         [24] 3523 	mov	dpl,#0x02
      0010E8 12 02 5E         [24] 3524 	lcall	_lcdputch
                                   3525 ;	lcd.c:805: lcdgotoaddr(save_cursor_address);
      0010EB 90 05 74         [24] 3526 	mov	dptr,#_save_cursor_address
      0010EE E0               [24] 3527 	movx	a,@dptr
      0010EF F5 82            [12] 3528 	mov	dpl,a
      0010F1 12 01 88         [24] 3529 	lcall	_lcdgotoaddr
      0010F4 A2 0A            [12] 3530 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      0010F6 92 AF            [24] 3531 	mov	ea,c
                                   3532 ;	lcd.c:810: unsigned char row_vals3[8] = {0x00, 0x00, 0x00, 0x00, 0x03, 0x04, 0x04, 0x03};
      0010F8 90 04 E1         [24] 3533 	mov	dptr,#_handle_newuser_custom_char_row_vals3_65538_224
      0010FB E4               [12] 3534 	clr	a
      0010FC F0               [24] 3535 	movx	@dptr,a
      0010FD 90 04 E2         [24] 3536 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0001)
      001100 F0               [24] 3537 	movx	@dptr,a
      001101 90 04 E3         [24] 3538 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0002)
      001104 F0               [24] 3539 	movx	@dptr,a
      001105 90 04 E4         [24] 3540 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0003)
      001108 F0               [24] 3541 	movx	@dptr,a
      001109 90 04 E5         [24] 3542 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0004)
      00110C 74 03            [12] 3543 	mov	a,#0x03
      00110E F0               [24] 3544 	movx	@dptr,a
      00110F 90 04 E6         [24] 3545 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0005)
      001112 04               [12] 3546 	inc	a
      001113 F0               [24] 3547 	movx	@dptr,a
      001114 90 04 E7         [24] 3548 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0006)
      001117 F0               [24] 3549 	movx	@dptr,a
      001118 90 04 E8         [24] 3550 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0007)
      00111B 14               [12] 3551 	dec	a
      00111C F0               [24] 3552 	movx	@dptr,a
                                   3553 ;	lcd.c:819: }
      00111D D2 0A            [12] 3554 	setb	_handle_newuser_custom_char_sloc0_1_0
      00111F 10 AF 02         [24] 3555 	jbc	ea,00105$
      001122 C2 0A            [12] 3556 	clr	_handle_newuser_custom_char_sloc0_1_0
      001124                       3557 00105$:
                                   3558 ;	lcd.c:813: create_custom_char(ccode3, row_vals3);
      001124 90 04 45         [24] 3559 	mov	dptr,#_create_custom_char_PARM_2
      001127 74 E1            [12] 3560 	mov	a,#_handle_newuser_custom_char_row_vals3_65538_224
      001129 F0               [24] 3561 	movx	@dptr,a
      00112A 74 04            [12] 3562 	mov	a,#(_handle_newuser_custom_char_row_vals3_65538_224 >> 8)
      00112C A3               [24] 3563 	inc	dptr
      00112D F0               [24] 3564 	movx	@dptr,a
      00112E E4               [12] 3565 	clr	a
      00112F A3               [24] 3566 	inc	dptr
      001130 F0               [24] 3567 	movx	@dptr,a
      001131 75 82 33         [24] 3568 	mov	dpl,#0x33
      001134 12 08 58         [24] 3569 	lcall	_create_custom_char
                                   3570 ;	lcd.c:815: lcdgotoxy('2', '7');
      001137 90 04 06         [24] 3571 	mov	dptr,#_lcdgotoxy_PARM_2
      00113A 74 37            [12] 3572 	mov	a,#0x37
      00113C F0               [24] 3573 	movx	@dptr,a
      00113D 75 82 32         [24] 3574 	mov	dpl,#0x32
      001140 12 01 A5         [24] 3575 	lcall	_lcdgotoxy
                                   3576 ;	lcd.c:816: lcdputch(ccode3 - '0');
      001143 75 82 03         [24] 3577 	mov	dpl,#0x03
      001146 12 02 5E         [24] 3578 	lcall	_lcdputch
                                   3579 ;	lcd.c:818: lcdgotoaddr(save_cursor_address);
      001149 90 05 74         [24] 3580 	mov	dptr,#_save_cursor_address
      00114C E0               [24] 3581 	movx	a,@dptr
      00114D F5 82            [12] 3582 	mov	dpl,a
      00114F 12 01 88         [24] 3583 	lcall	_lcdgotoaddr
      001152 A2 0A            [12] 3584 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      001154 92 AF            [24] 3585 	mov	ea,c
                                   3586 ;	lcd.c:823: unsigned char row_vals4[8] = {0x00, 0x00, 0x00, 0x00, 0x18, 0x04, 0x04, 0x18};
      001156 90 04 E9         [24] 3587 	mov	dptr,#_handle_newuser_custom_char_row_vals4_65539_226
      001159 E4               [12] 3588 	clr	a
      00115A F0               [24] 3589 	movx	@dptr,a
      00115B 90 04 EA         [24] 3590 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0001)
      00115E F0               [24] 3591 	movx	@dptr,a
      00115F 90 04 EB         [24] 3592 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0002)
      001162 F0               [24] 3593 	movx	@dptr,a
      001163 90 04 EC         [24] 3594 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0003)
      001166 F0               [24] 3595 	movx	@dptr,a
      001167 90 04 ED         [24] 3596 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0004)
      00116A 74 18            [12] 3597 	mov	a,#0x18
      00116C F0               [24] 3598 	movx	@dptr,a
      00116D 90 04 EE         [24] 3599 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0005)
      001170 74 04            [12] 3600 	mov	a,#0x04
      001172 F0               [24] 3601 	movx	@dptr,a
      001173 90 04 EF         [24] 3602 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0006)
      001176 F0               [24] 3603 	movx	@dptr,a
      001177 90 04 F0         [24] 3604 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0007)
      00117A 74 18            [12] 3605 	mov	a,#0x18
      00117C F0               [24] 3606 	movx	@dptr,a
                                   3607 ;	lcd.c:832: }
      00117D D2 0A            [12] 3608 	setb	_handle_newuser_custom_char_sloc0_1_0
      00117F 10 AF 02         [24] 3609 	jbc	ea,00106$
      001182 C2 0A            [12] 3610 	clr	_handle_newuser_custom_char_sloc0_1_0
      001184                       3611 00106$:
                                   3612 ;	lcd.c:826: create_custom_char(ccode4, row_vals4);
      001184 90 04 45         [24] 3613 	mov	dptr,#_create_custom_char_PARM_2
      001187 74 E9            [12] 3614 	mov	a,#_handle_newuser_custom_char_row_vals4_65539_226
      001189 F0               [24] 3615 	movx	@dptr,a
      00118A 74 04            [12] 3616 	mov	a,#(_handle_newuser_custom_char_row_vals4_65539_226 >> 8)
      00118C A3               [24] 3617 	inc	dptr
      00118D F0               [24] 3618 	movx	@dptr,a
      00118E E4               [12] 3619 	clr	a
      00118F A3               [24] 3620 	inc	dptr
      001190 F0               [24] 3621 	movx	@dptr,a
      001191 75 82 34         [24] 3622 	mov	dpl,#0x34
      001194 12 08 58         [24] 3623 	lcall	_create_custom_char
                                   3624 ;	lcd.c:828: lcdgotoxy('2', '8');
      001197 90 04 06         [24] 3625 	mov	dptr,#_lcdgotoxy_PARM_2
      00119A 74 38            [12] 3626 	mov	a,#0x38
      00119C F0               [24] 3627 	movx	@dptr,a
      00119D 75 82 32         [24] 3628 	mov	dpl,#0x32
      0011A0 12 01 A5         [24] 3629 	lcall	_lcdgotoxy
                                   3630 ;	lcd.c:829: lcdputch(ccode4 - '0');
      0011A3 75 82 04         [24] 3631 	mov	dpl,#0x04
      0011A6 12 02 5E         [24] 3632 	lcall	_lcdputch
                                   3633 ;	lcd.c:831: lcdgotoaddr(save_cursor_address);
      0011A9 90 05 74         [24] 3634 	mov	dptr,#_save_cursor_address
      0011AC E0               [24] 3635 	movx	a,@dptr
      0011AD F5 82            [12] 3636 	mov	dpl,a
      0011AF 12 01 88         [24] 3637 	lcall	_lcdgotoaddr
      0011B2 A2 0A            [12] 3638 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      0011B4 92 AF            [24] 3639 	mov	ea,c
                                   3640 ;	lcd.c:834: }
      0011B6 22               [24] 3641 	ret
                                   3642 ;------------------------------------------------------------
                                   3643 ;Allocation info for local variables in function 'print_author'
                                   3644 ;------------------------------------------------------------
                                   3645 ;str                       Allocated with name '_print_author_str_65537_230'
                                   3646 ;------------------------------------------------------------
                                   3647 ;	lcd.c:836: void print_author(void)
                                   3648 ;	-----------------------------------------
                                   3649 ;	 function print_author
                                   3650 ;	-----------------------------------------
      0011B7                       3651 _print_author:
                                   3652 ;	lcd.c:839: printf_tiny("\033[1;33m\n\rAuthor Info Printed !!\r\n");
      0011B7 74 65            [12] 3653 	mov	a,#___str_33
      0011B9 C0 E0            [24] 3654 	push	acc
      0011BB 74 2D            [12] 3655 	mov	a,#(___str_33 >> 8)
      0011BD C0 E0            [24] 3656 	push	acc
      0011BF 12 18 80         [24] 3657 	lcall	_printf_tiny
      0011C2 15 81            [12] 3658 	dec	sp
      0011C4 15 81            [12] 3659 	dec	sp
                                   3660 ;	lcd.c:843: str = "Kiran Jojare    ESD Summer 2023 Lab 4           ";
                                   3661 ;	lcd.c:854: }
      0011C6 D2 0B            [12] 3662 	setb	_print_author_sloc0_1_0
      0011C8 10 AF 02         [24] 3663 	jbc	ea,00103$
      0011CB C2 0B            [12] 3664 	clr	_print_author_sloc0_1_0
      0011CD                       3665 00103$:
                                   3666 ;	lcd.c:849: lcdgotoaddr(0x00);
      0011CD 75 82 00         [24] 3667 	mov	dpl,#0x00
      0011D0 12 01 88         [24] 3668 	lcall	_lcdgotoaddr
                                   3669 ;	lcd.c:850: lcdputstr(str);
      0011D3 90 2D 87         [24] 3670 	mov	dptr,#___str_34
      0011D6 75 F0 80         [24] 3671 	mov	b,#0x80
      0011D9 12 02 C1         [24] 3672 	lcall	_lcdputstr
                                   3673 ;	lcd.c:853: lcdgotoaddr(0x00);
      0011DC 75 82 00         [24] 3674 	mov	dpl,#0x00
      0011DF 12 01 88         [24] 3675 	lcall	_lcdgotoaddr
      0011E2 A2 0B            [12] 3676 	mov	c,_print_author_sloc0_1_0
      0011E4 92 AF            [24] 3677 	mov	ea,c
                                   3678 ;	lcd.c:855: return;
                                   3679 ;	lcd.c:856: }
      0011E6 22               [24] 3680 	ret
                                   3681 	.area CSEG    (CODE)
                                   3682 	.area CONST   (CODE)
                                   3683 	.area CONST   (CODE)
      0029E9                       3684 ___str_0:
      0029E9 20 20 20 20 20 20 20  3685 	.ascii "       "
      0029F0 00                    3686 	.db 0x00
                                   3687 	.area CSEG    (CODE)
                                   3688 	.area CONST   (CODE)
      0029F1                       3689 ___str_1:
      0029F1 1B                    3690 	.db 0x1b
      0029F2 5B 31 3B 33 33 6D     3691 	.ascii "[1;33m"
      0029F8 0A                    3692 	.db 0x0a
      0029F9 0D                    3693 	.db 0x0d
      0029FA 4C 43 44 20 43 6C 65  3694 	.ascii "LCD Cleared!!"
             61 72 65 64 21 21
      002A07 0D                    3695 	.db 0x0d
      002A08 0A                    3696 	.db 0x0a
      002A09 00                    3697 	.db 0x00
                                   3698 	.area CSEG    (CODE)
                                   3699 	.area CONST   (CODE)
      002A0A                       3700 ___str_2:
      002A0A 1B                    3701 	.db 0x1b
      002A0B 5B 31 3B 33 33 6D     3702 	.ascii "[1;33m"
      002A11 0A                    3703 	.db 0x0a
      002A12 0D                    3704 	.db 0x0d
      002A13 45 6E 74 65 72 20 43  3705 	.ascii "Enter Character to put on LCD !!"
             68 61 72 61 63 74 65
             72 20 74 6F 20 70 75
             74 20 6F 6E 20 4C 43
             44 20 21 21
      002A33 0D                    3706 	.db 0x0d
      002A34 0A                    3707 	.db 0x0a
      002A35 00                    3708 	.db 0x00
                                   3709 	.area CSEG    (CODE)
                                   3710 	.area CONST   (CODE)
      002A36                       3711 ___str_3:
      002A36 0A                    3712 	.db 0x0a
      002A37 0D                    3713 	.db 0x0d
      002A38 45 6E 74 65 72 65 64  3714 	.ascii "Entered Char = %c"
             20 43 68 61 72 20 3D
             20 25 63
      002A49 0A                    3715 	.db 0x0a
      002A4A 0D                    3716 	.db 0x0d
      002A4B 00                    3717 	.db 0x00
                                   3718 	.area CSEG    (CODE)
                                   3719 	.area CONST   (CODE)
      002A4C                       3720 ___str_4:
      002A4C 0A                    3721 	.db 0x0a
      002A4D 0D                    3722 	.db 0x0d
      002A4E 00                    3723 	.db 0x00
                                   3724 	.area CSEG    (CODE)
                                   3725 	.area CONST   (CODE)
      002A4F                       3726 ___str_5:
      002A4F 1B                    3727 	.db 0x1b
      002A50 5B 31 3B 33 33 6D     3728 	.ascii "[1;33m"
      002A56 0A                    3729 	.db 0x0a
      002A57 0D                    3730 	.db 0x0d
      002A58 45 6E 74 65 72 20 53  3731 	.ascii "Enter String to put on LCD !!"
             74 72 69 6E 67 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002A75 0D                    3732 	.db 0x0d
      002A76 0A                    3733 	.db 0x0a
      002A77 00                    3734 	.db 0x00
                                   3735 	.area CSEG    (CODE)
                                   3736 	.area CONST   (CODE)
      002A78                       3737 ___str_6:
      002A78 45 6E 74 65 72 65 64  3738 	.ascii "Entered String = %s"
             20 53 74 72 69 6E 67
             20 3D 20 25 73
      002A8B 0A                    3739 	.db 0x0a
      002A8C 0D                    3740 	.db 0x0d
      002A8D 00                    3741 	.db 0x00
                                   3742 	.area CSEG    (CODE)
                                   3743 	.area CONST   (CODE)
      002A8E                       3744 ___str_7:
      002A8E 1B                    3745 	.db 0x1b
      002A8F 5B 31 3B 33 33 6D     3746 	.ascii "[1;33m"
      002A95 0A                    3747 	.db 0x0a
      002A96 0D                    3748 	.db 0x0d
      002A97 45 6E 74 65 72 20 58  3749 	.ascii "Enter X-Co-ordinate to put on LCD !!"
             2D 43 6F 2D 6F 72 64
             69 6E 61 74 65 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002ABB 0D                    3750 	.db 0x0d
      002ABC 0A                    3751 	.db 0x0a
      002ABD 00                    3752 	.db 0x00
                                   3753 	.area CSEG    (CODE)
                                   3754 	.area CONST   (CODE)
      002ABE                       3755 ___str_8:
      002ABE 58 2D 43 6F 72 64 69  3756 	.ascii "X-Cordinate = %c"
             6E 61 74 65 20 3D 20
             25 63
      002ACE 0A                    3757 	.db 0x0a
      002ACF 0D                    3758 	.db 0x0d
      002AD0 00                    3759 	.db 0x00
                                   3760 	.area CSEG    (CODE)
                                   3761 	.area CONST   (CODE)
      002AD1                       3762 ___str_9:
      002AD1 1B                    3763 	.db 0x1b
      002AD2 5B 31 3B 33 33 6D     3764 	.ascii "[1;33m"
      002AD8 0A                    3765 	.db 0x0a
      002AD9 0D                    3766 	.db 0x0d
      002ADA 45 6E 74 65 72 20 59  3767 	.ascii "Enter Y-Co-ordinate to put on LCD !!"
             2D 43 6F 2D 6F 72 64
             69 6E 61 74 65 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002AFE 0D                    3768 	.db 0x0d
      002AFF 0A                    3769 	.db 0x0a
      002B00 00                    3770 	.db 0x00
                                   3771 	.area CSEG    (CODE)
                                   3772 	.area CONST   (CODE)
      002B01                       3773 ___str_10:
      002B01 59 2D 43 6F 72 64 69  3774 	.ascii "Y-Cordinate = %c"
             6E 61 74 65 20 3D 20
             25 63
      002B11 0A                    3775 	.db 0x0a
      002B12 0D                    3776 	.db 0x0d
      002B13 00                    3777 	.db 0x00
                                   3778 	.area CSEG    (CODE)
                                   3779 	.area CONST   (CODE)
      002B14                       3780 ___str_11:
      002B14 1B                    3781 	.db 0x1b
      002B15 5B 31 3B 33 31 6D 49  3782 	.ascii "[1;31mInvalid coordinate!!"
             6E 76 61 6C 69 64 20
             63 6F 6F 72 64 69 6E
             61 74 65 21 21
      002B2F 0A                    3783 	.db 0x0a
      002B30 0D                    3784 	.db 0x0d
      002B31 00                    3785 	.db 0x00
                                   3786 	.area CSEG    (CODE)
                                   3787 	.area CONST   (CODE)
      002B32                       3788 ___str_12:
      002B32 1B                    3789 	.db 0x1b
      002B33 5B 31 3B 33 33 6D     3790 	.ascii "[1;33m"
      002B39 0A                    3791 	.db 0x0a
      002B3A 0D                    3792 	.db 0x0d
      002B3B 43 75 72 73 6F 72 20  3793 	.ascii "Cursor Movement Completed!!"
             4D 6F 76 65 6D 65 6E
             74 20 43 6F 6D 70 6C
             65 74 65 64 21 21
      002B56 0D                    3794 	.db 0x0d
      002B57 0A                    3795 	.db 0x0a
      002B58 00                    3796 	.db 0x00
                                   3797 	.area CSEG    (CODE)
                                   3798 	.area CONST   (CODE)
      002B59                       3799 ___str_13:
      002B59 1B                    3800 	.db 0x1b
      002B5A 5B 31 3B 33 33 6D     3801 	.ascii "[1;33m"
      002B60 0A                    3802 	.db 0x0a
      002B61 0D                    3803 	.db 0x0d
      002B62 45 6E 74 65 72 20 61  3804 	.ascii "Enter address to put onto the LCD !!"
             64 64 72 65 73 73 20
             74 6F 20 70 75 74 20
             6F 6E 74 6F 20 74 68
             65 20 4C 43 44 20 21
             21
      002B86 0D                    3805 	.db 0x0d
      002B87 0A                    3806 	.db 0x0a
      002B88 00                    3807 	.db 0x00
                                   3808 	.area CSEG    (CODE)
                                   3809 	.area CONST   (CODE)
      002B89                       3810 ___str_14:
      002B89 41 64 64 72 65 73 73  3811 	.ascii "Address Entered = %s"
             20 45 6E 74 65 72 65
             64 20 3D 20 25 73
      002B9D 0A                    3812 	.db 0x0a
      002B9E 0D                    3813 	.db 0x0d
      002B9F 00                    3814 	.db 0x00
                                   3815 	.area CSEG    (CODE)
                                   3816 	.area CONST   (CODE)
      002BA0                       3817 ___str_15:
      002BA0 1B                    3818 	.db 0x1b
      002BA1 5B 31 3B 33 33 6D     3819 	.ascii "[1;33m"
      002BA7 0A                    3820 	.db 0x0a
      002BA8 0D                    3821 	.db 0x0d
      002BA9 54 69 6D 65 20 50 61  3822 	.ascii "Time Paused !!"
             75 73 65 64 20 21 21
      002BB7 0D                    3823 	.db 0x0d
      002BB8 0A                    3824 	.db 0x0a
      002BB9 00                    3825 	.db 0x00
                                   3826 	.area CSEG    (CODE)
                                   3827 	.area CONST   (CODE)
      002BBA                       3828 ___str_16:
      002BBA 1B                    3829 	.db 0x1b
      002BBB 5B 31 3B 33 33 6D     3830 	.ascii "[1;33m"
      002BC1 0A                    3831 	.db 0x0a
      002BC2 0D                    3832 	.db 0x0d
      002BC3 54 69 6D 65 20 52 65  3833 	.ascii "Time Resumed !!"
             73 75 6D 65 64 20 21
             21
      002BD2 0D                    3834 	.db 0x0d
      002BD3 0A                    3835 	.db 0x0a
      002BD4 00                    3836 	.db 0x00
                                   3837 	.area CSEG    (CODE)
                                   3838 	.area CONST   (CODE)
      002BD5                       3839 ___str_17:
      002BD5 1B                    3840 	.db 0x1b
      002BD6 5B 31 3B 33 33 6D     3841 	.ascii "[1;33m"
      002BDC 0A                    3842 	.db 0x0a
      002BDD 0D                    3843 	.db 0x0d
      002BDE 54 69 6D 65 20 52 65  3844 	.ascii "Time Reset !!"
             73 65 74 20 21 21
      002BEB 0D                    3845 	.db 0x0d
      002BEC 0A                    3846 	.db 0x0a
      002BED 00                    3847 	.db 0x00
                                   3848 	.area CSEG    (CODE)
                                   3849 	.area CONST   (CODE)
      002BEE                       3850 ___str_18:
      002BEE 1B                    3851 	.db 0x1b
      002BEF 5B 31 3B 33 34 6D     3852 	.ascii "[1;34m"
      002BF5 00                    3853 	.db 0x00
                                   3854 	.area CSEG    (CODE)
                                   3855 	.area CONST   (CODE)
      002BF6                       3856 ___str_19:
      002BF6 0A                    3857 	.db 0x0a
      002BF7 0D                    3858 	.db 0x0d
      002BF8 50 72 69 6E 74 69 6E  3859 	.ascii "Printing Hexdump of DDRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 44
             44 52 41 4D
      002C11 0A                    3860 	.db 0x0a
      002C12 0D                    3861 	.db 0x0d
      002C13 00                    3862 	.db 0x00
                                   3863 	.area CSEG    (CODE)
                                   3864 	.area CONST   (CODE)
      002C14                       3865 ___str_20:
      002C14 0A                    3866 	.db 0x0a
      002C15 0D                    3867 	.db 0x0d
      002C16 30 78 25 30 32 78 3A  3868 	.ascii "0x%02x: "
             20
      002C1E 00                    3869 	.db 0x00
                                   3870 	.area CSEG    (CODE)
                                   3871 	.area CONST   (CODE)
      002C1F                       3872 ___str_21:
      002C1F 30 78 25 30 32 78 20  3873 	.ascii "0x%02x "
      002C26 00                    3874 	.db 0x00
                                   3875 	.area CSEG    (CODE)
                                   3876 	.area CONST   (CODE)
      002C27                       3877 ___str_22:
      002C27 0A                    3878 	.db 0x0a
      002C28 0D                    3879 	.db 0x0d
      002C29 0A                    3880 	.db 0x0a
      002C2A 0D                    3881 	.db 0x0d
      002C2B 50 72 69 6E 74 69 6E  3882 	.ascii "Printing Hexdump of CGRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 43
             47 52 41 4D
      002C44 0A                    3883 	.db 0x0a
      002C45 0D                    3884 	.db 0x0d
      002C46 00                    3885 	.db 0x00
                                   3886 	.area CSEG    (CODE)
                                   3887 	.area CONST   (CODE)
      002C47                       3888 ___str_23:
      002C47 1B                    3889 	.db 0x1b
      002C48 5B 30 6D              3890 	.ascii "[0m"
      002C4B 00                    3891 	.db 0x00
                                   3892 	.area CSEG    (CODE)
                                   3893 	.area CONST   (CODE)
      002C4C                       3894 ___str_24:
      002C4C 0A                    3895 	.db 0x0a
      002C4D 0D                    3896 	.db 0x0d
      002C4E 45 6E 74 65 72 20 61  3897 	.ascii "Enter a hexadecimal value between (00 to 1F) or (40 to 58): "
             20 68 65 78 61 64 65
             63 69 6D 61 6C 20 76
             61 6C 75 65 20 62 65
             74 77 65 65 6E 20 28
             30 30 20 74 6F 20 31
             46 29 20 6F 72 20 28
             34 30 20 74 6F 20 35
             38 29 3A 20
      002C8A 00                    3898 	.db 0x00
                                   3899 	.area CSEG    (CODE)
                                   3900 	.area CONST   (CODE)
      002C8B                       3901 ___str_25:
      002C8B 0A                    3902 	.db 0x0a
      002C8C 0D                    3903 	.db 0x0d
      002C8D 49 6E 76 61 6C 69 64  3904 	.ascii "Invalid input. "
             20 69 6E 70 75 74 2E
             20
      002C9C 00                    3905 	.db 0x00
                                   3906 	.area CSEG    (CODE)
                                   3907 	.area CONST   (CODE)
      002C9D                       3908 ___str_26:
      002C9D 50 6C 65 61 73 65 20  3909 	.ascii "Please enter a valid input: "
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             69 6E 70 75 74 3A 20
      002CB9 00                    3910 	.db 0x00
                                   3911 	.area CSEG    (CODE)
                                   3912 	.area CONST   (CODE)
      002CBA                       3913 ___str_27:
      002CBA 0A                    3914 	.db 0x0a
      002CBB 0D                    3915 	.db 0x0d
      002CBC 54 68 65 20 63 75 73  3916 	.ascii "The custom character with code 0x%x has been created."
             74 6F 6D 20 63 68 61
             72 61 63 74 65 72 20
             77 69 74 68 20 63 6F
             64 65 20 30 78 25 78
             20 68 61 73 20 62 65
             65 6E 20 63 72 65 61
             74 65 64 2E
      002CF1 00                    3917 	.db 0x00
                                   3918 	.area CSEG    (CODE)
                                   3919 	.area CONST   (CODE)
      002CF2                       3920 ___str_28:
      002CF2 0A                    3921 	.db 0x0a
      002CF3 0D                    3922 	.db 0x0d
      002CF4 4C 43 44 5F 70 74 72  3923 	.ascii "LCD_ptr = %x"
             20 3D 20 25 78
      002D00 00                    3924 	.db 0x00
                                   3925 	.area CSEG    (CODE)
                                   3926 	.area CONST   (CODE)
      002D01                       3927 ___str_29:
      002D01 1B                    3928 	.db 0x1b
      002D02 5B 30 3B 33 33 6D     3929 	.ascii "[0;33m"
      002D08 00                    3930 	.db 0x00
                                   3931 	.area CSEG    (CODE)
                                   3932 	.area CONST   (CODE)
      002D09                       3933 ___str_30:
      002D09 50 6C 65 61 73 65 20  3934 	.ascii "Please enter the code for the custom character: "
             65 6E 74 65 72 20 74
             68 65 20 63 6F 64 65
             20 66 6F 72 20 74 68
             65 20 63 75 73 74 6F
             6D 20 63 68 61 72 61
             63 74 65 72 3A 20
      002D39 00                    3935 	.db 0x00
                                   3936 	.area CSEG    (CODE)
                                   3937 	.area CONST   (CODE)
      002D3A                       3938 ___str_31:
      002D3A 25 63                 3939 	.ascii "%c"
      002D3C 0A                    3940 	.db 0x0a
      002D3D 0D                    3941 	.db 0x0d
      002D3E 00                    3942 	.db 0x00
                                   3943 	.area CSEG    (CODE)
                                   3944 	.area CONST   (CODE)
      002D3F                       3945 ___str_32:
      002D3F 0A                    3946 	.db 0x0a
      002D40 0D                    3947 	.db 0x0d
      002D41 50 6C 65 61 73 65 20  3948 	.ascii "Please enter the value for row %d: "
             65 6E 74 65 72 20 74
             68 65 20 76 61 6C 75
             65 20 66 6F 72 20 72
             6F 77 20 25 64 3A 20
      002D64 00                    3949 	.db 0x00
                                   3950 	.area CSEG    (CODE)
                                   3951 	.area CONST   (CODE)
      002D65                       3952 ___str_33:
      002D65 1B                    3953 	.db 0x1b
      002D66 5B 31 3B 33 33 6D     3954 	.ascii "[1;33m"
      002D6C 0A                    3955 	.db 0x0a
      002D6D 0D                    3956 	.db 0x0d
      002D6E 41 75 74 68 6F 72 20  3957 	.ascii "Author Info Printed !!"
             49 6E 66 6F 20 50 72
             69 6E 74 65 64 20 21
             21
      002D84 0D                    3958 	.db 0x0d
      002D85 0A                    3959 	.db 0x0a
      002D86 00                    3960 	.db 0x00
                                   3961 	.area CSEG    (CODE)
                                   3962 	.area CONST   (CODE)
      002D87                       3963 ___str_34:
      002D87 4B 69 72 61 6E 20 4A  3964 	.ascii "Kiran Jojare    ESD Summer 2023 Lab 4           "
             6F 6A 61 72 65 20 20
             20 20 45 53 44 20 53
             75 6D 6D 65 72 20 32
             30 32 33 20 4C 61 62
             20 34 20 20 20 20 20
             20 20 20 20 20 20
      002DB7 00                    3965 	.db 0x00
                                   3966 	.area CSEG    (CODE)
                                   3967 	.area XINIT   (CODE)
      002F61                       3968 __xinit__save_cursor_address:
      002F61 00                    3969 	.db #0x00	; 0
                                   3970 	.area CABS    (ABS,CODE)
