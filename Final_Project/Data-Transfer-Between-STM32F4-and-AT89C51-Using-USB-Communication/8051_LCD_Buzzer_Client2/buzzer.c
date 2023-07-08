#include <stdint.h>
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "at89c51ed2.h"

// Define the frequency for the buzzer
#define BUZZER_FREQ 2000

// Define the duration of each beep in milliseconds
#define FAST_BEEP_DURATION 50
#define NORMAL_BEEP_DURATION 100

// Define the delay function
void buzzer_delay(unsigned int ms) {
    unsigned int i,j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 120; j++);
    }
}

// Function to make the buzzer beep quickly
void fastBeep() {
    unsigned int i;
    for (i = 0; i < 50; i++) {
        P1_4 = 1;  // Set P1.4 high
        P1_1 = P1_1 ^ 1;
        buzzer_delay(FAST_BEEP_DURATION);  // Delay for the beep duration
        P1_4 = 0;  // Set P1.4 low
        P1_1 = P1_1 ^ 1;
        buzzer_delay(FAST_BEEP_DURATION);  // Delay for the beep duration
    }
}

// Function to make the buzzer beep at a normal speed
void normalBeep() {
    unsigned int i;
    for (i = 0; i < 20; i++) {
        P1_4 = 1;  // Set P1.4 high
        P1_1 = P1_1 ^ 1;
        buzzer_delay(NORMAL_BEEP_DURATION);  // Delay for the beep duration
        P1_4 = 0;  // Set P1.4 low
        P1_1 = P1_1 ^ 1;
        buzzer_delay(NORMAL_BEEP_DURATION);  // Delay for the beep duration
    }
}
