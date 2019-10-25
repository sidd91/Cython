from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize


include_dirs = "."
ext_application = Extension(
    name="app",
    sources=['app.pyx'],
    libraries=["AppClient"],
    library_dirs=["."],
    include_dirs=include_dirs
)

ext_l1 = Extension(
    name="l1",
    sources=['l1.pyx'],
    libraries=["AppClient"],
    library_dirs=["."],
    include_dirs=include_dirs
)

ext = [ext_application, ext_l1]

setup(ext_modules=cythonize(ext), cython_directives={"language_level": 3}, requires=['Cython'])