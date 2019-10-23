
from libc.stdint cimport *


cdef extern from "transport_C.h":

    ctypedef int(*send_frame)(void* config)
    ctypedef struct transport_config_s:
       uint8_t id
       void* bus
       send_frame frame_send

    cdef int transport_data(void* config, char* name)