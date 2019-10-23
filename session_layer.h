#pragma once

typedef int(*foo_print)(void* config, char* name);

typedef struct {
    foo_print print_name_config;
} dti_s;