# !python
# cython: language_level=3


from application cimport *

cdef class Application:
    cdef app_config_s app_config
    cdef app_config_s * app_config_p
    cdef void* transport_layer_config

    def __cinit__(self, transport_layer_config, transport_layer_instance):
        """
        transport_layer_config is the structure defined in the transport_C.h and wrapped up as a Cython Extension class
        transport_layer_instance is the instance of the Transport Cython class which has send_data() method
        """

        self.app_config_p = &self.app_config
        self.app_config_p.session_config.print_name_config = self.transport_layer_instance.send_data    # How to initialize this function pointer with transport_layer_instance.send_data()
        self.transport_layer_config = <void*> transport_layer_config # Corresponds to the structure transport_config_s in transport.pxd or transport_C.h

    cdef int validate_app(self, void* app_config, void* transport_config):
        validate_application(self.app_config_p, transport_config)


