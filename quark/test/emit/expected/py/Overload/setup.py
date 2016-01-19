# Setup file for package Overload

from setuptools import setup

setup(name="Overload",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'Overload_md', 'Overload_lib'])
