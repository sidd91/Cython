# !python
# cython: language_level=3

cimport c_app

cdef class App:
    cdef c_app.test_foo *test_foo_ptr
    cdef void foo_print(self, c_app.test_foo *ptr)