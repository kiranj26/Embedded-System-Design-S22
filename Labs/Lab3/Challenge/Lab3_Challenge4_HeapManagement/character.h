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
 * @file    character.h
 * @brief   Header file for character processing functions
 * @details This file contains the declarations of the functions for processing characters.
 *          The functions defined in this file are used for processing user commands
 *          entered via the terminal.
 * @author  Kiran Jojare
 * @date    March 15, 2023
 * @version 1.0
 */

#ifndef CHARACTER_H_
#define CHARACTER_H_


/**
 * @brief   Debug function.
 * @details This function inputs value of X at address 0xFFFF.
 */
void dataout(uint8_t x);

/**
 * @brief   Empties the buffer 0.
 * @details This function empties the buffer 0 by setting all its elements to zero.
 */
void empty_buffer0(void);

/**
 * @brief   Dumps the address.
 * @details This function dumps the address passed as argument by printing it to the terminal.
 * @param   address - The address to be dumped.
 */
void address_dump(int address);

/**
 * @brief   Hex dumps the buffer 0.
 * @details This function hex dumps the contents of buffer 0 to the terminal. It prints the values
 *          in hexadecimal format and also displays their corresponding ASCII characters.
 * @param   length - The length of the buffer to be dumped.
 */
void buffer0_hexdump(int length);

/**
 * @brief   Processes a command based on the character and number entered by the user.
 * @details This function processes a command based on the character and number
 *          entered by the user. The function takes several arguments, including pointers
 *          to various counters and flags used to keep track of the status of the buffers.
 *          The function performs different actions based on the character entered.
 * @param   cmd_detected - A flag indicating whether a command has been detected.
 * @param   ch - The character entered by the user.
 * @param   new_buffer_index - A pointer to the index of the next available buffer.
 * @param   free_buff_count - A pointer to the number of free buffers.
 * @param   filled_buffer_count - A pointer to the number of filled buffers.
 * @param   storage_character_count - A pointer to the number of characters stored in the buffers.
 * @param   total_characters_count - A pointer to the total number of characters entered by the user.
 * @param   buffer0_size - The size of buffer 0.
 * @return  An integer value indicating the success or failure of the command processing.
 */
int command_processing(int cmd_detected, char ch, int * new_buffer_index, int * free_buff_count, int * filled_buffer_count,
                       int *storage_character_count, int * total_characters_count, int buffer0_size);

#endif /* CHARACTER_H_ */
