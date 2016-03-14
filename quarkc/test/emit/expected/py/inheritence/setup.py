# Setup file for package inheritence

from setuptools import setup

setup(name="inheritence",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['inheritence'],
      packages=['inheritence', 'inheritence_md'])
