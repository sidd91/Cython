
//#include "session_layer.h"
//
//typedef struct {
//     char* app_name;
//     dti_s session_config;
//}app_config_s;
//
//static void private_send_receive(app_config_s * config_p, void* callback_arg);
//
//int validate_application(void* app_config, void* transport_config);

#pragma once
#include<stdio.h>

typedef struct{
     int* arr;
     void* barr;
}test_foo;

void test_foo_print(test_foo *test_foo_ptr);

