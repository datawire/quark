# Setup file for package booleans

from setuptools import setup

setup(name="booleans",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['booleans'],
      packages=['booleans', 'booleans_md'])
