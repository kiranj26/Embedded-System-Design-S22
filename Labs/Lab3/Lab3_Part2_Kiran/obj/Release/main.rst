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
                                     12 	.globl __sdcc_external_startup
                                     13 	.globl _command_processing
                                     14 	.globl _putchar
                                     15 	.globl _getchar
                                     16 	.globl _Buffer_Size_Error_Correction
                                     17 	.globl _printf_tiny
                                     18 	.globl _printf
                                     19 	.globl _free
                                     20 	.globl _malloc
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _TXD0
                                     97 	.globl _RXD0
                                     98 	.globl _BREG_F7
                                     99 	.globl _BREG_F6
                                    100 	.globl _BREG_F5
                                    101 	.globl _BREG_F4
                                    102 	.globl _BREG_F3
                                    103 	.globl _BREG_F2
                                    104 	.globl _BREG_F1
                                    105 	.globl _BREG_F0
                                    106 	.globl _P5_7
                                    107 	.globl _P5_6
                                    108 	.globl _P5_5
                                    109 	.globl _P5_4
                                    110 	.globl _P5_3
                                    111 	.globl _P5_2
                                    112 	.globl _P5_1
                                    113 	.globl _P5_0
                                    114 	.globl _P4_7
                                    115 	.globl _P4_6
                                    116 	.globl _P4_5
                                    117 	.globl _P4_4
                                    118 	.globl _P4_3
                                    119 	.globl _P4_2
                                    120 	.globl _P4_1
                                    121 	.globl _P4_0
                                    122 	.globl _PX0L
                                    123 	.globl _PT0L
                                    124 	.globl _PX1L
                                    125 	.globl _PT1L
                                    126 	.globl _PSL
                                    127 	.globl _PT2L
                                    128 	.globl _PPCL
                                    129 	.globl _EC
                                    130 	.globl _CCF0
                                    131 	.globl _CCF1
                                    132 	.globl _CCF2
                                    133 	.globl _CCF3
                                    134 	.globl _CCF4
                                    135 	.globl _CR
                                    136 	.globl _CF
                                    137 	.globl _TF2
                                    138 	.globl _EXF2
                                    139 	.globl _RCLK
                                    140 	.globl _TCLK
                                    141 	.globl _EXEN2
                                    142 	.globl _TR2
                                    143 	.globl _C_T2
                                    144 	.globl _CP_RL2
                                    145 	.globl _T2CON_7
                                    146 	.globl _T2CON_6
                                    147 	.globl _T2CON_5
                                    148 	.globl _T2CON_4
                                    149 	.globl _T2CON_3
                                    150 	.globl _T2CON_2
                                    151 	.globl _T2CON_1
                                    152 	.globl _T2CON_0
                                    153 	.globl _PT2
                                    154 	.globl _ET2
                                    155 	.globl _B
                                    156 	.globl _ACC
                                    157 	.globl _PSW
                                    158 	.globl _IP
                                    159 	.globl _P3
                                    160 	.globl _IE
                                    161 	.globl _P2
                                    162 	.globl _SBUF
                                    163 	.globl _SCON
                                    164 	.globl _P1
                                    165 	.globl _TH1
                                    166 	.globl _TH0
                                    167 	.globl _TL1
                                    168 	.globl _TL0
                                    169 	.globl _TMOD
                                    170 	.globl _TCON
                                    171 	.globl _PCON
                                    172 	.globl _DPH
                                    173 	.globl _DPL
                                    174 	.globl _SP
                                    175 	.globl _P0
                                    176 	.globl _SBUF0
                                    177 	.globl _DP0L
                                    178 	.globl _DP0H
                                    179 	.globl _EECON
                                    180 	.globl _KBF
                                    181 	.globl _KBE
                                    182 	.globl _KBLS
                                    183 	.globl _BRL
                                    184 	.globl _BDRCON
                                    185 	.globl _T2MOD
                                    186 	.globl _SPDAT
                                    187 	.globl _SPSTA
                                    188 	.globl _SPCON
                                    189 	.globl _SADEN
                                    190 	.globl _SADDR
                                    191 	.globl _WDTPRG
                                    192 	.globl _WDTRST
                                    193 	.globl _P5
                                    194 	.globl _P4
                                    195 	.globl _IPH1
                                    196 	.globl _IPL1
                                    197 	.globl _IPH0
                                    198 	.globl _IPL0
                                    199 	.globl _IEN1
                                    200 	.globl _IEN0
                                    201 	.globl _CMOD
                                    202 	.globl _CL
                                    203 	.globl _CH
                                    204 	.globl _CCON
                                    205 	.globl _CCAPM4
                                    206 	.globl _CCAPM3
                                    207 	.globl _CCAPM2
                                    208 	.globl _CCAPM1
                                    209 	.globl _CCAPM0
                                    210 	.globl _CCAP4L
                                    211 	.globl _CCAP3L
                                    212 	.globl _CCAP2L
                                    213 	.globl _CCAP1L
                                    214 	.globl _CCAP0L
                                    215 	.globl _CCAP4H
                                    216 	.globl _CCAP3H
                                    217 	.globl _CCAP2H
                                    218 	.globl _CCAP1H
                                    219 	.globl _CCAP0H
                                    220 	.globl _CKCON1
                                    221 	.globl _CKCON0
                                    222 	.globl _CKRL
                                    223 	.globl _AUXR1
                                    224 	.globl _AUXR
                                    225 	.globl _TH2
                                    226 	.globl _TL2
                                    227 	.globl _RCAP2H
                                    228 	.globl _RCAP2L
                                    229 	.globl _T2CON
                                    230 	.globl _buffer_size_arr
                                    231 	.globl _command_characters_detected
                                    232 	.globl _total_characters_detected
                                    233 	.globl _storage_character_detected
                                    234 	.globl _ptr_buffer1
                                    235 	.globl _buffer1
                                    236 	.globl _ptr_buffer0
                                    237 	.globl _buffer0
                                    238 	.globl _buffer_size
                                    239 	.globl _new_buffer_arr
                                    240 ;--------------------------------------------------------
                                    241 ; special function registers
                                    242 ;--------------------------------------------------------
                                    243 	.area RSEG    (ABS,DATA)
      000000                        244 	.org 0x0000
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                           000083   296 _DP0H	=	0x0083
                           000082   297 _DP0L	=	0x0082
                           000099   298 _SBUF0	=	0x0099
                           000080   299 _P0	=	0x0080
                           000081   300 _SP	=	0x0081
                           000082   301 _DPL	=	0x0082
                           000083   302 _DPH	=	0x0083
                           000087   303 _PCON	=	0x0087
                           000088   304 _TCON	=	0x0088
                           000089   305 _TMOD	=	0x0089
                           00008A   306 _TL0	=	0x008a
                           00008B   307 _TL1	=	0x008b
                           00008C   308 _TH0	=	0x008c
                           00008D   309 _TH1	=	0x008d
                           000090   310 _P1	=	0x0090
                           000098   311 _SCON	=	0x0098
                           000099   312 _SBUF	=	0x0099
                           0000A0   313 _P2	=	0x00a0
                           0000A8   314 _IE	=	0x00a8
                           0000B0   315 _P3	=	0x00b0
                           0000B8   316 _IP	=	0x00b8
                           0000D0   317 _PSW	=	0x00d0
                           0000E0   318 _ACC	=	0x00e0
                           0000F0   319 _B	=	0x00f0
                                    320 ;--------------------------------------------------------
                                    321 ; special function bits
                                    322 ;--------------------------------------------------------
                                    323 	.area RSEG    (ABS,DATA)
      000000                        324 	.org 0x0000
                           0000AD   325 _ET2	=	0x00ad
                           0000BD   326 _PT2	=	0x00bd
                           0000C8   327 _T2CON_0	=	0x00c8
                           0000C9   328 _T2CON_1	=	0x00c9
                           0000CA   329 _T2CON_2	=	0x00ca
                           0000CB   330 _T2CON_3	=	0x00cb
                           0000CC   331 _T2CON_4	=	0x00cc
                           0000CD   332 _T2CON_5	=	0x00cd
                           0000CE   333 _T2CON_6	=	0x00ce
                           0000CF   334 _T2CON_7	=	0x00cf
                           0000C8   335 _CP_RL2	=	0x00c8
                           0000C9   336 _C_T2	=	0x00c9
                           0000CA   337 _TR2	=	0x00ca
                           0000CB   338 _EXEN2	=	0x00cb
                           0000CC   339 _TCLK	=	0x00cc
                           0000CD   340 _RCLK	=	0x00cd
                           0000CE   341 _EXF2	=	0x00ce
                           0000CF   342 _TF2	=	0x00cf
                           0000DF   343 _CF	=	0x00df
                           0000DE   344 _CR	=	0x00de
                           0000DC   345 _CCF4	=	0x00dc
                           0000DB   346 _CCF3	=	0x00db
                           0000DA   347 _CCF2	=	0x00da
                           0000D9   348 _CCF1	=	0x00d9
                           0000D8   349 _CCF0	=	0x00d8
                           0000AE   350 _EC	=	0x00ae
                           0000BE   351 _PPCL	=	0x00be
                           0000BD   352 _PT2L	=	0x00bd
                           0000BC   353 _PSL	=	0x00bc
                           0000BB   354 _PT1L	=	0x00bb
                           0000BA   355 _PX1L	=	0x00ba
                           0000B9   356 _PT0L	=	0x00b9
                           0000B8   357 _PX0L	=	0x00b8
                           0000C0   358 _P4_0	=	0x00c0
                           0000C1   359 _P4_1	=	0x00c1
                           0000C2   360 _P4_2	=	0x00c2
                           0000C3   361 _P4_3	=	0x00c3
                           0000C4   362 _P4_4	=	0x00c4
                           0000C5   363 _P4_5	=	0x00c5
                           0000C6   364 _P4_6	=	0x00c6
                           0000C7   365 _P4_7	=	0x00c7
                           0000E8   366 _P5_0	=	0x00e8
                           0000E9   367 _P5_1	=	0x00e9
                           0000EA   368 _P5_2	=	0x00ea
                           0000EB   369 _P5_3	=	0x00eb
                           0000EC   370 _P5_4	=	0x00ec
                           0000ED   371 _P5_5	=	0x00ed
                           0000EE   372 _P5_6	=	0x00ee
                           0000EF   373 _P5_7	=	0x00ef
                           0000F0   374 _BREG_F0	=	0x00f0
                           0000F1   375 _BREG_F1	=	0x00f1
                           0000F2   376 _BREG_F2	=	0x00f2
                           0000F3   377 _BREG_F3	=	0x00f3
                           0000F4   378 _BREG_F4	=	0x00f4
                           0000F5   379 _BREG_F5	=	0x00f5
                           0000F6   380 _BREG_F6	=	0x00f6
                           0000F7   381 _BREG_F7	=	0x00f7
                           0000B0   382 _RXD0	=	0x00b0
                           0000B1   383 _TXD0	=	0x00b1
                           000080   384 _P0_0	=	0x0080
                           000081   385 _P0_1	=	0x0081
                           000082   386 _P0_2	=	0x0082
                           000083   387 _P0_3	=	0x0083
                           000084   388 _P0_4	=	0x0084
                           000085   389 _P0_5	=	0x0085
                           000086   390 _P0_6	=	0x0086
                           000087   391 _P0_7	=	0x0087
                           000088   392 _IT0	=	0x0088
                           000089   393 _IE0	=	0x0089
                           00008A   394 _IT1	=	0x008a
                           00008B   395 _IE1	=	0x008b
                           00008C   396 _TR0	=	0x008c
                           00008D   397 _TF0	=	0x008d
                           00008E   398 _TR1	=	0x008e
                           00008F   399 _TF1	=	0x008f
                           000090   400 _P1_0	=	0x0090
                           000091   401 _P1_1	=	0x0091
                           000092   402 _P1_2	=	0x0092
                           000093   403 _P1_3	=	0x0093
                           000094   404 _P1_4	=	0x0094
                           000095   405 _P1_5	=	0x0095
                           000096   406 _P1_6	=	0x0096
                           000097   407 _P1_7	=	0x0097
                           000098   408 _RI	=	0x0098
                           000099   409 _TI	=	0x0099
                           00009A   410 _RB8	=	0x009a
                           00009B   411 _TB8	=	0x009b
                           00009C   412 _REN	=	0x009c
                           00009D   413 _SM2	=	0x009d
                           00009E   414 _SM1	=	0x009e
                           00009F   415 _SM0	=	0x009f
                           0000A0   416 _P2_0	=	0x00a0
                           0000A1   417 _P2_1	=	0x00a1
                           0000A2   418 _P2_2	=	0x00a2
                           0000A3   419 _P2_3	=	0x00a3
                           0000A4   420 _P2_4	=	0x00a4
                           0000A5   421 _P2_5	=	0x00a5
                           0000A6   422 _P2_6	=	0x00a6
                           0000A7   423 _P2_7	=	0x00a7
                           0000A8   424 _EX0	=	0x00a8
                           0000A9   425 _ET0	=	0x00a9
                           0000AA   426 _EX1	=	0x00aa
                           0000AB   427 _ET1	=	0x00ab
                           0000AC   428 _ES	=	0x00ac
                           0000AF   429 _EA	=	0x00af
                           0000B0   430 _P3_0	=	0x00b0
                           0000B1   431 _P3_1	=	0x00b1
                           0000B2   432 _P3_2	=	0x00b2
                           0000B3   433 _P3_3	=	0x00b3
                           0000B4   434 _P3_4	=	0x00b4
                           0000B5   435 _P3_5	=	0x00b5
                           0000B6   436 _P3_6	=	0x00b6
                           0000B7   437 _P3_7	=	0x00b7
                           0000B0   438 _RXD	=	0x00b0
                           0000B1   439 _TXD	=	0x00b1
                           0000B2   440 _INT0	=	0x00b2
                           0000B3   441 _INT1	=	0x00b3
                           0000B4   442 _T0	=	0x00b4
                           0000B5   443 _T1	=	0x00b5
                           0000B6   444 _WR	=	0x00b6
                           0000B7   445 _RD	=	0x00b7
                           0000B8   446 _PX0	=	0x00b8
                           0000B9   447 _PT0	=	0x00b9
                           0000BA   448 _PX1	=	0x00ba
                           0000BB   449 _PT1	=	0x00bb
                           0000BC   450 _PS	=	0x00bc
                           0000D0   451 _P	=	0x00d0
                           0000D1   452 _F1	=	0x00d1
                           0000D2   453 _OV	=	0x00d2
                           0000D3   454 _RS0	=	0x00d3
                           0000D4   455 _RS1	=	0x00d4
                           0000D5   456 _F0	=	0x00d5
                           0000D6   457 _AC	=	0x00d6
                           0000D7   458 _CY	=	0x00d7
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable register banks
                                    461 ;--------------------------------------------------------
                                    462 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        463 	.ds 8
                                    464 ;--------------------------------------------------------
                                    465 ; internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area DSEG    (DATA)
      000013                        468 _main_sloc0_1_0:
      000013                        469 	.ds 2
                                    470 ;--------------------------------------------------------
                                    471 ; overlayable items in internal ram
                                    472 ;--------------------------------------------------------
                                    473 ;--------------------------------------------------------
                                    474 ; Stack segment in internal ram
                                    475 ;--------------------------------------------------------
                                    476 	.area	SSEG
      00002B                        477 __start__stack:
      00002B                        478 	.ds	1
                                    479 
                                    480 ;--------------------------------------------------------
                                    481 ; indirectly addressable internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area ISEG    (DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; absolute internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area IABS    (ABS,DATA)
                                    488 	.area IABS    (ABS,DATA)
                                    489 ;--------------------------------------------------------
                                    490 ; bit data
                                    491 ;--------------------------------------------------------
                                    492 	.area BSEG    (BIT)
                                    493 ;--------------------------------------------------------
                                    494 ; paged external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area PSEG    (PAG,XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XSEG    (XDATA)
      001B8E                        501 _new_buffer_arr::
      001B8E                        502 	.ds 200
      001C56                        503 _main_new_buffer_index_65537_58:
      001C56                        504 	.ds 2
      001C58                        505 _main_free_buffer_count_65537_58:
      001C58                        506 	.ds 2
      001C5A                        507 _main_filled_buffer_count_65537_58:
      001C5A                        508 	.ds 2
      001C5C                        509 _main_storage_character_count_65538_59:
      001C5C                        510 	.ds 2
      001C5E                        511 _main_total_characters_count_65538_59:
      001C5E                        512 	.ds 2
      001C60                        513 _main_buffer0_allocated_65538_59:
      001C60                        514 	.ds 2
                                    515 ;--------------------------------------------------------
                                    516 ; absolute external ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XABS    (ABS,XDATA)
                                    519 ;--------------------------------------------------------
                                    520 ; external initialized ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area XISEG   (XDATA)
      001D92                        523 _buffer_size::
      001D92                        524 	.ds 2
      001D94                        525 _buffer0::
      001D94                        526 	.ds 2
      001D96                        527 _ptr_buffer0::
      001D96                        528 	.ds 2
      001D98                        529 _buffer1::
      001D98                        530 	.ds 2
      001D9A                        531 _ptr_buffer1::
      001D9A                        532 	.ds 2
      001D9C                        533 _storage_character_detected::
      001D9C                        534 	.ds 2
      001D9E                        535 _total_characters_detected::
      001D9E                        536 	.ds 2
      001DA0                        537 _command_characters_detected::
      001DA0                        538 	.ds 2
      001DA2                        539 _buffer_size_arr::
      001DA2                        540 	.ds 600
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT0 (CODE)
                                    543 	.area GSINIT1 (CODE)
                                    544 	.area GSINIT2 (CODE)
                                    545 	.area GSINIT3 (CODE)
                                    546 	.area GSINIT4 (CODE)
                                    547 	.area GSINIT5 (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 	.area GSFINAL (CODE)
                                    550 	.area CSEG    (CODE)
                                    551 ;--------------------------------------------------------
                                    552 ; interrupt vector
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
      002000                        555 __interrupt_vect:
      002000 02 20 06         [24]  556 	ljmp	__sdcc_gsinit_startup
                                    557 ;--------------------------------------------------------
                                    558 ; global & static initialisations
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.globl __sdcc_gsinit_startup
                                    565 	.globl __sdcc_program_startup
                                    566 	.globl __start__stack
                                    567 	.globl __mcs51_genXINIT
                                    568 	.globl __mcs51_genXRAMCLEAR
                                    569 	.globl __mcs51_genRAMCLEAR
                                    570 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  571 	ljmp	__sdcc_program_startup
                                    572 ;--------------------------------------------------------
                                    573 ; Home
                                    574 ;--------------------------------------------------------
                                    575 	.area HOME    (CODE)
                                    576 	.area HOME    (CODE)
      002003                        577 __sdcc_program_startup:
      002003 02 2D 67         [24]  578 	ljmp	_main
                                    579 ;	return from main will return to caller
                                    580 ;--------------------------------------------------------
                                    581 ; code
                                    582 ;--------------------------------------------------------
                                    583 	.area CSEG    (CODE)
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    586 ;------------------------------------------------------------
                                    587 ;	main.c:60: _sdcc_external_startup()
                                    588 ;	-----------------------------------------
                                    589 ;	 function _sdcc_external_startup
                                    590 ;	-----------------------------------------
      002D60                        591 __sdcc_external_startup:
                           000007   592 	ar7 = 0x07
                           000006   593 	ar6 = 0x06
                           000005   594 	ar5 = 0x05
                           000004   595 	ar4 = 0x04
                           000003   596 	ar3 = 0x03
                           000002   597 	ar2 = 0x02
                           000001   598 	ar1 = 0x01
                           000000   599 	ar0 = 0x00
                                    600 ;	main.c:63: AUXR |= (XRS1 | XRS0);
      002D60 43 8E 0C         [24]  601 	orl	_AUXR,#0x0c
                                    602 ;	main.c:66: return 0;
      002D63 90 00 00         [24]  603 	mov	dptr,#0x0000
                                    604 ;	main.c:67: }
      002D66 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'main'
                                    608 ;------------------------------------------------------------
                                    609 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    610 ;i                         Allocated with name '_main_i_65537_58'
                                    611 ;buffer_array_index        Allocated with name '_main_buffer_array_index_65537_58'
                                    612 ;all_buff_cleared          Allocated with name '_main_all_buff_cleared_65537_58'
                                    613 ;new_buffer_index          Allocated with name '_main_new_buffer_index_65537_58'
                                    614 ;free_buffer_count         Allocated with name '_main_free_buffer_count_65537_58'
                                    615 ;filled_buffer_count       Allocated with name '_main_filled_buffer_count_65537_58'
                                    616 ;storage_character_count   Allocated with name '_main_storage_character_count_65538_59'
                                    617 ;total_characters_count    Allocated with name '_main_total_characters_count_65538_59'
                                    618 ;buffer0_allocated         Allocated with name '_main_buffer0_allocated_65538_59'
                                    619 ;buffer0_ptr               Allocated with name '_main_buffer0_ptr_65539_65'
                                    620 ;i                         Allocated with name '_main_i_131075_66'
                                    621 ;ch                        Allocated with name '_main_ch_131076_69'
                                    622 ;------------------------------------------------------------
                                    623 ;	main.c:74: void main(void)
                                    624 ;	-----------------------------------------
                                    625 ;	 function main
                                    626 ;	-----------------------------------------
      002D67                        627 _main:
                                    628 ;	main.c:77: printf_tiny("\033[1;35m|***********************************************|\n\r");
      002D67 74 B9            [12]  629 	mov	a,#___str_0
      002D69 C0 E0            [24]  630 	push	acc
      002D6B 74 4B            [12]  631 	mov	a,#(___str_0 >> 8)
      002D6D C0 E0            [24]  632 	push	acc
      002D6F 12 35 27         [24]  633 	lcall	_printf_tiny
      002D72 15 81            [12]  634 	dec	sp
      002D74 15 81            [12]  635 	dec	sp
                                    636 ;	main.c:78: printf_tiny("|************ \033[1;36mUSER INTERFACE \033[1;35m*******************|\n\r");
      002D76 74 F4            [12]  637 	mov	a,#___str_1
      002D78 C0 E0            [24]  638 	push	acc
      002D7A 74 4B            [12]  639 	mov	a,#(___str_1 >> 8)
      002D7C C0 E0            [24]  640 	push	acc
      002D7E 12 35 27         [24]  641 	lcall	_printf_tiny
      002D81 15 81            [12]  642 	dec	sp
      002D83 15 81            [12]  643 	dec	sp
                                    644 ;	main.c:79: printf_tiny("|  Choose a character from the below options    |\n\r");
      002D85 74 36            [12]  645 	mov	a,#___str_2
      002D87 C0 E0            [24]  646 	push	acc
      002D89 74 4C            [12]  647 	mov	a,#(___str_2 >> 8)
      002D8B C0 E0            [24]  648 	push	acc
      002D8D 12 35 27         [24]  649 	lcall	_printf_tiny
      002D90 15 81            [12]  650 	dec	sp
      002D92 15 81            [12]  651 	dec	sp
                                    652 ;	main.c:80: printf_tiny("|  \033[1;35ma-z\033[1;35m  | Character to store in the buffer      |\n\r");
      002D94 74 6A            [12]  653 	mov	a,#___str_3
      002D96 C0 E0            [24]  654 	push	acc
      002D98 74 4C            [12]  655 	mov	a,#(___str_3 >> 8)
      002D9A C0 E0            [24]  656 	push	acc
      002D9C 12 35 27         [24]  657 	lcall	_printf_tiny
      002D9F 15 81            [12]  658 	dec	sp
      002DA1 15 81            [12]  659 	dec	sp
                                    660 ;	main.c:81: printf_tiny("|  \033[1;35m+\033[1;35m    | Allocate a new buffer                 |\n\r");
      002DA3 74 AC            [12]  661 	mov	a,#___str_4
      002DA5 C0 E0            [24]  662 	push	acc
      002DA7 74 4C            [12]  663 	mov	a,#(___str_4 >> 8)
      002DA9 C0 E0            [24]  664 	push	acc
      002DAB 12 35 27         [24]  665 	lcall	_printf_tiny
      002DAE 15 81            [12]  666 	dec	sp
      002DB0 15 81            [12]  667 	dec	sp
                                    668 ;	main.c:82: printf_tiny("|  \033[1;35m-\033[1;35m    | Delete a buffer                       |\n\r");
      002DB2 74 EE            [12]  669 	mov	a,#___str_5
      002DB4 C0 E0            [24]  670 	push	acc
      002DB6 74 4C            [12]  671 	mov	a,#(___str_5 >> 8)
      002DB8 C0 E0            [24]  672 	push	acc
      002DBA 12 35 27         [24]  673 	lcall	_printf_tiny
      002DBD 15 81            [12]  674 	dec	sp
      002DBF 15 81            [12]  675 	dec	sp
                                    676 ;	main.c:83: printf_tiny("|  \033[1;35m?\033[1;35m    | Display the heap report               |\n\r");
      002DC1 74 30            [12]  677 	mov	a,#___str_6
      002DC3 C0 E0            [24]  678 	push	acc
      002DC5 74 4D            [12]  679 	mov	a,#(___str_6 >> 8)
      002DC7 C0 E0            [24]  680 	push	acc
      002DC9 12 35 27         [24]  681 	lcall	_printf_tiny
      002DCC 15 81            [12]  682 	dec	sp
      002DCE 15 81            [12]  683 	dec	sp
                                    684 ;	main.c:84: printf_tiny("|  \033[1;35m=\033[1;35m    | Display contents of Buffer_0          |\n\r");
      002DD0 74 72            [12]  685 	mov	a,#___str_7
      002DD2 C0 E0            [24]  686 	push	acc
      002DD4 74 4D            [12]  687 	mov	a,#(___str_7 >> 8)
      002DD6 C0 E0            [24]  688 	push	acc
      002DD8 12 35 27         [24]  689 	lcall	_printf_tiny
      002DDB 15 81            [12]  690 	dec	sp
      002DDD 15 81            [12]  691 	dec	sp
                                    692 ;	main.c:85: printf_tiny("|  \033[1;35m@\033[1;35m    | Free all the buffers                  |\n\r");
      002DDF 74 B4            [12]  693 	mov	a,#___str_8
      002DE1 C0 E0            [24]  694 	push	acc
      002DE3 74 4D            [12]  695 	mov	a,#(___str_8 >> 8)
      002DE5 C0 E0            [24]  696 	push	acc
      002DE7 12 35 27         [24]  697 	lcall	_printf_tiny
      002DEA 15 81            [12]  698 	dec	sp
      002DEC 15 81            [12]  699 	dec	sp
                                    700 ;	main.c:86: printf_tiny("\033[1;35m|***********************************************|\n\r");
      002DEE 74 B9            [12]  701 	mov	a,#___str_0
      002DF0 C0 E0            [24]  702 	push	acc
      002DF2 74 4B            [12]  703 	mov	a,#(___str_0 >> 8)
      002DF4 C0 E0            [24]  704 	push	acc
      002DF6 12 35 27         [24]  705 	lcall	_printf_tiny
      002DF9 15 81            [12]  706 	dec	sp
      002DFB 15 81            [12]  707 	dec	sp
                                    708 ;	main.c:87: printf_tiny("|***********************************************|\n\r\n\r");
      002DFD 74 F6            [12]  709 	mov	a,#___str_9
      002DFF C0 E0            [24]  710 	push	acc
      002E01 74 4D            [12]  711 	mov	a,#(___str_9 >> 8)
      002E03 C0 E0            [24]  712 	push	acc
      002E05 12 35 27         [24]  713 	lcall	_printf_tiny
      002E08 15 81            [12]  714 	dec	sp
      002E0A 15 81            [12]  715 	dec	sp
                                    716 ;	main.c:89: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002E0C 74 2C            [12]  717 	mov	a,#___str_10
      002E0E C0 E0            [24]  718 	push	acc
      002E10 74 4E            [12]  719 	mov	a,#(___str_10 >> 8)
      002E12 C0 E0            [24]  720 	push	acc
      002E14 12 35 27         [24]  721 	lcall	_printf_tiny
      002E17 15 81            [12]  722 	dec	sp
      002E19 15 81            [12]  723 	dec	sp
                                    724 ;	main.c:90: printf_tiny("|  Choose a size for buffer 0 and buffer 1      |\n\r");
      002E1B 74 67            [12]  725 	mov	a,#___str_11
      002E1D C0 E0            [24]  726 	push	acc
      002E1F 74 4E            [12]  727 	mov	a,#(___str_11 >> 8)
      002E21 C0 E0            [24]  728 	push	acc
      002E23 12 35 27         [24]  729 	lcall	_printf_tiny
      002E26 15 81            [12]  730 	dec	sp
      002E28 15 81            [12]  731 	dec	sp
                                    732 ;	main.c:91: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002E2A 74 2C            [12]  733 	mov	a,#___str_10
      002E2C C0 E0            [24]  734 	push	acc
      002E2E 74 4E            [12]  735 	mov	a,#(___str_10 >> 8)
      002E30 C0 E0            [24]  736 	push	acc
      002E32 12 35 27         [24]  737 	lcall	_printf_tiny
      002E35 15 81            [12]  738 	dec	sp
      002E37 15 81            [12]  739 	dec	sp
                                    740 ;	main.c:97: __xdata int new_buffer_index = 2;
      002E39 90 1C 56         [24]  741 	mov	dptr,#_main_new_buffer_index_65537_58
      002E3C 74 02            [12]  742 	mov	a,#0x02
      002E3E F0               [24]  743 	movx	@dptr,a
      002E3F E4               [12]  744 	clr	a
      002E40 A3               [24]  745 	inc	dptr
      002E41 F0               [24]  746 	movx	@dptr,a
                                    747 ;	main.c:101: HERE:
      002E42                        748 00101$:
                                    749 ;	main.c:106: __xdata int storage_character_count = 0;
      002E42 90 1C 5C         [24]  750 	mov	dptr,#_main_storage_character_count_65538_59
      002E45 E4               [12]  751 	clr	a
      002E46 F0               [24]  752 	movx	@dptr,a
      002E47 A3               [24]  753 	inc	dptr
      002E48 F0               [24]  754 	movx	@dptr,a
                                    755 ;	main.c:107: __xdata int total_characters_count = 0;
      002E49 90 1C 5E         [24]  756 	mov	dptr,#_main_total_characters_count_65538_59
      002E4C F0               [24]  757 	movx	@dptr,a
      002E4D A3               [24]  758 	inc	dptr
      002E4E F0               [24]  759 	movx	@dptr,a
                                    760 ;	main.c:110: __xdata int buffer0_allocated = 0;
      002E4F 90 1C 60         [24]  761 	mov	dptr,#_main_buffer0_allocated_65538_59
      002E52 F0               [24]  762 	movx	@dptr,a
      002E53 A3               [24]  763 	inc	dptr
      002E54 F0               [24]  764 	movx	@dptr,a
                                    765 ;	main.c:111: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002E55 74 2C            [12]  766 	mov	a,#___str_10
      002E57 C0 E0            [24]  767 	push	acc
      002E59 74 4E            [12]  768 	mov	a,#(___str_10 >> 8)
      002E5B C0 E0            [24]  769 	push	acc
      002E5D 12 35 27         [24]  770 	lcall	_printf_tiny
      002E60 15 81            [12]  771 	dec	sp
      002E62 15 81            [12]  772 	dec	sp
                                    773 ;	main.c:112: printf_tiny("|  Buffer 0 and Buffer 1 Allocation Processing  |\n\r");
      002E64 74 9B            [12]  774 	mov	a,#___str_12
      002E66 C0 E0            [24]  775 	push	acc
      002E68 74 4E            [12]  776 	mov	a,#(___str_12 >> 8)
      002E6A C0 E0            [24]  777 	push	acc
      002E6C 12 35 27         [24]  778 	lcall	_printf_tiny
      002E6F 15 81            [12]  779 	dec	sp
      002E71 15 81            [12]  780 	dec	sp
                                    781 ;	main.c:113: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002E73 74 2C            [12]  782 	mov	a,#___str_10
      002E75 C0 E0            [24]  783 	push	acc
      002E77 74 4E            [12]  784 	mov	a,#(___str_10 >> 8)
      002E79 C0 E0            [24]  785 	push	acc
      002E7B 12 35 27         [24]  786 	lcall	_printf_tiny
      002E7E 15 81            [12]  787 	dec	sp
      002E80 15 81            [12]  788 	dec	sp
                                    789 ;	main.c:114: do {
      002E82                        790 00109$:
                                    791 ;	main.c:115: buffer_size = Buffer_Size_Error_Correction();
      002E82 12 20 62         [24]  792 	lcall	_Buffer_Size_Error_Correction
      002E85 AE 82            [24]  793 	mov	r6,dpl
      002E87 AF 83            [24]  794 	mov	r7,dph
      002E89 90 1D 92         [24]  795 	mov	dptr,#_buffer_size
      002E8C EE               [12]  796 	mov	a,r6
      002E8D F0               [24]  797 	movx	@dptr,a
      002E8E EF               [12]  798 	mov	a,r7
      002E8F A3               [24]  799 	inc	dptr
      002E90 F0               [24]  800 	movx	@dptr,a
                                    801 ;	main.c:116: if ((buffer0 = (__xdata char *)malloc(buffer_size)) == 0)
      002E91 8E 82            [24]  802 	mov	dpl,r6
      002E93 8F 83            [24]  803 	mov	dph,r7
      002E95 12 36 6C         [24]  804 	lcall	_malloc
      002E98 AE 82            [24]  805 	mov	r6,dpl
      002E9A AF 83            [24]  806 	mov	r7,dph
      002E9C 90 1D 94         [24]  807 	mov	dptr,#_buffer0
      002E9F EE               [12]  808 	mov	a,r6
      002EA0 F0               [24]  809 	movx	@dptr,a
      002EA1 EF               [12]  810 	mov	a,r7
      002EA2 A3               [24]  811 	inc	dptr
      002EA3 F0               [24]  812 	movx	@dptr,a
      002EA4 EE               [12]  813 	mov	a,r6
      002EA5 4F               [12]  814 	orl	a,r7
      002EA6 70 24            [24]  815 	jnz	00106$
                                    816 ;	main.c:118: printf_tiny("\033[1;33mInvalid Malloc: Malloc on buffer0 failed!!\n\r");
      002EA8 74 CF            [12]  817 	mov	a,#___str_13
      002EAA C0 E0            [24]  818 	push	acc
      002EAC 74 4E            [12]  819 	mov	a,#(___str_13 >> 8)
      002EAE C0 E0            [24]  820 	push	acc
      002EB0 12 35 27         [24]  821 	lcall	_printf_tiny
      002EB3 15 81            [12]  822 	dec	sp
      002EB5 15 81            [12]  823 	dec	sp
                                    824 ;	main.c:119: free(buffer0);
      002EB7 90 1D 94         [24]  825 	mov	dptr,#_buffer0
      002EBA E0               [24]  826 	movx	a,@dptr
      002EBB FE               [12]  827 	mov	r6,a
      002EBC A3               [24]  828 	inc	dptr
      002EBD E0               [24]  829 	movx	a,@dptr
      002EBE FF               [12]  830 	mov	r7,a
      002EBF 7D 00            [12]  831 	mov	r5,#0x00
      002EC1 8E 82            [24]  832 	mov	dpl,r6
      002EC3 8F 83            [24]  833 	mov	dph,r7
      002EC5 8D F0            [24]  834 	mov	b,r5
      002EC7 12 32 91         [24]  835 	lcall	_free
      002ECA 80 71            [24]  836 	sjmp	00110$
      002ECC                        837 00106$:
                                    838 ;	main.c:123: printf_tiny("\033[1;0mMalloc Successful : Buffer0 allocated\n\r");
      002ECC 74 03            [12]  839 	mov	a,#___str_14
      002ECE C0 E0            [24]  840 	push	acc
      002ED0 74 4F            [12]  841 	mov	a,#(___str_14 >> 8)
      002ED2 C0 E0            [24]  842 	push	acc
      002ED4 12 35 27         [24]  843 	lcall	_printf_tiny
      002ED7 15 81            [12]  844 	dec	sp
      002ED9 15 81            [12]  845 	dec	sp
                                    846 ;	main.c:124: buffer0_allocated = 1;
      002EDB 90 1C 60         [24]  847 	mov	dptr,#_main_buffer0_allocated_65538_59
      002EDE 74 01            [12]  848 	mov	a,#0x01
      002EE0 F0               [24]  849 	movx	@dptr,a
      002EE1 E4               [12]  850 	clr	a
      002EE2 A3               [24]  851 	inc	dptr
      002EE3 F0               [24]  852 	movx	@dptr,a
                                    853 ;	main.c:126: if ((buffer1 = (__xdata char *)malloc(buffer_size)) == 0)
      002EE4 90 1D 92         [24]  854 	mov	dptr,#_buffer_size
      002EE7 E0               [24]  855 	movx	a,@dptr
      002EE8 FE               [12]  856 	mov	r6,a
      002EE9 A3               [24]  857 	inc	dptr
      002EEA E0               [24]  858 	movx	a,@dptr
      002EEB FF               [12]  859 	mov	r7,a
      002EEC 8E 82            [24]  860 	mov	dpl,r6
      002EEE 8F 83            [24]  861 	mov	dph,r7
      002EF0 12 36 6C         [24]  862 	lcall	_malloc
      002EF3 AE 82            [24]  863 	mov	r6,dpl
      002EF5 AF 83            [24]  864 	mov	r7,dph
      002EF7 90 1D 98         [24]  865 	mov	dptr,#_buffer1
      002EFA EE               [12]  866 	mov	a,r6
      002EFB F0               [24]  867 	movx	@dptr,a
      002EFC EF               [12]  868 	mov	a,r7
      002EFD A3               [24]  869 	inc	dptr
      002EFE F0               [24]  870 	movx	@dptr,a
      002EFF EE               [12]  871 	mov	a,r6
      002F00 4F               [12]  872 	orl	a,r7
      002F01 70 2B            [24]  873 	jnz	00103$
                                    874 ;	main.c:128: printf_tiny("\033[1;31mInvalid Malloc: Malloc on buffer1 failed!!\n\r");
      002F03 74 31            [12]  875 	mov	a,#___str_15
      002F05 C0 E0            [24]  876 	push	acc
      002F07 74 4F            [12]  877 	mov	a,#(___str_15 >> 8)
      002F09 C0 E0            [24]  878 	push	acc
      002F0B 12 35 27         [24]  879 	lcall	_printf_tiny
      002F0E 15 81            [12]  880 	dec	sp
      002F10 15 81            [12]  881 	dec	sp
                                    882 ;	main.c:129: free(buffer0);
      002F12 90 1D 94         [24]  883 	mov	dptr,#_buffer0
      002F15 E0               [24]  884 	movx	a,@dptr
      002F16 FE               [12]  885 	mov	r6,a
      002F17 A3               [24]  886 	inc	dptr
      002F18 E0               [24]  887 	movx	a,@dptr
      002F19 FF               [12]  888 	mov	r7,a
      002F1A 7D 00            [12]  889 	mov	r5,#0x00
      002F1C 8E 82            [24]  890 	mov	dpl,r6
      002F1E 8F 83            [24]  891 	mov	dph,r7
      002F20 8D F0            [24]  892 	mov	b,r5
      002F22 12 32 91         [24]  893 	lcall	_free
                                    894 ;	main.c:130: buffer0_allocated = 0;
      002F25 90 1C 60         [24]  895 	mov	dptr,#_main_buffer0_allocated_65538_59
      002F28 E4               [12]  896 	clr	a
      002F29 F0               [24]  897 	movx	@dptr,a
      002F2A A3               [24]  898 	inc	dptr
      002F2B F0               [24]  899 	movx	@dptr,a
      002F2C 80 0F            [24]  900 	sjmp	00110$
      002F2E                        901 00103$:
                                    902 ;	main.c:134: printf_tiny("\033[1;0mMalloc Successful : Buffer1 allocated\n\r");
      002F2E 74 65            [12]  903 	mov	a,#___str_16
      002F30 C0 E0            [24]  904 	push	acc
      002F32 74 4F            [12]  905 	mov	a,#(___str_16 >> 8)
      002F34 C0 E0            [24]  906 	push	acc
      002F36 12 35 27         [24]  907 	lcall	_printf_tiny
      002F39 15 81            [12]  908 	dec	sp
      002F3B 15 81            [12]  909 	dec	sp
      002F3D                        910 00110$:
                                    911 ;	main.c:137: } while (!buffer0_allocated || (buffer1 == 0));
      002F3D 90 1C 60         [24]  912 	mov	dptr,#_main_buffer0_allocated_65538_59
      002F40 E0               [24]  913 	movx	a,@dptr
      002F41 F5 F0            [12]  914 	mov	b,a
      002F43 A3               [24]  915 	inc	dptr
      002F44 E0               [24]  916 	movx	a,@dptr
      002F45 45 F0            [12]  917 	orl	a,b
      002F47 70 03            [24]  918 	jnz	00209$
      002F49 02 2E 82         [24]  919 	ljmp	00109$
      002F4C                        920 00209$:
      002F4C 90 1D 98         [24]  921 	mov	dptr,#_buffer1
      002F4F E0               [24]  922 	movx	a,@dptr
      002F50 F5 F0            [12]  923 	mov	b,a
      002F52 A3               [24]  924 	inc	dptr
      002F53 E0               [24]  925 	movx	a,@dptr
      002F54 45 F0            [12]  926 	orl	a,b
      002F56 70 03            [24]  927 	jnz	00210$
      002F58 02 2E 82         [24]  928 	ljmp	00109$
      002F5B                        929 00210$:
                                    930 ;	main.c:139: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002F5B 74 2C            [12]  931 	mov	a,#___str_10
      002F5D C0 E0            [24]  932 	push	acc
      002F5F 74 4E            [12]  933 	mov	a,#(___str_10 >> 8)
      002F61 C0 E0            [24]  934 	push	acc
      002F63 12 35 27         [24]  935 	lcall	_printf_tiny
      002F66 15 81            [12]  936 	dec	sp
      002F68 15 81            [12]  937 	dec	sp
                                    938 ;	main.c:140: printf_tiny("|  Buffer0 and Buffer 1 Allocation Sucsessful   |\n\r");
      002F6A 74 93            [12]  939 	mov	a,#___str_17
      002F6C C0 E0            [24]  940 	push	acc
      002F6E 74 4F            [12]  941 	mov	a,#(___str_17 >> 8)
      002F70 C0 E0            [24]  942 	push	acc
      002F72 12 35 27         [24]  943 	lcall	_printf_tiny
      002F75 15 81            [12]  944 	dec	sp
      002F77 15 81            [12]  945 	dec	sp
                                    946 ;	main.c:141: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002F79 74 2C            [12]  947 	mov	a,#___str_10
      002F7B C0 E0            [24]  948 	push	acc
      002F7D 74 4E            [12]  949 	mov	a,#(___str_10 >> 8)
      002F7F C0 E0            [24]  950 	push	acc
      002F81 12 35 27         [24]  951 	lcall	_printf_tiny
      002F84 15 81            [12]  952 	dec	sp
      002F86 15 81            [12]  953 	dec	sp
                                    954 ;	main.c:144: char * buffer0_ptr = buffer0;
      002F88 90 1D 94         [24]  955 	mov	dptr,#_buffer0
      002F8B E0               [24]  956 	movx	a,@dptr
      002F8C FE               [12]  957 	mov	r6,a
      002F8D A3               [24]  958 	inc	dptr
      002F8E E0               [24]  959 	movx	a,@dptr
      002F8F FD               [12]  960 	mov	r5,a
      002F90 7F 00            [12]  961 	mov	r7,#0x00
                                    962 ;	main.c:145: for(int i=0;i< buffer_size;i++)
      002F92 7B 00            [12]  963 	mov	r3,#0x00
      002F94 7C 00            [12]  964 	mov	r4,#0x00
      002F96                        965 00133$:
      002F96 90 1D 92         [24]  966 	mov	dptr,#_buffer_size
      002F99 E0               [24]  967 	movx	a,@dptr
      002F9A F9               [12]  968 	mov	r1,a
      002F9B A3               [24]  969 	inc	dptr
      002F9C E0               [24]  970 	movx	a,@dptr
      002F9D FA               [12]  971 	mov	r2,a
      002F9E C3               [12]  972 	clr	c
      002F9F EB               [12]  973 	mov	a,r3
      002FA0 99               [12]  974 	subb	a,r1
      002FA1 EC               [12]  975 	mov	a,r4
      002FA2 64 80            [12]  976 	xrl	a,#0x80
      002FA4 8A F0            [24]  977 	mov	b,r2
      002FA6 63 F0 80         [24]  978 	xrl	b,#0x80
      002FA9 95 F0            [12]  979 	subb	a,b
      002FAB 50 1A            [24]  980 	jnc	00112$
                                    981 ;	main.c:147: buffer0_ptr[i] = 'ÿ';
      002FAD EB               [12]  982 	mov	a,r3
      002FAE 2E               [12]  983 	add	a,r6
      002FAF F8               [12]  984 	mov	r0,a
      002FB0 EC               [12]  985 	mov	a,r4
      002FB1 3D               [12]  986 	addc	a,r5
      002FB2 F9               [12]  987 	mov	r1,a
      002FB3 8F 02            [24]  988 	mov	ar2,r7
      002FB5 88 82            [24]  989 	mov	dpl,r0
      002FB7 89 83            [24]  990 	mov	dph,r1
      002FB9 8A F0            [24]  991 	mov	b,r2
      002FBB 74 FF            [12]  992 	mov	a,#0xff
      002FBD 12 35 0C         [24]  993 	lcall	__gptrput
                                    994 ;	main.c:145: for(int i=0;i< buffer_size;i++)
      002FC0 0B               [12]  995 	inc	r3
      002FC1 BB 00 D2         [24]  996 	cjne	r3,#0x00,00133$
      002FC4 0C               [12]  997 	inc	r4
      002FC5 80 CF            [24]  998 	sjmp	00133$
      002FC7                        999 00112$:
                                   1000 ;	main.c:150: new_buffer_arr[0] = buffer0;
      002FC7 90 1D 94         [24] 1001 	mov	dptr,#_buffer0
      002FCA E0               [24] 1002 	movx	a,@dptr
      002FCB FE               [12] 1003 	mov	r6,a
      002FCC A3               [24] 1004 	inc	dptr
      002FCD E0               [24] 1005 	movx	a,@dptr
      002FCE FF               [12] 1006 	mov	r7,a
      002FCF 90 1B 8E         [24] 1007 	mov	dptr,#_new_buffer_arr
      002FD2 EE               [12] 1008 	mov	a,r6
      002FD3 F0               [24] 1009 	movx	@dptr,a
      002FD4 EF               [12] 1010 	mov	a,r7
      002FD5 A3               [24] 1011 	inc	dptr
      002FD6 F0               [24] 1012 	movx	@dptr,a
                                   1013 ;	main.c:151: new_buffer_arr[1] = buffer1;
      002FD7 90 1D 98         [24] 1014 	mov	dptr,#_buffer1
      002FDA E0               [24] 1015 	movx	a,@dptr
      002FDB FE               [12] 1016 	mov	r6,a
      002FDC A3               [24] 1017 	inc	dptr
      002FDD E0               [24] 1018 	movx	a,@dptr
      002FDE FF               [12] 1019 	mov	r7,a
      002FDF 90 1B 90         [24] 1020 	mov	dptr,#(_new_buffer_arr + 0x0002)
      002FE2 EE               [12] 1021 	mov	a,r6
      002FE3 F0               [24] 1022 	movx	@dptr,a
      002FE4 EF               [12] 1023 	mov	a,r7
      002FE5 A3               [24] 1024 	inc	dptr
      002FE6 F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	main.c:152: buffer_size_arr[0] = buffer_size ;
      002FE7 90 1D 92         [24] 1027 	mov	dptr,#_buffer_size
      002FEA E0               [24] 1028 	movx	a,@dptr
      002FEB FE               [12] 1029 	mov	r6,a
      002FEC A3               [24] 1030 	inc	dptr
      002FED E0               [24] 1031 	movx	a,@dptr
      002FEE FF               [12] 1032 	mov	r7,a
      002FEF 90 1D A2         [24] 1033 	mov	dptr,#_buffer_size_arr
      002FF2 EE               [12] 1034 	mov	a,r6
      002FF3 F0               [24] 1035 	movx	@dptr,a
      002FF4 EF               [12] 1036 	mov	a,r7
      002FF5 A3               [24] 1037 	inc	dptr
      002FF6 F0               [24] 1038 	movx	@dptr,a
                                   1039 ;	main.c:153: buffer_size_arr[1] = buffer_size ;
      002FF7 90 1D 92         [24] 1040 	mov	dptr,#_buffer_size
      002FFA E0               [24] 1041 	movx	a,@dptr
      002FFB FE               [12] 1042 	mov	r6,a
      002FFC A3               [24] 1043 	inc	dptr
      002FFD E0               [24] 1044 	movx	a,@dptr
      002FFE FF               [12] 1045 	mov	r7,a
      002FFF 90 1D A4         [24] 1046 	mov	dptr,#(_buffer_size_arr + 0x0002)
      003002 EE               [12] 1047 	mov	a,r6
      003003 F0               [24] 1048 	movx	@dptr,a
      003004 EF               [12] 1049 	mov	a,r7
      003005 A3               [24] 1050 	inc	dptr
      003006 F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	main.c:155: free_buffer_count = 0;
      003007 90 1C 58         [24] 1053 	mov	dptr,#_main_free_buffer_count_65537_58
      00300A E4               [12] 1054 	clr	a
      00300B F0               [24] 1055 	movx	@dptr,a
      00300C A3               [24] 1056 	inc	dptr
      00300D F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	main.c:156: filled_buffer_count = 2;
      00300E 90 1C 5A         [24] 1059 	mov	dptr,#_main_filled_buffer_count_65537_58
      003011 74 02            [12] 1060 	mov	a,#0x02
      003013 F0               [24] 1061 	movx	@dptr,a
      003014 E4               [12] 1062 	clr	a
      003015 A3               [24] 1063 	inc	dptr
      003016 F0               [24] 1064 	movx	@dptr,a
                                   1065 ;	main.c:159: while(1)
      003017 7E 00            [12] 1066 	mov	r6,#0x00
      003019 7F 00            [12] 1067 	mov	r7,#0x00
      00301B                       1068 00130$:
                                   1069 ;	main.c:161: printf_tiny("\033[1;33m|***********************************************|\n\r");
      00301B C0 07            [24] 1070 	push	ar7
      00301D C0 06            [24] 1071 	push	ar6
      00301F 74 2C            [12] 1072 	mov	a,#___str_10
      003021 C0 E0            [24] 1073 	push	acc
      003023 74 4E            [12] 1074 	mov	a,#(___str_10 >> 8)
      003025 C0 E0            [24] 1075 	push	acc
      003027 12 35 27         [24] 1076 	lcall	_printf_tiny
      00302A 15 81            [12] 1077 	dec	sp
      00302C 15 81            [12] 1078 	dec	sp
                                   1079 ;	main.c:162: printf_tiny("|             Fetching Character                |\n\r");
      00302E 74 C7            [12] 1080 	mov	a,#___str_18
      003030 C0 E0            [24] 1081 	push	acc
      003032 74 4F            [12] 1082 	mov	a,#(___str_18 >> 8)
      003034 C0 E0            [24] 1083 	push	acc
      003036 12 35 27         [24] 1084 	lcall	_printf_tiny
      003039 15 81            [12] 1085 	dec	sp
      00303B 15 81            [12] 1086 	dec	sp
                                   1087 ;	main.c:163: printf_tiny("\033[1;33m|***********************************************|\n\r");
      00303D 74 2C            [12] 1088 	mov	a,#___str_10
      00303F C0 E0            [24] 1089 	push	acc
      003041 74 4E            [12] 1090 	mov	a,#(___str_10 >> 8)
      003043 C0 E0            [24] 1091 	push	acc
      003045 12 35 27         [24] 1092 	lcall	_printf_tiny
      003048 15 81            [12] 1093 	dec	sp
      00304A 15 81            [12] 1094 	dec	sp
                                   1095 ;	main.c:165: char ch = getchar();
      00304C 12 31 B9         [24] 1096 	lcall	_getchar
      00304F AC 82            [24] 1097 	mov	r4,dpl
                                   1098 ;	main.c:166: putchar(ch);
      003051 8C 03            [24] 1099 	mov	ar3,r4
      003053 7D 00            [12] 1100 	mov	r5,#0x00
      003055 8B 82            [24] 1101 	mov	dpl,r3
      003057 8D 83            [24] 1102 	mov	dph,r5
      003059 C0 05            [24] 1103 	push	ar5
      00305B C0 04            [24] 1104 	push	ar4
      00305D C0 03            [24] 1105 	push	ar3
      00305F 12 31 C7         [24] 1106 	lcall	_putchar
                                   1107 ;	main.c:167: putchar(' ');
      003062 90 00 20         [24] 1108 	mov	dptr,#0x0020
      003065 12 31 C7         [24] 1109 	lcall	_putchar
                                   1110 ;	main.c:168: printf("\033[1;0m\r\n");
      003068 74 FB            [12] 1111 	mov	a,#___str_19
      00306A C0 E0            [24] 1112 	push	acc
      00306C 74 4F            [12] 1113 	mov	a,#(___str_19 >> 8)
      00306E C0 E0            [24] 1114 	push	acc
      003070 74 80            [12] 1115 	mov	a,#0x80
      003072 C0 E0            [24] 1116 	push	acc
      003074 12 39 57         [24] 1117 	lcall	_printf
      003077 15 81            [12] 1118 	dec	sp
      003079 15 81            [12] 1119 	dec	sp
      00307B 15 81            [12] 1120 	dec	sp
      00307D D0 03            [24] 1121 	pop	ar3
      00307F D0 04            [24] 1122 	pop	ar4
      003081 D0 05            [24] 1123 	pop	ar5
      003083 D0 06            [24] 1124 	pop	ar6
      003085 D0 07            [24] 1125 	pop	ar7
                                   1126 ;	main.c:171: if (ch >= 'a' && ch <= 'z') {
      003087 BC 61 00         [24] 1127 	cjne	r4,#0x61,00213$
      00308A                       1128 00213$:
      00308A 40 68            [24] 1129 	jc	00124$
      00308C EC               [12] 1130 	mov	a,r4
      00308D 24 85            [12] 1131 	add	a,#0xff - 0x7a
      00308F 40 63            [24] 1132 	jc	00124$
                                   1133 ;	main.c:172: if (i < buffer_size) {
      003091 90 1D 92         [24] 1134 	mov	dptr,#_buffer_size
      003094 E0               [24] 1135 	movx	a,@dptr
      003095 F9               [12] 1136 	mov	r1,a
      003096 A3               [24] 1137 	inc	dptr
      003097 E0               [24] 1138 	movx	a,@dptr
      003098 FA               [12] 1139 	mov	r2,a
      003099 C3               [12] 1140 	clr	c
      00309A EE               [12] 1141 	mov	a,r6
      00309B 99               [12] 1142 	subb	a,r1
      00309C EF               [12] 1143 	mov	a,r7
      00309D 64 80            [12] 1144 	xrl	a,#0x80
      00309F 8A F0            [24] 1145 	mov	b,r2
      0030A1 63 F0 80         [24] 1146 	xrl	b,#0x80
      0030A4 95 F0            [12] 1147 	subb	a,b
      0030A6 50 1F            [24] 1148 	jnc	00114$
                                   1149 ;	main.c:173: buffer0[i++] = ch;
      0030A8 8E 13            [24] 1150 	mov	_main_sloc0_1_0,r6
      0030AA 8F 14            [24] 1151 	mov	(_main_sloc0_1_0 + 1),r7
      0030AC 0E               [12] 1152 	inc	r6
      0030AD BE 00 01         [24] 1153 	cjne	r6,#0x00,00217$
      0030B0 0F               [12] 1154 	inc	r7
      0030B1                       1155 00217$:
      0030B1 90 1D 94         [24] 1156 	mov	dptr,#_buffer0
      0030B4 E0               [24] 1157 	movx	a,@dptr
      0030B5 F8               [12] 1158 	mov	r0,a
      0030B6 A3               [24] 1159 	inc	dptr
      0030B7 E0               [24] 1160 	movx	a,@dptr
      0030B8 FA               [12] 1161 	mov	r2,a
      0030B9 E5 13            [12] 1162 	mov	a,_main_sloc0_1_0
      0030BB 28               [12] 1163 	add	a,r0
      0030BC F5 82            [12] 1164 	mov	dpl,a
      0030BE E5 14            [12] 1165 	mov	a,(_main_sloc0_1_0 + 1)
      0030C0 3A               [12] 1166 	addc	a,r2
      0030C1 F5 83            [12] 1167 	mov	dph,a
      0030C3 EC               [12] 1168 	mov	a,r4
      0030C4 F0               [24] 1169 	movx	@dptr,a
      0030C5 80 13            [24] 1170 	sjmp	00115$
      0030C7                       1171 00114$:
                                   1172 ;	main.c:176: putchar(ch);
      0030C7 8B 82            [24] 1173 	mov	dpl,r3
      0030C9 8D 83            [24] 1174 	mov	dph,r5
      0030CB C0 07            [24] 1175 	push	ar7
      0030CD C0 06            [24] 1176 	push	ar6
      0030CF C0 04            [24] 1177 	push	ar4
      0030D1 12 31 C7         [24] 1178 	lcall	_putchar
      0030D4 D0 04            [24] 1179 	pop	ar4
      0030D6 D0 06            [24] 1180 	pop	ar6
      0030D8 D0 07            [24] 1181 	pop	ar7
      0030DA                       1182 00115$:
                                   1183 ;	main.c:178: storage_character_count++;
      0030DA 90 1C 5C         [24] 1184 	mov	dptr,#_main_storage_character_count_65538_59
      0030DD E0               [24] 1185 	movx	a,@dptr
      0030DE 24 01            [12] 1186 	add	a,#0x01
      0030E0 F0               [24] 1187 	movx	@dptr,a
      0030E1 A3               [24] 1188 	inc	dptr
      0030E2 E0               [24] 1189 	movx	a,@dptr
      0030E3 34 00            [12] 1190 	addc	a,#0x00
      0030E5 F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	main.c:179: total_characters_count++;
      0030E6 90 1C 5E         [24] 1193 	mov	dptr,#_main_total_characters_count_65538_59
      0030E9 E0               [24] 1194 	movx	a,@dptr
      0030EA 24 01            [12] 1195 	add	a,#0x01
      0030EC F0               [24] 1196 	movx	@dptr,a
      0030ED A3               [24] 1197 	inc	dptr
      0030EE E0               [24] 1198 	movx	a,@dptr
      0030EF 34 00            [12] 1199 	addc	a,#0x00
      0030F1 F0               [24] 1200 	movx	@dptr,a
      0030F2 80 31            [24] 1201 	sjmp	00125$
      0030F4                       1202 00124$:
                                   1203 ;	main.c:180: } else if (ch == '+' || ch == '-' || ch == '?' ||
      0030F4 BC 2B 02         [24] 1204 	cjne	r4,#0x2b,00218$
      0030F7 80 17            [24] 1205 	sjmp	00116$
      0030F9                       1206 00218$:
      0030F9 BC 2D 02         [24] 1207 	cjne	r4,#0x2d,00219$
      0030FC 80 12            [24] 1208 	sjmp	00116$
      0030FE                       1209 00219$:
      0030FE BC 3F 02         [24] 1210 	cjne	r4,#0x3f,00220$
      003101 80 0D            [24] 1211 	sjmp	00116$
      003103                       1212 00220$:
                                   1213 ;	main.c:181: ch == '=' || ch == '@') {
      003103 BC 3D 02         [24] 1214 	cjne	r4,#0x3d,00221$
      003106 80 08            [24] 1215 	sjmp	00116$
      003108                       1216 00221$:
      003108 BC 40 02         [24] 1217 	cjne	r4,#0x40,00222$
      00310B 80 03            [24] 1218 	sjmp	00223$
      00310D                       1219 00222$:
      00310D 02 30 1B         [24] 1220 	ljmp	00130$
      003110                       1221 00223$:
      003110                       1222 00116$:
                                   1223 ;	main.c:182: total_characters_count++;
      003110 90 1C 5E         [24] 1224 	mov	dptr,#_main_total_characters_count_65538_59
      003113 E0               [24] 1225 	movx	a,@dptr
      003114 24 01            [12] 1226 	add	a,#0x01
      003116 F0               [24] 1227 	movx	@dptr,a
      003117 A3               [24] 1228 	inc	dptr
      003118 E0               [24] 1229 	movx	a,@dptr
      003119 34 00            [12] 1230 	addc	a,#0x00
      00311B F0               [24] 1231 	movx	@dptr,a
                                   1232 ;	main.c:183: command_characters_detected = 1;
      00311C 90 1D A0         [24] 1233 	mov	dptr,#_command_characters_detected
      00311F 74 01            [12] 1234 	mov	a,#0x01
      003121 F0               [24] 1235 	movx	@dptr,a
      003122 E4               [12] 1236 	clr	a
      003123 A3               [24] 1237 	inc	dptr
      003124 F0               [24] 1238 	movx	@dptr,a
                                   1239 ;	main.c:186: continue;
      003125                       1240 00125$:
                                   1241 ;	main.c:190: all_buff_cleared = command_processing(command_characters_detected, ch,
      003125 90 1D A0         [24] 1242 	mov	dptr,#_command_characters_detected
      003128 E0               [24] 1243 	movx	a,@dptr
      003129 FB               [12] 1244 	mov	r3,a
      00312A A3               [24] 1245 	inc	dptr
      00312B E0               [24] 1246 	movx	a,@dptr
      00312C FD               [12] 1247 	mov	r5,a
                                   1248 ;	main.c:191: &new_buffer_index, &free_buffer_count, &filled_buffer_count,
                                   1249 ;	main.c:192: &storage_character_count, &total_characters_count, buffer_size);
      00312D 90 1D 92         [24] 1250 	mov	dptr,#_buffer_size
      003130 E0               [24] 1251 	movx	a,@dptr
      003131 F9               [12] 1252 	mov	r1,a
      003132 A3               [24] 1253 	inc	dptr
      003133 E0               [24] 1254 	movx	a,@dptr
      003134 FA               [12] 1255 	mov	r2,a
      003135 90 1B 7A         [24] 1256 	mov	dptr,#_command_processing_PARM_2
      003138 EC               [12] 1257 	mov	a,r4
      003139 F0               [24] 1258 	movx	@dptr,a
      00313A 90 1B 7B         [24] 1259 	mov	dptr,#_command_processing_PARM_3
      00313D 74 56            [12] 1260 	mov	a,#_main_new_buffer_index_65537_58
      00313F F0               [24] 1261 	movx	@dptr,a
      003140 74 1C            [12] 1262 	mov	a,#(_main_new_buffer_index_65537_58 >> 8)
      003142 A3               [24] 1263 	inc	dptr
      003143 F0               [24] 1264 	movx	@dptr,a
      003144 E4               [12] 1265 	clr	a
      003145 A3               [24] 1266 	inc	dptr
      003146 F0               [24] 1267 	movx	@dptr,a
      003147 90 1B 7E         [24] 1268 	mov	dptr,#_command_processing_PARM_4
      00314A 74 58            [12] 1269 	mov	a,#_main_free_buffer_count_65537_58
      00314C F0               [24] 1270 	movx	@dptr,a
      00314D 74 1C            [12] 1271 	mov	a,#(_main_free_buffer_count_65537_58 >> 8)
      00314F A3               [24] 1272 	inc	dptr
      003150 F0               [24] 1273 	movx	@dptr,a
      003151 E4               [12] 1274 	clr	a
      003152 A3               [24] 1275 	inc	dptr
      003153 F0               [24] 1276 	movx	@dptr,a
      003154 90 1B 81         [24] 1277 	mov	dptr,#_command_processing_PARM_5
      003157 74 5A            [12] 1278 	mov	a,#_main_filled_buffer_count_65537_58
      003159 F0               [24] 1279 	movx	@dptr,a
      00315A 74 1C            [12] 1280 	mov	a,#(_main_filled_buffer_count_65537_58 >> 8)
      00315C A3               [24] 1281 	inc	dptr
      00315D F0               [24] 1282 	movx	@dptr,a
      00315E E4               [12] 1283 	clr	a
      00315F A3               [24] 1284 	inc	dptr
      003160 F0               [24] 1285 	movx	@dptr,a
      003161 90 1B 84         [24] 1286 	mov	dptr,#_command_processing_PARM_6
      003164 74 5C            [12] 1287 	mov	a,#_main_storage_character_count_65538_59
      003166 F0               [24] 1288 	movx	@dptr,a
      003167 74 1C            [12] 1289 	mov	a,#(_main_storage_character_count_65538_59 >> 8)
      003169 A3               [24] 1290 	inc	dptr
      00316A F0               [24] 1291 	movx	@dptr,a
      00316B E4               [12] 1292 	clr	a
      00316C A3               [24] 1293 	inc	dptr
      00316D F0               [24] 1294 	movx	@dptr,a
      00316E 90 1B 87         [24] 1295 	mov	dptr,#_command_processing_PARM_7
      003171 74 5E            [12] 1296 	mov	a,#_main_total_characters_count_65538_59
      003173 F0               [24] 1297 	movx	@dptr,a
      003174 74 1C            [12] 1298 	mov	a,#(_main_total_characters_count_65538_59 >> 8)
      003176 A3               [24] 1299 	inc	dptr
      003177 F0               [24] 1300 	movx	@dptr,a
      003178 E4               [12] 1301 	clr	a
      003179 A3               [24] 1302 	inc	dptr
      00317A F0               [24] 1303 	movx	@dptr,a
      00317B 90 1B 8A         [24] 1304 	mov	dptr,#_command_processing_PARM_8
      00317E E9               [12] 1305 	mov	a,r1
      00317F F0               [24] 1306 	movx	@dptr,a
      003180 EA               [12] 1307 	mov	a,r2
      003181 A3               [24] 1308 	inc	dptr
      003182 F0               [24] 1309 	movx	@dptr,a
      003183 8B 82            [24] 1310 	mov	dpl,r3
      003185 8D 83            [24] 1311 	mov	dph,r5
      003187 C0 07            [24] 1312 	push	ar7
      003189 C0 06            [24] 1313 	push	ar6
      00318B 12 23 82         [24] 1314 	lcall	_command_processing
      00318E AC 82            [24] 1315 	mov	r4,dpl
      003190 AD 83            [24] 1316 	mov	r5,dph
      003192 D0 06            [24] 1317 	pop	ar6
      003194 D0 07            [24] 1318 	pop	ar7
                                   1319 ;	main.c:193: if (all_buff_cleared == 1)
      003196 BC 01 05         [24] 1320 	cjne	r4,#0x01,00224$
      003199 BD 00 02         [24] 1321 	cjne	r5,#0x00,00224$
      00319C 80 03            [24] 1322 	sjmp	00225$
      00319E                       1323 00224$:
      00319E 02 30 1B         [24] 1324 	ljmp	00130$
      0031A1                       1325 00225$:
                                   1326 ;	main.c:195: printf("\033[1;0mAll buffer cleared\r\nFed in the size for buffer 0 from start!!\r\n");
      0031A1 74 04            [12] 1327 	mov	a,#___str_20
      0031A3 C0 E0            [24] 1328 	push	acc
      0031A5 74 50            [12] 1329 	mov	a,#(___str_20 >> 8)
      0031A7 C0 E0            [24] 1330 	push	acc
      0031A9 74 80            [12] 1331 	mov	a,#0x80
      0031AB C0 E0            [24] 1332 	push	acc
      0031AD 12 39 57         [24] 1333 	lcall	_printf
      0031B0 15 81            [12] 1334 	dec	sp
      0031B2 15 81            [12] 1335 	dec	sp
      0031B4 15 81            [12] 1336 	dec	sp
                                   1337 ;	main.c:196: goto HERE;
                                   1338 ;	main.c:200: }
      0031B6 02 2E 42         [24] 1339 	ljmp	00101$
                                   1340 	.area CSEG    (CODE)
                                   1341 	.area CONST   (CODE)
                                   1342 	.area CONST   (CODE)
      004BB9                       1343 ___str_0:
      004BB9 1B                    1344 	.db 0x1b
      004BBA 5B 31 3B 33 35 6D 7C  1345 	.ascii "[1;35m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004BF1 0A                    1346 	.db 0x0a
      004BF2 0D                    1347 	.db 0x0d
      004BF3 00                    1348 	.db 0x00
                                   1349 	.area CSEG    (CODE)
                                   1350 	.area CONST   (CODE)
      004BF4                       1351 ___str_1:
      004BF4 7C 2A 2A 2A 2A 2A 2A  1352 	.ascii "|************ "
             2A 2A 2A 2A 2A 2A 20
      004C02 1B                    1353 	.db 0x1b
      004C03 5B 31 3B 33 36 6D 55  1354 	.ascii "[1;36mUSER INTERFACE "
             53 45 52 20 49 4E 54
             45 52 46 41 43 45 20
      004C18 1B                    1355 	.db 0x1b
      004C19 5B 31 3B 33 35 6D 2A  1356 	.ascii "[1;35m*******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 7C
      004C33 0A                    1357 	.db 0x0a
      004C34 0D                    1358 	.db 0x0d
      004C35 00                    1359 	.db 0x00
                                   1360 	.area CSEG    (CODE)
                                   1361 	.area CONST   (CODE)
      004C36                       1362 ___str_2:
      004C36 7C 20 20 43 68 6F 6F  1363 	.ascii "|  Choose a character from the below options    |"
             73 65 20 61 20 63 68
             61 72 61 63 74 65 72
             20 66 72 6F 6D 20 74
             68 65 20 62 65 6C 6F
             77 20 6F 70 74 69 6F
             6E 73 20 20 20 20 7C
      004C67 0A                    1364 	.db 0x0a
      004C68 0D                    1365 	.db 0x0d
      004C69 00                    1366 	.db 0x00
                                   1367 	.area CSEG    (CODE)
                                   1368 	.area CONST   (CODE)
      004C6A                       1369 ___str_3:
      004C6A 7C 20 20              1370 	.ascii "|  "
      004C6D 1B                    1371 	.db 0x1b
      004C6E 5B 31 3B 33 35 6D 61  1372 	.ascii "[1;35ma-z"
             2D 7A
      004C77 1B                    1373 	.db 0x1b
      004C78 5B 31 3B 33 35 6D 20  1374 	.ascii "[1;35m  | Character to store in the buffer      |"
             20 7C 20 43 68 61 72
             61 63 74 65 72 20 74
             6F 20 73 74 6F 72 65
             20 69 6E 20 74 68 65
             20 62 75 66 66 65 72
             20 20 20 20 20 20 7C
      004CA9 0A                    1375 	.db 0x0a
      004CAA 0D                    1376 	.db 0x0d
      004CAB 00                    1377 	.db 0x00
                                   1378 	.area CSEG    (CODE)
                                   1379 	.area CONST   (CODE)
      004CAC                       1380 ___str_4:
      004CAC 7C 20 20              1381 	.ascii "|  "
      004CAF 1B                    1382 	.db 0x1b
      004CB0 5B 31 3B 33 35 6D 2B  1383 	.ascii "[1;35m+"
      004CB7 1B                    1384 	.db 0x1b
      004CB8 5B 31 3B 33 35 6D 20  1385 	.ascii "[1;35m    | Allocate a new buffer                 |"
             20 20 20 7C 20 41 6C
             6C 6F 63 61 74 65 20
             61 20 6E 65 77 20 62
             75 66 66 65 72 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      004CEB 0A                    1386 	.db 0x0a
      004CEC 0D                    1387 	.db 0x0d
      004CED 00                    1388 	.db 0x00
                                   1389 	.area CSEG    (CODE)
                                   1390 	.area CONST   (CODE)
      004CEE                       1391 ___str_5:
      004CEE 7C 20 20              1392 	.ascii "|  "
      004CF1 1B                    1393 	.db 0x1b
      004CF2 5B 31 3B 33 35 6D 2D  1394 	.ascii "[1;35m-"
      004CF9 1B                    1395 	.db 0x1b
      004CFA 5B 31 3B 33 35 6D 20  1396 	.ascii "[1;35m    | Delete a buffer                       |"
             20 20 20 7C 20 44 65
             6C 65 74 65 20 61 20
             62 75 66 66 65 72 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      004D2D 0A                    1397 	.db 0x0a
      004D2E 0D                    1398 	.db 0x0d
      004D2F 00                    1399 	.db 0x00
                                   1400 	.area CSEG    (CODE)
                                   1401 	.area CONST   (CODE)
      004D30                       1402 ___str_6:
      004D30 7C 20 20              1403 	.ascii "|  "
      004D33 1B                    1404 	.db 0x1b
      004D34 5B 31 3B 33 35 6D 3F  1405 	.ascii "[1;35m?"
      004D3B 1B                    1406 	.db 0x1b
      004D3C 5B 31 3B 33 35 6D 20  1407 	.ascii "[1;35m    | Display the heap report               |"
             20 20 20 7C 20 44 69
             73 70 6C 61 79 20 74
             68 65 20 68 65 61 70
             20 72 65 70 6F 72 74
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      004D6F 0A                    1408 	.db 0x0a
      004D70 0D                    1409 	.db 0x0d
      004D71 00                    1410 	.db 0x00
                                   1411 	.area CSEG    (CODE)
                                   1412 	.area CONST   (CODE)
      004D72                       1413 ___str_7:
      004D72 7C 20 20              1414 	.ascii "|  "
      004D75 1B                    1415 	.db 0x1b
      004D76 5B 31 3B 33 35 6D 3D  1416 	.ascii "[1;35m="
      004D7D 1B                    1417 	.db 0x1b
      004D7E 5B 31 3B 33 35 6D 20  1418 	.ascii "[1;35m    | Display contents of Buffer_0          |"
             20 20 20 7C 20 44 69
             73 70 6C 61 79 20 63
             6F 6E 74 65 6E 74 73
             20 6F 66 20 42 75 66
             66 65 72 5F 30 20 20
             20 20 20 20 20 20 20
             20 7C
      004DB1 0A                    1419 	.db 0x0a
      004DB2 0D                    1420 	.db 0x0d
      004DB3 00                    1421 	.db 0x00
                                   1422 	.area CSEG    (CODE)
                                   1423 	.area CONST   (CODE)
      004DB4                       1424 ___str_8:
      004DB4 7C 20 20              1425 	.ascii "|  "
      004DB7 1B                    1426 	.db 0x1b
      004DB8 5B 31 3B 33 35 6D 40  1427 	.ascii "[1;35m@"
      004DBF 1B                    1428 	.db 0x1b
      004DC0 5B 31 3B 33 35 6D 20  1429 	.ascii "[1;35m    | Free all the buffers                  |"
             20 20 20 7C 20 46 72
             65 65 20 61 6C 6C 20
             74 68 65 20 62 75 66
             66 65 72 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      004DF3 0A                    1430 	.db 0x0a
      004DF4 0D                    1431 	.db 0x0d
      004DF5 00                    1432 	.db 0x00
                                   1433 	.area CSEG    (CODE)
                                   1434 	.area CONST   (CODE)
      004DF6                       1435 ___str_9:
      004DF6 7C 2A 2A 2A 2A 2A 2A  1436 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      004E27 0A                    1437 	.db 0x0a
      004E28 0D                    1438 	.db 0x0d
      004E29 0A                    1439 	.db 0x0a
      004E2A 0D                    1440 	.db 0x0d
      004E2B 00                    1441 	.db 0x00
                                   1442 	.area CSEG    (CODE)
                                   1443 	.area CONST   (CODE)
      004E2C                       1444 ___str_10:
      004E2C 1B                    1445 	.db 0x1b
      004E2D 5B 31 3B 33 33 6D 7C  1446 	.ascii "[1;33m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004E64 0A                    1447 	.db 0x0a
      004E65 0D                    1448 	.db 0x0d
      004E66 00                    1449 	.db 0x00
                                   1450 	.area CSEG    (CODE)
                                   1451 	.area CONST   (CODE)
      004E67                       1452 ___str_11:
      004E67 7C 20 20 43 68 6F 6F  1453 	.ascii "|  Choose a size for buffer 0 and buffer 1      |"
             73 65 20 61 20 73 69
             7A 65 20 66 6F 72 20
             62 75 66 66 65 72 20
             30 20 61 6E 64 20 62
             75 66 66 65 72 20 31
             20 20 20 20 20 20 7C
      004E98 0A                    1454 	.db 0x0a
      004E99 0D                    1455 	.db 0x0d
      004E9A 00                    1456 	.db 0x00
                                   1457 	.area CSEG    (CODE)
                                   1458 	.area CONST   (CODE)
      004E9B                       1459 ___str_12:
      004E9B 7C 20 20 42 75 66 66  1460 	.ascii "|  Buffer 0 and Buffer 1 Allocation Processing  |"
             65 72 20 30 20 61 6E
             64 20 42 75 66 66 65
             72 20 31 20 41 6C 6C
             6F 63 61 74 69 6F 6E
             20 50 72 6F 63 65 73
             73 69 6E 67 20 20 7C
      004ECC 0A                    1461 	.db 0x0a
      004ECD 0D                    1462 	.db 0x0d
      004ECE 00                    1463 	.db 0x00
                                   1464 	.area CSEG    (CODE)
                                   1465 	.area CONST   (CODE)
      004ECF                       1466 ___str_13:
      004ECF 1B                    1467 	.db 0x1b
      004ED0 5B 31 3B 33 33 6D 49  1468 	.ascii "[1;33mInvalid Malloc: Malloc on buffer0 failed!!"
             6E 76 61 6C 69 64 20
             4D 61 6C 6C 6F 63 3A
             20 4D 61 6C 6C 6F 63
             20 6F 6E 20 62 75 66
             66 65 72 30 20 66 61
             69 6C 65 64 21 21
      004F00 0A                    1469 	.db 0x0a
      004F01 0D                    1470 	.db 0x0d
      004F02 00                    1471 	.db 0x00
                                   1472 	.area CSEG    (CODE)
                                   1473 	.area CONST   (CODE)
      004F03                       1474 ___str_14:
      004F03 1B                    1475 	.db 0x1b
      004F04 5B 31 3B 30 6D 4D 61  1476 	.ascii "[1;0mMalloc Successful : Buffer0 allocated"
             6C 6C 6F 63 20 53 75
             63 63 65 73 73 66 75
             6C 20 3A 20 42 75 66
             66 65 72 30 20 61 6C
             6C 6F 63 61 74 65 64
      004F2E 0A                    1477 	.db 0x0a
      004F2F 0D                    1478 	.db 0x0d
      004F30 00                    1479 	.db 0x00
                                   1480 	.area CSEG    (CODE)
                                   1481 	.area CONST   (CODE)
      004F31                       1482 ___str_15:
      004F31 1B                    1483 	.db 0x1b
      004F32 5B 31 3B 33 31 6D 49  1484 	.ascii "[1;31mInvalid Malloc: Malloc on buffer1 failed!!"
             6E 76 61 6C 69 64 20
             4D 61 6C 6C 6F 63 3A
             20 4D 61 6C 6C 6F 63
             20 6F 6E 20 62 75 66
             66 65 72 31 20 66 61
             69 6C 65 64 21 21
      004F62 0A                    1485 	.db 0x0a
      004F63 0D                    1486 	.db 0x0d
      004F64 00                    1487 	.db 0x00
                                   1488 	.area CSEG    (CODE)
                                   1489 	.area CONST   (CODE)
      004F65                       1490 ___str_16:
      004F65 1B                    1491 	.db 0x1b
      004F66 5B 31 3B 30 6D 4D 61  1492 	.ascii "[1;0mMalloc Successful : Buffer1 allocated"
             6C 6C 6F 63 20 53 75
             63 63 65 73 73 66 75
             6C 20 3A 20 42 75 66
             66 65 72 31 20 61 6C
             6C 6F 63 61 74 65 64
      004F90 0A                    1493 	.db 0x0a
      004F91 0D                    1494 	.db 0x0d
      004F92 00                    1495 	.db 0x00
                                   1496 	.area CSEG    (CODE)
                                   1497 	.area CONST   (CODE)
      004F93                       1498 ___str_17:
      004F93 7C 20 20 42 75 66 66  1499 	.ascii "|  Buffer0 and Buffer 1 Allocation Sucsessful   |"
             65 72 30 20 61 6E 64
             20 42 75 66 66 65 72
             20 31 20 41 6C 6C 6F
             63 61 74 69 6F 6E 20
             53 75 63 73 65 73 73
             66 75 6C 20 20 20 7C
      004FC4 0A                    1500 	.db 0x0a
      004FC5 0D                    1501 	.db 0x0d
      004FC6 00                    1502 	.db 0x00
                                   1503 	.area CSEG    (CODE)
                                   1504 	.area CONST   (CODE)
      004FC7                       1505 ___str_18:
      004FC7 7C 20 20 20 20 20 20  1506 	.ascii "|             Fetching Character                |"
             20 20 20 20 20 20 20
             46 65 74 63 68 69 6E
             67 20 43 68 61 72 61
             63 74 65 72 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      004FF8 0A                    1507 	.db 0x0a
      004FF9 0D                    1508 	.db 0x0d
      004FFA 00                    1509 	.db 0x00
                                   1510 	.area CSEG    (CODE)
                                   1511 	.area CONST   (CODE)
      004FFB                       1512 ___str_19:
      004FFB 1B                    1513 	.db 0x1b
      004FFC 5B 31 3B 30 6D        1514 	.ascii "[1;0m"
      005001 0D                    1515 	.db 0x0d
      005002 0A                    1516 	.db 0x0a
      005003 00                    1517 	.db 0x00
                                   1518 	.area CSEG    (CODE)
                                   1519 	.area CONST   (CODE)
      005004                       1520 ___str_20:
      005004 1B                    1521 	.db 0x1b
      005005 5B 31 3B 30 6D 41 6C  1522 	.ascii "[1;0mAll buffer cleared"
             6C 20 62 75 66 66 65
             72 20 63 6C 65 61 72
             65 64
      00501C 0D                    1523 	.db 0x0d
      00501D 0A                    1524 	.db 0x0a
      00501E 46 65 64 20 69 6E 20  1525 	.ascii "Fed in the size for buffer 0 from start!!"
             74 68 65 20 73 69 7A
             65 20 66 6F 72 20 62
             75 66 66 65 72 20 30
             20 66 72 6F 6D 20 73
             74 61 72 74 21 21
      005047 0D                    1526 	.db 0x0d
      005048 0A                    1527 	.db 0x0a
      005049 00                    1528 	.db 0x00
                                   1529 	.area CSEG    (CODE)
                                   1530 	.area XINIT   (CODE)
      005125                       1531 __xinit__buffer_size:
      005125 00 00                 1532 	.byte #0x00, #0x00	;  0
      005127                       1533 __xinit__buffer0:
      005127 00 00                 1534 	.byte #0x00,#0x00
      005129                       1535 __xinit__ptr_buffer0:
      005129 00 00                 1536 	.byte #0x00,#0x00
      00512B                       1537 __xinit__buffer1:
      00512B 00 00                 1538 	.byte #0x00,#0x00
      00512D                       1539 __xinit__ptr_buffer1:
      00512D 00 00                 1540 	.byte #0x00,#0x00
      00512F                       1541 __xinit__storage_character_detected:
      00512F 00 00                 1542 	.byte #0x00, #0x00	;  0
      005131                       1543 __xinit__total_characters_detected:
      005131 00 00                 1544 	.byte #0x00, #0x00	;  0
      005133                       1545 __xinit__command_characters_detected:
      005133 00 00                 1546 	.byte #0x00, #0x00	;  0
      005135                       1547 __xinit__buffer_size_arr:
      005135 00 00                 1548 	.byte #0x00, #0x00	;  0
      005137 00                    1549 	.db 0x00
      005138 00                    1550 	.db 0x00
      005139 00                    1551 	.db 0x00
      00513A 00                    1552 	.db 0x00
      00513B 00                    1553 	.db 0x00
      00513C 00                    1554 	.db 0x00
      00513D 00                    1555 	.db 0x00
      00513E 00                    1556 	.db 0x00
      00513F 00                    1557 	.db 0x00
      005140 00                    1558 	.db 0x00
      005141 00                    1559 	.db 0x00
      005142 00                    1560 	.db 0x00
      005143 00                    1561 	.db 0x00
      005144 00                    1562 	.db 0x00
      005145 00                    1563 	.db 0x00
      005146 00                    1564 	.db 0x00
      005147 00                    1565 	.db 0x00
      005148 00                    1566 	.db 0x00
      005149 00                    1567 	.db 0x00
      00514A 00                    1568 	.db 0x00
      00514B 00                    1569 	.db 0x00
      00514C 00                    1570 	.db 0x00
      00514D 00                    1571 	.db 0x00
      00514E 00                    1572 	.db 0x00
      00514F 00                    1573 	.db 0x00
      005150 00                    1574 	.db 0x00
      005151 00                    1575 	.db 0x00
      005152 00                    1576 	.db 0x00
      005153 00                    1577 	.db 0x00
      005154 00                    1578 	.db 0x00
      005155 00                    1579 	.db 0x00
      005156 00                    1580 	.db 0x00
      005157 00                    1581 	.db 0x00
      005158 00                    1582 	.db 0x00
      005159 00                    1583 	.db 0x00
      00515A 00                    1584 	.db 0x00
      00515B 00                    1585 	.db 0x00
      00515C 00                    1586 	.db 0x00
      00515D 00                    1587 	.db 0x00
      00515E 00                    1588 	.db 0x00
      00515F 00                    1589 	.db 0x00
      005160 00                    1590 	.db 0x00
      005161 00                    1591 	.db 0x00
      005162 00                    1592 	.db 0x00
      005163 00                    1593 	.db 0x00
      005164 00                    1594 	.db 0x00
      005165 00                    1595 	.db 0x00
      005166 00                    1596 	.db 0x00
      005167 00                    1597 	.db 0x00
      005168 00                    1598 	.db 0x00
      005169 00                    1599 	.db 0x00
      00516A 00                    1600 	.db 0x00
      00516B 00                    1601 	.db 0x00
      00516C 00                    1602 	.db 0x00
      00516D 00                    1603 	.db 0x00
      00516E 00                    1604 	.db 0x00
      00516F 00                    1605 	.db 0x00
      005170 00                    1606 	.db 0x00
      005171 00                    1607 	.db 0x00
      005172 00                    1608 	.db 0x00
      005173 00                    1609 	.db 0x00
      005174 00                    1610 	.db 0x00
      005175 00                    1611 	.db 0x00
      005176 00                    1612 	.db 0x00
      005177 00                    1613 	.db 0x00
      005178 00                    1614 	.db 0x00
      005179 00                    1615 	.db 0x00
      00517A 00                    1616 	.db 0x00
      00517B 00                    1617 	.db 0x00
      00517C 00                    1618 	.db 0x00
      00517D 00                    1619 	.db 0x00
      00517E 00                    1620 	.db 0x00
      00517F 00                    1621 	.db 0x00
      005180 00                    1622 	.db 0x00
      005181 00                    1623 	.db 0x00
      005182 00                    1624 	.db 0x00
      005183 00                    1625 	.db 0x00
      005184 00                    1626 	.db 0x00
      005185 00                    1627 	.db 0x00
      005186 00                    1628 	.db 0x00
      005187 00                    1629 	.db 0x00
      005188 00                    1630 	.db 0x00
      005189 00                    1631 	.db 0x00
      00518A 00                    1632 	.db 0x00
      00518B 00                    1633 	.db 0x00
      00518C 00                    1634 	.db 0x00
      00518D 00                    1635 	.db 0x00
      00518E 00                    1636 	.db 0x00
      00518F 00                    1637 	.db 0x00
      005190 00                    1638 	.db 0x00
      005191 00                    1639 	.db 0x00
      005192 00                    1640 	.db 0x00
      005193 00                    1641 	.db 0x00
      005194 00                    1642 	.db 0x00
      005195 00                    1643 	.db 0x00
      005196 00                    1644 	.db 0x00
      005197 00                    1645 	.db 0x00
      005198 00                    1646 	.db 0x00
      005199 00                    1647 	.db 0x00
      00519A 00                    1648 	.db 0x00
      00519B 00                    1649 	.db 0x00
      00519C 00                    1650 	.db 0x00
      00519D 00                    1651 	.db 0x00
      00519E 00                    1652 	.db 0x00
      00519F 00                    1653 	.db 0x00
      0051A0 00                    1654 	.db 0x00
      0051A1 00                    1655 	.db 0x00
      0051A2 00                    1656 	.db 0x00
      0051A3 00                    1657 	.db 0x00
      0051A4 00                    1658 	.db 0x00
      0051A5 00                    1659 	.db 0x00
      0051A6 00                    1660 	.db 0x00
      0051A7 00                    1661 	.db 0x00
      0051A8 00                    1662 	.db 0x00
      0051A9 00                    1663 	.db 0x00
      0051AA 00                    1664 	.db 0x00
      0051AB 00                    1665 	.db 0x00
      0051AC 00                    1666 	.db 0x00
      0051AD 00                    1667 	.db 0x00
      0051AE 00                    1668 	.db 0x00
      0051AF 00                    1669 	.db 0x00
      0051B0 00                    1670 	.db 0x00
      0051B1 00                    1671 	.db 0x00
      0051B2 00                    1672 	.db 0x00
      0051B3 00                    1673 	.db 0x00
      0051B4 00                    1674 	.db 0x00
      0051B5 00                    1675 	.db 0x00
      0051B6 00                    1676 	.db 0x00
      0051B7 00                    1677 	.db 0x00
      0051B8 00                    1678 	.db 0x00
      0051B9 00                    1679 	.db 0x00
      0051BA 00                    1680 	.db 0x00
      0051BB 00                    1681 	.db 0x00
      0051BC 00                    1682 	.db 0x00
      0051BD 00                    1683 	.db 0x00
      0051BE 00                    1684 	.db 0x00
      0051BF 00                    1685 	.db 0x00
      0051C0 00                    1686 	.db 0x00
      0051C1 00                    1687 	.db 0x00
      0051C2 00                    1688 	.db 0x00
      0051C3 00                    1689 	.db 0x00
      0051C4 00                    1690 	.db 0x00
      0051C5 00                    1691 	.db 0x00
      0051C6 00                    1692 	.db 0x00
      0051C7 00                    1693 	.db 0x00
      0051C8 00                    1694 	.db 0x00
      0051C9 00                    1695 	.db 0x00
      0051CA 00                    1696 	.db 0x00
      0051CB 00                    1697 	.db 0x00
      0051CC 00                    1698 	.db 0x00
      0051CD 00                    1699 	.db 0x00
      0051CE 00                    1700 	.db 0x00
      0051CF 00                    1701 	.db 0x00
      0051D0 00                    1702 	.db 0x00
      0051D1 00                    1703 	.db 0x00
      0051D2 00                    1704 	.db 0x00
      0051D3 00                    1705 	.db 0x00
      0051D4 00                    1706 	.db 0x00
      0051D5 00                    1707 	.db 0x00
      0051D6 00                    1708 	.db 0x00
      0051D7 00                    1709 	.db 0x00
      0051D8 00                    1710 	.db 0x00
      0051D9 00                    1711 	.db 0x00
      0051DA 00                    1712 	.db 0x00
      0051DB 00                    1713 	.db 0x00
      0051DC 00                    1714 	.db 0x00
      0051DD 00                    1715 	.db 0x00
      0051DE 00                    1716 	.db 0x00
      0051DF 00                    1717 	.db 0x00
      0051E0 00                    1718 	.db 0x00
      0051E1 00                    1719 	.db 0x00
      0051E2 00                    1720 	.db 0x00
      0051E3 00                    1721 	.db 0x00
      0051E4 00                    1722 	.db 0x00
      0051E5 00                    1723 	.db 0x00
      0051E6 00                    1724 	.db 0x00
      0051E7 00                    1725 	.db 0x00
      0051E8 00                    1726 	.db 0x00
      0051E9 00                    1727 	.db 0x00
      0051EA 00                    1728 	.db 0x00
      0051EB 00                    1729 	.db 0x00
      0051EC 00                    1730 	.db 0x00
      0051ED 00                    1731 	.db 0x00
      0051EE 00                    1732 	.db 0x00
      0051EF 00                    1733 	.db 0x00
      0051F0 00                    1734 	.db 0x00
      0051F1 00                    1735 	.db 0x00
      0051F2 00                    1736 	.db 0x00
      0051F3 00                    1737 	.db 0x00
      0051F4 00                    1738 	.db 0x00
      0051F5 00                    1739 	.db 0x00
      0051F6 00                    1740 	.db 0x00
      0051F7 00                    1741 	.db 0x00
      0051F8 00                    1742 	.db 0x00
      0051F9 00                    1743 	.db 0x00
      0051FA 00                    1744 	.db 0x00
      0051FB 00                    1745 	.db 0x00
      0051FC 00                    1746 	.db 0x00
      0051FD 00                    1747 	.db 0x00
      0051FE 00                    1748 	.db 0x00
      0051FF 00                    1749 	.db 0x00
      005200 00                    1750 	.db 0x00
      005201 00                    1751 	.db 0x00
      005202 00                    1752 	.db 0x00
      005203 00                    1753 	.db 0x00
      005204 00                    1754 	.db 0x00
      005205 00                    1755 	.db 0x00
      005206 00                    1756 	.db 0x00
      005207 00                    1757 	.db 0x00
      005208 00                    1758 	.db 0x00
      005209 00                    1759 	.db 0x00
      00520A 00                    1760 	.db 0x00
      00520B 00                    1761 	.db 0x00
      00520C 00                    1762 	.db 0x00
      00520D 00                    1763 	.db 0x00
      00520E 00                    1764 	.db 0x00
      00520F 00                    1765 	.db 0x00
      005210 00                    1766 	.db 0x00
      005211 00                    1767 	.db 0x00
      005212 00                    1768 	.db 0x00
      005213 00                    1769 	.db 0x00
      005214 00                    1770 	.db 0x00
      005215 00                    1771 	.db 0x00
      005216 00                    1772 	.db 0x00
      005217 00                    1773 	.db 0x00
      005218 00                    1774 	.db 0x00
      005219 00                    1775 	.db 0x00
      00521A 00                    1776 	.db 0x00
      00521B 00                    1777 	.db 0x00
      00521C 00                    1778 	.db 0x00
      00521D 00                    1779 	.db 0x00
      00521E 00                    1780 	.db 0x00
      00521F 00                    1781 	.db 0x00
      005220 00                    1782 	.db 0x00
      005221 00                    1783 	.db 0x00
      005222 00                    1784 	.db 0x00
      005223 00                    1785 	.db 0x00
      005224 00                    1786 	.db 0x00
      005225 00                    1787 	.db 0x00
      005226 00                    1788 	.db 0x00
      005227 00                    1789 	.db 0x00
      005228 00                    1790 	.db 0x00
      005229 00                    1791 	.db 0x00
      00522A 00                    1792 	.db 0x00
      00522B 00                    1793 	.db 0x00
      00522C 00                    1794 	.db 0x00
      00522D 00                    1795 	.db 0x00
      00522E 00                    1796 	.db 0x00
      00522F 00                    1797 	.db 0x00
      005230 00                    1798 	.db 0x00
      005231 00                    1799 	.db 0x00
      005232 00                    1800 	.db 0x00
      005233 00                    1801 	.db 0x00
      005234 00                    1802 	.db 0x00
      005235 00                    1803 	.db 0x00
      005236 00                    1804 	.db 0x00
      005237 00                    1805 	.db 0x00
      005238 00                    1806 	.db 0x00
      005239 00                    1807 	.db 0x00
      00523A 00                    1808 	.db 0x00
      00523B 00                    1809 	.db 0x00
      00523C 00                    1810 	.db 0x00
      00523D 00                    1811 	.db 0x00
      00523E 00                    1812 	.db 0x00
      00523F 00                    1813 	.db 0x00
      005240 00                    1814 	.db 0x00
      005241 00                    1815 	.db 0x00
      005242 00                    1816 	.db 0x00
      005243 00                    1817 	.db 0x00
      005244 00                    1818 	.db 0x00
      005245 00                    1819 	.db 0x00
      005246 00                    1820 	.db 0x00
      005247 00                    1821 	.db 0x00
      005248 00                    1822 	.db 0x00
      005249 00                    1823 	.db 0x00
      00524A 00                    1824 	.db 0x00
      00524B 00                    1825 	.db 0x00
      00524C 00                    1826 	.db 0x00
      00524D 00                    1827 	.db 0x00
      00524E 00                    1828 	.db 0x00
      00524F 00                    1829 	.db 0x00
      005250 00                    1830 	.db 0x00
      005251 00                    1831 	.db 0x00
      005252 00                    1832 	.db 0x00
      005253 00                    1833 	.db 0x00
      005254 00                    1834 	.db 0x00
      005255 00                    1835 	.db 0x00
      005256 00                    1836 	.db 0x00
      005257 00                    1837 	.db 0x00
      005258 00                    1838 	.db 0x00
      005259 00                    1839 	.db 0x00
      00525A 00                    1840 	.db 0x00
      00525B 00                    1841 	.db 0x00
      00525C 00                    1842 	.db 0x00
      00525D 00                    1843 	.db 0x00
      00525E 00                    1844 	.db 0x00
      00525F 00                    1845 	.db 0x00
      005260 00                    1846 	.db 0x00
      005261 00                    1847 	.db 0x00
      005262 00                    1848 	.db 0x00
      005263 00                    1849 	.db 0x00
      005264 00                    1850 	.db 0x00
      005265 00                    1851 	.db 0x00
      005266 00                    1852 	.db 0x00
      005267 00                    1853 	.db 0x00
      005268 00                    1854 	.db 0x00
      005269 00                    1855 	.db 0x00
      00526A 00                    1856 	.db 0x00
      00526B 00                    1857 	.db 0x00
      00526C 00                    1858 	.db 0x00
      00526D 00                    1859 	.db 0x00
      00526E 00                    1860 	.db 0x00
      00526F 00                    1861 	.db 0x00
      005270 00                    1862 	.db 0x00
      005271 00                    1863 	.db 0x00
      005272 00                    1864 	.db 0x00
      005273 00                    1865 	.db 0x00
      005274 00                    1866 	.db 0x00
      005275 00                    1867 	.db 0x00
      005276 00                    1868 	.db 0x00
      005277 00                    1869 	.db 0x00
      005278 00                    1870 	.db 0x00
      005279 00                    1871 	.db 0x00
      00527A 00                    1872 	.db 0x00
      00527B 00                    1873 	.db 0x00
      00527C 00                    1874 	.db 0x00
      00527D 00                    1875 	.db 0x00
      00527E 00                    1876 	.db 0x00
      00527F 00                    1877 	.db 0x00
      005280 00                    1878 	.db 0x00
      005281 00                    1879 	.db 0x00
      005282 00                    1880 	.db 0x00
      005283 00                    1881 	.db 0x00
      005284 00                    1882 	.db 0x00
      005285 00                    1883 	.db 0x00
      005286 00                    1884 	.db 0x00
      005287 00                    1885 	.db 0x00
      005288 00                    1886 	.db 0x00
      005289 00                    1887 	.db 0x00
      00528A 00                    1888 	.db 0x00
      00528B 00                    1889 	.db 0x00
      00528C 00                    1890 	.db 0x00
      00528D 00                    1891 	.db 0x00
      00528E 00                    1892 	.db 0x00
      00528F 00                    1893 	.db 0x00
      005290 00                    1894 	.db 0x00
      005291 00                    1895 	.db 0x00
      005292 00                    1896 	.db 0x00
      005293 00                    1897 	.db 0x00
      005294 00                    1898 	.db 0x00
      005295 00                    1899 	.db 0x00
      005296 00                    1900 	.db 0x00
      005297 00                    1901 	.db 0x00
      005298 00                    1902 	.db 0x00
      005299 00                    1903 	.db 0x00
      00529A 00                    1904 	.db 0x00
      00529B 00                    1905 	.db 0x00
      00529C 00                    1906 	.db 0x00
      00529D 00                    1907 	.db 0x00
      00529E 00                    1908 	.db 0x00
      00529F 00                    1909 	.db 0x00
      0052A0 00                    1910 	.db 0x00
      0052A1 00                    1911 	.db 0x00
      0052A2 00                    1912 	.db 0x00
      0052A3 00                    1913 	.db 0x00
      0052A4 00                    1914 	.db 0x00
      0052A5 00                    1915 	.db 0x00
      0052A6 00                    1916 	.db 0x00
      0052A7 00                    1917 	.db 0x00
      0052A8 00                    1918 	.db 0x00
      0052A9 00                    1919 	.db 0x00
      0052AA 00                    1920 	.db 0x00
      0052AB 00                    1921 	.db 0x00
      0052AC 00                    1922 	.db 0x00
      0052AD 00                    1923 	.db 0x00
      0052AE 00                    1924 	.db 0x00
      0052AF 00                    1925 	.db 0x00
      0052B0 00                    1926 	.db 0x00
      0052B1 00                    1927 	.db 0x00
      0052B2 00                    1928 	.db 0x00
      0052B3 00                    1929 	.db 0x00
      0052B4 00                    1930 	.db 0x00
      0052B5 00                    1931 	.db 0x00
      0052B6 00                    1932 	.db 0x00
      0052B7 00                    1933 	.db 0x00
      0052B8 00                    1934 	.db 0x00
      0052B9 00                    1935 	.db 0x00
      0052BA 00                    1936 	.db 0x00
      0052BB 00                    1937 	.db 0x00
      0052BC 00                    1938 	.db 0x00
      0052BD 00                    1939 	.db 0x00
      0052BE 00                    1940 	.db 0x00
      0052BF 00                    1941 	.db 0x00
      0052C0 00                    1942 	.db 0x00
      0052C1 00                    1943 	.db 0x00
      0052C2 00                    1944 	.db 0x00
      0052C3 00                    1945 	.db 0x00
      0052C4 00                    1946 	.db 0x00
      0052C5 00                    1947 	.db 0x00
      0052C6 00                    1948 	.db 0x00
      0052C7 00                    1949 	.db 0x00
      0052C8 00                    1950 	.db 0x00
      0052C9 00                    1951 	.db 0x00
      0052CA 00                    1952 	.db 0x00
      0052CB 00                    1953 	.db 0x00
      0052CC 00                    1954 	.db 0x00
      0052CD 00                    1955 	.db 0x00
      0052CE 00                    1956 	.db 0x00
      0052CF 00                    1957 	.db 0x00
      0052D0 00                    1958 	.db 0x00
      0052D1 00                    1959 	.db 0x00
      0052D2 00                    1960 	.db 0x00
      0052D3 00                    1961 	.db 0x00
      0052D4 00                    1962 	.db 0x00
      0052D5 00                    1963 	.db 0x00
      0052D6 00                    1964 	.db 0x00
      0052D7 00                    1965 	.db 0x00
      0052D8 00                    1966 	.db 0x00
      0052D9 00                    1967 	.db 0x00
      0052DA 00                    1968 	.db 0x00
      0052DB 00                    1969 	.db 0x00
      0052DC 00                    1970 	.db 0x00
      0052DD 00                    1971 	.db 0x00
      0052DE 00                    1972 	.db 0x00
      0052DF 00                    1973 	.db 0x00
      0052E0 00                    1974 	.db 0x00
      0052E1 00                    1975 	.db 0x00
      0052E2 00                    1976 	.db 0x00
      0052E3 00                    1977 	.db 0x00
      0052E4 00                    1978 	.db 0x00
      0052E5 00                    1979 	.db 0x00
      0052E6 00                    1980 	.db 0x00
      0052E7 00                    1981 	.db 0x00
      0052E8 00                    1982 	.db 0x00
      0052E9 00                    1983 	.db 0x00
      0052EA 00                    1984 	.db 0x00
      0052EB 00                    1985 	.db 0x00
      0052EC 00                    1986 	.db 0x00
      0052ED 00                    1987 	.db 0x00
      0052EE 00                    1988 	.db 0x00
      0052EF 00                    1989 	.db 0x00
      0052F0 00                    1990 	.db 0x00
      0052F1 00                    1991 	.db 0x00
      0052F2 00                    1992 	.db 0x00
      0052F3 00                    1993 	.db 0x00
      0052F4 00                    1994 	.db 0x00
      0052F5 00                    1995 	.db 0x00
      0052F6 00                    1996 	.db 0x00
      0052F7 00                    1997 	.db 0x00
      0052F8 00                    1998 	.db 0x00
      0052F9 00                    1999 	.db 0x00
      0052FA 00                    2000 	.db 0x00
      0052FB 00                    2001 	.db 0x00
      0052FC 00                    2002 	.db 0x00
      0052FD 00                    2003 	.db 0x00
      0052FE 00                    2004 	.db 0x00
      0052FF 00                    2005 	.db 0x00
      005300 00                    2006 	.db 0x00
      005301 00                    2007 	.db 0x00
      005302 00                    2008 	.db 0x00
      005303 00                    2009 	.db 0x00
      005304 00                    2010 	.db 0x00
      005305 00                    2011 	.db 0x00
      005306 00                    2012 	.db 0x00
      005307 00                    2013 	.db 0x00
      005308 00                    2014 	.db 0x00
      005309 00                    2015 	.db 0x00
      00530A 00                    2016 	.db 0x00
      00530B 00                    2017 	.db 0x00
      00530C 00                    2018 	.db 0x00
      00530D 00                    2019 	.db 0x00
      00530E 00                    2020 	.db 0x00
      00530F 00                    2021 	.db 0x00
      005310 00                    2022 	.db 0x00
      005311 00                    2023 	.db 0x00
      005312 00                    2024 	.db 0x00
      005313 00                    2025 	.db 0x00
      005314 00                    2026 	.db 0x00
      005315 00                    2027 	.db 0x00
      005316 00                    2028 	.db 0x00
      005317 00                    2029 	.db 0x00
      005318 00                    2030 	.db 0x00
      005319 00                    2031 	.db 0x00
      00531A 00                    2032 	.db 0x00
      00531B 00                    2033 	.db 0x00
      00531C 00                    2034 	.db 0x00
      00531D 00                    2035 	.db 0x00
      00531E 00                    2036 	.db 0x00
      00531F 00                    2037 	.db 0x00
      005320 00                    2038 	.db 0x00
      005321 00                    2039 	.db 0x00
      005322 00                    2040 	.db 0x00
      005323 00                    2041 	.db 0x00
      005324 00                    2042 	.db 0x00
      005325 00                    2043 	.db 0x00
      005326 00                    2044 	.db 0x00
      005327 00                    2045 	.db 0x00
      005328 00                    2046 	.db 0x00
      005329 00                    2047 	.db 0x00
      00532A 00                    2048 	.db 0x00
      00532B 00                    2049 	.db 0x00
      00532C 00                    2050 	.db 0x00
      00532D 00                    2051 	.db 0x00
      00532E 00                    2052 	.db 0x00
      00532F 00                    2053 	.db 0x00
      005330 00                    2054 	.db 0x00
      005331 00                    2055 	.db 0x00
      005332 00                    2056 	.db 0x00
      005333 00                    2057 	.db 0x00
      005334 00                    2058 	.db 0x00
      005335 00                    2059 	.db 0x00
      005336 00                    2060 	.db 0x00
      005337 00                    2061 	.db 0x00
      005338 00                    2062 	.db 0x00
      005339 00                    2063 	.db 0x00
      00533A 00                    2064 	.db 0x00
      00533B 00                    2065 	.db 0x00
      00533C 00                    2066 	.db 0x00
      00533D 00                    2067 	.db 0x00
      00533E 00                    2068 	.db 0x00
      00533F 00                    2069 	.db 0x00
      005340 00                    2070 	.db 0x00
      005341 00                    2071 	.db 0x00
      005342 00                    2072 	.db 0x00
      005343 00                    2073 	.db 0x00
      005344 00                    2074 	.db 0x00
      005345 00                    2075 	.db 0x00
      005346 00                    2076 	.db 0x00
      005347 00                    2077 	.db 0x00
      005348 00                    2078 	.db 0x00
      005349 00                    2079 	.db 0x00
      00534A 00                    2080 	.db 0x00
      00534B 00                    2081 	.db 0x00
      00534C 00                    2082 	.db 0x00
      00534D 00                    2083 	.db 0x00
      00534E 00                    2084 	.db 0x00
      00534F 00                    2085 	.db 0x00
      005350 00                    2086 	.db 0x00
      005351 00                    2087 	.db 0x00
      005352 00                    2088 	.db 0x00
      005353 00                    2089 	.db 0x00
      005354 00                    2090 	.db 0x00
      005355 00                    2091 	.db 0x00
      005356 00                    2092 	.db 0x00
      005357 00                    2093 	.db 0x00
      005358 00                    2094 	.db 0x00
      005359 00                    2095 	.db 0x00
      00535A 00                    2096 	.db 0x00
      00535B 00                    2097 	.db 0x00
      00535C 00                    2098 	.db 0x00
      00535D 00                    2099 	.db 0x00
      00535E 00                    2100 	.db 0x00
      00535F 00                    2101 	.db 0x00
      005360 00                    2102 	.db 0x00
      005361 00                    2103 	.db 0x00
      005362 00                    2104 	.db 0x00
      005363 00                    2105 	.db 0x00
      005364 00                    2106 	.db 0x00
      005365 00                    2107 	.db 0x00
      005366 00                    2108 	.db 0x00
      005367 00                    2109 	.db 0x00
      005368 00                    2110 	.db 0x00
      005369 00                    2111 	.db 0x00
      00536A 00                    2112 	.db 0x00
      00536B 00                    2113 	.db 0x00
      00536C 00                    2114 	.db 0x00
      00536D 00                    2115 	.db 0x00
      00536E 00                    2116 	.db 0x00
      00536F 00                    2117 	.db 0x00
      005370 00                    2118 	.db 0x00
      005371 00                    2119 	.db 0x00
      005372 00                    2120 	.db 0x00
      005373 00                    2121 	.db 0x00
      005374 00                    2122 	.db 0x00
      005375 00                    2123 	.db 0x00
      005376 00                    2124 	.db 0x00
      005377 00                    2125 	.db 0x00
      005378 00                    2126 	.db 0x00
      005379 00                    2127 	.db 0x00
      00537A 00                    2128 	.db 0x00
      00537B 00                    2129 	.db 0x00
      00537C 00                    2130 	.db 0x00
      00537D 00                    2131 	.db 0x00
      00537E 00                    2132 	.db 0x00
      00537F 00                    2133 	.db 0x00
      005380 00                    2134 	.db 0x00
      005381 00                    2135 	.db 0x00
      005382 00                    2136 	.db 0x00
      005383 00                    2137 	.db 0x00
      005384 00                    2138 	.db 0x00
      005385 00                    2139 	.db 0x00
      005386 00                    2140 	.db 0x00
      005387 00                    2141 	.db 0x00
      005388 00                    2142 	.db 0x00
      005389 00                    2143 	.db 0x00
      00538A 00                    2144 	.db 0x00
      00538B 00                    2145 	.db 0x00
      00538C 00                    2146 	.db 0x00
                                   2147 	.area CABS    (ABS,CODE)
