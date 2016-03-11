# Setup file for package numbers

from setuptools import setup

setup(name="numbers",
      version="0.0.1",
      install_requires=["builtin==0.0.1"],
      py_modules=['numbers'],
      packages=['numbers', 'numbers_md'])
