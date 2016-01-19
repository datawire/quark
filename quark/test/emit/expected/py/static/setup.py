# Setup file for package static

from setuptools import setup

setup(name="static",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'static_md', 'static_lib'])
