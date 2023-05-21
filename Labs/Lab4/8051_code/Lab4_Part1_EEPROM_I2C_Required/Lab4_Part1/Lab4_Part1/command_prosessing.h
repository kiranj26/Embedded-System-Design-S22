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
 * @file    command_processing.h
 * @brief   This file contains the implementation of command processing function with handler for each command
 * @details These functions are used to read and write characters and strings from user and perform required actions
 *
 * @author  Kiran Jojare
 * @date    April 13, 2023
 * @version 1.0
*/

#ifndef _COMM_PROCC_
#define _COMM_PROCC_

/**
 * @brief   Handler for reading data from EEPROM.
 * @details This function is used to read data from EEPROM and print it to UART console.
 * @param   void
 * @return  void
 */
void handler_rd_to_eeprom(void);

/**
 * @brief   Handler for writing data to EEPROM.
 * @details This function is used to write data to EEPROM.
 * @param   void
 * @return  void
 */
void handler_wr_to_eeprom(void);

/**
 * @brief   Converts character to integer value.
 * @details This function is used to convert character to integer value.
 * @param   temp The character to be converted to integer value.
 * @return  The integer value of the given character.
 */
uint8_t char_to_int(uint8_t temp);

/**
 * @brief   Handler for EEPROM hex dump.
 * @details This function is used to perform EEPROM hex dump and print it to UART console.
 * @param   void
 * @return  void
 */
void handler_EEPROM_hexdump(void);

/**
 * @brief   Perform EEPROM hex dump.
 * @details This function is used to perform EEPROM hex dump and print it to UART console.
 * @param   start_address The starting address of EEPROM to perform hex dump.
 * @param   end_address The end address of EEPROM to perform hex dump.
 * @return  void
 */
void EEPROM_hexump(uint16_t start_address, uint16_t end_address);

/**
 * @brief   Fill EEPROM with 0xFF.
 * @details This function is used to fill the EEPROM with 0xFF.
 * @param   void
 * @return  void
 */
void fill_EEPROM_with_ff(void);

#endif // _COMM_PROCC_
