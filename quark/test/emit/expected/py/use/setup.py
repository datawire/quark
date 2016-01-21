# Setup file for package puse

from setuptools import setup

setup(name="puse",
      version="4.5.6",
      install_requires=["datawire-quark-core==0.4.1", "builtin==0.0.1", "test==1.2.3"],
      packages=['puse_md'])
