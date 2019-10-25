#include "application_C.h"



int main(void)
{
    int arr_temp[14] = {1,2,3,4,5,6,7,8,9,10,11,12};
    int *arr_dummy = arr_temp;
    char *name = "Siddharth";
    test_foo foo = {
    .arr = arr_dummy,
    .barr = name
    };

    test_foo_print(&foo);
    return 0;
}

/*
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

*/