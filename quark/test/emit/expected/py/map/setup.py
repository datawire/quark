# Setup file for package map

from setuptools import setup

setup(name="map",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['map'],
      packages=['map_md'])
