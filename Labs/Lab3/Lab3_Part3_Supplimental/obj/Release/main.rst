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
                                     12 	.globl _hardware_init
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl _powerdown_idle_wakeup
                                     15 	.globl _ucontroller_power_down_mode
                                     16 	.globl _ucontroller_idle_mode
                                     17 	.globl _fclk_periph_max_freq
                                     18 	.globl _fclk_periph_min_freq
                                     19 	.globl _watchdog_init
                                     20 	.globl _stop_pwm
                                     21 	.globl _start_pwm
                                     22 	.globl _putchar
                                     23 	.globl _getchar
                                     24 	.globl _stop_high_speed_output
                                     25 	.globl _start_high_speed_output
                                     26 	.globl _printf_tiny
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _PS
                                     36 	.globl _PT1
                                     37 	.globl _PX1
                                     38 	.globl _PT0
                                     39 	.globl _PX0
                                     40 	.globl _RD
                                     41 	.globl _WR
                                     42 	.globl _T1
                                     43 	.globl _T0
                                     44 	.globl _INT1
                                     45 	.globl _INT0
                                     46 	.globl _TXD
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _EA
                                     57 	.globl _ES
                                     58 	.globl _ET1
                                     59 	.globl _EX1
                                     60 	.globl _ET0
                                     61 	.globl _EX0
                                     62 	.globl _P2_7
                                     63 	.globl _P2_6
                                     64 	.globl _P2_5
                                     65 	.globl _P2_4
                                     66 	.globl _P2_3
                                     67 	.globl _P2_2
                                     68 	.globl _P2_1
                                     69 	.globl _P2_0
                                     70 	.globl _SM0
                                     71 	.globl _SM1
                                     72 	.globl _SM2
                                     73 	.globl _REN
                                     74 	.globl _TB8
                                     75 	.globl _RB8
                                     76 	.globl _TI
                                     77 	.globl _RI
                                     78 	.globl _P1_7
                                     79 	.globl _P1_6
                                     80 	.globl _P1_5
                                     81 	.globl _P1_4
                                     82 	.globl _P1_3
                                     83 	.globl _P1_2
                                     84 	.globl _P1_1
                                     85 	.globl _P1_0
                                     86 	.globl _TF1
                                     87 	.globl _TR1
                                     88 	.globl _TF0
                                     89 	.globl _TR0
                                     90 	.globl _IE1
                                     91 	.globl _IT1
                                     92 	.globl _IE0
                                     93 	.globl _IT0
                                     94 	.globl _P0_7
                                     95 	.globl _P0_6
                                     96 	.globl _P0_5
                                     97 	.globl _P0_4
                                     98 	.globl _P0_3
                                     99 	.globl _P0_2
                                    100 	.globl _P0_1
                                    101 	.globl _P0_0
                                    102 	.globl _TXD0
                                    103 	.globl _RXD0
                                    104 	.globl _BREG_F7
                                    105 	.globl _BREG_F6
                                    106 	.globl _BREG_F5
                                    107 	.globl _BREG_F4
                                    108 	.globl _BREG_F3
                                    109 	.globl _BREG_F2
                                    110 	.globl _BREG_F1
                                    111 	.globl _BREG_F0
                                    112 	.globl _P5_7
                                    113 	.globl _P5_6
                                    114 	.globl _P5_5
                                    115 	.globl _P5_4
                                    116 	.globl _P5_3
                                    117 	.globl _P5_2
                                    118 	.globl _P5_1
                                    119 	.globl _P5_0
                                    120 	.globl _P4_7
                                    121 	.globl _P4_6
                                    122 	.globl _P4_5
                                    123 	.globl _P4_4
                                    124 	.globl _P4_3
                                    125 	.globl _P4_2
                                    126 	.globl _P4_1
                                    127 	.globl _P4_0
                                    128 	.globl _PX0L
                                    129 	.globl _PT0L
                                    130 	.globl _PX1L
                                    131 	.globl _PT1L
                                    132 	.globl _PSL
                                    133 	.globl _PT2L
                                    134 	.globl _PPCL
                                    135 	.globl _EC
                                    136 	.globl _CCF0
                                    137 	.globl _CCF1
                                    138 	.globl _CCF2
                                    139 	.globl _CCF3
                                    140 	.globl _CCF4
                                    141 	.globl _CR
                                    142 	.globl _CF
                                    143 	.globl _TF2
                                    144 	.globl _EXF2
                                    145 	.globl _RCLK
                                    146 	.globl _TCLK
                                    147 	.globl _EXEN2
                                    148 	.globl _TR2
                                    149 	.globl _C_T2
                                    150 	.globl _CP_RL2
                                    151 	.globl _T2CON_7
                                    152 	.globl _T2CON_6
                                    153 	.globl _T2CON_5
                                    154 	.globl _T2CON_4
                                    155 	.globl _T2CON_3
                                    156 	.globl _T2CON_2
                                    157 	.globl _T2CON_1
                                    158 	.globl _T2CON_0
                                    159 	.globl _PT2
                                    160 	.globl _ET2
                                    161 	.globl _B
                                    162 	.globl _ACC
                                    163 	.globl _PSW
                                    164 	.globl _IP
                                    165 	.globl _P3
                                    166 	.globl _IE
                                    167 	.globl _P2
                                    168 	.globl _SBUF
                                    169 	.globl _SCON
                                    170 	.globl _P1
                                    171 	.globl _TH1
                                    172 	.globl _TH0
                                    173 	.globl _TL1
                                    174 	.globl _TL0
                                    175 	.globl _TMOD
                                    176 	.globl _TCON
                                    177 	.globl _PCON
                                    178 	.globl _DPH
                                    179 	.globl _DPL
                                    180 	.globl _SP
                                    181 	.globl _P0
                                    182 	.globl _SBUF0
                                    183 	.globl _DP0L
                                    184 	.globl _DP0H
                                    185 	.globl _EECON
                                    186 	.globl _KBF
                                    187 	.globl _KBE
                                    188 	.globl _KBLS
                                    189 	.globl _BRL
                                    190 	.globl _BDRCON
                                    191 	.globl _T2MOD
                                    192 	.globl _SPDAT
                                    193 	.globl _SPSTA
                                    194 	.globl _SPCON
                                    195 	.globl _SADEN
                                    196 	.globl _SADDR
                                    197 	.globl _WDTPRG
                                    198 	.globl _WDTRST
                                    199 	.globl _P5
                                    200 	.globl _P4
                                    201 	.globl _IPH1
                                    202 	.globl _IPL1
                                    203 	.globl _IPH0
                                    204 	.globl _IPL0
                                    205 	.globl _IEN1
                                    206 	.globl _IEN0
                                    207 	.globl _CMOD
                                    208 	.globl _CL
                                    209 	.globl _CH
                                    210 	.globl _CCON
                                    211 	.globl _CCAPM4
                                    212 	.globl _CCAPM3
                                    213 	.globl _CCAPM2
                                    214 	.globl _CCAPM1
                                    215 	.globl _CCAPM0
                                    216 	.globl _CCAP4L
                                    217 	.globl _CCAP3L
                                    218 	.globl _CCAP2L
                                    219 	.globl _CCAP1L
                                    220 	.globl _CCAP0L
                                    221 	.globl _CCAP4H
                                    222 	.globl _CCAP3H
                                    223 	.globl _CCAP2H
                                    224 	.globl _CCAP1H
                                    225 	.globl _CCAP0H
                                    226 	.globl _CKCON1
                                    227 	.globl _CKCON0
                                    228 	.globl _CKRL
                                    229 	.globl _AUXR1
                                    230 	.globl _AUXR
                                    231 	.globl _TH2
                                    232 	.globl _TL2
                                    233 	.globl _RCAP2H
                                    234 	.globl _RCAP2L
                                    235 	.globl _T2CON
                                    236 	.globl _is_ucontroller_active
                                    237 ;--------------------------------------------------------
                                    238 ; special function registers
                                    239 ;--------------------------------------------------------
                                    240 	.area RSEG    (ABS,DATA)
      000000                        241 	.org 0x0000
                           0000C8   242 _T2CON	=	0x00c8
                           0000CA   243 _RCAP2L	=	0x00ca
                           0000CB   244 _RCAP2H	=	0x00cb
                           0000CC   245 _TL2	=	0x00cc
                           0000CD   246 _TH2	=	0x00cd
                           00008E   247 _AUXR	=	0x008e
                           0000A2   248 _AUXR1	=	0x00a2
                           000097   249 _CKRL	=	0x0097
                           00008F   250 _CKCON0	=	0x008f
                           0000AF   251 _CKCON1	=	0x00af
                           0000FA   252 _CCAP0H	=	0x00fa
                           0000FB   253 _CCAP1H	=	0x00fb
                           0000FC   254 _CCAP2H	=	0x00fc
                           0000FD   255 _CCAP3H	=	0x00fd
                           0000FE   256 _CCAP4H	=	0x00fe
                           0000EA   257 _CCAP0L	=	0x00ea
                           0000EB   258 _CCAP1L	=	0x00eb
                           0000EC   259 _CCAP2L	=	0x00ec
                           0000ED   260 _CCAP3L	=	0x00ed
                           0000EE   261 _CCAP4L	=	0x00ee
                           0000DA   262 _CCAPM0	=	0x00da
                           0000DB   263 _CCAPM1	=	0x00db
                           0000DC   264 _CCAPM2	=	0x00dc
                           0000DD   265 _CCAPM3	=	0x00dd
                           0000DE   266 _CCAPM4	=	0x00de
                           0000D8   267 _CCON	=	0x00d8
                           0000F9   268 _CH	=	0x00f9
                           0000E9   269 _CL	=	0x00e9
                           0000D9   270 _CMOD	=	0x00d9
                           0000A8   271 _IEN0	=	0x00a8
                           0000B1   272 _IEN1	=	0x00b1
                           0000B8   273 _IPL0	=	0x00b8
                           0000B7   274 _IPH0	=	0x00b7
                           0000B2   275 _IPL1	=	0x00b2
                           0000B3   276 _IPH1	=	0x00b3
                           0000C0   277 _P4	=	0x00c0
                           0000E8   278 _P5	=	0x00e8
                           0000A6   279 _WDTRST	=	0x00a6
                           0000A7   280 _WDTPRG	=	0x00a7
                           0000A9   281 _SADDR	=	0x00a9
                           0000B9   282 _SADEN	=	0x00b9
                           0000C3   283 _SPCON	=	0x00c3
                           0000C4   284 _SPSTA	=	0x00c4
                           0000C5   285 _SPDAT	=	0x00c5
                           0000C9   286 _T2MOD	=	0x00c9
                           00009B   287 _BDRCON	=	0x009b
                           00009A   288 _BRL	=	0x009a
                           00009C   289 _KBLS	=	0x009c
                           00009D   290 _KBE	=	0x009d
                           00009E   291 _KBF	=	0x009e
                           0000D2   292 _EECON	=	0x00d2
                           000083   293 _DP0H	=	0x0083
                           000082   294 _DP0L	=	0x0082
                           000099   295 _SBUF0	=	0x0099
                           000080   296 _P0	=	0x0080
                           000081   297 _SP	=	0x0081
                           000082   298 _DPL	=	0x0082
                           000083   299 _DPH	=	0x0083
                           000087   300 _PCON	=	0x0087
                           000088   301 _TCON	=	0x0088
                           000089   302 _TMOD	=	0x0089
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           000090   307 _P1	=	0x0090
                           000098   308 _SCON	=	0x0098
                           000099   309 _SBUF	=	0x0099
                           0000A0   310 _P2	=	0x00a0
                           0000A8   311 _IE	=	0x00a8
                           0000B0   312 _P3	=	0x00b0
                           0000B8   313 _IP	=	0x00b8
                           0000D0   314 _PSW	=	0x00d0
                           0000E0   315 _ACC	=	0x00e0
                           0000F0   316 _B	=	0x00f0
                                    317 ;--------------------------------------------------------
                                    318 ; special function bits
                                    319 ;--------------------------------------------------------
                                    320 	.area RSEG    (ABS,DATA)
      000000                        321 	.org 0x0000
                           0000AD   322 _ET2	=	0x00ad
                           0000BD   323 _PT2	=	0x00bd
                           0000C8   324 _T2CON_0	=	0x00c8
                           0000C9   325 _T2CON_1	=	0x00c9
                           0000CA   326 _T2CON_2	=	0x00ca
                           0000CB   327 _T2CON_3	=	0x00cb
                           0000CC   328 _T2CON_4	=	0x00cc
                           0000CD   329 _T2CON_5	=	0x00cd
                           0000CE   330 _T2CON_6	=	0x00ce
                           0000CF   331 _T2CON_7	=	0x00cf
                           0000C8   332 _CP_RL2	=	0x00c8
                           0000C9   333 _C_T2	=	0x00c9
                           0000CA   334 _TR2	=	0x00ca
                           0000CB   335 _EXEN2	=	0x00cb
                           0000CC   336 _TCLK	=	0x00cc
                           0000CD   337 _RCLK	=	0x00cd
                           0000CE   338 _EXF2	=	0x00ce
                           0000CF   339 _TF2	=	0x00cf
                           0000DF   340 _CF	=	0x00df
                           0000DE   341 _CR	=	0x00de
                           0000DC   342 _CCF4	=	0x00dc
                           0000DB   343 _CCF3	=	0x00db
                           0000DA   344 _CCF2	=	0x00da
                           0000D9   345 _CCF1	=	0x00d9
                           0000D8   346 _CCF0	=	0x00d8
                           0000AE   347 _EC	=	0x00ae
                           0000BE   348 _PPCL	=	0x00be
                           0000BD   349 _PT2L	=	0x00bd
                           0000BC   350 _PSL	=	0x00bc
                           0000BB   351 _PT1L	=	0x00bb
                           0000BA   352 _PX1L	=	0x00ba
                           0000B9   353 _PT0L	=	0x00b9
                           0000B8   354 _PX0L	=	0x00b8
                           0000C0   355 _P4_0	=	0x00c0
                           0000C1   356 _P4_1	=	0x00c1
                           0000C2   357 _P4_2	=	0x00c2
                           0000C3   358 _P4_3	=	0x00c3
                           0000C4   359 _P4_4	=	0x00c4
                           0000C5   360 _P4_5	=	0x00c5
                           0000C6   361 _P4_6	=	0x00c6
                           0000C7   362 _P4_7	=	0x00c7
                           0000E8   363 _P5_0	=	0x00e8
                           0000E9   364 _P5_1	=	0x00e9
                           0000EA   365 _P5_2	=	0x00ea
                           0000EB   366 _P5_3	=	0x00eb
                           0000EC   367 _P5_4	=	0x00ec
                           0000ED   368 _P5_5	=	0x00ed
                           0000EE   369 _P5_6	=	0x00ee
                           0000EF   370 _P5_7	=	0x00ef
                           0000F0   371 _BREG_F0	=	0x00f0
                           0000F1   372 _BREG_F1	=	0x00f1
                           0000F2   373 _BREG_F2	=	0x00f2
                           0000F3   374 _BREG_F3	=	0x00f3
                           0000F4   375 _BREG_F4	=	0x00f4
                           0000F5   376 _BREG_F5	=	0x00f5
                           0000F6   377 _BREG_F6	=	0x00f6
                           0000F7   378 _BREG_F7	=	0x00f7
                           0000B0   379 _RXD0	=	0x00b0
                           0000B1   380 _TXD0	=	0x00b1
                           000080   381 _P0_0	=	0x0080
                           000081   382 _P0_1	=	0x0081
                           000082   383 _P0_2	=	0x0082
                           000083   384 _P0_3	=	0x0083
                           000084   385 _P0_4	=	0x0084
                           000085   386 _P0_5	=	0x0085
                           000086   387 _P0_6	=	0x0086
                           000087   388 _P0_7	=	0x0087
                           000088   389 _IT0	=	0x0088
                           000089   390 _IE0	=	0x0089
                           00008A   391 _IT1	=	0x008a
                           00008B   392 _IE1	=	0x008b
                           00008C   393 _TR0	=	0x008c
                           00008D   394 _TF0	=	0x008d
                           00008E   395 _TR1	=	0x008e
                           00008F   396 _TF1	=	0x008f
                           000090   397 _P1_0	=	0x0090
                           000091   398 _P1_1	=	0x0091
                           000092   399 _P1_2	=	0x0092
                           000093   400 _P1_3	=	0x0093
                           000094   401 _P1_4	=	0x0094
                           000095   402 _P1_5	=	0x0095
                           000096   403 _P1_6	=	0x0096
                           000097   404 _P1_7	=	0x0097
                           000098   405 _RI	=	0x0098
                           000099   406 _TI	=	0x0099
                           00009A   407 _RB8	=	0x009a
                           00009B   408 _TB8	=	0x009b
                           00009C   409 _REN	=	0x009c
                           00009D   410 _SM2	=	0x009d
                           00009E   411 _SM1	=	0x009e
                           00009F   412 _SM0	=	0x009f
                           0000A0   413 _P2_0	=	0x00a0
                           0000A1   414 _P2_1	=	0x00a1
                           0000A2   415 _P2_2	=	0x00a2
                           0000A3   416 _P2_3	=	0x00a3
                           0000A4   417 _P2_4	=	0x00a4
                           0000A5   418 _P2_5	=	0x00a5
                           0000A6   419 _P2_6	=	0x00a6
                           0000A7   420 _P2_7	=	0x00a7
                           0000A8   421 _EX0	=	0x00a8
                           0000A9   422 _ET0	=	0x00a9
                           0000AA   423 _EX1	=	0x00aa
                           0000AB   424 _ET1	=	0x00ab
                           0000AC   425 _ES	=	0x00ac
                           0000AF   426 _EA	=	0x00af
                           0000B0   427 _P3_0	=	0x00b0
                           0000B1   428 _P3_1	=	0x00b1
                           0000B2   429 _P3_2	=	0x00b2
                           0000B3   430 _P3_3	=	0x00b3
                           0000B4   431 _P3_4	=	0x00b4
                           0000B5   432 _P3_5	=	0x00b5
                           0000B6   433 _P3_6	=	0x00b6
                           0000B7   434 _P3_7	=	0x00b7
                           0000B0   435 _RXD	=	0x00b0
                           0000B1   436 _TXD	=	0x00b1
                           0000B2   437 _INT0	=	0x00b2
                           0000B3   438 _INT1	=	0x00b3
                           0000B4   439 _T0	=	0x00b4
                           0000B5   440 _T1	=	0x00b5
                           0000B6   441 _WR	=	0x00b6
                           0000B7   442 _RD	=	0x00b7
                           0000B8   443 _PX0	=	0x00b8
                           0000B9   444 _PT0	=	0x00b9
                           0000BA   445 _PX1	=	0x00ba
                           0000BB   446 _PT1	=	0x00bb
                           0000BC   447 _PS	=	0x00bc
                           0000D0   448 _P	=	0x00d0
                           0000D1   449 _F1	=	0x00d1
                           0000D2   450 _OV	=	0x00d2
                           0000D3   451 _RS0	=	0x00d3
                           0000D4   452 _RS1	=	0x00d4
                           0000D5   453 _F0	=	0x00d5
                           0000D6   454 _AC	=	0x00d6
                           0000D7   455 _CY	=	0x00d7
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable register banks
                                    458 ;--------------------------------------------------------
                                    459 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        460 	.ds 8
                                    461 ;--------------------------------------------------------
                                    462 ; internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area DSEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; overlayable items in internal ram
                                    467 ;--------------------------------------------------------
                                    468 ;--------------------------------------------------------
                                    469 ; Stack segment in internal ram
                                    470 ;--------------------------------------------------------
                                    471 	.area	SSEG
      000014                        472 __start__stack:
      000014                        473 	.ds	1
                                    474 
                                    475 ;--------------------------------------------------------
                                    476 ; indirectly addressable internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area ISEG    (DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; absolute internal ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area IABS    (ABS,DATA)
                                    483 	.area IABS    (ABS,DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; bit data
                                    486 ;--------------------------------------------------------
                                    487 	.area BSEG    (BIT)
                                    488 ;--------------------------------------------------------
                                    489 ; paged external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area PSEG    (PAG,XDATA)
                                    492 ;--------------------------------------------------------
                                    493 ; external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XSEG    (XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; absolute external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XABS    (ABS,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; external initialized ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XISEG   (XDATA)
      000042                        504 _is_ucontroller_active::
      000042                        505 	.ds 1
                                    506 	.area HOME    (CODE)
                                    507 	.area GSINIT0 (CODE)
                                    508 	.area GSINIT1 (CODE)
                                    509 	.area GSINIT2 (CODE)
                                    510 	.area GSINIT3 (CODE)
                                    511 	.area GSINIT4 (CODE)
                                    512 	.area GSINIT5 (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 	.area GSFINAL (CODE)
                                    515 	.area CSEG    (CODE)
                                    516 ;--------------------------------------------------------
                                    517 ; interrupt vector
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
      000000                        520 __interrupt_vect:
      000000 02 00 06         [24]  521 	ljmp	__sdcc_gsinit_startup
                                    522 ;--------------------------------------------------------
                                    523 ; global & static initialisations
                                    524 ;--------------------------------------------------------
                                    525 	.area HOME    (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.globl __sdcc_gsinit_startup
                                    530 	.globl __sdcc_program_startup
                                    531 	.globl __start__stack
                                    532 	.globl __mcs51_genXINIT
                                    533 	.globl __mcs51_genXRAMCLEAR
                                    534 	.globl __mcs51_genRAMCLEAR
                                    535 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  536 	ljmp	__sdcc_program_startup
                                    537 ;--------------------------------------------------------
                                    538 ; Home
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME    (CODE)
                                    541 	.area HOME    (CODE)
      000003                        542 __sdcc_program_startup:
      000003 02 01 31         [24]  543 	ljmp	_main
                                    544 ;	return from main will return to caller
                                    545 ;--------------------------------------------------------
                                    546 ; code
                                    547 ;--------------------------------------------------------
                                    548 	.area CSEG    (CODE)
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    551 ;------------------------------------------------------------
                                    552 ;	main.c:45: _sdcc_external_startup()
                                    553 ;	-----------------------------------------
                                    554 ;	 function _sdcc_external_startup
                                    555 ;	-----------------------------------------
      000115                        556 __sdcc_external_startup:
                           000007   557 	ar7 = 0x07
                           000006   558 	ar6 = 0x06
                           000005   559 	ar5 = 0x05
                           000004   560 	ar4 = 0x04
                           000003   561 	ar3 = 0x03
                           000002   562 	ar2 = 0x02
                           000001   563 	ar1 = 0x01
                           000000   564 	ar0 = 0x00
                                    565 ;	main.c:48: AUXR |= (XRS1 | XRS0);
      000115 43 8E 0C         [24]  566 	orl	_AUXR,#0x0c
                                    567 ;	main.c:51: return 0;
      000118 90 00 00         [24]  568 	mov	dptr,#0x0000
                                    569 ;	main.c:52: }
      00011B 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'hardware_init'
                                    573 ;------------------------------------------------------------
                                    574 ;	main.c:58: void hardware_init(void)
                                    575 ;	-----------------------------------------
                                    576 ;	 function hardware_init
                                    577 ;	-----------------------------------------
      00011C                        578 _hardware_init:
                                    579 ;	main.c:60: CKCON0 |= (1 << 0);     // Set bit X2 to 1
      00011C 43 8F 01         [24]  580 	orl	_CKCON0,#0x01
                                    581 ;	main.c:61: IEN0   |= (1 << 7);     // Set bit EA to 1
      00011F 43 A8 80         [24]  582 	orl	_IEN0,#0x80
                                    583 ;	main.c:63: TMOD |= (1 << 5);                        //TIMER 1, MODE 2
      000122 43 89 20         [24]  584 	orl	_TMOD,#0x20
                                    585 ;	main.c:64: SCON |= ((1 << 4) | (1 << 6));           //8 BIT, 1 STOP , REN ENABLED
      000125 43 98 50         [24]  586 	orl	_SCON,#0x50
                                    587 ;	main.c:65: TCON |= (1 << 6); 	                     //START TIMER1
      000128 43 88 40         [24]  588 	orl	_TCON,#0x40
                                    589 ;	main.c:67: TH1 = 0xFD;             // Reload Value = 256 - (9600 / 32 / 12) = 253 for Baud Rate - 9600
      00012B 75 8D FD         [24]  590 	mov	_TH1,#0xfd
                                    591 ;	main.c:68: TI = 1;                 // Sets the bit 1 of the SCON register to 1
                                    592 ;	assignBit
      00012E D2 99            [12]  593 	setb	_TI
                                    594 ;	main.c:69: }
      000130 22               [24]  595 	ret
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'main'
                                    598 ;------------------------------------------------------------
                                    599 ;char_detected             Allocated with name '_main_char_detected_65536_87'
                                    600 ;------------------------------------------------------------
                                    601 ;	main.c:73: int main(void)
                                    602 ;	-----------------------------------------
                                    603 ;	 function main
                                    604 ;	-----------------------------------------
      000131                        605 _main:
                                    606 ;	main.c:77: hardware_init();
      000131 12 01 1C         [24]  607 	lcall	_hardware_init
                                    608 ;	main.c:80: printf_tiny("\033[1;35m\n\r|***********************************************|\n\r");
      000134 74 3F            [12]  609 	mov	a,#___str_0
      000136 C0 E0            [24]  610 	push	acc
      000138 74 11            [12]  611 	mov	a,#(___str_0 >> 8)
      00013A C0 E0            [24]  612 	push	acc
      00013C 12 04 53         [24]  613 	lcall	_printf_tiny
      00013F 15 81            [12]  614 	dec	sp
      000141 15 81            [12]  615 	dec	sp
                                    616 ;	main.c:81: printf_tiny("|****** \033[1;36mUSER INTERFACE Lab 3 Supplimental \033[1;35m******|\n\r");
      000143 74 7C            [12]  617 	mov	a,#___str_1
      000145 C0 E0            [24]  618 	push	acc
      000147 74 11            [12]  619 	mov	a,#(___str_1 >> 8)
      000149 C0 E0            [24]  620 	push	acc
      00014B 12 04 53         [24]  621 	lcall	_printf_tiny
      00014E 15 81            [12]  622 	dec	sp
      000150 15 81            [12]  623 	dec	sp
                                    624 ;	main.c:82: printf_tiny("|  Choose a character from the below options    |\n\r");
      000152 74 BE            [12]  625 	mov	a,#___str_2
      000154 C0 E0            [24]  626 	push	acc
      000156 74 11            [12]  627 	mov	a,#(___str_2 >> 8)
      000158 C0 E0            [24]  628 	push	acc
      00015A 12 04 53         [24]  629 	lcall	_printf_tiny
      00015D 15 81            [12]  630 	dec	sp
      00015F 15 81            [12]  631 	dec	sp
                                    632 ;	main.c:83: printf_tiny("|  \033[1;35mR\033[1;35m    | Run PWM Timer (33% Duty Cycle)        |\n\r");
      000161 74 F2            [12]  633 	mov	a,#___str_3
      000163 C0 E0            [24]  634 	push	acc
      000165 74 11            [12]  635 	mov	a,#(___str_3 >> 8)
      000167 C0 E0            [24]  636 	push	acc
      000169 12 04 53         [24]  637 	lcall	_printf_tiny
      00016C 15 81            [12]  638 	dec	sp
      00016E 15 81            [12]  639 	dec	sp
                                    640 ;	main.c:84: printf_tiny("|  \033[1;35mS\033[1;35m    | Stop PWM Timer                        |\n\r");
      000170 74 34            [12]  641 	mov	a,#___str_4
      000172 C0 E0            [24]  642 	push	acc
      000174 74 12            [12]  643 	mov	a,#(___str_4 >> 8)
      000176 C0 E0            [24]  644 	push	acc
      000178 12 04 53         [24]  645 	lcall	_printf_tiny
      00017B 15 81            [12]  646 	dec	sp
      00017D 15 81            [12]  647 	dec	sp
                                    648 ;	main.c:85: printf_tiny("|  \033[1;35mH\033[1;35m    | High Speed Output                     |\n\r");
      00017F 74 76            [12]  649 	mov	a,#___str_5
      000181 C0 E0            [24]  650 	push	acc
      000183 74 12            [12]  651 	mov	a,#(___str_5 >> 8)
      000185 C0 E0            [24]  652 	push	acc
      000187 12 04 53         [24]  653 	lcall	_printf_tiny
      00018A 15 81            [12]  654 	dec	sp
      00018C 15 81            [12]  655 	dec	sp
                                    656 ;	main.c:86: printf_tiny("|  \033[1;35mM\033[1;35m    | Min Fclkperph frequency               |\n\r");
      00018E 74 B8            [12]  657 	mov	a,#___str_6
      000190 C0 E0            [24]  658 	push	acc
      000192 74 12            [12]  659 	mov	a,#(___str_6 >> 8)
      000194 C0 E0            [24]  660 	push	acc
      000196 12 04 53         [24]  661 	lcall	_printf_tiny
      000199 15 81            [12]  662 	dec	sp
      00019B 15 81            [12]  663 	dec	sp
                                    664 ;	main.c:87: printf_tiny("|  \033[1;35mN\033[1;35m    | Max Fclkperph frequency               |\n\r");
      00019D 74 FA            [12]  665 	mov	a,#___str_7
      00019F C0 E0            [24]  666 	push	acc
      0001A1 74 12            [12]  667 	mov	a,#(___str_7 >> 8)
      0001A3 C0 E0            [24]  668 	push	acc
      0001A5 12 04 53         [24]  669 	lcall	_printf_tiny
      0001A8 15 81            [12]  670 	dec	sp
      0001AA 15 81            [12]  671 	dec	sp
                                    672 ;	main.c:88: printf_tiny("|  \033[1;35mI\033[1;35m    | Enter IDLE mode                       |\n\r");
      0001AC 74 3C            [12]  673 	mov	a,#___str_8
      0001AE C0 E0            [24]  674 	push	acc
      0001B0 74 13            [12]  675 	mov	a,#(___str_8 >> 8)
      0001B2 C0 E0            [24]  676 	push	acc
      0001B4 12 04 53         [24]  677 	lcall	_printf_tiny
      0001B7 15 81            [12]  678 	dec	sp
      0001B9 15 81            [12]  679 	dec	sp
                                    680 ;	main.c:89: printf_tiny("|  \033[1;35mP\033[1;35m    | Enter POWERDOWN mode                  |\n\r");
      0001BB 74 7E            [12]  681 	mov	a,#___str_9
      0001BD C0 E0            [24]  682 	push	acc
      0001BF 74 13            [12]  683 	mov	a,#(___str_9 >> 8)
      0001C1 C0 E0            [24]  684 	push	acc
      0001C3 12 04 53         [24]  685 	lcall	_printf_tiny
      0001C6 15 81            [12]  686 	dec	sp
      0001C8 15 81            [12]  687 	dec	sp
                                    688 ;	main.c:90: printf_tiny("\033[1;35m|***********************************************|\n\r");
      0001CA 74 C0            [12]  689 	mov	a,#___str_10
      0001CC C0 E0            [24]  690 	push	acc
      0001CE 74 13            [12]  691 	mov	a,#(___str_10 >> 8)
      0001D0 C0 E0            [24]  692 	push	acc
      0001D2 12 04 53         [24]  693 	lcall	_printf_tiny
      0001D5 15 81            [12]  694 	dec	sp
      0001D7 15 81            [12]  695 	dec	sp
                                    696 ;	main.c:91: printf_tiny("|***********************************************|\n\r\n\r");
      0001D9 74 FB            [12]  697 	mov	a,#___str_11
      0001DB C0 E0            [24]  698 	push	acc
      0001DD 74 13            [12]  699 	mov	a,#(___str_11 >> 8)
      0001DF C0 E0            [24]  700 	push	acc
      0001E1 12 04 53         [24]  701 	lcall	_printf_tiny
      0001E4 15 81            [12]  702 	dec	sp
      0001E6 15 81            [12]  703 	dec	sp
                                    704 ;	main.c:93: while(1) // it should come back to enter character
      0001E8                        705 00113$:
                                    706 ;	main.c:96: printf_tiny("\033[1;36m|***********************************************|\n\r");
      0001E8 74 31            [12]  707 	mov	a,#___str_12
      0001EA C0 E0            [24]  708 	push	acc
      0001EC 74 14            [12]  709 	mov	a,#(___str_12 >> 8)
      0001EE C0 E0            [24]  710 	push	acc
      0001F0 12 04 53         [24]  711 	lcall	_printf_tiny
      0001F3 15 81            [12]  712 	dec	sp
      0001F5 15 81            [12]  713 	dec	sp
                                    714 ;	main.c:97: printf_tiny("\033[1;36m|                Enter Character                |\n\r");
      0001F7 74 6C            [12]  715 	mov	a,#___str_13
      0001F9 C0 E0            [24]  716 	push	acc
      0001FB 74 14            [12]  717 	mov	a,#(___str_13 >> 8)
      0001FD C0 E0            [24]  718 	push	acc
      0001FF 12 04 53         [24]  719 	lcall	_printf_tiny
      000202 15 81            [12]  720 	dec	sp
      000204 15 81            [12]  721 	dec	sp
                                    722 ;	main.c:98: printf_tiny("\033[1;36m|***********************************************|\n\r\033[1;0m");
      000206 74 A7            [12]  723 	mov	a,#___str_14
      000208 C0 E0            [24]  724 	push	acc
      00020A 74 14            [12]  725 	mov	a,#(___str_14 >> 8)
      00020C C0 E0            [24]  726 	push	acc
      00020E 12 04 53         [24]  727 	lcall	_printf_tiny
      000211 15 81            [12]  728 	dec	sp
      000213 15 81            [12]  729 	dec	sp
                                    730 ;	main.c:101: char_detected = getchar();              // Read a character from input
      000215 12 03 30         [24]  731 	lcall	_getchar
      000218 AE 82            [24]  732 	mov	r6,dpl
                                    733 ;	main.c:102: putchar(char_detected);                 // Echo the character back to output
      00021A 8E 05            [24]  734 	mov	ar5,r6
      00021C 7F 00            [12]  735 	mov	r7,#0x00
      00021E 8D 82            [24]  736 	mov	dpl,r5
      000220 8F 83            [24]  737 	mov	dph,r7
      000222 C0 06            [24]  738 	push	ar6
      000224 12 03 3E         [24]  739 	lcall	_putchar
                                    740 ;	main.c:103: putchar(' ');                           // Add a space to separate characters for readability
      000227 90 00 20         [24]  741 	mov	dptr,#0x0020
      00022A 12 03 3E         [24]  742 	lcall	_putchar
      00022D D0 06            [24]  743 	pop	ar6
                                    744 ;	main.c:105: switch(char_detected)
      00022F BE 48 02         [24]  745 	cjne	r6,#0x48,00157$
      000232 80 32            [24]  746 	sjmp	00103$
      000234                        747 00157$:
      000234 BE 49 02         [24]  748 	cjne	r6,#0x49,00158$
      000237 80 45            [24]  749 	sjmp	00107$
      000239                        750 00158$:
      000239 BE 4A 02         [24]  751 	cjne	r6,#0x4a,00159$
      00023C 80 2E            [24]  752 	sjmp	00104$
      00023E                        753 00159$:
      00023E BE 4D 02         [24]  754 	cjne	r6,#0x4d,00160$
      000241 80 2F            [24]  755 	sjmp	00105$
      000243                        756 00160$:
      000243 BE 4E 02         [24]  757 	cjne	r6,#0x4e,00161$
      000246 80 30            [24]  758 	sjmp	00106$
      000248                        759 00161$:
      000248 BE 50 02         [24]  760 	cjne	r6,#0x50,00162$
      00024B 80 3A            [24]  761 	sjmp	00108$
      00024D                        762 00162$:
      00024D BE 52 02         [24]  763 	cjne	r6,#0x52,00163$
      000250 80 0A            [24]  764 	sjmp	00101$
      000252                        765 00163$:
      000252 BE 53 02         [24]  766 	cjne	r6,#0x53,00164$
      000255 80 0A            [24]  767 	sjmp	00102$
      000257                        768 00164$:
                                    769 ;	main.c:107: case 'R':
      000257 BE 57 4B         [24]  770 	cjne	r6,#0x57,00110$
      00025A 80 34            [24]  771 	sjmp	00109$
      00025C                        772 00101$:
                                    773 ;	main.c:108: start_pwm(); // this we did first
      00025C 12 02 C6         [24]  774 	lcall	_start_pwm
                                    775 ;	main.c:109: break;
                                    776 ;	main.c:111: case 'S':
      00025F 80 87            [24]  777 	sjmp	00113$
      000261                        778 00102$:
                                    779 ;	main.c:112: stop_pwm();
      000261 12 03 06         [24]  780 	lcall	_stop_pwm
                                    781 ;	main.c:113: break;
                                    782 ;	main.c:115: case 'H':
      000264 80 82            [24]  783 	sjmp	00113$
      000266                        784 00103$:
                                    785 ;	main.c:116: start_high_speed_output();
      000266 12 00 CE         [24]  786 	lcall	_start_high_speed_output
                                    787 ;	main.c:117: break;
      000269 02 01 E8         [24]  788 	ljmp	00113$
                                    789 ;	main.c:119: case 'J':
      00026C                        790 00104$:
                                    791 ;	main.c:120: stop_high_speed_output();
      00026C 12 00 F9         [24]  792 	lcall	_stop_high_speed_output
                                    793 ;	main.c:121: break;
      00026F 02 01 E8         [24]  794 	ljmp	00113$
                                    795 ;	main.c:123: case 'M':
      000272                        796 00105$:
                                    797 ;	main.c:124: fclk_periph_min_freq();
      000272 12 00 62         [24]  798 	lcall	_fclk_periph_min_freq
                                    799 ;	main.c:125: break;
      000275 02 01 E8         [24]  800 	ljmp	00113$
                                    801 ;	main.c:127: case 'N':
      000278                        802 00106$:
                                    803 ;	main.c:128: fclk_periph_max_freq();
      000278 12 00 7B         [24]  804 	lcall	_fclk_periph_max_freq
                                    805 ;	main.c:129: break;
      00027B 02 01 E8         [24]  806 	ljmp	00113$
                                    807 ;	main.c:131: case 'I':
      00027E                        808 00107$:
                                    809 ;	main.c:132: ucontroller_idle_mode();
      00027E 12 00 94         [24]  810 	lcall	_ucontroller_idle_mode
                                    811 ;	main.c:133: powerdown_idle_wakeup();
      000281 12 04 4C         [24]  812 	lcall	_powerdown_idle_wakeup
                                    813 ;	main.c:134: break;
      000284 02 01 E8         [24]  814 	ljmp	00113$
                                    815 ;	main.c:136: case 'P':
      000287                        816 00108$:
                                    817 ;	main.c:137: ucontroller_power_down_mode();
      000287 12 00 B5         [24]  818 	lcall	_ucontroller_power_down_mode
                                    819 ;	main.c:138: powerdown_idle_wakeup();
      00028A 12 04 4C         [24]  820 	lcall	_powerdown_idle_wakeup
                                    821 ;	main.c:139: break;
      00028D 02 01 E8         [24]  822 	ljmp	00113$
                                    823 ;	main.c:141: case 'W':
      000290                        824 00109$:
                                    825 ;	main.c:142: printf_tiny("\033[1;31mWATCHDOG Activated!!\n\r");
      000290 74 E8            [12]  826 	mov	a,#___str_15
      000292 C0 E0            [24]  827 	push	acc
      000294 74 14            [12]  828 	mov	a,#(___str_15 >> 8)
      000296 C0 E0            [24]  829 	push	acc
      000298 12 04 53         [24]  830 	lcall	_printf_tiny
      00029B 15 81            [12]  831 	dec	sp
      00029D 15 81            [12]  832 	dec	sp
                                    833 ;	main.c:143: watchdog_init();
      00029F 12 03 1F         [24]  834 	lcall	_watchdog_init
                                    835 ;	main.c:144: break;
      0002A2 02 01 E8         [24]  836 	ljmp	00113$
                                    837 ;	main.c:146: default:
      0002A5                        838 00110$:
                                    839 ;	main.c:147: printf_tiny("\033[1;31mInvalid Character!!\n\r");
      0002A5 74 06            [12]  840 	mov	a,#___str_16
      0002A7 C0 E0            [24]  841 	push	acc
      0002A9 74 15            [12]  842 	mov	a,#(___str_16 >> 8)
      0002AB C0 E0            [24]  843 	push	acc
      0002AD 12 04 53         [24]  844 	lcall	_printf_tiny
      0002B0 15 81            [12]  845 	dec	sp
      0002B2 15 81            [12]  846 	dec	sp
                                    847 ;	main.c:148: printf_tiny("\033[1;31mSuggested Action\t: Available Characters R-S-H-M-N-I_P!!\n\r");
      0002B4 74 23            [12]  848 	mov	a,#___str_17
      0002B6 C0 E0            [24]  849 	push	acc
      0002B8 74 15            [12]  850 	mov	a,#(___str_17 >> 8)
      0002BA C0 E0            [24]  851 	push	acc
      0002BC 12 04 53         [24]  852 	lcall	_printf_tiny
      0002BF 15 81            [12]  853 	dec	sp
      0002C1 15 81            [12]  854 	dec	sp
                                    855 ;	main.c:150: }
                                    856 ;	main.c:154: }
      0002C3 02 01 E8         [24]  857 	ljmp	00113$
                                    858 	.area CSEG    (CODE)
                                    859 	.area CONST   (CODE)
                                    860 	.area CONST   (CODE)
      00113F                        861 ___str_0:
      00113F 1B                     862 	.db 0x1b
      001140 5B 31 3B 33 35 6D      863 	.ascii "[1;35m"
      001146 0A                     864 	.db 0x0a
      001147 0D                     865 	.db 0x0d
      001148 7C 2A 2A 2A 2A 2A 2A   866 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      001179 0A                     867 	.db 0x0a
      00117A 0D                     868 	.db 0x0d
      00117B 00                     869 	.db 0x00
                                    870 	.area CSEG    (CODE)
                                    871 	.area CONST   (CODE)
      00117C                        872 ___str_1:
      00117C 7C 2A 2A 2A 2A 2A 2A   873 	.ascii "|****** "
             20
      001184 1B                     874 	.db 0x1b
      001185 5B 31 3B 33 36 6D 55   875 	.ascii "[1;36mUSER INTERFACE Lab 3 Supplimental "
             53 45 52 20 49 4E 54
             45 52 46 41 43 45 20
             4C 61 62 20 33 20 53
             75 70 70 6C 69 6D 65
             6E 74 61 6C 20
      0011AD 1B                     876 	.db 0x1b
      0011AE 5B 31 3B 33 35 6D 2A   877 	.ascii "[1;35m******|"
             2A 2A 2A 2A 2A 7C
      0011BB 0A                     878 	.db 0x0a
      0011BC 0D                     879 	.db 0x0d
      0011BD 00                     880 	.db 0x00
                                    881 	.area CSEG    (CODE)
                                    882 	.area CONST   (CODE)
      0011BE                        883 ___str_2:
      0011BE 7C 20 20 43 68 6F 6F   884 	.ascii "|  Choose a character from the below options    |"
             73 65 20 61 20 63 68
             61 72 61 63 74 65 72
             20 66 72 6F 6D 20 74
             68 65 20 62 65 6C 6F
             77 20 6F 70 74 69 6F
             6E 73 20 20 20 20 7C
      0011EF 0A                     885 	.db 0x0a
      0011F0 0D                     886 	.db 0x0d
      0011F1 00                     887 	.db 0x00
                                    888 	.area CSEG    (CODE)
                                    889 	.area CONST   (CODE)
      0011F2                        890 ___str_3:
      0011F2 7C 20 20               891 	.ascii "|  "
      0011F5 1B                     892 	.db 0x1b
      0011F6 5B 31 3B 33 35 6D 52   893 	.ascii "[1;35mR"
      0011FD 1B                     894 	.db 0x1b
      0011FE 5B 31 3B 33 35 6D 20   895 	.ascii "[1;35m    | Run PWM Timer (33% Duty Cycle)        |"
             20 20 20 7C 20 52 75
             6E 20 50 57 4D 20 54
             69 6D 65 72 20 28 33
             33 25 20 44 75 74 79
             20 43 79 63 6C 65 29
             20 20 20 20 20 20 20
             20 7C
      001231 0A                     896 	.db 0x0a
      001232 0D                     897 	.db 0x0d
      001233 00                     898 	.db 0x00
                                    899 	.area CSEG    (CODE)
                                    900 	.area CONST   (CODE)
      001234                        901 ___str_4:
      001234 7C 20 20               902 	.ascii "|  "
      001237 1B                     903 	.db 0x1b
      001238 5B 31 3B 33 35 6D 53   904 	.ascii "[1;35mS"
      00123F 1B                     905 	.db 0x1b
      001240 5B 31 3B 33 35 6D 20   906 	.ascii "[1;35m    | Stop PWM Timer                        |"
             20 20 20 7C 20 53 74
             6F 70 20 50 57 4D 20
             54 69 6D 65 72 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      001273 0A                     907 	.db 0x0a
      001274 0D                     908 	.db 0x0d
      001275 00                     909 	.db 0x00
                                    910 	.area CSEG    (CODE)
                                    911 	.area CONST   (CODE)
      001276                        912 ___str_5:
      001276 7C 20 20               913 	.ascii "|  "
      001279 1B                     914 	.db 0x1b
      00127A 5B 31 3B 33 35 6D 48   915 	.ascii "[1;35mH"
      001281 1B                     916 	.db 0x1b
      001282 5B 31 3B 33 35 6D 20   917 	.ascii "[1;35m    | High Speed Output                     |"
             20 20 20 7C 20 48 69
             67 68 20 53 70 65 65
             64 20 4F 75 74 70 75
             74 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0012B5 0A                     918 	.db 0x0a
      0012B6 0D                     919 	.db 0x0d
      0012B7 00                     920 	.db 0x00
                                    921 	.area CSEG    (CODE)
                                    922 	.area CONST   (CODE)
      0012B8                        923 ___str_6:
      0012B8 7C 20 20               924 	.ascii "|  "
      0012BB 1B                     925 	.db 0x1b
      0012BC 5B 31 3B 33 35 6D 4D   926 	.ascii "[1;35mM"
      0012C3 1B                     927 	.db 0x1b
      0012C4 5B 31 3B 33 35 6D 20   928 	.ascii "[1;35m    | Min Fclkperph frequency               |"
             20 20 20 7C 20 4D 69
             6E 20 46 63 6C 6B 70
             65 72 70 68 20 66 72
             65 71 75 65 6E 63 79
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0012F7 0A                     929 	.db 0x0a
      0012F8 0D                     930 	.db 0x0d
      0012F9 00                     931 	.db 0x00
                                    932 	.area CSEG    (CODE)
                                    933 	.area CONST   (CODE)
      0012FA                        934 ___str_7:
      0012FA 7C 20 20               935 	.ascii "|  "
      0012FD 1B                     936 	.db 0x1b
      0012FE 5B 31 3B 33 35 6D 4E   937 	.ascii "[1;35mN"
      001305 1B                     938 	.db 0x1b
      001306 5B 31 3B 33 35 6D 20   939 	.ascii "[1;35m    | Max Fclkperph frequency               |"
             20 20 20 7C 20 4D 61
             78 20 46 63 6C 6B 70
             65 72 70 68 20 66 72
             65 71 75 65 6E 63 79
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      001339 0A                     940 	.db 0x0a
      00133A 0D                     941 	.db 0x0d
      00133B 00                     942 	.db 0x00
                                    943 	.area CSEG    (CODE)
                                    944 	.area CONST   (CODE)
      00133C                        945 ___str_8:
      00133C 7C 20 20               946 	.ascii "|  "
      00133F 1B                     947 	.db 0x1b
      001340 5B 31 3B 33 35 6D 49   948 	.ascii "[1;35mI"
      001347 1B                     949 	.db 0x1b
      001348 5B 31 3B 33 35 6D 20   950 	.ascii "[1;35m    | Enter IDLE mode                       |"
             20 20 20 7C 20 45 6E
             74 65 72 20 49 44 4C
             45 20 6D 6F 64 65 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      00137B 0A                     951 	.db 0x0a
      00137C 0D                     952 	.db 0x0d
      00137D 00                     953 	.db 0x00
                                    954 	.area CSEG    (CODE)
                                    955 	.area CONST   (CODE)
      00137E                        956 ___str_9:
      00137E 7C 20 20               957 	.ascii "|  "
      001381 1B                     958 	.db 0x1b
      001382 5B 31 3B 33 35 6D 50   959 	.ascii "[1;35mP"
      001389 1B                     960 	.db 0x1b
      00138A 5B 31 3B 33 35 6D 20   961 	.ascii "[1;35m    | Enter POWERDOWN mode                  |"
             20 20 20 7C 20 45 6E
             74 65 72 20 50 4F 57
             45 52 44 4F 57 4E 20
             6D 6F 64 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0013BD 0A                     962 	.db 0x0a
      0013BE 0D                     963 	.db 0x0d
      0013BF 00                     964 	.db 0x00
                                    965 	.area CSEG    (CODE)
                                    966 	.area CONST   (CODE)
      0013C0                        967 ___str_10:
      0013C0 1B                     968 	.db 0x1b
      0013C1 5B 31 3B 33 35 6D 7C   969 	.ascii "[1;35m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0013F8 0A                     970 	.db 0x0a
      0013F9 0D                     971 	.db 0x0d
      0013FA 00                     972 	.db 0x00
                                    973 	.area CSEG    (CODE)
                                    974 	.area CONST   (CODE)
      0013FB                        975 ___str_11:
      0013FB 7C 2A 2A 2A 2A 2A 2A   976 	.ascii "|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 7C
      00142C 0A                     977 	.db 0x0a
      00142D 0D                     978 	.db 0x0d
      00142E 0A                     979 	.db 0x0a
      00142F 0D                     980 	.db 0x0d
      001430 00                     981 	.db 0x00
                                    982 	.area CSEG    (CODE)
                                    983 	.area CONST   (CODE)
      001431                        984 ___str_12:
      001431 1B                     985 	.db 0x1b
      001432 5B 31 3B 33 36 6D 7C   986 	.ascii "[1;36m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      001469 0A                     987 	.db 0x0a
      00146A 0D                     988 	.db 0x0d
      00146B 00                     989 	.db 0x00
                                    990 	.area CSEG    (CODE)
                                    991 	.area CONST   (CODE)
      00146C                        992 ___str_13:
      00146C 1B                     993 	.db 0x1b
      00146D 5B 31 3B 33 36 6D 7C   994 	.ascii "[1;36m|                Enter Character                |"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 45 6E 74 65 72
             20 43 68 61 72 61 63
             74 65 72 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C
      0014A4 0A                     995 	.db 0x0a
      0014A5 0D                     996 	.db 0x0d
      0014A6 00                     997 	.db 0x00
                                    998 	.area CSEG    (CODE)
                                    999 	.area CONST   (CODE)
      0014A7                       1000 ___str_14:
      0014A7 1B                    1001 	.db 0x1b
      0014A8 5B 31 3B 33 36 6D 7C  1002 	.ascii "[1;36m|***********************************************|"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 7C
      0014DF 0A                    1003 	.db 0x0a
      0014E0 0D                    1004 	.db 0x0d
      0014E1 1B                    1005 	.db 0x1b
      0014E2 5B 31 3B 30 6D        1006 	.ascii "[1;0m"
      0014E7 00                    1007 	.db 0x00
                                   1008 	.area CSEG    (CODE)
                                   1009 	.area CONST   (CODE)
      0014E8                       1010 ___str_15:
      0014E8 1B                    1011 	.db 0x1b
      0014E9 5B 31 3B 33 31 6D 57  1012 	.ascii "[1;31mWATCHDOG Activated!!"
             41 54 43 48 44 4F 47
             20 41 63 74 69 76 61
             74 65 64 21 21
      001503 0A                    1013 	.db 0x0a
      001504 0D                    1014 	.db 0x0d
      001505 00                    1015 	.db 0x00
                                   1016 	.area CSEG    (CODE)
                                   1017 	.area CONST   (CODE)
      001506                       1018 ___str_16:
      001506 1B                    1019 	.db 0x1b
      001507 5B 31 3B 33 31 6D 49  1020 	.ascii "[1;31mInvalid Character!!"
             6E 76 61 6C 69 64 20
             43 68 61 72 61 63 74
             65 72 21 21
      001520 0A                    1021 	.db 0x0a
      001521 0D                    1022 	.db 0x0d
      001522 00                    1023 	.db 0x00
                                   1024 	.area CSEG    (CODE)
                                   1025 	.area CONST   (CODE)
      001523                       1026 ___str_17:
      001523 1B                    1027 	.db 0x1b
      001524 5B 31 3B 33 31 6D 53  1028 	.ascii "[1;31mSuggested Action"
             75 67 67 65 73 74 65
             64 20 41 63 74 69 6F
             6E
      00153A 09                    1029 	.db 0x09
      00153B 3A 20 41 76 61 69 6C  1030 	.ascii ": Available Characters R-S-H-M-N-I_P!!"
             61 62 6C 65 20 43 68
             61 72 61 63 74 65 72
             73 20 52 2D 53 2D 48
             2D 4D 2D 4E 2D 49 5F
             50 21 21
      001561 0A                    1031 	.db 0x0a
      001562 0D                    1032 	.db 0x0d
      001563 00                    1033 	.db 0x00
                                   1034 	.area CSEG    (CODE)
                                   1035 	.area XINIT   (CODE)
      0015C5                       1036 __xinit__is_ucontroller_active:
      0015C5 01                    1037 	.db #0x01	;  1
                                   1038 	.area CABS    (ABS,CODE)
