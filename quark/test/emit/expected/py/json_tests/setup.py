# Setup file for package json_tests

from setuptools import setup

setup(name="json_tests",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'json_tests_md', 'json_tests_lib'])
