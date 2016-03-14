# Setup file for package modulo

from setuptools import setup

setup(name="modulo",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['modulo'],
      packages=['modulo', 'modulo_md'])
