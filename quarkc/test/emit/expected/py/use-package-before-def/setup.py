# Setup file for package use_package_before_def

from setuptools import setup

setup(name="use_package_before_def",
      version="0.0.1",
      install_requires=["builtin==0.0.1"],
      py_modules=['use_package_before_def'],
      packages=['test', 'use_package_before_def_md'])
