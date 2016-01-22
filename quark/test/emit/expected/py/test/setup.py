# Setup file for package test

from setuptools import setup

setup(name="test",
      version="1.2.3",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      packages=['testlib', 't2', 'test_md'])
