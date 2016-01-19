# Setup file for package package

from setuptools import setup

setup(name="package",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'test', 'test.test', 'package_md'])
