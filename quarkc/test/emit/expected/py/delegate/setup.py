# Setup file for package delegate

from setuptools import setup

setup(name="delegate",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['delegate'],
      packages=['delegate', 'delegate_md'])
