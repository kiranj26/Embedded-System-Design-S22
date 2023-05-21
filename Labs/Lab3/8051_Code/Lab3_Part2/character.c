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
 * @file    character.c
 * @brief   File containing functions to handle character processing operations
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/
#ifndef _CHARACTER_C_
#define _CHARACTER_C_

#include <mcs51/8051.h>
#include <at89c51ed2.h>       // also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdbool.h>
#include <stdint.h>

#include "string_func.h"
#include "character.h"

#define DEBUG 0

    #ifdef  DEBUG
    #define DEBUGPORT(x) dataout(x) // generates a MOVX 8000h,x where x is an 8-bit
    #else
    #define DEBUGPORT(x) do {} while (0) // empty statement, nothing passed on from the preprocessor to the compiler

#endif


// Constant Defines
#define ALL_BUFFER_NOT_CLEARED  0
#define ALL_BUFFER_CLEARED      1
#define BUFFER0_CLEARED         2
#define LENGTH_16               16
#define LENGTH_32               32

__xdata char size[4] = { '0', '0', '0', '\0' };
__xdata int buffer_to_delete = 0;
__xdata int buff_not_cleared[100] = {0};

// Extern variables
extern __xdata char* buffer0;
extern __xdata int buffer_size_arr[300];
extern __xdata char* new_buffer_arr[100];

// Global variables
int buffer0and1_size = 0;
int length;


// Function Definations
/**
 * @brief   Debug function.
 * @details This function inputs value of X at address 0xFFFF.
 */
void dataout(uint8_t x) {
    uint8_t * data = 0xFFFF;
    *data = x;
}

/**
 * @brief   Empty buffer0 array
 *
 * @return  void
 */
void empty_buffer0(void)
{
    char * buffer0_ptr = buffer0;
    for (int i = 0; i < buffer_size_arr[0]; i++)
    {
        buffer0_ptr[i] = '0';
    }
}

/**
 * @brief   Print hex dump of buffer0
 *
 * @param   length: Number of bytes to be displayed per line
 *
 * @return  void
 */
void buffer0_hexdump(int length) {
    int itr = 0;
    bool print_address = true;

    char * buffer0_ptr = new_buffer_arr[0];

    // Set text color to blue
    printf("\033[1;34m\n\r");

    while (itr < buffer0and1_size)
    {
        // Print address
        if (print_address)
        {
            printf("\033[1;34m%p :", buffer0_ptr + itr);
            print_address = false;
        }

        if (buffer0_ptr[itr] == '0')
        {
            printf_tiny("\033[1;34m XX");
        }
        else
        {
            if (length == 16) {
                printf_tiny("\033[1;34m %x", buffer0_ptr[itr]);
            }
            if (length == 32)
            {
                printf_tiny("\033[1;34m %d", buffer0_ptr[itr]);
            }
        }

        if ((itr + 1) % length == 0)
        {
            printf_tiny("\033[1;34m\n\r");
            print_address = true;
        }

        itr++;
    }
}


int command_processing(int cmd_detected, char ch, int * new_buffer_index,
                       int * free_buffer_count, int * filled_buffer_count,int *storage_character_count, int * total_characters_count, int buffer0_size)
{
    buffer0and1_size = buffer0_size;
    if(cmd_detected)            // if command detected
    {
        switch(ch)              // switch based on the input character
        {
            case '+':               // if input character is '+'
                // print processing message
                printf_tiny("\033[1;33m|***********************************************|\n\r");
                printf_tiny("\033[1;33m|************ Processing [+] *******************|\n\r");
                printf_tiny("\033[1;33m|***********************************************|\n\r");

                (*new_buffer_index)++;                      // increment buffer index
                printf_tiny("\033[1;36m|***********************************************|\n\r");
                printf_tiny("\033[1;36m|********* Enter size for new bufer ************|\n\r");
                printf_tiny("\033[1;36m|***********************************************|\n\r");
                gets_(size);                                // get buffer size
                int buffer_size = atoi(size);               // convert buffer size to integer
                if (buffer_size < 30 || buffer_size > 300) { // check if buffer size is within range
                    printf_tiny("\033[1;31mInvalid Input : The buffer size should be in the range [30, 300]\n\r\n\r");
                    break;                                  // break out of switch
                }
                __xdata char* buffer_ptr = (__xdata char*)malloc(buffer_size);  // allocate memory for buffer

                if (buffer_ptr == NULL) {                                       // check if buffer allocation failed
                    printf_tiny("\033[1;31mInvalid input : Failed to allocate buffer\n\r\n\r");
                    break;                                                      // break out of switch
                }

                buffer_size_arr[(*new_buffer_index)-1] = buffer_size;           // store buffer size in array
                ++(*filled_buffer_count);                                       // increment filled buffer count

                new_buffer_arr[(*new_buffer_index)-1] = buffer_ptr;             // store buffer pointer in array
                buff_not_cleared[(*new_buffer_index) -1] = 0;                      // set flag to indicate new buffer is created

                printf_tiny("\033[1;0mNew buffer allocated successfully : Buffer[%d]\n\r", ((*new_buffer_index)-1)); // print successful buffer allocation message
                printf_tiny("\033[1;0mTotal Number of Buffers including buffer0 & buffer1 = [%d]\n\r",(*new_buffer_index)); // print total number of buffers
                printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \r\nTotal Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count)); // print filled and empty buffer count
                DEBUGPORT(0x10);
            break;                                                          // break out of switch


            case '-':   // if input character is '-'
            //Print header message in yellow color
                printf_tiny("\033[1;33m|***********************************************|\n\r");
                printf_tiny("\033[1;33m|************ Processing [-] *******************|\n\r");
                printf_tiny("\033[1;33m|***********************************************|\n\r");

                //Initialize variables
                buffer_to_delete = 0;

                //Print messages to get user input
                printf_tiny("\033[1;36m|***********************************************|\n\r");
                printf_tiny("\033[1;36m|********* Enter buffer to be deleted **********|\n\r");
                printf_tiny("\033[1;36m|********* Current No of buffers:[%d] ***********|\n\r", *new_buffer_index);
                printf_tiny("\033[1;36m|********* Note : Index Starts with 0 **********|\n\r");
                printf_tiny("\033[1;36m|***********************************************|\n\r");

                //Get user input
                __xdata char ch;
                do{
                    ch = getchar();
                    putchar(ch);

                    //If input is not a number, print error message and break loop
                    if (ch < '0' || ch > '9') {
                        printf_tiny("\033[1;31mInvalid input : invalid digits entered \n\r\n\r");
                        break;
                    }

                    //Convert char to int
                    int temp = ch - '0';
                    buffer_to_delete = buffer_to_delete * 10 + temp;

                    ch = getchar();

                }while(ch != '\r');

                //Check user input and print appropriate message
                if (buffer_to_delete == 0)
                {
                    printf_tiny("\033[1;31mInvalid input : buffer number can't be 0\n\r\n");
                    break;
                }
                else if(buff_not_cleared[buffer_to_delete] == 1){
                    printf_tiny("\033[1;31mInvalid input : buffer[%d] was already cleared earlier\n\r",buffer_to_delete);
                    break;
                }
                else if ((buffer_to_delete) >= *new_buffer_index) {
                    printf_tiny("\033[1;31mInvalid input : buffer number doesn't exist\n\r");
                    break;
                }
                else {

                    //Print success message and free buffer
                    printf_tiny("\033[1;0mBuffer [%d] requested to be deleted\n\r", buffer_to_delete);
                    printf("Performing buffer freeing operation\r\n");
                    free(new_buffer_arr[buffer_to_delete]);
                    new_buffer_arr[buffer_to_delete] = 0;
                    buff_not_cleared[buffer_to_delete] = 1;
                    ++(*free_buffer_count);

                    if(new_buffer_arr[buffer_to_delete] == 0)
                    {
                        printf("***Buffer [%d] is freed****\n\r",buffer_to_delete);
                    }

                    printf_tiny("\033[1;0mBuffer[%d] de-allocated successfully  \n\r", buffer_to_delete);
                    printf_tiny("\033[1;0mTotal Number of Buffers after deallocation = [%d]\n\r\n\r",*new_buffer_index);
                    printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \r\nTotal Empty Buffers  = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
                }
            DEBUGPORT(0x20);
            break;


        case '@': // if input character is '@'
             // Print header message for clearing buffers
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            printf_tiny("\033[1;33m|************ Processing [@] *******************|\n\r");
            printf_tiny("\033[1;33m|***********************************************|\n\r");

            // Free all allocated memory for buffers
            for(int i = 0; i < *new_buffer_index; i++) {
                char* buffer_to_free = new_buffer_arr[i];
                if(buffer_to_free != NULL) {
                    free(buffer_to_free);
                    new_buffer_arr[i] = NULL;
                    printf_tiny("\033[1;0mBuffer[%d] freed\n\r",i);
                }else{
                    printf_tiny("\033[1;0mBuffer[%d] was already NULL\n\r",i);
                }
            }

            // Reset buffer count variables and return success message
            *new_buffer_index = 0;
            (*filled_buffer_count) = 0;
            (*free_buffer_count) = 0;
            return ALL_BUFFER_CLEARED;
            DEBUGPORT(0x30);
            break;
        case '=': // if input character is '='
            // Print header message for buffer hexdump
            printf_tiny("\033[1;33m\r\n|************ Processing [=] *******************|\n\r");

            // Set length to be dumped and call hexdump function for buffer 0
            buffer0_hexdump(LENGTH_16);
            DEBUGPORT(0x40);
            break;

        case '?':  // if input character is '?'
            // Print header message for heap report
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            printf_tiny("\033[1;33m|************ Processing [?] *******************|\n\r");
            printf_tiny("\033[1;33m|***********************************************|\n\r");

            // Print heap report for each buffer
            printf_tiny(" \033[1;34m\r\n|***********************************************|\n\r");
            printf_tiny(" \033[1;34m|*************** HEAP REPORT *******************|\n\r");
            printf_tiny(" \033[1;34m|***********************************************|\n\r");
            for(int i=0; i<*new_buffer_index; i++)              // iterate over the new buffer array using a loop variable i
            {
                if(new_buffer_arr[i] == 0)                      // check if the current buffer is already cleared
                {
                    printf_tiny("\033[1;31m\n\rBuffer [%d] already cleared!!\n\r",i); // print a message indicating the buffer is already cleared
                    continue;                                    // continue the loop as there is no need to iterate further
                }

                printf("\033[1;36m\n\r**Buffer [%d]**\n\r",i);  // print the buffer index in bold cyan color
                printf("\033[1;0m\n\rBuffer [%d] : Start Address = [%p] \n\r",i,new_buffer_arr[i]); // print the start address of the buffer with index i
                printf("\033[1;0m\n\rBuffer [%d] : End Address   = [%p] \n\r",i,new_buffer_arr[i] + buffer_size_arr[i]); // print the end address of the buffer with index i
                printf("\033[1;0m\n\rBuffer [%d] : Total Size    = [%d] \n\r",i,buffer_size_arr[i]); // print the total size of the buffer with index i
                if(i == 0)                                      // if it is the first buffer
                {
                    printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*storage_character_count); // print the number of storage characters since last ?= for the first buffer
                    printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*total_characters_count); // print the number of storage characters since last ?= for the first buffer
                }
            }

            // reset storage and total character count
            *storage_character_count = 0;
            *total_characters_count = 0;

            // hex dump the buffer 0 with 32 character line length and in ASCII
            //buffer0_hexdump(LENGTH_32);

            // empty the buffer 0 by filling in 0's
            empty_buffer0();

            printf_tiny("\r\n\033[1;34m|************ REPORT ENDED  ********************|\n\r\n\r\n\r");
            // return indication for function to reset index i=0 for furthur processing
            DEBUGPORT(0x50);
            return BUFFER0_CLEARED;
            break;

        // default switch case
        default:
            DEBUGPORT(0x60);
            break;
        }
    }
    return ALL_BUFFER_NOT_CLEARED;
}
#endif // _CHARACTER_C_
