/*
 * networking.c
 *
 *  Created on: Apr 28, 2025
 *      Author: xlouzal00
 */


#include "networking.h"

void linkStatusCallback(struct netif *netif_, netif_nsc_reason_t reason, const netif_ext_callback_args_t *args)
{
	if (reason != LWIP_NSC_LINK_CHANGED)
		return;

	PRINTF("[LINK STATE] netif=%d, state=%s", netif_->num, args->link_changed.state ? "up" : "down");

	if (args->link_changed.state)
	{
		char *speedStr;
		switch (ethernetif_get_link_speed(netif_))
		{
		case kPHY_Speed10M:
			speedStr = "10M";
			break;
		case kPHY_Speed100M:
			speedStr = "100M";
			break;
		case kPHY_Speed1000M:
			speedStr = "1000M";
			break;
		default:
			speedStr = "N/A";
			break;
		}

		char *duplexStr;
		switch (ethernetif_get_link_duplex(netif_))
		{
		case kPHY_HalfDuplex:
			duplexStr = "half";
			break;
		case kPHY_FullDuplex:
			duplexStr = "full";
			break;
		default:
			duplexStr = "N/A";
			break;
		}

		PRINTF(", speed=%s_%s", speedStr, duplexStr);
	}

	PRINTF("\r\n");
}

void print_dhcp_state(struct netif *netif)
{
	static u8_t dhcp_last_state = DHCP_STATE_OFF;
	struct dhcp *dhcp           = netif_dhcp_data(netif);

	if (dhcp == NULL)
	{
		dhcp_last_state = DHCP_STATE_OFF;
	}
	else if (dhcp_last_state != dhcp->state)
	{
		dhcp_last_state = dhcp->state;

		PRINTF(" DHCP state       : ");
		switch (dhcp_last_state)
		{
		case DHCP_STATE_OFF:
			PRINTF("OFF");
			break;
		case DHCP_STATE_REQUESTING:
			PRINTF("REQUESTING");
			break;
		case DHCP_STATE_INIT:
			PRINTF("INIT");
			break;
		case DHCP_STATE_REBOOTING:
			PRINTF("REBOOTING");
			break;
		case DHCP_STATE_REBINDING:
			PRINTF("REBINDING");
			break;
		case DHCP_STATE_RENEWING:
			PRINTF("RENEWING");
			break;
		case DHCP_STATE_SELECTING:
			PRINTF("SELECTING");
			break;
		case DHCP_STATE_INFORMING:
			PRINTF("INFORMING");
			break;
		case DHCP_STATE_CHECKING:
			PRINTF("CHECKING");
			break;
		case DHCP_STATE_BOUND:
			PRINTF("BOUND");
			break;
		case DHCP_STATE_BACKING_OFF:
			PRINTF("BACKING_OFF");
			break;
		default:
			PRINTF("%u", dhcp_last_state);
			assert(0);
			break;
		}
		PRINTF("\r\n");

		if (dhcp_last_state == DHCP_STATE_BOUND)
		{

			PRINTF("\r\n IPv4 Address     : %s\r\n", ipaddr_ntoa(&netif->ip_addr));
			PRINTF(" IPv4 Subnet mask : %s\r\n", ipaddr_ntoa(&netif->netmask));
			PRINTF(" IPv4 Gateway     : %s\r\n\r\n", ipaddr_ntoa(&netif->gw));
		}
	}
}
