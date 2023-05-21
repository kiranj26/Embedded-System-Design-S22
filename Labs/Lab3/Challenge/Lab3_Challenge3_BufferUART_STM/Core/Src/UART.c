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
 * @file   UART.c
 * @briefT  This file contains the implementation of UART communication for
 *          STM32F4 microcontroller.
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
#include <string.h>
#include "stm32f4xx.h"

#include "UART.h"

/**
 * @brief  Initializes UART2 peripheral and GPIO pins for communication
 * @note   Uses GPIOA Pin 2 (TX) and Pin 3 (RX) for communication
 * @param  None
 * @retval None
 */
void UART_Init(void) {
    // Enable clock for USART2 and GPIOA
    RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    // Configure GPIOA pins for USART2 TX/RX
    GPIOA->AFR[0] |= (0x7 << GPIO_AFRL_AFSEL2_Pos) | (0x7 << GPIO_AFRL_AFSEL3_Pos);
    GPIOA->MODER |= (0x2 << GPIO_MODER_MODE2_Pos) | (0x2 << GPIO_MODER_MODE3_Pos);

    // Enable USART2 and set baud rate
    USART2->BRR = SystemCoreClock / 19200;
    USART2->CR1 |= USART_CR1_UE;

    // Enable RXNE interrupt
    USART2->CR1 |= USART_CR1_RXNEIE;

    // Enable NVIC interrupt
    NVIC_SetPriority(USART2_IRQn, 0);
    NVIC_EnableIRQ(USART2_IRQn);

    // Enable transmitter and receiver
    USART2->CR1 |= USART_CR1_TE | USART_CR1_RE;
}


