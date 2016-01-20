# Setup file for package macro_stuff

from setuptools import setup

setup(name="macro_stuff",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'macro_stuff_md', 'macro_stuff'])
