# Setup file for package marshalling

from setuptools import setup

setup(name="marshalling",
      version="0.0.1",
      install_requires=["builtin==0.0.1"],
      py_modules=['marshalling'],
      packages=['m', 'marshalling', 'marshalling_md'])
