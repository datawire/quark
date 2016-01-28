# Setup file for package constructors

from setuptools import setup

setup(name="constructors",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['constructors'],
      packages=['test1', 'test2', 'test3', 'constructors_md'])
