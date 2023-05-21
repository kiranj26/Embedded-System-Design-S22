#include "main.h"
#include <stdbool.h>
#include "stm32f4xx_hal.h"

/* Defines ------------------------------------------------------------------*/
#define FINGERPRINT_OK 0x00
#define FINGERPRINT_PACKETRECIEVEERR 0x01
#define FINGERPRINT_NOFINGER 0x02
#define FINGERPRINT_IMAGEFAIL 0x03
#define FINGERPRINT_IMAGEMESS 0x06
#define FINGERPRINT_FEATUREFAIL 0x07
#define FINGERPRINT_NOMATCH 0x08
#define FINGERPRINT_NOTFOUND 0x09
#define FINGERPRINT_ENROLLMISMATCH 0x0A
#define FINGERPRINT_BADLOCATION 0x0B
#define FINGERPRINT_DBRANGEFAIL 0x0C
#define FINGERPRINT_UPLOADFEATUREFAIL 0x0D
#define FINGERPRINT_PACKETRESPONSEFAIL 0x0E
#define FINGERPRINT_UPLOADFAIL 0x0F
#define FINGERPRINT_DELETEFAIL 0x10
#define FINGERPRINT_DBCLEARFAIL 0x11
#define FINGERPRINT_PASSFAIL 0x13
#define FINGERPRINT_INVALIDIMAGE 0x15
#define FINGERPRINT_FLASHERR 0x18
#define FINGERPRINT_INVALIDREG 0x1A
#define FINGERPRINT_ADDRCODE 0x20
#define FINGERPRINT_PASSVERIFY 0x21

#define FINGERPRINT_STARTCODE 0xEF01

#define FINGERPRINT_COMMANDPACKET 0x1
#define FINGERPRINT_DATAPACKET 0x2
#define FINGERPRINT_ACKPACKET 0x7
#define FINGERPRINT_ENDDATAPACKET 0x8
// Define the SETLED command for the fingerprint module
#define FINGERPRINT_SETLED 0x12
// Define the SETLED command for the R307 module
#define R307_SETLED 0x35

#define FINGERPRINT_TIMEOUT 0xFF
#define FINGERPRINT_BADPACKET 0xFE

#define FINGERPRINT_GETIMAGE 0x01
#define FINGERPRINT_IMAGE2TZ 0x02
#define FINGERPRINT_REGMODEL 0x05
#define FINGERPRINT_STORE 0x06
#define FINGERPRINT_LOAD 0x07
#define FINGERPRINT_UPLOAD 0x08
#define FINGERPRINT_DELETE 0x0C
#define FINGERPRINT_EMPTY 0x0D
#define FINGERPRINT_VERIFYPASSWORD 0x13
#define FINGERPRINT_HISPEEDSEARCH 0x1B
#define FINGERPRINT_TEMPLATECOUNT 0x1D

#define FINGERPRINT_READSYSPARAM 0x0F   //!< Read system parameters

#define FINGERPRINT_REG_ADDR_ERROR 0x1A //!< shows register address error
#define FINGERPRINT_WRITE_REG 0x0E      //!< Write system register instruction

#define FINGERPRINT_BAUD_REG_ADDR 0x4   //!< BAUDRATE register address
#define FINGERPRINT_BAUDRATE_9600 0x1   //!< UART baud 9600
#define FINGERPRINT_BAUDRATE_19200 0x2  //!< UART baud 19200
#define FINGERPRINT_BAUDRATE_28800 0x3  //!< UART baud 28800
#define FINGERPRINT_BAUDRATE_38400 0x4  //!< UART baud 38400
#define FINGERPRINT_BAUDRATE_48000 0x5  //!< UART baud 48000
#define FINGERPRINT_BAUDRATE_57600 0x6  //!< UART baud 57600
#define FINGERPRINT_BAUDRATE_67200 0x7  //!< UART baud 67200
#define FINGERPRINT_BAUDRATE_76800 0x8  //!< UART baud 76800
#define FINGERPRINT_BAUDRATE_86400 0x9  //!< UART baud 86400
#define FINGERPRINT_BAUDRATE_96000 0xA  //!< UART baud 96000
#define FINGERPRINT_BAUDRATE_105600 0xB //!< UART baud 105600
#define FINGERPRINT_BAUDRATE_115200 0xC //!< UART baud 115200

#define FINGERPRINT_SECURITY_REG_ADDR 0x5 //!< Security level register address
// The safety level is 1 The highest rate of false recognition , The rejection
// rate is the lowest . The safety level is 5 The lowest tate of false
// recognition, The rejection rate is the highest .
#define FINGERPRINT_SECURITY_LEVEL_1 0X1 //!< Security level 1
#define FINGERPRINT_SECURITY_LEVEL_2 0X2 //!< Security level 2
#define FINGERPRINT_SECURITY_LEVEL_3 0X3 //!< Security level 3
#define FINGERPRINT_SECURITY_LEVEL_4 0X4 //!< Security level 4
#define FINGERPRINT_SECURITY_LEVEL_5 0X5 //!< Security level 5

#define FINGERPRINT_PACKET_REG_ADDR 0x6 //!< Packet size register address
#define FINGERPRINT_PACKET_SIZE_32 0X0  //!< Packet size is 32 Byte
#define FINGERPRINT_PACKET_SIZE_64 0X1  //!< Packet size is 64 Byte
#define FINGERPRINT_PACKET_SIZE_128 0X2 //!< Packet size is 128 Byte
#define FINGERPRINT_PACKET_SIZE_256 0X3 //!< Packet size is 256 Byte

#define FINGERPRINT_SETPASSWORD 0x12    //!< Sets passwords

#define FINGERPRINT_LEDON 0x50         //!< Turn on the onboard LED
#define FINGERPRINT_LEDOFF 0x51        //!< Turn off the onboard LED

#define UART_TIMEOUT_MS 1000


#define DEFAULTTIMEOUT 5000  // mili giay

/* Function prototypes -----------------------------------------------*/
void UART3_FINGER_Init(void);

int8_t writeRegister(uint8_t regAdd, uint8_t value);
int8_t setSecurityLevel(uint8_t level);
int8_t setBaudRate(uint8_t baudrate);
int8_t setPacketLength(uint8_t size);

uint8_t verifyPassword(void);		//xac minh password
int8_t getImage(void);					//lay hinh anh van tay
int8_t image2Tz(uint8_t slot);	//luu vao buffer
int8_t createModel(void);				//tong hop tao mau
int8_t emptyDatabase(void);				//xoa tat ca van tay
int8_t storeModel(uint16_t id);		//luu mau van tay
int8_t deleteModel(uint16_t id);	//xoa 1 mau van tay
int8_t fingerFastSearch(void);
void writePacket(uint32_t addr, uint8_t packettype, uint16_t len, uint8_t *packet);
uint8_t getReply(uint8_t packet[]);
int8_t fingerEnroll(uint8_t id);
int8_t fingerIDSearch(void);				//tim id van tay
uint16_t getTemplateCount(uint32_t theAddress);
void setLED(uint8_t ledState);
void setColour(uint8_t ledState, uint8_t ledColor);
int8_t LEDcontrol_b(bool on);
void setLEDColor(uint8_t r, uint8_t g, uint8_t b);
int8_t getParameter(void);
void showParameter(void);
uint8_t setPassword(uint32_t password);
uint8_t sendCommand(UART_HandleTypeDef *huart, const uint8_t *command, uint8_t commandSize, uint8_t *response, uint8_t responseSize);
int getFingerprintCount(UART_HandleTypeDef *huart);

void turnOnLED(void);
void turnOffLED(void);
