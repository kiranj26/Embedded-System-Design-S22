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
 * @file   PWM.c
 * @brief  This file provides functions for configuring PWM output on GPIO Pin D15.
 *         The output duty cycle and frequency can be adjusted by modifying the
 *         values in the PWM_init() function.
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

/**
 * @brief Configures GPIO Pin D15 as alternate function output.
 */
void PWM_GPIO_init(void)
{
	// Enable clock for GPIO Port D
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;

	// Set GPIO Pin D15 to alternate function mode
	GPIOD->MODER |= GPIO_MODER_MODE15_1;
	GPIOD->MODER &= ~(GPIO_MODER_MODE15_0);

	// Select TIM4 as alternate function for Pin D15
	GPIOD->AFR[1] |= (2 << GPIO_AFRH_AFSEL15_Pos);
}

/**
 * @brief Configures TIM4 to generate PWM output on Pin D15.
 */
void PWM_init(void)
{
	// Enable clock for TIM4
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;

	// Set prescaler to achieve a timer clock frequency of 100 kHz
	TIM4->PSC = 839;

	// Set auto-reload value to achieve a PWM frequency of 100 Hz
	TIM4->ARR = 999;

	// Set the initial duty cycle to achieve a 60% duty cycle
	TIM4->CCR4 = 600;

	// Configure output compare mode for PWM mode 1 on channel 4
	TIM4->CCMR2 |= TIM_CCMR2_OC4M_1 | TIM_CCMR2_OC4M_2;
	TIM4->CCMR2 &= ~(TIM_CCMR2_OC4M_0);

	// Enable the output compare channel 4
	TIM4->CCER |= TIM_CCER_CC4E;

	// Enable the timer counter
	TIM4->CR1 |= TIM_CR1_CEN;
}
