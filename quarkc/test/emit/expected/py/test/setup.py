# Setup file for package test

from setuptools import setup

setup(name="test",
      version="1.2.3",
      install_requires=["quark==0.0.1"],
      py_modules=[],
      packages=['testlib', 't2', 'test_md'])
