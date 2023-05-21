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
 * @brief   A timer program written in C language updates an LCD display by using a timer interrupt
 * at fixed intervals. The code contains a copyright notice and permission to use the code for educational purposes.
 * The main function includes necessary header files, function declarations, and global variables to store time digits.
 * An interrupt service routine updates time counters and sets the flag to update the LCD display.
 * The code appears incomplete and under development as there is commented out code for an alternative implementation
 * of the timer interrupt service routine.
 * @author  Kiran Jojare
 * @date    April 15, 2023
 * @version 1.0
*/

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <at89c51ed2.h>
#include <mcs51reg.h>
#include <string.h>
#include <mcs51/8051.h>

#include "uart.h"
#include "lcd.h"

// Flag variable to update LCD display
volatile int update_lcd = 0;
// volatile int user_input_required = 0;

_sdcc_external_startup()
{
    // Update value of "AUXR" register with bitwise OR operation
    AUXR |= (XRS1 | XRS0);
    // Return integer value 0 to indicate successful initialization
    return 0;
}

// Global variables to store different digits of the time
volatile char tenth_of_second    ='0';
volatile char seconds_ones_digit ='0';
volatile char seconds_tens_digit ='0';
volatile char minutes_ones_digit ='0';
volatile char minutes_tens_digit ='0';

void timer0_ISR() __interrupt(1) { // Define Timer 0 interrupt service routine
    EA = 0;     // Disable interrupts

    TF0 = 0;    // Clear Timer 0 interrupt flag

    static int counter_02s = 0; // Initialize a static variable called counter_02s with a value of 0
    volatile uint8_t save_cursor_addr = get_cursor_address(); // Get the current cursor address and store it in save_cursor_addr

    if (counter_02s == 2) { // If the counter_02s equals 2, which means 0.2 seconds have passed
        P1_1 = P1_1 ^ 1;    // Toggle pin P1_1
        update_lcd  = 1;    // Set the update_lcd flag to 1 to update the LCD
        counter_02s = 0;    // Reset the counter_02s
        tenth_of_second++;  // Increment the tenth of a second counter
    }
    counter_02s++;  // Increment the counter_02s

    TL0 = 0xfd;     // Set the low value of Timer 0 to 0xfd
    TH0 = 0x4b;     // Set the high value of Timer 0 to 0x4b

    if (tenth_of_second == ':') { // If the tenth of a second counter equals ':', which means 1 second has passed
        tenth_of_second = '0'; // Reset the tenth of a second counter to '0'
        seconds_ones_digit++; // Increment the first digit of the seconds counter

        if (seconds_ones_digit == ':') { // If the first digit of the seconds counter equals ':', which means 10 seconds have passed
            seconds_ones_digit = '0'; // Reset the first digit of the seconds counter to '0'
            seconds_tens_digit++; // Increment the second digit of the seconds counter

            if (seconds_tens_digit == '6') { // If the second digit of the seconds counter equals '6', which means 1 minute has passed
                seconds_tens_digit = '0'; // Reset the second digit of the seconds counter to '0'
                minutes_ones_digit++; // Increment the first digit of the minutes counter

                if (minutes_ones_digit == ':') { // If the first digit of the minutes counter equals ':', which means 10 minutes have passed
                    minutes_ones_digit = '0'; // Reset the first digit of the minutes counter to '0'
                    minutes_tens_digit++; // Increment the second digit of the minutes counter

                    if (minutes_tens_digit == '6') { // If the second digit of the minutes counter equals '6', which means 1 hour has passed
                        minutes_tens_digit = '0'; // Reset the second digit of the minutes counter to '0'
                    }
                }
            }
        }
    }
    lcdgotoaddr(save_cursor_addr); // Move the cursor to the previous cursor address
    EA=1; // Enable interrupts
}


void init_timer(void){
    TCON=TCON&(~0x30);   // Clearing the last 2 bits in TCON register
    TMOD |= 0x01;        // Setting the Timer 0 mode to 16-bit mode
    TL0 = 0xfd;          // Setting the initial value of Timer 0 low byte
    TH0 = 0x4b;          // Setting the initial value of Timer 0 high byte
    IE   |=0x82;         // Enabling Timer 0 interrupt
    PT0 = 1;             // Setting the Timer 0 interrupt priority to high
    TR0 = 1;             // Starting Timer 0
}


void main(void)
{
    uart_init();        // Initialize UART for serial communication
    init_lcd();         // Initialize LCD
    init_timer();       // Initialize Timer for timing functionality
    print_UI();         // Print the UI (User Interface) on the LCD

    while(1)
    {
            if(update_lcd) // If the LCD needs to be updated
            {
                volatile uint8_t save_cursor_address = get_cursor_address(); // Save the current cursor address
                lcdgotoaddr(0x59);              // Move the cursor to the specific location on the LCD
                lcdputch(minutes_tens_digit);           // Display the tens digit of minutes on the LCD
                lcdputch(minutes_ones_digit);           // Display the ones digit of minutes on the LCD
                lcdputch(':');                  // Display a colon on the LCD
                lcdputch(seconds_tens_digit);           // Display the tens digit of seconds on the LCD
                lcdputch(seconds_ones_digit);           // Display the ones digit of seconds on the LCD
                lcdputch('.');                  // Display a period on the LCD
                lcdputch(tenth_of_second);     // Display the tenths digit of seconds on the LCD
                update_lcd = 0;                 // Reset the flag to indicate that the LCD has been updated
                lcdgotoaddr(save_cursor_address); // Restore the cursor address
            }

            /* Fetching Characters */
            if(RI)
            {
                char char_detected;
                char_detected = SBUF;           // Store the character in a variable
                putchar(char_detected);         // Display the character on the serial terminal
                printf("\n\r");                 // Move to the next line on the serial terminal
                RI = 0;                         // Reset the flag
                putchar(' ');                   // Add a space to separate characters for readability
                switch(char_detected)           // Perform a certain action based on the received character
                {
                case 'L':                       // If the character 'L' is received
                    __critical                  // Enter a critical section
                    {
                        print_UI();             // Print the UI on the LCD
                    }
                    break;

                case 'A': // If the character 'A' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_wr_c_lcd();         // Handle writing a single character to the LCD
                    break;

                case 'B': // If the character 'B' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_wr_str_lcd();       // Handle writing a string to the LCD
                    break;

                case 'C': // If the character 'C' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_lcdgotoaddress();   // Handle moving the cursor to a specific address on the LCD
                    break;

                case 'D': // If the character 'D' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_lcdgotoxy();        // Handle moving the cursor to a specific row and column on the LCD
                    break;

                case 'Z': // If the character 'Z' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_lcdclear();         // Handle clearing the LCD
                    break;

                case 'E': // If the character 'E' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_stop_time();        // Call the function to stop the timer
                    break;

                case 'F': // If the character 'F' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_resume_time();      // Call the function to resume the timer
                    break;

                case 'G': // If the character 'G' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_reset_time();       // Call the function to reset the timer
                    break;

                case 'H': // If the character 'H' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_lcd_hexdump();      // Call the function to dump the contents of the LCD
                    break;

                case 'I': // If the character 'I' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handler_custom_char();      // Call the function to create custom characters for the LCD
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    break;

                case 'J': // If the character 'J' is received
                    print_colored("\n\r", 36);            // Print a colored newline on the serial terminal
                    handle_sadsmiley_custom_char();       // Call the function to create a custom sad smiley character for the LCD
                    print_colored("\n\r", 36);            // Print a colored newline on the serial terminal
                    break;

                case 'K': // If the character 'K' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    handle_cu_custom_char();    // Call the function to create a custom "CU" character for the LCD
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    break;

                case 'P': // If the character 'P' is received
                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
                    print_author();             // Print the author name on the serial terminal
                    break;

                default:  // If an invalid character is received
                    printf_tiny("\033[1;31mInvalid Character!!\n\r");  // Print a colored error message on the serial terminal
                    break;
                }
            }
    }
}
