from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize


include_dirs = "."
ext_application = Extension(
    name="application_layer_cython",
    sources=['application.pyx'],
    libraries=["AppClient"],
    library_dirs=["."],
    include_dirs=include_dirs
)

ext_transport = Extension(
    name="transport_layer_cython",
    sources=['transport.pyx'],
    include_dirs=include_dirs,
    libraries=["AppClient"],
    library_dirs=["."],
)

ext = [ext_application, ext_transport]

setup(ext_modules=cythonize(ext), cython_directives={"language_level": 3}, requires=['Cython'])
