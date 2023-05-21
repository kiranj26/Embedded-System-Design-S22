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
 * @brief
 * @author  Kiran Jojare
 * @date    March 3, 2023
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

#include "high_speed_out.h"
#include "string_func.h"
#include "pwm.h"
#include "clock.h"
#include "wakeup.h"

/**
 * @brief Initializes external startup routine
 *
 * This code defines a function called _sdcc_external_startup() that performs
 * some initialization or startup routine, likely for a microcontroller or embedded
 * system. The function updates the value of the "AUXR" register and returns 0.
 *
 * @return 0
 */


_sdcc_external_startup()
{
    // Update value of "AUXR" register with bitwise OR operation
    AUXR |= (XRS1 | XRS0);

    // Return integer value 0 to indicate successful initialization
    return 0;
}

/**
 * @brief Initializes AT89C51 for clock, SCON, Interrupt TCON and baud rate of 9600
 * @return 0
 */
void hardware_init(void)
{
    CKCON0 |= (1 << 0);     // Set bit X2 to 1
    IEN0   |= (1 << 7);     // Set bit EA to 1

    TMOD |= (1 << 5);                        //TIMER 1, MODE 2
    SCON |= ((1 << 4) | (1 << 6));           //8 BIT, 1 STOP , REN ENABLED
    TCON |= (1 << 6); 	                     //START TIMER1

    TH1 = 0xFD;             // Reload Value = 256 - (9600 / 32 / 12) = 253 for Baud Rate - 9600
    TI = 1;                 // Sets the bit 1 of the SCON register to 1
}

volatile bool is_ucontroller_active = true;

int main(void)
{
    __xdata char char_detected;

    hardware_init();

    // Display UI options
    printf_tiny("\033[1;35m\n\r|***********************************************|\n\r");
    printf_tiny("|****** \033[1;36mUSER INTERFACE Lab 3 Supplimental \033[1;35m******|\n\r");
    printf_tiny("|  Choose a character from the below options    |\n\r");
    printf_tiny("|  \033[1;35mR\033[1;35m    | Run PWM Timer (33% Duty Cycle)        |\n\r");
    printf_tiny("|  \033[1;35mS\033[1;35m    | Stop PWM Timer                        |\n\r");
    printf_tiny("|  \033[1;35mH\033[1;35m    | High Speed Output                     |\n\r");
    printf_tiny("|  \033[1;35mM\033[1;35m    | Min Fclkperph frequency               |\n\r");
    printf_tiny("|  \033[1;35mN\033[1;35m    | Max Fclkperph frequency               |\n\r");
    printf_tiny("|  \033[1;35mI\033[1;35m    | Enter IDLE mode                       |\n\r");
    printf_tiny("|  \033[1;35mP\033[1;35m    | Enter POWERDOWN mode                  |\n\r");
    printf_tiny("\033[1;35m|***********************************************|\n\r");
    printf_tiny("|***********************************************|\n\r\n\r");


    while(1) // it should come back to enter character
    {
                /* Print header for character fetching */
                printf_tiny("\033[1;36m|***********************************************|\n\r");
                printf_tiny("\033[1;36m|                Enter Character                |\n\r");
                printf_tiny("\033[1;36m|***********************************************|\n\r\033[1;0m");

                /* Fetching Characters */
                char_detected = getchar();              // Read a character from input
                putchar(char_detected);                 // Echo the character back to output
                putchar(' ');                           // Add a space to separate characters for readability

                switch(char_detected)
                {
                    case 'R':
                        start_pwm(); // this we did first
                    break;

                    case 'S':
                        stop_pwm();
                    break;

                    case 'H':
                        start_high_speed_output();
                    break;

                    case 'J':
                        stop_high_speed_output();
                    break;

                    case 'M':
                        fclk_periph_min_freq();
                    break;

                    case 'N':
                        fclk_periph_max_freq();
                    break;

                    case 'I':
                        ucontroller_idle_mode();
                        powerdown_idle_wakeup();
                    break;

                    case 'P':
                        ucontroller_power_down_mode();
                        powerdown_idle_wakeup();

                    break;

                     case 'W':
                        printf_tiny("\033[1;31mWATCHDOG Activated!!\n\r");
                        watchdog_init();
                    break;

                    default:
                        printf_tiny("\033[1;31mInvalid Character!!\n\r");
                        printf_tiny("\033[1;31mSuggested Action\t: Available Characters R-S-H-M-N-I_P!!\n\r");
                    break;
                }
        }
}

