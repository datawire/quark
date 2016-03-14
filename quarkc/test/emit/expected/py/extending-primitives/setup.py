# Setup file for package extending_primitives

from setuptools import setup

setup(name="extending_primitives",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['extending_primitives'],
      packages=['pkg', 'extending_primitives', 'extending_primitives_md'])
