/*
 * ecompass.c
 *
 *  Created on: Apr 28, 2025
 *      Author: xlouzal00
 */

#include "ecompass.h"

volatile uint16_t SampleEventFlag;
fxos_handle_t g_fxosHandle;
uint8_t g_sensor_address[] = {0x1CU, 0x1EU, 0x1DU, 0x1FU};
uint8_t g_sensorRange      = 0;
uint8_t g_dataScale        = 0;


double g_Ax = 0;
double g_Ay = 0;
double g_Az = 0;

uint16_t g_Ax_Raw = 0;
uint16_t g_Ay_Raw = 0;
uint16_t g_Az_Raw = 0;
uint16_t g_Mx_Raw = 0;
uint16_t g_My_Raw = 0;
uint16_t g_Mz_Raw = 0;

int16_t g_Mx_Offset = 0;
int16_t g_My_Offset = 0;
int16_t g_Mz_Offset = 0;

double g_Mx            = 0;
double g_My            = 0;
double g_Mz            = 0;

double sinAngle         = 0;
double cosAngle         = 0;
double Bx               = 0;
double By               = 0;

double g_Mx_LP = 0;
double g_My_LP = 0;
double g_Mz_LP = 0;


double g_Yaw    = 0;
double g_Yaw_LP = 0;
double g_Pitch  = 0;
double g_Pitch_LP = 0;
double g_Roll   = 0;
double g_Roll_LP = 0;

int16_t g_Ax_buff[MAX_ACCEL_AVG_COUNT] = {0};
int16_t g_Ay_buff[MAX_ACCEL_AVG_COUNT] = {0};
int16_t g_Az_buff[MAX_ACCEL_AVG_COUNT] = {0};

uint16_t loopCounter    = 0;
bool g_FirstRun = true;



fxos_config_t config = {0};

static void Delay(uint32_t ticks){
	while (ticks--)
	{
		__asm("nop");
	}
}

status_t Sensor_Init(void){

	status_t result = kStatus_Fail;
	BOARD_LPI2C_Init(BOARD_ACCEL_I2C_BASEADDR, BOARD_ACCEL_I2C_CLOCK_FREQ);
	/* Configure the I2C function */
	config.I2C_SendFunc    = BOARD_Accel_I2C_Send;
	config.I2C_ReceiveFunc = BOARD_Accel_I2C_Receive;

	uint8_t array_addr_size = 0;

	array_addr_size = sizeof(g_sensor_address) / sizeof(g_sensor_address[0]);
	for (uint16_t i = 0; i < array_addr_size; i++)
	{
		config.slaveAddress = g_sensor_address[i];
		/* Initialize accelerometer sensor */
		result = FXOS_Init(&g_fxosHandle, &config);
		if (result == kStatus_Success)
		{

			break;
		}
	}

	// Get Sensor Scale
	result = FXOS_ReadReg(&g_fxosHandle, XYZ_DATA_CFG_REG, &g_sensorRange, 1);
	if (result != kStatus_Success)
	{
	}else{
		if (g_sensorRange == 0x00)
		{
			g_dataScale = 2U;
		}
		else if (g_sensorRange == 0x01)
		{
			g_dataScale = 4U;
		}
		else if (g_sensorRange == 0x10)
		{
			g_dataScale = 8U;
		}else{
			g_dataScale = 0U;
			result = kStatus_Fail;
		}
	}



	return result;
}

#define CALIBRATION_ROUNDS 25000
status_t Sensor_Calibrate()
{
    int16_t Mx_max = 0;
    int16_t My_max = 0;
    int16_t Mz_max = 0;
    int16_t Mx_min = 0;
    int16_t My_min = 0;
    int16_t Mz_min = 0;

    uint32_t times = 0;
    PRINTF("\r\nCalibrating magnetometer...\r\n");
    while (times < CALIBRATION_ROUNDS)
    {
        Sensor_ReadRawData(&g_Ax_Raw, &g_Ay_Raw, &g_Az_Raw, &g_Mx_Raw, &g_My_Raw, &g_Mz_Raw);
        if (times == 0)
        {
            Mx_max = Mx_min = g_Mx_Raw;
            My_max = My_min = g_My_Raw;
            Mz_max = Mz_min = g_Mz_Raw;
        }
        if (g_Mx_Raw > Mx_max)
        {
            Mx_max = g_Mx_Raw;
        }
        if (g_My_Raw > My_max)
        {
            My_max = g_My_Raw;
        }
        if (g_Mz_Raw > Mz_max)
        {
            Mz_max = g_Mz_Raw;
        }
        if (g_Mx_Raw < Mx_min)
        {
            Mx_min = g_Mx_Raw;
        }
        if (g_My_Raw < My_min)
        {
            My_min = g_My_Raw;
        }
        if (g_Mz_Raw < Mz_min)
        {
            Mz_min = g_Mz_Raw;
        }
        if (times == CALIBRATION_ROUNDS - 1)
        {
            if ((Mx_max > (Mx_min + 500)) && (My_max > (My_min + 100)) && (Mz_max > (Mz_min + 500)))
            {
                g_Mx_Offset = (Mx_max + Mx_min) / 2;
                g_My_Offset = (My_max + My_min) / 2;
                g_Mz_Offset = (Mz_max + Mz_min) / 2;
                PRINTF("\r\nCalibrate magnetometer successfully!");
                PRINTF("\r\nMagnetometer offset Mx: %d - My: %d - Mz: %d \r\n", g_Mx_Offset, g_My_Offset, g_Mz_Offset);
                return kStatus_Success;
            }
            else
            {
                PRINTF("Calibrating magnetometer failed! Press any key to continue...\r\n");
                GETCHAR();
                return kStatus_Fail;
            }
        }
        times++;
        Delay(3000);
    }
}


// Default Offset values, used when calibration is not convenient
// Pretty bad tho
void Sensor_UseDefaultOffsets(void){
	g_Mx_Offset = 492;
	g_My_Offset = 39;
	g_Mz_Offset = 463;

}

void Sensor_ReadRawData(int16_t *Ax, int16_t *Ay, int16_t *Az, int16_t *Mx, int16_t *My, int16_t *Mz)
{
	fxos_data_t fxos_data;

	if (FXOS_ReadSensorData(&g_fxosHandle, &fxos_data) != kStatus_Success)
	{
		PRINTF("Failed to read acceleration data!\r\n");
		return;
	}
	/* Get the accel data from the sensor data structure in 14 bit left format data*/
	*Ax = (int16_t)((uint16_t)((uint16_t)fxos_data.accelXMSB << 8) | (uint16_t)fxos_data.accelXLSB) / 4U;
	*Ay = (int16_t)((uint16_t)((uint16_t)fxos_data.accelYMSB << 8) | (uint16_t)fxos_data.accelYLSB) / 4U;
	*Az = (int16_t)((uint16_t)((uint16_t)fxos_data.accelZMSB << 8) | (uint16_t)fxos_data.accelZLSB) / 4U;
	*Ax *= g_dataScale;
	*Ay *= g_dataScale;
	*Az *= g_dataScale;
	*Mx = (int16_t)((uint16_t)((uint16_t)fxos_data.magXMSB << 8) | (uint16_t)fxos_data.magXLSB);
	*My = (int16_t)((uint16_t)((uint16_t)fxos_data.magYMSB << 8) | (uint16_t)fxos_data.magYLSB);
	*Mz = (int16_t)((uint16_t)((uint16_t)fxos_data.magZMSB << 8) | (uint16_t)fxos_data.magZLSB);
}

void Sensor_TakeSample(void){

	g_Ax_Raw        = 0;
	g_Ay_Raw        = 0;
	g_Az_Raw        = 0;
	g_Ax            = 0;
	g_Ay            = 0;
	g_Az            = 0;
	g_Mx_Raw        = 0;
	g_My_Raw        = 0;
	g_Mz_Raw        = 0;
	g_Mx            = 0;
	g_My            = 0;
	g_Mz            = 0;


	while(true){
		/* Read sensor data */
		Sensor_ReadRawData(&g_Ax_Raw, &g_Ay_Raw, &g_Az_Raw, &g_Mx_Raw, &g_My_Raw, &g_Mz_Raw);

		/* Average accel value */
		for (uint16_t i = 1; i < MAX_ACCEL_AVG_COUNT; i++)
		{
			g_Ax_buff[i] = g_Ax_buff[i - 1];
			g_Ay_buff[i] = g_Ay_buff[i - 1];
			g_Az_buff[i] = g_Az_buff[i - 1];
		}

		g_Ax_buff[0] = g_Ax_Raw;
		g_Ay_buff[0] = g_Ay_Raw;
		g_Az_buff[0] = g_Az_Raw;

		for (uint16_t i = 0; i < MAX_ACCEL_AVG_COUNT; i++)
		{
			g_Ax += (double)g_Ax_buff[i];
			g_Ay += (double)g_Ay_buff[i];
			g_Az += (double)g_Az_buff[i];
		}

		g_Ax /= MAX_ACCEL_AVG_COUNT;
		g_Ay /= MAX_ACCEL_AVG_COUNT;
		g_Az /= MAX_ACCEL_AVG_COUNT;

		if (g_FirstRun)
		{
			g_Mx_LP = g_Mx_Raw;
			g_My_LP = g_My_Raw;
			g_Mz_LP = g_Mz_Raw;
		}

		g_Mx_LP += ((double)g_Mx_Raw - g_Mx_LP) * 0.01;
		g_My_LP += ((double)g_My_Raw - g_My_LP) * 0.01;
		g_Mz_LP += ((double)g_Mz_Raw - g_Mz_LP) * 0.01;

		/* Calculate magnetometer values */
		g_Mx = g_Mx_LP - g_Mx_Offset;
		g_My = g_My_LP - g_My_Offset;
		g_Mz = g_Mz_LP - g_Mz_Offset;

		/* Calculate roll angle g_Roll (-180deg, 180deg) and sin, cos */
		g_Roll   = atan2(g_Ay, g_Az) * RadToDeg;
		sinAngle = sin(g_Roll * DegToRad);
		cosAngle = cos(g_Roll * DegToRad);

		/* De-rotate by roll angle g_Roll */
		By   = g_My * cosAngle - g_Mz * sinAngle;
		g_Mz = g_Mz * cosAngle + g_My * sinAngle;
		g_Az = g_Ay * sinAngle + g_Az * cosAngle;

		/* Calculate pitch angle g_Pitch (-90deg, 90deg) and sin, cos*/
		g_Pitch = atan2(-g_Ax, sqrt(g_Ay * g_Ay + g_Az * g_Az)) * RadToDeg;
		sinAngle = sin(g_Pitch * DegToRad);
		cosAngle = cos(g_Pitch * DegToRad);

		/* De-rotate by pitch angle g_Pitch */
		Bx = g_Mx * cosAngle + g_Mz * sinAngle;

		/* Calculate yaw = ecompass angle psi (-180deg, 180deg) */
		g_Yaw = atan2(-By, Bx) * RadToDeg;
		if (g_FirstRun)
		{
			g_Yaw_LP   = g_Yaw;
			g_Pitch_LP = g_Pitch;
			g_Roll_LP = g_Roll;
			g_FirstRun = false;
		}

		g_Yaw_LP += (g_Yaw - g_Yaw_LP) * 0.05;
		g_Pitch_LP += (g_Pitch - g_Pitch_LP) * 0.05;
		g_Roll_LP += (g_Roll - g_Roll_LP) * 0.05;

		if (++loopCounter > 10)
		{
			//PRINTF("\r\nCompass Angle: %3.1lf\r\n", g_Yaw_LP);
			compass_yaw =  g_Yaw_LP;
			compass_pitch = g_Pitch_LP;
			compass_roll = g_Roll_LP;
			return;
		}
	}
}


