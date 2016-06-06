# Setup file for package package

from setuptools import setup

setup(name="package",
      version="0.0.1",
      install_requires=["wheel", "quark==0.0.1"],
      setup_requires=["wheel"],
      py_modules=[],
      packages=['test', 'test.subtest', 'package_md'])
