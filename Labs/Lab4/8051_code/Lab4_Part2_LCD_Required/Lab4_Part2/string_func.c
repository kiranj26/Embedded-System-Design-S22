
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
 * @file    string_func.c
 * @brief   This file provides functions for basic input/output operations on strings
 *          such as reading and printing strings from/to the serial port.
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

#include <mcs51/8051.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

#include "string_func.h"

/**
 * @brief   Reads a character from the serial port.
 *
 * This function waits until a character is received on the serial port and then returns it.
 * It clears the Receive Interrupt (RI) flag after reading the character.
 *
 * @return  The character read from the serial port.
 */
int getchar (void)
{
    while (!RI); //Wait till the Character is received
	RI = 0;			// Clear the RI flag
	return SBUF;  	// Return the Character
}


/**
 * @brief   Sends a character to the serial port.
 *
 * This function waits until the serial port is ready to transmit data and then sends the given
 * character. It clears the Transmit Interrupt (TI) flag after transmitting the character.
 *
 * @param   c   The character to be sent to the serial port.
 *
 * @return  The character sent to the serial port.
 */
int putchar (int c)
{
    while(!TI); //Wait till the Transmitter is ready
    SBUF = c; //write character to SBUF
    TI = 0; //Clear the TI flag
    return c;
}

/**
 * @brief   Reads a string from the serial port.
 *
 * This function reads a string from the serial port until a newline character is received.
 * The characters are stored in the provided buffer until a newline character is received or
 * the buffer is full. The function adds a null terminator at the end of the string and returns.
 *
 * @param   ch  The buffer to store the string read from the serial port.
 */
void gets_(__xdata char *ch) {
    for (int i = 0; ; i++) {
        char c = getchar();
        putchar(c);
        if (c == '\r' || c == '\n') {
            *(ch + i) = '\0';
            break;
        }
        *(ch + i) = c;
    }
}

/**
 * @brief   Sends a string to the serial port.
 *
 * This function sends the provided null-terminated string to the serial port character by character
 * using the putchar function until it reaches the null terminator.
 *
 * @param   ch  The null-terminated string to be sent to the serial port.
 */
void puts_(__xdata char *ch) {
    for (; *ch; ch++) {
        putchar(*ch);
    }
}

void my_printf(__xdata uint8_t* text_ptr)
{
	while(*text_ptr!='\0')
	{
        putchar(*text_ptr);
		text_ptr++;
	}
	return;
}


