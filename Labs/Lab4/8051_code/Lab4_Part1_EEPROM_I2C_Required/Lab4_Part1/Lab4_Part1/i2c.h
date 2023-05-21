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
 * @file    i2c.h
 * @brief   This header file contains functions to control I2C communications.
 *          The functions provided here include sending start and stop bits,
 *          writing and reading bytes, and interacting with EEPROM memory.
 *          The I2C interface is defined by the two pins defined by I2C_SDA_PIN
 *          and I2C_SCL_PIN
 * @author  Kiran Jojare
 * @date    April 14, 2023
 * @version 1.0
 */
#ifndef _I2C_H_
#define _I2C_H_

#include <stdint.h>
#include "uart.h"
#include "at89c51ed2.h"
#include <mcs51reg.h>

#define I2C_SDA_PIN P1_6
#define I2C_SCL_PIN P1_5

#define I2C_MSB_MASK                (0x80)
#define I2C_DEVICE_ADDR_MASK        (0xA0)
#define I2C_DEVICE_ADDR_MASK_2      (0xAF)
#define I2C_READ_MASK               (0x01)
#define I2C_WRITE_MASK              (0xFE)
#define I2C_LSB_HIGH_MASK           (0x01)
#define I2C_LSB_LOW_MASK            (0xFE)


/**
 * @brief   This function flushes the I2C EEPROM
 *
 * @return  void
 */
void    i2c_eeprom_flush(void);


/**
 * @brief   This function sets the state of the SDA pin
 *
 * @param   value   The value to set the pin state to (0 or 1)
 *
 * @return  void
 */
void    i2c_sda(uint8_t value);


/**
 * @brief   This function sets the state of the SCL pin
 *
 * @param   value   The value to set the pin state to (0 or 1)
 *
 * @return  void
 */
void    i2c_scl(uint8_t value);


/**
 * @brief   This function sends a START condition on the I2C bus
 *
 * @return  void
 */
void    i2c_start(void);


/**
 * @brief   This function sends a STOP condition on the I2C bus
 *
 * @return  void
 */
void    i2c_stop(void);


/**
 * @brief   This function checks for an acknowledge signal from the slave device
 *
 * @return  void
 */
void    i2c_acknowledge_check();


/**
 * @brief   This function writes a byte of data to the I2C bus
 *
 * @param   data_byte   The byte of data to write
 *
 * @return  void
 */
void    i2c_write_byte(uint8_t data_byte);


/**
 * @brief   This function reads a byte of data from the I2C bus
 *
 * @return  The byte of data read from the bus
 */
uint8_t i2c_read_byte(void);
/**
 * @brief   Write a single byte of data to an I2C EEPROM
 *
 * This function writes a single byte of data to the I2C EEPROM at a given address.
 *
 * @param   address     the address of the byte to write, ranging from 0x0000 to 0x07FF
 * @param   data        the data byte to write
 *
 * @return  void
 */
void i2c_eeprom_write(uint16_t address, uint8_t data);

/**
 * @brief   Read a single byte of data from an I2C EEPROM
 *
 * This function reads a single byte of data from the I2C EEPROM at a given address.
 *
 * @param   address     the address of the byte to read, ranging from 0x0000 to 0x07FF
 *
 * @return  the data byte read from the EEPROM
 */
uint8_t i2c_eeprom_read(uint16_t address);

/**
 * @brief   Reset the I2C EEPROM to its default state
 *
 * This function resets the I2C EEPROM to its default state by clearing all data stored in it.
 *
 * @return  void
 */
void i2c_handler_eeprom_reset();


#endif // _I2C_H_

