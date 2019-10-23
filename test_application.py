# from application_layer_cython import *
from transport_layer_cython import *
from application_layer_cython import*

transport_config = None
transport_obj = TransportLayer()
app_obj = Application(transport_config, transport_obj)