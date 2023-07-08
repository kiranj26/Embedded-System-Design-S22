#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stm32f4xx_hal.h>
#include <stm32f4xx_hal_flash.h>

#include "STM32f411E_FlashMemory.h"

extern uint32_t flash_address;
extern uint32_t fingerprint_count;

uint32_t read_flash_memory(void)
{
	HAL_FLASH_Unlock();
	uint32_t flash_data = *((__IO uint32_t *)flash_address);
	HAL_FLASH_Lock();
	return flash_data;
}

void write_flash_memory(uint32_t data)
{
	HAL_FLASH_Unlock();
	HAL_FLASH_Program(FLASH_TYPEPROGRAM_BYTE,flash_address,data);
	HAL_FLASH_Lock();
}

void check_initial_status_flash(void)
{

	flash_address = 0x08040000;
	HAL_FLASH_Unlock();
	uint32_t flash_data = *((__IO uint32_t *)flash_address);
	HAL_FLASH_Lock();

	if (flash_data == 0xFFFFFFFF)
	{
	    // If the first word in the user Flash area is 0xFFFFFFFF,
	    // then the fingerprint_store_count variable has not been written to Flash memory yet.
	    // Set the default value of the variable.
		fingerprint_count = 0;
		HAL_FLASH_Unlock();
		flash_address = 0x08040000;
		 HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD,flash_address,0);
		//*((__IO uint32_t *)flash_address) = 0x00000000;
		HAL_FLASH_Lock();
	}else
	{
	    // If the first word in the user Flash area is not 0xFFFFFFFF,
	    // then the fingerprint_store_count variable has already been written to Flash memory.
	    // Read the value from Flash memory.
		fingerprint_count = flash_data;
	}
}
