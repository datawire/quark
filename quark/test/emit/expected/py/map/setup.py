# Setup file for package map

from setuptools import setup

setup(name="map",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'map_md', 'map_lib'])
