/*****************************************************************************
* Copyright (C) 2023 by Kiran Jojare
*
* Redistribution, modification or use of this software in source or binary
* forms is permitted as long as the files maintain this copyright. Users are
* permitted to modify this and use it to learn about the field of embedded
* software. Kiran Jojare and the University of Colorado are not liable for
* any misuse of this material.
*
*****************************************************************************/
/**
* @file_name    min.c
* @intorduction This is a basic code in C for the 8051 microcontroller.
 * It uses two infinite loops to blink an LED connected to Port 1 Pin 1 of the microcontroller board.
 * In this code, a delay of 4000 cycles is used to control the blinking speed of the LED.
 *
* @author Kiran
* @date March 2 2023
* @version 1.0
 *
 */


#include <mcs51/8051.h>

void main(){

int i = 0;   //Declare an integer variable i and initialize it to 0
while(1)    //Infinite loop
{
    P1_1 = 1;   //Set Port 1 Pin 1 as high (LED ON)
    for (i = 0; i < 4000; i++)  //Delay loop to control blinking speed
    {
        ;   //Empty loop to create delay
    }
    P1_1 = 0;   //Set Port 1 Pin 1 as low (LED OFF)
    for (i = 0; i < 4000; i++)  //Delay loop to control blinking speed
    {
        ;   //Empty loop to create delay
    }
}
}
