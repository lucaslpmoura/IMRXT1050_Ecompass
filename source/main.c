/*
 * Copyright (c) 2016, Freescale Semiconductor, Inc.
 * Copyright 2016-2020,2023-2024 NXP
 * All rights reserved.
 *
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/*******************************************************************************
 * Includes
 ******************************************************************************/

#include "lwip/opt.h"

#include "networking/networking.h"
#include "button/button.h"
#include "globals/globals.h"
#include "ecompass/ecompass.h"

#include <stdbool.h>

#define USE_MAGNETOMETER_DEFAULT_OFFSETS 1


#if LWIP_IPV4 && LWIP_DHCP





/*******************************************************************************
 * Definitions
 ******************************************************************************/

/* Must be after include of app.h */
#ifndef configMAC_ADDR
#include "fsl_silicon_id.h"
#endif

#ifndef EXAMPLE_NETIF_INIT_FN
/*! @brief Network interface initialization function. */
#define EXAMPLE_NETIF_INIT_FN ethernetif0_init
#endif /* EXAMPLE_NETIF_INIT_FN */

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/

static phy_handle_t phyHandle;
static netif_ext_callback_t linkStatusCallbackInfo;

/*******************************************************************************
 * Code
 ******************************************************************************/

/*!
 * @brief Link status callback - prints link status events.
 */


/*!
 * @brief Interrupt service for SysTick timer.
 */

uint32_t mag_counter = 0;
bool mag_enable = false;
bool dhcp_ready = false;
void SysTick_Handler(void)
{
    time_isr();
    mag_counter++;
}

void Button_OnPressed(){
	GPIO_PortClearInterruptFlags(SW8_GPIO, 1U << SW8_GPIO_PIN);
	increaseNumOfPresses();
	PRINTF("Button Pressed %d times\r\n", getNumOfPresses());
	double yaw, pitch, roll = 0.0;
	getCompassYawPitchRoll(&yaw, &pitch, &roll);
	PRINTF("Yaw: %3.1lf\r\n", yaw);
	PRINTF("Pitch: %3.1lf\r\n", pitch);
	PRINTF("Roll: %3.1lf\r\n", roll);
	__DSB();
}

/*!
 * @brief Prints DHCP status of the interface when it has changed from last status.
 *
 * @param netif network interface structure
 */


/*!
 * @brief Main function.
 */
int main(void)
{
    struct netif netif;
    ethernetif_config_t enet_config = {.phyHandle   = &phyHandle,
                                       .phyAddr     = EXAMPLE_PHY_ADDRESS,
                                       .phyOps      = EXAMPLE_PHY_OPS,
                                       .phyResource = EXAMPLE_PHY_RESOURCE,
#ifdef configMAC_ADDR
                                       .macAddress = configMAC_ADDR
#endif
    };

    BOARD_InitHardware();

    time_init();

    /* Set MAC address. */
#ifndef configMAC_ADDR
    (void)SILICONID_ConvertToMacAddr(&enet_config.macAddress);
#endif

    /* Get clock after hardware init. */
    enet_config.srcClockHz = EXAMPLE_CLOCK_FREQ;

    lwip_init();

    netif_add_ext_callback(&linkStatusCallbackInfo, linkStatusCallback);

    netif_add(&netif, NULL, NULL, NULL, &enet_config, EXAMPLE_NETIF_INIT_FN, ethernet_input);
    netif_set_default(&netif);
    netif_set_up(&netif);

    //FXOS Init
    status_t sensor_status = Sensor_Init();
    if(sensor_status != kStatus_Success){
    	PRINTF("Magnetometer wont be used. Status: %d\r\n", sensor_status);
    	mag_enable = false;
    }else{

#if USE_MAGNETOMETER_DEFAULT_OFFSETS == 1

    	PRINTF("Magnetometer initialized successfully.\r\n");
    	Sensor_UseDefaultOffsets();
    	mag_enable = true;

#else
    	PRINTF("Press any key to start calibration.\r\n");
    	GETCHAR();
    	while(Sensor_Calibrate() != kStatus_Success){

    	}
    	mag_enable = true;

#endif
    }


    while (ethernetif_wait_linkup(&netif, 2000) != ERR_OK)
    {
    	if(mag_enable){
    	        	mag_counter = 0;
    	            Sensor_TakeSample();
    	        }
        PRINTF("PHY Auto-negotiation failed. Please check the cable connection and link partner setting.\r\n");

    }

    dhcp_start(&netif);
    httpd_init();


    while (1)
    {


        ethernetif_input(&netif);

        sys_check_timeouts();

        print_dhcp_state(&netif);
    	struct dhcp *dhcp  = netif_dhcp_data(&netif);
        //if(mag_enable && dhcp->state == DHCP_STATE_BOUND && mag_counter >=1000){
    	if(mag_enable){
        	mag_counter = 0;
            Sensor_TakeSample();
        }


    }
}
#endif
