# Setup file for package stuff

from setuptools import setup

setup(name="stuff",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['stuff'],
      packages=['stuff', 'stuff_md'])
