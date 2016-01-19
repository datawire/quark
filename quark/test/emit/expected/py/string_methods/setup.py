# Setup file for package string_methods

from setuptools import setup

setup(name="string_methods",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'string_methods_md', 'string_methods_lib'])
