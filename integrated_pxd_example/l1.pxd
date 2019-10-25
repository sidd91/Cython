# !python
# cython: language_level=3

cimport c_app

cdef class Level1:

    cdef c_app.level1_foo *l1_ptr


