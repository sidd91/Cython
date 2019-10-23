#include "transport_C.h"
#include <stdio.h>

int transport_data(void* config, char* name)
{
     printf("Name = %s", name);
     transport_config_s *config_p = (transport_config_s*) config;
     config_p -> frame_send(config);
     return 0;
}

int private_transport_data(void* config)
{
     transport_config_s *config_p = (transport_config_s*) config;
     printf("ID = %u, BUS = %s\n", config_p->id, config_p -> bus);
     return 0;
}

