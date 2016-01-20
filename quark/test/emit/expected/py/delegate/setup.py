# Setup file for package delegate

from setuptools import setup

setup(name="delegate",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'delegate_md', 'delegate_lib'])
