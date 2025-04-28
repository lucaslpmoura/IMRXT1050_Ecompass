/*
 * networking.h
 *
 *  Created on: Apr 28, 2025
 *      Author: xlouzal00
 */

#ifndef NETWORKING_NETWORKING_H_
#define NETWORKING_NETWORKING_H_


#include "lwip/timeouts.h"
#include "lwip/ip_addr.h"
#include "lwip/init.h"
#include "lwip/dhcp.h"
#include "lwip/netif.h"
#include "lwip/prot/dhcp.h"
#include "lwip/apps/httpd.h"
#include "netif/ethernet.h"
#include "ethernetif.h"
#include "fsl_phy.h"
#include "board.h"
#include "app.h"

void linkStatusCallback(struct netif *netif_, netif_nsc_reason_t reason, const netif_ext_callback_args_t *args);
void print_dhcp_state(struct netif *netif);

#endif /* NETWORKING_NETWORKING_H_ */
