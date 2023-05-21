                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module high_speed_out
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _TMOD
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TCON
                                    152 	.globl _SP
                                    153 	.globl _SCON
                                    154 	.globl _SBUF0
                                    155 	.globl _SBUF
                                    156 	.globl _PSW
                                    157 	.globl _PCON
                                    158 	.globl _P3
                                    159 	.globl _P2
                                    160 	.globl _P1
                                    161 	.globl _P0
                                    162 	.globl _IP
                                    163 	.globl _IE
                                    164 	.globl _DP0L
                                    165 	.globl _DPL
                                    166 	.globl _DP0H
                                    167 	.globl _DPH
                                    168 	.globl _B
                                    169 	.globl _ACC
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 	.globl _start_high_speed_output
                                    222 	.globl _stop_high_speed_output
                                    223 ;--------------------------------------------------------
                                    224 ; special function registers
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           0000C8   228 _T2CON	=	0x00c8
                           0000CA   229 _RCAP2L	=	0x00ca
                           0000CB   230 _RCAP2H	=	0x00cb
                           0000CC   231 _TL2	=	0x00cc
                           0000CD   232 _TH2	=	0x00cd
                           00008E   233 _AUXR	=	0x008e
                           0000A2   234 _AUXR1	=	0x00a2
                           000097   235 _CKRL	=	0x0097
                           00008F   236 _CKCON0	=	0x008f
                           0000AF   237 _CKCON1	=	0x00af
                           0000FA   238 _CCAP0H	=	0x00fa
                           0000FB   239 _CCAP1H	=	0x00fb
                           0000FC   240 _CCAP2H	=	0x00fc
                           0000FD   241 _CCAP3H	=	0x00fd
                           0000FE   242 _CCAP4H	=	0x00fe
                           0000EA   243 _CCAP0L	=	0x00ea
                           0000EB   244 _CCAP1L	=	0x00eb
                           0000EC   245 _CCAP2L	=	0x00ec
                           0000ED   246 _CCAP3L	=	0x00ed
                           0000EE   247 _CCAP4L	=	0x00ee
                           0000DA   248 _CCAPM0	=	0x00da
                           0000DB   249 _CCAPM1	=	0x00db
                           0000DC   250 _CCAPM2	=	0x00dc
                           0000DD   251 _CCAPM3	=	0x00dd
                           0000DE   252 _CCAPM4	=	0x00de
                           0000D8   253 _CCON	=	0x00d8
                           0000F9   254 _CH	=	0x00f9
                           0000E9   255 _CL	=	0x00e9
                           0000D9   256 _CMOD	=	0x00d9
                           0000A8   257 _IEN0	=	0x00a8
                           0000B1   258 _IEN1	=	0x00b1
                           0000B8   259 _IPL0	=	0x00b8
                           0000B7   260 _IPH0	=	0x00b7
                           0000B2   261 _IPL1	=	0x00b2
                           0000B3   262 _IPH1	=	0x00b3
                           0000C0   263 _P4	=	0x00c0
                           0000E8   264 _P5	=	0x00e8
                           0000A6   265 _WDTRST	=	0x00a6
                           0000A7   266 _WDTPRG	=	0x00a7
                           0000A9   267 _SADDR	=	0x00a9
                           0000B9   268 _SADEN	=	0x00b9
                           0000C3   269 _SPCON	=	0x00c3
                           0000C4   270 _SPSTA	=	0x00c4
                           0000C5   271 _SPDAT	=	0x00c5
                           0000C9   272 _T2MOD	=	0x00c9
                           00009B   273 _BDRCON	=	0x009b
                           00009A   274 _BRL	=	0x009a
                           00009C   275 _KBLS	=	0x009c
                           00009D   276 _KBE	=	0x009d
                           00009E   277 _KBF	=	0x009e
                           0000D2   278 _EECON	=	0x00d2
                           0000E0   279 _ACC	=	0x00e0
                           0000F0   280 _B	=	0x00f0
                           000083   281 _DPH	=	0x0083
                           000083   282 _DP0H	=	0x0083
                           000082   283 _DPL	=	0x0082
                           000082   284 _DP0L	=	0x0082
                           0000A8   285 _IE	=	0x00a8
                           0000B8   286 _IP	=	0x00b8
                           000080   287 _P0	=	0x0080
                           000090   288 _P1	=	0x0090
                           0000A0   289 _P2	=	0x00a0
                           0000B0   290 _P3	=	0x00b0
                           000087   291 _PCON	=	0x0087
                           0000D0   292 _PSW	=	0x00d0
                           000099   293 _SBUF	=	0x0099
                           000099   294 _SBUF0	=	0x0099
                           000098   295 _SCON	=	0x0098
                           000081   296 _SP	=	0x0081
                           000088   297 _TCON	=	0x0088
                           00008C   298 _TH0	=	0x008c
                           00008D   299 _TH1	=	0x008d
                           00008A   300 _TL0	=	0x008a
                           00008B   301 _TL1	=	0x008b
                           000089   302 _TMOD	=	0x0089
                                    303 ;--------------------------------------------------------
                                    304 ; special function bits
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           0000AD   308 _ET2	=	0x00ad
                           0000BD   309 _PT2	=	0x00bd
                           0000C8   310 _T2CON_0	=	0x00c8
                           0000C9   311 _T2CON_1	=	0x00c9
                           0000CA   312 _T2CON_2	=	0x00ca
                           0000CB   313 _T2CON_3	=	0x00cb
                           0000CC   314 _T2CON_4	=	0x00cc
                           0000CD   315 _T2CON_5	=	0x00cd
                           0000CE   316 _T2CON_6	=	0x00ce
                           0000CF   317 _T2CON_7	=	0x00cf
                           0000C8   318 _CP_RL2	=	0x00c8
                           0000C9   319 _C_T2	=	0x00c9
                           0000CA   320 _TR2	=	0x00ca
                           0000CB   321 _EXEN2	=	0x00cb
                           0000CC   322 _TCLK	=	0x00cc
                           0000CD   323 _RCLK	=	0x00cd
                           0000CE   324 _EXF2	=	0x00ce
                           0000CF   325 _TF2	=	0x00cf
                           0000DF   326 _CF	=	0x00df
                           0000DE   327 _CR	=	0x00de
                           0000DC   328 _CCF4	=	0x00dc
                           0000DB   329 _CCF3	=	0x00db
                           0000DA   330 _CCF2	=	0x00da
                           0000D9   331 _CCF1	=	0x00d9
                           0000D8   332 _CCF0	=	0x00d8
                           0000AE   333 _EC	=	0x00ae
                           0000BE   334 _PPCL	=	0x00be
                           0000BD   335 _PT2L	=	0x00bd
                           0000BC   336 _PSL	=	0x00bc
                           0000BB   337 _PT1L	=	0x00bb
                           0000BA   338 _PX1L	=	0x00ba
                           0000B9   339 _PT0L	=	0x00b9
                           0000B8   340 _PX0L	=	0x00b8
                           0000C0   341 _P4_0	=	0x00c0
                           0000C1   342 _P4_1	=	0x00c1
                           0000C2   343 _P4_2	=	0x00c2
                           0000C3   344 _P4_3	=	0x00c3
                           0000C4   345 _P4_4	=	0x00c4
                           0000C5   346 _P4_5	=	0x00c5
                           0000C6   347 _P4_6	=	0x00c6
                           0000C7   348 _P4_7	=	0x00c7
                           0000E8   349 _P5_0	=	0x00e8
                           0000E9   350 _P5_1	=	0x00e9
                           0000EA   351 _P5_2	=	0x00ea
                           0000EB   352 _P5_3	=	0x00eb
                           0000EC   353 _P5_4	=	0x00ec
                           0000ED   354 _P5_5	=	0x00ed
                           0000EE   355 _P5_6	=	0x00ee
                           0000EF   356 _P5_7	=	0x00ef
                           0000F0   357 _BREG_F0	=	0x00f0
                           0000F1   358 _BREG_F1	=	0x00f1
                           0000F2   359 _BREG_F2	=	0x00f2
                           0000F3   360 _BREG_F3	=	0x00f3
                           0000F4   361 _BREG_F4	=	0x00f4
                           0000F5   362 _BREG_F5	=	0x00f5
                           0000F6   363 _BREG_F6	=	0x00f6
                           0000F7   364 _BREG_F7	=	0x00f7
                           0000A8   365 _EX0	=	0x00a8
                           0000A9   366 _ET0	=	0x00a9
                           0000AA   367 _EX1	=	0x00aa
                           0000AB   368 _ET1	=	0x00ab
                           0000AC   369 _ES	=	0x00ac
                           0000AF   370 _EA	=	0x00af
                           0000B8   371 _PX0	=	0x00b8
                           0000B9   372 _PT0	=	0x00b9
                           0000BA   373 _PX1	=	0x00ba
                           0000BB   374 _PT1	=	0x00bb
                           0000BC   375 _PS	=	0x00bc
                           000080   376 _P0_0	=	0x0080
                           000081   377 _P0_1	=	0x0081
                           000082   378 _P0_2	=	0x0082
                           000083   379 _P0_3	=	0x0083
                           000084   380 _P0_4	=	0x0084
                           000085   381 _P0_5	=	0x0085
                           000086   382 _P0_6	=	0x0086
                           000087   383 _P0_7	=	0x0087
                           000090   384 _P1_0	=	0x0090
                           000091   385 _P1_1	=	0x0091
                           000092   386 _P1_2	=	0x0092
                           000093   387 _P1_3	=	0x0093
                           000094   388 _P1_4	=	0x0094
                           000095   389 _P1_5	=	0x0095
                           000096   390 _P1_6	=	0x0096
                           000097   391 _P1_7	=	0x0097
                           0000A0   392 _P2_0	=	0x00a0
                           0000A1   393 _P2_1	=	0x00a1
                           0000A2   394 _P2_2	=	0x00a2
                           0000A3   395 _P2_3	=	0x00a3
                           0000A4   396 _P2_4	=	0x00a4
                           0000A5   397 _P2_5	=	0x00a5
                           0000A6   398 _P2_6	=	0x00a6
                           0000A7   399 _P2_7	=	0x00a7
                           0000B0   400 _P3_0	=	0x00b0
                           0000B1   401 _P3_1	=	0x00b1
                           0000B2   402 _P3_2	=	0x00b2
                           0000B3   403 _P3_3	=	0x00b3
                           0000B4   404 _P3_4	=	0x00b4
                           0000B5   405 _P3_5	=	0x00b5
                           0000B6   406 _P3_6	=	0x00b6
                           0000B7   407 _P3_7	=	0x00b7
                           0000B0   408 _RXD	=	0x00b0
                           0000B0   409 _RXD0	=	0x00b0
                           0000B1   410 _TXD	=	0x00b1
                           0000B1   411 _TXD0	=	0x00b1
                           0000B2   412 _INT0	=	0x00b2
                           0000B3   413 _INT1	=	0x00b3
                           0000B4   414 _T0	=	0x00b4
                           0000B5   415 _T1	=	0x00b5
                           0000B6   416 _WR	=	0x00b6
                           0000B7   417 _RD	=	0x00b7
                           0000D0   418 _P	=	0x00d0
                           0000D1   419 _F1	=	0x00d1
                           0000D2   420 _OV	=	0x00d2
                           0000D3   421 _RS0	=	0x00d3
                           0000D4   422 _RS1	=	0x00d4
                           0000D5   423 _F0	=	0x00d5
                           0000D6   424 _AC	=	0x00d6
                           0000D7   425 _CY	=	0x00d7
                           000098   426 _RI	=	0x0098
                           000099   427 _TI	=	0x0099
                           00009A   428 _RB8	=	0x009a
                           00009B   429 _TB8	=	0x009b
                           00009C   430 _REN	=	0x009c
                           00009D   431 _SM2	=	0x009d
                           00009E   432 _SM1	=	0x009e
                           00009F   433 _SM0	=	0x009f
                           000088   434 _IT0	=	0x0088
                           000089   435 _IE0	=	0x0089
                           00008A   436 _IT1	=	0x008a
                           00008B   437 _IE1	=	0x008b
                           00008C   438 _TR0	=	0x008c
                           00008D   439 _TF0	=	0x008d
                           00008E   440 _TR1	=	0x008e
                           00008F   441 _TF1	=	0x008f
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable register banks
                                    444 ;--------------------------------------------------------
                                    445 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        446 	.ds 8
                                    447 ;--------------------------------------------------------
                                    448 ; internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area DSEG    (DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable items in internal ram
                                    453 ;--------------------------------------------------------
                                    454 ;--------------------------------------------------------
                                    455 ; indirectly addressable internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area ISEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area IABS    (ABS,DATA)
                                    462 	.area IABS    (ABS,DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; bit data
                                    465 ;--------------------------------------------------------
                                    466 	.area BSEG    (BIT)
                                    467 ;--------------------------------------------------------
                                    468 ; paged external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area PSEG    (PAG,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XSEG    (XDATA)
                                    475 ;--------------------------------------------------------
                                    476 ; absolute external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area XABS    (ABS,XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; external initialized ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XISEG   (XDATA)
                                    483 	.area HOME    (CODE)
                                    484 	.area GSINIT0 (CODE)
                                    485 	.area GSINIT1 (CODE)
                                    486 	.area GSINIT2 (CODE)
                                    487 	.area GSINIT3 (CODE)
                                    488 	.area GSINIT4 (CODE)
                                    489 	.area GSINIT5 (CODE)
                                    490 	.area GSINIT  (CODE)
                                    491 	.area GSFINAL (CODE)
                                    492 	.area CSEG    (CODE)
                                    493 ;--------------------------------------------------------
                                    494 ; global & static initialisations
                                    495 ;--------------------------------------------------------
                                    496 	.area HOME    (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area GSINIT  (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; Home
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
                                    504 	.area HOME    (CODE)
                                    505 ;--------------------------------------------------------
                                    506 ; code
                                    507 ;--------------------------------------------------------
                                    508 	.area CSEG    (CODE)
                                    509 ;------------------------------------------------------------
                                    510 ;Allocation info for local variables in function 'start_high_speed_output'
                                    511 ;------------------------------------------------------------
                                    512 ;	high_speed_out.c:40: void start_high_speed_output(void)
                                    513 ;	-----------------------------------------
                                    514 ;	 function start_high_speed_output
                                    515 ;	-----------------------------------------
      0000CE                        516 _start_high_speed_output:
                           000007   517 	ar7 = 0x07
                           000006   518 	ar6 = 0x06
                           000005   519 	ar5 = 0x05
                           000004   520 	ar4 = 0x04
                           000003   521 	ar3 = 0x03
                           000002   522 	ar2 = 0x02
                           000001   523 	ar1 = 0x01
                           000000   524 	ar0 = 0x00
                                    525 ;	high_speed_out.c:42: CMOD = 0x02; // Set mode of timer/counter
      0000CE 75 D9 02         [24]  526 	mov	_CMOD,#0x02
                                    527 ;	high_speed_out.c:43: CCAP0L = 0x00; // Set low byte of capture/compare register to 0
      0000D1 75 EA 00         [24]  528 	mov	_CCAP0L,#0x00
                                    529 ;	high_speed_out.c:44: CCAP0H = 0x00; // Set high byte of capture/compare register to 0
      0000D4 75 FA 00         [24]  530 	mov	_CCAP0H,#0x00
                                    531 ;	high_speed_out.c:46: CCAP0L = 0xAA; // Set low byte of capture/compare register to 0xAA
      0000D7 75 EA AA         [24]  532 	mov	_CCAP0L,#0xaa
                                    533 ;	high_speed_out.c:47: CCAP0H = 0xAA; // Set high byte of capture/compare register to 0xAA
      0000DA 75 FA AA         [24]  534 	mov	_CCAP0H,#0xaa
                                    535 ;	high_speed_out.c:49: CCON = 0x40; // Set control register to start timer/counter
      0000DD 75 D8 40         [24]  536 	mov	_CCON,#0x40
                                    537 ;	high_speed_out.c:50: CCAPM0 = 0x4C; // Set capture/compare register mode
      0000E0 75 DA 4C         [24]  538 	mov	_CCAPM0,#0x4c
                                    539 ;	high_speed_out.c:52: printf("\033[1;33mHigh Speed Toggling started on Pin 1.3!!\r\n"); // Print message to console
      0000E3 74 DB            [12]  540 	mov	a,#___str_0
      0000E5 C0 E0            [24]  541 	push	acc
      0000E7 74 10            [12]  542 	mov	a,#(___str_0 >> 8)
      0000E9 C0 E0            [24]  543 	push	acc
      0000EB 74 80            [12]  544 	mov	a,#0x80
      0000ED C0 E0            [24]  545 	push	acc
      0000EF 12 05 AA         [24]  546 	lcall	_printf
      0000F2 15 81            [12]  547 	dec	sp
      0000F4 15 81            [12]  548 	dec	sp
      0000F6 15 81            [12]  549 	dec	sp
                                    550 ;	high_speed_out.c:54: return; // Exit function
                                    551 ;	high_speed_out.c:55: }
      0000F8 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'stop_high_speed_output'
                                    555 ;------------------------------------------------------------
                                    556 ;	high_speed_out.c:65: void stop_high_speed_output(void)
                                    557 ;	-----------------------------------------
                                    558 ;	 function stop_high_speed_output
                                    559 ;	-----------------------------------------
      0000F9                        560 _stop_high_speed_output:
                                    561 ;	high_speed_out.c:68: CCON &= ~0x40;
      0000F9 53 D8 BF         [24]  562 	anl	_CCON,#0xbf
                                    563 ;	high_speed_out.c:70: CCAPM0 = 0x00;
      0000FC 75 DA 00         [24]  564 	mov	_CCAPM0,#0x00
                                    565 ;	high_speed_out.c:71: printf("\033[1;33mHigh Speed Toggling stopped on Pin 1.3!!\r\n");
      0000FF 74 0D            [12]  566 	mov	a,#___str_1
      000101 C0 E0            [24]  567 	push	acc
      000103 74 11            [12]  568 	mov	a,#(___str_1 >> 8)
      000105 C0 E0            [24]  569 	push	acc
      000107 74 80            [12]  570 	mov	a,#0x80
      000109 C0 E0            [24]  571 	push	acc
      00010B 12 05 AA         [24]  572 	lcall	_printf
      00010E 15 81            [12]  573 	dec	sp
      000110 15 81            [12]  574 	dec	sp
      000112 15 81            [12]  575 	dec	sp
                                    576 ;	high_speed_out.c:73: return;
                                    577 ;	high_speed_out.c:74: }
      000114 22               [24]  578 	ret
                                    579 	.area CSEG    (CODE)
                                    580 	.area CONST   (CODE)
                                    581 	.area CONST   (CODE)
      0010DB                        582 ___str_0:
      0010DB 1B                     583 	.db 0x1b
      0010DC 5B 31 3B 33 33 6D 48   584 	.ascii "[1;33mHigh Speed Toggling started on Pin 1.3!!"
             69 67 68 20 53 70 65
             65 64 20 54 6F 67 67
             6C 69 6E 67 20 73 74
             61 72 74 65 64 20 6F
             6E 20 50 69 6E 20 31
             2E 33 21 21
      00110A 0D                     585 	.db 0x0d
      00110B 0A                     586 	.db 0x0a
      00110C 00                     587 	.db 0x00
                                    588 	.area CSEG    (CODE)
                                    589 	.area CONST   (CODE)
      00110D                        590 ___str_1:
      00110D 1B                     591 	.db 0x1b
      00110E 5B 31 3B 33 33 6D 48   592 	.ascii "[1;33mHigh Speed Toggling stopped on Pin 1.3!!"
             69 67 68 20 53 70 65
             65 64 20 54 6F 67 67
             6C 69 6E 67 20 73 74
             6F 70 70 65 64 20 6F
             6E 20 50 69 6E 20 31
             2E 33 21 21
      00113C 0D                     593 	.db 0x0d
      00113D 0A                     594 	.db 0x0a
      00113E 00                     595 	.db 0x00
                                    596 	.area CSEG    (CODE)
                                    597 	.area XINIT   (CODE)
                                    598 	.area CABS    (ABS,CODE)
