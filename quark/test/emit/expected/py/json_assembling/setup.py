# Setup file for package json_assembling

from setuptools import setup

setup(name="json_assembling",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'json_assembling_md', 'json_assembling_lib'])
