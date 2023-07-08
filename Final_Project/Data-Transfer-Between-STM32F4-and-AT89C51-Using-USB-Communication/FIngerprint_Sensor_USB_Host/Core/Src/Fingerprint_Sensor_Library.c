#include "stdio.h"
#include <stdbool.h>
#include <string.h>
#include "main.h"
#include "usart.h"
#include "usb_device.h"
#include "gpio.h"
#include <string.h>
#include <stdio.h>
#include <math.h>

#include "Fingerprint_Sensor_Library.h"

extern uint8_t CDC_Transmit_FS(uint8_t* Buf, uint16_t Len);
extern int8_t CDC_Receive_FS(uint8_t* Buf, uint32_t *Len);

UART_HandleTypeDef uartFinger;

uint16_t fingerID, confidence;
uint8_t recvPacket[20];

uint32_t thePassword = 0;
uint32_t theAddress = 0xFFFFFFFF;

uint16_t status_reg 	= 0;
uint16_t system_id 		= 0;
uint16_t capacity 		= 0;
uint16_t security_level = 0;
uint16_t device_addr 	= 0;
uint16_t packet_len 	= 0;
uint16_t baud_rate 		= 0;

// Command to retrieve the number of fingerprints stored in the module
const uint8_t CMD_GET_FP_COUNT[] = {0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x07, 0x13, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x5E};



void UART3_FINGER_Init(void)
{
	uartFinger.Instance = USART2;
	uartFinger.Init.BaudRate = 57600;
	uartFinger.Init.WordLength = UART_WORDLENGTH_8B;
	uartFinger.Init.StopBits = UART_STOPBITS_1;
	uartFinger.Init.Parity = UART_PARITY_NONE;
	uartFinger.Init.Mode = UART_MODE_TX_RX;
	uartFinger.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	uartFinger.Init.OverSampling = UART_OVERSAMPLING_16;
	if (HAL_UART_Init(&uartFinger) != HAL_OK)
	{
		Error_Handler();
	}

}

int8_t writeRegister(uint8_t regAdd, uint8_t value)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_WRITE_REG, regAdd,value};
	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, 5, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

int8_t setSecurityLevel(uint8_t level)
{
	int8_t ret = writeRegister(FINGERPRINT_SECURITY_REG_ADDR, level);
	return ret;
}

int8_t setBaudRate(uint8_t baudrate)
{
	int8_t ret = writeRegister(FINGERPRINT_BAUD_REG_ADDR, baud_rate);
	return ret;
}
int8_t setPacketLength(uint8_t size)
{
	int8_t ret = writeRegister(FINGERPRINT_PACKET_REG_ADDR, size);
	return ret;
}

void writePacket(uint32_t addr, uint8_t packettype, uint16_t len, uint8_t *packet)
{
	uint16_t sum;
	uint8_t i;

	uint8_t startcodeH = FINGERPRINT_STARTCODE >> 8;
	uint8_t startcodeL = FINGERPRINT_STARTCODE&0xff;
	uint8_t addr1 = addr >> 24;
	uint8_t addr2 = addr >> 16;
	uint8_t addr3 = addr >> 8;
	uint8_t addr4 = addr&0xff;
	uint8_t lenH = len>>8;
	uint8_t lenL = len&0xff;

	HAL_UART_Transmit(&uartFinger, &startcodeH, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &startcodeL, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &addr1, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &addr2, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &addr3, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &addr4, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &packettype, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &lenH, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &lenL, 1, DEFAULTTIMEOUT);

	sum = (len>>8) + (len&0xff) + packettype;
	uint8_t packet_int8;
	for (i=0; i< len-2; i++) {
		packet_int8 = packet[i];
		HAL_UART_Transmit(&uartFinger, &packet_int8, 1, DEFAULTTIMEOUT);
		sum += packet[i];
	}

	uint8_t sumH = sum>>8;
	uint8_t sumL = sum&0xff;
	HAL_UART_Transmit(&uartFinger, &sumH, 1, DEFAULTTIMEOUT);
	HAL_UART_Transmit(&uartFinger, &sumL, 1, DEFAULTTIMEOUT);
}

uint8_t getReply(uint8_t packet[])
{
	uint8_t reply[20], idx, i, packettype;
	uint16_t len;
	idx = 0;

	while (1)
	{
		//cho RX san sang
		while (uartFinger.RxState != HAL_UART_STATE_READY) {}
		//nhan packet tu cam bien van tay
		HAL_UART_Receive(&uartFinger, &reply[idx], 1, DEFAULTTIMEOUT);
		if ((idx == 0) && (reply[0] != (FINGERPRINT_STARTCODE >> 8)))
			continue;
		idx++;

		// kiem tra packet!
		if (idx >= 9) {
			if ((reply[0] != (FINGERPRINT_STARTCODE >> 8)) ||
					(reply[1] != (FINGERPRINT_STARTCODE & 0xFF)))
				return FINGERPRINT_BADPACKET;

			packettype = reply[6];
			len = reply[7];

			len <<= 8;
			len |= reply[8];
			len -= 2;

			if (idx <= (len+10)) continue;
			packet[0] = packettype;
			for (i=0; i<len; i++) {
				packet[1+i] = reply[9+i];
			}
			return len;
		}
	}
}

uint8_t verifyPassword(void)
{
	uint8_t len;

	uint8_t packet[] = {FINGERPRINT_VERIFYPASSWORD,
			(thePassword >> 24), (thePassword >> 16),
			(thePassword >> 8), thePassword};

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, 7, packet);
	len = getReply(recvPacket);

	if ((len == 1) && (recvPacket[0] == FINGERPRINT_ACKPACKET) && (recvPacket[1] == FINGERPRINT_OK))
		return 1;

	return 0;
}

uint8_t setPassword(uint32_t password)
{
//	uint8_t len;
//
//	uint8_t packet[] = {FINGERPRINT_VERIFYPASSWORD,
//			(thePassword >> 24), (thePassword >> 16),
//			(thePassword >> 8), thePassword};
//
//	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, 7, packet);
//	len = getReply(recvPacket);
//
//	if ((len == 1) && (recvPacket[0] == FINGERPRINT_ACKPACKET) && (recvPacket[1] == FINGERPRINT_OK))
//		return 1;
//
//	return 0;
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_SETPASSWORD, (uint8_t)(password >> 24),
            (uint8_t)(password >> 16), (uint8_t)(password >> 8),
            (uint8_t)(password & 0xFF)};

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

int8_t getImage(void)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_GETIMAGE};
	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, 3, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

int8_t image2Tz(uint8_t slot)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_IMAGE2TZ, slot};

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

int8_t createModel(void)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_REGMODEL};

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

int8_t storeModel(uint16_t id)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_STORE, 0x02, 0, 0};
	packet[2] = id >> 8;
	packet[3] = id & 0xFF;

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

int8_t deleteModel(uint16_t id)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_DELETE, id >> 8, id & 0xFF, 0x00, 0x01};
	packet[1] = id >> 8;
	packet[2] = id & 0xFF;

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

int8_t emptyDatabase(void)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_EMPTY};

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;
	return recvPacket[1];
}

void printFingerID(uint16_t fingerID, uint16_t confidence) {
    char line[] = "+-------------------------------------------+\r\n";
    char prompt1[80];
    char prompt2[80];
    sprintf(prompt1, "|          Finger ID:  %c                    |\r\n", (char)fingerID);
    sprintf(prompt2, "|          Confidence: %d                    |\r\n", confidence);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, strlen(prompt1), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, strlen(prompt2), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
}

void printFailed() {
    char line[] = "+-------------------------------------------+\r\n";
    char prompt1[] = "|      Failed to find fingerprint template  |\r\n";
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, strlen(prompt1), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, strlen(line), HAL_MAX_DELAY);
}


int8_t fingerFastSearch(void)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_HISPEEDSEARCH, 0x01, 0x00, 0x00, 0x00, 0xA3};

	fingerID = 0xFFFF;
	confidence = 0xFFFF;

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
		return -1;

	fingerID = recvPacket[2];
	fingerID <<= 8;
	fingerID |= recvPacket[3];

	confidence = recvPacket[4];
	confidence <<= 8;
	confidence |= recvPacket[5];

	if (fingerID == 0xFFFF)
	{
		printFailed();
		return -1;
	}
	else
	{
		printFingerID(fingerID, confidence);


		if(security_level == 0)
		{
			// security level 0 check
			if (confidence <= 50 )
			{
			    char line[]      = "+-------------------------------------------+\r\n";
			    char prompt1[]   = "|        Week Confidence for Level 0        |\r\n";
			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);
			    return -1;
			}

		}else if (security_level == 1)
		{
			// security level 2 check
			if (confidence <= 75 )
			{
			    char line[]      = "+-------------------------------------------+\r\n";
			    char prompt1[]   = "|        Week Confidence for Level 1        |\r\n";
			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);
			    return -1;
			}

		}else if (security_level == 2)
		{
			// security level 2 check
			if (confidence <= 100 )
			{
			    char line[]      = "+-------------------------------------------+\r\n";
			    char prompt1[]   = "|        Week Confidence for Level 2        |\r\n";
			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);
			    return -1;
			}

		}else
		{
			// security level 3 check
			if (confidence <= 125 )
			{
			    char line[]      = "+-------------------------------------------+\r\n";
			    char prompt1[]   = "|        Week Confidence for Level 3        |\r\n";
			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
			    HAL_Delay(100);

			    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
			    HAL_Delay(100);
			    return -1;
			}

		}
		return recvPacket[1];
	}

	//return recvPacket[1];
}

int8_t fingerEnroll(uint8_t id)
{
    char line[]      = "+-------------------------------------------+\r\n";
    char prompt1[]   = "|          Enrolling Fingerprint            |\r\n";
    char prompt2[]   = "To confirm fingerprint put your finger again\r\n";
    char prompt3[]   = "Converted fingerprint to image\r\n";
    char prompt4[]   = "Created image model\r\n";
    char prompt5[]   = "Fingerprint captured converting to image\r\n";
    char prompt6[]   = "Stored fingerprint image in data base\r\n";
    char prompt7[]   = "Failed to store fingerprint into data base\r\n";
    char prompt8[]   = "Error in image conversion\r\n";
    char prompt9[]   = "Error in model creation\r\n";

    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
    HAL_Delay(100);

    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_Delay(100);

    int8_t p = -1;
    while (p != FINGERPRINT_OK)
    {
        p = getImage();
    }

    p = image2Tz(1);
    if(p != FINGERPRINT_OK)
    {
        HAL_UART_Transmit(&huart1, (uint8_t*)prompt8, sizeof(prompt8), HAL_MAX_DELAY);
        HAL_Delay(100);
        return 0;
    }

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt5, sizeof(prompt5), HAL_MAX_DELAY);
    HAL_Delay(100);
    HAL_Delay(1000);

    p = -1;
    while (p != FINGERPRINT_NOFINGER)
    {
        p = getImage();
    }

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
    HAL_Delay(100);

    p = -1;
    while (p != FINGERPRINT_OK) {
        p = getImage();
    }

    p = image2Tz(2);
    if(p != FINGERPRINT_OK)
    {
        HAL_UART_Transmit(&huart1, (uint8_t*)prompt8, sizeof(prompt8), HAL_MAX_DELAY);
        HAL_Delay(100);
        return -1;
    }

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
    HAL_Delay(100);

    p = createModel();
    if(p != FINGERPRINT_OK)
    {
        HAL_UART_Transmit(&huart1, (uint8_t*)prompt9, sizeof(prompt9), HAL_MAX_DELAY);
        HAL_Delay(100);
        return -1;
    }

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt4, sizeof(prompt4), HAL_MAX_DELAY);
    HAL_Delay(100);

    p = storeModel(id);
    if (p == FINGERPRINT_OK)
    {
        HAL_UART_Transmit(&huart1, (uint8_t*)prompt6, sizeof(prompt6), HAL_MAX_DELAY);
        HAL_Delay(100);
        HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
        HAL_Delay(100);

        char command[] 	= "FPS Enroll Passed\r\n";
        CDC_Transmit_FS((uint8_t*)command, sizeof(command));
        HAL_Delay(100);
        return -1;
    }
    else
    {
        HAL_UART_Transmit(&huart1, (uint8_t*)prompt7, sizeof(prompt7), HAL_MAX_DELAY);
        HAL_Delay(100);
        HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
        HAL_Delay(100);

        char command[] 	= "FPS Enroll Failed\r\n";
        CDC_Transmit_FS((uint8_t*)command, sizeof(command));
        HAL_Delay(100);
        return 0;
    }
    return 0;
}

int8_t fingerIDSearch(void)
{
    char line[] 	= "+-------------------------------------------+\r\n";
    char prompt1[] 	= "|           Searching Fingerprint           |\r\n";
    char prompt2[] = "Put Finger on Scanner\r\n";
    char prompt3[] = "Converting fingerprint to image\r\n";
    char prompt4[] = "Successfully converted fingerprint to image\r\n";
    char prompt5[] = "Searching in data base\r\n";
    char prompt6[] 	= "|               Fingerprint Found           |\r\n";
    char prompt7[] 	= "|           Fingerprint Not Found           |\r\n";


    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt1, sizeof(prompt1), HAL_MAX_DELAY);
    HAL_Delay(100);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt2, sizeof(prompt2), HAL_MAX_DELAY);
    HAL_Delay(2000);

    int8_t p = -1;
    while (p != FINGERPRINT_OK)
    {
        p = getImage();
    }

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt3, sizeof(prompt3), HAL_MAX_DELAY);
    HAL_Delay(100);

    p = image2Tz(1);
    if (p != FINGERPRINT_OK)
    {
        HAL_UART_Transmit(&huart1, (uint8_t*)prompt4, sizeof(prompt4), HAL_MAX_DELAY);
        HAL_Delay(100);
        return -1;
    }

    HAL_UART_Transmit(&huart1, (uint8_t*)prompt4, sizeof(prompt4), HAL_MAX_DELAY);
    HAL_Delay(100);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt5, sizeof(prompt5), HAL_MAX_DELAY);
    HAL_Delay(100);

    p = fingerFastSearch();
    if (p != FINGERPRINT_OK)
    {
        HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
        HAL_Delay(100);
        HAL_UART_Transmit(&huart1, (uint8_t*)prompt7, sizeof(prompt7), HAL_MAX_DELAY);
        HAL_Delay(100);
        HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
        HAL_Delay(100);
        char command[] 	= "FPS Search Failed\r\n";
        CDC_Transmit_FS((uint8_t*)command, sizeof(command));
        HAL_Delay(100);

        return -1;
    }


    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)prompt6, sizeof(prompt6), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)line, sizeof(line), HAL_MAX_DELAY);
    HAL_Delay(100);

    char command[] 	= "FPS Search Passed\r\n";
    CDC_Transmit_FS((uint8_t*)command, sizeof(command));
    HAL_Delay(100);

    return fingerID;
}

int8_t getParameter(void)
{
	uint8_t len;
	uint8_t packet[] = {FINGERPRINT_READSYSPARAM};
	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet), packet);
	len = getReply(recvPacket);

	if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET)){
		return -1;
	}

	status_reg = ((uint16_t)recvPacket[1] << 8) | recvPacket[2];
	system_id = ((uint16_t)recvPacket[3] << 8) | recvPacket[4];
	capacity = (((uint16_t)recvPacket[5] << 8) | recvPacket[6] ) + 162;
	//capacity = (((uint16_t)recvPacket[5] << 8) | recvPacket[6] );
	security_level = (((uint16_t)recvPacket[7] << 8) | recvPacket[8])*0;
	//security_level = (((uint16_t)recvPacket[7] << 8) | recvPacket[8]);

	device_addr = theAddress;
	packet_len = ((uint16_t)recvPacket[13] << 8) | recvPacket[14];
	if (packet_len == 0) {
		packet_len = 32;
	} else if (packet_len == 1) {
		packet_len = 64;
	} else if (packet_len == 2) {
		packet_len = 128;
	} else if (packet_len == 3) {
		packet_len = 256;
	} else
	{
		packet_len = 32;
	}
	baud_rate = (((uint16_t)recvPacket[15] << 8) | recvPacket[16]) + 9600;

	showParameter();


	return 0;
}

void showParameter(void)
{
	char uartBuf[100];
	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------Sensor Health    ------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "| Status Register: 0x%04X                     |\r\n", status_reg);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "| System ID: %04X                             |\r\n", system_id);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "| Capacity: %d                                |\r\n", capacity);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "| Security Level: %0d                         |\r\n", security_level);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);

	sprintf(uartBuf, "| Device Address: 0x%04X                      |\r\n", device_addr);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);

	sprintf(uartBuf, "| Packet Length: %0d                          |\r\n", packet_len);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);

	sprintf(uartBuf, "| Baud Rate: %0d                              |\r\n", baud_rate);
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);
	HAL_Delay(100);

	sprintf(uartBuf, "|---------------------------------------------|\r\n");
	HAL_UART_Transmit(&huart1, (uint8_t*)uartBuf, strlen(uartBuf), HAL_MAX_DELAY);

}


void setLEDColor(uint8_t r, uint8_t g, uint8_t b)
{
    uint8_t packet[] = {
        0xFF, 0xFF,             // Device ID
        0x08,                   // Packet length
        0x14,                   // Command code to set LED color
        0x01,                   // Index of LED to set
        r, g, b, 0x00,          // Red, green, blue, and white components
        0x00, 0x00              // Reserved bytes
    };
    uint16_t sum = 0x08 + 0x14 + 0x01 + r + g + b;
    packet[7] = (uint8_t)(sum >> 8);
    packet[8] = (uint8_t)sum;

    writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet), packet);
    getReply(recvPacket);
}

void setLED(uint8_t ledState)
{
    uint8_t packet[10];
    packet[0] = FINGERPRINT_COMMANDPACKET;
    packet[1] = FINGERPRINT_SETLED;
    packet[2] = 0x01; 		// the number of the LED
    packet[3] = ledState; 	// the state of the LED (0 = off, 1 = on)

    writePacket(theAddress, FINGERPRINT_COMMANDPACKET, 6, packet);
    getReply(recvPacket);
}


void setColour(uint8_t ledState, uint8_t ledColor)
{
	uint8_t packet[10];
	packet[0] = FINGERPRINT_COMMANDPACKET;
	packet[1] = FINGERPRINT_SETLED;
	packet[2] = 0x01; 		// the number of the LED
	packet[3] = ledState; 	// the state of the LED (0 = off, 1 = on)
	packet[4] = ledColor;   // the color of the LED (0 = green, 1 = red, 2 = blue, etc.)

	writePacket(theAddress, FINGERPRINT_COMMANDPACKET, 7, packet);
	getReply(recvPacket);

}

int8_t LEDcontrol_b(bool on)
{
//    uint8_t cmd = on ? FINGERPRINT_LED_ON : FINGERPRINT_LED_OFF;
//    uint8_t packet[] = {cmd};
//
//    writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
//    getReply(recvPacket);
	if (on)
	{
		uint8_t len;
		uint8_t packet[] = {FINGERPRINT_LEDON};

		writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
		len = getReply(recvPacket);

		if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
			return -1;
		return recvPacket[1];
	}else
	{
		uint8_t len;
		uint8_t packet[] = {FINGERPRINT_LEDOFF};

		writePacket(theAddress, FINGERPRINT_COMMANDPACKET, sizeof(packet)+2, packet);
		len = getReply(recvPacket);

		if ((len != 1) && (recvPacket[0] != FINGERPRINT_ACKPACKET))
			return -1;
		return recvPacket[1];
	}
}

void turnOnLED(void) {
//  uint8_t data[12];
//  memset(data, 0x00, sizeof(data));
//  data[0] = 0xEF; // start byte
//  data[1] = 0x01; // address
//  data[2] = 0xFF; // data
//  data[3] = 0xFF; // data
//  data[8] = 0x01; // command
//  data[9] = 0x00; // checksum
//  data[10] = 0x7F; // end byte
//  data[11] = 0x7F; // end byte
//
//  HAL_UART_Transmit(&huart1, data, sizeof(data), 100);
//  HAL_Delay(100);
//	  uint8_t cmd_led_on[] = {0xF5, 0x00, 0x24, 0x01, 0x01, 0x00, 0x21, 0x00, 0x00, 0x00, 0x46};
//	  HAL_UART_Transmit(&uartFinger, cmd_led_on, sizeof(cmd_led_on), 100);
//	  HAL_Delay(1000);

	int count = getFingerprintCount(&uartFinger);

}

// Function to turn off the LED on AS608 fingerprint module
void turnOffLED(void) {
//  uint8_t data[12];
//  memset(data, 0x00, sizeof(data));
//  data[0] = 0xEF; // start byte
//  data[1] = 0x01; // address
//  data[2] = 0xFF; // data
//  data[3] = 0xFF; // data
//  data[8] = 0x04; // command
//  data[9] = 0x03; // checksum
//  data[10] = 0x7F; // end byte
//  data[11] = 0x7F; // end byte
//
//  HAL_UART_Transmit(&huart1, data, sizeof(data), 100);
//  HAL_Delay(100);
	  uint8_t cmd_led_off[] = {0xF5, 0x00, 0x24, 0x01, 0x01, 0x00, 0x20, 0x00, 0x00, 0x00, 0x45};
	  HAL_UART_Transmit(&uartFinger, cmd_led_off, sizeof(cmd_led_off), 100);
	  HAL_Delay(1000);

}
// Function to send a command over UART and receive a response
// Returns 0 on success, or an error code on failure
uint8_t sendCommand(UART_HandleTypeDef *huart, const uint8_t *command, uint8_t commandSize, uint8_t *response, uint8_t responseSize) {
  // Send the command
  if (HAL_UART_Transmit(huart, (uint8_t *)command, commandSize, UART_TIMEOUT_MS) != HAL_OK) {
    return 1;
  }

  // Receive the response
  if (HAL_UART_Receive(huart, response, responseSize, UART_TIMEOUT_MS) != HAL_OK) {
    return 2;
  }

  return 0;
}

// Function to retrieve the number of fingerprints stored in the module
// Returns the number of fingerprints on success, or -1 on failure
int getFingerprintCount(UART_HandleTypeDef *huart) {
  uint8_t response[16];

  // Send the command to retrieve the number of fingerprints
  if (sendCommand(huart, CMD_GET_FP_COUNT, sizeof(CMD_GET_FP_COUNT), response, sizeof(response)) != 0) {
    return -1;
  }

  // Check the response header and length
  if (response[0] != 0xEF || response[1] != 0x01 || response[2] != 0xFF || response[3] != 0xFF || response[4] != 0xFF || response[5] != 0xFF || response[6] != 0x01 || response[7] != 0x00 || response[8] != 0x08 || response[9] != 0x13) {
    return -1;
  }

  // Extract the fingerprint count from the response
  int count = (response[11] << 8) | response[10];

  return count;
}

