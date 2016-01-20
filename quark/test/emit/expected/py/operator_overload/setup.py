# Setup file for package operator_overload

from setuptools import setup

setup(name="operator_overload",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'operator_overload_md', 'operator_overload_lib'])
