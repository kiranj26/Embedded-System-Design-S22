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


void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1275; j++);
}

void delay_sec(unsigned int sec) {
    unsigned int i;
    for(i = 0; i < sec; i++)
        delay_ms(1000);
}

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
    static int fingerprint_count = 0;

    uart_init();        // Initialize UART for serial communication
    init_lcd();         // Initialize LCD
    //init_timer();       // Initialize Timer for timing functionality
    //print_UI();         // Print the UI (User Interface) on the LCD
    lcdgotoxy('0','0');
    lcdputstr("Hello");
    lcdgotoxy('1','0');
    lcdputstr("STM32F411E-Disco");
    lcdgotoxy('0','0');
    delay_sec(1);
    while(1)
    {
//            /* Keep printing enrolled fingerprint count */
//            lcdgotoxy('3', '0');
//            char count_str[10]; // Buffer to hold string representation of fingerprint count
//            sprintf(count_str, "FP Count: %d", fingerprint_count); // Format the count string
//            lcdputstr(count_str); // Print the count string on the LCD
//            lcdgotoxy('0', '0'); // Position cursor at (0, 3)
//            delay_sec(2);

            /* Fetching Characters */
            if(RI)
            {
                char char_detected;
                char_detected = SBUF;           // Store the character in a variable
                // lcdputch(char_detected);
                // putchar(char_detected);         // Display the character on the serial terminal

                RI = 0;                         // Reset the flag
                // putchar(' ');                   // Add a space to separate characters for readability
                switch(char_detected)           // Perform a certain action based on the received character
                {
                case 'A':                       // If the character 'L' is received
                    __critical                  // Enter a critical section
                    {
                        // print_UI();             // Print the UI on the LCD
                        handler_lcdclear();
                        lcdgotoxy('0','0');
                        lcdputstr("|   New User   |");
                        lcdgotoxy('1','0');
                        lcdputstr("|   Enrolled   |");
                        lcdgotoxy('0','0');
                        handle_newuser_custom_char();
                        delay_sec(1);
                        fingerprint_count++;
                    }
                    break;

                case 'B': // If the character 'A' is received
                         handler_lcdclear();
                        lcdgotoxy('0','0');
                        lcdputstr("|      User    |");
                        lcdgotoxy('1','0');
                        lcdputstr("|  Authorized  |");
                        lcdgotoxy('0','0');
                        handle_unlock_custom_char();
                        delay_sec(1);
                    break;

                case 'C': // If the character 'B' is received
                        handler_lcdclear();
                        lcdgotoxy('0','0');
                        lcdputstr("|     User     |");
                        lcdgotoxy('1','0');
                        lcdputstr("| Un-Authorized|");
                        lcdgotoxy('0','0');
                        handle_lock_custom_char();
                        delay_sec(1);
                    break;

                case 'D': // If the character 'C' is received
                        handler_lcdclear();
                        lcdgotoxy('0','0');
                        lcdputstr("|  Existing    |");
                        lcdgotoxy('1','0');
                        lcdputstr("|  Data Base   |");
                        lcdgotoxy('2','0');
                        lcdputstr("|   Cleared    |");
                        lcdgotoxy('0','0');
                        delay_sec(1);

                    break;

//                case 'E': // If the character 'C' is received
//                        handler_lcdclear();
//                        lcdgotoxy('0','0');
//                        lcdputstr("Fingerprint Enroll");
//                        lcdgotoxy('1','0');
//                        lcdputstr("Failed");
//                        lcdgotoxy('0','0');
//                    break;
//
//                case 'D': // If the character 'D' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handler_lcdgotoxy();        // Handle moving the cursor to a specific row and column on the LCD
//                    break;
//
//                case 'Z': // If the character 'Z' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handler_lcdclear();         // Handle clearing the LCD
//                    break;
//
//                case 'E': // If the character 'E' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handler_stop_time();        // Call the function to stop the timer
//                    break;
//
//                case 'F': // If the character 'F' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handler_resume_time();      // Call the function to resume the timer
//                    break;
//
//                case 'G': // If the character 'G' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handler_reset_time();       // Call the function to reset the timer
//                    break;
//
//                case 'H': // If the character 'H' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handler_lcd_hexdump();      // Call the function to dump the contents of the LCD
//                    break;
//
//                case 'I': // If the character 'I' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handler_custom_char();      // Call the function to create custom characters for the LCD
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    break;
//
//                case 'J': // If the character 'J' is received
//                    print_colored("\n\r", 36);            // Print a colored newline on the serial terminal
//                    handle_sadsmiley_custom_char();       // Call the function to create a custom sad smiley character for the LCD
//                    print_colored("\n\r", 36);            // Print a colored newline on the serial terminal
//                    break;
//
//                case 'K': // If the character 'K' is received
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    handle_cu_custom_char();    // Call the function to create a custom "CU" character for the LCD
//                    print_colored("\n\r", 36);  // Print a colored newline on the serial terminal
//                    break;
//
                case 'Z': // If the character 'P' is received
                    handler_lcdclear();
                    lcdgotoxy('0','0');
                    delay_sec(1);
                    break;
//
                default:  // If an invalid character is received
                    break;
                }
            }
    }
}
