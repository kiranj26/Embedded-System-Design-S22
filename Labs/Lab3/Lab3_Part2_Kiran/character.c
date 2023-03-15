
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
 * @brief
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

#include <mcs51/8051.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "string_func.h"
#include "character.h"

#define ALL_BUFFER_CLEARED 1
#define ALL_BUFFER_NOT_CLEARED 2;
__xdata char size[4] = { '0', '0', '0', '\0' };
__xdata int buffer_to_delete =0;


__xdata int buff_not_cleared[100] = {0};

extern __xdata char* buffer0;

extern __xdata int buffer_size_arr[300];
extern __xdata char* new_buffer_arr[100];


int buffer0and1_size = 0;
int length;

void empty_buffer0(void)
{
    for(int i=0;i<buffer_size_arr[0];i++)
    {
        buffer0[i] = '0';
    }
}

void buffer0_hexdump(int length) {
    int itr = 0;
    bool print_address = true;
    printf("\033[1;34m\n\r");
    while(itr < buffer0and1_size)
    {
        // print address
        if(print_address)
        {
            printf("\033[1;34m%p :",buffer0+itr);
            print_address =false;
        }

        if(buffer0[itr] == '0')
        {
            printf_tiny("\033[1;34m XX");
        }
        else
        {
            if(length == 16){
                printf_tiny("\033[1;34m %x", buffer0[itr]);
            }
            if(length == 32)
            {   printf_tiny("\033[1;34m %d", buffer0[itr]);
            }
        }

        if((itr+1) % length == 0)
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
    if(cmd_detected)
    {
        switch(ch)
        {

        case '+':
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            printf_tiny("\033[1;33m|************ Processing [+] *******************|\n\r");
            printf_tiny("\033[1;33m|***********************************************|\n\r");

            (*new_buffer_index)++;
            printf_tiny("\033[1;0\n\rEnter size:");
            gets_(size);
            int buffer_size = atoi(size);
            printf("\033[1;0mSize after atoi = %d\r\n",buffer_size);
            if (buffer_size < 30 || buffer_size > 300) {
                printf_tiny("\033[1;31mInvalid Input : The buffer size should be in the range [30, 300]\n\r\n\r");
                break;
            }
            __xdata char* buffer_ptr = (__xdata char*)malloc(buffer_size);

            if (buffer_ptr == NULL) {
                printf_tiny("\033[1;31mInvalid input : Failed to allocate buffer\n\r\n\r");
                break;
            }

            buffer_size_arr[(*new_buffer_index)-1] = buffer_size;
            ++(*filled_buffer_count);

            new_buffer_arr[(*new_buffer_index)-1] = buffer_ptr;
            buff_not_cleared[(*new_buffer_index)] = 1; // indicating buff bo new_buffer_index is created

            printf("\033[1;0mNew buffer index = %d\n\r",(*new_buffer_index));
            printf_tiny("\033[1;0mNew buffer allocated successfully : Buffer[%d]\n\r", ((*new_buffer_index)-1));
            printf_tiny("\033[1;0mTotal Number of Buffers including buffer0 & buffer1 = [%d]\n\r",(*new_buffer_index));
            printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \t Total Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
            break;


        case '-':
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            printf_tiny("\033[1;33m|************ Processing [-] *******************|\n\r");
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            buffer_to_delete = 0;
            printf_tiny("\033[1;0m\n\rEnter buffer number to be deleted:\n\r");
            printf_tiny("\033[1;0m\Current number of buffers are [%d] (index starting from 0):\n\r\n\r",*new_buffer_index);
            __xdata char ch;

            do{
                ch = getchar();
                putchar(ch);

                if (ch < '0' || ch > '9') {
                    printf_tiny("\033[1;31mInvalid input : invalid digits entered \n\r\n\r");
                    break;
                }

                int temp = ch - '0';
                buffer_to_delete = buffer_to_delete * 10 + temp;

                ch = getchar();

            }while(ch != '\r');

            if (buffer_to_delete == 0)
            {
                printf_tiny("\033[1;31mInvalid input : buffer number can't be 0\n\r\n");break;

            } else if(buff_not_cleared[buffer_to_delete] == 0){
                printf_tiny("\033[1;31mInvalid input : buffer[%d] was already cleared earlier\n\r",buffer_to_delete);break;

            } else if ((buffer_to_delete) >= *new_buffer_index) {
                printf_tiny("\033[1;31mInvalid input : buffer number doesn't exist\n\r");break;

            } else {
                printf_tiny("\033[1;0mBuffer [%d] requested to be deleted\n\r",buffer_to_delete);
                free(new_buffer_arr[buffer_to_delete]);
                buff_not_cleared[buffer_to_delete] =0;
                ++(*free_buffer_count);
                printf_tiny("\033[1;0mBuffer[%d] de-allocated successfully  \n\r", buffer_to_delete);
                printf_tiny("\033[1;0mTotal Number of Buffers after deallocation = [%d]\n\r\n\r",*new_buffer_index);
                printf_tiny("\033[1;0mTotal Filled Buffers = [%d] \t Total Empty Buffers = [%d] \n\r\n\r",(*filled_buffer_count),(*free_buffer_count));
            }
            break;

        case '@':
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            printf_tiny("\033[1;33m|************ Processing [@] *******************|\n\r");
            printf_tiny("\033[1;33m|***********************************************|\n\r");
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

            *new_buffer_index = 0;
            (*filled_buffer_count) = 0;
            (*free_buffer_count) = 0;
            return ALL_BUFFER_CLEARED;
            break;
        case '=':
            printf_tiny("\033[1;33m\r\n|************ Processing [=] *******************|\n\r");
            length = 16;
            buffer0_hexdump(length);
            break;

        case '?':
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            printf_tiny("\033[1;33m|************ Processing [?] *******************|\n\r");
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            printf_tiny(" \033[1;34m\r\n|***********************************************|\n\r");
            printf_tiny(" \033[1;34m|*************** HEAP REPORT *******************|\n\r");
            printf_tiny(" \033[1;34m|***********************************************|\n\r");
            for(int i=0;i<*new_buffer_index;i++)
            {

                if(new_buffer_arr[i] == NULL)
                {
                    printf_tiny("\033[1;36m\n\rBuffer [%d] already cleared!!\n\r");
                    break;
                }
                printf("\033[1;36m\n\r**Buffer [%d]**\n\r",i);
                printf("\033[1;0m\n\rBuffer [%d] : Start Address = [%p] \n\r",i,new_buffer_arr[i]);
                printf("\033[1;0m\n\rBuffer [%d] : End Address   = [%p] \n\r",i,new_buffer_arr[i] + buffer_size_arr[i]);
                printf("\033[1;0m\n\rBuffer [%d] : Total Size    = [%d] \n\r",i,buffer_size_arr[i]);
                if(i == 0)
                {
                    printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*storage_character_count);
                    printf_tiny("\033[1;0m\n\rBuffer[%d] : Number of storage characters since last ?= [%d]\n\r",i,*total_characters_count);
                }

            }
            printf_tiny("\033[1;33m|***********************************************|\n\r");
            *storage_character_count = 0;
            *total_characters_count = 0;

            length = 32;
            buffer0_hexdump(length);
            empty_buffer0();
            break;
        default:
            break;
        }
    }
    return ALL_BUFFER_NOT_CLEARED;
}

