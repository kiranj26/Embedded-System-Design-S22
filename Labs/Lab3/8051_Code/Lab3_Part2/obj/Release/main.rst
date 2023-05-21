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
                                     13 	.globl _putchar
                                     14 	.globl _getchar
                                     15 	.globl _command_processing
                                     16 	.globl _printf_tiny
                                     17 	.globl _printf
                                     18 	.globl _free
                                     19 	.globl _malloc
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _TXD0
                                     96 	.globl _RXD0
                                     97 	.globl _BREG_F7
                                     98 	.globl _BREG_F6
                                     99 	.globl _BREG_F5
                                    100 	.globl _BREG_F4
                                    101 	.globl _BREG_F3
                                    102 	.globl _BREG_F2
                                    103 	.globl _BREG_F1
                                    104 	.globl _BREG_F0
                                    105 	.globl _P5_7
                                    106 	.globl _P5_6
                                    107 	.globl _P5_5
                                    108 	.globl _P5_4
                                    109 	.globl _P5_3
                                    110 	.globl _P5_2
                                    111 	.globl _P5_1
                                    112 	.globl _P5_0
                                    113 	.globl _P4_7
                                    114 	.globl _P4_6
                                    115 	.globl _P4_5
                                    116 	.globl _P4_4
                                    117 	.globl _P4_3
                                    118 	.globl _P4_2
                                    119 	.globl _P4_1
                                    120 	.globl _P4_0
                                    121 	.globl _PX0L
                                    122 	.globl _PT0L
                                    123 	.globl _PX1L
                                    124 	.globl _PT1L
                                    125 	.globl _PSL
                                    126 	.globl _PT2L
                                    127 	.globl _PPCL
                                    128 	.globl _EC
                                    129 	.globl _CCF0
                                    130 	.globl _CCF1
                                    131 	.globl _CCF2
                                    132 	.globl _CCF3
                                    133 	.globl _CCF4
                                    134 	.globl _CR
                                    135 	.globl _CF
                                    136 	.globl _TF2
                                    137 	.globl _EXF2
                                    138 	.globl _RCLK
                                    139 	.globl _TCLK
                                    140 	.globl _EXEN2
                                    141 	.globl _TR2
                                    142 	.globl _C_T2
                                    143 	.globl _CP_RL2
                                    144 	.globl _T2CON_7
                                    145 	.globl _T2CON_6
                                    146 	.globl _T2CON_5
                                    147 	.globl _T2CON_4
                                    148 	.globl _T2CON_3
                                    149 	.globl _T2CON_2
                                    150 	.globl _T2CON_1
                                    151 	.globl _T2CON_0
                                    152 	.globl _PT2
                                    153 	.globl _ET2
                                    154 	.globl _B
                                    155 	.globl _ACC
                                    156 	.globl _PSW
                                    157 	.globl _IP
                                    158 	.globl _P3
                                    159 	.globl _IE
                                    160 	.globl _P2
                                    161 	.globl _SBUF
                                    162 	.globl _SCON
                                    163 	.globl _P1
                                    164 	.globl _TH1
                                    165 	.globl _TH0
                                    166 	.globl _TL1
                                    167 	.globl _TL0
                                    168 	.globl _TMOD
                                    169 	.globl _TCON
                                    170 	.globl _PCON
                                    171 	.globl _DPH
                                    172 	.globl _DPL
                                    173 	.globl _SP
                                    174 	.globl _P0
                                    175 	.globl _SBUF0
                                    176 	.globl _DP0L
                                    177 	.globl _DP0H
                                    178 	.globl _EECON
                                    179 	.globl _KBF
                                    180 	.globl _KBE
                                    181 	.globl _KBLS
                                    182 	.globl _BRL
                                    183 	.globl _BDRCON
                                    184 	.globl _T2MOD
                                    185 	.globl _SPDAT
                                    186 	.globl _SPSTA
                                    187 	.globl _SPCON
                                    188 	.globl _SADEN
                                    189 	.globl _SADDR
                                    190 	.globl _WDTPRG
                                    191 	.globl _WDTRST
                                    192 	.globl _P5
                                    193 	.globl _P4
                                    194 	.globl _IPH1
                                    195 	.globl _IPL1
                                    196 	.globl _IPH0
                                    197 	.globl _IPL0
                                    198 	.globl _IEN1
                                    199 	.globl _IEN0
                                    200 	.globl _CMOD
                                    201 	.globl _CL
                                    202 	.globl _CH
                                    203 	.globl _CCON
                                    204 	.globl _CCAPM4
                                    205 	.globl _CCAPM3
                                    206 	.globl _CCAPM2
                                    207 	.globl _CCAPM1
                                    208 	.globl _CCAPM0
                                    209 	.globl _CCAP4L
                                    210 	.globl _CCAP3L
                                    211 	.globl _CCAP2L
                                    212 	.globl _CCAP1L
                                    213 	.globl _CCAP0L
                                    214 	.globl _CCAP4H
                                    215 	.globl _CCAP3H
                                    216 	.globl _CCAP2H
                                    217 	.globl _CCAP1H
                                    218 	.globl _CCAP0H
                                    219 	.globl _CKCON1
                                    220 	.globl _CKCON0
                                    221 	.globl _CKRL
                                    222 	.globl _AUXR1
                                    223 	.globl _AUXR
                                    224 	.globl _TH2
                                    225 	.globl _TL2
                                    226 	.globl _RCAP2H
                                    227 	.globl _RCAP2L
                                    228 	.globl _T2CON
                                    229 	.globl _buffer_size_arr
                                    230 	.globl _command_characters_detected
                                    231 	.globl _total_characters_detected
                                    232 	.globl _storage_character_detected
                                    233 	.globl _ptr_buffer1
                                    234 	.globl _buffer1
                                    235 	.globl _ptr_buffer0
                                    236 	.globl _buffer0
                                    237 	.globl _buffer_size
                                    238 	.globl _new_buffer_arr
                                    239 ;--------------------------------------------------------
                                    240 ; special function registers
                                    241 ;--------------------------------------------------------
                                    242 	.area RSEG    (ABS,DATA)
      000000                        243 	.org 0x0000
                           0000C8   244 _T2CON	=	0x00c8
                           0000CA   245 _RCAP2L	=	0x00ca
                           0000CB   246 _RCAP2H	=	0x00cb
                           0000CC   247 _TL2	=	0x00cc
                           0000CD   248 _TH2	=	0x00cd
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 _AUXR1	=	0x00a2
                           000097   251 _CKRL	=	0x0097
                           00008F   252 _CKCON0	=	0x008f
                           0000AF   253 _CKCON1	=	0x00af
                           0000FA   254 _CCAP0H	=	0x00fa
                           0000FB   255 _CCAP1H	=	0x00fb
                           0000FC   256 _CCAP2H	=	0x00fc
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 _CCAP4H	=	0x00fe
                           0000EA   259 _CCAP0L	=	0x00ea
                           0000EB   260 _CCAP1L	=	0x00eb
                           0000EC   261 _CCAP2L	=	0x00ec
                           0000ED   262 _CCAP3L	=	0x00ed
                           0000EE   263 _CCAP4L	=	0x00ee
                           0000DA   264 _CCAPM0	=	0x00da
                           0000DB   265 _CCAPM1	=	0x00db
                           0000DC   266 _CCAPM2	=	0x00dc
                           0000DD   267 _CCAPM3	=	0x00dd
                           0000DE   268 _CCAPM4	=	0x00de
                           0000D8   269 _CCON	=	0x00d8
                           0000F9   270 _CH	=	0x00f9
                           0000E9   271 _CL	=	0x00e9
                           0000D9   272 _CMOD	=	0x00d9
                           0000A8   273 _IEN0	=	0x00a8
                           0000B1   274 _IEN1	=	0x00b1
                           0000B8   275 _IPL0	=	0x00b8
                           0000B7   276 _IPH0	=	0x00b7
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000C0   279 _P4	=	0x00c0
                           0000E8   280 _P5	=	0x00e8
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A9   283 _SADDR	=	0x00a9
                           0000B9   284 _SADEN	=	0x00b9
                           0000C3   285 _SPCON	=	0x00c3
                           0000C4   286 _SPSTA	=	0x00c4
                           0000C5   287 _SPDAT	=	0x00c5
                           0000C9   288 _T2MOD	=	0x00c9
                           00009B   289 _BDRCON	=	0x009b
                           00009A   290 _BRL	=	0x009a
                           00009C   291 _KBLS	=	0x009c
                           00009D   292 _KBE	=	0x009d
                           00009E   293 _KBF	=	0x009e
                           0000D2   294 _EECON	=	0x00d2
                           000083   295 _DP0H	=	0x0083
                           000082   296 _DP0L	=	0x0082
                           000099   297 _SBUF0	=	0x0099
                           000080   298 _P0	=	0x0080
                           000081   299 _SP	=	0x0081
                           000082   300 _DPL	=	0x0082
                           000083   301 _DPH	=	0x0083
                           000087   302 _PCON	=	0x0087
                           000088   303 _TCON	=	0x0088
                           000089   304 _TMOD	=	0x0089
                           00008A   305 _TL0	=	0x008a
                           00008B   306 _TL1	=	0x008b
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           000090   309 _P1	=	0x0090
                           000098   310 _SCON	=	0x0098
                           000099   311 _SBUF	=	0x0099
                           0000A0   312 _P2	=	0x00a0
                           0000A8   313 _IE	=	0x00a8
                           0000B0   314 _P3	=	0x00b0
                           0000B8   315 _IP	=	0x00b8
                           0000D0   316 _PSW	=	0x00d0
                           0000E0   317 _ACC	=	0x00e0
                           0000F0   318 _B	=	0x00f0
                                    319 ;--------------------------------------------------------
                                    320 ; special function bits
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           0000AD   324 _ET2	=	0x00ad
                           0000BD   325 _PT2	=	0x00bd
                           0000C8   326 _T2CON_0	=	0x00c8
                           0000C9   327 _T2CON_1	=	0x00c9
                           0000CA   328 _T2CON_2	=	0x00ca
                           0000CB   329 _T2CON_3	=	0x00cb
                           0000CC   330 _T2CON_4	=	0x00cc
                           0000CD   331 _T2CON_5	=	0x00cd
                           0000CE   332 _T2CON_6	=	0x00ce
                           0000CF   333 _T2CON_7	=	0x00cf
                           0000C8   334 _CP_RL2	=	0x00c8
                           0000C9   335 _C_T2	=	0x00c9
                           0000CA   336 _TR2	=	0x00ca
                           0000CB   337 _EXEN2	=	0x00cb
                           0000CC   338 _TCLK	=	0x00cc
                           0000CD   339 _RCLK	=	0x00cd
                           0000CE   340 _EXF2	=	0x00ce
                           0000CF   341 _TF2	=	0x00cf
                           0000DF   342 _CF	=	0x00df
                           0000DE   343 _CR	=	0x00de
                           0000DC   344 _CCF4	=	0x00dc
                           0000DB   345 _CCF3	=	0x00db
                           0000DA   346 _CCF2	=	0x00da
                           0000D9   347 _CCF1	=	0x00d9
                           0000D8   348 _CCF0	=	0x00d8
                           0000AE   349 _EC	=	0x00ae
                           0000BE   350 _PPCL	=	0x00be
                           0000BD   351 _PT2L	=	0x00bd
                           0000BC   352 _PSL	=	0x00bc
                           0000BB   353 _PT1L	=	0x00bb
                           0000BA   354 _PX1L	=	0x00ba
                           0000B9   355 _PT0L	=	0x00b9
                           0000B8   356 _PX0L	=	0x00b8
                           0000C0   357 _P4_0	=	0x00c0
                           0000C1   358 _P4_1	=	0x00c1
                           0000C2   359 _P4_2	=	0x00c2
                           0000C3   360 _P4_3	=	0x00c3
                           0000C4   361 _P4_4	=	0x00c4
                           0000C5   362 _P4_5	=	0x00c5
                           0000C6   363 _P4_6	=	0x00c6
                           0000C7   364 _P4_7	=	0x00c7
                           0000E8   365 _P5_0	=	0x00e8
                           0000E9   366 _P5_1	=	0x00e9
                           0000EA   367 _P5_2	=	0x00ea
                           0000EB   368 _P5_3	=	0x00eb
                           0000EC   369 _P5_4	=	0x00ec
                           0000ED   370 _P5_5	=	0x00ed
                           0000EE   371 _P5_6	=	0x00ee
                           0000EF   372 _P5_7	=	0x00ef
                           0000F0   373 _BREG_F0	=	0x00f0
                           0000F1   374 _BREG_F1	=	0x00f1
                           0000F2   375 _BREG_F2	=	0x00f2
                           0000F3   376 _BREG_F3	=	0x00f3
                           0000F4   377 _BREG_F4	=	0x00f4
                           0000F5   378 _BREG_F5	=	0x00f5
                           0000F6   379 _BREG_F6	=	0x00f6
                           0000F7   380 _BREG_F7	=	0x00f7
                           0000B0   381 _RXD0	=	0x00b0
                           0000B1   382 _TXD0	=	0x00b1
                           000080   383 _P0_0	=	0x0080
                           000081   384 _P0_1	=	0x0081
                           000082   385 _P0_2	=	0x0082
                           000083   386 _P0_3	=	0x0083
                           000084   387 _P0_4	=	0x0084
                           000085   388 _P0_5	=	0x0085
                           000086   389 _P0_6	=	0x0086
                           000087   390 _P0_7	=	0x0087
                           000088   391 _IT0	=	0x0088
                           000089   392 _IE0	=	0x0089
                           00008A   393 _IT1	=	0x008a
                           00008B   394 _IE1	=	0x008b
                           00008C   395 _TR0	=	0x008c
                           00008D   396 _TF0	=	0x008d
                           00008E   397 _TR1	=	0x008e
                           00008F   398 _TF1	=	0x008f
                           000090   399 _P1_0	=	0x0090
                           000091   400 _P1_1	=	0x0091
                           000092   401 _P1_2	=	0x0092
                           000093   402 _P1_3	=	0x0093
                           000094   403 _P1_4	=	0x0094
                           000095   404 _P1_5	=	0x0095
                           000096   405 _P1_6	=	0x0096
                           000097   406 _P1_7	=	0x0097
                           000098   407 _RI	=	0x0098
                           000099   408 _TI	=	0x0099
                           00009A   409 _RB8	=	0x009a
                           00009B   410 _TB8	=	0x009b
                           00009C   411 _REN	=	0x009c
                           00009D   412 _SM2	=	0x009d
                           00009E   413 _SM1	=	0x009e
                           00009F   414 _SM0	=	0x009f
                           0000A0   415 _P2_0	=	0x00a0
                           0000A1   416 _P2_1	=	0x00a1
                           0000A2   417 _P2_2	=	0x00a2
                           0000A3   418 _P2_3	=	0x00a3
                           0000A4   419 _P2_4	=	0x00a4
                           0000A5   420 _P2_5	=	0x00a5
                           0000A6   421 _P2_6	=	0x00a6
                           0000A7   422 _P2_7	=	0x00a7
                           0000A8   423 _EX0	=	0x00a8
                           0000A9   424 _ET0	=	0x00a9
                           0000AA   425 _EX1	=	0x00aa
                           0000AB   426 _ET1	=	0x00ab
                           0000AC   427 _ES	=	0x00ac
                           0000AF   428 _EA	=	0x00af
                           0000B0   429 _P3_0	=	0x00b0
                           0000B1   430 _P3_1	=	0x00b1
                           0000B2   431 _P3_2	=	0x00b2
                           0000B3   432 _P3_3	=	0x00b3
                           0000B4   433 _P3_4	=	0x00b4
                           0000B5   434 _P3_5	=	0x00b5
                           0000B6   435 _P3_6	=	0x00b6
                           0000B7   436 _P3_7	=	0x00b7
                           0000B0   437 _RXD	=	0x00b0
                           0000B1   438 _TXD	=	0x00b1
                           0000B2   439 _INT0	=	0x00b2
                           0000B3   440 _INT1	=	0x00b3
                           0000B4   441 _T0	=	0x00b4
                           0000B5   442 _T1	=	0x00b5
                           0000B6   443 _WR	=	0x00b6
                           0000B7   444 _RD	=	0x00b7
                           0000B8   445 _PX0	=	0x00b8
                           0000B9   446 _PT0	=	0x00b9
                           0000BA   447 _PX1	=	0x00ba
                           0000BB   448 _PT1	=	0x00bb
                           0000BC   449 _PS	=	0x00bc
                           0000D0   450 _P	=	0x00d0
                           0000D1   451 _F1	=	0x00d1
                           0000D2   452 _OV	=	0x00d2
                           0000D3   453 _RS0	=	0x00d3
                           0000D4   454 _RS1	=	0x00d4
                           0000D5   455 _F0	=	0x00d5
                           0000D6   456 _AC	=	0x00d6
                           0000D7   457 _CY	=	0x00d7
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable register banks
                                    460 ;--------------------------------------------------------
                                    461 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        462 	.ds 8
                                    463 ;--------------------------------------------------------
                                    464 ; internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area DSEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable items in internal ram
                                    469 ;--------------------------------------------------------
                                    470 ;--------------------------------------------------------
                                    471 ; Stack segment in internal ram
                                    472 ;--------------------------------------------------------
                                    473 	.area	SSEG
      00002B                        474 __start__stack:
      00002B                        475 	.ds	1
                                    476 
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
                                    490 ;--------------------------------------------------------
                                    491 ; paged external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area PSEG    (PAG,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XSEG    (XDATA)
      001B8F                        498 _new_buffer_arr::
      001B8F                        499 	.ds 200
      001C57                        500 _main_i_65537_54:
      001C57                        501 	.ds 2
      001C59                        502 _main_new_buffer_index_65537_54:
      001C59                        503 	.ds 2
      001C5B                        504 _main_free_buffer_count_65537_54:
      001C5B                        505 	.ds 2
      001C5D                        506 _main_filled_buffer_count_65537_54:
      001C5D                        507 	.ds 2
      001C5F                        508 _main_storage_character_count_65538_55:
      001C5F                        509 	.ds 2
      001C61                        510 _main_total_characters_count_65538_55:
      001C61                        511 	.ds 2
      001C63                        512 _main_buffer0_allocated_65538_55:
      001C63                        513 	.ds 2
                                    514 ;--------------------------------------------------------
                                    515 ; absolute external ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XABS    (ABS,XDATA)
                                    518 ;--------------------------------------------------------
                                    519 ; external initialized ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XISEG   (XDATA)
      001D95                        522 _buffer_size::
      001D95                        523 	.ds 2
      001D97                        524 _buffer0::
      001D97                        525 	.ds 2
      001D99                        526 _ptr_buffer0::
      001D99                        527 	.ds 2
      001D9B                        528 _buffer1::
      001D9B                        529 	.ds 2
      001D9D                        530 _ptr_buffer1::
      001D9D                        531 	.ds 2
      001D9F                        532 _storage_character_detected::
      001D9F                        533 	.ds 2
      001DA1                        534 _total_characters_detected::
      001DA1                        535 	.ds 2
      001DA3                        536 _command_characters_detected::
      001DA3                        537 	.ds 2
      001DA5                        538 _buffer_size_arr::
      001DA5                        539 	.ds 600
                                    540 	.area HOME    (CODE)
                                    541 	.area GSINIT0 (CODE)
                                    542 	.area GSINIT1 (CODE)
                                    543 	.area GSINIT2 (CODE)
                                    544 	.area GSINIT3 (CODE)
                                    545 	.area GSINIT4 (CODE)
                                    546 	.area GSINIT5 (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 	.area GSFINAL (CODE)
                                    549 	.area CSEG    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; interrupt vector
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
      002000                        554 __interrupt_vect:
      002000 02 20 06         [24]  555 	ljmp	__sdcc_gsinit_startup
                                    556 ;--------------------------------------------------------
                                    557 ; global & static initialisations
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 	.area GSFINAL (CODE)
                                    562 	.area GSINIT  (CODE)
                                    563 	.globl __sdcc_gsinit_startup
                                    564 	.globl __sdcc_program_startup
                                    565 	.globl __start__stack
                                    566 	.globl __mcs51_genXINIT
                                    567 	.globl __mcs51_genXRAMCLEAR
                                    568 	.globl __mcs51_genRAMCLEAR
                                    569 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  570 	ljmp	__sdcc_program_startup
                                    571 ;--------------------------------------------------------
                                    572 ; Home
                                    573 ;--------------------------------------------------------
                                    574 	.area HOME    (CODE)
                                    575 	.area HOME    (CODE)
      002003                        576 __sdcc_program_startup:
      002003 02 2E 79         [24]  577 	ljmp	_main
                                    578 ;	return from main will return to caller
                                    579 ;--------------------------------------------------------
                                    580 ; code
                                    581 ;--------------------------------------------------------
                                    582 	.area CSEG    (CODE)
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    585 ;------------------------------------------------------------
                                    586 ;	main.c:70: _sdcc_external_startup()
                                    587 ;	-----------------------------------------
                                    588 ;	 function _sdcc_external_startup
                                    589 ;	-----------------------------------------
      002E72                        590 __sdcc_external_startup:
                           000007   591 	ar7 = 0x07
                           000006   592 	ar6 = 0x06
                           000005   593 	ar5 = 0x05
                           000004   594 	ar4 = 0x04
                           000003   595 	ar3 = 0x03
                           000002   596 	ar2 = 0x02
                           000001   597 	ar1 = 0x01
                           000000   598 	ar0 = 0x00
                                    599 ;	main.c:73: AUXR |= (XRS1 | XRS0);
      002E72 43 8E 0C         [24]  600 	orl	_AUXR,#0x0c
                                    601 ;	main.c:76: return 0;
      002E75 90 00 00         [24]  602 	mov	dptr,#0x0000
                                    603 ;	main.c:77: }
      002E78 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'main'
                                    607 ;------------------------------------------------------------
                                    608 ;i                         Allocated with name '_main_i_65537_54'
                                    609 ;buffer_array_index        Allocated with name '_main_buffer_array_index_65537_54'
                                    610 ;all_buff_cleared          Allocated with name '_main_all_buff_cleared_65537_54'
                                    611 ;new_buffer_index          Allocated with name '_main_new_buffer_index_65537_54'
                                    612 ;free_buffer_count         Allocated with name '_main_free_buffer_count_65537_54'
                                    613 ;filled_buffer_count       Allocated with name '_main_filled_buffer_count_65537_54'
                                    614 ;storage_character_count   Allocated with name '_main_storage_character_count_65538_55'
                                    615 ;total_characters_count    Allocated with name '_main_total_characters_count_65538_55'
                                    616 ;buffer0_allocated         Allocated with name '_main_buffer0_allocated_65538_55'
                                    617 ;buffer0_ptr               Allocated with name '_main_buffer0_ptr_65539_61'
                                    618 ;i                         Allocated with name '_main_i_131075_62'
                                    619 ;ch                        Allocated with name '_main_ch_131076_65'
                                    620 ;------------------------------------------------------------
                                    621 ;	main.c:83: void main(void)
                                    622 ;	-----------------------------------------
                                    623 ;	 function main
                                    624 ;	-----------------------------------------
      002E79                        625 _main:
                                    626 ;	main.c:87: printf_tiny("\033[1;35m|***********************************************|\n\r");
      002E79 74 D0            [12]  627 	mov	a,#___str_0
      002E7B C0 E0            [24]  628 	push	acc
      002E7D 74 4E            [12]  629 	mov	a,#(___str_0 >> 8)
      002E7F C0 E0            [24]  630 	push	acc
      002E81 12 36 00         [24]  631 	lcall	_printf_tiny
      002E84 15 81            [12]  632 	dec	sp
      002E86 15 81            [12]  633 	dec	sp
                                    634 ;	main.c:88: printf_tiny("|************ \033[1;36mUSER INTERFACE \033[1;35m*******************|\n\r");
      002E88 74 0B            [12]  635 	mov	a,#___str_1
      002E8A C0 E0            [24]  636 	push	acc
      002E8C 74 4F            [12]  637 	mov	a,#(___str_1 >> 8)
      002E8E C0 E0            [24]  638 	push	acc
      002E90 12 36 00         [24]  639 	lcall	_printf_tiny
      002E93 15 81            [12]  640 	dec	sp
      002E95 15 81            [12]  641 	dec	sp
                                    642 ;	main.c:89: printf_tiny("|  Choose a character from the below options    |\n\r");
      002E97 74 4D            [12]  643 	mov	a,#___str_2
      002E99 C0 E0            [24]  644 	push	acc
      002E9B 74 4F            [12]  645 	mov	a,#(___str_2 >> 8)
      002E9D C0 E0            [24]  646 	push	acc
      002E9F 12 36 00         [24]  647 	lcall	_printf_tiny
      002EA2 15 81            [12]  648 	dec	sp
      002EA4 15 81            [12]  649 	dec	sp
                                    650 ;	main.c:90: printf_tiny("|  \033[1;35ma-z\033[1;35m  | Character to store in the buffer      |\n\r");
      002EA6 74 81            [12]  651 	mov	a,#___str_3
      002EA8 C0 E0            [24]  652 	push	acc
      002EAA 74 4F            [12]  653 	mov	a,#(___str_3 >> 8)
      002EAC C0 E0            [24]  654 	push	acc
      002EAE 12 36 00         [24]  655 	lcall	_printf_tiny
      002EB1 15 81            [12]  656 	dec	sp
      002EB3 15 81            [12]  657 	dec	sp
                                    658 ;	main.c:91: printf_tiny("|  \033[1;35m+\033[1;35m    | Allocate a new buffer                 |\n\r");
      002EB5 74 C3            [12]  659 	mov	a,#___str_4
      002EB7 C0 E0            [24]  660 	push	acc
      002EB9 74 4F            [12]  661 	mov	a,#(___str_4 >> 8)
      002EBB C0 E0            [24]  662 	push	acc
      002EBD 12 36 00         [24]  663 	lcall	_printf_tiny
      002EC0 15 81            [12]  664 	dec	sp
      002EC2 15 81            [12]  665 	dec	sp
                                    666 ;	main.c:92: printf_tiny("|  \033[1;35m-\033[1;35m    | Delete a buffer                       |\n\r");
      002EC4 74 05            [12]  667 	mov	a,#___str_5
      002EC6 C0 E0            [24]  668 	push	acc
      002EC8 74 50            [12]  669 	mov	a,#(___str_5 >> 8)
      002ECA C0 E0            [24]  670 	push	acc
      002ECC 12 36 00         [24]  671 	lcall	_printf_tiny
      002ECF 15 81            [12]  672 	dec	sp
      002ED1 15 81            [12]  673 	dec	sp
                                    674 ;	main.c:93: printf_tiny("|  \033[1;35m?\033[1;35m    | Display the heap report               |\n\r");
      002ED3 74 47            [12]  675 	mov	a,#___str_6
      002ED5 C0 E0            [24]  676 	push	acc
      002ED7 74 50            [12]  677 	mov	a,#(___str_6 >> 8)
      002ED9 C0 E0            [24]  678 	push	acc
      002EDB 12 36 00         [24]  679 	lcall	_printf_tiny
      002EDE 15 81            [12]  680 	dec	sp
      002EE0 15 81            [12]  681 	dec	sp
                                    682 ;	main.c:94: printf_tiny("|  \033[1;35m=\033[1;35m    | Display contents of Buffer_0          |\n\r");
      002EE2 74 89            [12]  683 	mov	a,#___str_7
      002EE4 C0 E0            [24]  684 	push	acc
      002EE6 74 50            [12]  685 	mov	a,#(___str_7 >> 8)
      002EE8 C0 E0            [24]  686 	push	acc
      002EEA 12 36 00         [24]  687 	lcall	_printf_tiny
      002EED 15 81            [12]  688 	dec	sp
      002EEF 15 81            [12]  689 	dec	sp
                                    690 ;	main.c:95: printf_tiny("|  \033[1;35m@\033[1;35m    | Free all the buffers                  |\n\r");
      002EF1 74 CB            [12]  691 	mov	a,#___str_8
      002EF3 C0 E0            [24]  692 	push	acc
      002EF5 74 50            [12]  693 	mov	a,#(___str_8 >> 8)
      002EF7 C0 E0            [24]  694 	push	acc
      002EF9 12 36 00         [24]  695 	lcall	_printf_tiny
      002EFC 15 81            [12]  696 	dec	sp
      002EFE 15 81            [12]  697 	dec	sp
                                    698 ;	main.c:96: printf_tiny("\033[1;35m|***********************************************|\n\r");
      002F00 74 D0            [12]  699 	mov	a,#___str_0
      002F02 C0 E0            [24]  700 	push	acc
      002F04 74 4E            [12]  701 	mov	a,#(___str_0 >> 8)
      002F06 C0 E0            [24]  702 	push	acc
      002F08 12 36 00         [24]  703 	lcall	_printf_tiny
      002F0B 15 81            [12]  704 	dec	sp
      002F0D 15 81            [12]  705 	dec	sp
                                    706 ;	main.c:97: printf_tiny("|***********************************************|\n\r\n\r");
      002F0F 74 0D            [12]  707 	mov	a,#___str_9
      002F11 C0 E0            [24]  708 	push	acc
      002F13 74 51            [12]  709 	mov	a,#(___str_9 >> 8)
      002F15 C0 E0            [24]  710 	push	acc
      002F17 12 36 00         [24]  711 	lcall	_printf_tiny
      002F1A 15 81            [12]  712 	dec	sp
      002F1C 15 81            [12]  713 	dec	sp
                                    714 ;	main.c:103: __xdata int new_buffer_index = 2;
      002F1E 90 1C 59         [24]  715 	mov	dptr,#_main_new_buffer_index_65537_54
      002F21 74 02            [12]  716 	mov	a,#0x02
      002F23 F0               [24]  717 	movx	@dptr,a
      002F24 E4               [12]  718 	clr	a
      002F25 A3               [24]  719 	inc	dptr
      002F26 F0               [24]  720 	movx	@dptr,a
                                    721 ;	main.c:108: HERE:
      002F27                        722 00101$:
                                    723 ;	main.c:110: i = 0;
      002F27 90 1C 57         [24]  724 	mov	dptr,#_main_i_65537_54
      002F2A E4               [12]  725 	clr	a
      002F2B F0               [24]  726 	movx	@dptr,a
      002F2C A3               [24]  727 	inc	dptr
      002F2D F0               [24]  728 	movx	@dptr,a
                                    729 ;	main.c:113: __xdata int storage_character_count = 0;
      002F2E 90 1C 5F         [24]  730 	mov	dptr,#_main_storage_character_count_65538_55
      002F31 F0               [24]  731 	movx	@dptr,a
      002F32 A3               [24]  732 	inc	dptr
      002F33 F0               [24]  733 	movx	@dptr,a
                                    734 ;	main.c:114: __xdata int total_characters_count = 0;
      002F34 90 1C 61         [24]  735 	mov	dptr,#_main_total_characters_count_65538_55
      002F37 F0               [24]  736 	movx	@dptr,a
      002F38 A3               [24]  737 	inc	dptr
      002F39 F0               [24]  738 	movx	@dptr,a
                                    739 ;	main.c:117: __xdata int buffer0_allocated = 0;
      002F3A 90 1C 63         [24]  740 	mov	dptr,#_main_buffer0_allocated_65538_55
      002F3D F0               [24]  741 	movx	@dptr,a
      002F3E A3               [24]  742 	inc	dptr
      002F3F F0               [24]  743 	movx	@dptr,a
                                    744 ;	main.c:119: do {
      002F40                        745 00109$:
                                    746 ;	main.c:121: buffer_size = Buffer_Size_Error_Correction();
      002F40 12 20 62         [24]  747 	lcall	_Buffer_Size_Error_Correction
      002F43 AE 82            [24]  748 	mov	r6,dpl
      002F45 AF 83            [24]  749 	mov	r7,dph
      002F47 90 1D 95         [24]  750 	mov	dptr,#_buffer_size
      002F4A EE               [12]  751 	mov	a,r6
      002F4B F0               [24]  752 	movx	@dptr,a
      002F4C EF               [12]  753 	mov	a,r7
      002F4D A3               [24]  754 	inc	dptr
      002F4E F0               [24]  755 	movx	@dptr,a
                                    756 ;	main.c:124: if ((buffer0 = (__xdata char *)malloc(buffer_size)) == 0)
      002F4F 8E 82            [24]  757 	mov	dpl,r6
      002F51 8F 83            [24]  758 	mov	dph,r7
      002F53 12 37 45         [24]  759 	lcall	_malloc
      002F56 AE 82            [24]  760 	mov	r6,dpl
      002F58 AF 83            [24]  761 	mov	r7,dph
      002F5A 90 1D 97         [24]  762 	mov	dptr,#_buffer0
      002F5D EE               [12]  763 	mov	a,r6
      002F5E F0               [24]  764 	movx	@dptr,a
      002F5F EF               [12]  765 	mov	a,r7
      002F60 A3               [24]  766 	inc	dptr
      002F61 F0               [24]  767 	movx	@dptr,a
      002F62 EE               [12]  768 	mov	a,r6
      002F63 4F               [12]  769 	orl	a,r7
      002F64 70 34            [24]  770 	jnz	00106$
                                    771 ;	main.c:127: printf_tiny("\033[1;33mInvalid Malloc\t\t: Malloc on buffer0 failed!!\n\r");
      002F66 74 43            [12]  772 	mov	a,#___str_10
      002F68 C0 E0            [24]  773 	push	acc
      002F6A 74 51            [12]  774 	mov	a,#(___str_10 >> 8)
      002F6C C0 E0            [24]  775 	push	acc
      002F6E 12 36 00         [24]  776 	lcall	_printf_tiny
      002F71 15 81            [12]  777 	dec	sp
      002F73 15 81            [12]  778 	dec	sp
                                    779 ;	main.c:128: printf_tiny("\033[1;31mSuggested Action\t: Provide smaller buffer size!!\n\r");
      002F75 74 79            [12]  780 	mov	a,#___str_11
      002F77 C0 E0            [24]  781 	push	acc
      002F79 74 51            [12]  782 	mov	a,#(___str_11 >> 8)
      002F7B C0 E0            [24]  783 	push	acc
      002F7D 12 36 00         [24]  784 	lcall	_printf_tiny
      002F80 15 81            [12]  785 	dec	sp
      002F82 15 81            [12]  786 	dec	sp
                                    787 ;	main.c:130: free(buffer0);
      002F84 90 1D 97         [24]  788 	mov	dptr,#_buffer0
      002F87 E0               [24]  789 	movx	a,@dptr
      002F88 FE               [12]  790 	mov	r6,a
      002F89 A3               [24]  791 	inc	dptr
      002F8A E0               [24]  792 	movx	a,@dptr
      002F8B FF               [12]  793 	mov	r7,a
      002F8C 7D 00            [12]  794 	mov	r5,#0x00
      002F8E 8E 82            [24]  795 	mov	dpl,r6
      002F90 8F 83            [24]  796 	mov	dph,r7
      002F92 8D F0            [24]  797 	mov	b,r5
      002F94 12 33 6A         [24]  798 	lcall	_free
      002F97 02 30 1A         [24]  799 	ljmp	00110$
      002F9A                        800 00106$:
                                    801 ;	main.c:135: printf_tiny("\033[1;0mMalloc Successful : Buffer0 allocated\n\r");
      002F9A 74 B3            [12]  802 	mov	a,#___str_12
      002F9C C0 E0            [24]  803 	push	acc
      002F9E 74 51            [12]  804 	mov	a,#(___str_12 >> 8)
      002FA0 C0 E0            [24]  805 	push	acc
      002FA2 12 36 00         [24]  806 	lcall	_printf_tiny
      002FA5 15 81            [12]  807 	dec	sp
      002FA7 15 81            [12]  808 	dec	sp
                                    809 ;	main.c:136: buffer0_allocated = 1;
      002FA9 90 1C 63         [24]  810 	mov	dptr,#_main_buffer0_allocated_65538_55
      002FAC 74 01            [12]  811 	mov	a,#0x01
      002FAE F0               [24]  812 	movx	@dptr,a
      002FAF E4               [12]  813 	clr	a
      002FB0 A3               [24]  814 	inc	dptr
      002FB1 F0               [24]  815 	movx	@dptr,a
                                    816 ;	main.c:139: if ((buffer1 = (__xdata char *)malloc(buffer_size)) == 0)
      002FB2 90 1D 95         [24]  817 	mov	dptr,#_buffer_size
      002FB5 E0               [24]  818 	movx	a,@dptr
      002FB6 FE               [12]  819 	mov	r6,a
      002FB7 A3               [24]  820 	inc	dptr
      002FB8 E0               [24]  821 	movx	a,@dptr
      002FB9 FF               [12]  822 	mov	r7,a
      002FBA 8E 82            [24]  823 	mov	dpl,r6
      002FBC 8F 83            [24]  824 	mov	dph,r7
      002FBE 12 37 45         [24]  825 	lcall	_malloc
      002FC1 AE 82            [24]  826 	mov	r6,dpl
      002FC3 AF 83            [24]  827 	mov	r7,dph
      002FC5 90 1D 9B         [24]  828 	mov	dptr,#_buffer1
      002FC8 EE               [12]  829 	mov	a,r6
      002FC9 F0               [24]  830 	movx	@dptr,a
      002FCA EF               [12]  831 	mov	a,r7
      002FCB A3               [24]  832 	inc	dptr
      002FCC F0               [24]  833 	movx	@dptr,a
      002FCD EE               [12]  834 	mov	a,r6
      002FCE 4F               [12]  835 	orl	a,r7
      002FCF 70 3A            [24]  836 	jnz	00103$
                                    837 ;	main.c:142: printf_tiny("\033[1;31mInvalid Malloc: Malloc on buffer1 failed!!\n\r");
      002FD1 74 E1            [12]  838 	mov	a,#___str_13
      002FD3 C0 E0            [24]  839 	push	acc
      002FD5 74 51            [12]  840 	mov	a,#(___str_13 >> 8)
      002FD7 C0 E0            [24]  841 	push	acc
      002FD9 12 36 00         [24]  842 	lcall	_printf_tiny
      002FDC 15 81            [12]  843 	dec	sp
      002FDE 15 81            [12]  844 	dec	sp
                                    845 ;	main.c:143: printf_tiny("\033[1;31mSuggested Action\t: Provide smaller buffer size!!\n\r");
      002FE0 74 79            [12]  846 	mov	a,#___str_11
      002FE2 C0 E0            [24]  847 	push	acc
      002FE4 74 51            [12]  848 	mov	a,#(___str_11 >> 8)
      002FE6 C0 E0            [24]  849 	push	acc
      002FE8 12 36 00         [24]  850 	lcall	_printf_tiny
      002FEB 15 81            [12]  851 	dec	sp
      002FED 15 81            [12]  852 	dec	sp
                                    853 ;	main.c:145: free(buffer0);
      002FEF 90 1D 97         [24]  854 	mov	dptr,#_buffer0
      002FF2 E0               [24]  855 	movx	a,@dptr
      002FF3 FE               [12]  856 	mov	r6,a
      002FF4 A3               [24]  857 	inc	dptr
      002FF5 E0               [24]  858 	movx	a,@dptr
      002FF6 FF               [12]  859 	mov	r7,a
      002FF7 7D 00            [12]  860 	mov	r5,#0x00
      002FF9 8E 82            [24]  861 	mov	dpl,r6
      002FFB 8F 83            [24]  862 	mov	dph,r7
      002FFD 8D F0            [24]  863 	mov	b,r5
      002FFF 12 33 6A         [24]  864 	lcall	_free
                                    865 ;	main.c:146: buffer0_allocated = 0;
      003002 90 1C 63         [24]  866 	mov	dptr,#_main_buffer0_allocated_65538_55
      003005 E4               [12]  867 	clr	a
      003006 F0               [24]  868 	movx	@dptr,a
      003007 A3               [24]  869 	inc	dptr
      003008 F0               [24]  870 	movx	@dptr,a
      003009 80 0F            [24]  871 	sjmp	00110$
      00300B                        872 00103$:
                                    873 ;	main.c:151: printf_tiny("\033[1;0mMalloc Successful : Buffer1 allocated\n\r");
      00300B 74 15            [12]  874 	mov	a,#___str_14
      00300D C0 E0            [24]  875 	push	acc
      00300F 74 52            [12]  876 	mov	a,#(___str_14 >> 8)
      003011 C0 E0            [24]  877 	push	acc
      003013 12 36 00         [24]  878 	lcall	_printf_tiny
      003016 15 81            [12]  879 	dec	sp
      003018 15 81            [12]  880 	dec	sp
      00301A                        881 00110$:
                                    882 ;	main.c:155: } while (!buffer0_allocated || (buffer1 == 0));
      00301A 90 1C 63         [24]  883 	mov	dptr,#_main_buffer0_allocated_65538_55
      00301D E0               [24]  884 	movx	a,@dptr
      00301E F5 F0            [12]  885 	mov	b,a
      003020 A3               [24]  886 	inc	dptr
      003021 E0               [24]  887 	movx	a,@dptr
      003022 45 F0            [12]  888 	orl	a,b
      003024 70 03            [24]  889 	jnz	00214$
      003026 02 2F 40         [24]  890 	ljmp	00109$
      003029                        891 00214$:
      003029 90 1D 9B         [24]  892 	mov	dptr,#_buffer1
      00302C E0               [24]  893 	movx	a,@dptr
      00302D F5 F0            [12]  894 	mov	b,a
      00302F A3               [24]  895 	inc	dptr
      003030 E0               [24]  896 	movx	a,@dptr
      003031 45 F0            [12]  897 	orl	a,b
      003033 70 03            [24]  898 	jnz	00215$
      003035 02 2F 40         [24]  899 	ljmp	00109$
      003038                        900 00215$:
                                    901 ;	main.c:158: printf_tiny("\033[1;33m|***********************************************|\n\r");
      003038 74 43            [12]  902 	mov	a,#___str_15
      00303A C0 E0            [24]  903 	push	acc
      00303C 74 52            [12]  904 	mov	a,#(___str_15 >> 8)
      00303E C0 E0            [24]  905 	push	acc
      003040 12 36 00         [24]  906 	lcall	_printf_tiny
      003043 15 81            [12]  907 	dec	sp
      003045 15 81            [12]  908 	dec	sp
                                    909 ;	main.c:159: printf_tiny("|  Buffer0 and Buffer 1 Allocation Sucsessful   |\n\r");
      003047 74 7E            [12]  910 	mov	a,#___str_16
      003049 C0 E0            [24]  911 	push	acc
      00304B 74 52            [12]  912 	mov	a,#(___str_16 >> 8)
      00304D C0 E0            [24]  913 	push	acc
      00304F 12 36 00         [24]  914 	lcall	_printf_tiny
      003052 15 81            [12]  915 	dec	sp
      003054 15 81            [12]  916 	dec	sp
                                    917 ;	main.c:160: printf_tiny("\033[1;33m|***********************************************|\n\r");
      003056 74 43            [12]  918 	mov	a,#___str_15
      003058 C0 E0            [24]  919 	push	acc
      00305A 74 52            [12]  920 	mov	a,#(___str_15 >> 8)
      00305C C0 E0            [24]  921 	push	acc
      00305E 12 36 00         [24]  922 	lcall	_printf_tiny
      003061 15 81            [12]  923 	dec	sp
      003063 15 81            [12]  924 	dec	sp
                                    925 ;	main.c:163: char * buffer0_ptr = buffer0;
      003065 90 1D 97         [24]  926 	mov	dptr,#_buffer0
      003068 E0               [24]  927 	movx	a,@dptr
      003069 FE               [12]  928 	mov	r6,a
      00306A A3               [24]  929 	inc	dptr
      00306B E0               [24]  930 	movx	a,@dptr
      00306C FD               [12]  931 	mov	r5,a
      00306D 7F 00            [12]  932 	mov	r7,#0x00
                                    933 ;	main.c:164: for(int i=0;i< buffer_size;i++)
      00306F 7B 00            [12]  934 	mov	r3,#0x00
      003071 7C 00            [12]  935 	mov	r4,#0x00
      003073                        936 00135$:
      003073 90 1D 95         [24]  937 	mov	dptr,#_buffer_size
      003076 E0               [24]  938 	movx	a,@dptr
      003077 F9               [12]  939 	mov	r1,a
      003078 A3               [24]  940 	inc	dptr
      003079 E0               [24]  941 	movx	a,@dptr
      00307A FA               [12]  942 	mov	r2,a
      00307B C3               [12]  943 	clr	c
      00307C EB               [12]  944 	mov	a,r3
      00307D 99               [12]  945 	subb	a,r1
      00307E EC               [12]  946 	mov	a,r4
      00307F 64 80            [12]  947 	xrl	a,#0x80
      003081 8A F0            [24]  948 	mov	b,r2
      003083 63 F0 80         [24]  949 	xrl	b,#0x80
      003086 95 F0            [12]  950 	subb	a,b
      003088 50 1A            [24]  951 	jnc	00112$
                                    952 ;	main.c:166: buffer0_ptr[i] = 'ÿ';
      00308A EB               [12]  953 	mov	a,r3
      00308B 2E               [12]  954 	add	a,r6
      00308C F8               [12]  955 	mov	r0,a
      00308D EC               [12]  956 	mov	a,r4
      00308E 3D               [12]  957 	addc	a,r5
      00308F F9               [12]  958 	mov	r1,a
      003090 8F 02            [24]  959 	mov	ar2,r7
      003092 88 82            [24]  960 	mov	dpl,r0
      003094 89 83            [24]  961 	mov	dph,r1
      003096 8A F0            [24]  962 	mov	b,r2
      003098 74 FF            [12]  963 	mov	a,#0xff
      00309A 12 35 E5         [24]  964 	lcall	__gptrput
                                    965 ;	main.c:164: for(int i=0;i< buffer_size;i++)
      00309D 0B               [12]  966 	inc	r3
      00309E BB 00 D2         [24]  967 	cjne	r3,#0x00,00135$
      0030A1 0C               [12]  968 	inc	r4
      0030A2 80 CF            [24]  969 	sjmp	00135$
      0030A4                        970 00112$:
                                    971 ;	main.c:171: new_buffer_arr[0] = buffer0;
      0030A4 90 1D 97         [24]  972 	mov	dptr,#_buffer0
      0030A7 E0               [24]  973 	movx	a,@dptr
      0030A8 FE               [12]  974 	mov	r6,a
      0030A9 A3               [24]  975 	inc	dptr
      0030AA E0               [24]  976 	movx	a,@dptr
      0030AB FF               [12]  977 	mov	r7,a
      0030AC 90 1B 8F         [24]  978 	mov	dptr,#_new_buffer_arr
      0030AF EE               [12]  979 	mov	a,r6
      0030B0 F0               [24]  980 	movx	@dptr,a
      0030B1 EF               [12]  981 	mov	a,r7
      0030B2 A3               [24]  982 	inc	dptr
      0030B3 F0               [24]  983 	movx	@dptr,a
                                    984 ;	main.c:172: new_buffer_arr[1] = buffer1;
      0030B4 90 1D 9B         [24]  985 	mov	dptr,#_buffer1
      0030B7 E0               [24]  986 	movx	a,@dptr
      0030B8 FE               [12]  987 	mov	r6,a
      0030B9 A3               [24]  988 	inc	dptr
      0030BA E0               [24]  989 	movx	a,@dptr
      0030BB FF               [12]  990 	mov	r7,a
      0030BC 90 1B 91         [24]  991 	mov	dptr,#(_new_buffer_arr + 0x0002)
      0030BF EE               [12]  992 	mov	a,r6
      0030C0 F0               [24]  993 	movx	@dptr,a
      0030C1 EF               [12]  994 	mov	a,r7
      0030C2 A3               [24]  995 	inc	dptr
      0030C3 F0               [24]  996 	movx	@dptr,a
                                    997 ;	main.c:173: buffer_size_arr[0] = buffer_size ;
      0030C4 90 1D 95         [24]  998 	mov	dptr,#_buffer_size
      0030C7 E0               [24]  999 	movx	a,@dptr
      0030C8 FE               [12] 1000 	mov	r6,a
      0030C9 A3               [24] 1001 	inc	dptr
      0030CA E0               [24] 1002 	movx	a,@dptr
      0030CB FF               [12] 1003 	mov	r7,a
      0030CC 90 1D A5         [24] 1004 	mov	dptr,#_buffer_size_arr
      0030CF EE               [12] 1005 	mov	a,r6
      0030D0 F0               [24] 1006 	movx	@dptr,a
      0030D1 EF               [12] 1007 	mov	a,r7
      0030D2 A3               [24] 1008 	inc	dptr
      0030D3 F0               [24] 1009 	movx	@dptr,a
                                   1010 ;	main.c:174: buffer_size_arr[1] = buffer_size ;
      0030D4 90 1D 95         [24] 1011 	mov	dptr,#_buffer_size
      0030D7 E0               [24] 1012 	movx	a,@dptr
      0030D8 FE               [12] 1013 	mov	r6,a
      0030D9 A3               [24] 1014 	inc	dptr
      0030DA E0               [24] 1015 	movx	a,@dptr
      0030DB FF               [12] 1016 	mov	r7,a
      0030DC 90 1D A7         [24] 1017 	mov	dptr,#(_buffer_size_arr + 0x0002)
      0030DF EE               [12] 1018 	mov	a,r6
      0030E0 F0               [24] 1019 	movx	@dptr,a
      0030E1 EF               [12] 1020 	mov	a,r7
      0030E2 A3               [24] 1021 	inc	dptr
      0030E3 F0               [24] 1022 	movx	@dptr,a
                                   1023 ;	main.c:177: free_buffer_count = 0;
      0030E4 90 1C 5B         [24] 1024 	mov	dptr,#_main_free_buffer_count_65537_54
      0030E7 E4               [12] 1025 	clr	a
      0030E8 F0               [24] 1026 	movx	@dptr,a
      0030E9 A3               [24] 1027 	inc	dptr
      0030EA F0               [24] 1028 	movx	@dptr,a
                                   1029 ;	main.c:178: filled_buffer_count = 2;
      0030EB 90 1C 5D         [24] 1030 	mov	dptr,#_main_filled_buffer_count_65537_54
      0030EE 74 02            [12] 1031 	mov	a,#0x02
      0030F0 F0               [24] 1032 	movx	@dptr,a
      0030F1 E4               [12] 1033 	clr	a
      0030F2 A3               [24] 1034 	inc	dptr
      0030F3 F0               [24] 1035 	movx	@dptr,a
                                   1036 ;	main.c:181: while(1)
      0030F4                       1037 00132$:
                                   1038 ;	main.c:184: printf_tiny("\033[1;36m|***********************************************|\n\r");
      0030F4 74 B2            [12] 1039 	mov	a,#___str_17
      0030F6 C0 E0            [24] 1040 	push	acc
      0030F8 74 52            [12] 1041 	mov	a,#(___str_17 >> 8)
      0030FA C0 E0            [24] 1042 	push	acc
      0030FC 12 36 00         [24] 1043 	lcall	_printf_tiny
      0030FF 15 81            [12] 1044 	dec	sp
      003101 15 81            [12] 1045 	dec	sp
                                   1046 ;	main.c:185: printf_tiny("\033[1;36m|                Enter Character                |\n\r");
      003103 74 ED            [12] 1047 	mov	a,#___str_18
      003105 C0 E0            [24] 1048 	push	acc
      003107 74 52            [12] 1049 	mov	a,#(___str_18 >> 8)
      003109 C0 E0            [24] 1050 	push	acc
      00310B 12 36 00         [24] 1051 	lcall	_printf_tiny
      00310E 15 81            [12] 1052 	dec	sp
      003110 15 81            [12] 1053 	dec	sp
                                   1054 ;	main.c:186: printf_tiny("\033[1;36m|***********************************************|\n\r\033[1;0m");
      003112 74 28            [12] 1055 	mov	a,#___str_19
      003114 C0 E0            [24] 1056 	push	acc
      003116 74 53            [12] 1057 	mov	a,#(___str_19 >> 8)
      003118 C0 E0            [24] 1058 	push	acc
      00311A 12 36 00         [24] 1059 	lcall	_printf_tiny
      00311D 15 81            [12] 1060 	dec	sp
      00311F 15 81            [12] 1061 	dec	sp
                                   1062 ;	main.c:189: char ch = getchar();                    // Read a character from input
      003121 12 32 92         [24] 1063 	lcall	_getchar
      003124 AE 82            [24] 1064 	mov	r6,dpl
                                   1065 ;	main.c:190: putchar(ch);                            // Echo the character back to output
      003126 8E 05            [24] 1066 	mov	ar5,r6
      003128 7F 00            [12] 1067 	mov	r7,#0x00
      00312A 8D 82            [24] 1068 	mov	dpl,r5
      00312C 8F 83            [24] 1069 	mov	dph,r7
      00312E C0 07            [24] 1070 	push	ar7
      003130 C0 06            [24] 1071 	push	ar6
      003132 C0 05            [24] 1072 	push	ar5
      003134 12 32 A0         [24] 1073 	lcall	_putchar
                                   1074 ;	main.c:191: putchar(' ');                           // Add a space to separate characters for readability
      003137 90 00 20         [24] 1075 	mov	dptr,#0x0020
      00313A 12 32 A0         [24] 1076 	lcall	_putchar
                                   1077 ;	main.c:192: printf("\033[1;0m\r\n");                // Reset color to default and print a newline
      00313D 74 69            [12] 1078 	mov	a,#___str_20
      00313F C0 E0            [24] 1079 	push	acc
      003141 74 53            [12] 1080 	mov	a,#(___str_20 >> 8)
      003143 C0 E0            [24] 1081 	push	acc
      003145 74 80            [12] 1082 	mov	a,#0x80
      003147 C0 E0            [24] 1083 	push	acc
      003149 12 3A 30         [24] 1084 	lcall	_printf
      00314C 15 81            [12] 1085 	dec	sp
      00314E 15 81            [12] 1086 	dec	sp
      003150 15 81            [12] 1087 	dec	sp
      003152 D0 05            [24] 1088 	pop	ar5
      003154 D0 06            [24] 1089 	pop	ar6
      003156 D0 07            [24] 1090 	pop	ar7
                                   1091 ;	main.c:195: if (ch >= 'a' && ch <= 'z') {
      003158 BE 61 00         [24] 1092 	cjne	r6,#0x61,00218$
      00315B                       1093 00218$:
      00315B 40 68            [24] 1094 	jc	00124$
      00315D EE               [12] 1095 	mov	a,r6
      00315E 24 85            [12] 1096 	add	a,#0xff - 0x7a
      003160 40 63            [24] 1097 	jc	00124$
                                   1098 ;	main.c:196: if (i < buffer_size) {              // If there is still space in buffer0
      003162 90 1C 57         [24] 1099 	mov	dptr,#_main_i_65537_54
      003165 E0               [24] 1100 	movx	a,@dptr
      003166 FB               [12] 1101 	mov	r3,a
      003167 A3               [24] 1102 	inc	dptr
      003168 E0               [24] 1103 	movx	a,@dptr
      003169 FC               [12] 1104 	mov	r4,a
      00316A 90 1D 95         [24] 1105 	mov	dptr,#_buffer_size
      00316D E0               [24] 1106 	movx	a,@dptr
      00316E F9               [12] 1107 	mov	r1,a
      00316F A3               [24] 1108 	inc	dptr
      003170 E0               [24] 1109 	movx	a,@dptr
      003171 FA               [12] 1110 	mov	r2,a
      003172 C3               [12] 1111 	clr	c
      003173 EB               [12] 1112 	mov	a,r3
      003174 99               [12] 1113 	subb	a,r1
      003175 EC               [12] 1114 	mov	a,r4
      003176 64 80            [12] 1115 	xrl	a,#0x80
      003178 8A F0            [24] 1116 	mov	b,r2
      00317A 63 F0 80         [24] 1117 	xrl	b,#0x80
      00317D 95 F0            [12] 1118 	subb	a,b
      00317F 50 1F            [24] 1119 	jnc	00114$
                                   1120 ;	main.c:197: buffer0[i++] = ch;              // Store the character in buffer0
      003181 90 1C 57         [24] 1121 	mov	dptr,#_main_i_65537_54
      003184 74 01            [12] 1122 	mov	a,#0x01
      003186 2B               [12] 1123 	add	a,r3
      003187 F0               [24] 1124 	movx	@dptr,a
      003188 E4               [12] 1125 	clr	a
      003189 3C               [12] 1126 	addc	a,r4
      00318A A3               [24] 1127 	inc	dptr
      00318B F0               [24] 1128 	movx	@dptr,a
      00318C 90 1D 97         [24] 1129 	mov	dptr,#_buffer0
      00318F E0               [24] 1130 	movx	a,@dptr
      003190 F9               [12] 1131 	mov	r1,a
      003191 A3               [24] 1132 	inc	dptr
      003192 E0               [24] 1133 	movx	a,@dptr
      003193 FA               [12] 1134 	mov	r2,a
      003194 EB               [12] 1135 	mov	a,r3
      003195 29               [12] 1136 	add	a,r1
      003196 F5 82            [12] 1137 	mov	dpl,a
      003198 EC               [12] 1138 	mov	a,r4
      003199 3A               [12] 1139 	addc	a,r2
      00319A F5 83            [12] 1140 	mov	dph,a
      00319C EE               [12] 1141 	mov	a,r6
      00319D F0               [24] 1142 	movx	@dptr,a
      00319E 80 0B            [24] 1143 	sjmp	00115$
      0031A0                       1144 00114$:
                                   1145 ;	main.c:200: putchar(ch);
      0031A0 8D 82            [24] 1146 	mov	dpl,r5
      0031A2 8F 83            [24] 1147 	mov	dph,r7
      0031A4 C0 06            [24] 1148 	push	ar6
      0031A6 12 32 A0         [24] 1149 	lcall	_putchar
      0031A9 D0 06            [24] 1150 	pop	ar6
      0031AB                       1151 00115$:
                                   1152 ;	main.c:202: storage_character_count++;          // Increment the count of storage characters
      0031AB 90 1C 5F         [24] 1153 	mov	dptr,#_main_storage_character_count_65538_55
      0031AE E0               [24] 1154 	movx	a,@dptr
      0031AF 24 01            [12] 1155 	add	a,#0x01
      0031B1 F0               [24] 1156 	movx	@dptr,a
      0031B2 A3               [24] 1157 	inc	dptr
      0031B3 E0               [24] 1158 	movx	a,@dptr
      0031B4 34 00            [12] 1159 	addc	a,#0x00
      0031B6 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	main.c:203: total_characters_count++;           // Increment the count of total characters
      0031B7 90 1C 61         [24] 1162 	mov	dptr,#_main_total_characters_count_65538_55
      0031BA E0               [24] 1163 	movx	a,@dptr
      0031BB 24 01            [12] 1164 	add	a,#0x01
      0031BD F0               [24] 1165 	movx	@dptr,a
      0031BE A3               [24] 1166 	inc	dptr
      0031BF E0               [24] 1167 	movx	a,@dptr
      0031C0 34 00            [12] 1168 	addc	a,#0x00
      0031C2 F0               [24] 1169 	movx	@dptr,a
      0031C3 80 31            [24] 1170 	sjmp	00125$
      0031C5                       1171 00124$:
                                   1172 ;	main.c:204: } else if (ch == '+' || ch == '-' || ch == '?' ||
      0031C5 BE 2B 02         [24] 1173 	cjne	r6,#0x2b,00222$
      0031C8 80 17            [24] 1174 	sjmp	00116$
      0031CA                       1175 00222$:
      0031CA BE 2D 02         [24] 1176 	cjne	r6,#0x2d,00223$
      0031CD 80 12            [24] 1177 	sjmp	00116$
      0031CF                       1178 00223$:
      0031CF BE 3F 02         [24] 1179 	cjne	r6,#0x3f,00224$
      0031D2 80 0D            [24] 1180 	sjmp	00116$
      0031D4                       1181 00224$:
                                   1182 ;	main.c:205: ch == '=' || ch == '@') {
      0031D4 BE 3D 02         [24] 1183 	cjne	r6,#0x3d,00225$
      0031D7 80 08            [24] 1184 	sjmp	00116$
      0031D9                       1185 00225$:
      0031D9 BE 40 02         [24] 1186 	cjne	r6,#0x40,00226$
      0031DC 80 03            [24] 1187 	sjmp	00227$
      0031DE                       1188 00226$:
      0031DE 02 30 F4         [24] 1189 	ljmp	00132$
      0031E1                       1190 00227$:
      0031E1                       1191 00116$:
                                   1192 ;	main.c:207: total_characters_count++;           // Increment the count of total characters
      0031E1 90 1C 61         [24] 1193 	mov	dptr,#_main_total_characters_count_65538_55
      0031E4 E0               [24] 1194 	movx	a,@dptr
      0031E5 24 01            [12] 1195 	add	a,#0x01
      0031E7 F0               [24] 1196 	movx	@dptr,a
      0031E8 A3               [24] 1197 	inc	dptr
      0031E9 E0               [24] 1198 	movx	a,@dptr
      0031EA 34 00            [12] 1199 	addc	a,#0x00
      0031EC F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	main.c:208: command_characters_detected = 1;    // Set flag to indicate command character detected
      0031ED 90 1D A3         [24] 1202 	mov	dptr,#_command_characters_detected
      0031F0 74 01            [12] 1203 	mov	a,#0x01
      0031F2 F0               [24] 1204 	movx	@dptr,a
      0031F3 E4               [12] 1205 	clr	a
      0031F4 A3               [24] 1206 	inc	dptr
      0031F5 F0               [24] 1207 	movx	@dptr,a
                                   1208 ;	main.c:211: continue;
      0031F6                       1209 00125$:
                                   1210 ;	main.c:215: all_buff_cleared = command_processing(command_characters_detected, ch,
      0031F6 90 1D A3         [24] 1211 	mov	dptr,#_command_characters_detected
      0031F9 E0               [24] 1212 	movx	a,@dptr
      0031FA FD               [12] 1213 	mov	r5,a
      0031FB A3               [24] 1214 	inc	dptr
      0031FC E0               [24] 1215 	movx	a,@dptr
      0031FD FF               [12] 1216 	mov	r7,a
                                   1217 ;	main.c:216: &new_buffer_index, &free_buffer_count, &filled_buffer_count,
                                   1218 ;	main.c:217: &storage_character_count, &total_characters_count, buffer_size);
      0031FE 90 1D 95         [24] 1219 	mov	dptr,#_buffer_size
      003201 E0               [24] 1220 	movx	a,@dptr
      003202 FB               [12] 1221 	mov	r3,a
      003203 A3               [24] 1222 	inc	dptr
      003204 E0               [24] 1223 	movx	a,@dptr
      003205 FC               [12] 1224 	mov	r4,a
      003206 90 1B 7B         [24] 1225 	mov	dptr,#_command_processing_PARM_2
      003209 EE               [12] 1226 	mov	a,r6
      00320A F0               [24] 1227 	movx	@dptr,a
      00320B 90 1B 7C         [24] 1228 	mov	dptr,#_command_processing_PARM_3
      00320E 74 59            [12] 1229 	mov	a,#_main_new_buffer_index_65537_54
      003210 F0               [24] 1230 	movx	@dptr,a
      003211 74 1C            [12] 1231 	mov	a,#(_main_new_buffer_index_65537_54 >> 8)
      003213 A3               [24] 1232 	inc	dptr
      003214 F0               [24] 1233 	movx	@dptr,a
      003215 E4               [12] 1234 	clr	a
      003216 A3               [24] 1235 	inc	dptr
      003217 F0               [24] 1236 	movx	@dptr,a
      003218 90 1B 7F         [24] 1237 	mov	dptr,#_command_processing_PARM_4
      00321B 74 5B            [12] 1238 	mov	a,#_main_free_buffer_count_65537_54
      00321D F0               [24] 1239 	movx	@dptr,a
      00321E 74 1C            [12] 1240 	mov	a,#(_main_free_buffer_count_65537_54 >> 8)
      003220 A3               [24] 1241 	inc	dptr
      003221 F0               [24] 1242 	movx	@dptr,a
      003222 E4               [12] 1243 	clr	a
      003223 A3               [24] 1244 	inc	dptr
      003224 F0               [24] 1245 	movx	@dptr,a
      003225 90 1B 82         [24] 1246 	mov	dptr,#_command_processing_PARM_5
      003228 74 5D            [12] 1247 	mov	a,#_main_filled_buffer_count_65537_54
      00322A F0               [24] 1248 	movx	@dptr,a
      00322B 74 1C            [12] 1249 	mov	a,#(_main_filled_buffer_count_65537_54 >> 8)
      00322D A3               [24] 1250 	inc	dptr
      00322E F0               [24] 1251 	movx	@dptr,a
      00322F E4               [12] 1252 	clr	a
      003230 A3               [24] 1253 	inc	dptr
      003231 F0               [24] 1254 	movx	@dptr,a
      003232 90 1B 85         [24] 1255 	mov	dptr,#_command_processing_PARM_6
      003235 74 5F            [12] 1256 	mov	a,#_main_storage_character_count_65538_55
      003237 F0               [24] 1257 	movx	@dptr,a
      003238 74 1C            [12] 1258 	mov	a,#(_main_storage_character_count_65538_55 >> 8)
      00323A A3               [24] 1259 	inc	dptr
      00323B F0               [24] 1260 	movx	@dptr,a
      00323C E4               [12] 1261 	clr	a
      00323D A3               [24] 1262 	inc	dptr
      00323E F0               [24] 1263 	movx	@dptr,a
      00323F 90 1B 88         [24] 1264 	mov	dptr,#_command_processing_PARM_7
      003242 74 61            [12] 1265 	mov	a,#_main_total_characters_count_65538_55
      003244 F0               [24] 1266 	movx	@dptr,a
      003245 74 1C            [12] 1267 	mov	a,#(_main_total_characters_count_65538_55 >> 8)
      003247 A3               [24] 1268 	inc	dptr
      003248 F0               [24] 1269 	movx	@dptr,a
      003249 E4               [12] 1270 	clr	a
      00324A A3               [24] 1271 	inc	dptr
      00324B F0               [24] 1272 	movx	@dptr,a
      00324C 90 1B 8B         [24] 1273 	mov	dptr,#_command_processing_PARM_8
      00324F EB               [12] 1274 	mov	a,r3
      003250 F0               [24] 1275 	movx	@dptr,a
      003251 EC               [12] 1276 	mov	a,r4
      003252 A3               [24] 1277 	inc	dptr
      003253 F0               [24] 1278 	movx	@dptr,a
      003254 8D 82            [24] 1279 	mov	dpl,r5
      003256 8F 83            [24] 1280 	mov	dph,r7
      003258 12 24 08         [24] 1281 	lcall	_command_processing
      00325B AE 82            [24] 1282 	mov	r6,dpl
      00325D AF 83            [24] 1283 	mov	r7,dph
                                   1284 ;	main.c:218: if (all_buff_cleared == ALL_BUFFER_CLEARED)
      00325F BE 01 1B         [24] 1285 	cjne	r6,#0x01,00128$
      003262 BF 00 18         [24] 1286 	cjne	r7,#0x00,00128$
                                   1287 ;	main.c:221: printf("\033[1;0mAll buffer cleared\r\nFed in the size for buffer 0 from start!!\r\n");
      003265 74 72            [12] 1288 	mov	a,#___str_21
      003267 C0 E0            [24] 1289 	push	acc
      003269 74 53            [12] 1290 	mov	a,#(___str_21 >> 8)
      00326B C0 E0            [24] 1291 	push	acc
      00326D 74 80            [12] 1292 	mov	a,#0x80
      00326F C0 E0            [24] 1293 	push	acc
      003271 12 3A 30         [24] 1294 	lcall	_printf
      003274 15 81            [12] 1295 	dec	sp
      003276 15 81            [12] 1296 	dec	sp
      003278 15 81            [12] 1297 	dec	sp
                                   1298 ;	main.c:222: goto HERE;
      00327A 02 2F 27         [24] 1299 	ljmp	00101$
      00327D                       1300 00128$:
                                   1301 ;	main.c:224: if (all_buff_cleared == ONLY_BUFFER0_CLEARED)
      00327D BE 02 05         [24] 1302 	cjne	r6,#0x02,00230$
      003280 BF 00 02         [24] 1303 	cjne	r7,#0x00,00230$
      003283 80 03            [24] 1304 	sjmp	00231$
      003285                       1305 00230$:
      003285 02 30 F4         [24] 1306 	ljmp	00132$
      003288                       1307 00231$:
                                   1308 ;	main.c:227: i=0;
      003288 90 1C 57         [24] 1309 	mov	dptr,#_main_i_65537_54
      00328B E4               [12] 1310 	clr	a
      00328C F0               [24] 1311 	movx	@dptr,a
      00328D A3               [24] 1312 	inc	dptr
      00328E F0               [24] 1313 	movx	@dptr,a
                                   1314 ;	main.c:232: }
      00328F 02 30 F4         [24] 1315 	ljmp	00132$
                                   1316 	.area CSEG    (CODE)
                                   1317 	.area CONST   (CODE)
                                   1318 	.area CONST   (CODE)
      004ED0                       1319 ___str_0:
      004ED0 1B                    1320 	.db 0x1b
      004ED1 5B 31 3B 33 35 6D 7C  1321 	.ascii "[1;35m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004F08 0A                    1322 	.db 0x0a
      004F09 0D                    1323 	.db 0x0d
      004F0A 00                    1324 	.db 0x00
                                   1325 	.area CSEG    (CODE)
                                   1326 	.area CONST   (CODE)
      004F0B                       1327 ___str_1:
      004F0B 7C 2A 2A 2A 2A 2A 2A  1328 	.ascii "|************ "
             2A 2A 2A 2A 2A 2A 20
      004F19 1B                    1329 	.db 0x1b
      004F1A 5B 31 3B 33 36 6D 55  1330 	.ascii "[1;36mUSER INTERFACE "
             53 45 52 20 49 4E 54
             45 52 46 41 43 45 20
      004F2F 1B                    1331 	.db 0x1b
      004F30 5B 31 3B 33 35 6D 2A  1332 	.ascii "[1;35m*******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 7C
      004F4A 0A                    1333 	.db 0x0a
      004F4B 0D                    1334 	.db 0x0d
      004F4C 00                    1335 	.db 0x00
                                   1336 	.area CSEG    (CODE)
                                   1337 	.area CONST   (CODE)
      004F4D                       1338 ___str_2:
      004F4D 7C 20 20 43 68 6F 6F  1339 	.ascii "|  Choose a character from the below options    |"
             73 65 20 61 20 63 68
             61 72 61 63 74 65 72
             20 66 72 6F 6D 20 74
             68 65 20 62 65 6C 6F
             77 20 6F 70 74 69 6F
             6E 73 20 20 20 20 7C
      004F7E 0A                    1340 	.db 0x0a
      004F7F 0D                    1341 	.db 0x0d
      004F80 00                    1342 	.db 0x00
                                   1343 	.area CSEG    (CODE)
                                   1344 	.area CONST   (CODE)
      004F81                       1345 ___str_3:
      004F81 7C 20 20              1346 	.ascii "|  "
      004F84 1B                    1347 	.db 0x1b
      004F85 5B 31 3B 33 35 6D 61  1348 	.ascii "[1;35ma-z"
             2D 7A
      004F8E 1B                    1349 	.db 0x1b
      004F8F 5B 31 3B 33 35 6D 20  1350 	.ascii "[1;35m  | Character to store in the buffer      |"
             20 7C 20 43 68 61 72
             61 63 74 65 72 20 74
             6F 20 73 74 6F 72 65
             20 69 6E 20 74 68 65
             20 62 75 66 66 65 72
             20 20 20 20 20 20 7C
      004FC0 0A                    1351 	.db 0x0a
      004FC1 0D                    1352 	.db 0x0d
      004FC2 00                    1353 	.db 0x00
                                   1354 	.area CSEG    (CODE)
                                   1355 	.area CONST   (CODE)
      004FC3                       1356 ___str_4:
      004FC3 7C 20 20              1357 	.ascii "|  "
      004FC6 1B                    1358 	.db 0x1b
      004FC7 5B 31 3B 33 35 6D 2B  1359 	.ascii "[1;35m+"
      004FCE 1B                    1360 	.db 0x1b
      004FCF 5B 31 3B 33 35 6D 20  1361 	.ascii "[1;35m    | Allocate a new buffer                 |"
             20 20 20 7C 20 41 6C
             6C 6F 63 61 74 65 20
             61 20 6E 65 77 20 62
             75 66 66 65 72 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005002 0A                    1362 	.db 0x0a
      005003 0D                    1363 	.db 0x0d
      005004 00                    1364 	.db 0x00
                                   1365 	.area CSEG    (CODE)
                                   1366 	.area CONST   (CODE)
      005005                       1367 ___str_5:
      005005 7C 20 20              1368 	.ascii "|  "
      005008 1B                    1369 	.db 0x1b
      005009 5B 31 3B 33 35 6D 2D  1370 	.ascii "[1;35m-"
      005010 1B                    1371 	.db 0x1b
      005011 5B 31 3B 33 35 6D 20  1372 	.ascii "[1;35m    | Delete a buffer                       |"
             20 20 20 7C 20 44 65
             6C 65 74 65 20 61 20
             62 75 66 66 65 72 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005044 0A                    1373 	.db 0x0a
      005045 0D                    1374 	.db 0x0d
      005046 00                    1375 	.db 0x00
                                   1376 	.area CSEG    (CODE)
                                   1377 	.area CONST   (CODE)
      005047                       1378 ___str_6:
      005047 7C 20 20              1379 	.ascii "|  "
      00504A 1B                    1380 	.db 0x1b
      00504B 5B 31 3B 33 35 6D 3F  1381 	.ascii "[1;35m?"
      005052 1B                    1382 	.db 0x1b
      005053 5B 31 3B 33 35 6D 20  1383 	.ascii "[1;35m    | Display the heap report               |"
             20 20 20 7C 20 44 69
             73 70 6C 61 79 20 74
             68 65 20 68 65 61 70
             20 72 65 70 6F 72 74
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005086 0A                    1384 	.db 0x0a
      005087 0D                    1385 	.db 0x0d
      005088 00                    1386 	.db 0x00
                                   1387 	.area CSEG    (CODE)
                                   1388 	.area CONST   (CODE)
      005089                       1389 ___str_7:
      005089 7C 20 20              1390 	.ascii "|  "
      00508C 1B                    1391 	.db 0x1b
      00508D 5B 31 3B 33 35 6D 3D  1392 	.ascii "[1;35m="
      005094 1B                    1393 	.db 0x1b
      005095 5B 31 3B 33 35 6D 20  1394 	.ascii "[1;35m    | Display contents of Buffer_0          |"
             20 20 20 7C 20 44 69
             73 70 6C 61 79 20 63
             6F 6E 74 65 6E 74 73
             20 6F 66 20 42 75 66
             66 65 72 5F 30 20 20
             20 20 20 20 20 20 20
             20 7C
      0050C8 0A                    1395 	.db 0x0a
      0050C9 0D                    1396 	.db 0x0d
      0050CA 00                    1397 	.db 0x00
                                   1398 	.area CSEG    (CODE)
                                   1399 	.area CONST   (CODE)
      0050CB                       1400 ___str_8:
      0050CB 7C 20 20              1401 	.ascii "|  "
      0050CE 1B                    1402 	.db 0x1b
      0050CF 5B 31 3B 33 35 6D 40  1403 	.ascii "[1;35m@"
      0050D6 1B                    1404 	.db 0x1b
      0050D7 5B 31 3B 33 35 6D 20  1405 	.ascii "[1;35m    | Free all the buffers                  |"
             20 20 20 7C 20 46 72
             65 65 20 61 6C 6C 20
             74 68 65 20 62 75 66
             66 65 72 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      00510A 0A                    1406 	.db 0x0a
      00510B 0D                    1407 	.db 0x0d
      00510C 00                    1408 	.db 0x00
                                   1409 	.area CSEG    (CODE)
                                   1410 	.area CONST   (CODE)
      00510D                       1411 ___str_9:
      00510D 7C 2A 2A 2A 2A 2A 2A  1412 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      00513E 0A                    1413 	.db 0x0a
      00513F 0D                    1414 	.db 0x0d
      005140 0A                    1415 	.db 0x0a
      005141 0D                    1416 	.db 0x0d
      005142 00                    1417 	.db 0x00
                                   1418 	.area CSEG    (CODE)
                                   1419 	.area CONST   (CODE)
      005143                       1420 ___str_10:
      005143 1B                    1421 	.db 0x1b
      005144 5B 31 3B 33 33 6D 49  1422 	.ascii "[1;33mInvalid Malloc"
             6E 76 61 6C 69 64 20
             4D 61 6C 6C 6F 63
      005158 09                    1423 	.db 0x09
      005159 09                    1424 	.db 0x09
      00515A 3A 20 4D 61 6C 6C 6F  1425 	.ascii ": Malloc on buffer0 failed!!"
             63 20 6F 6E 20 62 75
             66 66 65 72 30 20 66
             61 69 6C 65 64 21 21
      005176 0A                    1426 	.db 0x0a
      005177 0D                    1427 	.db 0x0d
      005178 00                    1428 	.db 0x00
                                   1429 	.area CSEG    (CODE)
                                   1430 	.area CONST   (CODE)
      005179                       1431 ___str_11:
      005179 1B                    1432 	.db 0x1b
      00517A 5B 31 3B 33 31 6D 53  1433 	.ascii "[1;31mSuggested Action"
             75 67 67 65 73 74 65
             64 20 41 63 74 69 6F
             6E
      005190 09                    1434 	.db 0x09
      005191 3A 20 50 72 6F 76 69  1435 	.ascii ": Provide smaller buffer size!!"
             64 65 20 73 6D 61 6C
             6C 65 72 20 62 75 66
             66 65 72 20 73 69 7A
             65 21 21
      0051B0 0A                    1436 	.db 0x0a
      0051B1 0D                    1437 	.db 0x0d
      0051B2 00                    1438 	.db 0x00
                                   1439 	.area CSEG    (CODE)
                                   1440 	.area CONST   (CODE)
      0051B3                       1441 ___str_12:
      0051B3 1B                    1442 	.db 0x1b
      0051B4 5B 31 3B 30 6D 4D 61  1443 	.ascii "[1;0mMalloc Successful : Buffer0 allocated"
             6C 6C 6F 63 20 53 75
             63 63 65 73 73 66 75
             6C 20 3A 20 42 75 66
             66 65 72 30 20 61 6C
             6C 6F 63 61 74 65 64
      0051DE 0A                    1444 	.db 0x0a
      0051DF 0D                    1445 	.db 0x0d
      0051E0 00                    1446 	.db 0x00
                                   1447 	.area CSEG    (CODE)
                                   1448 	.area CONST   (CODE)
      0051E1                       1449 ___str_13:
      0051E1 1B                    1450 	.db 0x1b
      0051E2 5B 31 3B 33 31 6D 49  1451 	.ascii "[1;31mInvalid Malloc: Malloc on buffer1 failed!!"
             6E 76 61 6C 69 64 20
             4D 61 6C 6C 6F 63 3A
             20 4D 61 6C 6C 6F 63
             20 6F 6E 20 62 75 66
             66 65 72 31 20 66 61
             69 6C 65 64 21 21
      005212 0A                    1452 	.db 0x0a
      005213 0D                    1453 	.db 0x0d
      005214 00                    1454 	.db 0x00
                                   1455 	.area CSEG    (CODE)
                                   1456 	.area CONST   (CODE)
      005215                       1457 ___str_14:
      005215 1B                    1458 	.db 0x1b
      005216 5B 31 3B 30 6D 4D 61  1459 	.ascii "[1;0mMalloc Successful : Buffer1 allocated"
             6C 6C 6F 63 20 53 75
             63 63 65 73 73 66 75
             6C 20 3A 20 42 75 66
             66 65 72 31 20 61 6C
             6C 6F 63 61 74 65 64
      005240 0A                    1460 	.db 0x0a
      005241 0D                    1461 	.db 0x0d
      005242 00                    1462 	.db 0x00
                                   1463 	.area CSEG    (CODE)
                                   1464 	.area CONST   (CODE)
      005243                       1465 ___str_15:
      005243 1B                    1466 	.db 0x1b
      005244 5B 31 3B 33 33 6D 7C  1467 	.ascii "[1;33m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      00527B 0A                    1468 	.db 0x0a
      00527C 0D                    1469 	.db 0x0d
      00527D 00                    1470 	.db 0x00
                                   1471 	.area CSEG    (CODE)
                                   1472 	.area CONST   (CODE)
      00527E                       1473 ___str_16:
      00527E 7C 20 20 42 75 66 66  1474 	.ascii "|  Buffer0 and Buffer 1 Allocation Sucsessful   |"
             65 72 30 20 61 6E 64
             20 42 75 66 66 65 72
             20 31 20 41 6C 6C 6F
             63 61 74 69 6F 6E 20
             53 75 63 73 65 73 73
             66 75 6C 20 20 20 7C
      0052AF 0A                    1475 	.db 0x0a
      0052B0 0D                    1476 	.db 0x0d
      0052B1 00                    1477 	.db 0x00
                                   1478 	.area CSEG    (CODE)
                                   1479 	.area CONST   (CODE)
      0052B2                       1480 ___str_17:
      0052B2 1B                    1481 	.db 0x1b
      0052B3 5B 31 3B 33 36 6D 7C  1482 	.ascii "[1;36m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0052EA 0A                    1483 	.db 0x0a
      0052EB 0D                    1484 	.db 0x0d
      0052EC 00                    1485 	.db 0x00
                                   1486 	.area CSEG    (CODE)
                                   1487 	.area CONST   (CODE)
      0052ED                       1488 ___str_18:
      0052ED 1B                    1489 	.db 0x1b
      0052EE 5B 31 3B 33 36 6D 7C  1490 	.ascii "[1;36m|                Enter Character                |"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 45 6E 74 65 72
             20 43 68 61 72 61 63
             74 65 72 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C
      005325 0A                    1491 	.db 0x0a
      005326 0D                    1492 	.db 0x0d
      005327 00                    1493 	.db 0x00
                                   1494 	.area CSEG    (CODE)
                                   1495 	.area CONST   (CODE)
      005328                       1496 ___str_19:
      005328 1B                    1497 	.db 0x1b
      005329 5B 31 3B 33 36 6D 7C  1498 	.ascii "[1;36m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      005360 0A                    1499 	.db 0x0a
      005361 0D                    1500 	.db 0x0d
      005362 1B                    1501 	.db 0x1b
      005363 5B 31 3B 30 6D        1502 	.ascii "[1;0m"
      005368 00                    1503 	.db 0x00
                                   1504 	.area CSEG    (CODE)
                                   1505 	.area CONST   (CODE)
      005369                       1506 ___str_20:
      005369 1B                    1507 	.db 0x1b
      00536A 5B 31 3B 30 6D        1508 	.ascii "[1;0m"
      00536F 0D                    1509 	.db 0x0d
      005370 0A                    1510 	.db 0x0a
      005371 00                    1511 	.db 0x00
                                   1512 	.area CSEG    (CODE)
                                   1513 	.area CONST   (CODE)
      005372                       1514 ___str_21:
      005372 1B                    1515 	.db 0x1b
      005373 5B 31 3B 30 6D 41 6C  1516 	.ascii "[1;0mAll buffer cleared"
             6C 20 62 75 66 66 65
             72 20 63 6C 65 61 72
             65 64
      00538A 0D                    1517 	.db 0x0d
      00538B 0A                    1518 	.db 0x0a
      00538C 46 65 64 20 69 6E 20  1519 	.ascii "Fed in the size for buffer 0 from start!!"
             74 68 65 20 73 69 7A
             65 20 66 6F 72 20 62
             75 66 66 65 72 20 30
             20 66 72 6F 6D 20 73
             74 61 72 74 21 21
      0053B5 0D                    1520 	.db 0x0d
      0053B6 0A                    1521 	.db 0x0a
      0053B7 00                    1522 	.db 0x00
                                   1523 	.area CSEG    (CODE)
                                   1524 	.area XINIT   (CODE)
      005493                       1525 __xinit__buffer_size:
      005493 00 00                 1526 	.byte #0x00, #0x00	;  0
      005495                       1527 __xinit__buffer0:
      005495 00 00                 1528 	.byte #0x00,#0x00
      005497                       1529 __xinit__ptr_buffer0:
      005497 00 00                 1530 	.byte #0x00,#0x00
      005499                       1531 __xinit__buffer1:
      005499 00 00                 1532 	.byte #0x00,#0x00
      00549B                       1533 __xinit__ptr_buffer1:
      00549B 00 00                 1534 	.byte #0x00,#0x00
      00549D                       1535 __xinit__storage_character_detected:
      00549D 00 00                 1536 	.byte #0x00, #0x00	;  0
      00549F                       1537 __xinit__total_characters_detected:
      00549F 00 00                 1538 	.byte #0x00, #0x00	;  0
      0054A1                       1539 __xinit__command_characters_detected:
      0054A1 00 00                 1540 	.byte #0x00, #0x00	;  0
      0054A3                       1541 __xinit__buffer_size_arr:
      0054A3 00 00                 1542 	.byte #0x00, #0x00	;  0
      0054A5 00                    1543 	.db 0x00
      0054A6 00                    1544 	.db 0x00
      0054A7 00                    1545 	.db 0x00
      0054A8 00                    1546 	.db 0x00
      0054A9 00                    1547 	.db 0x00
      0054AA 00                    1548 	.db 0x00
      0054AB 00                    1549 	.db 0x00
      0054AC 00                    1550 	.db 0x00
      0054AD 00                    1551 	.db 0x00
      0054AE 00                    1552 	.db 0x00
      0054AF 00                    1553 	.db 0x00
      0054B0 00                    1554 	.db 0x00
      0054B1 00                    1555 	.db 0x00
      0054B2 00                    1556 	.db 0x00
      0054B3 00                    1557 	.db 0x00
      0054B4 00                    1558 	.db 0x00
      0054B5 00                    1559 	.db 0x00
      0054B6 00                    1560 	.db 0x00
      0054B7 00                    1561 	.db 0x00
      0054B8 00                    1562 	.db 0x00
      0054B9 00                    1563 	.db 0x00
      0054BA 00                    1564 	.db 0x00
      0054BB 00                    1565 	.db 0x00
      0054BC 00                    1566 	.db 0x00
      0054BD 00                    1567 	.db 0x00
      0054BE 00                    1568 	.db 0x00
      0054BF 00                    1569 	.db 0x00
      0054C0 00                    1570 	.db 0x00
      0054C1 00                    1571 	.db 0x00
      0054C2 00                    1572 	.db 0x00
      0054C3 00                    1573 	.db 0x00
      0054C4 00                    1574 	.db 0x00
      0054C5 00                    1575 	.db 0x00
      0054C6 00                    1576 	.db 0x00
      0054C7 00                    1577 	.db 0x00
      0054C8 00                    1578 	.db 0x00
      0054C9 00                    1579 	.db 0x00
      0054CA 00                    1580 	.db 0x00
      0054CB 00                    1581 	.db 0x00
      0054CC 00                    1582 	.db 0x00
      0054CD 00                    1583 	.db 0x00
      0054CE 00                    1584 	.db 0x00
      0054CF 00                    1585 	.db 0x00
      0054D0 00                    1586 	.db 0x00
      0054D1 00                    1587 	.db 0x00
      0054D2 00                    1588 	.db 0x00
      0054D3 00                    1589 	.db 0x00
      0054D4 00                    1590 	.db 0x00
      0054D5 00                    1591 	.db 0x00
      0054D6 00                    1592 	.db 0x00
      0054D7 00                    1593 	.db 0x00
      0054D8 00                    1594 	.db 0x00
      0054D9 00                    1595 	.db 0x00
      0054DA 00                    1596 	.db 0x00
      0054DB 00                    1597 	.db 0x00
      0054DC 00                    1598 	.db 0x00
      0054DD 00                    1599 	.db 0x00
      0054DE 00                    1600 	.db 0x00
      0054DF 00                    1601 	.db 0x00
      0054E0 00                    1602 	.db 0x00
      0054E1 00                    1603 	.db 0x00
      0054E2 00                    1604 	.db 0x00
      0054E3 00                    1605 	.db 0x00
      0054E4 00                    1606 	.db 0x00
      0054E5 00                    1607 	.db 0x00
      0054E6 00                    1608 	.db 0x00
      0054E7 00                    1609 	.db 0x00
      0054E8 00                    1610 	.db 0x00
      0054E9 00                    1611 	.db 0x00
      0054EA 00                    1612 	.db 0x00
      0054EB 00                    1613 	.db 0x00
      0054EC 00                    1614 	.db 0x00
      0054ED 00                    1615 	.db 0x00
      0054EE 00                    1616 	.db 0x00
      0054EF 00                    1617 	.db 0x00
      0054F0 00                    1618 	.db 0x00
      0054F1 00                    1619 	.db 0x00
      0054F2 00                    1620 	.db 0x00
      0054F3 00                    1621 	.db 0x00
      0054F4 00                    1622 	.db 0x00
      0054F5 00                    1623 	.db 0x00
      0054F6 00                    1624 	.db 0x00
      0054F7 00                    1625 	.db 0x00
      0054F8 00                    1626 	.db 0x00
      0054F9 00                    1627 	.db 0x00
      0054FA 00                    1628 	.db 0x00
      0054FB 00                    1629 	.db 0x00
      0054FC 00                    1630 	.db 0x00
      0054FD 00                    1631 	.db 0x00
      0054FE 00                    1632 	.db 0x00
      0054FF 00                    1633 	.db 0x00
      005500 00                    1634 	.db 0x00
      005501 00                    1635 	.db 0x00
      005502 00                    1636 	.db 0x00
      005503 00                    1637 	.db 0x00
      005504 00                    1638 	.db 0x00
      005505 00                    1639 	.db 0x00
      005506 00                    1640 	.db 0x00
      005507 00                    1641 	.db 0x00
      005508 00                    1642 	.db 0x00
      005509 00                    1643 	.db 0x00
      00550A 00                    1644 	.db 0x00
      00550B 00                    1645 	.db 0x00
      00550C 00                    1646 	.db 0x00
      00550D 00                    1647 	.db 0x00
      00550E 00                    1648 	.db 0x00
      00550F 00                    1649 	.db 0x00
      005510 00                    1650 	.db 0x00
      005511 00                    1651 	.db 0x00
      005512 00                    1652 	.db 0x00
      005513 00                    1653 	.db 0x00
      005514 00                    1654 	.db 0x00
      005515 00                    1655 	.db 0x00
      005516 00                    1656 	.db 0x00
      005517 00                    1657 	.db 0x00
      005518 00                    1658 	.db 0x00
      005519 00                    1659 	.db 0x00
      00551A 00                    1660 	.db 0x00
      00551B 00                    1661 	.db 0x00
      00551C 00                    1662 	.db 0x00
      00551D 00                    1663 	.db 0x00
      00551E 00                    1664 	.db 0x00
      00551F 00                    1665 	.db 0x00
      005520 00                    1666 	.db 0x00
      005521 00                    1667 	.db 0x00
      005522 00                    1668 	.db 0x00
      005523 00                    1669 	.db 0x00
      005524 00                    1670 	.db 0x00
      005525 00                    1671 	.db 0x00
      005526 00                    1672 	.db 0x00
      005527 00                    1673 	.db 0x00
      005528 00                    1674 	.db 0x00
      005529 00                    1675 	.db 0x00
      00552A 00                    1676 	.db 0x00
      00552B 00                    1677 	.db 0x00
      00552C 00                    1678 	.db 0x00
      00552D 00                    1679 	.db 0x00
      00552E 00                    1680 	.db 0x00
      00552F 00                    1681 	.db 0x00
      005530 00                    1682 	.db 0x00
      005531 00                    1683 	.db 0x00
      005532 00                    1684 	.db 0x00
      005533 00                    1685 	.db 0x00
      005534 00                    1686 	.db 0x00
      005535 00                    1687 	.db 0x00
      005536 00                    1688 	.db 0x00
      005537 00                    1689 	.db 0x00
      005538 00                    1690 	.db 0x00
      005539 00                    1691 	.db 0x00
      00553A 00                    1692 	.db 0x00
      00553B 00                    1693 	.db 0x00
      00553C 00                    1694 	.db 0x00
      00553D 00                    1695 	.db 0x00
      00553E 00                    1696 	.db 0x00
      00553F 00                    1697 	.db 0x00
      005540 00                    1698 	.db 0x00
      005541 00                    1699 	.db 0x00
      005542 00                    1700 	.db 0x00
      005543 00                    1701 	.db 0x00
      005544 00                    1702 	.db 0x00
      005545 00                    1703 	.db 0x00
      005546 00                    1704 	.db 0x00
      005547 00                    1705 	.db 0x00
      005548 00                    1706 	.db 0x00
      005549 00                    1707 	.db 0x00
      00554A 00                    1708 	.db 0x00
      00554B 00                    1709 	.db 0x00
      00554C 00                    1710 	.db 0x00
      00554D 00                    1711 	.db 0x00
      00554E 00                    1712 	.db 0x00
      00554F 00                    1713 	.db 0x00
      005550 00                    1714 	.db 0x00
      005551 00                    1715 	.db 0x00
      005552 00                    1716 	.db 0x00
      005553 00                    1717 	.db 0x00
      005554 00                    1718 	.db 0x00
      005555 00                    1719 	.db 0x00
      005556 00                    1720 	.db 0x00
      005557 00                    1721 	.db 0x00
      005558 00                    1722 	.db 0x00
      005559 00                    1723 	.db 0x00
      00555A 00                    1724 	.db 0x00
      00555B 00                    1725 	.db 0x00
      00555C 00                    1726 	.db 0x00
      00555D 00                    1727 	.db 0x00
      00555E 00                    1728 	.db 0x00
      00555F 00                    1729 	.db 0x00
      005560 00                    1730 	.db 0x00
      005561 00                    1731 	.db 0x00
      005562 00                    1732 	.db 0x00
      005563 00                    1733 	.db 0x00
      005564 00                    1734 	.db 0x00
      005565 00                    1735 	.db 0x00
      005566 00                    1736 	.db 0x00
      005567 00                    1737 	.db 0x00
      005568 00                    1738 	.db 0x00
      005569 00                    1739 	.db 0x00
      00556A 00                    1740 	.db 0x00
      00556B 00                    1741 	.db 0x00
      00556C 00                    1742 	.db 0x00
      00556D 00                    1743 	.db 0x00
      00556E 00                    1744 	.db 0x00
      00556F 00                    1745 	.db 0x00
      005570 00                    1746 	.db 0x00
      005571 00                    1747 	.db 0x00
      005572 00                    1748 	.db 0x00
      005573 00                    1749 	.db 0x00
      005574 00                    1750 	.db 0x00
      005575 00                    1751 	.db 0x00
      005576 00                    1752 	.db 0x00
      005577 00                    1753 	.db 0x00
      005578 00                    1754 	.db 0x00
      005579 00                    1755 	.db 0x00
      00557A 00                    1756 	.db 0x00
      00557B 00                    1757 	.db 0x00
      00557C 00                    1758 	.db 0x00
      00557D 00                    1759 	.db 0x00
      00557E 00                    1760 	.db 0x00
      00557F 00                    1761 	.db 0x00
      005580 00                    1762 	.db 0x00
      005581 00                    1763 	.db 0x00
      005582 00                    1764 	.db 0x00
      005583 00                    1765 	.db 0x00
      005584 00                    1766 	.db 0x00
      005585 00                    1767 	.db 0x00
      005586 00                    1768 	.db 0x00
      005587 00                    1769 	.db 0x00
      005588 00                    1770 	.db 0x00
      005589 00                    1771 	.db 0x00
      00558A 00                    1772 	.db 0x00
      00558B 00                    1773 	.db 0x00
      00558C 00                    1774 	.db 0x00
      00558D 00                    1775 	.db 0x00
      00558E 00                    1776 	.db 0x00
      00558F 00                    1777 	.db 0x00
      005590 00                    1778 	.db 0x00
      005591 00                    1779 	.db 0x00
      005592 00                    1780 	.db 0x00
      005593 00                    1781 	.db 0x00
      005594 00                    1782 	.db 0x00
      005595 00                    1783 	.db 0x00
      005596 00                    1784 	.db 0x00
      005597 00                    1785 	.db 0x00
      005598 00                    1786 	.db 0x00
      005599 00                    1787 	.db 0x00
      00559A 00                    1788 	.db 0x00
      00559B 00                    1789 	.db 0x00
      00559C 00                    1790 	.db 0x00
      00559D 00                    1791 	.db 0x00
      00559E 00                    1792 	.db 0x00
      00559F 00                    1793 	.db 0x00
      0055A0 00                    1794 	.db 0x00
      0055A1 00                    1795 	.db 0x00
      0055A2 00                    1796 	.db 0x00
      0055A3 00                    1797 	.db 0x00
      0055A4 00                    1798 	.db 0x00
      0055A5 00                    1799 	.db 0x00
      0055A6 00                    1800 	.db 0x00
      0055A7 00                    1801 	.db 0x00
      0055A8 00                    1802 	.db 0x00
      0055A9 00                    1803 	.db 0x00
      0055AA 00                    1804 	.db 0x00
      0055AB 00                    1805 	.db 0x00
      0055AC 00                    1806 	.db 0x00
      0055AD 00                    1807 	.db 0x00
      0055AE 00                    1808 	.db 0x00
      0055AF 00                    1809 	.db 0x00
      0055B0 00                    1810 	.db 0x00
      0055B1 00                    1811 	.db 0x00
      0055B2 00                    1812 	.db 0x00
      0055B3 00                    1813 	.db 0x00
      0055B4 00                    1814 	.db 0x00
      0055B5 00                    1815 	.db 0x00
      0055B6 00                    1816 	.db 0x00
      0055B7 00                    1817 	.db 0x00
      0055B8 00                    1818 	.db 0x00
      0055B9 00                    1819 	.db 0x00
      0055BA 00                    1820 	.db 0x00
      0055BB 00                    1821 	.db 0x00
      0055BC 00                    1822 	.db 0x00
      0055BD 00                    1823 	.db 0x00
      0055BE 00                    1824 	.db 0x00
      0055BF 00                    1825 	.db 0x00
      0055C0 00                    1826 	.db 0x00
      0055C1 00                    1827 	.db 0x00
      0055C2 00                    1828 	.db 0x00
      0055C3 00                    1829 	.db 0x00
      0055C4 00                    1830 	.db 0x00
      0055C5 00                    1831 	.db 0x00
      0055C6 00                    1832 	.db 0x00
      0055C7 00                    1833 	.db 0x00
      0055C8 00                    1834 	.db 0x00
      0055C9 00                    1835 	.db 0x00
      0055CA 00                    1836 	.db 0x00
      0055CB 00                    1837 	.db 0x00
      0055CC 00                    1838 	.db 0x00
      0055CD 00                    1839 	.db 0x00
      0055CE 00                    1840 	.db 0x00
      0055CF 00                    1841 	.db 0x00
      0055D0 00                    1842 	.db 0x00
      0055D1 00                    1843 	.db 0x00
      0055D2 00                    1844 	.db 0x00
      0055D3 00                    1845 	.db 0x00
      0055D4 00                    1846 	.db 0x00
      0055D5 00                    1847 	.db 0x00
      0055D6 00                    1848 	.db 0x00
      0055D7 00                    1849 	.db 0x00
      0055D8 00                    1850 	.db 0x00
      0055D9 00                    1851 	.db 0x00
      0055DA 00                    1852 	.db 0x00
      0055DB 00                    1853 	.db 0x00
      0055DC 00                    1854 	.db 0x00
      0055DD 00                    1855 	.db 0x00
      0055DE 00                    1856 	.db 0x00
      0055DF 00                    1857 	.db 0x00
      0055E0 00                    1858 	.db 0x00
      0055E1 00                    1859 	.db 0x00
      0055E2 00                    1860 	.db 0x00
      0055E3 00                    1861 	.db 0x00
      0055E4 00                    1862 	.db 0x00
      0055E5 00                    1863 	.db 0x00
      0055E6 00                    1864 	.db 0x00
      0055E7 00                    1865 	.db 0x00
      0055E8 00                    1866 	.db 0x00
      0055E9 00                    1867 	.db 0x00
      0055EA 00                    1868 	.db 0x00
      0055EB 00                    1869 	.db 0x00
      0055EC 00                    1870 	.db 0x00
      0055ED 00                    1871 	.db 0x00
      0055EE 00                    1872 	.db 0x00
      0055EF 00                    1873 	.db 0x00
      0055F0 00                    1874 	.db 0x00
      0055F1 00                    1875 	.db 0x00
      0055F2 00                    1876 	.db 0x00
      0055F3 00                    1877 	.db 0x00
      0055F4 00                    1878 	.db 0x00
      0055F5 00                    1879 	.db 0x00
      0055F6 00                    1880 	.db 0x00
      0055F7 00                    1881 	.db 0x00
      0055F8 00                    1882 	.db 0x00
      0055F9 00                    1883 	.db 0x00
      0055FA 00                    1884 	.db 0x00
      0055FB 00                    1885 	.db 0x00
      0055FC 00                    1886 	.db 0x00
      0055FD 00                    1887 	.db 0x00
      0055FE 00                    1888 	.db 0x00
      0055FF 00                    1889 	.db 0x00
      005600 00                    1890 	.db 0x00
      005601 00                    1891 	.db 0x00
      005602 00                    1892 	.db 0x00
      005603 00                    1893 	.db 0x00
      005604 00                    1894 	.db 0x00
      005605 00                    1895 	.db 0x00
      005606 00                    1896 	.db 0x00
      005607 00                    1897 	.db 0x00
      005608 00                    1898 	.db 0x00
      005609 00                    1899 	.db 0x00
      00560A 00                    1900 	.db 0x00
      00560B 00                    1901 	.db 0x00
      00560C 00                    1902 	.db 0x00
      00560D 00                    1903 	.db 0x00
      00560E 00                    1904 	.db 0x00
      00560F 00                    1905 	.db 0x00
      005610 00                    1906 	.db 0x00
      005611 00                    1907 	.db 0x00
      005612 00                    1908 	.db 0x00
      005613 00                    1909 	.db 0x00
      005614 00                    1910 	.db 0x00
      005615 00                    1911 	.db 0x00
      005616 00                    1912 	.db 0x00
      005617 00                    1913 	.db 0x00
      005618 00                    1914 	.db 0x00
      005619 00                    1915 	.db 0x00
      00561A 00                    1916 	.db 0x00
      00561B 00                    1917 	.db 0x00
      00561C 00                    1918 	.db 0x00
      00561D 00                    1919 	.db 0x00
      00561E 00                    1920 	.db 0x00
      00561F 00                    1921 	.db 0x00
      005620 00                    1922 	.db 0x00
      005621 00                    1923 	.db 0x00
      005622 00                    1924 	.db 0x00
      005623 00                    1925 	.db 0x00
      005624 00                    1926 	.db 0x00
      005625 00                    1927 	.db 0x00
      005626 00                    1928 	.db 0x00
      005627 00                    1929 	.db 0x00
      005628 00                    1930 	.db 0x00
      005629 00                    1931 	.db 0x00
      00562A 00                    1932 	.db 0x00
      00562B 00                    1933 	.db 0x00
      00562C 00                    1934 	.db 0x00
      00562D 00                    1935 	.db 0x00
      00562E 00                    1936 	.db 0x00
      00562F 00                    1937 	.db 0x00
      005630 00                    1938 	.db 0x00
      005631 00                    1939 	.db 0x00
      005632 00                    1940 	.db 0x00
      005633 00                    1941 	.db 0x00
      005634 00                    1942 	.db 0x00
      005635 00                    1943 	.db 0x00
      005636 00                    1944 	.db 0x00
      005637 00                    1945 	.db 0x00
      005638 00                    1946 	.db 0x00
      005639 00                    1947 	.db 0x00
      00563A 00                    1948 	.db 0x00
      00563B 00                    1949 	.db 0x00
      00563C 00                    1950 	.db 0x00
      00563D 00                    1951 	.db 0x00
      00563E 00                    1952 	.db 0x00
      00563F 00                    1953 	.db 0x00
      005640 00                    1954 	.db 0x00
      005641 00                    1955 	.db 0x00
      005642 00                    1956 	.db 0x00
      005643 00                    1957 	.db 0x00
      005644 00                    1958 	.db 0x00
      005645 00                    1959 	.db 0x00
      005646 00                    1960 	.db 0x00
      005647 00                    1961 	.db 0x00
      005648 00                    1962 	.db 0x00
      005649 00                    1963 	.db 0x00
      00564A 00                    1964 	.db 0x00
      00564B 00                    1965 	.db 0x00
      00564C 00                    1966 	.db 0x00
      00564D 00                    1967 	.db 0x00
      00564E 00                    1968 	.db 0x00
      00564F 00                    1969 	.db 0x00
      005650 00                    1970 	.db 0x00
      005651 00                    1971 	.db 0x00
      005652 00                    1972 	.db 0x00
      005653 00                    1973 	.db 0x00
      005654 00                    1974 	.db 0x00
      005655 00                    1975 	.db 0x00
      005656 00                    1976 	.db 0x00
      005657 00                    1977 	.db 0x00
      005658 00                    1978 	.db 0x00
      005659 00                    1979 	.db 0x00
      00565A 00                    1980 	.db 0x00
      00565B 00                    1981 	.db 0x00
      00565C 00                    1982 	.db 0x00
      00565D 00                    1983 	.db 0x00
      00565E 00                    1984 	.db 0x00
      00565F 00                    1985 	.db 0x00
      005660 00                    1986 	.db 0x00
      005661 00                    1987 	.db 0x00
      005662 00                    1988 	.db 0x00
      005663 00                    1989 	.db 0x00
      005664 00                    1990 	.db 0x00
      005665 00                    1991 	.db 0x00
      005666 00                    1992 	.db 0x00
      005667 00                    1993 	.db 0x00
      005668 00                    1994 	.db 0x00
      005669 00                    1995 	.db 0x00
      00566A 00                    1996 	.db 0x00
      00566B 00                    1997 	.db 0x00
      00566C 00                    1998 	.db 0x00
      00566D 00                    1999 	.db 0x00
      00566E 00                    2000 	.db 0x00
      00566F 00                    2001 	.db 0x00
      005670 00                    2002 	.db 0x00
      005671 00                    2003 	.db 0x00
      005672 00                    2004 	.db 0x00
      005673 00                    2005 	.db 0x00
      005674 00                    2006 	.db 0x00
      005675 00                    2007 	.db 0x00
      005676 00                    2008 	.db 0x00
      005677 00                    2009 	.db 0x00
      005678 00                    2010 	.db 0x00
      005679 00                    2011 	.db 0x00
      00567A 00                    2012 	.db 0x00
      00567B 00                    2013 	.db 0x00
      00567C 00                    2014 	.db 0x00
      00567D 00                    2015 	.db 0x00
      00567E 00                    2016 	.db 0x00
      00567F 00                    2017 	.db 0x00
      005680 00                    2018 	.db 0x00
      005681 00                    2019 	.db 0x00
      005682 00                    2020 	.db 0x00
      005683 00                    2021 	.db 0x00
      005684 00                    2022 	.db 0x00
      005685 00                    2023 	.db 0x00
      005686 00                    2024 	.db 0x00
      005687 00                    2025 	.db 0x00
      005688 00                    2026 	.db 0x00
      005689 00                    2027 	.db 0x00
      00568A 00                    2028 	.db 0x00
      00568B 00                    2029 	.db 0x00
      00568C 00                    2030 	.db 0x00
      00568D 00                    2031 	.db 0x00
      00568E 00                    2032 	.db 0x00
      00568F 00                    2033 	.db 0x00
      005690 00                    2034 	.db 0x00
      005691 00                    2035 	.db 0x00
      005692 00                    2036 	.db 0x00
      005693 00                    2037 	.db 0x00
      005694 00                    2038 	.db 0x00
      005695 00                    2039 	.db 0x00
      005696 00                    2040 	.db 0x00
      005697 00                    2041 	.db 0x00
      005698 00                    2042 	.db 0x00
      005699 00                    2043 	.db 0x00
      00569A 00                    2044 	.db 0x00
      00569B 00                    2045 	.db 0x00
      00569C 00                    2046 	.db 0x00
      00569D 00                    2047 	.db 0x00
      00569E 00                    2048 	.db 0x00
      00569F 00                    2049 	.db 0x00
      0056A0 00                    2050 	.db 0x00
      0056A1 00                    2051 	.db 0x00
      0056A2 00                    2052 	.db 0x00
      0056A3 00                    2053 	.db 0x00
      0056A4 00                    2054 	.db 0x00
      0056A5 00                    2055 	.db 0x00
      0056A6 00                    2056 	.db 0x00
      0056A7 00                    2057 	.db 0x00
      0056A8 00                    2058 	.db 0x00
      0056A9 00                    2059 	.db 0x00
      0056AA 00                    2060 	.db 0x00
      0056AB 00                    2061 	.db 0x00
      0056AC 00                    2062 	.db 0x00
      0056AD 00                    2063 	.db 0x00
      0056AE 00                    2064 	.db 0x00
      0056AF 00                    2065 	.db 0x00
      0056B0 00                    2066 	.db 0x00
      0056B1 00                    2067 	.db 0x00
      0056B2 00                    2068 	.db 0x00
      0056B3 00                    2069 	.db 0x00
      0056B4 00                    2070 	.db 0x00
      0056B5 00                    2071 	.db 0x00
      0056B6 00                    2072 	.db 0x00
      0056B7 00                    2073 	.db 0x00
      0056B8 00                    2074 	.db 0x00
      0056B9 00                    2075 	.db 0x00
      0056BA 00                    2076 	.db 0x00
      0056BB 00                    2077 	.db 0x00
      0056BC 00                    2078 	.db 0x00
      0056BD 00                    2079 	.db 0x00
      0056BE 00                    2080 	.db 0x00
      0056BF 00                    2081 	.db 0x00
      0056C0 00                    2082 	.db 0x00
      0056C1 00                    2083 	.db 0x00
      0056C2 00                    2084 	.db 0x00
      0056C3 00                    2085 	.db 0x00
      0056C4 00                    2086 	.db 0x00
      0056C5 00                    2087 	.db 0x00
      0056C6 00                    2088 	.db 0x00
      0056C7 00                    2089 	.db 0x00
      0056C8 00                    2090 	.db 0x00
      0056C9 00                    2091 	.db 0x00
      0056CA 00                    2092 	.db 0x00
      0056CB 00                    2093 	.db 0x00
      0056CC 00                    2094 	.db 0x00
      0056CD 00                    2095 	.db 0x00
      0056CE 00                    2096 	.db 0x00
      0056CF 00                    2097 	.db 0x00
      0056D0 00                    2098 	.db 0x00
      0056D1 00                    2099 	.db 0x00
      0056D2 00                    2100 	.db 0x00
      0056D3 00                    2101 	.db 0x00
      0056D4 00                    2102 	.db 0x00
      0056D5 00                    2103 	.db 0x00
      0056D6 00                    2104 	.db 0x00
      0056D7 00                    2105 	.db 0x00
      0056D8 00                    2106 	.db 0x00
      0056D9 00                    2107 	.db 0x00
      0056DA 00                    2108 	.db 0x00
      0056DB 00                    2109 	.db 0x00
      0056DC 00                    2110 	.db 0x00
      0056DD 00                    2111 	.db 0x00
      0056DE 00                    2112 	.db 0x00
      0056DF 00                    2113 	.db 0x00
      0056E0 00                    2114 	.db 0x00
      0056E1 00                    2115 	.db 0x00
      0056E2 00                    2116 	.db 0x00
      0056E3 00                    2117 	.db 0x00
      0056E4 00                    2118 	.db 0x00
      0056E5 00                    2119 	.db 0x00
      0056E6 00                    2120 	.db 0x00
      0056E7 00                    2121 	.db 0x00
      0056E8 00                    2122 	.db 0x00
      0056E9 00                    2123 	.db 0x00
      0056EA 00                    2124 	.db 0x00
      0056EB 00                    2125 	.db 0x00
      0056EC 00                    2126 	.db 0x00
      0056ED 00                    2127 	.db 0x00
      0056EE 00                    2128 	.db 0x00
      0056EF 00                    2129 	.db 0x00
      0056F0 00                    2130 	.db 0x00
      0056F1 00                    2131 	.db 0x00
      0056F2 00                    2132 	.db 0x00
      0056F3 00                    2133 	.db 0x00
      0056F4 00                    2134 	.db 0x00
      0056F5 00                    2135 	.db 0x00
      0056F6 00                    2136 	.db 0x00
      0056F7 00                    2137 	.db 0x00
      0056F8 00                    2138 	.db 0x00
      0056F9 00                    2139 	.db 0x00
      0056FA 00                    2140 	.db 0x00
                                   2141 	.area CABS    (ABS,CODE)
