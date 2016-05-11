# Setup file for package dependencies

from setuptools import setup

setup(name="dependencies",
      version="0.0.1",
      install_requires=["quark==0.0.1", "testlib==1.2.3", "requests==2.7"],
      py_modules=[],
      packages=['dependencies_md'])
