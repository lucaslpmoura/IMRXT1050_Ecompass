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
extern volatile double compass_yaw;
extern volatile double compass_pitch;
extern volatile double compass_roll;

uint32_t getNumOfPresses();
void increaseNumOfPresses();

void getCompassYawPitchRoll(double *out_yaw, double *out_pitch, double *out_roll);

#endif /* GLOBALS_H_ */
