# Setup file for package autocast

from setuptools import setup

setup(name="autocast",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'autocast_md', 'autocast_lib'])
