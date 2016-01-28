# Setup file for package box

from setuptools import setup

setup(name="box",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['box'],
      packages=['box_md'])
