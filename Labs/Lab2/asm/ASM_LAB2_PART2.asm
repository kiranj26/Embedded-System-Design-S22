; MIT License
; 
; Copyright (c) [2022] [Kiran Jojare]
; 
; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:
; 
; The above copyright notice and this permission notice shall be included in
; all copies or substantial portions of the Software.
; 
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
; THE SOFTWARE.
;
;
; @ brief  : assembly program which initializes the 8051 serial port 
;            and then continuously (in an infinite loop) transmits 
;            the character 'U'.
; @ author : Kiran Jojare
; @ date   : 23 Feb 2022
; Clear the Stack Pointer for this program.
CLR SM0
; Enable all Interrupts.
SETB SM1
; Move contents of PCON register to accumulator A.
MOV A, PCON
; Set the 7th bit of the accumulator to 1.
SETB ACC.7
; Move the contents of accumulator A back to PCON register.
MOV PCON, A
; This code sets the SMOD bit of PCON, which is used to set the baud rate of the serial port.

; Initialize the Timer 1 in Mode 2 (auto-reload) for 9600 baud rate
MOV TMOD, #20H
MOV TH1, #-13
; Set the Serial Control Register (SCON) to 8-bit data, 1 stop bit, and enable Reception (REN)
MOV SCON, #50H
; Start Timer 1
SETB TR1

; Loop to transmit the character 'U' continuously
again:
; Move the ASCII code of 'U' to memory address 30h.
MOV 30h, #'U'
; Move the value 0 to memory address 31h.
MOV 31h, #0

; Move the memory address of 'U' to register R0.
MOV R0, #30h
; Move the contents of memory location pointed to by register R0 to accumulator A.
MOV A, @R0
; Jump to label 'finish' if accumulator A is 0 (i.e. end of string is reached)
JZ finish
; Move the contents of accumulator A to Serial Buffer Register (SBUF) to transmit data
MOV SBUF, A
; Increment the value in register R0 to point to the next memory location.
INC R0
; Jump to current address if the TI flag is not set. (TI flag is set when the SBUF is transmitted)
JNB TI, $
; Clear the TI flag to indicate that the data in SBUF has been transmitted.
CLR TI
; Jump to label 'again' to continue sending the next character in the string.
JMP again

finish:
; Jump to the current address to halt the program.
JMP $

