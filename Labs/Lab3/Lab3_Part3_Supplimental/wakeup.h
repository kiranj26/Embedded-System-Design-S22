
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
 * @file    high_speed_out.h
 * @brief
 *          This file contains the function declaration for
 *          powerdown_idle_wakeup().
 *
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

/**
 * @brief
 *        This function is used to perform wake up for power down operation
 *        followed by idle operation and then wake up operation.
 *        This function can be used to test power down and wake
 *        up modes of microcontroller.
 *
 * @param void
 *
 * @return void
*/
void powerdown_idle_wakeup(void);
