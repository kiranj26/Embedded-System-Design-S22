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
 * @brief   Main file for application entry point
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

#include <mcs51/8051.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

#include "string_func.h"

int getchar (void)
{
    while (!RI); //Wait till the Character is received
	RI = 0;			// Clear the RI flag
	return SBUF;  	// Return the Character
}


int putchar (int c)
{
    while(!TI); //Wait till the Transmitter is ready
    SBUF = c; //write character to SBUF
    TI = 0; //Clear the TI flag
    return c;
}

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

void puts_(__xdata char *ch) {
    for (; *ch; ch++) {
        putchar(*ch);
    }
}
