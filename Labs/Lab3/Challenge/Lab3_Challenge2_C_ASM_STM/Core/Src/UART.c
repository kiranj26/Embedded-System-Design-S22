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
 * @briefT  his file contains the implementation of UART communication for
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
#include "stm32f4xx.h"

/**
 * @brief  Initializes UART2 peripheral and GPIO pins for communication
 * @note   Uses GPIOA Pin 2 (TX) and Pin 3 (RX) for communication
 * @param  None
 * @retval None
 */
void Uart_init(void)
{
	// Enable USART2 and GPIOA clocks
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

	// Set GPIO alternate function to USART2 for PA2 (TX) and PA3 (RX)
	GPIOA->AFR[0] |= GPIO_AFRL_AFSEL2_0 | GPIO_AFRL_AFSEL2_1 | GPIO_AFRL_AFSEL2_2;
	GPIOA->AFR[0] |= GPIO_AFRL_AFSEL3_0 | GPIO_AFRL_AFSEL3_1 | GPIO_AFRL_AFSEL3_2;

	// Set GPIO pins PA2 (TX) and PA3 (RX) to alternate function mode
	GPIOA->MODER |= GPIO_MODER_MODE2_1;
	GPIOA->MODER |= GPIO_MODER_MODE3_1;

	// Enable USART2 peripheral
	USART2->CR1 |= USART_CR1_UE;

	// Configure PA2 (TX) and PA3 (RX) for external interrupts
	SYSCFG->EXTICR[0] |= SYSCFG_EXTICR1_EXTI2_PA | SYSCFG_EXTICR1_EXTI3_PA;

	// Enable interrupt for PA2 (TX) and PA3 (RX)
	EXTI->IMR |= EXTI_IMR_MR2 | EXTI_IMR_MR3 ;
	EXTI->EMR |= EXTI_EMR_MR2 | EXTI_EMR_MR3 ;

	// Clear interrupt flags for USART2
	USART2->SR &= ~USART_SR_TXE;
	USART2->CR1 |= USART_CR1_RXNEIE;
	NVIC_ClearPendingIRQ(38);
	NVIC_EnableIRQ(38);

	// Set baud rate to 9600
	USART2->BRR = 52 << 4;
	USART2->BRR |= 15 ;

	// Enable transmitter and receiver for USART2
	USART2->CR1 |= USART_CR1_TE;
	USART2->CR1 |= USART_CR1_RE;
}

/**
 * @brief  Transmits a single character over UART2
 * @param  c: Character to transmit
 * @retval None
 */
void my_putchar(char c)
{
    USART2->DR = c;
}

/**
 * @brief  Transmits a string over UART2
 * @param  str: String to transmit
 * @retval None
 */
void my_putstring(char * str)
{
	for(int i = 0; str[i] != '\0'; i++)
	{
		for(int i=0;i<5000;i++); // Delay to allow time for previous transmission to complete
		my_putchar(str[i]);
	}
}

/**
 * @brief  Receives a single character over UART2
 * @param  None
 * @retval c: Received character
 */
char my_getchar(void)
{
    while(!(USART2->SR & USART_SR_RXNE)); // Wait until receive buffer is not empty
    char c = USART2->DR; // Read received character
    return c;
}
