M:i2c
F:G$i2c_clock_tick$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$i2c_sda$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$i2c_scl$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$i2c_acknowledge_check$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$no_acknowledge$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$i2c_start$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$i2c_stop$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$i2c_write_byte$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$i2c_read_byte$0_0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$i2c_eeprom_write$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$i2c_eeprom_read$0_0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$i2c_handler_eeprom_reset$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Li2c.i2c_sda$value$1_0$33({1}SC:U),F,0,0
S:Li2c.i2c_scl$value$1_0$35({1}SC:U),F,0,0
S:Li2c.i2c_write_byte$data_byte$1_0$43({1}SC:U),F,0,0
S:Li2c.i2c_write_byte$i$2_0$45({1}SC:U),F,0,0
S:Li2c.i2c_read_byte$byte_value$1_0$48({1}SC:U),F,0,0
S:Li2c.i2c_read_byte$bit_position$1_1$49({1}SC:U),F,0,0
S:Li2c.i2c_eeprom_write$data_byte$1_0$53({1}SC:U),F,0,0
S:Li2c.i2c_eeprom_write$address$1_0$53({2}SI:U),F,0,0
S:Li2c.i2c_eeprom_write$address_LSB$1_0$54({1}SC:U),F,0,0
S:Li2c.i2c_eeprom_write$address_MSB$1_0$54({1}SC:U),F,0,0
S:Li2c.i2c_eeprom_read$address$1_0$55({2}SI:U),F,0,0
S:Li2c.i2c_eeprom_read$address_LSB$1_0$56({1}SC:U),F,0,0
S:Li2c.i2c_eeprom_read$address_MSB$1_0$56({1}SC:U),F,0,0
S:Li2c.i2c_eeprom_read$data_value$1_0$56({1}SC:U),F,0,0
S:Li2c.i2c_handler_eeprom_reset$i$1_0$57({1}SC:U),F,0,0
S:G$T2CON$0_0$0({1}SC:U),I,0,0
S:G$RCAP2L$0_0$0({1}SC:U),I,0,0
S:G$RCAP2H$0_0$0({1}SC:U),I,0,0
S:G$TL2$0_0$0({1}SC:U),I,0,0
S:G$TH2$0_0$0({1}SC:U),I,0,0
S:G$AUXR$0_0$0({1}SC:U),I,0,0
S:G$AUXR1$0_0$0({1}SC:U),I,0,0
S:G$CKRL$0_0$0({1}SC:U),I,0,0
S:G$CCAP0H$0_0$0({1}SC:U),I,0,0
S:G$CCAP1H$0_0$0({1}SC:U),I,0,0
S:G$CCAP2H$0_0$0({1}SC:U),I,0,0
S:G$CCAP3H$0_0$0({1}SC:U),I,0,0
S:G$CCAP4H$0_0$0({1}SC:U),I,0,0
S:G$CCAP0L$0_0$0({1}SC:U),I,0,0
S:G$CCAP1L$0_0$0({1}SC:U),I,0,0
S:G$CCAP2L$0_0$0({1}SC:U),I,0,0
S:G$CCAP3L$0_0$0({1}SC:U),I,0,0
S:G$CCAP4L$0_0$0({1}SC:U),I,0,0
S:G$CCAPM0$0_0$0({1}SC:U),I,0,0
S:G$CCAPM1$0_0$0({1}SC:U),I,0,0
S:G$CCAPM2$0_0$0({1}SC:U),I,0,0
S:G$CCAPM3$0_0$0({1}SC:U),I,0,0
S:G$CCAPM4$0_0$0({1}SC:U),I,0,0
S:G$CCON$0_0$0({1}SC:U),I,0,0
S:G$CH$0_0$0({1}SC:U),I,0,0
S:G$CL$0_0$0({1}SC:U),I,0,0
S:G$CMOD$0_0$0({1}SC:U),I,0,0
S:G$IEN0$0_0$0({1}SC:U),I,0,0
S:G$IEN1$0_0$0({1}SC:U),I,0,0
S:G$IPL0$0_0$0({1}SC:U),I,0,0
S:G$IPH0$0_0$0({1}SC:U),I,0,0
S:G$IPL1$0_0$0({1}SC:U),I,0,0
S:G$IPH1$0_0$0({1}SC:U),I,0,0
S:G$P4$0_0$0({1}SC:U),I,0,0
S:G$P5$0_0$0({1}SC:U),I,0,0
S:G$WDTRST$0_0$0({1}SC:U),I,0,0
S:G$WDTPRG$0_0$0({1}SC:U),I,0,0
S:G$SADDR$0_0$0({1}SC:U),I,0,0
S:G$SADEN$0_0$0({1}SC:U),I,0,0
S:G$SPCON$0_0$0({1}SC:U),I,0,0
S:G$SPSTA$0_0$0({1}SC:U),I,0,0
S:G$SPDAT$0_0$0({1}SC:U),I,0,0
S:G$T2MOD$0_0$0({1}SC:U),I,0,0
S:G$BDRCON$0_0$0({1}SC:U),I,0,0
S:G$BRL$0_0$0({1}SC:U),I,0,0
S:G$KBLS$0_0$0({1}SC:U),I,0,0
S:G$KBE$0_0$0({1}SC:U),I,0,0
S:G$KBF$0_0$0({1}SC:U),I,0,0
S:G$EECON$0_0$0({1}SC:U),I,0,0
S:G$ACC$0_0$0({1}SC:U),I,0,0
S:G$B$0_0$0({1}SC:U),I,0,0
S:G$DPH$0_0$0({1}SC:U),I,0,0
S:G$DP0H$0_0$0({1}SC:U),I,0,0
S:G$DPL$0_0$0({1}SC:U),I,0,0
S:G$DP0L$0_0$0({1}SC:U),I,0,0
S:G$IE$0_0$0({1}SC:U),I,0,0
S:G$IP$0_0$0({1}SC:U),I,0,0
S:G$P0$0_0$0({1}SC:U),I,0,0
S:G$P1$0_0$0({1}SC:U),I,0,0
S:G$P2$0_0$0({1}SC:U),I,0,0
S:G$P3$0_0$0({1}SC:U),I,0,0
S:G$PCON$0_0$0({1}SC:U),I,0,0
S:G$PSW$0_0$0({1}SC:U),I,0,0
S:G$SBUF$0_0$0({1}SC:U),I,0,0
S:G$SBUF0$0_0$0({1}SC:U),I,0,0
S:G$SCON$0_0$0({1}SC:U),I,0,0
S:G$SP$0_0$0({1}SC:U),I,0,0
S:G$TCON$0_0$0({1}SC:U),I,0,0
S:G$TH0$0_0$0({1}SC:U),I,0,0
S:G$TH1$0_0$0({1}SC:U),I,0,0
S:G$TL0$0_0$0({1}SC:U),I,0,0
S:G$TL1$0_0$0({1}SC:U),I,0,0
S:G$TMOD$0_0$0({1}SC:U),I,0,0
S:G$ET2$0_0$0({1}SX:U),J,0,0
S:G$PT2$0_0$0({1}SX:U),J,0,0
S:G$T2CON_0$0_0$0({1}SX:U),J,0,0
S:G$T2CON_1$0_0$0({1}SX:U),J,0,0
S:G$T2CON_2$0_0$0({1}SX:U),J,0,0
S:G$T2CON_3$0_0$0({1}SX:U),J,0,0
S:G$T2CON_4$0_0$0({1}SX:U),J,0,0
S:G$T2CON_5$0_0$0({1}SX:U),J,0,0
S:G$T2CON_6$0_0$0({1}SX:U),J,0,0
S:G$T2CON_7$0_0$0({1}SX:U),J,0,0
S:G$CP_RL2$0_0$0({1}SX:U),J,0,0
S:G$C_T2$0_0$0({1}SX:U),J,0,0
S:G$TR2$0_0$0({1}SX:U),J,0,0
S:G$EXEN2$0_0$0({1}SX:U),J,0,0
S:G$TCLK$0_0$0({1}SX:U),J,0,0
S:G$RCLK$0_0$0({1}SX:U),J,0,0
S:G$EXF2$0_0$0({1}SX:U),J,0,0
S:G$TF2$0_0$0({1}SX:U),J,0,0
S:G$CF$0_0$0({1}SX:U),J,0,0
S:G$CR$0_0$0({1}SX:U),J,0,0
S:G$CCF4$0_0$0({1}SX:U),J,0,0
S:G$CCF3$0_0$0({1}SX:U),J,0,0
S:G$CCF2$0_0$0({1}SX:U),J,0,0
S:G$CCF1$0_0$0({1}SX:U),J,0,0
S:G$CCF0$0_0$0({1}SX:U),J,0,0
S:G$EC$0_0$0({1}SX:U),J,0,0
S:G$PPCL$0_0$0({1}SX:U),J,0,0
S:G$PT2L$0_0$0({1}SX:U),J,0,0
S:G$PLS$0_0$0({1}SX:U),J,0,0
S:G$PT1L$0_0$0({1}SX:U),J,0,0
S:G$PX1L$0_0$0({1}SX:U),J,0,0
S:G$PT0L$0_0$0({1}SX:U),J,0,0
S:G$PX0L$0_0$0({1}SX:U),J,0,0
S:G$P4_0$0_0$0({1}SX:U),J,0,0
S:G$P4_1$0_0$0({1}SX:U),J,0,0
S:G$P4_2$0_0$0({1}SX:U),J,0,0
S:G$P4_3$0_0$0({1}SX:U),J,0,0
S:G$P4_4$0_0$0({1}SX:U),J,0,0
S:G$P4_5$0_0$0({1}SX:U),J,0,0
S:G$P4_6$0_0$0({1}SX:U),J,0,0
S:G$P4_7$0_0$0({1}SX:U),J,0,0
S:G$P5_0$0_0$0({1}SX:U),J,0,0
S:G$P5_1$0_0$0({1}SX:U),J,0,0
S:G$P5_2$0_0$0({1}SX:U),J,0,0
S:G$P5_3$0_0$0({1}SX:U),J,0,0
S:G$P5_4$0_0$0({1}SX:U),J,0,0
S:G$P5_5$0_0$0({1}SX:U),J,0,0
S:G$P5_6$0_0$0({1}SX:U),J,0,0
S:G$P5_7$0_0$0({1}SX:U),J,0,0
S:G$BREG_F0$0_0$0({1}SX:U),J,0,0
S:G$BREG_F1$0_0$0({1}SX:U),J,0,0
S:G$BREG_F2$0_0$0({1}SX:U),J,0,0
S:G$BREG_F3$0_0$0({1}SX:U),J,0,0
S:G$BREG_F4$0_0$0({1}SX:U),J,0,0
S:G$BREG_F5$0_0$0({1}SX:U),J,0,0
S:G$BREG_F6$0_0$0({1}SX:U),J,0,0
S:G$BREG_F7$0_0$0({1}SX:U),J,0,0
S:G$EX0$0_0$0({1}SX:U),J,0,0
S:G$ET0$0_0$0({1}SX:U),J,0,0
S:G$EX1$0_0$0({1}SX:U),J,0,0
S:G$ET1$0_0$0({1}SX:U),J,0,0
S:G$ES$0_0$0({1}SX:U),J,0,0
S:G$EA$0_0$0({1}SX:U),J,0,0
S:G$PX0$0_0$0({1}SX:U),J,0,0
S:G$PT0$0_0$0({1}SX:U),J,0,0
S:G$PX1$0_0$0({1}SX:U),J,0,0
S:G$PT1$0_0$0({1}SX:U),J,0,0
S:G$PS$0_0$0({1}SX:U),J,0,0
S:G$P0_0$0_0$0({1}SX:U),J,0,0
S:G$P0_1$0_0$0({1}SX:U),J,0,0
S:G$P0_2$0_0$0({1}SX:U),J,0,0
S:G$P0_3$0_0$0({1}SX:U),J,0,0
S:G$P0_4$0_0$0({1}SX:U),J,0,0
S:G$P0_5$0_0$0({1}SX:U),J,0,0
S:G$P0_6$0_0$0({1}SX:U),J,0,0
S:G$P0_7$0_0$0({1}SX:U),J,0,0
S:G$P1_0$0_0$0({1}SX:U),J,0,0
S:G$P1_1$0_0$0({1}SX:U),J,0,0
S:G$P1_2$0_0$0({1}SX:U),J,0,0
S:G$P1_3$0_0$0({1}SX:U),J,0,0
S:G$P1_4$0_0$0({1}SX:U),J,0,0
S:G$P1_5$0_0$0({1}SX:U),J,0,0
S:G$P1_6$0_0$0({1}SX:U),J,0,0
S:G$P1_7$0_0$0({1}SX:U),J,0,0
S:G$P2_0$0_0$0({1}SX:U),J,0,0
S:G$P2_1$0_0$0({1}SX:U),J,0,0
S:G$P2_2$0_0$0({1}SX:U),J,0,0
S:G$P2_3$0_0$0({1}SX:U),J,0,0
S:G$P2_4$0_0$0({1}SX:U),J,0,0
S:G$P2_5$0_0$0({1}SX:U),J,0,0
S:G$P2_6$0_0$0({1}SX:U),J,0,0
S:G$P2_7$0_0$0({1}SX:U),J,0,0
S:G$P3_0$0_0$0({1}SX:U),J,0,0
S:G$P3_1$0_0$0({1}SX:U),J,0,0
S:G$P3_2$0_0$0({1}SX:U),J,0,0
S:G$P3_3$0_0$0({1}SX:U),J,0,0
S:G$P3_4$0_0$0({1}SX:U),J,0,0
S:G$P3_5$0_0$0({1}SX:U),J,0,0
S:G$P3_6$0_0$0({1}SX:U),J,0,0
S:G$P3_7$0_0$0({1}SX:U),J,0,0
S:G$RXD$0_0$0({1}SX:U),J,0,0
S:G$RXD0$0_0$0({1}SX:U),J,0,0
S:G$TXD$0_0$0({1}SX:U),J,0,0
S:G$TXD0$0_0$0({1}SX:U),J,0,0
S:G$INT0$0_0$0({1}SX:U),J,0,0
S:G$INT1$0_0$0({1}SX:U),J,0,0
S:G$T0$0_0$0({1}SX:U),J,0,0
S:G$T1$0_0$0({1}SX:U),J,0,0
S:G$WR$0_0$0({1}SX:U),J,0,0
S:G$RD$0_0$0({1}SX:U),J,0,0
S:G$P$0_0$0({1}SX:U),J,0,0
S:G$F1$0_0$0({1}SX:U),J,0,0
S:G$OV$0_0$0({1}SX:U),J,0,0
S:G$RS0$0_0$0({1}SX:U),J,0,0
S:G$RS1$0_0$0({1}SX:U),J,0,0
S:G$F0$0_0$0({1}SX:U),J,0,0
S:G$AC$0_0$0({1}SX:U),J,0,0
S:G$CY$0_0$0({1}SX:U),J,0,0
S:G$RI$0_0$0({1}SX:U),J,0,0
S:G$TI$0_0$0({1}SX:U),J,0,0
S:G$RB8$0_0$0({1}SX:U),J,0,0
S:G$TB8$0_0$0({1}SX:U),J,0,0
S:G$REN$0_0$0({1}SX:U),J,0,0
S:G$SM2$0_0$0({1}SX:U),J,0,0
S:G$SM1$0_0$0({1}SX:U),J,0,0
S:G$SM0$0_0$0({1}SX:U),J,0,0
S:G$IT0$0_0$0({1}SX:U),J,0,0
S:G$IE0$0_0$0({1}SX:U),J,0,0
S:G$IT1$0_0$0({1}SX:U),J,0,0
S:G$IE1$0_0$0({1}SX:U),J,0,0
S:G$TR0$0_0$0({1}SX:U),J,0,0
S:G$TF0$0_0$0({1}SX:U),J,0,0
S:G$TR1$0_0$0({1}SX:U),J,0,0
S:G$TF1$0_0$0({1}SX:U),J,0,0
S:G$_print_format$0_0$0({2}DF,SI:S),C,0,0
S:G$printf_small$0_0$0({2}DF,SV:S),C,0,0
S:G$printf$0_0$0({2}DF,SI:S),C,0,0
S:G$vprintf$0_0$0({2}DF,SI:S),C,0,0
S:G$sprintf$0_0$0({2}DF,SI:S),C,0,0
S:G$vsprintf$0_0$0({2}DF,SI:S),C,0,0
S:G$puts$0_0$0({2}DF,SI:S),C,0,0
S:G$gets$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$getchar$0_0$0({2}DF,SI:S),C,0,0
S:G$putchar$0_0$0({2}DF,SI:S),C,0,0
S:G$printf_fast$0_0$0({2}DF,SV:S),C,0,0
S:G$printf_fast_f$0_0$0({2}DF,SV:S),C,0,0
S:G$printf_tiny$0_0$0({2}DF,SV:S),C,0,0
S:G$initialize_uart_timer$0_0$0({2}DF,SV:S),C,0,0
S:G$char_to_int$0_0$0({2}DF,SC:U),C,0,0
S:G$int_to_char$0_0$0({2}DF,SC:S),C,0,0
S:G$parse_user_input$0_0$0({2}DF,SI:U),C,0,0
S:G$print_hex_number$0_0$0({2}DF,SV:S),C,0,0
S:G$print_colored$0_0$0({2}DF,SV:S),C,0,0
S:G$print_UI$0_0$0({2}DF,SV:S),C,0,0
S:G$i2c_eeprom_flush$0_0$0({2}DF,SV:S),C,0,0
S:G$i2c_clock_tick$0_0$0({2}DF,SV:S),C,0,0
S:G$no_acknowledge$0_0$0({2}DF,SV:S),C,0,0