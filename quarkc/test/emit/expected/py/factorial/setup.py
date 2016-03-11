# Setup file for package factorial

from setuptools import setup

setup(name="factorial",
      version="0.0.1",
      install_requires=["builtin==0.0.1"],
      py_modules=['factorial'],
      packages=['factorial', 'factorial_md'])
