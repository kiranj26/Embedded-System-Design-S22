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
 * @file    uart.C
 * @brief   This C file contains the implementation of UART functionality
 * @details These functions are used to read and write characters and strings
 *          from UART console.
 * @author  Kiran Jojare
 * @date    April 3, 2023
 * @version 1.0
*/

// Include necessary header files
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <mcs51/8051.h>
#include<string.h>

#include "lcd.h"

// Define constants
#define RX_BUFFER_SIZE 2000
#define TX_BUFFER_SIZE 2000

// Declare global variables
extern volatile char    tenth_of_second;
extern volatile char    seconds_ones_digit;
extern volatile char    seconds_tens_digit;
extern volatile char    minutes_ones_digit;
extern volatile char    minutes_tens_digit;
extern volatile int     update_lcd;
extern volatile uint8_t save_cursor_address;

// Initialize UART
void uart_init()
{
    // Set UART mode to 8-bit auto-reload
    SCON = 0x50;    // UART in mode 1 (8 bit), REN=1
    TMOD |= 0x20;   // Timer 1 in mode 2
    TH1 = 0xFD;     // 9600 Baud rate at 11.059MHz
    TL1 = 0xFD;     // 9600 Baud rate at 11.059MHz
    TI = 0;         // Clear transmit interrupt flag
    SBUF = 0;       // Clear transmit buffer
    TR1 = 1;        // Timer 1 run
    ES = 1;         // Enable serial interrupt
    EA = 1;         // Enable global interrupt
}

// Send a character over UART
int putchar (int c) {
    while (!TI);    // Wait for the transmit interrupt flag to be set
    SBUF = c;       // Load the transmit buffer with the character to send
    TI = 0;         // Clear transmit interrupt flag
    return c;
}

// Receive a character over UART
int getchar (void)
{
    while (!RI)     // Wait for the receive interrupt flag to be set
    {
        volatile uint8_t save_cursor_address = get_cursor_address();   // Save the current cursor address
        lcdgotoaddr(0x59);      // Set the cursor to the start of the line that displays the time
        lcdputch(minutes_tens_digit);   // Display the tens digit of the minutes
        lcdputch(minutes_ones_digit);   // Display the ones digit of the minutes
        lcdputch(':');          // Display the colon separator
        lcdputch(seconds_tens_digit);   // Display the tens digit of the seconds
        lcdputch(seconds_ones_digit);   // Display the ones digit of the seconds
        lcdputch('.');          // Display the decimal point separator
        lcdputch(tenth_of_second);      // Display the tenths of seconds
        lcdgotoaddr(save_cursor_address);   // Restore the cursor to the previous location
        update_lcd = 0;         // Reset the flag that indicates a change in the time display
    }
    RI = 0;             // Clear receive interrupt flag
    return SBUF;        // Return the received character from the receive buffer
}

// A function to print a colored string to console
void print_colored(char* str, int color_code) {
    printf("\033[1;%dm%s\033[0m", color_code, str);
}

// Function to print the user interface for the LCD
void print_UI(void)
{
        print_colored("+-------------------------------------------------+\n\r", 35);
        print_colored("|           USER INTERFACE Lab 4 Part 2           |\n\r", 35);
        print_colored("|                      LCD                        |\n\r", 35);
        print_colored("+-------------------------------------------------+\n\r\n\r", 35);

        printf("        ");
        print_colored("Please select an option below:\n\r", 34);
        printf("\n\r");

        printf("   ");
        print_colored("+---------------------------------------------+\n\r", 36);
        printf("   ");
        print_colored("| ", 36);
        print_colored("[A] Write a character to LCD                ", 31);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[B] Write a string to LCD                   ", 32);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[C] Go to Address (0xNN)                    ", 33);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[D] Go to Co-ordinates (x,y)                ", 31);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[E] Stop Elapsed Time                       ", 32);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[F] Resume Elapsed Time                     ", 33);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[G] Reset time to 00:00:0                   ", 31);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[H] LCD HEX Dump                            ", 32);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[I] Input Custom Characters                 ", 33);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[J] Load Smiley Logo                        ", 33);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[K] Load CU Logo                            ", 33);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[P] Print Author Info                       ", 31);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("| ", 36);
        print_colored("[Z] Clear LCD Screen                        ", 32);
        print_colored("| ", 36);
        printf("\n\r");

        printf("   ");
        print_colored("+---------------------------------------------+\n\r", 36);
        printf("\n\r");
}

