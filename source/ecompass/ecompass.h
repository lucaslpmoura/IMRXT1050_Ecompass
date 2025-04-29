/*
 * ecompass.h
 *
 *  Created on: Apr 28, 2025
 *      Author: xlouzal00
 */

#ifndef ECOMPASS_ECOMPASS_H_
#define ECOMPASS_ECOMPASS_H_

#include <stdint.h>
#include <math.h>
#include "fsl_fxos.h"
#include "board.h"

#include "fsl_debug_console.h"

#define MAX_ACCEL_AVG_COUNT 25U
#define HWTIMER_PERIOD      10000U
/* multiplicative conversion constants */
#define DegToRad 0.017453292
#define RadToDeg 57.295779


status_t Sensor_Init(void);
status_t Sensor_Calibrate(uint32_t *arg);
void Sensor_UseDefaultOffsets(void);
void Sensor_ReadRawData(int16_t *Ax, int16_t *Ay, int16_t *Az, int16_t *Mx, int16_t *My, int16_t *Mz);
double Sensor_ReadFormatedData();



static void HW_Timer_init(void);
static void Delay(uint32_t ticks);


#endif /* ECOMPASS_ECOMPASS_H_ */
