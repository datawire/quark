# Setup file for package inheritence

from setuptools import setup

setup(name="inheritence",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'inheritence_md', 'inheritence_lib'])
