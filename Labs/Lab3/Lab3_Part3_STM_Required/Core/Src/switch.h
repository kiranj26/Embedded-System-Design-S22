/*****************************************************************************
 * Copyright (C) 2023 by Kiran Jojare
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users
 * are permitted to modify this and use it to learn about the field of
 * embedded software. Kiran Jojare and the University of Colorado are not
 * liable for any misuse of this material.
 *****************************************************************************/

/**
 * @file   switch.h
 * @brief  Header file for the switch module. Contains function declaration for initializing the switch.
 *         This module uses an external interrupt to detect switch press on PA0 pin of STM32F4-Discovery board.
 *         When the switch is pressed, the interrupt is triggered and an interrupt service routine is called.
 *         The function declaration for the interrupt service routine is not included in this header file.
 *         This header file should be included in switch.c and in any other files that use the Switch_init function.
 *         The Switch_init function sets up the GPIO and interrupt settings for the switch.
 *
 * @author  Kiran Jojare
 * @date    March 18, 2023
 * @version 1.0
 *
 * @@referense
 *   1) https://github.com/fcayci/stm32f4-bare-metal
 *
 */

#ifndef BUTTON_H_ //Header Guard to prevent multiple inclusion
#define BUTTON_H_

void Switch_init(void); //Function declaration for initializing the switch

#endif
