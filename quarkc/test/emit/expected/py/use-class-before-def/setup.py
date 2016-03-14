# Setup file for package use_class_before_def

from setuptools import setup

setup(name="use_class_before_def",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['use_class_before_def'],
      packages=['pkg', 'use_class_before_def', 'use_class_before_def_md'])
