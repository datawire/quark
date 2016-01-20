# Setup file for package urlencode

from setuptools import setup

setup(name="urlencode",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'urlencode_md', 'urlencode_lib'])
