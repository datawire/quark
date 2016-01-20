# Setup file for package json_building

from setuptools import setup

setup(name="json_building",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'json_building_md', 'json_building_lib'])
