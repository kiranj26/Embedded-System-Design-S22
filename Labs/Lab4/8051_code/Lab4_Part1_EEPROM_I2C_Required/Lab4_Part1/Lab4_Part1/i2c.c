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
 * @file    i2c.c
 * @brief   The given code is for controlling I2C (Inter-Integrated Circuit) communication protocol,
 *          used for communication between microcontrollers, sensors, and other components.
 *          The file "i2c.c" contains functions to initialize, read from, and write to the I2C bus.
 *
 * @author  Kiran Jojare
 * @date    April 13, 2023
 * @version 1.0
*/

#include <stdio.h>
#include "i2c.h"

void i2c_clock_tick(void)
{
    // SCL high
    i2c_scl(1);
    // SCL low
    i2c_scl(0);
    return;
}

void i2c_sda(uint8_t value)
{
    // Set SDA pin to high or low based on the value passed
    I2C_SDA_PIN = (value == 1) ? 1 : 0;
}

void i2c_scl(uint8_t value)
{
    // Set SCL pin to high or low based on the value passed
    I2C_SCL_PIN = (value == 1) ? 1 : 0;
}

void i2c_acknowledge_check()
{
    // Generate clock tick and wait for SDA pin to go low
    i2c_clock_tick();
    while(I2C_SDA_PIN);
    return;

}
void no_acknowledge()
{
    // Generate a no-acknowledge signal by setting SDA to high during SCL high
    i2c_scl(0);
    i2c_sda(1);
    i2c_scl(1);
    i2c_sda(0);
    return;
}

void i2c_start(void)
{
    // Generate start signal by setting SDA high and then SCL high and low
    i2c_sda(1);
    i2c_scl(1);
    i2c_sda(0);
    i2c_scl(0);
    return;
}

void i2c_stop(void)
{
    // Generate stop signal by setting SDA low and then SCL high and low
    i2c_sda(0);
    i2c_scl(1);
    i2c_sda(1);
    i2c_scl(0);
    return;
}

void i2c_write_byte(uint8_t data_byte)
{
    // Write a byte to the I2C bus by writing each bit in sequence
    i2c_scl(0); // Set SCL to low
    for (uint8_t i = 0; i < 8; i++)
    {
        // Set SDA to either high or low depending on the current bit of the data_byte
        i2c_sda((data_byte & I2C_MSB_MASK) ? 1 : 0);
        // Toggle the clock signal
        i2c_clock_tick();
        // Shift data_byte to the left by 1 bit to get the next bit to be transmitted
        data_byte = data_byte << 1;
    }
    i2c_sda(0); // Set SDA to low
    return;
}



uint8_t i2c_read_byte(void)
{
    // Initialize byte_value to 0 and set SDA high
    uint8_t byte_value = 0;
    i2c_sda(1);

    // Initialize bit_position to 0 and read each bit in sequence
    uint8_t bit_position = 0;
    while (bit_position < 8)
    {
        // Set SCL high and shift byte_value to the left by 1 bit
        i2c_scl(1);
        byte_value = byte_value << 1;

        // Read the bit from SDA and set the corresponding bit in byte_value
        if(I2C_SDA_PIN)
        {
            byte_value |= I2C_LSB_HIGH_MASK;
        }
        else
        {
            byte_value &= I2C_LSB_LOW_MASK;
        }

        // Set SCL low and increment bit_position
        i2c_scl(0);
        bit_position++;
    }

    // Return the byte_value read
    return byte_value;
}


void i2c_eeprom_write(uint16_t address,uint8_t data_byte)
{
    uint8_t address_LSB=0,address_MSB=0;

    // Extracting least significant byte of address
    address_LSB = (uint8_t) address;
    // Shifting address to right by 7 bits to get most significant byte
    address = address >> 7;
    // Extracting most significant byte of address
    address_MSB = (uint8_t) address;
    // Adding device address mask to most significant byte
    address_MSB |= I2C_DEVICE_ADDR_MASK;
    // Clearing bits not required for write operation
    address_MSB &= I2C_DEVICE_ADDR_MASK_2;
    address_MSB &= I2C_WRITE_MASK;

    // Initiating I2C start condition
    i2c_start();
    // Writing most significant byte of address to I2C bus
    i2c_write_byte(address_MSB);
    // Checking for acknowledge response
    i2c_acknowledge_check();
    // Writing least significant byte of address to I2C bus
    i2c_write_byte(address_LSB);
    // Checking for acknowledge response
    i2c_acknowledge_check();
    // Writing data byte to I2C bus
    i2c_write_byte(data_byte);
    // Checking for acknowledge response
    i2c_acknowledge_check();
    // Initiating I2C stop condition
    i2c_stop();

    return;
}

uint8_t i2c_eeprom_read(uint16_t address)
{
    uint8_t address_LSB=0,address_MSB=0,data_value=0;
    // Extracting least significant byte of address
    address_LSB = (uint8_t) address;
    // Shifting address to right by 7 bits to get most significant byte
    address = address >> 7;
    // Extracting most significant byte of address
    address_MSB = (uint8_t) address;
    // Adding device address mask to most significant byte
    address_MSB |= I2C_DEVICE_ADDR_MASK;
    // Clearing bits not required for read operation
    address_MSB &= I2C_DEVICE_ADDR_MASK_2;
    address_MSB &= I2C_WRITE_MASK;

    // Initiating I2C start condition
    i2c_start();
    // Writing most significant byte of address to I2C bus
    i2c_write_byte(address_MSB);
    // Checking for acknowledge response
    i2c_acknowledge_check();
    // Writing least significant byte of address to I2C bus
    i2c_write_byte(address_LSB);
    // Checking for acknowledge response
    i2c_acknowledge_check();
    // Changing device address to read mode
    address_MSB |= I2C_READ_MASK;
    // Initiating I2C start condition to switch from write to read mode
    i2c_start();
    // Writing modified device address to I2C bus
    i2c_write_byte(address_MSB);
    // Checking for acknowledge response
    i2c_acknowledge_check();
    // Reading data byte from I2C bus
    data_value = i2c_read_byte();
    // Sending no acknowledge response to I2C bus
    no_acknowledge();
    // Initiating I2C stop condition
    i2c_stop();

    return data_value;
}

void i2c_handler_eeprom_reset()
{
    uint8_t i=0;
    // Send a START condition on the I2C bus
    i2c_start();
    for(i=0;i<9;i++)    // Send 9 clock ticks with SDA high
    {
        // Set SDA line high
        i2c_sda(1);
        // Generate a clock tick
        i2c_clock_tick();
    }
    // Send a STOP condition on the I2C bus
    i2c_stop();
    return;
}

