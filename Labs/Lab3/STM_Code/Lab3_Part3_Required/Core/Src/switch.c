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
 * @file   switch.c
 * @brief  This file provides functions for configuring a switch on GPIO Pin A0.
 *         When the switch is pressed, the interrupt handler EXTI0_IRQHandler() is
 *         called, which can be modified to perform a desired action.

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

#include "switch.h"

/**
 * @brief  Initializes the switch and the interrupt handler EXTI0_IRQHandler.
 * @note   This function configures the GPIOA peripheral to enable interrupts
 *         on Pin A0. It also configures the SYSCFG peripheral to map the
 *         interrupt to EXTI0. The EXTI0_IRQHandler function simply toggles
 *         the state of an LED on Pin D14.
 * @param  None
 * @retval None
 */
void Switch_init(void)
{

    // Enable the clock for the GPIOA peripheral and the SYSCFG peripheral
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
    RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;

    // Configure Pin A0 as input with pull-up
    GPIOA->MODER &= ~GPIO_MODER_MODE0;

    // Configure EXTI0 to map to Pin A0
    SYSCFG->EXTICR[0] &= ~SYSCFG_EXTICR1_EXTI0;
    SYSCFG->EXTICR[0] |= SYSCFG_EXTICR1_EXTI0_PA;

    // Enable the interrupt and trigger on rising edge
    EXTI->IMR |= EXTI_IMR_MR0;
    // EXTI->RTSR |= EXTI_RTSR_TR0_Msk;
    // Enable falling edge trigger for EXTI line 0
	EXTI->FTSR |= EXTI_FTSR_TR0_Msk;

    // Clear the interrupt flag
    EXTI->SWIER |= EXTI_SWIER_SWIER0;

    // Enable the interrupt in the NVIC
    NVIC_EnableIRQ(EXTI0_IRQn);
}
