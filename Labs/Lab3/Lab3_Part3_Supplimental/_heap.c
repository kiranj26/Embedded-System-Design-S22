/*****************************************************************************
 * Copyright (C) 2023 by Kiran Jojare
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users
 * are permitted to modify this and use it to learn about the field of
 * embedded software. Kiran Jojare and the University of Colorado are not
 * liable for any misuse of this material.
 *****************************************************************************/

/**
 * @file    _heap.c
 * @brief   Implementation of heap
 * @details This file defines a heap of size HEAP_SIZE, which is implemented
 *          as a character array named __sdcc_heap. The heap is defined in
 *          external memory using the __xdata keyword. The size of the heap
 *          is stored in the __sdcc_heap_size variable.
 *
 *          Note: This implementation assumes that external memory is
 *          available on the target device.
 *
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/
#ifndef _HEAP_C_
#define _HEAP_C_

#ifndef HEAP_SIZE
#define HEAP_SIZE 6000
#endif

// Define the heap as a character array in external memory
__xdata char __sdcc_heap[HEAP_SIZE];

// Define a constant to store the size of the heap
const unsigned int __sdcc_heap_size = HEAP_SIZE;

#endif // _HEAP_C_
