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
 * @file    clock.c
 * @brief   Contains functions related to clock settings and power modes for the microcontroller
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include "clock.h"

/**
 * @brief   Sets the peripheral clock frequency to the minimum value.
 *
 * This function sets the CKRL register to 0x01, which sets the peripheral clock frequency to the minimum value.
 * It then prints a message to indicate that the minimum frequency is active.
 *
 * @return  void
 */
void fclk_periph_min_freq(void)
{
    CKRL = 0x01;
    printf("\033[1;33mFclk_periph Minimum Frequency active  !!\r\n");

    return;
}

/**
 * @brief   Sets the peripheral clock frequency to the maximum value.
 *
 * This function sets the CKRL register to 0xFF, which sets the peripheral clock frequency to the maximum value.
 * It then prints a message to indicate that the maximum frequency is active.
 *
 * @return  void
 */
void fclk_periph_max_freq(void)
{
    CKRL = 0xFF;
    printf("\033[1;33mFclk_periph Maximum Frequency active  !!\r\n");

    return;
}

/**
 * @brief   Places the microcontroller in IDLE mode.
 *
 * This function enables the external interrupt 0 and sets the interrupt type for INT0 to edge-triggered.
 * It then enables global interrupts and sets the power mode to IDLE mode by setting bit 0 of the PCON register.
 * It then prints a message to indicate that the microcontroller is entering IDLE mode.
 *
 * @return  void
 */
void ucontroller_idle_mode(void)
{
    printf("\033[1;33mMicrocontroller Entering IDLE mode  !!\r\n");

    IT0 = 1; // Set the interrupt type for INT0 (0 = level-triggered, 1 = edge-triggered)
    EX0 = 1; // Enable external interrupt 0
    EA = 1;  // Enable global interrupts
    ES = 0;

    PCON |= 0x01;

    return;
}

/**
 * @brief   Places the microcontroller in POWERDOWN mode.
 *
 * This function sets bit 1 of the PCON register to enter POWERDOWN mode.
 * It then prints a message to indicate that the microcontroller is entering POWERDOWN mode.
 *
 * @return  void
 */
void ucontroller_power_down_mode(void)
{
    PCON |= 0x02;
    printf("\033[1;33mMicrocontroller Entering POWERDOWN mode  !!\r\n");

    return;
}
