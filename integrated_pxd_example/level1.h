/*
 * level1.h
 *
 *  Created on: Oct 24, 2019
 *      Author: siddhartshchawla
 */

#ifndef LEVEL1_H_
#define LEVEL1_H_

#include "application_C.h"

typedef void (*foo_callback)(test_foo *ptr);
typedef struct{
     char* name;
     foo_callback foo_func_call;
}level1_foo;

void use_callback(level1_foo*, test_foo* app_ptr);


#endif /* LEVEL1_H_ */
