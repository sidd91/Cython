#include "application_C.h"
#include "transport_C.h"

char name[15] = "Cython Bus";
transport_config_s transport_config =
{
      .id = 0xff,
      .bus = &name,
      .frame_send = private_transport_data
};

app_config_s app_config =
{
     .app_name = "Foo Application",
     .session_config.print_name_config = transport_data
};
int main(void)
{
     validate_application(&app_config, &transport_config);
     return 0;
}
