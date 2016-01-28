# Setup file for package super

from setuptools import setup

setup(name="super",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['super'],
      packages=['super_md'])
