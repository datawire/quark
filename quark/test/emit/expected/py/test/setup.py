# Setup file for package test

from setuptools import setup

setup(name="test",
      version="1.2.3",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'testlib', 't2', 'test_md', 't2_testlib_common'])
