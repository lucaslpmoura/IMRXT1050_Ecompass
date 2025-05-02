/*
 * globals.c
 *
 *  Created on: Apr 23, 2025
 *      Author: xlouzal00
 */


#include "globals.h"

volatile uint32_t num_of_presses = 0;
volatile double compass_yaw = 0.0;
volatile double compass_pitch = 0.0;
volatile double compass_roll = 0.0;

uint32_t getNumOfPresses(){
	return num_of_presses;
}

void getCompassYawPitchRoll(double *out_yaw, double *out_pitch, double *out_roll){
	*out_yaw = compass_yaw;
	*out_pitch = compass_pitch;
	*out_roll = compass_roll;
}

void increaseNumOfPresses(){
	num_of_presses++;
}


