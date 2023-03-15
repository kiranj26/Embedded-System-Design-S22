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
 * @file    main.c
 * @brief   Main file for application entry point
 * @author  Kiran Jojare
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

#include "buffer.h"
#include "character.h"
#include "malloc.h"
#include "string_func.h"
#include "character.h"

#define ALL_BUFFER_CLEARED 1
#define ALL_BUFFER_NOT_CLEARED 0;
// Global data
__xdata int buffer_size = 0;

__xdata char* buffer0       = NULL;
__xdata char* ptr_buffer0   = NULL;
__xdata char* buffer1       = NULL;
__xdata char* ptr_buffer1   = NULL;

__xdata int storage_character_detected  = 0;
__xdata int total_characters_detected   = 0;
__xdata int command_characters_detected = 0;

__xdata char* new_buffer_arr[100];
__xdata int buffer_size_arr[300] = {0};

/**
 * @brief Initializes external startup routine
 *
 * This code defines a function called _sdcc_external_startup() that performs
 * some initialization or startup routine, likely for a microcontroller or embedded
 * system. The function updates the value of the "AUXR" register and returns 0.
 *
 * @return 0
 */

_sdcc_external_startup()
{
    // Update value of "AUXR" register with bitwise OR operation
    AUXR |= (XRS1 | XRS0);

    // Return integer value 0 to indicate successful initialization
    return 0;
}

/*
 * @brief   Application entry point.
 */


void main(void)
{

    printf_tiny("\033[1;35m|***********************************************|\n\r");
    printf_tiny("|************ \033[1;36mUSER INTERFACE \033[1;35m*******************|\n\r");
    printf_tiny("|  Choose a character from the below options    |\n\r");
    printf_tiny("|  \033[1;35ma-z\033[1;35m  | Character to store in the buffer      |\n\r");
    printf_tiny("|  \033[1;35m+\033[1;35m    | Allocate a new buffer                 |\n\r");
    printf_tiny("|  \033[1;35m-\033[1;35m    | Delete a buffer                       |\n\r");
    printf_tiny("|  \033[1;35m?\033[1;35m    | Display the heap report               |\n\r");
    printf_tiny("|  \033[1;35m=\033[1;35m    | Display contents of Buffer_0          |\n\r");
    printf_tiny("|  \033[1;35m@\033[1;35m    | Free all the buffers                  |\n\r");
    printf_tiny("\033[1;35m|***********************************************|\n\r");
    printf_tiny("|***********************************************|\n\r\n\r");

    printf_tiny("\033[1;33m|***********************************************|\n\r");
    printf_tiny("|  Choose a size for buffer 0 and buffer 1      |\n\r");
    printf_tiny("\033[1;33m|***********************************************|\n\r");


    __xdata int i;
    __xdata int buffer_array_index;
    __xdata int all_buff_cleared;
    __xdata int new_buffer_index = 2;

    __xdata int free_buffer_count;
    __xdata int filled_buffer_count;
HERE:
    /* Local Data */
     i = 0;
     buffer_array_index     = 0;
     all_buff_cleared       = ALL_BUFFER_NOT_CLEARED;
    __xdata int storage_character_count = 0;
    __xdata int total_characters_count = 0;

    /* Processing the bytes from user */
    __xdata int buffer0_allocated = 0;
    printf_tiny("\033[1;33m|***********************************************|\n\r");
    printf_tiny("|  Buffer 0 and Buffer 1 Allocation Processing  |\n\r");
    printf_tiny("\033[1;33m|***********************************************|\n\r");
    do {
        buffer_size = Buffer_Size_Error_Correction();
        if ((buffer0 = (__xdata char *)malloc(buffer_size)) == 0)
        {
            printf_tiny("\033[1;33mInvalid Malloc: Malloc on buffer0 failed!!\n\r");
            free(buffer0);
        }
        else
        {
            printf_tiny("\033[1;0mMalloc Successful : Buffer0 allocated\n\r");
            buffer0_allocated = 1;

            if ((buffer1 = (__xdata char *)malloc(buffer_size)) == 0)
            {
                printf_tiny("\033[1;31mInvalid Malloc: Malloc on buffer1 failed!!\n\r");
                free(buffer0);
                buffer0_allocated = 0;
            }
            else
            {
                printf_tiny("\033[1;0mMalloc Successful : Buffer1 allocated\n\r");
            }
        }
    } while (!buffer0_allocated || (buffer1 == 0));

    printf_tiny("\033[1;33m|***********************************************|\n\r");
    printf_tiny("|  Buffer0 and Buffer 1 Allocation Sucsessful   |\n\r");
    printf_tiny("\033[1;33m|***********************************************|\n\r");

    // fill pattern 'X' in buffer0
    char * buffer0_ptr = buffer0;
    for(int i=0;i< buffer_size;i++)
    {
        buffer0_ptr[i] = 'ÿ';
    }

    new_buffer_arr[0] = buffer0;
    new_buffer_arr[1] = buffer1;
    buffer_size_arr[0] = buffer_size ;
    buffer_size_arr[1] = buffer_size ;

    free_buffer_count = 0;
    filled_buffer_count = 2;

    /* While loop for characters parsing */
    while(1)
    {
        printf_tiny("\033[1;33m|***********************************************|\n\r");
        printf_tiny("|             Fetching Character                |\n\r");
        printf_tiny("\033[1;33m|***********************************************|\n\r\033[1;0m");
        /* Fetching Characters */
        char ch = getchar();
        putchar(ch);
        putchar(' ');
        printf("\033[1;0m\r\n");

        // storage characters
        if (ch >= 'a' && ch <= 'z') {
            if (i < buffer_size) {
                buffer0[i++] = ch;
            }else{
                // just echo if the buffer is full
                putchar(ch);
            }
            storage_character_count++;
            total_characters_count++;
        } else if (ch == '+' || ch == '-' || ch == '?' ||
                   ch == '=' || ch == '@') {
            total_characters_count++;
            command_characters_detected = 1;
        } else {
            // Neither storage nor command charcters
            continue;
        }

        /* Process Command Character */
        all_buff_cleared = command_processing(command_characters_detected, ch,
                                              &new_buffer_index, &free_buffer_count, &filled_buffer_count,
                                              &storage_character_count, &total_characters_count, buffer_size);
        if (all_buff_cleared == 1)
        {
            printf("\033[1;0mAll buffer cleared\r\nFed in the size for buffer 0 from start!!\r\n");
            goto HERE;
        }
    }
    /* */
}
