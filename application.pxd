
from session cimport *

cdef extern from "application_C.h":

    ctypedef struct app_config_s:
        char* app_name
        dti_s session_config

    cdef int validate_application(void* app_config, void* transport_config)