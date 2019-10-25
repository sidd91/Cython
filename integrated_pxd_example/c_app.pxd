
cdef extern from "application_C.h":

    ctypedef struct test_foo:
         int *arr
         void* barr

    void test_foo_print(test_foo *test_foo_ptr);

cdef extern from "level1.h":

    ctypedef void (*foo_callback)(test_foo *ptr);
    ctypedef struct level1_foo:
      char* name
      foo_callback foo_func_call

    void use_callback(level1_foo*, test_foo* app_ptr);
