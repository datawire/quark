# Setup file for package simple_math

from setuptools import setup

setup(name="simple_math",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.3.1"],
      packages=['reflect', 'simple_math_md', 'simple_math_lib'])
