# Setup file for package matrix

from setuptools import setup

setup(name="matrix",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'matrix_md', 'matrix_lib'])
