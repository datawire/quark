# Setup file for package extending_primitives

from setuptools import setup

setup(name="extending_primitives",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['extending_primitives'],
      packages=['pkg', 'extending_primitives_md'])
