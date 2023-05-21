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
 * @brief   This file contains the main program for the EEPROM Access Module.
 *          The program initializes the UART and the EEPROM and provides a menu
 *          to interact with the EEPROM memory.
 * @author  Kiran Jojare
 * @date    April 13, 2023
 * @version 1.0
*/

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <string.h>
#include <mcs51/8051.h>

#include "i2c.h"
#include "uart.h"
#include "command_prosessing.h"

#define NUM_BASE 16

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


/**
 * @brief Main program logic for EEPROM operations
 *
 * Initializes UART timer, resets EEPROM, and displays user interface.
 * Enters a loop that fetches characters from user input, echoing them back
 * to output and performing corresponding EEPROM operation based on the
 * input character.
 */
void main(void)
{
    initialize_uart_timer();        // Initialize UART and timer for serial communication
    i2c_handler_eeprom_reset();     // Reset EEPROM
    print_UI();                     // Print the user interface menu

    while(1)
    {

        // Print the user interface prompt
        print_colored("+-------------------------------------------------+\n\r", 36);
        print_colored("|                                                 |\n\r", 36);
        print_colored("|                Enter Character                  |\n\r", 36);
        print_colored("|                                                 |\n\r", 36);
        print_colored("+-------------------------------------------------+\n\r\n\r", 36);

        // Read a character from input and echo it back to output
        char char_detected;
        char_detected = getchar();
        putchar(char_detected);
        putchar(' ');

        // Process the character
        switch(char_detected)
        {
        case 'W':
            printf_tiny("\n\r");
            handler_wr_to_eeprom();         // Handle the "W" command to write to EEPROM
            break;
        case 'R':
            printf_tiny("\n\r");
            handler_rd_to_eeprom();         // Handle the "R" command to read from EEPROM
            break;
        case 'F':
            printf_tiny("\n\r");
            handler_EEPROM_hexdump();       // Handle the "F" command to dump the EEPROM data in hex format
            break;
        case 'C':
            printf_tiny("\n\r");
            fill_EEPROM_with_ff();          // Handle the "C" command to fill the EEPROM with 0xFF
            break;
        case 'X':
            printf_tiny("\n\r");
            i2c_handler_eeprom_reset();     // Handle the "X" command to reset the EEPROM
            printf_tiny("\033[1;33m\n\rEEPROM reseted\r\n");
            break;
        default:
            printf_tiny("\n\r");
            printf_tiny("\033[1;31mInvalid Character!!\n\r");
            printf_tiny("\033[1;31mAvailable Options: Available Characters W-R-F-C-X!!\n\r");
            break;
        }
    }
}
