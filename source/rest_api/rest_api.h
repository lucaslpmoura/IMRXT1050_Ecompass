/*
 * rest_api.h
 *
 *  Created on: Apr 23, 2025
 *      Author: xlouzal00
 */

#ifndef REST_API_H_
#define REST_API_H_

#include "globals/globals.h"
#include "ecompass/ecompass.h"
#include "lwip/mem.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

char *get_byte_buffer(size_t *size_out, char api);



#endif /* REST_API_H_ */
