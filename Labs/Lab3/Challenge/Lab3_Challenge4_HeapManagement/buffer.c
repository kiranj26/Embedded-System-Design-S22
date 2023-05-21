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
 * @file    buffer.c
 * @brief   A program to perform buffer size error correction by taking user input.
 *          It validates the input and returns the valid input.
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/
#ifndef _BUFFER_C_
#define _BUFFER_C_

#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#include "string_func.h"

/**
 * @brief   Performs buffer size error correction by taking user input and
 *          validating it to ensure that it is a number between 64 and 5600,
 *          and is divisible by 32.
 * @return  The valid buffer size entered by the user.
 */
__xdata int Buffer_Size_Error_Correction(void)
{
    printf_tiny("\033[1;33m|***********************************************|\n\r");
    printf_tiny("|  Buffer 0 and Buffer 1 Allocation Processing  |\n\r");
    printf_tiny("\033[1;33m|***********************************************|\n\r");

    __xdata char input[5] = {'0', '0', '0', '0', '\0'}; // Initialize input array
    int num = 0;                                        // Initialize num to 0

    while (1) {
        printf_tiny("\033[1;36m\n\r|***********************************************|\n\r");
        printf_tiny("\033[1;36m|       Enter the size for buffer0 & buffer1    |\n\r");
        printf_tiny("\033[1;36m|***********************************************|\n\r");


        gets_(input);                                   // Read user input as a string

        if (input[0] < '0' || input[0] > '9' ||         // Check if the input is not a number
            input[1] < '0' || input[1] > '9' ||
            input[2] < '0' || input[2] > '9' ||
            input[3] < '0' || input[3] > '9') {
            printf("\033[0;31m\nInvalid input. Please enter four digits between 0 and 9.\n\r"); // Display error message
            printf("\033[0;31mValid Input Examples : 0064,9876,0001,0096, etc\n");

            continue;                                   // Start over the loop
        }

        num = atoi(input);                              // Convert input to integer
        if (num < 64 || num > 5600) {                   // Check if the input is outside the valid range
            printf_tiny("\033[0;31m\nInvalid input.Input data should be between 64 and 5600.\n"); // Display error message
            num = 0;                                    // Reset num to 0
            continue;                                   // Start over the loop
        }
        if (num % 32 != 0) {                            // Check if the input is not divisible by 32
            printf_tiny("\033[0;31m\nInvalid input.Input not divisible by 32.\n"); // Display error message
            num = 0;                                    // Reset num to 0
            continue;                                   // Start over the loop
        }
        break;                                          // Exit the loop when the input is valid
    }
    return num;                                         // Return the valid buffer size entered by the user
}

#endif // _BUFFER_C_
