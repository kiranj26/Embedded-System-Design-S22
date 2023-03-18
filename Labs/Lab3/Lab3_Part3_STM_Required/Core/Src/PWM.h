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
 * @file   PWM.h
 * @brief  Header file for PWM.c. Contains function prototypes for PWM initialization.
 *         Provides an interface for other modules to use the PWM module.
 *         This file should be included in any module that uses the PWM functionality.
 * @author  Kiran Jojare
 * @date    March 18, 2023
 * @version 1.0
 *
 * @@referense
 *   1) https://github.com/fcayci/stm32f4-bare-metal
 */

#ifndef PWM_H_
#define PWM_H_

/**
 * @brief Initializes the GPIO pins for PWM functionality.
 *
 * This function initializes the GPIO pins for PWM functionality by setting the mode
 * and alternate function register. Specifically, it enables GPIOD and sets pin PD15
 * to alternate function mode AF2 (TIM4_CH4).
 */
void PWM_GPIO_init(void);

/**
 * @brief Initializes the PWM module.
 *
 * This function initializes the PWM module by configuring the timer registers for
 * the desired frequency and duty cycle. Specifically, it enables TIM4 and sets the
 * prescaler to generate a 1 KHz PWM signal with a duty cycle of 60%.
 *
 * Note that this function assumes that PWM_GPIO_init() has already been called.
 */
void PWM_init(void);

#endif /* PWM_H_ */
