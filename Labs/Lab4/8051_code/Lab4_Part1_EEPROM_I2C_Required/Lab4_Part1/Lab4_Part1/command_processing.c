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
 * @file    command_processing.c
 * @brief   This is the implementation file "command_processing.c" which contains functions for handling
 * commands related to I2C EEPROM. The functions included in this file are "handler_wr_to_eeprom" to write data to the EEPROM,
 * "handler_rd_to_eeprom" to read data from the EEPROM, "handler_EEPROM_hexdump" to dump the content of the EEPROM in hexadecimal
 * format, and "EEPROM_hexump" which is a helper function to print the content of EEPROM in hexadecimal format. These functions use
 * functions from other header files such as "string_func.h", "uart.h", and "i2c.h".
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
#include <string.h>
#include <mcs51/8051.h>

#include "command_prosessing.h"
#include "string_func.h"
#include "uart.h"
#include "i2c.h"

#define HEX_BASE        (16)
#define DIVIDE_BY_16    (16)
#define ASCII_MAX       (255)
#define ADDR_MAX        (2047)
#define ASCII_SPACE     (32)

void handler_wr_to_eeprom(void)
{
    uint16_t data_read = 0;
    uint16_t addr_read = 0;

    printf_tiny("\033[1;33m\n\rWriting to EEPROM !!\r\n");

    printf_tiny("\033[1;33m\n\rEnter Data to put into EEPROM\r\n\t");
    data_read = parse_user_input(HEX_BASE);

    // error checking
    if(data_read >= 0 && data_read <= ASCII_MAX)
    {
        // correct data range
    }
    else{
        printf("\033[1;31m\n\rInvalid Data Range!! \n\rData has to be between 0x00 to 0xFF \033[0m\r\n");
        return;
    }

    printf("\r\n");

    printf_tiny("\033[1;33m\n\rEnter Address to put into EEPROM\r\n");
    addr_read = parse_user_input(HEX_BASE );
    // error checking
    if(addr_read >= 0 && addr_read <= ADDR_MAX)
    {
        // correct address range
    }

    else{
        printf("\033[1;31m\n\rInvalid Address Range!!\n\rAddress has to be between 0x000 to 0x7FF\033[0m\r\n");
        return;
    }
    printf("\r\n");

    i2c_eeprom_write(addr_read,data_read);
    printf_tiny("\033[1;33m\n\rFinished writting to EEPROM !!\r\n");

}

void handler_rd_to_eeprom(void)
{
    __xdata uint16_t addr_read = 0;
    __xdata uint8_t byte_read1 = 0;
    printf_tiny("\033[1;33m\n\rReading from EEPROM !!\r\n");

    printf_tiny("\033[1;33m\n\rEnter Address to put into EEPROM\r\n");
    addr_read = parse_user_input(HEX_BASE );
    if(addr_read >= 0 && addr_read <= ADDR_MAX)
    {
        // correct address range
    }

    else{
        printf("\033[1;31m\n\rInvalid Adress Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
        return;
    }
    printf("\r\n");

    byte_read1 = i2c_eeprom_read(addr_read);
    printf_tiny("\033[1;33m\n\rReading from EEPROM Completed!!\r\n");
    printf("\n\rData = %x present at Location = 0%x \n\r",byte_read1,addr_read);

}


void EEPROM_hexump(uint16_t start_address, uint16_t end_address)
{
    printf_tiny("\033[1;34m\n\rI2C EEPROM DUMP!!\r\n");

    __xdata uint8_t count = 0, i = 0, temp_storage = 0, data_byte = 0;
    __xdata uint16_t address = start_address;

    while (address <= end_address) {
        if (count % DIVIDE_BY_16 == 0) {
            putchar('\n');
            putchar('\r');
            print_hex_number(address, 3);
            putchar(':');
        }
        putchar(ASCII_SPACE);//space
        data_byte = i2c_eeprom_read(address);
        print_hex_number(data_byte, 2);

        address++;
        count++;
    }
    printf("\033[0m\r\n");
    return;
}


void handler_EEPROM_hexdump(void)
{
    __xdata uint16_t start_addr = 0;
    printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
    start_addr = parse_user_input(HEX_BASE);

    if(start_addr >= 0 && start_addr <= ADDR_MAX)
    {
        // correct address range
    }
    else{
        printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
        return;
    }

    __xdata uint16_t end_addr = 0;

    printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
    end_addr = parse_user_input(HEX_BASE);

    if(end_addr >= 0 && end_addr <= ADDR_MAX)
    {
        // correct address range
    }
    else{
        printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
        return;
    }

    EEPROM_hexump(start_addr,end_addr);
}

 void fill_EEPROM_with_ff(void)
{
    uint16_t i;
    printf_tiny("\033[1;33m\n\rFlashing EEPROM with 0xFF data at all addresses!!\r\nPLEASE WAIT!!\n\r");

    for (i = 0x000; i <= 0x7FF; i++)
    {
        // small delay to avoid cooncurrency issues
        for(int j=0;j<1000;j++);
        i2c_eeprom_write(i, 0xFF);
    }
    printf_tiny("\033[1;33m\n\rEEPROM filled with 0xFF\r\n");

}

