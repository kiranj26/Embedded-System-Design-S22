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
 * @file    wakeup.c
 * @brief   Source file containing the definition of the function powerdown_idle_wakeup()
 *          used to perform power down operation, followed by idle operation and then wake up
 *          operation for testing purposes.
 *
 *          This function is specific to AT89C51ED2 microcontroller and uses specific register
 *          definitions for this microcontroller.
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>

#include "wakeup.h"

/**
 * @brief
 *        This function is used to perform power down operation
 *        followed by idle operation and then wake up operation.
 *        This function can be used to test power down and wake
 *        up modes of AT89C51ED2 microcontroller.
 *
 *        This function sets the interrupt type for INT0, disables
 *        external interrupt 0, and enables serial interrupt. The
 *        order of these operations is important.
 *
 * @param void
 *
 * @return void
*/
void powerdown_idle_wakeup(void)
{
    IT0 = 0; // Set the interrupt type for INT0 (0 = level-triggered, 1 = edge-triggered)
    EX0 = 0;
    ES = 1; // ES SHOUDL BE LAST ONLY
}
