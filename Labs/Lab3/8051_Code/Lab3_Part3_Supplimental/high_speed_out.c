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
 * @file    high_speed_out.c
 * @brief   Functions to control high speed output on Pin 1.3 using PCA module 0.
 *          Includes functions to start and stop high speed output.
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


#include "high_speed_out.h"

/**
 * @brief   Starts high speed output on Pin 1.3 using PCA module 0.
 *
 * This function sets the required registers to enable high speed output on Pin 1.3 using PCA module 0.
 * It then prints a message to indicate that the high speed output has started.
 *
 * @return  void
 */
void start_high_speed_output(void)
{
    CMOD = 0x02; // Set mode of timer/counter
    CCAP0L = 0x00; // Set low byte of capture/compare register to 0
    CCAP0H = 0x00; // Set high byte of capture/compare register to 0

    CCAP0L = 0xAA; // Set low byte of capture/compare register to 0xAA
    CCAP0H = 0xAA; // Set high byte of capture/compare register to 0xAA

    CCON = 0x40; // Set control register to start timer/counter
    CCAPM0 = 0x4C; // Set capture/compare register mode

    printf("\033[1;33mHigh Speed Toggling started on Pin 1.3!!\r\n"); // Print message to console

    return; // Exit function
}

/**
 * @brief   Stops high speed output on Pin 1.3 using PCA module 0.
 *
 * This function disables the PCA module 0 and resets the CCAPM0 to its default value.
 * It then prints a message to indicate that the high speed output has stopped.
 *
 * @return  void
 */
void stop_high_speed_output(void)
{
    // Disable PCA module 0
    CCON &= ~0x40;
    // Reset CCAPM0 to default value
    CCAPM0 = 0x00;
    printf("\033[1;33mHigh Speed Toggling stopped on Pin 1.3!!\r\n");

    return;
}
