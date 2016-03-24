# Setup file for package strings

from setuptools import setup

setup(name="strings",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['strings'],
      packages=['strings', 'strings_md'])
