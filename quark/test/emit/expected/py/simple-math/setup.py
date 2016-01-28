# Setup file for package simple_math

from setuptools import setup

setup(name="simple_math",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['simple_math'],
      packages=['simple_math_md'])
