/*****************************************************************************
 * Copyright (C) 2023 by Kiran Jojare
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users
 * are permitted to modify this and use it to learn about the field of
 * embedded software. Kiran Jojare and the University of Colorado are not
 * liable for any misuse of this material.
 *****************************************************************************/
#ifndef _MAIN_C_
#define _MAIN_C_
/**
 * @file    buffer.h
 * @brief   This file contains the declaration of the function Buffer_Size_Error_Correction.
 * @details This function is used to correct buffer size errors in embedded systems.
 *          The function returns the corrected buffer size if it is a power of two,
 *          otherwise it returns the next power of two that is greater than the buffer size.
 * @note    This function is defined in the corresponding source file.
 * @see     Buffer_Size_Error_Correction.c
 * @author  Kiran Jojare
 * @date    March 3, 2023
 * @version 1.0
*/

/**
 * @brief   Corrects buffer size errors.
 * @details This function corrects buffer size errors in embedded systems by returning
 *          the corrected buffer size if it is a power of two, otherwise it returns the
 *          next power of two that is greater than the buffer size.
 * @return  The corrected buffer size.
 */
__xdata int Buffer_Size_Error_Correction(void);
#endif //_MAIN_C_
