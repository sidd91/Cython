# !python
# cython: language_level=3

from libc.stdlib cimport malloc, free
cimport c_app
a = [1,2,3,4]

cdef class App:
    def __cinit__(self, char* name, int[:] arr):
        self.test_foo_ptr = <c_app.test_foo *>malloc(sizeof(c_app.test_foo))
        self.test_foo_ptr.arr =  &arr[0]
        self.test_foo_ptr.barr = <void*>name
        if not self.test_foo_ptr:
            raise MemoryError()

    def __dealloc__(self):
        if self.test_foo_ptr is not NULL:
             free(self.test_foo_ptr)
             self.test_foo_ptr = NULL

    cdef void foo_print(self, c_app.test_foo *ptr):
        self.foo_print_py()

    def foo_print_py(self):
        c_app.test_foo_print(self.test_foo_ptr)