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
 * @file    pwm.c
 * @brief   Pulse Width Modulation (PWM) implementation for AT89C51ED2
 *          microcontroller.
 * @authr  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>

#include "string_func.h"
#include "pwm.h"

/**
 * @brief   Starts the PWM signal generation.
 *
 * This function starts the generation of a PWM signal on pin 1.3 of the microcontroller with a fixed
 * pulse width of 33% duty cycle. It initializes the PCA module 0 for PWM generation and prints a message
 * to indicate that the PWM signal has started.
 */
void start_pwm(void)
{
    // Clear Registers
    CMOD = 0x00;    // Clear control mode register
    CL = 0x00;      // Clear low byte of PCA timer
    CH = 0x00;      // Clear high byte of PCA timer
    CCAP0L = 0x00;  // Clear low byte of PCA module 0
    CCAP0H = 0x00;  // Clear high byte of PCA module 0
    CCON = 0x00;    // Clear control register
    CCAPM0 = 0x00;  // Clear PCA module 0 control register

    // Set 8-bit PWM mode with fixed pulse width
    CMOD = 0x02;

    // Set low and high bytes of the PCA timer, respectively, to 0x00
    CL = 0x00;
    CH = 0x00;

    // Set compare and capture mode with 33% duty cycle
    CCAP0L = 0xAA;
    CCAP0H = 0xAA;

    // Enable the PCA timer and set its operating mode to fixed pulse width
    CCON = 0x40;

    // Enable pulse width modulation (PWM) and set the fixed pulse width mode for channel 0
    CCAPM0 = 0x42;

    // Print message to indicate PWM has started
    printf("\033[1;33mPWM started on Pin 1.3 with 33 Percent Duty Cycle !!\r\n");
    return;
}
/**
 * @brief Stops the pulse width modulation (PWM)
 *
 * This function disables the PCA module 0 and prints a message to indicate that the PWM has stopped.
 * @return None.
 */
void stop_pwm()
{
    // Disable PCA module 0
    CCAPM0 &= 0xBD;

    // Print message to indicate PWM has stopped
    printf("\033[1;33mPWM stopped !!\r\n");
    return;
}
/**
 * @brief   Initializes the watchdog timer.
 *
 * This function initializes the watchdog timer of the microcontroller to use an external oscillator
 * with a timeout of 65,536 cycles.
 */
void watchdog_init(void)
{
    // Set watchdog timer to use external oscillator with a 65,536 cycle timeout
    CMOD |= 0x40;   // set the watchdog timer to use external oscillator
    CCAP4L |= 0xff; // load the low byte of the capture and compare register 4 with 0xff
    CCAP4H |= 0xff; // load the high byte of the capture and compare register 4 with 0xff
    CCAPM4 = 0x48;  // set capture and compare mode for register 4 to high-byte-only mode with edge detection
}

