# Setup file for package no_spurious_cast

from setuptools import setup

setup(name="no_spurious_cast",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'no_spurious_cast_md', 'no_spurious_cast_lib'])
