# Setup file for package use_package_before_def

from setuptools import setup

setup(name="use_package_before_def",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['use_package_before_def'],
      packages=['test', 'use_package_before_def', 'use_package_before_def_md'])
