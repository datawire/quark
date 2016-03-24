# Setup file for package box

from setuptools import setup

setup(name="box",
      version="0.0.1",
      install_requires=["quark==0.0.1"],
      py_modules=['box'],
      packages=['box', 'box_md'])
