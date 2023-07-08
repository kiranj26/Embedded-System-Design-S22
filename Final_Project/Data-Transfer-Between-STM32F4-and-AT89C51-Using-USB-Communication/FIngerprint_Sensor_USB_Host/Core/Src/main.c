/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "usart.h"
#include "usb_device.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stm32f4xx_hal_uart.h>

#include "UI.h"
#include "Fingerprint_Sensor_Library.h"
#include "STM32f411E_FlashMemory.h"

extern uint16_t status_reg;
extern uint16_t system_id;
extern uint16_t capacity;
extern uint16_t security_level;
extern uint16_t device_addr;
extern uint16_t packet_len;
extern uint16_t baud_rate;

extern uint8_t CDC_Transmit_FS(uint8_t* Buf, uint16_t Len);
extern int8_t CDC_Receive_FS(uint8_t* Buf, uint32_t *Len);
extern uint32_t theAddress;
extern uint32_t thePassword;
uint32_t flash_address = 0x08040000;
uint32_t flash_data = 0;
uint32_t fingerprint_count = 0;

void handler_enroll_PFS(void);
void handler_invalid_input_FPS(void);
void handler_FindFingerprint(void);
int8_t addFingerprint(uint8_t id);
void handler_ClearDataBase(void);
void handler_getTemplateCount(void);
void handler_setLED(void);
void handler_setColour(void);
void handler_updateSecurity(void);
void handler_verifyPassword(void);
void handler_setPassword(void);
void handler_countFingerprints(void);

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define LED_Pin GPIO_PIN_12
#define LED_GPIO_Port GPIOD
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
uint8_t add_fingerprint = 0;
uint8_t delete_database = 0;
uint8_t entry = 1;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */


/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  MX_USB_DEVICE_Init();
  MX_USART1_UART_Init();
  /* USER CODE BEGIN 2 */
  UART3_FINGER_Init();
  check_initial_status_flash();

  uint8_t prompt[] = "Hello AT89C51\n\r";
  HAL_UART_Transmit(&huart1, (uint8_t *)prompt, sizeof(prompt), HAL_MAX_DELAY);
  HAL_Delay(100);

  getParameter();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  if (entry == 1)
	  {
		  HAL_Delay(1000);
		  print_UI();
		  HAL_Delay(1000);
		  entry = 1;
	  }

	  uint8_t rxData;

	  // Wait until a character is received

	  while (HAL_UART_Receive(&huart1, &rxData, 1, HAL_MAX_DELAY) != HAL_OK);
	  HAL_UART_Transmit(&huart1, &rxData, 1, HAL_MAX_DELAY); 	// echo the received character
	  HAL_UART_Transmit(&huart1, "\r\n", 2, HAL_MAX_DELAY); 	// send newline and carriage return

	  char c = (char)rxData;

	  switch (c)
	  {
	      case 'E':
	      case 'e':
	          HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_SET);
	          handler_enroll_PFS();
	          break;

	      case 'F':
	      case 'f':

	          HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_RESET);
	          handler_FindFingerprint();
	          break;

	      case 'G':
	      case 'g':
	          handler_ClearDataBase();
	          break;

	      case 'H':
	      case 'h':
	    	  showParameter();
	    	  break;

	      case 'I':
	      case 'i':
	    	  handler_setLED();
	    	  break;

	      case 'J':
	      case 'j':
	    	  handler_setColour();
	    	  break;

	      case 'K':
	      case 'k':
	    	  handler_updateSecurity();
	    	  break;

	      case 'L':
	      case 'l':
	    	  handler_verifyPassword();
	    	  break;

	      case 'M':
	      case 'm':
	    	  handler_setPassword();
	    	  break;

	      case 'N':
	      case 'n':
	    	  handler_countFingerprints();
	    	  break;

	      default:
	          break;
	  }
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 192;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 8;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */


int8_t addFingerprint(uint8_t id)
{
	int8_t ret;
	if(verifyPassword() == 1 )
	{
		ret = fingerEnroll(id);
		if( ret == 0)
		{
			HAL_Delay(1000);
		}
		else
		{
			HAL_Delay(1500);
			return -1;
		}
	}
	return 0;
}


void handler_enroll_PFS(void)
{
	// Define UI options
	char line[]     = "+-------------------------------------------+\r\n";
	char prompt0[]   = "|           Enrolling FIngerprint           |\r\n";
	//char prompt0[] = "|     Enroll Fingerprint     |\r\n";
	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_Delay(100);
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt0, sizeof(prompt0), HAL_MAX_DELAY);
	HAL_Delay(100);
	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_Delay(100);

	// verify password
	uint8_t success_code = verifyPassword();
	if(success_code == 1)
	{
	    char prompt1[] = "Sensor Verified Successfully\r\n";
	    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
	    HAL_Delay(100);
	}
	else
	{
	    char prompt2[] = "Sensor Verification Failed. Incorrect Password!\r\n";
	    HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
	    HAL_Delay(100);
	    // break;
	}

	char prompt3[] = "Enter ID number of fingerprint to add:\r\n";
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
	HAL_Delay(100);

	uint8_t rxData;
	while (HAL_UART_Receive(&huart1, &rxData, 1, HAL_MAX_DELAY) != HAL_OK);

	char echo[3] = {rxData, '\r', '\n'};
	HAL_UART_Transmit(&huart1, (uint8_t *) echo, strlen(echo), HAL_MAX_DELAY);
	HAL_Delay(100);

	char prompt4[] = "Place Finger on Scanner\r\n";
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt4, sizeof(prompt4), HAL_MAX_DELAY);
	HAL_Delay(2000);

	int8_t ret = addFingerprint(rxData);
	if (ret == -1){
		char line1[]  	= "+-------------------------------------------+\r\n";
		char prompt5[]  = "|     Fingerprint Enrolled Successfully.    |\r\n";

		HAL_UART_Transmit(&huart1, (uint8_t*)line1, sizeof(line1), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt5, sizeof(prompt5), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)line1, sizeof(line1), HAL_MAX_DELAY);
		HAL_Delay(100);

		uint32_t flash_address = 0x08040000;

		// unlock the flash memory
		HAL_FLASH_Unlock();

		// read the current value from flash memory
		flash_data = *((__IO uint32_t *)flash_address);

		// increment the value
		flash_data++;

		// write the updated value back to flash memory
		HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, flash_address, flash_data);

		// lock the flash memory
		HAL_FLASH_Lock();



	}else
	{
		char line1[]  	= "+-------------------------------------------+\r\n";
		char prompt5[]  = "|         Fingerprint Enrolled Failed.      |\r\n";

		HAL_UART_Transmit(&huart1, (uint8_t*)line1, sizeof(line1), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt5, sizeof(prompt5), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)line1, sizeof(line1), HAL_MAX_DELAY);
		HAL_Delay(100);
	}
}

void handler_FindFingerprint(void)
{
	int8_t FPS_ID;

	FPS_ID = fingerIDSearch();

//	if (FPS_ID == -1 || FPS_ID == -2)
//	{
//		char prompt5[] = "Error in Detecting\r\n";
//		CDC_Transmit_FS((uint8_t*)prompt5, sizeof(prompt5));
//		HAL_Delay(100);
//	}
//	else
//	{
//
//		char prompt5[] = "Finger Detected\r\n";
//		CDC_Transmit_FS((uint8_t*)prompt5, sizeof(prompt5));
//		HAL_Delay(100);
//	}

}

void handler_invalid_input_FPS(void)
{
	char promt1[] = "Invalid Option\r\n";
	CDC_Transmit_FS((uint8_t*)promt1, sizeof(promt1));
	HAL_Delay(100);
}

//void handler_ClearDataBase(void)
//{
//	char line[]  	= "+----------------------------+\n\r";
//	char prompt1[] = "Clearing Database ............\r\n";
//	CDC_Transmit_FS((uint8_t*)line, sizeof(line));
//	HAL_Delay(100);
//	CDC_Transmit_FS((uint8_t*)prompt1, sizeof(prompt1));
//	HAL_Delay(100);
//
//
//	emptyDatabase();
//
//	char line1[]  	= "+----------------------------+\n\r";
//	char prompt2[] = "Database Cleared .............\r\n";
//	CDC_Transmit_FS((uint8_t*)prompt2, sizeof(prompt2));
//	HAL_Delay(100);
//	CDC_Transmit_FS((uint8_t*)line1, sizeof(line1));
//	HAL_Delay(100);
//
//}

//void handler_ClearDataBase(void)
//{
//	char line[]  	= "+----------------------------+\n\r";
//	char prompt1[] = "Clearing Database ............\r\n";
//	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//	HAL_Delay(100);
//	HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
//	HAL_Delay(100);
//
//
//	emptyDatabase();
//
//	char line1[]  	= "+----------------------------+\n\r";
//	char prompt2[] = "Database Cleared .............\r\n";
//	HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
//	HAL_Delay(100);
//	HAL_UART_Transmit(&huart1, (uint8_t*)line1, sizeof(line1), HAL_MAX_DELAY);
//	HAL_Delay(100);
//}

void handler_ClearDataBase(void)
{
	char line[]  	= "+-------------------------------------------+\r\n";
	char prompt1[]  = "|            Clearing Database              |\r\n";
	char prompt2[]  = "|             Database Cleared              |\r\n";
	char prompt3[]  = "|        Clearing database failed           |\r\n";


	// Transmit clearing message over UART
	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_Delay(100);
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
	HAL_Delay(100);
	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_Delay(100);

	// Clear database
	int8_t ret = emptyDatabase();
	if (ret != -1){
		// Transmit cleared message over UART
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);

		char command[] 	= "FPS Database Cleared\r\n";
		CDC_Transmit_FS((uint8_t*)command, sizeof(command));
		HAL_Delay(100);

		// clear flash memory for count
		HAL_FLASH_Unlock();
		flash_address = 0x08040000;
		while( (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD,flash_address,0)) != HAL_OK);
		HAL_FLASH_Lock();
	}
	else
	{
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);

		char command[] 	= "FPS Database Clearing Failed\r\n";
		CDC_Transmit_FS((uint8_t*)command, sizeof(command));
		HAL_Delay(100);
	}
}

void printCount(uint16_t count) {
    char line[] = "+-------------------------------------------+\r\n";
    char prompt1[40];
    sprintf(prompt1, "|          FPS Count = %u          |\r\n", count);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, strlen(prompt1), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
}

void printCountFailed() {
    char line[] = "+-------------------------------------------+\r\n";
    char prompt1[] = "|      Calculating count failed     |\r\n";
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, strlen(prompt1), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
}

void handler_setLED(void)
{

	char prompt[] = "Press 1 : To turn it ON\r\nPress 2 : To turn it OFF\n\r";
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt, sizeof(prompt), HAL_MAX_DELAY);
	HAL_Delay(100);
	uint8_t rxData;

	// Wait until a character is received
	while (HAL_UART_Receive(&huart1, &rxData, 1, HAL_MAX_DELAY) != HAL_OK);

	char line[]  	= "+-------------------------------------------+\r\n";
	char prompt1[]  = "|              LED Turned ON                |\r\n";
	char prompt2[]  = "|              LED Turned OFF               |\r\n";
	char prompt3[]  = "|             Operation Failed              |\r\n";


	char c = (char)rxData;
	int8_t ret ;
	switch (c)
	{
		case '1':
			//setLED(1);
			// fingerprintLEDOn();
//			ret = LEDcontrol_b(true);
//			if (ret == -1){
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//			}else
//			{
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//			}
			turnOnLED();
			break;

		case '2':
			//setLED(0);
			//fingerprintLEDOff();
//			ret = LEDcontrol_b(false);
//			if (ret == -1){
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//			}else
//			{
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
//				HAL_Delay(100);
//				HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
//				HAL_Delay(100);
//			}
			turnOffLED();
			break;

		default :
			break;

	}

}

void handler_setColour(void)
{
	// setColour(255, 0, 0); // turn the LED red
	// setColour(0, 255, 0); // turn the LED green
	// setColour(1, 2); // turn the LED blue

//	// red
//	setLEDColor(255, 0, 0);
//	HAL_Delay(100);
//
//	// green
//	setLEDColor(0, 255, 0);
//	HAL_Delay(100);

	// blue
	setLEDColor(0, 0, 255);
	HAL_Delay(100);

//	// pale yellow
//	setLEDColor(255, 255, 204);
//	HAL_Delay(100);

}
void handler_updateSecurity(void)
{
	char prompt[] = "Enter Security Level : \n\rAvailable Levels 1 to 3\nLevel 1\t(Lowest)\nLevel 2\t(Medium)\nLevel 3\t(Hard)";
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt, sizeof(prompt), HAL_MAX_DELAY);
	HAL_Delay(100);
	uint8_t rxData;

	// Wait until a character is received
	while (HAL_UART_Receive(&huart1, &rxData, 1, HAL_MAX_DELAY) != HAL_OK);

	char c = rxData;

	switch(c)
	{
	case '1':
		security_level = 1;
		setSecurityLevel(FINGERPRINT_SECURITY_LEVEL_1);
		break;
	case '2':
		security_level = 2;
		setSecurityLevel(FINGERPRINT_SECURITY_LEVEL_2);
		break;
	case '3':
		security_level = 3;
		setSecurityLevel(FINGERPRINT_SECURITY_LEVEL_3);
		break;

	default:
		break;

	}


	char uartBuf[100];
	char line[]  	= "\n\r+-------------------------------------------+\r\n";
	sprintf(uartBuf,  "| Updated Security Level: %d				   |\r\n", security_level);
	HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
}

void handler_verifyPassword(void)
{
	char line[]  	= "+-------------------------------------------+\r\n";
	char prompt1[]  = "|            Verifying Password              |\r\n";
	char prompt2[]  = "|             Password Verified              |\r\n";
	char prompt3[]  = "|        Password Verification Failed        |\r\n";


	// Transmit clearing message over UART
	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_Delay(100);
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
	HAL_Delay(100);
	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_Delay(100);

	uint8_t success_code = verifyPassword();
	if(success_code == 1)
	{
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);

	}else
	{
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
		HAL_Delay(100);
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_Delay(100);
	}
}

void handler_setPassword(void)
{
	char line[]  	= "+-------------------------------------------+\r\n";
	char prompt1[]  = "|            Setting New Password           |\r\n";
	char prompt2[]  = "|              New Password Set             |\r\n";
	char prompt3[]  = "|          Password Setting Failed          |\r\n";


	uint32_t address;
	char prompt[] = "Please enter a 16-bit address (in hex format e.g. 0x0000FF): \r\n";

	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
	HAL_UART_Transmit(&huart1, (uint8_t*)prompt, sizeof(prompt), HAL_MAX_DELAY);

	// Wait until a newline character is received
	uint8_t buf[2];
	for (int i = 0; i < 2; i++) {
		while (HAL_UART_Receive(&huart1, &buf[i], 1, HAL_MAX_DELAY) != HAL_OK);
	}

	// Convert received bytes to a uint16_t variable
	address = (buf[0] << 8) | buf[1];
	// address = 0;
	thePassword = address;

	// Echo back the received address to the user
	char echo[] = "You entered: 0x%0x\r\n";
	char echoBuf[30];
	sprintf(echoBuf, echo, address);
	HAL_UART_Transmit(&huart1, (uint8_t*)echoBuf, strlen(echoBuf), HAL_MAX_DELAY);

	uint8_t ret = setPassword(thePassword);
	if (ret == -1)
	{
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	}else
	{
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
		HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
		HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	}
}

void handler_countFingerprints(void)
{
	fingerprint_count = read_flash_memory();

	char line[]  	= "+-------------------------------------------+\r\n";
	char echo[] 	= "|          No of fingerprints [%d]          |\r\n";
	char echoBuf[30];
	sprintf(echoBuf, echo, fingerprint_count);

	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
	HAL_UART_Transmit(&huart1, (uint8_t*)echoBuf, strlen(echoBuf), HAL_MAX_DELAY);
	HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
