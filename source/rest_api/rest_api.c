/*
 * rest_api.c
 *
 *  Created on: Apr 23, 2025
 *      Author: xlouzal00
 */


#include "rest_api.h"

//HTTP 1.0/200 Ok, server: lwip...
static const char http_header[] = {
		0x48, 0x54, 0x54, 0x50, 0x2f, 0x31, 0x2e, 0x30, 0x20, 0x32, 0x30, 0x30, 0x20, 0x4f, 0x4b, 0x0d,

		0x0a, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x3a, 0x20, 0x6c, 0x77, 0x49, 0x50, 0x2f, 0x32, 0x2e,

		0x30, 0x2e, 0x33, 0x64, 0x20, 0x68, 0x74, 0x74, 0x70, 0x3a, 0x2f, 0x2f, 0x73, 0x61, 0x76, 0x61,

		0x6e, 0x6e, 0x61, 0x68, 0x2e, 0x6e, 0x6f, 0x6e, 0x67, 0x6e, 0x75, 0x2e, 0x6f, 0x72, 0x67, 0x2f,

		0x70, 0x72, 0x6f, 0x6a, 0x65, 0x63, 0x74, 0x73, 0x2f, 0x6c, 0x77, 0x69, 0x70, 0x29, 0x0d, 0x0a,
};

// application/json
static const char content_type_json[] = {
		0x43, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x2d, 0x54, 0x79, 0x70, 0x65, 0x3a, 0x20, 0x61, 0x70,

		0x70, 0x6c, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x2f, 0x6a, 0x73, 0x6f, 0x6e, 0x0d, 0x0a,

		0x0d, 0x0a,
};
char *get_byte_buffer(size_t *size_out, char api) {

	/*
	 * For LWIP applications, use mem_malloc() instead of malloc().
	 * Had to learn it the hard way.
	 */
    char *byteBuffer = (char *) mem_malloc(2056);
    if (byteBuffer == NULL) return NULL;

    size_t offset = 0;

    // Copia header
    size_t http_header_len = sizeof(http_header);
    memcpy(byteBuffer + offset, http_header, http_header_len);
    offset += http_header_len;

    // Payload
    char payload[128];
    if(api == 0){
    	// Button API
    	snprintf(payload, sizeof(payload), "{\"data\":\"%d\"}", getNumOfPresses());
    }
    if(api == 1){
    	// Ecompass API
    	double yaw, pitch, roll = 0.0;
    	getCompassYawPitchRoll(&yaw, &pitch, &roll);
    	snprintf(payload, sizeof(payload),
    			"{\"data\": {\"yaw\": \"%f\", \"pitch\": \"%f\", \"roll\": \"%f\"}}", yaw, pitch, roll);

    }

    size_t payload_len = strlen(payload);

    // Content-Length
    char content_length[64];
    snprintf(content_length, sizeof(content_length), "Content-Length: %d\r\n", (int)payload_len);
    size_t cl_len = strlen(content_length);
    memcpy(byteBuffer + offset, content_length, cl_len);
    offset += cl_len;

    // Content-Type
    size_t ct_len = sizeof(content_type_json);
    memcpy(byteBuffer + offset, content_type_json, ct_len);
    offset += ct_len;

    // Payload
    memcpy(byteBuffer + offset, payload, payload_len);
    offset += payload_len;

    // (Opcional) \0 no final, caso vá debugar como string
    byteBuffer[offset] = '\0';

    *size_out = offset;
    return byteBuffer;
}

