#include "application_C.h"

static void private_send_receive(app_config_s * config_p, void* callback_arg)
{
       config_p->session_config.print_name_config(callback_arg, config_p ->app_name);
}

int validate_application(void* app_config, void* transport_config)
{
      private_send_receive(app_config, transport_config);
      return 0;
}