# Setup file for package puse

from setuptools import setup

setup(name="puse",
      version="4.5.6",
      install_requires=["builtin==0.0.1", "test==1.2.3"],
      py_modules=['puse'],
      packages=['puse', 'foo', 'puse_md'])
