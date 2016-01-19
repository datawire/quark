# Setup file for package super

from setuptools import setup

setup(name="super",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'super_md', 'super_lib'])
