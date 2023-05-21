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
 * @brief   This header file contains the implementation of UART functionality
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
void uart_init();

/**
 * @brief   Reads a character from the UART console.
 * @details This function reads a character from the UART console.
 * @return  The character read from the UART console.
 */
int getchar(void);

/**
 * @brief   Writes a character to the UART console.
 * @details This function writes a character to the UART console.
 * @param   c The character to write to the UART console.
 * @return  The character written to the UART console.
 */
int putchar(int c);

/**
 * @brief   Prints a string in a specified color.
 * @details This function prints a string in a specified color to the UART console.
 * @param   str The string to be printed.
 * @param   color_code The color code for the string.
 */
void print_colored(char* str, int color_code);


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
