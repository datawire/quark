# Setup file for package int_methods

from setuptools import setup

setup(name="int_methods",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'int_methods_md', 'int_methods_lib'])
