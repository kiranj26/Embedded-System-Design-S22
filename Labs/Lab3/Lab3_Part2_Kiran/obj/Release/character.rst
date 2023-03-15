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
                                    240 	.globl _empty_buffer0
                                    241 	.globl _buffer0_hexdump
                                    242 	.globl _command_processing
                                    243 ;--------------------------------------------------------
                                    244 ; special function registers
                                    245 ;--------------------------------------------------------
                                    246 	.area RSEG    (ABS,DATA)
      000000                        247 	.org 0x0000
                           0000C8   248 _T2CON	=	0x00c8
                           0000CA   249 _RCAP2L	=	0x00ca
                           0000CB   250 _RCAP2H	=	0x00cb
                           0000CC   251 _TL2	=	0x00cc
                           0000CD   252 _TH2	=	0x00cd
                           00008E   253 _AUXR	=	0x008e
                           0000A2   254 _AUXR1	=	0x00a2
                           000097   255 _CKRL	=	0x0097
                           00008F   256 _CKCON0	=	0x008f
                           0000AF   257 _CKCON1	=	0x00af
                           0000FA   258 _CCAP0H	=	0x00fa
                           0000FB   259 _CCAP1H	=	0x00fb
                           0000FC   260 _CCAP2H	=	0x00fc
                           0000FD   261 _CCAP3H	=	0x00fd
                           0000FE   262 _CCAP4H	=	0x00fe
                           0000EA   263 _CCAP0L	=	0x00ea
                           0000EB   264 _CCAP1L	=	0x00eb
                           0000EC   265 _CCAP2L	=	0x00ec
                           0000ED   266 _CCAP3L	=	0x00ed
                           0000EE   267 _CCAP4L	=	0x00ee
                           0000DA   268 _CCAPM0	=	0x00da
                           0000DB   269 _CCAPM1	=	0x00db
                           0000DC   270 _CCAPM2	=	0x00dc
                           0000DD   271 _CCAPM3	=	0x00dd
                           0000DE   272 _CCAPM4	=	0x00de
                           0000D8   273 _CCON	=	0x00d8
                           0000F9   274 _CH	=	0x00f9
                           0000E9   275 _CL	=	0x00e9
                           0000D9   276 _CMOD	=	0x00d9
                           0000A8   277 _IEN0	=	0x00a8
                           0000B1   278 _IEN1	=	0x00b1
                           0000B8   279 _IPL0	=	0x00b8
                           0000B7   280 _IPH0	=	0x00b7
                           0000B2   281 _IPL1	=	0x00b2
                           0000B3   282 _IPH1	=	0x00b3
                           0000C0   283 _P4	=	0x00c0
                           0000E8   284 _P5	=	0x00e8
                           0000A6   285 _WDTRST	=	0x00a6
                           0000A7   286 _WDTPRG	=	0x00a7
                           0000A9   287 _SADDR	=	0x00a9
                           0000B9   288 _SADEN	=	0x00b9
                           0000C3   289 _SPCON	=	0x00c3
                           0000C4   290 _SPSTA	=	0x00c4
                           0000C5   291 _SPDAT	=	0x00c5
                           0000C9   292 _T2MOD	=	0x00c9
                           00009B   293 _BDRCON	=	0x009b
                           00009A   294 _BRL	=	0x009a
                           00009C   295 _KBLS	=	0x009c
                           00009D   296 _KBE	=	0x009d
                           00009E   297 _KBF	=	0x009e
                           0000D2   298 _EECON	=	0x00d2
                           000083   299 _DP0H	=	0x0083
                           000082   300 _DP0L	=	0x0082
                           000099   301 _SBUF0	=	0x0099
                           000080   302 _P0	=	0x0080
                           000081   303 _SP	=	0x0081
                           000082   304 _DPL	=	0x0082
                           000083   305 _DPH	=	0x0083
                           000087   306 _PCON	=	0x0087
                           000088   307 _TCON	=	0x0088
                           000089   308 _TMOD	=	0x0089
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           00008C   311 _TH0	=	0x008c
                           00008D   312 _TH1	=	0x008d
                           000090   313 _P1	=	0x0090
                           000098   314 _SCON	=	0x0098
                           000099   315 _SBUF	=	0x0099
                           0000A0   316 _P2	=	0x00a0
                           0000A8   317 _IE	=	0x00a8
                           0000B0   318 _P3	=	0x00b0
                           0000B8   319 _IP	=	0x00b8
                           0000D0   320 _PSW	=	0x00d0
                           0000E0   321 _ACC	=	0x00e0
                           0000F0   322 _B	=	0x00f0
                                    323 ;--------------------------------------------------------
                                    324 ; special function bits
                                    325 ;--------------------------------------------------------
                                    326 	.area RSEG    (ABS,DATA)
      000000                        327 	.org 0x0000
                           0000AD   328 _ET2	=	0x00ad
                           0000BD   329 _PT2	=	0x00bd
                           0000C8   330 _T2CON_0	=	0x00c8
                           0000C9   331 _T2CON_1	=	0x00c9
                           0000CA   332 _T2CON_2	=	0x00ca
                           0000CB   333 _T2CON_3	=	0x00cb
                           0000CC   334 _T2CON_4	=	0x00cc
                           0000CD   335 _T2CON_5	=	0x00cd
                           0000CE   336 _T2CON_6	=	0x00ce
                           0000CF   337 _T2CON_7	=	0x00cf
                           0000C8   338 _CP_RL2	=	0x00c8
                           0000C9   339 _C_T2	=	0x00c9
                           0000CA   340 _TR2	=	0x00ca
                           0000CB   341 _EXEN2	=	0x00cb
                           0000CC   342 _TCLK	=	0x00cc
                           0000CD   343 _RCLK	=	0x00cd
                           0000CE   344 _EXF2	=	0x00ce
                           0000CF   345 _TF2	=	0x00cf
                           0000DF   346 _CF	=	0x00df
                           0000DE   347 _CR	=	0x00de
                           0000DC   348 _CCF4	=	0x00dc
                           0000DB   349 _CCF3	=	0x00db
                           0000DA   350 _CCF2	=	0x00da
                           0000D9   351 _CCF1	=	0x00d9
                           0000D8   352 _CCF0	=	0x00d8
                           0000AE   353 _EC	=	0x00ae
                           0000BE   354 _PPCL	=	0x00be
                           0000BD   355 _PT2L	=	0x00bd
                           0000BC   356 _PSL	=	0x00bc
                           0000BB   357 _PT1L	=	0x00bb
                           0000BA   358 _PX1L	=	0x00ba
                           0000B9   359 _PT0L	=	0x00b9
                           0000B8   360 _PX0L	=	0x00b8
                           0000C0   361 _P4_0	=	0x00c0
                           0000C1   362 _P4_1	=	0x00c1
                           0000C2   363 _P4_2	=	0x00c2
                           0000C3   364 _P4_3	=	0x00c3
                           0000C4   365 _P4_4	=	0x00c4
                           0000C5   366 _P4_5	=	0x00c5
                           0000C6   367 _P4_6	=	0x00c6
                           0000C7   368 _P4_7	=	0x00c7
                           0000E8   369 _P5_0	=	0x00e8
                           0000E9   370 _P5_1	=	0x00e9
                           0000EA   371 _P5_2	=	0x00ea
                           0000EB   372 _P5_3	=	0x00eb
                           0000EC   373 _P5_4	=	0x00ec
                           0000ED   374 _P5_5	=	0x00ed
                           0000EE   375 _P5_6	=	0x00ee
                           0000EF   376 _P5_7	=	0x00ef
                           0000F0   377 _BREG_F0	=	0x00f0
                           0000F1   378 _BREG_F1	=	0x00f1
                           0000F2   379 _BREG_F2	=	0x00f2
                           0000F3   380 _BREG_F3	=	0x00f3
                           0000F4   381 _BREG_F4	=	0x00f4
                           0000F5   382 _BREG_F5	=	0x00f5
                           0000F6   383 _BREG_F6	=	0x00f6
                           0000F7   384 _BREG_F7	=	0x00f7
                           0000B0   385 _RXD0	=	0x00b0
                           0000B1   386 _TXD0	=	0x00b1
                           000080   387 _P0_0	=	0x0080
                           000081   388 _P0_1	=	0x0081
                           000082   389 _P0_2	=	0x0082
                           000083   390 _P0_3	=	0x0083
                           000084   391 _P0_4	=	0x0084
                           000085   392 _P0_5	=	0x0085
                           000086   393 _P0_6	=	0x0086
                           000087   394 _P0_7	=	0x0087
                           000088   395 _IT0	=	0x0088
                           000089   396 _IE0	=	0x0089
                           00008A   397 _IT1	=	0x008a
                           00008B   398 _IE1	=	0x008b
                           00008C   399 _TR0	=	0x008c
                           00008D   400 _TF0	=	0x008d
                           00008E   401 _TR1	=	0x008e
                           00008F   402 _TF1	=	0x008f
                           000090   403 _P1_0	=	0x0090
                           000091   404 _P1_1	=	0x0091
                           000092   405 _P1_2	=	0x0092
                           000093   406 _P1_3	=	0x0093
                           000094   407 _P1_4	=	0x0094
                           000095   408 _P1_5	=	0x0095
                           000096   409 _P1_6	=	0x0096
                           000097   410 _P1_7	=	0x0097
                           000098   411 _RI	=	0x0098
                           000099   412 _TI	=	0x0099
                           00009A   413 _RB8	=	0x009a
                           00009B   414 _TB8	=	0x009b
                           00009C   415 _REN	=	0x009c
                           00009D   416 _SM2	=	0x009d
                           00009E   417 _SM1	=	0x009e
                           00009F   418 _SM0	=	0x009f
                           0000A0   419 _P2_0	=	0x00a0
                           0000A1   420 _P2_1	=	0x00a1
                           0000A2   421 _P2_2	=	0x00a2
                           0000A3   422 _P2_3	=	0x00a3
                           0000A4   423 _P2_4	=	0x00a4
                           0000A5   424 _P2_5	=	0x00a5
                           0000A6   425 _P2_6	=	0x00a6
                           0000A7   426 _P2_7	=	0x00a7
                           0000A8   427 _EX0	=	0x00a8
                           0000A9   428 _ET0	=	0x00a9
                           0000AA   429 _EX1	=	0x00aa
                           0000AB   430 _ET1	=	0x00ab
                           0000AC   431 _ES	=	0x00ac
                           0000AF   432 _EA	=	0x00af
                           0000B0   433 _P3_0	=	0x00b0
                           0000B1   434 _P3_1	=	0x00b1
                           0000B2   435 _P3_2	=	0x00b2
                           0000B3   436 _P3_3	=	0x00b3
                           0000B4   437 _P3_4	=	0x00b4
                           0000B5   438 _P3_5	=	0x00b5
                           0000B6   439 _P3_6	=	0x00b6
                           0000B7   440 _P3_7	=	0x00b7
                           0000B0   441 _RXD	=	0x00b0
                           0000B1   442 _TXD	=	0x00b1
                           0000B2   443 _INT0	=	0x00b2
                           0000B3   444 _INT1	=	0x00b3
                           0000B4   445 _T0	=	0x00b4
                           0000B5   446 _T1	=	0x00b5
                           0000B6   447 _WR	=	0x00b6
                           0000B7   448 _RD	=	0x00b7
                           0000B8   449 _PX0	=	0x00b8
                           0000B9   450 _PT0	=	0x00b9
                           0000BA   451 _PX1	=	0x00ba
                           0000BB   452 _PT1	=	0x00bb
                           0000BC   453 _PS	=	0x00bc
                           0000D0   454 _P	=	0x00d0
                           0000D1   455 _F1	=	0x00d1
                           0000D2   456 _OV	=	0x00d2
                           0000D3   457 _RS0	=	0x00d3
                           0000D4   458 _RS1	=	0x00d4
                           0000D5   459 _F0	=	0x00d5
                           0000D6   460 _AC	=	0x00d6
                           0000D7   461 _CY	=	0x00d7
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable register banks
                                    464 ;--------------------------------------------------------
                                    465 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        466 	.ds 8
                                    467 ;--------------------------------------------------------
                                    468 ; internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area DSEG    (DATA)
      000008                        471 _command_processing_sloc0_1_0:
      000008                        472 	.ds 2
      00000A                        473 _command_processing_sloc1_1_0:
      00000A                        474 	.ds 3
      00000D                        475 _command_processing_sloc2_1_0:
      00000D                        476 	.ds 3
      000010                        477 _command_processing_sloc3_1_0:
      000010                        478 	.ds 3
                                    479 ;--------------------------------------------------------
                                    480 ; overlayable items in internal ram
                                    481 ;--------------------------------------------------------
                                    482 ;--------------------------------------------------------
                                    483 ; indirectly addressable internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area ISEG    (DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; absolute internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area IABS    (ABS,DATA)
                                    490 	.area IABS    (ABS,DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; bit data
                                    493 ;--------------------------------------------------------
                                    494 	.area BSEG    (BIT)
                                    495 ;--------------------------------------------------------
                                    496 ; paged external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area PSEG    (PAG,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XSEG    (XDATA)
      001B75                        503 _length::
      001B75                        504 	.ds 2
      001B77                        505 _buffer0_hexdump_length_65536_53:
      001B77                        506 	.ds 2
      001B79                        507 _buffer0_hexdump_print_address_65536_54:
      001B79                        508 	.ds 1
      001B7A                        509 _command_processing_PARM_2:
      001B7A                        510 	.ds 1
      001B7B                        511 _command_processing_PARM_3:
      001B7B                        512 	.ds 3
      001B7E                        513 _command_processing_PARM_4:
      001B7E                        514 	.ds 3
      001B81                        515 _command_processing_PARM_5:
      001B81                        516 	.ds 3
      001B84                        517 _command_processing_PARM_6:
      001B84                        518 	.ds 3
      001B87                        519 _command_processing_PARM_7:
      001B87                        520 	.ds 3
      001B8A                        521 _command_processing_PARM_8:
      001B8A                        522 	.ds 2
      001B8C                        523 _command_processing_cmd_detected_65536_62:
      001B8C                        524 	.ds 2
                                    525 ;--------------------------------------------------------
                                    526 ; absolute external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XABS    (ABS,XDATA)
                                    529 ;--------------------------------------------------------
                                    530 ; external initialized ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XISEG   (XDATA)
      001CC2                        533 _size::
      001CC2                        534 	.ds 4
      001CC6                        535 _buffer_to_delete::
      001CC6                        536 	.ds 2
      001CC8                        537 _buff_not_cleared::
      001CC8                        538 	.ds 200
      001D90                        539 _buffer0and1_size::
      001D90                        540 	.ds 2
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
                                    552 ; global & static initialisations
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; Home
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area HOME    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; code
                                    565 ;--------------------------------------------------------
                                    566 	.area CSEG    (CODE)
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'empty_buffer0'
                                    569 ;------------------------------------------------------------
                                    570 ;i                         Allocated with name '_empty_buffer0_i_131072_51'
                                    571 ;------------------------------------------------------------
                                    572 ;	character.c:47: void empty_buffer0(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function empty_buffer0
                                    575 ;	-----------------------------------------
      00217C                        576 _empty_buffer0:
                           000007   577 	ar7 = 0x07
                           000006   578 	ar6 = 0x06
                           000005   579 	ar5 = 0x05
                           000004   580 	ar4 = 0x04
                           000003   581 	ar3 = 0x03
                           000002   582 	ar2 = 0x02
                           000001   583 	ar1 = 0x01
                           000000   584 	ar0 = 0x00
                                    585 ;	character.c:49: for(int i=0;i<buffer_size_arr[0];i++)
      00217C 7E 00            [12]  586 	mov	r6,#0x00
      00217E 7F 00            [12]  587 	mov	r7,#0x00
      002180                        588 00103$:
      002180 90 1D A2         [24]  589 	mov	dptr,#_buffer_size_arr
      002183 E0               [24]  590 	movx	a,@dptr
      002184 FC               [12]  591 	mov	r4,a
      002185 A3               [24]  592 	inc	dptr
      002186 E0               [24]  593 	movx	a,@dptr
      002187 FD               [12]  594 	mov	r5,a
      002188 C3               [12]  595 	clr	c
      002189 EE               [12]  596 	mov	a,r6
      00218A 9C               [12]  597 	subb	a,r4
      00218B EF               [12]  598 	mov	a,r7
      00218C 64 80            [12]  599 	xrl	a,#0x80
      00218E 8D F0            [24]  600 	mov	b,r5
      002190 63 F0 80         [24]  601 	xrl	b,#0x80
      002193 95 F0            [12]  602 	subb	a,b
      002195 50 1A            [24]  603 	jnc	00105$
                                    604 ;	character.c:51: buffer0[i] = '0';
      002197 90 1D 94         [24]  605 	mov	dptr,#_buffer0
      00219A E0               [24]  606 	movx	a,@dptr
      00219B FC               [12]  607 	mov	r4,a
      00219C A3               [24]  608 	inc	dptr
      00219D E0               [24]  609 	movx	a,@dptr
      00219E FD               [12]  610 	mov	r5,a
      00219F EE               [12]  611 	mov	a,r6
      0021A0 2C               [12]  612 	add	a,r4
      0021A1 F5 82            [12]  613 	mov	dpl,a
      0021A3 EF               [12]  614 	mov	a,r7
      0021A4 3D               [12]  615 	addc	a,r5
      0021A5 F5 83            [12]  616 	mov	dph,a
      0021A7 74 30            [12]  617 	mov	a,#0x30
      0021A9 F0               [24]  618 	movx	@dptr,a
                                    619 ;	character.c:49: for(int i=0;i<buffer_size_arr[0];i++)
      0021AA 0E               [12]  620 	inc	r6
      0021AB BE 00 D2         [24]  621 	cjne	r6,#0x00,00103$
      0021AE 0F               [12]  622 	inc	r7
      0021AF 80 CF            [24]  623 	sjmp	00103$
      0021B1                        624 00105$:
                                    625 ;	character.c:53: }
      0021B1 22               [24]  626 	ret
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'buffer0_hexdump'
                                    629 ;------------------------------------------------------------
                                    630 ;length                    Allocated with name '_buffer0_hexdump_length_65536_53'
                                    631 ;itr                       Allocated with name '_buffer0_hexdump_itr_65536_54'
                                    632 ;print_address             Allocated with name '_buffer0_hexdump_print_address_65536_54'
                                    633 ;------------------------------------------------------------
                                    634 ;	character.c:55: void buffer0_hexdump(int length) {
                                    635 ;	-----------------------------------------
                                    636 ;	 function buffer0_hexdump
                                    637 ;	-----------------------------------------
      0021B2                        638 _buffer0_hexdump:
      0021B2 AF 83            [24]  639 	mov	r7,dph
      0021B4 E5 82            [12]  640 	mov	a,dpl
      0021B6 90 1B 77         [24]  641 	mov	dptr,#_buffer0_hexdump_length_65536_53
      0021B9 F0               [24]  642 	movx	@dptr,a
      0021BA EF               [12]  643 	mov	a,r7
      0021BB A3               [24]  644 	inc	dptr
      0021BC F0               [24]  645 	movx	@dptr,a
                                    646 ;	character.c:57: bool print_address = true;
      0021BD 90 1B 79         [24]  647 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      0021C0 74 01            [12]  648 	mov	a,#0x01
      0021C2 F0               [24]  649 	movx	@dptr,a
                                    650 ;	character.c:58: printf("\033[1;34m\n\r");
      0021C3 74 A4            [12]  651 	mov	a,#___str_0
      0021C5 C0 E0            [24]  652 	push	acc
      0021C7 74 44            [12]  653 	mov	a,#(___str_0 >> 8)
      0021C9 C0 E0            [24]  654 	push	acc
      0021CB 74 80            [12]  655 	mov	a,#0x80
      0021CD C0 E0            [24]  656 	push	acc
      0021CF 12 39 57         [24]  657 	lcall	_printf
      0021D2 15 81            [12]  658 	dec	sp
      0021D4 15 81            [12]  659 	dec	sp
      0021D6 15 81            [12]  660 	dec	sp
                                    661 ;	character.c:59: while(itr < buffer0and1_size)
      0021D8 90 1B 77         [24]  662 	mov	dptr,#_buffer0_hexdump_length_65536_53
      0021DB E0               [24]  663 	movx	a,@dptr
      0021DC FE               [12]  664 	mov	r6,a
      0021DD A3               [24]  665 	inc	dptr
      0021DE E0               [24]  666 	movx	a,@dptr
      0021DF FF               [12]  667 	mov	r7,a
      0021E0 E4               [12]  668 	clr	a
      0021E1 BE 10 04         [24]  669 	cjne	r6,#0x10,00146$
      0021E4 BF 00 01         [24]  670 	cjne	r7,#0x00,00146$
      0021E7 04               [12]  671 	inc	a
      0021E8                        672 00146$:
      0021E8 FD               [12]  673 	mov	r5,a
      0021E9 E4               [12]  674 	clr	a
      0021EA BE 20 04         [24]  675 	cjne	r6,#0x20,00148$
      0021ED BF 00 01         [24]  676 	cjne	r7,#0x00,00148$
      0021F0 04               [12]  677 	inc	a
      0021F1                        678 00148$:
      0021F1 FC               [12]  679 	mov	r4,a
      0021F2 7A 00            [12]  680 	mov	r2,#0x00
      0021F4 7B 00            [12]  681 	mov	r3,#0x00
      0021F6                        682 00112$:
      0021F6 90 1D 90         [24]  683 	mov	dptr,#_buffer0and1_size
      0021F9 E0               [24]  684 	movx	a,@dptr
      0021FA F8               [12]  685 	mov	r0,a
      0021FB A3               [24]  686 	inc	dptr
      0021FC E0               [24]  687 	movx	a,@dptr
      0021FD F9               [12]  688 	mov	r1,a
      0021FE C3               [12]  689 	clr	c
      0021FF EA               [12]  690 	mov	a,r2
      002200 98               [12]  691 	subb	a,r0
      002201 EB               [12]  692 	mov	a,r3
      002202 64 80            [12]  693 	xrl	a,#0x80
      002204 89 F0            [24]  694 	mov	b,r1
      002206 63 F0 80         [24]  695 	xrl	b,#0x80
      002209 95 F0            [12]  696 	subb	a,b
      00220B 40 01            [24]  697 	jc	00150$
      00220D 22               [24]  698 	ret
      00220E                        699 00150$:
                                    700 ;	character.c:62: if(print_address)
      00220E 90 1B 79         [24]  701 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      002211 E0               [24]  702 	movx	a,@dptr
      002212 60 4C            [24]  703 	jz	00102$
                                    704 ;	character.c:64: printf("\033[1;34m%p :",buffer0+itr);
      002214 C0 04            [24]  705 	push	ar4
      002216 90 1D 94         [24]  706 	mov	dptr,#_buffer0
      002219 E0               [24]  707 	movx	a,@dptr
      00221A F8               [12]  708 	mov	r0,a
      00221B A3               [24]  709 	inc	dptr
      00221C E0               [24]  710 	movx	a,@dptr
      00221D F9               [12]  711 	mov	r1,a
      00221E EA               [12]  712 	mov	a,r2
      00221F 28               [12]  713 	add	a,r0
      002220 F8               [12]  714 	mov	r0,a
      002221 EB               [12]  715 	mov	a,r3
      002222 39               [12]  716 	addc	a,r1
      002223 F9               [12]  717 	mov	r1,a
      002224 7C 00            [12]  718 	mov	r4,#0x00
      002226 C0 07            [24]  719 	push	ar7
      002228 C0 06            [24]  720 	push	ar6
      00222A C0 05            [24]  721 	push	ar5
      00222C C0 04            [24]  722 	push	ar4
      00222E C0 03            [24]  723 	push	ar3
      002230 C0 02            [24]  724 	push	ar2
      002232 C0 00            [24]  725 	push	ar0
      002234 C0 01            [24]  726 	push	ar1
      002236 C0 04            [24]  727 	push	ar4
      002238 74 AE            [12]  728 	mov	a,#___str_1
      00223A C0 E0            [24]  729 	push	acc
      00223C 74 44            [12]  730 	mov	a,#(___str_1 >> 8)
      00223E C0 E0            [24]  731 	push	acc
      002240 74 80            [12]  732 	mov	a,#0x80
      002242 C0 E0            [24]  733 	push	acc
      002244 12 39 57         [24]  734 	lcall	_printf
      002247 E5 81            [12]  735 	mov	a,sp
      002249 24 FA            [12]  736 	add	a,#0xfa
      00224B F5 81            [12]  737 	mov	sp,a
      00224D D0 02            [24]  738 	pop	ar2
      00224F D0 03            [24]  739 	pop	ar3
      002251 D0 04            [24]  740 	pop	ar4
      002253 D0 05            [24]  741 	pop	ar5
      002255 D0 06            [24]  742 	pop	ar6
      002257 D0 07            [24]  743 	pop	ar7
                                    744 ;	character.c:65: print_address =false;
      002259 90 1B 79         [24]  745 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      00225C E4               [12]  746 	clr	a
      00225D F0               [24]  747 	movx	@dptr,a
                                    748 ;	character.c:88: itr++;
      00225E D0 04            [24]  749 	pop	ar4
                                    750 ;	character.c:65: print_address =false;
      002260                        751 00102$:
                                    752 ;	character.c:68: if(buffer0[itr] == '0')
      002260 90 1D 94         [24]  753 	mov	dptr,#_buffer0
      002263 E0               [24]  754 	movx	a,@dptr
      002264 F8               [12]  755 	mov	r0,a
      002265 A3               [24]  756 	inc	dptr
      002266 E0               [24]  757 	movx	a,@dptr
      002267 F9               [12]  758 	mov	r1,a
      002268 EA               [12]  759 	mov	a,r2
      002269 28               [12]  760 	add	a,r0
      00226A F5 82            [12]  761 	mov	dpl,a
      00226C EB               [12]  762 	mov	a,r3
      00226D 39               [12]  763 	addc	a,r1
      00226E F5 83            [12]  764 	mov	dph,a
      002270 E0               [24]  765 	movx	a,@dptr
      002271 F9               [12]  766 	mov	r1,a
      002272 B9 30 29         [24]  767 	cjne	r1,#0x30,00108$
                                    768 ;	character.c:70: printf_tiny("\033[1;34m XX");
      002275 C0 07            [24]  769 	push	ar7
      002277 C0 06            [24]  770 	push	ar6
      002279 C0 05            [24]  771 	push	ar5
      00227B C0 04            [24]  772 	push	ar4
      00227D C0 03            [24]  773 	push	ar3
      00227F C0 02            [24]  774 	push	ar2
      002281 74 BA            [12]  775 	mov	a,#___str_2
      002283 C0 E0            [24]  776 	push	acc
      002285 74 44            [12]  777 	mov	a,#(___str_2 >> 8)
      002287 C0 E0            [24]  778 	push	acc
      002289 12 35 27         [24]  779 	lcall	_printf_tiny
      00228C 15 81            [12]  780 	dec	sp
      00228E 15 81            [12]  781 	dec	sp
      002290 D0 02            [24]  782 	pop	ar2
      002292 D0 03            [24]  783 	pop	ar3
      002294 D0 04            [24]  784 	pop	ar4
      002296 D0 05            [24]  785 	pop	ar5
      002298 D0 06            [24]  786 	pop	ar6
      00229A D0 07            [24]  787 	pop	ar7
      00229C 80 78            [24]  788 	sjmp	00109$
      00229E                        789 00108$:
                                    790 ;	character.c:74: if(length == 16){
      00229E ED               [12]  791 	mov	a,r5
      00229F 60 31            [24]  792 	jz	00104$
                                    793 ;	character.c:75: printf_tiny("\033[1;34m %x", buffer0[itr]);
      0022A1 89 00            [24]  794 	mov	ar0,r1
      0022A3 79 00            [12]  795 	mov	r1,#0x00
      0022A5 C0 07            [24]  796 	push	ar7
      0022A7 C0 06            [24]  797 	push	ar6
      0022A9 C0 05            [24]  798 	push	ar5
      0022AB C0 04            [24]  799 	push	ar4
      0022AD C0 03            [24]  800 	push	ar3
      0022AF C0 02            [24]  801 	push	ar2
      0022B1 C0 00            [24]  802 	push	ar0
      0022B3 C0 01            [24]  803 	push	ar1
      0022B5 74 C5            [12]  804 	mov	a,#___str_3
      0022B7 C0 E0            [24]  805 	push	acc
      0022B9 74 44            [12]  806 	mov	a,#(___str_3 >> 8)
      0022BB C0 E0            [24]  807 	push	acc
      0022BD 12 35 27         [24]  808 	lcall	_printf_tiny
      0022C0 E5 81            [12]  809 	mov	a,sp
      0022C2 24 FC            [12]  810 	add	a,#0xfc
      0022C4 F5 81            [12]  811 	mov	sp,a
      0022C6 D0 02            [24]  812 	pop	ar2
      0022C8 D0 03            [24]  813 	pop	ar3
      0022CA D0 04            [24]  814 	pop	ar4
      0022CC D0 05            [24]  815 	pop	ar5
      0022CE D0 06            [24]  816 	pop	ar6
      0022D0 D0 07            [24]  817 	pop	ar7
      0022D2                        818 00104$:
                                    819 ;	character.c:77: if(length == 32)
      0022D2 EC               [12]  820 	mov	a,r4
      0022D3 60 41            [24]  821 	jz	00109$
                                    822 ;	character.c:78: {   printf_tiny("\033[1;34m %d", buffer0[itr]);
      0022D5 90 1D 94         [24]  823 	mov	dptr,#_buffer0
      0022D8 E0               [24]  824 	movx	a,@dptr
      0022D9 F8               [12]  825 	mov	r0,a
      0022DA A3               [24]  826 	inc	dptr
      0022DB E0               [24]  827 	movx	a,@dptr
      0022DC F9               [12]  828 	mov	r1,a
      0022DD EA               [12]  829 	mov	a,r2
      0022DE 28               [12]  830 	add	a,r0
      0022DF F5 82            [12]  831 	mov	dpl,a
      0022E1 EB               [12]  832 	mov	a,r3
      0022E2 39               [12]  833 	addc	a,r1
      0022E3 F5 83            [12]  834 	mov	dph,a
      0022E5 E0               [24]  835 	movx	a,@dptr
      0022E6 F8               [12]  836 	mov	r0,a
      0022E7 79 00            [12]  837 	mov	r1,#0x00
      0022E9 C0 07            [24]  838 	push	ar7
      0022EB C0 06            [24]  839 	push	ar6
      0022ED C0 05            [24]  840 	push	ar5
      0022EF C0 04            [24]  841 	push	ar4
      0022F1 C0 03            [24]  842 	push	ar3
      0022F3 C0 02            [24]  843 	push	ar2
      0022F5 C0 00            [24]  844 	push	ar0
      0022F7 C0 01            [24]  845 	push	ar1
      0022F9 74 D0            [12]  846 	mov	a,#___str_4
      0022FB C0 E0            [24]  847 	push	acc
      0022FD 74 44            [12]  848 	mov	a,#(___str_4 >> 8)
      0022FF C0 E0            [24]  849 	push	acc
      002301 12 35 27         [24]  850 	lcall	_printf_tiny
      002304 E5 81            [12]  851 	mov	a,sp
      002306 24 FC            [12]  852 	add	a,#0xfc
      002308 F5 81            [12]  853 	mov	sp,a
      00230A D0 02            [24]  854 	pop	ar2
      00230C D0 03            [24]  855 	pop	ar3
      00230E D0 04            [24]  856 	pop	ar4
      002310 D0 05            [24]  857 	pop	ar5
      002312 D0 06            [24]  858 	pop	ar6
      002314 D0 07            [24]  859 	pop	ar7
      002316                        860 00109$:
                                    861 ;	character.c:82: if((itr+1) % length == 0)
      002316 74 01            [12]  862 	mov	a,#0x01
      002318 2A               [12]  863 	add	a,r2
      002319 F8               [12]  864 	mov	r0,a
      00231A E4               [12]  865 	clr	a
      00231B 3B               [12]  866 	addc	a,r3
      00231C F9               [12]  867 	mov	r1,a
      00231D 90 1C 82         [24]  868 	mov	dptr,#__modsint_PARM_2
      002320 EE               [12]  869 	mov	a,r6
      002321 F0               [24]  870 	movx	@dptr,a
      002322 EF               [12]  871 	mov	a,r7
      002323 A3               [24]  872 	inc	dptr
      002324 F0               [24]  873 	movx	@dptr,a
      002325 88 82            [24]  874 	mov	dpl,r0
      002327 89 83            [24]  875 	mov	dph,r1
      002329 C0 07            [24]  876 	push	ar7
      00232B C0 06            [24]  877 	push	ar6
      00232D C0 05            [24]  878 	push	ar5
      00232F C0 04            [24]  879 	push	ar4
      002331 C0 03            [24]  880 	push	ar3
      002333 C0 02            [24]  881 	push	ar2
      002335 12 37 F5         [24]  882 	lcall	__modsint
      002338 E5 82            [12]  883 	mov	a,dpl
      00233A 85 83 F0         [24]  884 	mov	b,dph
      00233D D0 02            [24]  885 	pop	ar2
      00233F D0 03            [24]  886 	pop	ar3
      002341 D0 04            [24]  887 	pop	ar4
      002343 D0 05            [24]  888 	pop	ar5
      002345 D0 06            [24]  889 	pop	ar6
      002347 D0 07            [24]  890 	pop	ar7
      002349 45 F0            [12]  891 	orl	a,b
      00234B 70 2D            [24]  892 	jnz	00111$
                                    893 ;	character.c:84: printf_tiny("\033[1;34m\n\r");
      00234D C0 07            [24]  894 	push	ar7
      00234F C0 06            [24]  895 	push	ar6
      002351 C0 05            [24]  896 	push	ar5
      002353 C0 04            [24]  897 	push	ar4
      002355 C0 03            [24]  898 	push	ar3
      002357 C0 02            [24]  899 	push	ar2
      002359 74 A4            [12]  900 	mov	a,#___str_0
      00235B C0 E0            [24]  901 	push	acc
      00235D 74 44            [12]  902 	mov	a,#(___str_0 >> 8)
      00235F C0 E0            [24]  903 	push	acc
      002361 12 35 27         [24]  904 	lcall	_printf_tiny
      002364 15 81            [12]  905 	dec	sp
      002366 15 81            [12]  906 	dec	sp
      002368 D0 02            [24]  907 	pop	ar2
      00236A D0 03            [24]  908 	pop	ar3
      00236C D0 04            [24]  909 	pop	ar4
      00236E D0 05            [24]  910 	pop	ar5
      002370 D0 06            [24]  911 	pop	ar6
      002372 D0 07            [24]  912 	pop	ar7
                                    913 ;	character.c:85: print_address = true;
      002374 90 1B 79         [24]  914 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      002377 74 01            [12]  915 	mov	a,#0x01
      002379 F0               [24]  916 	movx	@dptr,a
      00237A                        917 00111$:
                                    918 ;	character.c:88: itr++;
      00237A 0A               [12]  919 	inc	r2
      00237B BA 00 01         [24]  920 	cjne	r2,#0x00,00157$
      00237E 0B               [12]  921 	inc	r3
      00237F                        922 00157$:
                                    923 ;	character.c:90: }
      00237F 02 21 F6         [24]  924 	ljmp	00112$
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'command_processing'
                                    927 ;------------------------------------------------------------
                                    928 ;sloc0                     Allocated with name '_command_processing_sloc0_1_0'
                                    929 ;sloc1                     Allocated with name '_command_processing_sloc1_1_0'
                                    930 ;sloc2                     Allocated with name '_command_processing_sloc2_1_0'
                                    931 ;sloc3                     Allocated with name '_command_processing_sloc3_1_0'
                                    932 ;ch                        Allocated with name '_command_processing_PARM_2'
                                    933 ;new_buffer_index          Allocated with name '_command_processing_PARM_3'
                                    934 ;free_buffer_count         Allocated with name '_command_processing_PARM_4'
                                    935 ;filled_buffer_count       Allocated with name '_command_processing_PARM_5'
                                    936 ;storage_character_count   Allocated with name '_command_processing_PARM_6'
                                    937 ;total_characters_count    Allocated with name '_command_processing_PARM_7'
                                    938 ;buffer0_size              Allocated with name '_command_processing_PARM_8'
                                    939 ;cmd_detected              Allocated with name '_command_processing_cmd_detected_65536_62'
                                    940 ;buffer_size               Allocated with name '_command_processing_buffer_size_196609_66'
                                    941 ;buffer_ptr                Allocated with name '_command_processing_buffer_ptr_196610_68'
                                    942 ;ch                        Allocated with name '_command_processing_ch_196611_70'
                                    943 ;temp                      Allocated with name '_command_processing_temp_262148_73'
                                    944 ;i                         Allocated with name '_command_processing_i_262147_78'
                                    945 ;buffer_to_free            Allocated with name '_command_processing_buffer_to_free_327683_79'
                                    946 ;i                         Allocated with name '_command_processing_i_262147_82'
                                    947 ;------------------------------------------------------------
                                    948 ;	character.c:94: int command_processing(int cmd_detected, char ch, int * new_buffer_index,
                                    949 ;	-----------------------------------------
                                    950 ;	 function command_processing
                                    951 ;	-----------------------------------------
      002382                        952 _command_processing:
      002382 AF 83            [24]  953 	mov	r7,dph
      002384 E5 82            [12]  954 	mov	a,dpl
      002386 90 1B 8C         [24]  955 	mov	dptr,#_command_processing_cmd_detected_65536_62
      002389 F0               [24]  956 	movx	@dptr,a
      00238A EF               [12]  957 	mov	a,r7
      00238B A3               [24]  958 	inc	dptr
      00238C F0               [24]  959 	movx	@dptr,a
                                    960 ;	character.c:97: buffer0and1_size = buffer0_size;
      00238D 90 1B 8A         [24]  961 	mov	dptr,#_command_processing_PARM_8
      002390 E0               [24]  962 	movx	a,@dptr
      002391 FE               [12]  963 	mov	r6,a
      002392 A3               [24]  964 	inc	dptr
      002393 E0               [24]  965 	movx	a,@dptr
      002394 FF               [12]  966 	mov	r7,a
      002395 90 1D 90         [24]  967 	mov	dptr,#_buffer0and1_size
      002398 EE               [12]  968 	mov	a,r6
      002399 F0               [24]  969 	movx	@dptr,a
      00239A EF               [12]  970 	mov	a,r7
      00239B A3               [24]  971 	inc	dptr
      00239C F0               [24]  972 	movx	@dptr,a
                                    973 ;	character.c:98: if(cmd_detected)
      00239D 90 1B 8C         [24]  974 	mov	dptr,#_command_processing_cmd_detected_65536_62
      0023A0 E0               [24]  975 	movx	a,@dptr
      0023A1 F5 F0            [12]  976 	mov	b,a
      0023A3 A3               [24]  977 	inc	dptr
      0023A4 E0               [24]  978 	movx	a,@dptr
      0023A5 45 F0            [12]  979 	orl	a,b
      0023A7 70 03            [24]  980 	jnz	00228$
      0023A9 02 2D 5C         [24]  981 	ljmp	00138$
      0023AC                        982 00228$:
                                    983 ;	character.c:100: switch(ch)
      0023AC 90 1B 7A         [24]  984 	mov	dptr,#_command_processing_PARM_2
      0023AF E0               [24]  985 	movx	a,@dptr
      0023B0 FF               [12]  986 	mov	r7,a
      0023B1 BF 2B 02         [24]  987 	cjne	r7,#0x2b,00229$
      0023B4 80 1B            [24]  988 	sjmp	00101$
      0023B6                        989 00229$:
      0023B6 BF 2D 03         [24]  990 	cjne	r7,#0x2d,00230$
      0023B9 02 26 7E         [24]  991 	ljmp	00107$
      0023BC                        992 00230$:
      0023BC BF 3D 03         [24]  993 	cjne	r7,#0x3d,00231$
      0023BF 02 2A 89         [24]  994 	ljmp	00128$
      0023C2                        995 00231$:
      0023C2 BF 3F 03         [24]  996 	cjne	r7,#0x3f,00232$
      0023C5 02 2A AA         [24]  997 	ljmp	00129$
      0023C8                        998 00232$:
      0023C8 BF 40 03         [24]  999 	cjne	r7,#0x40,00233$
      0023CB 02 29 52         [24] 1000 	ljmp	00123$
      0023CE                       1001 00233$:
      0023CE 02 2D 5C         [24] 1002 	ljmp	00138$
                                   1003 ;	character.c:103: case '+':
      0023D1                       1004 00101$:
                                   1005 ;	character.c:104: printf_tiny("\033[1;33m|***********************************************|\n\r");
      0023D1 74 DB            [12] 1006 	mov	a,#___str_5
      0023D3 C0 E0            [24] 1007 	push	acc
      0023D5 74 44            [12] 1008 	mov	a,#(___str_5 >> 8)
      0023D7 C0 E0            [24] 1009 	push	acc
      0023D9 12 35 27         [24] 1010 	lcall	_printf_tiny
      0023DC 15 81            [12] 1011 	dec	sp
      0023DE 15 81            [12] 1012 	dec	sp
                                   1013 ;	character.c:105: printf_tiny("\033[1;33m|************ Processing [+] *******************|\n\r");
      0023E0 74 16            [12] 1014 	mov	a,#___str_6
      0023E2 C0 E0            [24] 1015 	push	acc
      0023E4 74 45            [12] 1016 	mov	a,#(___str_6 >> 8)
      0023E6 C0 E0            [24] 1017 	push	acc
      0023E8 12 35 27         [24] 1018 	lcall	_printf_tiny
      0023EB 15 81            [12] 1019 	dec	sp
      0023ED 15 81            [12] 1020 	dec	sp
                                   1021 ;	character.c:106: printf_tiny("\033[1;33m|***********************************************|\n\r");
      0023EF 74 DB            [12] 1022 	mov	a,#___str_5
      0023F1 C0 E0            [24] 1023 	push	acc
      0023F3 74 44            [12] 1024 	mov	a,#(___str_5 >> 8)
      0023F5 C0 E0            [24] 1025 	push	acc
      0023F7 12 35 27         [24] 1026 	lcall	_printf_tiny
      0023FA 15 81            [12] 1027 	dec	sp
      0023FC 15 81            [12] 1028 	dec	sp
                                   1029 ;	character.c:108: (*new_buffer_index)++;
      0023FE 90 1B 7B         [24] 1030 	mov	dptr,#_command_processing_PARM_3
      002401 E0               [24] 1031 	movx	a,@dptr
      002402 FD               [12] 1032 	mov	r5,a
      002403 A3               [24] 1033 	inc	dptr
      002404 E0               [24] 1034 	movx	a,@dptr
      002405 FE               [12] 1035 	mov	r6,a
      002406 A3               [24] 1036 	inc	dptr
      002407 E0               [24] 1037 	movx	a,@dptr
      002408 FF               [12] 1038 	mov	r7,a
      002409 8D 82            [24] 1039 	mov	dpl,r5
      00240B 8E 83            [24] 1040 	mov	dph,r6
      00240D 8F F0            [24] 1041 	mov	b,r7
      00240F 12 43 83         [24] 1042 	lcall	__gptrget
      002412 FB               [12] 1043 	mov	r3,a
      002413 A3               [24] 1044 	inc	dptr
      002414 12 43 83         [24] 1045 	lcall	__gptrget
      002417 FC               [12] 1046 	mov	r4,a
      002418 0B               [12] 1047 	inc	r3
      002419 BB 00 01         [24] 1048 	cjne	r3,#0x00,00234$
      00241C 0C               [12] 1049 	inc	r4
      00241D                       1050 00234$:
      00241D 8D 82            [24] 1051 	mov	dpl,r5
      00241F 8E 83            [24] 1052 	mov	dph,r6
      002421 8F F0            [24] 1053 	mov	b,r7
      002423 EB               [12] 1054 	mov	a,r3
      002424 12 35 0C         [24] 1055 	lcall	__gptrput
      002427 A3               [24] 1056 	inc	dptr
      002428 EC               [12] 1057 	mov	a,r4
      002429 12 35 0C         [24] 1058 	lcall	__gptrput
                                   1059 ;	character.c:109: printf_tiny("\033[1;0\n\rEnter size:");
      00242C C0 07            [24] 1060 	push	ar7
      00242E C0 06            [24] 1061 	push	ar6
      002430 C0 05            [24] 1062 	push	ar5
      002432 74 51            [12] 1063 	mov	a,#___str_7
      002434 C0 E0            [24] 1064 	push	acc
      002436 74 45            [12] 1065 	mov	a,#(___str_7 >> 8)
      002438 C0 E0            [24] 1066 	push	acc
      00243A 12 35 27         [24] 1067 	lcall	_printf_tiny
      00243D 15 81            [12] 1068 	dec	sp
      00243F 15 81            [12] 1069 	dec	sp
                                   1070 ;	character.c:110: gets_(size);
      002441 90 1C C2         [24] 1071 	mov	dptr,#_size
      002444 12 31 E6         [24] 1072 	lcall	_gets_
                                   1073 ;	character.c:111: int buffer_size = atoi(size);
      002447 90 1C C2         [24] 1074 	mov	dptr,#_size
      00244A 75 F0 00         [24] 1075 	mov	b,#0x00
      00244D 12 33 E8         [24] 1076 	lcall	_atoi
      002450 AB 82            [24] 1077 	mov	r3,dpl
      002452 AC 83            [24] 1078 	mov	r4,dph
                                   1079 ;	character.c:112: printf("\033[1;0mSize after atoi = %d\r\n",buffer_size);
      002454 C0 04            [24] 1080 	push	ar4
      002456 C0 03            [24] 1081 	push	ar3
      002458 C0 03            [24] 1082 	push	ar3
      00245A C0 04            [24] 1083 	push	ar4
      00245C 74 64            [12] 1084 	mov	a,#___str_8
      00245E C0 E0            [24] 1085 	push	acc
      002460 74 45            [12] 1086 	mov	a,#(___str_8 >> 8)
      002462 C0 E0            [24] 1087 	push	acc
      002464 74 80            [12] 1088 	mov	a,#0x80
      002466 C0 E0            [24] 1089 	push	acc
      002468 12 39 57         [24] 1090 	lcall	_printf
      00246B E5 81            [12] 1091 	mov	a,sp
      00246D 24 FB            [12] 1092 	add	a,#0xfb
      00246F F5 81            [12] 1093 	mov	sp,a
      002471 D0 03            [24] 1094 	pop	ar3
      002473 D0 04            [24] 1095 	pop	ar4
      002475 D0 05            [24] 1096 	pop	ar5
      002477 D0 06            [24] 1097 	pop	ar6
      002479 D0 07            [24] 1098 	pop	ar7
                                   1099 ;	character.c:113: if (buffer_size < 30 || buffer_size > 300) {
      00247B C3               [12] 1100 	clr	c
      00247C EB               [12] 1101 	mov	a,r3
      00247D 94 1E            [12] 1102 	subb	a,#0x1e
      00247F EC               [12] 1103 	mov	a,r4
      002480 64 80            [12] 1104 	xrl	a,#0x80
      002482 94 80            [12] 1105 	subb	a,#0x80
      002484 40 0E            [24] 1106 	jc	00102$
      002486 74 2C            [12] 1107 	mov	a,#0x2c
      002488 9B               [12] 1108 	subb	a,r3
      002489 74 81            [12] 1109 	mov	a,#(0x01 ^ 0x80)
      00248B 8C F0            [24] 1110 	mov	b,r4
      00248D 63 F0 80         [24] 1111 	xrl	b,#0x80
      002490 95 F0            [12] 1112 	subb	a,b
      002492 50 12            [24] 1113 	jnc	00103$
      002494                       1114 00102$:
                                   1115 ;	character.c:114: printf_tiny("\033[1;31mInvalid Input : The buffer size should be in the range [30, 300]\n\r\n\r");
      002494 74 81            [12] 1116 	mov	a,#___str_9
      002496 C0 E0            [24] 1117 	push	acc
      002498 74 45            [12] 1118 	mov	a,#(___str_9 >> 8)
      00249A C0 E0            [24] 1119 	push	acc
      00249C 12 35 27         [24] 1120 	lcall	_printf_tiny
      00249F 15 81            [12] 1121 	dec	sp
      0024A1 15 81            [12] 1122 	dec	sp
                                   1123 ;	character.c:115: break;
      0024A3 02 2D 5C         [24] 1124 	ljmp	00138$
      0024A6                       1125 00103$:
                                   1126 ;	character.c:117: __xdata char* buffer_ptr = (__xdata char*)malloc(buffer_size);
      0024A6 8B 82            [24] 1127 	mov	dpl,r3
      0024A8 8C 83            [24] 1128 	mov	dph,r4
      0024AA C0 07            [24] 1129 	push	ar7
      0024AC C0 06            [24] 1130 	push	ar6
      0024AE C0 05            [24] 1131 	push	ar5
      0024B0 C0 04            [24] 1132 	push	ar4
      0024B2 C0 03            [24] 1133 	push	ar3
      0024B4 12 36 6C         [24] 1134 	lcall	_malloc
      0024B7 A9 82            [24] 1135 	mov	r1,dpl
      0024B9 AA 83            [24] 1136 	mov	r2,dph
      0024BB D0 03            [24] 1137 	pop	ar3
      0024BD D0 04            [24] 1138 	pop	ar4
      0024BF D0 05            [24] 1139 	pop	ar5
      0024C1 D0 06            [24] 1140 	pop	ar6
      0024C3 D0 07            [24] 1141 	pop	ar7
      0024C5 89 08            [24] 1142 	mov	_command_processing_sloc0_1_0,r1
      0024C7 8A 09            [24] 1143 	mov	(_command_processing_sloc0_1_0 + 1),r2
                                   1144 ;	character.c:119: if (buffer_ptr == NULL) {
      0024C9 E5 08            [12] 1145 	mov	a,_command_processing_sloc0_1_0
      0024CB 45 09            [12] 1146 	orl	a,(_command_processing_sloc0_1_0 + 1)
      0024CD 70 12            [24] 1147 	jnz	00106$
                                   1148 ;	character.c:120: printf_tiny("\033[1;31mInvalid input : Failed to allocate buffer\n\r\n\r");
      0024CF 74 CD            [12] 1149 	mov	a,#___str_10
      0024D1 C0 E0            [24] 1150 	push	acc
      0024D3 74 45            [12] 1151 	mov	a,#(___str_10 >> 8)
      0024D5 C0 E0            [24] 1152 	push	acc
      0024D7 12 35 27         [24] 1153 	lcall	_printf_tiny
      0024DA 15 81            [12] 1154 	dec	sp
      0024DC 15 81            [12] 1155 	dec	sp
                                   1156 ;	character.c:121: break;
      0024DE 02 2D 5C         [24] 1157 	ljmp	00138$
      0024E1                       1158 00106$:
                                   1159 ;	character.c:124: buffer_size_arr[(*new_buffer_index)-1] = buffer_size;
      0024E1 8D 82            [24] 1160 	mov	dpl,r5
      0024E3 8E 83            [24] 1161 	mov	dph,r6
      0024E5 8F F0            [24] 1162 	mov	b,r7
      0024E7 12 43 83         [24] 1163 	lcall	__gptrget
      0024EA F8               [12] 1164 	mov	r0,a
      0024EB A3               [24] 1165 	inc	dptr
      0024EC 12 43 83         [24] 1166 	lcall	__gptrget
      0024EF FA               [12] 1167 	mov	r2,a
      0024F0 18               [12] 1168 	dec	r0
      0024F1 B8 FF 01         [24] 1169 	cjne	r0,#0xff,00238$
      0024F4 1A               [12] 1170 	dec	r2
      0024F5                       1171 00238$:
      0024F5 E8               [12] 1172 	mov	a,r0
      0024F6 28               [12] 1173 	add	a,r0
      0024F7 F8               [12] 1174 	mov	r0,a
      0024F8 EA               [12] 1175 	mov	a,r2
      0024F9 33               [12] 1176 	rlc	a
      0024FA FA               [12] 1177 	mov	r2,a
      0024FB E8               [12] 1178 	mov	a,r0
      0024FC 24 A2            [12] 1179 	add	a,#_buffer_size_arr
      0024FE F5 82            [12] 1180 	mov	dpl,a
      002500 EA               [12] 1181 	mov	a,r2
      002501 34 1D            [12] 1182 	addc	a,#(_buffer_size_arr >> 8)
      002503 F5 83            [12] 1183 	mov	dph,a
      002505 EB               [12] 1184 	mov	a,r3
      002506 F0               [24] 1185 	movx	@dptr,a
      002507 EC               [12] 1186 	mov	a,r4
      002508 A3               [24] 1187 	inc	dptr
      002509 F0               [24] 1188 	movx	@dptr,a
                                   1189 ;	character.c:125: ++(*filled_buffer_count);
      00250A 90 1B 81         [24] 1190 	mov	dptr,#_command_processing_PARM_5
      00250D E0               [24] 1191 	movx	a,@dptr
      00250E FA               [12] 1192 	mov	r2,a
      00250F A3               [24] 1193 	inc	dptr
      002510 E0               [24] 1194 	movx	a,@dptr
      002511 FB               [12] 1195 	mov	r3,a
      002512 A3               [24] 1196 	inc	dptr
      002513 E0               [24] 1197 	movx	a,@dptr
      002514 FC               [12] 1198 	mov	r4,a
      002515 8A 82            [24] 1199 	mov	dpl,r2
      002517 8B 83            [24] 1200 	mov	dph,r3
      002519 8C F0            [24] 1201 	mov	b,r4
      00251B 12 43 83         [24] 1202 	lcall	__gptrget
      00251E F8               [12] 1203 	mov	r0,a
      00251F A3               [24] 1204 	inc	dptr
      002520 12 43 83         [24] 1205 	lcall	__gptrget
      002523 F9               [12] 1206 	mov	r1,a
      002524 08               [12] 1207 	inc	r0
      002525 B8 00 01         [24] 1208 	cjne	r0,#0x00,00239$
      002528 09               [12] 1209 	inc	r1
      002529                       1210 00239$:
      002529 8A 82            [24] 1211 	mov	dpl,r2
      00252B 8B 83            [24] 1212 	mov	dph,r3
      00252D 8C F0            [24] 1213 	mov	b,r4
      00252F E8               [12] 1214 	mov	a,r0
      002530 12 35 0C         [24] 1215 	lcall	__gptrput
      002533 A3               [24] 1216 	inc	dptr
      002534 E9               [12] 1217 	mov	a,r1
      002535 12 35 0C         [24] 1218 	lcall	__gptrput
                                   1219 ;	character.c:127: new_buffer_arr[(*new_buffer_index)-1] = buffer_ptr;
      002538 8D 82            [24] 1220 	mov	dpl,r5
      00253A 8E 83            [24] 1221 	mov	dph,r6
      00253C 8F F0            [24] 1222 	mov	b,r7
      00253E 12 43 83         [24] 1223 	lcall	__gptrget
      002541 F8               [12] 1224 	mov	r0,a
      002542 A3               [24] 1225 	inc	dptr
      002543 12 43 83         [24] 1226 	lcall	__gptrget
      002546 F9               [12] 1227 	mov	r1,a
      002547 18               [12] 1228 	dec	r0
      002548 B8 FF 01         [24] 1229 	cjne	r0,#0xff,00240$
      00254B 19               [12] 1230 	dec	r1
      00254C                       1231 00240$:
      00254C E8               [12] 1232 	mov	a,r0
      00254D 28               [12] 1233 	add	a,r0
      00254E F8               [12] 1234 	mov	r0,a
      00254F E9               [12] 1235 	mov	a,r1
      002550 33               [12] 1236 	rlc	a
      002551 F9               [12] 1237 	mov	r1,a
      002552 E8               [12] 1238 	mov	a,r0
      002553 24 8E            [12] 1239 	add	a,#_new_buffer_arr
      002555 F5 82            [12] 1240 	mov	dpl,a
      002557 E9               [12] 1241 	mov	a,r1
      002558 34 1B            [12] 1242 	addc	a,#(_new_buffer_arr >> 8)
      00255A F5 83            [12] 1243 	mov	dph,a
      00255C E5 08            [12] 1244 	mov	a,_command_processing_sloc0_1_0
      00255E F0               [24] 1245 	movx	@dptr,a
      00255F E5 09            [12] 1246 	mov	a,(_command_processing_sloc0_1_0 + 1)
      002561 A3               [24] 1247 	inc	dptr
      002562 F0               [24] 1248 	movx	@dptr,a
                                   1249 ;	character.c:128: buff_not_cleared[(*new_buffer_index)] = 1; // indicating buff bo new_buffer_index is created
      002563 8D 82            [24] 1250 	mov	dpl,r5
      002565 8E 83            [24] 1251 	mov	dph,r6
      002567 8F F0            [24] 1252 	mov	b,r7
      002569 12 43 83         [24] 1253 	lcall	__gptrget
      00256C F8               [12] 1254 	mov	r0,a
      00256D A3               [24] 1255 	inc	dptr
      00256E 12 43 83         [24] 1256 	lcall	__gptrget
      002571 F9               [12] 1257 	mov	r1,a
      002572 E8               [12] 1258 	mov	a,r0
      002573 28               [12] 1259 	add	a,r0
      002574 F8               [12] 1260 	mov	r0,a
      002575 E9               [12] 1261 	mov	a,r1
      002576 33               [12] 1262 	rlc	a
      002577 F9               [12] 1263 	mov	r1,a
      002578 E8               [12] 1264 	mov	a,r0
      002579 24 C8            [12] 1265 	add	a,#_buff_not_cleared
      00257B F5 82            [12] 1266 	mov	dpl,a
      00257D E9               [12] 1267 	mov	a,r1
      00257E 34 1C            [12] 1268 	addc	a,#(_buff_not_cleared >> 8)
      002580 F5 83            [12] 1269 	mov	dph,a
      002582 74 01            [12] 1270 	mov	a,#0x01
      002584 F0               [24] 1271 	movx	@dptr,a
      002585 E4               [12] 1272 	clr	a
      002586 A3               [24] 1273 	inc	dptr
      002587 F0               [24] 1274 	movx	@dptr,a
                                   1275 ;	character.c:130: printf("\033[1;0mNew buffer index = %d\n\r",(*new_buffer_index));
      002588 8D 82            [24] 1276 	mov	dpl,r5
      00258A 8E 83            [24] 1277 	mov	dph,r6
      00258C 8F F0            [24] 1278 	mov	b,r7
      00258E 12 43 83         [24] 1279 	lcall	__gptrget
      002591 F8               [12] 1280 	mov	r0,a
      002592 A3               [24] 1281 	inc	dptr
      002593 12 43 83         [24] 1282 	lcall	__gptrget
      002596 F9               [12] 1283 	mov	r1,a
      002597 C0 07            [24] 1284 	push	ar7
      002599 C0 06            [24] 1285 	push	ar6
      00259B C0 05            [24] 1286 	push	ar5
      00259D C0 04            [24] 1287 	push	ar4
      00259F C0 03            [24] 1288 	push	ar3
      0025A1 C0 02            [24] 1289 	push	ar2
      0025A3 C0 00            [24] 1290 	push	ar0
      0025A5 C0 01            [24] 1291 	push	ar1
      0025A7 74 02            [12] 1292 	mov	a,#___str_11
      0025A9 C0 E0            [24] 1293 	push	acc
      0025AB 74 46            [12] 1294 	mov	a,#(___str_11 >> 8)
      0025AD C0 E0            [24] 1295 	push	acc
      0025AF 74 80            [12] 1296 	mov	a,#0x80
      0025B1 C0 E0            [24] 1297 	push	acc
      0025B3 12 39 57         [24] 1298 	lcall	_printf
      0025B6 E5 81            [12] 1299 	mov	a,sp
      0025B8 24 FB            [12] 1300 	add	a,#0xfb
      0025BA F5 81            [12] 1301 	mov	sp,a
      0025BC D0 02            [24] 1302 	pop	ar2
      0025BE D0 03            [24] 1303 	pop	ar3
      0025C0 D0 04            [24] 1304 	pop	ar4
      0025C2 D0 05            [24] 1305 	pop	ar5
      0025C4 D0 06            [24] 1306 	pop	ar6
      0025C6 D0 07            [24] 1307 	pop	ar7
                                   1308 ;	character.c:131: printf_tiny("\033[1;0mNew buffer allocated successfully : Buffer[%d]\n\r", ((*new_buffer_index)-1));
      0025C8 8D 82            [24] 1309 	mov	dpl,r5
      0025CA 8E 83            [24] 1310 	mov	dph,r6
      0025CC 8F F0            [24] 1311 	mov	b,r7
      0025CE 12 43 83         [24] 1312 	lcall	__gptrget
      0025D1 F8               [12] 1313 	mov	r0,a
      0025D2 A3               [24] 1314 	inc	dptr
      0025D3 12 43 83         [24] 1315 	lcall	__gptrget
      0025D6 F9               [12] 1316 	mov	r1,a
      0025D7 18               [12] 1317 	dec	r0
      0025D8 B8 FF 01         [24] 1318 	cjne	r0,#0xff,00241$
      0025DB 19               [12] 1319 	dec	r1
      0025DC                       1320 00241$:
      0025DC C0 07            [24] 1321 	push	ar7
      0025DE C0 06            [24] 1322 	push	ar6
      0025E0 C0 05            [24] 1323 	push	ar5
      0025E2 C0 04            [24] 1324 	push	ar4
      0025E4 C0 03            [24] 1325 	push	ar3
      0025E6 C0 02            [24] 1326 	push	ar2
      0025E8 C0 00            [24] 1327 	push	ar0
      0025EA C0 01            [24] 1328 	push	ar1
      0025EC 74 20            [12] 1329 	mov	a,#___str_12
      0025EE C0 E0            [24] 1330 	push	acc
      0025F0 74 46            [12] 1331 	mov	a,#(___str_12 >> 8)
      0025F2 C0 E0            [24] 1332 	push	acc
      0025F4 12 35 27         [24] 1333 	lcall	_printf_tiny
      0025F7 E5 81            [12] 1334 	mov	a,sp
      0025F9 24 FC            [12] 1335 	add	a,#0xfc
      0025FB F5 81            [12] 1336 	mov	sp,a
      0025FD D0 02            [24] 1337 	pop	ar2
      0025FF D0 03            [24] 1338 	pop	ar3
      002601 D0 04            [24] 1339 	pop	ar4
      002603 D0 05            [24] 1340 	pop	ar5
      002605 D0 06            [24] 1341 	pop	ar6
      002607 D0 07            [24] 1342 	pop	ar7
                                   1343 ;	character.c:132: printf_tiny("\033[1;0mTotal Number of Buffers including buffer0 & buffer1 = [%d]\n\r",(*new_buffer_index));
      002609 8D 82            [24] 1344 	mov	dpl,r5
      00260B 8E 83            [24] 1345 	mov	dph,r6
      00260D 8F F0            [24] 1346 	mov	b,r7
      00260F 12 43 83         [24] 1347 	lcall	__gptrget
      002612 FD               [12] 1348 	mov	r5,a
      002613 A3               [24] 1349 	inc	dptr
      002614 12 43 83         [24] 1350 	lcall	__gptrget
      002617 FE               [12] 1351 	mov	r6,a
      002618 C0 04            [24] 1352 	push	ar4
      00261A C0 03            [24] 1353 	push	ar3
      00261C C0 02            [24] 1354 	push	ar2
      00261E C0 05            [24] 1355 	push	ar5
      002620 C0 06            [24] 1356 	push	ar6
      002622 74 57            [12] 1357 	mov	a,#___str_13
      002624 C0 E0            [24] 1358 	push	acc
      002626 74 46            [12] 1359 	mov	a,#(___str_13 >> 8)
      002628 C0 E0            [24] 1360 	push	acc
      00262A 12 35 27         [24] 1361 	lcall	_printf_tiny
      00262D E5 81            [12] 1362 	mov	a,sp
      00262F 24 FC            [12] 1363 	add	a,#0xfc
      002631 F5 81            [12] 1364 	mov	sp,a
      002633 D0 02            [24] 1365 	pop	ar2
      002635 D0 03            [24] 1366 	pop	ar3
      002637 D0 04            [24] 1367 	pop	ar4
                                   1368 ;	character.c:133: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \t Total Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
      002639 90 1B 7E         [24] 1369 	mov	dptr,#_command_processing_PARM_4
      00263C E0               [24] 1370 	movx	a,@dptr
      00263D FD               [12] 1371 	mov	r5,a
      00263E A3               [24] 1372 	inc	dptr
      00263F E0               [24] 1373 	movx	a,@dptr
      002640 FE               [12] 1374 	mov	r6,a
      002641 A3               [24] 1375 	inc	dptr
      002642 E0               [24] 1376 	movx	a,@dptr
      002643 FF               [12] 1377 	mov	r7,a
      002644 8D 82            [24] 1378 	mov	dpl,r5
      002646 8E 83            [24] 1379 	mov	dph,r6
      002648 8F F0            [24] 1380 	mov	b,r7
      00264A 12 43 83         [24] 1381 	lcall	__gptrget
      00264D FD               [12] 1382 	mov	r5,a
      00264E A3               [24] 1383 	inc	dptr
      00264F 12 43 83         [24] 1384 	lcall	__gptrget
      002652 FE               [12] 1385 	mov	r6,a
      002653 8A 82            [24] 1386 	mov	dpl,r2
      002655 8B 83            [24] 1387 	mov	dph,r3
      002657 8C F0            [24] 1388 	mov	b,r4
      002659 12 43 83         [24] 1389 	lcall	__gptrget
      00265C FA               [12] 1390 	mov	r2,a
      00265D A3               [24] 1391 	inc	dptr
      00265E 12 43 83         [24] 1392 	lcall	__gptrget
      002661 FB               [12] 1393 	mov	r3,a
      002662 C0 05            [24] 1394 	push	ar5
      002664 C0 06            [24] 1395 	push	ar6
      002666 C0 02            [24] 1396 	push	ar2
      002668 C0 03            [24] 1397 	push	ar3
      00266A 74 9A            [12] 1398 	mov	a,#___str_14
      00266C C0 E0            [24] 1399 	push	acc
      00266E 74 46            [12] 1400 	mov	a,#(___str_14 >> 8)
      002670 C0 E0            [24] 1401 	push	acc
      002672 12 35 27         [24] 1402 	lcall	_printf_tiny
      002675 E5 81            [12] 1403 	mov	a,sp
      002677 24 FA            [12] 1404 	add	a,#0xfa
      002679 F5 81            [12] 1405 	mov	sp,a
                                   1406 ;	character.c:134: break;
      00267B 02 2D 5C         [24] 1407 	ljmp	00138$
                                   1408 ;	character.c:137: case '-':
      00267E                       1409 00107$:
                                   1410 ;	character.c:138: printf_tiny("\033[1;33m|***********************************************|\n\r");
      00267E 74 DB            [12] 1411 	mov	a,#___str_5
      002680 C0 E0            [24] 1412 	push	acc
      002682 74 44            [12] 1413 	mov	a,#(___str_5 >> 8)
      002684 C0 E0            [24] 1414 	push	acc
      002686 12 35 27         [24] 1415 	lcall	_printf_tiny
      002689 15 81            [12] 1416 	dec	sp
      00268B 15 81            [12] 1417 	dec	sp
                                   1418 ;	character.c:139: printf_tiny("\033[1;33m|************ Processing [-] *******************|\n\r");
      00268D 74 DE            [12] 1419 	mov	a,#___str_15
      00268F C0 E0            [24] 1420 	push	acc
      002691 74 46            [12] 1421 	mov	a,#(___str_15 >> 8)
      002693 C0 E0            [24] 1422 	push	acc
      002695 12 35 27         [24] 1423 	lcall	_printf_tiny
      002698 15 81            [12] 1424 	dec	sp
      00269A 15 81            [12] 1425 	dec	sp
                                   1426 ;	character.c:140: printf_tiny("\033[1;33m|***********************************************|\n\r");
      00269C 74 DB            [12] 1427 	mov	a,#___str_5
      00269E C0 E0            [24] 1428 	push	acc
      0026A0 74 44            [12] 1429 	mov	a,#(___str_5 >> 8)
      0026A2 C0 E0            [24] 1430 	push	acc
      0026A4 12 35 27         [24] 1431 	lcall	_printf_tiny
      0026A7 15 81            [12] 1432 	dec	sp
      0026A9 15 81            [12] 1433 	dec	sp
                                   1434 ;	character.c:141: buffer_to_delete = 0;
      0026AB 90 1C C6         [24] 1435 	mov	dptr,#_buffer_to_delete
      0026AE E4               [12] 1436 	clr	a
      0026AF F0               [24] 1437 	movx	@dptr,a
      0026B0 A3               [24] 1438 	inc	dptr
      0026B1 F0               [24] 1439 	movx	@dptr,a
                                   1440 ;	character.c:142: printf_tiny("\033[1;0m\n\rEnter buffer number to be deleted:\n\r");
      0026B2 74 19            [12] 1441 	mov	a,#___str_16
      0026B4 C0 E0            [24] 1442 	push	acc
      0026B6 74 47            [12] 1443 	mov	a,#(___str_16 >> 8)
      0026B8 C0 E0            [24] 1444 	push	acc
      0026BA 12 35 27         [24] 1445 	lcall	_printf_tiny
      0026BD 15 81            [12] 1446 	dec	sp
      0026BF 15 81            [12] 1447 	dec	sp
                                   1448 ;	character.c:143: printf_tiny("\033[1;0m\Current number of buffers are [%d] (index starting from 0):\n\r\n\r",*new_buffer_index);
      0026C1 90 1B 7B         [24] 1449 	mov	dptr,#_command_processing_PARM_3
      0026C4 E0               [24] 1450 	movx	a,@dptr
      0026C5 FD               [12] 1451 	mov	r5,a
      0026C6 A3               [24] 1452 	inc	dptr
      0026C7 E0               [24] 1453 	movx	a,@dptr
      0026C8 FE               [12] 1454 	mov	r6,a
      0026C9 A3               [24] 1455 	inc	dptr
      0026CA E0               [24] 1456 	movx	a,@dptr
      0026CB FF               [12] 1457 	mov	r7,a
      0026CC 8D 82            [24] 1458 	mov	dpl,r5
      0026CE 8E 83            [24] 1459 	mov	dph,r6
      0026D0 8F F0            [24] 1460 	mov	b,r7
      0026D2 12 43 83         [24] 1461 	lcall	__gptrget
      0026D5 FB               [12] 1462 	mov	r3,a
      0026D6 A3               [24] 1463 	inc	dptr
      0026D7 12 43 83         [24] 1464 	lcall	__gptrget
      0026DA FC               [12] 1465 	mov	r4,a
      0026DB C0 07            [24] 1466 	push	ar7
      0026DD C0 06            [24] 1467 	push	ar6
      0026DF C0 05            [24] 1468 	push	ar5
      0026E1 C0 03            [24] 1469 	push	ar3
      0026E3 C0 04            [24] 1470 	push	ar4
      0026E5 74 46            [12] 1471 	mov	a,#___str_17
      0026E7 C0 E0            [24] 1472 	push	acc
      0026E9 74 47            [12] 1473 	mov	a,#(___str_17 >> 8)
      0026EB C0 E0            [24] 1474 	push	acc
      0026ED 12 35 27         [24] 1475 	lcall	_printf_tiny
      0026F0 E5 81            [12] 1476 	mov	a,sp
      0026F2 24 FC            [12] 1477 	add	a,#0xfc
      0026F4 F5 81            [12] 1478 	mov	sp,a
      0026F6 D0 05            [24] 1479 	pop	ar5
      0026F8 D0 06            [24] 1480 	pop	ar6
      0026FA D0 07            [24] 1481 	pop	ar7
                                   1482 ;	character.c:146: do{
      0026FC                       1483 00111$:
                                   1484 ;	character.c:147: ch = getchar();
      0026FC C0 07            [24] 1485 	push	ar7
      0026FE C0 06            [24] 1486 	push	ar6
      002700 C0 05            [24] 1487 	push	ar5
      002702 12 31 B9         [24] 1488 	lcall	_getchar
      002705 AB 82            [24] 1489 	mov	r3,dpl
                                   1490 ;	character.c:148: putchar(ch);
      002707 8B 02            [24] 1491 	mov	ar2,r3
      002709 7C 00            [12] 1492 	mov	r4,#0x00
      00270B 8A 82            [24] 1493 	mov	dpl,r2
      00270D 8C 83            [24] 1494 	mov	dph,r4
      00270F C0 04            [24] 1495 	push	ar4
      002711 C0 03            [24] 1496 	push	ar3
      002713 C0 02            [24] 1497 	push	ar2
      002715 12 31 C7         [24] 1498 	lcall	_putchar
      002718 D0 02            [24] 1499 	pop	ar2
      00271A D0 03            [24] 1500 	pop	ar3
      00271C D0 04            [24] 1501 	pop	ar4
      00271E D0 05            [24] 1502 	pop	ar5
      002720 D0 06            [24] 1503 	pop	ar6
      002722 D0 07            [24] 1504 	pop	ar7
                                   1505 ;	character.c:150: if (ch < '0' || ch > '9') {
      002724 BB 30 00         [24] 1506 	cjne	r3,#0x30,00242$
      002727                       1507 00242$:
      002727 40 05            [24] 1508 	jc	00108$
      002729 EB               [12] 1509 	mov	a,r3
      00272A 24 C6            [12] 1510 	add	a,#0xff - 0x39
      00272C 50 1D            [24] 1511 	jnc	00109$
      00272E                       1512 00108$:
                                   1513 ;	character.c:151: printf_tiny("\033[1;31mInvalid input : invalid digits entered \n\r\n\r");
      00272E C0 07            [24] 1514 	push	ar7
      002730 C0 06            [24] 1515 	push	ar6
      002732 C0 05            [24] 1516 	push	ar5
      002734 74 8C            [12] 1517 	mov	a,#___str_18
      002736 C0 E0            [24] 1518 	push	acc
      002738 74 47            [12] 1519 	mov	a,#(___str_18 >> 8)
      00273A C0 E0            [24] 1520 	push	acc
      00273C 12 35 27         [24] 1521 	lcall	_printf_tiny
      00273F 15 81            [12] 1522 	dec	sp
      002741 15 81            [12] 1523 	dec	sp
      002743 D0 05            [24] 1524 	pop	ar5
      002745 D0 06            [24] 1525 	pop	ar6
      002747 D0 07            [24] 1526 	pop	ar7
                                   1527 ;	character.c:152: break;
      002749 80 50            [24] 1528 	sjmp	00113$
      00274B                       1529 00109$:
                                   1530 ;	character.c:155: int temp = ch - '0';
      00274B EA               [12] 1531 	mov	a,r2
      00274C 24 D0            [12] 1532 	add	a,#0xd0
      00274E FA               [12] 1533 	mov	r2,a
      00274F EC               [12] 1534 	mov	a,r4
      002750 34 FF            [12] 1535 	addc	a,#0xff
      002752 FC               [12] 1536 	mov	r4,a
                                   1537 ;	character.c:156: buffer_to_delete = buffer_to_delete * 10 + temp;
      002753 90 1C C6         [24] 1538 	mov	dptr,#_buffer_to_delete
      002756 E0               [24] 1539 	movx	a,@dptr
      002757 F9               [12] 1540 	mov	r1,a
      002758 A3               [24] 1541 	inc	dptr
      002759 E0               [24] 1542 	movx	a,@dptr
      00275A FB               [12] 1543 	mov	r3,a
      00275B 90 1C 80         [24] 1544 	mov	dptr,#__mulint_PARM_2
      00275E E9               [12] 1545 	mov	a,r1
      00275F F0               [24] 1546 	movx	@dptr,a
      002760 EB               [12] 1547 	mov	a,r3
      002761 A3               [24] 1548 	inc	dptr
      002762 F0               [24] 1549 	movx	@dptr,a
      002763 90 00 0A         [24] 1550 	mov	dptr,#0x000a
      002766 C0 07            [24] 1551 	push	ar7
      002768 C0 06            [24] 1552 	push	ar6
      00276A C0 05            [24] 1553 	push	ar5
      00276C C0 04            [24] 1554 	push	ar4
      00276E C0 02            [24] 1555 	push	ar2
      002770 12 37 D5         [24] 1556 	lcall	__mulint
      002773 E5 82            [12] 1557 	mov	a,dpl
      002775 85 83 F0         [24] 1558 	mov	b,dph
      002778 D0 02            [24] 1559 	pop	ar2
      00277A D0 04            [24] 1560 	pop	ar4
      00277C 90 1C C6         [24] 1561 	mov	dptr,#_buffer_to_delete
      00277F 2A               [12] 1562 	add	a,r2
      002780 F0               [24] 1563 	movx	@dptr,a
      002781 EC               [12] 1564 	mov	a,r4
      002782 35 F0            [12] 1565 	addc	a,b
      002784 A3               [24] 1566 	inc	dptr
      002785 F0               [24] 1567 	movx	@dptr,a
                                   1568 ;	character.c:158: ch = getchar();
      002786 12 31 B9         [24] 1569 	lcall	_getchar
      002789 AB 82            [24] 1570 	mov	r3,dpl
      00278B AC 83            [24] 1571 	mov	r4,dph
      00278D D0 05            [24] 1572 	pop	ar5
      00278F D0 06            [24] 1573 	pop	ar6
      002791 D0 07            [24] 1574 	pop	ar7
                                   1575 ;	character.c:160: }while(ch != '\r');
      002793 BB 0D 02         [24] 1576 	cjne	r3,#0x0d,00245$
      002796 80 03            [24] 1577 	sjmp	00246$
      002798                       1578 00245$:
      002798 02 26 FC         [24] 1579 	ljmp	00111$
      00279B                       1580 00246$:
      00279B                       1581 00113$:
                                   1582 ;	character.c:162: if (buffer_to_delete == 0)
      00279B 90 1C C6         [24] 1583 	mov	dptr,#_buffer_to_delete
      00279E E0               [24] 1584 	movx	a,@dptr
      00279F FB               [12] 1585 	mov	r3,a
      0027A0 A3               [24] 1586 	inc	dptr
      0027A1 E0               [24] 1587 	movx	a,@dptr
      0027A2 FC               [12] 1588 	mov	r4,a
      0027A3 4B               [12] 1589 	orl	a,r3
      0027A4 70 12            [24] 1590 	jnz	00121$
                                   1591 ;	character.c:164: printf_tiny("\033[1;31mInvalid input : buffer number can't be 0\n\r\n");break;
      0027A6 74 BF            [12] 1592 	mov	a,#___str_19
      0027A8 C0 E0            [24] 1593 	push	acc
      0027AA 74 47            [12] 1594 	mov	a,#(___str_19 >> 8)
      0027AC C0 E0            [24] 1595 	push	acc
      0027AE 12 35 27         [24] 1596 	lcall	_printf_tiny
      0027B1 15 81            [12] 1597 	dec	sp
      0027B3 15 81            [12] 1598 	dec	sp
      0027B5 02 2D 5C         [24] 1599 	ljmp	00138$
      0027B8                       1600 00121$:
                                   1601 ;	character.c:166: } else if(buff_not_cleared[buffer_to_delete] == 0){
      0027B8 EB               [12] 1602 	mov	a,r3
      0027B9 2B               [12] 1603 	add	a,r3
      0027BA F9               [12] 1604 	mov	r1,a
      0027BB EC               [12] 1605 	mov	a,r4
      0027BC 33               [12] 1606 	rlc	a
      0027BD FA               [12] 1607 	mov	r2,a
      0027BE E9               [12] 1608 	mov	a,r1
      0027BF 24 C8            [12] 1609 	add	a,#_buff_not_cleared
      0027C1 F5 82            [12] 1610 	mov	dpl,a
      0027C3 EA               [12] 1611 	mov	a,r2
      0027C4 34 1C            [12] 1612 	addc	a,#(_buff_not_cleared >> 8)
      0027C6 F5 83            [12] 1613 	mov	dph,a
      0027C8 E0               [24] 1614 	movx	a,@dptr
      0027C9 F9               [12] 1615 	mov	r1,a
      0027CA A3               [24] 1616 	inc	dptr
      0027CB E0               [24] 1617 	movx	a,@dptr
      0027CC 49               [12] 1618 	orl	a,r1
      0027CD 70 18            [24] 1619 	jnz	00118$
                                   1620 ;	character.c:167: printf_tiny("\033[1;31mInvalid input : buffer[%d] was already cleared earlier\n\r",buffer_to_delete);break;
      0027CF C0 03            [24] 1621 	push	ar3
      0027D1 C0 04            [24] 1622 	push	ar4
      0027D3 74 F2            [12] 1623 	mov	a,#___str_20
      0027D5 C0 E0            [24] 1624 	push	acc
      0027D7 74 47            [12] 1625 	mov	a,#(___str_20 >> 8)
      0027D9 C0 E0            [24] 1626 	push	acc
      0027DB 12 35 27         [24] 1627 	lcall	_printf_tiny
      0027DE E5 81            [12] 1628 	mov	a,sp
      0027E0 24 FC            [12] 1629 	add	a,#0xfc
      0027E2 F5 81            [12] 1630 	mov	sp,a
      0027E4 02 2D 5C         [24] 1631 	ljmp	00138$
      0027E7                       1632 00118$:
                                   1633 ;	character.c:169: } else if ((buffer_to_delete) >= *new_buffer_index) {
      0027E7 8D 82            [24] 1634 	mov	dpl,r5
      0027E9 8E 83            [24] 1635 	mov	dph,r6
      0027EB 8F F0            [24] 1636 	mov	b,r7
      0027ED 12 43 83         [24] 1637 	lcall	__gptrget
      0027F0 F9               [12] 1638 	mov	r1,a
      0027F1 A3               [24] 1639 	inc	dptr
      0027F2 12 43 83         [24] 1640 	lcall	__gptrget
      0027F5 FA               [12] 1641 	mov	r2,a
      0027F6 C3               [12] 1642 	clr	c
      0027F7 EB               [12] 1643 	mov	a,r3
      0027F8 99               [12] 1644 	subb	a,r1
      0027F9 EC               [12] 1645 	mov	a,r4
      0027FA 64 80            [12] 1646 	xrl	a,#0x80
      0027FC 8A F0            [24] 1647 	mov	b,r2
      0027FE 63 F0 80         [24] 1648 	xrl	b,#0x80
      002801 95 F0            [12] 1649 	subb	a,b
      002803 40 12            [24] 1650 	jc	00115$
                                   1651 ;	character.c:170: printf_tiny("\033[1;31mInvalid input : buffer number doesn't exist\n\r");break;
      002805 74 32            [12] 1652 	mov	a,#___str_21
      002807 C0 E0            [24] 1653 	push	acc
      002809 74 48            [12] 1654 	mov	a,#(___str_21 >> 8)
      00280B C0 E0            [24] 1655 	push	acc
      00280D 12 35 27         [24] 1656 	lcall	_printf_tiny
      002810 15 81            [12] 1657 	dec	sp
      002812 15 81            [12] 1658 	dec	sp
      002814 02 2D 5C         [24] 1659 	ljmp	00138$
      002817                       1660 00115$:
                                   1661 ;	character.c:173: printf_tiny("\033[1;0mBuffer [%d] requested to be deleted\n\r",buffer_to_delete);
      002817 C0 07            [24] 1662 	push	ar7
      002819 C0 06            [24] 1663 	push	ar6
      00281B C0 05            [24] 1664 	push	ar5
      00281D C0 03            [24] 1665 	push	ar3
      00281F C0 04            [24] 1666 	push	ar4
      002821 74 67            [12] 1667 	mov	a,#___str_22
      002823 C0 E0            [24] 1668 	push	acc
      002825 74 48            [12] 1669 	mov	a,#(___str_22 >> 8)
      002827 C0 E0            [24] 1670 	push	acc
      002829 12 35 27         [24] 1671 	lcall	_printf_tiny
      00282C E5 81            [12] 1672 	mov	a,sp
      00282E 24 FC            [12] 1673 	add	a,#0xfc
      002830 F5 81            [12] 1674 	mov	sp,a
                                   1675 ;	character.c:174: free(new_buffer_arr[buffer_to_delete]);
      002832 90 1C C6         [24] 1676 	mov	dptr,#_buffer_to_delete
      002835 E0               [24] 1677 	movx	a,@dptr
      002836 FB               [12] 1678 	mov	r3,a
      002837 A3               [24] 1679 	inc	dptr
      002838 E0               [24] 1680 	movx	a,@dptr
      002839 FC               [12] 1681 	mov	r4,a
      00283A EB               [12] 1682 	mov	a,r3
      00283B 2B               [12] 1683 	add	a,r3
      00283C FB               [12] 1684 	mov	r3,a
      00283D EC               [12] 1685 	mov	a,r4
      00283E 33               [12] 1686 	rlc	a
      00283F FC               [12] 1687 	mov	r4,a
      002840 EB               [12] 1688 	mov	a,r3
      002841 24 8E            [12] 1689 	add	a,#_new_buffer_arr
      002843 F5 82            [12] 1690 	mov	dpl,a
      002845 EC               [12] 1691 	mov	a,r4
      002846 34 1B            [12] 1692 	addc	a,#(_new_buffer_arr >> 8)
      002848 F5 83            [12] 1693 	mov	dph,a
      00284A E0               [24] 1694 	movx	a,@dptr
      00284B FB               [12] 1695 	mov	r3,a
      00284C A3               [24] 1696 	inc	dptr
      00284D E0               [24] 1697 	movx	a,@dptr
      00284E FC               [12] 1698 	mov	r4,a
      00284F 7A 00            [12] 1699 	mov	r2,#0x00
      002851 8B 82            [24] 1700 	mov	dpl,r3
      002853 8C 83            [24] 1701 	mov	dph,r4
      002855 8A F0            [24] 1702 	mov	b,r2
      002857 12 32 91         [24] 1703 	lcall	_free
      00285A D0 05            [24] 1704 	pop	ar5
      00285C D0 06            [24] 1705 	pop	ar6
      00285E D0 07            [24] 1706 	pop	ar7
                                   1707 ;	character.c:175: buff_not_cleared[buffer_to_delete] =0;
      002860 90 1C C6         [24] 1708 	mov	dptr,#_buffer_to_delete
      002863 E0               [24] 1709 	movx	a,@dptr
      002864 FB               [12] 1710 	mov	r3,a
      002865 A3               [24] 1711 	inc	dptr
      002866 E0               [24] 1712 	movx	a,@dptr
      002867 FC               [12] 1713 	mov	r4,a
      002868 EB               [12] 1714 	mov	a,r3
      002869 2B               [12] 1715 	add	a,r3
      00286A FB               [12] 1716 	mov	r3,a
      00286B EC               [12] 1717 	mov	a,r4
      00286C 33               [12] 1718 	rlc	a
      00286D FC               [12] 1719 	mov	r4,a
      00286E EB               [12] 1720 	mov	a,r3
      00286F 24 C8            [12] 1721 	add	a,#_buff_not_cleared
      002871 F5 82            [12] 1722 	mov	dpl,a
      002873 EC               [12] 1723 	mov	a,r4
      002874 34 1C            [12] 1724 	addc	a,#(_buff_not_cleared >> 8)
      002876 F5 83            [12] 1725 	mov	dph,a
      002878 E4               [12] 1726 	clr	a
      002879 F0               [24] 1727 	movx	@dptr,a
      00287A A3               [24] 1728 	inc	dptr
      00287B F0               [24] 1729 	movx	@dptr,a
                                   1730 ;	character.c:176: ++(*free_buffer_count);
      00287C 90 1B 7E         [24] 1731 	mov	dptr,#_command_processing_PARM_4
      00287F E0               [24] 1732 	movx	a,@dptr
      002880 FA               [12] 1733 	mov	r2,a
      002881 A3               [24] 1734 	inc	dptr
      002882 E0               [24] 1735 	movx	a,@dptr
      002883 FB               [12] 1736 	mov	r3,a
      002884 A3               [24] 1737 	inc	dptr
      002885 E0               [24] 1738 	movx	a,@dptr
      002886 FC               [12] 1739 	mov	r4,a
      002887 8A 82            [24] 1740 	mov	dpl,r2
      002889 8B 83            [24] 1741 	mov	dph,r3
      00288B 8C F0            [24] 1742 	mov	b,r4
      00288D 12 43 83         [24] 1743 	lcall	__gptrget
      002890 F8               [12] 1744 	mov	r0,a
      002891 A3               [24] 1745 	inc	dptr
      002892 12 43 83         [24] 1746 	lcall	__gptrget
      002895 F9               [12] 1747 	mov	r1,a
      002896 08               [12] 1748 	inc	r0
      002897 B8 00 01         [24] 1749 	cjne	r0,#0x00,00250$
      00289A 09               [12] 1750 	inc	r1
      00289B                       1751 00250$:
      00289B 8A 82            [24] 1752 	mov	dpl,r2
      00289D 8B 83            [24] 1753 	mov	dph,r3
      00289F 8C F0            [24] 1754 	mov	b,r4
      0028A1 E8               [12] 1755 	mov	a,r0
      0028A2 12 35 0C         [24] 1756 	lcall	__gptrput
      0028A5 A3               [24] 1757 	inc	dptr
      0028A6 E9               [12] 1758 	mov	a,r1
      0028A7 12 35 0C         [24] 1759 	lcall	__gptrput
                                   1760 ;	character.c:177: printf_tiny("\033[1;0mBuffer[%d] de-allocated successfully  \n\r", buffer_to_delete);
      0028AA C0 07            [24] 1761 	push	ar7
      0028AC C0 06            [24] 1762 	push	ar6
      0028AE C0 05            [24] 1763 	push	ar5
      0028B0 C0 04            [24] 1764 	push	ar4
      0028B2 C0 03            [24] 1765 	push	ar3
      0028B4 C0 02            [24] 1766 	push	ar2
      0028B6 90 1C C6         [24] 1767 	mov	dptr,#_buffer_to_delete
      0028B9 E0               [24] 1768 	movx	a,@dptr
      0028BA C0 E0            [24] 1769 	push	acc
      0028BC A3               [24] 1770 	inc	dptr
      0028BD E0               [24] 1771 	movx	a,@dptr
      0028BE C0 E0            [24] 1772 	push	acc
      0028C0 74 93            [12] 1773 	mov	a,#___str_23
      0028C2 C0 E0            [24] 1774 	push	acc
      0028C4 74 48            [12] 1775 	mov	a,#(___str_23 >> 8)
      0028C6 C0 E0            [24] 1776 	push	acc
      0028C8 12 35 27         [24] 1777 	lcall	_printf_tiny
      0028CB E5 81            [12] 1778 	mov	a,sp
      0028CD 24 FC            [12] 1779 	add	a,#0xfc
      0028CF F5 81            [12] 1780 	mov	sp,a
      0028D1 D0 02            [24] 1781 	pop	ar2
      0028D3 D0 03            [24] 1782 	pop	ar3
      0028D5 D0 04            [24] 1783 	pop	ar4
      0028D7 D0 05            [24] 1784 	pop	ar5
      0028D9 D0 06            [24] 1785 	pop	ar6
      0028DB D0 07            [24] 1786 	pop	ar7
                                   1787 ;	character.c:178: printf_tiny("\033[1;0mTotal Number of Buffers after deallocation = [%d]\n\r\n\r",*new_buffer_index);
      0028DD 8D 82            [24] 1788 	mov	dpl,r5
      0028DF 8E 83            [24] 1789 	mov	dph,r6
      0028E1 8F F0            [24] 1790 	mov	b,r7
      0028E3 12 43 83         [24] 1791 	lcall	__gptrget
      0028E6 FD               [12] 1792 	mov	r5,a
      0028E7 A3               [24] 1793 	inc	dptr
      0028E8 12 43 83         [24] 1794 	lcall	__gptrget
      0028EB FE               [12] 1795 	mov	r6,a
      0028EC C0 04            [24] 1796 	push	ar4
      0028EE C0 03            [24] 1797 	push	ar3
      0028F0 C0 02            [24] 1798 	push	ar2
      0028F2 C0 05            [24] 1799 	push	ar5
      0028F4 C0 06            [24] 1800 	push	ar6
      0028F6 74 C2            [12] 1801 	mov	a,#___str_24
      0028F8 C0 E0            [24] 1802 	push	acc
      0028FA 74 48            [12] 1803 	mov	a,#(___str_24 >> 8)
      0028FC C0 E0            [24] 1804 	push	acc
      0028FE 12 35 27         [24] 1805 	lcall	_printf_tiny
      002901 E5 81            [12] 1806 	mov	a,sp
      002903 24 FC            [12] 1807 	add	a,#0xfc
      002905 F5 81            [12] 1808 	mov	sp,a
      002907 D0 02            [24] 1809 	pop	ar2
      002909 D0 03            [24] 1810 	pop	ar3
      00290B D0 04            [24] 1811 	pop	ar4
                                   1812 ;	character.c:179: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \t Total Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
      00290D 8A 82            [24] 1813 	mov	dpl,r2
      00290F 8B 83            [24] 1814 	mov	dph,r3
      002911 8C F0            [24] 1815 	mov	b,r4
      002913 12 43 83         [24] 1816 	lcall	__gptrget
      002916 FA               [12] 1817 	mov	r2,a
      002917 A3               [24] 1818 	inc	dptr
      002918 12 43 83         [24] 1819 	lcall	__gptrget
      00291B FB               [12] 1820 	mov	r3,a
      00291C 90 1B 81         [24] 1821 	mov	dptr,#_command_processing_PARM_5
      00291F E0               [24] 1822 	movx	a,@dptr
      002920 FD               [12] 1823 	mov	r5,a
      002921 A3               [24] 1824 	inc	dptr
      002922 E0               [24] 1825 	movx	a,@dptr
      002923 FE               [12] 1826 	mov	r6,a
      002924 A3               [24] 1827 	inc	dptr
      002925 E0               [24] 1828 	movx	a,@dptr
      002926 FF               [12] 1829 	mov	r7,a
      002927 8D 82            [24] 1830 	mov	dpl,r5
      002929 8E 83            [24] 1831 	mov	dph,r6
      00292B 8F F0            [24] 1832 	mov	b,r7
      00292D 12 43 83         [24] 1833 	lcall	__gptrget
      002930 FD               [12] 1834 	mov	r5,a
      002931 A3               [24] 1835 	inc	dptr
      002932 12 43 83         [24] 1836 	lcall	__gptrget
      002935 FE               [12] 1837 	mov	r6,a
      002936 C0 02            [24] 1838 	push	ar2
      002938 C0 03            [24] 1839 	push	ar3
      00293A C0 05            [24] 1840 	push	ar5
      00293C C0 06            [24] 1841 	push	ar6
      00293E 74 9A            [12] 1842 	mov	a,#___str_14
      002940 C0 E0            [24] 1843 	push	acc
      002942 74 46            [12] 1844 	mov	a,#(___str_14 >> 8)
      002944 C0 E0            [24] 1845 	push	acc
      002946 12 35 27         [24] 1846 	lcall	_printf_tiny
      002949 E5 81            [12] 1847 	mov	a,sp
      00294B 24 FA            [12] 1848 	add	a,#0xfa
      00294D F5 81            [12] 1849 	mov	sp,a
                                   1850 ;	character.c:181: break;
      00294F 02 2D 5C         [24] 1851 	ljmp	00138$
                                   1852 ;	character.c:183: case '@':
      002952                       1853 00123$:
                                   1854 ;	character.c:184: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002952 74 DB            [12] 1855 	mov	a,#___str_5
      002954 C0 E0            [24] 1856 	push	acc
      002956 74 44            [12] 1857 	mov	a,#(___str_5 >> 8)
      002958 C0 E0            [24] 1858 	push	acc
      00295A 12 35 27         [24] 1859 	lcall	_printf_tiny
      00295D 15 81            [12] 1860 	dec	sp
      00295F 15 81            [12] 1861 	dec	sp
                                   1862 ;	character.c:185: printf_tiny("\033[1;33m|************ Processing [@] *******************|\n\r");
      002961 74 FE            [12] 1863 	mov	a,#___str_25
      002963 C0 E0            [24] 1864 	push	acc
      002965 74 48            [12] 1865 	mov	a,#(___str_25 >> 8)
      002967 C0 E0            [24] 1866 	push	acc
      002969 12 35 27         [24] 1867 	lcall	_printf_tiny
      00296C 15 81            [12] 1868 	dec	sp
      00296E 15 81            [12] 1869 	dec	sp
                                   1870 ;	character.c:186: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002970 74 DB            [12] 1871 	mov	a,#___str_5
      002972 C0 E0            [24] 1872 	push	acc
      002974 74 44            [12] 1873 	mov	a,#(___str_5 >> 8)
      002976 C0 E0            [24] 1874 	push	acc
      002978 12 35 27         [24] 1875 	lcall	_printf_tiny
      00297B 15 81            [12] 1876 	dec	sp
      00297D 15 81            [12] 1877 	dec	sp
                                   1878 ;	character.c:187: for(int i = 0; i < *new_buffer_index; i++) {
      00297F 90 1B 7B         [24] 1879 	mov	dptr,#_command_processing_PARM_3
      002982 E0               [24] 1880 	movx	a,@dptr
      002983 F5 0A            [12] 1881 	mov	_command_processing_sloc1_1_0,a
      002985 A3               [24] 1882 	inc	dptr
      002986 E0               [24] 1883 	movx	a,@dptr
      002987 F5 0B            [12] 1884 	mov	(_command_processing_sloc1_1_0 + 1),a
      002989 A3               [24] 1885 	inc	dptr
      00298A E0               [24] 1886 	movx	a,@dptr
      00298B F5 0C            [12] 1887 	mov	(_command_processing_sloc1_1_0 + 2),a
      00298D 7B 00            [12] 1888 	mov	r3,#0x00
      00298F 7C 00            [12] 1889 	mov	r4,#0x00
      002991                       1890 00140$:
      002991 85 0A 82         [24] 1891 	mov	dpl,_command_processing_sloc1_1_0
      002994 85 0B 83         [24] 1892 	mov	dph,(_command_processing_sloc1_1_0 + 1)
      002997 85 0C F0         [24] 1893 	mov	b,(_command_processing_sloc1_1_0 + 2)
      00299A 12 43 83         [24] 1894 	lcall	__gptrget
      00299D F9               [12] 1895 	mov	r1,a
      00299E A3               [24] 1896 	inc	dptr
      00299F 12 43 83         [24] 1897 	lcall	__gptrget
      0029A2 FA               [12] 1898 	mov	r2,a
      0029A3 C3               [12] 1899 	clr	c
      0029A4 EB               [12] 1900 	mov	a,r3
      0029A5 99               [12] 1901 	subb	a,r1
      0029A6 EC               [12] 1902 	mov	a,r4
      0029A7 64 80            [12] 1903 	xrl	a,#0x80
      0029A9 8A F0            [24] 1904 	mov	b,r2
      0029AB 63 F0 80         [24] 1905 	xrl	b,#0x80
      0029AE 95 F0            [12] 1906 	subb	a,b
      0029B0 40 03            [24] 1907 	jc	00251$
      0029B2 02 2A 42         [24] 1908 	ljmp	00127$
      0029B5                       1909 00251$:
                                   1910 ;	character.c:188: char* buffer_to_free = new_buffer_arr[i];
      0029B5 EB               [12] 1911 	mov	a,r3
      0029B6 2B               [12] 1912 	add	a,r3
      0029B7 F9               [12] 1913 	mov	r1,a
      0029B8 EC               [12] 1914 	mov	a,r4
      0029B9 33               [12] 1915 	rlc	a
      0029BA FA               [12] 1916 	mov	r2,a
      0029BB E9               [12] 1917 	mov	a,r1
      0029BC 24 8E            [12] 1918 	add	a,#_new_buffer_arr
      0029BE F9               [12] 1919 	mov	r1,a
      0029BF EA               [12] 1920 	mov	a,r2
      0029C0 34 1B            [12] 1921 	addc	a,#(_new_buffer_arr >> 8)
      0029C2 FA               [12] 1922 	mov	r2,a
      0029C3 89 82            [24] 1923 	mov	dpl,r1
      0029C5 8A 83            [24] 1924 	mov	dph,r2
      0029C7 E0               [24] 1925 	movx	a,@dptr
      0029C8 F8               [12] 1926 	mov	r0,a
      0029C9 A3               [24] 1927 	inc	dptr
      0029CA E0               [24] 1928 	movx	a,@dptr
      0029CB FF               [12] 1929 	mov	r7,a
      0029CC 88 0D            [24] 1930 	mov	_command_processing_sloc2_1_0,r0
      0029CE 8F 0E            [24] 1931 	mov	(_command_processing_sloc2_1_0 + 1),r7
      0029D0 75 0F 00         [24] 1932 	mov	(_command_processing_sloc2_1_0 + 2),#0x00
                                   1933 ;	character.c:189: if(buffer_to_free != NULL) {
      0029D3 E8               [12] 1934 	mov	a,r0
      0029D4 4F               [12] 1935 	orl	a,r7
      0029D5 60 46            [24] 1936 	jz	00125$
                                   1937 ;	character.c:190: free(buffer_to_free);
      0029D7 AD 0D            [24] 1938 	mov	r5,_command_processing_sloc2_1_0
      0029D9 AE 0E            [24] 1939 	mov	r6,(_command_processing_sloc2_1_0 + 1)
      0029DB AF 0F            [24] 1940 	mov	r7,(_command_processing_sloc2_1_0 + 2)
      0029DD 8D 82            [24] 1941 	mov	dpl,r5
      0029DF 8E 83            [24] 1942 	mov	dph,r6
      0029E1 8F F0            [24] 1943 	mov	b,r7
      0029E3 C0 04            [24] 1944 	push	ar4
      0029E5 C0 03            [24] 1945 	push	ar3
      0029E7 C0 02            [24] 1946 	push	ar2
      0029E9 C0 01            [24] 1947 	push	ar1
      0029EB 12 32 91         [24] 1948 	lcall	_free
      0029EE D0 01            [24] 1949 	pop	ar1
      0029F0 D0 02            [24] 1950 	pop	ar2
      0029F2 D0 03            [24] 1951 	pop	ar3
      0029F4 D0 04            [24] 1952 	pop	ar4
                                   1953 ;	character.c:191: new_buffer_arr[i] = NULL;
      0029F6 89 82            [24] 1954 	mov	dpl,r1
      0029F8 8A 83            [24] 1955 	mov	dph,r2
      0029FA E4               [12] 1956 	clr	a
      0029FB F0               [24] 1957 	movx	@dptr,a
      0029FC A3               [24] 1958 	inc	dptr
      0029FD F0               [24] 1959 	movx	@dptr,a
                                   1960 ;	character.c:192: printf_tiny("\033[1;0mBuffer[%d] freed\n\r",i);
      0029FE C0 04            [24] 1961 	push	ar4
      002A00 C0 03            [24] 1962 	push	ar3
      002A02 C0 03            [24] 1963 	push	ar3
      002A04 C0 04            [24] 1964 	push	ar4
      002A06 74 39            [12] 1965 	mov	a,#___str_26
      002A08 C0 E0            [24] 1966 	push	acc
      002A0A 74 49            [12] 1967 	mov	a,#(___str_26 >> 8)
      002A0C C0 E0            [24] 1968 	push	acc
      002A0E 12 35 27         [24] 1969 	lcall	_printf_tiny
      002A11 E5 81            [12] 1970 	mov	a,sp
      002A13 24 FC            [12] 1971 	add	a,#0xfc
      002A15 F5 81            [12] 1972 	mov	sp,a
      002A17 D0 03            [24] 1973 	pop	ar3
      002A19 D0 04            [24] 1974 	pop	ar4
      002A1B 80 1D            [24] 1975 	sjmp	00141$
      002A1D                       1976 00125$:
                                   1977 ;	character.c:194: printf_tiny("\033[1;0mBuffer[%d] was already NULL\n\r",i);
      002A1D C0 04            [24] 1978 	push	ar4
      002A1F C0 03            [24] 1979 	push	ar3
      002A21 C0 03            [24] 1980 	push	ar3
      002A23 C0 04            [24] 1981 	push	ar4
      002A25 74 52            [12] 1982 	mov	a,#___str_27
      002A27 C0 E0            [24] 1983 	push	acc
      002A29 74 49            [12] 1984 	mov	a,#(___str_27 >> 8)
      002A2B C0 E0            [24] 1985 	push	acc
      002A2D 12 35 27         [24] 1986 	lcall	_printf_tiny
      002A30 E5 81            [12] 1987 	mov	a,sp
      002A32 24 FC            [12] 1988 	add	a,#0xfc
      002A34 F5 81            [12] 1989 	mov	sp,a
      002A36 D0 03            [24] 1990 	pop	ar3
      002A38 D0 04            [24] 1991 	pop	ar4
      002A3A                       1992 00141$:
                                   1993 ;	character.c:187: for(int i = 0; i < *new_buffer_index; i++) {
      002A3A 0B               [12] 1994 	inc	r3
      002A3B BB 00 01         [24] 1995 	cjne	r3,#0x00,00253$
      002A3E 0C               [12] 1996 	inc	r4
      002A3F                       1997 00253$:
      002A3F 02 29 91         [24] 1998 	ljmp	00140$
      002A42                       1999 00127$:
                                   2000 ;	character.c:198: *new_buffer_index = 0;
      002A42 85 0A 82         [24] 2001 	mov	dpl,_command_processing_sloc1_1_0
      002A45 85 0B 83         [24] 2002 	mov	dph,(_command_processing_sloc1_1_0 + 1)
      002A48 85 0C F0         [24] 2003 	mov	b,(_command_processing_sloc1_1_0 + 2)
      002A4B E4               [12] 2004 	clr	a
      002A4C 12 35 0C         [24] 2005 	lcall	__gptrput
      002A4F A3               [24] 2006 	inc	dptr
      002A50 12 35 0C         [24] 2007 	lcall	__gptrput
                                   2008 ;	character.c:199: (*filled_buffer_count) = 0;
      002A53 90 1B 81         [24] 2009 	mov	dptr,#_command_processing_PARM_5
      002A56 E0               [24] 2010 	movx	a,@dptr
      002A57 FD               [12] 2011 	mov	r5,a
      002A58 A3               [24] 2012 	inc	dptr
      002A59 E0               [24] 2013 	movx	a,@dptr
      002A5A FE               [12] 2014 	mov	r6,a
      002A5B A3               [24] 2015 	inc	dptr
      002A5C E0               [24] 2016 	movx	a,@dptr
      002A5D FF               [12] 2017 	mov	r7,a
      002A5E 8D 82            [24] 2018 	mov	dpl,r5
      002A60 8E 83            [24] 2019 	mov	dph,r6
      002A62 8F F0            [24] 2020 	mov	b,r7
      002A64 E4               [12] 2021 	clr	a
      002A65 12 35 0C         [24] 2022 	lcall	__gptrput
      002A68 A3               [24] 2023 	inc	dptr
      002A69 12 35 0C         [24] 2024 	lcall	__gptrput
                                   2025 ;	character.c:200: (*free_buffer_count) = 0;
      002A6C 90 1B 7E         [24] 2026 	mov	dptr,#_command_processing_PARM_4
      002A6F E0               [24] 2027 	movx	a,@dptr
      002A70 FD               [12] 2028 	mov	r5,a
      002A71 A3               [24] 2029 	inc	dptr
      002A72 E0               [24] 2030 	movx	a,@dptr
      002A73 FE               [12] 2031 	mov	r6,a
      002A74 A3               [24] 2032 	inc	dptr
      002A75 E0               [24] 2033 	movx	a,@dptr
      002A76 FF               [12] 2034 	mov	r7,a
      002A77 8D 82            [24] 2035 	mov	dpl,r5
      002A79 8E 83            [24] 2036 	mov	dph,r6
      002A7B 8F F0            [24] 2037 	mov	b,r7
      002A7D E4               [12] 2038 	clr	a
      002A7E 12 35 0C         [24] 2039 	lcall	__gptrput
      002A81 A3               [24] 2040 	inc	dptr
      002A82 12 35 0C         [24] 2041 	lcall	__gptrput
                                   2042 ;	character.c:201: return ALL_BUFFER_CLEARED;
      002A85 90 00 01         [24] 2043 	mov	dptr,#0x0001
      002A88 22               [24] 2044 	ret
                                   2045 ;	character.c:203: case '=':
      002A89                       2046 00128$:
                                   2047 ;	character.c:204: printf_tiny("\033[1;33m\r\n|************ Processing [=] *******************|\n\r");
      002A89 74 76            [12] 2048 	mov	a,#___str_28
      002A8B C0 E0            [24] 2049 	push	acc
      002A8D 74 49            [12] 2050 	mov	a,#(___str_28 >> 8)
      002A8F C0 E0            [24] 2051 	push	acc
      002A91 12 35 27         [24] 2052 	lcall	_printf_tiny
      002A94 15 81            [12] 2053 	dec	sp
      002A96 15 81            [12] 2054 	dec	sp
                                   2055 ;	character.c:205: length = 16;
      002A98 90 1B 75         [24] 2056 	mov	dptr,#_length
      002A9B 74 10            [12] 2057 	mov	a,#0x10
      002A9D F0               [24] 2058 	movx	@dptr,a
      002A9E E4               [12] 2059 	clr	a
      002A9F A3               [24] 2060 	inc	dptr
      002AA0 F0               [24] 2061 	movx	@dptr,a
                                   2062 ;	character.c:206: buffer0_hexdump(length);
      002AA1 90 00 10         [24] 2063 	mov	dptr,#0x0010
      002AA4 12 21 B2         [24] 2064 	lcall	_buffer0_hexdump
                                   2065 ;	character.c:207: break;
      002AA7 02 2D 5C         [24] 2066 	ljmp	00138$
                                   2067 ;	character.c:209: case '?':
      002AAA                       2068 00129$:
                                   2069 ;	character.c:210: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002AAA 74 DB            [12] 2070 	mov	a,#___str_5
      002AAC C0 E0            [24] 2071 	push	acc
      002AAE 74 44            [12] 2072 	mov	a,#(___str_5 >> 8)
      002AB0 C0 E0            [24] 2073 	push	acc
      002AB2 12 35 27         [24] 2074 	lcall	_printf_tiny
      002AB5 15 81            [12] 2075 	dec	sp
      002AB7 15 81            [12] 2076 	dec	sp
                                   2077 ;	character.c:211: printf_tiny("\033[1;33m|************ Processing [?] *******************|\n\r");
      002AB9 74 B3            [12] 2078 	mov	a,#___str_29
      002ABB C0 E0            [24] 2079 	push	acc
      002ABD 74 49            [12] 2080 	mov	a,#(___str_29 >> 8)
      002ABF C0 E0            [24] 2081 	push	acc
      002AC1 12 35 27         [24] 2082 	lcall	_printf_tiny
      002AC4 15 81            [12] 2083 	dec	sp
      002AC6 15 81            [12] 2084 	dec	sp
                                   2085 ;	character.c:212: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002AC8 74 DB            [12] 2086 	mov	a,#___str_5
      002ACA C0 E0            [24] 2087 	push	acc
      002ACC 74 44            [12] 2088 	mov	a,#(___str_5 >> 8)
      002ACE C0 E0            [24] 2089 	push	acc
      002AD0 12 35 27         [24] 2090 	lcall	_printf_tiny
      002AD3 15 81            [12] 2091 	dec	sp
      002AD5 15 81            [12] 2092 	dec	sp
                                   2093 ;	character.c:213: printf_tiny(" \033[1;34m\r\n|***********************************************|\n\r");
      002AD7 74 EE            [12] 2094 	mov	a,#___str_30
      002AD9 C0 E0            [24] 2095 	push	acc
      002ADB 74 49            [12] 2096 	mov	a,#(___str_30 >> 8)
      002ADD C0 E0            [24] 2097 	push	acc
      002ADF 12 35 27         [24] 2098 	lcall	_printf_tiny
      002AE2 15 81            [12] 2099 	dec	sp
      002AE4 15 81            [12] 2100 	dec	sp
                                   2101 ;	character.c:214: printf_tiny(" \033[1;34m|*************** HEAP REPORT *******************|\n\r");
      002AE6 74 2C            [12] 2102 	mov	a,#___str_31
      002AE8 C0 E0            [24] 2103 	push	acc
      002AEA 74 4A            [12] 2104 	mov	a,#(___str_31 >> 8)
      002AEC C0 E0            [24] 2105 	push	acc
      002AEE 12 35 27         [24] 2106 	lcall	_printf_tiny
      002AF1 15 81            [12] 2107 	dec	sp
      002AF3 15 81            [12] 2108 	dec	sp
                                   2109 ;	character.c:215: printf_tiny(" \033[1;34m|***********************************************|\n\r");
      002AF5 74 68            [12] 2110 	mov	a,#___str_32
      002AF7 C0 E0            [24] 2111 	push	acc
      002AF9 74 4A            [12] 2112 	mov	a,#(___str_32 >> 8)
      002AFB C0 E0            [24] 2113 	push	acc
      002AFD 12 35 27         [24] 2114 	lcall	_printf_tiny
      002B00 15 81            [12] 2115 	dec	sp
      002B02 15 81            [12] 2116 	dec	sp
                                   2117 ;	character.c:216: for(int i=0;i<*new_buffer_index;i++)
      002B04 90 1B 84         [24] 2118 	mov	dptr,#_command_processing_PARM_6
      002B07 E0               [24] 2119 	movx	a,@dptr
      002B08 FD               [12] 2120 	mov	r5,a
      002B09 A3               [24] 2121 	inc	dptr
      002B0A E0               [24] 2122 	movx	a,@dptr
      002B0B FE               [12] 2123 	mov	r6,a
      002B0C A3               [24] 2124 	inc	dptr
      002B0D E0               [24] 2125 	movx	a,@dptr
      002B0E FF               [12] 2126 	mov	r7,a
      002B0F 90 1B 87         [24] 2127 	mov	dptr,#_command_processing_PARM_7
      002B12 E0               [24] 2128 	movx	a,@dptr
      002B13 F5 10            [12] 2129 	mov	_command_processing_sloc3_1_0,a
      002B15 A3               [24] 2130 	inc	dptr
      002B16 E0               [24] 2131 	movx	a,@dptr
      002B17 F5 11            [12] 2132 	mov	(_command_processing_sloc3_1_0 + 1),a
      002B19 A3               [24] 2133 	inc	dptr
      002B1A E0               [24] 2134 	movx	a,@dptr
      002B1B F5 12            [12] 2135 	mov	(_command_processing_sloc3_1_0 + 2),a
      002B1D 90 1B 7B         [24] 2136 	mov	dptr,#_command_processing_PARM_3
      002B20 E0               [24] 2137 	movx	a,@dptr
      002B21 F5 0D            [12] 2138 	mov	_command_processing_sloc2_1_0,a
      002B23 A3               [24] 2139 	inc	dptr
      002B24 E0               [24] 2140 	movx	a,@dptr
      002B25 F5 0E            [12] 2141 	mov	(_command_processing_sloc2_1_0 + 1),a
      002B27 A3               [24] 2142 	inc	dptr
      002B28 E0               [24] 2143 	movx	a,@dptr
      002B29 F5 0F            [12] 2144 	mov	(_command_processing_sloc2_1_0 + 2),a
      002B2B 78 00            [12] 2145 	mov	r0,#0x00
      002B2D 79 00            [12] 2146 	mov	r1,#0x00
      002B2F                       2147 00143$:
      002B2F 85 0D 82         [24] 2148 	mov	dpl,_command_processing_sloc2_1_0
      002B32 85 0E 83         [24] 2149 	mov	dph,(_command_processing_sloc2_1_0 + 1)
      002B35 85 0F F0         [24] 2150 	mov	b,(_command_processing_sloc2_1_0 + 2)
      002B38 12 43 83         [24] 2151 	lcall	__gptrget
      002B3B FB               [12] 2152 	mov	r3,a
      002B3C A3               [24] 2153 	inc	dptr
      002B3D 12 43 83         [24] 2154 	lcall	__gptrget
      002B40 FC               [12] 2155 	mov	r4,a
      002B41 C3               [12] 2156 	clr	c
      002B42 E8               [12] 2157 	mov	a,r0
      002B43 9B               [12] 2158 	subb	a,r3
      002B44 E9               [12] 2159 	mov	a,r1
      002B45 64 80            [12] 2160 	xrl	a,#0x80
      002B47 8C F0            [24] 2161 	mov	b,r4
      002B49 63 F0 80         [24] 2162 	xrl	b,#0x80
      002B4C 95 F0            [12] 2163 	subb	a,b
      002B4E 40 03            [24] 2164 	jc	00254$
      002B50 02 2D 11         [24] 2165 	ljmp	00134$
      002B53                       2166 00254$:
                                   2167 ;	character.c:219: if(new_buffer_arr[i] == NULL)
      002B53 E8               [12] 2168 	mov	a,r0
      002B54 28               [12] 2169 	add	a,r0
      002B55 F5 0A            [12] 2170 	mov	_command_processing_sloc1_1_0,a
      002B57 E9               [12] 2171 	mov	a,r1
      002B58 33               [12] 2172 	rlc	a
      002B59 F5 0B            [12] 2173 	mov	(_command_processing_sloc1_1_0 + 1),a
      002B5B E5 0A            [12] 2174 	mov	a,_command_processing_sloc1_1_0
      002B5D 24 8E            [12] 2175 	add	a,#_new_buffer_arr
      002B5F F5 08            [12] 2176 	mov	_command_processing_sloc0_1_0,a
      002B61 E5 0B            [12] 2177 	mov	a,(_command_processing_sloc1_1_0 + 1)
      002B63 34 1B            [12] 2178 	addc	a,#(_new_buffer_arr >> 8)
      002B65 F5 09            [12] 2179 	mov	(_command_processing_sloc0_1_0 + 1),a
      002B67 85 08 82         [24] 2180 	mov	dpl,_command_processing_sloc0_1_0
      002B6A 85 09 83         [24] 2181 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002B6D E0               [24] 2182 	movx	a,@dptr
      002B6E FB               [12] 2183 	mov	r3,a
      002B6F A3               [24] 2184 	inc	dptr
      002B70 E0               [24] 2185 	movx	a,@dptr
      002B71 4B               [12] 2186 	orl	a,r3
      002B72 70 1E            [24] 2187 	jnz	00131$
                                   2188 ;	character.c:221: printf_tiny("\033[1;36m\n\rBuffer [%d] already cleared!!\n\r");
      002B74 C0 07            [24] 2189 	push	ar7
      002B76 C0 06            [24] 2190 	push	ar6
      002B78 C0 05            [24] 2191 	push	ar5
      002B7A 74 A4            [12] 2192 	mov	a,#___str_33
      002B7C C0 E0            [24] 2193 	push	acc
      002B7E 74 4A            [12] 2194 	mov	a,#(___str_33 >> 8)
      002B80 C0 E0            [24] 2195 	push	acc
      002B82 12 35 27         [24] 2196 	lcall	_printf_tiny
      002B85 15 81            [12] 2197 	dec	sp
      002B87 15 81            [12] 2198 	dec	sp
      002B89 D0 05            [24] 2199 	pop	ar5
      002B8B D0 06            [24] 2200 	pop	ar6
      002B8D D0 07            [24] 2201 	pop	ar7
                                   2202 ;	character.c:222: break;
      002B8F 02 2D 11         [24] 2203 	ljmp	00134$
      002B92                       2204 00131$:
                                   2205 ;	character.c:224: printf("\033[1;36m\n\r**Buffer [%d]**\n\r",i);
      002B92 C0 05            [24] 2206 	push	ar5
      002B94 C0 06            [24] 2207 	push	ar6
      002B96 C0 07            [24] 2208 	push	ar7
      002B98 C0 07            [24] 2209 	push	ar7
      002B9A C0 06            [24] 2210 	push	ar6
      002B9C C0 05            [24] 2211 	push	ar5
      002B9E C0 01            [24] 2212 	push	ar1
      002BA0 C0 00            [24] 2213 	push	ar0
      002BA2 C0 00            [24] 2214 	push	ar0
      002BA4 C0 01            [24] 2215 	push	ar1
      002BA6 74 CD            [12] 2216 	mov	a,#___str_34
      002BA8 C0 E0            [24] 2217 	push	acc
      002BAA 74 4A            [12] 2218 	mov	a,#(___str_34 >> 8)
      002BAC C0 E0            [24] 2219 	push	acc
      002BAE 74 80            [12] 2220 	mov	a,#0x80
      002BB0 C0 E0            [24] 2221 	push	acc
      002BB2 12 39 57         [24] 2222 	lcall	_printf
      002BB5 E5 81            [12] 2223 	mov	a,sp
      002BB7 24 FB            [12] 2224 	add	a,#0xfb
      002BB9 F5 81            [12] 2225 	mov	sp,a
      002BBB D0 00            [24] 2226 	pop	ar0
      002BBD D0 01            [24] 2227 	pop	ar1
                                   2228 ;	character.c:225: printf("\033[1;0m\n\rBuffer [%d] : Start Address = [%p] \n\r",i,new_buffer_arr[i]);
      002BBF 85 08 82         [24] 2229 	mov	dpl,_command_processing_sloc0_1_0
      002BC2 85 09 83         [24] 2230 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002BC5 E0               [24] 2231 	movx	a,@dptr
      002BC6 FB               [12] 2232 	mov	r3,a
      002BC7 A3               [24] 2233 	inc	dptr
      002BC8 E0               [24] 2234 	movx	a,@dptr
      002BC9 FC               [12] 2235 	mov	r4,a
      002BCA 7A 00            [12] 2236 	mov	r2,#0x00
      002BCC C0 01            [24] 2237 	push	ar1
      002BCE C0 00            [24] 2238 	push	ar0
      002BD0 C0 03            [24] 2239 	push	ar3
      002BD2 C0 04            [24] 2240 	push	ar4
      002BD4 C0 02            [24] 2241 	push	ar2
      002BD6 C0 00            [24] 2242 	push	ar0
      002BD8 C0 01            [24] 2243 	push	ar1
      002BDA 74 E8            [12] 2244 	mov	a,#___str_35
      002BDC C0 E0            [24] 2245 	push	acc
      002BDE 74 4A            [12] 2246 	mov	a,#(___str_35 >> 8)
      002BE0 C0 E0            [24] 2247 	push	acc
      002BE2 74 80            [12] 2248 	mov	a,#0x80
      002BE4 C0 E0            [24] 2249 	push	acc
      002BE6 12 39 57         [24] 2250 	lcall	_printf
      002BE9 E5 81            [12] 2251 	mov	a,sp
      002BEB 24 F8            [12] 2252 	add	a,#0xf8
      002BED F5 81            [12] 2253 	mov	sp,a
      002BEF D0 00            [24] 2254 	pop	ar0
      002BF1 D0 01            [24] 2255 	pop	ar1
      002BF3 D0 05            [24] 2256 	pop	ar5
      002BF5 D0 06            [24] 2257 	pop	ar6
      002BF7 D0 07            [24] 2258 	pop	ar7
                                   2259 ;	character.c:226: printf("\033[1;0m\n\rBuffer [%d] : End Address   = [%p] \n\r",i,new_buffer_arr[i] + buffer_size_arr[i]);
      002BF9 85 08 82         [24] 2260 	mov	dpl,_command_processing_sloc0_1_0
      002BFC 85 09 83         [24] 2261 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002BFF E0               [24] 2262 	movx	a,@dptr
      002C00 FB               [12] 2263 	mov	r3,a
      002C01 A3               [24] 2264 	inc	dptr
      002C02 E0               [24] 2265 	movx	a,@dptr
      002C03 FC               [12] 2266 	mov	r4,a
      002C04 E5 0A            [12] 2267 	mov	a,_command_processing_sloc1_1_0
      002C06 24 A2            [12] 2268 	add	a,#_buffer_size_arr
      002C08 FA               [12] 2269 	mov	r2,a
      002C09 E5 0B            [12] 2270 	mov	a,(_command_processing_sloc1_1_0 + 1)
      002C0B 34 1D            [12] 2271 	addc	a,#(_buffer_size_arr >> 8)
      002C0D FF               [12] 2272 	mov	r7,a
      002C0E 8A 82            [24] 2273 	mov	dpl,r2
      002C10 8F 83            [24] 2274 	mov	dph,r7
      002C12 E0               [24] 2275 	movx	a,@dptr
      002C13 FD               [12] 2276 	mov	r5,a
      002C14 A3               [24] 2277 	inc	dptr
      002C15 E0               [24] 2278 	movx	a,@dptr
      002C16 FE               [12] 2279 	mov	r6,a
      002C17 ED               [12] 2280 	mov	a,r5
      002C18 2B               [12] 2281 	add	a,r3
      002C19 FB               [12] 2282 	mov	r3,a
      002C1A EE               [12] 2283 	mov	a,r6
      002C1B 3C               [12] 2284 	addc	a,r4
      002C1C FC               [12] 2285 	mov	r4,a
      002C1D 7E 00            [12] 2286 	mov	r6,#0x00
      002C1F C0 07            [24] 2287 	push	ar7
      002C21 C0 06            [24] 2288 	push	ar6
      002C23 C0 05            [24] 2289 	push	ar5
      002C25 C0 02            [24] 2290 	push	ar2
      002C27 C0 01            [24] 2291 	push	ar1
      002C29 C0 00            [24] 2292 	push	ar0
      002C2B C0 03            [24] 2293 	push	ar3
      002C2D C0 04            [24] 2294 	push	ar4
      002C2F C0 06            [24] 2295 	push	ar6
      002C31 C0 00            [24] 2296 	push	ar0
      002C33 C0 01            [24] 2297 	push	ar1
      002C35 74 16            [12] 2298 	mov	a,#___str_36
      002C37 C0 E0            [24] 2299 	push	acc
      002C39 74 4B            [12] 2300 	mov	a,#(___str_36 >> 8)
      002C3B C0 E0            [24] 2301 	push	acc
      002C3D 74 80            [12] 2302 	mov	a,#0x80
      002C3F C0 E0            [24] 2303 	push	acc
      002C41 12 39 57         [24] 2304 	lcall	_printf
      002C44 E5 81            [12] 2305 	mov	a,sp
      002C46 24 F8            [12] 2306 	add	a,#0xf8
      002C48 F5 81            [12] 2307 	mov	sp,a
      002C4A D0 00            [24] 2308 	pop	ar0
      002C4C D0 01            [24] 2309 	pop	ar1
      002C4E D0 02            [24] 2310 	pop	ar2
      002C50 D0 05            [24] 2311 	pop	ar5
      002C52 D0 06            [24] 2312 	pop	ar6
      002C54 D0 07            [24] 2313 	pop	ar7
                                   2314 ;	character.c:227: printf("\033[1;0m\n\rBuffer [%d] : Total Size    = [%d] \n\r",i,buffer_size_arr[i]);
      002C56 8A 82            [24] 2315 	mov	dpl,r2
      002C58 8F 83            [24] 2316 	mov	dph,r7
      002C5A E0               [24] 2317 	movx	a,@dptr
      002C5B FA               [12] 2318 	mov	r2,a
      002C5C A3               [24] 2319 	inc	dptr
      002C5D E0               [24] 2320 	movx	a,@dptr
      002C5E FF               [12] 2321 	mov	r7,a
      002C5F C0 07            [24] 2322 	push	ar7
      002C61 C0 06            [24] 2323 	push	ar6
      002C63 C0 05            [24] 2324 	push	ar5
      002C65 C0 01            [24] 2325 	push	ar1
      002C67 C0 00            [24] 2326 	push	ar0
      002C69 C0 02            [24] 2327 	push	ar2
      002C6B C0 07            [24] 2328 	push	ar7
      002C6D C0 00            [24] 2329 	push	ar0
      002C6F C0 01            [24] 2330 	push	ar1
      002C71 74 44            [12] 2331 	mov	a,#___str_37
      002C73 C0 E0            [24] 2332 	push	acc
      002C75 74 4B            [12] 2333 	mov	a,#(___str_37 >> 8)
      002C77 C0 E0            [24] 2334 	push	acc
      002C79 74 80            [12] 2335 	mov	a,#0x80
      002C7B C0 E0            [24] 2336 	push	acc
      002C7D 12 39 57         [24] 2337 	lcall	_printf
      002C80 E5 81            [12] 2338 	mov	a,sp
      002C82 24 F9            [12] 2339 	add	a,#0xf9
      002C84 F5 81            [12] 2340 	mov	sp,a
      002C86 D0 00            [24] 2341 	pop	ar0
      002C88 D0 01            [24] 2342 	pop	ar1
      002C8A D0 05            [24] 2343 	pop	ar5
      002C8C D0 06            [24] 2344 	pop	ar6
      002C8E D0 07            [24] 2345 	pop	ar7
                                   2346 ;	character.c:228: if(i == 0)
      002C90 D0 07            [24] 2347 	pop	ar7
      002C92 D0 06            [24] 2348 	pop	ar6
      002C94 D0 05            [24] 2349 	pop	ar5
      002C96 E8               [12] 2350 	mov	a,r0
      002C97 49               [12] 2351 	orl	a,r1
      002C98 70 6F            [24] 2352 	jnz	00144$
                                   2353 ;	character.c:230: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*storage_character_count);
      002C9A 8D 82            [24] 2354 	mov	dpl,r5
      002C9C 8E 83            [24] 2355 	mov	dph,r6
      002C9E 8F F0            [24] 2356 	mov	b,r7
      002CA0 12 43 83         [24] 2357 	lcall	__gptrget
      002CA3 FB               [12] 2358 	mov	r3,a
      002CA4 A3               [24] 2359 	inc	dptr
      002CA5 12 43 83         [24] 2360 	lcall	__gptrget
      002CA8 FC               [12] 2361 	mov	r4,a
      002CA9 C0 07            [24] 2362 	push	ar7
      002CAB C0 06            [24] 2363 	push	ar6
      002CAD C0 05            [24] 2364 	push	ar5
      002CAF C0 01            [24] 2365 	push	ar1
      002CB1 C0 00            [24] 2366 	push	ar0
      002CB3 C0 03            [24] 2367 	push	ar3
      002CB5 C0 04            [24] 2368 	push	ar4
      002CB7 C0 00            [24] 2369 	push	ar0
      002CB9 C0 01            [24] 2370 	push	ar1
      002CBB 74 72            [12] 2371 	mov	a,#___str_38
      002CBD C0 E0            [24] 2372 	push	acc
      002CBF 74 4B            [12] 2373 	mov	a,#(___str_38 >> 8)
      002CC1 C0 E0            [24] 2374 	push	acc
      002CC3 12 35 27         [24] 2375 	lcall	_printf_tiny
      002CC6 E5 81            [12] 2376 	mov	a,sp
      002CC8 24 FA            [12] 2377 	add	a,#0xfa
      002CCA F5 81            [12] 2378 	mov	sp,a
      002CCC D0 00            [24] 2379 	pop	ar0
      002CCE D0 01            [24] 2380 	pop	ar1
                                   2381 ;	character.c:231: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*total_characters_count);
      002CD0 85 10 82         [24] 2382 	mov	dpl,_command_processing_sloc3_1_0
      002CD3 85 11 83         [24] 2383 	mov	dph,(_command_processing_sloc3_1_0 + 1)
      002CD6 85 12 F0         [24] 2384 	mov	b,(_command_processing_sloc3_1_0 + 2)
      002CD9 12 43 83         [24] 2385 	lcall	__gptrget
      002CDC FB               [12] 2386 	mov	r3,a
      002CDD A3               [24] 2387 	inc	dptr
      002CDE 12 43 83         [24] 2388 	lcall	__gptrget
      002CE1 FC               [12] 2389 	mov	r4,a
      002CE2 C0 01            [24] 2390 	push	ar1
      002CE4 C0 00            [24] 2391 	push	ar0
      002CE6 C0 03            [24] 2392 	push	ar3
      002CE8 C0 04            [24] 2393 	push	ar4
      002CEA C0 00            [24] 2394 	push	ar0
      002CEC C0 01            [24] 2395 	push	ar1
      002CEE 74 72            [12] 2396 	mov	a,#___str_38
      002CF0 C0 E0            [24] 2397 	push	acc
      002CF2 74 4B            [12] 2398 	mov	a,#(___str_38 >> 8)
      002CF4 C0 E0            [24] 2399 	push	acc
      002CF6 12 35 27         [24] 2400 	lcall	_printf_tiny
      002CF9 E5 81            [12] 2401 	mov	a,sp
      002CFB 24 FA            [12] 2402 	add	a,#0xfa
      002CFD F5 81            [12] 2403 	mov	sp,a
      002CFF D0 00            [24] 2404 	pop	ar0
      002D01 D0 01            [24] 2405 	pop	ar1
      002D03 D0 05            [24] 2406 	pop	ar5
      002D05 D0 06            [24] 2407 	pop	ar6
      002D07 D0 07            [24] 2408 	pop	ar7
      002D09                       2409 00144$:
                                   2410 ;	character.c:216: for(int i=0;i<*new_buffer_index;i++)
      002D09 08               [12] 2411 	inc	r0
      002D0A B8 00 01         [24] 2412 	cjne	r0,#0x00,00257$
      002D0D 09               [12] 2413 	inc	r1
      002D0E                       2414 00257$:
      002D0E 02 2B 2F         [24] 2415 	ljmp	00143$
      002D11                       2416 00134$:
                                   2417 ;	character.c:235: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002D11 C0 07            [24] 2418 	push	ar7
      002D13 C0 06            [24] 2419 	push	ar6
      002D15 C0 05            [24] 2420 	push	ar5
      002D17 74 DB            [12] 2421 	mov	a,#___str_5
      002D19 C0 E0            [24] 2422 	push	acc
      002D1B 74 44            [12] 2423 	mov	a,#(___str_5 >> 8)
      002D1D C0 E0            [24] 2424 	push	acc
      002D1F 12 35 27         [24] 2425 	lcall	_printf_tiny
      002D22 15 81            [12] 2426 	dec	sp
      002D24 15 81            [12] 2427 	dec	sp
      002D26 D0 05            [24] 2428 	pop	ar5
      002D28 D0 06            [24] 2429 	pop	ar6
      002D2A D0 07            [24] 2430 	pop	ar7
                                   2431 ;	character.c:236: *storage_character_count = 0;
      002D2C 8D 82            [24] 2432 	mov	dpl,r5
      002D2E 8E 83            [24] 2433 	mov	dph,r6
      002D30 8F F0            [24] 2434 	mov	b,r7
      002D32 E4               [12] 2435 	clr	a
      002D33 12 35 0C         [24] 2436 	lcall	__gptrput
      002D36 A3               [24] 2437 	inc	dptr
      002D37 12 35 0C         [24] 2438 	lcall	__gptrput
                                   2439 ;	character.c:237: *total_characters_count = 0;
      002D3A 85 10 82         [24] 2440 	mov	dpl,_command_processing_sloc3_1_0
      002D3D 85 11 83         [24] 2441 	mov	dph,(_command_processing_sloc3_1_0 + 1)
      002D40 85 12 F0         [24] 2442 	mov	b,(_command_processing_sloc3_1_0 + 2)
      002D43 12 35 0C         [24] 2443 	lcall	__gptrput
      002D46 A3               [24] 2444 	inc	dptr
      002D47 12 35 0C         [24] 2445 	lcall	__gptrput
                                   2446 ;	character.c:239: length = 32;
      002D4A 90 1B 75         [24] 2447 	mov	dptr,#_length
      002D4D 74 20            [12] 2448 	mov	a,#0x20
      002D4F F0               [24] 2449 	movx	@dptr,a
      002D50 E4               [12] 2450 	clr	a
      002D51 A3               [24] 2451 	inc	dptr
      002D52 F0               [24] 2452 	movx	@dptr,a
                                   2453 ;	character.c:240: buffer0_hexdump(length);
      002D53 90 00 20         [24] 2454 	mov	dptr,#0x0020
      002D56 12 21 B2         [24] 2455 	lcall	_buffer0_hexdump
                                   2456 ;	character.c:241: empty_buffer0();
      002D59 12 21 7C         [24] 2457 	lcall	_empty_buffer0
                                   2458 ;	character.c:245: }
      002D5C                       2459 00138$:
                                   2460 ;	character.c:247: return ALL_BUFFER_NOT_CLEARED;
      002D5C 90 00 02         [24] 2461 	mov	dptr,#0x0002
                                   2462 ;	character.c:248: }
      002D5F 22               [24] 2463 	ret
                                   2464 	.area CSEG    (CODE)
                                   2465 	.area CONST   (CODE)
                                   2466 	.area CONST   (CODE)
      0044A4                       2467 ___str_0:
      0044A4 1B                    2468 	.db 0x1b
      0044A5 5B 31 3B 33 34 6D     2469 	.ascii "[1;34m"
      0044AB 0A                    2470 	.db 0x0a
      0044AC 0D                    2471 	.db 0x0d
      0044AD 00                    2472 	.db 0x00
                                   2473 	.area CSEG    (CODE)
                                   2474 	.area CONST   (CODE)
      0044AE                       2475 ___str_1:
      0044AE 1B                    2476 	.db 0x1b
      0044AF 5B 31 3B 33 34 6D 25  2477 	.ascii "[1;34m%p :"
             70 20 3A
      0044B9 00                    2478 	.db 0x00
                                   2479 	.area CSEG    (CODE)
                                   2480 	.area CONST   (CODE)
      0044BA                       2481 ___str_2:
      0044BA 1B                    2482 	.db 0x1b
      0044BB 5B 31 3B 33 34 6D 20  2483 	.ascii "[1;34m XX"
             58 58
      0044C4 00                    2484 	.db 0x00
                                   2485 	.area CSEG    (CODE)
                                   2486 	.area CONST   (CODE)
      0044C5                       2487 ___str_3:
      0044C5 1B                    2488 	.db 0x1b
      0044C6 5B 31 3B 33 34 6D 20  2489 	.ascii "[1;34m %x"
             25 78
      0044CF 00                    2490 	.db 0x00
                                   2491 	.area CSEG    (CODE)
                                   2492 	.area CONST   (CODE)
      0044D0                       2493 ___str_4:
      0044D0 1B                    2494 	.db 0x1b
      0044D1 5B 31 3B 33 34 6D 20  2495 	.ascii "[1;34m %d"
             25 64
      0044DA 00                    2496 	.db 0x00
                                   2497 	.area CSEG    (CODE)
                                   2498 	.area CONST   (CODE)
      0044DB                       2499 ___str_5:
      0044DB 1B                    2500 	.db 0x1b
      0044DC 5B 31 3B 33 33 6D 7C  2501 	.ascii "[1;33m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004513 0A                    2502 	.db 0x0a
      004514 0D                    2503 	.db 0x0d
      004515 00                    2504 	.db 0x00
                                   2505 	.area CSEG    (CODE)
                                   2506 	.area CONST   (CODE)
      004516                       2507 ___str_6:
      004516 1B                    2508 	.db 0x1b
      004517 5B 31 3B 33 33 6D 7C  2509 	.ascii "[1;33m|************ Processing [+] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 2B 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      00454E 0A                    2510 	.db 0x0a
      00454F 0D                    2511 	.db 0x0d
      004550 00                    2512 	.db 0x00
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      004551                       2515 ___str_7:
      004551 1B                    2516 	.db 0x1b
      004552 5B 31 3B 30           2517 	.ascii "[1;0"
      004556 0A                    2518 	.db 0x0a
      004557 0D                    2519 	.db 0x0d
      004558 45 6E 74 65 72 20 73  2520 	.ascii "Enter size:"
             69 7A 65 3A
      004563 00                    2521 	.db 0x00
                                   2522 	.area CSEG    (CODE)
                                   2523 	.area CONST   (CODE)
      004564                       2524 ___str_8:
      004564 1B                    2525 	.db 0x1b
      004565 5B 31 3B 30 6D 53 69  2526 	.ascii "[1;0mSize after atoi = %d"
             7A 65 20 61 66 74 65
             72 20 61 74 6F 69 20
             3D 20 25 64
      00457E 0D                    2527 	.db 0x0d
      00457F 0A                    2528 	.db 0x0a
      004580 00                    2529 	.db 0x00
                                   2530 	.area CSEG    (CODE)
                                   2531 	.area CONST   (CODE)
      004581                       2532 ___str_9:
      004581 1B                    2533 	.db 0x1b
      004582 5B 31 3B 33 31 6D 49  2534 	.ascii "[1;31mInvalid Input : The buffer size should be in the range"
             6E 76 61 6C 69 64 20
             49 6E 70 75 74 20 3A
             20 54 68 65 20 62 75
             66 66 65 72 20 73 69
             7A 65 20 73 68 6F 75
             6C 64 20 62 65 20 69
             6E 20 74 68 65 20 72
             61 6E 67 65
      0045BE 20 5B 33 30 2C 20 33  2535 	.ascii " [30, 300]"
             30 30 5D
      0045C8 0A                    2536 	.db 0x0a
      0045C9 0D                    2537 	.db 0x0d
      0045CA 0A                    2538 	.db 0x0a
      0045CB 0D                    2539 	.db 0x0d
      0045CC 00                    2540 	.db 0x00
                                   2541 	.area CSEG    (CODE)
                                   2542 	.area CONST   (CODE)
      0045CD                       2543 ___str_10:
      0045CD 1B                    2544 	.db 0x1b
      0045CE 5B 31 3B 33 31 6D 49  2545 	.ascii "[1;31mInvalid input : Failed to allocate buffer"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 46 61 69 6C 65 64
             20 74 6F 20 61 6C 6C
             6F 63 61 74 65 20 62
             75 66 66 65 72
      0045FD 0A                    2546 	.db 0x0a
      0045FE 0D                    2547 	.db 0x0d
      0045FF 0A                    2548 	.db 0x0a
      004600 0D                    2549 	.db 0x0d
      004601 00                    2550 	.db 0x00
                                   2551 	.area CSEG    (CODE)
                                   2552 	.area CONST   (CODE)
      004602                       2553 ___str_11:
      004602 1B                    2554 	.db 0x1b
      004603 5B 31 3B 30 6D 4E 65  2555 	.ascii "[1;0mNew buffer index = %d"
             77 20 62 75 66 66 65
             72 20 69 6E 64 65 78
             20 3D 20 25 64
      00461D 0A                    2556 	.db 0x0a
      00461E 0D                    2557 	.db 0x0d
      00461F 00                    2558 	.db 0x00
                                   2559 	.area CSEG    (CODE)
                                   2560 	.area CONST   (CODE)
      004620                       2561 ___str_12:
      004620 1B                    2562 	.db 0x1b
      004621 5B 31 3B 30 6D 4E 65  2563 	.ascii "[1;0mNew buffer allocated successfully : Buffer[%d]"
             77 20 62 75 66 66 65
             72 20 61 6C 6C 6F 63
             61 74 65 64 20 73 75
             63 63 65 73 73 66 75
             6C 6C 79 20 3A 20 42
             75 66 66 65 72 5B 25
             64 5D
      004654 0A                    2564 	.db 0x0a
      004655 0D                    2565 	.db 0x0d
      004656 00                    2566 	.db 0x00
                                   2567 	.area CSEG    (CODE)
                                   2568 	.area CONST   (CODE)
      004657                       2569 ___str_13:
      004657 1B                    2570 	.db 0x1b
      004658 5B 31 3B 30 6D 54 6F  2571 	.ascii "[1;0mTotal Number of Buffers including buffer0 & buffer1 = ["
             74 61 6C 20 4E 75 6D
             62 65 72 20 6F 66 20
             42 75 66 66 65 72 73
             20 69 6E 63 6C 75 64
             69 6E 67 20 62 75 66
             66 65 72 30 20 26 20
             62 75 66 66 65 72 31
             20 3D 20 5B
      004694 25 64 5D              2572 	.ascii "%d]"
      004697 0A                    2573 	.db 0x0a
      004698 0D                    2574 	.db 0x0d
      004699 00                    2575 	.db 0x00
                                   2576 	.area CSEG    (CODE)
                                   2577 	.area CONST   (CODE)
      00469A                       2578 ___str_14:
      00469A 1B                    2579 	.db 0x1b
      00469B 5B 31 3B 30 6D 54 6F  2580 	.ascii "[1;0mTotal Filled Buffers = [%d] "
             74 61 6C 20 46 69 6C
             6C 65 64 20 42 75 66
             66 65 72 73 20 3D 20
             5B 25 64 5D 20
      0046BC 09                    2581 	.db 0x09
      0046BD 20 54 6F 74 61 6C 20  2582 	.ascii " Total Empty Buffers = [%d] "
             45 6D 70 74 79 20 42
             75 66 66 65 72 73 20
             3D 20 5B 25 64 5D 20
      0046D9 0A                    2583 	.db 0x0a
      0046DA 0D                    2584 	.db 0x0d
      0046DB 0A                    2585 	.db 0x0a
      0046DC 0D                    2586 	.db 0x0d
      0046DD 00                    2587 	.db 0x00
                                   2588 	.area CSEG    (CODE)
                                   2589 	.area CONST   (CODE)
      0046DE                       2590 ___str_15:
      0046DE 1B                    2591 	.db 0x1b
      0046DF 5B 31 3B 33 33 6D 7C  2592 	.ascii "[1;33m|************ Processing [-] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 2D 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004716 0A                    2593 	.db 0x0a
      004717 0D                    2594 	.db 0x0d
      004718 00                    2595 	.db 0x00
                                   2596 	.area CSEG    (CODE)
                                   2597 	.area CONST   (CODE)
      004719                       2598 ___str_16:
      004719 1B                    2599 	.db 0x1b
      00471A 5B 31 3B 30 6D        2600 	.ascii "[1;0m"
      00471F 0A                    2601 	.db 0x0a
      004720 0D                    2602 	.db 0x0d
      004721 45 6E 74 65 72 20 62  2603 	.ascii "Enter buffer number to be deleted:"
             75 66 66 65 72 20 6E
             75 6D 62 65 72 20 74
             6F 20 62 65 20 64 65
             6C 65 74 65 64 3A
      004743 0A                    2604 	.db 0x0a
      004744 0D                    2605 	.db 0x0d
      004745 00                    2606 	.db 0x00
                                   2607 	.area CSEG    (CODE)
                                   2608 	.area CONST   (CODE)
      004746                       2609 ___str_17:
      004746 1B                    2610 	.db 0x1b
      004747 5B 31 3B 30 6D 43 75  2611 	.ascii "[1;0mCurrent number of buffers are [%d] (index starting from"
             72 72 65 6E 74 20 6E
             75 6D 62 65 72 20 6F
             66 20 62 75 66 66 65
             72 73 20 61 72 65 20
             5B 25 64 5D 20 28 69
             6E 64 65 78 20 73 74
             61 72 74 69 6E 67 20
             66 72 6F 6D
      004783 20 30 29 3A           2612 	.ascii " 0):"
      004787 0A                    2613 	.db 0x0a
      004788 0D                    2614 	.db 0x0d
      004789 0A                    2615 	.db 0x0a
      00478A 0D                    2616 	.db 0x0d
      00478B 00                    2617 	.db 0x00
                                   2618 	.area CSEG    (CODE)
                                   2619 	.area CONST   (CODE)
      00478C                       2620 ___str_18:
      00478C 1B                    2621 	.db 0x1b
      00478D 5B 31 3B 33 31 6D 49  2622 	.ascii "[1;31mInvalid input : invalid digits entered "
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 69 6E 76 61 6C 69
             64 20 64 69 67 69 74
             73 20 65 6E 74 65 72
             65 64 20
      0047BA 0A                    2623 	.db 0x0a
      0047BB 0D                    2624 	.db 0x0d
      0047BC 0A                    2625 	.db 0x0a
      0047BD 0D                    2626 	.db 0x0d
      0047BE 00                    2627 	.db 0x00
                                   2628 	.area CSEG    (CODE)
                                   2629 	.area CONST   (CODE)
      0047BF                       2630 ___str_19:
      0047BF 1B                    2631 	.db 0x1b
      0047C0 5B 31 3B 33 31 6D 49  2632 	.ascii "[1;31mInvalid input : buffer number can't be 0"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 63 61 6E 27 74 20
             62 65 20 30
      0047EE 0A                    2633 	.db 0x0a
      0047EF 0D                    2634 	.db 0x0d
      0047F0 0A                    2635 	.db 0x0a
      0047F1 00                    2636 	.db 0x00
                                   2637 	.area CSEG    (CODE)
                                   2638 	.area CONST   (CODE)
      0047F2                       2639 ___str_20:
      0047F2 1B                    2640 	.db 0x1b
      0047F3 5B 31 3B 33 31 6D 49  2641 	.ascii "[1;31mInvalid input : buffer[%d] was already cleared earlier"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             5B 25 64 5D 20 77 61
             73 20 61 6C 72 65 61
             64 79 20 63 6C 65 61
             72 65 64 20 65 61 72
             6C 69 65 72
      00482F 0A                    2642 	.db 0x0a
      004830 0D                    2643 	.db 0x0d
      004831 00                    2644 	.db 0x00
                                   2645 	.area CSEG    (CODE)
                                   2646 	.area CONST   (CODE)
      004832                       2647 ___str_21:
      004832 1B                    2648 	.db 0x1b
      004833 5B 31 3B 33 31 6D 49  2649 	.ascii "[1;31mInvalid input : buffer number doesn't exist"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 64 6F 65 73 6E 27
             74 20 65 78 69 73 74
      004864 0A                    2650 	.db 0x0a
      004865 0D                    2651 	.db 0x0d
      004866 00                    2652 	.db 0x00
                                   2653 	.area CSEG    (CODE)
                                   2654 	.area CONST   (CODE)
      004867                       2655 ___str_22:
      004867 1B                    2656 	.db 0x1b
      004868 5B 31 3B 30 6D 42 75  2657 	.ascii "[1;0mBuffer [%d] requested to be deleted"
             66 66 65 72 20 5B 25
             64 5D 20 72 65 71 75
             65 73 74 65 64 20 74
             6F 20 62 65 20 64 65
             6C 65 74 65 64
      004890 0A                    2658 	.db 0x0a
      004891 0D                    2659 	.db 0x0d
      004892 00                    2660 	.db 0x00
                                   2661 	.area CSEG    (CODE)
                                   2662 	.area CONST   (CODE)
      004893                       2663 ___str_23:
      004893 1B                    2664 	.db 0x1b
      004894 5B 31 3B 30 6D 42 75  2665 	.ascii "[1;0mBuffer[%d] de-allocated successfully  "
             66 66 65 72 5B 25 64
             5D 20 64 65 2D 61 6C
             6C 6F 63 61 74 65 64
             20 73 75 63 63 65 73
             73 66 75 6C 6C 79 20
             20
      0048BF 0A                    2666 	.db 0x0a
      0048C0 0D                    2667 	.db 0x0d
      0048C1 00                    2668 	.db 0x00
                                   2669 	.area CSEG    (CODE)
                                   2670 	.area CONST   (CODE)
      0048C2                       2671 ___str_24:
      0048C2 1B                    2672 	.db 0x1b
      0048C3 5B 31 3B 30 6D 54 6F  2673 	.ascii "[1;0mTotal Number of Buffers after deallocation = [%d]"
             74 61 6C 20 4E 75 6D
             62 65 72 20 6F 66 20
             42 75 66 66 65 72 73
             20 61 66 74 65 72 20
             64 65 61 6C 6C 6F 63
             61 74 69 6F 6E 20 3D
             20 5B 25 64 5D
      0048F9 0A                    2674 	.db 0x0a
      0048FA 0D                    2675 	.db 0x0d
      0048FB 0A                    2676 	.db 0x0a
      0048FC 0D                    2677 	.db 0x0d
      0048FD 00                    2678 	.db 0x00
                                   2679 	.area CSEG    (CODE)
                                   2680 	.area CONST   (CODE)
      0048FE                       2681 ___str_25:
      0048FE 1B                    2682 	.db 0x1b
      0048FF 5B 31 3B 33 33 6D 7C  2683 	.ascii "[1;33m|************ Processing [@] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 40 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004936 0A                    2684 	.db 0x0a
      004937 0D                    2685 	.db 0x0d
      004938 00                    2686 	.db 0x00
                                   2687 	.area CSEG    (CODE)
                                   2688 	.area CONST   (CODE)
      004939                       2689 ___str_26:
      004939 1B                    2690 	.db 0x1b
      00493A 5B 31 3B 30 6D 42 75  2691 	.ascii "[1;0mBuffer[%d] freed"
             66 66 65 72 5B 25 64
             5D 20 66 72 65 65 64
      00494F 0A                    2692 	.db 0x0a
      004950 0D                    2693 	.db 0x0d
      004951 00                    2694 	.db 0x00
                                   2695 	.area CSEG    (CODE)
                                   2696 	.area CONST   (CODE)
      004952                       2697 ___str_27:
      004952 1B                    2698 	.db 0x1b
      004953 5B 31 3B 30 6D 42 75  2699 	.ascii "[1;0mBuffer[%d] was already NULL"
             66 66 65 72 5B 25 64
             5D 20 77 61 73 20 61
             6C 72 65 61 64 79 20
             4E 55 4C 4C
      004973 0A                    2700 	.db 0x0a
      004974 0D                    2701 	.db 0x0d
      004975 00                    2702 	.db 0x00
                                   2703 	.area CSEG    (CODE)
                                   2704 	.area CONST   (CODE)
      004976                       2705 ___str_28:
      004976 1B                    2706 	.db 0x1b
      004977 5B 31 3B 33 33 6D     2707 	.ascii "[1;33m"
      00497D 0D                    2708 	.db 0x0d
      00497E 0A                    2709 	.db 0x0a
      00497F 7C 2A 2A 2A 2A 2A 2A  2710 	.ascii "|************ Processing [=] *******************|"
             2A 2A 2A 2A 2A 2A 20
             50 72 6F 63 65 73 73
             69 6E 67 20 5B 3D 5D
             20 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      0049B0 0A                    2711 	.db 0x0a
      0049B1 0D                    2712 	.db 0x0d
      0049B2 00                    2713 	.db 0x00
                                   2714 	.area CSEG    (CODE)
                                   2715 	.area CONST   (CODE)
      0049B3                       2716 ___str_29:
      0049B3 1B                    2717 	.db 0x1b
      0049B4 5B 31 3B 33 33 6D 7C  2718 	.ascii "[1;33m|************ Processing [?] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 3F 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0049EB 0A                    2719 	.db 0x0a
      0049EC 0D                    2720 	.db 0x0d
      0049ED 00                    2721 	.db 0x00
                                   2722 	.area CSEG    (CODE)
                                   2723 	.area CONST   (CODE)
      0049EE                       2724 ___str_30:
      0049EE 20                    2725 	.ascii " "
      0049EF 1B                    2726 	.db 0x1b
      0049F0 5B 31 3B 33 34 6D     2727 	.ascii "[1;34m"
      0049F6 0D                    2728 	.db 0x0d
      0049F7 0A                    2729 	.db 0x0a
      0049F8 7C 2A 2A 2A 2A 2A 2A  2730 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      004A29 0A                    2731 	.db 0x0a
      004A2A 0D                    2732 	.db 0x0d
      004A2B 00                    2733 	.db 0x00
                                   2734 	.area CSEG    (CODE)
                                   2735 	.area CONST   (CODE)
      004A2C                       2736 ___str_31:
      004A2C 20                    2737 	.ascii " "
      004A2D 1B                    2738 	.db 0x1b
      004A2E 5B 31 3B 33 34 6D 7C  2739 	.ascii "[1;34m|*************** HEAP REPORT *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 20 48 45 41 50 20
             52 45 50 4F 52 54 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004A65 0A                    2740 	.db 0x0a
      004A66 0D                    2741 	.db 0x0d
      004A67 00                    2742 	.db 0x00
                                   2743 	.area CSEG    (CODE)
                                   2744 	.area CONST   (CODE)
      004A68                       2745 ___str_32:
      004A68 20                    2746 	.ascii " "
      004A69 1B                    2747 	.db 0x1b
      004A6A 5B 31 3B 33 34 6D 7C  2748 	.ascii "[1;34m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004AA1 0A                    2749 	.db 0x0a
      004AA2 0D                    2750 	.db 0x0d
      004AA3 00                    2751 	.db 0x00
                                   2752 	.area CSEG    (CODE)
                                   2753 	.area CONST   (CODE)
      004AA4                       2754 ___str_33:
      004AA4 1B                    2755 	.db 0x1b
      004AA5 5B 31 3B 33 36 6D     2756 	.ascii "[1;36m"
      004AAB 0A                    2757 	.db 0x0a
      004AAC 0D                    2758 	.db 0x0d
      004AAD 42 75 66 66 65 72 20  2759 	.ascii "Buffer [%d] already cleared!!"
             5B 25 64 5D 20 61 6C
             72 65 61 64 79 20 63
             6C 65 61 72 65 64 21
             21
      004ACA 0A                    2760 	.db 0x0a
      004ACB 0D                    2761 	.db 0x0d
      004ACC 00                    2762 	.db 0x00
                                   2763 	.area CSEG    (CODE)
                                   2764 	.area CONST   (CODE)
      004ACD                       2765 ___str_34:
      004ACD 1B                    2766 	.db 0x1b
      004ACE 5B 31 3B 33 36 6D     2767 	.ascii "[1;36m"
      004AD4 0A                    2768 	.db 0x0a
      004AD5 0D                    2769 	.db 0x0d
      004AD6 2A 2A 42 75 66 66 65  2770 	.ascii "**Buffer [%d]**"
             72 20 5B 25 64 5D 2A
             2A
      004AE5 0A                    2771 	.db 0x0a
      004AE6 0D                    2772 	.db 0x0d
      004AE7 00                    2773 	.db 0x00
                                   2774 	.area CSEG    (CODE)
                                   2775 	.area CONST   (CODE)
      004AE8                       2776 ___str_35:
      004AE8 1B                    2777 	.db 0x1b
      004AE9 5B 31 3B 30 6D        2778 	.ascii "[1;0m"
      004AEE 0A                    2779 	.db 0x0a
      004AEF 0D                    2780 	.db 0x0d
      004AF0 42 75 66 66 65 72 20  2781 	.ascii "Buffer [%d] : Start Address = [%p] "
             5B 25 64 5D 20 3A 20
             53 74 61 72 74 20 41
             64 64 72 65 73 73 20
             3D 20 5B 25 70 5D 20
      004B13 0A                    2782 	.db 0x0a
      004B14 0D                    2783 	.db 0x0d
      004B15 00                    2784 	.db 0x00
                                   2785 	.area CSEG    (CODE)
                                   2786 	.area CONST   (CODE)
      004B16                       2787 ___str_36:
      004B16 1B                    2788 	.db 0x1b
      004B17 5B 31 3B 30 6D        2789 	.ascii "[1;0m"
      004B1C 0A                    2790 	.db 0x0a
      004B1D 0D                    2791 	.db 0x0d
      004B1E 42 75 66 66 65 72 20  2792 	.ascii "Buffer [%d] : End Address   = [%p] "
             5B 25 64 5D 20 3A 20
             45 6E 64 20 41 64 64
             72 65 73 73 20 20 20
             3D 20 5B 25 70 5D 20
      004B41 0A                    2793 	.db 0x0a
      004B42 0D                    2794 	.db 0x0d
      004B43 00                    2795 	.db 0x00
                                   2796 	.area CSEG    (CODE)
                                   2797 	.area CONST   (CODE)
      004B44                       2798 ___str_37:
      004B44 1B                    2799 	.db 0x1b
      004B45 5B 31 3B 30 6D        2800 	.ascii "[1;0m"
      004B4A 0A                    2801 	.db 0x0a
      004B4B 0D                    2802 	.db 0x0d
      004B4C 42 75 66 66 65 72 20  2803 	.ascii "Buffer [%d] : Total Size    = [%d] "
             5B 25 64 5D 20 3A 20
             54 6F 74 61 6C 20 53
             69 7A 65 20 20 20 20
             3D 20 5B 25 64 5D 20
      004B6F 0A                    2804 	.db 0x0a
      004B70 0D                    2805 	.db 0x0d
      004B71 00                    2806 	.db 0x00
                                   2807 	.area CSEG    (CODE)
                                   2808 	.area CONST   (CODE)
      004B72                       2809 ___str_38:
      004B72 1B                    2810 	.db 0x1b
      004B73 5B 31 3B 30 6D        2811 	.ascii "[1;0m"
      004B78 0A                    2812 	.db 0x0a
      004B79 0D                    2813 	.db 0x0d
      004B7A 42 75 66 66 65 72 5B  2814 	.ascii "Buffer[%d] : Number of storage characters since last ?= [%d]"
             25 64 5D 20 3A 20 4E
             75 6D 62 65 72 20 6F
             66 20 73 74 6F 72 61
             67 65 20 63 68 61 72
             61 63 74 65 72 73 20
             73 69 6E 63 65 20 6C
             61 73 74 20 3F 3D 20
             5B 25 64 5D
      004BB6 0A                    2815 	.db 0x0a
      004BB7 0D                    2816 	.db 0x0d
      004BB8 00                    2817 	.db 0x00
                                   2818 	.area CSEG    (CODE)
                                   2819 	.area XINIT   (CODE)
      005055                       2820 __xinit__size:
      005055 30                    2821 	.db #0x30	; 48	'0'
      005056 30                    2822 	.db #0x30	; 48	'0'
      005057 30                    2823 	.db #0x30	; 48	'0'
      005058 00                    2824 	.db #0x00	; 0
      005059                       2825 __xinit__buffer_to_delete:
      005059 00 00                 2826 	.byte #0x00, #0x00	;  0
      00505B                       2827 __xinit__buff_not_cleared:
      00505B 00 00                 2828 	.byte #0x00, #0x00	;  0
      00505D 00                    2829 	.db 0x00
      00505E 00                    2830 	.db 0x00
      00505F 00                    2831 	.db 0x00
      005060 00                    2832 	.db 0x00
      005061 00                    2833 	.db 0x00
      005062 00                    2834 	.db 0x00
      005063 00                    2835 	.db 0x00
      005064 00                    2836 	.db 0x00
      005065 00                    2837 	.db 0x00
      005066 00                    2838 	.db 0x00
      005067 00                    2839 	.db 0x00
      005068 00                    2840 	.db 0x00
      005069 00                    2841 	.db 0x00
      00506A 00                    2842 	.db 0x00
      00506B 00                    2843 	.db 0x00
      00506C 00                    2844 	.db 0x00
      00506D 00                    2845 	.db 0x00
      00506E 00                    2846 	.db 0x00
      00506F 00                    2847 	.db 0x00
      005070 00                    2848 	.db 0x00
      005071 00                    2849 	.db 0x00
      005072 00                    2850 	.db 0x00
      005073 00                    2851 	.db 0x00
      005074 00                    2852 	.db 0x00
      005075 00                    2853 	.db 0x00
      005076 00                    2854 	.db 0x00
      005077 00                    2855 	.db 0x00
      005078 00                    2856 	.db 0x00
      005079 00                    2857 	.db 0x00
      00507A 00                    2858 	.db 0x00
      00507B 00                    2859 	.db 0x00
      00507C 00                    2860 	.db 0x00
      00507D 00                    2861 	.db 0x00
      00507E 00                    2862 	.db 0x00
      00507F 00                    2863 	.db 0x00
      005080 00                    2864 	.db 0x00
      005081 00                    2865 	.db 0x00
      005082 00                    2866 	.db 0x00
      005083 00                    2867 	.db 0x00
      005084 00                    2868 	.db 0x00
      005085 00                    2869 	.db 0x00
      005086 00                    2870 	.db 0x00
      005087 00                    2871 	.db 0x00
      005088 00                    2872 	.db 0x00
      005089 00                    2873 	.db 0x00
      00508A 00                    2874 	.db 0x00
      00508B 00                    2875 	.db 0x00
      00508C 00                    2876 	.db 0x00
      00508D 00                    2877 	.db 0x00
      00508E 00                    2878 	.db 0x00
      00508F 00                    2879 	.db 0x00
      005090 00                    2880 	.db 0x00
      005091 00                    2881 	.db 0x00
      005092 00                    2882 	.db 0x00
      005093 00                    2883 	.db 0x00
      005094 00                    2884 	.db 0x00
      005095 00                    2885 	.db 0x00
      005096 00                    2886 	.db 0x00
      005097 00                    2887 	.db 0x00
      005098 00                    2888 	.db 0x00
      005099 00                    2889 	.db 0x00
      00509A 00                    2890 	.db 0x00
      00509B 00                    2891 	.db 0x00
      00509C 00                    2892 	.db 0x00
      00509D 00                    2893 	.db 0x00
      00509E 00                    2894 	.db 0x00
      00509F 00                    2895 	.db 0x00
      0050A0 00                    2896 	.db 0x00
      0050A1 00                    2897 	.db 0x00
      0050A2 00                    2898 	.db 0x00
      0050A3 00                    2899 	.db 0x00
      0050A4 00                    2900 	.db 0x00
      0050A5 00                    2901 	.db 0x00
      0050A6 00                    2902 	.db 0x00
      0050A7 00                    2903 	.db 0x00
      0050A8 00                    2904 	.db 0x00
      0050A9 00                    2905 	.db 0x00
      0050AA 00                    2906 	.db 0x00
      0050AB 00                    2907 	.db 0x00
      0050AC 00                    2908 	.db 0x00
      0050AD 00                    2909 	.db 0x00
      0050AE 00                    2910 	.db 0x00
      0050AF 00                    2911 	.db 0x00
      0050B0 00                    2912 	.db 0x00
      0050B1 00                    2913 	.db 0x00
      0050B2 00                    2914 	.db 0x00
      0050B3 00                    2915 	.db 0x00
      0050B4 00                    2916 	.db 0x00
      0050B5 00                    2917 	.db 0x00
      0050B6 00                    2918 	.db 0x00
      0050B7 00                    2919 	.db 0x00
      0050B8 00                    2920 	.db 0x00
      0050B9 00                    2921 	.db 0x00
      0050BA 00                    2922 	.db 0x00
      0050BB 00                    2923 	.db 0x00
      0050BC 00                    2924 	.db 0x00
      0050BD 00                    2925 	.db 0x00
      0050BE 00                    2926 	.db 0x00
      0050BF 00                    2927 	.db 0x00
      0050C0 00                    2928 	.db 0x00
      0050C1 00                    2929 	.db 0x00
      0050C2 00                    2930 	.db 0x00
      0050C3 00                    2931 	.db 0x00
      0050C4 00                    2932 	.db 0x00
      0050C5 00                    2933 	.db 0x00
      0050C6 00                    2934 	.db 0x00
      0050C7 00                    2935 	.db 0x00
      0050C8 00                    2936 	.db 0x00
      0050C9 00                    2937 	.db 0x00
      0050CA 00                    2938 	.db 0x00
      0050CB 00                    2939 	.db 0x00
      0050CC 00                    2940 	.db 0x00
      0050CD 00                    2941 	.db 0x00
      0050CE 00                    2942 	.db 0x00
      0050CF 00                    2943 	.db 0x00
      0050D0 00                    2944 	.db 0x00
      0050D1 00                    2945 	.db 0x00
      0050D2 00                    2946 	.db 0x00
      0050D3 00                    2947 	.db 0x00
      0050D4 00                    2948 	.db 0x00
      0050D5 00                    2949 	.db 0x00
      0050D6 00                    2950 	.db 0x00
      0050D7 00                    2951 	.db 0x00
      0050D8 00                    2952 	.db 0x00
      0050D9 00                    2953 	.db 0x00
      0050DA 00                    2954 	.db 0x00
      0050DB 00                    2955 	.db 0x00
      0050DC 00                    2956 	.db 0x00
      0050DD 00                    2957 	.db 0x00
      0050DE 00                    2958 	.db 0x00
      0050DF 00                    2959 	.db 0x00
      0050E0 00                    2960 	.db 0x00
      0050E1 00                    2961 	.db 0x00
      0050E2 00                    2962 	.db 0x00
      0050E3 00                    2963 	.db 0x00
      0050E4 00                    2964 	.db 0x00
      0050E5 00                    2965 	.db 0x00
      0050E6 00                    2966 	.db 0x00
      0050E7 00                    2967 	.db 0x00
      0050E8 00                    2968 	.db 0x00
      0050E9 00                    2969 	.db 0x00
      0050EA 00                    2970 	.db 0x00
      0050EB 00                    2971 	.db 0x00
      0050EC 00                    2972 	.db 0x00
      0050ED 00                    2973 	.db 0x00
      0050EE 00                    2974 	.db 0x00
      0050EF 00                    2975 	.db 0x00
      0050F0 00                    2976 	.db 0x00
      0050F1 00                    2977 	.db 0x00
      0050F2 00                    2978 	.db 0x00
      0050F3 00                    2979 	.db 0x00
      0050F4 00                    2980 	.db 0x00
      0050F5 00                    2981 	.db 0x00
      0050F6 00                    2982 	.db 0x00
      0050F7 00                    2983 	.db 0x00
      0050F8 00                    2984 	.db 0x00
      0050F9 00                    2985 	.db 0x00
      0050FA 00                    2986 	.db 0x00
      0050FB 00                    2987 	.db 0x00
      0050FC 00                    2988 	.db 0x00
      0050FD 00                    2989 	.db 0x00
      0050FE 00                    2990 	.db 0x00
      0050FF 00                    2991 	.db 0x00
      005100 00                    2992 	.db 0x00
      005101 00                    2993 	.db 0x00
      005102 00                    2994 	.db 0x00
      005103 00                    2995 	.db 0x00
      005104 00                    2996 	.db 0x00
      005105 00                    2997 	.db 0x00
      005106 00                    2998 	.db 0x00
      005107 00                    2999 	.db 0x00
      005108 00                    3000 	.db 0x00
      005109 00                    3001 	.db 0x00
      00510A 00                    3002 	.db 0x00
      00510B 00                    3003 	.db 0x00
      00510C 00                    3004 	.db 0x00
      00510D 00                    3005 	.db 0x00
      00510E 00                    3006 	.db 0x00
      00510F 00                    3007 	.db 0x00
      005110 00                    3008 	.db 0x00
      005111 00                    3009 	.db 0x00
      005112 00                    3010 	.db 0x00
      005113 00                    3011 	.db 0x00
      005114 00                    3012 	.db 0x00
      005115 00                    3013 	.db 0x00
      005116 00                    3014 	.db 0x00
      005117 00                    3015 	.db 0x00
      005118 00                    3016 	.db 0x00
      005119 00                    3017 	.db 0x00
      00511A 00                    3018 	.db 0x00
      00511B 00                    3019 	.db 0x00
      00511C 00                    3020 	.db 0x00
      00511D 00                    3021 	.db 0x00
      00511E 00                    3022 	.db 0x00
      00511F 00                    3023 	.db 0x00
      005120 00                    3024 	.db 0x00
      005121 00                    3025 	.db 0x00
      005122 00                    3026 	.db 0x00
      005123                       3027 __xinit__buffer0and1_size:
      005123 00 00                 3028 	.byte #0x00, #0x00	;  0
                                   3029 	.area CABS    (ABS,CODE)
