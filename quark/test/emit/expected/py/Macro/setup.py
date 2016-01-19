# Setup file for package Macro

from setuptools import setup

setup(name="Macro",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'Macro_md', 'Macro'])
