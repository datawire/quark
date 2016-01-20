# Setup file for package default_constructors

from setuptools import setup

setup(name="default_constructors",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'default_constructors_md', 'default_constructors_lib'])
