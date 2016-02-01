# Setup file for package package

from setuptools import setup

setup(name="package",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['package'],
      packages=['test', 'test.test', 'package_md'])
