#include <stdio.h>
#include <string.h>
#include <stm32f4xx_hal.h>
#include "main.h"
#include "usart.h"
#include "usb_device.h"
#include "gpio.h"

#include "UI.h"

#define CDC_TX_DATA_SIZE 65

extern uint8_t CDC_Transmit_FS(uint8_t* Buf, uint16_t Len);
//
//void print_UI(void)
//{
//
////    // Define UI options
////	char line[]  	= "+----------------------------+\n\r";
////    char header[] 	= "Fingerprint UI\n\r";
////    char enroll1[] 	= "E ->. Enroll fingerprint\n\r";
////    char enroll2[] 	= "F ->. Search fingerprint\n\r";
////    char enroll3[] 	= "G ->. Clear database\n\r";
////    char prompt[] 	= "Enter your choice: \n\r";
////
////    CDC_Transmit_FS((uint8_t*)line, sizeof(line));
////    HAL_Delay(1000);
////
////    CDC_Transmit_FS((uint8_t*)header, sizeof(header));
////    HAL_Delay(1000);
////    CDC_Transmit_FS((uint8_t*)line, sizeof(line));
////    HAL_Delay(1000);
////
////    CDC_Transmit_FS((uint8_t*)line, sizeof(line));
////    HAL_Delay(1000);
////    CDC_Transmit_FS((uint8_t*)enroll1, sizeof(enroll1));
////    HAL_Delay(1000);
////    CDC_Transmit_FS((uint8_t*)enroll2, sizeof(enroll2));
////    HAL_Delay(1000);
////    CDC_Transmit_FS((uint8_t*)enroll3, sizeof(enroll3));
////    HAL_Delay(1000);
////    CDC_Transmit_FS((uint8_t*)line, sizeof(line));
////    HAL_Delay(1000);
////
////    CDC_Transmit_FS((uint8_t*)prompt, sizeof(prompt));
////    HAL_Delay(1000);
////    CDC_Transmit_FS((uint8_t*)line, sizeof(line));
////    HAL_Delay(1000);
//
//	// Define UI options
//	char line[]     = "+----------------------------+\r\n";
//	char header[]   = "Fingerprint UI\r\n";
//	char enroll1[]  = "E ->. Enroll fingerprint\r\n";
//	char enroll2[]  = "F ->. Search fingerprint\r\n";
//	char enroll3[]  = "G ->. Clear database\r\n";
//	char prompt[]   = "Enter your choice: \r\n";
//
//	// Transmit UI options over UART
//	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)header, sizeof(header), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)enroll1, sizeof(enroll1), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)enroll2, sizeof(enroll2), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)enroll3, sizeof(enroll3), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)prompt, sizeof(prompt), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//	HAL_Delay(100);
//}

void print_UI(void)
{
    // Define UI options
    char line[]     = "+-------------------------------------------+\r\n";
    char header[]   = "|           Fingerprint Authentication       |\r\n";
    char enroll1[]  = "|                                            |\r\n";
    char enroll2[]  = "|  E -> Enroll Fingerprint                   |\r\n";
    char enroll3[]  = "|  F -> Search Fingerprint                   |\r\n";
    char enroll4[]  = "|  G -> Clear Database                       |\r\n";
    char enroll5[]  = "|  H -> Show Sensor Parameters               |\r\n";
    char enroll6[]  = "|  I -> Set LED On/Off Continuesly           |\r\n";
    char enroll7[]  = "|  J -> Set LED Colour                       |\r\n";
    char enroll8[]  = "|  K -> Update Security Level                |\r\n";
    char enroll9[]	= "|  L -> Verify Password                      |\r\n";
    char enroll10[]	= "|  M -> Set Password                         |\r\n";
    char enroll11[]	= "|  N -> Display No of fingerprints stored    |\r\n";
    char prompt[]   = "|  Enter your choice:                        |\r\n";

    // Transmit UI options over UART
    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)header, sizeof(header), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll1, sizeof(enroll1), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll2, sizeof(enroll2), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll3, sizeof(enroll3), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll4, sizeof(enroll4), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll5, sizeof(enroll5), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll6, sizeof(enroll6), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll7, sizeof(enroll7), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll8, sizeof(enroll8), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll9, sizeof(enroll9), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll10, sizeof(enroll10), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)enroll11, sizeof(enroll11), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt, sizeof(prompt), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_Delay(100);
}

