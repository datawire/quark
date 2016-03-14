# Setup file for package autocast

from setuptools import setup

setup(name="autocast",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['autocast'],
      packages=['autocast', 'autocast_md'])
