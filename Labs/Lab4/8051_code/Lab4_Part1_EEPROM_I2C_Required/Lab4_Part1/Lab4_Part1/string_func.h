
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
 * @file    string_func.h
 * @brief   This file contains the implementation of string functions like
 *          getchar, putchar, gets_ and puts_.
 * @details These functions are used to read and write characters and strings
 *          in embedded systems.
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

#ifndef _STRING_FUNC_H_
#define _STRING_FUNC_H_

#include <mcs51/8051.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
/**
 * @brief   Reads a character from the input stream.
 * @details This function reads a character from the input stream and returns it.
 * @return  The character read from the input stream.
 */
int getchar (void);

/**
 * @brief   Writes a character to the output stream.
 * @details This function writes a character to the output stream.
 * @param   c The character to write to the output stream.
 * @return  The character written to the output stream.
 */
int putchar (int c);

/**
 * @brief   Reads a string from the input stream.
 * @details This function reads a string from the input stream and stores it in
 *          the character array passed as a parameter.
 * @param   ch The character array to store the string read from the input stream.
 */
void gets_(__xdata char *ch);

/**
 * @brief   Writes a string to the output stream.
 * @details This function writes a string to the output stream.
 * @param   ch The character array containing the string to write to the output stream.
 */
void puts_(__xdata char *ch);
void my_printf(__xdata uint8_t *text_ptr);

#endif // _STRING_FUNC_H_
