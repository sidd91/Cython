#include<stdio.h>
#include <stdint.h>

typedef int(*send_frame)(void* config);
int transport_data(void* config, char* name);
int private_transport_data(void* transport_config);

typedef struct
{
     uint8_t id;
     void* bus;
     send_frame frame_send;
}transport_config_s;

