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
 * @file    uart.c
 * @brief   The file uart.c is a C source file that provides functions for UART communication.
 * The file initializes the UART timer and provides functions to convert integers to characters and characters to integers.
 * It also provides functions to parse user input in different bases (binary, octal, decimal, hexadecimal) and to print numbers in hexadecimal format.
 * Additionally, the file provides a function to print colored text on the console and a function to print a user interface on the console.
 *
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
#include <mcs51/8051.h>
#include<string.h>

#define MAX_DIGITS 20       // Maximum number of digits in user input
#define CARRIAGE_RETURN 13  // ASCII code for carriage return
#define BACKSPACE 8         // ASCII code for backspace
#define SPACE 32            // ASCII code for space


void initialize_uart_timer() {
    IEN0 |= 0x80;           // Enable interrupts
    IPL0 |= 0x10;           // Set interrupt priority to 1
    TMOD |= 0x20;           // Set Timer 1 mode to 8-bit auto-reload mode
    SCON = (SCON & 0xCF) | 0x50;    // Set Timer 1 to Mode 2 (8-bit auto-reload mode)
    TCON = (TCON & 0xBF) | 0x40;    // Set baud rate of 9600 Baud Rate = 11.0592 MHz / (32 * (256 - 0xFD)) = 9600
    TH1 = 0xFD;             // Set UART with 8-bit mode with 1 stop bit
    TI = 1;                 // Enable the UART transmitter
}

char int_to_char(int num) {
    const char hex_digits[] = "0123456789ABCDEF"; // Hexadecimal digits
    if (num >= 0 && num <= 15) {
        return hex_digits[num];
    }
    return '0';
}

uint8_t char_to_int(uint8_t ch) {
    const char *hex_digits = "0123456789abcdefABCDEF"; // Hexadecimal digits
    const char *pos = strchr(hex_digits, ch); // Get position of character in hexadecimal digits
    if (pos != NULL) {
        return (uint8_t)(pos - hex_digits);
    }
    return 0;
}

uint16_t parse_user_input(uint8_t base)
{
    uint16_t number = 0;
    uint16_t digits[MAX_DIGITS] = {0};
    uint16_t digit_count = 0;
    uint16_t i = 0;
    uint16_t current_char = 0;

    while (current_char != CARRIAGE_RETURN) {   // Loop until the input is complete.
        current_char = getchar();               // Read the next character.

        if (((current_char >= '0') && (current_char <= '9')) || // Check if the character is a valid digit.
            ((current_char >= 'a') && (current_char <= 'f')) ||
            ((current_char >= 'A') && (current_char <= 'F')))
        {
            putchar(current_char);                              // Echo the character back to the user.
            digits[digit_count] = char_to_int(current_char);    // Convert the character to a digit and store it in the digits array.
            digit_count++;                                      // Increment the digit count.
        }
        else if (current_char == BACKSPACE) // Check for backspace.
        {
            if (digit_count > 0)    // Check if there are any digits to delete.
            {
                putchar(BACKSPACE); // Move the cursor back one position.
                putchar(SPACE);     // Print a space to overwrite the previous digit.
                putchar(BACKSPACE); // Move the cursor back one position again.
                digit_count--;      // Decrement the digit count.
            }
        }
    }

    for(i = 0; i < digit_count; i++) // Iterate over the digits.
    {
        number *= base;             // Multiply the current value of number by the base.
        number += digits[i];        // Add the current digit to number.
    }
    return number;
}

/*
void print_number_hex( uint32_t number, uint8_t display_width)
{
    uint8_t temp_ascii_store[10],temp_value=0;
    int8_t counter = 0;
    uint32_t value_check = 0;
    for(counter=display_width;counter>1;counter--)
    {
        switch(counter)
        {
            case 4:
            {
                value_check = 0xFFF;
                if(number<=value_check)
                {
                    putchar('0');
                }
                break;
            }

            case 3:
            {
                value_check = 0xFF;
                if(number<=value_check)
                {
                    putchar('0');
                }
                break;
            }

            case 2:
            {
                value_check = 0xF;
                if(number<=value_check)
                {
                    putchar('0');
                }
                break;
            }
        }
    }
	do
	{
		temp_ascii_store[counter]=int_to_char(number%16);
		number/=16;
		counter++;
	}while(number>0);

	for(counter-=1;counter>=0;counter--)
	{
		putchar(temp_ascii_store[counter]);
	}
	return;
}
*/

void print_hex_number(uint32_t num, uint8_t width) {
    uint8_t ascii_buffer[10], temp_val = 0;  // buffer to store the ASCII representation of each digit, temp value initialized to 0
    int8_t digit_count = 0;                 // counter for number of digits, initialized to 0
    uint32_t val_check = 0;                 // value used for checking if leading zeros are needed

    for (digit_count = width; digit_count > 1; digit_count--) {  // loop through each digit, starting from the most significant and going down to the second least significant
        switch (digit_count) {
            case 4:
                val_check = 0xFFF;          // set value_check to 0xFFF (the maximum value for the first 3 digits)
                if (num <= val_check) {
                    putchar('0');           // if num is less than or equal to value_check, print a leading zero
                }
                break;
            case 3:
                val_check = 0xFF;           // set value_check to 0xFF (the maximum value for the first 2 digits)
                if (num <= val_check) {
                    putchar('0');           // if num is less than or equal to value_check, print a leading zero
                }
                break;
            case 2:
                val_check = 0xF;            // set value_check to 0xF (the maximum value for the first digit)
                if (num <= val_check) {
                    putchar('0');           // if num is less than or equal to value_check, print a leading zero
                }
                break;
        }
    }

    do {
        ascii_buffer[digit_count] = int_to_char(num % 16);  // store the ASCII representation of the current digit in the buffer
        num /= 16;          // shift num to the right by one digit (divide by 16)
        digit_count++;      // increment the digit counter
    } while (num > 0);      // continue the loop until num becomes 0

    for (digit_count -= 1; digit_count >= 0; digit_count--) {  // loop through the buffer in reverse order to print the digits in the correct order
        putchar(ascii_buffer[digit_count]);                     // print the current digit
    }
}


void print_colored(char* str, int color_code) {
    printf("\033[1;%dm%s\033[0m", color_code, str);
}
void print_UI(void)
{
    printf("\n\r");
    print_colored("+-------------------------------------------------+\n\r", 35);
    print_colored("|                                                 |\n\r", 35);
    print_colored("|           USER INTERFACE Lab 4 Required         |\n\r", 35);
    print_colored("|                   I2C & EEPROM                  |\n\r", 35);
    print_colored("|                                                 |\n\r", 35);
    print_colored("+-------------------------------------------------+\n\r\n\r", 35);

    printf("        ");
    print_colored("Please select an option below:\n\r", 37);
    printf("\n\r");

    printf("   ");
    print_colored("+---------------------------------------------+\n\r", 36);
    printf("   ");
    print_colored("| ", 36);
    print_colored("[W] Write to EEPROM                         ", 36);
    print_colored("| ", 36);
    printf("\n\r");

    printf("   ");
    print_colored("| ", 36);
    print_colored("[R] Read from EEPROM                        ", 33);
    print_colored("| ", 36);
    printf("\n\r");

    printf("   ");
    print_colored("| ", 36);
    print_colored("[F] EEPROM Dump                             ", 32);
    print_colored("| ", 36);
    printf("\n\r");

    printf("   ");
    print_colored("| ", 36);
    print_colored("[X] Reset EEPROM                            ", 31);
    print_colored("| ", 36);
    printf("\n\r");

    printf("   ");
    print_colored("| ", 36);
    print_colored("[C] Fill EEPROM with 0xFF                   ", 34);
    print_colored("| ", 36);
    printf("\n\r");

    printf("   ");
    print_colored("+---------------------------------------------+\n\r", 36);
    printf("\n\r");

    print_colored("+-------------------------------------------------+\n\r", 35);
    print_colored("|                                                 |\n\r", 35);
    print_colored("|                                                 |\n\r", 35);
    print_colored("+-------------------------------------------------+\n\r\n\r", 35);

}

