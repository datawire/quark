# Setup file for package pet

from setuptools import setup

setup(name="pet",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['pet'],
      packages=['pets', 'pet_md'])
