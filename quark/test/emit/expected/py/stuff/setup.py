# Setup file for package stuff

from setuptools import setup

setup(name="stuff",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'stuff_md', 'stuff_lib'])
