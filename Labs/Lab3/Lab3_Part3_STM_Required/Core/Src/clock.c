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
 * @file    clocks.c
 * @brief This file contains functions to initialize and enable clocks for the STM32F4 microcontroller.
 *
 * The functions in this file initialize and enable the HSI clock and the MAIN PLL for the STM32F4 microcontroller.
 * The HSI clock is used as the source for the MAIN PLL, which generates the clock for the microcontroller.
 *
 * @author  Kiran Jojare
 * @date    March 18, 2023
 * @version 1.0
 *
 * @@referense
 *   1) https://github.com/fcayci/stm32f4-bare-metal
 *
 */

#include <stdio.h>
#include <stdint.h>
#include "stm32f4xx.h"

#include "clock.h"
/**
 * @brief Initializes clock and enables the MAIN PLL.
 */
void Clock_init(void) {
	// Enable HSI clock
	RCC->CR |= RCC_CR_HSION;

	// Wait for HSI to stabilize
	while (!(RCC->CR & RCC_CR_HSIRDY));

	// Enable MAIN PLL
	RCC->CR |= RCC_CR_PLLON;

	// Wait for MAIN PLL to stabilize
	while (!(RCC->CR & RCC_CR_PLLRDY));
}
