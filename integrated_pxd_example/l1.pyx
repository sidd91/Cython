# !python
# cython: language_level=3

cimport c_app
from libc.stdlib cimport malloc, free
cimport app

cdef app.App app_instance_try

cdef void out_of_names(c_app.test_foo *ptr):
    c_app.test_foo_print(ptr)

cdef class Level1:
    def __cinit__(self, char* name, app_obj):
        self.l1_ptr = <c_app.level1_foo*>malloc(sizeof(c_app.level1_foo))
        global app_instance_try

        if not self.l1_ptr:
            raise MemoryError()
        app_instance_try = app_obj
        self.l1_ptr.name = name
        self.l1_ptr.foo_func_call = <c_app.foo_callback>out_of_names

    def __dealloc__(self):
        if self.l1_ptr is not NULL:
            free(self.l1_ptr)
            self.l1_ptr = NULL

    def start_using_callbacks(self, app.App app_instance):
        c_app.use_callback(self.l1_ptr, app_instance.test_foo_ptr)


