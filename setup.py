from setuptools import setup, Extension
from Cython.Build import cythonize

setup(
    ext_modules=cythonize("helloworld.pyx"),
    entrypoints={"console_scripts": {"helloworld": "helloworld:entrypoint"}},
)
