# Setup file for package autocast

from setuptools import setup

setup(name="autocast",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['autocast'],
      packages=['autocast_md'])
