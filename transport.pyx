# !python
# cython: language_level=3


from transport cimport *
from libc.stdio cimport printf

cdef int private_send_data(void* transport_config):
        """
        send_data calls private_send_data, which calls the C function private_transport_data 
        """
        cdef transport_config_s* config_p = <transport_config_s*> transport_config
        printf(" ID = %2x BUS = %s\n", config_p.id, config_p.bus)

cdef class TransportLayer:
    cdef transport_config_s config
    cdef transport_config_s * config_p
    cdef str val

    def __init__(self):
        self.val = "Cython Bus"
        self.config_p = &self.config
        self.config_p.id = 0x10
        self.config_p.bus = <void*>self.val
        self.config_p.frame_send = private_send_data


    cdef int send_data(self, void* config, char* name):
        """
        Call back used by the Application Layer 
        """
        transport_data(config, name)


