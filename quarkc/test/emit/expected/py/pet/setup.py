# Setup file for package pet

from setuptools import setup

setup(name="pet",
      version="0.0.1",
      install_requires=["builtin==0.0.1"],
      py_modules=['pet'],
      packages=['pets', 'pet', 'pet_md'])
