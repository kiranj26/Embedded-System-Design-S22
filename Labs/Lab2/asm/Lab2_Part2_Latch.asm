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
; @ brief  : Assembly code to test latch working.
;
; @ author : Kiran Jojare
; @ date   : 24 Feb 2022

#include<reg51.h>

ORG 0000H
LJMP MAIN       ; Jump to MAIN function

ORG 000BH       ; Interrupt Service Routine (ISR) for Timer 0
LJMP ISR_TMR    ; Jump to ISR_TMR for Interrupt Service Routine

ORG 0040H

MAIN:

	  ;MOV P1, #11111111 ; Initialize P1 with all pins set to logic high (LED off)
      ;MOV P1, #11110111 ; PIN 3 High
      MOV R4, #80H;
	  MOV R5, #00H;
	  MOV DPTR, #4000H;

      MOV A, P1
      MOV TMOD,#0X01	; Timer 0, mode 1 (16-bit timer)
	  MOV IE,#0X82	; Enable Timer 0 interrupt and global interrupt

      JNB P1.3, SET_NEW_TIME ; Check if P1.3 (input pin) is logic high, and set timer to new frequency if so
	  MOV TH0,#0X17	; Higher byte of Timer 0
	  MOV TL0,#0X46	; Lower byte of Timer 0
	  MOV B,#6	   ; Set register B to 6 for loop
      JMP START_TIMER

START_TIMER:
      SETB TR0 	   ; Start Timer 0
HERE:
	  ; Inside END loop of main Load DPTR logic
	  MOV A, R5;
	  MOVX @DPTR, A;
	  INC R5;
	  CJNE R5, #7FH, HERE;
	  MOV R6, #00H;
	  AJMP HERE     ; Loop indefinitely until interrupt occurs

SET_NEW_TIME:
      MOV TH0,#0X93	; Higher byte of Timer 0
	  MOV TL0,#0X5B	; Lower byte of Timer 0
      MOV R0, #18    ; Set R0 to 18 for loop
	  JMP START_TIMER ; Restart timer with new frequency

ISR_TMR:
	    MOV A, R4;
	    MOVX @DPTR, A;
        INC R4;
		CJNE R4, #07FH, NEXT
NEXT:   CPL P1.2	    ; Toggle an unused pin to indicate interrupt
	   	JNB P1.3 ,LOWER_FRQ ; If P1.3 is high, go to the lower frequency branch
	    JB P1.3, NORMAL
NORMAL:
	   DJNZ B,LOOP	; Decrement B and wait until B is zero
	   MOV TH0,#0X17	; Higher byte of Timer 0
	   MOV TL0,#0X46	; Lower byte of Timer 0
	   MOV B,#6	    ; Set register B to 6 for loop
	   CPL P1.1	    ; Toggle the LED at P1.0
	   CPL P1.2	    ; Toggle the unused pin to indicate interrupt
	   RETI			; Return from Interrupt

LOWER_FRQ:
	   DJNZ R0,LOOP	    ; Decrement R0 and wait until R0 is zero
	   MOV TH0,#0X94	; Higher byte of Timer 0 for lower frequency
	   MOV TL0,#0X5B	; Lower byte of Timer 0 for lower frequency
	   MOV R0,#18	    ; Set R0 to 18 for loop
	   CPL P1.1	    ; Toggle the LED at P1.0
	   CPL P1.2	    ; Toggle the unused pin to indicate interrupt
	   RETI			; Return from Interrupt

LOOP:
	   CPL P1.2	    ; Toggle the unused pin to indicate interrupt
	   RETI			; Return from Interrupt, clearing the Timer 0 flag (TF0)

