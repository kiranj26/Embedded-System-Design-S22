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
 * @brief   This file contains the definition of the function command_processing.
 * @details This function processes a command based on the character and number
 *          entered by the user. The function takes two arguments: the character
 *          entered by the user and the buffer number entered by the user. The
 *          function performs different actions based on the character entered.
 * @note    This function is called from the main program.
 * @see     main.c
 * @param   character - The character entered by the user.
 * @param   buffer_number - The buffer number entered by the user.
 * @return  void
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

/**
 * @brief   Processes a command based on the character and number entered by the user.
 * @details This function processes a command based on the character and number
 *          entered by the user. The function takes two arguments: the character
 *          entered by the user and the buffer number entered by the user. The
 *          function performs different actions based on the character entered.
 * @param   character - The character entered by the user.
 * @param   buffer_number - The buffer number entered by the user.
 * @return  void
 */
 void empty_buffer0(void);
void address_dump(int address);
void buffer0_hexdump(int length);
int command_processing(int cmd_detected, char ch, int * new_buffer_index, int * free_buff_count, int * filled_buffer_count,
                       int *storage_character_count, int * total_characters_count, int buffer0_size);
