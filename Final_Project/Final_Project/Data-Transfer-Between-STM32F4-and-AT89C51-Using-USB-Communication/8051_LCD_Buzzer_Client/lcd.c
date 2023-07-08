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
 * @file    lcd.c
 * @brief   The given code is for initializing and controlling an LCD display using a microcontroller.
 * The code initializes the display by sending various commands to it and waits for the display to become
 * not busy before sending the next command. The code includes functions for setting the time variables and
 * displaying them on the LCD display. The code also includes functions for setting the cursor position and
 * displaying characters and strings on the LCD display.
 * @author  Kiran Jojare
 * @date    April 13, 2023
 * @version 1.0
*/

#include <stdint.h>
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "at89c51ed2.h"

#include "uart.h"

// Pin definitions for the LCD
#define LCD_RS P1_2
#define LCD_RW P1_3

// LCD memory addresses for each row
#define LCD_ROW_0_ADDR 0x00
#define LCD_ROW_1_ADDR 0x40
#define LCD_ROW_2_ADDR 0x10
#define LCD_ROW_3_ADDR 0x50

// The number of cycles required to wait for one millisecond
#define COUNT_ONE_MILLISECOND       82

// The mask used to check the busy flag in the LCD status register
#define LCD_BUSYWAIT_MASK           0x80

// The address used to read LCD commands
#define LCD_COMMAND_READ_ADDRESS    (uint8_t *)0xF000

// The command flag
#define LCD_CMD                     0x8000

// The number of cycles required to wait for one tenth of a second
#define ONE_TENTH_SECOND            30

// The starting address of the CGRAM
#define CGRAM_START_ADDRESS         0x40

// The LCD read pointer
volatile uint8_t __at(LCD_COMMAND_READ_ADDRESS) lcd_ptr;

// Global variables used to display time on the LCD
extern volatile char tenth_of_second;
extern volatile char seconds_ones_digit;
extern volatile char seconds_tens_digit;
extern volatile char minutes_ones_digit;
extern volatile char minutes_tens_digit;

// The cursor address saved for later use
uint8_t save_cursor_address = 0;

// The string pointer
char *string;

// Function to implement a delay for a specified number of milliseconds
void delay(int milliseconds)
{
    // Loop for the specified number of milliseconds multiplied by COUNT_ONE_MILLISECOND
    for(int i = 0; i < milliseconds * COUNT_ONE_MILLISECOND; i++);
}


// Wait for the LCD to become not busy
void lcdbusywait(void)
{
    // Mask for the busy flag in the status register
    const uint8_t BUSY_FLAG_MASK = 0x80;

    // Address of the LCD command register
    const uint16_t COMMAND_ADDRESS = 0xF000;

    // Set control pins for reading command
    LCD_RS = 0;
    LCD_RW = 1;

    // Read status register until busy flag is cleared
    while ((* (volatile uint8_t *) COMMAND_ADDRESS) & BUSY_FLAG_MASK)
    {
        // Delay for a short period before reading the status register again
        delay(10);
    }
}

// Set initial values of global variables used to display time on the LCD
void set_time_variables(void)
{
    // Set initial values for each time variable
    tenth_of_second     = '0';
    seconds_ones_digit  = '0';
    seconds_tens_digit  = '0';
    minutes_ones_digit  = '0';
    minutes_tens_digit  = '0';
}

void init_lcd(void){
    // Set RS and RW pins to 0
    LCD_RS = 0;
    LCD_RW = 0;
    // Delay for 160 ms
    delay(160);

    // Send 0x30 to the LCD
    lcd_ptr = 0x30;
    // Delay for 170 ms
    delay(170);
    // Send 0x30 to the LCD again
    lcd_ptr = 0x30;
    // Delay for 150 ms
    delay(150);

    // Send 0x30 to the LCD again
    lcd_ptr = 0x30;
    // Wait until the LCD is not busy
    lcdbusywait();
    // Set RS and RW pins to 0
    LCD_RS = 0;
    LCD_RW = 0;
    // Send 0x38 to the LCD
    lcd_ptr = 0x38;
    // Wait until the LCD is not busy
    lcdbusywait();

    // Set RS and RW pins to 0
    LCD_RS = 0;
    LCD_RW = 0;
    // Send 0x0F to the LCD
    lcd_ptr = 0x0F;
    // Wait until the LCD is not busy
    lcdbusywait();

    // Set RS and RW pins to 0
    LCD_RS = 0;
    LCD_RW = 0;
    // Send 0x01 to the LCD
    lcd_ptr = 0x01;
    // Wait until the LCD is not busy
    lcdbusywait();

    // Set RS and RW pins to 0
    LCD_RS = 0;
    LCD_RW = 0;
    // Send 0x06 to the LCD
    lcd_ptr = 0x06;
    // Wait until the LCD is not busy
    lcdbusywait();

    // Call set_time_variables function to initialize time variables
    set_time_variables();
}

// Function to get the cursor address
uint8_t get_cursor_address(){
    LCD_RS = 0; // Set RS pin low
    LCD_RW = 1; // Set RW pin high

    uint8_t address = lcd_ptr & (~0x80); // Mask out the MSB of lcd_ptr and assign it to address
    return address; // Return the address
}

// Function to move the cursor to the given address
void lcdgotoaddr(unsigned char address){
    LCD_RS = 0; // Set RS pin low
    LCD_RW = 0; // Set RW pin low

    address = address | 0x80; // Set the MSB of address to 1
    lcd_ptr = address; // Assign the address to lcd_ptr
    lcdbusywait(); // Wait for the LCD to be not busy
}

// Function to move the cursor to the given row and column
void lcdgotoxy(unsigned char row, unsigned char column) {
    unsigned char address;  // Declare address variable
    switch (row) {          // Select address based on the row number
        case '0':
            address = (0x00);
            break;
        case '1':
            address = (0x40);
            break;
        case '2':
            address = (0x10);
            break;
        case '3':
            address = (0x50);
            break;
        default:
            address = (0x00);
            break;
    }
    // Modify address based on the column number
    if (row == '0' && column == '4') {
        address |= 0x04;
    }
    else if (row == '4' && column == '0') {
        address |= 0x40;
    }
    else if (column >= 'A' && column <= 'F') {
        address |= (column - '7');
    }
    else if (column >= '0' && column <= '9') {
        address |= (column - '0');
    }
    else {
        address |= ('8' - 48);
    }
    lcdgotoaddr(address);   // Call lcdgotoaddr function with the calculated address
    lcdbusywait();          // Wait for the LCD to be not busy
}


void lcdputch(char cc){
    unsigned char cursor_address = get_cursor_address(); // get the current cursor address
    LCD_RS=1;       // set the RS pin high to send data
    LCD_RW=0;       // set the RW pin low to write to the LCD
    lcd_ptr=cc;     // put the character to the LCD data bus
    lcdbusywait();  // wait until the LCD is not busy

    // check cursor position and move cursor to next line if needed
    switch(cursor_address) {
        case 0x0F:
            lcdgotoxy('1', '0');
            break;
        case 0x4F:
            lcdgotoxy('2', '0');
            break;
        case 0x1F:
            lcdgotoxy('0', '0');
            break;
        case 0x5F:
            lcdgotoxy('0', '0');
            break;
    }
}

void lcdputstr(char *ss){
    int i=0;
    while(ss[i]!='\0'){     // loop until end of string
        lcdputch(ss[i]);    // print each character
        i++;
    }
}
void handler_lcdclear(void){
    LCD_RS=0;               // set RS pin to low
    LCD_RW=0;               // set RW pin to low
    lcd_ptr=0x01;           // reset pointer to first line
    lcdbusywait();          // wait until LCD is ready
    lcdgotoaddr(0x00);      // move cursor to the beginning of the first line
    lcdputstr("       ");   // write 7 spaces to clear the first line
    lcdgotoaddr(0x00);      // move cursor back to the beginning of the first line
    printf_tiny("\033[1;33m\n\rLCD Cleared!!\r\n"); // print a message to indicate LCD has been cleared
}

void handler_wr_c_lcd(void)
{
    char lcd_input;
    printf_tiny("\033[1;33m\n\rEnter Character to put on LCD !!\r\n"); // print a message to ask the user to enter a character
    lcd_input = getchar();  // get the input character from the user
    __critical
    {
        lcdputch(lcd_input); // write the input character to the LCD
    }
    printf_tiny("\n\rEntered Char = %c\n\r",lcd_input); // print the entered character
    printf_tiny("\n\r");
}

void handler_wr_str_lcd(void)
{
    printf_tiny("\033[1;33m\n\rEnter String to put on LCD !!\r\n"); // print a message to ask the user to enter a string
    int k = 1;
    int i = 0;
    char ch = 0;

    while(k){
        ch=getchar();       // get each character from the user until the enter key is pressed
        if(ch=='\r'){
            k=0;            // exit the loop when the enter key is pressed
        }
        else{
            *(string+i)=ch; // store each character in a string array
            i++;
        }
    }
    *(string+i)='\0';       // add null character to mark the end of the string
    __critical
    {
        lcdputstr(string);  // write the string to the LCD
    }
    printf_tiny("Entered String = %s\n\r",string); // print the entered string
    printf_tiny("\n\r");
}

// This function is used to handle the user input to move the cursor on the LCD to the specified coordinates
void handler_lcdgotoxy(void)
{
    // prompt the user to input the x-coordinate
    char x_coordinate_ch;
    printf_tiny("\033[1;33m\n\rEnter X-Co-ordinate to put on LCD !!\r\n");
    x_coordinate_ch  = toupper(getchar());

    // print the user input for x-coordinate
    printf_tiny("X-Cordinate = %c\n\r",x_coordinate_ch);

    // prompt the user to input the y-coordinate
    printf_tiny("\033[1;33m\n\rEnter Y-Co-ordinate to put on LCD !!\r\n");
    char y_coordinate_ch  = toupper(getchar());

    // print the user input for y-coordinate
    printf_tiny("Y-Cordinate = %c\n\r",y_coordinate_ch);

    // if the user input is not a valid coordinate, return with an error message
    if (x_coordinate_ch >= '0' && x_coordinate_ch <= '3'){
        // do nothing
    } else if (y_coordinate_ch >= '0' && y_coordinate_ch <= 'F') {
        // do nothing
    } else {
        printf_tiny("\033[1;31mInvalid coordinate!!\n\r");
        return;
    }

    // move the cursor to the specified coordinates on the LCD
    __critical {
        lcdgotoxy(x_coordinate_ch, y_coordinate_ch);
    }

    // print the message indicating the cursor movement completed
    printf_tiny("\033[1;33m\n\rCursor Movement Completed!!\r\n");
}


// This function handles the command to go to a specific address on the LCD
void handler_lcdgotoaddress(void)
{
    char str[50];
    printf_tiny("\033[1;33m\n\rEnter address to put onto the LCD !!\r\n");

    // Read in the address string from the user
    int i = 0;
    char c = getchar();
    while (c != '\r' && i < 49) { // Read characters until enter is pressed or limit is reached
        str[i++] = c;
        c = getchar();
    }
    str[i] = '\0';

    // Print out the address entered by the user
    printf("Address Entered = %s\n\r",str);

    // Convert the address string to a long integer using base 16
    long int num = strtol(str, NULL, 16);

    // Go to the specified address on the LCD
    __critical
    {
        lcdgotoaddr((char)num);
    }
    return;
}

// This function handles the command to stop the clock
void handler_stop_time(void)
{
    printf_tiny("\033[1;33m\n\rTime Paused !!\r\n");

    // Set the timer control register bit 4 to 0 to stop the timer
    TCON &=~(0x10);
}

// This function handles the command to resume the clock
void handler_resume_time(void)
{
    //resume clock
    printf_tiny("\033[1;33m\n\rTime Resumed !!\r\n");

    // Set the timer control register bit 4 to 1 to resume the timer
    TCON |=0x10;
}

// Function to reset the timer
void handler_reset_time(void)
{
    // Print message to the console
    printf_tiny("\033[1;33m\n\rTime Reset !!\r\n");

    // Reset counters to initialize the time
    tenth_of_second     = '0';
    seconds_ones_digit  = '0';
    seconds_tens_digit  = '0';
    minutes_ones_digit  = '0';
    minutes_tens_digit  = '0';
}

// Function to read from a specific address in the LCD
uint8_t read_lcd_address(uint8_t is_ddram, uint8_t address) {
    // Set address to read from
    if (is_ddram == 1) {
        lcdgotoaddr(address);
    } else {
        LCD_RS = 0;
        LCD_RW = 0;
        lcd_ptr = address;
        lcdbusywait();
    }

    // Set LCD to read mode
    LCD_RS = 1;
    LCD_RW = 1;

    // Return the value stored at the specified address
    return lcd_ptr;
}
void handler_lcd_hexdump(void)
{
    __critical{
        printf("\033[1;34m");                           // Set terminal color to blue
        save_cursor_address=get_cursor_address();       // Save the current cursor address
        printf("\n\rPrinting Hexdump of DDRAM\n\r");

        // Loop through DDRAM addresses and print hex values
        for(uint16_t k=0x00;k<=0x5F;k++){
            if(k%16 == 0){                              // Print new line and address every 16 bytes
                printf("\n\r0x%02x: ",k);
            }
            printf("0x%02x ",read_lcd_address(1,k));    // Read and print the value at the current address
        }

        printf("\n\r\n\rPrinting Hexdump of CGRAM\n\r");

        // Loop through CGRAM addresses and print hex values
        for(uint16_t k=0x40;k<=0x7F;k++){
            if(k%16 == 0){                              // Print new line and address every 16 bytes
                printf("\n\r0x%02x: ",k);
            }
            printf("0x%02x ",read_lcd_address(0,k));    // Read and print the value at the current address
        }

        printf("\n\r");
        lcdgotoaddr(save_cursor_address);               // Restore the original cursor position
        printf("\033[0m");                              // Reset terminal color to default
    }
}

unsigned char get_hex_value(void) {
    unsigned char digit1, digit2, hex_value;
    printf("\n\rEnter a hexadecimal value between (00 to 1F) or (40 to 58): ");

    while (1) {                         //loop until a valid input is entered
        digit1 = putchar(getchar());    //get first digit from input and display it
        digit2 = putchar(getchar());    //get second digit from input and display it

        //check if both digits are valid hexadecimal digits (0-9 or A-F)
        if (digit1 >= '0' && digit1 <= '9' && digit2 >= '0' && digit2 <= '9') {
            hex_value = ((digit1 - '0') << 4) | (digit2 - '0'); //convert the digits to a hexadecimal value
            break; //break the loop
        }
        //check if the first digit is valid and the second digit is a valid hexadecimal digit (A-F)
        else if ((digit1 == '0' || digit1 == '1' || digit1 == '4' || digit1 == '5') && (digit2 >= 'A' && digit2 <= 'F')) {
            hex_value = ((digit1 - '0') << 4) | (digit2 - '7'); //convert the digits to a hexadecimal value
            break; //break the loop
        }
        else {
            printf("\n\rInvalid input. ");      //display error message if input is invalid
        }
        printf("Please enter a valid input: "); //prompt user to enter a valid input
    }
    return hex_value;                           //return the hexadecimal value
}
void create_custom_char(unsigned char char_code, unsigned char row_values[]) {
    // Define some variables
    unsigned char bit_6 = 0x40;
    unsigned char code_num = char_code - '0';
    unsigned char bit_3_shift = code_num << 3;
    unsigned char char_num = bit_6 | bit_3_shift;

    // Print a message indicating which character has been created
    printf_tiny("\n\rThe custom character with code 0x%x has been created.", char_num);

    // Iterate over each row of the custom character
    int i = 0;
    while (i < 8) {
        // Set the RS and RW pins low
        LCD_RS = 0;
        LCD_RW = 0;
        // Set the LCD pointer to the appropriate memory location
        lcd_ptr = char_num + i;
        // Print the LCD pointer address for debugging purposes
        printf_tiny("\n\rLCD_ptr = %x", char_num + i);
        // Wait for the LCD to become available
        lcdbusywait();
        // Set the RS pin high and write the row value to the LCD memory
        LCD_RS = 1;
        LCD_RW = 0;
        lcd_ptr = row_values[i];
        lcdbusywait();
        // Increment the row counter
        i++;
    }
}

void handler_custom_char(void) {
    printf("\033[0;33m"); // Set text color to yellow

    // Get current cursor address and save it in a variable
    unsigned int save_address = get_cursor_address();

    printf_tiny("Please enter the code for the custom character: ");
    // Get the code for the custom character from the user
    unsigned char char_code = getchar();

    // Print the code of the custom character entered by the user
    printf_tiny("%c\n\r", char_code);

    // Initialize an array to store the values for the custom character rows
    unsigned char row_values[8];

    uint8_t j = 0;
    while (j < 8) { // Loop through each row of the custom character and get its value from the user
        printf_tiny("\n\rPlease enter the value for row %d: ", j);
        row_values[j] = get_hex_value();
        j++;
    }

    __critical { // Enter a critical section to prevent interruption
        // Call the function to create the custom character on the LCD
        create_custom_char(char_code, row_values);

        // Call the handler function for the LCD gotoxy command
        handler_lcdgotoxy();

        // Display the custom character on the LCD screen
        lcdputch(char_code - '0');

        // Move the cursor to the original position before the custom character was created
        lcdgotoaddr(save_address);
    }

    // Reset text color to default
    printf("\033[0m");
}

void handle_cu_custom_char(void)
{
    printf("\033[0;33m");                           // Set text color to yellow
    save_cursor_address = get_cursor_address();     // Get current cursor address and save it in a variable

    // Create custom character 1
    unsigned char ccode1 = '1';
    unsigned char row_vals1[8] = {0x00, 0x00, 0x0F, 0x08, 0x08, 0x09, 0x09, 0x09};
    __critical {
        create_custom_char(ccode1, row_vals1);      // Call function to create custom character on the LCD
        lcdgotoxy('1', '4');                        // Move cursor to position to display custom character 1
        lcdputch(ccode1 - '0');                     // Display custom character 1 on the LCD screen
    }

    // Create custom character 2
    unsigned char ccode2 = '2';
    unsigned char row_vals2[8] = {0x00, 0x00, 0x18, 0x00, 0x00, 0x02, 0x02, 0x02};
    __critical {
        create_custom_char(ccode2, row_vals2);      // Call function to create custom character on the LCD
        lcdgotoxy('1', '5');                        // Move cursor to position to display custom character 2
        lcdputch(ccode2 - '0');                     // Display custom character 2 on the LCD screen
        lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
    }

    // Create custom character 3
    unsigned char ccode3 = '3';
    unsigned char row_vals3[8] = {0x09, 0x09, 0x09, 0x0F, 0x01, 0x01, 0x00, 0x00};
    __critical {
        create_custom_char(ccode3, row_vals3);      // Call function to create custom character on the LCD
        lcdgotoxy('2', '4');                        // Move cursor to position to display custom character 3
        lcdputch(ccode3 - '0');                     // Display custom character 3 on the LCD screen
        lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
    }

    // Create custom character 4
    unsigned char ccode4 = '4';
    unsigned char row_vals4[8] = {0x02, 0x02, 0x02, 0x1A, 0x02, 0x1E, 0x00, 0x00};
    __critical {
        create_custom_char(ccode4, row_vals4);      // Call function to create custom character on the LCD
        lcdgotoxy('2', '5');                        // Move cursor to position to display custom character 4
        lcdputch(ccode4 - '0');                     // Display custom character 4 on the LCD screen
        lcdgotoaddr(save_cursor_address);           // Move the cursor back to the original position
    }

    printf("\033[0m");                              // Reset text color to default
}



// Function to handle a sad smiley custom character
void handle_sadsmiley_custom_char(void)
{
    // Set text color to yellow
    printf("\033[0;33m");

    // Save cursor address
    save_cursor_address = get_cursor_address();

    // Define custom character 1
    unsigned char ccode1 = '1';
    unsigned char row_vals1[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
    __critical {
        // Create custom character 1 with its code and row values
        create_custom_char(ccode1, row_vals1);
        // Move to position (1, 4) on the LCD and display custom character 1
        lcdgotoxy('1', '4');
        lcdputch(ccode1 - '0');
    }

    // Define custom character 2
    unsigned char ccode2 = '2';
    unsigned char row_vals2[8] = {0x1F, 0x1F, 0x11, 0x15, 0x11, 0x1F, 0x1F, 0x1F};
    __critical {
        // Create custom character 2 with its code and row values
        create_custom_char(ccode2, row_vals2);
        // Move to position (1, 5) on the LCD and display custom character 2
        lcdgotoxy('1', '5');
        lcdputch(ccode2 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 3
    unsigned char ccode3 = '3';
    unsigned char row_vals3[8] = {0x1F, 0x1F, 0x1F, 0x10, 0x1B, 0x1C, 0x1F, 0x1F};
    __critical {
        // Create custom character 3 with its code and row values
        create_custom_char(ccode3, row_vals3);
        // Move to position (2, 4) on the LCD and display custom character 3
        lcdgotoxy('2', '4');
        lcdputch(ccode3 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 4
    unsigned char ccode4 = '4';
    unsigned char row_vals4[8] = {0x1F, 0x1F, 0x1F, 0x01, 0x1B, 0x07, 0x1F, 0x1F};
    __critical {
        // Create custom character 4 with its code and row values
        create_custom_char(ccode4, row_vals4);
        // Move to position (2, 5) on the LCD and display custom character 4
        lcdgotoxy('2', '5');
        lcdputch(ccode4 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Reset text color to default
    printf("\033[0m");
}
void handle_lock_custom_char(void)
{
    // Define custom character 1
    unsigned char ccode1 = '1';
    unsigned char row_vals1[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
    __critical {
        // Create custom character 1 with its code and row values
        create_custom_char(ccode1, row_vals1);
        // Move to position (1, 4) on the LCD and display custom character 1
        lcdgotoxy('3', '7');
        lcdputch(ccode1 - '0');
    }

    // Define custom character 2
    unsigned char ccode2 = '2';
    unsigned char row_vals2[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
    __critical {
        // Create custom character 2 with its code and row values
        create_custom_char(ccode2, row_vals2);
        // Move to position (1, 5) on the LCD and display custom character 2
        lcdgotoxy('3', '8');
        lcdputch(ccode2 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 3
    unsigned char ccode3 = '3';
    unsigned char row_vals3[8] = {0x03, 0x04, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10};
    __critical {
        // Create custom character 3 with its code and row values
        create_custom_char(ccode3, row_vals3);
        // Move to position (2, 4) on the LCD and display custom character 3
        lcdgotoxy('2', '7');
        lcdputch(ccode3 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 4
    unsigned char ccode4 = '4';
    unsigned char row_vals4[8] = {0x18, 0x04, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01};
    __critical {
        // Create custom character 4 with its code and row values
        create_custom_char(ccode4, row_vals4);
        // Move to position (2, 5) on the LCD and display custom character 4
        lcdgotoxy('2', '8');
        lcdputch(ccode4 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

}

void handle_unlock_custom_char(void)
{
    // Define custom character 1
    unsigned char ccode1 = '1';
    unsigned char row_vals1[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
    __critical {
        // Create custom character 1 with its code and row values
        create_custom_char(ccode1, row_vals1);
        // Move to position (1, 4) on the LCD and display custom character 1
        lcdgotoxy('3', '7');
        lcdputch(ccode1 - '0');
    }

    // Define custom character 2
    unsigned char ccode2 = '2';
    unsigned char row_vals2[8] = {0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F};
    __critical {
        // Create custom character 2 with its code and row values
        create_custom_char(ccode2, row_vals2);
        // Move to position (1, 5) on the LCD and display custom character 2
        lcdgotoxy('3', '8');
        lcdputch(ccode2 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 3
    unsigned char ccode3 = '3';
    unsigned char row_vals3[8] = {0x18, 0x04, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01};
    // unsigned char row_vals3[8] = {0x03, 0x04, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10};
    __critical {
        // Create custom character 3 with its code and row values
        create_custom_char(ccode3, row_vals3);
        // Move to position (2, 4) on the LCD and display custom character 3
        lcdgotoxy('2', '6');
        lcdputch(ccode3 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 4
    unsigned char ccode4 = '4';
    //unsigned char row_vals4[8] = {0x18, 0x04, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01};
    unsigned char row_vals4[8] = {0x03, 0x04, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10};

    __critical {
        // Create custom character 4 with its code and row values
        create_custom_char(ccode4, row_vals4);
        // Move to position (2, 5) on the LCD and display custom character 4
        lcdgotoxy('2', '5');
        lcdputch(ccode4 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

}
void handle_newuser_custom_char(void)
{
    // Define custom character 1
    unsigned char ccode1 = '1';
    unsigned char row_vals1[8] = {0x00, 0x00, 0x07, 0x08, 0x10, 0x10, 0x10, 0x10};
    __critical {
        // Create custom character 1 with its code and row values
        create_custom_char(ccode1, row_vals1);
        // Move to position (1, 4) on the LCD and display custom character 1
        lcdgotoxy('3', '7');
        lcdputch(ccode1 - '0');
    }

    // Define custom character 2
    unsigned char ccode2 = '2';
    unsigned char row_vals2[8] = {0x00, 0x00, 0x1C, 0x02, 0x09, 0x1D, 0x09, 0x01};
    __critical {
        // Create custom character 2 with its code and row values
        create_custom_char(ccode2, row_vals2);
        // Move to position (1, 5) on the LCD and display custom character 2
        lcdgotoxy('3', '8');
        lcdputch(ccode2 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 3
    unsigned char ccode3 = '3';
    unsigned char row_vals3[8] = {0x00, 0x00, 0x00, 0x00, 0x03, 0x04, 0x04, 0x03};
    __critical {
        // Create custom character 3 with its code and row values
        create_custom_char(ccode3, row_vals3);
        // Move to position (2, 4) on the LCD and display custom character 3
        lcdgotoxy('2', '7');
        lcdputch(ccode3 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

    // Define custom character 4
    unsigned char ccode4 = '4';
    unsigned char row_vals4[8] = {0x00, 0x00, 0x00, 0x00, 0x18, 0x04, 0x04, 0x18};
    __critical {
        // Create custom character 4 with its code and row values
        create_custom_char(ccode4, row_vals4);
        // Move to position (2, 5) on the LCD and display custom character 4
        lcdgotoxy('2', '8');
        lcdputch(ccode4 - '0');
        // Return to the saved cursor address
        lcdgotoaddr(save_cursor_address);
    }

}

void print_author(void)
{
    // set text color to bright yellow and print author info
    printf_tiny("\033[1;33m\n\rAuthor Info Printed !!\r\n");

    // initialize a string with author name and lab info
    char * str;
    str = "Kiran Jojare    ESD Summer 2023 Lab 4           ";

    // critical section to prevent interruption while writing to LCD
    __critical
    {
        // move cursor to beginning of first line on LCD and print the string
        lcdgotoaddr(0x00);
        lcdputstr(str);

        // move cursor to beginning of first line on LCD (in case string is longer than display width)
        lcdgotoaddr(0x00);
    }
    return;
}



