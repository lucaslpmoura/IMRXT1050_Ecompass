/*
 * globals.c
 *
 *  Created on: Apr 23, 2025
 *      Author: xlouzal00
 */


#include "globals.h"

volatile uint32_t num_of_presses = 0;

uint32_t getNumOfPresses(){
	return num_of_presses;
}

void increaseNumOfPresses(){
	num_of_presses++;
}
