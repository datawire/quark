# Setup file for package print

from setuptools import setup

setup(name="print",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['print_'],
      packages=['print_md'])
