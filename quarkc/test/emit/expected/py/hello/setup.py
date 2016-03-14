# Setup file for package hello

from setuptools import setup

setup(name="hello",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['hello'],
      packages=['hello', 'hello_md'])
