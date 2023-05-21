#include <mcs51reg.h>
#include <at89c51ed2.h>
#include <stdio.h>


/**
 * @brief   Reads a character from the serial port.
 *
 * This function waits until a character is received on the serial port and then returns it.
 * It clears the Receive Interrupt (RI) flag after reading the character.
 *
 * @return  The character read from the serial port.
 */
int getchar (void)
{
    while (!RI); //Wait till the Character is received
	RI = 0;			// Clear the RI flag
	return SBUF;  	// Return the Character
}

/**
 * @brief   Sends a character to the serial port.
 *
 * This function waits until the serial port is ready to transmit data and then sends the given
 * character. It clears the Transmit Interrupt (TI) flag after transmitting the character.
 *
 * @param   c   The character to be sent to the serial port.
 *
 * @return  The character sent to the serial port.
 */
int putchar (int c)
{
    while(!TI); //Wait till the Transmitter is ready
    SBUF = c; //write character to SBUF
    TI = 0; //Clear the TI flag
    return c;
}


/**
 * @brief   Reads a string from the serial port.
 *
 * This function reads a string from the serial port until a newline character is received.
 * The characters are stored in the provided buffer until a newline character is received or
 * the buffer is full. The function adds a null terminator at the end of the string and returns.
 *
 * @param   ch  The buffer to store the string read from the serial port.
 */
void gets_(__xdata char *ch) {
    for (int i = 0; ; i++) {
        char c = getchar();
        putchar(c);
        if (c == '\r' || c == '\n') {
            *(ch + i) = '\0';
            break;
        }
        *(ch + i) = c;
    }
}

/**
 * @brief   Sends a string to the serial port.
 *
 * This function sends the provided null-terminated string to the serial port character by character
 * using the putchar function until it reaches the null terminator.
 *
 * @param   ch  The null-terminated string to be sent to the serial port.
 */
void puts_(__xdata char *ch) {
    for (; *ch; ch++) {
        putchar(*ch);
    }
}

/**
 * @brief   Reads the manufacturer ID.
 *
 * This function reads the manufacturer ID using the bootloader API call 00h.
 * The result is stored in the accumulator register and printed to the serial port.
 */
void readManufacturerID() {
    __asm
        mov r1,#0      ; set command code to 00h
        mov DPL, #0    ; set DPTR to address 0000h
        mov DPH, #0
        LCALL 0xFFF0   ; call bootloader API
    __endasm;

    printf("The manufacturer ID value is %x \r\n",ACC);  // print result to serial port
}
/**
 * @brief   Reads the device ID 1.
 *
 * This function reads device ID 1 using the bootloader API call 00h.
 * The result is stored in the accumulator register and printed to the serial port.
 */
void readDeviceID1() {
    // bootloader API call to read device ID 1
    __asm
        mov r1,#0      ; set command code to 00h
        mov DPL, #1    ; set DPTR to address 0001h
        mov DPH, #0
        LCALL 0xFFF0   ; call bootloader API
    __endasm;

    // print the result to the serial port
    printf("The device ID1 value is %x \r\n",ACC);
}

/**
 * @brief   Reads the device ID 2.
 *
 * This function reads device ID 2 using the bootloader API call 00h.
 * The result is stored in the accumulator register and printed to the serial port.
 */
void readDeviceID2() {
    // bootloader API call to read device ID 2
    __asm
        mov r1,#0
        mov DPL, #2
        mov DPH, #0
        LCALL 0xFFF0
    __endasm;

    // print the result to the serial port
    printf("The device ID2 value is %x \r\n",ACC);
}

/**
 * @brief   Reads the device ID 3.
 *
 * This function reads device ID 3 using the bootloader API call 00h.
 * The result is stored in the accumulator register and printed to the serial port.
 */
void readDeviceID3() {
    // bootloader API call to read device ID 3
    __asm
        mov r1,#0
        mov DPL, #3
        mov DPH, #0
        LCALL 0xFFF0
    __endasm;

    // print the result to the serial port
    printf("The device ID3 value is %x \r\n",ACC);
}
/**
 * @brief   Programs a value to memory.
 *
 * This function programs a value of 0x55 to the address 0x00 in memory using the bootloader API call 02h.
 * It then waits until programming is complete before reading the value and printing it to the serial port.
 */
void programMemory() {
    // program 0x55 to memory at address 0x00 using bootloader API call 02h
    printf("Programming 0x0 with 0x55 \r\n");
    __asm
        mov r1,#2
        mov a, 0x55
        mov DPL, #0x00
        mov DPH, #0x40
        LCALL 0xFFF0
    __endasm ;

    // wait until programming is complete
    printf("Before while \n\r");
    while(!ACC);
    printf("After while \n\r");

    // read the programmed value and print it to the serial port
    __asm
        clr a
        mov DPL, #0x00
        mov DPH, #0x40
        movc a, @a+dptr
    __endasm ;
    printf("The programmed value is %x \r\n",ACC);
}

/**
 * @brief   Erases a memory block.
 *
 * This function erases a block of memory at address 0x1000 using the bootloader API call 03h.
 * It then waits until the erase is complete before printing a message to the serial port.
 */
void eraseBlock() {
    unsigned int *addr = (unsigned int*) 0x4000;
    *addr = 0x1234;
    printf("Before erasing block at address 0x4000: 0x%x\r\n", *addr);

    // Write a value to the memory location before erasing


    // Erase block 0
    __asm
        mov r1,#1
        mov DPH, #0x00
        mov ACC, DPH
        LCALL 0xFFF0
    __endasm ;

    // Wait until erase done
    while(!ACC);

    printf("After erasing block at address 0x4000: 0x%x\r\n", *addr);
}

/**
 * @brief   Main function.
 *
 * This function calls the functions to read the manufacturer ID, device IDs, erase a block of memory, and program a value to memory.
 */
int main(void)
{
    // read the manufacturer ID, device IDs, erase a block of memory, and program a value to memory
    readManufacturerID();
    readDeviceID1();
    readDeviceID2();
    readDeviceID3();
    // eraseBlock();
    programMemory();

    while(1)
    {
        // the main function runs an infinite loop after calling the other functions
    }
}
