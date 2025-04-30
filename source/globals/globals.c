/*
 * globals.c
 *
 *  Created on: Apr 23, 2025
 *      Author: xlouzal00
 */


#include "globals.h"

volatile uint32_t num_of_presses = 0;
volatile double compass_angle = 0.0;


uint32_t getNumOfPresses(){
	return num_of_presses;
}

double getCompassAngle(){
	return compass_angle;
}

void increaseNumOfPresses(){
	num_of_presses++;
}


