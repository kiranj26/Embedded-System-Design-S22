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
 * @file    uart.h
 * @brief   This file contains the implementation of UART functionality
 * @details These functions are used to read and write characters and strings
 *          from UART console.
 * @author  Kiran Jojare
 * @date    April 3, 2023
 * @version 1.0
*/

#ifndef _UART_H_
#define _UART_H_

/**
 * @brief   Initializes the UART timer.
 * @details This function initializes the UART timer with a baud rate of 9600.
 */
void initialize_uart_timer();

/**
 * @brief   Converts a character to an integer.
 * @details This function takes a character and converts it to an integer.
 * @param   temp The character to be converted to an integer.
 * @return  The integer converted from the character.
 */
uint8_t char_to_int(uint8_t temp);

/**
 * @brief   Converts an integer to a character.
 * @details This function takes an integer and converts it to a character.
 * @param   temp The integer to be converted to a character.
 * @return  The character converted from the integer.
 */
int8_t int_to_char(int temp);

/**
 * @brief   Parse user input from UART console.
 * @details This function reads user input from UART console and converts it to an integer.
 * @param   base The number system base to be used for conversion.
 * @return  The integer converted from the user input.
 */
uint16_t parse_user_input(uint8_t base);

/**
 * @brief   Prints a string in a specified color.
 * @details This function prints a string in a specified color to the UART console.
 * @param   str The string to be printed.
 * @param   color_code The color code for the string.
 */
void print_colored(char* str, int color_code);

/**
 * @brief   Prints a number in hexadecimal format.
 * @details This function prints a number in hexadecimal format to the UART console.
 * @param   number The number to be printed.
 * @param   display_width The display width of the number.
 */
void print_hex_number(uint32_t num, uint8_t width);

/**
 * @brief   Prints a string in a specified color.
 * @details This function prints a string in a specified color to the UART console.
 * @param   str The string to be printed.
 * @param   color_code The color code for the string.
 */
void print_colored(char* str, int color_code);

/**
 * @brief   Prints the user interface for the UART console.
 * @details This function prints the user interface for the UART console to the UART console.
 */
void print_UI(void);

#endif // _UART_H_
