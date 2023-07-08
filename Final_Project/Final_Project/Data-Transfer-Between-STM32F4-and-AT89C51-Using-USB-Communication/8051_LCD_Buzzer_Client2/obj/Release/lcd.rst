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
      000402                        513 _string::
      000402                        514 	.ds 3
      000405                        515 _delay_milliseconds_65536_92:
      000405                        516 	.ds 2
      000407                        517 _lcdgotoaddr_address_65536_104:
      000407                        518 	.ds 1
      000408                        519 _lcdgotoxy_PARM_2:
      000408                        520 	.ds 1
      000409                        521 _lcdgotoxy_row_65536_106:
      000409                        522 	.ds 1
      00040A                        523 _lcdgotoxy_address_65536_107:
      00040A                        524 	.ds 1
      00040B                        525 _lcdputch_cc_65536_114:
      00040B                        526 	.ds 1
      00040C                        527 _lcdputstr_ss_65536_117:
      00040C                        528 	.ds 3
      00040F                        529 _handler_wr_str_lcd_k_65537_127:
      00040F                        530 	.ds 2
      000411                        531 _handler_lcdgotoaddress_str_65536_140:
      000411                        532 	.ds 50
      000443                        533 _handler_lcdgotoaddress_c_65537_141:
      000443                        534 	.ds 1
      000444                        535 _read_lcd_address_PARM_2:
      000444                        536 	.ds 1
      000445                        537 _read_lcd_address_is_ddram_65536_151:
      000445                        538 	.ds 1
      000446                        539 _get_hex_value_hex_value_65536_165:
      000446                        540 	.ds 1
      000447                        541 _create_custom_char_PARM_2:
      000447                        542 	.ds 3
      00044A                        543 _create_custom_char_char_code_65536_170:
      00044A                        544 	.ds 1
      00044B                        545 _handler_custom_char_row_values_65539_178:
      00044B                        546 	.ds 8
      000453                        547 _handle_cu_custom_char_row_vals1_65537_183:
      000453                        548 	.ds 8
      00045B                        549 _handle_cu_custom_char_row_vals2_65538_185:
      00045B                        550 	.ds 8
      000463                        551 _handle_cu_custom_char_row_vals3_65539_187:
      000463                        552 	.ds 8
      00046B                        553 _handle_cu_custom_char_row_vals4_65540_189:
      00046B                        554 	.ds 8
      000473                        555 _handle_sadsmiley_custom_char_row_vals1_65537_193:
      000473                        556 	.ds 8
      00047B                        557 _handle_sadsmiley_custom_char_row_vals2_65538_195:
      00047B                        558 	.ds 8
      000483                        559 _handle_sadsmiley_custom_char_row_vals3_65539_197:
      000483                        560 	.ds 8
      00048B                        561 _handle_sadsmiley_custom_char_row_vals4_65540_199:
      00048B                        562 	.ds 8
      000493                        563 _handle_lock_custom_char_row_vals1_65536_202:
      000493                        564 	.ds 8
      00049B                        565 _handle_lock_custom_char_row_vals2_65537_204:
      00049B                        566 	.ds 8
      0004A3                        567 _handle_lock_custom_char_row_vals3_65538_206:
      0004A3                        568 	.ds 8
      0004AB                        569 _handle_lock_custom_char_row_vals4_65539_208:
      0004AB                        570 	.ds 8
      0004B3                        571 _handle_unlock_custom_char_row_vals1_65536_211:
      0004B3                        572 	.ds 8
      0004BB                        573 _handle_unlock_custom_char_row_vals2_65537_213:
      0004BB                        574 	.ds 8
      0004C3                        575 _handle_unlock_custom_char_row_vals3_65538_215:
      0004C3                        576 	.ds 8
      0004CB                        577 _handle_unlock_custom_char_row_vals4_65539_217:
      0004CB                        578 	.ds 8
      0004D3                        579 _handle_newuser_custom_char_row_vals1_65536_220:
      0004D3                        580 	.ds 8
      0004DB                        581 _handle_newuser_custom_char_row_vals2_65537_222:
      0004DB                        582 	.ds 8
      0004E3                        583 _handle_newuser_custom_char_row_vals3_65538_224:
      0004E3                        584 	.ds 8
      0004EB                        585 _handle_newuser_custom_char_row_vals4_65539_226:
      0004EB                        586 	.ds 8
                                    587 ;--------------------------------------------------------
                                    588 ; absolute external ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XABS    (ABS,XDATA)
                                    591 ;--------------------------------------------------------
                                    592 ; external initialized ram data
                                    593 ;--------------------------------------------------------
                                    594 	.area XISEG   (XDATA)
      000576                        595 _save_cursor_address::
      000576                        596 	.ds 1
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
      00013A                        633 _delay:
                           000007   634 	ar7 = 0x07
                           000006   635 	ar6 = 0x06
                           000005   636 	ar5 = 0x05
                           000004   637 	ar4 = 0x04
                           000003   638 	ar3 = 0x03
                           000002   639 	ar2 = 0x02
                           000001   640 	ar1 = 0x01
                           000000   641 	ar0 = 0x00
      00013A AF 83            [24]  642 	mov	r7,dph
      00013C E5 82            [12]  643 	mov	a,dpl
      00013E 90 04 05         [24]  644 	mov	dptr,#_delay_milliseconds_65536_92
      000141 F0               [24]  645 	movx	@dptr,a
      000142 EF               [12]  646 	mov	a,r7
      000143 A3               [24]  647 	inc	dptr
      000144 F0               [24]  648 	movx	@dptr,a
                                    649 ;	lcd.c:80: for(int i = 0; i < milliseconds * COUNT_ONE_MILLISECOND; i++);
      000145 90 04 05         [24]  650 	mov	dptr,#_delay_milliseconds_65536_92
      000148 E0               [24]  651 	movx	a,@dptr
      000149 FE               [12]  652 	mov	r6,a
      00014A A3               [24]  653 	inc	dptr
      00014B E0               [24]  654 	movx	a,@dptr
      00014C FF               [12]  655 	mov	r7,a
      00014D 90 05 15         [24]  656 	mov	dptr,#__mulint_PARM_2
      000150 EE               [12]  657 	mov	a,r6
      000151 F0               [24]  658 	movx	@dptr,a
      000152 EF               [12]  659 	mov	a,r7
      000153 A3               [24]  660 	inc	dptr
      000154 F0               [24]  661 	movx	@dptr,a
      000155 90 00 52         [24]  662 	mov	dptr,#0x0052
      000158 12 1A 20         [24]  663 	lcall	__mulint
      00015B AE 82            [24]  664 	mov	r6,dpl
      00015D AF 83            [24]  665 	mov	r7,dph
      00015F 7C 00            [12]  666 	mov	r4,#0x00
      000161 7D 00            [12]  667 	mov	r5,#0x00
      000163                        668 00103$:
      000163 C3               [12]  669 	clr	c
      000164 EC               [12]  670 	mov	a,r4
      000165 9E               [12]  671 	subb	a,r6
      000166 ED               [12]  672 	mov	a,r5
      000167 64 80            [12]  673 	xrl	a,#0x80
      000169 8F F0            [24]  674 	mov	b,r7
      00016B 63 F0 80         [24]  675 	xrl	b,#0x80
      00016E 95 F0            [12]  676 	subb	a,b
      000170 50 07            [24]  677 	jnc	00105$
      000172 0C               [12]  678 	inc	r4
      000173 BC 00 ED         [24]  679 	cjne	r4,#0x00,00103$
      000176 0D               [12]  680 	inc	r5
      000177 80 EA            [24]  681 	sjmp	00103$
      000179                        682 00105$:
                                    683 ;	lcd.c:81: }
      000179 22               [24]  684 	ret
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
      00017A                        695 _lcdbusywait:
                                    696 ;	lcd.c:94: LCD_RS = 0;
                                    697 ;	assignBit
      00017A C2 92            [12]  698 	clr	_P1_2
                                    699 ;	lcd.c:95: LCD_RW = 1;
                                    700 ;	assignBit
      00017C D2 93            [12]  701 	setb	_P1_3
                                    702 ;	lcd.c:98: while ((* (volatile uint8_t *) COMMAND_ADDRESS) & BUSY_FLAG_MASK)
      00017E                        703 00101$:
      00017E 90 F0 00         [24]  704 	mov	dptr,#0xf000
      000181 75 F0 00         [24]  705 	mov	b,#0x00
      000184 12 29 F8         [24]  706 	lcall	__gptrget
      000187 30 E7 08         [24]  707 	jnb	acc.7,00104$
                                    708 ;	lcd.c:101: delay(10);
      00018A 90 00 0A         [24]  709 	mov	dptr,#0x000a
      00018D 12 01 3A         [24]  710 	lcall	_delay
      000190 80 EC            [24]  711 	sjmp	00101$
      000192                        712 00104$:
                                    713 ;	lcd.c:103: }
      000192 22               [24]  714 	ret
                                    715 ;------------------------------------------------------------
                                    716 ;Allocation info for local variables in function 'set_time_variables'
                                    717 ;------------------------------------------------------------
                                    718 ;	lcd.c:106: void set_time_variables(void)
                                    719 ;	-----------------------------------------
                                    720 ;	 function set_time_variables
                                    721 ;	-----------------------------------------
      000193                        722 _set_time_variables:
                                    723 ;	lcd.c:109: tenth_of_second     = '0';
      000193 90 05 79         [24]  724 	mov	dptr,#_tenth_of_second
      000196 74 30            [12]  725 	mov	a,#0x30
      000198 F0               [24]  726 	movx	@dptr,a
                                    727 ;	lcd.c:110: seconds_ones_digit  = '0';
      000199 90 05 7A         [24]  728 	mov	dptr,#_seconds_ones_digit
      00019C F0               [24]  729 	movx	@dptr,a
                                    730 ;	lcd.c:111: seconds_tens_digit  = '0';
      00019D 90 05 7B         [24]  731 	mov	dptr,#_seconds_tens_digit
      0001A0 F0               [24]  732 	movx	@dptr,a
                                    733 ;	lcd.c:112: minutes_ones_digit  = '0';
      0001A1 90 05 7C         [24]  734 	mov	dptr,#_minutes_ones_digit
      0001A4 F0               [24]  735 	movx	@dptr,a
                                    736 ;	lcd.c:113: minutes_tens_digit  = '0';
      0001A5 90 05 7D         [24]  737 	mov	dptr,#_minutes_tens_digit
      0001A8 F0               [24]  738 	movx	@dptr,a
                                    739 ;	lcd.c:114: }
      0001A9 22               [24]  740 	ret
                                    741 ;------------------------------------------------------------
                                    742 ;Allocation info for local variables in function 'init_lcd'
                                    743 ;------------------------------------------------------------
                                    744 ;	lcd.c:116: void init_lcd(void){
                                    745 ;	-----------------------------------------
                                    746 ;	 function init_lcd
                                    747 ;	-----------------------------------------
      0001AA                        748 _init_lcd:
                                    749 ;	lcd.c:118: LCD_RS = 0;
                                    750 ;	assignBit
      0001AA C2 92            [12]  751 	clr	_P1_2
                                    752 ;	lcd.c:119: LCD_RW = 0;
                                    753 ;	assignBit
      0001AC C2 93            [12]  754 	clr	_P1_3
                                    755 ;	lcd.c:121: delay(160);
      0001AE 90 00 A0         [24]  756 	mov	dptr,#0x00a0
      0001B1 12 01 3A         [24]  757 	lcall	_delay
                                    758 ;	lcd.c:124: lcd_ptr = 0x30;
      0001B4 90 F0 00         [24]  759 	mov	dptr,#_lcd_ptr
      0001B7 74 30            [12]  760 	mov	a,#0x30
      0001B9 F0               [24]  761 	movx	@dptr,a
                                    762 ;	lcd.c:126: delay(170);
      0001BA 90 00 AA         [24]  763 	mov	dptr,#0x00aa
      0001BD 12 01 3A         [24]  764 	lcall	_delay
                                    765 ;	lcd.c:128: lcd_ptr = 0x30;
      0001C0 90 F0 00         [24]  766 	mov	dptr,#_lcd_ptr
      0001C3 74 30            [12]  767 	mov	a,#0x30
      0001C5 F0               [24]  768 	movx	@dptr,a
                                    769 ;	lcd.c:130: delay(150);
      0001C6 90 00 96         [24]  770 	mov	dptr,#0x0096
      0001C9 12 01 3A         [24]  771 	lcall	_delay
                                    772 ;	lcd.c:133: lcd_ptr = 0x30;
      0001CC 90 F0 00         [24]  773 	mov	dptr,#_lcd_ptr
      0001CF 74 30            [12]  774 	mov	a,#0x30
      0001D1 F0               [24]  775 	movx	@dptr,a
                                    776 ;	lcd.c:135: lcdbusywait();
      0001D2 12 01 7A         [24]  777 	lcall	_lcdbusywait
                                    778 ;	lcd.c:137: LCD_RS = 0;
                                    779 ;	assignBit
      0001D5 C2 92            [12]  780 	clr	_P1_2
                                    781 ;	lcd.c:138: LCD_RW = 0;
                                    782 ;	assignBit
      0001D7 C2 93            [12]  783 	clr	_P1_3
                                    784 ;	lcd.c:140: lcd_ptr = 0x38;
      0001D9 90 F0 00         [24]  785 	mov	dptr,#_lcd_ptr
      0001DC 74 38            [12]  786 	mov	a,#0x38
      0001DE F0               [24]  787 	movx	@dptr,a
                                    788 ;	lcd.c:142: lcdbusywait();
      0001DF 12 01 7A         [24]  789 	lcall	_lcdbusywait
                                    790 ;	lcd.c:145: LCD_RS = 0;
                                    791 ;	assignBit
      0001E2 C2 92            [12]  792 	clr	_P1_2
                                    793 ;	lcd.c:146: LCD_RW = 0;
                                    794 ;	assignBit
      0001E4 C2 93            [12]  795 	clr	_P1_3
                                    796 ;	lcd.c:148: lcd_ptr = 0x0F;
      0001E6 90 F0 00         [24]  797 	mov	dptr,#_lcd_ptr
      0001E9 74 0F            [12]  798 	mov	a,#0x0f
      0001EB F0               [24]  799 	movx	@dptr,a
                                    800 ;	lcd.c:150: lcdbusywait();
      0001EC 12 01 7A         [24]  801 	lcall	_lcdbusywait
                                    802 ;	lcd.c:153: LCD_RS = 0;
                                    803 ;	assignBit
      0001EF C2 92            [12]  804 	clr	_P1_2
                                    805 ;	lcd.c:154: LCD_RW = 0;
                                    806 ;	assignBit
      0001F1 C2 93            [12]  807 	clr	_P1_3
                                    808 ;	lcd.c:156: lcd_ptr = 0x01;
      0001F3 90 F0 00         [24]  809 	mov	dptr,#_lcd_ptr
      0001F6 74 01            [12]  810 	mov	a,#0x01
      0001F8 F0               [24]  811 	movx	@dptr,a
                                    812 ;	lcd.c:158: lcdbusywait();
      0001F9 12 01 7A         [24]  813 	lcall	_lcdbusywait
                                    814 ;	lcd.c:161: LCD_RS = 0;
                                    815 ;	assignBit
      0001FC C2 92            [12]  816 	clr	_P1_2
                                    817 ;	lcd.c:162: LCD_RW = 0;
                                    818 ;	assignBit
      0001FE C2 93            [12]  819 	clr	_P1_3
                                    820 ;	lcd.c:164: lcd_ptr = 0x06;
      000200 90 F0 00         [24]  821 	mov	dptr,#_lcd_ptr
      000203 74 06            [12]  822 	mov	a,#0x06
      000205 F0               [24]  823 	movx	@dptr,a
                                    824 ;	lcd.c:166: lcdbusywait();
      000206 12 01 7A         [24]  825 	lcall	_lcdbusywait
                                    826 ;	lcd.c:169: set_time_variables();
                                    827 ;	lcd.c:170: }
      000209 02 01 93         [24]  828 	ljmp	_set_time_variables
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'get_cursor_address'
                                    831 ;------------------------------------------------------------
                                    832 ;address                   Allocated with name '_get_cursor_address_address_65537_103'
                                    833 ;------------------------------------------------------------
                                    834 ;	lcd.c:173: uint8_t get_cursor_address(){
                                    835 ;	-----------------------------------------
                                    836 ;	 function get_cursor_address
                                    837 ;	-----------------------------------------
      00020C                        838 _get_cursor_address:
                                    839 ;	lcd.c:174: LCD_RS = 0; // Set RS pin low
                                    840 ;	assignBit
      00020C C2 92            [12]  841 	clr	_P1_2
                                    842 ;	lcd.c:175: LCD_RW = 1; // Set RW pin high
                                    843 ;	assignBit
      00020E D2 93            [12]  844 	setb	_P1_3
                                    845 ;	lcd.c:177: uint8_t address = lcd_ptr & (~0x80); // Mask out the MSB of lcd_ptr and assign it to address
      000210 90 F0 00         [24]  846 	mov	dptr,#_lcd_ptr
      000213 E0               [24]  847 	movx	a,@dptr
      000214 54 7F            [12]  848 	anl	a,#0x7f
                                    849 ;	lcd.c:178: return address; // Return the address
                                    850 ;	lcd.c:179: }
      000216 F5 82            [12]  851 	mov	dpl,a
      000218 22               [24]  852 	ret
                                    853 ;------------------------------------------------------------
                                    854 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    855 ;------------------------------------------------------------
                                    856 ;address                   Allocated with name '_lcdgotoaddr_address_65536_104'
                                    857 ;------------------------------------------------------------
                                    858 ;	lcd.c:182: void lcdgotoaddr(unsigned char address){
                                    859 ;	-----------------------------------------
                                    860 ;	 function lcdgotoaddr
                                    861 ;	-----------------------------------------
      000219                        862 _lcdgotoaddr:
      000219 E5 82            [12]  863 	mov	a,dpl
      00021B 90 04 07         [24]  864 	mov	dptr,#_lcdgotoaddr_address_65536_104
      00021E F0               [24]  865 	movx	@dptr,a
                                    866 ;	lcd.c:183: LCD_RS = 0; // Set RS pin low
                                    867 ;	assignBit
      00021F C2 92            [12]  868 	clr	_P1_2
                                    869 ;	lcd.c:184: LCD_RW = 0; // Set RW pin low
                                    870 ;	assignBit
      000221 C2 93            [12]  871 	clr	_P1_3
                                    872 ;	lcd.c:186: address = address | 0x80; // Set the MSB of address to 1
      000223 90 04 07         [24]  873 	mov	dptr,#_lcdgotoaddr_address_65536_104
      000226 E0               [24]  874 	movx	a,@dptr
      000227 43 E0 80         [24]  875 	orl	acc,#0x80
      00022A F0               [24]  876 	movx	@dptr,a
                                    877 ;	lcd.c:187: lcd_ptr = address; // Assign the address to lcd_ptr
      00022B 90 04 07         [24]  878 	mov	dptr,#_lcdgotoaddr_address_65536_104
      00022E E0               [24]  879 	movx	a,@dptr
      00022F 90 F0 00         [24]  880 	mov	dptr,#_lcd_ptr
      000232 F0               [24]  881 	movx	@dptr,a
                                    882 ;	lcd.c:188: lcdbusywait(); // Wait for the LCD to be not busy
                                    883 ;	lcd.c:189: }
      000233 02 01 7A         [24]  884 	ljmp	_lcdbusywait
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
      000236                        896 _lcdgotoxy:
      000236 E5 82            [12]  897 	mov	a,dpl
      000238 90 04 09         [24]  898 	mov	dptr,#_lcdgotoxy_row_65536_106
      00023B F0               [24]  899 	movx	@dptr,a
                                    900 ;	lcd.c:194: switch (row) {          // Select address based on the row number
      00023C E0               [24]  901 	movx	a,@dptr
      00023D FF               [12]  902 	mov	r7,a
      00023E E4               [12]  903 	clr	a
      00023F BF 30 01         [24]  904 	cjne	r7,#0x30,00173$
      000242 04               [12]  905 	inc	a
      000243                        906 00173$:
      000243 FE               [12]  907 	mov	r6,a
      000244 70 0F            [24]  908 	jnz	00101$
      000246 BF 31 02         [24]  909 	cjne	r7,#0x31,00176$
      000249 80 11            [24]  910 	sjmp	00102$
      00024B                        911 00176$:
      00024B BF 32 02         [24]  912 	cjne	r7,#0x32,00177$
      00024E 80 14            [24]  913 	sjmp	00103$
      000250                        914 00177$:
                                    915 ;	lcd.c:195: case '0':
      000250 BF 33 21         [24]  916 	cjne	r7,#0x33,00105$
      000253 80 17            [24]  917 	sjmp	00104$
      000255                        918 00101$:
                                    919 ;	lcd.c:196: address = (0x00);
      000255 90 04 0A         [24]  920 	mov	dptr,#_lcdgotoxy_address_65536_107
      000258 E4               [12]  921 	clr	a
      000259 F0               [24]  922 	movx	@dptr,a
                                    923 ;	lcd.c:197: break;
                                    924 ;	lcd.c:198: case '1':
      00025A 80 1D            [24]  925 	sjmp	00106$
      00025C                        926 00102$:
                                    927 ;	lcd.c:199: address = (0x40);
      00025C 90 04 0A         [24]  928 	mov	dptr,#_lcdgotoxy_address_65536_107
      00025F 74 40            [12]  929 	mov	a,#0x40
      000261 F0               [24]  930 	movx	@dptr,a
                                    931 ;	lcd.c:200: break;
                                    932 ;	lcd.c:201: case '2':
      000262 80 15            [24]  933 	sjmp	00106$
      000264                        934 00103$:
                                    935 ;	lcd.c:202: address = (0x10);
      000264 90 04 0A         [24]  936 	mov	dptr,#_lcdgotoxy_address_65536_107
      000267 74 10            [12]  937 	mov	a,#0x10
      000269 F0               [24]  938 	movx	@dptr,a
                                    939 ;	lcd.c:203: break;
                                    940 ;	lcd.c:204: case '3':
      00026A 80 0D            [24]  941 	sjmp	00106$
      00026C                        942 00104$:
                                    943 ;	lcd.c:205: address = (0x50);
      00026C 90 04 0A         [24]  944 	mov	dptr,#_lcdgotoxy_address_65536_107
      00026F 74 50            [12]  945 	mov	a,#0x50
      000271 F0               [24]  946 	movx	@dptr,a
                                    947 ;	lcd.c:206: break;
                                    948 ;	lcd.c:207: default:
      000272 80 05            [24]  949 	sjmp	00106$
      000274                        950 00105$:
                                    951 ;	lcd.c:208: address = (0x00);
      000274 90 04 0A         [24]  952 	mov	dptr,#_lcdgotoxy_address_65536_107
      000277 E4               [12]  953 	clr	a
      000278 F0               [24]  954 	movx	@dptr,a
                                    955 ;	lcd.c:210: }
      000279                        956 00106$:
                                    957 ;	lcd.c:212: if (row == '0' && column == '4') {
      000279 EE               [12]  958 	mov	a,r6
      00027A 60 12            [24]  959 	jz	00120$
      00027C 90 04 08         [24]  960 	mov	dptr,#_lcdgotoxy_PARM_2
      00027F E0               [24]  961 	movx	a,@dptr
      000280 FF               [12]  962 	mov	r7,a
      000281 BF 34 0A         [24]  963 	cjne	r7,#0x34,00120$
                                    964 ;	lcd.c:213: address |= 0x04;
      000284 90 04 0A         [24]  965 	mov	dptr,#_lcdgotoxy_address_65536_107
      000287 E0               [24]  966 	movx	a,@dptr
      000288 43 E0 04         [24]  967 	orl	acc,#0x04
      00028B F0               [24]  968 	movx	@dptr,a
      00028C 80 55            [24]  969 	sjmp	00121$
      00028E                        970 00120$:
                                    971 ;	lcd.c:215: else if (row == '4' && column == '0') {
      00028E 90 04 09         [24]  972 	mov	dptr,#_lcdgotoxy_row_65536_106
      000291 E0               [24]  973 	movx	a,@dptr
      000292 FF               [12]  974 	mov	r7,a
      000293 BF 34 12         [24]  975 	cjne	r7,#0x34,00116$
      000296 90 04 08         [24]  976 	mov	dptr,#_lcdgotoxy_PARM_2
      000299 E0               [24]  977 	movx	a,@dptr
      00029A FF               [12]  978 	mov	r7,a
      00029B BF 30 0A         [24]  979 	cjne	r7,#0x30,00116$
                                    980 ;	lcd.c:216: address |= 0x40;
      00029E 90 04 0A         [24]  981 	mov	dptr,#_lcdgotoxy_address_65536_107
      0002A1 E0               [24]  982 	movx	a,@dptr
      0002A2 43 E0 40         [24]  983 	orl	acc,#0x40
      0002A5 F0               [24]  984 	movx	@dptr,a
      0002A6 80 3B            [24]  985 	sjmp	00121$
      0002A8                        986 00116$:
                                    987 ;	lcd.c:218: else if (column >= 'A' && column <= 'F') {
      0002A8 90 04 08         [24]  988 	mov	dptr,#_lcdgotoxy_PARM_2
      0002AB E0               [24]  989 	movx	a,@dptr
      0002AC FF               [12]  990 	mov	r7,a
      0002AD BF 41 00         [24]  991 	cjne	r7,#0x41,00186$
      0002B0                        992 00186$:
      0002B0 40 13            [24]  993 	jc	00112$
      0002B2 EF               [12]  994 	mov	a,r7
      0002B3 24 B9            [12]  995 	add	a,#0xff - 0x46
      0002B5 40 0E            [24]  996 	jc	00112$
                                    997 ;	lcd.c:219: address |= (column - '7');
      0002B7 8F 06            [24]  998 	mov	ar6,r7
      0002B9 EE               [12]  999 	mov	a,r6
      0002BA 24 C9            [12] 1000 	add	a,#0xc9
      0002BC FE               [12] 1001 	mov	r6,a
      0002BD 90 04 0A         [24] 1002 	mov	dptr,#_lcdgotoxy_address_65536_107
      0002C0 E0               [24] 1003 	movx	a,@dptr
      0002C1 4E               [12] 1004 	orl	a,r6
      0002C2 F0               [24] 1005 	movx	@dptr,a
      0002C3 80 1E            [24] 1006 	sjmp	00121$
      0002C5                       1007 00112$:
                                   1008 ;	lcd.c:221: else if (column >= '0' && column <= '9') {
      0002C5 BF 30 00         [24] 1009 	cjne	r7,#0x30,00189$
      0002C8                       1010 00189$:
      0002C8 40 11            [24] 1011 	jc	00108$
      0002CA EF               [12] 1012 	mov	a,r7
      0002CB 24 C6            [12] 1013 	add	a,#0xff - 0x39
      0002CD 40 0C            [24] 1014 	jc	00108$
                                   1015 ;	lcd.c:222: address |= (column - '0');
      0002CF EF               [12] 1016 	mov	a,r7
      0002D0 24 D0            [12] 1017 	add	a,#0xd0
      0002D2 FF               [12] 1018 	mov	r7,a
      0002D3 90 04 0A         [24] 1019 	mov	dptr,#_lcdgotoxy_address_65536_107
      0002D6 E0               [24] 1020 	movx	a,@dptr
      0002D7 4F               [12] 1021 	orl	a,r7
      0002D8 F0               [24] 1022 	movx	@dptr,a
      0002D9 80 08            [24] 1023 	sjmp	00121$
      0002DB                       1024 00108$:
                                   1025 ;	lcd.c:225: address |= ('8' - 48);
      0002DB 90 04 0A         [24] 1026 	mov	dptr,#_lcdgotoxy_address_65536_107
      0002DE E0               [24] 1027 	movx	a,@dptr
      0002DF 43 E0 08         [24] 1028 	orl	acc,#0x08
      0002E2 F0               [24] 1029 	movx	@dptr,a
      0002E3                       1030 00121$:
                                   1031 ;	lcd.c:227: lcdgotoaddr(address);   // Call lcdgotoaddr function with the calculated address
      0002E3 90 04 0A         [24] 1032 	mov	dptr,#_lcdgotoxy_address_65536_107
      0002E6 E0               [24] 1033 	movx	a,@dptr
      0002E7 F5 82            [12] 1034 	mov	dpl,a
      0002E9 12 02 19         [24] 1035 	lcall	_lcdgotoaddr
                                   1036 ;	lcd.c:228: lcdbusywait();          // Wait for the LCD to be not busy
                                   1037 ;	lcd.c:229: }
      0002EC 02 01 7A         [24] 1038 	ljmp	_lcdbusywait
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
      0002EF                       1049 _lcdputch:
      0002EF E5 82            [12] 1050 	mov	a,dpl
      0002F1 90 04 0B         [24] 1051 	mov	dptr,#_lcdputch_cc_65536_114
      0002F4 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	lcd.c:233: unsigned char cursor_address = get_cursor_address(); // get the current cursor address
      0002F5 12 02 0C         [24] 1054 	lcall	_get_cursor_address
      0002F8 AF 82            [24] 1055 	mov	r7,dpl
                                   1056 ;	lcd.c:234: LCD_RS=1;       // set the RS pin high to send data
                                   1057 ;	assignBit
      0002FA D2 92            [12] 1058 	setb	_P1_2
                                   1059 ;	lcd.c:235: LCD_RW=0;       // set the RW pin low to write to the LCD
                                   1060 ;	assignBit
      0002FC C2 93            [12] 1061 	clr	_P1_3
                                   1062 ;	lcd.c:236: lcd_ptr=cc;     // put the character to the LCD data bus
      0002FE 90 04 0B         [24] 1063 	mov	dptr,#_lcdputch_cc_65536_114
      000301 E0               [24] 1064 	movx	a,@dptr
      000302 90 F0 00         [24] 1065 	mov	dptr,#_lcd_ptr
      000305 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	lcd.c:237: lcdbusywait();  // wait until the LCD is not busy
      000306 C0 07            [24] 1068 	push	ar7
      000308 12 01 7A         [24] 1069 	lcall	_lcdbusywait
      00030B D0 07            [24] 1070 	pop	ar7
                                   1071 ;	lcd.c:240: switch(cursor_address) {
      00030D BF 0F 02         [24] 1072 	cjne	r7,#0x0f,00124$
      000310 80 0F            [24] 1073 	sjmp	00101$
      000312                       1074 00124$:
      000312 BF 1F 02         [24] 1075 	cjne	r7,#0x1f,00125$
      000315 80 22            [24] 1076 	sjmp	00103$
      000317                       1077 00125$:
      000317 BF 4F 02         [24] 1078 	cjne	r7,#0x4f,00126$
      00031A 80 11            [24] 1079 	sjmp	00102$
      00031C                       1080 00126$:
                                   1081 ;	lcd.c:241: case 0x0F:
      00031C BF 5F 32         [24] 1082 	cjne	r7,#0x5f,00106$
      00031F 80 24            [24] 1083 	sjmp	00104$
      000321                       1084 00101$:
                                   1085 ;	lcd.c:242: lcdgotoxy('1', '0');
      000321 90 04 08         [24] 1086 	mov	dptr,#_lcdgotoxy_PARM_2
      000324 74 30            [12] 1087 	mov	a,#0x30
      000326 F0               [24] 1088 	movx	@dptr,a
      000327 75 82 31         [24] 1089 	mov	dpl,#0x31
                                   1090 ;	lcd.c:243: break;
                                   1091 ;	lcd.c:244: case 0x4F:
      00032A 02 02 36         [24] 1092 	ljmp	_lcdgotoxy
      00032D                       1093 00102$:
                                   1094 ;	lcd.c:245: lcdgotoxy('2', '0');
      00032D 90 04 08         [24] 1095 	mov	dptr,#_lcdgotoxy_PARM_2
      000330 74 30            [12] 1096 	mov	a,#0x30
      000332 F0               [24] 1097 	movx	@dptr,a
      000333 75 82 32         [24] 1098 	mov	dpl,#0x32
                                   1099 ;	lcd.c:246: break;
                                   1100 ;	lcd.c:247: case 0x1F:
      000336 02 02 36         [24] 1101 	ljmp	_lcdgotoxy
      000339                       1102 00103$:
                                   1103 ;	lcd.c:248: lcdgotoxy('0', '0');
      000339 90 04 08         [24] 1104 	mov	dptr,#_lcdgotoxy_PARM_2
      00033C 74 30            [12] 1105 	mov	a,#0x30
      00033E F0               [24] 1106 	movx	@dptr,a
      00033F 75 82 30         [24] 1107 	mov	dpl,#0x30
                                   1108 ;	lcd.c:249: break;
                                   1109 ;	lcd.c:250: case 0x5F:
      000342 02 02 36         [24] 1110 	ljmp	_lcdgotoxy
      000345                       1111 00104$:
                                   1112 ;	lcd.c:251: lcdgotoxy('0', '0');
      000345 90 04 08         [24] 1113 	mov	dptr,#_lcdgotoxy_PARM_2
      000348 74 30            [12] 1114 	mov	a,#0x30
      00034A F0               [24] 1115 	movx	@dptr,a
      00034B 75 82 30         [24] 1116 	mov	dpl,#0x30
                                   1117 ;	lcd.c:253: }
                                   1118 ;	lcd.c:254: }
      00034E 02 02 36         [24] 1119 	ljmp	_lcdgotoxy
      000351                       1120 00106$:
      000351 22               [24] 1121 	ret
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
      000352                       1132 _lcdputstr:
      000352 AF F0            [24] 1133 	mov	r7,b
      000354 AE 83            [24] 1134 	mov	r6,dph
      000356 E5 82            [12] 1135 	mov	a,dpl
      000358 90 04 0C         [24] 1136 	mov	dptr,#_lcdputstr_ss_65536_117
      00035B F0               [24] 1137 	movx	@dptr,a
      00035C EE               [12] 1138 	mov	a,r6
      00035D A3               [24] 1139 	inc	dptr
      00035E F0               [24] 1140 	movx	@dptr,a
      00035F EF               [12] 1141 	mov	a,r7
      000360 A3               [24] 1142 	inc	dptr
      000361 F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	lcd.c:258: while(ss[i]!='\0'){     // loop until end of string
      000362 90 04 0C         [24] 1145 	mov	dptr,#_lcdputstr_ss_65536_117
      000365 E0               [24] 1146 	movx	a,@dptr
      000366 FD               [12] 1147 	mov	r5,a
      000367 A3               [24] 1148 	inc	dptr
      000368 E0               [24] 1149 	movx	a,@dptr
      000369 FE               [12] 1150 	mov	r6,a
      00036A A3               [24] 1151 	inc	dptr
      00036B E0               [24] 1152 	movx	a,@dptr
      00036C FF               [12] 1153 	mov	r7,a
      00036D 7B 00            [12] 1154 	mov	r3,#0x00
      00036F 7C 00            [12] 1155 	mov	r4,#0x00
      000371                       1156 00101$:
      000371 EB               [12] 1157 	mov	a,r3
      000372 2D               [12] 1158 	add	a,r5
      000373 F8               [12] 1159 	mov	r0,a
      000374 EC               [12] 1160 	mov	a,r4
      000375 3E               [12] 1161 	addc	a,r6
      000376 F9               [12] 1162 	mov	r1,a
      000377 8F 02            [24] 1163 	mov	ar2,r7
      000379 88 82            [24] 1164 	mov	dpl,r0
      00037B 89 83            [24] 1165 	mov	dph,r1
      00037D 8A F0            [24] 1166 	mov	b,r2
      00037F 12 29 F8         [24] 1167 	lcall	__gptrget
      000382 FA               [12] 1168 	mov	r2,a
      000383 60 20            [24] 1169 	jz	00104$
                                   1170 ;	lcd.c:259: lcdputch(ss[i]);    // print each character
      000385 8A 82            [24] 1171 	mov	dpl,r2
      000387 C0 07            [24] 1172 	push	ar7
      000389 C0 06            [24] 1173 	push	ar6
      00038B C0 05            [24] 1174 	push	ar5
      00038D C0 04            [24] 1175 	push	ar4
      00038F C0 03            [24] 1176 	push	ar3
      000391 12 02 EF         [24] 1177 	lcall	_lcdputch
      000394 D0 03            [24] 1178 	pop	ar3
      000396 D0 04            [24] 1179 	pop	ar4
      000398 D0 05            [24] 1180 	pop	ar5
      00039A D0 06            [24] 1181 	pop	ar6
      00039C D0 07            [24] 1182 	pop	ar7
                                   1183 ;	lcd.c:260: i++;
      00039E 0B               [12] 1184 	inc	r3
      00039F BB 00 CF         [24] 1185 	cjne	r3,#0x00,00101$
      0003A2 0C               [12] 1186 	inc	r4
      0003A3 80 CC            [24] 1187 	sjmp	00101$
      0003A5                       1188 00104$:
                                   1189 ;	lcd.c:262: }
      0003A5 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'handler_lcdclear'
                                   1193 ;------------------------------------------------------------
                                   1194 ;	lcd.c:263: void handler_lcdclear(void){
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function handler_lcdclear
                                   1197 ;	-----------------------------------------
      0003A6                       1198 _handler_lcdclear:
                                   1199 ;	lcd.c:264: LCD_RS=0;               // set RS pin to low
                                   1200 ;	assignBit
      0003A6 C2 92            [12] 1201 	clr	_P1_2
                                   1202 ;	lcd.c:265: LCD_RW=0;               // set RW pin to low
                                   1203 ;	assignBit
      0003A8 C2 93            [12] 1204 	clr	_P1_3
                                   1205 ;	lcd.c:266: lcd_ptr=0x01;           // reset pointer to first line
      0003AA 90 F0 00         [24] 1206 	mov	dptr,#_lcd_ptr
      0003AD 74 01            [12] 1207 	mov	a,#0x01
      0003AF F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	lcd.c:267: lcdbusywait();          // wait until LCD is ready
      0003B0 12 01 7A         [24] 1210 	lcall	_lcdbusywait
                                   1211 ;	lcd.c:268: lcdgotoaddr(0x00);      // move cursor to the beginning of the first line
      0003B3 75 82 00         [24] 1212 	mov	dpl,#0x00
      0003B6 12 02 19         [24] 1213 	lcall	_lcdgotoaddr
                                   1214 ;	lcd.c:269: lcdputstr("       ");   // write 7 spaces to clear the first line
      0003B9 90 2A 80         [24] 1215 	mov	dptr,#___str_0
      0003BC 75 F0 80         [24] 1216 	mov	b,#0x80
      0003BF 12 03 52         [24] 1217 	lcall	_lcdputstr
                                   1218 ;	lcd.c:270: lcdgotoaddr(0x00);      // move cursor back to the beginning of the first line
      0003C2 75 82 00         [24] 1219 	mov	dpl,#0x00
      0003C5 12 02 19         [24] 1220 	lcall	_lcdgotoaddr
                                   1221 ;	lcd.c:271: printf_tiny("\033[1;33m\n\rLCD Cleared!!\r\n"); // print a message to indicate LCD has been cleared
      0003C8 74 88            [12] 1222 	mov	a,#___str_1
      0003CA C0 E0            [24] 1223 	push	acc
      0003CC 74 2A            [12] 1224 	mov	a,#(___str_1 >> 8)
      0003CE C0 E0            [24] 1225 	push	acc
      0003D0 12 19 17         [24] 1226 	lcall	_printf_tiny
      0003D3 15 81            [12] 1227 	dec	sp
      0003D5 15 81            [12] 1228 	dec	sp
                                   1229 ;	lcd.c:272: }
      0003D7 22               [24] 1230 	ret
                                   1231 ;------------------------------------------------------------
                                   1232 ;Allocation info for local variables in function 'handler_wr_c_lcd'
                                   1233 ;------------------------------------------------------------
                                   1234 ;lcd_input                 Allocated with name '_handler_wr_c_lcd_lcd_input_65536_123'
                                   1235 ;------------------------------------------------------------
                                   1236 ;	lcd.c:274: void handler_wr_c_lcd(void)
                                   1237 ;	-----------------------------------------
                                   1238 ;	 function handler_wr_c_lcd
                                   1239 ;	-----------------------------------------
      0003D8                       1240 _handler_wr_c_lcd:
                                   1241 ;	lcd.c:277: printf_tiny("\033[1;33m\n\rEnter Character to put on LCD !!\r\n"); // print a message to ask the user to enter a character
      0003D8 74 A1            [12] 1242 	mov	a,#___str_2
      0003DA C0 E0            [24] 1243 	push	acc
      0003DC 74 2A            [12] 1244 	mov	a,#(___str_2 >> 8)
      0003DE C0 E0            [24] 1245 	push	acc
      0003E0 12 19 17         [24] 1246 	lcall	_printf_tiny
      0003E3 15 81            [12] 1247 	dec	sp
      0003E5 15 81            [12] 1248 	dec	sp
                                   1249 ;	lcd.c:278: lcd_input = getchar();  // get the input character from the user
      0003E7 12 15 E1         [24] 1250 	lcall	_getchar
      0003EA AE 82            [24] 1251 	mov	r6,dpl
                                   1252 ;	lcd.c:282: }
      0003EC D2 00            [12] 1253 	setb	_handler_wr_c_lcd_sloc0_1_0
      0003EE 10 AF 02         [24] 1254 	jbc	ea,00103$
      0003F1 C2 00            [12] 1255 	clr	_handler_wr_c_lcd_sloc0_1_0
      0003F3                       1256 00103$:
                                   1257 ;	lcd.c:281: lcdputch(lcd_input); // write the input character to the LCD
      0003F3 8E 82            [24] 1258 	mov	dpl,r6
      0003F5 C0 06            [24] 1259 	push	ar6
      0003F7 12 02 EF         [24] 1260 	lcall	_lcdputch
      0003FA A2 00            [12] 1261 	mov	c,_handler_wr_c_lcd_sloc0_1_0
      0003FC 92 AF            [24] 1262 	mov	ea,c
                                   1263 ;	lcd.c:283: printf_tiny("\n\rEntered Char = %c\n\r",lcd_input); // print the entered character
      0003FE 7F 00            [12] 1264 	mov	r7,#0x00
      000400 C0 07            [24] 1265 	push	ar7
      000402 74 CD            [12] 1266 	mov	a,#___str_3
      000404 C0 E0            [24] 1267 	push	acc
      000406 74 2A            [12] 1268 	mov	a,#(___str_3 >> 8)
      000408 C0 E0            [24] 1269 	push	acc
      00040A 12 19 17         [24] 1270 	lcall	_printf_tiny
      00040D E5 81            [12] 1271 	mov	a,sp
      00040F 24 FC            [12] 1272 	add	a,#0xfc
      000411 F5 81            [12] 1273 	mov	sp,a
                                   1274 ;	lcd.c:284: printf_tiny("\n\r");
      000413 74 E3            [12] 1275 	mov	a,#___str_4
      000415 C0 E0            [24] 1276 	push	acc
      000417 74 2A            [12] 1277 	mov	a,#(___str_4 >> 8)
      000419 C0 E0            [24] 1278 	push	acc
      00041B 12 19 17         [24] 1279 	lcall	_printf_tiny
      00041E 15 81            [12] 1280 	dec	sp
      000420 15 81            [12] 1281 	dec	sp
                                   1282 ;	lcd.c:285: }
      000422 22               [24] 1283 	ret
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
      000423                       1295 _handler_wr_str_lcd:
                                   1296 ;	lcd.c:289: printf_tiny("\033[1;33m\n\rEnter String to put on LCD !!\r\n"); // print a message to ask the user to enter a string
      000423 74 E6            [12] 1297 	mov	a,#___str_5
      000425 C0 E0            [24] 1298 	push	acc
      000427 74 2A            [12] 1299 	mov	a,#(___str_5 >> 8)
      000429 C0 E0            [24] 1300 	push	acc
      00042B 12 19 17         [24] 1301 	lcall	_printf_tiny
      00042E 15 81            [12] 1302 	dec	sp
      000430 15 81            [12] 1303 	dec	sp
                                   1304 ;	lcd.c:290: int k = 1;
      000432 90 04 0F         [24] 1305 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      000435 74 01            [12] 1306 	mov	a,#0x01
      000437 F0               [24] 1307 	movx	@dptr,a
      000438 E4               [12] 1308 	clr	a
      000439 A3               [24] 1309 	inc	dptr
      00043A F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	lcd.c:294: while(k){
      00043B 7E 00            [12] 1312 	mov	r6,#0x00
      00043D 7F 00            [12] 1313 	mov	r7,#0x00
      00043F                       1314 00104$:
      00043F 90 04 0F         [24] 1315 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      000442 E0               [24] 1316 	movx	a,@dptr
      000443 F5 F0            [12] 1317 	mov	b,a
      000445 A3               [24] 1318 	inc	dptr
      000446 E0               [24] 1319 	movx	a,@dptr
      000447 45 F0            [12] 1320 	orl	a,b
      000449 60 3D            [24] 1321 	jz	00106$
                                   1322 ;	lcd.c:295: ch=getchar();       // get each character from the user until the enter key is pressed
      00044B C0 07            [24] 1323 	push	ar7
      00044D C0 06            [24] 1324 	push	ar6
      00044F 12 15 E1         [24] 1325 	lcall	_getchar
      000452 AC 82            [24] 1326 	mov	r4,dpl
      000454 AD 83            [24] 1327 	mov	r5,dph
      000456 D0 06            [24] 1328 	pop	ar6
      000458 D0 07            [24] 1329 	pop	ar7
                                   1330 ;	lcd.c:296: if(ch=='\r'){
      00045A BC 0D 09         [24] 1331 	cjne	r4,#0x0d,00102$
                                   1332 ;	lcd.c:297: k=0;            // exit the loop when the enter key is pressed
      00045D 90 04 0F         [24] 1333 	mov	dptr,#_handler_wr_str_lcd_k_65537_127
      000460 E4               [12] 1334 	clr	a
      000461 F0               [24] 1335 	movx	@dptr,a
      000462 A3               [24] 1336 	inc	dptr
      000463 F0               [24] 1337 	movx	@dptr,a
      000464 80 D9            [24] 1338 	sjmp	00104$
      000466                       1339 00102$:
                                   1340 ;	lcd.c:300: *(string+i)=ch; // store each character in a string array
      000466 90 04 02         [24] 1341 	mov	dptr,#_string
      000469 E0               [24] 1342 	movx	a,@dptr
      00046A FA               [12] 1343 	mov	r2,a
      00046B A3               [24] 1344 	inc	dptr
      00046C E0               [24] 1345 	movx	a,@dptr
      00046D FB               [12] 1346 	mov	r3,a
      00046E A3               [24] 1347 	inc	dptr
      00046F E0               [24] 1348 	movx	a,@dptr
      000470 FD               [12] 1349 	mov	r5,a
      000471 EE               [12] 1350 	mov	a,r6
      000472 2A               [12] 1351 	add	a,r2
      000473 FA               [12] 1352 	mov	r2,a
      000474 EF               [12] 1353 	mov	a,r7
      000475 3B               [12] 1354 	addc	a,r3
      000476 FB               [12] 1355 	mov	r3,a
      000477 8A 82            [24] 1356 	mov	dpl,r2
      000479 8B 83            [24] 1357 	mov	dph,r3
      00047B 8D F0            [24] 1358 	mov	b,r5
      00047D EC               [12] 1359 	mov	a,r4
      00047E 12 18 FC         [24] 1360 	lcall	__gptrput
                                   1361 ;	lcd.c:301: i++;
      000481 0E               [12] 1362 	inc	r6
      000482 BE 00 BA         [24] 1363 	cjne	r6,#0x00,00104$
      000485 0F               [12] 1364 	inc	r7
      000486 80 B7            [24] 1365 	sjmp	00104$
      000488                       1366 00106$:
                                   1367 ;	lcd.c:304: *(string+i)='\0';       // add null character to mark the end of the string
      000488 90 04 02         [24] 1368 	mov	dptr,#_string
      00048B E0               [24] 1369 	movx	a,@dptr
      00048C FB               [12] 1370 	mov	r3,a
      00048D A3               [24] 1371 	inc	dptr
      00048E E0               [24] 1372 	movx	a,@dptr
      00048F FC               [12] 1373 	mov	r4,a
      000490 A3               [24] 1374 	inc	dptr
      000491 E0               [24] 1375 	movx	a,@dptr
      000492 FD               [12] 1376 	mov	r5,a
      000493 EE               [12] 1377 	mov	a,r6
      000494 2B               [12] 1378 	add	a,r3
      000495 FE               [12] 1379 	mov	r6,a
      000496 EF               [12] 1380 	mov	a,r7
      000497 3C               [12] 1381 	addc	a,r4
      000498 FF               [12] 1382 	mov	r7,a
      000499 8D 02            [24] 1383 	mov	ar2,r5
      00049B 8E 82            [24] 1384 	mov	dpl,r6
      00049D 8F 83            [24] 1385 	mov	dph,r7
      00049F 8A F0            [24] 1386 	mov	b,r2
      0004A1 E4               [12] 1387 	clr	a
      0004A2 12 18 FC         [24] 1388 	lcall	__gptrput
                                   1389 ;	lcd.c:308: }
      0004A5 D2 01            [12] 1390 	setb	_handler_wr_str_lcd_sloc0_1_0
      0004A7 10 AF 02         [24] 1391 	jbc	ea,00126$
      0004AA C2 01            [12] 1392 	clr	_handler_wr_str_lcd_sloc0_1_0
      0004AC                       1393 00126$:
                                   1394 ;	lcd.c:307: lcdputstr(string);  // write the string to the LCD
      0004AC 90 04 02         [24] 1395 	mov	dptr,#_string
      0004AF E0               [24] 1396 	movx	a,@dptr
      0004B0 FD               [12] 1397 	mov	r5,a
      0004B1 A3               [24] 1398 	inc	dptr
      0004B2 E0               [24] 1399 	movx	a,@dptr
      0004B3 FE               [12] 1400 	mov	r6,a
      0004B4 A3               [24] 1401 	inc	dptr
      0004B5 E0               [24] 1402 	movx	a,@dptr
      0004B6 FF               [12] 1403 	mov	r7,a
      0004B7 8D 82            [24] 1404 	mov	dpl,r5
      0004B9 8E 83            [24] 1405 	mov	dph,r6
      0004BB 8F F0            [24] 1406 	mov	b,r7
      0004BD 12 03 52         [24] 1407 	lcall	_lcdputstr
      0004C0 A2 01            [12] 1408 	mov	c,_handler_wr_str_lcd_sloc0_1_0
      0004C2 92 AF            [24] 1409 	mov	ea,c
                                   1410 ;	lcd.c:309: printf_tiny("Entered String = %s\n\r",string); // print the entered string
      0004C4 90 04 02         [24] 1411 	mov	dptr,#_string
      0004C7 E0               [24] 1412 	movx	a,@dptr
      0004C8 C0 E0            [24] 1413 	push	acc
      0004CA A3               [24] 1414 	inc	dptr
      0004CB E0               [24] 1415 	movx	a,@dptr
      0004CC C0 E0            [24] 1416 	push	acc
      0004CE A3               [24] 1417 	inc	dptr
      0004CF E0               [24] 1418 	movx	a,@dptr
      0004D0 C0 E0            [24] 1419 	push	acc
      0004D2 74 0F            [12] 1420 	mov	a,#___str_6
      0004D4 C0 E0            [24] 1421 	push	acc
      0004D6 74 2B            [12] 1422 	mov	a,#(___str_6 >> 8)
      0004D8 C0 E0            [24] 1423 	push	acc
      0004DA 12 19 17         [24] 1424 	lcall	_printf_tiny
      0004DD E5 81            [12] 1425 	mov	a,sp
      0004DF 24 FB            [12] 1426 	add	a,#0xfb
      0004E1 F5 81            [12] 1427 	mov	sp,a
                                   1428 ;	lcd.c:310: printf_tiny("\n\r");
      0004E3 74 E3            [12] 1429 	mov	a,#___str_4
      0004E5 C0 E0            [24] 1430 	push	acc
      0004E7 74 2A            [12] 1431 	mov	a,#(___str_4 >> 8)
      0004E9 C0 E0            [24] 1432 	push	acc
      0004EB 12 19 17         [24] 1433 	lcall	_printf_tiny
      0004EE 15 81            [12] 1434 	dec	sp
      0004F0 15 81            [12] 1435 	dec	sp
                                   1436 ;	lcd.c:311: }
      0004F2 22               [24] 1437 	ret
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
      0004F3                       1448 _handler_lcdgotoxy:
                                   1449 ;	lcd.c:318: printf_tiny("\033[1;33m\n\rEnter X-Co-ordinate to put on LCD !!\r\n");
      0004F3 74 25            [12] 1450 	mov	a,#___str_7
      0004F5 C0 E0            [24] 1451 	push	acc
      0004F7 74 2B            [12] 1452 	mov	a,#(___str_7 >> 8)
      0004F9 C0 E0            [24] 1453 	push	acc
      0004FB 12 19 17         [24] 1454 	lcall	_printf_tiny
      0004FE 15 81            [12] 1455 	dec	sp
      000500 15 81            [12] 1456 	dec	sp
                                   1457 ;	lcd.c:319: x_coordinate_ch  = toupper(getchar());
      000502 12 15 E1         [24] 1458 	lcall	_getchar
      000505 12 1F 3F         [24] 1459 	lcall	_toupper
      000508 AE 82            [24] 1460 	mov	r6,dpl
                                   1461 ;	lcd.c:322: printf_tiny("X-Cordinate = %c\n\r",x_coordinate_ch);
      00050A 8E 05            [24] 1462 	mov	ar5,r6
      00050C 7F 00            [12] 1463 	mov	r7,#0x00
      00050E C0 06            [24] 1464 	push	ar6
      000510 C0 05            [24] 1465 	push	ar5
      000512 C0 07            [24] 1466 	push	ar7
      000514 74 55            [12] 1467 	mov	a,#___str_8
      000516 C0 E0            [24] 1468 	push	acc
      000518 74 2B            [12] 1469 	mov	a,#(___str_8 >> 8)
      00051A C0 E0            [24] 1470 	push	acc
      00051C 12 19 17         [24] 1471 	lcall	_printf_tiny
      00051F E5 81            [12] 1472 	mov	a,sp
      000521 24 FC            [12] 1473 	add	a,#0xfc
      000523 F5 81            [12] 1474 	mov	sp,a
                                   1475 ;	lcd.c:325: printf_tiny("\033[1;33m\n\rEnter Y-Co-ordinate to put on LCD !!\r\n");
      000525 74 68            [12] 1476 	mov	a,#___str_9
      000527 C0 E0            [24] 1477 	push	acc
      000529 74 2B            [12] 1478 	mov	a,#(___str_9 >> 8)
      00052B C0 E0            [24] 1479 	push	acc
      00052D 12 19 17         [24] 1480 	lcall	_printf_tiny
      000530 15 81            [12] 1481 	dec	sp
      000532 15 81            [12] 1482 	dec	sp
                                   1483 ;	lcd.c:326: char y_coordinate_ch  = toupper(getchar());
      000534 12 15 E1         [24] 1484 	lcall	_getchar
      000537 12 1F 3F         [24] 1485 	lcall	_toupper
      00053A AD 82            [24] 1486 	mov	r5,dpl
                                   1487 ;	lcd.c:329: printf_tiny("Y-Cordinate = %c\n\r",y_coordinate_ch);
      00053C 8D 04            [24] 1488 	mov	ar4,r5
      00053E 7F 00            [12] 1489 	mov	r7,#0x00
      000540 C0 05            [24] 1490 	push	ar5
      000542 C0 04            [24] 1491 	push	ar4
      000544 C0 07            [24] 1492 	push	ar7
      000546 74 98            [12] 1493 	mov	a,#___str_10
      000548 C0 E0            [24] 1494 	push	acc
      00054A 74 2B            [12] 1495 	mov	a,#(___str_10 >> 8)
      00054C C0 E0            [24] 1496 	push	acc
      00054E 12 19 17         [24] 1497 	lcall	_printf_tiny
      000551 E5 81            [12] 1498 	mov	a,sp
      000553 24 FC            [12] 1499 	add	a,#0xfc
      000555 F5 81            [12] 1500 	mov	sp,a
      000557 D0 05            [24] 1501 	pop	ar5
      000559 D0 06            [24] 1502 	pop	ar6
                                   1503 ;	lcd.c:332: if (x_coordinate_ch >= '0' && x_coordinate_ch <= '3'){
      00055B BE 30 00         [24] 1504 	cjne	r6,#0x30,00119$
      00055E                       1505 00119$:
      00055E 40 05            [24] 1506 	jc	00106$
      000560 EE               [12] 1507 	mov	a,r6
      000561 24 CC            [12] 1508 	add	a,#0xff - 0x33
      000563 50 1A            [24] 1509 	jnc	00107$
      000565                       1510 00106$:
                                   1511 ;	lcd.c:334: } else if (y_coordinate_ch >= '0' && y_coordinate_ch <= 'F') {
      000565 BD 30 00         [24] 1512 	cjne	r5,#0x30,00122$
      000568                       1513 00122$:
      000568 40 05            [24] 1514 	jc	00102$
      00056A ED               [12] 1515 	mov	a,r5
      00056B 24 B9            [12] 1516 	add	a,#0xff - 0x46
      00056D 50 10            [24] 1517 	jnc	00107$
      00056F                       1518 00102$:
                                   1519 ;	lcd.c:337: printf_tiny("\033[1;31mInvalid coordinate!!\n\r");
      00056F 74 AB            [12] 1520 	mov	a,#___str_11
      000571 C0 E0            [24] 1521 	push	acc
      000573 74 2B            [12] 1522 	mov	a,#(___str_11 >> 8)
      000575 C0 E0            [24] 1523 	push	acc
      000577 12 19 17         [24] 1524 	lcall	_printf_tiny
      00057A 15 81            [12] 1525 	dec	sp
      00057C 15 81            [12] 1526 	dec	sp
                                   1527 ;	lcd.c:338: return;
      00057E 22               [24] 1528 	ret
      00057F                       1529 00107$:
                                   1530 ;	lcd.c:344: }
      00057F D2 02            [12] 1531 	setb	_handler_lcdgotoxy_sloc0_1_0
      000581 10 AF 02         [24] 1532 	jbc	ea,00125$
      000584 C2 02            [12] 1533 	clr	_handler_lcdgotoxy_sloc0_1_0
      000586                       1534 00125$:
                                   1535 ;	lcd.c:343: lcdgotoxy(x_coordinate_ch, y_coordinate_ch);
      000586 90 04 08         [24] 1536 	mov	dptr,#_lcdgotoxy_PARM_2
      000589 ED               [12] 1537 	mov	a,r5
      00058A F0               [24] 1538 	movx	@dptr,a
      00058B 8E 82            [24] 1539 	mov	dpl,r6
      00058D 12 02 36         [24] 1540 	lcall	_lcdgotoxy
      000590 A2 02            [12] 1541 	mov	c,_handler_lcdgotoxy_sloc0_1_0
      000592 92 AF            [24] 1542 	mov	ea,c
                                   1543 ;	lcd.c:347: printf_tiny("\033[1;33m\n\rCursor Movement Completed!!\r\n");
      000594 74 C9            [12] 1544 	mov	a,#___str_12
      000596 C0 E0            [24] 1545 	push	acc
      000598 74 2B            [12] 1546 	mov	a,#(___str_12 >> 8)
      00059A C0 E0            [24] 1547 	push	acc
      00059C 12 19 17         [24] 1548 	lcall	_printf_tiny
      00059F 15 81            [12] 1549 	dec	sp
      0005A1 15 81            [12] 1550 	dec	sp
                                   1551 ;	lcd.c:348: }
      0005A3 22               [24] 1552 	ret
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
      0005A4                       1565 _handler_lcdgotoaddress:
                                   1566 ;	lcd.c:355: printf_tiny("\033[1;33m\n\rEnter address to put onto the LCD !!\r\n");
      0005A4 74 F0            [12] 1567 	mov	a,#___str_13
      0005A6 C0 E0            [24] 1568 	push	acc
      0005A8 74 2B            [12] 1569 	mov	a,#(___str_13 >> 8)
      0005AA C0 E0            [24] 1570 	push	acc
      0005AC 12 19 17         [24] 1571 	lcall	_printf_tiny
      0005AF 15 81            [12] 1572 	dec	sp
      0005B1 15 81            [12] 1573 	dec	sp
                                   1574 ;	lcd.c:359: char c = getchar();
      0005B3 12 15 E1         [24] 1575 	lcall	_getchar
      0005B6 AE 82            [24] 1576 	mov	r6,dpl
      0005B8 90 04 43         [24] 1577 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      0005BB EE               [12] 1578 	mov	a,r6
      0005BC F0               [24] 1579 	movx	@dptr,a
                                   1580 ;	lcd.c:360: while (c != '\r' && i < 49) { // Read characters until enter is pressed or limit is reached
      0005BD 7E 00            [12] 1581 	mov	r6,#0x00
      0005BF 7F 00            [12] 1582 	mov	r7,#0x00
      0005C1                       1583 00102$:
      0005C1 90 04 43         [24] 1584 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      0005C4 E0               [24] 1585 	movx	a,@dptr
      0005C5 FD               [12] 1586 	mov	r5,a
      0005C6 BD 0D 02         [24] 1587 	cjne	r5,#0x0d,00120$
      0005C9 80 32            [24] 1588 	sjmp	00104$
      0005CB                       1589 00120$:
      0005CB C3               [12] 1590 	clr	c
      0005CC EE               [12] 1591 	mov	a,r6
      0005CD 94 31            [12] 1592 	subb	a,#0x31
      0005CF EF               [12] 1593 	mov	a,r7
      0005D0 64 80            [12] 1594 	xrl	a,#0x80
      0005D2 94 80            [12] 1595 	subb	a,#0x80
      0005D4 50 27            [24] 1596 	jnc	00104$
                                   1597 ;	lcd.c:361: str[i++] = c;
      0005D6 EE               [12] 1598 	mov	a,r6
      0005D7 24 11            [12] 1599 	add	a,#_handler_lcdgotoaddress_str_65536_140
      0005D9 F5 82            [12] 1600 	mov	dpl,a
      0005DB EF               [12] 1601 	mov	a,r7
      0005DC 34 04            [12] 1602 	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      0005DE F5 83            [12] 1603 	mov	dph,a
      0005E0 0E               [12] 1604 	inc	r6
      0005E1 BE 00 01         [24] 1605 	cjne	r6,#0x00,00122$
      0005E4 0F               [12] 1606 	inc	r7
      0005E5                       1607 00122$:
      0005E5 ED               [12] 1608 	mov	a,r5
      0005E6 F0               [24] 1609 	movx	@dptr,a
                                   1610 ;	lcd.c:362: c = getchar();
      0005E7 C0 07            [24] 1611 	push	ar7
      0005E9 C0 06            [24] 1612 	push	ar6
      0005EB 12 15 E1         [24] 1613 	lcall	_getchar
      0005EE AC 82            [24] 1614 	mov	r4,dpl
      0005F0 AD 83            [24] 1615 	mov	r5,dph
      0005F2 D0 06            [24] 1616 	pop	ar6
      0005F4 D0 07            [24] 1617 	pop	ar7
      0005F6 90 04 43         [24] 1618 	mov	dptr,#_handler_lcdgotoaddress_c_65537_141
      0005F9 EC               [12] 1619 	mov	a,r4
      0005FA F0               [24] 1620 	movx	@dptr,a
      0005FB 80 C4            [24] 1621 	sjmp	00102$
      0005FD                       1622 00104$:
                                   1623 ;	lcd.c:364: str[i] = '\0';
      0005FD EE               [12] 1624 	mov	a,r6
      0005FE 24 11            [12] 1625 	add	a,#_handler_lcdgotoaddress_str_65536_140
      000600 F5 82            [12] 1626 	mov	dpl,a
      000602 EF               [12] 1627 	mov	a,r7
      000603 34 04            [12] 1628 	addc	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      000605 F5 83            [12] 1629 	mov	dph,a
      000607 E4               [12] 1630 	clr	a
      000608 F0               [24] 1631 	movx	@dptr,a
                                   1632 ;	lcd.c:367: printf("Address Entered = %s\n\r",str);
      000609 74 11            [12] 1633 	mov	a,#_handler_lcdgotoaddress_str_65536_140
      00060B C0 E0            [24] 1634 	push	acc
      00060D 74 04            [12] 1635 	mov	a,#(_handler_lcdgotoaddress_str_65536_140 >> 8)
      00060F C0 E0            [24] 1636 	push	acc
      000611 E4               [12] 1637 	clr	a
      000612 C0 E0            [24] 1638 	push	acc
      000614 74 20            [12] 1639 	mov	a,#___str_14
      000616 C0 E0            [24] 1640 	push	acc
      000618 74 2C            [12] 1641 	mov	a,#(___str_14 >> 8)
      00061A C0 E0            [24] 1642 	push	acc
      00061C 74 80            [12] 1643 	mov	a,#0x80
      00061E C0 E0            [24] 1644 	push	acc
      000620 12 1F CC         [24] 1645 	lcall	_printf
      000623 E5 81            [12] 1646 	mov	a,sp
      000625 24 FA            [12] 1647 	add	a,#0xfa
      000627 F5 81            [12] 1648 	mov	sp,a
                                   1649 ;	lcd.c:370: long int num = strtol(str, NULL, 16);
      000629 90 05 05         [24] 1650 	mov	dptr,#_strtol_PARM_2
      00062C E4               [12] 1651 	clr	a
      00062D F0               [24] 1652 	movx	@dptr,a
      00062E A3               [24] 1653 	inc	dptr
      00062F F0               [24] 1654 	movx	@dptr,a
      000630 A3               [24] 1655 	inc	dptr
      000631 F0               [24] 1656 	movx	@dptr,a
      000632 90 05 08         [24] 1657 	mov	dptr,#_strtol_PARM_3
      000635 74 10            [12] 1658 	mov	a,#0x10
      000637 F0               [24] 1659 	movx	@dptr,a
      000638 E4               [12] 1660 	clr	a
      000639 A3               [24] 1661 	inc	dptr
      00063A F0               [24] 1662 	movx	@dptr,a
      00063B 90 04 11         [24] 1663 	mov	dptr,#_handler_lcdgotoaddress_str_65536_140
      00063E 75 F0 00         [24] 1664 	mov	b,#0x00
      000641 12 16 CF         [24] 1665 	lcall	_strtol
      000644 AC 82            [24] 1666 	mov	r4,dpl
                                   1667 ;	lcd.c:376: }
      000646 D2 03            [12] 1668 	setb	_handler_lcdgotoaddress_sloc0_1_0
      000648 10 AF 02         [24] 1669 	jbc	ea,00123$
      00064B C2 03            [12] 1670 	clr	_handler_lcdgotoaddress_sloc0_1_0
      00064D                       1671 00123$:
                                   1672 ;	lcd.c:375: lcdgotoaddr((char)num);
      00064D 8C 82            [24] 1673 	mov	dpl,r4
      00064F 12 02 19         [24] 1674 	lcall	_lcdgotoaddr
      000652 A2 03            [12] 1675 	mov	c,_handler_lcdgotoaddress_sloc0_1_0
      000654 92 AF            [24] 1676 	mov	ea,c
                                   1677 ;	lcd.c:377: return;
                                   1678 ;	lcd.c:378: }
      000656 22               [24] 1679 	ret
                                   1680 ;------------------------------------------------------------
                                   1681 ;Allocation info for local variables in function 'handler_stop_time'
                                   1682 ;------------------------------------------------------------
                                   1683 ;	lcd.c:381: void handler_stop_time(void)
                                   1684 ;	-----------------------------------------
                                   1685 ;	 function handler_stop_time
                                   1686 ;	-----------------------------------------
      000657                       1687 _handler_stop_time:
                                   1688 ;	lcd.c:383: printf_tiny("\033[1;33m\n\rTime Paused !!\r\n");
      000657 74 37            [12] 1689 	mov	a,#___str_15
      000659 C0 E0            [24] 1690 	push	acc
      00065B 74 2C            [12] 1691 	mov	a,#(___str_15 >> 8)
      00065D C0 E0            [24] 1692 	push	acc
      00065F 12 19 17         [24] 1693 	lcall	_printf_tiny
      000662 15 81            [12] 1694 	dec	sp
      000664 15 81            [12] 1695 	dec	sp
                                   1696 ;	lcd.c:386: TCON &=~(0x10);
      000666 53 88 EF         [24] 1697 	anl	_TCON,#0xef
                                   1698 ;	lcd.c:387: }
      000669 22               [24] 1699 	ret
                                   1700 ;------------------------------------------------------------
                                   1701 ;Allocation info for local variables in function 'handler_resume_time'
                                   1702 ;------------------------------------------------------------
                                   1703 ;	lcd.c:390: void handler_resume_time(void)
                                   1704 ;	-----------------------------------------
                                   1705 ;	 function handler_resume_time
                                   1706 ;	-----------------------------------------
      00066A                       1707 _handler_resume_time:
                                   1708 ;	lcd.c:393: printf_tiny("\033[1;33m\n\rTime Resumed !!\r\n");
      00066A 74 51            [12] 1709 	mov	a,#___str_16
      00066C C0 E0            [24] 1710 	push	acc
      00066E 74 2C            [12] 1711 	mov	a,#(___str_16 >> 8)
      000670 C0 E0            [24] 1712 	push	acc
      000672 12 19 17         [24] 1713 	lcall	_printf_tiny
      000675 15 81            [12] 1714 	dec	sp
      000677 15 81            [12] 1715 	dec	sp
                                   1716 ;	lcd.c:396: TCON |=0x10;
      000679 43 88 10         [24] 1717 	orl	_TCON,#0x10
                                   1718 ;	lcd.c:397: }
      00067C 22               [24] 1719 	ret
                                   1720 ;------------------------------------------------------------
                                   1721 ;Allocation info for local variables in function 'handler_reset_time'
                                   1722 ;------------------------------------------------------------
                                   1723 ;	lcd.c:400: void handler_reset_time(void)
                                   1724 ;	-----------------------------------------
                                   1725 ;	 function handler_reset_time
                                   1726 ;	-----------------------------------------
      00067D                       1727 _handler_reset_time:
                                   1728 ;	lcd.c:403: printf_tiny("\033[1;33m\n\rTime Reset !!\r\n");
      00067D 74 6C            [12] 1729 	mov	a,#___str_17
      00067F C0 E0            [24] 1730 	push	acc
      000681 74 2C            [12] 1731 	mov	a,#(___str_17 >> 8)
      000683 C0 E0            [24] 1732 	push	acc
      000685 12 19 17         [24] 1733 	lcall	_printf_tiny
      000688 15 81            [12] 1734 	dec	sp
      00068A 15 81            [12] 1735 	dec	sp
                                   1736 ;	lcd.c:406: tenth_of_second     = '0';
      00068C 90 05 79         [24] 1737 	mov	dptr,#_tenth_of_second
      00068F 74 30            [12] 1738 	mov	a,#0x30
      000691 F0               [24] 1739 	movx	@dptr,a
                                   1740 ;	lcd.c:407: seconds_ones_digit  = '0';
      000692 90 05 7A         [24] 1741 	mov	dptr,#_seconds_ones_digit
      000695 F0               [24] 1742 	movx	@dptr,a
                                   1743 ;	lcd.c:408: seconds_tens_digit  = '0';
      000696 90 05 7B         [24] 1744 	mov	dptr,#_seconds_tens_digit
      000699 F0               [24] 1745 	movx	@dptr,a
                                   1746 ;	lcd.c:409: minutes_ones_digit  = '0';
      00069A 90 05 7C         [24] 1747 	mov	dptr,#_minutes_ones_digit
      00069D F0               [24] 1748 	movx	@dptr,a
                                   1749 ;	lcd.c:410: minutes_tens_digit  = '0';
      00069E 90 05 7D         [24] 1750 	mov	dptr,#_minutes_tens_digit
      0006A1 F0               [24] 1751 	movx	@dptr,a
                                   1752 ;	lcd.c:411: }
      0006A2 22               [24] 1753 	ret
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
      0006A3                       1764 _read_lcd_address:
      0006A3 E5 82            [12] 1765 	mov	a,dpl
      0006A5 90 04 45         [24] 1766 	mov	dptr,#_read_lcd_address_is_ddram_65536_151
      0006A8 F0               [24] 1767 	movx	@dptr,a
                                   1768 ;	lcd.c:416: if (is_ddram == 1) {
      0006A9 E0               [24] 1769 	movx	a,@dptr
      0006AA FF               [12] 1770 	mov	r7,a
      0006AB BF 01 0B         [24] 1771 	cjne	r7,#0x01,00102$
                                   1772 ;	lcd.c:417: lcdgotoaddr(address);
      0006AE 90 04 44         [24] 1773 	mov	dptr,#_read_lcd_address_PARM_2
      0006B1 E0               [24] 1774 	movx	a,@dptr
      0006B2 F5 82            [12] 1775 	mov	dpl,a
      0006B4 12 02 19         [24] 1776 	lcall	_lcdgotoaddr
      0006B7 80 0F            [24] 1777 	sjmp	00103$
      0006B9                       1778 00102$:
                                   1779 ;	lcd.c:419: LCD_RS = 0;
                                   1780 ;	assignBit
      0006B9 C2 92            [12] 1781 	clr	_P1_2
                                   1782 ;	lcd.c:420: LCD_RW = 0;
                                   1783 ;	assignBit
      0006BB C2 93            [12] 1784 	clr	_P1_3
                                   1785 ;	lcd.c:421: lcd_ptr = address;
      0006BD 90 04 44         [24] 1786 	mov	dptr,#_read_lcd_address_PARM_2
      0006C0 E0               [24] 1787 	movx	a,@dptr
      0006C1 90 F0 00         [24] 1788 	mov	dptr,#_lcd_ptr
      0006C4 F0               [24] 1789 	movx	@dptr,a
                                   1790 ;	lcd.c:422: lcdbusywait();
      0006C5 12 01 7A         [24] 1791 	lcall	_lcdbusywait
      0006C8                       1792 00103$:
                                   1793 ;	lcd.c:426: LCD_RS = 1;
                                   1794 ;	assignBit
      0006C8 D2 92            [12] 1795 	setb	_P1_2
                                   1796 ;	lcd.c:427: LCD_RW = 1;
                                   1797 ;	assignBit
      0006CA D2 93            [12] 1798 	setb	_P1_3
                                   1799 ;	lcd.c:430: return lcd_ptr;
      0006CC 90 F0 00         [24] 1800 	mov	dptr,#_lcd_ptr
      0006CF E0               [24] 1801 	movx	a,@dptr
                                   1802 ;	lcd.c:431: }
      0006D0 F5 82            [12] 1803 	mov	dpl,a
      0006D2 22               [24] 1804 	ret
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
      0006D3                       1815 _handler_lcd_hexdump:
                                   1816 ;	lcd.c:460: }
      0006D3 D2 04            [12] 1817 	setb	_handler_lcd_hexdump_sloc0_1_0
      0006D5 10 AF 02         [24] 1818 	jbc	ea,00141$
      0006D8 C2 04            [12] 1819 	clr	_handler_lcd_hexdump_sloc0_1_0
      0006DA                       1820 00141$:
                                   1821 ;	lcd.c:435: printf("\033[1;34m");                           // Set terminal color to blue
      0006DA 74 85            [12] 1822 	mov	a,#___str_18
      0006DC C0 E0            [24] 1823 	push	acc
      0006DE 74 2C            [12] 1824 	mov	a,#(___str_18 >> 8)
      0006E0 C0 E0            [24] 1825 	push	acc
      0006E2 74 80            [12] 1826 	mov	a,#0x80
      0006E4 C0 E0            [24] 1827 	push	acc
      0006E6 12 1F CC         [24] 1828 	lcall	_printf
      0006E9 15 81            [12] 1829 	dec	sp
      0006EB 15 81            [12] 1830 	dec	sp
      0006ED 15 81            [12] 1831 	dec	sp
                                   1832 ;	lcd.c:436: save_cursor_address=get_cursor_address();       // Save the current cursor address
      0006EF 12 02 0C         [24] 1833 	lcall	_get_cursor_address
      0006F2 E5 82            [12] 1834 	mov	a,dpl
      0006F4 90 05 76         [24] 1835 	mov	dptr,#_save_cursor_address
      0006F7 F0               [24] 1836 	movx	@dptr,a
                                   1837 ;	lcd.c:437: printf("\n\rPrinting Hexdump of DDRAM\n\r");
      0006F8 74 8D            [12] 1838 	mov	a,#___str_19
      0006FA C0 E0            [24] 1839 	push	acc
      0006FC 74 2C            [12] 1840 	mov	a,#(___str_19 >> 8)
      0006FE C0 E0            [24] 1841 	push	acc
      000700 74 80            [12] 1842 	mov	a,#0x80
      000702 C0 E0            [24] 1843 	push	acc
      000704 12 1F CC         [24] 1844 	lcall	_printf
      000707 15 81            [12] 1845 	dec	sp
      000709 15 81            [12] 1846 	dec	sp
      00070B 15 81            [12] 1847 	dec	sp
                                   1848 ;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
      00070D 7E 00            [12] 1849 	mov	r6,#0x00
      00070F 7F 00            [12] 1850 	mov	r7,#0x00
      000711                       1851 00108$:
      000711 8E 04            [24] 1852 	mov	ar4,r6
      000713 8F 05            [24] 1853 	mov	ar5,r7
      000715 C3               [12] 1854 	clr	c
      000716 74 5F            [12] 1855 	mov	a,#0x5f
      000718 9C               [12] 1856 	subb	a,r4
      000719 E4               [12] 1857 	clr	a
      00071A 9D               [12] 1858 	subb	a,r5
      00071B 40 5D            [24] 1859 	jc	00103$
                                   1860 ;	lcd.c:441: if(k%16 == 0){                              // Print new line and address every 16 bytes
      00071D EC               [12] 1861 	mov	a,r4
      00071E 54 0F            [12] 1862 	anl	a,#0x0f
      000720 70 21            [24] 1863 	jnz	00102$
                                   1864 ;	lcd.c:442: printf("\n\r0x%02x: ",k);
      000722 C0 07            [24] 1865 	push	ar7
      000724 C0 06            [24] 1866 	push	ar6
      000726 C0 06            [24] 1867 	push	ar6
      000728 C0 07            [24] 1868 	push	ar7
      00072A 74 AB            [12] 1869 	mov	a,#___str_20
      00072C C0 E0            [24] 1870 	push	acc
      00072E 74 2C            [12] 1871 	mov	a,#(___str_20 >> 8)
      000730 C0 E0            [24] 1872 	push	acc
      000732 74 80            [12] 1873 	mov	a,#0x80
      000734 C0 E0            [24] 1874 	push	acc
      000736 12 1F CC         [24] 1875 	lcall	_printf
      000739 E5 81            [12] 1876 	mov	a,sp
      00073B 24 FB            [12] 1877 	add	a,#0xfb
      00073D F5 81            [12] 1878 	mov	sp,a
      00073F D0 06            [24] 1879 	pop	ar6
      000741 D0 07            [24] 1880 	pop	ar7
      000743                       1881 00102$:
                                   1882 ;	lcd.c:444: printf("0x%02x ",read_lcd_address(1,k));    // Read and print the value at the current address
      000743 90 04 44         [24] 1883 	mov	dptr,#_read_lcd_address_PARM_2
      000746 EE               [12] 1884 	mov	a,r6
      000747 F0               [24] 1885 	movx	@dptr,a
      000748 75 82 01         [24] 1886 	mov	dpl,#0x01
      00074B C0 07            [24] 1887 	push	ar7
      00074D C0 06            [24] 1888 	push	ar6
      00074F 12 06 A3         [24] 1889 	lcall	_read_lcd_address
      000752 AD 82            [24] 1890 	mov	r5,dpl
      000754 7C 00            [12] 1891 	mov	r4,#0x00
      000756 C0 05            [24] 1892 	push	ar5
      000758 C0 04            [24] 1893 	push	ar4
      00075A 74 B6            [12] 1894 	mov	a,#___str_21
      00075C C0 E0            [24] 1895 	push	acc
      00075E 74 2C            [12] 1896 	mov	a,#(___str_21 >> 8)
      000760 C0 E0            [24] 1897 	push	acc
      000762 74 80            [12] 1898 	mov	a,#0x80
      000764 C0 E0            [24] 1899 	push	acc
      000766 12 1F CC         [24] 1900 	lcall	_printf
      000769 E5 81            [12] 1901 	mov	a,sp
      00076B 24 FB            [12] 1902 	add	a,#0xfb
      00076D F5 81            [12] 1903 	mov	sp,a
      00076F D0 06            [24] 1904 	pop	ar6
      000771 D0 07            [24] 1905 	pop	ar7
                                   1906 ;	lcd.c:440: for(uint16_t k=0x00;k<=0x5F;k++){
      000773 0E               [12] 1907 	inc	r6
      000774 BE 00 9A         [24] 1908 	cjne	r6,#0x00,00108$
      000777 0F               [12] 1909 	inc	r7
      000778 80 97            [24] 1910 	sjmp	00108$
      00077A                       1911 00103$:
                                   1912 ;	lcd.c:447: printf("\n\r\n\rPrinting Hexdump of CGRAM\n\r");
      00077A 74 BE            [12] 1913 	mov	a,#___str_22
      00077C C0 E0            [24] 1914 	push	acc
      00077E 74 2C            [12] 1915 	mov	a,#(___str_22 >> 8)
      000780 C0 E0            [24] 1916 	push	acc
      000782 74 80            [12] 1917 	mov	a,#0x80
      000784 C0 E0            [24] 1918 	push	acc
      000786 12 1F CC         [24] 1919 	lcall	_printf
      000789 15 81            [12] 1920 	dec	sp
      00078B 15 81            [12] 1921 	dec	sp
      00078D 15 81            [12] 1922 	dec	sp
                                   1923 ;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
      00078F 7E 40            [12] 1924 	mov	r6,#0x40
      000791 7F 00            [12] 1925 	mov	r7,#0x00
      000793                       1926 00111$:
      000793 8E 04            [24] 1927 	mov	ar4,r6
      000795 8F 05            [24] 1928 	mov	ar5,r7
      000797 C3               [12] 1929 	clr	c
      000798 74 7F            [12] 1930 	mov	a,#0x7f
      00079A 9C               [12] 1931 	subb	a,r4
      00079B E4               [12] 1932 	clr	a
      00079C 9D               [12] 1933 	subb	a,r5
      00079D 40 5D            [24] 1934 	jc	00106$
                                   1935 ;	lcd.c:451: if(k%16 == 0){                              // Print new line and address every 16 bytes
      00079F EC               [12] 1936 	mov	a,r4
      0007A0 54 0F            [12] 1937 	anl	a,#0x0f
      0007A2 70 21            [24] 1938 	jnz	00105$
                                   1939 ;	lcd.c:452: printf("\n\r0x%02x: ",k);
      0007A4 C0 07            [24] 1940 	push	ar7
      0007A6 C0 06            [24] 1941 	push	ar6
      0007A8 C0 06            [24] 1942 	push	ar6
      0007AA C0 07            [24] 1943 	push	ar7
      0007AC 74 AB            [12] 1944 	mov	a,#___str_20
      0007AE C0 E0            [24] 1945 	push	acc
      0007B0 74 2C            [12] 1946 	mov	a,#(___str_20 >> 8)
      0007B2 C0 E0            [24] 1947 	push	acc
      0007B4 74 80            [12] 1948 	mov	a,#0x80
      0007B6 C0 E0            [24] 1949 	push	acc
      0007B8 12 1F CC         [24] 1950 	lcall	_printf
      0007BB E5 81            [12] 1951 	mov	a,sp
      0007BD 24 FB            [12] 1952 	add	a,#0xfb
      0007BF F5 81            [12] 1953 	mov	sp,a
      0007C1 D0 06            [24] 1954 	pop	ar6
      0007C3 D0 07            [24] 1955 	pop	ar7
      0007C5                       1956 00105$:
                                   1957 ;	lcd.c:454: printf("0x%02x ",read_lcd_address(0,k));    // Read and print the value at the current address
      0007C5 90 04 44         [24] 1958 	mov	dptr,#_read_lcd_address_PARM_2
      0007C8 EE               [12] 1959 	mov	a,r6
      0007C9 F0               [24] 1960 	movx	@dptr,a
      0007CA 75 82 00         [24] 1961 	mov	dpl,#0x00
      0007CD C0 07            [24] 1962 	push	ar7
      0007CF C0 06            [24] 1963 	push	ar6
      0007D1 12 06 A3         [24] 1964 	lcall	_read_lcd_address
      0007D4 AD 82            [24] 1965 	mov	r5,dpl
      0007D6 7C 00            [12] 1966 	mov	r4,#0x00
      0007D8 C0 05            [24] 1967 	push	ar5
      0007DA C0 04            [24] 1968 	push	ar4
      0007DC 74 B6            [12] 1969 	mov	a,#___str_21
      0007DE C0 E0            [24] 1970 	push	acc
      0007E0 74 2C            [12] 1971 	mov	a,#(___str_21 >> 8)
      0007E2 C0 E0            [24] 1972 	push	acc
      0007E4 74 80            [12] 1973 	mov	a,#0x80
      0007E6 C0 E0            [24] 1974 	push	acc
      0007E8 12 1F CC         [24] 1975 	lcall	_printf
      0007EB E5 81            [12] 1976 	mov	a,sp
      0007ED 24 FB            [12] 1977 	add	a,#0xfb
      0007EF F5 81            [12] 1978 	mov	sp,a
      0007F1 D0 06            [24] 1979 	pop	ar6
      0007F3 D0 07            [24] 1980 	pop	ar7
                                   1981 ;	lcd.c:450: for(uint16_t k=0x40;k<=0x7F;k++){
      0007F5 0E               [12] 1982 	inc	r6
      0007F6 BE 00 9A         [24] 1983 	cjne	r6,#0x00,00111$
      0007F9 0F               [12] 1984 	inc	r7
      0007FA 80 97            [24] 1985 	sjmp	00111$
      0007FC                       1986 00106$:
                                   1987 ;	lcd.c:457: printf("\n\r");
      0007FC 74 E3            [12] 1988 	mov	a,#___str_4
      0007FE C0 E0            [24] 1989 	push	acc
      000800 74 2A            [12] 1990 	mov	a,#(___str_4 >> 8)
      000802 C0 E0            [24] 1991 	push	acc
      000804 74 80            [12] 1992 	mov	a,#0x80
      000806 C0 E0            [24] 1993 	push	acc
      000808 12 1F CC         [24] 1994 	lcall	_printf
      00080B 15 81            [12] 1995 	dec	sp
      00080D 15 81            [12] 1996 	dec	sp
      00080F 15 81            [12] 1997 	dec	sp
                                   1998 ;	lcd.c:458: lcdgotoaddr(save_cursor_address);               // Restore the original cursor position
      000811 90 05 76         [24] 1999 	mov	dptr,#_save_cursor_address
      000814 E0               [24] 2000 	movx	a,@dptr
      000815 F5 82            [12] 2001 	mov	dpl,a
      000817 12 02 19         [24] 2002 	lcall	_lcdgotoaddr
                                   2003 ;	lcd.c:459: printf("\033[0m");                              // Reset terminal color to default
      00081A 74 DE            [12] 2004 	mov	a,#___str_23
      00081C C0 E0            [24] 2005 	push	acc
      00081E 74 2C            [12] 2006 	mov	a,#(___str_23 >> 8)
      000820 C0 E0            [24] 2007 	push	acc
      000822 74 80            [12] 2008 	mov	a,#0x80
      000824 C0 E0            [24] 2009 	push	acc
      000826 12 1F CC         [24] 2010 	lcall	_printf
      000829 15 81            [12] 2011 	dec	sp
      00082B 15 81            [12] 2012 	dec	sp
      00082D 15 81            [12] 2013 	dec	sp
      00082F A2 04            [12] 2014 	mov	c,_handler_lcd_hexdump_sloc0_1_0
      000831 92 AF            [24] 2015 	mov	ea,c
                                   2016 ;	lcd.c:461: }
      000833 22               [24] 2017 	ret
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
      000834                       2029 _get_hex_value:
                                   2030 ;	lcd.c:465: printf("\n\rEnter a hexadecimal value between (00 to 1F) or (40 to 58): ");
      000834 74 E3            [12] 2031 	mov	a,#___str_24
      000836 C0 E0            [24] 2032 	push	acc
      000838 74 2C            [12] 2033 	mov	a,#(___str_24 >> 8)
      00083A C0 E0            [24] 2034 	push	acc
      00083C 74 80            [12] 2035 	mov	a,#0x80
      00083E C0 E0            [24] 2036 	push	acc
      000840 12 1F CC         [24] 2037 	lcall	_printf
      000843 15 81            [12] 2038 	dec	sp
      000845 15 81            [12] 2039 	dec	sp
      000847 15 81            [12] 2040 	dec	sp
                                   2041 ;	lcd.c:467: while (1) {                         //loop until a valid input is entered
      000849                       2042 00116$:
                                   2043 ;	lcd.c:468: digit1 = putchar(getchar());    //get first digit from input and display it
      000849 12 15 E1         [24] 2044 	lcall	_getchar
      00084C 12 15 C2         [24] 2045 	lcall	_putchar
      00084F AE 82            [24] 2046 	mov	r6,dpl
                                   2047 ;	lcd.c:469: digit2 = putchar(getchar());    //get second digit from input and display it
      000851 C0 06            [24] 2048 	push	ar6
      000853 12 15 E1         [24] 2049 	lcall	_getchar
      000856 12 15 C2         [24] 2050 	lcall	_putchar
      000859 AD 82            [24] 2051 	mov	r5,dpl
      00085B AF 83            [24] 2052 	mov	r7,dph
      00085D D0 06            [24] 2053 	pop	ar6
                                   2054 ;	lcd.c:472: if (digit1 >= '0' && digit1 <= '9' && digit2 >= '0' && digit2 <= '9') {
      00085F BE 30 00         [24] 2055 	cjne	r6,#0x30,00160$
      000862                       2056 00160$:
      000862 40 24            [24] 2057 	jc	00110$
      000864 EE               [12] 2058 	mov	a,r6
      000865 24 C6            [12] 2059 	add	a,#0xff - 0x39
      000867 40 1F            [24] 2060 	jc	00110$
      000869 BD 30 00         [24] 2061 	cjne	r5,#0x30,00163$
      00086C                       2062 00163$:
      00086C 40 1A            [24] 2063 	jc	00110$
      00086E ED               [12] 2064 	mov	a,r5
      00086F 24 C6            [12] 2065 	add	a,#0xff - 0x39
      000871 40 15            [24] 2066 	jc	00110$
                                   2067 ;	lcd.c:473: hex_value = ((digit1 - '0') << 4) | (digit2 - '0'); //convert the digits to a hexadecimal value
      000873 8E 07            [24] 2068 	mov	ar7,r6
      000875 EF               [12] 2069 	mov	a,r7
      000876 24 D0            [12] 2070 	add	a,#0xd0
      000878 C4               [12] 2071 	swap	a
      000879 54 F0            [12] 2072 	anl	a,#0xf0
      00087B FF               [12] 2073 	mov	r7,a
      00087C 8D 04            [24] 2074 	mov	ar4,r5
      00087E EC               [12] 2075 	mov	a,r4
      00087F 24 D0            [12] 2076 	add	a,#0xd0
      000881 90 04 46         [24] 2077 	mov	dptr,#_get_hex_value_hex_value_65536_165
      000884 4F               [12] 2078 	orl	a,r7
      000885 F0               [24] 2079 	movx	@dptr,a
                                   2080 ;	lcd.c:474: break; //break the loop
      000886 80 5A            [24] 2081 	sjmp	00117$
      000888                       2082 00110$:
                                   2083 ;	lcd.c:477: else if ((digit1 == '0' || digit1 == '1' || digit1 == '4' || digit1 == '5') && (digit2 >= 'A' && digit2 <= 'F')) {
      000888 BE 30 02         [24] 2084 	cjne	r6,#0x30,00166$
      00088B 80 0D            [24] 2085 	sjmp	00108$
      00088D                       2086 00166$:
      00088D BE 31 02         [24] 2087 	cjne	r6,#0x31,00167$
      000890 80 08            [24] 2088 	sjmp	00108$
      000892                       2089 00167$:
      000892 BE 34 02         [24] 2090 	cjne	r6,#0x34,00168$
      000895 80 03            [24] 2091 	sjmp	00108$
      000897                       2092 00168$:
      000897 BE 35 1B         [24] 2093 	cjne	r6,#0x35,00102$
      00089A                       2094 00108$:
      00089A BD 41 00         [24] 2095 	cjne	r5,#0x41,00171$
      00089D                       2096 00171$:
      00089D 40 16            [24] 2097 	jc	00102$
      00089F ED               [12] 2098 	mov	a,r5
      0008A0 24 B9            [12] 2099 	add	a,#0xff - 0x46
      0008A2 40 11            [24] 2100 	jc	00102$
                                   2101 ;	lcd.c:478: hex_value = ((digit1 - '0') << 4) | (digit2 - '7'); //convert the digits to a hexadecimal value
      0008A4 EE               [12] 2102 	mov	a,r6
      0008A5 24 D0            [12] 2103 	add	a,#0xd0
      0008A7 C4               [12] 2104 	swap	a
      0008A8 54 F0            [12] 2105 	anl	a,#0xf0
      0008AA FE               [12] 2106 	mov	r6,a
      0008AB ED               [12] 2107 	mov	a,r5
      0008AC 24 C9            [12] 2108 	add	a,#0xc9
      0008AE 90 04 46         [24] 2109 	mov	dptr,#_get_hex_value_hex_value_65536_165
      0008B1 4E               [12] 2110 	orl	a,r6
      0008B2 F0               [24] 2111 	movx	@dptr,a
                                   2112 ;	lcd.c:479: break; //break the loop
      0008B3 80 2D            [24] 2113 	sjmp	00117$
      0008B5                       2114 00102$:
                                   2115 ;	lcd.c:482: printf("\n\rInvalid input. ");      //display error message if input is invalid
      0008B5 74 22            [12] 2116 	mov	a,#___str_25
      0008B7 C0 E0            [24] 2117 	push	acc
      0008B9 74 2D            [12] 2118 	mov	a,#(___str_25 >> 8)
      0008BB C0 E0            [24] 2119 	push	acc
      0008BD 74 80            [12] 2120 	mov	a,#0x80
      0008BF C0 E0            [24] 2121 	push	acc
      0008C1 12 1F CC         [24] 2122 	lcall	_printf
      0008C4 15 81            [12] 2123 	dec	sp
      0008C6 15 81            [12] 2124 	dec	sp
      0008C8 15 81            [12] 2125 	dec	sp
                                   2126 ;	lcd.c:484: printf("Please enter a valid input: "); //prompt user to enter a valid input
      0008CA 74 34            [12] 2127 	mov	a,#___str_26
      0008CC C0 E0            [24] 2128 	push	acc
      0008CE 74 2D            [12] 2129 	mov	a,#(___str_26 >> 8)
      0008D0 C0 E0            [24] 2130 	push	acc
      0008D2 74 80            [12] 2131 	mov	a,#0x80
      0008D4 C0 E0            [24] 2132 	push	acc
      0008D6 12 1F CC         [24] 2133 	lcall	_printf
      0008D9 15 81            [12] 2134 	dec	sp
      0008DB 15 81            [12] 2135 	dec	sp
      0008DD 15 81            [12] 2136 	dec	sp
      0008DF 02 08 49         [24] 2137 	ljmp	00116$
      0008E2                       2138 00117$:
                                   2139 ;	lcd.c:486: return hex_value;                           //return the hexadecimal value
      0008E2 90 04 46         [24] 2140 	mov	dptr,#_get_hex_value_hex_value_65536_165
      0008E5 E0               [24] 2141 	movx	a,@dptr
                                   2142 ;	lcd.c:487: }
      0008E6 F5 82            [12] 2143 	mov	dpl,a
      0008E8 22               [24] 2144 	ret
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
      0008E9                       2161 _create_custom_char:
      0008E9 E5 82            [12] 2162 	mov	a,dpl
      0008EB 90 04 4A         [24] 2163 	mov	dptr,#_create_custom_char_char_code_65536_170
      0008EE F0               [24] 2164 	movx	@dptr,a
                                   2165 ;	lcd.c:491: unsigned char code_num = char_code - '0';
      0008EF E0               [24] 2166 	movx	a,@dptr
                                   2167 ;	lcd.c:492: unsigned char bit_3_shift = code_num << 3;
      0008F0 24 D0            [12] 2168 	add	a,#0xd0
      0008F2 C4               [12] 2169 	swap	a
      0008F3 03               [12] 2170 	rr	a
      0008F4 54 F8            [12] 2171 	anl	a,#0xf8
      0008F6 FF               [12] 2172 	mov	r7,a
                                   2173 ;	lcd.c:493: unsigned char char_num = bit_6 | bit_3_shift;
      0008F7 43 07 40         [24] 2174 	orl	ar7,#0x40
                                   2175 ;	lcd.c:496: printf_tiny("\n\rThe custom character with code 0x%x has been created.", char_num);
      0008FA 8F 05            [24] 2176 	mov	ar5,r7
      0008FC 7E 00            [12] 2177 	mov	r6,#0x00
      0008FE C0 07            [24] 2178 	push	ar7
      000900 C0 06            [24] 2179 	push	ar6
      000902 C0 05            [24] 2180 	push	ar5
      000904 C0 05            [24] 2181 	push	ar5
      000906 C0 06            [24] 2182 	push	ar6
      000908 74 51            [12] 2183 	mov	a,#___str_27
      00090A C0 E0            [24] 2184 	push	acc
      00090C 74 2D            [12] 2185 	mov	a,#(___str_27 >> 8)
      00090E C0 E0            [24] 2186 	push	acc
      000910 12 19 17         [24] 2187 	lcall	_printf_tiny
      000913 E5 81            [12] 2188 	mov	a,sp
      000915 24 FC            [12] 2189 	add	a,#0xfc
      000917 F5 81            [12] 2190 	mov	sp,a
      000919 D0 05            [24] 2191 	pop	ar5
      00091B D0 06            [24] 2192 	pop	ar6
      00091D D0 07            [24] 2193 	pop	ar7
                                   2194 ;	lcd.c:500: while (i < 8) {
      00091F 90 04 47         [24] 2195 	mov	dptr,#_create_custom_char_PARM_2
      000922 E0               [24] 2196 	movx	a,@dptr
      000923 F5 08            [12] 2197 	mov	_create_custom_char_sloc0_1_0,a
      000925 A3               [24] 2198 	inc	dptr
      000926 E0               [24] 2199 	movx	a,@dptr
      000927 F5 09            [12] 2200 	mov	(_create_custom_char_sloc0_1_0 + 1),a
      000929 A3               [24] 2201 	inc	dptr
      00092A E0               [24] 2202 	movx	a,@dptr
      00092B F5 0A            [12] 2203 	mov	(_create_custom_char_sloc0_1_0 + 2),a
      00092D 78 00            [12] 2204 	mov	r0,#0x00
      00092F 79 00            [12] 2205 	mov	r1,#0x00
      000931                       2206 00101$:
      000931 C3               [12] 2207 	clr	c
      000932 E8               [12] 2208 	mov	a,r0
      000933 94 08            [12] 2209 	subb	a,#0x08
      000935 E9               [12] 2210 	mov	a,r1
      000936 64 80            [12] 2211 	xrl	a,#0x80
      000938 94 80            [12] 2212 	subb	a,#0x80
      00093A 40 01            [24] 2213 	jc	00115$
      00093C 22               [24] 2214 	ret
      00093D                       2215 00115$:
                                   2216 ;	lcd.c:502: LCD_RS = 0;
                                   2217 ;	assignBit
      00093D C2 92            [12] 2218 	clr	_P1_2
                                   2219 ;	lcd.c:503: LCD_RW = 0;
                                   2220 ;	assignBit
      00093F C2 93            [12] 2221 	clr	_P1_3
                                   2222 ;	lcd.c:505: lcd_ptr = char_num + i;
      000941 88 04            [24] 2223 	mov	ar4,r0
      000943 8F 03            [24] 2224 	mov	ar3,r7
      000945 90 F0 00         [24] 2225 	mov	dptr,#_lcd_ptr
      000948 EC               [12] 2226 	mov	a,r4
      000949 2B               [12] 2227 	add	a,r3
      00094A F0               [24] 2228 	movx	@dptr,a
                                   2229 ;	lcd.c:507: printf_tiny("\n\rLCD_ptr = %x", char_num + i);
      00094B E8               [12] 2230 	mov	a,r0
      00094C 2D               [12] 2231 	add	a,r5
      00094D FB               [12] 2232 	mov	r3,a
      00094E E9               [12] 2233 	mov	a,r1
      00094F 3E               [12] 2234 	addc	a,r6
      000950 FC               [12] 2235 	mov	r4,a
      000951 C0 07            [24] 2236 	push	ar7
      000953 C0 06            [24] 2237 	push	ar6
      000955 C0 05            [24] 2238 	push	ar5
      000957 C0 01            [24] 2239 	push	ar1
      000959 C0 00            [24] 2240 	push	ar0
      00095B C0 03            [24] 2241 	push	ar3
      00095D C0 04            [24] 2242 	push	ar4
      00095F 74 89            [12] 2243 	mov	a,#___str_28
      000961 C0 E0            [24] 2244 	push	acc
      000963 74 2D            [12] 2245 	mov	a,#(___str_28 >> 8)
      000965 C0 E0            [24] 2246 	push	acc
      000967 12 19 17         [24] 2247 	lcall	_printf_tiny
      00096A E5 81            [12] 2248 	mov	a,sp
      00096C 24 FC            [12] 2249 	add	a,#0xfc
      00096E F5 81            [12] 2250 	mov	sp,a
                                   2251 ;	lcd.c:509: lcdbusywait();
      000970 12 01 7A         [24] 2252 	lcall	_lcdbusywait
      000973 D0 00            [24] 2253 	pop	ar0
      000975 D0 01            [24] 2254 	pop	ar1
                                   2255 ;	lcd.c:511: LCD_RS = 1;
                                   2256 ;	assignBit
      000977 D2 92            [12] 2257 	setb	_P1_2
                                   2258 ;	lcd.c:512: LCD_RW = 0;
                                   2259 ;	assignBit
      000979 C2 93            [12] 2260 	clr	_P1_3
                                   2261 ;	lcd.c:513: lcd_ptr = row_values[i];
      00097B E8               [12] 2262 	mov	a,r0
      00097C 25 08            [12] 2263 	add	a,_create_custom_char_sloc0_1_0
      00097E FA               [12] 2264 	mov	r2,a
      00097F E9               [12] 2265 	mov	a,r1
      000980 35 09            [12] 2266 	addc	a,(_create_custom_char_sloc0_1_0 + 1)
      000982 FB               [12] 2267 	mov	r3,a
      000983 AC 0A            [24] 2268 	mov	r4,(_create_custom_char_sloc0_1_0 + 2)
      000985 8A 82            [24] 2269 	mov	dpl,r2
      000987 8B 83            [24] 2270 	mov	dph,r3
      000989 8C F0            [24] 2271 	mov	b,r4
      00098B 12 29 F8         [24] 2272 	lcall	__gptrget
      00098E 90 F0 00         [24] 2273 	mov	dptr,#_lcd_ptr
      000991 F0               [24] 2274 	movx	@dptr,a
                                   2275 ;	lcd.c:514: lcdbusywait();
      000992 C0 01            [24] 2276 	push	ar1
      000994 C0 00            [24] 2277 	push	ar0
      000996 12 01 7A         [24] 2278 	lcall	_lcdbusywait
      000999 D0 00            [24] 2279 	pop	ar0
      00099B D0 01            [24] 2280 	pop	ar1
      00099D D0 05            [24] 2281 	pop	ar5
      00099F D0 06            [24] 2282 	pop	ar6
      0009A1 D0 07            [24] 2283 	pop	ar7
                                   2284 ;	lcd.c:516: i++;
      0009A3 08               [12] 2285 	inc	r0
      0009A4 B8 00 01         [24] 2286 	cjne	r0,#0x00,00116$
      0009A7 09               [12] 2287 	inc	r1
      0009A8                       2288 00116$:
                                   2289 ;	lcd.c:518: }
      0009A8 02 09 31         [24] 2290 	ljmp	00101$
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
      0009AB                       2303 _handler_custom_char:
                                   2304 ;	lcd.c:521: printf("\033[0;33m"); // Set text color to yellow
      0009AB 74 98            [12] 2305 	mov	a,#___str_29
      0009AD C0 E0            [24] 2306 	push	acc
      0009AF 74 2D            [12] 2307 	mov	a,#(___str_29 >> 8)
      0009B1 C0 E0            [24] 2308 	push	acc
      0009B3 74 80            [12] 2309 	mov	a,#0x80
      0009B5 C0 E0            [24] 2310 	push	acc
      0009B7 12 1F CC         [24] 2311 	lcall	_printf
      0009BA 15 81            [12] 2312 	dec	sp
      0009BC 15 81            [12] 2313 	dec	sp
      0009BE 15 81            [12] 2314 	dec	sp
                                   2315 ;	lcd.c:524: unsigned int save_address = get_cursor_address();
      0009C0 12 02 0C         [24] 2316 	lcall	_get_cursor_address
      0009C3 AF 82            [24] 2317 	mov	r7,dpl
                                   2318 ;	lcd.c:526: printf_tiny("Please enter the code for the custom character: ");
      0009C5 C0 07            [24] 2319 	push	ar7
      0009C7 74 A0            [12] 2320 	mov	a,#___str_30
      0009C9 C0 E0            [24] 2321 	push	acc
      0009CB 74 2D            [12] 2322 	mov	a,#(___str_30 >> 8)
      0009CD C0 E0            [24] 2323 	push	acc
      0009CF 12 19 17         [24] 2324 	lcall	_printf_tiny
      0009D2 15 81            [12] 2325 	dec	sp
      0009D4 15 81            [12] 2326 	dec	sp
                                   2327 ;	lcd.c:528: unsigned char char_code = getchar();
      0009D6 12 15 E1         [24] 2328 	lcall	_getchar
      0009D9 AD 82            [24] 2329 	mov	r5,dpl
                                   2330 ;	lcd.c:531: printf_tiny("%c\n\r", char_code);
      0009DB 8D 04            [24] 2331 	mov	ar4,r5
      0009DD 7E 00            [12] 2332 	mov	r6,#0x00
      0009DF C0 05            [24] 2333 	push	ar5
      0009E1 C0 04            [24] 2334 	push	ar4
      0009E3 C0 06            [24] 2335 	push	ar6
      0009E5 74 D1            [12] 2336 	mov	a,#___str_31
      0009E7 C0 E0            [24] 2337 	push	acc
      0009E9 74 2D            [12] 2338 	mov	a,#(___str_31 >> 8)
      0009EB C0 E0            [24] 2339 	push	acc
      0009ED 12 19 17         [24] 2340 	lcall	_printf_tiny
      0009F0 E5 81            [12] 2341 	mov	a,sp
      0009F2 24 FC            [12] 2342 	add	a,#0xfc
      0009F4 F5 81            [12] 2343 	mov	sp,a
      0009F6 D0 05            [24] 2344 	pop	ar5
      0009F8 D0 07            [24] 2345 	pop	ar7
                                   2346 ;	lcd.c:537: while (j < 8) { // Loop through each row of the custom character and get its value from the user
      0009FA 7E 00            [12] 2347 	mov	r6,#0x00
      0009FC                       2348 00101$:
      0009FC BE 08 00         [24] 2349 	cjne	r6,#0x08,00115$
      0009FF                       2350 00115$:
      0009FF 50 4B            [24] 2351 	jnc	00103$
                                   2352 ;	lcd.c:538: printf_tiny("\n\rPlease enter the value for row %d: ", j);
      000A01 8E 03            [24] 2353 	mov	ar3,r6
      000A03 7C 00            [12] 2354 	mov	r4,#0x00
      000A05 C0 07            [24] 2355 	push	ar7
      000A07 C0 06            [24] 2356 	push	ar6
      000A09 C0 05            [24] 2357 	push	ar5
      000A0B C0 03            [24] 2358 	push	ar3
      000A0D C0 04            [24] 2359 	push	ar4
      000A0F 74 D6            [12] 2360 	mov	a,#___str_32
      000A11 C0 E0            [24] 2361 	push	acc
      000A13 74 2D            [12] 2362 	mov	a,#(___str_32 >> 8)
      000A15 C0 E0            [24] 2363 	push	acc
      000A17 12 19 17         [24] 2364 	lcall	_printf_tiny
      000A1A E5 81            [12] 2365 	mov	a,sp
      000A1C 24 FC            [12] 2366 	add	a,#0xfc
      000A1E F5 81            [12] 2367 	mov	sp,a
      000A20 D0 05            [24] 2368 	pop	ar5
      000A22 D0 06            [24] 2369 	pop	ar6
                                   2370 ;	lcd.c:539: row_values[j] = get_hex_value();
      000A24 EE               [12] 2371 	mov	a,r6
      000A25 24 4B            [12] 2372 	add	a,#_handler_custom_char_row_values_65539_178
      000A27 FB               [12] 2373 	mov	r3,a
      000A28 E4               [12] 2374 	clr	a
      000A29 34 04            [12] 2375 	addc	a,#(_handler_custom_char_row_values_65539_178 >> 8)
      000A2B FC               [12] 2376 	mov	r4,a
      000A2C C0 06            [24] 2377 	push	ar6
      000A2E C0 05            [24] 2378 	push	ar5
      000A30 C0 04            [24] 2379 	push	ar4
      000A32 C0 03            [24] 2380 	push	ar3
      000A34 12 08 34         [24] 2381 	lcall	_get_hex_value
      000A37 AA 82            [24] 2382 	mov	r2,dpl
      000A39 D0 03            [24] 2383 	pop	ar3
      000A3B D0 04            [24] 2384 	pop	ar4
      000A3D D0 05            [24] 2385 	pop	ar5
      000A3F D0 06            [24] 2386 	pop	ar6
      000A41 D0 07            [24] 2387 	pop	ar7
      000A43 8B 82            [24] 2388 	mov	dpl,r3
      000A45 8C 83            [24] 2389 	mov	dph,r4
      000A47 EA               [12] 2390 	mov	a,r2
      000A48 F0               [24] 2391 	movx	@dptr,a
                                   2392 ;	lcd.c:540: j++;
      000A49 0E               [12] 2393 	inc	r6
      000A4A 80 B0            [24] 2394 	sjmp	00101$
      000A4C                       2395 00103$:
                                   2396 ;	lcd.c:555: }
      000A4C D2 05            [12] 2397 	setb	_handler_custom_char_sloc0_1_0
      000A4E 10 AF 02         [24] 2398 	jbc	ea,00117$
      000A51 C2 05            [12] 2399 	clr	_handler_custom_char_sloc0_1_0
      000A53                       2400 00117$:
                                   2401 ;	lcd.c:545: create_custom_char(char_code, row_values);
      000A53 90 04 47         [24] 2402 	mov	dptr,#_create_custom_char_PARM_2
      000A56 74 4B            [12] 2403 	mov	a,#_handler_custom_char_row_values_65539_178
      000A58 F0               [24] 2404 	movx	@dptr,a
      000A59 74 04            [12] 2405 	mov	a,#(_handler_custom_char_row_values_65539_178 >> 8)
      000A5B A3               [24] 2406 	inc	dptr
      000A5C F0               [24] 2407 	movx	@dptr,a
      000A5D E4               [12] 2408 	clr	a
      000A5E A3               [24] 2409 	inc	dptr
      000A5F F0               [24] 2410 	movx	@dptr,a
      000A60 8D 82            [24] 2411 	mov	dpl,r5
      000A62 C0 07            [24] 2412 	push	ar7
      000A64 C0 05            [24] 2413 	push	ar5
      000A66 12 08 E9         [24] 2414 	lcall	_create_custom_char
                                   2415 ;	lcd.c:548: handler_lcdgotoxy();
      000A69 12 04 F3         [24] 2416 	lcall	_handler_lcdgotoxy
      000A6C D0 05            [24] 2417 	pop	ar5
                                   2418 ;	lcd.c:551: lcdputch(char_code - '0');
      000A6E ED               [12] 2419 	mov	a,r5
      000A6F 24 D0            [12] 2420 	add	a,#0xd0
      000A71 F5 82            [12] 2421 	mov	dpl,a
      000A73 12 02 EF         [24] 2422 	lcall	_lcdputch
      000A76 D0 07            [24] 2423 	pop	ar7
                                   2424 ;	lcd.c:554: lcdgotoaddr(save_address);
      000A78 8F 82            [24] 2425 	mov	dpl,r7
      000A7A 12 02 19         [24] 2426 	lcall	_lcdgotoaddr
      000A7D A2 05            [12] 2427 	mov	c,_handler_custom_char_sloc0_1_0
      000A7F 92 AF            [24] 2428 	mov	ea,c
                                   2429 ;	lcd.c:558: printf("\033[0m");
      000A81 74 DE            [12] 2430 	mov	a,#___str_23
      000A83 C0 E0            [24] 2431 	push	acc
      000A85 74 2C            [12] 2432 	mov	a,#(___str_23 >> 8)
      000A87 C0 E0            [24] 2433 	push	acc
      000A89 74 80            [12] 2434 	mov	a,#0x80
      000A8B C0 E0            [24] 2435 	push	acc
      000A8D 12 1F CC         [24] 2436 	lcall	_printf
      000A90 15 81            [12] 2437 	dec	sp
      000A92 15 81            [12] 2438 	dec	sp
      000A94 15 81            [12] 2439 	dec	sp
                                   2440 ;	lcd.c:559: }
      000A96 22               [24] 2441 	ret
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
      000A97                       2458 _handle_cu_custom_char:
                                   2459 ;	lcd.c:563: printf("\033[0;33m");                           // Set text color to yellow
      000A97 74 98            [12] 2460 	mov	a,#___str_29
      000A99 C0 E0            [24] 2461 	push	acc
      000A9B 74 2D            [12] 2462 	mov	a,#(___str_29 >> 8)
      000A9D C0 E0            [24] 2463 	push	acc
      000A9F 74 80            [12] 2464 	mov	a,#0x80
      000AA1 C0 E0            [24] 2465 	push	acc
      000AA3 12 1F CC         [24] 2466 	lcall	_printf
      000AA6 15 81            [12] 2467 	dec	sp
      000AA8 15 81            [12] 2468 	dec	sp
      000AAA 15 81            [12] 2469 	dec	sp
                                   2470 ;	lcd.c:564: save_cursor_address = get_cursor_address();     // Get current cursor address and save it in a variable
      000AAC 12 02 0C         [24] 2471 	lcall	_get_cursor_address
      000AAF E5 82            [12] 2472 	mov	a,dpl
      000AB1 90 05 76         [24] 2473 	mov	dptr,#_save_cursor_address
      000AB4 F0               [24] 2474 	movx	@dptr,a
                                   2475 ;	lcd.c:568: unsigned char row_vals1[8] = {0x00, 0x00, 0x0F, 0x08, 0x08, 0x09, 0x09, 0x09};
      000AB5 90 04 53         [24] 2476 	mov	dptr,#_handle_cu_custom_char_row_vals1_65537_183
      000AB8 E4               [12] 2477 	clr	a
      000AB9 F0               [24] 2478 	movx	@dptr,a
      000ABA 90 04 54         [24] 2479 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0001)
      000ABD F0               [24] 2480 	movx	@dptr,a
      000ABE 90 04 55         [24] 2481 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0002)
      000AC1 74 0F            [12] 2482 	mov	a,#0x0f
      000AC3 F0               [24] 2483 	movx	@dptr,a
      000AC4 90 04 56         [24] 2484 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0003)
      000AC7 74 08            [12] 2485 	mov	a,#0x08
      000AC9 F0               [24] 2486 	movx	@dptr,a
      000ACA 90 04 57         [24] 2487 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0004)
      000ACD F0               [24] 2488 	movx	@dptr,a
      000ACE 90 04 58         [24] 2489 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0005)
      000AD1 04               [12] 2490 	inc	a
      000AD2 F0               [24] 2491 	movx	@dptr,a
      000AD3 90 04 59         [24] 2492 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0006)
      000AD6 F0               [24] 2493 	movx	@dptr,a
      000AD7 90 04 5A         [24] 2494 	mov	dptr,#(_handle_cu_custom_char_row_vals1_65537_183 + 0x0007)
      000ADA F0               [24] 2495 	movx	@dptr,a
                                   2496 ;	lcd.c:573: }
      000ADB D2 06            [12] 2497 	setb	_handle_cu_custom_char_sloc0_1_0
      000ADD 10 AF 02         [24] 2498 	jbc	ea,00103$
      000AE0 C2 06            [12] 2499 	clr	_handle_cu_custom_char_sloc0_1_0
      000AE2                       2500 00103$:
                                   2501 ;	lcd.c:570: create_custom_char(ccode1, row_vals1);      // Call function to create custom character on the LCD
      000AE2 90 04 47         [24] 2502 	mov	dptr,#_create_custom_char_PARM_2
      000AE5 74 53            [12] 2503 	mov	a,#_handle_cu_custom_char_row_vals1_65537_183
      000AE7 F0               [24] 2504 	movx	@dptr,a
      000AE8 74 04            [12] 2505 	mov	a,#(_handle_cu_custom_char_row_vals1_65537_183 >> 8)
      000AEA A3               [24] 2506 	inc	dptr
      000AEB F0               [24] 2507 	movx	@dptr,a
      000AEC E4               [12] 2508 	clr	a
      000AED A3               [24] 2509 	inc	dptr
      000AEE F0               [24] 2510 	movx	@dptr,a
      000AEF 75 82 31         [24] 2511 	mov	dpl,#0x31
      000AF2 12 08 E9         [24] 2512 	lcall	_create_custom_char
                                   2513 ;	lcd.c:571: lcdgotoxy('1', '4');                        // Move cursor to position to display custom character 1
      000AF5 90 04 08         [24] 2514 	mov	dptr,#_lcdgotoxy_PARM_2
      000AF8 74 34            [12] 2515 	mov	a,#0x34
      000AFA F0               [24] 2516 	movx	@dptr,a
      000AFB 75 82 31         [24] 2517 	mov	dpl,#0x31
      000AFE 12 02 36         [24] 2518 	lcall	_lcdgotoxy
                                   2519 ;	lcd.c:572: lcdputch(ccode1 - '0');                     // Display custom character 1 on the LCD screen
      000B01 75 82 01         [24] 2520 	mov	dpl,#0x01
      000B04 12 02 EF         [24] 2521 	lcall	_lcdputch
      000B07 A2 06            [12] 2522 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000B09 92 AF            [24] 2523 	mov	ea,c
                                   2524 ;	lcd.c:577: unsigned char row_vals2[8] = {0x00, 0x00, 0x18, 0x00, 0x00, 0x02, 0x02, 0x02};
      000B0B 90 04 5B         [24] 2525 	mov	dptr,#_handle_cu_custom_char_row_vals2_65538_185
      000B0E E4               [12] 2526 	clr	a
      000B0F F0               [24] 2527 	movx	@dptr,a
      000B10 90 04 5C         [24] 2528 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0001)
      000B13 F0               [24] 2529 	movx	@dptr,a
      000B14 90 04 5D         [24] 2530 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0002)
      000B17 74 18            [12] 2531 	mov	a,#0x18
      000B19 F0               [24] 2532 	movx	@dptr,a
      000B1A 90 04 5E         [24] 2533 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0003)
      000B1D E4               [12] 2534 	clr	a
      000B1E F0               [24] 2535 	movx	@dptr,a
      000B1F 90 04 5F         [24] 2536 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0004)
      000B22 F0               [24] 2537 	movx	@dptr,a
      000B23 90 04 60         [24] 2538 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0005)
      000B26 74 02            [12] 2539 	mov	a,#0x02
      000B28 F0               [24] 2540 	movx	@dptr,a
      000B29 90 04 61         [24] 2541 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0006)
      000B2C F0               [24] 2542 	movx	@dptr,a
      000B2D 90 04 62         [24] 2543 	mov	dptr,#(_handle_cu_custom_char_row_vals2_65538_185 + 0x0007)
      000B30 F0               [24] 2544 	movx	@dptr,a
                                   2545 ;	lcd.c:583: }
      000B31 D2 06            [12] 2546 	setb	_handle_cu_custom_char_sloc0_1_0
      000B33 10 AF 02         [24] 2547 	jbc	ea,00104$
      000B36 C2 06            [12] 2548 	clr	_handle_cu_custom_char_sloc0_1_0
      000B38                       2549 00104$:
                                   2550 ;	lcd.c:579: create_custom_char(ccode2, row_vals2);      // Call function to create custom character on the LCD
      000B38 90 04 47         [24] 2551 	mov	dptr,#_create_custom_char_PARM_2
      000B3B 74 5B            [12] 2552 	mov	a,#_handle_cu_custom_char_row_vals2_65538_185
      000B3D F0               [24] 2553 	movx	@dptr,a
      000B3E 74 04            [12] 2554 	mov	a,#(_handle_cu_custom_char_row_vals2_65538_185 >> 8)
      000B40 A3               [24] 2555 	inc	dptr
      000B41 F0               [24] 2556 	movx	@dptr,a
      000B42 E4               [12] 2557 	clr	a
      000B43 A3               [24] 2558 	inc	dptr
      000B44 F0               [24] 2559 	movx	@dptr,a
      000B45 75 82 32         [24] 2560 	mov	dpl,#0x32
      000B48 12 08 E9         [24] 2561 	lcall	_create_custom_char
                                   2562 ;	lcd.c:580: lcdgotoxy('1', '5');                        // Move cursor to position to display custom character 2
      000B4B 90 04 08         [24] 2563 	mov	dptr,#_lcdgotoxy_PARM_2
      000B4E 74 35            [12] 2564 	mov	a,#0x35
      000B50 F0               [24] 2565 	movx	@dptr,a
      000B51 75 82 31         [24] 2566 	mov	dpl,#0x31
      000B54 12 02 36         [24] 2567 	lcall	_lcdgotoxy
                                   2568 ;	lcd.c:581: lcdputch(ccode2 - '0');                     // Display custom character 2 on the LCD screen
      000B57 75 82 02         [24] 2569 	mov	dpl,#0x02
      000B5A 12 02 EF         [24] 2570 	lcall	_lcdputch
                                   2571 ;	lcd.c:582: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000B5D 90 05 76         [24] 2572 	mov	dptr,#_save_cursor_address
      000B60 E0               [24] 2573 	movx	a,@dptr
      000B61 F5 82            [12] 2574 	mov	dpl,a
      000B63 12 02 19         [24] 2575 	lcall	_lcdgotoaddr
      000B66 A2 06            [12] 2576 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000B68 92 AF            [24] 2577 	mov	ea,c
                                   2578 ;	lcd.c:587: unsigned char row_vals3[8] = {0x09, 0x09, 0x09, 0x0F, 0x01, 0x01, 0x00, 0x00};
      000B6A 90 04 63         [24] 2579 	mov	dptr,#_handle_cu_custom_char_row_vals3_65539_187
      000B6D 74 09            [12] 2580 	mov	a,#0x09
      000B6F F0               [24] 2581 	movx	@dptr,a
      000B70 90 04 64         [24] 2582 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0001)
      000B73 F0               [24] 2583 	movx	@dptr,a
      000B74 90 04 65         [24] 2584 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0002)
      000B77 F0               [24] 2585 	movx	@dptr,a
      000B78 90 04 66         [24] 2586 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0003)
      000B7B 74 0F            [12] 2587 	mov	a,#0x0f
      000B7D F0               [24] 2588 	movx	@dptr,a
      000B7E 90 04 67         [24] 2589 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0004)
      000B81 74 01            [12] 2590 	mov	a,#0x01
      000B83 F0               [24] 2591 	movx	@dptr,a
      000B84 90 04 68         [24] 2592 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0005)
      000B87 F0               [24] 2593 	movx	@dptr,a
      000B88 90 04 69         [24] 2594 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0006)
      000B8B E4               [12] 2595 	clr	a
      000B8C F0               [24] 2596 	movx	@dptr,a
      000B8D 90 04 6A         [24] 2597 	mov	dptr,#(_handle_cu_custom_char_row_vals3_65539_187 + 0x0007)
      000B90 F0               [24] 2598 	movx	@dptr,a
                                   2599 ;	lcd.c:593: }
      000B91 D2 06            [12] 2600 	setb	_handle_cu_custom_char_sloc0_1_0
      000B93 10 AF 02         [24] 2601 	jbc	ea,00105$
      000B96 C2 06            [12] 2602 	clr	_handle_cu_custom_char_sloc0_1_0
      000B98                       2603 00105$:
                                   2604 ;	lcd.c:589: create_custom_char(ccode3, row_vals3);      // Call function to create custom character on the LCD
      000B98 90 04 47         [24] 2605 	mov	dptr,#_create_custom_char_PARM_2
      000B9B 74 63            [12] 2606 	mov	a,#_handle_cu_custom_char_row_vals3_65539_187
      000B9D F0               [24] 2607 	movx	@dptr,a
      000B9E 74 04            [12] 2608 	mov	a,#(_handle_cu_custom_char_row_vals3_65539_187 >> 8)
      000BA0 A3               [24] 2609 	inc	dptr
      000BA1 F0               [24] 2610 	movx	@dptr,a
      000BA2 E4               [12] 2611 	clr	a
      000BA3 A3               [24] 2612 	inc	dptr
      000BA4 F0               [24] 2613 	movx	@dptr,a
      000BA5 75 82 33         [24] 2614 	mov	dpl,#0x33
      000BA8 12 08 E9         [24] 2615 	lcall	_create_custom_char
                                   2616 ;	lcd.c:590: lcdgotoxy('2', '4');                        // Move cursor to position to display custom character 3
      000BAB 90 04 08         [24] 2617 	mov	dptr,#_lcdgotoxy_PARM_2
      000BAE 74 34            [12] 2618 	mov	a,#0x34
      000BB0 F0               [24] 2619 	movx	@dptr,a
      000BB1 75 82 32         [24] 2620 	mov	dpl,#0x32
      000BB4 12 02 36         [24] 2621 	lcall	_lcdgotoxy
                                   2622 ;	lcd.c:591: lcdputch(ccode3 - '0');                     // Display custom character 3 on the LCD screen
      000BB7 75 82 03         [24] 2623 	mov	dpl,#0x03
      000BBA 12 02 EF         [24] 2624 	lcall	_lcdputch
                                   2625 ;	lcd.c:592: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000BBD 90 05 76         [24] 2626 	mov	dptr,#_save_cursor_address
      000BC0 E0               [24] 2627 	movx	a,@dptr
      000BC1 F5 82            [12] 2628 	mov	dpl,a
      000BC3 12 02 19         [24] 2629 	lcall	_lcdgotoaddr
      000BC6 A2 06            [12] 2630 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000BC8 92 AF            [24] 2631 	mov	ea,c
                                   2632 ;	lcd.c:597: unsigned char row_vals4[8] = {0x02, 0x02, 0x02, 0x1A, 0x02, 0x1E, 0x00, 0x00};
      000BCA 90 04 6B         [24] 2633 	mov	dptr,#_handle_cu_custom_char_row_vals4_65540_189
      000BCD 74 02            [12] 2634 	mov	a,#0x02
      000BCF F0               [24] 2635 	movx	@dptr,a
      000BD0 90 04 6C         [24] 2636 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0001)
      000BD3 F0               [24] 2637 	movx	@dptr,a
      000BD4 90 04 6D         [24] 2638 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0002)
      000BD7 F0               [24] 2639 	movx	@dptr,a
      000BD8 90 04 6E         [24] 2640 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0003)
      000BDB 74 1A            [12] 2641 	mov	a,#0x1a
      000BDD F0               [24] 2642 	movx	@dptr,a
      000BDE 90 04 6F         [24] 2643 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0004)
      000BE1 74 02            [12] 2644 	mov	a,#0x02
      000BE3 F0               [24] 2645 	movx	@dptr,a
      000BE4 90 04 70         [24] 2646 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0005)
      000BE7 74 1E            [12] 2647 	mov	a,#0x1e
      000BE9 F0               [24] 2648 	movx	@dptr,a
      000BEA 90 04 71         [24] 2649 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0006)
      000BED E4               [12] 2650 	clr	a
      000BEE F0               [24] 2651 	movx	@dptr,a
      000BEF 90 04 72         [24] 2652 	mov	dptr,#(_handle_cu_custom_char_row_vals4_65540_189 + 0x0007)
      000BF2 F0               [24] 2653 	movx	@dptr,a
                                   2654 ;	lcd.c:603: }
      000BF3 D2 06            [12] 2655 	setb	_handle_cu_custom_char_sloc0_1_0
      000BF5 10 AF 02         [24] 2656 	jbc	ea,00106$
      000BF8 C2 06            [12] 2657 	clr	_handle_cu_custom_char_sloc0_1_0
      000BFA                       2658 00106$:
                                   2659 ;	lcd.c:599: create_custom_char(ccode4, row_vals4);      // Call function to create custom character on the LCD
      000BFA 90 04 47         [24] 2660 	mov	dptr,#_create_custom_char_PARM_2
      000BFD 74 6B            [12] 2661 	mov	a,#_handle_cu_custom_char_row_vals4_65540_189
      000BFF F0               [24] 2662 	movx	@dptr,a
      000C00 74 04            [12] 2663 	mov	a,#(_handle_cu_custom_char_row_vals4_65540_189 >> 8)
      000C02 A3               [24] 2664 	inc	dptr
      000C03 F0               [24] 2665 	movx	@dptr,a
      000C04 E4               [12] 2666 	clr	a
      000C05 A3               [24] 2667 	inc	dptr
      000C06 F0               [24] 2668 	movx	@dptr,a
      000C07 75 82 34         [24] 2669 	mov	dpl,#0x34
      000C0A 12 08 E9         [24] 2670 	lcall	_create_custom_char
                                   2671 ;	lcd.c:600: lcdgotoxy('2', '5');                        // Move cursor to position to display custom character 4
      000C0D 90 04 08         [24] 2672 	mov	dptr,#_lcdgotoxy_PARM_2
      000C10 74 35            [12] 2673 	mov	a,#0x35
      000C12 F0               [24] 2674 	movx	@dptr,a
      000C13 75 82 32         [24] 2675 	mov	dpl,#0x32
      000C16 12 02 36         [24] 2676 	lcall	_lcdgotoxy
                                   2677 ;	lcd.c:601: lcdputch(ccode4 - '0');                     // Display custom character 4 on the LCD screen
      000C19 75 82 04         [24] 2678 	mov	dpl,#0x04
      000C1C 12 02 EF         [24] 2679 	lcall	_lcdputch
                                   2680 ;	lcd.c:602: lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
      000C1F 90 05 76         [24] 2681 	mov	dptr,#_save_cursor_address
      000C22 E0               [24] 2682 	movx	a,@dptr
      000C23 F5 82            [12] 2683 	mov	dpl,a
      000C25 12 02 19         [24] 2684 	lcall	_lcdgotoaddr
      000C28 A2 06            [12] 2685 	mov	c,_handle_cu_custom_char_sloc0_1_0
      000C2A 92 AF            [24] 2686 	mov	ea,c
                                   2687 ;	lcd.c:605: printf("\033[0m");                              // Reset text color to default
      000C2C 74 DE            [12] 2688 	mov	a,#___str_23
      000C2E C0 E0            [24] 2689 	push	acc
      000C30 74 2C            [12] 2690 	mov	a,#(___str_23 >> 8)
      000C32 C0 E0            [24] 2691 	push	acc
      000C34 74 80            [12] 2692 	mov	a,#0x80
      000C36 C0 E0            [24] 2693 	push	acc
      000C38 12 1F CC         [24] 2694 	lcall	_printf
      000C3B 15 81            [12] 2695 	dec	sp
      000C3D 15 81            [12] 2696 	dec	sp
      000C3F 15 81            [12] 2697 	dec	sp
                                   2698 ;	lcd.c:606: }
      000C41 22               [24] 2699 	ret
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
      000C42                       2716 _handle_sadsmiley_custom_char:
                                   2717 ;	lcd.c:614: printf("\033[0;33m");
      000C42 74 98            [12] 2718 	mov	a,#___str_29
      000C44 C0 E0            [24] 2719 	push	acc
      000C46 74 2D            [12] 2720 	mov	a,#(___str_29 >> 8)
      000C48 C0 E0            [24] 2721 	push	acc
      000C4A 74 80            [12] 2722 	mov	a,#0x80
      000C4C C0 E0            [24] 2723 	push	acc
      000C4E 12 1F CC         [24] 2724 	lcall	_printf
      000C51 15 81            [12] 2725 	dec	sp
      000C53 15 81            [12] 2726 	dec	sp
      000C55 15 81            [12] 2727 	dec	sp
                                   2728 ;	lcd.c:617: save_cursor_address = get_cursor_address();
      000C57 12 02 0C         [24] 2729 	lcall	_get_cursor_address
      000C5A E5 82            [12] 2730 	mov	a,dpl
      000C5C 90 05 76         [24] 2731 	mov	dptr,#_save_cursor_address
      000C5F F0               [24] 2732 	movx	@dptr,a
                                   2733 ;	lcd.c:621: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
      000C60 90 04 73         [24] 2734 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals1_65537_193
      000C63 74 1F            [12] 2735 	mov	a,#0x1f
      000C65 F0               [24] 2736 	movx	@dptr,a
      000C66 90 04 74         [24] 2737 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0001)
      000C69 F0               [24] 2738 	movx	@dptr,a
      000C6A 90 04 75         [24] 2739 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0002)
      000C6D 74 11            [12] 2740 	mov	a,#0x11
      000C6F F0               [24] 2741 	movx	@dptr,a
      000C70 90 04 76         [24] 2742 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0003)
      000C73 74 15            [12] 2743 	mov	a,#0x15
      000C75 F0               [24] 2744 	movx	@dptr,a
      000C76 90 04 77         [24] 2745 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0004)
      000C79 74 11            [12] 2746 	mov	a,#0x11
      000C7B F0               [24] 2747 	movx	@dptr,a
      000C7C 90 04 78         [24] 2748 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0005)
      000C7F 74 1F            [12] 2749 	mov	a,#0x1f
      000C81 F0               [24] 2750 	movx	@dptr,a
      000C82 90 04 79         [24] 2751 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0006)
      000C85 F0               [24] 2752 	movx	@dptr,a
      000C86 90 04 7A         [24] 2753 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 + 0x0007)
      000C89 F0               [24] 2754 	movx	@dptr,a
                                   2755 ;	lcd.c:628: }
      000C8A D2 07            [12] 2756 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000C8C 10 AF 02         [24] 2757 	jbc	ea,00103$
      000C8F C2 07            [12] 2758 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000C91                       2759 00103$:
                                   2760 ;	lcd.c:624: create_custom_char(ccode1, row_vals1);
      000C91 90 04 47         [24] 2761 	mov	dptr,#_create_custom_char_PARM_2
      000C94 74 73            [12] 2762 	mov	a,#_handle_sadsmiley_custom_char_row_vals1_65537_193
      000C96 F0               [24] 2763 	movx	@dptr,a
      000C97 74 04            [12] 2764 	mov	a,#(_handle_sadsmiley_custom_char_row_vals1_65537_193 >> 8)
      000C99 A3               [24] 2765 	inc	dptr
      000C9A F0               [24] 2766 	movx	@dptr,a
      000C9B E4               [12] 2767 	clr	a
      000C9C A3               [24] 2768 	inc	dptr
      000C9D F0               [24] 2769 	movx	@dptr,a
      000C9E 75 82 31         [24] 2770 	mov	dpl,#0x31
      000CA1 12 08 E9         [24] 2771 	lcall	_create_custom_char
                                   2772 ;	lcd.c:626: lcdgotoxy('1', '4');
      000CA4 90 04 08         [24] 2773 	mov	dptr,#_lcdgotoxy_PARM_2
      000CA7 74 34            [12] 2774 	mov	a,#0x34
      000CA9 F0               [24] 2775 	movx	@dptr,a
      000CAA 75 82 31         [24] 2776 	mov	dpl,#0x31
      000CAD 12 02 36         [24] 2777 	lcall	_lcdgotoxy
                                   2778 ;	lcd.c:627: lcdputch(ccode1 - '0');
      000CB0 75 82 01         [24] 2779 	mov	dpl,#0x01
      000CB3 12 02 EF         [24] 2780 	lcall	_lcdputch
      000CB6 A2 07            [12] 2781 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000CB8 92 AF            [24] 2782 	mov	ea,c
                                   2783 ;	lcd.c:632: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
      000CBA 90 04 7B         [24] 2784 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals2_65538_195
      000CBD 74 1F            [12] 2785 	mov	a,#0x1f
      000CBF F0               [24] 2786 	movx	@dptr,a
      000CC0 90 04 7C         [24] 2787 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0001)
      000CC3 F0               [24] 2788 	movx	@dptr,a
      000CC4 90 04 7D         [24] 2789 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0002)
      000CC7 74 11            [12] 2790 	mov	a,#0x11
      000CC9 F0               [24] 2791 	movx	@dptr,a
      000CCA 90 04 7E         [24] 2792 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0003)
      000CCD 74 15            [12] 2793 	mov	a,#0x15
      000CCF F0               [24] 2794 	movx	@dptr,a
      000CD0 90 04 7F         [24] 2795 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0004)
      000CD3 74 11            [12] 2796 	mov	a,#0x11
      000CD5 F0               [24] 2797 	movx	@dptr,a
      000CD6 90 04 80         [24] 2798 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0005)
      000CD9 74 1F            [12] 2799 	mov	a,#0x1f
      000CDB F0               [24] 2800 	movx	@dptr,a
      000CDC 90 04 81         [24] 2801 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0006)
      000CDF F0               [24] 2802 	movx	@dptr,a
      000CE0 90 04 82         [24] 2803 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 + 0x0007)
      000CE3 F0               [24] 2804 	movx	@dptr,a
                                   2805 ;	lcd.c:641: }
      000CE4 D2 07            [12] 2806 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000CE6 10 AF 02         [24] 2807 	jbc	ea,00104$
      000CE9 C2 07            [12] 2808 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000CEB                       2809 00104$:
                                   2810 ;	lcd.c:635: create_custom_char(ccode2, row_vals2);
      000CEB 90 04 47         [24] 2811 	mov	dptr,#_create_custom_char_PARM_2
      000CEE 74 7B            [12] 2812 	mov	a,#_handle_sadsmiley_custom_char_row_vals2_65538_195
      000CF0 F0               [24] 2813 	movx	@dptr,a
      000CF1 74 04            [12] 2814 	mov	a,#(_handle_sadsmiley_custom_char_row_vals2_65538_195 >> 8)
      000CF3 A3               [24] 2815 	inc	dptr
      000CF4 F0               [24] 2816 	movx	@dptr,a
      000CF5 E4               [12] 2817 	clr	a
      000CF6 A3               [24] 2818 	inc	dptr
      000CF7 F0               [24] 2819 	movx	@dptr,a
      000CF8 75 82 32         [24] 2820 	mov	dpl,#0x32
      000CFB 12 08 E9         [24] 2821 	lcall	_create_custom_char
                                   2822 ;	lcd.c:637: lcdgotoxy('1', '5');
      000CFE 90 04 08         [24] 2823 	mov	dptr,#_lcdgotoxy_PARM_2
      000D01 74 35            [12] 2824 	mov	a,#0x35
      000D03 F0               [24] 2825 	movx	@dptr,a
      000D04 75 82 31         [24] 2826 	mov	dpl,#0x31
      000D07 12 02 36         [24] 2827 	lcall	_lcdgotoxy
                                   2828 ;	lcd.c:638: lcdputch(ccode2 - '0');
      000D0A 75 82 02         [24] 2829 	mov	dpl,#0x02
      000D0D 12 02 EF         [24] 2830 	lcall	_lcdputch
                                   2831 ;	lcd.c:640: lcdgotoaddr(save_cursor_address);
      000D10 90 05 76         [24] 2832 	mov	dptr,#_save_cursor_address
      000D13 E0               [24] 2833 	movx	a,@dptr
      000D14 F5 82            [12] 2834 	mov	dpl,a
      000D16 12 02 19         [24] 2835 	lcall	_lcdgotoaddr
      000D19 A2 07            [12] 2836 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000D1B 92 AF            [24] 2837 	mov	ea,c
                                   2838 ;	lcd.c:645: unsigned char row_vals3[8] = {0x1F, 0x1F, 0x1F, 0x10, 0x1B, 0x1C, 0x1F, 0x1F};
      000D1D 90 04 83         [24] 2839 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals3_65539_197
      000D20 74 1F            [12] 2840 	mov	a,#0x1f
      000D22 F0               [24] 2841 	movx	@dptr,a
      000D23 90 04 84         [24] 2842 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0001)
      000D26 F0               [24] 2843 	movx	@dptr,a
      000D27 90 04 85         [24] 2844 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0002)
      000D2A F0               [24] 2845 	movx	@dptr,a
      000D2B 90 04 86         [24] 2846 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0003)
      000D2E 74 10            [12] 2847 	mov	a,#0x10
      000D30 F0               [24] 2848 	movx	@dptr,a
      000D31 90 04 87         [24] 2849 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0004)
      000D34 74 1B            [12] 2850 	mov	a,#0x1b
      000D36 F0               [24] 2851 	movx	@dptr,a
      000D37 90 04 88         [24] 2852 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0005)
      000D3A 04               [12] 2853 	inc	a
      000D3B F0               [24] 2854 	movx	@dptr,a
      000D3C 90 04 89         [24] 2855 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0006)
      000D3F 74 1F            [12] 2856 	mov	a,#0x1f
      000D41 F0               [24] 2857 	movx	@dptr,a
      000D42 90 04 8A         [24] 2858 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 + 0x0007)
      000D45 F0               [24] 2859 	movx	@dptr,a
                                   2860 ;	lcd.c:654: }
      000D46 D2 07            [12] 2861 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000D48 10 AF 02         [24] 2862 	jbc	ea,00105$
      000D4B C2 07            [12] 2863 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000D4D                       2864 00105$:
                                   2865 ;	lcd.c:648: create_custom_char(ccode3, row_vals3);
      000D4D 90 04 47         [24] 2866 	mov	dptr,#_create_custom_char_PARM_2
      000D50 74 83            [12] 2867 	mov	a,#_handle_sadsmiley_custom_char_row_vals3_65539_197
      000D52 F0               [24] 2868 	movx	@dptr,a
      000D53 74 04            [12] 2869 	mov	a,#(_handle_sadsmiley_custom_char_row_vals3_65539_197 >> 8)
      000D55 A3               [24] 2870 	inc	dptr
      000D56 F0               [24] 2871 	movx	@dptr,a
      000D57 E4               [12] 2872 	clr	a
      000D58 A3               [24] 2873 	inc	dptr
      000D59 F0               [24] 2874 	movx	@dptr,a
      000D5A 75 82 33         [24] 2875 	mov	dpl,#0x33
      000D5D 12 08 E9         [24] 2876 	lcall	_create_custom_char
                                   2877 ;	lcd.c:650: lcdgotoxy('2', '4');
      000D60 90 04 08         [24] 2878 	mov	dptr,#_lcdgotoxy_PARM_2
      000D63 74 34            [12] 2879 	mov	a,#0x34
      000D65 F0               [24] 2880 	movx	@dptr,a
      000D66 75 82 32         [24] 2881 	mov	dpl,#0x32
      000D69 12 02 36         [24] 2882 	lcall	_lcdgotoxy
                                   2883 ;	lcd.c:651: lcdputch(ccode3 - '0');
      000D6C 75 82 03         [24] 2884 	mov	dpl,#0x03
      000D6F 12 02 EF         [24] 2885 	lcall	_lcdputch
                                   2886 ;	lcd.c:653: lcdgotoaddr(save_cursor_address);
      000D72 90 05 76         [24] 2887 	mov	dptr,#_save_cursor_address
      000D75 E0               [24] 2888 	movx	a,@dptr
      000D76 F5 82            [12] 2889 	mov	dpl,a
      000D78 12 02 19         [24] 2890 	lcall	_lcdgotoaddr
      000D7B A2 07            [12] 2891 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000D7D 92 AF            [24] 2892 	mov	ea,c
                                   2893 ;	lcd.c:658: unsigned char row_vals4[8] = {0x1F, 0x1F, 0x1F, 0x01, 0x1B, 0x07, 0x1F, 0x1F};
      000D7F 90 04 8B         [24] 2894 	mov	dptr,#_handle_sadsmiley_custom_char_row_vals4_65540_199
      000D82 74 1F            [12] 2895 	mov	a,#0x1f
      000D84 F0               [24] 2896 	movx	@dptr,a
      000D85 90 04 8C         [24] 2897 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0001)
      000D88 F0               [24] 2898 	movx	@dptr,a
      000D89 90 04 8D         [24] 2899 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0002)
      000D8C F0               [24] 2900 	movx	@dptr,a
      000D8D 90 04 8E         [24] 2901 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0003)
      000D90 74 01            [12] 2902 	mov	a,#0x01
      000D92 F0               [24] 2903 	movx	@dptr,a
      000D93 90 04 8F         [24] 2904 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0004)
      000D96 74 1B            [12] 2905 	mov	a,#0x1b
      000D98 F0               [24] 2906 	movx	@dptr,a
      000D99 90 04 90         [24] 2907 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0005)
      000D9C 74 07            [12] 2908 	mov	a,#0x07
      000D9E F0               [24] 2909 	movx	@dptr,a
      000D9F 90 04 91         [24] 2910 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0006)
      000DA2 74 1F            [12] 2911 	mov	a,#0x1f
      000DA4 F0               [24] 2912 	movx	@dptr,a
      000DA5 90 04 92         [24] 2913 	mov	dptr,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 + 0x0007)
      000DA8 F0               [24] 2914 	movx	@dptr,a
                                   2915 ;	lcd.c:667: }
      000DA9 D2 07            [12] 2916 	setb	_handle_sadsmiley_custom_char_sloc0_1_0
      000DAB 10 AF 02         [24] 2917 	jbc	ea,00106$
      000DAE C2 07            [12] 2918 	clr	_handle_sadsmiley_custom_char_sloc0_1_0
      000DB0                       2919 00106$:
                                   2920 ;	lcd.c:661: create_custom_char(ccode4, row_vals4);
      000DB0 90 04 47         [24] 2921 	mov	dptr,#_create_custom_char_PARM_2
      000DB3 74 8B            [12] 2922 	mov	a,#_handle_sadsmiley_custom_char_row_vals4_65540_199
      000DB5 F0               [24] 2923 	movx	@dptr,a
      000DB6 74 04            [12] 2924 	mov	a,#(_handle_sadsmiley_custom_char_row_vals4_65540_199 >> 8)
      000DB8 A3               [24] 2925 	inc	dptr
      000DB9 F0               [24] 2926 	movx	@dptr,a
      000DBA E4               [12] 2927 	clr	a
      000DBB A3               [24] 2928 	inc	dptr
      000DBC F0               [24] 2929 	movx	@dptr,a
      000DBD 75 82 34         [24] 2930 	mov	dpl,#0x34
      000DC0 12 08 E9         [24] 2931 	lcall	_create_custom_char
                                   2932 ;	lcd.c:663: lcdgotoxy('2', '5');
      000DC3 90 04 08         [24] 2933 	mov	dptr,#_lcdgotoxy_PARM_2
      000DC6 74 35            [12] 2934 	mov	a,#0x35
      000DC8 F0               [24] 2935 	movx	@dptr,a
      000DC9 75 82 32         [24] 2936 	mov	dpl,#0x32
      000DCC 12 02 36         [24] 2937 	lcall	_lcdgotoxy
                                   2938 ;	lcd.c:664: lcdputch(ccode4 - '0');
      000DCF 75 82 04         [24] 2939 	mov	dpl,#0x04
      000DD2 12 02 EF         [24] 2940 	lcall	_lcdputch
                                   2941 ;	lcd.c:666: lcdgotoaddr(save_cursor_address);
      000DD5 90 05 76         [24] 2942 	mov	dptr,#_save_cursor_address
      000DD8 E0               [24] 2943 	movx	a,@dptr
      000DD9 F5 82            [12] 2944 	mov	dpl,a
      000DDB 12 02 19         [24] 2945 	lcall	_lcdgotoaddr
      000DDE A2 07            [12] 2946 	mov	c,_handle_sadsmiley_custom_char_sloc0_1_0
      000DE0 92 AF            [24] 2947 	mov	ea,c
                                   2948 ;	lcd.c:670: printf("\033[0m");
      000DE2 74 DE            [12] 2949 	mov	a,#___str_23
      000DE4 C0 E0            [24] 2950 	push	acc
      000DE6 74 2C            [12] 2951 	mov	a,#(___str_23 >> 8)
      000DE8 C0 E0            [24] 2952 	push	acc
      000DEA 74 80            [12] 2953 	mov	a,#0x80
      000DEC C0 E0            [24] 2954 	push	acc
      000DEE 12 1F CC         [24] 2955 	lcall	_printf
      000DF1 15 81            [12] 2956 	dec	sp
      000DF3 15 81            [12] 2957 	dec	sp
      000DF5 15 81            [12] 2958 	dec	sp
                                   2959 ;	lcd.c:671: }
      000DF7 22               [24] 2960 	ret
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
      000DF8                       2977 _handle_lock_custom_char:
                                   2978 ;	lcd.c:676: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000DF8 90 04 93         [24] 2979 	mov	dptr,#_handle_lock_custom_char_row_vals1_65536_202
      000DFB 74 1F            [12] 2980 	mov	a,#0x1f
      000DFD F0               [24] 2981 	movx	@dptr,a
      000DFE 90 04 94         [24] 2982 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0001)
      000E01 F0               [24] 2983 	movx	@dptr,a
      000E02 90 04 95         [24] 2984 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0002)
      000E05 F0               [24] 2985 	movx	@dptr,a
      000E06 90 04 96         [24] 2986 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0003)
      000E09 F0               [24] 2987 	movx	@dptr,a
      000E0A 90 04 97         [24] 2988 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0004)
      000E0D F0               [24] 2989 	movx	@dptr,a
      000E0E 90 04 98         [24] 2990 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0005)
      000E11 F0               [24] 2991 	movx	@dptr,a
      000E12 90 04 99         [24] 2992 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0006)
      000E15 F0               [24] 2993 	movx	@dptr,a
      000E16 90 04 9A         [24] 2994 	mov	dptr,#(_handle_lock_custom_char_row_vals1_65536_202 + 0x0007)
      000E19 F0               [24] 2995 	movx	@dptr,a
                                   2996 ;	lcd.c:683: }
      000E1A D2 08            [12] 2997 	setb	_handle_lock_custom_char_sloc0_1_0
      000E1C 10 AF 02         [24] 2998 	jbc	ea,00103$
      000E1F C2 08            [12] 2999 	clr	_handle_lock_custom_char_sloc0_1_0
      000E21                       3000 00103$:
                                   3001 ;	lcd.c:679: create_custom_char(ccode1, row_vals1);
      000E21 90 04 47         [24] 3002 	mov	dptr,#_create_custom_char_PARM_2
      000E24 74 93            [12] 3003 	mov	a,#_handle_lock_custom_char_row_vals1_65536_202
      000E26 F0               [24] 3004 	movx	@dptr,a
      000E27 74 04            [12] 3005 	mov	a,#(_handle_lock_custom_char_row_vals1_65536_202 >> 8)
      000E29 A3               [24] 3006 	inc	dptr
      000E2A F0               [24] 3007 	movx	@dptr,a
      000E2B E4               [12] 3008 	clr	a
      000E2C A3               [24] 3009 	inc	dptr
      000E2D F0               [24] 3010 	movx	@dptr,a
      000E2E 75 82 31         [24] 3011 	mov	dpl,#0x31
      000E31 12 08 E9         [24] 3012 	lcall	_create_custom_char
                                   3013 ;	lcd.c:681: lcdgotoxy('3', '7');
      000E34 90 04 08         [24] 3014 	mov	dptr,#_lcdgotoxy_PARM_2
      000E37 74 37            [12] 3015 	mov	a,#0x37
      000E39 F0               [24] 3016 	movx	@dptr,a
      000E3A 75 82 33         [24] 3017 	mov	dpl,#0x33
      000E3D 12 02 36         [24] 3018 	lcall	_lcdgotoxy
                                   3019 ;	lcd.c:682: lcdputch(ccode1 - '0');
      000E40 75 82 01         [24] 3020 	mov	dpl,#0x01
      000E43 12 02 EF         [24] 3021 	lcall	_lcdputch
      000E46 A2 08            [12] 3022 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000E48 92 AF            [24] 3023 	mov	ea,c
                                   3024 ;	lcd.c:687: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000E4A 90 04 9B         [24] 3025 	mov	dptr,#_handle_lock_custom_char_row_vals2_65537_204
      000E4D 74 1F            [12] 3026 	mov	a,#0x1f
      000E4F F0               [24] 3027 	movx	@dptr,a
      000E50 90 04 9C         [24] 3028 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0001)
      000E53 F0               [24] 3029 	movx	@dptr,a
      000E54 90 04 9D         [24] 3030 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0002)
      000E57 F0               [24] 3031 	movx	@dptr,a
      000E58 90 04 9E         [24] 3032 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0003)
      000E5B F0               [24] 3033 	movx	@dptr,a
      000E5C 90 04 9F         [24] 3034 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0004)
      000E5F F0               [24] 3035 	movx	@dptr,a
      000E60 90 04 A0         [24] 3036 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0005)
      000E63 F0               [24] 3037 	movx	@dptr,a
      000E64 90 04 A1         [24] 3038 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0006)
      000E67 F0               [24] 3039 	movx	@dptr,a
      000E68 90 04 A2         [24] 3040 	mov	dptr,#(_handle_lock_custom_char_row_vals2_65537_204 + 0x0007)
      000E6B F0               [24] 3041 	movx	@dptr,a
                                   3042 ;	lcd.c:696: }
      000E6C D2 08            [12] 3043 	setb	_handle_lock_custom_char_sloc0_1_0
      000E6E 10 AF 02         [24] 3044 	jbc	ea,00104$
      000E71 C2 08            [12] 3045 	clr	_handle_lock_custom_char_sloc0_1_0
      000E73                       3046 00104$:
                                   3047 ;	lcd.c:690: create_custom_char(ccode2, row_vals2);
      000E73 90 04 47         [24] 3048 	mov	dptr,#_create_custom_char_PARM_2
      000E76 74 9B            [12] 3049 	mov	a,#_handle_lock_custom_char_row_vals2_65537_204
      000E78 F0               [24] 3050 	movx	@dptr,a
      000E79 74 04            [12] 3051 	mov	a,#(_handle_lock_custom_char_row_vals2_65537_204 >> 8)
      000E7B A3               [24] 3052 	inc	dptr
      000E7C F0               [24] 3053 	movx	@dptr,a
      000E7D E4               [12] 3054 	clr	a
      000E7E A3               [24] 3055 	inc	dptr
      000E7F F0               [24] 3056 	movx	@dptr,a
      000E80 75 82 32         [24] 3057 	mov	dpl,#0x32
      000E83 12 08 E9         [24] 3058 	lcall	_create_custom_char
                                   3059 ;	lcd.c:692: lcdgotoxy('3', '8');
      000E86 90 04 08         [24] 3060 	mov	dptr,#_lcdgotoxy_PARM_2
      000E89 74 38            [12] 3061 	mov	a,#0x38
      000E8B F0               [24] 3062 	movx	@dptr,a
      000E8C 75 82 33         [24] 3063 	mov	dpl,#0x33
      000E8F 12 02 36         [24] 3064 	lcall	_lcdgotoxy
                                   3065 ;	lcd.c:693: lcdputch(ccode2 - '0');
      000E92 75 82 02         [24] 3066 	mov	dpl,#0x02
      000E95 12 02 EF         [24] 3067 	lcall	_lcdputch
                                   3068 ;	lcd.c:695: lcdgotoaddr(save_cursor_address);
      000E98 90 05 76         [24] 3069 	mov	dptr,#_save_cursor_address
      000E9B E0               [24] 3070 	movx	a,@dptr
      000E9C F5 82            [12] 3071 	mov	dpl,a
      000E9E 12 02 19         [24] 3072 	lcall	_lcdgotoaddr
      000EA1 A2 08            [12] 3073 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000EA3 92 AF            [24] 3074 	mov	ea,c
                                   3075 ;	lcd.c:700: unsigned char row_vals3[8] = {0x03, 0x04, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10};
      000EA5 90 04 A3         [24] 3076 	mov	dptr,#_handle_lock_custom_char_row_vals3_65538_206
      000EA8 74 03            [12] 3077 	mov	a,#0x03
      000EAA F0               [24] 3078 	movx	@dptr,a
      000EAB 90 04 A4         [24] 3079 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0001)
      000EAE 04               [12] 3080 	inc	a
      000EAF F0               [24] 3081 	movx	@dptr,a
      000EB0 90 04 A5         [24] 3082 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0002)
      000EB3 23               [12] 3083 	rl	a
      000EB4 F0               [24] 3084 	movx	@dptr,a
      000EB5 90 04 A6         [24] 3085 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0003)
      000EB8 23               [12] 3086 	rl	a
      000EB9 F0               [24] 3087 	movx	@dptr,a
      000EBA 90 04 A7         [24] 3088 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0004)
      000EBD F0               [24] 3089 	movx	@dptr,a
      000EBE 90 04 A8         [24] 3090 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0005)
      000EC1 F0               [24] 3091 	movx	@dptr,a
      000EC2 90 04 A9         [24] 3092 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0006)
      000EC5 F0               [24] 3093 	movx	@dptr,a
      000EC6 90 04 AA         [24] 3094 	mov	dptr,#(_handle_lock_custom_char_row_vals3_65538_206 + 0x0007)
      000EC9 F0               [24] 3095 	movx	@dptr,a
                                   3096 ;	lcd.c:709: }
      000ECA D2 08            [12] 3097 	setb	_handle_lock_custom_char_sloc0_1_0
      000ECC 10 AF 02         [24] 3098 	jbc	ea,00105$
      000ECF C2 08            [12] 3099 	clr	_handle_lock_custom_char_sloc0_1_0
      000ED1                       3100 00105$:
                                   3101 ;	lcd.c:703: create_custom_char(ccode3, row_vals3);
      000ED1 90 04 47         [24] 3102 	mov	dptr,#_create_custom_char_PARM_2
      000ED4 74 A3            [12] 3103 	mov	a,#_handle_lock_custom_char_row_vals3_65538_206
      000ED6 F0               [24] 3104 	movx	@dptr,a
      000ED7 74 04            [12] 3105 	mov	a,#(_handle_lock_custom_char_row_vals3_65538_206 >> 8)
      000ED9 A3               [24] 3106 	inc	dptr
      000EDA F0               [24] 3107 	movx	@dptr,a
      000EDB E4               [12] 3108 	clr	a
      000EDC A3               [24] 3109 	inc	dptr
      000EDD F0               [24] 3110 	movx	@dptr,a
      000EDE 75 82 33         [24] 3111 	mov	dpl,#0x33
      000EE1 12 08 E9         [24] 3112 	lcall	_create_custom_char
                                   3113 ;	lcd.c:705: lcdgotoxy('2', '7');
      000EE4 90 04 08         [24] 3114 	mov	dptr,#_lcdgotoxy_PARM_2
      000EE7 74 37            [12] 3115 	mov	a,#0x37
      000EE9 F0               [24] 3116 	movx	@dptr,a
      000EEA 75 82 32         [24] 3117 	mov	dpl,#0x32
      000EED 12 02 36         [24] 3118 	lcall	_lcdgotoxy
                                   3119 ;	lcd.c:706: lcdputch(ccode3 - '0');
      000EF0 75 82 03         [24] 3120 	mov	dpl,#0x03
      000EF3 12 02 EF         [24] 3121 	lcall	_lcdputch
                                   3122 ;	lcd.c:708: lcdgotoaddr(save_cursor_address);
      000EF6 90 05 76         [24] 3123 	mov	dptr,#_save_cursor_address
      000EF9 E0               [24] 3124 	movx	a,@dptr
      000EFA F5 82            [12] 3125 	mov	dpl,a
      000EFC 12 02 19         [24] 3126 	lcall	_lcdgotoaddr
      000EFF A2 08            [12] 3127 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000F01 92 AF            [24] 3128 	mov	ea,c
                                   3129 ;	lcd.c:713: unsigned char row_vals4[8] = {0x18, 0x04, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01};
      000F03 90 04 AB         [24] 3130 	mov	dptr,#_handle_lock_custom_char_row_vals4_65539_208
      000F06 74 18            [12] 3131 	mov	a,#0x18
      000F08 F0               [24] 3132 	movx	@dptr,a
      000F09 90 04 AC         [24] 3133 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0001)
      000F0C 74 04            [12] 3134 	mov	a,#0x04
      000F0E F0               [24] 3135 	movx	@dptr,a
      000F0F 90 04 AD         [24] 3136 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0002)
      000F12 03               [12] 3137 	rr	a
      000F13 F0               [24] 3138 	movx	@dptr,a
      000F14 90 04 AE         [24] 3139 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0003)
      000F17 14               [12] 3140 	dec	a
      000F18 F0               [24] 3141 	movx	@dptr,a
      000F19 90 04 AF         [24] 3142 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0004)
      000F1C F0               [24] 3143 	movx	@dptr,a
      000F1D 90 04 B0         [24] 3144 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0005)
      000F20 F0               [24] 3145 	movx	@dptr,a
      000F21 90 04 B1         [24] 3146 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0006)
      000F24 F0               [24] 3147 	movx	@dptr,a
      000F25 90 04 B2         [24] 3148 	mov	dptr,#(_handle_lock_custom_char_row_vals4_65539_208 + 0x0007)
      000F28 F0               [24] 3149 	movx	@dptr,a
                                   3150 ;	lcd.c:722: }
      000F29 D2 08            [12] 3151 	setb	_handle_lock_custom_char_sloc0_1_0
      000F2B 10 AF 02         [24] 3152 	jbc	ea,00106$
      000F2E C2 08            [12] 3153 	clr	_handle_lock_custom_char_sloc0_1_0
      000F30                       3154 00106$:
                                   3155 ;	lcd.c:716: create_custom_char(ccode4, row_vals4);
      000F30 90 04 47         [24] 3156 	mov	dptr,#_create_custom_char_PARM_2
      000F33 74 AB            [12] 3157 	mov	a,#_handle_lock_custom_char_row_vals4_65539_208
      000F35 F0               [24] 3158 	movx	@dptr,a
      000F36 74 04            [12] 3159 	mov	a,#(_handle_lock_custom_char_row_vals4_65539_208 >> 8)
      000F38 A3               [24] 3160 	inc	dptr
      000F39 F0               [24] 3161 	movx	@dptr,a
      000F3A E4               [12] 3162 	clr	a
      000F3B A3               [24] 3163 	inc	dptr
      000F3C F0               [24] 3164 	movx	@dptr,a
      000F3D 75 82 34         [24] 3165 	mov	dpl,#0x34
      000F40 12 08 E9         [24] 3166 	lcall	_create_custom_char
                                   3167 ;	lcd.c:718: lcdgotoxy('2', '8');
      000F43 90 04 08         [24] 3168 	mov	dptr,#_lcdgotoxy_PARM_2
      000F46 74 38            [12] 3169 	mov	a,#0x38
      000F48 F0               [24] 3170 	movx	@dptr,a
      000F49 75 82 32         [24] 3171 	mov	dpl,#0x32
      000F4C 12 02 36         [24] 3172 	lcall	_lcdgotoxy
                                   3173 ;	lcd.c:719: lcdputch(ccode4 - '0');
      000F4F 75 82 04         [24] 3174 	mov	dpl,#0x04
      000F52 12 02 EF         [24] 3175 	lcall	_lcdputch
                                   3176 ;	lcd.c:721: lcdgotoaddr(save_cursor_address);
      000F55 90 05 76         [24] 3177 	mov	dptr,#_save_cursor_address
      000F58 E0               [24] 3178 	movx	a,@dptr
      000F59 F5 82            [12] 3179 	mov	dpl,a
      000F5B 12 02 19         [24] 3180 	lcall	_lcdgotoaddr
      000F5E A2 08            [12] 3181 	mov	c,_handle_lock_custom_char_sloc0_1_0
      000F60 92 AF            [24] 3182 	mov	ea,c
                                   3183 ;	lcd.c:724: }
      000F62 22               [24] 3184 	ret
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
      000F63                       3201 _handle_unlock_custom_char:
                                   3202 ;	lcd.c:730: unsigned char row_vals1[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000F63 90 04 B3         [24] 3203 	mov	dptr,#_handle_unlock_custom_char_row_vals1_65536_211
      000F66 74 1F            [12] 3204 	mov	a,#0x1f
      000F68 F0               [24] 3205 	movx	@dptr,a
      000F69 90 04 B4         [24] 3206 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0001)
      000F6C F0               [24] 3207 	movx	@dptr,a
      000F6D 90 04 B5         [24] 3208 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0002)
      000F70 F0               [24] 3209 	movx	@dptr,a
      000F71 90 04 B6         [24] 3210 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0003)
      000F74 F0               [24] 3211 	movx	@dptr,a
      000F75 90 04 B7         [24] 3212 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0004)
      000F78 F0               [24] 3213 	movx	@dptr,a
      000F79 90 04 B8         [24] 3214 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0005)
      000F7C F0               [24] 3215 	movx	@dptr,a
      000F7D 90 04 B9         [24] 3216 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0006)
      000F80 F0               [24] 3217 	movx	@dptr,a
      000F81 90 04 BA         [24] 3218 	mov	dptr,#(_handle_unlock_custom_char_row_vals1_65536_211 + 0x0007)
      000F84 F0               [24] 3219 	movx	@dptr,a
                                   3220 ;	lcd.c:737: }
      000F85 D2 09            [12] 3221 	setb	_handle_unlock_custom_char_sloc0_1_0
      000F87 10 AF 02         [24] 3222 	jbc	ea,00103$
      000F8A C2 09            [12] 3223 	clr	_handle_unlock_custom_char_sloc0_1_0
      000F8C                       3224 00103$:
                                   3225 ;	lcd.c:733: create_custom_char(ccode1, row_vals1);
      000F8C 90 04 47         [24] 3226 	mov	dptr,#_create_custom_char_PARM_2
      000F8F 74 B3            [12] 3227 	mov	a,#_handle_unlock_custom_char_row_vals1_65536_211
      000F91 F0               [24] 3228 	movx	@dptr,a
      000F92 74 04            [12] 3229 	mov	a,#(_handle_unlock_custom_char_row_vals1_65536_211 >> 8)
      000F94 A3               [24] 3230 	inc	dptr
      000F95 F0               [24] 3231 	movx	@dptr,a
      000F96 E4               [12] 3232 	clr	a
      000F97 A3               [24] 3233 	inc	dptr
      000F98 F0               [24] 3234 	movx	@dptr,a
      000F99 75 82 31         [24] 3235 	mov	dpl,#0x31
      000F9C 12 08 E9         [24] 3236 	lcall	_create_custom_char
                                   3237 ;	lcd.c:735: lcdgotoxy('3', '7');
      000F9F 90 04 08         [24] 3238 	mov	dptr,#_lcdgotoxy_PARM_2
      000FA2 74 37            [12] 3239 	mov	a,#0x37
      000FA4 F0               [24] 3240 	movx	@dptr,a
      000FA5 75 82 33         [24] 3241 	mov	dpl,#0x33
      000FA8 12 02 36         [24] 3242 	lcall	_lcdgotoxy
                                   3243 ;	lcd.c:736: lcdputch(ccode1 - '0');
      000FAB 75 82 01         [24] 3244 	mov	dpl,#0x01
      000FAE 12 02 EF         [24] 3245 	lcall	_lcdputch
      000FB1 A2 09            [12] 3246 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      000FB3 92 AF            [24] 3247 	mov	ea,c
                                   3248 ;	lcd.c:741: unsigned char row_vals2[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
      000FB5 90 04 BB         [24] 3249 	mov	dptr,#_handle_unlock_custom_char_row_vals2_65537_213
      000FB8 74 1F            [12] 3250 	mov	a,#0x1f
      000FBA F0               [24] 3251 	movx	@dptr,a
      000FBB 90 04 BC         [24] 3252 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0001)
      000FBE F0               [24] 3253 	movx	@dptr,a
      000FBF 90 04 BD         [24] 3254 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0002)
      000FC2 F0               [24] 3255 	movx	@dptr,a
      000FC3 90 04 BE         [24] 3256 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0003)
      000FC6 F0               [24] 3257 	movx	@dptr,a
      000FC7 90 04 BF         [24] 3258 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0004)
      000FCA F0               [24] 3259 	movx	@dptr,a
      000FCB 90 04 C0         [24] 3260 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0005)
      000FCE F0               [24] 3261 	movx	@dptr,a
      000FCF 90 04 C1         [24] 3262 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0006)
      000FD2 F0               [24] 3263 	movx	@dptr,a
      000FD3 90 04 C2         [24] 3264 	mov	dptr,#(_handle_unlock_custom_char_row_vals2_65537_213 + 0x0007)
      000FD6 F0               [24] 3265 	movx	@dptr,a
                                   3266 ;	lcd.c:750: }
      000FD7 D2 09            [12] 3267 	setb	_handle_unlock_custom_char_sloc0_1_0
      000FD9 10 AF 02         [24] 3268 	jbc	ea,00104$
      000FDC C2 09            [12] 3269 	clr	_handle_unlock_custom_char_sloc0_1_0
      000FDE                       3270 00104$:
                                   3271 ;	lcd.c:744: create_custom_char(ccode2, row_vals2);
      000FDE 90 04 47         [24] 3272 	mov	dptr,#_create_custom_char_PARM_2
      000FE1 74 BB            [12] 3273 	mov	a,#_handle_unlock_custom_char_row_vals2_65537_213
      000FE3 F0               [24] 3274 	movx	@dptr,a
      000FE4 74 04            [12] 3275 	mov	a,#(_handle_unlock_custom_char_row_vals2_65537_213 >> 8)
      000FE6 A3               [24] 3276 	inc	dptr
      000FE7 F0               [24] 3277 	movx	@dptr,a
      000FE8 E4               [12] 3278 	clr	a
      000FE9 A3               [24] 3279 	inc	dptr
      000FEA F0               [24] 3280 	movx	@dptr,a
      000FEB 75 82 32         [24] 3281 	mov	dpl,#0x32
      000FEE 12 08 E9         [24] 3282 	lcall	_create_custom_char
                                   3283 ;	lcd.c:746: lcdgotoxy('3', '8');
      000FF1 90 04 08         [24] 3284 	mov	dptr,#_lcdgotoxy_PARM_2
      000FF4 74 38            [12] 3285 	mov	a,#0x38
      000FF6 F0               [24] 3286 	movx	@dptr,a
      000FF7 75 82 33         [24] 3287 	mov	dpl,#0x33
      000FFA 12 02 36         [24] 3288 	lcall	_lcdgotoxy
                                   3289 ;	lcd.c:747: lcdputch(ccode2 - '0');
      000FFD 75 82 02         [24] 3290 	mov	dpl,#0x02
      001000 12 02 EF         [24] 3291 	lcall	_lcdputch
                                   3292 ;	lcd.c:749: lcdgotoaddr(save_cursor_address);
      001003 90 05 76         [24] 3293 	mov	dptr,#_save_cursor_address
      001006 E0               [24] 3294 	movx	a,@dptr
      001007 F5 82            [12] 3295 	mov	dpl,a
      001009 12 02 19         [24] 3296 	lcall	_lcdgotoaddr
      00100C A2 09            [12] 3297 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      00100E 92 AF            [24] 3298 	mov	ea,c
                                   3299 ;	lcd.c:754: unsigned char row_vals3[8] = {0x18, 0x04, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01};
      001010 90 04 C3         [24] 3300 	mov	dptr,#_handle_unlock_custom_char_row_vals3_65538_215
      001013 74 18            [12] 3301 	mov	a,#0x18
      001015 F0               [24] 3302 	movx	@dptr,a
      001016 90 04 C4         [24] 3303 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0001)
      001019 74 04            [12] 3304 	mov	a,#0x04
      00101B F0               [24] 3305 	movx	@dptr,a
      00101C 90 04 C5         [24] 3306 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0002)
      00101F 03               [12] 3307 	rr	a
      001020 F0               [24] 3308 	movx	@dptr,a
      001021 90 04 C6         [24] 3309 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0003)
      001024 14               [12] 3310 	dec	a
      001025 F0               [24] 3311 	movx	@dptr,a
      001026 90 04 C7         [24] 3312 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0004)
      001029 F0               [24] 3313 	movx	@dptr,a
      00102A 90 04 C8         [24] 3314 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0005)
      00102D F0               [24] 3315 	movx	@dptr,a
      00102E 90 04 C9         [24] 3316 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0006)
      001031 F0               [24] 3317 	movx	@dptr,a
      001032 90 04 CA         [24] 3318 	mov	dptr,#(_handle_unlock_custom_char_row_vals3_65538_215 + 0x0007)
      001035 F0               [24] 3319 	movx	@dptr,a
                                   3320 ;	lcd.c:764: }
      001036 D2 09            [12] 3321 	setb	_handle_unlock_custom_char_sloc0_1_0
      001038 10 AF 02         [24] 3322 	jbc	ea,00105$
      00103B C2 09            [12] 3323 	clr	_handle_unlock_custom_char_sloc0_1_0
      00103D                       3324 00105$:
                                   3325 ;	lcd.c:758: create_custom_char(ccode3, row_vals3);
      00103D 90 04 47         [24] 3326 	mov	dptr,#_create_custom_char_PARM_2
      001040 74 C3            [12] 3327 	mov	a,#_handle_unlock_custom_char_row_vals3_65538_215
      001042 F0               [24] 3328 	movx	@dptr,a
      001043 74 04            [12] 3329 	mov	a,#(_handle_unlock_custom_char_row_vals3_65538_215 >> 8)
      001045 A3               [24] 3330 	inc	dptr
      001046 F0               [24] 3331 	movx	@dptr,a
      001047 E4               [12] 3332 	clr	a
      001048 A3               [24] 3333 	inc	dptr
      001049 F0               [24] 3334 	movx	@dptr,a
      00104A 75 82 33         [24] 3335 	mov	dpl,#0x33
      00104D 12 08 E9         [24] 3336 	lcall	_create_custom_char
                                   3337 ;	lcd.c:760: lcdgotoxy('2', '6');
      001050 90 04 08         [24] 3338 	mov	dptr,#_lcdgotoxy_PARM_2
      001053 74 36            [12] 3339 	mov	a,#0x36
      001055 F0               [24] 3340 	movx	@dptr,a
      001056 75 82 32         [24] 3341 	mov	dpl,#0x32
      001059 12 02 36         [24] 3342 	lcall	_lcdgotoxy
                                   3343 ;	lcd.c:761: lcdputch(ccode3 - '0');
      00105C 75 82 03         [24] 3344 	mov	dpl,#0x03
      00105F 12 02 EF         [24] 3345 	lcall	_lcdputch
                                   3346 ;	lcd.c:763: lcdgotoaddr(save_cursor_address);
      001062 90 05 76         [24] 3347 	mov	dptr,#_save_cursor_address
      001065 E0               [24] 3348 	movx	a,@dptr
      001066 F5 82            [12] 3349 	mov	dpl,a
      001068 12 02 19         [24] 3350 	lcall	_lcdgotoaddr
      00106B A2 09            [12] 3351 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      00106D 92 AF            [24] 3352 	mov	ea,c
                                   3353 ;	lcd.c:769: unsigned char row_vals4[8] = {0x03, 0x04, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10};
      00106F 90 04 CB         [24] 3354 	mov	dptr,#_handle_unlock_custom_char_row_vals4_65539_217
      001072 74 03            [12] 3355 	mov	a,#0x03
      001074 F0               [24] 3356 	movx	@dptr,a
      001075 90 04 CC         [24] 3357 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0001)
      001078 04               [12] 3358 	inc	a
      001079 F0               [24] 3359 	movx	@dptr,a
      00107A 90 04 CD         [24] 3360 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0002)
      00107D 23               [12] 3361 	rl	a
      00107E F0               [24] 3362 	movx	@dptr,a
      00107F 90 04 CE         [24] 3363 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0003)
      001082 23               [12] 3364 	rl	a
      001083 F0               [24] 3365 	movx	@dptr,a
      001084 90 04 CF         [24] 3366 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0004)
      001087 F0               [24] 3367 	movx	@dptr,a
      001088 90 04 D0         [24] 3368 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0005)
      00108B F0               [24] 3369 	movx	@dptr,a
      00108C 90 04 D1         [24] 3370 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0006)
      00108F F0               [24] 3371 	movx	@dptr,a
      001090 90 04 D2         [24] 3372 	mov	dptr,#(_handle_unlock_custom_char_row_vals4_65539_217 + 0x0007)
      001093 F0               [24] 3373 	movx	@dptr,a
                                   3374 ;	lcd.c:779: }
      001094 D2 09            [12] 3375 	setb	_handle_unlock_custom_char_sloc0_1_0
      001096 10 AF 02         [24] 3376 	jbc	ea,00106$
      001099 C2 09            [12] 3377 	clr	_handle_unlock_custom_char_sloc0_1_0
      00109B                       3378 00106$:
                                   3379 ;	lcd.c:773: create_custom_char(ccode4, row_vals4);
      00109B 90 04 47         [24] 3380 	mov	dptr,#_create_custom_char_PARM_2
      00109E 74 CB            [12] 3381 	mov	a,#_handle_unlock_custom_char_row_vals4_65539_217
      0010A0 F0               [24] 3382 	movx	@dptr,a
      0010A1 74 04            [12] 3383 	mov	a,#(_handle_unlock_custom_char_row_vals4_65539_217 >> 8)
      0010A3 A3               [24] 3384 	inc	dptr
      0010A4 F0               [24] 3385 	movx	@dptr,a
      0010A5 E4               [12] 3386 	clr	a
      0010A6 A3               [24] 3387 	inc	dptr
      0010A7 F0               [24] 3388 	movx	@dptr,a
      0010A8 75 82 34         [24] 3389 	mov	dpl,#0x34
      0010AB 12 08 E9         [24] 3390 	lcall	_create_custom_char
                                   3391 ;	lcd.c:775: lcdgotoxy('2', '5');
      0010AE 90 04 08         [24] 3392 	mov	dptr,#_lcdgotoxy_PARM_2
      0010B1 74 35            [12] 3393 	mov	a,#0x35
      0010B3 F0               [24] 3394 	movx	@dptr,a
      0010B4 75 82 32         [24] 3395 	mov	dpl,#0x32
      0010B7 12 02 36         [24] 3396 	lcall	_lcdgotoxy
                                   3397 ;	lcd.c:776: lcdputch(ccode4 - '0');
      0010BA 75 82 04         [24] 3398 	mov	dpl,#0x04
      0010BD 12 02 EF         [24] 3399 	lcall	_lcdputch
                                   3400 ;	lcd.c:778: lcdgotoaddr(save_cursor_address);
      0010C0 90 05 76         [24] 3401 	mov	dptr,#_save_cursor_address
      0010C3 E0               [24] 3402 	movx	a,@dptr
      0010C4 F5 82            [12] 3403 	mov	dpl,a
      0010C6 12 02 19         [24] 3404 	lcall	_lcdgotoaddr
      0010C9 A2 09            [12] 3405 	mov	c,_handle_unlock_custom_char_sloc0_1_0
      0010CB 92 AF            [24] 3406 	mov	ea,c
                                   3407 ;	lcd.c:781: }
      0010CD 22               [24] 3408 	ret
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
      0010CE                       3425 _handle_newuser_custom_char:
                                   3426 ;	lcd.c:786: unsigned char row_vals1[8] = {0x00, 0x00, 0x07, 0x08, 0x10, 0x10, 0x10, 0x10};
      0010CE 90 04 D3         [24] 3427 	mov	dptr,#_handle_newuser_custom_char_row_vals1_65536_220
      0010D1 E4               [12] 3428 	clr	a
      0010D2 F0               [24] 3429 	movx	@dptr,a
      0010D3 90 04 D4         [24] 3430 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0001)
      0010D6 F0               [24] 3431 	movx	@dptr,a
      0010D7 90 04 D5         [24] 3432 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0002)
      0010DA 74 07            [12] 3433 	mov	a,#0x07
      0010DC F0               [24] 3434 	movx	@dptr,a
      0010DD 90 04 D6         [24] 3435 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0003)
      0010E0 04               [12] 3436 	inc	a
      0010E1 F0               [24] 3437 	movx	@dptr,a
      0010E2 90 04 D7         [24] 3438 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0004)
      0010E5 23               [12] 3439 	rl	a
      0010E6 F0               [24] 3440 	movx	@dptr,a
      0010E7 90 04 D8         [24] 3441 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0005)
      0010EA F0               [24] 3442 	movx	@dptr,a
      0010EB 90 04 D9         [24] 3443 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0006)
      0010EE F0               [24] 3444 	movx	@dptr,a
      0010EF 90 04 DA         [24] 3445 	mov	dptr,#(_handle_newuser_custom_char_row_vals1_65536_220 + 0x0007)
      0010F2 F0               [24] 3446 	movx	@dptr,a
                                   3447 ;	lcd.c:793: }
      0010F3 D2 0A            [12] 3448 	setb	_handle_newuser_custom_char_sloc0_1_0
      0010F5 10 AF 02         [24] 3449 	jbc	ea,00103$
      0010F8 C2 0A            [12] 3450 	clr	_handle_newuser_custom_char_sloc0_1_0
      0010FA                       3451 00103$:
                                   3452 ;	lcd.c:789: create_custom_char(ccode1, row_vals1);
      0010FA 90 04 47         [24] 3453 	mov	dptr,#_create_custom_char_PARM_2
      0010FD 74 D3            [12] 3454 	mov	a,#_handle_newuser_custom_char_row_vals1_65536_220
      0010FF F0               [24] 3455 	movx	@dptr,a
      001100 74 04            [12] 3456 	mov	a,#(_handle_newuser_custom_char_row_vals1_65536_220 >> 8)
      001102 A3               [24] 3457 	inc	dptr
      001103 F0               [24] 3458 	movx	@dptr,a
      001104 E4               [12] 3459 	clr	a
      001105 A3               [24] 3460 	inc	dptr
      001106 F0               [24] 3461 	movx	@dptr,a
      001107 75 82 31         [24] 3462 	mov	dpl,#0x31
      00110A 12 08 E9         [24] 3463 	lcall	_create_custom_char
                                   3464 ;	lcd.c:791: lcdgotoxy('3', '7');
      00110D 90 04 08         [24] 3465 	mov	dptr,#_lcdgotoxy_PARM_2
      001110 74 37            [12] 3466 	mov	a,#0x37
      001112 F0               [24] 3467 	movx	@dptr,a
      001113 75 82 33         [24] 3468 	mov	dpl,#0x33
      001116 12 02 36         [24] 3469 	lcall	_lcdgotoxy
                                   3470 ;	lcd.c:792: lcdputch(ccode1 - '0');
      001119 75 82 01         [24] 3471 	mov	dpl,#0x01
      00111C 12 02 EF         [24] 3472 	lcall	_lcdputch
      00111F A2 0A            [12] 3473 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      001121 92 AF            [24] 3474 	mov	ea,c
                                   3475 ;	lcd.c:797: unsigned char row_vals2[8] = {0x00, 0x00, 0x1C, 0x02, 0x09, 0x1D, 0x09, 0x01};
      001123 90 04 DB         [24] 3476 	mov	dptr,#_handle_newuser_custom_char_row_vals2_65537_222
      001126 E4               [12] 3477 	clr	a
      001127 F0               [24] 3478 	movx	@dptr,a
      001128 90 04 DC         [24] 3479 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0001)
      00112B F0               [24] 3480 	movx	@dptr,a
      00112C 90 04 DD         [24] 3481 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0002)
      00112F 74 1C            [12] 3482 	mov	a,#0x1c
      001131 F0               [24] 3483 	movx	@dptr,a
      001132 90 04 DE         [24] 3484 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0003)
      001135 74 02            [12] 3485 	mov	a,#0x02
      001137 F0               [24] 3486 	movx	@dptr,a
      001138 90 04 DF         [24] 3487 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0004)
      00113B 74 09            [12] 3488 	mov	a,#0x09
      00113D F0               [24] 3489 	movx	@dptr,a
      00113E 90 04 E0         [24] 3490 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0005)
      001141 74 1D            [12] 3491 	mov	a,#0x1d
      001143 F0               [24] 3492 	movx	@dptr,a
      001144 90 04 E1         [24] 3493 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0006)
      001147 74 09            [12] 3494 	mov	a,#0x09
      001149 F0               [24] 3495 	movx	@dptr,a
      00114A 90 04 E2         [24] 3496 	mov	dptr,#(_handle_newuser_custom_char_row_vals2_65537_222 + 0x0007)
      00114D 74 01            [12] 3497 	mov	a,#0x01
      00114F F0               [24] 3498 	movx	@dptr,a
                                   3499 ;	lcd.c:806: }
      001150 D2 0A            [12] 3500 	setb	_handle_newuser_custom_char_sloc0_1_0
      001152 10 AF 02         [24] 3501 	jbc	ea,00104$
      001155 C2 0A            [12] 3502 	clr	_handle_newuser_custom_char_sloc0_1_0
      001157                       3503 00104$:
                                   3504 ;	lcd.c:800: create_custom_char(ccode2, row_vals2);
      001157 90 04 47         [24] 3505 	mov	dptr,#_create_custom_char_PARM_2
      00115A 74 DB            [12] 3506 	mov	a,#_handle_newuser_custom_char_row_vals2_65537_222
      00115C F0               [24] 3507 	movx	@dptr,a
      00115D 74 04            [12] 3508 	mov	a,#(_handle_newuser_custom_char_row_vals2_65537_222 >> 8)
      00115F A3               [24] 3509 	inc	dptr
      001160 F0               [24] 3510 	movx	@dptr,a
      001161 E4               [12] 3511 	clr	a
      001162 A3               [24] 3512 	inc	dptr
      001163 F0               [24] 3513 	movx	@dptr,a
      001164 75 82 32         [24] 3514 	mov	dpl,#0x32
      001167 12 08 E9         [24] 3515 	lcall	_create_custom_char
                                   3516 ;	lcd.c:802: lcdgotoxy('3', '8');
      00116A 90 04 08         [24] 3517 	mov	dptr,#_lcdgotoxy_PARM_2
      00116D 74 38            [12] 3518 	mov	a,#0x38
      00116F F0               [24] 3519 	movx	@dptr,a
      001170 75 82 33         [24] 3520 	mov	dpl,#0x33
      001173 12 02 36         [24] 3521 	lcall	_lcdgotoxy
                                   3522 ;	lcd.c:803: lcdputch(ccode2 - '0');
      001176 75 82 02         [24] 3523 	mov	dpl,#0x02
      001179 12 02 EF         [24] 3524 	lcall	_lcdputch
                                   3525 ;	lcd.c:805: lcdgotoaddr(save_cursor_address);
      00117C 90 05 76         [24] 3526 	mov	dptr,#_save_cursor_address
      00117F E0               [24] 3527 	movx	a,@dptr
      001180 F5 82            [12] 3528 	mov	dpl,a
      001182 12 02 19         [24] 3529 	lcall	_lcdgotoaddr
      001185 A2 0A            [12] 3530 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      001187 92 AF            [24] 3531 	mov	ea,c
                                   3532 ;	lcd.c:810: unsigned char row_vals3[8] = {0x00, 0x00, 0x00, 0x00, 0x03, 0x04, 0x04, 0x03};
      001189 90 04 E3         [24] 3533 	mov	dptr,#_handle_newuser_custom_char_row_vals3_65538_224
      00118C E4               [12] 3534 	clr	a
      00118D F0               [24] 3535 	movx	@dptr,a
      00118E 90 04 E4         [24] 3536 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0001)
      001191 F0               [24] 3537 	movx	@dptr,a
      001192 90 04 E5         [24] 3538 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0002)
      001195 F0               [24] 3539 	movx	@dptr,a
      001196 90 04 E6         [24] 3540 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0003)
      001199 F0               [24] 3541 	movx	@dptr,a
      00119A 90 04 E7         [24] 3542 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0004)
      00119D 74 03            [12] 3543 	mov	a,#0x03
      00119F F0               [24] 3544 	movx	@dptr,a
      0011A0 90 04 E8         [24] 3545 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0005)
      0011A3 04               [12] 3546 	inc	a
      0011A4 F0               [24] 3547 	movx	@dptr,a
      0011A5 90 04 E9         [24] 3548 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0006)
      0011A8 F0               [24] 3549 	movx	@dptr,a
      0011A9 90 04 EA         [24] 3550 	mov	dptr,#(_handle_newuser_custom_char_row_vals3_65538_224 + 0x0007)
      0011AC 14               [12] 3551 	dec	a
      0011AD F0               [24] 3552 	movx	@dptr,a
                                   3553 ;	lcd.c:819: }
      0011AE D2 0A            [12] 3554 	setb	_handle_newuser_custom_char_sloc0_1_0
      0011B0 10 AF 02         [24] 3555 	jbc	ea,00105$
      0011B3 C2 0A            [12] 3556 	clr	_handle_newuser_custom_char_sloc0_1_0
      0011B5                       3557 00105$:
                                   3558 ;	lcd.c:813: create_custom_char(ccode3, row_vals3);
      0011B5 90 04 47         [24] 3559 	mov	dptr,#_create_custom_char_PARM_2
      0011B8 74 E3            [12] 3560 	mov	a,#_handle_newuser_custom_char_row_vals3_65538_224
      0011BA F0               [24] 3561 	movx	@dptr,a
      0011BB 74 04            [12] 3562 	mov	a,#(_handle_newuser_custom_char_row_vals3_65538_224 >> 8)
      0011BD A3               [24] 3563 	inc	dptr
      0011BE F0               [24] 3564 	movx	@dptr,a
      0011BF E4               [12] 3565 	clr	a
      0011C0 A3               [24] 3566 	inc	dptr
      0011C1 F0               [24] 3567 	movx	@dptr,a
      0011C2 75 82 33         [24] 3568 	mov	dpl,#0x33
      0011C5 12 08 E9         [24] 3569 	lcall	_create_custom_char
                                   3570 ;	lcd.c:815: lcdgotoxy('2', '7');
      0011C8 90 04 08         [24] 3571 	mov	dptr,#_lcdgotoxy_PARM_2
      0011CB 74 37            [12] 3572 	mov	a,#0x37
      0011CD F0               [24] 3573 	movx	@dptr,a
      0011CE 75 82 32         [24] 3574 	mov	dpl,#0x32
      0011D1 12 02 36         [24] 3575 	lcall	_lcdgotoxy
                                   3576 ;	lcd.c:816: lcdputch(ccode3 - '0');
      0011D4 75 82 03         [24] 3577 	mov	dpl,#0x03
      0011D7 12 02 EF         [24] 3578 	lcall	_lcdputch
                                   3579 ;	lcd.c:818: lcdgotoaddr(save_cursor_address);
      0011DA 90 05 76         [24] 3580 	mov	dptr,#_save_cursor_address
      0011DD E0               [24] 3581 	movx	a,@dptr
      0011DE F5 82            [12] 3582 	mov	dpl,a
      0011E0 12 02 19         [24] 3583 	lcall	_lcdgotoaddr
      0011E3 A2 0A            [12] 3584 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      0011E5 92 AF            [24] 3585 	mov	ea,c
                                   3586 ;	lcd.c:823: unsigned char row_vals4[8] = {0x00, 0x00, 0x00, 0x00, 0x18, 0x04, 0x04, 0x18};
      0011E7 90 04 EB         [24] 3587 	mov	dptr,#_handle_newuser_custom_char_row_vals4_65539_226
      0011EA E4               [12] 3588 	clr	a
      0011EB F0               [24] 3589 	movx	@dptr,a
      0011EC 90 04 EC         [24] 3590 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0001)
      0011EF F0               [24] 3591 	movx	@dptr,a
      0011F0 90 04 ED         [24] 3592 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0002)
      0011F3 F0               [24] 3593 	movx	@dptr,a
      0011F4 90 04 EE         [24] 3594 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0003)
      0011F7 F0               [24] 3595 	movx	@dptr,a
      0011F8 90 04 EF         [24] 3596 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0004)
      0011FB 74 18            [12] 3597 	mov	a,#0x18
      0011FD F0               [24] 3598 	movx	@dptr,a
      0011FE 90 04 F0         [24] 3599 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0005)
      001201 74 04            [12] 3600 	mov	a,#0x04
      001203 F0               [24] 3601 	movx	@dptr,a
      001204 90 04 F1         [24] 3602 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0006)
      001207 F0               [24] 3603 	movx	@dptr,a
      001208 90 04 F2         [24] 3604 	mov	dptr,#(_handle_newuser_custom_char_row_vals4_65539_226 + 0x0007)
      00120B 74 18            [12] 3605 	mov	a,#0x18
      00120D F0               [24] 3606 	movx	@dptr,a
                                   3607 ;	lcd.c:832: }
      00120E D2 0A            [12] 3608 	setb	_handle_newuser_custom_char_sloc0_1_0
      001210 10 AF 02         [24] 3609 	jbc	ea,00106$
      001213 C2 0A            [12] 3610 	clr	_handle_newuser_custom_char_sloc0_1_0
      001215                       3611 00106$:
                                   3612 ;	lcd.c:826: create_custom_char(ccode4, row_vals4);
      001215 90 04 47         [24] 3613 	mov	dptr,#_create_custom_char_PARM_2
      001218 74 EB            [12] 3614 	mov	a,#_handle_newuser_custom_char_row_vals4_65539_226
      00121A F0               [24] 3615 	movx	@dptr,a
      00121B 74 04            [12] 3616 	mov	a,#(_handle_newuser_custom_char_row_vals4_65539_226 >> 8)
      00121D A3               [24] 3617 	inc	dptr
      00121E F0               [24] 3618 	movx	@dptr,a
      00121F E4               [12] 3619 	clr	a
      001220 A3               [24] 3620 	inc	dptr
      001221 F0               [24] 3621 	movx	@dptr,a
      001222 75 82 34         [24] 3622 	mov	dpl,#0x34
      001225 12 08 E9         [24] 3623 	lcall	_create_custom_char
                                   3624 ;	lcd.c:828: lcdgotoxy('2', '8');
      001228 90 04 08         [24] 3625 	mov	dptr,#_lcdgotoxy_PARM_2
      00122B 74 38            [12] 3626 	mov	a,#0x38
      00122D F0               [24] 3627 	movx	@dptr,a
      00122E 75 82 32         [24] 3628 	mov	dpl,#0x32
      001231 12 02 36         [24] 3629 	lcall	_lcdgotoxy
                                   3630 ;	lcd.c:829: lcdputch(ccode4 - '0');
      001234 75 82 04         [24] 3631 	mov	dpl,#0x04
      001237 12 02 EF         [24] 3632 	lcall	_lcdputch
                                   3633 ;	lcd.c:831: lcdgotoaddr(save_cursor_address);
      00123A 90 05 76         [24] 3634 	mov	dptr,#_save_cursor_address
      00123D E0               [24] 3635 	movx	a,@dptr
      00123E F5 82            [12] 3636 	mov	dpl,a
      001240 12 02 19         [24] 3637 	lcall	_lcdgotoaddr
      001243 A2 0A            [12] 3638 	mov	c,_handle_newuser_custom_char_sloc0_1_0
      001245 92 AF            [24] 3639 	mov	ea,c
                                   3640 ;	lcd.c:834: }
      001247 22               [24] 3641 	ret
                                   3642 ;------------------------------------------------------------
                                   3643 ;Allocation info for local variables in function 'print_author'
                                   3644 ;------------------------------------------------------------
                                   3645 ;str                       Allocated with name '_print_author_str_65537_230'
                                   3646 ;------------------------------------------------------------
                                   3647 ;	lcd.c:836: void print_author(void)
                                   3648 ;	-----------------------------------------
                                   3649 ;	 function print_author
                                   3650 ;	-----------------------------------------
      001248                       3651 _print_author:
                                   3652 ;	lcd.c:839: printf_tiny("\033[1;33m\n\rAuthor Info Printed !!\r\n");
      001248 74 FC            [12] 3653 	mov	a,#___str_33
      00124A C0 E0            [24] 3654 	push	acc
      00124C 74 2D            [12] 3655 	mov	a,#(___str_33 >> 8)
      00124E C0 E0            [24] 3656 	push	acc
      001250 12 19 17         [24] 3657 	lcall	_printf_tiny
      001253 15 81            [12] 3658 	dec	sp
      001255 15 81            [12] 3659 	dec	sp
                                   3660 ;	lcd.c:843: str = "Kiran Jojare    ESD Summer 2023 Lab 4           ";
                                   3661 ;	lcd.c:854: }
      001257 D2 0B            [12] 3662 	setb	_print_author_sloc0_1_0
      001259 10 AF 02         [24] 3663 	jbc	ea,00103$
      00125C C2 0B            [12] 3664 	clr	_print_author_sloc0_1_0
      00125E                       3665 00103$:
                                   3666 ;	lcd.c:849: lcdgotoaddr(0x00);
      00125E 75 82 00         [24] 3667 	mov	dpl,#0x00
      001261 12 02 19         [24] 3668 	lcall	_lcdgotoaddr
                                   3669 ;	lcd.c:850: lcdputstr(str);
      001264 90 2E 1E         [24] 3670 	mov	dptr,#___str_34
      001267 75 F0 80         [24] 3671 	mov	b,#0x80
      00126A 12 03 52         [24] 3672 	lcall	_lcdputstr
                                   3673 ;	lcd.c:853: lcdgotoaddr(0x00);
      00126D 75 82 00         [24] 3674 	mov	dpl,#0x00
      001270 12 02 19         [24] 3675 	lcall	_lcdgotoaddr
      001273 A2 0B            [12] 3676 	mov	c,_print_author_sloc0_1_0
      001275 92 AF            [24] 3677 	mov	ea,c
                                   3678 ;	lcd.c:855: return;
                                   3679 ;	lcd.c:856: }
      001277 22               [24] 3680 	ret
                                   3681 	.area CSEG    (CODE)
                                   3682 	.area CONST   (CODE)
                                   3683 	.area CONST   (CODE)
      002A80                       3684 ___str_0:
      002A80 20 20 20 20 20 20 20  3685 	.ascii "       "
      002A87 00                    3686 	.db 0x00
                                   3687 	.area CSEG    (CODE)
                                   3688 	.area CONST   (CODE)
      002A88                       3689 ___str_1:
      002A88 1B                    3690 	.db 0x1b
      002A89 5B 31 3B 33 33 6D     3691 	.ascii "[1;33m"
      002A8F 0A                    3692 	.db 0x0a
      002A90 0D                    3693 	.db 0x0d
      002A91 4C 43 44 20 43 6C 65  3694 	.ascii "LCD Cleared!!"
             61 72 65 64 21 21
      002A9E 0D                    3695 	.db 0x0d
      002A9F 0A                    3696 	.db 0x0a
      002AA0 00                    3697 	.db 0x00
                                   3698 	.area CSEG    (CODE)
                                   3699 	.area CONST   (CODE)
      002AA1                       3700 ___str_2:
      002AA1 1B                    3701 	.db 0x1b
      002AA2 5B 31 3B 33 33 6D     3702 	.ascii "[1;33m"
      002AA8 0A                    3703 	.db 0x0a
      002AA9 0D                    3704 	.db 0x0d
      002AAA 45 6E 74 65 72 20 43  3705 	.ascii "Enter Character to put on LCD !!"
             68 61 72 61 63 74 65
             72 20 74 6F 20 70 75
             74 20 6F 6E 20 4C 43
             44 20 21 21
      002ACA 0D                    3706 	.db 0x0d
      002ACB 0A                    3707 	.db 0x0a
      002ACC 00                    3708 	.db 0x00
                                   3709 	.area CSEG    (CODE)
                                   3710 	.area CONST   (CODE)
      002ACD                       3711 ___str_3:
      002ACD 0A                    3712 	.db 0x0a
      002ACE 0D                    3713 	.db 0x0d
      002ACF 45 6E 74 65 72 65 64  3714 	.ascii "Entered Char = %c"
             20 43 68 61 72 20 3D
             20 25 63
      002AE0 0A                    3715 	.db 0x0a
      002AE1 0D                    3716 	.db 0x0d
      002AE2 00                    3717 	.db 0x00
                                   3718 	.area CSEG    (CODE)
                                   3719 	.area CONST   (CODE)
      002AE3                       3720 ___str_4:
      002AE3 0A                    3721 	.db 0x0a
      002AE4 0D                    3722 	.db 0x0d
      002AE5 00                    3723 	.db 0x00
                                   3724 	.area CSEG    (CODE)
                                   3725 	.area CONST   (CODE)
      002AE6                       3726 ___str_5:
      002AE6 1B                    3727 	.db 0x1b
      002AE7 5B 31 3B 33 33 6D     3728 	.ascii "[1;33m"
      002AED 0A                    3729 	.db 0x0a
      002AEE 0D                    3730 	.db 0x0d
      002AEF 45 6E 74 65 72 20 53  3731 	.ascii "Enter String to put on LCD !!"
             74 72 69 6E 67 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002B0C 0D                    3732 	.db 0x0d
      002B0D 0A                    3733 	.db 0x0a
      002B0E 00                    3734 	.db 0x00
                                   3735 	.area CSEG    (CODE)
                                   3736 	.area CONST   (CODE)
      002B0F                       3737 ___str_6:
      002B0F 45 6E 74 65 72 65 64  3738 	.ascii "Entered String = %s"
             20 53 74 72 69 6E 67
             20 3D 20 25 73
      002B22 0A                    3739 	.db 0x0a
      002B23 0D                    3740 	.db 0x0d
      002B24 00                    3741 	.db 0x00
                                   3742 	.area CSEG    (CODE)
                                   3743 	.area CONST   (CODE)
      002B25                       3744 ___str_7:
      002B25 1B                    3745 	.db 0x1b
      002B26 5B 31 3B 33 33 6D     3746 	.ascii "[1;33m"
      002B2C 0A                    3747 	.db 0x0a
      002B2D 0D                    3748 	.db 0x0d
      002B2E 45 6E 74 65 72 20 58  3749 	.ascii "Enter X-Co-ordinate to put on LCD !!"
             2D 43 6F 2D 6F 72 64
             69 6E 61 74 65 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002B52 0D                    3750 	.db 0x0d
      002B53 0A                    3751 	.db 0x0a
      002B54 00                    3752 	.db 0x00
                                   3753 	.area CSEG    (CODE)
                                   3754 	.area CONST   (CODE)
      002B55                       3755 ___str_8:
      002B55 58 2D 43 6F 72 64 69  3756 	.ascii "X-Cordinate = %c"
             6E 61 74 65 20 3D 20
             25 63
      002B65 0A                    3757 	.db 0x0a
      002B66 0D                    3758 	.db 0x0d
      002B67 00                    3759 	.db 0x00
                                   3760 	.area CSEG    (CODE)
                                   3761 	.area CONST   (CODE)
      002B68                       3762 ___str_9:
      002B68 1B                    3763 	.db 0x1b
      002B69 5B 31 3B 33 33 6D     3764 	.ascii "[1;33m"
      002B6F 0A                    3765 	.db 0x0a
      002B70 0D                    3766 	.db 0x0d
      002B71 45 6E 74 65 72 20 59  3767 	.ascii "Enter Y-Co-ordinate to put on LCD !!"
             2D 43 6F 2D 6F 72 64
             69 6E 61 74 65 20 74
             6F 20 70 75 74 20 6F
             6E 20 4C 43 44 20 21
             21
      002B95 0D                    3768 	.db 0x0d
      002B96 0A                    3769 	.db 0x0a
      002B97 00                    3770 	.db 0x00
                                   3771 	.area CSEG    (CODE)
                                   3772 	.area CONST   (CODE)
      002B98                       3773 ___str_10:
      002B98 59 2D 43 6F 72 64 69  3774 	.ascii "Y-Cordinate = %c"
             6E 61 74 65 20 3D 20
             25 63
      002BA8 0A                    3775 	.db 0x0a
      002BA9 0D                    3776 	.db 0x0d
      002BAA 00                    3777 	.db 0x00
                                   3778 	.area CSEG    (CODE)
                                   3779 	.area CONST   (CODE)
      002BAB                       3780 ___str_11:
      002BAB 1B                    3781 	.db 0x1b
      002BAC 5B 31 3B 33 31 6D 49  3782 	.ascii "[1;31mInvalid coordinate!!"
             6E 76 61 6C 69 64 20
             63 6F 6F 72 64 69 6E
             61 74 65 21 21
      002BC6 0A                    3783 	.db 0x0a
      002BC7 0D                    3784 	.db 0x0d
      002BC8 00                    3785 	.db 0x00
                                   3786 	.area CSEG    (CODE)
                                   3787 	.area CONST   (CODE)
      002BC9                       3788 ___str_12:
      002BC9 1B                    3789 	.db 0x1b
      002BCA 5B 31 3B 33 33 6D     3790 	.ascii "[1;33m"
      002BD0 0A                    3791 	.db 0x0a
      002BD1 0D                    3792 	.db 0x0d
      002BD2 43 75 72 73 6F 72 20  3793 	.ascii "Cursor Movement Completed!!"
             4D 6F 76 65 6D 65 6E
             74 20 43 6F 6D 70 6C
             65 74 65 64 21 21
      002BED 0D                    3794 	.db 0x0d
      002BEE 0A                    3795 	.db 0x0a
      002BEF 00                    3796 	.db 0x00
                                   3797 	.area CSEG    (CODE)
                                   3798 	.area CONST   (CODE)
      002BF0                       3799 ___str_13:
      002BF0 1B                    3800 	.db 0x1b
      002BF1 5B 31 3B 33 33 6D     3801 	.ascii "[1;33m"
      002BF7 0A                    3802 	.db 0x0a
      002BF8 0D                    3803 	.db 0x0d
      002BF9 45 6E 74 65 72 20 61  3804 	.ascii "Enter address to put onto the LCD !!"
             64 64 72 65 73 73 20
             74 6F 20 70 75 74 20
             6F 6E 74 6F 20 74 68
             65 20 4C 43 44 20 21
             21
      002C1D 0D                    3805 	.db 0x0d
      002C1E 0A                    3806 	.db 0x0a
      002C1F 00                    3807 	.db 0x00
                                   3808 	.area CSEG    (CODE)
                                   3809 	.area CONST   (CODE)
      002C20                       3810 ___str_14:
      002C20 41 64 64 72 65 73 73  3811 	.ascii "Address Entered = %s"
             20 45 6E 74 65 72 65
             64 20 3D 20 25 73
      002C34 0A                    3812 	.db 0x0a
      002C35 0D                    3813 	.db 0x0d
      002C36 00                    3814 	.db 0x00
                                   3815 	.area CSEG    (CODE)
                                   3816 	.area CONST   (CODE)
      002C37                       3817 ___str_15:
      002C37 1B                    3818 	.db 0x1b
      002C38 5B 31 3B 33 33 6D     3819 	.ascii "[1;33m"
      002C3E 0A                    3820 	.db 0x0a
      002C3F 0D                    3821 	.db 0x0d
      002C40 54 69 6D 65 20 50 61  3822 	.ascii "Time Paused !!"
             75 73 65 64 20 21 21
      002C4E 0D                    3823 	.db 0x0d
      002C4F 0A                    3824 	.db 0x0a
      002C50 00                    3825 	.db 0x00
                                   3826 	.area CSEG    (CODE)
                                   3827 	.area CONST   (CODE)
      002C51                       3828 ___str_16:
      002C51 1B                    3829 	.db 0x1b
      002C52 5B 31 3B 33 33 6D     3830 	.ascii "[1;33m"
      002C58 0A                    3831 	.db 0x0a
      002C59 0D                    3832 	.db 0x0d
      002C5A 54 69 6D 65 20 52 65  3833 	.ascii "Time Resumed !!"
             73 75 6D 65 64 20 21
             21
      002C69 0D                    3834 	.db 0x0d
      002C6A 0A                    3835 	.db 0x0a
      002C6B 00                    3836 	.db 0x00
                                   3837 	.area CSEG    (CODE)
                                   3838 	.area CONST   (CODE)
      002C6C                       3839 ___str_17:
      002C6C 1B                    3840 	.db 0x1b
      002C6D 5B 31 3B 33 33 6D     3841 	.ascii "[1;33m"
      002C73 0A                    3842 	.db 0x0a
      002C74 0D                    3843 	.db 0x0d
      002C75 54 69 6D 65 20 52 65  3844 	.ascii "Time Reset !!"
             73 65 74 20 21 21
      002C82 0D                    3845 	.db 0x0d
      002C83 0A                    3846 	.db 0x0a
      002C84 00                    3847 	.db 0x00
                                   3848 	.area CSEG    (CODE)
                                   3849 	.area CONST   (CODE)
      002C85                       3850 ___str_18:
      002C85 1B                    3851 	.db 0x1b
      002C86 5B 31 3B 33 34 6D     3852 	.ascii "[1;34m"
      002C8C 00                    3853 	.db 0x00
                                   3854 	.area CSEG    (CODE)
                                   3855 	.area CONST   (CODE)
      002C8D                       3856 ___str_19:
      002C8D 0A                    3857 	.db 0x0a
      002C8E 0D                    3858 	.db 0x0d
      002C8F 50 72 69 6E 74 69 6E  3859 	.ascii "Printing Hexdump of DDRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 44
             44 52 41 4D
      002CA8 0A                    3860 	.db 0x0a
      002CA9 0D                    3861 	.db 0x0d
      002CAA 00                    3862 	.db 0x00
                                   3863 	.area CSEG    (CODE)
                                   3864 	.area CONST   (CODE)
      002CAB                       3865 ___str_20:
      002CAB 0A                    3866 	.db 0x0a
      002CAC 0D                    3867 	.db 0x0d
      002CAD 30 78 25 30 32 78 3A  3868 	.ascii "0x%02x: "
             20
      002CB5 00                    3869 	.db 0x00
                                   3870 	.area CSEG    (CODE)
                                   3871 	.area CONST   (CODE)
      002CB6                       3872 ___str_21:
      002CB6 30 78 25 30 32 78 20  3873 	.ascii "0x%02x "
      002CBD 00                    3874 	.db 0x00
                                   3875 	.area CSEG    (CODE)
                                   3876 	.area CONST   (CODE)
      002CBE                       3877 ___str_22:
      002CBE 0A                    3878 	.db 0x0a
      002CBF 0D                    3879 	.db 0x0d
      002CC0 0A                    3880 	.db 0x0a
      002CC1 0D                    3881 	.db 0x0d
      002CC2 50 72 69 6E 74 69 6E  3882 	.ascii "Printing Hexdump of CGRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 43
             47 52 41 4D
      002CDB 0A                    3883 	.db 0x0a
      002CDC 0D                    3884 	.db 0x0d
      002CDD 00                    3885 	.db 0x00
                                   3886 	.area CSEG    (CODE)
                                   3887 	.area CONST   (CODE)
      002CDE                       3888 ___str_23:
      002CDE 1B                    3889 	.db 0x1b
      002CDF 5B 30 6D              3890 	.ascii "[0m"
      002CE2 00                    3891 	.db 0x00
                                   3892 	.area CSEG    (CODE)
                                   3893 	.area CONST   (CODE)
      002CE3                       3894 ___str_24:
      002CE3 0A                    3895 	.db 0x0a
      002CE4 0D                    3896 	.db 0x0d
      002CE5 45 6E 74 65 72 20 61  3897 	.ascii "Enter a hexadecimal value between (00 to 1F) or (40 to 58): "
             20 68 65 78 61 64 65
             63 69 6D 61 6C 20 76
             61 6C 75 65 20 62 65
             74 77 65 65 6E 20 28
             30 30 20 74 6F 20 31
             46 29 20 6F 72 20 28
             34 30 20 74 6F 20 35
             38 29 3A 20
      002D21 00                    3898 	.db 0x00
                                   3899 	.area CSEG    (CODE)
                                   3900 	.area CONST   (CODE)
      002D22                       3901 ___str_25:
      002D22 0A                    3902 	.db 0x0a
      002D23 0D                    3903 	.db 0x0d
      002D24 49 6E 76 61 6C 69 64  3904 	.ascii "Invalid input. "
             20 69 6E 70 75 74 2E
             20
      002D33 00                    3905 	.db 0x00
                                   3906 	.area CSEG    (CODE)
                                   3907 	.area CONST   (CODE)
      002D34                       3908 ___str_26:
      002D34 50 6C 65 61 73 65 20  3909 	.ascii "Please enter a valid input: "
             65 6E 74 65 72 20 61
             20 76 61 6C 69 64 20
             69 6E 70 75 74 3A 20
      002D50 00                    3910 	.db 0x00
                                   3911 	.area CSEG    (CODE)
                                   3912 	.area CONST   (CODE)
      002D51                       3913 ___str_27:
      002D51 0A                    3914 	.db 0x0a
      002D52 0D                    3915 	.db 0x0d
      002D53 54 68 65 20 63 75 73  3916 	.ascii "The custom character with code 0x%x has been created."
             74 6F 6D 20 63 68 61
             72 61 63 74 65 72 20
             77 69 74 68 20 63 6F
             64 65 20 30 78 25 78
             20 68 61 73 20 62 65
             65 6E 20 63 72 65 61
             74 65 64 2E
      002D88 00                    3917 	.db 0x00
                                   3918 	.area CSEG    (CODE)
                                   3919 	.area CONST   (CODE)
      002D89                       3920 ___str_28:
      002D89 0A                    3921 	.db 0x0a
      002D8A 0D                    3922 	.db 0x0d
      002D8B 4C 43 44 5F 70 74 72  3923 	.ascii "LCD_ptr = %x"
             20 3D 20 25 78
      002D97 00                    3924 	.db 0x00
                                   3925 	.area CSEG    (CODE)
                                   3926 	.area CONST   (CODE)
      002D98                       3927 ___str_29:
      002D98 1B                    3928 	.db 0x1b
      002D99 5B 30 3B 33 33 6D     3929 	.ascii "[0;33m"
      002D9F 00                    3930 	.db 0x00
                                   3931 	.area CSEG    (CODE)
                                   3932 	.area CONST   (CODE)
      002DA0                       3933 ___str_30:
      002DA0 50 6C 65 61 73 65 20  3934 	.ascii "Please enter the code for the custom character: "
             65 6E 74 65 72 20 74
             68 65 20 63 6F 64 65
             20 66 6F 72 20 74 68
             65 20 63 75 73 74 6F
             6D 20 63 68 61 72 61
             63 74 65 72 3A 20
      002DD0 00                    3935 	.db 0x00
                                   3936 	.area CSEG    (CODE)
                                   3937 	.area CONST   (CODE)
      002DD1                       3938 ___str_31:
      002DD1 25 63                 3939 	.ascii "%c"
      002DD3 0A                    3940 	.db 0x0a
      002DD4 0D                    3941 	.db 0x0d
      002DD5 00                    3942 	.db 0x00
                                   3943 	.area CSEG    (CODE)
                                   3944 	.area CONST   (CODE)
      002DD6                       3945 ___str_32:
      002DD6 0A                    3946 	.db 0x0a
      002DD7 0D                    3947 	.db 0x0d
      002DD8 50 6C 65 61 73 65 20  3948 	.ascii "Please enter the value for row %d: "
             65 6E 74 65 72 20 74
             68 65 20 76 61 6C 75
             65 20 66 6F 72 20 72
             6F 77 20 25 64 3A 20
      002DFB 00                    3949 	.db 0x00
                                   3950 	.area CSEG    (CODE)
                                   3951 	.area CONST   (CODE)
      002DFC                       3952 ___str_33:
      002DFC 1B                    3953 	.db 0x1b
      002DFD 5B 31 3B 33 33 6D     3954 	.ascii "[1;33m"
      002E03 0A                    3955 	.db 0x0a
      002E04 0D                    3956 	.db 0x0d
      002E05 41 75 74 68 6F 72 20  3957 	.ascii "Author Info Printed !!"
             49 6E 66 6F 20 50 72
             69 6E 74 65 64 20 21
             21
      002E1B 0D                    3958 	.db 0x0d
      002E1C 0A                    3959 	.db 0x0a
      002E1D 00                    3960 	.db 0x00
                                   3961 	.area CSEG    (CODE)
                                   3962 	.area CONST   (CODE)
      002E1E                       3963 ___str_34:
      002E1E 4B 69 72 61 6E 20 4A  3964 	.ascii "Kiran Jojare    ESD Summer 2023 Lab 4           "
             6F 6A 61 72 65 20 20
             20 20 45 53 44 20 53
             75 6D 6D 65 72 20 32
             30 32 33 20 4C 61 62
             20 34 20 20 20 20 20
             20 20 20 20 20 20
      002E4E 00                    3965 	.db 0x00
                                   3966 	.area CSEG    (CODE)
                                   3967 	.area XINIT   (CODE)
      002FF8                       3968 __xinit__save_cursor_address:
      002FF8 00                    3969 	.db #0x00	; 0
                                   3970 	.area CABS    (ABS,CODE)
