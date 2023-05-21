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
 * @file    pwm.h
 * @brief   Header file for Pulse Width Modulation (PWM) implementation for AT89C51ED2
 *          microcontroller.
 * @authr   Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

/**
 * @brief Starts the pulse width modulation (PWM) signal.
 *
 * This function sets up the PCA module 0 to generate a PWM signal with a fixed pulse width of 33% on Pin 1.3.
 *
 * @return void
 */
void start_pwm(void);

/**
 * @brief Stops the pulse width modulation (PWM) signal.
 *
 * This function disables PCA module 0 to stop the generation of the PWM signal.
 *
 * @return void
 */
void stop_pwm(void);

/**
 * @brief Initializes the watchdog timer for the microcontroller.
 *
 * This function sets up the watchdog timer to use the external oscillator with a 65,536 cycle timeout.
 *
 * @return void
 */
void watchdog_init(void);
