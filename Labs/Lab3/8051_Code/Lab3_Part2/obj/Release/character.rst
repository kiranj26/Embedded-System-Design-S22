                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module character
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _gets_
                                     12 	.globl _putchar
                                     13 	.globl _getchar
                                     14 	.globl _free
                                     15 	.globl _malloc
                                     16 	.globl _atoi
                                     17 	.globl _printf_tiny
                                     18 	.globl _printf
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _TXD0
                                     95 	.globl _RXD0
                                     96 	.globl _BREG_F7
                                     97 	.globl _BREG_F6
                                     98 	.globl _BREG_F5
                                     99 	.globl _BREG_F4
                                    100 	.globl _BREG_F3
                                    101 	.globl _BREG_F2
                                    102 	.globl _BREG_F1
                                    103 	.globl _BREG_F0
                                    104 	.globl _P5_7
                                    105 	.globl _P5_6
                                    106 	.globl _P5_5
                                    107 	.globl _P5_4
                                    108 	.globl _P5_3
                                    109 	.globl _P5_2
                                    110 	.globl _P5_1
                                    111 	.globl _P5_0
                                    112 	.globl _P4_7
                                    113 	.globl _P4_6
                                    114 	.globl _P4_5
                                    115 	.globl _P4_4
                                    116 	.globl _P4_3
                                    117 	.globl _P4_2
                                    118 	.globl _P4_1
                                    119 	.globl _P4_0
                                    120 	.globl _PX0L
                                    121 	.globl _PT0L
                                    122 	.globl _PX1L
                                    123 	.globl _PT1L
                                    124 	.globl _PSL
                                    125 	.globl _PT2L
                                    126 	.globl _PPCL
                                    127 	.globl _EC
                                    128 	.globl _CCF0
                                    129 	.globl _CCF1
                                    130 	.globl _CCF2
                                    131 	.globl _CCF3
                                    132 	.globl _CCF4
                                    133 	.globl _CR
                                    134 	.globl _CF
                                    135 	.globl _TF2
                                    136 	.globl _EXF2
                                    137 	.globl _RCLK
                                    138 	.globl _TCLK
                                    139 	.globl _EXEN2
                                    140 	.globl _TR2
                                    141 	.globl _C_T2
                                    142 	.globl _CP_RL2
                                    143 	.globl _T2CON_7
                                    144 	.globl _T2CON_6
                                    145 	.globl _T2CON_5
                                    146 	.globl _T2CON_4
                                    147 	.globl _T2CON_3
                                    148 	.globl _T2CON_2
                                    149 	.globl _T2CON_1
                                    150 	.globl _T2CON_0
                                    151 	.globl _PT2
                                    152 	.globl _ET2
                                    153 	.globl _B
                                    154 	.globl _ACC
                                    155 	.globl _PSW
                                    156 	.globl _IP
                                    157 	.globl _P3
                                    158 	.globl _IE
                                    159 	.globl _P2
                                    160 	.globl _SBUF
                                    161 	.globl _SCON
                                    162 	.globl _P1
                                    163 	.globl _TH1
                                    164 	.globl _TH0
                                    165 	.globl _TL1
                                    166 	.globl _TL0
                                    167 	.globl _TMOD
                                    168 	.globl _TCON
                                    169 	.globl _PCON
                                    170 	.globl _DPH
                                    171 	.globl _DPL
                                    172 	.globl _SP
                                    173 	.globl _P0
                                    174 	.globl _SBUF0
                                    175 	.globl _DP0L
                                    176 	.globl _DP0H
                                    177 	.globl _EECON
                                    178 	.globl _KBF
                                    179 	.globl _KBE
                                    180 	.globl _KBLS
                                    181 	.globl _BRL
                                    182 	.globl _BDRCON
                                    183 	.globl _T2MOD
                                    184 	.globl _SPDAT
                                    185 	.globl _SPSTA
                                    186 	.globl _SPCON
                                    187 	.globl _SADEN
                                    188 	.globl _SADDR
                                    189 	.globl _WDTPRG
                                    190 	.globl _WDTRST
                                    191 	.globl _P5
                                    192 	.globl _P4
                                    193 	.globl _IPH1
                                    194 	.globl _IPL1
                                    195 	.globl _IPH0
                                    196 	.globl _IPL0
                                    197 	.globl _IEN1
                                    198 	.globl _IEN0
                                    199 	.globl _CMOD
                                    200 	.globl _CL
                                    201 	.globl _CH
                                    202 	.globl _CCON
                                    203 	.globl _CCAPM4
                                    204 	.globl _CCAPM3
                                    205 	.globl _CCAPM2
                                    206 	.globl _CCAPM1
                                    207 	.globl _CCAPM0
                                    208 	.globl _CCAP4L
                                    209 	.globl _CCAP3L
                                    210 	.globl _CCAP2L
                                    211 	.globl _CCAP1L
                                    212 	.globl _CCAP0L
                                    213 	.globl _CCAP4H
                                    214 	.globl _CCAP3H
                                    215 	.globl _CCAP2H
                                    216 	.globl _CCAP1H
                                    217 	.globl _CCAP0H
                                    218 	.globl _CKCON1
                                    219 	.globl _CKCON0
                                    220 	.globl _CKRL
                                    221 	.globl _AUXR1
                                    222 	.globl _AUXR
                                    223 	.globl _TH2
                                    224 	.globl _TL2
                                    225 	.globl _RCAP2H
                                    226 	.globl _RCAP2L
                                    227 	.globl _T2CON
                                    228 	.globl _buffer0and1_size
                                    229 	.globl _buff_not_cleared
                                    230 	.globl _buffer_to_delete
                                    231 	.globl _size
                                    232 	.globl _command_processing_PARM_8
                                    233 	.globl _command_processing_PARM_7
                                    234 	.globl _command_processing_PARM_6
                                    235 	.globl _command_processing_PARM_5
                                    236 	.globl _command_processing_PARM_4
                                    237 	.globl _command_processing_PARM_3
                                    238 	.globl _command_processing_PARM_2
                                    239 	.globl _length
                                    240 	.globl _dataout
                                    241 	.globl _empty_buffer0
                                    242 	.globl _buffer0_hexdump
                                    243 	.globl _command_processing
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
                                    469 ; internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area DSEG    (DATA)
      000008                        472 _buffer0_hexdump_sloc0_1_0:
      000008                        473 	.ds 2
      00000A                        474 _buffer0_hexdump_sloc1_1_0:
      00000A                        475 	.ds 1
      00000B                        476 _buffer0_hexdump_sloc2_1_0:
      00000B                        477 	.ds 1
      00000C                        478 _command_processing_sloc0_1_0:
      00000C                        479 	.ds 2
      00000E                        480 _command_processing_sloc1_1_0:
      00000E                        481 	.ds 3
      000011                        482 _command_processing_sloc2_1_0:
      000011                        483 	.ds 3
      000014                        484 _command_processing_sloc3_1_0:
      000014                        485 	.ds 3
                                    486 ;--------------------------------------------------------
                                    487 ; overlayable items in internal ram
                                    488 ;--------------------------------------------------------
                                    489 ;--------------------------------------------------------
                                    490 ; indirectly addressable internal ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area ISEG    (DATA)
                                    493 ;--------------------------------------------------------
                                    494 ; absolute internal ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area IABS    (ABS,DATA)
                                    497 	.area IABS    (ABS,DATA)
                                    498 ;--------------------------------------------------------
                                    499 ; bit data
                                    500 ;--------------------------------------------------------
                                    501 	.area BSEG    (BIT)
                                    502 ;--------------------------------------------------------
                                    503 ; paged external ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area PSEG    (PAG,XDATA)
                                    506 ;--------------------------------------------------------
                                    507 ; external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XSEG    (XDATA)
      001B75                        510 _length::
      001B75                        511 	.ds 2
      001B77                        512 _dataout_x_65536_50:
      001B77                        513 	.ds 1
      001B78                        514 _buffer0_hexdump_length_65536_56:
      001B78                        515 	.ds 2
      001B7A                        516 _buffer0_hexdump_print_address_65536_57:
      001B7A                        517 	.ds 1
      001B7B                        518 _command_processing_PARM_2:
      001B7B                        519 	.ds 1
      001B7C                        520 _command_processing_PARM_3:
      001B7C                        521 	.ds 3
      001B7F                        522 _command_processing_PARM_4:
      001B7F                        523 	.ds 3
      001B82                        524 _command_processing_PARM_5:
      001B82                        525 	.ds 3
      001B85                        526 _command_processing_PARM_6:
      001B85                        527 	.ds 3
      001B88                        528 _command_processing_PARM_7:
      001B88                        529 	.ds 3
      001B8B                        530 _command_processing_PARM_8:
      001B8B                        531 	.ds 2
      001B8D                        532 _command_processing_cmd_detected_65536_65:
      001B8D                        533 	.ds 2
                                    534 ;--------------------------------------------------------
                                    535 ; absolute external ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area XABS    (ABS,XDATA)
                                    538 ;--------------------------------------------------------
                                    539 ; external initialized ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XISEG   (XDATA)
      001CC5                        542 _size::
      001CC5                        543 	.ds 4
      001CC9                        544 _buffer_to_delete::
      001CC9                        545 	.ds 2
      001CCB                        546 _buff_not_cleared::
      001CCB                        547 	.ds 200
      001D93                        548 _buffer0and1_size::
      001D93                        549 	.ds 2
                                    550 	.area HOME    (CODE)
                                    551 	.area GSINIT0 (CODE)
                                    552 	.area GSINIT1 (CODE)
                                    553 	.area GSINIT2 (CODE)
                                    554 	.area GSINIT3 (CODE)
                                    555 	.area GSINIT4 (CODE)
                                    556 	.area GSINIT5 (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.area GSFINAL (CODE)
                                    559 	.area CSEG    (CODE)
                                    560 ;--------------------------------------------------------
                                    561 ; global & static initialisations
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
                                    564 	.area GSINIT  (CODE)
                                    565 	.area GSFINAL (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 ;--------------------------------------------------------
                                    568 ; Home
                                    569 ;--------------------------------------------------------
                                    570 	.area HOME    (CODE)
                                    571 	.area HOME    (CODE)
                                    572 ;--------------------------------------------------------
                                    573 ; code
                                    574 ;--------------------------------------------------------
                                    575 	.area CSEG    (CODE)
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'dataout'
                                    578 ;------------------------------------------------------------
                                    579 ;x                         Allocated with name '_dataout_x_65536_50'
                                    580 ;data                      Allocated with name '_dataout_data_65536_51'
                                    581 ;------------------------------------------------------------
                                    582 ;	character.c:69: void dataout(uint8_t x) {
                                    583 ;	-----------------------------------------
                                    584 ;	 function dataout
                                    585 ;	-----------------------------------------
      0021B2                        586 _dataout:
                           000007   587 	ar7 = 0x07
                           000006   588 	ar6 = 0x06
                           000005   589 	ar5 = 0x05
                           000004   590 	ar4 = 0x04
                           000003   591 	ar3 = 0x03
                           000002   592 	ar2 = 0x02
                           000001   593 	ar1 = 0x01
                           000000   594 	ar0 = 0x00
      0021B2 E5 82            [12]  595 	mov	a,dpl
      0021B4 90 1B 77         [24]  596 	mov	dptr,#_dataout_x_65536_50
      0021B7 F0               [24]  597 	movx	@dptr,a
                                    598 ;	character.c:71: *data = x;
      0021B8 E0               [24]  599 	movx	a,@dptr
      0021B9 FF               [12]  600 	mov	r7,a
      0021BA 90 FF FF         [24]  601 	mov	dptr,#0xffff
      0021BD 75 F0 00         [24]  602 	mov	b,#0x00
      0021C0 EF               [12]  603 	mov	a,r7
                                    604 ;	character.c:72: }
      0021C1 02 35 E5         [24]  605 	ljmp	__gptrput
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'empty_buffer0'
                                    608 ;------------------------------------------------------------
                                    609 ;buffer0_ptr               Allocated with name '_empty_buffer0_buffer0_ptr_65536_53'
                                    610 ;i                         Allocated with name '_empty_buffer0_i_131072_54'
                                    611 ;------------------------------------------------------------
                                    612 ;	character.c:79: void empty_buffer0(void)
                                    613 ;	-----------------------------------------
                                    614 ;	 function empty_buffer0
                                    615 ;	-----------------------------------------
      0021C4                        616 _empty_buffer0:
                                    617 ;	character.c:81: char * buffer0_ptr = buffer0;
      0021C4 90 1D 97         [24]  618 	mov	dptr,#_buffer0
      0021C7 E0               [24]  619 	movx	a,@dptr
      0021C8 FE               [12]  620 	mov	r6,a
      0021C9 A3               [24]  621 	inc	dptr
      0021CA E0               [24]  622 	movx	a,@dptr
      0021CB FD               [12]  623 	mov	r5,a
      0021CC 7F 00            [12]  624 	mov	r7,#0x00
                                    625 ;	character.c:82: for (int i = 0; i < buffer_size_arr[0]; i++)
      0021CE 7B 00            [12]  626 	mov	r3,#0x00
      0021D0 7C 00            [12]  627 	mov	r4,#0x00
      0021D2                        628 00103$:
      0021D2 90 1D A5         [24]  629 	mov	dptr,#_buffer_size_arr
      0021D5 E0               [24]  630 	movx	a,@dptr
      0021D6 F9               [12]  631 	mov	r1,a
      0021D7 A3               [24]  632 	inc	dptr
      0021D8 E0               [24]  633 	movx	a,@dptr
      0021D9 FA               [12]  634 	mov	r2,a
      0021DA C3               [12]  635 	clr	c
      0021DB EB               [12]  636 	mov	a,r3
      0021DC 99               [12]  637 	subb	a,r1
      0021DD EC               [12]  638 	mov	a,r4
      0021DE 64 80            [12]  639 	xrl	a,#0x80
      0021E0 8A F0            [24]  640 	mov	b,r2
      0021E2 63 F0 80         [24]  641 	xrl	b,#0x80
      0021E5 95 F0            [12]  642 	subb	a,b
      0021E7 50 1A            [24]  643 	jnc	00105$
                                    644 ;	character.c:84: buffer0_ptr[i] = '0';
      0021E9 EB               [12]  645 	mov	a,r3
      0021EA 2E               [12]  646 	add	a,r6
      0021EB F8               [12]  647 	mov	r0,a
      0021EC EC               [12]  648 	mov	a,r4
      0021ED 3D               [12]  649 	addc	a,r5
      0021EE F9               [12]  650 	mov	r1,a
      0021EF 8F 02            [24]  651 	mov	ar2,r7
      0021F1 88 82            [24]  652 	mov	dpl,r0
      0021F3 89 83            [24]  653 	mov	dph,r1
      0021F5 8A F0            [24]  654 	mov	b,r2
      0021F7 74 30            [12]  655 	mov	a,#0x30
      0021F9 12 35 E5         [24]  656 	lcall	__gptrput
                                    657 ;	character.c:82: for (int i = 0; i < buffer_size_arr[0]; i++)
      0021FC 0B               [12]  658 	inc	r3
      0021FD BB 00 D2         [24]  659 	cjne	r3,#0x00,00103$
      002200 0C               [12]  660 	inc	r4
      002201 80 CF            [24]  661 	sjmp	00103$
      002203                        662 00105$:
                                    663 ;	character.c:86: }
      002203 22               [24]  664 	ret
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'buffer0_hexdump'
                                    667 ;------------------------------------------------------------
                                    668 ;sloc0                     Allocated with name '_buffer0_hexdump_sloc0_1_0'
                                    669 ;sloc1                     Allocated with name '_buffer0_hexdump_sloc1_1_0'
                                    670 ;sloc2                     Allocated with name '_buffer0_hexdump_sloc2_1_0'
                                    671 ;length                    Allocated with name '_buffer0_hexdump_length_65536_56'
                                    672 ;itr                       Allocated with name '_buffer0_hexdump_itr_65536_57'
                                    673 ;print_address             Allocated with name '_buffer0_hexdump_print_address_65536_57'
                                    674 ;buffer0_ptr               Allocated with name '_buffer0_hexdump_buffer0_ptr_65536_57'
                                    675 ;------------------------------------------------------------
                                    676 ;	character.c:95: void buffer0_hexdump(int length) {
                                    677 ;	-----------------------------------------
                                    678 ;	 function buffer0_hexdump
                                    679 ;	-----------------------------------------
      002204                        680 _buffer0_hexdump:
      002204 AF 83            [24]  681 	mov	r7,dph
      002206 E5 82            [12]  682 	mov	a,dpl
      002208 90 1B 78         [24]  683 	mov	dptr,#_buffer0_hexdump_length_65536_56
      00220B F0               [24]  684 	movx	@dptr,a
      00220C EF               [12]  685 	mov	a,r7
      00220D A3               [24]  686 	inc	dptr
      00220E F0               [24]  687 	movx	@dptr,a
                                    688 ;	character.c:97: bool print_address = true;
      00220F 90 1B 7A         [24]  689 	mov	dptr,#_buffer0_hexdump_print_address_65536_57
      002212 74 01            [12]  690 	mov	a,#0x01
      002214 F0               [24]  691 	movx	@dptr,a
                                    692 ;	character.c:99: char * buffer0_ptr = new_buffer_arr[0];
      002215 90 1B 8F         [24]  693 	mov	dptr,#_new_buffer_arr
      002218 E0               [24]  694 	movx	a,@dptr
      002219 FE               [12]  695 	mov	r6,a
      00221A A3               [24]  696 	inc	dptr
      00221B E0               [24]  697 	movx	a,@dptr
      00221C FD               [12]  698 	mov	r5,a
      00221D 7F 00            [12]  699 	mov	r7,#0x00
                                    700 ;	character.c:102: printf("\033[1;34m\n\r");
      00221F C0 07            [24]  701 	push	ar7
      002221 C0 06            [24]  702 	push	ar6
      002223 C0 05            [24]  703 	push	ar5
      002225 74 8A            [12]  704 	mov	a,#___str_0
      002227 C0 E0            [24]  705 	push	acc
      002229 74 46            [12]  706 	mov	a,#(___str_0 >> 8)
      00222B C0 E0            [24]  707 	push	acc
      00222D 74 80            [12]  708 	mov	a,#0x80
      00222F C0 E0            [24]  709 	push	acc
      002231 12 3A 30         [24]  710 	lcall	_printf
      002234 15 81            [12]  711 	dec	sp
      002236 15 81            [12]  712 	dec	sp
      002238 15 81            [12]  713 	dec	sp
      00223A D0 05            [24]  714 	pop	ar5
      00223C D0 06            [24]  715 	pop	ar6
      00223E D0 07            [24]  716 	pop	ar7
                                    717 ;	character.c:104: while (itr < buffer0and1_size)
      002240 90 1B 78         [24]  718 	mov	dptr,#_buffer0_hexdump_length_65536_56
      002243 E0               [24]  719 	movx	a,@dptr
      002244 FB               [12]  720 	mov	r3,a
      002245 A3               [24]  721 	inc	dptr
      002246 E0               [24]  722 	movx	a,@dptr
      002247 FC               [12]  723 	mov	r4,a
      002248 E4               [12]  724 	clr	a
      002249 BB 10 04         [24]  725 	cjne	r3,#0x10,00146$
      00224C BC 00 01         [24]  726 	cjne	r4,#0x00,00146$
      00224F 04               [12]  727 	inc	a
      002250                        728 00146$:
      002250 F5 0A            [12]  729 	mov	_buffer0_hexdump_sloc1_1_0,a
      002252 E4               [12]  730 	clr	a
      002253 BB 20 04         [24]  731 	cjne	r3,#0x20,00148$
      002256 BC 00 01         [24]  732 	cjne	r4,#0x00,00148$
      002259 04               [12]  733 	inc	a
      00225A                        734 00148$:
      00225A F9               [12]  735 	mov	r1,a
      00225B E4               [12]  736 	clr	a
      00225C F5 08            [12]  737 	mov	_buffer0_hexdump_sloc0_1_0,a
      00225E F5 09            [12]  738 	mov	(_buffer0_hexdump_sloc0_1_0 + 1),a
      002260                        739 00112$:
      002260 C0 01            [24]  740 	push	ar1
      002262 90 1D 93         [24]  741 	mov	dptr,#_buffer0and1_size
      002265 E0               [24]  742 	movx	a,@dptr
      002266 F8               [12]  743 	mov	r0,a
      002267 A3               [24]  744 	inc	dptr
      002268 E0               [24]  745 	movx	a,@dptr
      002269 F9               [12]  746 	mov	r1,a
      00226A C3               [12]  747 	clr	c
      00226B E5 08            [12]  748 	mov	a,_buffer0_hexdump_sloc0_1_0
      00226D 98               [12]  749 	subb	a,r0
      00226E E5 09            [12]  750 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      002270 64 80            [12]  751 	xrl	a,#0x80
      002272 89 F0            [24]  752 	mov	b,r1
      002274 63 F0 80         [24]  753 	xrl	b,#0x80
      002277 95 F0            [12]  754 	subb	a,b
      002279 D0 01            [24]  755 	pop	ar1
      00227B 40 01            [24]  756 	jc	00150$
      00227D 22               [24]  757 	ret
      00227E                        758 00150$:
                                    759 ;	character.c:107: if (print_address)
      00227E 90 1B 7A         [24]  760 	mov	dptr,#_buffer0_hexdump_print_address_65536_57
      002281 E0               [24]  761 	movx	a,@dptr
      002282 60 46            [24]  762 	jz	00102$
                                    763 ;	character.c:109: printf("\033[1;34m%p :", buffer0_ptr + itr);
      002284 C0 01            [24]  764 	push	ar1
      002286 E5 08            [12]  765 	mov	a,_buffer0_hexdump_sloc0_1_0
      002288 2E               [12]  766 	add	a,r6
      002289 F8               [12]  767 	mov	r0,a
      00228A E5 09            [12]  768 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      00228C 3D               [12]  769 	addc	a,r5
      00228D F9               [12]  770 	mov	r1,a
      00228E 8F 02            [24]  771 	mov	ar2,r7
      002290 C0 07            [24]  772 	push	ar7
      002292 C0 06            [24]  773 	push	ar6
      002294 C0 05            [24]  774 	push	ar5
      002296 C0 04            [24]  775 	push	ar4
      002298 C0 03            [24]  776 	push	ar3
      00229A C0 01            [24]  777 	push	ar1
      00229C C0 00            [24]  778 	push	ar0
      00229E C0 01            [24]  779 	push	ar1
      0022A0 C0 02            [24]  780 	push	ar2
      0022A2 74 94            [12]  781 	mov	a,#___str_1
      0022A4 C0 E0            [24]  782 	push	acc
      0022A6 74 46            [12]  783 	mov	a,#(___str_1 >> 8)
      0022A8 C0 E0            [24]  784 	push	acc
      0022AA 74 80            [12]  785 	mov	a,#0x80
      0022AC C0 E0            [24]  786 	push	acc
      0022AE 12 3A 30         [24]  787 	lcall	_printf
      0022B1 E5 81            [12]  788 	mov	a,sp
      0022B3 24 FA            [12]  789 	add	a,#0xfa
      0022B5 F5 81            [12]  790 	mov	sp,a
      0022B7 D0 01            [24]  791 	pop	ar1
      0022B9 D0 03            [24]  792 	pop	ar3
      0022BB D0 04            [24]  793 	pop	ar4
      0022BD D0 05            [24]  794 	pop	ar5
      0022BF D0 06            [24]  795 	pop	ar6
      0022C1 D0 07            [24]  796 	pop	ar7
                                    797 ;	character.c:110: print_address = false;
      0022C3 90 1B 7A         [24]  798 	mov	dptr,#_buffer0_hexdump_print_address_65536_57
      0022C6 E4               [12]  799 	clr	a
      0022C7 F0               [24]  800 	movx	@dptr,a
                                    801 ;	character.c:134: itr++;
      0022C8 D0 01            [24]  802 	pop	ar1
                                    803 ;	character.c:110: print_address = false;
      0022CA                        804 00102$:
                                    805 ;	character.c:113: if (buffer0_ptr[itr] == '0')
      0022CA C0 01            [24]  806 	push	ar1
      0022CC E5 08            [12]  807 	mov	a,_buffer0_hexdump_sloc0_1_0
      0022CE 2E               [12]  808 	add	a,r6
      0022CF F8               [12]  809 	mov	r0,a
      0022D0 E5 09            [12]  810 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      0022D2 3D               [12]  811 	addc	a,r5
      0022D3 F9               [12]  812 	mov	r1,a
      0022D4 8F 02            [24]  813 	mov	ar2,r7
      0022D6 88 82            [24]  814 	mov	dpl,r0
      0022D8 89 83            [24]  815 	mov	dph,r1
      0022DA 8A F0            [24]  816 	mov	b,r2
      0022DC 12 44 5C         [24]  817 	lcall	__gptrget
      0022DF F5 0B            [12]  818 	mov	_buffer0_hexdump_sloc2_1_0,a
      0022E1 74 30            [12]  819 	mov	a,#0x30
      0022E3 B5 0B 02         [24]  820 	cjne	a,_buffer0_hexdump_sloc2_1_0,00152$
      0022E6 80 04            [24]  821 	sjmp	00153$
      0022E8                        822 00152$:
      0022E8 D0 01            [24]  823 	pop	ar1
      0022EA 80 2C            [24]  824 	sjmp	00108$
      0022EC                        825 00153$:
      0022EC D0 01            [24]  826 	pop	ar1
                                    827 ;	character.c:115: printf_tiny("\033[1;34m XX");
      0022EE C0 07            [24]  828 	push	ar7
      0022F0 C0 06            [24]  829 	push	ar6
      0022F2 C0 05            [24]  830 	push	ar5
      0022F4 C0 04            [24]  831 	push	ar4
      0022F6 C0 03            [24]  832 	push	ar3
      0022F8 C0 01            [24]  833 	push	ar1
      0022FA 74 A0            [12]  834 	mov	a,#___str_2
      0022FC C0 E0            [24]  835 	push	acc
      0022FE 74 46            [12]  836 	mov	a,#(___str_2 >> 8)
      002300 C0 E0            [24]  837 	push	acc
      002302 12 36 00         [24]  838 	lcall	_printf_tiny
      002305 15 81            [12]  839 	dec	sp
      002307 15 81            [12]  840 	dec	sp
      002309 D0 01            [24]  841 	pop	ar1
      00230B D0 03            [24]  842 	pop	ar3
      00230D D0 04            [24]  843 	pop	ar4
      00230F D0 05            [24]  844 	pop	ar5
      002311 D0 06            [24]  845 	pop	ar6
      002313 D0 07            [24]  846 	pop	ar7
      002315 02 23 97         [24]  847 	ljmp	00109$
      002318                        848 00108$:
                                    849 ;	character.c:119: if (length == 16) {
      002318 E5 0A            [12]  850 	mov	a,_buffer0_hexdump_sloc1_1_0
      00231A 60 31            [24]  851 	jz	00104$
                                    852 ;	character.c:120: printf_tiny("\033[1;34m %x", buffer0_ptr[itr]);
      00231C A8 0B            [24]  853 	mov	r0,_buffer0_hexdump_sloc2_1_0
      00231E 7A 00            [12]  854 	mov	r2,#0x00
      002320 C0 07            [24]  855 	push	ar7
      002322 C0 06            [24]  856 	push	ar6
      002324 C0 05            [24]  857 	push	ar5
      002326 C0 04            [24]  858 	push	ar4
      002328 C0 03            [24]  859 	push	ar3
      00232A C0 01            [24]  860 	push	ar1
      00232C C0 00            [24]  861 	push	ar0
      00232E C0 02            [24]  862 	push	ar2
      002330 74 AB            [12]  863 	mov	a,#___str_3
      002332 C0 E0            [24]  864 	push	acc
      002334 74 46            [12]  865 	mov	a,#(___str_3 >> 8)
      002336 C0 E0            [24]  866 	push	acc
      002338 12 36 00         [24]  867 	lcall	_printf_tiny
      00233B E5 81            [12]  868 	mov	a,sp
      00233D 24 FC            [12]  869 	add	a,#0xfc
      00233F F5 81            [12]  870 	mov	sp,a
      002341 D0 01            [24]  871 	pop	ar1
      002343 D0 03            [24]  872 	pop	ar3
      002345 D0 04            [24]  873 	pop	ar4
      002347 D0 05            [24]  874 	pop	ar5
      002349 D0 06            [24]  875 	pop	ar6
      00234B D0 07            [24]  876 	pop	ar7
      00234D                        877 00104$:
                                    878 ;	character.c:122: if (length == 32)
      00234D E9               [12]  879 	mov	a,r1
      00234E 60 47            [24]  880 	jz	00109$
                                    881 ;	character.c:124: printf_tiny("\033[1;34m %d", buffer0_ptr[itr]);
      002350 C0 01            [24]  882 	push	ar1
      002352 E5 08            [12]  883 	mov	a,_buffer0_hexdump_sloc0_1_0
      002354 2E               [12]  884 	add	a,r6
      002355 F8               [12]  885 	mov	r0,a
      002356 E5 09            [12]  886 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      002358 3D               [12]  887 	addc	a,r5
      002359 F9               [12]  888 	mov	r1,a
      00235A 8F 02            [24]  889 	mov	ar2,r7
      00235C 88 82            [24]  890 	mov	dpl,r0
      00235E 89 83            [24]  891 	mov	dph,r1
      002360 8A F0            [24]  892 	mov	b,r2
      002362 12 44 5C         [24]  893 	lcall	__gptrget
      002365 F8               [12]  894 	mov	r0,a
      002366 7A 00            [12]  895 	mov	r2,#0x00
      002368 C0 07            [24]  896 	push	ar7
      00236A C0 06            [24]  897 	push	ar6
      00236C C0 05            [24]  898 	push	ar5
      00236E C0 04            [24]  899 	push	ar4
      002370 C0 03            [24]  900 	push	ar3
      002372 C0 01            [24]  901 	push	ar1
      002374 C0 00            [24]  902 	push	ar0
      002376 C0 02            [24]  903 	push	ar2
      002378 74 B6            [12]  904 	mov	a,#___str_4
      00237A C0 E0            [24]  905 	push	acc
      00237C 74 46            [12]  906 	mov	a,#(___str_4 >> 8)
      00237E C0 E0            [24]  907 	push	acc
      002380 12 36 00         [24]  908 	lcall	_printf_tiny
      002383 E5 81            [12]  909 	mov	a,sp
      002385 24 FC            [12]  910 	add	a,#0xfc
      002387 F5 81            [12]  911 	mov	sp,a
      002389 D0 01            [24]  912 	pop	ar1
      00238B D0 03            [24]  913 	pop	ar3
      00238D D0 04            [24]  914 	pop	ar4
      00238F D0 05            [24]  915 	pop	ar5
      002391 D0 06            [24]  916 	pop	ar6
      002393 D0 07            [24]  917 	pop	ar7
                                    918 ;	character.c:134: itr++;
      002395 D0 01            [24]  919 	pop	ar1
                                    920 ;	character.c:124: printf_tiny("\033[1;34m %d", buffer0_ptr[itr]);
      002397                        921 00109$:
                                    922 ;	character.c:128: if ((itr + 1) % length == 0)
      002397 74 01            [12]  923 	mov	a,#0x01
      002399 25 08            [12]  924 	add	a,_buffer0_hexdump_sloc0_1_0
      00239B F8               [12]  925 	mov	r0,a
      00239C E4               [12]  926 	clr	a
      00239D 35 09            [12]  927 	addc	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      00239F FA               [12]  928 	mov	r2,a
      0023A0 90 1C 85         [24]  929 	mov	dptr,#__modsint_PARM_2
      0023A3 EB               [12]  930 	mov	a,r3
      0023A4 F0               [24]  931 	movx	@dptr,a
      0023A5 EC               [12]  932 	mov	a,r4
      0023A6 A3               [24]  933 	inc	dptr
      0023A7 F0               [24]  934 	movx	@dptr,a
      0023A8 88 82            [24]  935 	mov	dpl,r0
      0023AA 8A 83            [24]  936 	mov	dph,r2
      0023AC C0 07            [24]  937 	push	ar7
      0023AE C0 06            [24]  938 	push	ar6
      0023B0 C0 05            [24]  939 	push	ar5
      0023B2 C0 04            [24]  940 	push	ar4
      0023B4 C0 03            [24]  941 	push	ar3
      0023B6 C0 01            [24]  942 	push	ar1
      0023B8 12 38 CE         [24]  943 	lcall	__modsint
      0023BB E5 82            [12]  944 	mov	a,dpl
      0023BD 85 83 F0         [24]  945 	mov	b,dph
      0023C0 D0 01            [24]  946 	pop	ar1
      0023C2 D0 03            [24]  947 	pop	ar3
      0023C4 D0 04            [24]  948 	pop	ar4
      0023C6 D0 05            [24]  949 	pop	ar5
      0023C8 D0 06            [24]  950 	pop	ar6
      0023CA D0 07            [24]  951 	pop	ar7
      0023CC 45 F0            [12]  952 	orl	a,b
      0023CE 70 2D            [24]  953 	jnz	00111$
                                    954 ;	character.c:130: printf_tiny("\033[1;34m\n\r");
      0023D0 C0 07            [24]  955 	push	ar7
      0023D2 C0 06            [24]  956 	push	ar6
      0023D4 C0 05            [24]  957 	push	ar5
      0023D6 C0 04            [24]  958 	push	ar4
      0023D8 C0 03            [24]  959 	push	ar3
      0023DA C0 01            [24]  960 	push	ar1
      0023DC 74 8A            [12]  961 	mov	a,#___str_0
      0023DE C0 E0            [24]  962 	push	acc
      0023E0 74 46            [12]  963 	mov	a,#(___str_0 >> 8)
      0023E2 C0 E0            [24]  964 	push	acc
      0023E4 12 36 00         [24]  965 	lcall	_printf_tiny
      0023E7 15 81            [12]  966 	dec	sp
      0023E9 15 81            [12]  967 	dec	sp
      0023EB D0 01            [24]  968 	pop	ar1
      0023ED D0 03            [24]  969 	pop	ar3
      0023EF D0 04            [24]  970 	pop	ar4
      0023F1 D0 05            [24]  971 	pop	ar5
      0023F3 D0 06            [24]  972 	pop	ar6
      0023F5 D0 07            [24]  973 	pop	ar7
                                    974 ;	character.c:131: print_address = true;
      0023F7 90 1B 7A         [24]  975 	mov	dptr,#_buffer0_hexdump_print_address_65536_57
      0023FA 74 01            [12]  976 	mov	a,#0x01
      0023FC F0               [24]  977 	movx	@dptr,a
      0023FD                        978 00111$:
                                    979 ;	character.c:134: itr++;
      0023FD 05 08            [12]  980 	inc	_buffer0_hexdump_sloc0_1_0
      0023FF E4               [12]  981 	clr	a
      002400 B5 08 02         [24]  982 	cjne	a,_buffer0_hexdump_sloc0_1_0,00157$
      002403 05 09            [12]  983 	inc	(_buffer0_hexdump_sloc0_1_0 + 1)
      002405                        984 00157$:
                                    985 ;	character.c:136: }
      002405 02 22 60         [24]  986 	ljmp	00112$
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'command_processing'
                                    989 ;------------------------------------------------------------
                                    990 ;sloc0                     Allocated with name '_command_processing_sloc0_1_0'
                                    991 ;sloc1                     Allocated with name '_command_processing_sloc1_1_0'
                                    992 ;sloc2                     Allocated with name '_command_processing_sloc2_1_0'
                                    993 ;sloc3                     Allocated with name '_command_processing_sloc3_1_0'
                                    994 ;ch                        Allocated with name '_command_processing_PARM_2'
                                    995 ;new_buffer_index          Allocated with name '_command_processing_PARM_3'
                                    996 ;free_buffer_count         Allocated with name '_command_processing_PARM_4'
                                    997 ;filled_buffer_count       Allocated with name '_command_processing_PARM_5'
                                    998 ;storage_character_count   Allocated with name '_command_processing_PARM_6'
                                    999 ;total_characters_count    Allocated with name '_command_processing_PARM_7'
                                   1000 ;buffer0_size              Allocated with name '_command_processing_PARM_8'
                                   1001 ;cmd_detected              Allocated with name '_command_processing_cmd_detected_65536_65'
                                   1002 ;buffer_size               Allocated with name '_command_processing_buffer_size_196609_69'
                                   1003 ;buffer_ptr                Allocated with name '_command_processing_buffer_ptr_196610_71'
                                   1004 ;ch                        Allocated with name '_command_processing_ch_196611_73'
                                   1005 ;temp                      Allocated with name '_command_processing_temp_262148_76'
                                   1006 ;i                         Allocated with name '_command_processing_i_262147_82'
                                   1007 ;buffer_to_free            Allocated with name '_command_processing_buffer_to_free_327683_83'
                                   1008 ;i                         Allocated with name '_command_processing_i_262147_86'
                                   1009 ;------------------------------------------------------------
                                   1010 ;	character.c:139: int command_processing(int cmd_detected, char ch, int * new_buffer_index,
                                   1011 ;	-----------------------------------------
                                   1012 ;	 function command_processing
                                   1013 ;	-----------------------------------------
      002408                       1014 _command_processing:
      002408 AF 83            [24] 1015 	mov	r7,dph
      00240A E5 82            [12] 1016 	mov	a,dpl
      00240C 90 1B 8D         [24] 1017 	mov	dptr,#_command_processing_cmd_detected_65536_65
      00240F F0               [24] 1018 	movx	@dptr,a
      002410 EF               [12] 1019 	mov	a,r7
      002411 A3               [24] 1020 	inc	dptr
      002412 F0               [24] 1021 	movx	@dptr,a
                                   1022 ;	character.c:142: buffer0and1_size = buffer0_size;
      002413 90 1B 8B         [24] 1023 	mov	dptr,#_command_processing_PARM_8
      002416 E0               [24] 1024 	movx	a,@dptr
      002417 FE               [12] 1025 	mov	r6,a
      002418 A3               [24] 1026 	inc	dptr
      002419 E0               [24] 1027 	movx	a,@dptr
      00241A FF               [12] 1028 	mov	r7,a
      00241B 90 1D 93         [24] 1029 	mov	dptr,#_buffer0and1_size
      00241E EE               [12] 1030 	mov	a,r6
      00241F F0               [24] 1031 	movx	@dptr,a
      002420 EF               [12] 1032 	mov	a,r7
      002421 A3               [24] 1033 	inc	dptr
      002422 F0               [24] 1034 	movx	@dptr,a
                                   1035 ;	character.c:143: if(cmd_detected)            // if command detected
      002423 90 1B 8D         [24] 1036 	mov	dptr,#_command_processing_cmd_detected_65536_65
      002426 E0               [24] 1037 	movx	a,@dptr
      002427 F5 F0            [12] 1038 	mov	b,a
      002429 A3               [24] 1039 	inc	dptr
      00242A E0               [24] 1040 	movx	a,@dptr
      00242B 45 F0            [12] 1041 	orl	a,b
      00242D 70 03            [24] 1042 	jnz	00235$
      00242F 02 2E 6E         [24] 1043 	ljmp	00141$
      002432                       1044 00235$:
                                   1045 ;	character.c:145: switch(ch)              // switch based on the input character
      002432 90 1B 7B         [24] 1046 	mov	dptr,#_command_processing_PARM_2
      002435 E0               [24] 1047 	movx	a,@dptr
      002436 FF               [12] 1048 	mov	r7,a
      002437 BF 2B 02         [24] 1049 	cjne	r7,#0x2b,00236$
      00243A 80 1B            [24] 1050 	sjmp	00101$
      00243C                       1051 00236$:
      00243C BF 2D 03         [24] 1052 	cjne	r7,#0x2d,00237$
      00243F 02 26 CA         [24] 1053 	ljmp	00107$
      002442                       1054 00237$:
      002442 BF 3D 03         [24] 1055 	cjne	r7,#0x3d,00238$
      002445 02 2B 9B         [24] 1056 	ljmp	00130$
      002448                       1057 00238$:
      002448 BF 3F 03         [24] 1058 	cjne	r7,#0x3f,00239$
      00244B 02 2B B9         [24] 1059 	ljmp	00131$
      00244E                       1060 00239$:
      00244E BF 40 03         [24] 1061 	cjne	r7,#0x40,00240$
      002451 02 2A 64         [24] 1062 	ljmp	00125$
      002454                       1063 00240$:
      002454 02 2E 68         [24] 1064 	ljmp	00138$
                                   1065 ;	character.c:147: case '+':               // if input character is '+'
      002457                       1066 00101$:
                                   1067 ;	character.c:149: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002457 74 C1            [12] 1068 	mov	a,#___str_5
      002459 C0 E0            [24] 1069 	push	acc
      00245B 74 46            [12] 1070 	mov	a,#(___str_5 >> 8)
      00245D C0 E0            [24] 1071 	push	acc
      00245F 12 36 00         [24] 1072 	lcall	_printf_tiny
      002462 15 81            [12] 1073 	dec	sp
      002464 15 81            [12] 1074 	dec	sp
                                   1075 ;	character.c:150: printf_tiny("\033[1;33m|************ Processing [+] *******************|\n\r");
      002466 74 FC            [12] 1076 	mov	a,#___str_6
      002468 C0 E0            [24] 1077 	push	acc
      00246A 74 46            [12] 1078 	mov	a,#(___str_6 >> 8)
      00246C C0 E0            [24] 1079 	push	acc
      00246E 12 36 00         [24] 1080 	lcall	_printf_tiny
      002471 15 81            [12] 1081 	dec	sp
      002473 15 81            [12] 1082 	dec	sp
                                   1083 ;	character.c:151: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002475 74 C1            [12] 1084 	mov	a,#___str_5
      002477 C0 E0            [24] 1085 	push	acc
      002479 74 46            [12] 1086 	mov	a,#(___str_5 >> 8)
      00247B C0 E0            [24] 1087 	push	acc
      00247D 12 36 00         [24] 1088 	lcall	_printf_tiny
      002480 15 81            [12] 1089 	dec	sp
      002482 15 81            [12] 1090 	dec	sp
                                   1091 ;	character.c:153: (*new_buffer_index)++;                      // increment buffer index
      002484 90 1B 7C         [24] 1092 	mov	dptr,#_command_processing_PARM_3
      002487 E0               [24] 1093 	movx	a,@dptr
      002488 FD               [12] 1094 	mov	r5,a
      002489 A3               [24] 1095 	inc	dptr
      00248A E0               [24] 1096 	movx	a,@dptr
      00248B FE               [12] 1097 	mov	r6,a
      00248C A3               [24] 1098 	inc	dptr
      00248D E0               [24] 1099 	movx	a,@dptr
      00248E FF               [12] 1100 	mov	r7,a
      00248F 8D 82            [24] 1101 	mov	dpl,r5
      002491 8E 83            [24] 1102 	mov	dph,r6
      002493 8F F0            [24] 1103 	mov	b,r7
      002495 12 44 5C         [24] 1104 	lcall	__gptrget
      002498 FB               [12] 1105 	mov	r3,a
      002499 A3               [24] 1106 	inc	dptr
      00249A 12 44 5C         [24] 1107 	lcall	__gptrget
      00249D FC               [12] 1108 	mov	r4,a
      00249E 0B               [12] 1109 	inc	r3
      00249F BB 00 01         [24] 1110 	cjne	r3,#0x00,00241$
      0024A2 0C               [12] 1111 	inc	r4
      0024A3                       1112 00241$:
      0024A3 8D 82            [24] 1113 	mov	dpl,r5
      0024A5 8E 83            [24] 1114 	mov	dph,r6
      0024A7 8F F0            [24] 1115 	mov	b,r7
      0024A9 EB               [12] 1116 	mov	a,r3
      0024AA 12 35 E5         [24] 1117 	lcall	__gptrput
      0024AD A3               [24] 1118 	inc	dptr
      0024AE EC               [12] 1119 	mov	a,r4
      0024AF 12 35 E5         [24] 1120 	lcall	__gptrput
                                   1121 ;	character.c:154: printf_tiny("\033[1;36m|***********************************************|\n\r");
      0024B2 C0 07            [24] 1122 	push	ar7
      0024B4 C0 06            [24] 1123 	push	ar6
      0024B6 C0 05            [24] 1124 	push	ar5
      0024B8 74 37            [12] 1125 	mov	a,#___str_7
      0024BA C0 E0            [24] 1126 	push	acc
      0024BC 74 47            [12] 1127 	mov	a,#(___str_7 >> 8)
      0024BE C0 E0            [24] 1128 	push	acc
      0024C0 12 36 00         [24] 1129 	lcall	_printf_tiny
      0024C3 15 81            [12] 1130 	dec	sp
      0024C5 15 81            [12] 1131 	dec	sp
                                   1132 ;	character.c:155: printf_tiny("\033[1;36m|********* Enter size for new bufer ************|\n\r");
      0024C7 74 72            [12] 1133 	mov	a,#___str_8
      0024C9 C0 E0            [24] 1134 	push	acc
      0024CB 74 47            [12] 1135 	mov	a,#(___str_8 >> 8)
      0024CD C0 E0            [24] 1136 	push	acc
      0024CF 12 36 00         [24] 1137 	lcall	_printf_tiny
      0024D2 15 81            [12] 1138 	dec	sp
      0024D4 15 81            [12] 1139 	dec	sp
                                   1140 ;	character.c:156: printf_tiny("\033[1;36m|***********************************************|\n\r");
      0024D6 74 37            [12] 1141 	mov	a,#___str_7
      0024D8 C0 E0            [24] 1142 	push	acc
      0024DA 74 47            [12] 1143 	mov	a,#(___str_7 >> 8)
      0024DC C0 E0            [24] 1144 	push	acc
      0024DE 12 36 00         [24] 1145 	lcall	_printf_tiny
      0024E1 15 81            [12] 1146 	dec	sp
      0024E3 15 81            [12] 1147 	dec	sp
                                   1148 ;	character.c:157: gets_(size);                                // get buffer size
      0024E5 90 1C C5         [24] 1149 	mov	dptr,#_size
      0024E8 12 32 BF         [24] 1150 	lcall	_gets_
                                   1151 ;	character.c:158: int buffer_size = atoi(size);               // convert buffer size to integer
      0024EB 90 1C C5         [24] 1152 	mov	dptr,#_size
      0024EE 75 F0 00         [24] 1153 	mov	b,#0x00
      0024F1 12 34 C1         [24] 1154 	lcall	_atoi
      0024F4 AB 82            [24] 1155 	mov	r3,dpl
      0024F6 AC 83            [24] 1156 	mov	r4,dph
      0024F8 D0 05            [24] 1157 	pop	ar5
      0024FA D0 06            [24] 1158 	pop	ar6
      0024FC D0 07            [24] 1159 	pop	ar7
                                   1160 ;	character.c:159: if (buffer_size < 30 || buffer_size > 300) { // check if buffer size is within range
      0024FE C3               [12] 1161 	clr	c
      0024FF EB               [12] 1162 	mov	a,r3
      002500 94 1E            [12] 1163 	subb	a,#0x1e
      002502 EC               [12] 1164 	mov	a,r4
      002503 64 80            [12] 1165 	xrl	a,#0x80
      002505 94 80            [12] 1166 	subb	a,#0x80
      002507 40 0E            [24] 1167 	jc	00102$
      002509 74 2C            [12] 1168 	mov	a,#0x2c
      00250B 9B               [12] 1169 	subb	a,r3
      00250C 74 81            [12] 1170 	mov	a,#(0x01 ^ 0x80)
      00250E 8C F0            [24] 1171 	mov	b,r4
      002510 63 F0 80         [24] 1172 	xrl	b,#0x80
      002513 95 F0            [12] 1173 	subb	a,b
      002515 50 12            [24] 1174 	jnc	00103$
      002517                       1175 00102$:
                                   1176 ;	character.c:160: printf_tiny("\033[1;31mInvalid Input : The buffer size should be in the range [30, 300]\n\r\n\r");
      002517 74 AD            [12] 1177 	mov	a,#___str_9
      002519 C0 E0            [24] 1178 	push	acc
      00251B 74 47            [12] 1179 	mov	a,#(___str_9 >> 8)
      00251D C0 E0            [24] 1180 	push	acc
      00251F 12 36 00         [24] 1181 	lcall	_printf_tiny
      002522 15 81            [12] 1182 	dec	sp
      002524 15 81            [12] 1183 	dec	sp
                                   1184 ;	character.c:161: break;                                  // break out of switch
      002526 02 2E 6E         [24] 1185 	ljmp	00141$
      002529                       1186 00103$:
                                   1187 ;	character.c:163: __xdata char* buffer_ptr = (__xdata char*)malloc(buffer_size);  // allocate memory for buffer
      002529 8B 82            [24] 1188 	mov	dpl,r3
      00252B 8C 83            [24] 1189 	mov	dph,r4
      00252D C0 07            [24] 1190 	push	ar7
      00252F C0 06            [24] 1191 	push	ar6
      002531 C0 05            [24] 1192 	push	ar5
      002533 C0 04            [24] 1193 	push	ar4
      002535 C0 03            [24] 1194 	push	ar3
      002537 12 37 45         [24] 1195 	lcall	_malloc
      00253A A9 82            [24] 1196 	mov	r1,dpl
      00253C AA 83            [24] 1197 	mov	r2,dph
      00253E D0 03            [24] 1198 	pop	ar3
      002540 D0 04            [24] 1199 	pop	ar4
      002542 D0 05            [24] 1200 	pop	ar5
      002544 D0 06            [24] 1201 	pop	ar6
      002546 D0 07            [24] 1202 	pop	ar7
      002548 89 0C            [24] 1203 	mov	_command_processing_sloc0_1_0,r1
      00254A 8A 0D            [24] 1204 	mov	(_command_processing_sloc0_1_0 + 1),r2
                                   1205 ;	character.c:165: if (buffer_ptr == NULL) {                                       // check if buffer allocation failed
      00254C E5 0C            [12] 1206 	mov	a,_command_processing_sloc0_1_0
      00254E 45 0D            [12] 1207 	orl	a,(_command_processing_sloc0_1_0 + 1)
      002550 70 12            [24] 1208 	jnz	00106$
                                   1209 ;	character.c:166: printf_tiny("\033[1;31mInvalid input : Failed to allocate buffer\n\r\n\r");
      002552 74 F9            [12] 1210 	mov	a,#___str_10
      002554 C0 E0            [24] 1211 	push	acc
      002556 74 47            [12] 1212 	mov	a,#(___str_10 >> 8)
      002558 C0 E0            [24] 1213 	push	acc
      00255A 12 36 00         [24] 1214 	lcall	_printf_tiny
      00255D 15 81            [12] 1215 	dec	sp
      00255F 15 81            [12] 1216 	dec	sp
                                   1217 ;	character.c:167: break;                                                      // break out of switch
      002561 02 2E 6E         [24] 1218 	ljmp	00141$
      002564                       1219 00106$:
                                   1220 ;	character.c:170: buffer_size_arr[(*new_buffer_index)-1] = buffer_size;           // store buffer size in array
      002564 8D 82            [24] 1221 	mov	dpl,r5
      002566 8E 83            [24] 1222 	mov	dph,r6
      002568 8F F0            [24] 1223 	mov	b,r7
      00256A 12 44 5C         [24] 1224 	lcall	__gptrget
      00256D F8               [12] 1225 	mov	r0,a
      00256E A3               [24] 1226 	inc	dptr
      00256F 12 44 5C         [24] 1227 	lcall	__gptrget
      002572 FA               [12] 1228 	mov	r2,a
      002573 18               [12] 1229 	dec	r0
      002574 B8 FF 01         [24] 1230 	cjne	r0,#0xff,00245$
      002577 1A               [12] 1231 	dec	r2
      002578                       1232 00245$:
      002578 E8               [12] 1233 	mov	a,r0
      002579 28               [12] 1234 	add	a,r0
      00257A F8               [12] 1235 	mov	r0,a
      00257B EA               [12] 1236 	mov	a,r2
      00257C 33               [12] 1237 	rlc	a
      00257D FA               [12] 1238 	mov	r2,a
      00257E E8               [12] 1239 	mov	a,r0
      00257F 24 A5            [12] 1240 	add	a,#_buffer_size_arr
      002581 F5 82            [12] 1241 	mov	dpl,a
      002583 EA               [12] 1242 	mov	a,r2
      002584 34 1D            [12] 1243 	addc	a,#(_buffer_size_arr >> 8)
      002586 F5 83            [12] 1244 	mov	dph,a
      002588 EB               [12] 1245 	mov	a,r3
      002589 F0               [24] 1246 	movx	@dptr,a
      00258A EC               [12] 1247 	mov	a,r4
      00258B A3               [24] 1248 	inc	dptr
      00258C F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	character.c:171: ++(*filled_buffer_count);                                       // increment filled buffer count
      00258D 90 1B 82         [24] 1251 	mov	dptr,#_command_processing_PARM_5
      002590 E0               [24] 1252 	movx	a,@dptr
      002591 FA               [12] 1253 	mov	r2,a
      002592 A3               [24] 1254 	inc	dptr
      002593 E0               [24] 1255 	movx	a,@dptr
      002594 FB               [12] 1256 	mov	r3,a
      002595 A3               [24] 1257 	inc	dptr
      002596 E0               [24] 1258 	movx	a,@dptr
      002597 FC               [12] 1259 	mov	r4,a
      002598 8A 82            [24] 1260 	mov	dpl,r2
      00259A 8B 83            [24] 1261 	mov	dph,r3
      00259C 8C F0            [24] 1262 	mov	b,r4
      00259E 12 44 5C         [24] 1263 	lcall	__gptrget
      0025A1 F8               [12] 1264 	mov	r0,a
      0025A2 A3               [24] 1265 	inc	dptr
      0025A3 12 44 5C         [24] 1266 	lcall	__gptrget
      0025A6 F9               [12] 1267 	mov	r1,a
      0025A7 08               [12] 1268 	inc	r0
      0025A8 B8 00 01         [24] 1269 	cjne	r0,#0x00,00246$
      0025AB 09               [12] 1270 	inc	r1
      0025AC                       1271 00246$:
      0025AC 8A 82            [24] 1272 	mov	dpl,r2
      0025AE 8B 83            [24] 1273 	mov	dph,r3
      0025B0 8C F0            [24] 1274 	mov	b,r4
      0025B2 E8               [12] 1275 	mov	a,r0
      0025B3 12 35 E5         [24] 1276 	lcall	__gptrput
      0025B6 A3               [24] 1277 	inc	dptr
      0025B7 E9               [12] 1278 	mov	a,r1
      0025B8 12 35 E5         [24] 1279 	lcall	__gptrput
                                   1280 ;	character.c:173: new_buffer_arr[(*new_buffer_index)-1] = buffer_ptr;             // store buffer pointer in array
      0025BB 8D 82            [24] 1281 	mov	dpl,r5
      0025BD 8E 83            [24] 1282 	mov	dph,r6
      0025BF 8F F0            [24] 1283 	mov	b,r7
      0025C1 12 44 5C         [24] 1284 	lcall	__gptrget
      0025C4 F8               [12] 1285 	mov	r0,a
      0025C5 A3               [24] 1286 	inc	dptr
      0025C6 12 44 5C         [24] 1287 	lcall	__gptrget
      0025C9 F9               [12] 1288 	mov	r1,a
      0025CA 18               [12] 1289 	dec	r0
      0025CB B8 FF 01         [24] 1290 	cjne	r0,#0xff,00247$
      0025CE 19               [12] 1291 	dec	r1
      0025CF                       1292 00247$:
      0025CF E8               [12] 1293 	mov	a,r0
      0025D0 28               [12] 1294 	add	a,r0
      0025D1 F8               [12] 1295 	mov	r0,a
      0025D2 E9               [12] 1296 	mov	a,r1
      0025D3 33               [12] 1297 	rlc	a
      0025D4 F9               [12] 1298 	mov	r1,a
      0025D5 E8               [12] 1299 	mov	a,r0
      0025D6 24 8F            [12] 1300 	add	a,#_new_buffer_arr
      0025D8 F5 82            [12] 1301 	mov	dpl,a
      0025DA E9               [12] 1302 	mov	a,r1
      0025DB 34 1B            [12] 1303 	addc	a,#(_new_buffer_arr >> 8)
      0025DD F5 83            [12] 1304 	mov	dph,a
      0025DF E5 0C            [12] 1305 	mov	a,_command_processing_sloc0_1_0
      0025E1 F0               [24] 1306 	movx	@dptr,a
      0025E2 E5 0D            [12] 1307 	mov	a,(_command_processing_sloc0_1_0 + 1)
      0025E4 A3               [24] 1308 	inc	dptr
      0025E5 F0               [24] 1309 	movx	@dptr,a
                                   1310 ;	character.c:174: buff_not_cleared[(*new_buffer_index) -1] = 0;                      // set flag to indicate new buffer is created
      0025E6 8D 82            [24] 1311 	mov	dpl,r5
      0025E8 8E 83            [24] 1312 	mov	dph,r6
      0025EA 8F F0            [24] 1313 	mov	b,r7
      0025EC 12 44 5C         [24] 1314 	lcall	__gptrget
      0025EF F8               [12] 1315 	mov	r0,a
      0025F0 A3               [24] 1316 	inc	dptr
      0025F1 12 44 5C         [24] 1317 	lcall	__gptrget
      0025F4 F9               [12] 1318 	mov	r1,a
      0025F5 18               [12] 1319 	dec	r0
      0025F6 B8 FF 01         [24] 1320 	cjne	r0,#0xff,00248$
      0025F9 19               [12] 1321 	dec	r1
      0025FA                       1322 00248$:
      0025FA E8               [12] 1323 	mov	a,r0
      0025FB 28               [12] 1324 	add	a,r0
      0025FC F8               [12] 1325 	mov	r0,a
      0025FD E9               [12] 1326 	mov	a,r1
      0025FE 33               [12] 1327 	rlc	a
      0025FF F9               [12] 1328 	mov	r1,a
      002600 E8               [12] 1329 	mov	a,r0
      002601 24 CB            [12] 1330 	add	a,#_buff_not_cleared
      002603 F5 82            [12] 1331 	mov	dpl,a
      002605 E9               [12] 1332 	mov	a,r1
      002606 34 1C            [12] 1333 	addc	a,#(_buff_not_cleared >> 8)
      002608 F5 83            [12] 1334 	mov	dph,a
      00260A E4               [12] 1335 	clr	a
      00260B F0               [24] 1336 	movx	@dptr,a
      00260C A3               [24] 1337 	inc	dptr
      00260D F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	character.c:176: printf_tiny("\033[1;0mNew buffer allocated successfully : Buffer[%d]\n\r", ((*new_buffer_index)-1)); // print successful buffer allocation message
      00260E 8D 82            [24] 1340 	mov	dpl,r5
      002610 8E 83            [24] 1341 	mov	dph,r6
      002612 8F F0            [24] 1342 	mov	b,r7
      002614 12 44 5C         [24] 1343 	lcall	__gptrget
      002617 F8               [12] 1344 	mov	r0,a
      002618 A3               [24] 1345 	inc	dptr
      002619 12 44 5C         [24] 1346 	lcall	__gptrget
      00261C F9               [12] 1347 	mov	r1,a
      00261D 18               [12] 1348 	dec	r0
      00261E B8 FF 01         [24] 1349 	cjne	r0,#0xff,00249$
      002621 19               [12] 1350 	dec	r1
      002622                       1351 00249$:
      002622 C0 07            [24] 1352 	push	ar7
      002624 C0 06            [24] 1353 	push	ar6
      002626 C0 05            [24] 1354 	push	ar5
      002628 C0 04            [24] 1355 	push	ar4
      00262A C0 03            [24] 1356 	push	ar3
      00262C C0 02            [24] 1357 	push	ar2
      00262E C0 00            [24] 1358 	push	ar0
      002630 C0 01            [24] 1359 	push	ar1
      002632 74 2E            [12] 1360 	mov	a,#___str_11
      002634 C0 E0            [24] 1361 	push	acc
      002636 74 48            [12] 1362 	mov	a,#(___str_11 >> 8)
      002638 C0 E0            [24] 1363 	push	acc
      00263A 12 36 00         [24] 1364 	lcall	_printf_tiny
      00263D E5 81            [12] 1365 	mov	a,sp
      00263F 24 FC            [12] 1366 	add	a,#0xfc
      002641 F5 81            [12] 1367 	mov	sp,a
      002643 D0 02            [24] 1368 	pop	ar2
      002645 D0 03            [24] 1369 	pop	ar3
      002647 D0 04            [24] 1370 	pop	ar4
      002649 D0 05            [24] 1371 	pop	ar5
      00264B D0 06            [24] 1372 	pop	ar6
      00264D D0 07            [24] 1373 	pop	ar7
                                   1374 ;	character.c:177: printf_tiny("\033[1;0mTotal Number of Buffers including buffer0 & buffer1 = [%d]\n\r",(*new_buffer_index)); // print total number of buffers
      00264F 8D 82            [24] 1375 	mov	dpl,r5
      002651 8E 83            [24] 1376 	mov	dph,r6
      002653 8F F0            [24] 1377 	mov	b,r7
      002655 12 44 5C         [24] 1378 	lcall	__gptrget
      002658 FD               [12] 1379 	mov	r5,a
      002659 A3               [24] 1380 	inc	dptr
      00265A 12 44 5C         [24] 1381 	lcall	__gptrget
      00265D FE               [12] 1382 	mov	r6,a
      00265E C0 04            [24] 1383 	push	ar4
      002660 C0 03            [24] 1384 	push	ar3
      002662 C0 02            [24] 1385 	push	ar2
      002664 C0 05            [24] 1386 	push	ar5
      002666 C0 06            [24] 1387 	push	ar6
      002668 74 65            [12] 1388 	mov	a,#___str_12
      00266A C0 E0            [24] 1389 	push	acc
      00266C 74 48            [12] 1390 	mov	a,#(___str_12 >> 8)
      00266E C0 E0            [24] 1391 	push	acc
      002670 12 36 00         [24] 1392 	lcall	_printf_tiny
      002673 E5 81            [12] 1393 	mov	a,sp
      002675 24 FC            [12] 1394 	add	a,#0xfc
      002677 F5 81            [12] 1395 	mov	sp,a
      002679 D0 02            [24] 1396 	pop	ar2
      00267B D0 03            [24] 1397 	pop	ar3
      00267D D0 04            [24] 1398 	pop	ar4
                                   1399 ;	character.c:178: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \r\nTotal Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count)); // print filled and empty buffer count
      00267F 90 1B 7F         [24] 1400 	mov	dptr,#_command_processing_PARM_4
      002682 E0               [24] 1401 	movx	a,@dptr
      002683 FD               [12] 1402 	mov	r5,a
      002684 A3               [24] 1403 	inc	dptr
      002685 E0               [24] 1404 	movx	a,@dptr
      002686 FE               [12] 1405 	mov	r6,a
      002687 A3               [24] 1406 	inc	dptr
      002688 E0               [24] 1407 	movx	a,@dptr
      002689 FF               [12] 1408 	mov	r7,a
      00268A 8D 82            [24] 1409 	mov	dpl,r5
      00268C 8E 83            [24] 1410 	mov	dph,r6
      00268E 8F F0            [24] 1411 	mov	b,r7
      002690 12 44 5C         [24] 1412 	lcall	__gptrget
      002693 FD               [12] 1413 	mov	r5,a
      002694 A3               [24] 1414 	inc	dptr
      002695 12 44 5C         [24] 1415 	lcall	__gptrget
      002698 FE               [12] 1416 	mov	r6,a
      002699 8A 82            [24] 1417 	mov	dpl,r2
      00269B 8B 83            [24] 1418 	mov	dph,r3
      00269D 8C F0            [24] 1419 	mov	b,r4
      00269F 12 44 5C         [24] 1420 	lcall	__gptrget
      0026A2 FA               [12] 1421 	mov	r2,a
      0026A3 A3               [24] 1422 	inc	dptr
      0026A4 12 44 5C         [24] 1423 	lcall	__gptrget
      0026A7 FB               [12] 1424 	mov	r3,a
      0026A8 C0 05            [24] 1425 	push	ar5
      0026AA C0 06            [24] 1426 	push	ar6
      0026AC C0 02            [24] 1427 	push	ar2
      0026AE C0 03            [24] 1428 	push	ar3
      0026B0 74 A8            [12] 1429 	mov	a,#___str_13
      0026B2 C0 E0            [24] 1430 	push	acc
      0026B4 74 48            [12] 1431 	mov	a,#(___str_13 >> 8)
      0026B6 C0 E0            [24] 1432 	push	acc
      0026B8 12 36 00         [24] 1433 	lcall	_printf_tiny
      0026BB E5 81            [12] 1434 	mov	a,sp
      0026BD 24 FA            [12] 1435 	add	a,#0xfa
      0026BF F5 81            [12] 1436 	mov	sp,a
                                   1437 ;	character.c:179: DEBUGPORT(0x10);
      0026C1 75 82 10         [24] 1438 	mov	dpl,#0x10
      0026C4 12 21 B2         [24] 1439 	lcall	_dataout
                                   1440 ;	character.c:180: break;                                                          // break out of switch
      0026C7 02 2E 6E         [24] 1441 	ljmp	00141$
                                   1442 ;	character.c:183: case '-':   // if input character is '-'
      0026CA                       1443 00107$:
                                   1444 ;	character.c:185: printf_tiny("\033[1;33m|***********************************************|\n\r");
      0026CA 74 C1            [12] 1445 	mov	a,#___str_5
      0026CC C0 E0            [24] 1446 	push	acc
      0026CE 74 46            [12] 1447 	mov	a,#(___str_5 >> 8)
      0026D0 C0 E0            [24] 1448 	push	acc
      0026D2 12 36 00         [24] 1449 	lcall	_printf_tiny
      0026D5 15 81            [12] 1450 	dec	sp
      0026D7 15 81            [12] 1451 	dec	sp
                                   1452 ;	character.c:186: printf_tiny("\033[1;33m|************ Processing [-] *******************|\n\r");
      0026D9 74 EC            [12] 1453 	mov	a,#___str_14
      0026DB C0 E0            [24] 1454 	push	acc
      0026DD 74 48            [12] 1455 	mov	a,#(___str_14 >> 8)
      0026DF C0 E0            [24] 1456 	push	acc
      0026E1 12 36 00         [24] 1457 	lcall	_printf_tiny
      0026E4 15 81            [12] 1458 	dec	sp
      0026E6 15 81            [12] 1459 	dec	sp
                                   1460 ;	character.c:187: printf_tiny("\033[1;33m|***********************************************|\n\r");
      0026E8 74 C1            [12] 1461 	mov	a,#___str_5
      0026EA C0 E0            [24] 1462 	push	acc
      0026EC 74 46            [12] 1463 	mov	a,#(___str_5 >> 8)
      0026EE C0 E0            [24] 1464 	push	acc
      0026F0 12 36 00         [24] 1465 	lcall	_printf_tiny
      0026F3 15 81            [12] 1466 	dec	sp
      0026F5 15 81            [12] 1467 	dec	sp
                                   1468 ;	character.c:190: buffer_to_delete = 0;
      0026F7 90 1C C9         [24] 1469 	mov	dptr,#_buffer_to_delete
      0026FA E4               [12] 1470 	clr	a
      0026FB F0               [24] 1471 	movx	@dptr,a
      0026FC A3               [24] 1472 	inc	dptr
      0026FD F0               [24] 1473 	movx	@dptr,a
                                   1474 ;	character.c:193: printf_tiny("\033[1;36m|***********************************************|\n\r");
      0026FE 74 37            [12] 1475 	mov	a,#___str_7
      002700 C0 E0            [24] 1476 	push	acc
      002702 74 47            [12] 1477 	mov	a,#(___str_7 >> 8)
      002704 C0 E0            [24] 1478 	push	acc
      002706 12 36 00         [24] 1479 	lcall	_printf_tiny
      002709 15 81            [12] 1480 	dec	sp
      00270B 15 81            [12] 1481 	dec	sp
                                   1482 ;	character.c:194: printf_tiny("\033[1;36m|********* Enter buffer to be deleted **********|\n\r");
      00270D 74 27            [12] 1483 	mov	a,#___str_15
      00270F C0 E0            [24] 1484 	push	acc
      002711 74 49            [12] 1485 	mov	a,#(___str_15 >> 8)
      002713 C0 E0            [24] 1486 	push	acc
      002715 12 36 00         [24] 1487 	lcall	_printf_tiny
      002718 15 81            [12] 1488 	dec	sp
      00271A 15 81            [12] 1489 	dec	sp
                                   1490 ;	character.c:195: printf_tiny("\033[1;36m|********* Current No of buffers:[%d] ***********|\n\r", *new_buffer_index);
      00271C 90 1B 7C         [24] 1491 	mov	dptr,#_command_processing_PARM_3
      00271F E0               [24] 1492 	movx	a,@dptr
      002720 FD               [12] 1493 	mov	r5,a
      002721 A3               [24] 1494 	inc	dptr
      002722 E0               [24] 1495 	movx	a,@dptr
      002723 FE               [12] 1496 	mov	r6,a
      002724 A3               [24] 1497 	inc	dptr
      002725 E0               [24] 1498 	movx	a,@dptr
      002726 FF               [12] 1499 	mov	r7,a
      002727 8D 82            [24] 1500 	mov	dpl,r5
      002729 8E 83            [24] 1501 	mov	dph,r6
      00272B 8F F0            [24] 1502 	mov	b,r7
      00272D 12 44 5C         [24] 1503 	lcall	__gptrget
      002730 FB               [12] 1504 	mov	r3,a
      002731 A3               [24] 1505 	inc	dptr
      002732 12 44 5C         [24] 1506 	lcall	__gptrget
      002735 FC               [12] 1507 	mov	r4,a
      002736 C0 07            [24] 1508 	push	ar7
      002738 C0 06            [24] 1509 	push	ar6
      00273A C0 05            [24] 1510 	push	ar5
      00273C C0 03            [24] 1511 	push	ar3
      00273E C0 04            [24] 1512 	push	ar4
      002740 74 62            [12] 1513 	mov	a,#___str_16
      002742 C0 E0            [24] 1514 	push	acc
      002744 74 49            [12] 1515 	mov	a,#(___str_16 >> 8)
      002746 C0 E0            [24] 1516 	push	acc
      002748 12 36 00         [24] 1517 	lcall	_printf_tiny
      00274B E5 81            [12] 1518 	mov	a,sp
      00274D 24 FC            [12] 1519 	add	a,#0xfc
      00274F F5 81            [12] 1520 	mov	sp,a
                                   1521 ;	character.c:196: printf_tiny("\033[1;36m|********* Note : Index Starts with 0 **********|\n\r");
      002751 74 9E            [12] 1522 	mov	a,#___str_17
      002753 C0 E0            [24] 1523 	push	acc
      002755 74 49            [12] 1524 	mov	a,#(___str_17 >> 8)
      002757 C0 E0            [24] 1525 	push	acc
      002759 12 36 00         [24] 1526 	lcall	_printf_tiny
      00275C 15 81            [12] 1527 	dec	sp
      00275E 15 81            [12] 1528 	dec	sp
                                   1529 ;	character.c:197: printf_tiny("\033[1;36m|***********************************************|\n\r");
      002760 74 37            [12] 1530 	mov	a,#___str_7
      002762 C0 E0            [24] 1531 	push	acc
      002764 74 47            [12] 1532 	mov	a,#(___str_7 >> 8)
      002766 C0 E0            [24] 1533 	push	acc
      002768 12 36 00         [24] 1534 	lcall	_printf_tiny
      00276B 15 81            [12] 1535 	dec	sp
      00276D 15 81            [12] 1536 	dec	sp
      00276F D0 05            [24] 1537 	pop	ar5
      002771 D0 06            [24] 1538 	pop	ar6
      002773 D0 07            [24] 1539 	pop	ar7
                                   1540 ;	character.c:201: do{
      002775                       1541 00111$:
                                   1542 ;	character.c:202: ch = getchar();
      002775 C0 07            [24] 1543 	push	ar7
      002777 C0 06            [24] 1544 	push	ar6
      002779 C0 05            [24] 1545 	push	ar5
      00277B 12 32 92         [24] 1546 	lcall	_getchar
      00277E AB 82            [24] 1547 	mov	r3,dpl
                                   1548 ;	character.c:203: putchar(ch);
      002780 8B 02            [24] 1549 	mov	ar2,r3
      002782 7C 00            [12] 1550 	mov	r4,#0x00
      002784 8A 82            [24] 1551 	mov	dpl,r2
      002786 8C 83            [24] 1552 	mov	dph,r4
      002788 C0 04            [24] 1553 	push	ar4
      00278A C0 03            [24] 1554 	push	ar3
      00278C C0 02            [24] 1555 	push	ar2
      00278E 12 32 A0         [24] 1556 	lcall	_putchar
      002791 D0 02            [24] 1557 	pop	ar2
      002793 D0 03            [24] 1558 	pop	ar3
      002795 D0 04            [24] 1559 	pop	ar4
      002797 D0 05            [24] 1560 	pop	ar5
      002799 D0 06            [24] 1561 	pop	ar6
      00279B D0 07            [24] 1562 	pop	ar7
                                   1563 ;	character.c:206: if (ch < '0' || ch > '9') {
      00279D BB 30 00         [24] 1564 	cjne	r3,#0x30,00250$
      0027A0                       1565 00250$:
      0027A0 40 05            [24] 1566 	jc	00108$
      0027A2 EB               [12] 1567 	mov	a,r3
      0027A3 24 C6            [12] 1568 	add	a,#0xff - 0x39
      0027A5 50 1D            [24] 1569 	jnc	00109$
      0027A7                       1570 00108$:
                                   1571 ;	character.c:207: printf_tiny("\033[1;31mInvalid input : invalid digits entered \n\r\n\r");
      0027A7 C0 07            [24] 1572 	push	ar7
      0027A9 C0 06            [24] 1573 	push	ar6
      0027AB C0 05            [24] 1574 	push	ar5
      0027AD 74 D9            [12] 1575 	mov	a,#___str_18
      0027AF C0 E0            [24] 1576 	push	acc
      0027B1 74 49            [12] 1577 	mov	a,#(___str_18 >> 8)
      0027B3 C0 E0            [24] 1578 	push	acc
      0027B5 12 36 00         [24] 1579 	lcall	_printf_tiny
      0027B8 15 81            [12] 1580 	dec	sp
      0027BA 15 81            [12] 1581 	dec	sp
      0027BC D0 05            [24] 1582 	pop	ar5
      0027BE D0 06            [24] 1583 	pop	ar6
      0027C0 D0 07            [24] 1584 	pop	ar7
                                   1585 ;	character.c:208: break;
      0027C2 80 50            [24] 1586 	sjmp	00113$
      0027C4                       1587 00109$:
                                   1588 ;	character.c:212: int temp = ch - '0';
      0027C4 EA               [12] 1589 	mov	a,r2
      0027C5 24 D0            [12] 1590 	add	a,#0xd0
      0027C7 FA               [12] 1591 	mov	r2,a
      0027C8 EC               [12] 1592 	mov	a,r4
      0027C9 34 FF            [12] 1593 	addc	a,#0xff
      0027CB FC               [12] 1594 	mov	r4,a
                                   1595 ;	character.c:213: buffer_to_delete = buffer_to_delete * 10 + temp;
      0027CC 90 1C C9         [24] 1596 	mov	dptr,#_buffer_to_delete
      0027CF E0               [24] 1597 	movx	a,@dptr
      0027D0 F9               [12] 1598 	mov	r1,a
      0027D1 A3               [24] 1599 	inc	dptr
      0027D2 E0               [24] 1600 	movx	a,@dptr
      0027D3 FB               [12] 1601 	mov	r3,a
      0027D4 90 1C 83         [24] 1602 	mov	dptr,#__mulint_PARM_2
      0027D7 E9               [12] 1603 	mov	a,r1
      0027D8 F0               [24] 1604 	movx	@dptr,a
      0027D9 EB               [12] 1605 	mov	a,r3
      0027DA A3               [24] 1606 	inc	dptr
      0027DB F0               [24] 1607 	movx	@dptr,a
      0027DC 90 00 0A         [24] 1608 	mov	dptr,#0x000a
      0027DF C0 07            [24] 1609 	push	ar7
      0027E1 C0 06            [24] 1610 	push	ar6
      0027E3 C0 05            [24] 1611 	push	ar5
      0027E5 C0 04            [24] 1612 	push	ar4
      0027E7 C0 02            [24] 1613 	push	ar2
      0027E9 12 38 AE         [24] 1614 	lcall	__mulint
      0027EC E5 82            [12] 1615 	mov	a,dpl
      0027EE 85 83 F0         [24] 1616 	mov	b,dph
      0027F1 D0 02            [24] 1617 	pop	ar2
      0027F3 D0 04            [24] 1618 	pop	ar4
      0027F5 90 1C C9         [24] 1619 	mov	dptr,#_buffer_to_delete
      0027F8 2A               [12] 1620 	add	a,r2
      0027F9 F0               [24] 1621 	movx	@dptr,a
      0027FA EC               [12] 1622 	mov	a,r4
      0027FB 35 F0            [12] 1623 	addc	a,b
      0027FD A3               [24] 1624 	inc	dptr
      0027FE F0               [24] 1625 	movx	@dptr,a
                                   1626 ;	character.c:215: ch = getchar();
      0027FF 12 32 92         [24] 1627 	lcall	_getchar
      002802 AB 82            [24] 1628 	mov	r3,dpl
      002804 AC 83            [24] 1629 	mov	r4,dph
      002806 D0 05            [24] 1630 	pop	ar5
      002808 D0 06            [24] 1631 	pop	ar6
      00280A D0 07            [24] 1632 	pop	ar7
                                   1633 ;	character.c:217: }while(ch != '\r');
      00280C BB 0D 02         [24] 1634 	cjne	r3,#0x0d,00253$
      00280F 80 03            [24] 1635 	sjmp	00254$
      002811                       1636 00253$:
      002811 02 27 75         [24] 1637 	ljmp	00111$
      002814                       1638 00254$:
      002814                       1639 00113$:
                                   1640 ;	character.c:220: if (buffer_to_delete == 0)
      002814 90 1C C9         [24] 1641 	mov	dptr,#_buffer_to_delete
      002817 E0               [24] 1642 	movx	a,@dptr
      002818 FB               [12] 1643 	mov	r3,a
      002819 A3               [24] 1644 	inc	dptr
      00281A E0               [24] 1645 	movx	a,@dptr
      00281B FC               [12] 1646 	mov	r4,a
      00281C 4B               [12] 1647 	orl	a,r3
      00281D 70 12            [24] 1648 	jnz	00123$
                                   1649 ;	character.c:222: printf_tiny("\033[1;31mInvalid input : buffer number can't be 0\n\r\n");
      00281F 74 0C            [12] 1650 	mov	a,#___str_19
      002821 C0 E0            [24] 1651 	push	acc
      002823 74 4A            [12] 1652 	mov	a,#(___str_19 >> 8)
      002825 C0 E0            [24] 1653 	push	acc
      002827 12 36 00         [24] 1654 	lcall	_printf_tiny
      00282A 15 81            [12] 1655 	dec	sp
      00282C 15 81            [12] 1656 	dec	sp
                                   1657 ;	character.c:223: break;
      00282E 02 2E 6E         [24] 1658 	ljmp	00141$
      002831                       1659 00123$:
                                   1660 ;	character.c:225: else if(buff_not_cleared[buffer_to_delete] == 1){
      002831 EB               [12] 1661 	mov	a,r3
      002832 2B               [12] 1662 	add	a,r3
      002833 F9               [12] 1663 	mov	r1,a
      002834 EC               [12] 1664 	mov	a,r4
      002835 33               [12] 1665 	rlc	a
      002836 FA               [12] 1666 	mov	r2,a
      002837 E9               [12] 1667 	mov	a,r1
      002838 24 CB            [12] 1668 	add	a,#_buff_not_cleared
      00283A F5 82            [12] 1669 	mov	dpl,a
      00283C EA               [12] 1670 	mov	a,r2
      00283D 34 1C            [12] 1671 	addc	a,#(_buff_not_cleared >> 8)
      00283F F5 83            [12] 1672 	mov	dph,a
      002841 E0               [24] 1673 	movx	a,@dptr
      002842 F9               [12] 1674 	mov	r1,a
      002843 A3               [24] 1675 	inc	dptr
      002844 E0               [24] 1676 	movx	a,@dptr
      002845 FA               [12] 1677 	mov	r2,a
      002846 B9 01 1B         [24] 1678 	cjne	r1,#0x01,00120$
      002849 BA 00 18         [24] 1679 	cjne	r2,#0x00,00120$
                                   1680 ;	character.c:226: printf_tiny("\033[1;31mInvalid input : buffer[%d] was already cleared earlier\n\r",buffer_to_delete);
      00284C C0 03            [24] 1681 	push	ar3
      00284E C0 04            [24] 1682 	push	ar4
      002850 74 3F            [12] 1683 	mov	a,#___str_20
      002852 C0 E0            [24] 1684 	push	acc
      002854 74 4A            [12] 1685 	mov	a,#(___str_20 >> 8)
      002856 C0 E0            [24] 1686 	push	acc
      002858 12 36 00         [24] 1687 	lcall	_printf_tiny
      00285B E5 81            [12] 1688 	mov	a,sp
      00285D 24 FC            [12] 1689 	add	a,#0xfc
      00285F F5 81            [12] 1690 	mov	sp,a
                                   1691 ;	character.c:227: break;
      002861 02 2E 6E         [24] 1692 	ljmp	00141$
      002864                       1693 00120$:
                                   1694 ;	character.c:229: else if ((buffer_to_delete) >= *new_buffer_index) {
      002864 8D 82            [24] 1695 	mov	dpl,r5
      002866 8E 83            [24] 1696 	mov	dph,r6
      002868 8F F0            [24] 1697 	mov	b,r7
      00286A 12 44 5C         [24] 1698 	lcall	__gptrget
      00286D F9               [12] 1699 	mov	r1,a
      00286E A3               [24] 1700 	inc	dptr
      00286F 12 44 5C         [24] 1701 	lcall	__gptrget
      002872 FA               [12] 1702 	mov	r2,a
      002873 C3               [12] 1703 	clr	c
      002874 EB               [12] 1704 	mov	a,r3
      002875 99               [12] 1705 	subb	a,r1
      002876 EC               [12] 1706 	mov	a,r4
      002877 64 80            [12] 1707 	xrl	a,#0x80
      002879 8A F0            [24] 1708 	mov	b,r2
      00287B 63 F0 80         [24] 1709 	xrl	b,#0x80
      00287E 95 F0            [12] 1710 	subb	a,b
      002880 40 12            [24] 1711 	jc	00117$
                                   1712 ;	character.c:230: printf_tiny("\033[1;31mInvalid input : buffer number doesn't exist\n\r");
      002882 74 7F            [12] 1713 	mov	a,#___str_21
      002884 C0 E0            [24] 1714 	push	acc
      002886 74 4A            [12] 1715 	mov	a,#(___str_21 >> 8)
      002888 C0 E0            [24] 1716 	push	acc
      00288A 12 36 00         [24] 1717 	lcall	_printf_tiny
      00288D 15 81            [12] 1718 	dec	sp
      00288F 15 81            [12] 1719 	dec	sp
                                   1720 ;	character.c:231: break;
      002891 02 2E 6E         [24] 1721 	ljmp	00141$
      002894                       1722 00117$:
                                   1723 ;	character.c:236: printf_tiny("\033[1;0mBuffer [%d] requested to be deleted\n\r", buffer_to_delete);
      002894 C0 05            [24] 1724 	push	ar5
      002896 C0 06            [24] 1725 	push	ar6
      002898 C0 07            [24] 1726 	push	ar7
      00289A C0 07            [24] 1727 	push	ar7
      00289C C0 06            [24] 1728 	push	ar6
      00289E C0 05            [24] 1729 	push	ar5
      0028A0 C0 03            [24] 1730 	push	ar3
      0028A2 C0 04            [24] 1731 	push	ar4
      0028A4 74 B4            [12] 1732 	mov	a,#___str_22
      0028A6 C0 E0            [24] 1733 	push	acc
      0028A8 74 4A            [12] 1734 	mov	a,#(___str_22 >> 8)
      0028AA C0 E0            [24] 1735 	push	acc
      0028AC 12 36 00         [24] 1736 	lcall	_printf_tiny
      0028AF E5 81            [12] 1737 	mov	a,sp
      0028B1 24 FC            [12] 1738 	add	a,#0xfc
      0028B3 F5 81            [12] 1739 	mov	sp,a
                                   1740 ;	character.c:237: printf("Performing buffer freeing operation\r\n");
      0028B5 74 E0            [12] 1741 	mov	a,#___str_23
      0028B7 C0 E0            [24] 1742 	push	acc
      0028B9 74 4A            [12] 1743 	mov	a,#(___str_23 >> 8)
      0028BB C0 E0            [24] 1744 	push	acc
      0028BD 74 80            [12] 1745 	mov	a,#0x80
      0028BF C0 E0            [24] 1746 	push	acc
      0028C1 12 3A 30         [24] 1747 	lcall	_printf
      0028C4 15 81            [12] 1748 	dec	sp
      0028C6 15 81            [12] 1749 	dec	sp
      0028C8 15 81            [12] 1750 	dec	sp
                                   1751 ;	character.c:238: free(new_buffer_arr[buffer_to_delete]);
      0028CA 90 1C C9         [24] 1752 	mov	dptr,#_buffer_to_delete
      0028CD E0               [24] 1753 	movx	a,@dptr
      0028CE FB               [12] 1754 	mov	r3,a
      0028CF A3               [24] 1755 	inc	dptr
      0028D0 E0               [24] 1756 	movx	a,@dptr
      0028D1 FC               [12] 1757 	mov	r4,a
      0028D2 EB               [12] 1758 	mov	a,r3
      0028D3 2B               [12] 1759 	add	a,r3
      0028D4 FB               [12] 1760 	mov	r3,a
      0028D5 EC               [12] 1761 	mov	a,r4
      0028D6 33               [12] 1762 	rlc	a
      0028D7 FC               [12] 1763 	mov	r4,a
      0028D8 EB               [12] 1764 	mov	a,r3
      0028D9 24 8F            [12] 1765 	add	a,#_new_buffer_arr
      0028DB F5 82            [12] 1766 	mov	dpl,a
      0028DD EC               [12] 1767 	mov	a,r4
      0028DE 34 1B            [12] 1768 	addc	a,#(_new_buffer_arr >> 8)
      0028E0 F5 83            [12] 1769 	mov	dph,a
      0028E2 E0               [24] 1770 	movx	a,@dptr
      0028E3 FB               [12] 1771 	mov	r3,a
      0028E4 A3               [24] 1772 	inc	dptr
      0028E5 E0               [24] 1773 	movx	a,@dptr
      0028E6 FC               [12] 1774 	mov	r4,a
      0028E7 7A 00            [12] 1775 	mov	r2,#0x00
      0028E9 8B 82            [24] 1776 	mov	dpl,r3
      0028EB 8C 83            [24] 1777 	mov	dph,r4
      0028ED 8A F0            [24] 1778 	mov	b,r2
      0028EF 12 33 6A         [24] 1779 	lcall	_free
      0028F2 D0 05            [24] 1780 	pop	ar5
      0028F4 D0 06            [24] 1781 	pop	ar6
      0028F6 D0 07            [24] 1782 	pop	ar7
                                   1783 ;	character.c:239: new_buffer_arr[buffer_to_delete] = 0;
      0028F8 90 1C C9         [24] 1784 	mov	dptr,#_buffer_to_delete
      0028FB E0               [24] 1785 	movx	a,@dptr
      0028FC FB               [12] 1786 	mov	r3,a
      0028FD A3               [24] 1787 	inc	dptr
      0028FE E0               [24] 1788 	movx	a,@dptr
      0028FF FC               [12] 1789 	mov	r4,a
      002900 EB               [12] 1790 	mov	a,r3
      002901 2B               [12] 1791 	add	a,r3
      002902 FB               [12] 1792 	mov	r3,a
      002903 EC               [12] 1793 	mov	a,r4
      002904 33               [12] 1794 	rlc	a
      002905 FC               [12] 1795 	mov	r4,a
      002906 EB               [12] 1796 	mov	a,r3
      002907 24 8F            [12] 1797 	add	a,#_new_buffer_arr
      002909 F5 82            [12] 1798 	mov	dpl,a
      00290B EC               [12] 1799 	mov	a,r4
      00290C 34 1B            [12] 1800 	addc	a,#(_new_buffer_arr >> 8)
      00290E F5 83            [12] 1801 	mov	dph,a
      002910 E4               [12] 1802 	clr	a
      002911 F0               [24] 1803 	movx	@dptr,a
      002912 A3               [24] 1804 	inc	dptr
      002913 F0               [24] 1805 	movx	@dptr,a
                                   1806 ;	character.c:240: buff_not_cleared[buffer_to_delete] = 1;
      002914 90 1C C9         [24] 1807 	mov	dptr,#_buffer_to_delete
      002917 E0               [24] 1808 	movx	a,@dptr
      002918 FB               [12] 1809 	mov	r3,a
      002919 A3               [24] 1810 	inc	dptr
      00291A E0               [24] 1811 	movx	a,@dptr
      00291B FC               [12] 1812 	mov	r4,a
      00291C EB               [12] 1813 	mov	a,r3
      00291D 2B               [12] 1814 	add	a,r3
      00291E FB               [12] 1815 	mov	r3,a
      00291F EC               [12] 1816 	mov	a,r4
      002920 33               [12] 1817 	rlc	a
      002921 FC               [12] 1818 	mov	r4,a
      002922 EB               [12] 1819 	mov	a,r3
      002923 24 CB            [12] 1820 	add	a,#_buff_not_cleared
      002925 F5 82            [12] 1821 	mov	dpl,a
      002927 EC               [12] 1822 	mov	a,r4
      002928 34 1C            [12] 1823 	addc	a,#(_buff_not_cleared >> 8)
      00292A F5 83            [12] 1824 	mov	dph,a
      00292C 74 01            [12] 1825 	mov	a,#0x01
      00292E F0               [24] 1826 	movx	@dptr,a
      00292F E4               [12] 1827 	clr	a
      002930 A3               [24] 1828 	inc	dptr
      002931 F0               [24] 1829 	movx	@dptr,a
                                   1830 ;	character.c:241: ++(*free_buffer_count);
      002932 90 1B 7F         [24] 1831 	mov	dptr,#_command_processing_PARM_4
      002935 E0               [24] 1832 	movx	a,@dptr
      002936 FA               [12] 1833 	mov	r2,a
      002937 A3               [24] 1834 	inc	dptr
      002938 E0               [24] 1835 	movx	a,@dptr
      002939 FB               [12] 1836 	mov	r3,a
      00293A A3               [24] 1837 	inc	dptr
      00293B E0               [24] 1838 	movx	a,@dptr
      00293C FC               [12] 1839 	mov	r4,a
      00293D 8A 82            [24] 1840 	mov	dpl,r2
      00293F 8B 83            [24] 1841 	mov	dph,r3
      002941 8C F0            [24] 1842 	mov	b,r4
      002943 12 44 5C         [24] 1843 	lcall	__gptrget
      002946 F8               [12] 1844 	mov	r0,a
      002947 A3               [24] 1845 	inc	dptr
      002948 12 44 5C         [24] 1846 	lcall	__gptrget
      00294B F9               [12] 1847 	mov	r1,a
      00294C 08               [12] 1848 	inc	r0
      00294D B8 00 01         [24] 1849 	cjne	r0,#0x00,00259$
      002950 09               [12] 1850 	inc	r1
      002951                       1851 00259$:
      002951 8A 82            [24] 1852 	mov	dpl,r2
      002953 8B 83            [24] 1853 	mov	dph,r3
      002955 8C F0            [24] 1854 	mov	b,r4
      002957 E8               [12] 1855 	mov	a,r0
      002958 12 35 E5         [24] 1856 	lcall	__gptrput
      00295B A3               [24] 1857 	inc	dptr
      00295C E9               [12] 1858 	mov	a,r1
      00295D 12 35 E5         [24] 1859 	lcall	__gptrput
                                   1860 ;	character.c:243: if(new_buffer_arr[buffer_to_delete] == 0)
      002960 90 1C C9         [24] 1861 	mov	dptr,#_buffer_to_delete
      002963 E0               [24] 1862 	movx	a,@dptr
      002964 F8               [12] 1863 	mov	r0,a
      002965 A3               [24] 1864 	inc	dptr
      002966 E0               [24] 1865 	movx	a,@dptr
      002967 F9               [12] 1866 	mov	r1,a
      002968 E8               [12] 1867 	mov	a,r0
      002969 28               [12] 1868 	add	a,r0
      00296A FE               [12] 1869 	mov	r6,a
      00296B E9               [12] 1870 	mov	a,r1
      00296C 33               [12] 1871 	rlc	a
      00296D FF               [12] 1872 	mov	r7,a
      00296E EE               [12] 1873 	mov	a,r6
      00296F 24 8F            [12] 1874 	add	a,#_new_buffer_arr
      002971 F5 82            [12] 1875 	mov	dpl,a
      002973 EF               [12] 1876 	mov	a,r7
      002974 34 1B            [12] 1877 	addc	a,#(_new_buffer_arr >> 8)
      002976 F5 83            [12] 1878 	mov	dph,a
      002978 E0               [24] 1879 	movx	a,@dptr
      002979 FE               [12] 1880 	mov	r6,a
      00297A A3               [24] 1881 	inc	dptr
      00297B E0               [24] 1882 	movx	a,@dptr
      00297C 4E               [12] 1883 	orl	a,r6
      00297D D0 07            [24] 1884 	pop	ar7
      00297F D0 06            [24] 1885 	pop	ar6
      002981 D0 05            [24] 1886 	pop	ar5
      002983 70 31            [24] 1887 	jnz	00115$
                                   1888 ;	character.c:245: printf("***Buffer [%d] is freed****\n\r",buffer_to_delete);
      002985 C0 07            [24] 1889 	push	ar7
      002987 C0 06            [24] 1890 	push	ar6
      002989 C0 05            [24] 1891 	push	ar5
      00298B C0 04            [24] 1892 	push	ar4
      00298D C0 03            [24] 1893 	push	ar3
      00298F C0 02            [24] 1894 	push	ar2
      002991 C0 00            [24] 1895 	push	ar0
      002993 C0 01            [24] 1896 	push	ar1
      002995 74 06            [12] 1897 	mov	a,#___str_24
      002997 C0 E0            [24] 1898 	push	acc
      002999 74 4B            [12] 1899 	mov	a,#(___str_24 >> 8)
      00299B C0 E0            [24] 1900 	push	acc
      00299D 74 80            [12] 1901 	mov	a,#0x80
      00299F C0 E0            [24] 1902 	push	acc
      0029A1 12 3A 30         [24] 1903 	lcall	_printf
      0029A4 E5 81            [12] 1904 	mov	a,sp
      0029A6 24 FB            [12] 1905 	add	a,#0xfb
      0029A8 F5 81            [12] 1906 	mov	sp,a
      0029AA D0 02            [24] 1907 	pop	ar2
      0029AC D0 03            [24] 1908 	pop	ar3
      0029AE D0 04            [24] 1909 	pop	ar4
      0029B0 D0 05            [24] 1910 	pop	ar5
      0029B2 D0 06            [24] 1911 	pop	ar6
      0029B4 D0 07            [24] 1912 	pop	ar7
      0029B6                       1913 00115$:
                                   1914 ;	character.c:248: printf_tiny("\033[1;0mBuffer[%d] de-allocated successfully  \n\r", buffer_to_delete);
      0029B6 C0 07            [24] 1915 	push	ar7
      0029B8 C0 06            [24] 1916 	push	ar6
      0029BA C0 05            [24] 1917 	push	ar5
      0029BC C0 04            [24] 1918 	push	ar4
      0029BE C0 03            [24] 1919 	push	ar3
      0029C0 C0 02            [24] 1920 	push	ar2
      0029C2 90 1C C9         [24] 1921 	mov	dptr,#_buffer_to_delete
      0029C5 E0               [24] 1922 	movx	a,@dptr
      0029C6 C0 E0            [24] 1923 	push	acc
      0029C8 A3               [24] 1924 	inc	dptr
      0029C9 E0               [24] 1925 	movx	a,@dptr
      0029CA C0 E0            [24] 1926 	push	acc
      0029CC 74 24            [12] 1927 	mov	a,#___str_25
      0029CE C0 E0            [24] 1928 	push	acc
      0029D0 74 4B            [12] 1929 	mov	a,#(___str_25 >> 8)
      0029D2 C0 E0            [24] 1930 	push	acc
      0029D4 12 36 00         [24] 1931 	lcall	_printf_tiny
      0029D7 E5 81            [12] 1932 	mov	a,sp
      0029D9 24 FC            [12] 1933 	add	a,#0xfc
      0029DB F5 81            [12] 1934 	mov	sp,a
      0029DD D0 02            [24] 1935 	pop	ar2
      0029DF D0 03            [24] 1936 	pop	ar3
      0029E1 D0 04            [24] 1937 	pop	ar4
      0029E3 D0 05            [24] 1938 	pop	ar5
      0029E5 D0 06            [24] 1939 	pop	ar6
      0029E7 D0 07            [24] 1940 	pop	ar7
                                   1941 ;	character.c:249: printf_tiny("\033[1;0mTotal Number of Buffers after deallocation = [%d]\n\r\n\r",*new_buffer_index);
      0029E9 8D 82            [24] 1942 	mov	dpl,r5
      0029EB 8E 83            [24] 1943 	mov	dph,r6
      0029ED 8F F0            [24] 1944 	mov	b,r7
      0029EF 12 44 5C         [24] 1945 	lcall	__gptrget
      0029F2 FD               [12] 1946 	mov	r5,a
      0029F3 A3               [24] 1947 	inc	dptr
      0029F4 12 44 5C         [24] 1948 	lcall	__gptrget
      0029F7 FE               [12] 1949 	mov	r6,a
      0029F8 C0 04            [24] 1950 	push	ar4
      0029FA C0 03            [24] 1951 	push	ar3
      0029FC C0 02            [24] 1952 	push	ar2
      0029FE C0 05            [24] 1953 	push	ar5
      002A00 C0 06            [24] 1954 	push	ar6
      002A02 74 53            [12] 1955 	mov	a,#___str_26
      002A04 C0 E0            [24] 1956 	push	acc
      002A06 74 4B            [12] 1957 	mov	a,#(___str_26 >> 8)
      002A08 C0 E0            [24] 1958 	push	acc
      002A0A 12 36 00         [24] 1959 	lcall	_printf_tiny
      002A0D E5 81            [12] 1960 	mov	a,sp
      002A0F 24 FC            [12] 1961 	add	a,#0xfc
      002A11 F5 81            [12] 1962 	mov	sp,a
      002A13 D0 02            [24] 1963 	pop	ar2
      002A15 D0 03            [24] 1964 	pop	ar3
      002A17 D0 04            [24] 1965 	pop	ar4
                                   1966 ;	character.c:250: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \r\nTotal Empty Buffers  = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
      002A19 8A 82            [24] 1967 	mov	dpl,r2
      002A1B 8B 83            [24] 1968 	mov	dph,r3
      002A1D 8C F0            [24] 1969 	mov	b,r4
      002A1F 12 44 5C         [24] 1970 	lcall	__gptrget
      002A22 FA               [12] 1971 	mov	r2,a
      002A23 A3               [24] 1972 	inc	dptr
      002A24 12 44 5C         [24] 1973 	lcall	__gptrget
      002A27 FB               [12] 1974 	mov	r3,a
      002A28 90 1B 82         [24] 1975 	mov	dptr,#_command_processing_PARM_5
      002A2B E0               [24] 1976 	movx	a,@dptr
      002A2C FD               [12] 1977 	mov	r5,a
      002A2D A3               [24] 1978 	inc	dptr
      002A2E E0               [24] 1979 	movx	a,@dptr
      002A2F FE               [12] 1980 	mov	r6,a
      002A30 A3               [24] 1981 	inc	dptr
      002A31 E0               [24] 1982 	movx	a,@dptr
      002A32 FF               [12] 1983 	mov	r7,a
      002A33 8D 82            [24] 1984 	mov	dpl,r5
      002A35 8E 83            [24] 1985 	mov	dph,r6
      002A37 8F F0            [24] 1986 	mov	b,r7
      002A39 12 44 5C         [24] 1987 	lcall	__gptrget
      002A3C FD               [12] 1988 	mov	r5,a
      002A3D A3               [24] 1989 	inc	dptr
      002A3E 12 44 5C         [24] 1990 	lcall	__gptrget
      002A41 FE               [12] 1991 	mov	r6,a
      002A42 C0 02            [24] 1992 	push	ar2
      002A44 C0 03            [24] 1993 	push	ar3
      002A46 C0 05            [24] 1994 	push	ar5
      002A48 C0 06            [24] 1995 	push	ar6
      002A4A 74 8F            [12] 1996 	mov	a,#___str_27
      002A4C C0 E0            [24] 1997 	push	acc
      002A4E 74 4B            [12] 1998 	mov	a,#(___str_27 >> 8)
      002A50 C0 E0            [24] 1999 	push	acc
      002A52 12 36 00         [24] 2000 	lcall	_printf_tiny
      002A55 E5 81            [12] 2001 	mov	a,sp
      002A57 24 FA            [12] 2002 	add	a,#0xfa
      002A59 F5 81            [12] 2003 	mov	sp,a
                                   2004 ;	character.c:252: DEBUGPORT(0x20);
      002A5B 75 82 20         [24] 2005 	mov	dpl,#0x20
      002A5E 12 21 B2         [24] 2006 	lcall	_dataout
                                   2007 ;	character.c:253: break;
      002A61 02 2E 6E         [24] 2008 	ljmp	00141$
                                   2009 ;	character.c:256: case '@': // if input character is '@'
      002A64                       2010 00125$:
                                   2011 ;	character.c:258: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002A64 74 C1            [12] 2012 	mov	a,#___str_5
      002A66 C0 E0            [24] 2013 	push	acc
      002A68 74 46            [12] 2014 	mov	a,#(___str_5 >> 8)
      002A6A C0 E0            [24] 2015 	push	acc
      002A6C 12 36 00         [24] 2016 	lcall	_printf_tiny
      002A6F 15 81            [12] 2017 	dec	sp
      002A71 15 81            [12] 2018 	dec	sp
                                   2019 ;	character.c:259: printf_tiny("\033[1;33m|************ Processing [@] *******************|\n\r");
      002A73 74 D4            [12] 2020 	mov	a,#___str_28
      002A75 C0 E0            [24] 2021 	push	acc
      002A77 74 4B            [12] 2022 	mov	a,#(___str_28 >> 8)
      002A79 C0 E0            [24] 2023 	push	acc
      002A7B 12 36 00         [24] 2024 	lcall	_printf_tiny
      002A7E 15 81            [12] 2025 	dec	sp
      002A80 15 81            [12] 2026 	dec	sp
                                   2027 ;	character.c:260: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002A82 74 C1            [12] 2028 	mov	a,#___str_5
      002A84 C0 E0            [24] 2029 	push	acc
      002A86 74 46            [12] 2030 	mov	a,#(___str_5 >> 8)
      002A88 C0 E0            [24] 2031 	push	acc
      002A8A 12 36 00         [24] 2032 	lcall	_printf_tiny
      002A8D 15 81            [12] 2033 	dec	sp
      002A8F 15 81            [12] 2034 	dec	sp
                                   2035 ;	character.c:263: for(int i = 0; i < *new_buffer_index; i++) {
      002A91 90 1B 7C         [24] 2036 	mov	dptr,#_command_processing_PARM_3
      002A94 E0               [24] 2037 	movx	a,@dptr
      002A95 F5 0E            [12] 2038 	mov	_command_processing_sloc1_1_0,a
      002A97 A3               [24] 2039 	inc	dptr
      002A98 E0               [24] 2040 	movx	a,@dptr
      002A99 F5 0F            [12] 2041 	mov	(_command_processing_sloc1_1_0 + 1),a
      002A9B A3               [24] 2042 	inc	dptr
      002A9C E0               [24] 2043 	movx	a,@dptr
      002A9D F5 10            [12] 2044 	mov	(_command_processing_sloc1_1_0 + 2),a
      002A9F 7B 00            [12] 2045 	mov	r3,#0x00
      002AA1 7C 00            [12] 2046 	mov	r4,#0x00
      002AA3                       2047 00143$:
      002AA3 85 0E 82         [24] 2048 	mov	dpl,_command_processing_sloc1_1_0
      002AA6 85 0F 83         [24] 2049 	mov	dph,(_command_processing_sloc1_1_0 + 1)
      002AA9 85 10 F0         [24] 2050 	mov	b,(_command_processing_sloc1_1_0 + 2)
      002AAC 12 44 5C         [24] 2051 	lcall	__gptrget
      002AAF F9               [12] 2052 	mov	r1,a
      002AB0 A3               [24] 2053 	inc	dptr
      002AB1 12 44 5C         [24] 2054 	lcall	__gptrget
      002AB4 FA               [12] 2055 	mov	r2,a
      002AB5 C3               [12] 2056 	clr	c
      002AB6 EB               [12] 2057 	mov	a,r3
      002AB7 99               [12] 2058 	subb	a,r1
      002AB8 EC               [12] 2059 	mov	a,r4
      002AB9 64 80            [12] 2060 	xrl	a,#0x80
      002ABB 8A F0            [24] 2061 	mov	b,r2
      002ABD 63 F0 80         [24] 2062 	xrl	b,#0x80
      002AC0 95 F0            [12] 2063 	subb	a,b
      002AC2 40 03            [24] 2064 	jc	00261$
      002AC4 02 2B 54         [24] 2065 	ljmp	00129$
      002AC7                       2066 00261$:
                                   2067 ;	character.c:264: char* buffer_to_free = new_buffer_arr[i];
      002AC7 EB               [12] 2068 	mov	a,r3
      002AC8 2B               [12] 2069 	add	a,r3
      002AC9 F9               [12] 2070 	mov	r1,a
      002ACA EC               [12] 2071 	mov	a,r4
      002ACB 33               [12] 2072 	rlc	a
      002ACC FA               [12] 2073 	mov	r2,a
      002ACD E9               [12] 2074 	mov	a,r1
      002ACE 24 8F            [12] 2075 	add	a,#_new_buffer_arr
      002AD0 F9               [12] 2076 	mov	r1,a
      002AD1 EA               [12] 2077 	mov	a,r2
      002AD2 34 1B            [12] 2078 	addc	a,#(_new_buffer_arr >> 8)
      002AD4 FA               [12] 2079 	mov	r2,a
      002AD5 89 82            [24] 2080 	mov	dpl,r1
      002AD7 8A 83            [24] 2081 	mov	dph,r2
      002AD9 E0               [24] 2082 	movx	a,@dptr
      002ADA F8               [12] 2083 	mov	r0,a
      002ADB A3               [24] 2084 	inc	dptr
      002ADC E0               [24] 2085 	movx	a,@dptr
      002ADD FF               [12] 2086 	mov	r7,a
      002ADE 88 11            [24] 2087 	mov	_command_processing_sloc2_1_0,r0
      002AE0 8F 12            [24] 2088 	mov	(_command_processing_sloc2_1_0 + 1),r7
      002AE2 75 13 00         [24] 2089 	mov	(_command_processing_sloc2_1_0 + 2),#0x00
                                   2090 ;	character.c:265: if(buffer_to_free != NULL) {
      002AE5 E8               [12] 2091 	mov	a,r0
      002AE6 4F               [12] 2092 	orl	a,r7
      002AE7 60 46            [24] 2093 	jz	00127$
                                   2094 ;	character.c:266: free(buffer_to_free);
      002AE9 AD 11            [24] 2095 	mov	r5,_command_processing_sloc2_1_0
      002AEB AE 12            [24] 2096 	mov	r6,(_command_processing_sloc2_1_0 + 1)
      002AED AF 13            [24] 2097 	mov	r7,(_command_processing_sloc2_1_0 + 2)
      002AEF 8D 82            [24] 2098 	mov	dpl,r5
      002AF1 8E 83            [24] 2099 	mov	dph,r6
      002AF3 8F F0            [24] 2100 	mov	b,r7
      002AF5 C0 04            [24] 2101 	push	ar4
      002AF7 C0 03            [24] 2102 	push	ar3
      002AF9 C0 02            [24] 2103 	push	ar2
      002AFB C0 01            [24] 2104 	push	ar1
      002AFD 12 33 6A         [24] 2105 	lcall	_free
      002B00 D0 01            [24] 2106 	pop	ar1
      002B02 D0 02            [24] 2107 	pop	ar2
      002B04 D0 03            [24] 2108 	pop	ar3
      002B06 D0 04            [24] 2109 	pop	ar4
                                   2110 ;	character.c:267: new_buffer_arr[i] = NULL;
      002B08 89 82            [24] 2111 	mov	dpl,r1
      002B0A 8A 83            [24] 2112 	mov	dph,r2
      002B0C E4               [12] 2113 	clr	a
      002B0D F0               [24] 2114 	movx	@dptr,a
      002B0E A3               [24] 2115 	inc	dptr
      002B0F F0               [24] 2116 	movx	@dptr,a
                                   2117 ;	character.c:268: printf_tiny("\033[1;0mBuffer[%d] freed\n\r",i);
      002B10 C0 04            [24] 2118 	push	ar4
      002B12 C0 03            [24] 2119 	push	ar3
      002B14 C0 03            [24] 2120 	push	ar3
      002B16 C0 04            [24] 2121 	push	ar4
      002B18 74 0F            [12] 2122 	mov	a,#___str_29
      002B1A C0 E0            [24] 2123 	push	acc
      002B1C 74 4C            [12] 2124 	mov	a,#(___str_29 >> 8)
      002B1E C0 E0            [24] 2125 	push	acc
      002B20 12 36 00         [24] 2126 	lcall	_printf_tiny
      002B23 E5 81            [12] 2127 	mov	a,sp
      002B25 24 FC            [12] 2128 	add	a,#0xfc
      002B27 F5 81            [12] 2129 	mov	sp,a
      002B29 D0 03            [24] 2130 	pop	ar3
      002B2B D0 04            [24] 2131 	pop	ar4
      002B2D 80 1D            [24] 2132 	sjmp	00144$
      002B2F                       2133 00127$:
                                   2134 ;	character.c:270: printf_tiny("\033[1;0mBuffer[%d] was already NULL\n\r",i);
      002B2F C0 04            [24] 2135 	push	ar4
      002B31 C0 03            [24] 2136 	push	ar3
      002B33 C0 03            [24] 2137 	push	ar3
      002B35 C0 04            [24] 2138 	push	ar4
      002B37 74 28            [12] 2139 	mov	a,#___str_30
      002B39 C0 E0            [24] 2140 	push	acc
      002B3B 74 4C            [12] 2141 	mov	a,#(___str_30 >> 8)
      002B3D C0 E0            [24] 2142 	push	acc
      002B3F 12 36 00         [24] 2143 	lcall	_printf_tiny
      002B42 E5 81            [12] 2144 	mov	a,sp
      002B44 24 FC            [12] 2145 	add	a,#0xfc
      002B46 F5 81            [12] 2146 	mov	sp,a
      002B48 D0 03            [24] 2147 	pop	ar3
      002B4A D0 04            [24] 2148 	pop	ar4
      002B4C                       2149 00144$:
                                   2150 ;	character.c:263: for(int i = 0; i < *new_buffer_index; i++) {
      002B4C 0B               [12] 2151 	inc	r3
      002B4D BB 00 01         [24] 2152 	cjne	r3,#0x00,00263$
      002B50 0C               [12] 2153 	inc	r4
      002B51                       2154 00263$:
      002B51 02 2A A3         [24] 2155 	ljmp	00143$
      002B54                       2156 00129$:
                                   2157 ;	character.c:275: *new_buffer_index = 0;
      002B54 85 0E 82         [24] 2158 	mov	dpl,_command_processing_sloc1_1_0
      002B57 85 0F 83         [24] 2159 	mov	dph,(_command_processing_sloc1_1_0 + 1)
      002B5A 85 10 F0         [24] 2160 	mov	b,(_command_processing_sloc1_1_0 + 2)
      002B5D E4               [12] 2161 	clr	a
      002B5E 12 35 E5         [24] 2162 	lcall	__gptrput
      002B61 A3               [24] 2163 	inc	dptr
      002B62 12 35 E5         [24] 2164 	lcall	__gptrput
                                   2165 ;	character.c:276: (*filled_buffer_count) = 0;
      002B65 90 1B 82         [24] 2166 	mov	dptr,#_command_processing_PARM_5
      002B68 E0               [24] 2167 	movx	a,@dptr
      002B69 FD               [12] 2168 	mov	r5,a
      002B6A A3               [24] 2169 	inc	dptr
      002B6B E0               [24] 2170 	movx	a,@dptr
      002B6C FE               [12] 2171 	mov	r6,a
      002B6D A3               [24] 2172 	inc	dptr
      002B6E E0               [24] 2173 	movx	a,@dptr
      002B6F FF               [12] 2174 	mov	r7,a
      002B70 8D 82            [24] 2175 	mov	dpl,r5
      002B72 8E 83            [24] 2176 	mov	dph,r6
      002B74 8F F0            [24] 2177 	mov	b,r7
      002B76 E4               [12] 2178 	clr	a
      002B77 12 35 E5         [24] 2179 	lcall	__gptrput
      002B7A A3               [24] 2180 	inc	dptr
      002B7B 12 35 E5         [24] 2181 	lcall	__gptrput
                                   2182 ;	character.c:277: (*free_buffer_count) = 0;
      002B7E 90 1B 7F         [24] 2183 	mov	dptr,#_command_processing_PARM_4
      002B81 E0               [24] 2184 	movx	a,@dptr
      002B82 FD               [12] 2185 	mov	r5,a
      002B83 A3               [24] 2186 	inc	dptr
      002B84 E0               [24] 2187 	movx	a,@dptr
      002B85 FE               [12] 2188 	mov	r6,a
      002B86 A3               [24] 2189 	inc	dptr
      002B87 E0               [24] 2190 	movx	a,@dptr
      002B88 FF               [12] 2191 	mov	r7,a
      002B89 8D 82            [24] 2192 	mov	dpl,r5
      002B8B 8E 83            [24] 2193 	mov	dph,r6
      002B8D 8F F0            [24] 2194 	mov	b,r7
      002B8F E4               [12] 2195 	clr	a
      002B90 12 35 E5         [24] 2196 	lcall	__gptrput
      002B93 A3               [24] 2197 	inc	dptr
      002B94 12 35 E5         [24] 2198 	lcall	__gptrput
                                   2199 ;	character.c:278: return ALL_BUFFER_CLEARED;
      002B97 90 00 01         [24] 2200 	mov	dptr,#0x0001
      002B9A 22               [24] 2201 	ret
                                   2202 ;	character.c:281: case '=': // if input character is '='
      002B9B                       2203 00130$:
                                   2204 ;	character.c:283: printf_tiny("\033[1;33m\r\n|************ Processing [=] *******************|\n\r");
      002B9B 74 4C            [12] 2205 	mov	a,#___str_31
      002B9D C0 E0            [24] 2206 	push	acc
      002B9F 74 4C            [12] 2207 	mov	a,#(___str_31 >> 8)
      002BA1 C0 E0            [24] 2208 	push	acc
      002BA3 12 36 00         [24] 2209 	lcall	_printf_tiny
      002BA6 15 81            [12] 2210 	dec	sp
      002BA8 15 81            [12] 2211 	dec	sp
                                   2212 ;	character.c:286: buffer0_hexdump(LENGTH_16);
      002BAA 90 00 10         [24] 2213 	mov	dptr,#0x0010
      002BAD 12 22 04         [24] 2214 	lcall	_buffer0_hexdump
                                   2215 ;	character.c:287: DEBUGPORT(0x40);
      002BB0 75 82 40         [24] 2216 	mov	dpl,#0x40
      002BB3 12 21 B2         [24] 2217 	lcall	_dataout
                                   2218 ;	character.c:288: break;
      002BB6 02 2E 6E         [24] 2219 	ljmp	00141$
                                   2220 ;	character.c:290: case '?':  // if input character is '?'
      002BB9                       2221 00131$:
                                   2222 ;	character.c:292: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002BB9 74 C1            [12] 2223 	mov	a,#___str_5
      002BBB C0 E0            [24] 2224 	push	acc
      002BBD 74 46            [12] 2225 	mov	a,#(___str_5 >> 8)
      002BBF C0 E0            [24] 2226 	push	acc
      002BC1 12 36 00         [24] 2227 	lcall	_printf_tiny
      002BC4 15 81            [12] 2228 	dec	sp
      002BC6 15 81            [12] 2229 	dec	sp
                                   2230 ;	character.c:293: printf_tiny("\033[1;33m|************ Processing [?] *******************|\n\r");
      002BC8 74 89            [12] 2231 	mov	a,#___str_32
      002BCA C0 E0            [24] 2232 	push	acc
      002BCC 74 4C            [12] 2233 	mov	a,#(___str_32 >> 8)
      002BCE C0 E0            [24] 2234 	push	acc
      002BD0 12 36 00         [24] 2235 	lcall	_printf_tiny
      002BD3 15 81            [12] 2236 	dec	sp
      002BD5 15 81            [12] 2237 	dec	sp
                                   2238 ;	character.c:294: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002BD7 74 C1            [12] 2239 	mov	a,#___str_5
      002BD9 C0 E0            [24] 2240 	push	acc
      002BDB 74 46            [12] 2241 	mov	a,#(___str_5 >> 8)
      002BDD C0 E0            [24] 2242 	push	acc
      002BDF 12 36 00         [24] 2243 	lcall	_printf_tiny
      002BE2 15 81            [12] 2244 	dec	sp
      002BE4 15 81            [12] 2245 	dec	sp
                                   2246 ;	character.c:297: printf_tiny(" \033[1;34m\r\n|***********************************************|\n\r");
      002BE6 74 C4            [12] 2247 	mov	a,#___str_33
      002BE8 C0 E0            [24] 2248 	push	acc
      002BEA 74 4C            [12] 2249 	mov	a,#(___str_33 >> 8)
      002BEC C0 E0            [24] 2250 	push	acc
      002BEE 12 36 00         [24] 2251 	lcall	_printf_tiny
      002BF1 15 81            [12] 2252 	dec	sp
      002BF3 15 81            [12] 2253 	dec	sp
                                   2254 ;	character.c:298: printf_tiny(" \033[1;34m|*************** HEAP REPORT *******************|\n\r");
      002BF5 74 02            [12] 2255 	mov	a,#___str_34
      002BF7 C0 E0            [24] 2256 	push	acc
      002BF9 74 4D            [12] 2257 	mov	a,#(___str_34 >> 8)
      002BFB C0 E0            [24] 2258 	push	acc
      002BFD 12 36 00         [24] 2259 	lcall	_printf_tiny
      002C00 15 81            [12] 2260 	dec	sp
      002C02 15 81            [12] 2261 	dec	sp
                                   2262 ;	character.c:299: printf_tiny(" \033[1;34m|***********************************************|\n\r");
      002C04 74 3E            [12] 2263 	mov	a,#___str_35
      002C06 C0 E0            [24] 2264 	push	acc
      002C08 74 4D            [12] 2265 	mov	a,#(___str_35 >> 8)
      002C0A C0 E0            [24] 2266 	push	acc
      002C0C 12 36 00         [24] 2267 	lcall	_printf_tiny
      002C0F 15 81            [12] 2268 	dec	sp
      002C11 15 81            [12] 2269 	dec	sp
                                   2270 ;	character.c:300: for(int i=0; i<*new_buffer_index; i++)              // iterate over the new buffer array using a loop variable i
      002C13 90 1B 85         [24] 2271 	mov	dptr,#_command_processing_PARM_6
      002C16 E0               [24] 2272 	movx	a,@dptr
      002C17 FD               [12] 2273 	mov	r5,a
      002C18 A3               [24] 2274 	inc	dptr
      002C19 E0               [24] 2275 	movx	a,@dptr
      002C1A FE               [12] 2276 	mov	r6,a
      002C1B A3               [24] 2277 	inc	dptr
      002C1C E0               [24] 2278 	movx	a,@dptr
      002C1D FF               [12] 2279 	mov	r7,a
      002C1E 90 1B 88         [24] 2280 	mov	dptr,#_command_processing_PARM_7
      002C21 E0               [24] 2281 	movx	a,@dptr
      002C22 F5 14            [12] 2282 	mov	_command_processing_sloc3_1_0,a
      002C24 A3               [24] 2283 	inc	dptr
      002C25 E0               [24] 2284 	movx	a,@dptr
      002C26 F5 15            [12] 2285 	mov	(_command_processing_sloc3_1_0 + 1),a
      002C28 A3               [24] 2286 	inc	dptr
      002C29 E0               [24] 2287 	movx	a,@dptr
      002C2A F5 16            [12] 2288 	mov	(_command_processing_sloc3_1_0 + 2),a
      002C2C 90 1B 7C         [24] 2289 	mov	dptr,#_command_processing_PARM_3
      002C2F E0               [24] 2290 	movx	a,@dptr
      002C30 F5 11            [12] 2291 	mov	_command_processing_sloc2_1_0,a
      002C32 A3               [24] 2292 	inc	dptr
      002C33 E0               [24] 2293 	movx	a,@dptr
      002C34 F5 12            [12] 2294 	mov	(_command_processing_sloc2_1_0 + 1),a
      002C36 A3               [24] 2295 	inc	dptr
      002C37 E0               [24] 2296 	movx	a,@dptr
      002C38 F5 13            [12] 2297 	mov	(_command_processing_sloc2_1_0 + 2),a
      002C3A 78 00            [12] 2298 	mov	r0,#0x00
      002C3C 79 00            [12] 2299 	mov	r1,#0x00
      002C3E                       2300 00146$:
      002C3E 85 11 82         [24] 2301 	mov	dpl,_command_processing_sloc2_1_0
      002C41 85 12 83         [24] 2302 	mov	dph,(_command_processing_sloc2_1_0 + 1)
      002C44 85 13 F0         [24] 2303 	mov	b,(_command_processing_sloc2_1_0 + 2)
      002C47 12 44 5C         [24] 2304 	lcall	__gptrget
      002C4A FB               [12] 2305 	mov	r3,a
      002C4B A3               [24] 2306 	inc	dptr
      002C4C 12 44 5C         [24] 2307 	lcall	__gptrget
      002C4F FC               [12] 2308 	mov	r4,a
      002C50 C3               [12] 2309 	clr	c
      002C51 E8               [12] 2310 	mov	a,r0
      002C52 9B               [12] 2311 	subb	a,r3
      002C53 E9               [12] 2312 	mov	a,r1
      002C54 64 80            [12] 2313 	xrl	a,#0x80
      002C56 8C F0            [24] 2314 	mov	b,r4
      002C58 63 F0 80         [24] 2315 	xrl	b,#0x80
      002C5B 95 F0            [12] 2316 	subb	a,b
      002C5D 40 03            [24] 2317 	jc	00264$
      002C5F 02 2E 2E         [24] 2318 	ljmp	00137$
      002C62                       2319 00264$:
                                   2320 ;	character.c:302: if(new_buffer_arr[i] == 0)                      // check if the current buffer is already cleared
      002C62 E8               [12] 2321 	mov	a,r0
      002C63 28               [12] 2322 	add	a,r0
      002C64 F5 0E            [12] 2323 	mov	_command_processing_sloc1_1_0,a
      002C66 E9               [12] 2324 	mov	a,r1
      002C67 33               [12] 2325 	rlc	a
      002C68 F5 0F            [12] 2326 	mov	(_command_processing_sloc1_1_0 + 1),a
      002C6A E5 0E            [12] 2327 	mov	a,_command_processing_sloc1_1_0
      002C6C 24 8F            [12] 2328 	add	a,#_new_buffer_arr
      002C6E F5 0C            [12] 2329 	mov	_command_processing_sloc0_1_0,a
      002C70 E5 0F            [12] 2330 	mov	a,(_command_processing_sloc1_1_0 + 1)
      002C72 34 1B            [12] 2331 	addc	a,#(_new_buffer_arr >> 8)
      002C74 F5 0D            [12] 2332 	mov	(_command_processing_sloc0_1_0 + 1),a
      002C76 85 0C 82         [24] 2333 	mov	dpl,_command_processing_sloc0_1_0
      002C79 85 0D 83         [24] 2334 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002C7C E0               [24] 2335 	movx	a,@dptr
      002C7D FB               [12] 2336 	mov	r3,a
      002C7E A3               [24] 2337 	inc	dptr
      002C7F E0               [24] 2338 	movx	a,@dptr
      002C80 4B               [12] 2339 	orl	a,r3
      002C81 70 2C            [24] 2340 	jnz	00133$
                                   2341 ;	character.c:304: printf_tiny("\033[1;31m\n\rBuffer [%d] already cleared!!\n\r",i); // print a message indicating the buffer is already cleared
      002C83 C0 07            [24] 2342 	push	ar7
      002C85 C0 06            [24] 2343 	push	ar6
      002C87 C0 05            [24] 2344 	push	ar5
      002C89 C0 01            [24] 2345 	push	ar1
      002C8B C0 00            [24] 2346 	push	ar0
      002C8D C0 00            [24] 2347 	push	ar0
      002C8F C0 01            [24] 2348 	push	ar1
      002C91 74 7A            [12] 2349 	mov	a,#___str_36
      002C93 C0 E0            [24] 2350 	push	acc
      002C95 74 4D            [12] 2351 	mov	a,#(___str_36 >> 8)
      002C97 C0 E0            [24] 2352 	push	acc
      002C99 12 36 00         [24] 2353 	lcall	_printf_tiny
      002C9C E5 81            [12] 2354 	mov	a,sp
      002C9E 24 FC            [12] 2355 	add	a,#0xfc
      002CA0 F5 81            [12] 2356 	mov	sp,a
      002CA2 D0 00            [24] 2357 	pop	ar0
      002CA4 D0 01            [24] 2358 	pop	ar1
      002CA6 D0 05            [24] 2359 	pop	ar5
      002CA8 D0 06            [24] 2360 	pop	ar6
      002CAA D0 07            [24] 2361 	pop	ar7
                                   2362 ;	character.c:305: continue;                                    // continue the loop as there is no need to iterate further
      002CAC 02 2E 26         [24] 2363 	ljmp	00136$
      002CAF                       2364 00133$:
                                   2365 ;	character.c:308: printf("\033[1;36m\n\r**Buffer [%d]**\n\r",i);  // print the buffer index in bold cyan color
      002CAF C0 05            [24] 2366 	push	ar5
      002CB1 C0 06            [24] 2367 	push	ar6
      002CB3 C0 07            [24] 2368 	push	ar7
      002CB5 C0 07            [24] 2369 	push	ar7
      002CB7 C0 06            [24] 2370 	push	ar6
      002CB9 C0 05            [24] 2371 	push	ar5
      002CBB C0 01            [24] 2372 	push	ar1
      002CBD C0 00            [24] 2373 	push	ar0
      002CBF C0 00            [24] 2374 	push	ar0
      002CC1 C0 01            [24] 2375 	push	ar1
      002CC3 74 A3            [12] 2376 	mov	a,#___str_37
      002CC5 C0 E0            [24] 2377 	push	acc
      002CC7 74 4D            [12] 2378 	mov	a,#(___str_37 >> 8)
      002CC9 C0 E0            [24] 2379 	push	acc
      002CCB 74 80            [12] 2380 	mov	a,#0x80
      002CCD C0 E0            [24] 2381 	push	acc
      002CCF 12 3A 30         [24] 2382 	lcall	_printf
      002CD2 E5 81            [12] 2383 	mov	a,sp
      002CD4 24 FB            [12] 2384 	add	a,#0xfb
      002CD6 F5 81            [12] 2385 	mov	sp,a
      002CD8 D0 00            [24] 2386 	pop	ar0
      002CDA D0 01            [24] 2387 	pop	ar1
                                   2388 ;	character.c:309: printf("\033[1;0m\n\rBuffer [%d] : Start Address = [%p] \n\r",i,new_buffer_arr[i]); // print the start address of the buffer with index i
      002CDC 85 0C 82         [24] 2389 	mov	dpl,_command_processing_sloc0_1_0
      002CDF 85 0D 83         [24] 2390 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002CE2 E0               [24] 2391 	movx	a,@dptr
      002CE3 FB               [12] 2392 	mov	r3,a
      002CE4 A3               [24] 2393 	inc	dptr
      002CE5 E0               [24] 2394 	movx	a,@dptr
      002CE6 FC               [12] 2395 	mov	r4,a
      002CE7 7A 00            [12] 2396 	mov	r2,#0x00
      002CE9 C0 01            [24] 2397 	push	ar1
      002CEB C0 00            [24] 2398 	push	ar0
      002CED C0 03            [24] 2399 	push	ar3
      002CEF C0 04            [24] 2400 	push	ar4
      002CF1 C0 02            [24] 2401 	push	ar2
      002CF3 C0 00            [24] 2402 	push	ar0
      002CF5 C0 01            [24] 2403 	push	ar1
      002CF7 74 BE            [12] 2404 	mov	a,#___str_38
      002CF9 C0 E0            [24] 2405 	push	acc
      002CFB 74 4D            [12] 2406 	mov	a,#(___str_38 >> 8)
      002CFD C0 E0            [24] 2407 	push	acc
      002CFF 74 80            [12] 2408 	mov	a,#0x80
      002D01 C0 E0            [24] 2409 	push	acc
      002D03 12 3A 30         [24] 2410 	lcall	_printf
      002D06 E5 81            [12] 2411 	mov	a,sp
      002D08 24 F8            [12] 2412 	add	a,#0xf8
      002D0A F5 81            [12] 2413 	mov	sp,a
      002D0C D0 00            [24] 2414 	pop	ar0
      002D0E D0 01            [24] 2415 	pop	ar1
      002D10 D0 05            [24] 2416 	pop	ar5
      002D12 D0 06            [24] 2417 	pop	ar6
      002D14 D0 07            [24] 2418 	pop	ar7
                                   2419 ;	character.c:310: printf("\033[1;0m\n\rBuffer [%d] : End Address   = [%p] \n\r",i,new_buffer_arr[i] + buffer_size_arr[i]); // print the end address of the buffer with index i
      002D16 85 0C 82         [24] 2420 	mov	dpl,_command_processing_sloc0_1_0
      002D19 85 0D 83         [24] 2421 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002D1C E0               [24] 2422 	movx	a,@dptr
      002D1D FB               [12] 2423 	mov	r3,a
      002D1E A3               [24] 2424 	inc	dptr
      002D1F E0               [24] 2425 	movx	a,@dptr
      002D20 FC               [12] 2426 	mov	r4,a
      002D21 E5 0E            [12] 2427 	mov	a,_command_processing_sloc1_1_0
      002D23 24 A5            [12] 2428 	add	a,#_buffer_size_arr
      002D25 FA               [12] 2429 	mov	r2,a
      002D26 E5 0F            [12] 2430 	mov	a,(_command_processing_sloc1_1_0 + 1)
      002D28 34 1D            [12] 2431 	addc	a,#(_buffer_size_arr >> 8)
      002D2A FF               [12] 2432 	mov	r7,a
      002D2B 8A 82            [24] 2433 	mov	dpl,r2
      002D2D 8F 83            [24] 2434 	mov	dph,r7
      002D2F E0               [24] 2435 	movx	a,@dptr
      002D30 FD               [12] 2436 	mov	r5,a
      002D31 A3               [24] 2437 	inc	dptr
      002D32 E0               [24] 2438 	movx	a,@dptr
      002D33 FE               [12] 2439 	mov	r6,a
      002D34 ED               [12] 2440 	mov	a,r5
      002D35 2B               [12] 2441 	add	a,r3
      002D36 FB               [12] 2442 	mov	r3,a
      002D37 EE               [12] 2443 	mov	a,r6
      002D38 3C               [12] 2444 	addc	a,r4
      002D39 FC               [12] 2445 	mov	r4,a
      002D3A 7E 00            [12] 2446 	mov	r6,#0x00
      002D3C C0 07            [24] 2447 	push	ar7
      002D3E C0 06            [24] 2448 	push	ar6
      002D40 C0 05            [24] 2449 	push	ar5
      002D42 C0 02            [24] 2450 	push	ar2
      002D44 C0 01            [24] 2451 	push	ar1
      002D46 C0 00            [24] 2452 	push	ar0
      002D48 C0 03            [24] 2453 	push	ar3
      002D4A C0 04            [24] 2454 	push	ar4
      002D4C C0 06            [24] 2455 	push	ar6
      002D4E C0 00            [24] 2456 	push	ar0
      002D50 C0 01            [24] 2457 	push	ar1
      002D52 74 EC            [12] 2458 	mov	a,#___str_39
      002D54 C0 E0            [24] 2459 	push	acc
      002D56 74 4D            [12] 2460 	mov	a,#(___str_39 >> 8)
      002D58 C0 E0            [24] 2461 	push	acc
      002D5A 74 80            [12] 2462 	mov	a,#0x80
      002D5C C0 E0            [24] 2463 	push	acc
      002D5E 12 3A 30         [24] 2464 	lcall	_printf
      002D61 E5 81            [12] 2465 	mov	a,sp
      002D63 24 F8            [12] 2466 	add	a,#0xf8
      002D65 F5 81            [12] 2467 	mov	sp,a
      002D67 D0 00            [24] 2468 	pop	ar0
      002D69 D0 01            [24] 2469 	pop	ar1
      002D6B D0 02            [24] 2470 	pop	ar2
      002D6D D0 05            [24] 2471 	pop	ar5
      002D6F D0 06            [24] 2472 	pop	ar6
      002D71 D0 07            [24] 2473 	pop	ar7
                                   2474 ;	character.c:311: printf("\033[1;0m\n\rBuffer [%d] : Total Size    = [%d] \n\r",i,buffer_size_arr[i]); // print the total size of the buffer with index i
      002D73 8A 82            [24] 2475 	mov	dpl,r2
      002D75 8F 83            [24] 2476 	mov	dph,r7
      002D77 E0               [24] 2477 	movx	a,@dptr
      002D78 FA               [12] 2478 	mov	r2,a
      002D79 A3               [24] 2479 	inc	dptr
      002D7A E0               [24] 2480 	movx	a,@dptr
      002D7B FF               [12] 2481 	mov	r7,a
      002D7C C0 07            [24] 2482 	push	ar7
      002D7E C0 06            [24] 2483 	push	ar6
      002D80 C0 05            [24] 2484 	push	ar5
      002D82 C0 01            [24] 2485 	push	ar1
      002D84 C0 00            [24] 2486 	push	ar0
      002D86 C0 02            [24] 2487 	push	ar2
      002D88 C0 07            [24] 2488 	push	ar7
      002D8A C0 00            [24] 2489 	push	ar0
      002D8C C0 01            [24] 2490 	push	ar1
      002D8E 74 1A            [12] 2491 	mov	a,#___str_40
      002D90 C0 E0            [24] 2492 	push	acc
      002D92 74 4E            [12] 2493 	mov	a,#(___str_40 >> 8)
      002D94 C0 E0            [24] 2494 	push	acc
      002D96 74 80            [12] 2495 	mov	a,#0x80
      002D98 C0 E0            [24] 2496 	push	acc
      002D9A 12 3A 30         [24] 2497 	lcall	_printf
      002D9D E5 81            [12] 2498 	mov	a,sp
      002D9F 24 F9            [12] 2499 	add	a,#0xf9
      002DA1 F5 81            [12] 2500 	mov	sp,a
      002DA3 D0 00            [24] 2501 	pop	ar0
      002DA5 D0 01            [24] 2502 	pop	ar1
      002DA7 D0 05            [24] 2503 	pop	ar5
      002DA9 D0 06            [24] 2504 	pop	ar6
      002DAB D0 07            [24] 2505 	pop	ar7
                                   2506 ;	character.c:312: if(i == 0)                                      // if it is the first buffer
      002DAD D0 07            [24] 2507 	pop	ar7
      002DAF D0 06            [24] 2508 	pop	ar6
      002DB1 D0 05            [24] 2509 	pop	ar5
      002DB3 E8               [12] 2510 	mov	a,r0
      002DB4 49               [12] 2511 	orl	a,r1
      002DB5 70 6F            [24] 2512 	jnz	00136$
                                   2513 ;	character.c:314: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*storage_character_count); // print the number of storage characters since last ?= for the first buffer
      002DB7 8D 82            [24] 2514 	mov	dpl,r5
      002DB9 8E 83            [24] 2515 	mov	dph,r6
      002DBB 8F F0            [24] 2516 	mov	b,r7
      002DBD 12 44 5C         [24] 2517 	lcall	__gptrget
      002DC0 FB               [12] 2518 	mov	r3,a
      002DC1 A3               [24] 2519 	inc	dptr
      002DC2 12 44 5C         [24] 2520 	lcall	__gptrget
      002DC5 FC               [12] 2521 	mov	r4,a
      002DC6 C0 07            [24] 2522 	push	ar7
      002DC8 C0 06            [24] 2523 	push	ar6
      002DCA C0 05            [24] 2524 	push	ar5
      002DCC C0 01            [24] 2525 	push	ar1
      002DCE C0 00            [24] 2526 	push	ar0
      002DD0 C0 03            [24] 2527 	push	ar3
      002DD2 C0 04            [24] 2528 	push	ar4
      002DD4 C0 00            [24] 2529 	push	ar0
      002DD6 C0 01            [24] 2530 	push	ar1
      002DD8 74 48            [12] 2531 	mov	a,#___str_41
      002DDA C0 E0            [24] 2532 	push	acc
      002DDC 74 4E            [12] 2533 	mov	a,#(___str_41 >> 8)
      002DDE C0 E0            [24] 2534 	push	acc
      002DE0 12 36 00         [24] 2535 	lcall	_printf_tiny
      002DE3 E5 81            [12] 2536 	mov	a,sp
      002DE5 24 FA            [12] 2537 	add	a,#0xfa
      002DE7 F5 81            [12] 2538 	mov	sp,a
      002DE9 D0 00            [24] 2539 	pop	ar0
      002DEB D0 01            [24] 2540 	pop	ar1
                                   2541 ;	character.c:315: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*total_characters_count); // print the number of storage characters since last ?= for the first buffer
      002DED 85 14 82         [24] 2542 	mov	dpl,_command_processing_sloc3_1_0
      002DF0 85 15 83         [24] 2543 	mov	dph,(_command_processing_sloc3_1_0 + 1)
      002DF3 85 16 F0         [24] 2544 	mov	b,(_command_processing_sloc3_1_0 + 2)
      002DF6 12 44 5C         [24] 2545 	lcall	__gptrget
      002DF9 FB               [12] 2546 	mov	r3,a
      002DFA A3               [24] 2547 	inc	dptr
      002DFB 12 44 5C         [24] 2548 	lcall	__gptrget
      002DFE FC               [12] 2549 	mov	r4,a
      002DFF C0 01            [24] 2550 	push	ar1
      002E01 C0 00            [24] 2551 	push	ar0
      002E03 C0 03            [24] 2552 	push	ar3
      002E05 C0 04            [24] 2553 	push	ar4
      002E07 C0 00            [24] 2554 	push	ar0
      002E09 C0 01            [24] 2555 	push	ar1
      002E0B 74 48            [12] 2556 	mov	a,#___str_41
      002E0D C0 E0            [24] 2557 	push	acc
      002E0F 74 4E            [12] 2558 	mov	a,#(___str_41 >> 8)
      002E11 C0 E0            [24] 2559 	push	acc
      002E13 12 36 00         [24] 2560 	lcall	_printf_tiny
      002E16 E5 81            [12] 2561 	mov	a,sp
      002E18 24 FA            [12] 2562 	add	a,#0xfa
      002E1A F5 81            [12] 2563 	mov	sp,a
      002E1C D0 00            [24] 2564 	pop	ar0
      002E1E D0 01            [24] 2565 	pop	ar1
      002E20 D0 05            [24] 2566 	pop	ar5
      002E22 D0 06            [24] 2567 	pop	ar6
      002E24 D0 07            [24] 2568 	pop	ar7
      002E26                       2569 00136$:
                                   2570 ;	character.c:300: for(int i=0; i<*new_buffer_index; i++)              // iterate over the new buffer array using a loop variable i
      002E26 08               [12] 2571 	inc	r0
      002E27 B8 00 01         [24] 2572 	cjne	r0,#0x00,00267$
      002E2A 09               [12] 2573 	inc	r1
      002E2B                       2574 00267$:
      002E2B 02 2C 3E         [24] 2575 	ljmp	00146$
      002E2E                       2576 00137$:
                                   2577 ;	character.c:320: *storage_character_count = 0;
      002E2E 8D 82            [24] 2578 	mov	dpl,r5
      002E30 8E 83            [24] 2579 	mov	dph,r6
      002E32 8F F0            [24] 2580 	mov	b,r7
      002E34 E4               [12] 2581 	clr	a
      002E35 12 35 E5         [24] 2582 	lcall	__gptrput
      002E38 A3               [24] 2583 	inc	dptr
      002E39 12 35 E5         [24] 2584 	lcall	__gptrput
                                   2585 ;	character.c:321: *total_characters_count = 0;
      002E3C 85 14 82         [24] 2586 	mov	dpl,_command_processing_sloc3_1_0
      002E3F 85 15 83         [24] 2587 	mov	dph,(_command_processing_sloc3_1_0 + 1)
      002E42 85 16 F0         [24] 2588 	mov	b,(_command_processing_sloc3_1_0 + 2)
      002E45 12 35 E5         [24] 2589 	lcall	__gptrput
      002E48 A3               [24] 2590 	inc	dptr
      002E49 12 35 E5         [24] 2591 	lcall	__gptrput
                                   2592 ;	character.c:327: empty_buffer0();
      002E4C 12 21 C4         [24] 2593 	lcall	_empty_buffer0
                                   2594 ;	character.c:329: printf_tiny("\r\n\033[1;34m|************ REPORT ENDED  ********************|\n\r\n\r\n\r");
      002E4F 74 8F            [12] 2595 	mov	a,#___str_42
      002E51 C0 E0            [24] 2596 	push	acc
      002E53 74 4E            [12] 2597 	mov	a,#(___str_42 >> 8)
      002E55 C0 E0            [24] 2598 	push	acc
      002E57 12 36 00         [24] 2599 	lcall	_printf_tiny
      002E5A 15 81            [12] 2600 	dec	sp
      002E5C 15 81            [12] 2601 	dec	sp
                                   2602 ;	character.c:331: DEBUGPORT(0x50);
      002E5E 75 82 50         [24] 2603 	mov	dpl,#0x50
      002E61 12 21 B2         [24] 2604 	lcall	_dataout
                                   2605 ;	character.c:332: return BUFFER0_CLEARED;
      002E64 90 00 02         [24] 2606 	mov	dptr,#0x0002
                                   2607 ;	character.c:336: default:
      002E67 22               [24] 2608 	ret
      002E68                       2609 00138$:
                                   2610 ;	character.c:337: DEBUGPORT(0x60);
      002E68 75 82 60         [24] 2611 	mov	dpl,#0x60
      002E6B 12 21 B2         [24] 2612 	lcall	_dataout
                                   2613 ;	character.c:339: }
      002E6E                       2614 00141$:
                                   2615 ;	character.c:341: return ALL_BUFFER_NOT_CLEARED;
      002E6E 90 00 00         [24] 2616 	mov	dptr,#0x0000
                                   2617 ;	character.c:342: }
      002E71 22               [24] 2618 	ret
                                   2619 	.area CSEG    (CODE)
                                   2620 	.area CONST   (CODE)
                                   2621 	.area CONST   (CODE)
      00468A                       2622 ___str_0:
      00468A 1B                    2623 	.db 0x1b
      00468B 5B 31 3B 33 34 6D     2624 	.ascii "[1;34m"
      004691 0A                    2625 	.db 0x0a
      004692 0D                    2626 	.db 0x0d
      004693 00                    2627 	.db 0x00
                                   2628 	.area CSEG    (CODE)
                                   2629 	.area CONST   (CODE)
      004694                       2630 ___str_1:
      004694 1B                    2631 	.db 0x1b
      004695 5B 31 3B 33 34 6D 25  2632 	.ascii "[1;34m%p :"
             70 20 3A
      00469F 00                    2633 	.db 0x00
                                   2634 	.area CSEG    (CODE)
                                   2635 	.area CONST   (CODE)
      0046A0                       2636 ___str_2:
      0046A0 1B                    2637 	.db 0x1b
      0046A1 5B 31 3B 33 34 6D 20  2638 	.ascii "[1;34m XX"
             58 58
      0046AA 00                    2639 	.db 0x00
                                   2640 	.area CSEG    (CODE)
                                   2641 	.area CONST   (CODE)
      0046AB                       2642 ___str_3:
      0046AB 1B                    2643 	.db 0x1b
      0046AC 5B 31 3B 33 34 6D 20  2644 	.ascii "[1;34m %x"
             25 78
      0046B5 00                    2645 	.db 0x00
                                   2646 	.area CSEG    (CODE)
                                   2647 	.area CONST   (CODE)
      0046B6                       2648 ___str_4:
      0046B6 1B                    2649 	.db 0x1b
      0046B7 5B 31 3B 33 34 6D 20  2650 	.ascii "[1;34m %d"
             25 64
      0046C0 00                    2651 	.db 0x00
                                   2652 	.area CSEG    (CODE)
                                   2653 	.area CONST   (CODE)
      0046C1                       2654 ___str_5:
      0046C1 1B                    2655 	.db 0x1b
      0046C2 5B 31 3B 33 33 6D 7C  2656 	.ascii "[1;33m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0046F9 0A                    2657 	.db 0x0a
      0046FA 0D                    2658 	.db 0x0d
      0046FB 00                    2659 	.db 0x00
                                   2660 	.area CSEG    (CODE)
                                   2661 	.area CONST   (CODE)
      0046FC                       2662 ___str_6:
      0046FC 1B                    2663 	.db 0x1b
      0046FD 5B 31 3B 33 33 6D 7C  2664 	.ascii "[1;33m|************ Processing [+] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 2B 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004734 0A                    2665 	.db 0x0a
      004735 0D                    2666 	.db 0x0d
      004736 00                    2667 	.db 0x00
                                   2668 	.area CSEG    (CODE)
                                   2669 	.area CONST   (CODE)
      004737                       2670 ___str_7:
      004737 1B                    2671 	.db 0x1b
      004738 5B 31 3B 33 36 6D 7C  2672 	.ascii "[1;36m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      00476F 0A                    2673 	.db 0x0a
      004770 0D                    2674 	.db 0x0d
      004771 00                    2675 	.db 0x00
                                   2676 	.area CSEG    (CODE)
                                   2677 	.area CONST   (CODE)
      004772                       2678 ___str_8:
      004772 1B                    2679 	.db 0x1b
      004773 5B 31 3B 33 36 6D 7C  2680 	.ascii "[1;36m|********* Enter size for new bufer ************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 45 6E 74 65
             72 20 73 69 7A 65 20
             66 6F 72 20 6E 65 77
             20 62 75 66 65 72 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0047AA 0A                    2681 	.db 0x0a
      0047AB 0D                    2682 	.db 0x0d
      0047AC 00                    2683 	.db 0x00
                                   2684 	.area CSEG    (CODE)
                                   2685 	.area CONST   (CODE)
      0047AD                       2686 ___str_9:
      0047AD 1B                    2687 	.db 0x1b
      0047AE 5B 31 3B 33 31 6D 49  2688 	.ascii "[1;31mInvalid Input : The buffer size should be in the range"
             6E 76 61 6C 69 64 20
             49 6E 70 75 74 20 3A
             20 54 68 65 20 62 75
             66 66 65 72 20 73 69
             7A 65 20 73 68 6F 75
             6C 64 20 62 65 20 69
             6E 20 74 68 65 20 72
             61 6E 67 65
      0047EA 20 5B 33 30 2C 20 33  2689 	.ascii " [30, 300]"
             30 30 5D
      0047F4 0A                    2690 	.db 0x0a
      0047F5 0D                    2691 	.db 0x0d
      0047F6 0A                    2692 	.db 0x0a
      0047F7 0D                    2693 	.db 0x0d
      0047F8 00                    2694 	.db 0x00
                                   2695 	.area CSEG    (CODE)
                                   2696 	.area CONST   (CODE)
      0047F9                       2697 ___str_10:
      0047F9 1B                    2698 	.db 0x1b
      0047FA 5B 31 3B 33 31 6D 49  2699 	.ascii "[1;31mInvalid input : Failed to allocate buffer"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 46 61 69 6C 65 64
             20 74 6F 20 61 6C 6C
             6F 63 61 74 65 20 62
             75 66 66 65 72
      004829 0A                    2700 	.db 0x0a
      00482A 0D                    2701 	.db 0x0d
      00482B 0A                    2702 	.db 0x0a
      00482C 0D                    2703 	.db 0x0d
      00482D 00                    2704 	.db 0x00
                                   2705 	.area CSEG    (CODE)
                                   2706 	.area CONST   (CODE)
      00482E                       2707 ___str_11:
      00482E 1B                    2708 	.db 0x1b
      00482F 5B 31 3B 30 6D 4E 65  2709 	.ascii "[1;0mNew buffer allocated successfully : Buffer[%d]"
             77 20 62 75 66 66 65
             72 20 61 6C 6C 6F 63
             61 74 65 64 20 73 75
             63 63 65 73 73 66 75
             6C 6C 79 20 3A 20 42
             75 66 66 65 72 5B 25
             64 5D
      004862 0A                    2710 	.db 0x0a
      004863 0D                    2711 	.db 0x0d
      004864 00                    2712 	.db 0x00
                                   2713 	.area CSEG    (CODE)
                                   2714 	.area CONST   (CODE)
      004865                       2715 ___str_12:
      004865 1B                    2716 	.db 0x1b
      004866 5B 31 3B 30 6D 54 6F  2717 	.ascii "[1;0mTotal Number of Buffers including buffer0 & buffer1 = ["
             74 61 6C 20 4E 75 6D
             62 65 72 20 6F 66 20
             42 75 66 66 65 72 73
             20 69 6E 63 6C 75 64
             69 6E 67 20 62 75 66
             66 65 72 30 20 26 20
             62 75 66 66 65 72 31
             20 3D 20 5B
      0048A2 25 64 5D              2718 	.ascii "%d]"
      0048A5 0A                    2719 	.db 0x0a
      0048A6 0D                    2720 	.db 0x0d
      0048A7 00                    2721 	.db 0x00
                                   2722 	.area CSEG    (CODE)
                                   2723 	.area CONST   (CODE)
      0048A8                       2724 ___str_13:
      0048A8 1B                    2725 	.db 0x1b
      0048A9 5B 31 3B 30 6D 54 6F  2726 	.ascii "[1;0mTotal Filled Buffers = [%d] "
             74 61 6C 20 46 69 6C
             6C 65 64 20 42 75 66
             66 65 72 73 20 3D 20
             5B 25 64 5D 20
      0048CA 0D                    2727 	.db 0x0d
      0048CB 0A                    2728 	.db 0x0a
      0048CC 54 6F 74 61 6C 20 45  2729 	.ascii "Total Empty Buffers = [%d] "
             6D 70 74 79 20 42 75
             66 66 65 72 73 20 3D
             20 5B 25 64 5D 20
      0048E7 0A                    2730 	.db 0x0a
      0048E8 0D                    2731 	.db 0x0d
      0048E9 0A                    2732 	.db 0x0a
      0048EA 0D                    2733 	.db 0x0d
      0048EB 00                    2734 	.db 0x00
                                   2735 	.area CSEG    (CODE)
                                   2736 	.area CONST   (CODE)
      0048EC                       2737 ___str_14:
      0048EC 1B                    2738 	.db 0x1b
      0048ED 5B 31 3B 33 33 6D 7C  2739 	.ascii "[1;33m|************ Processing [-] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 2D 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004924 0A                    2740 	.db 0x0a
      004925 0D                    2741 	.db 0x0d
      004926 00                    2742 	.db 0x00
                                   2743 	.area CSEG    (CODE)
                                   2744 	.area CONST   (CODE)
      004927                       2745 ___str_15:
      004927 1B                    2746 	.db 0x1b
      004928 5B 31 3B 33 36 6D 7C  2747 	.ascii "[1;36m|********* Enter buffer to be deleted **********|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 45 6E 74 65
             72 20 62 75 66 66 65
             72 20 74 6F 20 62 65
             20 64 65 6C 65 74 65
             64 20 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      00495F 0A                    2748 	.db 0x0a
      004960 0D                    2749 	.db 0x0d
      004961 00                    2750 	.db 0x00
                                   2751 	.area CSEG    (CODE)
                                   2752 	.area CONST   (CODE)
      004962                       2753 ___str_16:
      004962 1B                    2754 	.db 0x1b
      004963 5B 31 3B 33 36 6D 7C  2755 	.ascii "[1;36m|********* Current No of buffers:[%d] ***********|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 43 75 72 72
             65 6E 74 20 4E 6F 20
             6F 66 20 62 75 66 66
             65 72 73 3A 5B 25 64
             5D 20 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      00499B 0A                    2756 	.db 0x0a
      00499C 0D                    2757 	.db 0x0d
      00499D 00                    2758 	.db 0x00
                                   2759 	.area CSEG    (CODE)
                                   2760 	.area CONST   (CODE)
      00499E                       2761 ___str_17:
      00499E 1B                    2762 	.db 0x1b
      00499F 5B 31 3B 33 36 6D 7C  2763 	.ascii "[1;36m|********* Note : Index Starts with 0 **********|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 4E 6F 74 65
             20 3A 20 49 6E 64 65
             78 20 53 74 61 72 74
             73 20 77 69 74 68 20
             30 20 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0049D6 0A                    2764 	.db 0x0a
      0049D7 0D                    2765 	.db 0x0d
      0049D8 00                    2766 	.db 0x00
                                   2767 	.area CSEG    (CODE)
                                   2768 	.area CONST   (CODE)
      0049D9                       2769 ___str_18:
      0049D9 1B                    2770 	.db 0x1b
      0049DA 5B 31 3B 33 31 6D 49  2771 	.ascii "[1;31mInvalid input : invalid digits entered "
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 69 6E 76 61 6C 69
             64 20 64 69 67 69 74
             73 20 65 6E 74 65 72
             65 64 20
      004A07 0A                    2772 	.db 0x0a
      004A08 0D                    2773 	.db 0x0d
      004A09 0A                    2774 	.db 0x0a
      004A0A 0D                    2775 	.db 0x0d
      004A0B 00                    2776 	.db 0x00
                                   2777 	.area CSEG    (CODE)
                                   2778 	.area CONST   (CODE)
      004A0C                       2779 ___str_19:
      004A0C 1B                    2780 	.db 0x1b
      004A0D 5B 31 3B 33 31 6D 49  2781 	.ascii "[1;31mInvalid input : buffer number can't be 0"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 63 61 6E 27 74 20
             62 65 20 30
      004A3B 0A                    2782 	.db 0x0a
      004A3C 0D                    2783 	.db 0x0d
      004A3D 0A                    2784 	.db 0x0a
      004A3E 00                    2785 	.db 0x00
                                   2786 	.area CSEG    (CODE)
                                   2787 	.area CONST   (CODE)
      004A3F                       2788 ___str_20:
      004A3F 1B                    2789 	.db 0x1b
      004A40 5B 31 3B 33 31 6D 49  2790 	.ascii "[1;31mInvalid input : buffer[%d] was already cleared earlier"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             5B 25 64 5D 20 77 61
             73 20 61 6C 72 65 61
             64 79 20 63 6C 65 61
             72 65 64 20 65 61 72
             6C 69 65 72
      004A7C 0A                    2791 	.db 0x0a
      004A7D 0D                    2792 	.db 0x0d
      004A7E 00                    2793 	.db 0x00
                                   2794 	.area CSEG    (CODE)
                                   2795 	.area CONST   (CODE)
      004A7F                       2796 ___str_21:
      004A7F 1B                    2797 	.db 0x1b
      004A80 5B 31 3B 33 31 6D 49  2798 	.ascii "[1;31mInvalid input : buffer number doesn't exist"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 64 6F 65 73 6E 27
             74 20 65 78 69 73 74
      004AB1 0A                    2799 	.db 0x0a
      004AB2 0D                    2800 	.db 0x0d
      004AB3 00                    2801 	.db 0x00
                                   2802 	.area CSEG    (CODE)
                                   2803 	.area CONST   (CODE)
      004AB4                       2804 ___str_22:
      004AB4 1B                    2805 	.db 0x1b
      004AB5 5B 31 3B 30 6D 42 75  2806 	.ascii "[1;0mBuffer [%d] requested to be deleted"
             66 66 65 72 20 5B 25
             64 5D 20 72 65 71 75
             65 73 74 65 64 20 74
             6F 20 62 65 20 64 65
             6C 65 74 65 64
      004ADD 0A                    2807 	.db 0x0a
      004ADE 0D                    2808 	.db 0x0d
      004ADF 00                    2809 	.db 0x00
                                   2810 	.area CSEG    (CODE)
                                   2811 	.area CONST   (CODE)
      004AE0                       2812 ___str_23:
      004AE0 50 65 72 66 6F 72 6D  2813 	.ascii "Performing buffer freeing operation"
             69 6E 67 20 62 75 66
             66 65 72 20 66 72 65
             65 69 6E 67 20 6F 70
             65 72 61 74 69 6F 6E
      004B03 0D                    2814 	.db 0x0d
      004B04 0A                    2815 	.db 0x0a
      004B05 00                    2816 	.db 0x00
                                   2817 	.area CSEG    (CODE)
                                   2818 	.area CONST   (CODE)
      004B06                       2819 ___str_24:
      004B06 2A 2A 2A 42 75 66 66  2820 	.ascii "***Buffer [%d] is freed****"
             65 72 20 5B 25 64 5D
             20 69 73 20 66 72 65
             65 64 2A 2A 2A 2A
      004B21 0A                    2821 	.db 0x0a
      004B22 0D                    2822 	.db 0x0d
      004B23 00                    2823 	.db 0x00
                                   2824 	.area CSEG    (CODE)
                                   2825 	.area CONST   (CODE)
      004B24                       2826 ___str_25:
      004B24 1B                    2827 	.db 0x1b
      004B25 5B 31 3B 30 6D 42 75  2828 	.ascii "[1;0mBuffer[%d] de-allocated successfully  "
             66 66 65 72 5B 25 64
             5D 20 64 65 2D 61 6C
             6C 6F 63 61 74 65 64
             20 73 75 63 63 65 73
             73 66 75 6C 6C 79 20
             20
      004B50 0A                    2829 	.db 0x0a
      004B51 0D                    2830 	.db 0x0d
      004B52 00                    2831 	.db 0x00
                                   2832 	.area CSEG    (CODE)
                                   2833 	.area CONST   (CODE)
      004B53                       2834 ___str_26:
      004B53 1B                    2835 	.db 0x1b
      004B54 5B 31 3B 30 6D 54 6F  2836 	.ascii "[1;0mTotal Number of Buffers after deallocation = [%d]"
             74 61 6C 20 4E 75 6D
             62 65 72 20 6F 66 20
             42 75 66 66 65 72 73
             20 61 66 74 65 72 20
             64 65 61 6C 6C 6F 63
             61 74 69 6F 6E 20 3D
             20 5B 25 64 5D
      004B8A 0A                    2837 	.db 0x0a
      004B8B 0D                    2838 	.db 0x0d
      004B8C 0A                    2839 	.db 0x0a
      004B8D 0D                    2840 	.db 0x0d
      004B8E 00                    2841 	.db 0x00
                                   2842 	.area CSEG    (CODE)
                                   2843 	.area CONST   (CODE)
      004B8F                       2844 ___str_27:
      004B8F 1B                    2845 	.db 0x1b
      004B90 5B 31 3B 30 6D 54 6F  2846 	.ascii "[1;0mTotal Filled Buffers = [%d] "
             74 61 6C 20 46 69 6C
             6C 65 64 20 42 75 66
             66 65 72 73 20 3D 20
             5B 25 64 5D 20
      004BB1 0D                    2847 	.db 0x0d
      004BB2 0A                    2848 	.db 0x0a
      004BB3 54 6F 74 61 6C 20 45  2849 	.ascii "Total Empty Buffers  = [%d] "
             6D 70 74 79 20 42 75
             66 66 65 72 73 20 20
             3D 20 5B 25 64 5D 20
      004BCF 0A                    2850 	.db 0x0a
      004BD0 0D                    2851 	.db 0x0d
      004BD1 0A                    2852 	.db 0x0a
      004BD2 0D                    2853 	.db 0x0d
      004BD3 00                    2854 	.db 0x00
                                   2855 	.area CSEG    (CODE)
                                   2856 	.area CONST   (CODE)
      004BD4                       2857 ___str_28:
      004BD4 1B                    2858 	.db 0x1b
      004BD5 5B 31 3B 33 33 6D 7C  2859 	.ascii "[1;33m|************ Processing [@] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 40 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004C0C 0A                    2860 	.db 0x0a
      004C0D 0D                    2861 	.db 0x0d
      004C0E 00                    2862 	.db 0x00
                                   2863 	.area CSEG    (CODE)
                                   2864 	.area CONST   (CODE)
      004C0F                       2865 ___str_29:
      004C0F 1B                    2866 	.db 0x1b
      004C10 5B 31 3B 30 6D 42 75  2867 	.ascii "[1;0mBuffer[%d] freed"
             66 66 65 72 5B 25 64
             5D 20 66 72 65 65 64
      004C25 0A                    2868 	.db 0x0a
      004C26 0D                    2869 	.db 0x0d
      004C27 00                    2870 	.db 0x00
                                   2871 	.area CSEG    (CODE)
                                   2872 	.area CONST   (CODE)
      004C28                       2873 ___str_30:
      004C28 1B                    2874 	.db 0x1b
      004C29 5B 31 3B 30 6D 42 75  2875 	.ascii "[1;0mBuffer[%d] was already NULL"
             66 66 65 72 5B 25 64
             5D 20 77 61 73 20 61
             6C 72 65 61 64 79 20
             4E 55 4C 4C
      004C49 0A                    2876 	.db 0x0a
      004C4A 0D                    2877 	.db 0x0d
      004C4B 00                    2878 	.db 0x00
                                   2879 	.area CSEG    (CODE)
                                   2880 	.area CONST   (CODE)
      004C4C                       2881 ___str_31:
      004C4C 1B                    2882 	.db 0x1b
      004C4D 5B 31 3B 33 33 6D     2883 	.ascii "[1;33m"
      004C53 0D                    2884 	.db 0x0d
      004C54 0A                    2885 	.db 0x0a
      004C55 7C 2A 2A 2A 2A 2A 2A  2886 	.ascii "|************ Processing [=] *******************|"
             2A 2A 2A 2A 2A 2A 20
             50 72 6F 63 65 73 73
             69 6E 67 20 5B 3D 5D
             20 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      004C86 0A                    2887 	.db 0x0a
      004C87 0D                    2888 	.db 0x0d
      004C88 00                    2889 	.db 0x00
                                   2890 	.area CSEG    (CODE)
                                   2891 	.area CONST   (CODE)
      004C89                       2892 ___str_32:
      004C89 1B                    2893 	.db 0x1b
      004C8A 5B 31 3B 33 33 6D 7C  2894 	.ascii "[1;33m|************ Processing [?] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 3F 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004CC1 0A                    2895 	.db 0x0a
      004CC2 0D                    2896 	.db 0x0d
      004CC3 00                    2897 	.db 0x00
                                   2898 	.area CSEG    (CODE)
                                   2899 	.area CONST   (CODE)
      004CC4                       2900 ___str_33:
      004CC4 20                    2901 	.ascii " "
      004CC5 1B                    2902 	.db 0x1b
      004CC6 5B 31 3B 33 34 6D     2903 	.ascii "[1;34m"
      004CCC 0D                    2904 	.db 0x0d
      004CCD 0A                    2905 	.db 0x0a
      004CCE 7C 2A 2A 2A 2A 2A 2A  2906 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      004CFF 0A                    2907 	.db 0x0a
      004D00 0D                    2908 	.db 0x0d
      004D01 00                    2909 	.db 0x00
                                   2910 	.area CSEG    (CODE)
                                   2911 	.area CONST   (CODE)
      004D02                       2912 ___str_34:
      004D02 20                    2913 	.ascii " "
      004D03 1B                    2914 	.db 0x1b
      004D04 5B 31 3B 33 34 6D 7C  2915 	.ascii "[1;34m|*************** HEAP REPORT *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 20 48 45 41 50 20
             52 45 50 4F 52 54 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004D3B 0A                    2916 	.db 0x0a
      004D3C 0D                    2917 	.db 0x0d
      004D3D 00                    2918 	.db 0x00
                                   2919 	.area CSEG    (CODE)
                                   2920 	.area CONST   (CODE)
      004D3E                       2921 ___str_35:
      004D3E 20                    2922 	.ascii " "
      004D3F 1B                    2923 	.db 0x1b
      004D40 5B 31 3B 33 34 6D 7C  2924 	.ascii "[1;34m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004D77 0A                    2925 	.db 0x0a
      004D78 0D                    2926 	.db 0x0d
      004D79 00                    2927 	.db 0x00
                                   2928 	.area CSEG    (CODE)
                                   2929 	.area CONST   (CODE)
      004D7A                       2930 ___str_36:
      004D7A 1B                    2931 	.db 0x1b
      004D7B 5B 31 3B 33 31 6D     2932 	.ascii "[1;31m"
      004D81 0A                    2933 	.db 0x0a
      004D82 0D                    2934 	.db 0x0d
      004D83 42 75 66 66 65 72 20  2935 	.ascii "Buffer [%d] already cleared!!"
             5B 25 64 5D 20 61 6C
             72 65 61 64 79 20 63
             6C 65 61 72 65 64 21
             21
      004DA0 0A                    2936 	.db 0x0a
      004DA1 0D                    2937 	.db 0x0d
      004DA2 00                    2938 	.db 0x00
                                   2939 	.area CSEG    (CODE)
                                   2940 	.area CONST   (CODE)
      004DA3                       2941 ___str_37:
      004DA3 1B                    2942 	.db 0x1b
      004DA4 5B 31 3B 33 36 6D     2943 	.ascii "[1;36m"
      004DAA 0A                    2944 	.db 0x0a
      004DAB 0D                    2945 	.db 0x0d
      004DAC 2A 2A 42 75 66 66 65  2946 	.ascii "**Buffer [%d]**"
             72 20 5B 25 64 5D 2A
             2A
      004DBB 0A                    2947 	.db 0x0a
      004DBC 0D                    2948 	.db 0x0d
      004DBD 00                    2949 	.db 0x00
                                   2950 	.area CSEG    (CODE)
                                   2951 	.area CONST   (CODE)
      004DBE                       2952 ___str_38:
      004DBE 1B                    2953 	.db 0x1b
      004DBF 5B 31 3B 30 6D        2954 	.ascii "[1;0m"
      004DC4 0A                    2955 	.db 0x0a
      004DC5 0D                    2956 	.db 0x0d
      004DC6 42 75 66 66 65 72 20  2957 	.ascii "Buffer [%d] : Start Address = [%p] "
             5B 25 64 5D 20 3A 20
             53 74 61 72 74 20 41
             64 64 72 65 73 73 20
             3D 20 5B 25 70 5D 20
      004DE9 0A                    2958 	.db 0x0a
      004DEA 0D                    2959 	.db 0x0d
      004DEB 00                    2960 	.db 0x00
                                   2961 	.area CSEG    (CODE)
                                   2962 	.area CONST   (CODE)
      004DEC                       2963 ___str_39:
      004DEC 1B                    2964 	.db 0x1b
      004DED 5B 31 3B 30 6D        2965 	.ascii "[1;0m"
      004DF2 0A                    2966 	.db 0x0a
      004DF3 0D                    2967 	.db 0x0d
      004DF4 42 75 66 66 65 72 20  2968 	.ascii "Buffer [%d] : End Address   = [%p] "
             5B 25 64 5D 20 3A 20
             45 6E 64 20 41 64 64
             72 65 73 73 20 20 20
             3D 20 5B 25 70 5D 20
      004E17 0A                    2969 	.db 0x0a
      004E18 0D                    2970 	.db 0x0d
      004E19 00                    2971 	.db 0x00
                                   2972 	.area CSEG    (CODE)
                                   2973 	.area CONST   (CODE)
      004E1A                       2974 ___str_40:
      004E1A 1B                    2975 	.db 0x1b
      004E1B 5B 31 3B 30 6D        2976 	.ascii "[1;0m"
      004E20 0A                    2977 	.db 0x0a
      004E21 0D                    2978 	.db 0x0d
      004E22 42 75 66 66 65 72 20  2979 	.ascii "Buffer [%d] : Total Size    = [%d] "
             5B 25 64 5D 20 3A 20
             54 6F 74 61 6C 20 53
             69 7A 65 20 20 20 20
             3D 20 5B 25 64 5D 20
      004E45 0A                    2980 	.db 0x0a
      004E46 0D                    2981 	.db 0x0d
      004E47 00                    2982 	.db 0x00
                                   2983 	.area CSEG    (CODE)
                                   2984 	.area CONST   (CODE)
      004E48                       2985 ___str_41:
      004E48 1B                    2986 	.db 0x1b
      004E49 5B 31 3B 30 6D        2987 	.ascii "[1;0m"
      004E4E 0A                    2988 	.db 0x0a
      004E4F 0D                    2989 	.db 0x0d
      004E50 42 75 66 66 65 72 5B  2990 	.ascii "Buffer[%d] : Number of storage characters since last ?= [%d]"
             25 64 5D 20 3A 20 4E
             75 6D 62 65 72 20 6F
             66 20 73 74 6F 72 61
             67 65 20 63 68 61 72
             61 63 74 65 72 73 20
             73 69 6E 63 65 20 6C
             61 73 74 20 3F 3D 20
             5B 25 64 5D
      004E8C 0A                    2991 	.db 0x0a
      004E8D 0D                    2992 	.db 0x0d
      004E8E 00                    2993 	.db 0x00
                                   2994 	.area CSEG    (CODE)
                                   2995 	.area CONST   (CODE)
      004E8F                       2996 ___str_42:
      004E8F 0D                    2997 	.db 0x0d
      004E90 0A                    2998 	.db 0x0a
      004E91 1B                    2999 	.db 0x1b
      004E92 5B 31 3B 33 34 6D 7C  3000 	.ascii "[1;34m|************ REPORT ENDED  ********************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 52
             45 50 4F 52 54 20 45
             4E 44 45 44 20 20 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004EC9 0A                    3001 	.db 0x0a
      004ECA 0D                    3002 	.db 0x0d
      004ECB 0A                    3003 	.db 0x0a
      004ECC 0D                    3004 	.db 0x0d
      004ECD 0A                    3005 	.db 0x0a
      004ECE 0D                    3006 	.db 0x0d
      004ECF 00                    3007 	.db 0x00
                                   3008 	.area CSEG    (CODE)
                                   3009 	.area XINIT   (CODE)
      0053C3                       3010 __xinit__size:
      0053C3 30                    3011 	.db #0x30	; 48	'0'
      0053C4 30                    3012 	.db #0x30	; 48	'0'
      0053C5 30                    3013 	.db #0x30	; 48	'0'
      0053C6 00                    3014 	.db #0x00	; 0
      0053C7                       3015 __xinit__buffer_to_delete:
      0053C7 00 00                 3016 	.byte #0x00, #0x00	;  0
      0053C9                       3017 __xinit__buff_not_cleared:
      0053C9 00 00                 3018 	.byte #0x00, #0x00	;  0
      0053CB 00                    3019 	.db 0x00
      0053CC 00                    3020 	.db 0x00
      0053CD 00                    3021 	.db 0x00
      0053CE 00                    3022 	.db 0x00
      0053CF 00                    3023 	.db 0x00
      0053D0 00                    3024 	.db 0x00
      0053D1 00                    3025 	.db 0x00
      0053D2 00                    3026 	.db 0x00
      0053D3 00                    3027 	.db 0x00
      0053D4 00                    3028 	.db 0x00
      0053D5 00                    3029 	.db 0x00
      0053D6 00                    3030 	.db 0x00
      0053D7 00                    3031 	.db 0x00
      0053D8 00                    3032 	.db 0x00
      0053D9 00                    3033 	.db 0x00
      0053DA 00                    3034 	.db 0x00
      0053DB 00                    3035 	.db 0x00
      0053DC 00                    3036 	.db 0x00
      0053DD 00                    3037 	.db 0x00
      0053DE 00                    3038 	.db 0x00
      0053DF 00                    3039 	.db 0x00
      0053E0 00                    3040 	.db 0x00
      0053E1 00                    3041 	.db 0x00
      0053E2 00                    3042 	.db 0x00
      0053E3 00                    3043 	.db 0x00
      0053E4 00                    3044 	.db 0x00
      0053E5 00                    3045 	.db 0x00
      0053E6 00                    3046 	.db 0x00
      0053E7 00                    3047 	.db 0x00
      0053E8 00                    3048 	.db 0x00
      0053E9 00                    3049 	.db 0x00
      0053EA 00                    3050 	.db 0x00
      0053EB 00                    3051 	.db 0x00
      0053EC 00                    3052 	.db 0x00
      0053ED 00                    3053 	.db 0x00
      0053EE 00                    3054 	.db 0x00
      0053EF 00                    3055 	.db 0x00
      0053F0 00                    3056 	.db 0x00
      0053F1 00                    3057 	.db 0x00
      0053F2 00                    3058 	.db 0x00
      0053F3 00                    3059 	.db 0x00
      0053F4 00                    3060 	.db 0x00
      0053F5 00                    3061 	.db 0x00
      0053F6 00                    3062 	.db 0x00
      0053F7 00                    3063 	.db 0x00
      0053F8 00                    3064 	.db 0x00
      0053F9 00                    3065 	.db 0x00
      0053FA 00                    3066 	.db 0x00
      0053FB 00                    3067 	.db 0x00
      0053FC 00                    3068 	.db 0x00
      0053FD 00                    3069 	.db 0x00
      0053FE 00                    3070 	.db 0x00
      0053FF 00                    3071 	.db 0x00
      005400 00                    3072 	.db 0x00
      005401 00                    3073 	.db 0x00
      005402 00                    3074 	.db 0x00
      005403 00                    3075 	.db 0x00
      005404 00                    3076 	.db 0x00
      005405 00                    3077 	.db 0x00
      005406 00                    3078 	.db 0x00
      005407 00                    3079 	.db 0x00
      005408 00                    3080 	.db 0x00
      005409 00                    3081 	.db 0x00
      00540A 00                    3082 	.db 0x00
      00540B 00                    3083 	.db 0x00
      00540C 00                    3084 	.db 0x00
      00540D 00                    3085 	.db 0x00
      00540E 00                    3086 	.db 0x00
      00540F 00                    3087 	.db 0x00
      005410 00                    3088 	.db 0x00
      005411 00                    3089 	.db 0x00
      005412 00                    3090 	.db 0x00
      005413 00                    3091 	.db 0x00
      005414 00                    3092 	.db 0x00
      005415 00                    3093 	.db 0x00
      005416 00                    3094 	.db 0x00
      005417 00                    3095 	.db 0x00
      005418 00                    3096 	.db 0x00
      005419 00                    3097 	.db 0x00
      00541A 00                    3098 	.db 0x00
      00541B 00                    3099 	.db 0x00
      00541C 00                    3100 	.db 0x00
      00541D 00                    3101 	.db 0x00
      00541E 00                    3102 	.db 0x00
      00541F 00                    3103 	.db 0x00
      005420 00                    3104 	.db 0x00
      005421 00                    3105 	.db 0x00
      005422 00                    3106 	.db 0x00
      005423 00                    3107 	.db 0x00
      005424 00                    3108 	.db 0x00
      005425 00                    3109 	.db 0x00
      005426 00                    3110 	.db 0x00
      005427 00                    3111 	.db 0x00
      005428 00                    3112 	.db 0x00
      005429 00                    3113 	.db 0x00
      00542A 00                    3114 	.db 0x00
      00542B 00                    3115 	.db 0x00
      00542C 00                    3116 	.db 0x00
      00542D 00                    3117 	.db 0x00
      00542E 00                    3118 	.db 0x00
      00542F 00                    3119 	.db 0x00
      005430 00                    3120 	.db 0x00
      005431 00                    3121 	.db 0x00
      005432 00                    3122 	.db 0x00
      005433 00                    3123 	.db 0x00
      005434 00                    3124 	.db 0x00
      005435 00                    3125 	.db 0x00
      005436 00                    3126 	.db 0x00
      005437 00                    3127 	.db 0x00
      005438 00                    3128 	.db 0x00
      005439 00                    3129 	.db 0x00
      00543A 00                    3130 	.db 0x00
      00543B 00                    3131 	.db 0x00
      00543C 00                    3132 	.db 0x00
      00543D 00                    3133 	.db 0x00
      00543E 00                    3134 	.db 0x00
      00543F 00                    3135 	.db 0x00
      005440 00                    3136 	.db 0x00
      005441 00                    3137 	.db 0x00
      005442 00                    3138 	.db 0x00
      005443 00                    3139 	.db 0x00
      005444 00                    3140 	.db 0x00
      005445 00                    3141 	.db 0x00
      005446 00                    3142 	.db 0x00
      005447 00                    3143 	.db 0x00
      005448 00                    3144 	.db 0x00
      005449 00                    3145 	.db 0x00
      00544A 00                    3146 	.db 0x00
      00544B 00                    3147 	.db 0x00
      00544C 00                    3148 	.db 0x00
      00544D 00                    3149 	.db 0x00
      00544E 00                    3150 	.db 0x00
      00544F 00                    3151 	.db 0x00
      005450 00                    3152 	.db 0x00
      005451 00                    3153 	.db 0x00
      005452 00                    3154 	.db 0x00
      005453 00                    3155 	.db 0x00
      005454 00                    3156 	.db 0x00
      005455 00                    3157 	.db 0x00
      005456 00                    3158 	.db 0x00
      005457 00                    3159 	.db 0x00
      005458 00                    3160 	.db 0x00
      005459 00                    3161 	.db 0x00
      00545A 00                    3162 	.db 0x00
      00545B 00                    3163 	.db 0x00
      00545C 00                    3164 	.db 0x00
      00545D 00                    3165 	.db 0x00
      00545E 00                    3166 	.db 0x00
      00545F 00                    3167 	.db 0x00
      005460 00                    3168 	.db 0x00
      005461 00                    3169 	.db 0x00
      005462 00                    3170 	.db 0x00
      005463 00                    3171 	.db 0x00
      005464 00                    3172 	.db 0x00
      005465 00                    3173 	.db 0x00
      005466 00                    3174 	.db 0x00
      005467 00                    3175 	.db 0x00
      005468 00                    3176 	.db 0x00
      005469 00                    3177 	.db 0x00
      00546A 00                    3178 	.db 0x00
      00546B 00                    3179 	.db 0x00
      00546C 00                    3180 	.db 0x00
      00546D 00                    3181 	.db 0x00
      00546E 00                    3182 	.db 0x00
      00546F 00                    3183 	.db 0x00
      005470 00                    3184 	.db 0x00
      005471 00                    3185 	.db 0x00
      005472 00                    3186 	.db 0x00
      005473 00                    3187 	.db 0x00
      005474 00                    3188 	.db 0x00
      005475 00                    3189 	.db 0x00
      005476 00                    3190 	.db 0x00
      005477 00                    3191 	.db 0x00
      005478 00                    3192 	.db 0x00
      005479 00                    3193 	.db 0x00
      00547A 00                    3194 	.db 0x00
      00547B 00                    3195 	.db 0x00
      00547C 00                    3196 	.db 0x00
      00547D 00                    3197 	.db 0x00
      00547E 00                    3198 	.db 0x00
      00547F 00                    3199 	.db 0x00
      005480 00                    3200 	.db 0x00
      005481 00                    3201 	.db 0x00
      005482 00                    3202 	.db 0x00
      005483 00                    3203 	.db 0x00
      005484 00                    3204 	.db 0x00
      005485 00                    3205 	.db 0x00
      005486 00                    3206 	.db 0x00
      005487 00                    3207 	.db 0x00
      005488 00                    3208 	.db 0x00
      005489 00                    3209 	.db 0x00
      00548A 00                    3210 	.db 0x00
      00548B 00                    3211 	.db 0x00
      00548C 00                    3212 	.db 0x00
      00548D 00                    3213 	.db 0x00
      00548E 00                    3214 	.db 0x00
      00548F 00                    3215 	.db 0x00
      005490 00                    3216 	.db 0x00
      005491                       3217 __xinit__buffer0and1_size:
      005491 00 00                 3218 	.byte #0x00, #0x00	;  0
                                   3219 	.area CABS    (ABS,CODE)
