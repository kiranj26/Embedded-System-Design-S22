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
      000008                        471 _buffer0_hexdump_sloc0_1_0:
      000008                        472 	.ds 2
      00000A                        473 _buffer0_hexdump_sloc1_1_0:
      00000A                        474 	.ds 1
      00000B                        475 _buffer0_hexdump_sloc2_1_0:
      00000B                        476 	.ds 1
      00000C                        477 _command_processing_sloc0_1_0:
      00000C                        478 	.ds 2
      00000E                        479 _command_processing_sloc1_1_0:
      00000E                        480 	.ds 3
      000011                        481 _command_processing_sloc2_1_0:
      000011                        482 	.ds 3
      000014                        483 _command_processing_sloc3_1_0:
      000014                        484 	.ds 2
      000016                        485 _command_processing_sloc4_1_0:
      000016                        486 	.ds 3
                                    487 ;--------------------------------------------------------
                                    488 ; overlayable items in internal ram
                                    489 ;--------------------------------------------------------
                                    490 ;--------------------------------------------------------
                                    491 ; indirectly addressable internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area ISEG    (DATA)
                                    494 ;--------------------------------------------------------
                                    495 ; absolute internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area IABS    (ABS,DATA)
                                    498 	.area IABS    (ABS,DATA)
                                    499 ;--------------------------------------------------------
                                    500 ; bit data
                                    501 ;--------------------------------------------------------
                                    502 	.area BSEG    (BIT)
                                    503 ;--------------------------------------------------------
                                    504 ; paged external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area PSEG    (PAG,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XSEG    (XDATA)
      001B75                        511 _length::
      001B75                        512 	.ds 2
      001B77                        513 _buffer0_hexdump_length_65536_53:
      001B77                        514 	.ds 2
      001B79                        515 _buffer0_hexdump_print_address_65536_54:
      001B79                        516 	.ds 1
      001B7A                        517 _command_processing_PARM_2:
      001B7A                        518 	.ds 1
      001B7B                        519 _command_processing_PARM_3:
      001B7B                        520 	.ds 3
      001B7E                        521 _command_processing_PARM_4:
      001B7E                        522 	.ds 3
      001B81                        523 _command_processing_PARM_5:
      001B81                        524 	.ds 3
      001B84                        525 _command_processing_PARM_6:
      001B84                        526 	.ds 3
      001B87                        527 _command_processing_PARM_7:
      001B87                        528 	.ds 3
      001B8A                        529 _command_processing_PARM_8:
      001B8A                        530 	.ds 2
      001B8C                        531 _command_processing_cmd_detected_65536_62:
      001B8C                        532 	.ds 2
                                    533 ;--------------------------------------------------------
                                    534 ; absolute external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XABS    (ABS,XDATA)
                                    537 ;--------------------------------------------------------
                                    538 ; external initialized ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XISEG   (XDATA)
      001CC4                        541 _size::
      001CC4                        542 	.ds 4
      001CC8                        543 _buffer_to_delete::
      001CC8                        544 	.ds 2
      001CCA                        545 _buff_not_cleared::
      001CCA                        546 	.ds 200
      001D92                        547 _buffer0and1_size::
      001D92                        548 	.ds 2
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
                                    560 ; global & static initialisations
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.area GSFINAL (CODE)
                                    565 	.area GSINIT  (CODE)
                                    566 ;--------------------------------------------------------
                                    567 ; Home
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
                                    570 	.area HOME    (CODE)
                                    571 ;--------------------------------------------------------
                                    572 ; code
                                    573 ;--------------------------------------------------------
                                    574 	.area CSEG    (CODE)
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'empty_buffer0'
                                    577 ;------------------------------------------------------------
                                    578 ;buffer0_ptr               Allocated with name '_empty_buffer0_buffer0_ptr_65536_50'
                                    579 ;i                         Allocated with name '_empty_buffer0_i_131072_51'
                                    580 ;------------------------------------------------------------
                                    581 ;	character.c:56: void empty_buffer0(void)
                                    582 ;	-----------------------------------------
                                    583 ;	 function empty_buffer0
                                    584 ;	-----------------------------------------
      0021B2                        585 _empty_buffer0:
                           000007   586 	ar7 = 0x07
                           000006   587 	ar6 = 0x06
                           000005   588 	ar5 = 0x05
                           000004   589 	ar4 = 0x04
                           000003   590 	ar3 = 0x03
                           000002   591 	ar2 = 0x02
                           000001   592 	ar1 = 0x01
                           000000   593 	ar0 = 0x00
                                    594 ;	character.c:58: char * buffer0_ptr = buffer0;
      0021B2 90 1D 96         [24]  595 	mov	dptr,#_buffer0
      0021B5 E0               [24]  596 	movx	a,@dptr
      0021B6 FE               [12]  597 	mov	r6,a
      0021B7 A3               [24]  598 	inc	dptr
      0021B8 E0               [24]  599 	movx	a,@dptr
      0021B9 FD               [12]  600 	mov	r5,a
      0021BA 7F 00            [12]  601 	mov	r7,#0x00
                                    602 ;	character.c:59: for (int i = 0; i < buffer_size_arr[0]; i++)
      0021BC 7B 00            [12]  603 	mov	r3,#0x00
      0021BE 7C 00            [12]  604 	mov	r4,#0x00
      0021C0                        605 00103$:
      0021C0 90 1D A4         [24]  606 	mov	dptr,#_buffer_size_arr
      0021C3 E0               [24]  607 	movx	a,@dptr
      0021C4 F9               [12]  608 	mov	r1,a
      0021C5 A3               [24]  609 	inc	dptr
      0021C6 E0               [24]  610 	movx	a,@dptr
      0021C7 FA               [12]  611 	mov	r2,a
      0021C8 C3               [12]  612 	clr	c
      0021C9 EB               [12]  613 	mov	a,r3
      0021CA 99               [12]  614 	subb	a,r1
      0021CB EC               [12]  615 	mov	a,r4
      0021CC 64 80            [12]  616 	xrl	a,#0x80
      0021CE 8A F0            [24]  617 	mov	b,r2
      0021D0 63 F0 80         [24]  618 	xrl	b,#0x80
      0021D3 95 F0            [12]  619 	subb	a,b
      0021D5 50 1A            [24]  620 	jnc	00105$
                                    621 ;	character.c:61: buffer0_ptr[i] = '0';
      0021D7 EB               [12]  622 	mov	a,r3
      0021D8 2E               [12]  623 	add	a,r6
      0021D9 F8               [12]  624 	mov	r0,a
      0021DA EC               [12]  625 	mov	a,r4
      0021DB 3D               [12]  626 	addc	a,r5
      0021DC F9               [12]  627 	mov	r1,a
      0021DD 8F 02            [24]  628 	mov	ar2,r7
      0021DF 88 82            [24]  629 	mov	dpl,r0
      0021E1 89 83            [24]  630 	mov	dph,r1
      0021E3 8A F0            [24]  631 	mov	b,r2
      0021E5 74 30            [12]  632 	mov	a,#0x30
      0021E7 12 36 00         [24]  633 	lcall	__gptrput
                                    634 ;	character.c:59: for (int i = 0; i < buffer_size_arr[0]; i++)
      0021EA 0B               [12]  635 	inc	r3
      0021EB BB 00 D2         [24]  636 	cjne	r3,#0x00,00103$
      0021EE 0C               [12]  637 	inc	r4
      0021EF 80 CF            [24]  638 	sjmp	00103$
      0021F1                        639 00105$:
                                    640 ;	character.c:63: }
      0021F1 22               [24]  641 	ret
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'buffer0_hexdump'
                                    644 ;------------------------------------------------------------
                                    645 ;sloc0                     Allocated with name '_buffer0_hexdump_sloc0_1_0'
                                    646 ;sloc1                     Allocated with name '_buffer0_hexdump_sloc1_1_0'
                                    647 ;sloc2                     Allocated with name '_buffer0_hexdump_sloc2_1_0'
                                    648 ;length                    Allocated with name '_buffer0_hexdump_length_65536_53'
                                    649 ;itr                       Allocated with name '_buffer0_hexdump_itr_65536_54'
                                    650 ;print_address             Allocated with name '_buffer0_hexdump_print_address_65536_54'
                                    651 ;buffer0_ptr               Allocated with name '_buffer0_hexdump_buffer0_ptr_65536_54'
                                    652 ;------------------------------------------------------------
                                    653 ;	character.c:72: void buffer0_hexdump(int length) {
                                    654 ;	-----------------------------------------
                                    655 ;	 function buffer0_hexdump
                                    656 ;	-----------------------------------------
      0021F2                        657 _buffer0_hexdump:
      0021F2 AF 83            [24]  658 	mov	r7,dph
      0021F4 E5 82            [12]  659 	mov	a,dpl
      0021F6 90 1B 77         [24]  660 	mov	dptr,#_buffer0_hexdump_length_65536_53
      0021F9 F0               [24]  661 	movx	@dptr,a
      0021FA EF               [12]  662 	mov	a,r7
      0021FB A3               [24]  663 	inc	dptr
      0021FC F0               [24]  664 	movx	@dptr,a
                                    665 ;	character.c:74: bool print_address = true;
      0021FD 90 1B 79         [24]  666 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      002200 74 01            [12]  667 	mov	a,#0x01
      002202 F0               [24]  668 	movx	@dptr,a
                                    669 ;	character.c:76: char * buffer0_ptr = new_buffer_arr[0];
      002203 90 1B 8E         [24]  670 	mov	dptr,#_new_buffer_arr
      002206 E0               [24]  671 	movx	a,@dptr
      002207 FE               [12]  672 	mov	r6,a
      002208 A3               [24]  673 	inc	dptr
      002209 E0               [24]  674 	movx	a,@dptr
      00220A FD               [12]  675 	mov	r5,a
      00220B 7F 00            [12]  676 	mov	r7,#0x00
                                    677 ;	character.c:79: printf("\033[1;34m\n\r");
      00220D C0 07            [24]  678 	push	ar7
      00220F C0 06            [24]  679 	push	ar6
      002211 C0 05            [24]  680 	push	ar5
      002213 74 A5            [12]  681 	mov	a,#___str_0
      002215 C0 E0            [24]  682 	push	acc
      002217 74 46            [12]  683 	mov	a,#(___str_0 >> 8)
      002219 C0 E0            [24]  684 	push	acc
      00221B 74 80            [12]  685 	mov	a,#0x80
      00221D C0 E0            [24]  686 	push	acc
      00221F 12 3A 4B         [24]  687 	lcall	_printf
      002222 15 81            [12]  688 	dec	sp
      002224 15 81            [12]  689 	dec	sp
      002226 15 81            [12]  690 	dec	sp
      002228 D0 05            [24]  691 	pop	ar5
      00222A D0 06            [24]  692 	pop	ar6
      00222C D0 07            [24]  693 	pop	ar7
                                    694 ;	character.c:81: while (itr < buffer0and1_size)
      00222E 90 1B 77         [24]  695 	mov	dptr,#_buffer0_hexdump_length_65536_53
      002231 E0               [24]  696 	movx	a,@dptr
      002232 FB               [12]  697 	mov	r3,a
      002233 A3               [24]  698 	inc	dptr
      002234 E0               [24]  699 	movx	a,@dptr
      002235 FC               [12]  700 	mov	r4,a
      002236 E4               [12]  701 	clr	a
      002237 BB 10 04         [24]  702 	cjne	r3,#0x10,00146$
      00223A BC 00 01         [24]  703 	cjne	r4,#0x00,00146$
      00223D 04               [12]  704 	inc	a
      00223E                        705 00146$:
      00223E F5 0A            [12]  706 	mov	_buffer0_hexdump_sloc1_1_0,a
      002240 E4               [12]  707 	clr	a
      002241 BB 20 04         [24]  708 	cjne	r3,#0x20,00148$
      002244 BC 00 01         [24]  709 	cjne	r4,#0x00,00148$
      002247 04               [12]  710 	inc	a
      002248                        711 00148$:
      002248 F9               [12]  712 	mov	r1,a
      002249 E4               [12]  713 	clr	a
      00224A F5 08            [12]  714 	mov	_buffer0_hexdump_sloc0_1_0,a
      00224C F5 09            [12]  715 	mov	(_buffer0_hexdump_sloc0_1_0 + 1),a
      00224E                        716 00112$:
      00224E C0 01            [24]  717 	push	ar1
      002250 90 1D 92         [24]  718 	mov	dptr,#_buffer0and1_size
      002253 E0               [24]  719 	movx	a,@dptr
      002254 F8               [12]  720 	mov	r0,a
      002255 A3               [24]  721 	inc	dptr
      002256 E0               [24]  722 	movx	a,@dptr
      002257 F9               [12]  723 	mov	r1,a
      002258 C3               [12]  724 	clr	c
      002259 E5 08            [12]  725 	mov	a,_buffer0_hexdump_sloc0_1_0
      00225B 98               [12]  726 	subb	a,r0
      00225C E5 09            [12]  727 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      00225E 64 80            [12]  728 	xrl	a,#0x80
      002260 89 F0            [24]  729 	mov	b,r1
      002262 63 F0 80         [24]  730 	xrl	b,#0x80
      002265 95 F0            [12]  731 	subb	a,b
      002267 D0 01            [24]  732 	pop	ar1
      002269 40 01            [24]  733 	jc	00150$
      00226B 22               [24]  734 	ret
      00226C                        735 00150$:
                                    736 ;	character.c:84: if (print_address)
      00226C 90 1B 79         [24]  737 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      00226F E0               [24]  738 	movx	a,@dptr
      002270 70 03            [24]  739 	jnz	00151$
      002272 02 22 F8         [24]  740 	ljmp	00102$
      002275                        741 00151$:
                                    742 ;	character.c:86: printf("%p :", buffer0_ptr + itr);
      002275 C0 01            [24]  743 	push	ar1
      002277 E5 08            [12]  744 	mov	a,_buffer0_hexdump_sloc0_1_0
      002279 2E               [12]  745 	add	a,r6
      00227A F8               [12]  746 	mov	r0,a
      00227B E5 09            [12]  747 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      00227D 3D               [12]  748 	addc	a,r5
      00227E F9               [12]  749 	mov	r1,a
      00227F 8F 02            [24]  750 	mov	ar2,r7
      002281 C0 07            [24]  751 	push	ar7
      002283 C0 06            [24]  752 	push	ar6
      002285 C0 05            [24]  753 	push	ar5
      002287 C0 04            [24]  754 	push	ar4
      002289 C0 03            [24]  755 	push	ar3
      00228B C0 01            [24]  756 	push	ar1
      00228D C0 00            [24]  757 	push	ar0
      00228F C0 01            [24]  758 	push	ar1
      002291 C0 02            [24]  759 	push	ar2
      002293 74 AF            [12]  760 	mov	a,#___str_1
      002295 C0 E0            [24]  761 	push	acc
      002297 74 46            [12]  762 	mov	a,#(___str_1 >> 8)
      002299 C0 E0            [24]  763 	push	acc
      00229B 74 80            [12]  764 	mov	a,#0x80
      00229D C0 E0            [24]  765 	push	acc
      00229F 12 3A 4B         [24]  766 	lcall	_printf
      0022A2 E5 81            [12]  767 	mov	a,sp
      0022A4 24 FA            [12]  768 	add	a,#0xfa
      0022A6 F5 81            [12]  769 	mov	sp,a
      0022A8 D0 01            [24]  770 	pop	ar1
      0022AA D0 03            [24]  771 	pop	ar3
      0022AC D0 04            [24]  772 	pop	ar4
      0022AE D0 05            [24]  773 	pop	ar5
      0022B0 D0 06            [24]  774 	pop	ar6
      0022B2 D0 07            [24]  775 	pop	ar7
                                    776 ;	character.c:87: printf("\033[1;34m%p :", buffer0_ptr + itr);
      0022B4 E5 08            [12]  777 	mov	a,_buffer0_hexdump_sloc0_1_0
      0022B6 2E               [12]  778 	add	a,r6
      0022B7 F8               [12]  779 	mov	r0,a
      0022B8 E5 09            [12]  780 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      0022BA 3D               [12]  781 	addc	a,r5
      0022BB F9               [12]  782 	mov	r1,a
      0022BC 8F 02            [24]  783 	mov	ar2,r7
      0022BE C0 07            [24]  784 	push	ar7
      0022C0 C0 06            [24]  785 	push	ar6
      0022C2 C0 05            [24]  786 	push	ar5
      0022C4 C0 04            [24]  787 	push	ar4
      0022C6 C0 03            [24]  788 	push	ar3
      0022C8 C0 01            [24]  789 	push	ar1
      0022CA C0 00            [24]  790 	push	ar0
      0022CC C0 01            [24]  791 	push	ar1
      0022CE C0 02            [24]  792 	push	ar2
      0022D0 74 B4            [12]  793 	mov	a,#___str_2
      0022D2 C0 E0            [24]  794 	push	acc
      0022D4 74 46            [12]  795 	mov	a,#(___str_2 >> 8)
      0022D6 C0 E0            [24]  796 	push	acc
      0022D8 74 80            [12]  797 	mov	a,#0x80
      0022DA C0 E0            [24]  798 	push	acc
      0022DC 12 3A 4B         [24]  799 	lcall	_printf
      0022DF E5 81            [12]  800 	mov	a,sp
      0022E1 24 FA            [12]  801 	add	a,#0xfa
      0022E3 F5 81            [12]  802 	mov	sp,a
      0022E5 D0 01            [24]  803 	pop	ar1
      0022E7 D0 03            [24]  804 	pop	ar3
      0022E9 D0 04            [24]  805 	pop	ar4
      0022EB D0 05            [24]  806 	pop	ar5
      0022ED D0 06            [24]  807 	pop	ar6
      0022EF D0 07            [24]  808 	pop	ar7
                                    809 ;	character.c:88: print_address = false;
      0022F1 90 1B 79         [24]  810 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      0022F4 E4               [12]  811 	clr	a
      0022F5 F0               [24]  812 	movx	@dptr,a
                                    813 ;	character.c:112: itr++;
      0022F6 D0 01            [24]  814 	pop	ar1
                                    815 ;	character.c:88: print_address = false;
      0022F8                        816 00102$:
                                    817 ;	character.c:91: if (buffer0_ptr[itr] == '0')
      0022F8 C0 01            [24]  818 	push	ar1
      0022FA E5 08            [12]  819 	mov	a,_buffer0_hexdump_sloc0_1_0
      0022FC 2E               [12]  820 	add	a,r6
      0022FD F8               [12]  821 	mov	r0,a
      0022FE E5 09            [12]  822 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      002300 3D               [12]  823 	addc	a,r5
      002301 F9               [12]  824 	mov	r1,a
      002302 8F 02            [24]  825 	mov	ar2,r7
      002304 88 82            [24]  826 	mov	dpl,r0
      002306 89 83            [24]  827 	mov	dph,r1
      002308 8A F0            [24]  828 	mov	b,r2
      00230A 12 44 77         [24]  829 	lcall	__gptrget
      00230D F5 0B            [12]  830 	mov	_buffer0_hexdump_sloc2_1_0,a
      00230F 74 30            [12]  831 	mov	a,#0x30
      002311 B5 0B 02         [24]  832 	cjne	a,_buffer0_hexdump_sloc2_1_0,00152$
      002314 80 04            [24]  833 	sjmp	00153$
      002316                        834 00152$:
      002316 D0 01            [24]  835 	pop	ar1
      002318 80 2C            [24]  836 	sjmp	00108$
      00231A                        837 00153$:
      00231A D0 01            [24]  838 	pop	ar1
                                    839 ;	character.c:93: printf_tiny("\033[1;34m XX");
      00231C C0 07            [24]  840 	push	ar7
      00231E C0 06            [24]  841 	push	ar6
      002320 C0 05            [24]  842 	push	ar5
      002322 C0 04            [24]  843 	push	ar4
      002324 C0 03            [24]  844 	push	ar3
      002326 C0 01            [24]  845 	push	ar1
      002328 74 C0            [12]  846 	mov	a,#___str_3
      00232A C0 E0            [24]  847 	push	acc
      00232C 74 46            [12]  848 	mov	a,#(___str_3 >> 8)
      00232E C0 E0            [24]  849 	push	acc
      002330 12 36 1B         [24]  850 	lcall	_printf_tiny
      002333 15 81            [12]  851 	dec	sp
      002335 15 81            [12]  852 	dec	sp
      002337 D0 01            [24]  853 	pop	ar1
      002339 D0 03            [24]  854 	pop	ar3
      00233B D0 04            [24]  855 	pop	ar4
      00233D D0 05            [24]  856 	pop	ar5
      00233F D0 06            [24]  857 	pop	ar6
      002341 D0 07            [24]  858 	pop	ar7
      002343 02 23 C5         [24]  859 	ljmp	00109$
      002346                        860 00108$:
                                    861 ;	character.c:97: if (length == 16) {
      002346 E5 0A            [12]  862 	mov	a,_buffer0_hexdump_sloc1_1_0
      002348 60 31            [24]  863 	jz	00104$
                                    864 ;	character.c:98: printf_tiny("\033[1;34m %x", buffer0_ptr[itr]);
      00234A A8 0B            [24]  865 	mov	r0,_buffer0_hexdump_sloc2_1_0
      00234C 7A 00            [12]  866 	mov	r2,#0x00
      00234E C0 07            [24]  867 	push	ar7
      002350 C0 06            [24]  868 	push	ar6
      002352 C0 05            [24]  869 	push	ar5
      002354 C0 04            [24]  870 	push	ar4
      002356 C0 03            [24]  871 	push	ar3
      002358 C0 01            [24]  872 	push	ar1
      00235A C0 00            [24]  873 	push	ar0
      00235C C0 02            [24]  874 	push	ar2
      00235E 74 CB            [12]  875 	mov	a,#___str_4
      002360 C0 E0            [24]  876 	push	acc
      002362 74 46            [12]  877 	mov	a,#(___str_4 >> 8)
      002364 C0 E0            [24]  878 	push	acc
      002366 12 36 1B         [24]  879 	lcall	_printf_tiny
      002369 E5 81            [12]  880 	mov	a,sp
      00236B 24 FC            [12]  881 	add	a,#0xfc
      00236D F5 81            [12]  882 	mov	sp,a
      00236F D0 01            [24]  883 	pop	ar1
      002371 D0 03            [24]  884 	pop	ar3
      002373 D0 04            [24]  885 	pop	ar4
      002375 D0 05            [24]  886 	pop	ar5
      002377 D0 06            [24]  887 	pop	ar6
      002379 D0 07            [24]  888 	pop	ar7
      00237B                        889 00104$:
                                    890 ;	character.c:100: if (length == 32)
      00237B E9               [12]  891 	mov	a,r1
      00237C 60 47            [24]  892 	jz	00109$
                                    893 ;	character.c:102: printf_tiny("\033[1;34m %d", buffer0_ptr[itr]);
      00237E C0 01            [24]  894 	push	ar1
      002380 E5 08            [12]  895 	mov	a,_buffer0_hexdump_sloc0_1_0
      002382 2E               [12]  896 	add	a,r6
      002383 F8               [12]  897 	mov	r0,a
      002384 E5 09            [12]  898 	mov	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      002386 3D               [12]  899 	addc	a,r5
      002387 F9               [12]  900 	mov	r1,a
      002388 8F 02            [24]  901 	mov	ar2,r7
      00238A 88 82            [24]  902 	mov	dpl,r0
      00238C 89 83            [24]  903 	mov	dph,r1
      00238E 8A F0            [24]  904 	mov	b,r2
      002390 12 44 77         [24]  905 	lcall	__gptrget
      002393 F8               [12]  906 	mov	r0,a
      002394 7A 00            [12]  907 	mov	r2,#0x00
      002396 C0 07            [24]  908 	push	ar7
      002398 C0 06            [24]  909 	push	ar6
      00239A C0 05            [24]  910 	push	ar5
      00239C C0 04            [24]  911 	push	ar4
      00239E C0 03            [24]  912 	push	ar3
      0023A0 C0 01            [24]  913 	push	ar1
      0023A2 C0 00            [24]  914 	push	ar0
      0023A4 C0 02            [24]  915 	push	ar2
      0023A6 74 D6            [12]  916 	mov	a,#___str_5
      0023A8 C0 E0            [24]  917 	push	acc
      0023AA 74 46            [12]  918 	mov	a,#(___str_5 >> 8)
      0023AC C0 E0            [24]  919 	push	acc
      0023AE 12 36 1B         [24]  920 	lcall	_printf_tiny
      0023B1 E5 81            [12]  921 	mov	a,sp
      0023B3 24 FC            [12]  922 	add	a,#0xfc
      0023B5 F5 81            [12]  923 	mov	sp,a
      0023B7 D0 01            [24]  924 	pop	ar1
      0023B9 D0 03            [24]  925 	pop	ar3
      0023BB D0 04            [24]  926 	pop	ar4
      0023BD D0 05            [24]  927 	pop	ar5
      0023BF D0 06            [24]  928 	pop	ar6
      0023C1 D0 07            [24]  929 	pop	ar7
                                    930 ;	character.c:112: itr++;
      0023C3 D0 01            [24]  931 	pop	ar1
                                    932 ;	character.c:102: printf_tiny("\033[1;34m %d", buffer0_ptr[itr]);
      0023C5                        933 00109$:
                                    934 ;	character.c:106: if ((itr + 1) % length == 0)
      0023C5 74 01            [12]  935 	mov	a,#0x01
      0023C7 25 08            [12]  936 	add	a,_buffer0_hexdump_sloc0_1_0
      0023C9 F8               [12]  937 	mov	r0,a
      0023CA E4               [12]  938 	clr	a
      0023CB 35 09            [12]  939 	addc	a,(_buffer0_hexdump_sloc0_1_0 + 1)
      0023CD FA               [12]  940 	mov	r2,a
      0023CE 90 1C 84         [24]  941 	mov	dptr,#__modsint_PARM_2
      0023D1 EB               [12]  942 	mov	a,r3
      0023D2 F0               [24]  943 	movx	@dptr,a
      0023D3 EC               [12]  944 	mov	a,r4
      0023D4 A3               [24]  945 	inc	dptr
      0023D5 F0               [24]  946 	movx	@dptr,a
      0023D6 88 82            [24]  947 	mov	dpl,r0
      0023D8 8A 83            [24]  948 	mov	dph,r2
      0023DA C0 07            [24]  949 	push	ar7
      0023DC C0 06            [24]  950 	push	ar6
      0023DE C0 05            [24]  951 	push	ar5
      0023E0 C0 04            [24]  952 	push	ar4
      0023E2 C0 03            [24]  953 	push	ar3
      0023E4 C0 01            [24]  954 	push	ar1
      0023E6 12 38 E9         [24]  955 	lcall	__modsint
      0023E9 E5 82            [12]  956 	mov	a,dpl
      0023EB 85 83 F0         [24]  957 	mov	b,dph
      0023EE D0 01            [24]  958 	pop	ar1
      0023F0 D0 03            [24]  959 	pop	ar3
      0023F2 D0 04            [24]  960 	pop	ar4
      0023F4 D0 05            [24]  961 	pop	ar5
      0023F6 D0 06            [24]  962 	pop	ar6
      0023F8 D0 07            [24]  963 	pop	ar7
      0023FA 45 F0            [12]  964 	orl	a,b
      0023FC 70 2D            [24]  965 	jnz	00111$
                                    966 ;	character.c:108: printf_tiny("\033[1;34m\n\r");
      0023FE C0 07            [24]  967 	push	ar7
      002400 C0 06            [24]  968 	push	ar6
      002402 C0 05            [24]  969 	push	ar5
      002404 C0 04            [24]  970 	push	ar4
      002406 C0 03            [24]  971 	push	ar3
      002408 C0 01            [24]  972 	push	ar1
      00240A 74 A5            [12]  973 	mov	a,#___str_0
      00240C C0 E0            [24]  974 	push	acc
      00240E 74 46            [12]  975 	mov	a,#(___str_0 >> 8)
      002410 C0 E0            [24]  976 	push	acc
      002412 12 36 1B         [24]  977 	lcall	_printf_tiny
      002415 15 81            [12]  978 	dec	sp
      002417 15 81            [12]  979 	dec	sp
      002419 D0 01            [24]  980 	pop	ar1
      00241B D0 03            [24]  981 	pop	ar3
      00241D D0 04            [24]  982 	pop	ar4
      00241F D0 05            [24]  983 	pop	ar5
      002421 D0 06            [24]  984 	pop	ar6
      002423 D0 07            [24]  985 	pop	ar7
                                    986 ;	character.c:109: print_address = true;
      002425 90 1B 79         [24]  987 	mov	dptr,#_buffer0_hexdump_print_address_65536_54
      002428 74 01            [12]  988 	mov	a,#0x01
      00242A F0               [24]  989 	movx	@dptr,a
      00242B                        990 00111$:
                                    991 ;	character.c:112: itr++;
      00242B 05 08            [12]  992 	inc	_buffer0_hexdump_sloc0_1_0
      00242D E4               [12]  993 	clr	a
      00242E B5 08 02         [24]  994 	cjne	a,_buffer0_hexdump_sloc0_1_0,00157$
      002431 05 09            [12]  995 	inc	(_buffer0_hexdump_sloc0_1_0 + 1)
      002433                        996 00157$:
                                    997 ;	character.c:114: }
      002433 02 22 4E         [24]  998 	ljmp	00112$
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'command_processing'
                                   1001 ;------------------------------------------------------------
                                   1002 ;sloc0                     Allocated with name '_command_processing_sloc0_1_0'
                                   1003 ;sloc1                     Allocated with name '_command_processing_sloc1_1_0'
                                   1004 ;sloc2                     Allocated with name '_command_processing_sloc2_1_0'
                                   1005 ;sloc3                     Allocated with name '_command_processing_sloc3_1_0'
                                   1006 ;sloc4                     Allocated with name '_command_processing_sloc4_1_0'
                                   1007 ;ch                        Allocated with name '_command_processing_PARM_2'
                                   1008 ;new_buffer_index          Allocated with name '_command_processing_PARM_3'
                                   1009 ;free_buffer_count         Allocated with name '_command_processing_PARM_4'
                                   1010 ;filled_buffer_count       Allocated with name '_command_processing_PARM_5'
                                   1011 ;storage_character_count   Allocated with name '_command_processing_PARM_6'
                                   1012 ;total_characters_count    Allocated with name '_command_processing_PARM_7'
                                   1013 ;buffer0_size              Allocated with name '_command_processing_PARM_8'
                                   1014 ;cmd_detected              Allocated with name '_command_processing_cmd_detected_65536_62'
                                   1015 ;buffer_size               Allocated with name '_command_processing_buffer_size_196609_66'
                                   1016 ;buffer_ptr                Allocated with name '_command_processing_buffer_ptr_196610_68'
                                   1017 ;ch                        Allocated with name '_command_processing_ch_196611_70'
                                   1018 ;temp                      Allocated with name '_command_processing_temp_262148_73'
                                   1019 ;i                         Allocated with name '_command_processing_i_262147_79'
                                   1020 ;buffer_to_free            Allocated with name '_command_processing_buffer_to_free_327683_80'
                                   1021 ;i                         Allocated with name '_command_processing_i_262147_83'
                                   1022 ;------------------------------------------------------------
                                   1023 ;	character.c:117: int command_processing(int cmd_detected, char ch, int * new_buffer_index,
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function command_processing
                                   1026 ;	-----------------------------------------
      002436                       1027 _command_processing:
      002436 AF 83            [24] 1028 	mov	r7,dph
      002438 E5 82            [12] 1029 	mov	a,dpl
      00243A 90 1B 8C         [24] 1030 	mov	dptr,#_command_processing_cmd_detected_65536_62
      00243D F0               [24] 1031 	movx	@dptr,a
      00243E EF               [12] 1032 	mov	a,r7
      00243F A3               [24] 1033 	inc	dptr
      002440 F0               [24] 1034 	movx	@dptr,a
                                   1035 ;	character.c:120: buffer0and1_size = buffer0_size;
      002441 90 1B 8A         [24] 1036 	mov	dptr,#_command_processing_PARM_8
      002444 E0               [24] 1037 	movx	a,@dptr
      002445 FE               [12] 1038 	mov	r6,a
      002446 A3               [24] 1039 	inc	dptr
      002447 E0               [24] 1040 	movx	a,@dptr
      002448 FF               [12] 1041 	mov	r7,a
      002449 90 1D 92         [24] 1042 	mov	dptr,#_buffer0and1_size
      00244C EE               [12] 1043 	mov	a,r6
      00244D F0               [24] 1044 	movx	@dptr,a
      00244E EF               [12] 1045 	mov	a,r7
      00244F A3               [24] 1046 	inc	dptr
      002450 F0               [24] 1047 	movx	@dptr,a
                                   1048 ;	character.c:121: if(cmd_detected)            // if command detected
      002451 90 1B 8C         [24] 1049 	mov	dptr,#_command_processing_cmd_detected_65536_62
      002454 E0               [24] 1050 	movx	a,@dptr
      002455 F5 F0            [12] 1051 	mov	b,a
      002457 A3               [24] 1052 	inc	dptr
      002458 E0               [24] 1053 	movx	a,@dptr
      002459 45 F0            [12] 1054 	orl	a,b
      00245B 70 03            [24] 1055 	jnz	00236$
      00245D 02 2E 89         [24] 1056 	ljmp	00142$
      002460                       1057 00236$:
                                   1058 ;	character.c:123: switch(ch)              // switch based on the input character
      002460 90 1B 7A         [24] 1059 	mov	dptr,#_command_processing_PARM_2
      002463 E0               [24] 1060 	movx	a,@dptr
      002464 FF               [12] 1061 	mov	r7,a
      002465 BF 2B 02         [24] 1062 	cjne	r7,#0x2b,00237$
      002468 80 1B            [24] 1063 	sjmp	00101$
      00246A                       1064 00237$:
      00246A BF 2D 03         [24] 1065 	cjne	r7,#0x2d,00238$
      00246D 02 26 EF         [24] 1066 	ljmp	00107$
      002470                       1067 00238$:
      002470 BF 3D 03         [24] 1068 	cjne	r7,#0x3d,00239$
      002473 02 2B 98         [24] 1069 	ljmp	00130$
      002476                       1070 00239$:
      002476 BF 3F 03         [24] 1071 	cjne	r7,#0x3f,00240$
      002479 02 2B B0         [24] 1072 	ljmp	00131$
      00247C                       1073 00240$:
      00247C BF 40 03         [24] 1074 	cjne	r7,#0x40,00241$
      00247F 02 2A 61         [24] 1075 	ljmp	00125$
      002482                       1076 00241$:
      002482 02 2E 89         [24] 1077 	ljmp	00142$
                                   1078 ;	character.c:125: case '+':               // if input character is '+'
      002485                       1079 00101$:
                                   1080 ;	character.c:127: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002485 74 E1            [12] 1081 	mov	a,#___str_6
      002487 C0 E0            [24] 1082 	push	acc
      002489 74 46            [12] 1083 	mov	a,#(___str_6 >> 8)
      00248B C0 E0            [24] 1084 	push	acc
      00248D 12 36 1B         [24] 1085 	lcall	_printf_tiny
      002490 15 81            [12] 1086 	dec	sp
      002492 15 81            [12] 1087 	dec	sp
                                   1088 ;	character.c:128: printf_tiny("\033[1;33m|************ Processing [+] *******************|\n\r");
      002494 74 1C            [12] 1089 	mov	a,#___str_7
      002496 C0 E0            [24] 1090 	push	acc
      002498 74 47            [12] 1091 	mov	a,#(___str_7 >> 8)
      00249A C0 E0            [24] 1092 	push	acc
      00249C 12 36 1B         [24] 1093 	lcall	_printf_tiny
      00249F 15 81            [12] 1094 	dec	sp
      0024A1 15 81            [12] 1095 	dec	sp
                                   1096 ;	character.c:129: printf_tiny("\033[1;33m|***********************************************|\n\r");
      0024A3 74 E1            [12] 1097 	mov	a,#___str_6
      0024A5 C0 E0            [24] 1098 	push	acc
      0024A7 74 46            [12] 1099 	mov	a,#(___str_6 >> 8)
      0024A9 C0 E0            [24] 1100 	push	acc
      0024AB 12 36 1B         [24] 1101 	lcall	_printf_tiny
      0024AE 15 81            [12] 1102 	dec	sp
      0024B0 15 81            [12] 1103 	dec	sp
                                   1104 ;	character.c:131: (*new_buffer_index)++;                      // increment buffer index
      0024B2 90 1B 7B         [24] 1105 	mov	dptr,#_command_processing_PARM_3
      0024B5 E0               [24] 1106 	movx	a,@dptr
      0024B6 FD               [12] 1107 	mov	r5,a
      0024B7 A3               [24] 1108 	inc	dptr
      0024B8 E0               [24] 1109 	movx	a,@dptr
      0024B9 FE               [12] 1110 	mov	r6,a
      0024BA A3               [24] 1111 	inc	dptr
      0024BB E0               [24] 1112 	movx	a,@dptr
      0024BC FF               [12] 1113 	mov	r7,a
      0024BD 8D 82            [24] 1114 	mov	dpl,r5
      0024BF 8E 83            [24] 1115 	mov	dph,r6
      0024C1 8F F0            [24] 1116 	mov	b,r7
      0024C3 12 44 77         [24] 1117 	lcall	__gptrget
      0024C6 FB               [12] 1118 	mov	r3,a
      0024C7 A3               [24] 1119 	inc	dptr
      0024C8 12 44 77         [24] 1120 	lcall	__gptrget
      0024CB FC               [12] 1121 	mov	r4,a
      0024CC 0B               [12] 1122 	inc	r3
      0024CD BB 00 01         [24] 1123 	cjne	r3,#0x00,00242$
      0024D0 0C               [12] 1124 	inc	r4
      0024D1                       1125 00242$:
      0024D1 8D 82            [24] 1126 	mov	dpl,r5
      0024D3 8E 83            [24] 1127 	mov	dph,r6
      0024D5 8F F0            [24] 1128 	mov	b,r7
      0024D7 EB               [12] 1129 	mov	a,r3
      0024D8 12 36 00         [24] 1130 	lcall	__gptrput
      0024DB A3               [24] 1131 	inc	dptr
      0024DC EC               [12] 1132 	mov	a,r4
      0024DD 12 36 00         [24] 1133 	lcall	__gptrput
                                   1134 ;	character.c:132: printf_tiny("\033[1;36m|***********************************************|\n\r");
      0024E0 C0 07            [24] 1135 	push	ar7
      0024E2 C0 06            [24] 1136 	push	ar6
      0024E4 C0 05            [24] 1137 	push	ar5
      0024E6 74 57            [12] 1138 	mov	a,#___str_8
      0024E8 C0 E0            [24] 1139 	push	acc
      0024EA 74 47            [12] 1140 	mov	a,#(___str_8 >> 8)
      0024EC C0 E0            [24] 1141 	push	acc
      0024EE 12 36 1B         [24] 1142 	lcall	_printf_tiny
      0024F1 15 81            [12] 1143 	dec	sp
      0024F3 15 81            [12] 1144 	dec	sp
                                   1145 ;	character.c:133: printf_tiny("\033[1;36m|********* Enter size for new bufer ************|\n\r");
      0024F5 74 92            [12] 1146 	mov	a,#___str_9
      0024F7 C0 E0            [24] 1147 	push	acc
      0024F9 74 47            [12] 1148 	mov	a,#(___str_9 >> 8)
      0024FB C0 E0            [24] 1149 	push	acc
      0024FD 12 36 1B         [24] 1150 	lcall	_printf_tiny
      002500 15 81            [12] 1151 	dec	sp
      002502 15 81            [12] 1152 	dec	sp
                                   1153 ;	character.c:134: printf_tiny("\033[1;36m|***********************************************|\n\r");
      002504 74 57            [12] 1154 	mov	a,#___str_8
      002506 C0 E0            [24] 1155 	push	acc
      002508 74 47            [12] 1156 	mov	a,#(___str_8 >> 8)
      00250A C0 E0            [24] 1157 	push	acc
      00250C 12 36 1B         [24] 1158 	lcall	_printf_tiny
      00250F 15 81            [12] 1159 	dec	sp
      002511 15 81            [12] 1160 	dec	sp
                                   1161 ;	character.c:135: gets_(size);                                // get buffer size
      002513 90 1C C4         [24] 1162 	mov	dptr,#_size
      002516 12 32 DA         [24] 1163 	lcall	_gets_
                                   1164 ;	character.c:136: int buffer_size = atoi(size);               // convert buffer size to integer
      002519 90 1C C4         [24] 1165 	mov	dptr,#_size
      00251C 75 F0 00         [24] 1166 	mov	b,#0x00
      00251F 12 34 DC         [24] 1167 	lcall	_atoi
      002522 AB 82            [24] 1168 	mov	r3,dpl
      002524 AC 83            [24] 1169 	mov	r4,dph
      002526 D0 05            [24] 1170 	pop	ar5
      002528 D0 06            [24] 1171 	pop	ar6
      00252A D0 07            [24] 1172 	pop	ar7
                                   1173 ;	character.c:137: if (buffer_size < 30 || buffer_size > 300) { // check if buffer size is within range
      00252C C3               [12] 1174 	clr	c
      00252D EB               [12] 1175 	mov	a,r3
      00252E 94 1E            [12] 1176 	subb	a,#0x1e
      002530 EC               [12] 1177 	mov	a,r4
      002531 64 80            [12] 1178 	xrl	a,#0x80
      002533 94 80            [12] 1179 	subb	a,#0x80
      002535 40 0E            [24] 1180 	jc	00102$
      002537 74 2C            [12] 1181 	mov	a,#0x2c
      002539 9B               [12] 1182 	subb	a,r3
      00253A 74 81            [12] 1183 	mov	a,#(0x01 ^ 0x80)
      00253C 8C F0            [24] 1184 	mov	b,r4
      00253E 63 F0 80         [24] 1185 	xrl	b,#0x80
      002541 95 F0            [12] 1186 	subb	a,b
      002543 50 12            [24] 1187 	jnc	00103$
      002545                       1188 00102$:
                                   1189 ;	character.c:138: printf_tiny("\033[1;31mInvalid Input : The buffer size should be in the range [30, 300]\n\r\n\r");
      002545 74 CD            [12] 1190 	mov	a,#___str_10
      002547 C0 E0            [24] 1191 	push	acc
      002549 74 47            [12] 1192 	mov	a,#(___str_10 >> 8)
      00254B C0 E0            [24] 1193 	push	acc
      00254D 12 36 1B         [24] 1194 	lcall	_printf_tiny
      002550 15 81            [12] 1195 	dec	sp
      002552 15 81            [12] 1196 	dec	sp
                                   1197 ;	character.c:139: break;                                  // break out of switch
      002554 02 2E 89         [24] 1198 	ljmp	00142$
      002557                       1199 00103$:
                                   1200 ;	character.c:141: __xdata char* buffer_ptr = (__xdata char*)malloc(buffer_size);  // allocate memory for buffer
      002557 8B 82            [24] 1201 	mov	dpl,r3
      002559 8C 83            [24] 1202 	mov	dph,r4
      00255B C0 07            [24] 1203 	push	ar7
      00255D C0 06            [24] 1204 	push	ar6
      00255F C0 05            [24] 1205 	push	ar5
      002561 C0 04            [24] 1206 	push	ar4
      002563 C0 03            [24] 1207 	push	ar3
      002565 12 37 60         [24] 1208 	lcall	_malloc
      002568 A9 82            [24] 1209 	mov	r1,dpl
      00256A AA 83            [24] 1210 	mov	r2,dph
      00256C D0 03            [24] 1211 	pop	ar3
      00256E D0 04            [24] 1212 	pop	ar4
      002570 D0 05            [24] 1213 	pop	ar5
      002572 D0 06            [24] 1214 	pop	ar6
      002574 D0 07            [24] 1215 	pop	ar7
      002576 89 0C            [24] 1216 	mov	_command_processing_sloc0_1_0,r1
      002578 8A 0D            [24] 1217 	mov	(_command_processing_sloc0_1_0 + 1),r2
                                   1218 ;	character.c:143: if (buffer_ptr == NULL) {                                       // check if buffer allocation failed
      00257A E5 0C            [12] 1219 	mov	a,_command_processing_sloc0_1_0
      00257C 45 0D            [12] 1220 	orl	a,(_command_processing_sloc0_1_0 + 1)
      00257E 70 12            [24] 1221 	jnz	00106$
                                   1222 ;	character.c:144: printf_tiny("\033[1;31mInvalid input : Failed to allocate buffer\n\r\n\r");
      002580 74 19            [12] 1223 	mov	a,#___str_11
      002582 C0 E0            [24] 1224 	push	acc
      002584 74 48            [12] 1225 	mov	a,#(___str_11 >> 8)
      002586 C0 E0            [24] 1226 	push	acc
      002588 12 36 1B         [24] 1227 	lcall	_printf_tiny
      00258B 15 81            [12] 1228 	dec	sp
      00258D 15 81            [12] 1229 	dec	sp
                                   1230 ;	character.c:145: break;                                                      // break out of switch
      00258F 02 2E 89         [24] 1231 	ljmp	00142$
      002592                       1232 00106$:
                                   1233 ;	character.c:148: buffer_size_arr[(*new_buffer_index)-1] = buffer_size;           // store buffer size in array
      002592 8D 82            [24] 1234 	mov	dpl,r5
      002594 8E 83            [24] 1235 	mov	dph,r6
      002596 8F F0            [24] 1236 	mov	b,r7
      002598 12 44 77         [24] 1237 	lcall	__gptrget
      00259B F8               [12] 1238 	mov	r0,a
      00259C A3               [24] 1239 	inc	dptr
      00259D 12 44 77         [24] 1240 	lcall	__gptrget
      0025A0 FA               [12] 1241 	mov	r2,a
      0025A1 18               [12] 1242 	dec	r0
      0025A2 B8 FF 01         [24] 1243 	cjne	r0,#0xff,00246$
      0025A5 1A               [12] 1244 	dec	r2
      0025A6                       1245 00246$:
      0025A6 E8               [12] 1246 	mov	a,r0
      0025A7 28               [12] 1247 	add	a,r0
      0025A8 F8               [12] 1248 	mov	r0,a
      0025A9 EA               [12] 1249 	mov	a,r2
      0025AA 33               [12] 1250 	rlc	a
      0025AB FA               [12] 1251 	mov	r2,a
      0025AC E8               [12] 1252 	mov	a,r0
      0025AD 24 A4            [12] 1253 	add	a,#_buffer_size_arr
      0025AF F5 82            [12] 1254 	mov	dpl,a
      0025B1 EA               [12] 1255 	mov	a,r2
      0025B2 34 1D            [12] 1256 	addc	a,#(_buffer_size_arr >> 8)
      0025B4 F5 83            [12] 1257 	mov	dph,a
      0025B6 EB               [12] 1258 	mov	a,r3
      0025B7 F0               [24] 1259 	movx	@dptr,a
      0025B8 EC               [12] 1260 	mov	a,r4
      0025B9 A3               [24] 1261 	inc	dptr
      0025BA F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	character.c:149: ++(*filled_buffer_count);                                       // increment filled buffer count
      0025BB 90 1B 81         [24] 1264 	mov	dptr,#_command_processing_PARM_5
      0025BE E0               [24] 1265 	movx	a,@dptr
      0025BF FA               [12] 1266 	mov	r2,a
      0025C0 A3               [24] 1267 	inc	dptr
      0025C1 E0               [24] 1268 	movx	a,@dptr
      0025C2 FB               [12] 1269 	mov	r3,a
      0025C3 A3               [24] 1270 	inc	dptr
      0025C4 E0               [24] 1271 	movx	a,@dptr
      0025C5 FC               [12] 1272 	mov	r4,a
      0025C6 8A 82            [24] 1273 	mov	dpl,r2
      0025C8 8B 83            [24] 1274 	mov	dph,r3
      0025CA 8C F0            [24] 1275 	mov	b,r4
      0025CC 12 44 77         [24] 1276 	lcall	__gptrget
      0025CF F8               [12] 1277 	mov	r0,a
      0025D0 A3               [24] 1278 	inc	dptr
      0025D1 12 44 77         [24] 1279 	lcall	__gptrget
      0025D4 F9               [12] 1280 	mov	r1,a
      0025D5 08               [12] 1281 	inc	r0
      0025D6 B8 00 01         [24] 1282 	cjne	r0,#0x00,00247$
      0025D9 09               [12] 1283 	inc	r1
      0025DA                       1284 00247$:
      0025DA 8A 82            [24] 1285 	mov	dpl,r2
      0025DC 8B 83            [24] 1286 	mov	dph,r3
      0025DE 8C F0            [24] 1287 	mov	b,r4
      0025E0 E8               [12] 1288 	mov	a,r0
      0025E1 12 36 00         [24] 1289 	lcall	__gptrput
      0025E4 A3               [24] 1290 	inc	dptr
      0025E5 E9               [12] 1291 	mov	a,r1
      0025E6 12 36 00         [24] 1292 	lcall	__gptrput
                                   1293 ;	character.c:151: new_buffer_arr[(*new_buffer_index)-1] = buffer_ptr;             // store buffer pointer in array
      0025E9 8D 82            [24] 1294 	mov	dpl,r5
      0025EB 8E 83            [24] 1295 	mov	dph,r6
      0025ED 8F F0            [24] 1296 	mov	b,r7
      0025EF 12 44 77         [24] 1297 	lcall	__gptrget
      0025F2 F8               [12] 1298 	mov	r0,a
      0025F3 A3               [24] 1299 	inc	dptr
      0025F4 12 44 77         [24] 1300 	lcall	__gptrget
      0025F7 F9               [12] 1301 	mov	r1,a
      0025F8 18               [12] 1302 	dec	r0
      0025F9 B8 FF 01         [24] 1303 	cjne	r0,#0xff,00248$
      0025FC 19               [12] 1304 	dec	r1
      0025FD                       1305 00248$:
      0025FD E8               [12] 1306 	mov	a,r0
      0025FE 28               [12] 1307 	add	a,r0
      0025FF F8               [12] 1308 	mov	r0,a
      002600 E9               [12] 1309 	mov	a,r1
      002601 33               [12] 1310 	rlc	a
      002602 F9               [12] 1311 	mov	r1,a
      002603 E8               [12] 1312 	mov	a,r0
      002604 24 8E            [12] 1313 	add	a,#_new_buffer_arr
      002606 F5 82            [12] 1314 	mov	dpl,a
      002608 E9               [12] 1315 	mov	a,r1
      002609 34 1B            [12] 1316 	addc	a,#(_new_buffer_arr >> 8)
      00260B F5 83            [12] 1317 	mov	dph,a
      00260D E5 0C            [12] 1318 	mov	a,_command_processing_sloc0_1_0
      00260F F0               [24] 1319 	movx	@dptr,a
      002610 E5 0D            [12] 1320 	mov	a,(_command_processing_sloc0_1_0 + 1)
      002612 A3               [24] 1321 	inc	dptr
      002613 F0               [24] 1322 	movx	@dptr,a
                                   1323 ;	character.c:152: buff_not_cleared[(*new_buffer_index)] = 1;                      // set flag to indicate new buffer is created
      002614 8D 82            [24] 1324 	mov	dpl,r5
      002616 8E 83            [24] 1325 	mov	dph,r6
      002618 8F F0            [24] 1326 	mov	b,r7
      00261A 12 44 77         [24] 1327 	lcall	__gptrget
      00261D F8               [12] 1328 	mov	r0,a
      00261E A3               [24] 1329 	inc	dptr
      00261F 12 44 77         [24] 1330 	lcall	__gptrget
      002622 F9               [12] 1331 	mov	r1,a
      002623 E8               [12] 1332 	mov	a,r0
      002624 28               [12] 1333 	add	a,r0
      002625 F8               [12] 1334 	mov	r0,a
      002626 E9               [12] 1335 	mov	a,r1
      002627 33               [12] 1336 	rlc	a
      002628 F9               [12] 1337 	mov	r1,a
      002629 E8               [12] 1338 	mov	a,r0
      00262A 24 CA            [12] 1339 	add	a,#_buff_not_cleared
      00262C F5 82            [12] 1340 	mov	dpl,a
      00262E E9               [12] 1341 	mov	a,r1
      00262F 34 1C            [12] 1342 	addc	a,#(_buff_not_cleared >> 8)
      002631 F5 83            [12] 1343 	mov	dph,a
      002633 74 01            [12] 1344 	mov	a,#0x01
      002635 F0               [24] 1345 	movx	@dptr,a
      002636 E4               [12] 1346 	clr	a
      002637 A3               [24] 1347 	inc	dptr
      002638 F0               [24] 1348 	movx	@dptr,a
                                   1349 ;	character.c:155: printf_tiny("\033[1;0mNew buffer allocated successfully : Buffer[%d]\n\r", ((*new_buffer_index)-1)); // print successful buffer allocation message
      002639 8D 82            [24] 1350 	mov	dpl,r5
      00263B 8E 83            [24] 1351 	mov	dph,r6
      00263D 8F F0            [24] 1352 	mov	b,r7
      00263F 12 44 77         [24] 1353 	lcall	__gptrget
      002642 F8               [12] 1354 	mov	r0,a
      002643 A3               [24] 1355 	inc	dptr
      002644 12 44 77         [24] 1356 	lcall	__gptrget
      002647 F9               [12] 1357 	mov	r1,a
      002648 18               [12] 1358 	dec	r0
      002649 B8 FF 01         [24] 1359 	cjne	r0,#0xff,00249$
      00264C 19               [12] 1360 	dec	r1
      00264D                       1361 00249$:
      00264D C0 07            [24] 1362 	push	ar7
      00264F C0 06            [24] 1363 	push	ar6
      002651 C0 05            [24] 1364 	push	ar5
      002653 C0 04            [24] 1365 	push	ar4
      002655 C0 03            [24] 1366 	push	ar3
      002657 C0 02            [24] 1367 	push	ar2
      002659 C0 00            [24] 1368 	push	ar0
      00265B C0 01            [24] 1369 	push	ar1
      00265D 74 4E            [12] 1370 	mov	a,#___str_12
      00265F C0 E0            [24] 1371 	push	acc
      002661 74 48            [12] 1372 	mov	a,#(___str_12 >> 8)
      002663 C0 E0            [24] 1373 	push	acc
      002665 12 36 1B         [24] 1374 	lcall	_printf_tiny
      002668 E5 81            [12] 1375 	mov	a,sp
      00266A 24 FC            [12] 1376 	add	a,#0xfc
      00266C F5 81            [12] 1377 	mov	sp,a
      00266E D0 02            [24] 1378 	pop	ar2
      002670 D0 03            [24] 1379 	pop	ar3
      002672 D0 04            [24] 1380 	pop	ar4
      002674 D0 05            [24] 1381 	pop	ar5
      002676 D0 06            [24] 1382 	pop	ar6
      002678 D0 07            [24] 1383 	pop	ar7
                                   1384 ;	character.c:156: printf_tiny("\033[1;0mTotal Number of Buffers including buffer0 & buffer1 = [%d]\n\r",(*new_buffer_index)); // print total number of buffers
      00267A 8D 82            [24] 1385 	mov	dpl,r5
      00267C 8E 83            [24] 1386 	mov	dph,r6
      00267E 8F F0            [24] 1387 	mov	b,r7
      002680 12 44 77         [24] 1388 	lcall	__gptrget
      002683 FD               [12] 1389 	mov	r5,a
      002684 A3               [24] 1390 	inc	dptr
      002685 12 44 77         [24] 1391 	lcall	__gptrget
      002688 FE               [12] 1392 	mov	r6,a
      002689 C0 04            [24] 1393 	push	ar4
      00268B C0 03            [24] 1394 	push	ar3
      00268D C0 02            [24] 1395 	push	ar2
      00268F C0 05            [24] 1396 	push	ar5
      002691 C0 06            [24] 1397 	push	ar6
      002693 74 85            [12] 1398 	mov	a,#___str_13
      002695 C0 E0            [24] 1399 	push	acc
      002697 74 48            [12] 1400 	mov	a,#(___str_13 >> 8)
      002699 C0 E0            [24] 1401 	push	acc
      00269B 12 36 1B         [24] 1402 	lcall	_printf_tiny
      00269E E5 81            [12] 1403 	mov	a,sp
      0026A0 24 FC            [12] 1404 	add	a,#0xfc
      0026A2 F5 81            [12] 1405 	mov	sp,a
      0026A4 D0 02            [24] 1406 	pop	ar2
      0026A6 D0 03            [24] 1407 	pop	ar3
      0026A8 D0 04            [24] 1408 	pop	ar4
                                   1409 ;	character.c:157: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \r\nTotal Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count)); // print filled and empty buffer count
      0026AA 90 1B 7E         [24] 1410 	mov	dptr,#_command_processing_PARM_4
      0026AD E0               [24] 1411 	movx	a,@dptr
      0026AE FD               [12] 1412 	mov	r5,a
      0026AF A3               [24] 1413 	inc	dptr
      0026B0 E0               [24] 1414 	movx	a,@dptr
      0026B1 FE               [12] 1415 	mov	r6,a
      0026B2 A3               [24] 1416 	inc	dptr
      0026B3 E0               [24] 1417 	movx	a,@dptr
      0026B4 FF               [12] 1418 	mov	r7,a
      0026B5 8D 82            [24] 1419 	mov	dpl,r5
      0026B7 8E 83            [24] 1420 	mov	dph,r6
      0026B9 8F F0            [24] 1421 	mov	b,r7
      0026BB 12 44 77         [24] 1422 	lcall	__gptrget
      0026BE FD               [12] 1423 	mov	r5,a
      0026BF A3               [24] 1424 	inc	dptr
      0026C0 12 44 77         [24] 1425 	lcall	__gptrget
      0026C3 FE               [12] 1426 	mov	r6,a
      0026C4 8A 82            [24] 1427 	mov	dpl,r2
      0026C6 8B 83            [24] 1428 	mov	dph,r3
      0026C8 8C F0            [24] 1429 	mov	b,r4
      0026CA 12 44 77         [24] 1430 	lcall	__gptrget
      0026CD FA               [12] 1431 	mov	r2,a
      0026CE A3               [24] 1432 	inc	dptr
      0026CF 12 44 77         [24] 1433 	lcall	__gptrget
      0026D2 FB               [12] 1434 	mov	r3,a
      0026D3 C0 05            [24] 1435 	push	ar5
      0026D5 C0 06            [24] 1436 	push	ar6
      0026D7 C0 02            [24] 1437 	push	ar2
      0026D9 C0 03            [24] 1438 	push	ar3
      0026DB 74 C8            [12] 1439 	mov	a,#___str_14
      0026DD C0 E0            [24] 1440 	push	acc
      0026DF 74 48            [12] 1441 	mov	a,#(___str_14 >> 8)
      0026E1 C0 E0            [24] 1442 	push	acc
      0026E3 12 36 1B         [24] 1443 	lcall	_printf_tiny
      0026E6 E5 81            [12] 1444 	mov	a,sp
      0026E8 24 FA            [12] 1445 	add	a,#0xfa
      0026EA F5 81            [12] 1446 	mov	sp,a
                                   1447 ;	character.c:158: break;                                                          // break out of switch
      0026EC 02 2E 89         [24] 1448 	ljmp	00142$
                                   1449 ;	character.c:161: case '-':   // if input character is '-'
      0026EF                       1450 00107$:
                                   1451 ;	character.c:163: printf_tiny("\033[1;33m|***********************************************|\n\r");
      0026EF 74 E1            [12] 1452 	mov	a,#___str_6
      0026F1 C0 E0            [24] 1453 	push	acc
      0026F3 74 46            [12] 1454 	mov	a,#(___str_6 >> 8)
      0026F5 C0 E0            [24] 1455 	push	acc
      0026F7 12 36 1B         [24] 1456 	lcall	_printf_tiny
      0026FA 15 81            [12] 1457 	dec	sp
      0026FC 15 81            [12] 1458 	dec	sp
                                   1459 ;	character.c:164: printf_tiny("\033[1;33m|************ Processing [-] *******************|\n\r");
      0026FE 74 0C            [12] 1460 	mov	a,#___str_15
      002700 C0 E0            [24] 1461 	push	acc
      002702 74 49            [12] 1462 	mov	a,#(___str_15 >> 8)
      002704 C0 E0            [24] 1463 	push	acc
      002706 12 36 1B         [24] 1464 	lcall	_printf_tiny
      002709 15 81            [12] 1465 	dec	sp
      00270B 15 81            [12] 1466 	dec	sp
                                   1467 ;	character.c:165: printf_tiny("\033[1;33m|***********************************************|\n\r");
      00270D 74 E1            [12] 1468 	mov	a,#___str_6
      00270F C0 E0            [24] 1469 	push	acc
      002711 74 46            [12] 1470 	mov	a,#(___str_6 >> 8)
      002713 C0 E0            [24] 1471 	push	acc
      002715 12 36 1B         [24] 1472 	lcall	_printf_tiny
      002718 15 81            [12] 1473 	dec	sp
      00271A 15 81            [12] 1474 	dec	sp
                                   1475 ;	character.c:168: buffer_to_delete = 0;
      00271C 90 1C C8         [24] 1476 	mov	dptr,#_buffer_to_delete
      00271F E4               [12] 1477 	clr	a
      002720 F0               [24] 1478 	movx	@dptr,a
      002721 A3               [24] 1479 	inc	dptr
      002722 F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	character.c:171: printf_tiny("\033[1;36m|***********************************************|\n\r");
      002723 74 57            [12] 1482 	mov	a,#___str_8
      002725 C0 E0            [24] 1483 	push	acc
      002727 74 47            [12] 1484 	mov	a,#(___str_8 >> 8)
      002729 C0 E0            [24] 1485 	push	acc
      00272B 12 36 1B         [24] 1486 	lcall	_printf_tiny
      00272E 15 81            [12] 1487 	dec	sp
      002730 15 81            [12] 1488 	dec	sp
                                   1489 ;	character.c:172: printf_tiny("\033[1;36m|********* Enter buffer to be deleted **********|\n\r");
      002732 74 47            [12] 1490 	mov	a,#___str_16
      002734 C0 E0            [24] 1491 	push	acc
      002736 74 49            [12] 1492 	mov	a,#(___str_16 >> 8)
      002738 C0 E0            [24] 1493 	push	acc
      00273A 12 36 1B         [24] 1494 	lcall	_printf_tiny
      00273D 15 81            [12] 1495 	dec	sp
      00273F 15 81            [12] 1496 	dec	sp
                                   1497 ;	character.c:173: printf_tiny("\033[1;36m|********* Current No of buffers:[%d] ***********|\n\r", *new_buffer_index);
      002741 90 1B 7B         [24] 1498 	mov	dptr,#_command_processing_PARM_3
      002744 E0               [24] 1499 	movx	a,@dptr
      002745 FD               [12] 1500 	mov	r5,a
      002746 A3               [24] 1501 	inc	dptr
      002747 E0               [24] 1502 	movx	a,@dptr
      002748 FE               [12] 1503 	mov	r6,a
      002749 A3               [24] 1504 	inc	dptr
      00274A E0               [24] 1505 	movx	a,@dptr
      00274B FF               [12] 1506 	mov	r7,a
      00274C 8D 82            [24] 1507 	mov	dpl,r5
      00274E 8E 83            [24] 1508 	mov	dph,r6
      002750 8F F0            [24] 1509 	mov	b,r7
      002752 12 44 77         [24] 1510 	lcall	__gptrget
      002755 FB               [12] 1511 	mov	r3,a
      002756 A3               [24] 1512 	inc	dptr
      002757 12 44 77         [24] 1513 	lcall	__gptrget
      00275A FC               [12] 1514 	mov	r4,a
      00275B C0 07            [24] 1515 	push	ar7
      00275D C0 06            [24] 1516 	push	ar6
      00275F C0 05            [24] 1517 	push	ar5
      002761 C0 03            [24] 1518 	push	ar3
      002763 C0 04            [24] 1519 	push	ar4
      002765 74 82            [12] 1520 	mov	a,#___str_17
      002767 C0 E0            [24] 1521 	push	acc
      002769 74 49            [12] 1522 	mov	a,#(___str_17 >> 8)
      00276B C0 E0            [24] 1523 	push	acc
      00276D 12 36 1B         [24] 1524 	lcall	_printf_tiny
      002770 E5 81            [12] 1525 	mov	a,sp
      002772 24 FC            [12] 1526 	add	a,#0xfc
      002774 F5 81            [12] 1527 	mov	sp,a
                                   1528 ;	character.c:174: printf_tiny("\033[1;36m|********* Note : Index Starts with 0 **********|\n\r");
      002776 74 BE            [12] 1529 	mov	a,#___str_18
      002778 C0 E0            [24] 1530 	push	acc
      00277A 74 49            [12] 1531 	mov	a,#(___str_18 >> 8)
      00277C C0 E0            [24] 1532 	push	acc
      00277E 12 36 1B         [24] 1533 	lcall	_printf_tiny
      002781 15 81            [12] 1534 	dec	sp
      002783 15 81            [12] 1535 	dec	sp
                                   1536 ;	character.c:175: printf_tiny("\033[1;36m|***********************************************|\n\r");
      002785 74 57            [12] 1537 	mov	a,#___str_8
      002787 C0 E0            [24] 1538 	push	acc
      002789 74 47            [12] 1539 	mov	a,#(___str_8 >> 8)
      00278B C0 E0            [24] 1540 	push	acc
      00278D 12 36 1B         [24] 1541 	lcall	_printf_tiny
      002790 15 81            [12] 1542 	dec	sp
      002792 15 81            [12] 1543 	dec	sp
      002794 D0 05            [24] 1544 	pop	ar5
      002796 D0 06            [24] 1545 	pop	ar6
      002798 D0 07            [24] 1546 	pop	ar7
                                   1547 ;	character.c:179: do{
      00279A                       1548 00111$:
                                   1549 ;	character.c:180: ch = getchar();
      00279A C0 07            [24] 1550 	push	ar7
      00279C C0 06            [24] 1551 	push	ar6
      00279E C0 05            [24] 1552 	push	ar5
      0027A0 12 32 AD         [24] 1553 	lcall	_getchar
      0027A3 AB 82            [24] 1554 	mov	r3,dpl
                                   1555 ;	character.c:181: putchar(ch);
      0027A5 8B 02            [24] 1556 	mov	ar2,r3
      0027A7 7C 00            [12] 1557 	mov	r4,#0x00
      0027A9 8A 82            [24] 1558 	mov	dpl,r2
      0027AB 8C 83            [24] 1559 	mov	dph,r4
      0027AD C0 04            [24] 1560 	push	ar4
      0027AF C0 03            [24] 1561 	push	ar3
      0027B1 C0 02            [24] 1562 	push	ar2
      0027B3 12 32 BB         [24] 1563 	lcall	_putchar
      0027B6 D0 02            [24] 1564 	pop	ar2
      0027B8 D0 03            [24] 1565 	pop	ar3
      0027BA D0 04            [24] 1566 	pop	ar4
      0027BC D0 05            [24] 1567 	pop	ar5
      0027BE D0 06            [24] 1568 	pop	ar6
      0027C0 D0 07            [24] 1569 	pop	ar7
                                   1570 ;	character.c:184: if (ch < '0' || ch > '9') {
      0027C2 BB 30 00         [24] 1571 	cjne	r3,#0x30,00250$
      0027C5                       1572 00250$:
      0027C5 40 05            [24] 1573 	jc	00108$
      0027C7 EB               [12] 1574 	mov	a,r3
      0027C8 24 C6            [12] 1575 	add	a,#0xff - 0x39
      0027CA 50 1D            [24] 1576 	jnc	00109$
      0027CC                       1577 00108$:
                                   1578 ;	character.c:185: printf_tiny("\033[1;31mInvalid input : invalid digits entered \n\r\n\r");
      0027CC C0 07            [24] 1579 	push	ar7
      0027CE C0 06            [24] 1580 	push	ar6
      0027D0 C0 05            [24] 1581 	push	ar5
      0027D2 74 F9            [12] 1582 	mov	a,#___str_19
      0027D4 C0 E0            [24] 1583 	push	acc
      0027D6 74 49            [12] 1584 	mov	a,#(___str_19 >> 8)
      0027D8 C0 E0            [24] 1585 	push	acc
      0027DA 12 36 1B         [24] 1586 	lcall	_printf_tiny
      0027DD 15 81            [12] 1587 	dec	sp
      0027DF 15 81            [12] 1588 	dec	sp
      0027E1 D0 05            [24] 1589 	pop	ar5
      0027E3 D0 06            [24] 1590 	pop	ar6
      0027E5 D0 07            [24] 1591 	pop	ar7
                                   1592 ;	character.c:186: break;
      0027E7 80 50            [24] 1593 	sjmp	00113$
      0027E9                       1594 00109$:
                                   1595 ;	character.c:190: int temp = ch - '0';
      0027E9 EA               [12] 1596 	mov	a,r2
      0027EA 24 D0            [12] 1597 	add	a,#0xd0
      0027EC FA               [12] 1598 	mov	r2,a
      0027ED EC               [12] 1599 	mov	a,r4
      0027EE 34 FF            [12] 1600 	addc	a,#0xff
      0027F0 FC               [12] 1601 	mov	r4,a
                                   1602 ;	character.c:191: buffer_to_delete = buffer_to_delete * 10 + temp;
      0027F1 90 1C C8         [24] 1603 	mov	dptr,#_buffer_to_delete
      0027F4 E0               [24] 1604 	movx	a,@dptr
      0027F5 F9               [12] 1605 	mov	r1,a
      0027F6 A3               [24] 1606 	inc	dptr
      0027F7 E0               [24] 1607 	movx	a,@dptr
      0027F8 FB               [12] 1608 	mov	r3,a
      0027F9 90 1C 82         [24] 1609 	mov	dptr,#__mulint_PARM_2
      0027FC E9               [12] 1610 	mov	a,r1
      0027FD F0               [24] 1611 	movx	@dptr,a
      0027FE EB               [12] 1612 	mov	a,r3
      0027FF A3               [24] 1613 	inc	dptr
      002800 F0               [24] 1614 	movx	@dptr,a
      002801 90 00 0A         [24] 1615 	mov	dptr,#0x000a
      002804 C0 07            [24] 1616 	push	ar7
      002806 C0 06            [24] 1617 	push	ar6
      002808 C0 05            [24] 1618 	push	ar5
      00280A C0 04            [24] 1619 	push	ar4
      00280C C0 02            [24] 1620 	push	ar2
      00280E 12 38 C9         [24] 1621 	lcall	__mulint
      002811 E5 82            [12] 1622 	mov	a,dpl
      002813 85 83 F0         [24] 1623 	mov	b,dph
      002816 D0 02            [24] 1624 	pop	ar2
      002818 D0 04            [24] 1625 	pop	ar4
      00281A 90 1C C8         [24] 1626 	mov	dptr,#_buffer_to_delete
      00281D 2A               [12] 1627 	add	a,r2
      00281E F0               [24] 1628 	movx	@dptr,a
      00281F EC               [12] 1629 	mov	a,r4
      002820 35 F0            [12] 1630 	addc	a,b
      002822 A3               [24] 1631 	inc	dptr
      002823 F0               [24] 1632 	movx	@dptr,a
                                   1633 ;	character.c:193: ch = getchar();
      002824 12 32 AD         [24] 1634 	lcall	_getchar
      002827 AB 82            [24] 1635 	mov	r3,dpl
      002829 AC 83            [24] 1636 	mov	r4,dph
      00282B D0 05            [24] 1637 	pop	ar5
      00282D D0 06            [24] 1638 	pop	ar6
      00282F D0 07            [24] 1639 	pop	ar7
                                   1640 ;	character.c:195: }while(ch != '\r');
      002831 BB 0D 02         [24] 1641 	cjne	r3,#0x0d,00253$
      002834 80 03            [24] 1642 	sjmp	00254$
      002836                       1643 00253$:
      002836 02 27 9A         [24] 1644 	ljmp	00111$
      002839                       1645 00254$:
      002839                       1646 00113$:
                                   1647 ;	character.c:198: if (buffer_to_delete == 0)
      002839 90 1C C8         [24] 1648 	mov	dptr,#_buffer_to_delete
      00283C E0               [24] 1649 	movx	a,@dptr
      00283D FB               [12] 1650 	mov	r3,a
      00283E A3               [24] 1651 	inc	dptr
      00283F E0               [24] 1652 	movx	a,@dptr
      002840 FC               [12] 1653 	mov	r4,a
      002841 4B               [12] 1654 	orl	a,r3
      002842 70 12            [24] 1655 	jnz	00123$
                                   1656 ;	character.c:200: printf_tiny("\033[1;31mInvalid input : buffer number can't be 0\n\r\n");
      002844 74 2C            [12] 1657 	mov	a,#___str_20
      002846 C0 E0            [24] 1658 	push	acc
      002848 74 4A            [12] 1659 	mov	a,#(___str_20 >> 8)
      00284A C0 E0            [24] 1660 	push	acc
      00284C 12 36 1B         [24] 1661 	lcall	_printf_tiny
      00284F 15 81            [12] 1662 	dec	sp
      002851 15 81            [12] 1663 	dec	sp
                                   1664 ;	character.c:201: break;
      002853 02 2E 89         [24] 1665 	ljmp	00142$
      002856                       1666 00123$:
                                   1667 ;	character.c:203: else if(buff_not_cleared[buffer_to_delete] == 0){
      002856 EB               [12] 1668 	mov	a,r3
      002857 2B               [12] 1669 	add	a,r3
      002858 F9               [12] 1670 	mov	r1,a
      002859 EC               [12] 1671 	mov	a,r4
      00285A 33               [12] 1672 	rlc	a
      00285B FA               [12] 1673 	mov	r2,a
      00285C E9               [12] 1674 	mov	a,r1
      00285D 24 CA            [12] 1675 	add	a,#_buff_not_cleared
      00285F F5 82            [12] 1676 	mov	dpl,a
      002861 EA               [12] 1677 	mov	a,r2
      002862 34 1C            [12] 1678 	addc	a,#(_buff_not_cleared >> 8)
      002864 F5 83            [12] 1679 	mov	dph,a
      002866 E0               [24] 1680 	movx	a,@dptr
      002867 F9               [12] 1681 	mov	r1,a
      002868 A3               [24] 1682 	inc	dptr
      002869 E0               [24] 1683 	movx	a,@dptr
      00286A 49               [12] 1684 	orl	a,r1
      00286B 70 18            [24] 1685 	jnz	00120$
                                   1686 ;	character.c:204: printf_tiny("\033[1;31mInvalid input : buffer[%d] was already cleared earlier\n\r",buffer_to_delete);
      00286D C0 03            [24] 1687 	push	ar3
      00286F C0 04            [24] 1688 	push	ar4
      002871 74 5F            [12] 1689 	mov	a,#___str_21
      002873 C0 E0            [24] 1690 	push	acc
      002875 74 4A            [12] 1691 	mov	a,#(___str_21 >> 8)
      002877 C0 E0            [24] 1692 	push	acc
      002879 12 36 1B         [24] 1693 	lcall	_printf_tiny
      00287C E5 81            [12] 1694 	mov	a,sp
      00287E 24 FC            [12] 1695 	add	a,#0xfc
      002880 F5 81            [12] 1696 	mov	sp,a
                                   1697 ;	character.c:205: break;
      002882 02 2E 89         [24] 1698 	ljmp	00142$
      002885                       1699 00120$:
                                   1700 ;	character.c:207: else if ((buffer_to_delete) >= *new_buffer_index) {
      002885 8D 82            [24] 1701 	mov	dpl,r5
      002887 8E 83            [24] 1702 	mov	dph,r6
      002889 8F F0            [24] 1703 	mov	b,r7
      00288B 12 44 77         [24] 1704 	lcall	__gptrget
      00288E F9               [12] 1705 	mov	r1,a
      00288F A3               [24] 1706 	inc	dptr
      002890 12 44 77         [24] 1707 	lcall	__gptrget
      002893 FA               [12] 1708 	mov	r2,a
      002894 C3               [12] 1709 	clr	c
      002895 EB               [12] 1710 	mov	a,r3
      002896 99               [12] 1711 	subb	a,r1
      002897 EC               [12] 1712 	mov	a,r4
      002898 64 80            [12] 1713 	xrl	a,#0x80
      00289A 8A F0            [24] 1714 	mov	b,r2
      00289C 63 F0 80         [24] 1715 	xrl	b,#0x80
      00289F 95 F0            [12] 1716 	subb	a,b
      0028A1 40 12            [24] 1717 	jc	00117$
                                   1718 ;	character.c:208: printf_tiny("\033[1;31mInvalid input : buffer number doesn't exist\n\r");
      0028A3 74 9F            [12] 1719 	mov	a,#___str_22
      0028A5 C0 E0            [24] 1720 	push	acc
      0028A7 74 4A            [12] 1721 	mov	a,#(___str_22 >> 8)
      0028A9 C0 E0            [24] 1722 	push	acc
      0028AB 12 36 1B         [24] 1723 	lcall	_printf_tiny
      0028AE 15 81            [12] 1724 	dec	sp
      0028B0 15 81            [12] 1725 	dec	sp
                                   1726 ;	character.c:209: break;
      0028B2 02 2E 89         [24] 1727 	ljmp	00142$
      0028B5                       1728 00117$:
                                   1729 ;	character.c:213: printf_tiny("\033[1;0mBuffer [%d] requested to be deleted\n\r", buffer_to_delete);
      0028B5 C0 05            [24] 1730 	push	ar5
      0028B7 C0 06            [24] 1731 	push	ar6
      0028B9 C0 07            [24] 1732 	push	ar7
      0028BB C0 07            [24] 1733 	push	ar7
      0028BD C0 06            [24] 1734 	push	ar6
      0028BF C0 05            [24] 1735 	push	ar5
      0028C1 C0 03            [24] 1736 	push	ar3
      0028C3 C0 04            [24] 1737 	push	ar4
      0028C5 74 D4            [12] 1738 	mov	a,#___str_23
      0028C7 C0 E0            [24] 1739 	push	acc
      0028C9 74 4A            [12] 1740 	mov	a,#(___str_23 >> 8)
      0028CB C0 E0            [24] 1741 	push	acc
      0028CD 12 36 1B         [24] 1742 	lcall	_printf_tiny
      0028D0 E5 81            [12] 1743 	mov	a,sp
      0028D2 24 FC            [12] 1744 	add	a,#0xfc
      0028D4 F5 81            [12] 1745 	mov	sp,a
                                   1746 ;	character.c:214: printf("Performing buffer freeing operation\r\n");
      0028D6 74 00            [12] 1747 	mov	a,#___str_24
      0028D8 C0 E0            [24] 1748 	push	acc
      0028DA 74 4B            [12] 1749 	mov	a,#(___str_24 >> 8)
      0028DC C0 E0            [24] 1750 	push	acc
      0028DE 74 80            [12] 1751 	mov	a,#0x80
      0028E0 C0 E0            [24] 1752 	push	acc
      0028E2 12 3A 4B         [24] 1753 	lcall	_printf
      0028E5 15 81            [12] 1754 	dec	sp
      0028E7 15 81            [12] 1755 	dec	sp
      0028E9 15 81            [12] 1756 	dec	sp
                                   1757 ;	character.c:215: free(new_buffer_arr[buffer_to_delete]);
      0028EB 90 1C C8         [24] 1758 	mov	dptr,#_buffer_to_delete
      0028EE E0               [24] 1759 	movx	a,@dptr
      0028EF FB               [12] 1760 	mov	r3,a
      0028F0 A3               [24] 1761 	inc	dptr
      0028F1 E0               [24] 1762 	movx	a,@dptr
      0028F2 FC               [12] 1763 	mov	r4,a
      0028F3 EB               [12] 1764 	mov	a,r3
      0028F4 2B               [12] 1765 	add	a,r3
      0028F5 FB               [12] 1766 	mov	r3,a
      0028F6 EC               [12] 1767 	mov	a,r4
      0028F7 33               [12] 1768 	rlc	a
      0028F8 FC               [12] 1769 	mov	r4,a
      0028F9 EB               [12] 1770 	mov	a,r3
      0028FA 24 8E            [12] 1771 	add	a,#_new_buffer_arr
      0028FC F5 82            [12] 1772 	mov	dpl,a
      0028FE EC               [12] 1773 	mov	a,r4
      0028FF 34 1B            [12] 1774 	addc	a,#(_new_buffer_arr >> 8)
      002901 F5 83            [12] 1775 	mov	dph,a
      002903 E0               [24] 1776 	movx	a,@dptr
      002904 FB               [12] 1777 	mov	r3,a
      002905 A3               [24] 1778 	inc	dptr
      002906 E0               [24] 1779 	movx	a,@dptr
      002907 FC               [12] 1780 	mov	r4,a
      002908 7A 00            [12] 1781 	mov	r2,#0x00
      00290A 8B 82            [24] 1782 	mov	dpl,r3
      00290C 8C 83            [24] 1783 	mov	dph,r4
      00290E 8A F0            [24] 1784 	mov	b,r2
      002910 12 33 85         [24] 1785 	lcall	_free
      002913 D0 05            [24] 1786 	pop	ar5
      002915 D0 06            [24] 1787 	pop	ar6
      002917 D0 07            [24] 1788 	pop	ar7
                                   1789 ;	character.c:216: buff_not_cleared[buffer_to_delete] =0;
      002919 90 1C C8         [24] 1790 	mov	dptr,#_buffer_to_delete
      00291C E0               [24] 1791 	movx	a,@dptr
      00291D FB               [12] 1792 	mov	r3,a
      00291E A3               [24] 1793 	inc	dptr
      00291F E0               [24] 1794 	movx	a,@dptr
      002920 FC               [12] 1795 	mov	r4,a
      002921 EB               [12] 1796 	mov	a,r3
      002922 2B               [12] 1797 	add	a,r3
      002923 FB               [12] 1798 	mov	r3,a
      002924 EC               [12] 1799 	mov	a,r4
      002925 33               [12] 1800 	rlc	a
      002926 FC               [12] 1801 	mov	r4,a
      002927 EB               [12] 1802 	mov	a,r3
      002928 24 CA            [12] 1803 	add	a,#_buff_not_cleared
      00292A F5 82            [12] 1804 	mov	dpl,a
      00292C EC               [12] 1805 	mov	a,r4
      00292D 34 1C            [12] 1806 	addc	a,#(_buff_not_cleared >> 8)
      00292F F5 83            [12] 1807 	mov	dph,a
      002931 E4               [12] 1808 	clr	a
      002932 F0               [24] 1809 	movx	@dptr,a
      002933 A3               [24] 1810 	inc	dptr
      002934 F0               [24] 1811 	movx	@dptr,a
                                   1812 ;	character.c:217: ++(*free_buffer_count);
      002935 90 1B 7E         [24] 1813 	mov	dptr,#_command_processing_PARM_4
      002938 E0               [24] 1814 	movx	a,@dptr
      002939 FA               [12] 1815 	mov	r2,a
      00293A A3               [24] 1816 	inc	dptr
      00293B E0               [24] 1817 	movx	a,@dptr
      00293C FB               [12] 1818 	mov	r3,a
      00293D A3               [24] 1819 	inc	dptr
      00293E E0               [24] 1820 	movx	a,@dptr
      00293F FC               [12] 1821 	mov	r4,a
      002940 8A 82            [24] 1822 	mov	dpl,r2
      002942 8B 83            [24] 1823 	mov	dph,r3
      002944 8C F0            [24] 1824 	mov	b,r4
      002946 12 44 77         [24] 1825 	lcall	__gptrget
      002949 F8               [12] 1826 	mov	r0,a
      00294A A3               [24] 1827 	inc	dptr
      00294B 12 44 77         [24] 1828 	lcall	__gptrget
      00294E F9               [12] 1829 	mov	r1,a
      00294F 08               [12] 1830 	inc	r0
      002950 B8 00 01         [24] 1831 	cjne	r0,#0x00,00258$
      002953 09               [12] 1832 	inc	r1
      002954                       1833 00258$:
      002954 8A 82            [24] 1834 	mov	dpl,r2
      002956 8B 83            [24] 1835 	mov	dph,r3
      002958 8C F0            [24] 1836 	mov	b,r4
      00295A E8               [12] 1837 	mov	a,r0
      00295B 12 36 00         [24] 1838 	lcall	__gptrput
      00295E A3               [24] 1839 	inc	dptr
      00295F E9               [12] 1840 	mov	a,r1
      002960 12 36 00         [24] 1841 	lcall	__gptrput
                                   1842 ;	character.c:219: if(new_buffer_arr[buffer_to_delete] == NULL)
      002963 90 1C C8         [24] 1843 	mov	dptr,#_buffer_to_delete
      002966 E0               [24] 1844 	movx	a,@dptr
      002967 F8               [12] 1845 	mov	r0,a
      002968 A3               [24] 1846 	inc	dptr
      002969 E0               [24] 1847 	movx	a,@dptr
      00296A F9               [12] 1848 	mov	r1,a
      00296B E8               [12] 1849 	mov	a,r0
      00296C 28               [12] 1850 	add	a,r0
      00296D FE               [12] 1851 	mov	r6,a
      00296E E9               [12] 1852 	mov	a,r1
      00296F 33               [12] 1853 	rlc	a
      002970 FF               [12] 1854 	mov	r7,a
      002971 EE               [12] 1855 	mov	a,r6
      002972 24 8E            [12] 1856 	add	a,#_new_buffer_arr
      002974 F5 82            [12] 1857 	mov	dpl,a
      002976 EF               [12] 1858 	mov	a,r7
      002977 34 1B            [12] 1859 	addc	a,#(_new_buffer_arr >> 8)
      002979 F5 83            [12] 1860 	mov	dph,a
      00297B E0               [24] 1861 	movx	a,@dptr
      00297C FE               [12] 1862 	mov	r6,a
      00297D A3               [24] 1863 	inc	dptr
      00297E E0               [24] 1864 	movx	a,@dptr
      00297F 4E               [12] 1865 	orl	a,r6
      002980 D0 07            [24] 1866 	pop	ar7
      002982 D0 06            [24] 1867 	pop	ar6
      002984 D0 05            [24] 1868 	pop	ar5
      002986 70 31            [24] 1869 	jnz	00115$
                                   1870 ;	character.c:221: printf("***Buffer [%d] is freed****\n\r",buffer_to_delete);
      002988 C0 07            [24] 1871 	push	ar7
      00298A C0 06            [24] 1872 	push	ar6
      00298C C0 05            [24] 1873 	push	ar5
      00298E C0 04            [24] 1874 	push	ar4
      002990 C0 03            [24] 1875 	push	ar3
      002992 C0 02            [24] 1876 	push	ar2
      002994 C0 00            [24] 1877 	push	ar0
      002996 C0 01            [24] 1878 	push	ar1
      002998 74 26            [12] 1879 	mov	a,#___str_25
      00299A C0 E0            [24] 1880 	push	acc
      00299C 74 4B            [12] 1881 	mov	a,#(___str_25 >> 8)
      00299E C0 E0            [24] 1882 	push	acc
      0029A0 74 80            [12] 1883 	mov	a,#0x80
      0029A2 C0 E0            [24] 1884 	push	acc
      0029A4 12 3A 4B         [24] 1885 	lcall	_printf
      0029A7 E5 81            [12] 1886 	mov	a,sp
      0029A9 24 FB            [12] 1887 	add	a,#0xfb
      0029AB F5 81            [12] 1888 	mov	sp,a
      0029AD D0 02            [24] 1889 	pop	ar2
      0029AF D0 03            [24] 1890 	pop	ar3
      0029B1 D0 04            [24] 1891 	pop	ar4
      0029B3 D0 05            [24] 1892 	pop	ar5
      0029B5 D0 06            [24] 1893 	pop	ar6
      0029B7 D0 07            [24] 1894 	pop	ar7
      0029B9                       1895 00115$:
                                   1896 ;	character.c:223: printf_tiny("\033[1;0mBuffer[%d] de-allocated successfully  \n\r", buffer_to_delete);
      0029B9 C0 07            [24] 1897 	push	ar7
      0029BB C0 06            [24] 1898 	push	ar6
      0029BD C0 05            [24] 1899 	push	ar5
      0029BF C0 04            [24] 1900 	push	ar4
      0029C1 C0 03            [24] 1901 	push	ar3
      0029C3 C0 02            [24] 1902 	push	ar2
      0029C5 90 1C C8         [24] 1903 	mov	dptr,#_buffer_to_delete
      0029C8 E0               [24] 1904 	movx	a,@dptr
      0029C9 C0 E0            [24] 1905 	push	acc
      0029CB A3               [24] 1906 	inc	dptr
      0029CC E0               [24] 1907 	movx	a,@dptr
      0029CD C0 E0            [24] 1908 	push	acc
      0029CF 74 44            [12] 1909 	mov	a,#___str_26
      0029D1 C0 E0            [24] 1910 	push	acc
      0029D3 74 4B            [12] 1911 	mov	a,#(___str_26 >> 8)
      0029D5 C0 E0            [24] 1912 	push	acc
      0029D7 12 36 1B         [24] 1913 	lcall	_printf_tiny
      0029DA E5 81            [12] 1914 	mov	a,sp
      0029DC 24 FC            [12] 1915 	add	a,#0xfc
      0029DE F5 81            [12] 1916 	mov	sp,a
      0029E0 D0 02            [24] 1917 	pop	ar2
      0029E2 D0 03            [24] 1918 	pop	ar3
      0029E4 D0 04            [24] 1919 	pop	ar4
      0029E6 D0 05            [24] 1920 	pop	ar5
      0029E8 D0 06            [24] 1921 	pop	ar6
      0029EA D0 07            [24] 1922 	pop	ar7
                                   1923 ;	character.c:224: printf_tiny("\033[1;0mTotal Number of Buffers after deallocation = [%d]\n\r\n\r",*new_buffer_index);
      0029EC 8D 82            [24] 1924 	mov	dpl,r5
      0029EE 8E 83            [24] 1925 	mov	dph,r6
      0029F0 8F F0            [24] 1926 	mov	b,r7
      0029F2 12 44 77         [24] 1927 	lcall	__gptrget
      0029F5 FD               [12] 1928 	mov	r5,a
      0029F6 A3               [24] 1929 	inc	dptr
      0029F7 12 44 77         [24] 1930 	lcall	__gptrget
      0029FA FE               [12] 1931 	mov	r6,a
      0029FB C0 04            [24] 1932 	push	ar4
      0029FD C0 03            [24] 1933 	push	ar3
      0029FF C0 02            [24] 1934 	push	ar2
      002A01 C0 05            [24] 1935 	push	ar5
      002A03 C0 06            [24] 1936 	push	ar6
      002A05 74 73            [12] 1937 	mov	a,#___str_27
      002A07 C0 E0            [24] 1938 	push	acc
      002A09 74 4B            [12] 1939 	mov	a,#(___str_27 >> 8)
      002A0B C0 E0            [24] 1940 	push	acc
      002A0D 12 36 1B         [24] 1941 	lcall	_printf_tiny
      002A10 E5 81            [12] 1942 	mov	a,sp
      002A12 24 FC            [12] 1943 	add	a,#0xfc
      002A14 F5 81            [12] 1944 	mov	sp,a
      002A16 D0 02            [24] 1945 	pop	ar2
      002A18 D0 03            [24] 1946 	pop	ar3
      002A1A D0 04            [24] 1947 	pop	ar4
                                   1948 ;	character.c:225: printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \r\nTotal Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
      002A1C 8A 82            [24] 1949 	mov	dpl,r2
      002A1E 8B 83            [24] 1950 	mov	dph,r3
      002A20 8C F0            [24] 1951 	mov	b,r4
      002A22 12 44 77         [24] 1952 	lcall	__gptrget
      002A25 FA               [12] 1953 	mov	r2,a
      002A26 A3               [24] 1954 	inc	dptr
      002A27 12 44 77         [24] 1955 	lcall	__gptrget
      002A2A FB               [12] 1956 	mov	r3,a
      002A2B 90 1B 81         [24] 1957 	mov	dptr,#_command_processing_PARM_5
      002A2E E0               [24] 1958 	movx	a,@dptr
      002A2F FD               [12] 1959 	mov	r5,a
      002A30 A3               [24] 1960 	inc	dptr
      002A31 E0               [24] 1961 	movx	a,@dptr
      002A32 FE               [12] 1962 	mov	r6,a
      002A33 A3               [24] 1963 	inc	dptr
      002A34 E0               [24] 1964 	movx	a,@dptr
      002A35 FF               [12] 1965 	mov	r7,a
      002A36 8D 82            [24] 1966 	mov	dpl,r5
      002A38 8E 83            [24] 1967 	mov	dph,r6
      002A3A 8F F0            [24] 1968 	mov	b,r7
      002A3C 12 44 77         [24] 1969 	lcall	__gptrget
      002A3F FD               [12] 1970 	mov	r5,a
      002A40 A3               [24] 1971 	inc	dptr
      002A41 12 44 77         [24] 1972 	lcall	__gptrget
      002A44 FE               [12] 1973 	mov	r6,a
      002A45 C0 02            [24] 1974 	push	ar2
      002A47 C0 03            [24] 1975 	push	ar3
      002A49 C0 05            [24] 1976 	push	ar5
      002A4B C0 06            [24] 1977 	push	ar6
      002A4D 74 C8            [12] 1978 	mov	a,#___str_14
      002A4F C0 E0            [24] 1979 	push	acc
      002A51 74 48            [12] 1980 	mov	a,#(___str_14 >> 8)
      002A53 C0 E0            [24] 1981 	push	acc
      002A55 12 36 1B         [24] 1982 	lcall	_printf_tiny
      002A58 E5 81            [12] 1983 	mov	a,sp
      002A5A 24 FA            [12] 1984 	add	a,#0xfa
      002A5C F5 81            [12] 1985 	mov	sp,a
                                   1986 ;	character.c:227: break;
      002A5E 02 2E 89         [24] 1987 	ljmp	00142$
                                   1988 ;	character.c:230: case '@': // if input character is '@'
      002A61                       1989 00125$:
                                   1990 ;	character.c:232: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002A61 74 E1            [12] 1991 	mov	a,#___str_6
      002A63 C0 E0            [24] 1992 	push	acc
      002A65 74 46            [12] 1993 	mov	a,#(___str_6 >> 8)
      002A67 C0 E0            [24] 1994 	push	acc
      002A69 12 36 1B         [24] 1995 	lcall	_printf_tiny
      002A6C 15 81            [12] 1996 	dec	sp
      002A6E 15 81            [12] 1997 	dec	sp
                                   1998 ;	character.c:233: printf_tiny("\033[1;33m|************ Processing [@] *******************|\n\r");
      002A70 74 AF            [12] 1999 	mov	a,#___str_28
      002A72 C0 E0            [24] 2000 	push	acc
      002A74 74 4B            [12] 2001 	mov	a,#(___str_28 >> 8)
      002A76 C0 E0            [24] 2002 	push	acc
      002A78 12 36 1B         [24] 2003 	lcall	_printf_tiny
      002A7B 15 81            [12] 2004 	dec	sp
      002A7D 15 81            [12] 2005 	dec	sp
                                   2006 ;	character.c:234: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002A7F 74 E1            [12] 2007 	mov	a,#___str_6
      002A81 C0 E0            [24] 2008 	push	acc
      002A83 74 46            [12] 2009 	mov	a,#(___str_6 >> 8)
      002A85 C0 E0            [24] 2010 	push	acc
      002A87 12 36 1B         [24] 2011 	lcall	_printf_tiny
      002A8A 15 81            [12] 2012 	dec	sp
      002A8C 15 81            [12] 2013 	dec	sp
                                   2014 ;	character.c:237: for(int i = 0; i < *new_buffer_index; i++) {
      002A8E 90 1B 7B         [24] 2015 	mov	dptr,#_command_processing_PARM_3
      002A91 E0               [24] 2016 	movx	a,@dptr
      002A92 F5 0E            [12] 2017 	mov	_command_processing_sloc1_1_0,a
      002A94 A3               [24] 2018 	inc	dptr
      002A95 E0               [24] 2019 	movx	a,@dptr
      002A96 F5 0F            [12] 2020 	mov	(_command_processing_sloc1_1_0 + 1),a
      002A98 A3               [24] 2021 	inc	dptr
      002A99 E0               [24] 2022 	movx	a,@dptr
      002A9A F5 10            [12] 2023 	mov	(_command_processing_sloc1_1_0 + 2),a
      002A9C 7B 00            [12] 2024 	mov	r3,#0x00
      002A9E 7C 00            [12] 2025 	mov	r4,#0x00
      002AA0                       2026 00144$:
      002AA0 85 0E 82         [24] 2027 	mov	dpl,_command_processing_sloc1_1_0
      002AA3 85 0F 83         [24] 2028 	mov	dph,(_command_processing_sloc1_1_0 + 1)
      002AA6 85 10 F0         [24] 2029 	mov	b,(_command_processing_sloc1_1_0 + 2)
      002AA9 12 44 77         [24] 2030 	lcall	__gptrget
      002AAC F9               [12] 2031 	mov	r1,a
      002AAD A3               [24] 2032 	inc	dptr
      002AAE 12 44 77         [24] 2033 	lcall	__gptrget
      002AB1 FA               [12] 2034 	mov	r2,a
      002AB2 C3               [12] 2035 	clr	c
      002AB3 EB               [12] 2036 	mov	a,r3
      002AB4 99               [12] 2037 	subb	a,r1
      002AB5 EC               [12] 2038 	mov	a,r4
      002AB6 64 80            [12] 2039 	xrl	a,#0x80
      002AB8 8A F0            [24] 2040 	mov	b,r2
      002ABA 63 F0 80         [24] 2041 	xrl	b,#0x80
      002ABD 95 F0            [12] 2042 	subb	a,b
      002ABF 40 03            [24] 2043 	jc	00260$
      002AC1 02 2B 51         [24] 2044 	ljmp	00129$
      002AC4                       2045 00260$:
                                   2046 ;	character.c:238: char* buffer_to_free = new_buffer_arr[i];
      002AC4 EB               [12] 2047 	mov	a,r3
      002AC5 2B               [12] 2048 	add	a,r3
      002AC6 F9               [12] 2049 	mov	r1,a
      002AC7 EC               [12] 2050 	mov	a,r4
      002AC8 33               [12] 2051 	rlc	a
      002AC9 FA               [12] 2052 	mov	r2,a
      002ACA E9               [12] 2053 	mov	a,r1
      002ACB 24 8E            [12] 2054 	add	a,#_new_buffer_arr
      002ACD F9               [12] 2055 	mov	r1,a
      002ACE EA               [12] 2056 	mov	a,r2
      002ACF 34 1B            [12] 2057 	addc	a,#(_new_buffer_arr >> 8)
      002AD1 FA               [12] 2058 	mov	r2,a
      002AD2 89 82            [24] 2059 	mov	dpl,r1
      002AD4 8A 83            [24] 2060 	mov	dph,r2
      002AD6 E0               [24] 2061 	movx	a,@dptr
      002AD7 F8               [12] 2062 	mov	r0,a
      002AD8 A3               [24] 2063 	inc	dptr
      002AD9 E0               [24] 2064 	movx	a,@dptr
      002ADA FF               [12] 2065 	mov	r7,a
      002ADB 88 11            [24] 2066 	mov	_command_processing_sloc2_1_0,r0
      002ADD 8F 12            [24] 2067 	mov	(_command_processing_sloc2_1_0 + 1),r7
      002ADF 75 13 00         [24] 2068 	mov	(_command_processing_sloc2_1_0 + 2),#0x00
                                   2069 ;	character.c:239: if(buffer_to_free != NULL) {
      002AE2 E8               [12] 2070 	mov	a,r0
      002AE3 4F               [12] 2071 	orl	a,r7
      002AE4 60 46            [24] 2072 	jz	00127$
                                   2073 ;	character.c:240: free(buffer_to_free);
      002AE6 AD 11            [24] 2074 	mov	r5,_command_processing_sloc2_1_0
      002AE8 AE 12            [24] 2075 	mov	r6,(_command_processing_sloc2_1_0 + 1)
      002AEA AF 13            [24] 2076 	mov	r7,(_command_processing_sloc2_1_0 + 2)
      002AEC 8D 82            [24] 2077 	mov	dpl,r5
      002AEE 8E 83            [24] 2078 	mov	dph,r6
      002AF0 8F F0            [24] 2079 	mov	b,r7
      002AF2 C0 04            [24] 2080 	push	ar4
      002AF4 C0 03            [24] 2081 	push	ar3
      002AF6 C0 02            [24] 2082 	push	ar2
      002AF8 C0 01            [24] 2083 	push	ar1
      002AFA 12 33 85         [24] 2084 	lcall	_free
      002AFD D0 01            [24] 2085 	pop	ar1
      002AFF D0 02            [24] 2086 	pop	ar2
      002B01 D0 03            [24] 2087 	pop	ar3
      002B03 D0 04            [24] 2088 	pop	ar4
                                   2089 ;	character.c:241: new_buffer_arr[i] = NULL;
      002B05 89 82            [24] 2090 	mov	dpl,r1
      002B07 8A 83            [24] 2091 	mov	dph,r2
      002B09 E4               [12] 2092 	clr	a
      002B0A F0               [24] 2093 	movx	@dptr,a
      002B0B A3               [24] 2094 	inc	dptr
      002B0C F0               [24] 2095 	movx	@dptr,a
                                   2096 ;	character.c:242: printf_tiny("\033[1;0mBuffer[%d] freed\n\r",i);
      002B0D C0 04            [24] 2097 	push	ar4
      002B0F C0 03            [24] 2098 	push	ar3
      002B11 C0 03            [24] 2099 	push	ar3
      002B13 C0 04            [24] 2100 	push	ar4
      002B15 74 EA            [12] 2101 	mov	a,#___str_29
      002B17 C0 E0            [24] 2102 	push	acc
      002B19 74 4B            [12] 2103 	mov	a,#(___str_29 >> 8)
      002B1B C0 E0            [24] 2104 	push	acc
      002B1D 12 36 1B         [24] 2105 	lcall	_printf_tiny
      002B20 E5 81            [12] 2106 	mov	a,sp
      002B22 24 FC            [12] 2107 	add	a,#0xfc
      002B24 F5 81            [12] 2108 	mov	sp,a
      002B26 D0 03            [24] 2109 	pop	ar3
      002B28 D0 04            [24] 2110 	pop	ar4
      002B2A 80 1D            [24] 2111 	sjmp	00145$
      002B2C                       2112 00127$:
                                   2113 ;	character.c:244: printf_tiny("\033[1;0mBuffer[%d] was already NULL\n\r",i);
      002B2C C0 04            [24] 2114 	push	ar4
      002B2E C0 03            [24] 2115 	push	ar3
      002B30 C0 03            [24] 2116 	push	ar3
      002B32 C0 04            [24] 2117 	push	ar4
      002B34 74 03            [12] 2118 	mov	a,#___str_30
      002B36 C0 E0            [24] 2119 	push	acc
      002B38 74 4C            [12] 2120 	mov	a,#(___str_30 >> 8)
      002B3A C0 E0            [24] 2121 	push	acc
      002B3C 12 36 1B         [24] 2122 	lcall	_printf_tiny
      002B3F E5 81            [12] 2123 	mov	a,sp
      002B41 24 FC            [12] 2124 	add	a,#0xfc
      002B43 F5 81            [12] 2125 	mov	sp,a
      002B45 D0 03            [24] 2126 	pop	ar3
      002B47 D0 04            [24] 2127 	pop	ar4
      002B49                       2128 00145$:
                                   2129 ;	character.c:237: for(int i = 0; i < *new_buffer_index; i++) {
      002B49 0B               [12] 2130 	inc	r3
      002B4A BB 00 01         [24] 2131 	cjne	r3,#0x00,00262$
      002B4D 0C               [12] 2132 	inc	r4
      002B4E                       2133 00262$:
      002B4E 02 2A A0         [24] 2134 	ljmp	00144$
      002B51                       2135 00129$:
                                   2136 ;	character.c:249: *new_buffer_index = 0;
      002B51 85 0E 82         [24] 2137 	mov	dpl,_command_processing_sloc1_1_0
      002B54 85 0F 83         [24] 2138 	mov	dph,(_command_processing_sloc1_1_0 + 1)
      002B57 85 10 F0         [24] 2139 	mov	b,(_command_processing_sloc1_1_0 + 2)
      002B5A E4               [12] 2140 	clr	a
      002B5B 12 36 00         [24] 2141 	lcall	__gptrput
      002B5E A3               [24] 2142 	inc	dptr
      002B5F 12 36 00         [24] 2143 	lcall	__gptrput
                                   2144 ;	character.c:250: (*filled_buffer_count) = 0;
      002B62 90 1B 81         [24] 2145 	mov	dptr,#_command_processing_PARM_5
      002B65 E0               [24] 2146 	movx	a,@dptr
      002B66 FD               [12] 2147 	mov	r5,a
      002B67 A3               [24] 2148 	inc	dptr
      002B68 E0               [24] 2149 	movx	a,@dptr
      002B69 FE               [12] 2150 	mov	r6,a
      002B6A A3               [24] 2151 	inc	dptr
      002B6B E0               [24] 2152 	movx	a,@dptr
      002B6C FF               [12] 2153 	mov	r7,a
      002B6D 8D 82            [24] 2154 	mov	dpl,r5
      002B6F 8E 83            [24] 2155 	mov	dph,r6
      002B71 8F F0            [24] 2156 	mov	b,r7
      002B73 E4               [12] 2157 	clr	a
      002B74 12 36 00         [24] 2158 	lcall	__gptrput
      002B77 A3               [24] 2159 	inc	dptr
      002B78 12 36 00         [24] 2160 	lcall	__gptrput
                                   2161 ;	character.c:251: (*free_buffer_count) = 0;
      002B7B 90 1B 7E         [24] 2162 	mov	dptr,#_command_processing_PARM_4
      002B7E E0               [24] 2163 	movx	a,@dptr
      002B7F FD               [12] 2164 	mov	r5,a
      002B80 A3               [24] 2165 	inc	dptr
      002B81 E0               [24] 2166 	movx	a,@dptr
      002B82 FE               [12] 2167 	mov	r6,a
      002B83 A3               [24] 2168 	inc	dptr
      002B84 E0               [24] 2169 	movx	a,@dptr
      002B85 FF               [12] 2170 	mov	r7,a
      002B86 8D 82            [24] 2171 	mov	dpl,r5
      002B88 8E 83            [24] 2172 	mov	dph,r6
      002B8A 8F F0            [24] 2173 	mov	b,r7
      002B8C E4               [12] 2174 	clr	a
      002B8D 12 36 00         [24] 2175 	lcall	__gptrput
      002B90 A3               [24] 2176 	inc	dptr
      002B91 12 36 00         [24] 2177 	lcall	__gptrput
                                   2178 ;	character.c:252: return ALL_BUFFER_CLEARED;
      002B94 90 00 01         [24] 2179 	mov	dptr,#0x0001
      002B97 22               [24] 2180 	ret
                                   2181 ;	character.c:254: case '=': // if input character is '='
      002B98                       2182 00130$:
                                   2183 ;	character.c:256: printf_tiny("\033[1;33m\r\n|************ Processing [=] *******************|\n\r");
      002B98 74 27            [12] 2184 	mov	a,#___str_31
      002B9A C0 E0            [24] 2185 	push	acc
      002B9C 74 4C            [12] 2186 	mov	a,#(___str_31 >> 8)
      002B9E C0 E0            [24] 2187 	push	acc
      002BA0 12 36 1B         [24] 2188 	lcall	_printf_tiny
      002BA3 15 81            [12] 2189 	dec	sp
      002BA5 15 81            [12] 2190 	dec	sp
                                   2191 ;	character.c:259: buffer0_hexdump(LENGTH_16);
      002BA7 90 00 10         [24] 2192 	mov	dptr,#0x0010
      002BAA 12 21 F2         [24] 2193 	lcall	_buffer0_hexdump
                                   2194 ;	character.c:260: break;
      002BAD 02 2E 89         [24] 2195 	ljmp	00142$
                                   2196 ;	character.c:262: case '?':  // if input character is '?'
      002BB0                       2197 00131$:
                                   2198 ;	character.c:264: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002BB0 74 E1            [12] 2199 	mov	a,#___str_6
      002BB2 C0 E0            [24] 2200 	push	acc
      002BB4 74 46            [12] 2201 	mov	a,#(___str_6 >> 8)
      002BB6 C0 E0            [24] 2202 	push	acc
      002BB8 12 36 1B         [24] 2203 	lcall	_printf_tiny
      002BBB 15 81            [12] 2204 	dec	sp
      002BBD 15 81            [12] 2205 	dec	sp
                                   2206 ;	character.c:265: printf_tiny("\033[1;33m|************ Processing [?] *******************|\n\r");
      002BBF 74 64            [12] 2207 	mov	a,#___str_32
      002BC1 C0 E0            [24] 2208 	push	acc
      002BC3 74 4C            [12] 2209 	mov	a,#(___str_32 >> 8)
      002BC5 C0 E0            [24] 2210 	push	acc
      002BC7 12 36 1B         [24] 2211 	lcall	_printf_tiny
      002BCA 15 81            [12] 2212 	dec	sp
      002BCC 15 81            [12] 2213 	dec	sp
                                   2214 ;	character.c:266: printf_tiny("\033[1;33m|***********************************************|\n\r");
      002BCE 74 E1            [12] 2215 	mov	a,#___str_6
      002BD0 C0 E0            [24] 2216 	push	acc
      002BD2 74 46            [12] 2217 	mov	a,#(___str_6 >> 8)
      002BD4 C0 E0            [24] 2218 	push	acc
      002BD6 12 36 1B         [24] 2219 	lcall	_printf_tiny
      002BD9 15 81            [12] 2220 	dec	sp
      002BDB 15 81            [12] 2221 	dec	sp
                                   2222 ;	character.c:269: printf_tiny(" \033[1;34m\r\n|***********************************************|\n\r");
      002BDD 74 9F            [12] 2223 	mov	a,#___str_33
      002BDF C0 E0            [24] 2224 	push	acc
      002BE1 74 4C            [12] 2225 	mov	a,#(___str_33 >> 8)
      002BE3 C0 E0            [24] 2226 	push	acc
      002BE5 12 36 1B         [24] 2227 	lcall	_printf_tiny
      002BE8 15 81            [12] 2228 	dec	sp
      002BEA 15 81            [12] 2229 	dec	sp
                                   2230 ;	character.c:270: printf_tiny(" \033[1;34m|*************** HEAP REPORT *******************|\n\r");
      002BEC 74 DD            [12] 2231 	mov	a,#___str_34
      002BEE C0 E0            [24] 2232 	push	acc
      002BF0 74 4C            [12] 2233 	mov	a,#(___str_34 >> 8)
      002BF2 C0 E0            [24] 2234 	push	acc
      002BF4 12 36 1B         [24] 2235 	lcall	_printf_tiny
      002BF7 15 81            [12] 2236 	dec	sp
      002BF9 15 81            [12] 2237 	dec	sp
                                   2238 ;	character.c:271: printf_tiny(" \033[1;34m|***********************************************|\n\r");
      002BFB 74 19            [12] 2239 	mov	a,#___str_35
      002BFD C0 E0            [24] 2240 	push	acc
      002BFF 74 4D            [12] 2241 	mov	a,#(___str_35 >> 8)
      002C01 C0 E0            [24] 2242 	push	acc
      002C03 12 36 1B         [24] 2243 	lcall	_printf_tiny
      002C06 15 81            [12] 2244 	dec	sp
      002C08 15 81            [12] 2245 	dec	sp
                                   2246 ;	character.c:272: for(int i=0; i<*new_buffer_index; i++)              // iterate over the new buffer array using a loop variable i
      002C0A 90 1B 84         [24] 2247 	mov	dptr,#_command_processing_PARM_6
      002C0D E0               [24] 2248 	movx	a,@dptr
      002C0E F5 16            [12] 2249 	mov	_command_processing_sloc4_1_0,a
      002C10 A3               [24] 2250 	inc	dptr
      002C11 E0               [24] 2251 	movx	a,@dptr
      002C12 F5 17            [12] 2252 	mov	(_command_processing_sloc4_1_0 + 1),a
      002C14 A3               [24] 2253 	inc	dptr
      002C15 E0               [24] 2254 	movx	a,@dptr
      002C16 F5 18            [12] 2255 	mov	(_command_processing_sloc4_1_0 + 2),a
      002C18 90 1B 87         [24] 2256 	mov	dptr,#_command_processing_PARM_7
      002C1B E0               [24] 2257 	movx	a,@dptr
      002C1C FA               [12] 2258 	mov	r2,a
      002C1D A3               [24] 2259 	inc	dptr
      002C1E E0               [24] 2260 	movx	a,@dptr
      002C1F FB               [12] 2261 	mov	r3,a
      002C20 A3               [24] 2262 	inc	dptr
      002C21 E0               [24] 2263 	movx	a,@dptr
      002C22 FC               [12] 2264 	mov	r4,a
      002C23 90 1B 7B         [24] 2265 	mov	dptr,#_command_processing_PARM_3
      002C26 E0               [24] 2266 	movx	a,@dptr
      002C27 F5 11            [12] 2267 	mov	_command_processing_sloc2_1_0,a
      002C29 A3               [24] 2268 	inc	dptr
      002C2A E0               [24] 2269 	movx	a,@dptr
      002C2B F5 12            [12] 2270 	mov	(_command_processing_sloc2_1_0 + 1),a
      002C2D A3               [24] 2271 	inc	dptr
      002C2E E0               [24] 2272 	movx	a,@dptr
      002C2F F5 13            [12] 2273 	mov	(_command_processing_sloc2_1_0 + 2),a
      002C31 78 00            [12] 2274 	mov	r0,#0x00
      002C33 79 00            [12] 2275 	mov	r1,#0x00
      002C35                       2276 00147$:
      002C35 C0 02            [24] 2277 	push	ar2
      002C37 C0 03            [24] 2278 	push	ar3
      002C39 C0 04            [24] 2279 	push	ar4
      002C3B 85 11 82         [24] 2280 	mov	dpl,_command_processing_sloc2_1_0
      002C3E 85 12 83         [24] 2281 	mov	dph,(_command_processing_sloc2_1_0 + 1)
      002C41 85 13 F0         [24] 2282 	mov	b,(_command_processing_sloc2_1_0 + 2)
      002C44 12 44 77         [24] 2283 	lcall	__gptrget
      002C47 FB               [12] 2284 	mov	r3,a
      002C48 A3               [24] 2285 	inc	dptr
      002C49 12 44 77         [24] 2286 	lcall	__gptrget
      002C4C FC               [12] 2287 	mov	r4,a
      002C4D C3               [12] 2288 	clr	c
      002C4E E8               [12] 2289 	mov	a,r0
      002C4F 9B               [12] 2290 	subb	a,r3
      002C50 E9               [12] 2291 	mov	a,r1
      002C51 64 80            [12] 2292 	xrl	a,#0x80
      002C53 8C F0            [24] 2293 	mov	b,r4
      002C55 63 F0 80         [24] 2294 	xrl	b,#0x80
      002C58 95 F0            [12] 2295 	subb	a,b
      002C5A D0 04            [24] 2296 	pop	ar4
      002C5C D0 03            [24] 2297 	pop	ar3
      002C5E D0 02            [24] 2298 	pop	ar2
      002C60 40 03            [24] 2299 	jc	00263$
      002C62 02 2E 4F         [24] 2300 	ljmp	00138$
      002C65                       2301 00263$:
                                   2302 ;	character.c:274: if( (new_buffer_arr[i] == NULL) || (new_buffer_arr[i] == 0) )                   // check if the current buffer is already cleared
      002C65 E8               [12] 2303 	mov	a,r0
      002C66 28               [12] 2304 	add	a,r0
      002C67 F5 0E            [12] 2305 	mov	_command_processing_sloc1_1_0,a
      002C69 E9               [12] 2306 	mov	a,r1
      002C6A 33               [12] 2307 	rlc	a
      002C6B F5 0F            [12] 2308 	mov	(_command_processing_sloc1_1_0 + 1),a
      002C6D E5 0E            [12] 2309 	mov	a,_command_processing_sloc1_1_0
      002C6F 24 8E            [12] 2310 	add	a,#_new_buffer_arr
      002C71 F5 0C            [12] 2311 	mov	_command_processing_sloc0_1_0,a
      002C73 E5 0F            [12] 2312 	mov	a,(_command_processing_sloc1_1_0 + 1)
      002C75 34 1B            [12] 2313 	addc	a,#(_new_buffer_arr >> 8)
      002C77 F5 0D            [12] 2314 	mov	(_command_processing_sloc0_1_0 + 1),a
      002C79 85 0C 82         [24] 2315 	mov	dpl,_command_processing_sloc0_1_0
      002C7C 85 0D 83         [24] 2316 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002C7F E0               [24] 2317 	movx	a,@dptr
      002C80 F5 14            [12] 2318 	mov	_command_processing_sloc3_1_0,a
      002C82 A3               [24] 2319 	inc	dptr
      002C83 E0               [24] 2320 	movx	a,@dptr
      002C84 F5 15            [12] 2321 	mov	(_command_processing_sloc3_1_0 + 1),a
      002C86 E5 14            [12] 2322 	mov	a,_command_processing_sloc3_1_0
      002C88 45 15            [12] 2323 	orl	a,(_command_processing_sloc3_1_0 + 1)
      002C8A 60 06            [24] 2324 	jz	00132$
      002C8C E5 14            [12] 2325 	mov	a,_command_processing_sloc3_1_0
      002C8E 45 15            [12] 2326 	orl	a,(_command_processing_sloc3_1_0 + 1)
      002C90 70 26            [24] 2327 	jnz	00133$
      002C92                       2328 00132$:
                                   2329 ;	character.c:276: printf_tiny("\033[1;31m\n\rBuffer [%d] already cleared!!\n\r"); // print a message indicating the buffer is already cleared
      002C92 C0 04            [24] 2330 	push	ar4
      002C94 C0 03            [24] 2331 	push	ar3
      002C96 C0 02            [24] 2332 	push	ar2
      002C98 C0 01            [24] 2333 	push	ar1
      002C9A C0 00            [24] 2334 	push	ar0
      002C9C 74 55            [12] 2335 	mov	a,#___str_36
      002C9E C0 E0            [24] 2336 	push	acc
      002CA0 74 4D            [12] 2337 	mov	a,#(___str_36 >> 8)
      002CA2 C0 E0            [24] 2338 	push	acc
      002CA4 12 36 1B         [24] 2339 	lcall	_printf_tiny
      002CA7 15 81            [12] 2340 	dec	sp
      002CA9 15 81            [12] 2341 	dec	sp
      002CAB D0 00            [24] 2342 	pop	ar0
      002CAD D0 01            [24] 2343 	pop	ar1
      002CAF D0 02            [24] 2344 	pop	ar2
      002CB1 D0 03            [24] 2345 	pop	ar3
      002CB3 D0 04            [24] 2346 	pop	ar4
                                   2347 ;	character.c:277: continue;                                    // continue the loop as there is no need to iterate further
      002CB5 02 2E 47         [24] 2348 	ljmp	00137$
      002CB8                       2349 00133$:
                                   2350 ;	character.c:280: printf("\033[1;36m\n\r**Buffer [%d]**\n\r",i);  // print the buffer index in bold cyan color
      002CB8 C0 02            [24] 2351 	push	ar2
      002CBA C0 03            [24] 2352 	push	ar3
      002CBC C0 04            [24] 2353 	push	ar4
      002CBE C0 04            [24] 2354 	push	ar4
      002CC0 C0 03            [24] 2355 	push	ar3
      002CC2 C0 02            [24] 2356 	push	ar2
      002CC4 C0 01            [24] 2357 	push	ar1
      002CC6 C0 00            [24] 2358 	push	ar0
      002CC8 C0 00            [24] 2359 	push	ar0
      002CCA C0 01            [24] 2360 	push	ar1
      002CCC 74 7E            [12] 2361 	mov	a,#___str_37
      002CCE C0 E0            [24] 2362 	push	acc
      002CD0 74 4D            [12] 2363 	mov	a,#(___str_37 >> 8)
      002CD2 C0 E0            [24] 2364 	push	acc
      002CD4 74 80            [12] 2365 	mov	a,#0x80
      002CD6 C0 E0            [24] 2366 	push	acc
      002CD8 12 3A 4B         [24] 2367 	lcall	_printf
      002CDB E5 81            [12] 2368 	mov	a,sp
      002CDD 24 FB            [12] 2369 	add	a,#0xfb
      002CDF F5 81            [12] 2370 	mov	sp,a
      002CE1 D0 00            [24] 2371 	pop	ar0
      002CE3 D0 01            [24] 2372 	pop	ar1
      002CE5 D0 02            [24] 2373 	pop	ar2
      002CE7 D0 03            [24] 2374 	pop	ar3
      002CE9 D0 04            [24] 2375 	pop	ar4
                                   2376 ;	character.c:281: printf("\033[1;0m\n\rBuffer [%d] : Start Address = [%p] \n\r",i,new_buffer_arr[i]); // print the start address of the buffer with index i
      002CEB 85 0C 82         [24] 2377 	mov	dpl,_command_processing_sloc0_1_0
      002CEE 85 0D 83         [24] 2378 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002CF1 E0               [24] 2379 	movx	a,@dptr
      002CF2 FB               [12] 2380 	mov	r3,a
      002CF3 A3               [24] 2381 	inc	dptr
      002CF4 E0               [24] 2382 	movx	a,@dptr
      002CF5 FC               [12] 2383 	mov	r4,a
      002CF6 7A 00            [12] 2384 	mov	r2,#0x00
      002CF8 C0 04            [24] 2385 	push	ar4
      002CFA C0 03            [24] 2386 	push	ar3
      002CFC C0 02            [24] 2387 	push	ar2
      002CFE C0 01            [24] 2388 	push	ar1
      002D00 C0 00            [24] 2389 	push	ar0
      002D02 C0 03            [24] 2390 	push	ar3
      002D04 C0 04            [24] 2391 	push	ar4
      002D06 C0 02            [24] 2392 	push	ar2
      002D08 C0 00            [24] 2393 	push	ar0
      002D0A C0 01            [24] 2394 	push	ar1
      002D0C 74 99            [12] 2395 	mov	a,#___str_38
      002D0E C0 E0            [24] 2396 	push	acc
      002D10 74 4D            [12] 2397 	mov	a,#(___str_38 >> 8)
      002D12 C0 E0            [24] 2398 	push	acc
      002D14 74 80            [12] 2399 	mov	a,#0x80
      002D16 C0 E0            [24] 2400 	push	acc
      002D18 12 3A 4B         [24] 2401 	lcall	_printf
      002D1B E5 81            [12] 2402 	mov	a,sp
      002D1D 24 F8            [12] 2403 	add	a,#0xf8
      002D1F F5 81            [12] 2404 	mov	sp,a
      002D21 D0 00            [24] 2405 	pop	ar0
      002D23 D0 01            [24] 2406 	pop	ar1
      002D25 D0 02            [24] 2407 	pop	ar2
      002D27 D0 03            [24] 2408 	pop	ar3
      002D29 D0 04            [24] 2409 	pop	ar4
                                   2410 ;	character.c:282: printf("\033[1;0m\n\rBuffer [%d] : End Address   = [%p] \n\r",i,new_buffer_arr[i] + buffer_size_arr[i]); // print the end address of the buffer with index i
      002D2B 85 0C 82         [24] 2411 	mov	dpl,_command_processing_sloc0_1_0
      002D2E 85 0D 83         [24] 2412 	mov	dph,(_command_processing_sloc0_1_0 + 1)
      002D31 E0               [24] 2413 	movx	a,@dptr
      002D32 F5 14            [12] 2414 	mov	_command_processing_sloc3_1_0,a
      002D34 A3               [24] 2415 	inc	dptr
      002D35 E0               [24] 2416 	movx	a,@dptr
      002D36 F5 15            [12] 2417 	mov	(_command_processing_sloc3_1_0 + 1),a
      002D38 E5 0E            [12] 2418 	mov	a,_command_processing_sloc1_1_0
      002D3A 24 A4            [12] 2419 	add	a,#_buffer_size_arr
      002D3C FA               [12] 2420 	mov	r2,a
      002D3D E5 0F            [12] 2421 	mov	a,(_command_processing_sloc1_1_0 + 1)
      002D3F 34 1D            [12] 2422 	addc	a,#(_buffer_size_arr >> 8)
      002D41 FC               [12] 2423 	mov	r4,a
      002D42 8A 82            [24] 2424 	mov	dpl,r2
      002D44 8C 83            [24] 2425 	mov	dph,r4
      002D46 E0               [24] 2426 	movx	a,@dptr
      002D47 FB               [12] 2427 	mov	r3,a
      002D48 A3               [24] 2428 	inc	dptr
      002D49 E0               [24] 2429 	movx	a,@dptr
      002D4A FF               [12] 2430 	mov	r7,a
      002D4B EB               [12] 2431 	mov	a,r3
      002D4C 25 14            [12] 2432 	add	a,_command_processing_sloc3_1_0
      002D4E FB               [12] 2433 	mov	r3,a
      002D4F EF               [12] 2434 	mov	a,r7
      002D50 35 15            [12] 2435 	addc	a,(_command_processing_sloc3_1_0 + 1)
      002D52 FF               [12] 2436 	mov	r7,a
      002D53 7E 00            [12] 2437 	mov	r6,#0x00
      002D55 C0 04            [24] 2438 	push	ar4
      002D57 C0 03            [24] 2439 	push	ar3
      002D59 C0 02            [24] 2440 	push	ar2
      002D5B C0 01            [24] 2441 	push	ar1
      002D5D C0 00            [24] 2442 	push	ar0
      002D5F C0 03            [24] 2443 	push	ar3
      002D61 C0 07            [24] 2444 	push	ar7
      002D63 C0 06            [24] 2445 	push	ar6
      002D65 C0 00            [24] 2446 	push	ar0
      002D67 C0 01            [24] 2447 	push	ar1
      002D69 74 C7            [12] 2448 	mov	a,#___str_39
      002D6B C0 E0            [24] 2449 	push	acc
      002D6D 74 4D            [12] 2450 	mov	a,#(___str_39 >> 8)
      002D6F C0 E0            [24] 2451 	push	acc
      002D71 74 80            [12] 2452 	mov	a,#0x80
      002D73 C0 E0            [24] 2453 	push	acc
      002D75 12 3A 4B         [24] 2454 	lcall	_printf
      002D78 E5 81            [12] 2455 	mov	a,sp
      002D7A 24 F8            [12] 2456 	add	a,#0xf8
      002D7C F5 81            [12] 2457 	mov	sp,a
      002D7E D0 00            [24] 2458 	pop	ar0
      002D80 D0 01            [24] 2459 	pop	ar1
      002D82 D0 02            [24] 2460 	pop	ar2
      002D84 D0 03            [24] 2461 	pop	ar3
      002D86 D0 04            [24] 2462 	pop	ar4
                                   2463 ;	character.c:283: printf("\033[1;0m\n\rBuffer [%d] : Total Size    = [%d] \n\r",i,buffer_size_arr[i]); // print the total size of the buffer with index i
      002D88 8A 82            [24] 2464 	mov	dpl,r2
      002D8A 8C 83            [24] 2465 	mov	dph,r4
      002D8C E0               [24] 2466 	movx	a,@dptr
      002D8D FA               [12] 2467 	mov	r2,a
      002D8E A3               [24] 2468 	inc	dptr
      002D8F E0               [24] 2469 	movx	a,@dptr
      002D90 FC               [12] 2470 	mov	r4,a
      002D91 C0 04            [24] 2471 	push	ar4
      002D93 C0 03            [24] 2472 	push	ar3
      002D95 C0 02            [24] 2473 	push	ar2
      002D97 C0 01            [24] 2474 	push	ar1
      002D99 C0 00            [24] 2475 	push	ar0
      002D9B C0 02            [24] 2476 	push	ar2
      002D9D C0 04            [24] 2477 	push	ar4
      002D9F C0 00            [24] 2478 	push	ar0
      002DA1 C0 01            [24] 2479 	push	ar1
      002DA3 74 F5            [12] 2480 	mov	a,#___str_40
      002DA5 C0 E0            [24] 2481 	push	acc
      002DA7 74 4D            [12] 2482 	mov	a,#(___str_40 >> 8)
      002DA9 C0 E0            [24] 2483 	push	acc
      002DAB 74 80            [12] 2484 	mov	a,#0x80
      002DAD C0 E0            [24] 2485 	push	acc
      002DAF 12 3A 4B         [24] 2486 	lcall	_printf
      002DB2 E5 81            [12] 2487 	mov	a,sp
      002DB4 24 F9            [12] 2488 	add	a,#0xf9
      002DB6 F5 81            [12] 2489 	mov	sp,a
      002DB8 D0 00            [24] 2490 	pop	ar0
      002DBA D0 01            [24] 2491 	pop	ar1
      002DBC D0 02            [24] 2492 	pop	ar2
      002DBE D0 03            [24] 2493 	pop	ar3
      002DC0 D0 04            [24] 2494 	pop	ar4
                                   2495 ;	character.c:284: if(i == 0)                                      // if it is the first buffer
      002DC2 D0 04            [24] 2496 	pop	ar4
      002DC4 D0 03            [24] 2497 	pop	ar3
      002DC6 D0 02            [24] 2498 	pop	ar2
      002DC8 E8               [12] 2499 	mov	a,r0
      002DC9 49               [12] 2500 	orl	a,r1
      002DCA 70 7B            [24] 2501 	jnz	00137$
                                   2502 ;	character.c:286: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*storage_character_count); // print the number of storage characters since last ?= for the first buffer
      002DCC 85 16 82         [24] 2503 	mov	dpl,_command_processing_sloc4_1_0
      002DCF 85 17 83         [24] 2504 	mov	dph,(_command_processing_sloc4_1_0 + 1)
      002DD2 85 18 F0         [24] 2505 	mov	b,(_command_processing_sloc4_1_0 + 2)
      002DD5 12 44 77         [24] 2506 	lcall	__gptrget
      002DD8 FE               [12] 2507 	mov	r6,a
      002DD9 A3               [24] 2508 	inc	dptr
      002DDA 12 44 77         [24] 2509 	lcall	__gptrget
      002DDD FF               [12] 2510 	mov	r7,a
      002DDE C0 04            [24] 2511 	push	ar4
      002DE0 C0 03            [24] 2512 	push	ar3
      002DE2 C0 02            [24] 2513 	push	ar2
      002DE4 C0 01            [24] 2514 	push	ar1
      002DE6 C0 00            [24] 2515 	push	ar0
      002DE8 C0 06            [24] 2516 	push	ar6
      002DEA C0 07            [24] 2517 	push	ar7
      002DEC C0 00            [24] 2518 	push	ar0
      002DEE C0 01            [24] 2519 	push	ar1
      002DF0 74 23            [12] 2520 	mov	a,#___str_41
      002DF2 C0 E0            [24] 2521 	push	acc
      002DF4 74 4E            [12] 2522 	mov	a,#(___str_41 >> 8)
      002DF6 C0 E0            [24] 2523 	push	acc
      002DF8 12 36 1B         [24] 2524 	lcall	_printf_tiny
      002DFB E5 81            [12] 2525 	mov	a,sp
      002DFD 24 FA            [12] 2526 	add	a,#0xfa
      002DFF F5 81            [12] 2527 	mov	sp,a
      002E01 D0 00            [24] 2528 	pop	ar0
      002E03 D0 01            [24] 2529 	pop	ar1
      002E05 D0 02            [24] 2530 	pop	ar2
      002E07 D0 03            [24] 2531 	pop	ar3
      002E09 D0 04            [24] 2532 	pop	ar4
                                   2533 ;	character.c:287: printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*total_characters_count); // print the number of storage characters since last ?= for the first buffer
      002E0B 8A 82            [24] 2534 	mov	dpl,r2
      002E0D 8B 83            [24] 2535 	mov	dph,r3
      002E0F 8C F0            [24] 2536 	mov	b,r4
      002E11 12 44 77         [24] 2537 	lcall	__gptrget
      002E14 FE               [12] 2538 	mov	r6,a
      002E15 A3               [24] 2539 	inc	dptr
      002E16 12 44 77         [24] 2540 	lcall	__gptrget
      002E19 FF               [12] 2541 	mov	r7,a
      002E1A C0 04            [24] 2542 	push	ar4
      002E1C C0 03            [24] 2543 	push	ar3
      002E1E C0 02            [24] 2544 	push	ar2
      002E20 C0 01            [24] 2545 	push	ar1
      002E22 C0 00            [24] 2546 	push	ar0
      002E24 C0 06            [24] 2547 	push	ar6
      002E26 C0 07            [24] 2548 	push	ar7
      002E28 C0 00            [24] 2549 	push	ar0
      002E2A C0 01            [24] 2550 	push	ar1
      002E2C 74 23            [12] 2551 	mov	a,#___str_41
      002E2E C0 E0            [24] 2552 	push	acc
      002E30 74 4E            [12] 2553 	mov	a,#(___str_41 >> 8)
      002E32 C0 E0            [24] 2554 	push	acc
      002E34 12 36 1B         [24] 2555 	lcall	_printf_tiny
      002E37 E5 81            [12] 2556 	mov	a,sp
      002E39 24 FA            [12] 2557 	add	a,#0xfa
      002E3B F5 81            [12] 2558 	mov	sp,a
      002E3D D0 00            [24] 2559 	pop	ar0
      002E3F D0 01            [24] 2560 	pop	ar1
      002E41 D0 02            [24] 2561 	pop	ar2
      002E43 D0 03            [24] 2562 	pop	ar3
      002E45 D0 04            [24] 2563 	pop	ar4
      002E47                       2564 00137$:
                                   2565 ;	character.c:272: for(int i=0; i<*new_buffer_index; i++)              // iterate over the new buffer array using a loop variable i
      002E47 08               [12] 2566 	inc	r0
      002E48 B8 00 01         [24] 2567 	cjne	r0,#0x00,00267$
      002E4B 09               [12] 2568 	inc	r1
      002E4C                       2569 00267$:
      002E4C 02 2C 35         [24] 2570 	ljmp	00147$
      002E4F                       2571 00138$:
                                   2572 ;	character.c:291: *storage_character_count = 0;
      002E4F 85 16 82         [24] 2573 	mov	dpl,_command_processing_sloc4_1_0
      002E52 85 17 83         [24] 2574 	mov	dph,(_command_processing_sloc4_1_0 + 1)
      002E55 85 18 F0         [24] 2575 	mov	b,(_command_processing_sloc4_1_0 + 2)
      002E58 E4               [12] 2576 	clr	a
      002E59 12 36 00         [24] 2577 	lcall	__gptrput
      002E5C A3               [24] 2578 	inc	dptr
      002E5D 12 36 00         [24] 2579 	lcall	__gptrput
                                   2580 ;	character.c:292: *total_characters_count = 0;
      002E60 8A 82            [24] 2581 	mov	dpl,r2
      002E62 8B 83            [24] 2582 	mov	dph,r3
      002E64 8C F0            [24] 2583 	mov	b,r4
      002E66 12 36 00         [24] 2584 	lcall	__gptrput
      002E69 A3               [24] 2585 	inc	dptr
      002E6A 12 36 00         [24] 2586 	lcall	__gptrput
                                   2587 ;	character.c:295: buffer0_hexdump(LENGTH_32);
      002E6D 90 00 20         [24] 2588 	mov	dptr,#0x0020
      002E70 12 21 F2         [24] 2589 	lcall	_buffer0_hexdump
                                   2590 ;	character.c:298: empty_buffer0();
      002E73 12 21 B2         [24] 2591 	lcall	_empty_buffer0
                                   2592 ;	character.c:300: printf_tiny(" \033[1;34m|************ REPORT ENDED  *******************|\n\r\n\r\n\r");
      002E76 74 6A            [12] 2593 	mov	a,#___str_42
      002E78 C0 E0            [24] 2594 	push	acc
      002E7A 74 4E            [12] 2595 	mov	a,#(___str_42 >> 8)
      002E7C C0 E0            [24] 2596 	push	acc
      002E7E 12 36 1B         [24] 2597 	lcall	_printf_tiny
      002E81 15 81            [12] 2598 	dec	sp
      002E83 15 81            [12] 2599 	dec	sp
                                   2600 ;	character.c:302: return BUFFER0_CLEARED;
      002E85 90 00 02         [24] 2601 	mov	dptr,#0x0002
                                   2602 ;	character.c:307: }
      002E88 22               [24] 2603 	ret
      002E89                       2604 00142$:
                                   2605 ;	character.c:309: return ALL_BUFFER_NOT_CLEARED;
      002E89 90 00 00         [24] 2606 	mov	dptr,#0x0000
                                   2607 ;	character.c:310: }
      002E8C 22               [24] 2608 	ret
                                   2609 	.area CSEG    (CODE)
                                   2610 	.area CONST   (CODE)
                                   2611 	.area CONST   (CODE)
      0046A5                       2612 ___str_0:
      0046A5 1B                    2613 	.db 0x1b
      0046A6 5B 31 3B 33 34 6D     2614 	.ascii "[1;34m"
      0046AC 0A                    2615 	.db 0x0a
      0046AD 0D                    2616 	.db 0x0d
      0046AE 00                    2617 	.db 0x00
                                   2618 	.area CSEG    (CODE)
                                   2619 	.area CONST   (CODE)
      0046AF                       2620 ___str_1:
      0046AF 25 70 20 3A           2621 	.ascii "%p :"
      0046B3 00                    2622 	.db 0x00
                                   2623 	.area CSEG    (CODE)
                                   2624 	.area CONST   (CODE)
      0046B4                       2625 ___str_2:
      0046B4 1B                    2626 	.db 0x1b
      0046B5 5B 31 3B 33 34 6D 25  2627 	.ascii "[1;34m%p :"
             70 20 3A
      0046BF 00                    2628 	.db 0x00
                                   2629 	.area CSEG    (CODE)
                                   2630 	.area CONST   (CODE)
      0046C0                       2631 ___str_3:
      0046C0 1B                    2632 	.db 0x1b
      0046C1 5B 31 3B 33 34 6D 20  2633 	.ascii "[1;34m XX"
             58 58
      0046CA 00                    2634 	.db 0x00
                                   2635 	.area CSEG    (CODE)
                                   2636 	.area CONST   (CODE)
      0046CB                       2637 ___str_4:
      0046CB 1B                    2638 	.db 0x1b
      0046CC 5B 31 3B 33 34 6D 20  2639 	.ascii "[1;34m %x"
             25 78
      0046D5 00                    2640 	.db 0x00
                                   2641 	.area CSEG    (CODE)
                                   2642 	.area CONST   (CODE)
      0046D6                       2643 ___str_5:
      0046D6 1B                    2644 	.db 0x1b
      0046D7 5B 31 3B 33 34 6D 20  2645 	.ascii "[1;34m %d"
             25 64
      0046E0 00                    2646 	.db 0x00
                                   2647 	.area CSEG    (CODE)
                                   2648 	.area CONST   (CODE)
      0046E1                       2649 ___str_6:
      0046E1 1B                    2650 	.db 0x1b
      0046E2 5B 31 3B 33 33 6D 7C  2651 	.ascii "[1;33m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004719 0A                    2652 	.db 0x0a
      00471A 0D                    2653 	.db 0x0d
      00471B 00                    2654 	.db 0x00
                                   2655 	.area CSEG    (CODE)
                                   2656 	.area CONST   (CODE)
      00471C                       2657 ___str_7:
      00471C 1B                    2658 	.db 0x1b
      00471D 5B 31 3B 33 33 6D 7C  2659 	.ascii "[1;33m|************ Processing [+] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 2B 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004754 0A                    2660 	.db 0x0a
      004755 0D                    2661 	.db 0x0d
      004756 00                    2662 	.db 0x00
                                   2663 	.area CSEG    (CODE)
                                   2664 	.area CONST   (CODE)
      004757                       2665 ___str_8:
      004757 1B                    2666 	.db 0x1b
      004758 5B 31 3B 33 36 6D 7C  2667 	.ascii "[1;36m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      00478F 0A                    2668 	.db 0x0a
      004790 0D                    2669 	.db 0x0d
      004791 00                    2670 	.db 0x00
                                   2671 	.area CSEG    (CODE)
                                   2672 	.area CONST   (CODE)
      004792                       2673 ___str_9:
      004792 1B                    2674 	.db 0x1b
      004793 5B 31 3B 33 36 6D 7C  2675 	.ascii "[1;36m|********* Enter size for new bufer ************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 45 6E 74 65
             72 20 73 69 7A 65 20
             66 6F 72 20 6E 65 77
             20 62 75 66 65 72 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0047CA 0A                    2676 	.db 0x0a
      0047CB 0D                    2677 	.db 0x0d
      0047CC 00                    2678 	.db 0x00
                                   2679 	.area CSEG    (CODE)
                                   2680 	.area CONST   (CODE)
      0047CD                       2681 ___str_10:
      0047CD 1B                    2682 	.db 0x1b
      0047CE 5B 31 3B 33 31 6D 49  2683 	.ascii "[1;31mInvalid Input : The buffer size should be in the range"
             6E 76 61 6C 69 64 20
             49 6E 70 75 74 20 3A
             20 54 68 65 20 62 75
             66 66 65 72 20 73 69
             7A 65 20 73 68 6F 75
             6C 64 20 62 65 20 69
             6E 20 74 68 65 20 72
             61 6E 67 65
      00480A 20 5B 33 30 2C 20 33  2684 	.ascii " [30, 300]"
             30 30 5D
      004814 0A                    2685 	.db 0x0a
      004815 0D                    2686 	.db 0x0d
      004816 0A                    2687 	.db 0x0a
      004817 0D                    2688 	.db 0x0d
      004818 00                    2689 	.db 0x00
                                   2690 	.area CSEG    (CODE)
                                   2691 	.area CONST   (CODE)
      004819                       2692 ___str_11:
      004819 1B                    2693 	.db 0x1b
      00481A 5B 31 3B 33 31 6D 49  2694 	.ascii "[1;31mInvalid input : Failed to allocate buffer"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 46 61 69 6C 65 64
             20 74 6F 20 61 6C 6C
             6F 63 61 74 65 20 62
             75 66 66 65 72
      004849 0A                    2695 	.db 0x0a
      00484A 0D                    2696 	.db 0x0d
      00484B 0A                    2697 	.db 0x0a
      00484C 0D                    2698 	.db 0x0d
      00484D 00                    2699 	.db 0x00
                                   2700 	.area CSEG    (CODE)
                                   2701 	.area CONST   (CODE)
      00484E                       2702 ___str_12:
      00484E 1B                    2703 	.db 0x1b
      00484F 5B 31 3B 30 6D 4E 65  2704 	.ascii "[1;0mNew buffer allocated successfully : Buffer[%d]"
             77 20 62 75 66 66 65
             72 20 61 6C 6C 6F 63
             61 74 65 64 20 73 75
             63 63 65 73 73 66 75
             6C 6C 79 20 3A 20 42
             75 66 66 65 72 5B 25
             64 5D
      004882 0A                    2705 	.db 0x0a
      004883 0D                    2706 	.db 0x0d
      004884 00                    2707 	.db 0x00
                                   2708 	.area CSEG    (CODE)
                                   2709 	.area CONST   (CODE)
      004885                       2710 ___str_13:
      004885 1B                    2711 	.db 0x1b
      004886 5B 31 3B 30 6D 54 6F  2712 	.ascii "[1;0mTotal Number of Buffers including buffer0 & buffer1 = ["
             74 61 6C 20 4E 75 6D
             62 65 72 20 6F 66 20
             42 75 66 66 65 72 73
             20 69 6E 63 6C 75 64
             69 6E 67 20 62 75 66
             66 65 72 30 20 26 20
             62 75 66 66 65 72 31
             20 3D 20 5B
      0048C2 25 64 5D              2713 	.ascii "%d]"
      0048C5 0A                    2714 	.db 0x0a
      0048C6 0D                    2715 	.db 0x0d
      0048C7 00                    2716 	.db 0x00
                                   2717 	.area CSEG    (CODE)
                                   2718 	.area CONST   (CODE)
      0048C8                       2719 ___str_14:
      0048C8 1B                    2720 	.db 0x1b
      0048C9 5B 31 3B 30 6D 54 6F  2721 	.ascii "[1;0mTotal Filled Buffers = [%d] "
             74 61 6C 20 46 69 6C
             6C 65 64 20 42 75 66
             66 65 72 73 20 3D 20
             5B 25 64 5D 20
      0048EA 0D                    2722 	.db 0x0d
      0048EB 0A                    2723 	.db 0x0a
      0048EC 54 6F 74 61 6C 20 45  2724 	.ascii "Total Empty Buffers = [%d] "
             6D 70 74 79 20 42 75
             66 66 65 72 73 20 3D
             20 5B 25 64 5D 20
      004907 0A                    2725 	.db 0x0a
      004908 0D                    2726 	.db 0x0d
      004909 0A                    2727 	.db 0x0a
      00490A 0D                    2728 	.db 0x0d
      00490B 00                    2729 	.db 0x00
                                   2730 	.area CSEG    (CODE)
                                   2731 	.area CONST   (CODE)
      00490C                       2732 ___str_15:
      00490C 1B                    2733 	.db 0x1b
      00490D 5B 31 3B 33 33 6D 7C  2734 	.ascii "[1;33m|************ Processing [-] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 2D 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004944 0A                    2735 	.db 0x0a
      004945 0D                    2736 	.db 0x0d
      004946 00                    2737 	.db 0x00
                                   2738 	.area CSEG    (CODE)
                                   2739 	.area CONST   (CODE)
      004947                       2740 ___str_16:
      004947 1B                    2741 	.db 0x1b
      004948 5B 31 3B 33 36 6D 7C  2742 	.ascii "[1;36m|********* Enter buffer to be deleted **********|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 45 6E 74 65
             72 20 62 75 66 66 65
             72 20 74 6F 20 62 65
             20 64 65 6C 65 74 65
             64 20 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      00497F 0A                    2743 	.db 0x0a
      004980 0D                    2744 	.db 0x0d
      004981 00                    2745 	.db 0x00
                                   2746 	.area CSEG    (CODE)
                                   2747 	.area CONST   (CODE)
      004982                       2748 ___str_17:
      004982 1B                    2749 	.db 0x1b
      004983 5B 31 3B 33 36 6D 7C  2750 	.ascii "[1;36m|********* Current No of buffers:[%d] ***********|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 43 75 72 72
             65 6E 74 20 4E 6F 20
             6F 66 20 62 75 66 66
             65 72 73 3A 5B 25 64
             5D 20 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      0049BB 0A                    2751 	.db 0x0a
      0049BC 0D                    2752 	.db 0x0d
      0049BD 00                    2753 	.db 0x00
                                   2754 	.area CSEG    (CODE)
                                   2755 	.area CONST   (CODE)
      0049BE                       2756 ___str_18:
      0049BE 1B                    2757 	.db 0x1b
      0049BF 5B 31 3B 33 36 6D 7C  2758 	.ascii "[1;36m|********* Note : Index Starts with 0 **********|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 20 4E 6F 74 65
             20 3A 20 49 6E 64 65
             78 20 53 74 61 72 74
             73 20 77 69 74 68 20
             30 20 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0049F6 0A                    2759 	.db 0x0a
      0049F7 0D                    2760 	.db 0x0d
      0049F8 00                    2761 	.db 0x00
                                   2762 	.area CSEG    (CODE)
                                   2763 	.area CONST   (CODE)
      0049F9                       2764 ___str_19:
      0049F9 1B                    2765 	.db 0x1b
      0049FA 5B 31 3B 33 31 6D 49  2766 	.ascii "[1;31mInvalid input : invalid digits entered "
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 69 6E 76 61 6C 69
             64 20 64 69 67 69 74
             73 20 65 6E 74 65 72
             65 64 20
      004A27 0A                    2767 	.db 0x0a
      004A28 0D                    2768 	.db 0x0d
      004A29 0A                    2769 	.db 0x0a
      004A2A 0D                    2770 	.db 0x0d
      004A2B 00                    2771 	.db 0x00
                                   2772 	.area CSEG    (CODE)
                                   2773 	.area CONST   (CODE)
      004A2C                       2774 ___str_20:
      004A2C 1B                    2775 	.db 0x1b
      004A2D 5B 31 3B 33 31 6D 49  2776 	.ascii "[1;31mInvalid input : buffer number can't be 0"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 63 61 6E 27 74 20
             62 65 20 30
      004A5B 0A                    2777 	.db 0x0a
      004A5C 0D                    2778 	.db 0x0d
      004A5D 0A                    2779 	.db 0x0a
      004A5E 00                    2780 	.db 0x00
                                   2781 	.area CSEG    (CODE)
                                   2782 	.area CONST   (CODE)
      004A5F                       2783 ___str_21:
      004A5F 1B                    2784 	.db 0x1b
      004A60 5B 31 3B 33 31 6D 49  2785 	.ascii "[1;31mInvalid input : buffer[%d] was already cleared earlier"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             5B 25 64 5D 20 77 61
             73 20 61 6C 72 65 61
             64 79 20 63 6C 65 61
             72 65 64 20 65 61 72
             6C 69 65 72
      004A9C 0A                    2786 	.db 0x0a
      004A9D 0D                    2787 	.db 0x0d
      004A9E 00                    2788 	.db 0x00
                                   2789 	.area CSEG    (CODE)
                                   2790 	.area CONST   (CODE)
      004A9F                       2791 ___str_22:
      004A9F 1B                    2792 	.db 0x1b
      004AA0 5B 31 3B 33 31 6D 49  2793 	.ascii "[1;31mInvalid input : buffer number doesn't exist"
             6E 76 61 6C 69 64 20
             69 6E 70 75 74 20 3A
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 64 6F 65 73 6E 27
             74 20 65 78 69 73 74
      004AD1 0A                    2794 	.db 0x0a
      004AD2 0D                    2795 	.db 0x0d
      004AD3 00                    2796 	.db 0x00
                                   2797 	.area CSEG    (CODE)
                                   2798 	.area CONST   (CODE)
      004AD4                       2799 ___str_23:
      004AD4 1B                    2800 	.db 0x1b
      004AD5 5B 31 3B 30 6D 42 75  2801 	.ascii "[1;0mBuffer [%d] requested to be deleted"
             66 66 65 72 20 5B 25
             64 5D 20 72 65 71 75
             65 73 74 65 64 20 74
             6F 20 62 65 20 64 65
             6C 65 74 65 64
      004AFD 0A                    2802 	.db 0x0a
      004AFE 0D                    2803 	.db 0x0d
      004AFF 00                    2804 	.db 0x00
                                   2805 	.area CSEG    (CODE)
                                   2806 	.area CONST   (CODE)
      004B00                       2807 ___str_24:
      004B00 50 65 72 66 6F 72 6D  2808 	.ascii "Performing buffer freeing operation"
             69 6E 67 20 62 75 66
             66 65 72 20 66 72 65
             65 69 6E 67 20 6F 70
             65 72 61 74 69 6F 6E
      004B23 0D                    2809 	.db 0x0d
      004B24 0A                    2810 	.db 0x0a
      004B25 00                    2811 	.db 0x00
                                   2812 	.area CSEG    (CODE)
                                   2813 	.area CONST   (CODE)
      004B26                       2814 ___str_25:
      004B26 2A 2A 2A 42 75 66 66  2815 	.ascii "***Buffer [%d] is freed****"
             65 72 20 5B 25 64 5D
             20 69 73 20 66 72 65
             65 64 2A 2A 2A 2A
      004B41 0A                    2816 	.db 0x0a
      004B42 0D                    2817 	.db 0x0d
      004B43 00                    2818 	.db 0x00
                                   2819 	.area CSEG    (CODE)
                                   2820 	.area CONST   (CODE)
      004B44                       2821 ___str_26:
      004B44 1B                    2822 	.db 0x1b
      004B45 5B 31 3B 30 6D 42 75  2823 	.ascii "[1;0mBuffer[%d] de-allocated successfully  "
             66 66 65 72 5B 25 64
             5D 20 64 65 2D 61 6C
             6C 6F 63 61 74 65 64
             20 73 75 63 63 65 73
             73 66 75 6C 6C 79 20
             20
      004B70 0A                    2824 	.db 0x0a
      004B71 0D                    2825 	.db 0x0d
      004B72 00                    2826 	.db 0x00
                                   2827 	.area CSEG    (CODE)
                                   2828 	.area CONST   (CODE)
      004B73                       2829 ___str_27:
      004B73 1B                    2830 	.db 0x1b
      004B74 5B 31 3B 30 6D 54 6F  2831 	.ascii "[1;0mTotal Number of Buffers after deallocation = [%d]"
             74 61 6C 20 4E 75 6D
             62 65 72 20 6F 66 20
             42 75 66 66 65 72 73
             20 61 66 74 65 72 20
             64 65 61 6C 6C 6F 63
             61 74 69 6F 6E 20 3D
             20 5B 25 64 5D
      004BAA 0A                    2832 	.db 0x0a
      004BAB 0D                    2833 	.db 0x0d
      004BAC 0A                    2834 	.db 0x0a
      004BAD 0D                    2835 	.db 0x0d
      004BAE 00                    2836 	.db 0x00
                                   2837 	.area CSEG    (CODE)
                                   2838 	.area CONST   (CODE)
      004BAF                       2839 ___str_28:
      004BAF 1B                    2840 	.db 0x1b
      004BB0 5B 31 3B 33 33 6D 7C  2841 	.ascii "[1;33m|************ Processing [@] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 40 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004BE7 0A                    2842 	.db 0x0a
      004BE8 0D                    2843 	.db 0x0d
      004BE9 00                    2844 	.db 0x00
                                   2845 	.area CSEG    (CODE)
                                   2846 	.area CONST   (CODE)
      004BEA                       2847 ___str_29:
      004BEA 1B                    2848 	.db 0x1b
      004BEB 5B 31 3B 30 6D 42 75  2849 	.ascii "[1;0mBuffer[%d] freed"
             66 66 65 72 5B 25 64
             5D 20 66 72 65 65 64
      004C00 0A                    2850 	.db 0x0a
      004C01 0D                    2851 	.db 0x0d
      004C02 00                    2852 	.db 0x00
                                   2853 	.area CSEG    (CODE)
                                   2854 	.area CONST   (CODE)
      004C03                       2855 ___str_30:
      004C03 1B                    2856 	.db 0x1b
      004C04 5B 31 3B 30 6D 42 75  2857 	.ascii "[1;0mBuffer[%d] was already NULL"
             66 66 65 72 5B 25 64
             5D 20 77 61 73 20 61
             6C 72 65 61 64 79 20
             4E 55 4C 4C
      004C24 0A                    2858 	.db 0x0a
      004C25 0D                    2859 	.db 0x0d
      004C26 00                    2860 	.db 0x00
                                   2861 	.area CSEG    (CODE)
                                   2862 	.area CONST   (CODE)
      004C27                       2863 ___str_31:
      004C27 1B                    2864 	.db 0x1b
      004C28 5B 31 3B 33 33 6D     2865 	.ascii "[1;33m"
      004C2E 0D                    2866 	.db 0x0d
      004C2F 0A                    2867 	.db 0x0a
      004C30 7C 2A 2A 2A 2A 2A 2A  2868 	.ascii "|************ Processing [=] *******************|"
             2A 2A 2A 2A 2A 2A 20
             50 72 6F 63 65 73 73
             69 6E 67 20 5B 3D 5D
             20 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      004C61 0A                    2869 	.db 0x0a
      004C62 0D                    2870 	.db 0x0d
      004C63 00                    2871 	.db 0x00
                                   2872 	.area CSEG    (CODE)
                                   2873 	.area CONST   (CODE)
      004C64                       2874 ___str_32:
      004C64 1B                    2875 	.db 0x1b
      004C65 5B 31 3B 33 33 6D 7C  2876 	.ascii "[1;33m|************ Processing [?] *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 50
             72 6F 63 65 73 73 69
             6E 67 20 5B 3F 5D 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004C9C 0A                    2877 	.db 0x0a
      004C9D 0D                    2878 	.db 0x0d
      004C9E 00                    2879 	.db 0x00
                                   2880 	.area CSEG    (CODE)
                                   2881 	.area CONST   (CODE)
      004C9F                       2882 ___str_33:
      004C9F 20                    2883 	.ascii " "
      004CA0 1B                    2884 	.db 0x1b
      004CA1 5B 31 3B 33 34 6D     2885 	.ascii "[1;34m"
      004CA7 0D                    2886 	.db 0x0d
      004CA8 0A                    2887 	.db 0x0a
      004CA9 7C 2A 2A 2A 2A 2A 2A  2888 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      004CDA 0A                    2889 	.db 0x0a
      004CDB 0D                    2890 	.db 0x0d
      004CDC 00                    2891 	.db 0x00
                                   2892 	.area CSEG    (CODE)
                                   2893 	.area CONST   (CODE)
      004CDD                       2894 ___str_34:
      004CDD 20                    2895 	.ascii " "
      004CDE 1B                    2896 	.db 0x1b
      004CDF 5B 31 3B 33 34 6D 7C  2897 	.ascii "[1;34m|*************** HEAP REPORT *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 20 48 45 41 50 20
             52 45 50 4F 52 54 20
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004D16 0A                    2898 	.db 0x0a
      004D17 0D                    2899 	.db 0x0d
      004D18 00                    2900 	.db 0x00
                                   2901 	.area CSEG    (CODE)
                                   2902 	.area CONST   (CODE)
      004D19                       2903 ___str_35:
      004D19 20                    2904 	.ascii " "
      004D1A 1B                    2905 	.db 0x1b
      004D1B 5B 31 3B 33 34 6D 7C  2906 	.ascii "[1;34m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      004D52 0A                    2907 	.db 0x0a
      004D53 0D                    2908 	.db 0x0d
      004D54 00                    2909 	.db 0x00
                                   2910 	.area CSEG    (CODE)
                                   2911 	.area CONST   (CODE)
      004D55                       2912 ___str_36:
      004D55 1B                    2913 	.db 0x1b
      004D56 5B 31 3B 33 31 6D     2914 	.ascii "[1;31m"
      004D5C 0A                    2915 	.db 0x0a
      004D5D 0D                    2916 	.db 0x0d
      004D5E 42 75 66 66 65 72 20  2917 	.ascii "Buffer [%d] already cleared!!"
             5B 25 64 5D 20 61 6C
             72 65 61 64 79 20 63
             6C 65 61 72 65 64 21
             21
      004D7B 0A                    2918 	.db 0x0a
      004D7C 0D                    2919 	.db 0x0d
      004D7D 00                    2920 	.db 0x00
                                   2921 	.area CSEG    (CODE)
                                   2922 	.area CONST   (CODE)
      004D7E                       2923 ___str_37:
      004D7E 1B                    2924 	.db 0x1b
      004D7F 5B 31 3B 33 36 6D     2925 	.ascii "[1;36m"
      004D85 0A                    2926 	.db 0x0a
      004D86 0D                    2927 	.db 0x0d
      004D87 2A 2A 42 75 66 66 65  2928 	.ascii "**Buffer [%d]**"
             72 20 5B 25 64 5D 2A
             2A
      004D96 0A                    2929 	.db 0x0a
      004D97 0D                    2930 	.db 0x0d
      004D98 00                    2931 	.db 0x00
                                   2932 	.area CSEG    (CODE)
                                   2933 	.area CONST   (CODE)
      004D99                       2934 ___str_38:
      004D99 1B                    2935 	.db 0x1b
      004D9A 5B 31 3B 30 6D        2936 	.ascii "[1;0m"
      004D9F 0A                    2937 	.db 0x0a
      004DA0 0D                    2938 	.db 0x0d
      004DA1 42 75 66 66 65 72 20  2939 	.ascii "Buffer [%d] : Start Address = [%p] "
             5B 25 64 5D 20 3A 20
             53 74 61 72 74 20 41
             64 64 72 65 73 73 20
             3D 20 5B 25 70 5D 20
      004DC4 0A                    2940 	.db 0x0a
      004DC5 0D                    2941 	.db 0x0d
      004DC6 00                    2942 	.db 0x00
                                   2943 	.area CSEG    (CODE)
                                   2944 	.area CONST   (CODE)
      004DC7                       2945 ___str_39:
      004DC7 1B                    2946 	.db 0x1b
      004DC8 5B 31 3B 30 6D        2947 	.ascii "[1;0m"
      004DCD 0A                    2948 	.db 0x0a
      004DCE 0D                    2949 	.db 0x0d
      004DCF 42 75 66 66 65 72 20  2950 	.ascii "Buffer [%d] : End Address   = [%p] "
             5B 25 64 5D 20 3A 20
             45 6E 64 20 41 64 64
             72 65 73 73 20 20 20
             3D 20 5B 25 70 5D 20
      004DF2 0A                    2951 	.db 0x0a
      004DF3 0D                    2952 	.db 0x0d
      004DF4 00                    2953 	.db 0x00
                                   2954 	.area CSEG    (CODE)
                                   2955 	.area CONST   (CODE)
      004DF5                       2956 ___str_40:
      004DF5 1B                    2957 	.db 0x1b
      004DF6 5B 31 3B 30 6D        2958 	.ascii "[1;0m"
      004DFB 0A                    2959 	.db 0x0a
      004DFC 0D                    2960 	.db 0x0d
      004DFD 42 75 66 66 65 72 20  2961 	.ascii "Buffer [%d] : Total Size    = [%d] "
             5B 25 64 5D 20 3A 20
             54 6F 74 61 6C 20 53
             69 7A 65 20 20 20 20
             3D 20 5B 25 64 5D 20
      004E20 0A                    2962 	.db 0x0a
      004E21 0D                    2963 	.db 0x0d
      004E22 00                    2964 	.db 0x00
                                   2965 	.area CSEG    (CODE)
                                   2966 	.area CONST   (CODE)
      004E23                       2967 ___str_41:
      004E23 1B                    2968 	.db 0x1b
      004E24 5B 31 3B 30 6D        2969 	.ascii "[1;0m"
      004E29 0A                    2970 	.db 0x0a
      004E2A 0D                    2971 	.db 0x0d
      004E2B 42 75 66 66 65 72 5B  2972 	.ascii "Buffer[%d] : Number of storage characters since last ?= [%d]"
             25 64 5D 20 3A 20 4E
             75 6D 62 65 72 20 6F
             66 20 73 74 6F 72 61
             67 65 20 63 68 61 72
             61 63 74 65 72 73 20
             73 69 6E 63 65 20 6C
             61 73 74 20 3F 3D 20
             5B 25 64 5D
      004E67 0A                    2973 	.db 0x0a
      004E68 0D                    2974 	.db 0x0d
      004E69 00                    2975 	.db 0x00
                                   2976 	.area CSEG    (CODE)
                                   2977 	.area CONST   (CODE)
      004E6A                       2978 ___str_42:
      004E6A 20                    2979 	.ascii " "
      004E6B 1B                    2980 	.db 0x1b
      004E6C 5B 31 3B 33 34 6D 7C  2981 	.ascii "[1;34m|************ REPORT ENDED  *******************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 20 52
             45 50 4F 52 54 20 45
             4E 44 45 44 20 20 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 7C
      004EA2 0A                    2982 	.db 0x0a
      004EA3 0D                    2983 	.db 0x0d
      004EA4 0A                    2984 	.db 0x0a
      004EA5 0D                    2985 	.db 0x0d
      004EA6 0A                    2986 	.db 0x0a
      004EA7 0D                    2987 	.db 0x0d
      004EA8 00                    2988 	.db 0x00
                                   2989 	.area CSEG    (CODE)
                                   2990 	.area XINIT   (CODE)
      00539C                       2991 __xinit__size:
      00539C 30                    2992 	.db #0x30	; 48	'0'
      00539D 30                    2993 	.db #0x30	; 48	'0'
      00539E 30                    2994 	.db #0x30	; 48	'0'
      00539F 00                    2995 	.db #0x00	; 0
      0053A0                       2996 __xinit__buffer_to_delete:
      0053A0 00 00                 2997 	.byte #0x00, #0x00	;  0
      0053A2                       2998 __xinit__buff_not_cleared:
      0053A2 00 00                 2999 	.byte #0x00, #0x00	;  0
      0053A4 00                    3000 	.db 0x00
      0053A5 00                    3001 	.db 0x00
      0053A6 00                    3002 	.db 0x00
      0053A7 00                    3003 	.db 0x00
      0053A8 00                    3004 	.db 0x00
      0053A9 00                    3005 	.db 0x00
      0053AA 00                    3006 	.db 0x00
      0053AB 00                    3007 	.db 0x00
      0053AC 00                    3008 	.db 0x00
      0053AD 00                    3009 	.db 0x00
      0053AE 00                    3010 	.db 0x00
      0053AF 00                    3011 	.db 0x00
      0053B0 00                    3012 	.db 0x00
      0053B1 00                    3013 	.db 0x00
      0053B2 00                    3014 	.db 0x00
      0053B3 00                    3015 	.db 0x00
      0053B4 00                    3016 	.db 0x00
      0053B5 00                    3017 	.db 0x00
      0053B6 00                    3018 	.db 0x00
      0053B7 00                    3019 	.db 0x00
      0053B8 00                    3020 	.db 0x00
      0053B9 00                    3021 	.db 0x00
      0053BA 00                    3022 	.db 0x00
      0053BB 00                    3023 	.db 0x00
      0053BC 00                    3024 	.db 0x00
      0053BD 00                    3025 	.db 0x00
      0053BE 00                    3026 	.db 0x00
      0053BF 00                    3027 	.db 0x00
      0053C0 00                    3028 	.db 0x00
      0053C1 00                    3029 	.db 0x00
      0053C2 00                    3030 	.db 0x00
      0053C3 00                    3031 	.db 0x00
      0053C4 00                    3032 	.db 0x00
      0053C5 00                    3033 	.db 0x00
      0053C6 00                    3034 	.db 0x00
      0053C7 00                    3035 	.db 0x00
      0053C8 00                    3036 	.db 0x00
      0053C9 00                    3037 	.db 0x00
      0053CA 00                    3038 	.db 0x00
      0053CB 00                    3039 	.db 0x00
      0053CC 00                    3040 	.db 0x00
      0053CD 00                    3041 	.db 0x00
      0053CE 00                    3042 	.db 0x00
      0053CF 00                    3043 	.db 0x00
      0053D0 00                    3044 	.db 0x00
      0053D1 00                    3045 	.db 0x00
      0053D2 00                    3046 	.db 0x00
      0053D3 00                    3047 	.db 0x00
      0053D4 00                    3048 	.db 0x00
      0053D5 00                    3049 	.db 0x00
      0053D6 00                    3050 	.db 0x00
      0053D7 00                    3051 	.db 0x00
      0053D8 00                    3052 	.db 0x00
      0053D9 00                    3053 	.db 0x00
      0053DA 00                    3054 	.db 0x00
      0053DB 00                    3055 	.db 0x00
      0053DC 00                    3056 	.db 0x00
      0053DD 00                    3057 	.db 0x00
      0053DE 00                    3058 	.db 0x00
      0053DF 00                    3059 	.db 0x00
      0053E0 00                    3060 	.db 0x00
      0053E1 00                    3061 	.db 0x00
      0053E2 00                    3062 	.db 0x00
      0053E3 00                    3063 	.db 0x00
      0053E4 00                    3064 	.db 0x00
      0053E5 00                    3065 	.db 0x00
      0053E6 00                    3066 	.db 0x00
      0053E7 00                    3067 	.db 0x00
      0053E8 00                    3068 	.db 0x00
      0053E9 00                    3069 	.db 0x00
      0053EA 00                    3070 	.db 0x00
      0053EB 00                    3071 	.db 0x00
      0053EC 00                    3072 	.db 0x00
      0053ED 00                    3073 	.db 0x00
      0053EE 00                    3074 	.db 0x00
      0053EF 00                    3075 	.db 0x00
      0053F0 00                    3076 	.db 0x00
      0053F1 00                    3077 	.db 0x00
      0053F2 00                    3078 	.db 0x00
      0053F3 00                    3079 	.db 0x00
      0053F4 00                    3080 	.db 0x00
      0053F5 00                    3081 	.db 0x00
      0053F6 00                    3082 	.db 0x00
      0053F7 00                    3083 	.db 0x00
      0053F8 00                    3084 	.db 0x00
      0053F9 00                    3085 	.db 0x00
      0053FA 00                    3086 	.db 0x00
      0053FB 00                    3087 	.db 0x00
      0053FC 00                    3088 	.db 0x00
      0053FD 00                    3089 	.db 0x00
      0053FE 00                    3090 	.db 0x00
      0053FF 00                    3091 	.db 0x00
      005400 00                    3092 	.db 0x00
      005401 00                    3093 	.db 0x00
      005402 00                    3094 	.db 0x00
      005403 00                    3095 	.db 0x00
      005404 00                    3096 	.db 0x00
      005405 00                    3097 	.db 0x00
      005406 00                    3098 	.db 0x00
      005407 00                    3099 	.db 0x00
      005408 00                    3100 	.db 0x00
      005409 00                    3101 	.db 0x00
      00540A 00                    3102 	.db 0x00
      00540B 00                    3103 	.db 0x00
      00540C 00                    3104 	.db 0x00
      00540D 00                    3105 	.db 0x00
      00540E 00                    3106 	.db 0x00
      00540F 00                    3107 	.db 0x00
      005410 00                    3108 	.db 0x00
      005411 00                    3109 	.db 0x00
      005412 00                    3110 	.db 0x00
      005413 00                    3111 	.db 0x00
      005414 00                    3112 	.db 0x00
      005415 00                    3113 	.db 0x00
      005416 00                    3114 	.db 0x00
      005417 00                    3115 	.db 0x00
      005418 00                    3116 	.db 0x00
      005419 00                    3117 	.db 0x00
      00541A 00                    3118 	.db 0x00
      00541B 00                    3119 	.db 0x00
      00541C 00                    3120 	.db 0x00
      00541D 00                    3121 	.db 0x00
      00541E 00                    3122 	.db 0x00
      00541F 00                    3123 	.db 0x00
      005420 00                    3124 	.db 0x00
      005421 00                    3125 	.db 0x00
      005422 00                    3126 	.db 0x00
      005423 00                    3127 	.db 0x00
      005424 00                    3128 	.db 0x00
      005425 00                    3129 	.db 0x00
      005426 00                    3130 	.db 0x00
      005427 00                    3131 	.db 0x00
      005428 00                    3132 	.db 0x00
      005429 00                    3133 	.db 0x00
      00542A 00                    3134 	.db 0x00
      00542B 00                    3135 	.db 0x00
      00542C 00                    3136 	.db 0x00
      00542D 00                    3137 	.db 0x00
      00542E 00                    3138 	.db 0x00
      00542F 00                    3139 	.db 0x00
      005430 00                    3140 	.db 0x00
      005431 00                    3141 	.db 0x00
      005432 00                    3142 	.db 0x00
      005433 00                    3143 	.db 0x00
      005434 00                    3144 	.db 0x00
      005435 00                    3145 	.db 0x00
      005436 00                    3146 	.db 0x00
      005437 00                    3147 	.db 0x00
      005438 00                    3148 	.db 0x00
      005439 00                    3149 	.db 0x00
      00543A 00                    3150 	.db 0x00
      00543B 00                    3151 	.db 0x00
      00543C 00                    3152 	.db 0x00
      00543D 00                    3153 	.db 0x00
      00543E 00                    3154 	.db 0x00
      00543F 00                    3155 	.db 0x00
      005440 00                    3156 	.db 0x00
      005441 00                    3157 	.db 0x00
      005442 00                    3158 	.db 0x00
      005443 00                    3159 	.db 0x00
      005444 00                    3160 	.db 0x00
      005445 00                    3161 	.db 0x00
      005446 00                    3162 	.db 0x00
      005447 00                    3163 	.db 0x00
      005448 00                    3164 	.db 0x00
      005449 00                    3165 	.db 0x00
      00544A 00                    3166 	.db 0x00
      00544B 00                    3167 	.db 0x00
      00544C 00                    3168 	.db 0x00
      00544D 00                    3169 	.db 0x00
      00544E 00                    3170 	.db 0x00
      00544F 00                    3171 	.db 0x00
      005450 00                    3172 	.db 0x00
      005451 00                    3173 	.db 0x00
      005452 00                    3174 	.db 0x00
      005453 00                    3175 	.db 0x00
      005454 00                    3176 	.db 0x00
      005455 00                    3177 	.db 0x00
      005456 00                    3178 	.db 0x00
      005457 00                    3179 	.db 0x00
      005458 00                    3180 	.db 0x00
      005459 00                    3181 	.db 0x00
      00545A 00                    3182 	.db 0x00
      00545B 00                    3183 	.db 0x00
      00545C 00                    3184 	.db 0x00
      00545D 00                    3185 	.db 0x00
      00545E 00                    3186 	.db 0x00
      00545F 00                    3187 	.db 0x00
      005460 00                    3188 	.db 0x00
      005461 00                    3189 	.db 0x00
      005462 00                    3190 	.db 0x00
      005463 00                    3191 	.db 0x00
      005464 00                    3192 	.db 0x00
      005465 00                    3193 	.db 0x00
      005466 00                    3194 	.db 0x00
      005467 00                    3195 	.db 0x00
      005468 00                    3196 	.db 0x00
      005469 00                    3197 	.db 0x00
      00546A                       3198 __xinit__buffer0and1_size:
      00546A 00 00                 3199 	.byte #0x00, #0x00	;  0
                                   3200 	.area CABS    (ABS,CODE)
