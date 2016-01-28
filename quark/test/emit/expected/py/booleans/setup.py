# Setup file for package booleans

from setuptools import setup

setup(name="booleans",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['booleans'],
      packages=['booleans_md'])
