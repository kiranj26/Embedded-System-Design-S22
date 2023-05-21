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

#ifndef _UART_H_
#define _UART_H_

/**
 * @brief  Initializes UART2 peripheral and GPIO pins for communication
 * @note   Uses GPIOA Pin 2 (TX) and Pin 3 (RX) for communication
 * @param  None
 * @retval None
 */
void UART_Init(void);

#endif
