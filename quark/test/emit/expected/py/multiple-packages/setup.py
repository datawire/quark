# Setup file for package multiple_packages

from setuptools import setup

setup(name="multiple_packages",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      packages=['p1', 'p1.p2', 'multiple_packages_md'])
