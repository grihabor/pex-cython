from setuptools import setup, Extension
from Cython.Build import cythonize

setup_args = dict(ext_modules=cythonize("helloworld.pyx"))
setup(**setup_args)
