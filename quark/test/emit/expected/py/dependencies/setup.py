# Setup file for package dependencies

from setuptools import setup

setup(name="dependencies",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1", "test==1.2.3", "requests==2.7"],
      packages=['dependencies_md'])
