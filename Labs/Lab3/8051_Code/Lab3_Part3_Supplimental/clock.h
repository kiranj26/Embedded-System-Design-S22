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
 * @file    clock.h
 * @brief   Header file for clock control functions
 *
 * This header file declares the functions for controlling clock frequencies and microcontroller
 * power modes.
 *
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

/**
 * @brief   Sets the minimum peripheral clock frequency.
 *
 * This function sets the peripheral clock frequency to the minimum value (1/12th of oscillator
 * frequency) and prints a message to indicate that the minimum frequency has been activated.
 *
 * @return  void
 */
void fclk_periph_min_freq(void);

/**
 * @brief   Sets the maximum peripheral clock frequency.
 *
 * This function sets the peripheral clock frequency to the maximum value (equal to oscillator
 * frequency) and prints a message to indicate that the maximum frequency has been activated.
 *
 * @return  void
 */
void fclk_periph_max_freq(void);

/**
 * @brief   Puts the microcontroller in idle mode.
 *
 * This function puts the microcontroller in idle mode and prints a message to indicate that
 * idle mode has been activated. It sets the interrupt type for INT0 to edge-triggered and
 * enables external interrupt 0. It also enables global interrupts and disables serial port
 * interrupts.
 *
 * @return  void
 */
void ucontroller_idle_mode(void);

/**
 * @brief   Puts the microcontroller in power-down mode.
 *
 * This function puts the microcontroller in power-down mode and prints a message to indicate
 * that power-down mode has been activated. It sets the power-down flag in the power control
 * register.
 *
 * @return  void
 */
void ucontroller_power_down_mode(void);
