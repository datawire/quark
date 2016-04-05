# Setup file for package constructors

from setuptools import setup

setup(name="constructors",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['constructors'],
      packages=['test1', 'test2', 'test3', 'test4', 'constructors', 'constructors_md'])
