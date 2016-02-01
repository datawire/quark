# Setup file for package numbers

from setuptools import setup

setup(name="numbers",
      version="0.0.1",
      install_requires=["datawire-quark-core==0.4.2", "builtin==0.0.1"],
      py_modules=['numbers'],
      packages=['numbers_md'])
