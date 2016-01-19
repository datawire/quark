# Setup file for package list

from setuptools import setup

setup(name="list",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'list_md', 'list_lib'])
