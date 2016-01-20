# Setup file for package constructors

from setuptools import setup

setup(name="constructors",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.1"],
      packages=['reflect', 'test1', 'test2', 'test3', 'constructors_md', 'test1_test2_test3_common'])
