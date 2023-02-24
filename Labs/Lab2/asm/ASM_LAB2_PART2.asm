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

CLR SM0    	; Clear the Stack Pointer for this program.

SETB SM1	; Enable all Interrupts.

MOV A, PCON	; Move contents of PCON register to accumulator A.

SETB ACC.7	; Set the 7th bit of the accumulator to 1.
MOV PCON, A	; Move the contents of accumulator A back to PCON register.
; This code sets the SMOD bit of PCON, which is used to set the baud rate of the serial port.

MOV TMOD, #20H	; Initialize the Timer 1 in Mode 2 (auto-reload) for 9600 baud rate
MOV TH1, #-13
MOV SCON, #50H	; Set the Serial Control Register (SCON) to 8-bit data, 1 stop bit, and enable Reception (REN)

SETB TR1	; Start Timer 1	


; Loop to transmit the character 'U' continuously
again:
MOV 30h, #'U'	; Move the ASCII code of 'U' to memory address 30h.
MOV 31h, #0	; Move the value 0 to memory address 31h.
MOV R0, #30h	; Move the memory address of 'U' to register R0.
MOV A, @R0	; Move the contents of memory location pointed to by register R0 to accumulator A.
JZ finish	; Jump to label 'finish' if accumulator A is 0 (i.e. end of string is reached)
MOV SBUF, A	; Move the contents of accumulator A to Serial Buffer Register (SBUF) to transmit data
INC R0		; Increment the value in register R0 to point to the next memory location.
JNB TI, $	; Jump to current address if the TI flag is not set. (TI flag is set when the SBUF is transmitted)
CLR TI		; Clear the TI flag to indicate that the data in SBUF has been transmitted.
JMP again	; Jump to label 'again' to continue sending the next character in the string.

finish:
JMP $		; Jump to the current address to halt the program.


