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

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "stm32f4xx.h"

#include "UART.h"
#include "clock.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define BUFFER_SIZE 5016
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
volatile char rx_data[BUFFER_SIZE];
volatile char tx_data[BUFFER_SIZE];
volatile int rx_data_head = 0;
volatile int rx_data_tail = 0;
volatile int tx_data_tail = 0;
volatile int tx_data_head = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void USART2_IRQHandler(void);
void print_received_chars();
int putchar(int ch);
int _write(int file, char *data, int len);

void Error_Handler(void);

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
  /* USER CODE BEGIN 2 */
  Clock_Init();
  UART_Init();

  printf("*******************************************************\r\n");
  printf("              Firmware Program Information             \r\n");
  printf("*******************************************************\r\n\r\n");
  printf("This firmware program is designed for a microcontroller and enables communication between the microcontroller and another device by setting up the USART2 module.\r\n\r\n");
  printf("In addition to setting up the communication module, the program also initializes the UART and the green LED. It sets up the system clock and includes an interrupt handler for receiving and transmitting data.\r\n\r\n");
  printf("Here's a brief breakdown of what the main function and other functions in the program do:\r\n\r\n");
  printf("  - main function: initializes the UART and the green LED, then enters an infinite loop.\r\n");
  printf("  - UART_Init function: initializes the USART2 module and sets up the GPIO pins for transmitting and receiving data.\r\n");
  printf("  - CLock_Init function: sets up the system clock.\r\n");
  printf("  - USART2_IRQHandler function: interrupt handler for receiving and transmitting data.\r\n\r\n");
  printf("The program uses two buffers of size 128 bytes each for transmitting and receiving data, and the variables rx_head and tx_head are used to keep track of the next available location in the receive and transmit buffers, respectively. The rx_tail and tx_tail variables are used to keep track of the next location to be read from the receive and transmit buffers.\r\n\r\n");
  printf("********************************************************\r\n");

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */
	print_received_chars();
    /* USER CODE BEGIN 3 */
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
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/**
 * @brief  Handles interrupts for the USART2 module
 * @note   Receives and transmits data using the USART2 peripheral
 * @param  None
 * @retval None
 */

void USART2_IRQHandler(void) {
    uint32_t interrupt_flags = USART2->SR; 			// read status register to get interrupt flags

    // while there are still interrupts to handle
    while (interrupt_flags & (USART_SR_RXNE | USART_SR_TXE)) {
        if (interrupt_flags & USART_SR_RXNE) { 		// if interrupt is for receive buffer not empty
            if (rx_data_head < BUFFER_SIZE) { 		// if there is still space in receive buffer
                rx_data[rx_data_head++] = USART2->DR; // read data register and store received character in receive buffer
            }
            interrupt_flags &= ~USART_SR_RXNE; 		// clear receive interrupt flag
        }

        if (interrupt_flags & USART_SR_TXE) { 		// if interrupt is for transmit buffer empty
            if (tx_data_tail < tx_data_head) { 		// if there is still data to send
                USART2->DR = tx_data[tx_data_tail++]; // write data from transmit buffer to data register
            } else { 								// otherwise, all data has been sent
                tx_data_tail = tx_data_head = 0; 	// reset transmit buffer pointers
                USART2->CR1 &= ~USART_CR1_TXEIE; 	// disable transmit interrupt
            }
            interrupt_flags &= ~USART_SR_TXE; 		// clear transmit interrupt flag
        }
    }
}


/**
 * @brief  Writes a character to the transmit buffer for sending over UART
 * @note   If buffer is full, returns EOF
 * @param  ch: character to send
 * @retval Character sent or EOF if buffer full
 */

int putchar(int ch) {
    if (tx_data_head >= BUFFER_SIZE) {
        return EOF; 						// Buffer full, cannot put character
    }

    tx_data[tx_data_head] = ch; 			// add character to transmit buffer
    tx_data_head++; 						// increment buffer head pointer

    if (!(USART2->CR1 & USART_CR1_TXEIE)) { // if transmit interrupt is not enabled
        USART2->CR1 |= USART_CR1_TXEIE; 	// enable transmit interrupt
    }

    return ch; // return character
}

/**
 * @brief  Writes data to the transmit buffer for sending over UART
 * @note   If buffer is full, writes as much data as possible
 * @param  file: file identifier
 * @param  data: pointer to data buffer
 * @param  len: length of data buffer
 * @retval Number of bytes written to buffer
 */

int _write(int file, char *data, int len) {
    int i = 0;

    while (i < len && tx_data_head < BUFFER_SIZE) { // while there is still data to send and buffer is not full
        tx_data[tx_data_head++] = data[i++]; 		// add character to transmit buffer
    }

    if (!(USART2->CR1 & USART_CR1_TXEIE)) { 		// if transmit interrupt is not enabled
        USART2->CR1 |= USART_CR1_TXEIE; 			// enable transmit interrupt
    }

    return i; // return number of characters written
}


/**
 * @brief  Prints any received characters in the receive buffer
 * @note   Disables interrupts to prevent race conditions
 * @param  None
 * @retval None
 */

void print_received_chars() {
    // Disable interrupts to prevent race conditions
    __disable_irq();

    // Print any new characters in the buffer
    while (rx_data_tail < rx_data_head) { 			// while there is still data in the receive buffer
        char input_char = rx_data[rx_data_tail++]; 	// read character from receive buffer
        putchar(input_char); 						// print character to console
    }

    // Reset buffer if tail caught up with head
    if (rx_data_tail == rx_data_head) { 			// if buffer tail pointer has caught up with buffer head pointer
        rx_data_tail = rx_data_head = 0; 			// reset buffer pointers
    }

    // Re-enable interrupts
    __enable_irq();
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
