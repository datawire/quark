# Setup file for package testlib

from setuptools import setup

setup(name="testlib",
      version="1.2.3",
      install_requires=["quark==0.0.1"],
      py_modules=[],
      packages=['testlib', 't2', 'testlib_md'])
