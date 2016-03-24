# Setup file for package json_tests

from setuptools import setup

setup(name="json_tests",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['json_tests'],
      packages=['json_tests', 'json_tests_md'])
