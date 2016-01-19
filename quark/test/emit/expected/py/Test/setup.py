# Setup file for package Test

from setuptools import setup

setup(name="Test",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'Test_md', 'Test_lib'])
