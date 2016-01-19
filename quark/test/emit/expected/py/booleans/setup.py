# Setup file for package booleans

from setuptools import setup

setup(name="booleans",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'booleans_md', 'booleans_lib'])
