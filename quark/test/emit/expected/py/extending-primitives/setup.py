# Setup file for package extending_primitives

from setuptools import setup

setup(name="extending_primitives",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'pkg', 'extending_primitives_md'])
