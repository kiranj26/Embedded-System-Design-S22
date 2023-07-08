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
 * @file    lcd.h
 * @brief   This header file contains the implementation of LCD functionality
 * @details These functions are used to handle all the LCD functionality
 * @author  Kiran Jojare
 * @date    April 3, 2023
 * @version 1.0
*/
#ifndef _LCD_H_
#define _LCD_H_

/**
 * @brief   Delays execution for the specified number of milliseconds.
 * @param   milliseconds: The number of milliseconds to delay execution.
 * @return  void
 */
void delay(int milliseconds);

/**
 * @brief   Waits for the LCD to finish processing.
 * @details This function waits for the LCD to finish processing.
 * @return  void
 */
void lcdbusywait(void);

/**
 * @brief   Initializes the LCD.
 * @details This function initializes the LCD.
 * @return  void
 */
void init_lcd(void);

/**
 * @brief   Sets the time variables for the LCD display.
 * @details This function sets the time variables for the LCD display.
 * @return  void
 */
void set_time_variables(void);

/**
 * @brief   Gets the hexadecimal value of a character.
 * @details This function gets the hexadecimal value of a character.
 * @return  The hexadecimal value of the character.
 */
unsigned char get_hex_value(void);

/**
 * @brief   Sets the cursor to the specified address on the LCD.
 * @param   addr: The address to set the cursor to.
 * @return  void
 */
void lcdgotoaddr(unsigned char addr);

/**
 * @brief   Sets the cursor to the specified position on the LCD.
 * @param   row: The row to set the cursor to.
 * @param   column: The column to set the cursor to.
 * @return  void
 */
void lcdgotoxy(unsigned char row, unsigned char column);

/**
 * @brief   Creates a custom character on the LCD.
 * @param   char_code: The code for the custom character.
 * @param   row_values: An array of row values for the custom character.
 * @return  void
 */
void create_custom_char(unsigned char char_code, unsigned char row_values[]);

/**
 * @brief   Displays a character on the LCD.
 * @param   cc: The character to display.
 * @return  void
 */
void lcdputch(char cc);

/**
 * @brief   Displays a string on the LCD.
 * @param   ss: The string to display.
 * @return  void
 */
void lcdputstr(char *ss);

/**
 * @brief   Prints the author's name on the LCD.
 * @details This function prints the author's name on the LCD.
 * @return  void
 */
void print_author(void);

/**
 * @brief   Reads the address of the LCD.
 * @param   is_ddram: Indicates whether to read from the DDRAM or CGRAM.
 * @param   address: The address to read from.
 * @return  The value of the address.
 */
uint8_t read_lcd_address(uint8_t is_ddram, uint8_t address);

/**
 * @brief   Writes a character to the LCD.
 * @details This function writes a character to the LCD.
 * @return  void
 */
void handler_wr_c_lcd(void);

/**
 * @brief   Writes a string to the LCD.
 * @details This function writes a string to the LCD.
 * @return  void
 */
void handler_wr_str_lcd(void);

/**
 * @brief   Sets the cursor position on the LCD.
 * @details This function sets the cursor position on the LCD.
 * @return  void
 */
void handler_lcdgotoxy(void);

/**
 * @brief   Sets the cursor address on the LCD.
 * @details This function sets the cursor address on the LCD.
 * @return  void
 */
void handler_lcdgotoaddress(void);

/**
 * @brief   Clears the LCD.
 * @details This function clears the LCD.
 * @return  void
 */
void handler_lcdclear(void);
/**
 * @brief   Stops the timer and interrupts.
 * @details This function stops the timer and interrupts.
 */
void handler_stop_time(void);

/**
 * @brief   Resumes the timer and interrupts.
 * @details This function resumes the timer and interrupts.
 */
void handler_resume_time(void);

/**
 * @brief   Resets the timer and interrupts.
 * @details This function resets the timer and interrupts.
 */
void handler_reset_time(void);

/**
 * @brief   Dumps the contents of the LCD to the UART console.
 * @details This function dumps the contents of the LCD to the UART console.
 */
void handler_lcd_hexdump(void);

/**
 * @brief   Handles custom character creation.
 * @details This function handles custom character creation.
 */
void handler_custom_char(void);

/**
 * @brief   Handles custom character "CU" creation.
 * @details This function handles custom character "CU" creation.
 */
void handle_cu_custom_char(void);

/**
 * @brief   Handles custom character "sad smiley" creation.
 * @details This function handles custom character "sad smiley" creation.
 */
void handle_sadsmiley_custom_char(void);

/**
 * @brief   Handles custom character "lock" creation.
 * @details This function handles custom character "lock" creation.
 */
void handle_lock_custom_char(void);

/**
 * @brief   Handles custom character "unlock" creation.
 * @details This function handles custom character "unlock" creation.
 */
void handle_unlock_custom_char(void);

/**
 * @brief   Handles custom character "newuser" creation.
 * @details This function handles custom character "newuser" creation.
 */
void handle_newuser_custom_char(void);
/**
 * @brief   Checks for interrupts.
 * @details This function checks for interrupts.
 */
void ISR_Check(void);

/**
 * @brief   Processes interrupts.
 * @details This function processes interrupts.
 */
void ISR_Processing(void);

/**
 * @brief   Gets the cursor address.
 * @details This function gets the cursor address.
 * @return  The cursor address.
 */
uint8_t get_cursor_address();

#endif // _LCD_H_
