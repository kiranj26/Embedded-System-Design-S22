                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Fri Mar 03 14:16:31 2023
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _CY
                             14 	.globl _AC
                             15 	.globl _F0
                             16 	.globl _RS1
                             17 	.globl _RS0
                             18 	.globl _OV
                             19 	.globl _F1
                             20 	.globl _P
                             21 	.globl _PS
                             22 	.globl _PT1
                             23 	.globl _PX1
                             24 	.globl _PT0
                             25 	.globl _PX0
                             26 	.globl _RD
                             27 	.globl _WR
                             28 	.globl _T1
                             29 	.globl _T0
                             30 	.globl _INT1
                             31 	.globl _INT0
                             32 	.globl _TXD
                             33 	.globl _RXD
                             34 	.globl _P3_7
                             35 	.globl _P3_6
                             36 	.globl _P3_5
                             37 	.globl _P3_4
                             38 	.globl _P3_3
                             39 	.globl _P3_2
                             40 	.globl _P3_1
                             41 	.globl _P3_0
                             42 	.globl _EA
                             43 	.globl _ES
                             44 	.globl _ET1
                             45 	.globl _EX1
                             46 	.globl _ET0
                             47 	.globl _EX0
                             48 	.globl _P2_7
                             49 	.globl _P2_6
                             50 	.globl _P2_5
                             51 	.globl _P2_4
                             52 	.globl _P2_3
                             53 	.globl _P2_2
                             54 	.globl _P2_1
                             55 	.globl _P2_0
                             56 	.globl _SM0
                             57 	.globl _SM1
                             58 	.globl _SM2
                             59 	.globl _REN
                             60 	.globl _TB8
                             61 	.globl _RB8
                             62 	.globl _TI
                             63 	.globl _RI
                             64 	.globl _P1_7
                             65 	.globl _P1_6
                             66 	.globl _P1_5
                             67 	.globl _P1_4
                             68 	.globl _P1_3
                             69 	.globl _P1_2
                             70 	.globl _P1_1
                             71 	.globl _P1_0
                             72 	.globl _TF1
                             73 	.globl _TR1
                             74 	.globl _TF0
                             75 	.globl _TR0
                             76 	.globl _IE1
                             77 	.globl _IT1
                             78 	.globl _IE0
                             79 	.globl _IT0
                             80 	.globl _P0_7
                             81 	.globl _P0_6
                             82 	.globl _P0_5
                             83 	.globl _P0_4
                             84 	.globl _P0_3
                             85 	.globl _P0_2
                             86 	.globl _P0_1
                             87 	.globl _P0_0
                             88 	.globl _B
                             89 	.globl _ACC
                             90 	.globl _PSW
                             91 	.globl _IP
                             92 	.globl _P3
                             93 	.globl _IE
                             94 	.globl _P2
                             95 	.globl _SBUF
                             96 	.globl _SCON
                             97 	.globl _P1
                             98 	.globl _TH1
                             99 	.globl _TH0
                            100 	.globl _TL1
                            101 	.globl _TL0
                            102 	.globl _TMOD
                            103 	.globl _TCON
                            104 	.globl _PCON
                            105 	.globl _DPH
                            106 	.globl _DPL
                            107 	.globl _SP
                            108 	.globl _P0
                            109 ;--------------------------------------------------------
                            110 ; special function registers
                            111 ;--------------------------------------------------------
                            112 	.area RSEG    (DATA)
                    0080    113 _P0	=	0x0080
                    0081    114 _SP	=	0x0081
                    0082    115 _DPL	=	0x0082
                    0083    116 _DPH	=	0x0083
                    0087    117 _PCON	=	0x0087
                    0088    118 _TCON	=	0x0088
                    0089    119 _TMOD	=	0x0089
                    008A    120 _TL0	=	0x008a
                    008B    121 _TL1	=	0x008b
                    008C    122 _TH0	=	0x008c
                    008D    123 _TH1	=	0x008d
                    0090    124 _P1	=	0x0090
                    0098    125 _SCON	=	0x0098
                    0099    126 _SBUF	=	0x0099
                    00A0    127 _P2	=	0x00a0
                    00A8    128 _IE	=	0x00a8
                    00B0    129 _P3	=	0x00b0
                    00B8    130 _IP	=	0x00b8
                    00D0    131 _PSW	=	0x00d0
                    00E0    132 _ACC	=	0x00e0
                    00F0    133 _B	=	0x00f0
                            134 ;--------------------------------------------------------
                            135 ; special function bits
                            136 ;--------------------------------------------------------
                            137 	.area RSEG    (DATA)
                    0080    138 _P0_0	=	0x0080
                    0081    139 _P0_1	=	0x0081
                    0082    140 _P0_2	=	0x0082
                    0083    141 _P0_3	=	0x0083
                    0084    142 _P0_4	=	0x0084
                    0085    143 _P0_5	=	0x0085
                    0086    144 _P0_6	=	0x0086
                    0087    145 _P0_7	=	0x0087
                    0088    146 _IT0	=	0x0088
                    0089    147 _IE0	=	0x0089
                    008A    148 _IT1	=	0x008a
                    008B    149 _IE1	=	0x008b
                    008C    150 _TR0	=	0x008c
                    008D    151 _TF0	=	0x008d
                    008E    152 _TR1	=	0x008e
                    008F    153 _TF1	=	0x008f
                    0090    154 _P1_0	=	0x0090
                    0091    155 _P1_1	=	0x0091
                    0092    156 _P1_2	=	0x0092
                    0093    157 _P1_3	=	0x0093
                    0094    158 _P1_4	=	0x0094
                    0095    159 _P1_5	=	0x0095
                    0096    160 _P1_6	=	0x0096
                    0097    161 _P1_7	=	0x0097
                    0098    162 _RI	=	0x0098
                    0099    163 _TI	=	0x0099
                    009A    164 _RB8	=	0x009a
                    009B    165 _TB8	=	0x009b
                    009C    166 _REN	=	0x009c
                    009D    167 _SM2	=	0x009d
                    009E    168 _SM1	=	0x009e
                    009F    169 _SM0	=	0x009f
                    00A0    170 _P2_0	=	0x00a0
                    00A1    171 _P2_1	=	0x00a1
                    00A2    172 _P2_2	=	0x00a2
                    00A3    173 _P2_3	=	0x00a3
                    00A4    174 _P2_4	=	0x00a4
                    00A5    175 _P2_5	=	0x00a5
                    00A6    176 _P2_6	=	0x00a6
                    00A7    177 _P2_7	=	0x00a7
                    00A8    178 _EX0	=	0x00a8
                    00A9    179 _ET0	=	0x00a9
                    00AA    180 _EX1	=	0x00aa
                    00AB    181 _ET1	=	0x00ab
                    00AC    182 _ES	=	0x00ac
                    00AF    183 _EA	=	0x00af
                    00B0    184 _P3_0	=	0x00b0
                    00B1    185 _P3_1	=	0x00b1
                    00B2    186 _P3_2	=	0x00b2
                    00B3    187 _P3_3	=	0x00b3
                    00B4    188 _P3_4	=	0x00b4
                    00B5    189 _P3_5	=	0x00b5
                    00B6    190 _P3_6	=	0x00b6
                    00B7    191 _P3_7	=	0x00b7
                    00B0    192 _RXD	=	0x00b0
                    00B1    193 _TXD	=	0x00b1
                    00B2    194 _INT0	=	0x00b2
                    00B3    195 _INT1	=	0x00b3
                    00B4    196 _T0	=	0x00b4
                    00B5    197 _T1	=	0x00b5
                    00B6    198 _WR	=	0x00b6
                    00B7    199 _RD	=	0x00b7
                    00B8    200 _PX0	=	0x00b8
                    00B9    201 _PT0	=	0x00b9
                    00BA    202 _PX1	=	0x00ba
                    00BB    203 _PT1	=	0x00bb
                    00BC    204 _PS	=	0x00bc
                    00D0    205 _P	=	0x00d0
                    00D1    206 _F1	=	0x00d1
                    00D2    207 _OV	=	0x00d2
                    00D3    208 _RS0	=	0x00d3
                    00D4    209 _RS1	=	0x00d4
                    00D5    210 _F0	=	0x00d5
                    00D6    211 _AC	=	0x00d6
                    00D7    212 _CY	=	0x00d7
                            213 ;--------------------------------------------------------
                            214 ; overlayable register banks
                            215 ;--------------------------------------------------------
                            216 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     217 	.ds 8
                            218 ;--------------------------------------------------------
                            219 ; internal ram data
                            220 ;--------------------------------------------------------
                            221 	.area DSEG    (DATA)
                            222 ;--------------------------------------------------------
                            223 ; overlayable items in internal ram 
                            224 ;--------------------------------------------------------
                            225 	.area OSEG    (OVR,DATA)
                            226 ;--------------------------------------------------------
                            227 ; Stack segment in internal ram 
                            228 ;--------------------------------------------------------
                            229 	.area	SSEG	(DATA)
   0008                     230 __start__stack:
   0008                     231 	.ds	1
                            232 
                            233 ;--------------------------------------------------------
                            234 ; indirectly addressable internal ram data
                            235 ;--------------------------------------------------------
                            236 	.area ISEG    (DATA)
                            237 ;--------------------------------------------------------
                            238 ; bit data
                            239 ;--------------------------------------------------------
                            240 	.area BSEG    (BIT)
                            241 ;--------------------------------------------------------
                            242 ; paged external ram data
                            243 ;--------------------------------------------------------
                            244 	.area PSEG    (PAG,XDATA)
                            245 ;--------------------------------------------------------
                            246 ; external ram data
                            247 ;--------------------------------------------------------
                            248 	.area XSEG    (XDATA)
                            249 ;--------------------------------------------------------
                            250 ; external initialized ram data
                            251 ;--------------------------------------------------------
                            252 	.area XISEG   (XDATA)
                            253 	.area HOME    (CODE)
                            254 	.area GSINIT0 (CODE)
                            255 	.area GSINIT1 (CODE)
                            256 	.area GSINIT2 (CODE)
                            257 	.area GSINIT3 (CODE)
                            258 	.area GSINIT4 (CODE)
                            259 	.area GSINIT5 (CODE)
                            260 	.area GSINIT  (CODE)
                            261 	.area GSFINAL (CODE)
                            262 	.area CSEG    (CODE)
                            263 ;--------------------------------------------------------
                            264 ; interrupt vector 
                            265 ;--------------------------------------------------------
                            266 	.area HOME    (CODE)
   2000                     267 __interrupt_vect:
   2000 02 20 03            268 	ljmp	__sdcc_gsinit_startup
                            269 ;--------------------------------------------------------
                            270 ; global & static initialisations
                            271 ;--------------------------------------------------------
                            272 	.area HOME    (CODE)
                            273 	.area GSINIT  (CODE)
                            274 	.area GSFINAL (CODE)
                            275 	.area GSINIT  (CODE)
                            276 	.globl __sdcc_gsinit_startup
                            277 	.globl __sdcc_program_startup
                            278 	.globl __start__stack
                            279 	.globl __mcs51_genXINIT
                            280 	.globl __mcs51_genXRAMCLEAR
                            281 	.globl __mcs51_genRAMCLEAR
                            282 	.area GSFINAL (CODE)
   205C 02 20 5F            283 	ljmp	__sdcc_program_startup
                            284 ;--------------------------------------------------------
                            285 ; Home
                            286 ;--------------------------------------------------------
                            287 	.area HOME    (CODE)
                            288 	.area CSEG    (CODE)
   205F                     289 __sdcc_program_startup:
   205F 12 20 64            290 	lcall	_main
                            291 ;	return from main will lock up
   2062 80 FE               292 	sjmp .
                            293 ;--------------------------------------------------------
                            294 ; code
                            295 ;--------------------------------------------------------
                            296 	.area CSEG    (CODE)
                            297 ;------------------------------------------------------------
                            298 ;Allocation info for local variables in function 'main'
                            299 ;------------------------------------------------------------
                            300 ;i                         Allocated with name '_main_i_1_1'
                            301 ;------------------------------------------------------------
                            302 ;	main.c:26: void main(){
                            303 ;	-----------------------------------------
                            304 ;	 function main
                            305 ;	-----------------------------------------
   2064                     306 _main:
                    0002    307 	ar2 = 0x02
                    0003    308 	ar3 = 0x03
                    0004    309 	ar4 = 0x04
                    0005    310 	ar5 = 0x05
                    0006    311 	ar6 = 0x06
                    0007    312 	ar7 = 0x07
                    0000    313 	ar0 = 0x00
                    0001    314 	ar1 = 0x01
                            315 ;	main.c:29: while(1)    //Infinite loop
   2064                     316 00102$:
                            317 ;	main.c:31: P1_1 = 1;   //Set Port 1 Pin 1 as high (LED ON)
                            318 ;	genAssign
   2064 D2 91               319 	setb	_P1_1
                            320 ;	main.c:32: for (i = 0; i < 4000; i++)  //Delay loop to control blinking speed
                            321 ;	genAssign
   2066 7A A0               322 	mov	r2,#0xA0
   2068 7B 0F               323 	mov	r3,#0x0F
   206A                     324 00106$:
                            325 ;	genMinus
                            326 ;	genMinusDec
   206A 1A                  327 	dec	r2
   206B BA FF 01            328 	cjne	r2,#0xff,00119$
   206E 1B                  329 	dec	r3
   206F                     330 00119$:
                            331 ;	genIfx
   206F EA                  332 	mov	a,r2
   2070 4B                  333 	orl	a,r3
                            334 ;	genIfxJump
                            335 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2071 70 F7               336 	jnz	00106$
                            337 ;	Peephole 300	removed redundant label 00120$
                            338 ;	main.c:36: P1_1 = 0;   //Set Port 1 Pin 1 as low (LED OFF)
                            339 ;	genAssign
   2073 C2 91               340 	clr	_P1_1
                            341 ;	main.c:37: for (i = 0; i < 4000; i++)  //Delay loop to control blinking speed
                            342 ;	genAssign
   2075 7A A0               343 	mov	r2,#0xA0
   2077 7B 0F               344 	mov	r3,#0x0F
   2079                     345 00109$:
                            346 ;	genMinus
                            347 ;	genMinusDec
   2079 1A                  348 	dec	r2
   207A BA FF 01            349 	cjne	r2,#0xff,00121$
   207D 1B                  350 	dec	r3
   207E                     351 00121$:
                            352 ;	genIfx
   207E EA                  353 	mov	a,r2
   207F 4B                  354 	orl	a,r3
                            355 ;	genIfxJump
                            356 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2080 70 F7               357 	jnz	00109$
                            358 ;	Peephole 300	removed redundant label 00122$
                            359 ;	Peephole 112.b	changed ljmp to sjmp
   2082 80 E0               360 	sjmp	00102$
                            361 ;	Peephole 259.a	removed redundant label 00110$ and ret
                            362 ;
                            363 	.area CSEG    (CODE)
                            364 	.area CONST   (CODE)
                            365 	.area XINIT   (CODE)
