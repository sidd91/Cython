#include "application_C.h"

//static void private_send_receive(app_config_s * config_p, void* callback_arg)
//{
//       config_p->session_config.print_name_config(callback_arg, config_p ->app_name);
//}
//
//int validate_application(void* app_config, void* transport_config)
//{
//      private_send_receive(app_config, transport_config);
//      return 0;
//}

void test_foo_print(test_foo* test_foo_ptr)
{
     for(int i=0; i< 10; i++)
     {
          printf("%d\n", *(test_foo_ptr->arr++));
     }
     printf("Name =  %s\n", (char*)(test_foo_ptr -> barr));
}