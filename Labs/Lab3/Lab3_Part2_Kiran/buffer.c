
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
 * @brief
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#include "string_func.h"

__xdata int Buffer_Size_Error_Correction(void)
{
    __xdata char input[5] = {'0', '0', '0', '0', '\0'};
    int num = 0;

    while (1) {
        printf("\033[33m");
        printf_tiny("\n\rEnter input:");
        gets_(input);

        if (input[0] < '0' || input[0] > '9' ||
            input[1] < '0' || input[1] > '9' ||
            input[2] < '0' || input[2] > '9' ||
            input[3] < '0' || input[3] > '9') {
            printf("\033[0;31m\nInvalid input. Please enter four digits between 0 and 9.\n\r");
            printf("\033[0;31mValid Input Examples : 0064,9876,0001,0096, etc\n");


            continue;
        }

        num = atoi(input);
        if (num < 64 || num > 5600) {
            printf_tiny("\033[0;31m\nInvalid input.Input data should be between 64 and 5600.\n");
            num = 0;
            continue;
        }
        if (num % 32 != 0) {
            printf_tiny("\033[0;31m\nInvalid input.Input not divisible by 32.\n");
            num = 0;
            continue;
        }
        break;
    }
    return num;
}

