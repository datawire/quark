# Setup file for package hello

from setuptools import setup

setup(name="hello",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'hello_md', 'hello_lib'])
