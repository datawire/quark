# Setup file for package static

from setuptools import setup

setup(name="static",
      version="0.0.1",
      install_requires=["builtin==0.0.1"],
      py_modules=['static'],
      packages=['static', 'static_md'])
