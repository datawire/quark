# Setup file for package json_coersion

from setuptools import setup

setup(name="json_coersion",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'json_coersion_md', 'json_coersion_lib'])
