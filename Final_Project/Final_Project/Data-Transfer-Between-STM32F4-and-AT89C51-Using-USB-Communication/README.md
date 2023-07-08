# Data Communication between AT89C51RC2 and STM32F411E using USB and UART

This project focuses on transferring data from an Adafruit fingerprint sensor to an STM32F411E microcontroller using UART. The STM32F411E, in turn, communicates with the AT89C51RC2 microcontroller using the USB port. The ultimate goal is to display the transferred data on an LCD connected to the AT89C51RC2.

This project was developed as the final project for the course ECEN 5613 Embedded System Design at the University of Colorado Boulder.

## Project Overview

The project involves the following components and communication protocols:

1. Adafruit Fingerprint Sensor: [Adafruit website](https://www.adafruit.com/product/4690?gclid=EAIaIQobChMIxOTOgZ_-_wIVdzatBh1PtQE0EAQYASABEgLOZfD_BwE).This sensor collects fingerprint data and interfaces with the STM32F411E microcontroller using UART.

2. STM32F411E: [STM32F411E product page](https://www.st.com/en/microcontrollers-microprocessors/stm32f411re.html).The STM32F411E microcontroller receives the fingerprint data from the sensor via UART. It establishes communication with the AT89C51RC2 microcontroller using the USB protocol.

3. AT89C51RC2: [AT89C51RC2 datasheet](https://www.microchip.com/wwwproducts/en/AT89C51RC2).The AT89C51RC2 microcontroller receives data from the STM32F411E via USB and is responsible for displaying the data on an LCD.

## Technologies Used

The project utilizes the following technologies:

- UART (Universal Asynchronous Receiver-Transmitter) (STM and AT89C51 UART Driver)
- USB (Universal Serial Bus) (STM32's Virtual USB Driver)
- LCD
- I2C

## Language
- Embedded C/C++ (C++ mostly for fingerprint sensor library)
- Python
- SDCC Compiler

## Project Structure

The project is divided into firmware libraries and components that handle different aspects of the communication.

### Firmware Libraries

1. Adafruit Fingerprint Sensor Library: This firmware library enables communication between the Adafruit fingerprint sensor and the STM32F411E microcontroller via UART.

2. STM32F411E Communication Library: This library provides functions and routines for establishing communication between the STM32F411E and the AT89C51RC2 using USB. It handles the data transfer and protocol implementation. The inbuilt functionality of STM's USB User port that uses virual comm port is utilised. 

3. AT89C51RC2 LCD Display Library: This firmware library is responsible for receiving the data from the STM32F411E via USB and displaying it on an LCD connected to the AT89C51RC2 microcontroller.

### Components

1. Adafruit Fingerprint Sensor Integration: This component integrates the Adafruit fingerprint sensor library with the STM32F411E microcontroller. It handles the data acquisition and transmission via UART.

2. STM32F411E to AT89C51RC2 Communication: This component utilizes the STM32F411E communication library to establish communication between the STM32F411E and the AT89C51RC2 microcontroller using USB. It handles the data transfer and ensures proper synchronization.

3. AT89C51RC2 LCD Display: This component utilizes the AT89C51RC2 LCD display library to receive the transferred data from the STM32F411E via USB and display it on the connected LCD.

## Usage and Setup

To use this project and establish data communication between the AT89C51RC2 and STM32F411E, follow the instructions provided in the project documentation.

## Video Demonstration
### Video 
[S22_Jojare_Secure_Data_Transfer_between_STM32F4_and_8051_using_USB_PDR.mp4](https://github.com/kiranj26/Embedded-System-Design-S22/assets/111842372/c9966681-13aa-4c95-b7e5-0ee9642d2176)
### PPT Presentation
[S22_Jojare_Secure_Data_Transfer_between_STM32F4_and_8051_using_USB_PDR.pdf](https://github.com/kiranj26/Embedded-System-Design-S22/files/11988318/S22_Jojare_Secure_Data_Transfer_between_STM32F4_and_8051_using_USB_PDR.pdf)


## Contributions and Acknowledgments

This project is the result of contributions from various individuals. Acknowledgment goes to:

- [Kiran jojare]: Firmware library for Adafruit fingerprint sensors and STM32F411E communication.
- [Kiran Jojare]: Firmware library for communication between the AT89C51RC2 and LCD display.

Please feel free to contribute, report issues, or suggest improvements to this project.

## License

MIT License

Copyright (c) [2023] [Kiran Jojare]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

