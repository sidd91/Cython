# !python
# cython: language_level=3

cdef extern from "session_layer.h":
    ctypedef int(*foo_print)(void* config, char* name);

    ctypedef struct dti_s:
         foo_print print_name_config;