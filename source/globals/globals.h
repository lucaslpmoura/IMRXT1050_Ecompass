/*
 * globals.h
 *
 *  Created on: Apr 23, 2025
 *      Author: xlouzal00
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_

#include <stdint.h>

extern volatile uint32_t num_of_presses;


uint32_t getNumOfPresses();
void increaseNumOfPresses();

#endif /* GLOBALS_H_ */
