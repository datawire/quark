# Setup file for package puse

from setuptools import setup

setup(name="puse",
      version="4.5.6",
      install_requires=["wheel", "quark==1.0.406", "testlib==1.2.3"],
      setup_requires=["wheel"],
      py_modules=[],
      packages=['puse_md'])
