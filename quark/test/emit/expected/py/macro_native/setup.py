# Setup file for package macro_native

from setuptools import setup

setup(name="macro_native",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'macro_native_md', 'macro_native'])
