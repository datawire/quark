# Setup file for package prtest

from setuptools import setup

setup(name="prtest",
      version="1.0.0",
      install_requires=["quark==0.0.1"],
      py_modules=['prtest'],
      packages=['prtest', 'prtest_md'])
