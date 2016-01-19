# Setup file for package Native

from setuptools import setup

setup(name="Native",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'Native_md', 'Native'])
