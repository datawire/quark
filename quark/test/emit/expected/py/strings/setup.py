# Setup file for package strings

from setuptools import setup

setup(name="strings",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'strings_md', 'strings_lib'])
