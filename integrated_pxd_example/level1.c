/*
 * level1.c
 *
 *  Created on: Oct 24, 2019
 *      Author: siddharthchawla
 */

#include "level1.h"


void use_callback(level1_foo* ptr, test_foo *app_ptr)
{

  printf("Name = %s\n", ptr ->name);
  ptr->foo_func_call(app_ptr) ;
}
