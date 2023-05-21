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
 * @file   UART.h
 * @brief  This file contains the implementation of UART communication for
 *         STM32F4 microcontroller.
 *
 * @author  Kiran Jojare
 * @date    March 18, 2023
 * @version 1.0
 *
 * @@referense
 *   1) https://github.com/fcayci/stm32f4-bare-metal
 *
 */

/**
 * @brief  Initializes UART2 peripheral and GPIO pins for communication
 * @note   Uses GPIOA Pin 2 (TX) and Pin 3 (RX) for communication
 * @param  None
 * @retval None
 */
void Uart_init(void);

/**
 * @brief  Transmits a single character over UART2
 * @param  c: Character to transmit
 * @retval None
 */
void my_putchar(char c);

/**
 * @brief  Transmits a string over UART2
 * @param  str: String to transmit
 * @retval None
 */
void my_putstring(char * str);

/**
 * @brief  Receives a single character over UART2
 * @param  None
 * @retval c: Received character
 */
char my_getchar(void);
