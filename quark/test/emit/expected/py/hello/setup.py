# Setup file for package hello

from setuptools import setup

setup(name="hello",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      packages=['hello_md'])
