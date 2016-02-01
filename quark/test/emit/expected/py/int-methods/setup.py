# Setup file for package int_methods

from setuptools import setup

setup(name="int_methods",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['int_methods'],
      packages=['int_methods_md'])
