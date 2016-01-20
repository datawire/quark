# Setup file for package numbers

from setuptools import setup

setup(name="numbers",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'numbers_md', 'numbers_lib'])
