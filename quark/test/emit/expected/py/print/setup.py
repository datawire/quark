# Setup file for package print

from setuptools import setup

setup(name="print",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'print_md', 'print__lib'])
